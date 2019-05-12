<?php

use Doctrine\ORM\EntityManager;

class inventaire extends controler {

    public function index() {

        view::setContext(get_class($this));

        view::addDefaultsCss();

        view::addDefaultJs();

        view::render('tpl');
    }

    public function get_stk() {

        $stk = Metier_Stock::get_stkval(array(
                    "exe" => 2017,
                    "art" => '1156c7d031',
                    "mag" => 1,
        ));

        die(var_dump($stk));
    }

    public function asyn_gen_ecart() {

        $params = $this->get_passed_vars("data");


        $exe = $params["exe"];
        $mag = $params["mag"];


        $em = Model::$em;
        $qry = $em->createQuery("select a from StkInventaire a WHERE a.magCode = $mag AND a.exercice = $exe  and a.invEtat = 62");
        $rs = $qry->getArrayResult();
        $ecart = array();
        // var_dump($rs);
        foreach ($rs as $invitem) {

            $qrys = $em->createQuery("select a from StkArticle a WHERE a.artCode = '" . $invitem["art_code"] . "'");
            $rss = $qrys->getArrayResult();

            if ($rss[0]["artClass"] == 1) {
                $stk = Metier_Stock::get_stk_mf(array(
                            "exe" => $exe,
                            "art" => $invitem["art_code"],
                            "mag" => $mag,
                            "date" => $invitem["invtDate"]
                ));
            } else if ($rss[0]["artClass"] == 2 || $rss[0]["artClass"] == 3) {
                $stk = Metier_Stock::get_stk_mp(array(
                            "exe" => $exe,
                            "art" => $invitem["art_code"],
                            "mag" => $mag,
                            "date" => $invitem["invtDate"]
                ));
            };

            $ect = (float) $stk[0]["finale"] - (float) $invitem["invtQte"];

            if ($ect != 0) {
                $invitem["invEcart"] = $ect;
                $invitem["invStkadateinvt"] = $stk[0]["finale"];
                array_push($ecart, $invitem);
                $inttab = $em->find("StkInventaire", array("artCode" => $invitem["art_code"], "magCode" => $mag, "exercice" => $exe));
                $inttab->setInvEcart($ect);
                $inttab->setInvStkadateinvt($invitem["invStkadateinvt"]);
                $inttab->setInvEtat($em->find("StkEtat", 62));
                $em->persist($inttab);
                $em->flush();
            }
        }

        $ecartarray = array(
            "head" => array(
                "Num bordereau" => "invNumBorderau",
                "Code article" => "art_code",
                "Quantité inventoriée" => "invtQte",
                "stock comptable" => "invStkadateinvt",
                "Ecart" => "invEcart",
            ),
            "data" => $ecart
        );



        echo json_encode(array("data" => $ecartarray, "etat" => 0));
    }

    public function asyn_invttable_state() {

        $params = $this->get_passed_vars("data");

        $exe = $params["exe"];
        $mag = $params["mag"];


        $em = Model::$em;

        $qry = $em->createQuery("select count(u) as cnt from StkArticle u where u.artCode not in (select IDENTITY(a.artCode) from StkInventaire a WHERE a.magCode = $mag AND a.exercice = $exe) and u.artEtatcode = 11");
        $rs = $qry->getArrayResult();

        if ($rs[0]["cnt"] == 0) {
            echo json_encode(array("etat" => 0));
        } else {
            Message::set_info_msg("Mise à jour de la table de stock , Merci de patienté ...");
            echo json_encode(array("etat" => 1));
        };
    }

    public function asyn_gen_invttable($prm = null) {

        if ($prm == null) {
            $params = $this->get_passed_vars("data");
        } else {
            $params = $prm;
        }

        $exe = $params["exe"];
        $mag = $params["mag"];

        $em = Model::$em;

        $qry = $em->createQuery("select u from StkArticle u where u.artCode not in (select IDENTITY(a.artCode) from StkInventaire a WHERE a.magCode = $mag AND a.exercice = $exe) and u.artEtatcode = 11");
        $rs = $qry->getArrayResult();

        $qrymax = $em->createQuery("select max(a.invNumBorderau) from StkInventaire a where a.magCode = $mag and a.exercice = $exe");
        $max = $qrymax->getArrayResult();

        $artperbrd = 15;

        if ($max[0][1] == NULL) {
            $brdcount = 1;
            $artcount = 0;
        } else {
            $brdcount = $max[0][1];
            $qrycount = $em->createQuery("select a,b from StkInventaire a join a.invEtat b where a.magCode = $mag and a.exercice = $exe and a.invNumBorderau = $brdcount");
            $countmaxbrd = $qrycount->getArrayResult();

            if ($countmaxbrd[0]["invEtat"]["etatCode"] == 61) {
                $brdcount = $max[0][1];
                $artcount = count($countmaxbrd);
            } else {
                $brdcount = $max[0][1] + 1;
                $artcount = 0;
            };
        };


        foreach ($rs as $row) {

            $invt = new StkInventaire();

            $invt->setArtCode($em->find("StkArticle", $row["artCode"]));
            $invt->setMagCode($mag);
            $invt->setInvEtat($em->find("StkEtat", 61));
            $invt->setExercice($exe);
            $invt->setInvNumBorderau($brdcount);
            $em->persist($invt);
            $em->flush();
            $artcount++;

            if ($artcount == $artperbrd) {
                $brdcount++;
                $artcount = 0;
            }
        }

        if ($prm == null) {
            Message::set_info_msg("Table de stock Généré avec success");
            echo json_encode(array("etat" => 1));
        }
    }

    public function asyn_rds_stck() {

        $params = $this->get_passed_vars("data");

        Metier_Sgs::get_exercice($params["exercice"]);
        
        
        $em = Model::$em;

        $rds = new StkRds();
        $rds->setRdsMag($params["magCode"]);
        $rds->setRdsExercice($params["exercice"]);
        $rds->setRdsQte(-(float)$params["invEcart"]);
        $rds->setRdsArtcode($em->find("StkArticle", $params["art_code"]));
        $rds->setRdsDate(new \DateTime($this->dfrm($params["invtDate"]["date"])));
        $em->persist($rds);
        $em->flush();

        echo json_encode(array("etat" => 0));
        
    }

    public function asyn_get_ivntbrd() {

        $params = $this->get_passed_vars("data");

        $exe = $params["exe"];
        $mag = $params["mag"];


        $em = Model::$em;

        $result = $em->createQueryBuilder();
        $brd = $result->select('p', 'g', 'h')
                        ->from('StkInventaire', 'p')
                        ->leftJoin('p.artCode', 'g')
                        ->leftJoin('p.invEtat', 'h')
                        ->where('p.magCode= :magCode')->setParameter('magCode', $mag)
                        ->andWhere('p.exercice= :exe')->setParameter('exe', $exe);

        if (!empty($params["brdnum"])) {
            $brd = $brd->andWhere('p.invNumBorderau= :num')->setParameter('num', $params["brdnum"]);
        }

        $brd = $brd->orderBy('p.invNumBorderau', 'ASC');

        $artrs = $brd->getQuery()->getScalarResult();

        $artarray = array(
            "head" => array(
                "Code article" => "g_artCode",
                "Designation" => "g_artDesignation",
                "Etat" => "h_etatLibelle",
            ),
            "data" => $artrs
        );

        echo json_encode(array("data" => $artarray, "etat" => 0));
    }

    public function asyn_save_ivntbrd() {

        $params = $this->get_passed_vars("data");
        $em = Model::$em;



        foreach ($params["data"] as $row) {

            Metier_Sgs::get_exercice($row["p_exercice"]);

            $invt = $em->find("StkInventaire", array(
                "artCode" => $em->find("StkArticle", $row["g_artCode"]),
                "magCode" => $row["p_magCode"],
                "exercice" => $row["p_exercice"]
                    )
            );
            $invt->setInvtqte($row["invtQte"]);
            $invt->setInvtdate(new \DateTime($this->dfrm($params["date"])));
            $invt->setInvEtat($em->find("StkEtat", 62));
            $em->persist($invt);
            $em->flush();
        }

        Message::set_info_msg("Bordereau sauvegardé");
        echo json_encode(array("etat" => 1));
    }

    public function asyn_get_consuniqcode($exe) {

        $params = $this->get_passed_vars("data");
        $em = Model::$em;
        $id = $em->getRepository("StkConsomationEntete")->createQueryBuilder('b')
                ->select("MAX(ABS(b.consCode)) as id")
                ->where("b.consExercice = $exe")
                ->getQuery()
                ->getResult();

        $arid = explode("/", $id[0]["id"]);

        $code = "";

        if ($arid[0] !== null || $arid[0] !== 'NULL') {
            $code = (string) ((int) $arid[0] + 1) . "/" . $exe;
        } else {
            $code = "1/" . $params["exe"];
        }

        return $code;
    }

    public function asyn_get_entuniqcode($exe) {

        $params = $this->get_passed_vars("data");
        $em = Model::$em;
        $id = $em->getRepository("StkEntreEntete")->createQueryBuilder('b')
                ->select("MAX(ABS(b.entCode)) as id")
                ->where("b.entExercice = $exe")
                ->getQuery()
                ->getResult();

        $arid = explode("/", $id[0]["id"]);

        $code = "";

        if ($arid[0] !== null || $arid[0] !== 'NULL') {
            $code = (string) ((int) $arid[0] + 1) . "/" . $exe;
        } else {
            $code = "1/" . $params["exe"];
        }

        return $code;
    }

}

?>
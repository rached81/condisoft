<?php

class edition extends controler {

    public function stk() {

        view::setContext(get_class($this));

        view::addDefaultsCss();

        view::addDefaultJs();

        view::render('stk');
    }

    public function identification() {

        view::setContext(get_class($this));

        view::addDefaultsCss();

        view::addDefaultJs();

        view::render('identification');
    }

    public function histprix() {

        view::setContext(get_class($this));

        view::addDefaultsCss();

        view::addDefaultJs();

        view::render('histprix');
    }

    public function stknmvt() {

        view::setContext(get_class($this));

        view::addDefaultsCss();

        view::addDefaultJs();

        view::render('stknmvt');
    }

    public function cons() {

        view::setContext(get_class($this));

        view::addDefaultsCss();

        view::addDefaultJs();

        view::render('cons');
    }

    public function asyn_get_ident() {

        $params = $this->get_passed_vars("data");

        $em = Model::$em;

        $id = $params["identifiant"];

        $prm = explode("-", $id);
        // if(count($prm) !==6){
        //     Message::set_info_msg("Merci de verifier le code introduit");
        //     echo json_encode(array("etat" => 1));
        //     die();
        // }
        $rs = array();

        if (isset($prm[1])) {


            $stkquery = $em->createQueryBuilder();

            $art = $stkquery->select("a")
                            ->from('StkArticle', 'a')
                            ->where('a.artCode = :artCode')
                            ->setParameter('artCode', $prm[1])
                            ->getQuery()->getScalarResult();
            if (isset($art[0]["a_artDesignation"])) {
                $rs["art"] = $art[0]["a_artDesignation"];
            } else {
                $rs["art"] = "Article inexistant";
            };
        }

        if (isset($prm[2])) {
            $stkquery = $em->createQueryBuilder();

            $frs = $stkquery->select("a")
                            ->from('StkFournisseur', 'a')
                            ->where('a.frsCode = :frsCode')
                            ->setParameter('frsCode', $prm[2])
                            ->getQuery()->getScalarResult();
            if (isset($frs[0]["a_frsRaisonsociale"])) {
                $rs["frs"] = $frs[0]["a_frsRaisonsociale"];
            } else {
                $rs["frs"] = "Fournisseur inexistant";
            };
        }

        if (isset($prm[3])) {
            $rs["date"] = $prm[3];
        } else {
            $rs["date"] = "Date introuvable";
        }
        if (isset($prm[4])) {
            $rs["bon"] = $prm[4];
        } else {
            $rs["bon"] = "Bon introuvable";
        }

        if ($prm[0] == 'MP') {
            $rs["type"] = "Article Matiére Premiére";
            $bontype = "Bon d'entrée N°";
        } else if ($prm[0] == 'MF') {
            $rs["type"] = "Article Produit Fini";
            $bontype = "Bon de production N°";
        } else {
            Message::set_info_msg("Merci de verifier le code introduit");
            echo json_encode(array("etat" => 1));
            die();
        }


        $data = array(
            "head" => array(
                "Type" => "type",
                "Article" => "art",
                "Fournisseur matiére preméire" => "frs",
                "Date de péromption" => "date",
                $bontype => "bon"
            ),
            "data" => array($rs)
        );

        echo json_encode(array("data" => $data, "etat" => 0));
    }

    public function asyn_get_histprix() {

        $params = $this->get_passed_vars("data");

        $em = Model::$em;

        $stkquery = $em->createQueryBuilder();

        $histprix = $stkquery->select("a,b,c")
                        ->from('StkEntreDetail', 'a')
                        ->join("a.entCode", "b")
                        ->join("a.entArtcode", "c")
                        ->where('a.entArtcode = :artCode')
                        ->andWhere('b.entDatereception >= :todate')
                        ->andWhere('b.entEtatcode = :etat')
                        ->setParameter('artCode', $params["artCode"])
                        ->setParameter('todate', new \DateTime($this->dfrm($params["date"])))
                        ->setParameter('etat', 31)
                        ->getQuery()->getScalarResult();
// echo '<pre>';
// var_dump($histprix);
// echo '</pre>';
// die;
        $histpr = array(
            "head" => array(
                "Article" => "c_artCode",
                "Désignation" => "c_artDesignation",
                "Code mouvement" => "a_ent_code",
                "Date de reception" => "b_entDatereception",
                "Prix" => "a_entPu"
            ),
            "data" => $histprix
        );

        echo json_encode(array("data" => $histpr, "etat" => 0));
    }

    public function asyn_get_cons() {

        $params = $this->get_passed_vars("data");
        // var_dump($params);
        // die;
        $em = Model::$em;

        $stkquery = $em->createQueryBuilder();

        $histprix = $stkquery->select("a,b,c,d  ")
                        ->from('StkConsomationDetail', 'a')
                        ->join("a.consCode", "b")
                        ->join("a.consArtcode", "c")
                        ->join("b.consAffectationcode", "d")
                        ->where('b.consDate >= :todate')
                        ->andWhere('b.consClientcode = :affectation')
                        ->andWhere('b.consEtatcode >= :etat')
                        ->setParameter('affectation', $params["affectation"])
                        ->setParameter('todate', new \DateTime($this->dfrm($params["date"])))
                        ->setParameter('etat', 51)
                        ->getQuery()->getScalarResult();


        $histpr = array(
            "head" => array(
                "Article" => "c_artCode",
                "Désignation" => "c_artDesignation",
                "Code mouvement" => "a_cons_code",
                "Date" => "b_consDate",
                "Qte" => "a_consQte",
            ),
            "data" => $histprix
        );

        echo json_encode(array("data" => $histpr, "etat" => 0));
    }

    public function asyn_get_nmvt() {

        $params = $this->get_passed_vars("data");

        $em = Model::$em;

        $epr = $em->createQueryBuilder();
        $stkquery = $em->createQueryBuilder();
        $stk = $stkquery->select("a.artCode,a.artDernierprix,a.artDesignation,a.artDatecreation")
                        ->addSelect("(select sum(c.entQte + c.entQtesurplus) from  StkEntreDetail c join c.entCode d  where (d.entEtatcode = 31 or d.entEtatcode = 33) and c.entArtcode = a.artCode and d.entDatereception >= :todate and d.entMagrecepcode = :mag) as ent")
                        ->addSelect("(select sum(e.consQte) from  StkConsomationDetail e join e.consCode f  where (f.consEtatcode = 51 or f.consEtatcode = 54) and e.consArtcode = a.artCode and f.consDate >= :todate and  f.consMagcode =:mag ) as sort")
                        ->from('StkArticle', 'a')
                        ->where('a.artDatecreation <= :todate')
                        ->setParameter('todate', new \DateTime($this->dfrm($params["date"])))
                        ->setParameter('mag', $params["mag"])->getQuery()->getScalarResult();


        $stknmvtarray = array();

        foreach ($stk as $key => $stks) {
            if ($stks["ent"] == NULL)
                $stk[$key]["ent"] = 0;
            if ($stks["sort"] == NULL)
                $stk[$key]["sort"] = 0;

            if ($stk[$key]["sort"] == 0) {

                $stk[$key]["stock"] = Metier_Stock::get_stk(array(
                            "art" => $stk[$key]["artCode"],
                            "mag" => $params["mag"],
                            "exe" => $params["exe"]
                        ))[0]["finale"];

                array_push($stknmvtarray, $stk[$key]);
            }
        }

        $stknmvt = array(
            "head" => array(
                "Article" => "artCode",
                "Désignation" => "artDesignation",
                "Stock actuel" => "stock"
            ),
            "data" => $stknmvtarray
        );

        echo json_encode(array("data" => $stknmvt, "etat" => 0));
    }

    public function asyn_get_stk() {

        $params = $this->get_passed_vars("data");

        $stk = Metier_Stock::get_stkval(array(
                    "exe" => $params["exe"],
                    "mag" => $params["mag"],
        ));

        $stkfinale = array();

        foreach ($stk as $art) {
            if ($art["artClass"] == 1) {
                $artstk = Metier_Stock::get_stk_mf(array(
                            "exe" => $params["exe"],
                            "art" => $art["artCode"],
                            "mag" => $params["mag"]
                ));

                array_push($stkfinale, $artstk[0]);
            } else if ($art["artClass"] == 2 || $art["artClass"] == 3) {
                $artstk = Metier_Stock::get_stk_mp(array(
                            "exe" => $params["exe"],
                            "art" => $art["artCode"],
                            "mag" => $params["mag"]
                ));

                 array_push($stkfinale, $artstk[0]);
            }
        }


        $stock = array(
            "head" => array(
                "Article" => "artCode",
                "Désignation" => "artDesignation",
                "P.U.M.P" => "artDernierprix",
                "Qte Initiale" => "init",
                "Qte Entrée" => "ent",
                "val Entré" => "entval",
                "Qte sortie" => "sort",
                "val sortie" => "sortval",
                "Qte finale" => "finale",
                "val finale" => "finalval",
            ),
            "data" => $stkfinale
        );

        echo json_encode(array("data" => $stock, "etat" => 0));
    }

}

?>
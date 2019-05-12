<?php

class prod extends controler {

    public function index() {

        view::setContext(get_class($this));

        view::addDefaultsCss();

        view::addDefaultJs();

        view::render('tpl');
    }

    public function asyn_get_data() {

        $params = $this->get_passed_vars("data");
        $em = Model::$em;

        $result = $em->createQueryBuilder();
        $devis = $result->select('a', 'b')
                        ->from('StkProduction', 'a')
                        ->leftJoin('a.prodCodeEtat', 'b')
                        ->where('a.prodCodeEtat > :prodCodeEtat')->setParameter('prodCodeEtat', 73);

        if (!empty($params["prodCodeDeviBc"])) {
            $devis = $devis->andWhere('a.prodCodeDeviBc= :prodCodeDeviBcs')->setParameter('prodCodeDeviBcs', $params["prodCodeDeviBc"]);
        }

        if (!empty($params["a_dataCode"])) {
            $devis = $devis->andWhere('a.prodCodeDeviBc= :prodCodeDeviBc')->setParameter('prodCodeDeviBc', $params["a_prodCodeDeviBc"]);
        }

        $devis = $devis->andWhere('a.prodExerciceDevis= :exe')->setParameter('exe', $params["exe"]);
        $devis = $devis->andWhere('a.prodCodeMag= :mag')->setParameter('mag', $params["mag"]);

        $deviss = $devis->getQuery()->getScalarResult();

        $devisarray = array(
            "head" => array(
                "Code bc" => "a_prodCodeDeviBc",
                "Exercice" => "a_prodExerciceDevis",
                "Date de bon de commande" => "a_prodDateBc",
                "Status" => "b_etatLibelle",
            ),
            "data" => $deviss
        );


        echo json_encode(array("data" => $devisarray, "etat" => 0));
    }

    public function asyn_check_art() {

        $params = $this->get_passed_vars("data");

        $code = explode("-", $params["proddetailArticleCodes"]);

        $qte = $params["consprodQtes"];

        $errcode = false;

        $em = Model::$em;

        $msg = "";

        if ($code["0"] == "MP" || $code["0"] == "MC") {

            $art = $code["1"];

            $frs = $code["2"];

            $artdef = $em->find("StkArticle", $art);

            if ($artdef !== null) {

                $artclass = $artdef->getArtClass();

                if ($artclass == 2 || $artclass == 3) {
                    $stk = Metier_Stock::get_stk_mp(array(
                                "exe" => $params["exe"],
                                "art" => $art,
                                "mag" => $params["mag"]
                    ));

                    if (isset($params["formapp"])) {
                        $stks = $params["formapp"]["qtestk"];

                        if ($stks !== null) {
                            $stkplus = 0;
                            foreach ($stks as $stkr) {
                                if ($stkr["art"] == $art) {
                                    $stkplus += (float) $stkr["qte"];
                                }
                            }
                        } else {
                            $stkplus = 0;
                        }
                    } else {
                        $stkplus = 0;
                    }

                    if ((float) $qte + (float) $stkplus <= $stk[0]["finale"]) {
                        $frsref = $em->find("StkFournisseur", $frs);
                        if ($frsref == null) {
                            $errcode = true;
                            $msg = "Code invalide, Code fournisseur introuvable";
                        }
                    } else {
                        $errcode = true;
                        $msg = " Stock insuffisant stock " . $artdef->getArtDesignation() . "=" . $stk[0]["finale"];
                    };
                } else {
                    $errcode = true;
                    $msg = "Code invalide, Article de type matiére fini";
                }
            } else {
                $errcode = true;
                $msg = "Code invalide,Code article introuvable";
            }
        } else if ($code["0"] == "MF") {
            $errcode = true;
            $msg = "Code invalide, Article de type matiére finie.";
        } else {
            $errcode = true;
            $msg = "Code invalide";
        }


        if ($errcode) {
            Message::set_info_msg($msg);
            echo json_encode(array("etat" => 1));
        } else {
            echo json_encode(array("data" => $params, "art" => $artdef->getArtDesignation(), "frs" => $frsref->getFrsRaisonsociale(), "etat" => 0));
        }
    }

    public function asyn_get_data_object($prm = null) {

        if ($prm == null) {
            $params = $this->get_passed_vars("data");
        } else {
            $params = $prm;
        }
        $em = Model::$em;


        $result = $em->createQueryBuilder();
        $devis = $result->select('a', 'b')
                        ->from('StkProduction', 'a')
                        ->leftJoin('a.prodCodeEtat', 'b')
                        ->where('a.prodCodeEtat !=:prodCodeEtat')->setParameter('prodCodeEtat', 73);

        if (!empty($params["a_prodCodeDeviBc"])) {

            $devis = $devis->andWhere('a.prodCodeDeviBc =:prodCodeDeviBc')->setParameter('prodCodeDeviBc', $params["a_prodCodeDeviBc"]);
        }

        $devise = $devis->getQuery()->getArrayResult();

        $results = $em->createQueryBuilder();
        $deviss = $results->select('a', 'c', 'd')
                ->from('StkProductionDetail', 'a')
                ->leftJoin('a.proddetailArticleCode', 'c')
                ->leftJoin('a.proddetailTvaDevis', 'd');

        if (!empty($params["datarefval"]["a_prodId"])) {
            $deviss = $deviss->andWhere('a.prodId =:prodId')->setParameter('prodId', $params["datarefval"]["a_prodId"]);
        }
        $datas = $deviss->getQuery()->getArrayResult();

        foreach ($datas as $key => $item) {

            $res = $em->createQueryBuilder();
            $res->select('t', 'e', 'f', 'g')
                    ->from('StkJourneProd', 't')
                    ->leftJoin('t.prodCons', 'e')
                    ->leftJoin('e.consprodArticleCode', 'f')
                    ->leftJoin('e.consprodCodeFrs', 'g')
                    ->where('t.journeDate =:vjourneDate')->setParameter('vjourneDate', new \DateTime($this->dfrm($params["journeDate"])))
                    ->andWhere('t.prodDetailId =:prodIddet')->setParameter('prodIddet', $em->find("StkProductionDetail", $item["prodDetailId"]));
            $journees = $res->getQuery()->getArrayResult();

            $datas[$key]["consProdId"] = $journees;


            $res = $em->createQueryBuilder();
            $res->select("sum(t.journeQte) as qteProduite")
                    ->from('StkJourneProd', 't')
                    ->leftJoin('t.prodCons', 'e')
                    ->leftJoin('e.consprodArticleCode', 'f')
                    ->leftJoin('e.consprodCodeFrs', 'g')
                    ->where('t.journeDate !=:vjourneDate')->setParameter('vjourneDate', new \DateTime($this->dfrm($params["journeDate"])))
                    ->andWhere('t.prodDetailId =:prodIddet')->setParameter('prodIddet', $em->find("StkProductionDetail", $item["prodDetailId"]));
            $produite = $res->getQuery()->getArrayResult();

            $datas[$key]["qteProduite"] = $produite[0]["qteProduite"];
        }


        if ($prm == null) {
            echo json_encode(array("data" => $devise, "datas" => $datas, "etat" => 0));
        } else {
            return array($devise, $datas);
        }
    }

    public function asyn_ajout_data() {


        $params = $this->get_passed_vars("data");

        Metier_Sgs::get_exercice($params["prodExerciceDevis"]);

        $em = Model::$em;
        $devis = new StkProduction();

        $em->getConnection()->beginTransaction();

        $devis->setProdCodeDeviBc($params["prodCodeDeviBc"]);
        $devis->setProdCodeMag($params["mag"]);
        $devis->setProdExerciceDevis($params["prodExerciceDevis"]);
        $devis->setProdDateDevis(new \DateTime($this->dfrm($params["prodDateDevis"])));
        $devis->setProdCodeEtat($em->find("StkEtat", 71));

        $em->persist($devis);

        $em->flush();


        foreach ($params["prodCodeDeviBcs"] as $itemdet) {

            $devisd = new StkProductionDetail();

            $devisd->setProdId($devis);
            $devisd->setProddetailArticleCode($em->find("StkArticle", $itemdet["proddetailArticleCode"]));
            $devisd->setProddetailQteDevis($itemdet["proddetailQteDevis"]);
            $devisd->setProddetailPrixUniaireDeviseDevis($itemdet["proddetailPrixUniaireDeviseDevis"]);
            $devisd->setProddetailTvaDevis($em->find("StkTva", $itemdet["proddetailTvaDevis"]));

            $em->persist($devisd);
        }

        $em->flush();

        $em->getConnection()->commit();

        Message::set_info_msg("Devis sauvegarder et valider avec succes");
        echo json_encode(array("etat" => 1));
    }

    public function asyn_chek_article_frs_stock() {
        
    }

    public function asyn_annulation_data() {

        $params = $this->get_passed_vars("data");

        $em = Model::$em;

        $devisobj = $this->asyn_get_data_object($params);

        Metier_Sgs::get_exercice($devisobj[0][0]["prodExerciceDevis"]);

        if (isset($devisobj[0])) {
            $qb = $em->createQueryBuilder();
            $q = $qb->update('StkProduction', 'u')
                    ->set('u.prodCodeEtat', $qb->expr()->literal("74"))
                    ->where('u.prodId = ?1')
                    ->setParameter(1, $devisobj[0][0]["prodId"])
                    ->getQuery();

            $p = $q->execute();

            $stkprod = $em->find("StkProduction", $devisobj[0][0]["prodId"]);

            $stkdetail = $stkprod->getProdDetailId();
            foreach ($stkdetail as $det) {
                $consdets = $det->getConsProdId();
                foreach ($consdets as $consdet) {
                    $em->remove($consdet);
                    $em->flush();
                }
            }


            Message::set_info_msg("Le Bon de production n° " . $devisobj[0][0]["prodCodeProd"] . " a été Annuler");

            echo json_encode(array("etat" => 1));
        } else {
            Exceptions::setLastException("Vous ne pouvez pas annulé se bon de prod");
            echo json_encode(array("etat" => 2));
        }
    }

    public function asyn_genprod() {

        $params = $this->get_passed_vars("data");

        Metier_Sgs::get_exercice($params["prodExerciceProd"]);

        $em = Model::$em;

        $em->getConnection()->beginTransaction();

        $devis = $em->find("StkProduction", $params["prodId"]);

        if (empty($devis->getProdCodeProd())) {
            $devis->setProdCodeProd($params["prodCodeProd"]);
            $devis->setProdExerciceProd($params["prodExerciceProd"]);
            $em->persist($devis);
            $em->flush();
        }

        //$devis->setProdCodeEtat($em->find("StkEtat", 74));

        $bonisok = true;

        foreach ($params["prodCodeDeviBcs"] as $itemdet) {

            $devisd = new StkProductionDetail();
            $devisd = $em->find("StkProductionDetail", $itemdet["prodDetailId"]);

            $qteDem = $devisd->getProddetailQteDevis();

            $qteJourne = $itemdet["journeQte"];

            $res = $em->createQueryBuilder();
            $res->select("sum(t.journeQte) as qteProduite")
                    ->from('StkJourneProd', 't')
                    ->leftJoin('t.prodCons', 'e')
                    ->leftJoin('e.consprodArticleCode', 'f')
                    ->leftJoin('e.consprodCodeFrs', 'g')
                    ->where('t.journeDate !=:vjourneDate')->setParameter('vjourneDate', new \DateTime($this->dfrm($params["journeDate"])))
                    ->andWhere('t.prodDetailId =:prodIddet')->setParameter('prodIddet', $devisd);
            $produite = $res->getQuery()->getArrayResult();

            $qteProduite = $produite[0]["qteProduite"];

            if ($qteDem > ($qteJourne + $qteProduite)) {
                $bonisok = false;
            };

            $journee = $em->getRepository("StkJourneProd")->findOneBy(array(
                "journeDate" => new \DateTime($this->dfrm($params["journeDate"])),
                "prodDetailId" => $devisd
            ));
            
            if (!empty($journee)) {
                $pdcons = $journee->getProdCons();

                foreach ($pdcons as $prd) {
                    $em->remove($prd);
                    $em->flush();
                }
            }


            if (empty($journee)) {
                $journee = new StkJourneProd();
            }

            $journee->setJourneDate(new \DateTime($this->dfrm($params["journeDate"])));
            $journee->setJourneQte($itemdet["journeQte"]);
            $journee->setJourneDatePeromption(new \DateTime($this->dfrm($itemdet["journeDatePeromption"])));
            $journee->setProdDetailId($devisd);

            $em->persist($journee);


            if (isset($itemdet["consProdId"])) {
                foreach ($itemdet["consProdId"] as $itemconsdet) {

                    $consProd = $em->getRepository("StkConsommationProd")->findOneBy(array(
                        "consprodArticleCode" => $em->find("StkArticle", $itemconsdet["consprodArticleCode"]),
                        "consJourneId" => $journee
                    ));

                    if (empty($consProd)) {
                        $consProd = new StkConsommationProd();
                    }


                    $consProd->setConsprodArticleCode($em->find("StkArticle", $itemconsdet["consprodArticleCode"]));
                    $consProd->setConsprodCodeFrs($em->find("StkFournisseur", $itemconsdet["consprodCodeFrs"]));
                    $consProd->setConsprodQte($itemconsdet["consprodQte"]);
                    $consProd->setConsprodType($itemconsdet["consprodType"]);
                    $consProd->setConsJourneId($journee);
                    $em->persist($consProd);
                }
            } else {
                Message::set_info_msg("Merci de verifier les detail de la matiére premiére");
                echo json_encode(array("etat" => 1));
                die();
            }


            $em->persist($devisd);
        }
        $devis = $em->find("StkProduction", $params["prodId"]);
        if ($bonisok) {
            $devis->setProdCodeEtat($em->find("StkEtat", 75));
            $em->persist($devis);
        } else {
            $devis->setProdCodeEtat($em->find("StkEtat", 74));
            $em->persist($devis);
        }

        $em->flush();

        $em->getConnection()->commit();

        Message::set_info_msg("Production sauvegarder et valider avec succes");
        echo json_encode(array("etat" => 1));
    }

    public function asyn_validprod() {

        $params = $this->get_passed_vars("data");

        Metier_Sgs::get_exercice($params["datarefval"]["a_prodExerciceProd"]);

        $em = Model::$em;
        $devis = new StkProduction();

        $em->getConnection()->beginTransaction();
        $devis = $em->find("StkProduction", $params["datarefval"]["a_prodId"]);
        $devis->setProdDateProd(new \DateTime());
        $devis->setProdCodeEtat($em->find("StkEtat", 76));
        $em->persist($devis);

        $em->flush();


        $em->flush();

        $em->getConnection()->commit();

        Message::set_info_msg("Production mise à jour et valider avec succes");

        echo json_encode(array("etat" => 1));
    }

    public function asyn_get_datauniqcode($exe = "") {

        $params = $this->get_passed_vars("data");
        $em = Model::$em;

        if ($exe != "") {
            $params["exe"] = $exe;
        }

        $id = $em->getRepository("StkProduction")->createQueryBuilder('b')
                ->select("MAX(ABS(b.prodCodeProd)) as id")
                ->where("b.prodExerciceDevis = " . $params["exe"])
                ->getQuery()
                ->getResult();

        $arid = explode("/", $id[0]["id"]);

        $code = "";

        if ($arid[0] !== null || $arid[0] !== 'NULL') {
            $code = (string) ((int) $arid[0] + 1) . "/" . $params["exe"];
        } else {
            $code = "1/" . $params["exe"];
        }
        if ($exe == "") {
            echo json_encode(array("data" => $code, "etat" => 0));
        } else {
            return $code;
        }
    }

}

?>
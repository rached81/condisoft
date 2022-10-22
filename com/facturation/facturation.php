<?php

class facturation extends controler {

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
                        ->where('a.prodCodeEtat > :prodCodeEtat')->setParameter('prodCodeEtat', 75);
                        

       
        if (!empty($params["prodCodeProd"])) {
            $devis = $devis->andWhere('a.prodCodeDeviBc like :prodCodeDeviBcs')->setParameter('prodCodeDeviBcs', '%'.$params["prodCodeProd"].'%');
        }

        if (!empty($params["a_dataCode"])) {
            $devis = $devis->andWhere('a.prodCodeDeviBc= :prodCodeDeviBc')->setParameter('prodCodeDeviBc', $params["a_prodCodeDeviBc"]);
        }

        $devis = $devis->andWhere('a.prodExerciceDevis= :exe')->setParameter('exe', $params["exe"]);
        $devis = $devis->andWhere('a.prodCodeMag= :mag')->setParameter('mag', $params["mag"]);
        $devis = $devis->orderBy('a.prodDateFacture', 'DESC');

        $deviss = $devis->getQuery()->getScalarResult();
      
        foreach ($deviss as  $key => $devis){
            $stkquery = $em->createQueryBuilder();

            $res = $stkquery->select("c")
                            ->from('StkFournisseur', 'c')
                            ->where('c.frsCode = :frsCode')
                            ->setParameter('frsCode', $devis['a_prodCodeClient'])
                            ->getQuery()->getScalarResult()[0];
                            $deviss[$key]['c_frsRaisonsociale'] = $res['c_frsRaisonsociale'];
                            $deviss[$key]['client'] = $res;
                            // $this->dd($deviss[$key]);
            }
        $devisarray = array(
            "head" => array(
                "Code Facture" => "a_prodCodeFacture",
                "Code bc" => "a_prodCodeDeviBc",
                "Exercice" => "a_prodExerciceDevis",
                "Date de bon de commande" => "a_prodDateBc",
                "Client " => "c_frsRaisonsociale",
                "Status" => "b_etatLibelle",
            ),
            "data" => $deviss,

        );


        echo json_encode(array("data" => $devisarray, "etat" => 0));
    }

    public function asyn_get_data_object($prm = null) {
        
        if ($prm == null) {
            $params = $this->get_passed_vars("data");
        } else {
            $params = $prm;
        }
        $em = Model::$em;


        $result = $em->createQueryBuilder();
        $devis = $result->select('a', 'b', 'd', 'e')
                        ->from('StkProduction', 'a')
                        ->leftJoin('a.prodCodeEtat', 'b')
                        ->leftJoin('a.prodDevise', 'd')
                        ->leftJoin('a.prodCommerciale', 'e') 
                    
                        ->where('a.prodCodeEtat !=:prodCodeEtat')->setParameter('prodCodeEtat', 73);

        
        
        
        if (!empty($params["a_prodCodeProd"])) {
            $devis = $devis->andWhere('a.prodCodeProd =:prodCodeDeviBc')->setParameter('prodCodeDeviBc', $params["a_prodCodeProd"]);
        }

        $devise = $devis->getQuery()->getArrayResult();
        
    
         $resultc = $em->createQueryBuilder();
        $frs = $resultc->select('p')
                        ->from('StkFournisseur', 'p')->andWhere('p.frsCode= :frsCode')->setParameter('frsCode',$devise[0]["prodCodeClient"] )->getQuery()->getArrayResult();
       
        $devise[0]["prodCodeClient"] = $frs[0];

        $results = $em->createQueryBuilder();
        $deviss = $results->select('a', 'c', 'e', ' d', 'n')
                ->from('StkProductionDetail', 'a')
                ->leftJoin('a.proddetailArticleCode', 'c')
                ->leftJoin('a.proddetailTvaDevis', 'd')
                ->leftJoin('a.proddetailTva', 'n')
                ->leftJoin('a.consProdId', 'e');
              


        if (!empty($params["datarefval"]["a_prodId"])) {
            $deviss = $deviss->andWhere('a.prodId =:prodId')->setParameter('prodId', $params["datarefval"]["a_prodId"]);
        }

        $datas = $deviss->getQuery()->getArrayResult();

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
        $devis->setProdDevise($em->find("StkDevise", $params["prodDevise"]));

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

    public function asyn_annulation_data() {

        $params = $this->get_passed_vars("data");

        $em = Model::$em;

        $devisobj = $this->asyn_get_data_object($params);

        Metier_Sgs::get_exercice($devisobj[0][0]["prodExerciceBc"]);

        if (isset($devisobj[0])) {
            $qb = $em->createQueryBuilder();
            $q = $qb->update('StkProduction', 'u')
                    ->set('u.prodCodeEtat', $qb->expr()->literal("76"))
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


            Message::set_info_msg("Le Facture/BL n° " . $devisobj[0][0]["prodCodeFacture"] . "-" . $devisobj[0][0]["prodCodeBl"] . " ont été Annuler");

            echo json_encode(array("etat" => 1));
        } else {
            Exceptions::setLastException("Vous ne pouvez pas annulé ses Facture/BL");
            echo json_encode(array("etat" => 2));
        }
    }

    public function asyn_genfact() {

        $params = $this->get_passed_vars("data");

        Metier_Sgs::get_exercice($params["prodExerciceBc"]);

        $em = Model::$em;
        $devis = new StkProduction();

        $em->getConnection()->beginTransaction();
        $devis = $em->find("StkProduction", $params["prodId"]);
        $devis->setProdCodeBl($params["prodCodeBl"]);
        $devis->setProdExerciceBlfacture($params["prodExerciceBlfacture"]);
        $devis->setProdCodeFacture($params["prodCodeFacture"]);
        $devis->setProdDateBl(new \DateTime($this->dfrm($params["prodDateBl"])));
        $devis->setProdDateFacture(new \DateTime($this->dfrm($params["prodDateFacture"])));
        $devis->setProdCodeEtat($em->find("StkEtat", 77));
        $em->persist($devis);

        $em->flush();


        foreach ($params["prodCodeDeviBcs"] as $itemdet) {

            $devisd = new StkProductionDetail();
            $devisd = $em->find("StkProductionDetail", $itemdet["prodDetailId"]);
            $devisd->setProddetailPrixUniaireDevise($itemdet["proddetailPrixUniaireDevise"]);
            $devisd->setProddetailTvaDevis($em->find("StkTva", $itemdet["proddetailTva"]));
            $devisd->setProddetailTva($em->find("StkTva", $itemdet["proddetailTva"]));
            $em->persist($devisd);
        }

        $em->flush();

        $em->getConnection()->commit();

        Message::set_info_msg("Facture/Bl sauvegarder et valider avec succes");
        echo json_encode(array("etat" => 1));
    }

    public function asyn_validprod() {

        $params = $this->get_passed_vars("data");

        Metier_Sgs::get_exercice($params["prodExerciceBc"]);

        $em = Model::$em;
        $devis = new StkProduction();

        $em->getConnection()->beginTransaction();
        $devis = $em->find("StkProduction", $params["prodId"]);
        $devis->setProdDateProd(new \DateTime($this->dfrm($params["prodDateProd"])));
        $devis->setProdCodeEtat($em->find("StkEtat", 76));
        $em->persist($devis);

        $em->flush();


        foreach ($params["prodCodeDeviBcs"] as $itemdet) {

            $devisd = new StkProductionDetail();
            $devisd = $em->find("StkProductionDetail", $itemdet["prodDetailId"]);
            $devisd->setProddetailDatePeromption(new \DateTime($this->dfrm($itemdet["proddetailDatePeromption"])));

//            foreach ($itemdet["consProdId"] as $itemconsdet) {
//
//                $consProd = new StkConsommationProd();
//                $consProd->setConsprodArticleCode($em->find("StkArticle", $itemconsdet["consprodArticleCode"]));
//                $consProd->setConsprodCodeFrs($em->find("StkFournisseur", $itemconsdet["consprodCodeFrs"]));
//                $consProd->setConsprodQte($itemconsdet["consprodQte"]);
//                $consProd->setConsprodType($itemconsdet["consprodType"]);
//                $consProd->setProdDetailId($devisd);
//                $em->persist($consProd);
//            }

            $em->persist($devisd);
        }

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
                ->select("MAX(ABS(b.prodCodeBl)) as id")
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



        $ids = $em->getRepository("StkProduction")->createQueryBuilder('b')
                ->select("MAX(ABS(b.prodCodeFacture)) as id")
                ->where("b.prodExerciceDevis = " . $params["exe"])
                ->getQuery()
                ->getResult();

        $arids = explode("/", $ids[0]["id"]);

        $codes = "";

        if ($arids[0] !== null || $arids[0] !== 'NULL') {
            $codes = (string) ((int) $arids[0] + 1) . "/" . $params["exe"];
        } else {
            $codes = "1/" . $params["exe"];
        }



        if ($exe == "") {
            echo json_encode(array("data" => $code, "datas" => $codes, "etat" => 0));
        } else {
            return $code;
        }
    }

}

?>
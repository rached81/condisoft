<?php

class devis extends controler {

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
                    
                        ->where('a.prodCodeEtat != :prodCodeEtat')->setParameter('prodCodeEtat', 73);

        if (!empty($params["prodCodeDeviBc"])) {
            $devis = $devis->andWhere('a.prodCodeDeviBc like :prodCodeDeviBcs')->setParameter('prodCodeDeviBcs', '%'.$params["prodCodeDeviBc"].'%');
        }

        if (!empty($params["a_dataCode"])) {
            $devis = $devis->andWhere('a.prodCodeDeviBc= :prodCodeDeviBc')->setParameter('prodCodeDeviBc', $params["a_prodCodeDeviBc"]);
        }

        $devis = $devis->andWhere('a.prodExerciceDevis= :exe')->setParameter('exe', $params["exe"]);
        $devis = $devis->andWhere('a.prodCodeMag= :mag')->setParameter('mag', $params["mag"]);
        $devis = $devis->orderBy('a.prodDateDevis', 'DESC');

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
                "Code devis" => "a_prodCodeDeviBc",
                "Exercice" => "a_prodExerciceDevis",
                "Date de création" => "a_prodDateDevis",
                "Client" => 'c_frsRaisonsociale'
            ),
            "data" => $deviss
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
        $devis = $result->select('a', 'b','d','e')
                        ->from('StkProduction', 'a')
                        ->leftJoin('a.prodCodeEtat', 'b')
                ->leftJoin('a.prodDevise', 'd')
                 ->leftJoin('a.prodCommerciale', 'e')
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
        $devis->setProdCodeClient($params["prodCodeClient"]);
        $devis->setProdDevise($em->find("StkDevise", $params["prodDevise"]));
        $devis->setProdCommerciale($em->find("Util",$params["prodCommerciale"]));

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

        Metier_Sgs::get_exercice($devisobj[0][0]["prodExerciceDevis"]);

        if (isset($devisobj[0])) {
            $qb = $em->createQueryBuilder();
            $q = $qb->update('StkProduction', 'u')
                    ->set('u.prodCodeEtat', $qb->expr()->literal("73"))
                    ->where('u.prodCodeDeviBc = ?1')
                    ->setParameter(1, $devisobj[0][0]["prodCodeDeviBc"])
                    ->getQuery();

            $p = $q->execute();

            Message::set_info_msg("Le devis n° " . $devisobj[0][0]["prodCodeDeviBc"] . " a été Annuler");

            echo json_encode(array("etat" => 1));
        } else {
            Exceptions::setLastException("Vous ne pouvez pas annulé un devis");
            echo json_encode(array("etat" => 2));
        }
    }

    public function asyn_genbc() {
        
        ini_set('display_errors', true);  

        $params = $this->get_passed_vars("data");
        
        Metier_Sgs::get_exercice($params["prodExerciceDevis"]);

        $em = Model::$em;
        $devis = new StkProduction();

        $devis = $em->find("StkProduction", $params["prodId"]);

        $em->getConnection()->beginTransaction();
        $devis->setProdDateBc(new \DateTime($this->dfrm($params["prodDateBc"])));
        $devis->setProdExerciceBc($params["prodExerciceBc"]);
        $devis->setProdCodeEtat($em->find("StkEtat", 74));

        $em->persist($devis);

      
          foreach ($params["prodCodeDeviBcs"] as $itemdet) {

            $devisd = $em->getRepository("StkProductionDetail")->findOneBy(array("prodId"=>$params["prodId"],"proddetailArticleCode"=>$itemdet["proddetailArticleCode"]));
            $devisd->setProddetailQteDevis($itemdet["proddetailQteDevis"]);
            $devisd->setProddetailPrixUniaireDeviseDevis($itemdet["proddetailPrixUniaireDeviseDevis"]);
            $em->persist($devisd);
            
        }


        $em->flush();

        $em->getConnection()->commit();

        Message::set_info_msg("Bc sauvegarder et valider avec succes");
        echo json_encode(array("etat" => 1));
    }

    public function asyn_get_datauniqcode($exe = "") {

        $params = $this->get_passed_vars("data");
        $em = Model::$em;

        if ($exe != "") {
            $params["exe"] = $exe;
        }

        $id = $em->getRepository("StkProduction")->createQueryBuilder('b')
                ->select("MAX(ABS(b.prodCodeDeviBc)) as id")
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
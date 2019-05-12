<?php

class consommation extends controler {

    public function index() {

        view::setContext(get_class($this));

        view::addDefaultsCss();

        view::addDefaultJs();

        view::render('tpl');
    }

    public function asyn_ajout_typeaff() {

        $params = $this->get_passed_vars("data");
        $afftype = $params["aff"];
        $em = Model::$em;
        $typeaff = new StkAffectationType();
        $typeaff->setAfftypeDesignation($afftype);
        $em->persist($typeaff);
        $em->flush();

        Message::set_info_msg("Type d'affectation ajouter avec succes");
        echo json_encode(array("etat" => 1));
    }

    public function asyn_ajout_aff() {

        $params = $this->get_passed_vars("data");
        $affanal = $params["aff"];
        $typeaffanal = $params["typeaff"];
        $em = Model::$em;
        $analaff = new StkAffectationAnalityque();
        $analaff->setAffectationDesignation($affanal);
        $analaff->setAffectationType($typeaffanal);
        $em->persist($analaff);
        $em->flush();

        Message::set_info_msg("Affectation analytique ajouter avec succes");
        echo json_encode(array("etat" => 1));
    }

    public function asyn_supp_typeaff() {

        $params = $this->get_passed_vars("data");
        $afftype = $params["aff"];
        $em = Model::$em;
        $typeaff = $em->find("StkAffectationType", $afftype);
        $em->remove($typeaff);
        $em->flush();
        Message::set_info_msg("Type d'affectation supprimer avec succes");
        echo json_encode(array("etat" => 1));
    }

    public function asyn_supp_aff() {

        $params = $this->get_passed_vars("data");
        $affanal = $params["aff"];
        $em = Model::$em;
        $analaff = $em->find("StkAffectationAnalityque", $affanal);
        $em->remove($analaff);
        $em->flush();
        Message::set_info_msg("Affectation analytique  supprimer avec succes");
        echo json_encode(array("etat" => 1));
    }

    public function asyn_getautoselectaff() {

        $params = $this->get_passed_vars("data");

        $db = Model::getDb();

        try {

            if ($params["codetype"] != "") {
                $qr = $db->select()->distinct()->from(array("A" => $params["model"]), array($params["id"], $params["lib"]))
                                ->order($params["lib"] . " DESC")->where("affectation_type = ?", $params["codetype"]);

                $rs = $qr->query();

                $list = $rs->fetchAll();

                echo json_encode(array("etat" => "0", "data" => $list));
            } else {
                echo json_encode(array("etat" => "0", "data" => array()));
            }
        } catch (Exception $ex) {
            Exceptions::setLastException($ex->getMessage());
            echo json_encode(array("etat" => "2"));
        }
    }

    public function asyn_get_cons() {

        $params = $this->get_passed_vars("data");
        $em = Model::$em;


        $result = $em->createQueryBuilder();
        $cons = $result->select('a', 'b')
                        ->from('StkConsomationEntete', 'a')
                        ->leftJoin('a.consEtatcode', 'b')
                        ->where('a.consEtatcode != :consEtatcode')->setParameter('consEtatcode', 53)
                        ->andWhere('a.consEtatcode != :consEtatcodes')->setParameter('consEtatcodes', 54);

        if (!empty($params["consCode"])) {
            $cons = $cons->andWhere('a.consCode= :consCodes')->setParameter('consCodes', $params["consCode"]);
        }

        if (!empty($params["a_consCode"])) {
            $cons = $cons->andWhere('a.consCode= :consCode')->setParameter('consCode', $params["a_consCode"]);
        }

        $cons = $cons->andWhere('a.consExercice= :exe')->setParameter('exe', $params["exe"]);
        $cons = $cons->andWhere('a.consMagcode= :mag')->setParameter('mag', $params["mag"]);

        $consrs = $cons->getQuery()->getScalarResult();

        $consarray = array(
            "head" => array(
                "Code Consommation" => "a_consCode",
                "Exercice" => "a_consExercice",
                "Date de demmande" => "a_consDatedem",
                "Date de livraison" => "a_consDate",
                "Type" => "a_consType",
                "Etat" => "b_etatLibelle",
            ),
            "data" => $consrs
        );


        echo json_encode(array("data" => $consarray, "etat" => 0));
    }

    public function asyn_chk_art_cons() {

        $params = $this->get_passed_vars("data");

        $stk = Metier_Stock::get_stk(array(
                    "exe" => $params["exe"],
                    "art" => $params["consArtcode"],
                    "mag" => $params["mag"]
        ));

        if ($params["consQte"] <= $stk[0]["finale"] && $params["consQte"] != 0) {
            echo json_encode(array("etat" => "0", "data" => 1, "qte" => $stk[0]["finale"]));
        } else {
            echo json_encode(array("etat" => "0", "data" => 0, "qte" => $stk[0]["finale"]));
        }
    }

    public function asyn_get_cons_object($prm = null) {

        if ($prm == null) {
            $params = $this->get_passed_vars("data");
        } else {
            $params = $prm;
        }
        $em = Model::$em;


        $result = $em->createQueryBuilder();
        $cons = $result->select('a', 'b', 'c', 'd', 'e')
                        ->from('StkConsomationEntete', 'a')
                        ->leftJoin('a.consEtatcode', 'b')
                        ->leftJoin('a.consAffectationcode', 'c')
                        ->leftJoin('a.consAffectationtypecode', 'd')
                        ->leftJoin('a.consClientcode', 'e')
                        ->where('a.consEtatcode != :consEtatcode')->setParameter('consEtatcode', 53);

        if (!empty($params["a_consCode"])) {
            $cons = $cons->andWhere('a.consCode= :consCode')->setParameter('consCode', $params["a_consCode"]);
        }

        $consrs = $cons->getQuery()->getArrayResult();


        $results = $em->createQueryBuilder();
        $conss = $results->select('a', 'c')
                ->from('StkConsomationDetail', 'a')
                ->leftJoin('a.consArtcode', 'c');


        if (!empty($params["a_consCode"])) {
            $conss = $conss->andWhere('a.consCode= :consCode')->setParameter('consCode', $params["a_consCode"]);
        }

        $datas = $conss->getQuery()->getArrayResult();

        if ($prm == null) {
            echo json_encode(array("data" => $consrs, "datas" => $datas, "etat" => 0));
        } else {
            return array($consrs, $datas);
        }
    }

    public function asyn_ajout_cons() {


        $params = $this->get_passed_vars("data");

        Metier_Sgs::get_exercice($params["consExercice"]);

        $em = Model::$em;
        $cons = new StkConsomationEntete();

        $em->getConnection()->beginTransaction();
        $cons->setConsCode($params["consCode"]);

        $cons->setConsMagcode($params["mag"]);
        $cons->setConsExercice($params["consExercice"]);
        $cons->setConsDatedem(new \DateTime($this->dfrm($params["consDatedem"])));
        $cons->setConsAffectationcode($em->find("StkAffectationAnalityque", $params["consAffectationcode"]));
        $cons->setConsAffectationtypecode($em->find("StkAffectationType", $params["consAffectationtypecode"]));
        $cons->setConsClientcode($em->find("StkFournisseur", $params["consClientcode"]));
        $cons->setConsType($params["consType"]);
        $cons->setConsMotif($params["consMotif"]);
        $cons->setConsObservation($params["consObservation"]);
        $cons->setConsEtatcode($em->find("StkEtat", 51));


        $em->persist($cons);

        $em->flush();

        $i = 1;

        foreach ($params["consCodes"] as $itemdet) {

            $consd = new StkConsomationDetail();
            $consd->setConsCode($cons);
            $consd->setConsExercice($params["consExercice"]);
            $consd->setConsArtcode($em->find("StkArticle", $itemdet["consArtcode"]));
            $consd->setConsSeq($i);
            $consd->setConsQtedem($itemdet["consQtedem"]);

            $em->persist($consd);
            $i++;
        }

        $em->flush();

        $em->getConnection()->commit();

        foreach ($params["consCodes"] as $itemdet) {

            Metier_Stock::get_stk(array(
                "exe" => $params["consExercice"],
                "art" => $itemdet["consArtcode"],
                "mag" => $params["mag"],
            ));
        }

        Message::set_info_msg("Consommation sauvegarder et valider avec succes");
        echo json_encode(array("etat" => 1));
    }

    public function asyn_annulation_cons() {

        $params = $this->get_passed_vars("data");

        $em = Model::$em;

        $consobj = $this->asyn_get_cons_object($params);

        Metier_Sgs::get_exercice($consobj[0][0]["consExercice"]);

        $qb = $em->createQueryBuilder();
        $q = $qb->update('StkConsomationEntete', 'u')
                ->set('u.consEtatcode', $qb->expr()->literal("53"))
                ->where('u.consCode = ?1')
                ->setParameter(1, $consobj[0][0]["consCode"])
                ->getQuery();
        $p = $q->execute();

        foreach ($consobj[1] as $artitem) {
            Metier_Stock::get_stk(array(
                "exe" => $consobj[0][0]["consExercice"],
                "art" => $artitem["cons_artCode"],
                "mag" => $consobj[0][0]["consMagcode"],
            ));
        }

        Message::set_info_msg("La consommation n° " . $consobj[0][0]["consCode"] . " a été Annuler");

        echo json_encode(array("etat" => 1));
    }

    public function asyn_liv_cons() {


        $params = $this->get_passed_vars("data");

        Metier_Sgs::get_exercice($params["consExercice"]);

        $em = Model::$em;

        $em->getConnection()->beginTransaction();

        $cons = $em->getRepository("StkConsomationEntete")->find(array(
            "consCode" => $params["consCode"],
        ));

        $date = new Zend_Date();

        $datelit = $date->toString("dd/MM/yyyy");

        $cons->setConsDate(new \DateTime($this->dfrm($params["consDate"])));

        $cons->setConsEtatcode($em->find("StkEtat", 52));

        $em->persist($cons);

        $em->flush();

        foreach ($params["consCodes"] as $itemdet) {

            $consd = $em->getRepository("StkConsomationDetail")->find(array(
                "consCode" => $params["consCode"],
                "consArtcode" => $itemdet["consArtcode"],
            ));

            $consd->setConsQte($itemdet["consQte"]);

            $em->persist($consd);
        }

        $em->flush();

        $em->getConnection()->commit();

        foreach ($params["consCodes"] as $itemdet) {

            Metier_Stock::get_stk(array(
                "exe" => $params["consExercice"],
                "art" => $itemdet["consArtcode"],
                "mag" => $params["mag"],
            ));
        }

        Message::set_info_msg("Consommation livré et validé avec succes");

        echo json_encode(array("etat" => 1));
    }

    public function asyn_update_cons() {


        $params = $this->get_passed_vars("data");

        $em = Model::$em;
        $cons = new StkConsomationEntete();

        $em->getConnection()->beginTransaction();
        $cons->setConsCode($params["consCode"]);
        $cons->setConsMagcode($params["mag"]);
        $cons->setConsExercice($params["consExercice"]);
        $cons->setConsDate(new \DateTime($this->dfrm($params["consDate"])));
        $cons->setConsAffectaioncode($em->find("StkAffectationAnalityque", $params["consAffectationcode"]));
        $cons->setConsAffectaiontypecode($em->find("StkAffectationType", $params["consAffectationtypecode"]));
        $cons->setConsType($params["consType"]);
        $cons->setConsMotif($params["consMotif"]);
        $cons->setConsEtatcode($em->find("StkEtat", 51));


        $em->persist($cons);


        foreach ($params["consCodes"] as $itemdet) {

            $consd = new StkConsomationDetail();
            $consd->setConsCode($cons);
            $consd->setConsExercice($params["consExercice"]);
            $consd->setConsArtcode($em->find("StkArticle", $itemdet["consArtcode"]));
            $consd->setConsTracecode($itemdet["consTracecode"]);
            $consd->setConsLotTracecode($itemdet["consLottracecode"]);
            $consd->setConsQte($itemdet["consQte"]);

            $em->persist($consd);
        }

        $em->flush();

        $em->getConnection()->commit();

        Message::set_info_msg("Consommation sauvegarder et valider avec succes");
        echo json_encode(array("etat" => 1));
    }

    public function asyn_get_consuniqcode() {

        $params = $this->get_passed_vars("data");
        $em = Model::$em;
        $id = $em->getRepository("StkConsomationEntete")->createQueryBuilder('b')
                ->select("MAX(ABS(b.consCode)) as id")
                ->where("b.consExercice = " . $params["exe"])
                ->getQuery()
                ->getResult();

        $arid = explode("/", $id[0]["id"]);

        $code = "";

        if ($arid[0] !== null || $arid[0] !== 'NULL') {
            $code = (string) ((int) $arid[0] + 1) . "/" . $params["exe"];
        } else {
            $code = "1/" . $params["exe"];
        }

        echo json_encode(array("data" => $code, "etat" => 0));
    }

}

?>

<?php

class transfert extends controler {

    public function index() {

        view::setContext(get_class($this));

        view::addDefaultsCss();

        view::addDefaultJs();

        view::render('tpl');
    }

    public function asyn_get_trans() {

        $params = $this->get_passed_vars("data");
        $em = Model::$em;


        $result = $em->createQueryBuilder();
        $trans = $result->select('a', 'b')
                        ->from('StkTransEntete', 'a')
                        ->leftJoin('a.transEtatcode', 'b')
                        ->where('a.transEtatcode != :transEtatcode')->setParameter('transEtatcode', 93);

        if (!empty($params["transCode"])) {
            $trans = $trans->andWhere('a.transCode= :transCodes')->setParameter('transCodes', $params["transCode"]);
        }

        if (!empty($params["a_transCode"])) {
            $trans = $trans->andWhere('a.transCode= :transCode')->setParameter('transCode', $params["a_transCode"]);
        }

        $trans = $trans->andWhere('a.transExercice= :exe')->setParameter('exe', $params["exe"]);
        $trans = $trans->andWhere('a.transMagliv= :mag or a.transMagdem= :mag')->setParameter('mag', $params["mag"]);

        $transrs = $trans->getQuery()->getScalarResult();

        $transarray = array(
            "head" => array(
                "Code transfert" => "a_transCode",
                "Exercice" => "a_transExercice",
                "Date de demande" => "a_stkTransDatedem",
                "Date de livraison" => "a_stkTransDateliv",
                "Etat" => "b_etatLibelle",
            ),
            "data" => $transrs
        );


        echo json_encode(array("data" => $transarray, "etat" => 0));
    }
   
    public function asyn_chk_art_trans() {

        $params = $this->get_passed_vars("data");
        
        if (!empty($params["transMagliv"])) {
            
            $stk = Metier_Stock::get_stkval(array(
                "exe" => $params["exe"],
                "art" => $params["transArtcode"],
                "mag" => $params["transMagliv"]
            ));
            // $this->dd($stk);

            if ($params["transQte"] <= $stk[0]["finale"] && $params["transQte"] != 0) {
                echo json_encode(array("etat" => "0", "data" => 1, "qte" => $stk[0]["finale"]));
            } else {
                echo json_encode(array("etat" => "0", "data" => 0, "qte" => $stk[0]["finale"]));
            }
            
        } else {
            Message::set_info_msg("Merci de spécifier le magasin expéditeur");
            echo json_encode(array("etat" => "1", "data" => 0));
        }
    }

    public function asyn_get_trans_object($prm = null) {

        if ($prm == null) {
            $params = $this->get_passed_vars("data");
        } else {
            $params = $prm;
        }
        $em = Model::$em;


        $result = $em->createQueryBuilder();
        $trans = $result->select('a', 'b')
                        ->from('StkTransEntete', 'a')
                        ->leftJoin('a.transEtatcode', 'b')
                        ->where('a.transEtatcode != :transEtatcode')->setParameter('transEtatcode', 93);

        if (!empty($params["a_transCode"])) {
            $trans = $trans->andWhere('a.transCode= :transCode')->setParameter('transCode', $params["a_transCode"]);
        }

        $transrs = $trans->getQuery()->getArrayResult();


        $results = $em->createQueryBuilder();
        $transs = $results->select('a', 'c')
                ->from('StkTransDetail', 'a')
                ->leftJoin('a.transArtcode', 'c');


        if (!empty($params["a_transCode"])) {
            $transs = $transs->andWhere('a.transCode= :transCode')->setParameter('transCode', $params["a_transCode"]);
        }

        $datas = $transs->getQuery()->getArrayResult();

        if ($prm == null) {
            echo json_encode(array("data" => $transrs, "datas" => $datas, "etat" => 0));
        } else {
            return array($transrs, $datas);
        }
    }

    public function asyn_ajout_dem_trans() {


        $params = $this->get_passed_vars("data");

        Metier_Sgs::get_exercice($params["transExercice"]);

        $em = Model::$em;
        $trans = new StkTransEntete();

        $em->getConnection()->beginTransaction();
        $trans->setTransCode($params["transCode"]);
        $trans->setTransMagdem($params["transMagdem"]);
        $trans->setTransMagliv($params["transMagliv"]);
        $trans->setTransExercice($params["transExercice"]);
        $trans->setTransObs($params["transObs"]);
        $trans->setStkTransDatedem(new \DateTime($this->dfrm($params["stkTransDatedem"])));
        $trans->setTransEtatcode($em->find("StkEtat", 91));


        $em->persist($trans);

        $em->flush();

        $i = 1;
        foreach ($params["transCodes"] as $itemdet) {

            $transd = new StkTransDetail();
            $transd->setTransCode($trans);
            $transd->setTransSeq($i);
            $transd->setTransExercice($params["transExercice"]);
            $transd->setTransArtcode($em->find("StkArticle", $itemdet["transArtcode"]));
            $transd->setTransQtedem($itemdet["transQtedem"]);

            $em->persist($transd);
            $i++;
        }

        $em->flush();

        $em->getConnection()->commit();

        Message::set_info_msg("Demmande de Transfert envoyé et validé avec succes");
        echo json_encode(array("etat" => 1));
    }

    public function asyn_liv_trans() {

        $params = $this->get_passed_vars("data");

        Metier_Sgs::get_exercice($params["transExercice"]);

        $em = Model::$em;

        $em->getConnection()->beginTransaction();

        $trans = $em->getRepository("StkTransEntete")->find(array(
            "transCode" => $params["transCode"],
        ));

        $trans->setStkTransDateliv(new \DateTime($this->dfrm($params["stkTransDateliv"])));

        $trans->setTransEtatcode($em->find("StkEtat", 92));

       $em->persist($trans);

        $em->flush();


        foreach ($params["transCodes"] as $itemdet) {

            $transd = $em->getRepository("StkTransDetail")->find(array(
                "transCode" => $params["transCode"],
                "transArtcode" => $itemdet["transArtcode"],
            ));

            $transd->setTransQteliv($itemdet["transQteliv"]);
            $em->persist($transd);
        }

        $em->flush();

        $em->getConnection()->commit();

        foreach ($params["transCodes"] as $itemdet) {

            Metier_Stock::get_stkval(array(
                "exe" => $params["transExercice"],
                "art" => $itemdet["transArtcode"],
                "mag" => $params["mag"],
            ));
        }

        Message::set_info_msg("Transfert livré et validé avec succes");

        echo json_encode(array("etat" => 1));
    }

    public function asyn_annulation_trans() {

        $params = $this->get_passed_vars("data");

        $em = Model::$em;

        $transobj = $this->asyn_get_trans_object($params);

        Metier_Sgs::get_exercice($transobj[0][0]["transExercice"]);

        $qb = $em->createQueryBuilder();
        $q = $qb->update('StkTransEntete', 'u')
                ->set('u.transEtatcode', $qb->expr()->literal("93"))
                ->where('u.transCode = ?1')
                ->setParameter(1, $transobj[0][0]["transCode"])
                ->getQuery();
        $p = $q->execute();

        foreach ($transobj[1] as $artitem) {
            Metier_Stock::get_stkval(array(
                "exe" => $transobj[0][0]["transExercice"],
                "art" => $artitem["trans_artCode"],
                "mag" => $transobj[0][0]["transMagdem"],
            ));
        }

        Message::set_info_msg("Le Transfert n° " . $transobj[0][0]["transCode"] . " a été Annuler");

        echo json_encode(array("etat" => 1));
    }

    public function asyn_get_transuniqcode() {

        $params = $this->get_passed_vars("data");
        $em = Model::$em;
        $id = $em->getRepository("StkTransEntete")->createQueryBuilder('b')
                ->select("MAX(ABS(b.transCode)) as id")
                ->where("b.transExercice = " . $params["exe"])
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
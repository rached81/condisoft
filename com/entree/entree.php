<?php

class entree extends controler {

    public function index() {

        view::setContext(get_class($this));

        view::addDefaultsCss();

        view::addDefaultJs();

        view::render('tpl');
    }

    public function asyn_get_entree() {

        $params = $this->get_passed_vars("data");
        $em = Model::$em;

        $result = $em->createQueryBuilder();
        $ent = $result->select('a', 'b', 'c')
                        ->from('StkEntreEntete', 'a')
                        ->leftJoin('a.entEtatcode', 'b')
                        ->leftJoin('a.entFournisseurcode', 'c')
                        ->where('a.entEtatcode = :entEtatcode')->setParameter('entEtatcode', 31);

        if (!empty($params["entCode"])) {
            $ent = $ent->andWhere('a.entCode= :entCodes')->setParameter('entCodes', $params["entCode"]);
        }

        if (!empty($params["a_entCode"])) {
            $ent = $ent->andWhere('a.entCode= :entCode')->setParameter('entCode', $params["a_entCode"]);
        }

        $ent = $ent->andWhere('a.entExercice= :exe')->setParameter('exe', $params["exe"]);
        $ent = $ent->andWhere('a.entMagrecepcode= :mag')->setParameter('mag', $params["mag"]);
        $ent = $ent->orderBy('a.entDatereception', 'DESC');
        $entrs = $ent->getQuery()->getScalarResult();

        $entarray = array(
            "head" => array(
                "Code entre" => "a_entCode",
                "Exercice" => "a_entExercice",
                "N° de Parcelle" => "a_entBcolexercice",
                "Date de reception" => "a_entDatereception",
            ),
            "data" => $entrs
        );


        echo json_encode(array("data" => $entarray, "etat" => 0));
    }

    public function asyn_get_entree_object($prm = null) {
        if ($prm == null) {
            $params = $this->get_passed_vars("data");
        } else {
            $params = $prm;
        }
        $em = Model::$em;


        $result = $em->createQueryBuilder();
        $ent = $result->select('a', 'b', 'c')
                        ->from('StkEntreEntete', 'a')
                        ->leftJoin('a.entEtatcode', 'b')
                        ->leftJoin('a.entFournisseurcode', 'c')
                        ->where('a.entEtatcode = :entEtatcode')->setParameter('entEtatcode', 31);

        if (!empty($params["a_entCode"])) {
            $ent = $ent->andWhere('a.entCode= :entCode')->setParameter('entCode', $params["a_entCode"]);
        }

        $entrs = $ent->getQuery()->getArrayResult();


        $results = $em->createQueryBuilder();
        $ents = $results->select('a', 'c', 'd')
                ->from('StkEntreDetail', 'a')
                ->leftJoin('a.entArtcode', 'c')
                ->leftJoin('a.tvaCode', 'd');


        if (!empty($params["a_entCode"])) {
            $ents = $ents->andWhere('a.entCode= :entCode')->setParameter('entCode', $params["a_entCode"]);
        }

        $datas = $ents->getQuery()->getArrayResult();

        if ($prm == null) {
            echo json_encode(array("data" => $entrs, "datas" => $datas, "etat" => 0));
        } else {
            return array($entrs, $datas);
        }
    }

    public function asyn_ajout_entree() {


        $ent = new StkArticle();
        $params = $this->get_passed_vars("data");
        // $this->dd($params);

        Metier_Sgs::get_exercice($params["entExercice"]);

        $em = Model::$em;
        $ent = new StkEntreEntete();

        $em->getConnection()->beginTransaction();
        $ent->setEntCode($params["entCode"]);
        $ent->setEntMagrecepcode($params["mag"]);
        $ent->setEntExercice($params["entExercice"]);
        $ent->setEntBcolcode($params["entBcolcode"]);
        $ent->setEntBcolexercice($params["entBcolexercice"]);
        $ent->setEntContratcode($params["entContratcode"]);
        $ent->setEntContratexercice($params["entContratexercice"]);

        $ent->setEntDatereception(new \DateTime($this->dfrm($params["entDatereception"])));

        $ent->setEntNumbl($params["entNumbl"]);

        if ($params["entDatebl"]) {
            $ent->setEntDatebl(new \DateTime($this->dfrm($params["entDatebl"])));
        }
  
        $ent->setEntNumfacture($params["entNumfacture"]);

        if (!empty($params["entDatefacture"]))
            $ent->setEntDatefacture(new \DateTime($this->dfrm($params["entDatefacture"])));

        $ent->setEntTypecode($params["entTypecode"]);
        $ent->setEntFournisseurcode($em->find("StkFournisseur", $params["entFournisseurcode"]));
        $ent->setEntNumtransit($params["entNumtransit"]);
        $ent->setEntDevise($params["entDevise"]);
        $ent->setEntCours($params["entCours"]);

        $ent->setEntObservation($params["entObservation"]);
        $ent->setEntEtatcode($em->find("StkEtat", 31));

        $em->persist($ent);


        foreach ($params["entCodes"] as $itemdet) {

            $entd = new StkEntreDetail();
            $entd->setEntCode($ent);
            $entd->setEntExercice($params["entExercice"]);
            $entd->setEntArtcode($em->find("StkArticle", $itemdet["entArtcode"]));
            $entd->setEntCodetrace($itemdet["entCodetrace"]);
            $entd->setEntArttraceetatcode("41");

            $entd->setEntDateperomption(new \DateTime($this->dfrm($itemdet["entDateperomption"])));
            
            $entd->setEntQte($itemdet["entQte"]);
            $entd->setEntQtesurplus($itemdet["entQtesurplus"]);
            $entd->setTvaCode($em->find("StkTva", $itemdet["tvaCode"]));
            $entd->setEntPu($itemdet["entPu"]);
            $entd->setEntPrixtotale($itemdet["entPrixtotale"]);
            $em->persist($entd);
        }

        $art = Metier_Stock::get_art_stk(array(
                    "exe" => $params["entExercice"],
                    "art" => $itemdet["entArtcode"],
                    "mag" => 1,
        ));

        $qteentre = $itemdet["entQte"];
        $prixentre = $itemdet["entPu"];
        $encienpump = $art[0]["b_artDernierprix"];
        $qtestock = $art[0]["a_stkFinale"];
        if ($encienpump == 0) {
            $pump = $prixentre;
        } else {
            $pump = (($prixentre * $qteentre) + ($encienpump * $qtestock)) / ($qteentre + $qtestock);
        }


        $qry = $em->createQuery("UPDATE StkArticle u SET u.artDernierprix = $pump WHERE u.artCode = '" . $itemdet["entArtcode"] . "'");
        $qry->execute();

        $em->flush();

        $em->getConnection()->commit();

 
        foreach ($params["entCodes"] as $itemdet) {

            Metier_Stock::get_stk_mp(array(
                "exe" => $params["entExercice"],
                "art" => $itemdet["entArtcode"],
                "mag" => $params["mag"],
            ));
        }

        Message::set_info_msg("Entrée sauvegarder et valider avec succes");
        echo json_encode(array("etat" => 1));
       
    }

    public function asyn_annulation_entree() {

        $params = $this->get_passed_vars("data");

        $em = Model::$em;

        $entobj = $this->asyn_get_entree_object($params);

        Metier_Sgs::get_exercice($entobj[0][0]["entExercice"]);

        $qb = $em->createQueryBuilder();
        $q = $qb->update('StkEntreEntete', 'u')
                ->set('u.entEtatcode', $qb->expr()->literal("32"))
                ->where('u.entCode = ?1')
                ->setParameter(1, $entobj[0][0]["entCode"])
                ->getQuery();
        $p = $q->execute();


        foreach ($entobj[1] as $artitem) {
            Metier_Stock::get_stk(array(
                "exe" => $entobj[0][0]["entExercice"],
                "art" => $artitem["ent_artCode"],
                "mag" => $entobj[0][0]["entMagrecepcode"],
            ));
        }

        Message::set_info_msg("L'entrée " . $entobj[0][0]["entCode"] . " a été Annuler");

        echo json_encode(array("etat" => 1));
    }

    public function asyn_update_entree() {


        $ent = new StkArticle();
        $params = $this->get_passed_vars("data");

        $em = Model::$em;
        $ent = $em->find("StkEntreEntete", $params["entCode"]);

        $em->getConnection()->beginTransaction();

        Metier_Sgs::get_exercice($params["entExercice"]);

        $ent->setEntExercice($params["entExercice"]);
        $ent->setEntBcolcode($params["entBcolcode"]);
        $ent->setEntBcolexercice($params["entBcolexercice"]);
        $ent->setEntContratcode($params["entContratcode"]);
        $ent->setEntContratexercice($params["entContratexercice"]);
        $ent->setEntMagrecepcode($params["entMagrecepcode"]);
        $ent->setEntDatereception(new \DateTime($this->dfrm($params["entDatereception"])));
        $ent->setEntNumbl($params["entNumbl"]);
        $ent->setEntDatebl(new \DateTime($this->dfrm($params["entDatebl"])));
        $ent->setEntNumfacture($params["entNumfacture"]);
        $ent->setEntDatefacture(new \DateTime($this->dfrm($params["entDatefacture"])));
        $ent->setEntTypecode($params["entTypecode"]);
        $ent->setEntFournisseurcode($em->find("StkFournisseur", $params["entFournisseurcode"]));
        $ent->setEntNumtransit($params["entNumtransit"]);
        $ent->setEntDevise($params["entDevise"]);
        $ent->setEntCours($params["entCours"]);
        $ent->setEntValeurtotaledt($params["entValeurtotaledt"]);
        $ent->setEntObservation($params["entObservation"]);
        $ent->setEntEtatcode($em->find("StkEtat", 31));


        $em->persist($ent);


        foreach ($params["entCodes"] as $itemdet) {

            $entd = $em->find("StkEntDetail", array("entCode" => $ent, "entArtcode" => $em->find("StkArticle", $itemdet["entArtcode"])));
            $entd->setEntCode($ent);
            $entd->setEntExercice($params["entExercice"]);
            $entd->setEntArtcode($em->find("StkArticle", $itemdet["entArtcode"]));
            $entd->setEntCodetrace($itemdet["entCodetrace"]);
            $entd->setEntLotcodetrace($itemdet["entLotcodetrace"]);
            $entd->setEntArttraceetatcode($em->find("StkEtat", 41));
            $entd->setEntDateperomption(new \DateTime($this->dfrm($itemdet["entDateperomption"])));
            $entd->setEntQte($itemdet["entQte"]);
            $entd->setEntQtesurplus($itemdet["entQtesurplus"]);
            $entd->setTvaCode($em->find("StkTva", $itemdet["tvaCode"]));
            $entd->setEntPu($itemdet["entPu"]);
            $entd->setEntPrixtotale($itemdet["entPrixtotale"]);


            $em->persist($entd);
        }

        $em->flush();

        $em->getConnection()->commit();

        Message::set_info_msg("Entrée mise à jour et valider avec succes");
        echo json_encode(array("etat" => 1));
    }

    public function asyn_get_entuniqcode() {

        $params = $this->get_passed_vars("data");
        $em = Model::$em;
        $id = $em->getRepository("StkEntreEntete")->createQueryBuilder('b')
                ->select("MAX(ABS(b.entCode)) as id")
                ->where("b.entExercice = " . $params["exe"])
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

    public function asyn_get_entuniqcodetrace($lenght = 10) {

        if (function_exists("random_bytes")) {
            $bytes = random_bytes(ceil($lenght / 2));
        } elseif (function_exists("openssl_random_pseudo_bytes")) {
            $bytes = openssl_random_pseudo_bytes(ceil($lenght / 2));
        } else {
            throw new Exception("no cryptographically secure random function available");
        }

        $cd = substr(bin2hex($bytes), 0, $lenght);

        echo json_encode(array("data" => $cd, "etat" => 0));
    }

}

?>
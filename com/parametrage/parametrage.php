<?php

class parametrage extends controler {

    public function index() {

        view::setContext(get_class($this));

        view::addDefaultsCss();

        view::addDefaultJs();

        view::render('tpl');
    }

    public function asyn_state_stktable() {

        $params = $this->get_passed_vars("data");

        $exe = $params["exe"];
        $mag = $params["mag"];
        ;

        $em = Model::$em;

        $qry = $em->createQuery("select count(u) as cnt from StkArticle u where u.artCode not in (select IDENTITY(a.artCode) from StkStock a WHERE a.magCode = $mag AND a.exercice = $exe) and u.artEtatcode = 11");
        $rs = $qry->getArrayResult();

        if ($rs[0]["cnt"] == 0) {
            echo json_encode(array("etat" => 0));
        } else {
            Message::set_info_msg("Mise Ã  jour de la table de stock , Merci de patientÃ© ...");
            echo json_encode(array("etat" => 1));
        };
    }

    public function asyn_gen_stktable($prm = null) {

        if ($prm == null) {
            $params = $this->get_passed_vars("data");
        } else {
            $params = $prm;
        }

        $exe = $params["exe"];
        $mag = $params["mag"];

        $em = Model::$em;

        $qry = $em->createQuery("select u from StkArticle u where u.artCode not in (select IDENTITY(a.artCode) from StkStock a WHERE a.magCode = $mag AND a.exercice = $exe) and u.artEtatcode = 11");
        $rs = $qry->getArrayResult();



        foreach ($rs as $row) {

            $stock = new StkStock();

            $stock->setArtCode($em->find("StkArticle", $row["artCode"]));
            $stock->setMagCode($mag);
            $stock->setExercice($exe);
            $stock->setStkInitial(0);
            $stock->setStkEntre(0);
            $stock->setStkSortie(0);
            $stock->setStkFinale(0);
            $em->persist($stock);
            $em->flush();
        }

        if ($prm == null) {
            Message::set_info_msg("Table de stock GÃ©nÃ©rÃ© avec success");
            echo json_encode(array("etat" => 1));
        }
    }

    public function asyn_get_nbalert_stk($prm = null) {

        $params = $this->get_passed_vars("data");
        $exe = $params["exe"];
        $mag = $params["mag"];



        $nbalerts = Metier_Stock::get_stk_nbalert(array(
                    "exe" => $exe,
                    "mag" => $mag,
        ));

        $nbsecurite = Metier_Stock::get_stk_nbsecurite(array(
                    "exe" => $exe,
                    "mag" => $mag,
        ));

        $nbrupture = Metier_Stock::get_stk_nbrupture(array(
                    "exe" => $exe,
                    "mag" => $mag,
        ));

        $nbperim = Metier_Stock::get_stk_nbperim(array(
                    "exe" => $exe,
                    "mag" => $mag,
        ));


        echo json_encode(array("etat" => 0, "data" => array((int) $nbalerts, (int) $nbsecurite, (int) $nbrupture, (int) $nbperim)));
    }

    public function asyn_get_alert_stk() {
        $params = $this->get_passed_vars("data");
        $exe = $params["exe"];
        $mag = $params["mag"];
        $mode = $params["mode"];

        if ($mode == "A") {

            $alerts = Metier_Stock::get_stk_alert(array(
                        "exe" => $exe,
                        "mag" => $mag,
            ));

            $alerttab = array(
                "head" => array(
                    "Magasin" => "a_magCode",
                    "Exercice" => "a_exercice",
                    "Article" => "b_artCode",
                    "Designation" => "b_artDesignation",
                    "Stock actuel" => "a_stkFinale",
                    "Stock de d'alerte" => "a_stkAlert",
                    "Stock de securitÃ©" => "a_stkSecurite",
                ),
                "data" => $alerts
            );
            
        } else if ($mode == "S") {

            $alerts = Metier_Stock::get_stk_securite(array(
                        "exe" => $exe,
                        "mag" => $mag,
            ));

            $alerttab = array(
                "head" => array(
                    "Magasin" => "a_magCode",
                    "Exercice" => "a_exercice",
                    "Article" => "b_artCode",
                    "Designation" => "b_artDesignation",
                    "Stock actuel" => "a_stkFinale",
                    "Stock de d'alerte" => "a_stkAlert",
                    "Stock de securitÃ©" => "a_stkSecurite",
                ),
                "data" => $alerts
            );
            
        } else if ($mode == "R") {

            $alerts = Metier_Stock::get_stk_rupture(array(
                        "exe" => $exe,
                        "mag" => $mag,
            ));

            $alerttab = array(
                "head" => array(
                    "Magasin" => "a_magCode",
                    "Exercice" => "a_exercice",
                    "Article" => "b_artCode",
                    "Designation" => "b_artDesignation",
                    "Stock actuel" => "a_stkFinale",
                    "Stock de d'alerte" => "a_stkAlert",
                    "Stock de securitÃ©" => "a_stkSecurite",
                ),
                "data" => $alerts
            );
            
        } else if ($mode == "P") {

            $alerts = Metier_Stock::get_stk_perim(array(
                        "exe" => $exe,
                        "mag" => $mag,
            ));

             $alerttab = array(
                "head" => array(
                    "Article" => "a_ent_artCode",
                    "Code Entrée" => "a_ent_code",
                    "Exercicee" => "a_entExercice",
                    "Date de péromption" => "a_entDateperomption",
                    "Quantité" => "a_entQte"
                ),
                "data" => $alerts
            );
        }





        echo json_encode(array("etat" => 0, "data" => $alerttab));
    }

    public function asyn_gen_alert_stk($prm = null) {

        if ($prm == null) {
            $params = $this->get_passed_vars("data");
        } else {
            $params = $prm;
        }

        $exe = $params["exe"];
        $mag = $params["mag"];
        $periode = $params["periode"];

        $em = Model::$em;

        $stkquery = $em->createQueryBuilder();
        $stkqr = $stkquery->select("a.artCode,a.artDelaislivraison,a.artStockminimale")
                ->addSelect("(select (sum(e.consQte)/$periode) from  StkConsomationDetail e join e.consCode f  where (f.consEtatcode = 51 or f.consEtatcode = 54) and e.consArtcode = a.artCode and DATE_ADD(f.consDate, $periode, 'day') > CURRENT_DATE() and f.consMagcode = $mag ) as consmoy")
                ->from('StkArticle', 'a')->where('a.artEtatcode = :etatcode')
                ->setParameter('etatcode', 11);

        $stkalert = $stkqr->getQuery()->getScalarResult();

        foreach ($stkalert as $key => $stkalerts) {
            if ($stkalerts["consmoy"] != NULL || $stkalerts["artDelaislivraison"] != NULL) {
                if ($stkalerts["artStockminimale"] != NULL) {
                    $stkalertt = $stkalerts["consmoy"] * $stkalerts["artDelaislivraison"] + $stkalerts["artStockminimale"];
                    $stksecurite = $stkalert = $stkalerts["consmoy"] * $stkalerts["artDelaislivraison"];
                } else {
                    $stkalertt = $stkalerts["consmoy"] * $stkalerts["artDelaislivraison"];
                    $stksecurite = $stkalerts["consmoy"] * $stkalerts["artDelaislivraison"];
                }
            } else {
                if ($stkalerts["artStockminimale"] != NULL) {
                    $stkalertt = $stkalerts["artStockminimale"];
                    $stksecurite = $stkalerts["artStockminimale"];
                } else {
                    $stksecurite = 0;
                    $stkalertt = 0;
                }
            }

            $stocktable = $em->find("StkStock", array(
                "artCode" => $stkalerts["artCode"],
                "magCode" => $mag,
                "exercice" => $exe,
            ));

            $stocktable->setStkAlert($stkalertt);
            $stocktable->setStkSecurite($stksecurite);
            $em->persist($stocktable);
            $em->flush();
        }
        Message::set_info_msg("les seuils de stock d'alerte et de securitÃ© mise Ã  jours avec succes");
        echo json_encode(array("etat" => 1));
    }

}

?>
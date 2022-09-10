<?php

class article extends controler {

    public function index() {

        view::setContext(get_class($this));

        view::addDefaultsCss();

        view::addDefaultJs();

        view::render('tpl');
    }

    public function asyn_get_article() {

        $art = new StkArticle();
        $params = $this->get_passed_vars("data");

        $em = Model::$em;


        $result = $em->createQueryBuilder();
        $art = $result->select('p', 'g', 'h', 'i')
                        ->from('StkArticleFournisseur', 'p')
                        ->leftJoin('p.artCode', 'g')
                        ->leftJoin('g.artEtatcode', 'h')
                        ->leftJoin('g.artCategoriecode', 'i')
                        ->where('p.frsArtetatcode= :frsArtetatcode')->setParameter('frsArtetatcode', 21);

        if (!empty($params["artCode"])) {
            $art = $art->andWhere('g.artCode= :artcod')->setParameter('artcod', $params["artCode"]);
            $art = $art->orWhere('g.artDesignation like :artdesign')->setParameter('artdesign', '%' . $params["artCode"] . '%');
        }

        if (!empty($params["g_artCode"])) {
            $art = $art->andWhere('g.artCode= :artcod')->setParameter('artcod', $params["g_artCode"]);
        }

        $artrs = $art->getQuery()->getScalarResult();
        
        $i = 0;
        foreach ($artrs as $art){
            if($art['g_artClass'] == 1 ){
                $artrs[$i]['g_artClassName'] = "Produit fini";
            }
            if($art['g_artClass'] == 2 ){
                $artrs[$i]['g_artClassName'] = "Matière Premiére";
            }
            if($art['g_artClass'] == 3 ){
                $artrs[$i]['g_artClassName'] = "Consommable";
            }
            $i++;

        }
        $artarray = array(
            "head" => array(
                "Code article" => "g_artCode",
                "Désignation" => "g_artDesignation",
                "Type" => "g_artClassName",
                "Date de création" => "g_artDatecreation",
                "Etat" => "h_etatLibelle",
            ),
            "data" => $artrs,
        );
        
        echo json_encode(array("data" => $artarray, "etat" => 0));
    }

    public function asyn_ajout_cat() {

        $params = $this->get_passed_vars("data");
        $catart = $params["catart"];
        $em = Model::$em;
        $artcat = new StkCategorieArticle();
        $artcat->setCatartDesignation($catart);
        $em->persist($artcat);
        $em->flush();

        Message::set_info_msg("Catégorie ajouter avec succes");
        echo json_encode(array("etat" => 1));
    }

    public function asyn_supp_art() {

        $params = $this->get_passed_vars("data");

        $artcod = $params["g_artCode"];

        $em = Model::$em;



        $art_frss = $em->getRepository("StkArticleFournisseur")->findBy(array(
            "artCode" => $artcod,
        ));

        if (!empty($art_frss)) {
            foreach ($art_frss as $art_frs) {
                $em->remove($art_frs);
            }
        }


        $stocks = $em->getRepository("StkStock")->findBy(array(
            "artCode" => $artcod,
        ));

        if (!empty($stocks)) {

            foreach ($stocks as $stock) {
                $em->remove($stock);
            }
        }

        $invts = $em->getRepository("StkInventaire")->findBy(array(
            "artCode" => $artcod,
        ));

        if (!empty($invts)) {
            foreach ($invts as $invt) {
                $em->remove($invt);
            }
        }

        $art = $em->find("StkArticle", $artcod);

        $em->remove($art);

        $em->flush();

        Message::set_info_msg("Article supprimer avec succes");
        echo json_encode(array("etat" => 1));
    }

    public function asyn_supp_cat() {
        $params = $this->get_passed_vars("data");
        $catart = $params["catart"];
        $em = Model::$em;
        $artcat = $em->find("StkCategorieArticle", $catart);
        $em->remove($artcat);
        $em->flush();
        Message::set_info_msg("Catégorie supprimer avec succes");
        echo json_encode(array("etat" => 1));
    }

    public function asyn_ajout_article() {


        $art = new StkArticle();
        $params = $_POST;
        $message = false;

        if (isset($_FILES['file'])) {
            switch ($_FILES['file']['error']) {
                case UPLOAD_ERR_OK:
                    $message = false;
                    break;
                case UPLOAD_ERR_INI_SIZE:
                case UPLOAD_ERR_FORM_SIZE:
                    $message .= 'Fichier tros grand';
                    break;
                case UPLOAD_ERR_PARTIAL:
                    $message .= "l'upload a été intérrompu";
                    break;
                case UPLOAD_ERR_NO_FILE:
                    $message .= 'fichier de tail null';
                    break;
                default:
                    $message .= 'Erreur interne' . $_FILES['file']['error'];
                    break;
            }

            if ($message) {
                Exceptions::setLastException($message);
                echo json_encode(array("etat" => 2));
                die();
            }



            $art = new StkArticle($params["artCode"]);

            $uploaddir = PATH_ROOT . DS . 'imgs';

            $name = uniqid() . ".jpg";

            $uploadfile = $uploaddir . DS . $name;
            $art->setArtImage($name);

            try {
                move_uploaded_file($_FILES["file"]['tmp_name'], $uploadfile);
            } catch (Exception $e) {
                die(var_dump($e));
            }
        }

        $em = Model::$em;

        $em->getConnection()->beginTransaction();

        $art->setArtCode($params["artCode"]);
        $art->setArtDesignation($params["artDesignation"]);

        $art->setArtDatecreation(new \DateTime($this->dfrm($params["artDatecreation"])));
        $art->setArtDelaisLivraison($params["artDelaislivraison"]);
        $art->setArtDescription($params["artDescription"]);
        $art->setArtStockminimale($params["artStockMinimale"]);

        $art->setArtPrix($params["artPrix"]);
        $art->setArtTva($params["artTva"]);
        $art->setArtClass($params["artClass"]);
        $art->setArtUnite($params["artUnite"]);

        $art->setArtCategoriecode($em->find("StkCategorieArticle", $params["artCategoriecode"]));
        $art->setArtEtatcode($em->find("StkEtat", $params["artEtatCode"]));
        $art->setArtDernierprix(0);

        $em->persist($art);

        $qry = $em->createQuery("UPDATE StkArticleFournisseur u SET u.frsArtetatcode = 22 WHERE u.artCode = '" . $params["artCode"] . "'");
        $qry->execute();

        $artfrs = new StkArticleFournisseur();
        $artfrs->setArtCode($art);
        $artfrs->setFrsCode($em->find("StkFournisseur", $params["frsCode"]));
        $artfrs->setFrsArtref($params["frsArtref"]);
        $artfrs->setFrsArtetatcode($em->find("StkEtat", 21));

        $em->persist($artfrs);

        $mag = $this->_get_mag();

        foreach ($mag as $mg) {

            $stock = new StkStock();
            $stock->setArtCode($art);
            $stock->setMagCode($mg["MAGCOD"]);
            $stock->setExercice($params["exe"]);
            $stock->setStkInitial(0);
            $stock->setStkEntre(0);
            $stock->setStkSortie(0);
            $stock->setStkFinale(0);
            $em->persist($stock);
        }

        $em->flush();

        $em->getConnection()->commit();

        Message::set_info_msg("Article ajouter avec succes");
        echo json_encode(array("etat" => 1));
    }

    private function _get_mag() {

        $db = Model::getDb();

        $mag = $db->select()->from("mag")->query()->fetchAll();

        return $mag;
    }

    public function asyn_update_article() {


        $params = $_POST;

        $em = Model::$em;

        $em = Model::$em;

        $art = new StkArticle($params["artCode"]);

        $em->getConnection()->beginTransaction();

        $art = $em->find("StkArticle", $params["artCode"]);

        if (isset($_FILES['file'])) {

            $message = false;
            switch ($_FILES['file']['error']) {
                case UPLOAD_ERR_OK:
                    $message = false;
                    break;
                case UPLOAD_ERR_INI_SIZE:
                case UPLOAD_ERR_FORM_SIZE:
                    $message .= 'Fichier tros grand';
                    break;
                case UPLOAD_ERR_PARTIAL:
                    $message .= "l'upload a été intérrompu";
                    break;
                case UPLOAD_ERR_NO_FILE:
                    $message .= 'fichier de tail null';
                    break;
                default:
                    $message .= 'Erreur interne' . $_FILES['file']['error'];
                    break;
            }

            if ($message) {
                Exceptions::setLastException($message);
                echo json_encode(array("etat" => 2));
                die();
            }



            $uploaddir = PATH_ROOT . DS . 'imgs';

            $name = uniqid() . ".jpg";

            $uploadfile = $uploaddir . DS . $name;

            try {
                move_uploaded_file($_FILES["file"]['tmp_name'], $uploadfile);
                $art->setArtImage($name);
            } catch (Exception $e) {
                die(var_dump($e));
            }
        }



        $art->setArtDesignation($params["artDesignation"]);

        //$art->setArtDatecreation(new DateTime($params["artDatecreation"]));
        $art->setArtDelaisLivraison($params["artDelaislivraison"]);
        $art->setArtDescription($params["artDescription"]);
        $art->setArtStockminimale($params["artStockMinimale"]);
        $art->setArtPrix($params["artPrix"]);
        $art->setArtTva($params["artTva"]);
        $art->setArtClass($params["artClass"]);
        $art->setArtCategoriecode($em->find("StkCategorieArticle", $params["artCategoriecode"]));
        $art->setArtEtatcode($em->find("StkEtat", $params["artEtatCode"]));
        $art->setArtUnite($params["artUnite"]);

        $em->persist($art);
        $em->flush();

        if (empty($em->find("StkArticleFournisseur", array("frsCode" => $params["frsCode"], "artCode" => $params["artCode"])))) {

            $qry = $em->createQuery("UPDATE StkArticleFournisseur u SET u.frsArtetatcode = 22 WHERE u.artCode = '" . $params["artCode"] . "'");
            $qry->execute();

            $artfrs = new StkArticleFournisseur();
            $artfrs->setArtCode($art);
            $artfrs->setFrsCode($em->find("StkFournisseur", $params["frsCode"]));
            $artfrs->setFrsArtref($params["frsArtref"]);
            $artfrs->setFrsArtetatcode($em->find("StkEtat", 21));

            $em->persist($artfrs);
            $em->flush();
        } else {

            $artfrs = $em->find("StkArticleFournisseur", array("frsCode" => $params["frsCode"], "artCode" => $params["artCode"]));
            $artfrs->setFrsArtref($params["frsArtref"]);
            $em->persist($artfrs);
            $em->flush();
        };

        $em->getConnection()->commit();

        Message::set_info_msg("Article mise à jour avec succes");
        echo json_encode(array("etat" => 1));
    }

    public function asyn_stock_article() {

        $params = $this->get_passed_vars("data");


        if ($params["clas"] == 1) {

            $mvt = Metier_Stock::get_mvt_article_mf(array(
                        "exe" => $params["exe"],
                        "art" => $params["art"],
                        "mag" => $params["mag"]
            ));

            $stk = Metier_Stock::get_stk_mf(array(
                        "exe" => $params["exe"],
                        "art" => $params["art"],
                        "mag" => $params["mag"]
            ));
        }

        if ($params["clas"] == 2 || $params["clas"] == 3) {

            $mvt = Metier_Stock::get_mvt_article_mp(array(
                        "exe" => $params["exe"],
                        "art" => $params["art"],
                        "mag" => $params["mag"]
            ));


            $stk = Metier_Stock::get_stk_mp(array(
                        "exe" => $params["exe"],
                        "art" => $params["art"],
                        "mag" => $params["mag"]
            ));
        }

        $mvts = array(
            "head" => array(
                "Nature mvt." => "nat",
                "Code mvt." => "code",
                "Date mvt." => "date",
                "Qte mvt." => "qte",
                "Stock" => "stock"
            ),
            "data" => $mvt
        );

        $stks = array(
            "head" => array(
                "Code article" => "artCode",
                "Initial" => "init",
                "Entrée" => "ent",
                "Sortie" => "sort",
                "Redressement" => "rds",
                "Finale" => "finale"
            ),
            "data" => $stk
        );

        echo json_encode(array("etat" => 0, "data" => array($mvts, $stks)));
    }

    public function asyn_delete_article() {
        
    }

    public function asyn_get_artuniqcode($lenght = 8) {

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
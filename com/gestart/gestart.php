<?php

class gestart extends controler {

    public function index() {

        view::setContext(get_class($this));

        view::addDefaultsCss();

        view::addDefaultJs();

        view::render('tpl');
    }

    public function async_search_arts() {

        $params = $this->get_angular_vars();

        try {

            $db = Model::getDb();
              $db->query("SET NAMES 'utf8'");
            $listrq = $db->select()->from("article", array("*"))->order("ARTDCR")
                    ->where("ARTCOD = ?", $params->art)
                    ->orwhere("ARTLIB LIKE ?", "%" . $params->art . "%");

            $list = $listrq->query()->fetchAll();

            echo json_encode(array("etat" => 0, "data" => $list));
        } catch (Exception $ex) {
            Exceptions::setLastException($ex->getMessage());
            echo json_encode(array("etat" => 2));
        }
    }

    public function async_get_art() {
        
    }

    public function async_supp_art() {
        $params = $this->get_angular_vars();

        try {
            $arts = (array) $params;

            $db = Model::getDb();

            if ($db->delete("article", "ARTCOD = " . $arts["ARTCOD"])) {
                Message::get_info_msg("Article ajouter avec success");
                echo json_encode(array("etat" => 1));
            } else {
                Exceptions::setLastException("erreur");
                echo json_encode(array("etat" => 2));
            }
        } catch (Exception $ex) {

            Exceptions::setLastException($ex->getMessage());
            echo json_encode(array("etat" => 2));
        }
    }

    public function async_ajout_art() {

        $params = $this->get_angular_vars();

        try {
            $arts = (array) $params;

            $arts["ARTDCR"] = new Zend_Db_Expr("NOW()");

            $db = Model::getDb();
            if ($db->insert("article", $arts)) {
                Message::get_info_msg("Article ajouter avec success");
                echo json_encode(array("etat" => 1));
            } else {
                Exceptions::setLastException("erreur");
                echo json_encode(array("etat" => 2));
            }
        } catch (Exception $ex) {

            Exceptions::setLastException($ex->getMessage());
            echo json_encode(array("etat" => 2));
        }
    }

    public function async_update_art() {
        
        $params = $this->get_angular_vars();

        try {
            
            $arts = (array) $params;

            $db = Model::getDb();
            
            if ($db->update("article", $arts,"ARTCOD = ".$arts["ARTCOD"])) {
                
                Message::get_info_msg("Article ajouter avec success");
                
                echo json_encode(array("etat" => 1));
                
            } else {
                Exceptions::setLastException("erreur");
                echo json_encode(array("etat" => 2));
            }
        } catch (Exception $ex) {

            Exceptions::setLastException($ex->getMessage());
            echo json_encode(array("etat" => 2));
        }
    }

}
?>
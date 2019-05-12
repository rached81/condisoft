<?php

class majbrd extends controler {

    public function index() {

        view::setContext(get_class($this));

        view::addDefaultsCss();

        view::addDefaultJs();

        view::render('tpl');
    }

    public function asyn_get_brd_page() {
        $params = $this->get_angular_vars();

        try {

            $db = Model::getDb();
            $db->query("SET NAMES 'utf8'");
            $listrq = $db->select()->from(array("A" => "invart"), array("*"))->order("A.INVART")
                    ->join(array("B" => "article"), "B.ARTCOD = A.INVART", array("ARTLIB"))
                    ->where("A.INVMAG = ?", $params->mag)
                    ->where("A.INVEXE = ?", $params->exe)
                    ->where("A.INVPAGE = ?", $params->page);


            $list = $listrq->query()->fetchAll();

            echo json_encode(array("etat" => 0, "data" => $list));
        } catch (Exception $ex) {
            Exceptions::setLastException($ex->getMessage());
            echo json_encode(array("etat" => 2));
        }
    }

    public function asyn_save_brd_page() {
        $params = $this->get_angular_vars();

        try {

            $db = Model::getDb();
            $db->query("SET NAMES 'utf8'");

            $env = $params->env;

            $data = $params->data;
            
            foreach ($data as $item){
                
                $dat = (array)$item;
                
                unset($dat["ARTLIB"]);
                
                if(empty($dat["INVQTE"])){
                    $dat["INVQTE"] = 0;
                }
                
                $db->update("invart",$dat, "INVPAGE = ".$params->env->page. " and INVMAG = ".$params->env->mag. " and INVEXE = ".$params->env->exe. " and INVART =".$dat["INVART"]);
            }

            echo json_encode(array("etat" => 0));
            
        } catch (Exception $ex) {
            Exceptions::setLastException($ex->getMessage());
            echo json_encode(array("etat" => 2,"err"=>$ex->getMessage()));
        }
    }

}

?>
<?php

class bord extends controler {

    public function index() {

        view::setContext(get_class($this));

        view::addDefaultsCss();

        view::addDefaultJs();

        view::render('tpl');
        
    }

    public function async_generer_brd() {

        $params = $this->get_angular_vars();

        try {

            $db = Model::getDb();
            
            $db->query("SET NAMES 'utf8'");

            $brd = $db->select()->from(array("A" => "invart"), array("*"))->where("A.INVMAG = ?", $params->mag)
                            ->join(array("B" => "article"), "B.ARTCOD = A.INVART", array("ARTLIB"))
                            ->where("A.INVEXE = ?", $params->exe)->order("A.INVPAGE")->query()->fetchAll();

            if (empty($brd)) {

                $db->query("SET NAMES 'utf8'");

                $listrq = $db->select()->from("article", array("*"))->order("ARTCOD");

                $list = $listrq->query()->fetchAll();

                $agerange = 15;

                $cont = 1;

                $contpage = 1;

                foreach ($list as $li) {

                    $data = array(
                        "INVMAG" => $params->mag,
                        "INVART" => $li["ARTCOD"],
                        "INVEXE" => $params->exe,
                        "INVPAGE" => $contpage
                    );

                    $db->insert("invart", $data);

                    if ($cont >= $agerange) {
                        $contpage++;
                        $cont = 0;
                    } else {
                        $cont++;
                    }
                }
                

                $brd = $db->select()->from(array("A" => "invart"), array("*"))->where("A.INVMAG = ?", $params->mag)
                                ->join(array("B" => "article"), "B.ARTCOD = A.INVART", array("ARTLIB"))
                                ->where("A.INVEXE = ?", $params->exe)->order("A.INVPAGE")->query()->fetchAll();
            }

            $bord = array();

            $pgs = array();

            $page = 1;

            foreach ($brd as $pg) {
                if ($pg["INVPAGE"] != $page) {
                    array_push($bord, $pgs);
                    $page = $pg["INVPAGE"];
                    $pgs = array();
                    array_push($pgs, $pg);
                } else {
                    array_push($pgs, $pg);
                }
            }

            if (!empty($pgs)) {
                array_push($bord, $pgs);
            }

            echo json_encode(array("etat" => 0, "data" => $bord));
            
        } catch (Exception $ex) {
            Exceptions::setLastException($ex->getMessage());
            echo json_encode(array("etat" => 2));
        }
    }

}

?>
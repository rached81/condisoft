<?php

class Metier_Cont {

    private static $_instance = null;

    private function __construct() {
        //definire la date d'exercice actuel
    }

    public static function getInstance() {
        if (is_null(self::$_instance)) {
            self::$_instance = new Metier_Cont();
        }
        return self::$_instance;
    }

    public static function get_cont($code, $exe, $uniform = false) {


        $db = Model::getDb2();

        $inv = $db->select()->from("CONTE")->where("CONTCOD = ?", $code)->where("CONTEXE = ?", $exe);
        $inv = $inv->join("ETATBON", "ETATBON.ETBONCOD = CONTE.ETBONCOD", "ETBONLIB");
        $cont = $inv->query()->fetchAll();

        foreach ($cont as $key => $item) {
            $cont[$key]["ETBONLIB"] = utf8_encode($item["ETBONLIB"]);
        }



        $invd = $db->select()->from("CONTD")
                        ->join("ART", "ART.ARTCOD = CONTD.ARTCOD", "ART.ARTLIB")
                        ->join("UDIST", "UDIST.UDCOD = CONTD.ARTUD", "UDLIB")
                        ->where("CONTCOD = ?", $code)->where("CONTEXE = ?", $exe)->order("ARTSEQ");
        $contd = $invd->query()->fetchAll();


        if (!$uniform) {
            return array(
                "entete" => $cont,
                "detail" => $contd,
            );
        } else {

            $det = array();

            foreach ($btid as $key => $item) {

                $detitem = array(
                    "artcod" => $item["ARTCOD"],
                    "design" => $item["ARTLIB"],
                    "qte" => $item["QTEMIN"],
                    "qtem" => $item["QTEMAX"],
                );
                array_push($det, $detitem);
            }

            return array(
                "entete" => array(
                    "code" => $bti[0]["CONTCOD"],
                    "date" => $bti[0]["CONTDAT"],
                    "exe" => $exe,
                ),
                "detail" => $det
            );
        }
    }
    
    public static function get_cont_etr($code, $exe, $uniform = false) {


        $db = Model::getDb2();

        $inv = $db->select()->from(array("A"=>"CONTETRE"))->where("A.CONTCOD = ?", $code)->where("A.CONTEXE = ?", $exe);
        $inv = $inv->join(array("B"=>"ETATBON"), "B.ETBONCOD = A.ETBONCOD", "ETBONLIB");
     
        $cont = $inv->query()->fetchAll();

        foreach ($cont as $key => $item) {
            $cont[$key]["ETBONLIB"] = utf8_encode($item["ETBONLIB"]);
        }



        $invd = $db->select()->from("CONTETRD")
                        ->join("ART", "ART.ARTCOD = CONTETRD.ARTCOD", "ART.ARTLIB")
                        ->join("UDIST", "UDIST.UDCOD = CONTETRD.ARTUD", "UDLIB")
                        ->where("CONTCOD = ?", $code)->where("CONTEXE = ?", $exe)->order("ARTSEQ");
        $contd = $invd->query()->fetchAll();


        if (!$uniform) {
            return array(
                "entete" => $cont,
                "detail" => $contd,
            );
        } else {

            $det = array();

            foreach ($btid as $key => $item) {

                $detitem = array(
                    "artcod" => $item["ARTCOD"],
                    "design" => $item["ARTLIB"],
                    "qte" => $item["QTEMIN"],
                    "qtem" => $item["QTEMAX"],
                );
                array_push($det, $detitem);
            }

            return array(
                "entete" => array(
                    "code" => $bti[0]["CONTCOD"],
                    "date" => $bti[0]["CONTDAT"],
                    "exe" => $exe,
                ),
                "detail" => $det
            );
        }
    }

}

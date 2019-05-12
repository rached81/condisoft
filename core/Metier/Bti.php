<?php

class Metier_Bti {

    private static $_instance = null;
    private static $bticod = null;
    private static $btiexe = null;
    private static $btidate = null;
    private static $btidateliv = null;
    private static $btidaterec = null;
    private static $btimag = null;
    private static $btimagdem = null;
    private static $btimagdes = null;
    private static $btidetails = null;
    private static $btietat = null;
    private static $btierr = null;
    private static $btioper = null;

    private function __construct() {
        //definire la date d'exercice actuel
    }

    public static function getInstance() {
        if (is_null(self::$_instance)) {
            self::$_instance = new Metier_Bti();
        }
        return self::$_instance;
    }

    public static function set_btioper($btioper) {
        self::$btioper = $btioper;
    }

    public static function set_bti($bticod, $btiexe) {
        self::$bticod = $bticod;
        self::$btiexe = $btiexe;
    }

    public static function set_etatbti($btietat) {
        self::$btietat = $btietat;
    }

    public static function set_magdem($btimagdem) {
        self::$btimagdem = $btimagdem;
    }

    public static function set_magdes($btimagdes) {
        self::$btimagdes = $btimagdes;
    }

    public static function set_mag($btimag) {
        self::$btimag = $btimag;
    }

    public static function set_btidate($btidate) {
        self::$btidate = $btidate;
    }

    public static function set_btidateliv($btidateliv) {
        self::$btidateliv = $btidateliv;
    }

    public static function set_btidaterec($btidaterec) {
        self::$btidaterec = $btidaterec;
    }

    public static function set_btidetail($btidetails) {
        self::$btidetails = $btidetails;
    }

    public static function get_next_code($exe) {

        $db = Model::getDb2();

        try {

            $rs = $db->select()->from(array("A" => "BTIE"), array(new Zend_Db_Expr("MAX(A.BTICOD) as MAX")))->where("A.BTIEXE = ?", $exe)->query()->fetchAll();

            if ($rs[0]["MAX"] != null) {
                return (int) $rs[0]["MAX"] + 1;
            } else {
                return 1;
            }
        } catch (Exception $e) {
            Exceptions::setLastException($e->getMessage());
            echo json_encode(array("etat" => "2"));
            die();
        }
    }

    public static function search_bti_ent() {

        $db = Model::getDb2();

        try {


            $rsq = $db->select()->from(array("G" => "BTIE"))->joinLeft(array("H" => "ETATBON"), "G.ETBONCOD = H.ETBONCOD");

            if (!empty(self::$bticod)) {
                $rsq = $rsq->where("G.BTICOD = ?", self::$bticod);
            }

            if (!empty(self::$btietat)) {
                $rsq = $rsq->where("G.ETBONCOD = ?", self::$btietat);
            }

            if (!empty(self::$btiexe)) {
                $rsq = $rsq->where("G.BTIEXE = ?", self::$btiexe);
            }

            if (!empty(self::$btimag)) {
                $rsq = $rsq->where("(G.MAGDEM = " . self::$btimag . " OR G.MAGDES = " . self::$btimag . ")");
            }

            if (!empty(self::$magdem)) {
                $rsq = $rsq->where("G.MAGDEM = ?", self::$btimagdem);
            }

            if (!empty(self::$magdes)) {
                $rsq = $rsq->Where("G.MAGDES = ?", self::$btimagdes);
            }

            if (!empty(self::$btidate)) {
                $rsq = $rsq->where("G.BTIDATE = ?", self::$btidate);
            }


            $rs = $rsq->query()->fetchAll();

            array_walk(
                    $rs, function (&$entry) {
                array_walk(
                        $entry, function (&$entrys) {

                    $entrys = iconv('Windows-1250', 'UTF-8', $entrys);
                }
                );
            }
            );

            return $rs;
        } catch (Exception $e) {
            die("entete");
            Exceptions::setLastException($e->getMessage());
            echo json_encode(array("etat" => "2"));
            die();
        }
    }

    public static function get_new_Bti($uniform = false) {

        $db = Model::getDb2();

        $btireq = $db->select()->from(array("A" => "BTIE"))->where("A.BTICOD = ?", self::$bticod)->where("A.BTIEXE = ?", self::$btiexe)
                ->join(array("B" => "ETATBON"), "B.ETBONCOD = A.ETBONCOD", "ETBONLIB");

        $bti = $btireq->query()->fetchAll();

        foreach ($bti as $key => $item) {
            $bti[$key]["ETBONLIB"] = utf8_encode($item["ETBONLIB"]);
        }

        $btidreq = $db->select()->from(array("A" => "BTID"))
                        ->joinLeft(array("B" => "ART"), "A.ARTCOD = B.ARTCOD", "B.ARTLIB")
                        ->joinLeft(array("C" => "BTIE"), "A.BTICOD = C.BTICOD and A.BTIEXE = C.BTIEXE", array("MAGDES", "MAGDEM"))
                        ->joinLeft(array("D" => "STK"), "C.MAGDEM = D.MAGCOD and C.BTIEXE = D.STKEXE and A.ARTCOD = D.ARTCOD", array(new Zend_Db_Expr("D.STKACT AS DEMACT")))
                        ->joinLeft(array("E" => "STK"), "C.MAGDES = D.MAGCOD and C.BTIEXE = D.STKEXE and A.ARTCOD = D.ARTCOD", array(new Zend_Db_Expr("D.STKACT AS DESACT")))
                        ->where("A.BTICOD = ?", self::$bticod)->where("A.BTIEXE = ?", self::$btiexe);

        $btid = $btidreq->query()->fetchAll();


        return array(
            "ent" => $bti,
            "det" => $btid,
        );
    }

    public static function update() {


        $db = Model::getDb2();
        if (self::$btioper == "C") {

            $ent = array(
                "BTICOD" => self::$bticod,
                "BTIEXE" => self::$btiexe,
                "BTIDATE" => self::$btidate,
                "MAGDEM" => self::$btimagdem,
                "MAGDES" => self::$btimagdes,
            );

            try {

                $db->update("BTIE", $ent, "BTICOD = " . self::$bticod . " AND BTIEXE = " . self::$btiexe);
            } catch (Exception $e) {

                Exceptions::setLastException("Erreur lor de l'enregistrement du BTI entete : <br>" . $e->getMessage());
                echo json_encode(array("etat" => "2"));
                die();
            }

            try {

                foreach (self::$btidetails as $det) {

                    if (empty($det["ARTNOTE"]))
                        $det["ARTNOTE"] = "-";
                    $dets = array(
                        "BTICOD" => self::$bticod,
                        "BTIEXE" => self::$btiexe,
                        "ARTNOTE" => $det["ARTNOTE"]
                    );

                    if (self::$btietat == 1) {
                        $dets["BTIQDEM"] = $det["BTIQDEM"];
                    }

                    if (self::$btietat == 13) {
                        $dets["BTIQDEM"] = $det["BTIQDEM"];
                        $dets["BTIQLIV"] = $det["BTIQLIV"];
                    }

                    if (self::$btietat == 14) {
                        $dets["BTIQDEM"] = $det["BTIQDEM"];
                        $dets["BTIQLIV"] = $det["BTIQLIV"];
                        $dets["BTIQREC"] = $det["BTIQREC"];
                    }

                    $db->update("BTID", $dets, "BTICOD = " . self::$bticod . " AND BTIEXE = " . self::$btiexe . " AND ARTCOD = " . $det["ARTCOD"]);
                }
            } catch (Exception $e) {
                Exceptions::setLastException("Erreur lor de l'enregistrement du BTI detail: <br>" . $e->getMessage());
                echo json_encode(array("etat" => "2"));
                die();
            }
        } else if (self::$btioper == "L") {

            $ent = array(
                "BTIDLIV" => self::$btidateliv,
                "ETBONCOD" => 13
            );

            try {
                $db->update("BTIE", $ent, "BTICOD = " . self::$bticod . " AND BTIEXE = " . self::$btiexe);
            } catch (Exception $e) {
                Exceptions::setLastException("Erreur lor de l'enregistrement du BTI entete : <br>" . $e->getMessage());
                echo json_encode(array("etat" => "2"));
                die();
            }

            try {



                foreach (self::$btidetails as $det) {

                    $dets = array(
                        "BTICOD" => self::$bticod,
                        "BTIEXE" => self::$btiexe,
                        "BTIQLIV" => $det["BTIQLIV"],
                        "ETBONCOD" => 13
                    );

                    $db->update("BTID", $dets, "BTICOD = " . self::$bticod . " AND BTIEXE = " . self::$btiexe . " AND ARTCOD = " . $det["ARTCOD"]);
                }
            } catch (Exception $e) {
                Exceptions::setLastException("Erreur lor de l'operation de livraison du BTI detail: <br>" . $e->getMessage());
                echo json_encode(array("etat" => "2"));
                die();
            }
        } else if (self::$btioper == "R") {
            $ent = array(
                "BTIDREC" => self::$btidaterec,
                "ETBONCOD" => 14
            );

            try {
                $db->update("BTIE", $ent, "BTICOD = " . self::$bticod . " AND BTIEXE = " . self::$btiexe);
            } catch (Exception $e) {
                Exceptions::setLastException("Erreur lor de l'enregistrement du BTI entete : <br>" . $e->getMessage());
                echo json_encode(array("etat" => "2"));
                die();
            }

            try {

                foreach (self::$btidetails as $det) {

                    $dets = array(
                        "BTICOD" => self::$bticod,
                        "BTIEXE" => self::$btiexe,
                        "BTIQREC" => $det["BTIQREC"],
                        "ETBONCOD" => 14
                    );

                    $db->update("BTID", $dets, "BTICOD = " . self::$bticod . " AND BTIEXE = " . self::$btiexe . " AND ARTCOD = " . $det["ARTCOD"]);
                }
            } catch (Exception $e) {
                Exceptions::setLastException("Erreur lor de l'operation de livraison du BTI detail: <br>" . $e->getMessage());
                echo json_encode(array("etat" => "2"));
                die();
            }
        }
    }

    public static function insert() {


        $db = Model::getDb2();

        $ent = array(
            "BTICOD" => self::$bticod,
            "BTIEXE" => self::$btiexe,
            "BTIDATE" => self::$btidate,
            "MAGDEM" => self::$btimagdem,
            "MAGDES" => self::$btimagdes,
            "ETBONCOD" => 1
        );


        try {

            $db->insert("BTIE", $ent);
        } catch (Exception $e) {

            Exceptions::setLastException("Erreur lor de l'enregistrement du BTI entete : <br>" . $e->getMessage());
            echo json_encode(array("etat" => "2"));
            die();
        }


        try {

            $seq = 1;

            foreach (self::$btidetails as $det) {
                if (empty($det["ARTNOTE"]))
                    $det["ARTNOTE"] = "-";
                $dets = array(
                    "BTICOD" => self::$bticod,
                    "BTIEXE" => self::$btiexe,
                    "ARTCOD" => $det["ARTCOD"],
                    "BTISEQ" => $seq,
                    "BTIQDEM" => $det["BTIQDEM"],
                    "ETBONCOD" => 1,
                    "ARTNOTE" => $det["ARTNOTE"]
                );

                $db->insert("BTID", $dets);

                $seq++;
            }
        } catch (Exception $e) {
            Exceptions::setLastException("Erreur lor de l'enregistrement du BTI detail: <br>" . $e->getMessage());
            echo json_encode(array("etat" => "2"));
            die();
        }
    }

    public static function get_Bti($types, $code, $exe, $mag, $uniform = false) {

        if ($types == 'E') {
            $magres = "MAGDEM";
        } else if ($types == 'S') {
            $magres = "MAGDES";
        }

        $db = Model::getDb2();

        $inv = $db->select()->from("BTIE")->where("BTICOD = ?", $code)->where("BTIEXE = ?", $exe)->where("$magres = ?", $mag);
        $inv = $inv->join("ETATBON", "ETATBON.ETBONCOD = BTIE.ETBONCOD", "ETBONLIB");
        $bti = $inv->query()->fetchAll();

        foreach ($bti as $key => $item) {
            $bti[$key]["ETBONLIB"] = utf8_encode($item["ETBONLIB"]);
        }



        $invd = $db->select()->from("BTID")
                        ->join("ART", "ART.ARTCOD = BTID.ARTCOD", "ART.ARTLIB")
                        ->where("BTICOD = ?", $code)->where("BTIEXE = ?", $exe);
        $btid = $invd->query()->fetchAll();


        if (!$uniform) {
            return array(
                "entete" => $bti,
                "detail" => $btid,
            );
        } else {

            $det = array();

            foreach ($btid as $key => $item) {

                $invt = $db->query("select (ARTAAI || case when ARTMMI < 10 THEN ( '' || '0' || ARTMMI) ELSE '' || ARTMMI END || case when ARTJJI < 10 THEN ( '' || '0' || ARTJJI) ELSE '' || ARTJJI END) as DINVT  from invart$exe where artart = " . $item["ARTCOD"] . " and artmag = " . $mag)->fetchAll();

                $detitem = array(
                    "artcod" => $item["ARTCOD"],
                    "design" => $item["ARTLIB"],
                    "qte" => $item["BTIQREC"],
                    "dinv" => $invt[0]["DINVT"],
                );
                array_push($det, $detitem);
            }

            return array(
                "entete" => array(
                    "code" => $bti[0]["BTICOD"],
                    "date" => $bti[0]["BTIDATE"],
                    "mag" => $mag,
                    "exe" => $exe,
                ),
                "detail" => $det
            );
        }
    }

    public static function geterr() {
        return self::$btierr;
    }

}

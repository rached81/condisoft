<?php

class Metier_Bcn {

    private static $_instance = null;

    private function __construct() {
        //definire la date d'exercice actuel
    }

    public static function getInstance() {
        if (is_null(self::$_instance)) {
            self::$_instance = new Metier_Bcn();
        }
        return self::$_instance;
    }

    public static function get_bcn($types, $code, $exe, $mag, $uniform = false) {

        if ($types == 'M') {
            $table = "BCNE";
            $tabled = "BCND";
        } else if ($types == 'B') {
            $table = "BCNEB";
            $tabled = "BCNDB";
        } else if ($types == 'H') {
            $table = "BCNHABE";
            $tabled = "BCNHABD";
        }

        $db = Model::getDb2();

        $inv = $db->select()->from($table)->where("BCNCOD = ?", $code)->where("BCNEXE = ?", $exe)->where("MAGCOD = ?", $mag);
        $inv = $inv->join("ETATBON", "ETATBON.ETBONCOD = " . $table . ".ETBONCOD", "ETBONLIB");

        $bcn = $inv->query()->fetchAll();

        foreach ($bcn as $key => $item) {
            $bcn[$key]["ETBONLIB"] = utf8_encode($item["ETBONLIB"]);
        }

        $invd = $db->select()->from($tabled);

        $invd = $invd->join("ART", "ART.ARTCOD = " . $tabled . ".ARTCOD", "ART.ARTLIB");

        $invd = $invd->where("BCNCOD = ?", $code)->where("BCNEXE = ?", $exe);

        $bcnd = $invd->query()->fetchAll();

        if (!$uniform) {
            return array(
                "entete" => $bcn,
                "detail" => $bcnd,
            );
        } else {

            $det = array();

            foreach ($bcnd as $key => $item) {

                $invt = $db->query("select (ARTAAI || case when ARTMMI < 10 THEN ( '' || '0' || ARTMMI) ELSE '' || ARTMMI END || case when ARTJJI < 10 THEN ( '' || '0' || ARTJJI) ELSE '' || ARTJJI END) as DINVT  from invart$exe where artart = " . $item["ARTCOD"] . " and artmag = " . $mag)->fetchAll();

                $detitem = array(
                    "artcod" => $item["ARTCOD"],
                    "design" => $item["ARTLIB"],
                    "qte" => $item["BCNQLIV"],
                    "dinv" => $invt[0]["DINVT"],
                );
                array_push($det, $detitem);
            }

            return array(
                "entete" => array(
                    "code" => $bcn[0]["BCNCOD"],
                    "date" => $bcn[0]["BCNDATE"],
                    "mag" => $mag,
                    "exe" => $exe,
                ),
                "detail" => $det
            );
        }
    }
    
    public static function get_cons($art ,$exe , $mag = ""){
        
         $db = Model::getDb2();
        
        $etable = array("BCNE" => "BCND", "BCNEB" => "BCNDB", "BCNHABE" => "BCNHABD");
        
        if(!empty($mag)){
            $reqmag = " AND A.MAGCOD = $mag";
        }else{
            $reqmag = "";
        }
        
        $qte = 0;
        
        foreach ($etable as $tab=>$tabd){
            
           $qt = $db->query("SELECT  case when SUM(B.BCNQLIV) IS NULL then 0 else SUM(B.BCNQLIV) end  AS SUMQTE 
                        FROM $tab A  
                        LEFT JOIN $tabd B ON A.BCNCOD = B.BCNCOD AND A.BCNEXE = B.BCNEXE                   
                        WHERE A.BCNEXE = $exe AND B.ARTCOD = $art AND A.ETBONCOD = 8 $reqmag")->fetchAll();
           
           $qte += (int)$qt[0]["SUMQTE"];
            
        }
        
        return $qte;
        
    }

}

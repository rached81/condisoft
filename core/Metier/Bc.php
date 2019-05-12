<?php

class Metier_Bc {

    private static $_instance = null;

    private function __construct() {
        //definire la date d'exercice actuel
    }

    public static function getInstance() {
        if (is_null(self::$_instance)) {
            self::$_instance = new Metier_Bc();
        }
        return self::$_instance;
    }

    public static function get_art_qte($nat, $bccod, $bcexe, $artcod) {

        if ($nat == "L" ) {

            $tabled = "BCD";
            $champ = "BCQTE";
            $libcod = "BCCOD";
            $libexe = "BCEXE";
            
        } else if ($nat == "M") {

            $tabled = "OLD";
            $champ = "OLQTE";
            $libcod = "OLCOD";
            $libexe = "OLEXE";
        }else if ($nat == "E") {
         
            $tabled = "BCETRD";
            $champ = "BCQTE";
            $libcod = "BCCOD";
            $libexe = "BCEXE";
            
        }
        
         $db = Model::getDb2();

        $qte = $db->select()->from($tabled)->where($libcod . " = ?", $bccod)->where($libexe . " = ?", $bcexe)->where("ARTCOD = ?", $artcod)->query()->fetchAll();

        if (!empty($qte)) {
            return $qte[0][$champ];
        } else {
            return false;
        }
    }
    
     public static function art_in_bc($nat, $bccod, $bcexe, $artcod) {

        if(self::get_art_qte($nat, $bccod, $bcexe, $artcod)!=false){
            return true;
        }else{
            return false;
        }
    }

}

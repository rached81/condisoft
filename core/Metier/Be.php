<?php

class Metier_Be {

    private static $_instance = null;

    private function __construct() {
//definire la date d'exercice actuel
    }

    public static function getInstance() {
        if (is_null(self::$_instance)) {
            self::$_instance = new Metier_Be();
        }
        return self::$_instance;
    }

//commande be hors marché local
    private static $bccod;
    private static $bcexe;
//commande be hors marché étrangé
    private static $lccod;
    private static $lcexe;
//commande be marché
    private static $contcod;
    private static $contexe;
    private static $olcod;
    private static $olexe;
//propriété be
    private static $typebe;
    private static $becod;
    private static $beexe;
    private static $beseq;
    private static $daterec;
    private static $datecr;
    private static $frs;
    private static $numbl;
    private static $datebl;
    private static $magrec;
    private static $numfact;
    private static $datefact;
    private static $dtransit;
    private static $beftr;
    private static $bediver;
    private static $bedevise;
    private static $becour;
    private static $betotfr;
    private static $bedetail;
    private static $bedetailnew;
    private static $errbe = array();
//detail be
    public static $detail = array();

    public static function set_type($typ) {
        self::$typebe = $typ;
    }

    public static function set_command($bccod, $bcexe, $contcod = 0, $contexe = 0) {
        if (self::$typebe == "ME" || self::$typebe == "ML") {
            self::$olcod = $bccod;
            self::$olexe = $bcexe;
        } else {
            self::$bccod = $bccod;
            self::$bcexe = $bcexe;
        }
        self::$contcod = $contcod;
        self::$contexe = $contexe;
    }

    public static function set_becod($becod) {
        self::$becod = $becod;
    }

    public static function set_beexe($beexe) {
        self::$beexe = $beexe;
    }

    public static function set_beseq($beseq) {
        self::$beseq = $beseq;
    }

    public static function set_daterec($daterec) {
        self::$daterec = $daterec;
    }

    public static function set_datecr($datecr) {
        self::$datecr = $datecr;
    }

    public static function set_frs($frs) {
        self::$frs = $frs;
    }

    public static function set_numbl($numbl) {
        self::$numbl = $numbl;
    }

    public static function set_datebl($datebl) {
        self::$datebl = $datebl;
    }

    public static function set_magrec($magrec) {
        self::$magrec = $magrec;
    }

    public static function set_numfact($numfact) {
        self::$numfact = $numfact;
    }

    public static function set_datefact($datefact) {
        self::$datefact = $datefact;
    }

    public static function set_dtransit($dtransit) {
        self::$dtransit = $dtransit;
    }

    public static function set_beftr($beftr) {
        self::$beftr = $beftr;
    }

    public static function set_bediver($bediver) {
        self::$bediver = $bediver;
    }

    public static function set_bedevise($bedevise) {
        self::$bedevise = $bedevise;
    }

    public static function set_becour($becour) {
        self::$becour = $becour;
    }

    public static function set_betotfr($betotfr) {
        self::$betotfr = $betotfr;
    }

    public static function set_bedetail($bedetail = array(), $bedetailnew = array()) {
        self::$bedetail = $bedetail;
        self::$bedetailnew = $bedetailnew;
    }

    public static function set_bc($bccod, $bcexe) {
        
    }

    public static function set_contrat($contcod, $contexe, $olcod, $olexe) {
        
    }

    public static function search_be_ent() {

        $db = Model::getDb2();

        try {

            switch (self::$typebe) {
                case "L" :
                    $rsq = $db->select()->from(array("G" => "BEE"))
                            ->joinLeft(array("A" => "BCE"), "G.BCCOD = A.BCCOD and G.BCEXE = A.BCEXE ", array("FRSCOD"))
                            ->joinLeft(array("F" => "FRS"), "A.FRSCOD = F.FRSCOD", array("FRSNOM"));

                    break;


                case "E" :
                    $rsq = $db->select()->from(array("G" => "BEETRE"))
                            ->joinLeft(array("A" => "BCETRE"), "G.BCCOD = A.BCCOD and G.BCEXE = A.BCEXE ", array("FRSCOD"))
                            ->joinLeft(array("F" => "FRS"), "A.FRSCOD = F.FRSCOD", array("FRSNOM"));
                    break;


                case "ML" :
                    $rsq = $db->select()->from(array("G" => "BEMARCHEE"))
                            ->join(array("A" => "OLE"), "G.OLCOD = A.OLCOD and G.OLEXE = A.OLEXE and G.CONTCOD = A.CONTCOD and G.CONTEXE = A.CONTEXE")
                            ->joinLeft(array("F" => "CONTE"), "G.CONTCOD = F.CONTCOD AND G.CONTEXE  = F.CONTEXE", array("FRSCOD"))
                            ->joinLeft(array("J" => "FRS"), "F.FRSCOD = J.FRSCOD", array("FRSNOM"));
                    break;


                case "ME" :

                    $rsq = $db->select()->from(array("G" => "BEMARCHEE"))
                            ->join(array("A" => "OLETRE"), "G.OLCOD = A.OLCOD and G.OLEXE = A.OLEXE and G.CONTCOD = A.CONTCOD and G.CONTEXE = A.CONTEXE")
                            ->joinLeft(array("F" => "CONTETRE"), "G.CONTCOD = F.CONTCOD AND G.CONTEXE  = F.CONTEXE", array("FRSCOD"))
                            ->joinLeft(array("J" => "FRS"), "F.FRSCOD = J.FRSCOD", array("FRSNOM"));
                    ;
                    break;


                case "S" :
                    $rsq = $db->select()->from(array("G" => "BEDAME"))
                            ->joinLeft(array("A" => "BCDAME"), "G.BCCOD = A.BCCOD and G.BCEXE = A.BCEXE ", array("FRSCOD"))
                            ->joinLeft(array("F" => "FRS"), "A.FRSCOD = F.FRSCOD", array("FRSNOM"));
                    break;
            }
            
     

            $rsq = $rsq->joinLeft(array("H" => "ETATBON"), "G.ETBONCOD = H.ETBONCOD");

            if (!empty(self::$becod)) {
                $rsq = $rsq->where("G.BECOD = ?", self::$becod);
            }

            if (!empty(self::$beexe)) {
                $rsq = $rsq->where("G.BEEXE = ?", self::$beexe);
            }

            if (!empty(self::$magrec)) {
                $rsq = $rsq->where("G.MAGCOD = ?", self::$magrec);
            }

            if (!empty(self::$datecr)) {
                $rsq = $rsq->where("G.BEDATE = ?", self::$datecr);
            }

            if (!empty(self::$contcod)) {
                $rsq = $rsq->where("G.CONTCOD = ?", self::$contcod);
            }

            if (!empty(self::$contexe)) {
                $rsq = $rsq->where("G.CONTEXE = ?", self::$contexe);
            }

            if (!empty(self::$bccod)) {
                $rsq = $rsq->where("G.BCCOD = ?", self::$bccod);
            }

            if (!empty(self::$bcexe)) {
                $rsq = $rsq->where("G.BCEXE = ?", self::$bcexe);
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
            Exceptions::setLastException(var_dump($e));
            echo json_encode(array("etat" => "2"));
            die();
        }
    }

    public static function get_be_det() {

        $db = Model::getDb2();

        try {

            switch (self::$typebe) {
                case "L" :
                    $rsq = $db->select()->from(array("G" => "BEE"))
                            ->join(array("H" => "BED"), "G.BECOD = H.BECOD and G.BEEXE = H.BEEXE")
                            ->joinLeft(array("A" => "BCE"), "G.BCCOD = A.BCCOD and G.BCEXE = A.BCEXE")
                            ->joinLeft(array("B" => "BCD"), "G.BCCOD = B.BCCOD and G.BCEXE = B.BCEXE and H.ARTCOD = B.ARTCOD", array("BCQTE", "BCPUHT"))
                            ->joinLeft(array("C" => "DPD"), "A.DPCOD = C.DPCOD and A.DPEXE = C.DPEXE and B.ARTCOD = C.ARTCOD", array("DAPCOD", "DAPEXE"))
                            ->joinLeft(array("D" => "ART"), "H.ARTCOD = D.ARTCOD", array("ARTLIB"))
                            ->joinLeft(array("E" => "UDIST"), "E.UDCOD = D.UDCOD", array("UDLIB"))
                            ->joinLeft(array("F" => "FRS"), "A.FRSCOD = F.FRSCOD", array("FRSNOM"));

                    break;


                case "E" :
                    $rsq = $db->select()->from(array("G" => "BEETRE"))
                            ->join(array("H" => "BEETRD"), "G.BECOD = H.BECOD and G.BEEXE = H.BEEXE")
                            ->joinLeft(array("A" => "BCETRE"), "G.BCCOD = A.BCCOD and G.BCEXE = A.BCEXE")
                            ->joinLeft(array("B" => "BCETRD"), "G.BCCOD = B.BCCOD and G.BCEXE = B.BCEXE and H.ARTCOD = B.ARTCOD", array("BCQTE", "BCPUHT"))
                            ->joinLeft(array("C" => "DPETRD"), "A.DPCOD = C.DPCOD and A.DPEXE = C.DPEXE and B.ARTCOD = C.ARTCOD", array("DAPCOD", "DAPEXE"))
                            ->joinLeft(array("D" => "ART"), "H.ARTCOD = D.ARTCOD", array("ARTLIB"))
                            ->joinLeft(array("E" => "UDIST"), "E.UDCOD = D.UDCOD", array("UDLIB"))
                            ->joinLeft(array("F" => "FRS"), "A.FRSCOD = F.FRSCOD", array("FRSNOM"));
                    break;


                case "ML" :
                    $rsq = $db->select()->from(array("G" => "BEMARCHEE"))
                            ->join(array("H" => "BEMARCHED"), "G.BECOD = H.BECOD and G.BEEXE = H.BEEXE")
                            ->joinLeft(array("A" => "OLE"), "G.OLCOD = A.OLCOD and G.OLEXE = A.OLEXE and G.CONTCOD = A.CONTCOD and G.CONTEXE = A.CONTEXE")
                            ->joinLeft(array("B" => "OLD"), "G.OLCOD = B.OLCOD and G.OLEXE = B.OLEXE and G.CONTCOD = B.CONTCOD and G.CONTEXE = B.CONTEXE and H.ARTCOD = B.ARTCOD", array("OLQTE"))
                            ->joinLeft(array("D" => "ART"), "H.ARTCOD = D.ARTCOD", array("ARTLIB"))
                            ->joinLeft(array("E" => "UDIST"), "E.UDCOD = D.UDCOD", array("UDLIB"))
                            ->joinLeft(array("F" => "CONTE"), "G.CONTCOD = F.CONTCOD AND G.CONTEXE  = F.CONTEXE", array("FRSCOD"))
                            ->joinLeft(array("I" => "CONTD"), "G.CONTCOD = I.CONTCOD AND G.CONTEXE  = I.CONTEXE AND H.ARTCOD = I.ARTCOD and I.EXENUM = A.EXENUM", array("ARTPU"))
                            ->joinLeft(array("J" => "FRS"), "F.FRSCOD = J.FRSCOD", array("FRSNOM"))

                    ;
                    break;


                case "ME" :

                    $rsq = $db->select()->from(array("G" => "BEMARCHEE"))
                            ->join(array("H" => "BEMARCHED"), "G.BECOD = H.BECOD and G.BEEXE = H.BEEXE")
                            ->joinLeft(array("A" => "OLETRE"), "G.OLCOD = A.OLCOD and G.OLEXE = A.OLEXE and G.CONTCOD = A.CONTCOD and G.CONTEXE = A.CONTEXE")
                            ->joinLeft(array("B" => "OLETRD"), "G.OLCOD = B.OLCOD and G.OLEXE = B.OLEXE and G.CONTCOD = B.CONTCOD and G.CONTEXE = B.CONTEXE and H.ARTCOD = B.ARTCOD", array("OLQTE"))
                            ->joinLeft(array("D" => "ART"), "H.ARTCOD = D.ARTCOD", array("ARTLIB"))
                            ->joinLeft(array("E" => "UDIST"), "E.UDCOD = D.UDCOD", array("UDLIB"))
                            ->joinLeft(array("F" => "CONTETRE"), "G.CONTCOD = F.CONTCOD AND G.CONTEXE  = F.CONTEXE", array("FRSCOD"))
                            ->joinLeft(array("I" => "CONTETRD"), "G.CONTCOD = I.CONTCOD AND G.CONTEXE  = I.CONTEXE AND H.ARTCOD = I.ARTCOD and I.EXENUM = A.EXENUM", array("ARTPU"))
                            ->joinLeft(array("J" => "FRS"), "F.FRSCOD = J.FRSCOD", array("FRSNOM"));

                    break;


                case "S" :
                    $rsq = $db->select()->from(array("G" => "BEDAME"))
                            ->join(array("H" => "BEDAMD"), "G.BECOD = H.BECOD and G.BEEXE = H.BEEXE")
                            ->joinLeft(array("A" => "BCDAME"), "G.BCCOD = A.BCCOD and G.BCEXE = A.BCEXE ")
                            ->joinLeft(array("B" => "BCDAMD"), "G.BCCOD = B.BCCOD and G.BCEXE = B.BCEXE and H.ARTCOD = B.ARTCOD ", array("BCQTE", "BCPUHT"))
                            ->joinLeft(array("C" => "DPDAMD"), "A.DPCOD = C.DPCOD and A.DPEXE = C.DPEXE and B.ARTLIB = C.ARTLIB", array("DAMCOD", "DAMEXE", "ARTREF"))
                            ->joinLeft(array("F" => "FRS"), "A.FRSCOD = F.FRSCOD", array("FRSNOM"));


                    break;
            }

            if (!empty(self::$becod)) {

                $rsq = $rsq->where("G.BECOD = ?", self::$becod);
            }

            if (!empty(self::$beexe)) {
                $rsq = $rsq->where("G.BEEXE = ?", self::$beexe);
            }

            if (!empty(self::$datecr)) {
                $rsq = $rsq->where("G.BEDATE = ?", self::$datecr);
            }

            if (!empty(self::$contcod)) {
                $rsq = $rsq->where("G.CONTCOD = ?", self::$contcod);
            }

            if (!empty(self::$contexe)) {
                $rsq = $rsq->where("G.CONTEXE = ?", self::$contexe);
            }

            if (!empty(self::$bccod)) {
                $rsq = $rsq->where("G.BCCOD = ?", self::$bccod);
            }

            if (!empty(self::$bcexe)) {
                $rsq = $rsq->where("G.BCEXE = ?", self::$bcexe);
            }


              
                
            $rs = $rsq->query()->fetchAll();



            if (!empty($rs)) {
                if (self::$typebe == "ML" || self::$typebe == "ME") {
                    self::set_command($rs[0]["OLCOD"], $rs[0]["OLEXE"], $rs[0]["CONTCOD"], $rs[0]["CONTEXE"]);
                } else {
                    self::set_command($rs[0]["BCCOD"], $rs[0]["BCEXE"]);
                }
            }

            $errcom = "";

            foreach ($rs as $key => $item) {
                $qtedrc = "";
                if (self::$typebe == "S") {
                    if (self::$bccod != null) {
                        $qtedrc = self::get_qte_rec($item["ARTLIB"]);
                    } else {
                        $errcom = "le BC relatif a se bon d'entrée est inexistant ! la correction n'est pas permise";
                    }
                    $rs[$key]["REF"] = $item["ARTREF"];
                    $rs[$key]["UDLIB"] = "1";
                } else if (self::$typebe == "ML" || self::$typebe == "ME") {
                    if (self::$olcod != null) {
                        $qtedrc = self::get_qte_rec($item["ARTCOD"]);
                    } else {
                        $errcom = "l'OL relatif a se bon d'entrée est inexistant ! la correction n'est pas permise";
                    }
                    $rs[$key]["REF"] = self::get_artref($item["ARTCOD"]);
                } else {
                    if (self::$bccod != null) {
                        $qtedrc = self::get_qte_rec($item["ARTCOD"]);
                    } else {
                        $errcom = "le BC relatif a se bon d'entrée est inexistant ! la correction n'est pas permise";
                    }
                    $rs[$key]["REF"] = self::get_artref($item["ARTCOD"]);
                }
                if (empty($errcom)) {
                    if ($qtedrc[0]["QTEDREC"] != null) {
                        $rs[$key]["QTEDREC"] = $qtedrc[0]["QTEDREC"];
                    } else {
                        $rs[$key]["QTEDREC"] = 0;
                    }
                } else {
                    $rs[$key]["QTEDREC"] = $rs[$key]["BEQTE"];
                }
            }

            $rsbe = array(
                "ent" => self::search_be_ent(),
                "det" => $rs,
                "err" => $errcom
            );

            return $rsbe;
        } catch (Exception $e) {
            Exceptions::setLastException($e->getMessage());
            echo json_encode(array("etat" => "2"));
            die();
        }
    }

    public static function get_com() {

        $db = Model::getDb2();
        try {
            switch (self::$typebe) {
                case "L" :
                    $rs = $db->select()->from(array("A" => "BCE"))
                                    ->join(array("B" => "BCD"), "A.BCCOD = B.BCCOD and A.BCEXE = B.BCEXE")
                                    ->joinLeft(array("C" => "DPD"), "A.DPCOD = C.DPCOD and A.DPEXE = C.DPEXE and B.ARTCOD = C.ARTCOD", array("DAPCOD", "DAPEXE"))
                                    ->joinLeft(array("D" => "ART"), "B.ARTCOD = D.ARTCOD", array("ARTLIB"))
                                    ->joinLeft(array("E" => "UDIST"), "E.UDCOD = D.UDCOD", array("UDLIB"))
                                    ->joinLeft(array("F" => "FRS"), "A.FRSCOD = F.FRSCOD", array("FRSNOM"))
                                    ->where("A.BCCOD = ?", self::$bccod)->where("A.BCEXE = ?", self::$bcexe);
                    break;
                case "E" :
                    $rs = $db->select()->from(array("A" => "BCETRE"))
                                    ->join(array("B" => "BCETRD"), "A.BCCOD = B.BCCOD and A.BCEXE = B.BCEXE")
                                    ->joinLeft(array("C" => "DPETRD"), "A.DPCOD = C.DPCOD and A.DPEXE = C.DPEXE and B.ARTCOD = C.ARTCOD", array("DAPCOD", "DAPEXE"))
                                    ->joinLeft(array("D" => "ART"), "B.ARTCOD = D.ARTCOD", array("ARTLIB"))
                                    ->joinLeft(array("E" => "UDIST"), "E.UDCOD = D.UDCOD", array("UDLIB"))
                                    ->joinLeft(array("F" => "FRS"), "A.FRSCOD = F.FRSCOD", array("FRSNOM"))
                                    ->where("A.BCCOD = ?", self::$bccod)->where("A.BCEXE = ?", self::$bcexe);
                    break;
                case "ML" :
                    $rs = $db->select()->from(array("A" => "OLE"))
                                    ->join(array("B" => "OLD"), "A.OLCOD = B.OLCOD and A.OLEXE = B.OLEXE and A.CONTCOD = B.CONTCOD and A.CONTEXE = B.CONTEXE")
                                    ->joinLeft(array("D" => "ART"), "B.ARTCOD = D.ARTCOD", array("ARTLIB"))
                                    ->joinLeft(array("E" => "UDIST"), "E.UDCOD = D.UDCOD", array("UDLIB"))
                                    ->joinLeft(array("F" => "CONTE"), "A.CONTCOD = F.CONTCOD AND A.CONTEXE  = F.CONTEXE", array("FRSCOD"))
                                    ->joinLeft(array("H" => "CONTD"), "A.CONTCOD = H.CONTCOD AND A.CONTEXE  = H.CONTEXE AND B.ARTCOD = H.ARTCOD and H.EXENUM = A.EXENUM", array("ARTPU"))
                                    ->joinLeft(array("G" => "FRS"), "F.FRSCOD = G.FRSCOD", array("FRSNOM"))
                                    ->where("A.OLCOD = ?", self::$olcod)->where("A.OLEXE = ?", self::$olexe)->where("A.CONTCOD = ?", self::$contcod)->where("A.CONTEXE = ?", self::$contexe);
                    ;
                    break;
                case "ME" :
                    $rs = $db->select()->from(array("A" => "OLETRE"))
                                    ->join(array("B" => "OLETRD"), "A.OLCOD = B.OLCOD and A.OLEXE = B.OLEXE and A.CONTCOD = B.CONTCOD and A.CONTEXE = B.CONTEXE")
                                    ->joinLeft(array("D" => "ART"), "B.ARTCOD = D.ARTCOD", array("ARTLIB"))
                                    ->joinLeft(array("E" => "UDIST"), "E.UDCOD = D.UDCOD", array("UDLIB"))
                                    ->joinLeft(array("F" => "CONTETRE"), "A.CONTCOD = F.CONTCOD AND A.CONTEXE  = F.CONTEXE", array("FRSCOD"))
                                    ->joinLeft(array("H" => "CONTETRD"), "A.CONTCOD = H.CONTCOD AND A.CONTEXE  = H.CONTEXE AND B.ARTCOD = H.ARTCOD and H.EXENUM = A.EXENUM", array("ARTPU"))
                                    ->joinLeft(array("G" => "FRS"), "F.FRSCOD = G.FRSCOD", array("FRSNOM"))
                                    ->where("A.OLCOD = ?", self::$olcod)->where("A.OLEXE = ?", self::$olexe)->where("A.CONTCOD = ?", self::$contcod)->where("A.CONTEXE = ?", self::$contexe);
                    break;
                case "S" :
                    $rs = $db->select()->from(array("A" => "BCDAME"))->join(array("B" => "BCDAMD"), "A.BCCOD = B.BCCOD and A.BCEXE = B.BCEXE")
                                    ->joinLeft(array("C" => "DPDAMD"), "A.DPCOD = C.DPCOD and A.DPEXE = C.DPEXE and B.ARTLIB = C.ARTLIB", array("DAMCOD", "DAMEXE", "ARTREF"))
                                    ->joinLeft(array("F" => "FRS"), "A.FRSCOD = F.FRSCOD", array("FRSNOM"))
                                    ->where("A.BCCOD = ?", self::$bccod)->where("A.BCEXE = ?", self::$bcexe);

                    break;
            }
            
            //die($rs->__toString());
            $rss = $rs->query()->fetchAll();
            
            foreach ($rss as $key => $item) {

                if (self::$typebe != "S") {
                    $qtedrc = self::get_qte_rec($item["ARTCOD"]);
                    $rss[$key]["REF"] = self::get_artref($item["ARTCOD"]);
                } else {
                    $qtedrc = self::get_qte_rec($item["ARTLIB"]);
                    $rss[$key]["REF"] = $item["ARTREF"];
                    $rss[$key]["UDLIB"] = "1";
                }

                if ($qtedrc[0]["QTEDREC"] != null) {
                    $rss[$key]["QTEDREC"] = $qtedrc[0]["QTEDREC"];
                } else {
                    $rss[$key]["QTEDREC"] = 0;
                }
            }

            return $rss;
        } catch (Exception $e) {
            Exceptions::setLastException($e->getMessage());
            echo json_encode(array("etat" => "2"));
            die();
        }
    }

    public static function get_artref($art) {
        $db = Model::getDb2();
        $rs = $db->select()->from(array("A" => "REFART"), array("REF"))->where("A.ARTCOD = ?", $art)->where("A.ETATCOD = ?", 1)->query()->fetchAll();
        if (!empty($rs)) {
            return $rs[0]["REF"];
        } else {
            return "-";
        }
    }

    public static function get_qte_rec($art) {



        $db = Model::getDb2();

        try {
            switch (self::$typebe) {
                case "L" :

                    $rs = $db->select()->from(array("A" => "BEE"), array())->join(array("B" => "BED"), "A.BECOD = B.BECOD and A.BEEXE = B.BEEXE", array(new Zend_Db_Expr("SUM(B.BEQTE+B.BEQTSP) as QTEDREC")))->where("A.BCCOD = ?", self::$bccod)->where("A.BCEXE = ?", self::$bcexe)->where("B.ARTCOD = ?", $art)->query()->fetchAll();

                    break;
                case "E" :
                    $rs = $db->select()->from(array("A" => "BEETRE"), array())->join(array("B" => "BEETRD"), "A.BECOD = B.BECOD and A.BEEXE = B.BEEXE", array(new Zend_Db_Expr("SUM(B.BEQTE+B.BEQTSP) as QTEDREC")))->where("A.BCCOD = ?", self::$bccod)->where("A.BCEXE = ?", self::$bcexe)->where("B.ARTCOD = ?", $art)->query()->fetchAll();
                    break;
                case "ML" :
                    $rs = $db->select()->from(array("A" => "BEMARCHEE"), array())->join(array("B" => "BEMARCHED"), "A.BECOD = B.BECOD and A.BEEXE = B.BEEXE", array(new Zend_Db_Expr("SUM(B.BEQTE+B.BEQTSP) as QTEDREC")))->where("A.OLCOD = ?", self::$olcod)->where("A.OLEXE = ?", self::$olexe)->where("B.ARTCOD = ?", $art)->where("A.CONTCOD = ?", self::$contcod)->where("A.CONTEXE = ?", self::$contexe)->query()->fetchAll();
                    break;
                case "ME" :

                    $rs = $db->select()->from(array("A" => "BEMARCHEE"), array())->join(array("B" => "BEMARCHED"), "A.BECOD = B.BECOD and A.BEEXE = B.BEEXE", array(new Zend_Db_Expr("SUM(B.BEQTE+B.BEQTSP) as QTEDREC")))->where("A.OLCOD = ?", self::$olcod)->where("A.OLEXE = ?", self::$olexe)->where("B.ARTCOD = ?", $art)->where("A.CONTCOD = ?", self::$contcod)->where("A.CONTEXE = ?", self::$contexe)->query()->fetchAll();

                    break;
                case "S" :
                    $rs = $db->select()->from(array("A" => "BEDAME"), array())->join(array("B" => "BEDAMD"), "A.BECOD = B.BECOD and A.BEEXE = B.BEEXE", array(new Zend_Db_Expr("SUM(B.BEQTE+B.BEQTSP) as QTEDREC")))->where("A.BCCOD = ?", self::$bccod)->where("A.BCEXE = ?", self::$bcexe)->where("B.ARTLIB = ?", $art)->query()->fetchAll();
                    ;
                    break;
            }


            return $rs;
        } catch (Exception $e) {
            Exceptions::setLastException($e->getMessage());
            echo json_encode(array("etat" => "2"));
            die();
        }
    }

    public function get_next_cod($year) {

        $db = Model::getDb2();

        try {
            switch (self::$typebe) {
                case "L" :
                    $rs = $db->select()->from(array("A" => "BEE"), array(new Zend_Db_Expr("MAX(A.BECOD) as MAX")))->where("A.BEEXE = ?", $year)->query()->fetchAll();
                    break;
                case "E" :
                    $rs = $db->select()->from(array("A" => "BEETRE"), array(new Zend_Db_Expr("MAX(A.BECOD) as MAX")))->where("A.BEEXE = ?", $year)->query()->fetchAll();
                    break;
                case "ML" :
                    $rs = $db->select()->from(array("A" => "BEMARCHEE"), array(new Zend_Db_Expr("MAX(A.BECOD) as MAX")))->where("A.BEEXE = ?", $year)->query()->fetchAll();
                    break;
                case "ME" :
                    $rs = $db->select()->from(array("A" => "BEMARCHEE"), array(new Zend_Db_Expr("MAX(A.BECOD) as MAX")))->where("A.BEEXE = ?", $year)->query()->fetchAll();
                    break;
                case "S" :
                    $rs = $db->select()->from(array("A" => "BEDAME"), array(new Zend_Db_Expr("MAX(A.BECOD) as MAX")))->where("A.BEEXE = ?", $year)->query()->fetchAll();
                    break;
            }

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

    public static function insert() {

        $db = Model::getDb2();

        $ent = array(
            "BECOD" => self::$becod,
            "BEEXE" => self::$beexe,
            "ETBONCOD" => 1,
            "BEDATE" => self::$datecr,
            "BEDATREC" => self::$daterec,
            "BENBL" => self::$numbl,
            "TACHACOD" => 1,
            "BEDATBL" => self::$datebl,
            "BENFACT" => self::$numfact,
            "BEDATFACT" => self::$datefact,
            "MAGCOD" => self::$magrec,
            "BEVALTOT" => 0
        );

        if (self::$typebe == "ML" || self::$typebe == "ME") {
            $ent["CONTCOD"] = self::$contcod;
            $ent["CONTEXE"] = self::$contexe;
            $ent["OLCOD"] = self::$olcod;
            $ent["OLEXE"] = self::$olexe;
        } else {
            $ent["BCCOD"] = self::$bccod;
            $ent["BCEXE"] = self::$bcexe;
        }

        if (self::$typebe == "E" || self::$typebe == "ME") {
            $ent["BETRANSIT"] = self::$dtransit;
        }

        if (self::$typebe == "E") {
            $ent["BEFTR"] = self::$beftr;
            $ent["BEFDIVER"] = self::$bediver;
            $ent["BETOTFR"] = self::$betotfr;
        }
        try {
            switch (self::$typebe) {

                case "L" : $db->insert("BEE", $ent);
                    break;
                case "E" : $db->insert("BEETRE", $ent);
                    break;
                case "ML" : $db->insert("BEMARCHEE", $ent);
                    break;
                case "ME" : $db->insert("BEMARCHEE", $ent);
                    break;
                case "S" : $db->insert("BEDAME", $ent);
                    break;
            }
        } catch (Exception $e) {
            Exceptions::setLastException("Erreur lor de l'enregistrement du BE entete : <br>" . utf8_encode($e->getMessage()));
            echo json_encode(array("etat" => "2"));
            die();
        }


        try {

            foreach (self::$bedetail as $det) {

                $dets = array(
                    "BECOD" => self::$becod,
                    "BEEXE" => self::$beexe,
                    "BESEQ" => $det["SEQ"],
                    "BEQTE" => $det["BEQTE"],
                    "BEQTSP" => $det["BEQTSP"],
                    "BEQTANOM" => $det["BEQTANOM"],
                    "BETPANOM" => $det["BETPANOM"],
                );

                if (self::$typebe != "S") {
                    $dets["ARTCOD"] = $det["ARTCOD"];
                } else {
                    $dets["ARTLIB"] = $det["ARTLIB"];
                }

                switch (self::$typebe) {
                    case "L" : $db->insert("BED", $dets);
                        break;
                    case "E" : $db->insert("BEETRD", $dets);
                        break;
                    case "ML" : $db->insert("BEMARCHED", $dets);
                        break;
                    case "ME" : $db->insert("BEMARCHED", $dets);
                        break;
                    case "S" : $db->insert("BEDAMD", $dets);
                        break;
                }
            }
        } catch (Exception $e) {
            Exceptions::setLastException("Erreur lor de l'enregistrement du BE detail: <br>" . utf8_encode($e->getMessage()));
            echo json_encode(array("etat" => "2"));
            die();
        }
    }

    public static function update() {


        $db = Model::getDb2();

        $ent = array(
            "BCCOD" => self::$bccod,
            "BCEXE" => self::$bcexe,
            "BEDATE" => self::$datecr,
            "BEDATREC" => self::$daterec,
            "BENBL" => self::$numbl,
            "BEDATBL" => self::$datebl,
            "BENFACT" => self::$numfact,
            "BEDATFACT" => self::$datefact,
            "MAGCOD" => self::$magrec,
        );

        if (self::$typebe == "ML" || self::$typebe == "ME") {
            $ent["CONTCOD"] = self::$contcod;
            $ent["CONTEXE"] = self::$contexe;
        }

        if (self::$typebe == "E" || self::$typebe == "ME") {
            $ent["BETRANSIT"] = self::$dtransit;
        }

        if (self::$typebe == "E") {
            $ent["BEFTR"] = self::$beftr;
            $ent["BEFDIVER"] = self::$bediver;
            $ent["BETOTFR"] = self::$betotfr;
        }
        try {
            switch (self::$typebe) {

                case "L" : $db->update("BEE", $ent, "BECOD = " . self::$becod . " and BEEXE = " . self::$beexe);
                    break;
                case "E" : $db->update("BEETRE", $ent, "BECOD = " . self::$becod . " and BEEXE = " . self::$beexe);
                    break;
                case "ML" : $db->update("BEMARCHEE", $ent, "BECOD = " . self::$becod . " and BEEXE = " . self::$beexe);
                    break;
                case "ME" : $db->update("BEMARCHEE", $ent, "BECOD = " . self::$becod . " and BEEXE = " . self::$beexe);
                    break;
                case "S" : $db->update("BEDAME", $ent, "BECOD = " . self::$becod . " and BEEXE = " . self::$beexe);
                    break;
            }
        } catch (Exception $e) {
            Exceptions::setLastException("Erreur lor de l'enregistrement du BE entete : <br>" . utf8_encode($e->getMessage()));
            echo json_encode(array("etat" => "2"));
            die();
        }


        try {

            foreach (self::$bedetail as $det) {
                if ($det["ARTSUPP"] == "no") {
                    $dets = array(
                        "BESEQ" => $det["SEQ"],
                        "BEQTE" => $det["BEQTE"],
                        "BEQTSP" => $det["BEQTSP"],
                        "BEQTANOM" => $det["BEQTANOM"],
                        "BETPANOM" => $det["BETPANOM"],
                    );

                    if (self::$typebe != "S") {
                        $dets["ARTCOD"] = $det["ARTCOD"];
                    } else {
                        $dets["ARTLIB"] = $det["ARTLIB"];
                    }

                    switch (self::$typebe) {
                        case "L" : $db->update("BED", $dets, "ARTCOD = " . $det["ARTCOD"] . " and BECOD = " . self::$becod . " and BEEXE = " . self::$beexe);
                            Metier_Sgs::update_bon_stock("up_art", $det["ARTCOD"], self::$becod, self::$magrec, self::$beexe, $det["BEQTE"], "BED");
                            break;
                        case "E" : $db->update("BEETRD", $dets, "ARTCOD = " . $det["ARTCOD"] . " and BECOD = " . self::$becod . " and BEEXE = " . self::$beexe);
                            Metier_Sgs::update_bon_stock("up_art", $det["ARTCOD"], self::$becod, self::$magrec, self::$beexe, $det["BEQTE"], "BEETRD");
                            break;
                        case "ML" : $db->update("BEMARCHED", $dets, "ARTCOD = " . $det["ARTCOD"] . " and BECOD = " . self::$becod . " and BEEXE = " . self::$beexe);
                            Metier_Sgs::update_bon_stock("up_art", $det["ARTCOD"], self::$becod, self::$magrec, self::$beexe, $det["BEQTE"], "BEMARCHED");
                            break;
                        case "ME" : $db->update("BEMARCHED", $dets, "ARTCOD = " . $det["ARTCOD"] . " and BECOD = " . self::$becod . " and BEEXE = " . self::$beexe);
                            Metier_Sgs::update_bon_stock("up_art", $det["ARTCOD"], self::$becod, self::$magrec, self::$beexe, $det["BEQTE"], "BEMARCHED");
                            break;
                        case "S" : $db->update("BEDAMD", $dets, "BESEQ = " . $det["SEQ"] . " ARTLIB = '" . $det["ARTLIB"] . "' and BECOD = " . self::$becod . " and BEEXE = " . self::$beexe);
                            Metier_Sgs::update_bon_stock("up_art", $det["ARTCOD"], self::$becod, self::$magrec, self::$beexe, $det["BEQTE"], "BEDAMD");
                            break;
                    }
                } else if ($det["ARTSUPP"] == "yes") {

                    if (self::$typebe != "S") {
                        $dets["ARTCOD"] = $det["ARTCOD"];
                    } else {
                        $dets["ARTLIB"] = $det["ARTLIB"];
                    }

                    switch (self::$typebe) {
                        case "L" : $db->delete("BED", "ARTCOD = " . $det["ARTCOD"] . " and BECOD = " . self::$becod . " and BEEXE = " . self::$beexe);
                            Metier_Sgs::update_bon_stock("supp_art", $det["ARTCOD"], self::$becod, self::$magrec, self::$beexe, null, "BED");
                            break;
                        case "E" : $db->delete("BEETRD", "ARTCOD = " . $det["ARTCOD"] . " and BECOD = " . self::$becod . " and BEEXE = " . self::$beexe);
                            Metier_Sgs::update_bon_stock("supp_art", $det["ARTCOD"], self::$becod, self::$magrec, self::$beexe, null, "BEETRD");
                            break;
                        case "ML" : $db->delete("BEMARCHED", "ARTCOD = " . $det["ARTCOD"] . " and BECOD = " . self::$becod . " and BEEXE = " . self::$beexe);
                            Metier_Sgs::update_bon_stock("supp_art", $det["ARTCOD"], self::$becod, self::$magrec, self::$beexe, null, "BEMARCHED");
                            break;
                        case "ME" : $db->delete("BEMARCHED", "ARTCOD = " . $det["ARTCOD"] . " and BECOD = " . self::$becod . " and BEEXE = " . self::$beexe);
                            Metier_Sgs::update_bon_stock("supp_art", $det["ARTCOD"], self::$becod, self::$magrec, self::$beexe, null, "BEMARCHED");
                            break;
                        case "S" : $db->delete("BEDAMD", "BESEQ = " . $det["SEQ"] . " ARTLIB = '" . $det["ARTLIB"] . "' and BECOD = " . self::$becod . " and BEEXE = " . self::$beexe);
                            Metier_Sgs::update_bon_stock("supp_art", $det["ARTCOD"], self::$becod, self::$magrec, self::$beexe, null, "BEDAMD");
                            break;
                    }
                }
            }

            foreach (self::$bedetailnew as $det) {

                $dets = array(
                    "BECOD" => self::$becod,
                    "BEEXE" => self::$beexe,
                    "BESEQ" => $det["SEQ"],
                    "BEQTE" => $det["BEQTE"],
                    "BEQTSP" => $det["BEQTSP"],
                    "BEQTANOM" => $det["BEQTANOM"],
                    "BETPANOM" => $det["BETPANOM"],
                );

                if (self::$typebe != "S") {
                    $dets["ARTCOD"] = $det["ARTCOD"];
                } else {
                    $dets["ARTLIB"] = $det["ARTLIB"];
                }

                switch (self::$typebe) {
                    case "L" : $db->insert("BED", $dets);
                        Metier_Sgs::update_bon_stock("ajout_art", $det["ARTCOD"], self::$becod, self::$magrec, self::$beexe, $det["BEQTE"], "BED");
                        break;
                    case "E" : $db->insert("BEETRD", $dets);
                        Metier_Sgs::update_bon_stock("ajout_art", $det["ARTCOD"], self::$becod, self::$magrec, self::$beexe, $det["BEQTE"], "BEETRD");
                        break;
                    case "ML" : $db->insert("BEMARCHED", $dets);
                        Metier_Sgs::update_bon_stock("ajout_art", $det["ARTCOD"], self::$becod, self::$magrec, self::$beexe, $det["BEQTE"], "BEMARCHED");
                        break;
                    case "ME" : $db->insert("BEMARCHED", $dets);
                        Metier_Sgs::update_bon_stock("ajout_art", $det["ARTCOD"], self::$becod, self::$magrec, self::$beexe, $det["BEQTE"], "BEMARCHED");
                        break;
                    case "S" : $db->insert("BEDAMD", $dets);
                        Metier_Sgs::update_bon_stock("ajout_art", $det["ARTCOD"], self::$becod, self::$magrec, self::$beexe, $det["BEQTE"], "BEDAMD");
                        break;
                }
            }
        } catch (Exception $e) {
            Exceptions::setLastException("Erreur lor de l'enregistrement du BE detail: <br>" . $e->getMessage());
            echo json_encode(array("etat" => "2"));
            die();
        }
    }

    public static function get_art_qte_for_bccod($nat, $bccod, $bcexe, $artcod) {

        if ($nat == "L") {

            $bctabled = "BCD";
            $betabled = "BED";
            $betablee = "BEE";
            $bechamp = "BEQTE";
            $bclibcod = "BCCOD";
            $belibcod = "BECOD";
            $bclibexe = "BCEXE";
            $belibexe = "BEEXE";
        } else if ($nat == "E") {

            $bctabled = "BCETRD";
            $betabled = "BEETRD";
            $betablee = "BEETRE";
            $bechamp = "BEQTE";
            $bclibcod = "BCCOD";
            $belibcod = "BECOD";
            $bclibexe = "BCEXE";
            $belibexe = "BEEXE";
        } else if ($nat == "M") {

            $bctabled = "OLD";
            $betabled = "BEMARCHED";
            $betablee = "BEMARCHEE";
            $bechamp = "BEQTE";
            $bclibcod = "OLCOD";
            $belibcod = "BECOD";
            $bclibexe = "OLEXE";
            $belibexe = "BEEXE";
        }

        $db = Model::getDb2();

        $qte = $db->select()->from($betabled, "sum($betabled.$bechamp) as totqte")
                        ->join($betablee, "$betablee.$belibcod = $betabled.$belibcod and $betablee.$belibexe = $betabled.$belibexe", array())
                        ->where($betablee . "." . $bclibcod . " = ?", $bccod)
                        ->where($betablee . "." . $bclibexe . " = ?", $bcexe)
                        ->where($betabled . ".ARTCOD = ?", $artcod)->query()->fetchAll();
        ;


        if (!empty($qte)) {
            return $qte[0]["totqte"];
        } else {
            return false;
        }
    }

    public static function get_be($types, $code, $exe, $mag, $uniform = false) {

        if ($types == 'L') {
            $table = "BEE";
            $tabled = "BED";
        } else if ($types == 'E') {
            $table = "BEETRE";
            $tabled = "BEETRD";
        } else if ($types == 'M') {
            $table = "BEMARCHEE";
            $tabled = "BEMARCHED";
        }

        $db = Model::getDb2();
        $inv = $db->select()->from($table)->where("BECOD = ?", $code)->where("BEEXE = ?", $exe)->where("MAGCOD = ?", $mag);
        $inv = $inv->join("ETATBON", "ETATBON.ETBONCOD = " . $table . ".ETBONCOD", "ETBONLIB");
        $be = $inv->query()->fetchAll();

        foreach ($be as $key => $item) {
            $be[$key]["ETBONLIB"] = utf8_encode($item["ETBONLIB"]);
        }



        $invd = $db->select()->from($tabled)
                        ->join("ART", "ART.ARTCOD = " . $tabled . ".ARTCOD", "ART.ARTLIB")
                        ->where("BECOD = ?", $code)->where("BEEXE = ?", $exe);
        $bed = $invd->query()->fetchAll();

        if (!$uniform) {
            return array(
                "entete" => $be,
                "detail" => $bed,
            );
        } else {

            $det = array();

            foreach ($bed as $key => $item) {

                $invt = $db->query("select (ARTAAI || case when ARTMMI < 10 THEN ( '' || '0' || ARTMMI) ELSE '' || ARTMMI END || case when ARTJJI < 10 THEN ( '' || '0' || ARTJJI) ELSE '' || ARTJJI END) as DINVT from invart$exe where artart = " . $item["ARTCOD"] . " and artmag = " . $mag)->fetchAll();

                $detitem = array(
                    "artcod" => $item["ARTCOD"],
                    "design" => $item["ARTLIB"],
                    "qte" => $item["BEQTE"] + $item["BEQTSP"],
                    "dinv" => $invt[0]["DINVT"],
                );
                array_push($det, $detitem);
            }

            return array(
                "entete" => array(
                    "code" => $be[0]["BECOD"],
                    "date" => $be[0]["BEDATREC"],
                    "mag" => $mag,
                    "exe" => $exe,
                ),
                "detail" => $det
            );
        }
    }

}

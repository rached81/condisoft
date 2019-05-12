<?php

class habillement extends controler {

    public function index() {

        view::setContext(get_class($this));

        view::addDefaultsCss();

        view::addDefaultJs();

        view::render('tpl');
        
    }
    
    
    public function asyn_get_hab(){
        
        $params = $this->get_passed_vars("data");
        
        $em = Model::$em;

        $result = $em->createQueryBuilder();
        $ent = $result->select('a', 'b', 'c')
                        ->from('StkEntreEntete', 'a')
                        ->leftJoin('a.entEtatcode', 'b')
                        ->leftJoin('a.entFournisseurcode', 'c')
                        ->where('a.entEtatcode = :entEtatcode')->setParameter('entEtatcode', 31);

        if (!empty($params["entCode"])) {
            $ent = $ent->andWhere('a.entCode= :entCodes')->setParameter('entCodes', $params["entCode"]);
        }

        if (!empty($params["a_entCode"])) {
            $ent = $ent->andWhere('a.entCode= :entCode')->setParameter('entCode', $params["a_entCode"]);
        }

        $ent = $ent->andWhere('a.entExercice= :exe')->setParameter('exe', $params["exe"]);
        $ent = $ent->andWhere('a.entMagrecepcode= :mag')->setParameter('mag', $params["mag"]);

        $entrs = $ent->getQuery()->getScalarResult();

        $entarray = array(
            "head" => array(
                "Code entre" => "a_entCode",
                "Exercice" => "a_entExercice",
                "Date de reception" => "a_entDatereception",
            ),
            "data" => $entrs
        );


        echo json_encode(array("data" => $entarray, "etat" => 0));
        
    }

}

?>
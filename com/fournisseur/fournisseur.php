<?php

class fournisseur extends controler {

    public function index() {

        view::setContext(get_class($this));

        view::addDefaultsCss();

        view::addDefaultJs();

        view::render('tpl');
    }

    public function asyn_get_fournisseur() {

        $frs = new StkFournisseur();
        $params = $this->get_passed_vars("data");

        $em = Model::$em;

        $result = $em->createQueryBuilder();
        $frs = $result->select('p', 'g')
                        ->from('stkFournisseur', 'p')
                        ->leftJoin('p.frsTypecode', 'g');
                     
                            

        if (!empty($params["frsCoder"])) {
            $frs = $frs->andWhere('p.frsCode= :frsCode')->setParameter('frsCode', $params["frsCoder"]);
            $frs = $frs->orWhere('p.frsRaisonsociale like :frsRaisonsociale')->setParameter('frsRaisonsociale', '%' . $params["frsCoder"] . '%');
        }

        if (!empty($params["p_frsCode"])) {
            $frs = $frs->andWhere('p.frsCode= :frsCode')->setParameter('frsCode', $params["p_frsCode"]);
        }

        $frss = $frs->getQuery()->getScalarResult();

        $frsarray = array(
            "head" => array(
                "Code client" => "p_frsCode",
                "Désignation" => "p_frsRaisonsociale",
                "N° de telephone" => "p_frsTel",
                "Class"=>"g_typfrsDesignation"
            ),
            "data" => $frss
        );

        echo json_encode(array("data" => $frsarray, "etat" => 0));
    }

    public function asyn_ajout_fournisseur() {

        $params = $this->get_passed_vars("data");

        $em = Model::$em;
        $frs = new StkFournisseur($params["frsCode"]);
        $frs->setFrsRaisonsociale($params["frsRaisonsociale"]);
        $frs->setFrsAdresse($params["frsAdresse"]);
        $frs->setFrsTel($params["frsTel"]);
        $frs->setFrsFax($params["frsFax"]);
        $frs->setFrsEmail($params["frsEmail"]);
         $frs->setFrsMf($params["frsMf"]);
        $frs->setFrsTypeCode($em->find("StkTypeFournisseur", $params["frsTypecode"]));
        $em->persist($frs);
        $em->flush();


        Message::set_info_msg("Fournisseur ajouter avec succes");
        echo json_encode(array("etat" => 1));
    }

    public function asyn_update_fournisseur() {


          $params = $this->get_passed_vars("data");

        $em = Model::$em;

        $frs = $em->find("StkFournisseur", $params["frsCode"]);
        $frs->setFrsRaisonsociale($params["frsRaisonsociale"]);
        $frs->setFrsAdresse($params["frsAdresse"]);
        $frs->setFrsTel($params["frsTel"]);
        $frs->setFrsFax($params["frsFax"]);
        $frs->setFrsEmail($params["frsEmail"]);
          $frs->setFrsMf($params["frsMf"]);
        $frs->setFrsTypeCode($em->find("StkTypeFournisseur", $params["frsTypecode"]));
        $em->persist($frs);
        $em->flush();
        Message::set_info_msg("Fournisseur mise à jour avec succes");
        echo json_encode(array("etat" => 1));
        
    }

    public function asyn_delete_fournisseur() {
          $params = $this->get_passed_vars("data");
        $frscod = $params["p_frsCode"];
        $em = Model::$em;
        $art = $em->find("StkFournisseur", $frscod);
        $em->remove($art);
        $em->flush();
        Message::set_info_msg("Fournisseur supprimer avec succes");
        echo json_encode(array("etat" => 1));
    }


}

?>
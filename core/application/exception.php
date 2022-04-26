<?php

Class Exceptions {

    private static $_instance = null;
    private static $Exception = array();
    private static $namespace = null;

    private function __construct() {
        
    }

    public static function init() {
        self::$namespace = new Zend_Session_Namespace();
        if (empty(self::$namespace->LastExceptionString)) {
            self::$namespace->LastExceptionString = array();
        }
        // $excep = array(

        //     1001 => "Merci d'introduire votre login et votre mot de passe",
        //     1002 => "L'action n'a pas été trouvé",
        //     1003 => "Requete erronée",
        //     1004 => "Erreur inconu",
        //     1005 => "Accéss reffusé , Vous n'avez pas le droit d'accés pour cette ressource",
        //     1006 => "Accéss reffusé , Vous n'avez pas le droit pour supprimer se profil",
        //     1007 => "L'utilisateur n'a pas pu etre supprimer",
            
        //     2001 => "Erreur lors de la recuperation de liste des services"
        // );
        // // self::$Exception = parse_ini_file(PATH_ROOT . DS . "core/application/exceptions.ini");
        // self::$Exception = $excep;
       self::$Exception = parse_ini_file(PATH_ROOT . DS . "core/application/exceptions.ini");
    }
    

    public static function getInstance() {
        if (is_null(self::$_instance)) {
            self::$_instance = new Exceptions();
        }
        return self::$_instance;
    }

    public static function getException($code = null) {
        return self::$Exception;
    }

    public static function getExceptionByCode($code = null) {
        return self::$Exception[$code];
    }

    public static function getLastException() {
        return self::$namespace->LastExceptionString;
    }

    public static function setLastException($excString) {

        if (mb_detect_encoding($excString, 'UTF-8', true)) {
            array_push(self::$namespace->LastExceptionString, $excString);
        } else {
            array_push(self::$namespace->LastExceptionString, utf8_encode($excString));
        }
        
    }
    // ALTER USER 'condisoft'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Rached@2019';
    // GRANT ALL PRIVILEGES ON *.* TO 'condisoft'@'localhost' WITH GRANT OPTION;
    

    public static function clearException() {

        self::$namespace->LastExceptionString = null;
    }

}

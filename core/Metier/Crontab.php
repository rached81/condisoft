<?php

class Metier_Crontab {

    private static $_instance = null;

    private function __construct() {
        //definire la date d'exercice actuel
    }

    public static function getInstance() {
        if (is_null(self::$_instance)) {
            self::$_instance = new Metier_Crontab();
        }
        return self::$_instance;
    }

    var $minute = NULL;
    var $hour = NULL;
    var $day = NULL;
    var $month = NULL;
    var $dayofweek = NULL;
    var $command = NULL;
    var $directory = NULL;
    var $filename = "crons";
    var $crontabPath = NULL;
    var $handle = NULL;

    function crontab($dir = NULL, $filename = NULL, $crontabPath = NULL) {
        $result = (!$dir) ? $this->setDirectory(PATH_ROOT.DS."my_crontabs") : $this->setDirectory($dir);
        if (!$result)
            exit('Directory error');
        $result = (!$filename) ? $this->createCronFile("crons") : $this->createCronFile($filename);
        if (!$result)
            exit('File error');
        $this->pathToCrontab = ($crontabPath) ? NULL : $crontabPath;
    }

    function setDateParams($min = NULL, $hour = NULL, $day = NULL, $month = NULL, $dayofweek = NULL) {

        if ($min == "0")
            $this->minute = 0;
        elseif ($min)
            $this->minute = $min;
        else
            $this->minute = "*";

        if ($hour == "0")
            $this->hour = 0;
        elseif ($hour)
            $this->hour = $hour;
        else
            $this->hour = "*";
        $this->month = ($month) ? $month : "*";
        $this->day = ($day) ? $day : "*";
        $this->dayofweek = ($dayofweek) ? $dayofweek : "*";
    }

    function setDirectory($directory) {
        if (!$directory)
            return false;

        if (is_dir($directory)) {
            if ($dh = opendir($directory)) {
                $this->directory = $directory;
                return true;
            } else
                return false;
        }else {
            if (mkdir($directory, 0700)) {
                $this->directory = $directory;
                return true;
            }
        }
        return false;
    }

    function createCronFile($filename = NULL) {
        if (!$filename)
            return false;

        if (file_exists($this->directory . $filename)) {
            if ($handle = fopen($this->directory .DS. $filename, 'a')) {
                $this->handle = &$handle;
                $this->filename = $filename;
                return true;
            } else
                return false;
        }

        if (!$handle = fopen($this->directory .DS. $filename, 'a'))
            return false;
        else {
            $this->handle = &$handle;
            $this->filename = $filename;
            return true;
        }
    }

    function setCommand($command) {
        if ($command) {
            $this->command = $command;
            return false;
        } else
            return false;
    }

    function saveCronFile() {
        $command = $this->minute . " " . $this->hour . " " . $this->day . " " . $this->month . " " . $this->dayofweek . " " . $this->command . "\n";
        if (!fwrite($this->handle, $command))
            return true;
        else
            return false;
    }

    function addToCrontab() {

        if (!$this->filename)
            exit('No name specified for cron file');

        if (exec($this->crontabPath . "crontab " . $this->directory . $this->filename))
            return true;
        else
            return false;
    }

    function destroyFilePoint() {
        fclose($this->handle);
        return true;
    }

}

?>
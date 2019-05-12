SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 1;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `droit` (
  `idDROIT` int(11) NOT NULL,
  `DROITnom` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DROITdcr` date DEFAULT NULL,
  `DROITmark` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idGRBDROIT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `droit` (`idDROIT`, `DROITnom`, `DROITdcr`, `DROITmark`, `idGRBDROIT`) VALUES
(99, 'Page d\'accueil', '2015-11-24', NULL, 25),
(100, 'Full', '2017-05-27', NULL, 26),
(102, 'Consultation', '2017-10-03', '', 27),
(103, 'Cr?ation', '2017-10-03', 'consultdemapro', 27),
(104, 'Annulation', '2017-10-03', 'annulationdemapro', 27),
(105, 'Consultation', '2017-10-03', NULL, 28),
(106, 'Saisie', '2017-10-03', 'saisieinvt', 28),
(107, 'Ecart', '2017-10-03', 'ecartinvt', 28),
(108, 'Impression', '2017-10-03', 'impressioninvt', 28),
(109, 'Reinitialisation', '2017-10-03', 'reinitialisationinvt', 28),
(110, 'Consultation', '2017-10-03', NULL, 29),
(111, 'Cr?ation', '2017-10-03', 'creationfournisseur', 29),
(112, 'Suppression', '2017-10-03', 'suppressionfournisseur', 29),
(113, 'Consultation', '2017-10-03', NULL, 30),
(114, 'Cr?ation', '2017-10-03', 'creationart', 30),
(115, 'Suppr?ssion', '2017-10-03', 'suppressionart', 30),
(116, 'Gestion des cat?gories', '2017-10-03', 'catart', 30),
(118, 'Mise ? jour', '2017-10-03', 'updateart', 30),
(119, 'Consultation', '2017-10-03', NULL, 31),
(120, 'Cr?ation', '2017-10-03', 'creationentre', 31),
(121, 'Annulation', '2017-10-03', 'annulationentre', 31),
(122, 'Consultation', '2017-10-03', NULL, 32),
(123, 'Cr?ation', '2017-10-03', 'creationcons', 32),
(124, 'Annulation', '2017-10-03', 'annulationcons', 32),
(125, 'Consultation', '2017-10-03', NULL, 33),
(126, 'Consultation', '2017-10-03', NULL, 35),
(127, 'Consultation', '2017-10-03', NULL, 36),
(128, 'Consultation', '2017-10-03', NULL, 37),
(129, 'Affectation analytique', '2017-10-03', 'affectationcons', 32),
(130, 'Mise ? jour', '2017-10-03', 'updatefournisseur', 29),
(131, 'Consultation', '2018-01-17', NULL, 38),
(132, 'Cr?ation', '2018-01-17', 'creationtrans', 38),
(133, 'Livraison', '2018-01-17', 'livrasiontrans', 38),
(134, 'Annulation', '2018-01-17', 'annulationtrans', 38),
(135, 'livraison', '2018-01-19', 'validationcons', 32),
(136, 'Consultation de devis', '2019-01-13', NULL, 39),
(137, 'Consultation de bon de prod', '2019-01-13', NULL, 40),
(138, 'Consultation facture', '2019-01-15', NULL, 41),
(139, 'Consultation', '2019-02-10', NULL, 42),
(140, 'Suivie de production', '2019-03-20', NULL, 40),
(141, 'Validation de production', '2019-03-20', NULL, 40);

CREATE TABLE `droit_has_modul` (
  `idDROIT` int(11) NOT NULL,
  `idMODUL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `droit_has_modul` (`idDROIT`, `idMODUL`) VALUES
(99, 433),
(99, 434),
(99, 435),
(99, 436),
(99, 437),
(99, 438),
(99, 439),
(99, 440),
(99, 441),
(99, 442),
(99, 443),
(99, 444),
(99, 462),
(99, 463),
(99, 464),
(99, 533),
(99, 534),
(99, 535),
(99, 536),
(99, 537),
(99, 538),
(100, 433),
(100, 434),
(100, 435),
(100, 436),
(100, 437),
(100, 438),
(100, 439),
(100, 440),
(100, 441),
(100, 442),
(100, 443),
(100, 444),
(100, 455),
(100, 456),
(100, 457),
(100, 458),
(100, 459),
(100, 460),
(100, 461),
(100, 462),
(100, 463),
(100, 464),
(100, 465),
(100, 466),
(100, 467),
(100, 468),
(100, 469),
(100, 470),
(100, 471),
(100, 472),
(100, 473),
(100, 476),
(100, 477),
(100, 478),
(100, 479),
(100, 480),
(100, 481),
(100, 482),
(100, 483),
(100, 484),
(100, 485),
(100, 486),
(100, 487),
(100, 488),
(100, 489),
(100, 490),
(100, 491),
(100, 492),
(100, 493),
(100, 494),
(100, 495),
(100, 496),
(100, 497),
(100, 498),
(100, 499),
(100, 500),
(100, 503),
(100, 504),
(100, 505),
(100, 506),
(100, 507),
(100, 508),
(100, 509),
(100, 513),
(100, 514),
(100, 515),
(100, 516),
(100, 518),
(100, 519),
(100, 520),
(100, 521),
(100, 522),
(100, 523),
(100, 524),
(102, 458),
(102, 486),
(102, 487),
(102, 491),
(103, 488),
(103, 505),
(104, 489),
(104, 490),
(105, 461),
(105, 492),
(105, 494),
(105, 495),
(105, 497),
(105, 499),
(105, 500),
(106, 498),
(107, 493),
(107, 496),
(110, 518),
(110, 519),
(110, 524),
(111, 520),
(111, 522),
(112, 523),
(113, 456),
(113, 466),
(113, 470),
(113, 503),
(114, 467),
(115, 469),
(115, 526),
(116, 525),
(116, 527),
(118, 468),
(119, 460),
(119, 471),
(119, 476),
(119, 478),
(119, 479),
(120, 472),
(121, 477),
(122, 457),
(122, 480),
(122, 481),
(122, 485),
(122, 532),
(123, 482),
(123, 504),
(124, 483),
(124, 484),
(125, 506),
(125, 516),
(126, 507),
(126, 513),
(127, 508),
(127, 515),
(128, 509),
(128, 514),
(129, 528),
(129, 529),
(129, 530),
(129, 531),
(129, 532),
(130, 521),
(131, 541),
(131, 542),
(131, 544),
(132, 543),
(132, 545),
(132, 548),
(133, 546),
(134, 547),
(135, 549),
(136, 551),
(136, 552),
(136, 553),
(136, 558),
(137, 583),
(137, 584),
(137, 585),
(137, 589),
(137, 599),
(138, 590),
(138, 591),
(138, 592),
(138, 597),
(139, 601),
(139, 602),
(141, 600);

CREATE TABLE `ent` (
  `idENT` int(11) NOT NULL,
  `ENTcod` int(11) DEFAULT NULL,
  `ENTnom` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SRVidsup` int(11) DEFAULT NULL,
  `idHERA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `ent` (`idENT`, `ENTcod`, `ENTnom`, `SRVidsup`, `idHERA`) VALUES
(1, 1000, 'Administrateur', NULL, NULL);

CREATE TABLE `etat` (
  `idETAT` int(11) NOT NULL,
  `ETATnom` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `etat` (`idETAT`, `ETATnom`) VALUES
(21, 'Module dÃ©sactivÃ©'),
(22, 'Module activÃ©'),
(31, 'profil activÃ©'),
(32, 'profil dÃ©sactivÃ©');

CREATE TABLE `etatgen` (
  `idETAT` int(11) NOT NULL,
  `ETAdesc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ETAparam` text COLLATE utf8_unicode_ci NOT NULL,
  `ETAdatecr` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `exe` (
  `exe` int(11) NOT NULL,
  `idETAT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `exe` (`exe`, `idETAT`) VALUES
(2017, 52),
(2018, 52),
(2019, 51);

CREATE TABLE `grbdroit` (
  `idGRBDROIT` int(11) NOT NULL,
  `GRBDROITnom` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GRBDROITdcr` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `grbdroit` (`idGRBDROIT`, `GRBDROITnom`, `GRBDROITdcr`) VALUES
(25, 'Accueil', '2015-11-24'),
(26, 'Developpeur', '2017-05-27'),
(27, 'Demmande d\'approvisionnement', '2017-10-03'),
(28, 'Gestion de dl\'inventaire', '2017-10-03'),
(29, 'Gestion des fournisseurs', '2017-10-03'),
(30, 'Gestion des articles', '2017-10-03'),
(31, 'Entr?e en stock', '2017-10-03'),
(32, 'Consommation', '2017-10-03'),
(33, 'Etat du stock', '2017-10-03'),
(35, 'Historique des prix', '2017-10-03'),
(36, 'Stock non mouvement', '2017-10-03'),
(37, 'Consommation', '2017-10-03'),
(38, 'Transfert', '2018-01-17'),
(39, 'Gestion des devis', '2019-01-13'),
(40, 'Gestion de la production', '2019-01-13'),
(41, 'Gestion facturation', '2019-01-15'),
(42, 'Identification', '2019-02-10');

CREATE TABLE `hera` (
  `idHERA` int(11) NOT NULL,
  `HERAnom` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `mag` (
  `MAGCOD` int(11) NOT NULL,
  `MAGLIB` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MAGDCR` date DEFAULT NULL,
  `OPECOD` int(11) DEFAULT NULL,
  `OPEEXE` int(11) DEFAULT NULL,
  `TMAGCOD` int(11) DEFAULT NULL,
  `ETATCOD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `mag` (`MAGCOD`, `MAGLIB`, `MAGDCR`, `OPECOD`, `OPEEXE`, `TMAGCOD`, `ETATCOD`) VALUES
(1, '1', NULL, NULL, NULL, NULL, 0),
(2, '2', NULL, NULL, NULL, NULL, 0);

CREATE TABLE `menu` (
  `idMENU` int(11) NOT NULL,
  `MENUnom` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MENUparent` int(11) DEFAULT NULL,
  `MENUmod` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MENUicon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MENUmnseq` int(11) DEFAULT NULL,
  `MENUdcr` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `menu` (`idMENU`, `MENUnom`, `MENUparent`, `MENUmod`, `MENUicon`, `MENUmnseq`, `MENUdcr`) VALUES
(1, 'Gestion', 0, NULL, '', 12, '2017-05-27'),
(3, 'Mouvements du stock', 0, NULL, '', 19, '2017-05-27'),
(4, 'Edition', 0, NULL, '', 21, '2017-05-27'),
(5, 'Identification', 0, NULL, '', 10, '2019-02-10'),
(6, 'Menu test', 0, NULL, '', NULL, '2019-03-20');

CREATE TABLE `modul` (
  `idMODUL` int(11) NOT NULL,
  `MODULnom` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULpath` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULtask` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULmod` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULmnseq` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULdcr` date DEFAULT NULL,
  `MODULtype` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULcat` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `MODULicon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idMENU` int(11) NOT NULL,
  `MODULupdate` int(11) NOT NULL,
  `idETAT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `modul` (`idMODUL`, `MODULnom`, `MODULpath`, `MODULtask`, `MODULmod`, `MODULmnseq`, `MODULdcr`, `MODULtype`, `MODULcat`, `MODULicon`, `idMENU`, `MODULupdate`, `idETAT`) VALUES
(348, 'crudmaker-index', 'crudmaker', 'index', 'ad', NULL, '2015-11-24', 'vu', '', '', 0, 1, 21),
(349, 'crudmaker-asyn_get_shema_db2', 'crudmaker', 'asyn_get_shema_db2', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(350, 'crudmaker-asyn_get_shema_mysql', 'crudmaker', 'asyn_get_shema_mysql', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(351, 'crudmaker-asyn_compile', 'crudmaker', 'asyn_compile', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(352, 'login-index', 'login', 'index', 'ad', NULL, '2015-11-24', 'vu', '', '', 0, 1, 21),
(353, 'etatgensys-index', 'etatgensys', 'index', 'ad', NULL, '2015-11-24', 'vu', '', '', 0, 1, 21),
(354, 'etatgensys-asyn_get_config_etat', 'etatgensys', 'asyn_get_config_etat', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(355, 'etatgensys-asyn_get_shema_db2', 'etatgensys', 'asyn_get_shema_db2', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(356, 'etatgensys-asyn_get_shema_mysql', 'etatgensys', 'asyn_get_shema_mysql', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(357, 'etatgensys-asyn_get_base_mysql', 'etatgensys', 'asyn_get_base_mysql', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(358, 'etatgensys-asyn_get_table_mysql', 'etatgensys', 'asyn_get_table_mysql', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(359, 'etatgensys-asyn_get_table_column_mysql', 'etatgensys', 'asyn_get_table_column_mysql', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(360, 'etatgensys-asyn_compile', 'etatgensys', 'asyn_compile', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(361, 'gestion-index', 'gestion', 'index', 'ad', NULL, '2015-11-24', 'vu', '', '', 0, 1, 21),
(362, 'gestion-asyn_get_supser', 'gestion', 'asyn_get_supser', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(363, 'gestion-asyn_get_srvlist', 'gestion', 'asyn_get_srvlist', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(364, 'gestion-asyn_aj_prf', 'gestion', 'asyn_aj_prf', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(365, 'gestion-asyn_get_prf', 'gestion', 'asyn_get_prf', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(366, 'gestion-asyn_sup_prf', 'gestion', 'asyn_sup_prf', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(367, 'gestion-asyn_aj_util', 'gestion', 'asyn_aj_util', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(368, 'gestion-asyn_get_allutil', 'gestion', 'asyn_get_allutil', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(369, 'gestion-asyn_get_util', 'gestion', 'asyn_get_util', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(370, 'gestion-asyn_ck_login', 'gestion', 'asyn_ck_login', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(371, 'gestion-asyn_modif_util', 'gestion', 'asyn_modif_util', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(372, 'gestion-asyn_sup_util', 'gestion', 'asyn_sup_util', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(373, 'gestion-asyn_autocomplete_user', 'gestion', 'asyn_autocomplete_user', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(374, 'gestion-asyn_serch_user', 'gestion', 'asyn_serch_user', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(375, 'gestion-asyn_ajout_menu', 'gestion', 'asyn_ajout_menu', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(376, 'gestion-asyn_get_allvu', 'gestion', 'asyn_get_allvu', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(377, 'gestion-asyn_get_menulist', 'gestion', 'asyn_get_menulist', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(378, 'gestion-asyn_menu_remove', 'gestion', 'asyn_menu_remove', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(379, 'gestion-asyn_module_cat', 'gestion', 'asyn_module_cat', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(380, 'gestion-asyn_module_renome', 'gestion', 'asyn_module_renome', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(381, 'gestion-asyn_modif_menu', 'gestion', 'asyn_modif_menu', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(382, 'gestion-asyn_modif_menu_menu', 'gestion', 'asyn_modif_menu_menu', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(383, 'gestion-asyn_modif_modul', 'gestion', 'asyn_modif_modul', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(384, 'gestion-asyn_ajout_menu_icone', 'gestion', 'asyn_ajout_menu_icone', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(385, 'gestion-asyn_modif_menu_position', 'gestion', 'asyn_modif_menu_position', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(386, 'gestion-_sub_menu_position', 'gestion', '_sub_menu_position', 'ad', NULL, '2015-11-24', 'vu', '', '', 0, 1, 21),
(387, 'gestion-asyn_get_droit_list', 'gestion', 'asyn_get_droit_list', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(388, 'gestion-asyn_aj_droit', 'gestion', 'asyn_aj_droit', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(389, 'gestion-asyn_sup_droit', 'gestion', 'asyn_sup_droit', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(390, 'gestion-asyn_get_grbdoit_list', 'gestion', 'asyn_get_grbdoit_list', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(391, 'gestion-asyn_aj_grbdroit', 'gestion', 'asyn_aj_grbdroit', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(392, 'gestion-asyn_sup_grbdroit', 'gestion', 'asyn_sup_grbdroit', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(393, 'gestion-asyn_get_modul_list', 'gestion', 'asyn_get_modul_list', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(394, 'gestion-asyn_droit_moduls', 'gestion', 'asyn_droit_moduls', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(395, 'gestion-asyn_get_all_droits', 'gestion', 'asyn_get_all_droits', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(396, 'gestion-asyn_ajout_marqueur', 'gestion', 'asyn_ajout_marqueur', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(397, 'gestion-asyn_prf_droit', 'gestion', 'asyn_prf_droit', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(398, 'gestion-asyn_get_all_mag', 'gestion', 'asyn_get_all_mag', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(399, 'gestion-asyn_mag_prf', 'gestion', 'asyn_mag_prf', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(400, 'gestion-asyn_get_all_exe', 'gestion', 'asyn_get_all_exe', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(401, 'gestion-asyn_exe_prf', 'gestion', 'asyn_exe_prf', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(402, 'gestion-asyn_get_hist_action', 'gestion', 'asyn_get_hist_action', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(403, 'gestion-asyn_get_hist_action_ftr', 'gestion', 'asyn_get_hist_action_ftr', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(404, 'EditMenu-index', 'EditMenu', 'index', 'ad', NULL, '2015-11-24', 'vu', '', '', 0, 1, 21),
(405, 'EditMenu-edit', 'EditMenu', 'edit', 'ad', NULL, '2015-11-24', 'vu', '', '', 0, 1, 21),
(406, 'EditMenu-asyn_get_access_groupe', 'EditMenu', 'asyn_get_access_groupe', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(407, 'EditMenu-asyn_delete_item_access_list', 'EditMenu', 'asyn_delete_item_access_list', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(408, 'EditMenu-asyn_menu_affect', 'EditMenu', 'asyn_menu_affect', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(409, 'EditMenu-asyn_get_modules', 'EditMenu', 'asyn_get_modules', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(410, 'EditMenu-asyn_get_groupes', 'EditMenu', 'asyn_get_groupes', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(411, 'EditMenu-asyn_create_access_groupe_item', 'EditMenu', 'asyn_create_access_groupe_item', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(412, 'EditMenu-asyn_change_module_name', 'EditMenu', 'asyn_change_module_name', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(413, 'EditMenu-asyn_change_groupe_name', 'EditMenu', 'asyn_change_groupe_name', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(414, 'EditMenu-asyn_edit_access', 'EditMenu', 'asyn_edit_access', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(415, 'EditMenu-asyn_delete_menu_affectation', 'EditMenu', 'asyn_delete_menu_affectation', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(416, 'EditMenu-asyn_get_groupe_params', 'EditMenu', 'asyn_get_groupe_params', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(417, 'main-index', 'main', 'index', 'ad', NULL, '2015-11-24', 'vu', '', '', 0, 1, 21),
(418, 'main-asyn_ajout_module', 'main', 'asyn_ajout_module', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(419, 'main-asyn_get_prim_function', 'main', 'asyn_get_prim_function', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(420, 'main-asyn_deconection', 'main', 'asyn_deconection', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(421, 'main-asyn_create_exception', 'main', 'asyn_create_exception', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(422, 'main-asyn_get_msg', 'main', 'asyn_get_msg', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(423, 'main-asyn_get_exception', 'main', 'asyn_get_exception', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(424, 'main-asyn_get_all_right', 'main', 'asyn_get_all_right', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(425, 'updateMod-index', 'updateMod', 'index', 'ad', NULL, '2015-11-24', 'vu', '', '', 0, 1, 21),
(426, 'updateMod-asyn_update_ad', 'updateMod', 'asyn_update_ad', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(427, 'updateMod-asyn_update_front', 'updateMod', 'asyn_update_front', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(428, 'updateMod-asyn_reset_update_state', 'updateMod', 'asyn_reset_update_state', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(429, 'updateMod-asyn_get_com_arborecense', 'updateMod', 'asyn_get_com_arborecense', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(430, 'updateMod-asyn_get_net_modul', 'updateMod', 'asyn_get_net_modul', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(431, 'updateMod-asyn_supp_perim_modul', 'updateMod', 'asyn_supp_perim_modul', 'ad', NULL, '2015-11-24', 'asyn', '', '', 0, 1, 21),
(432, 'Page de connection', 'login', 'index', 'front', NULL, '2015-11-24', 'vu', '', '', 0, 1, 21),
(433, 'Page d\'accueil', 'main', 'index', 'front', NULL, '2015-11-24', 'vu', 'P', '', 0, 1, 21),
(434, 'Deconnection', 'main', 'asyn_deconection', 'front', NULL, '2015-11-24', 'asyn', 'P', '', 0, 1, 21),
(435, 'RecupÃ©rer les paramÃ©tre de l\'utilisateu', 'main', 'asyn_get_profil_det', 'front', NULL, '2015-11-24', 'asyn', 'P', '', 0, 1, 21),
(436, 'RecupÃ©rer le nom de l\'utilisateur', 'main', 'asyn_get_utilog', 'front', NULL, '2015-11-24', 'asyn', 'P', '', 0, 1, 21),
(437, 'Sauvegarder les paramÃ©tre utilisateur', 'main', 'asyn_sauv_profil', 'front', NULL, '2015-11-24', 'asyn', 'P', '', 0, 1, 21),
(438, 'Generer une exception', 'main', 'asyn_create_exception', 'front', NULL, '2015-11-24', 'asyn', 'P', '', 0, 1, 21),
(439, 'RecupÃ©rer message', 'main', 'asyn_get_msg', 'front', NULL, '2015-11-24', 'asyn', 'P', '', 0, 1, 21),
(440, 'RecupÃ©rer exception', 'main', 'asyn_get_exception', 'front', NULL, '2015-11-24', 'asyn', 'P', '', 0, 1, 21),
(441, 'Changer Exercice', 'main', 'asyn_change_exe', 'front', NULL, '2015-11-24', 'asyn', 'P', '', 0, 1, 21),
(442, 'Changer un magasin', 'main', 'asyn_change_mag', 'front', NULL, '2015-11-24', 'asyn', 'P', '', 0, 1, 21),
(443, 'Exercice courant', 'main', 'asyn_get_curent_exe', 'front', NULL, '2015-11-24', 'asyn', 'P', '', 0, 1, 21),
(444, 'Lire tout les droits de l\'utilisateur', 'main', 'asyn_get_all_right', 'front', NULL, '2015-11-24', 'asyn', 'P', '', 0, 1, 21),
(445, 'etatgen-index', 'etatgen', 'index', 'ad', NULL, '2017-05-27', 'vu', '', '', 0, 1, 21),
(446, 'etatgen-asyn_get_shema_db2', 'etatgen', 'asyn_get_shema_db2', 'ad', NULL, '2017-05-27', 'asyn', '', '', 0, 1, 21),
(447, 'etatgen-asyn_get_shema_mysql', 'etatgen', 'asyn_get_shema_mysql', 'ad', NULL, '2017-05-27', 'asyn', '', '', 0, 1, 21),
(448, 'etatgen-asyn_get_base_mysql', 'etatgen', 'asyn_get_base_mysql', 'ad', NULL, '2017-05-27', 'asyn', '', '', 0, 1, 21),
(449, 'etatgen-asyn_get_table_mysql', 'etatgen', 'asyn_get_table_mysql', 'ad', NULL, '2017-05-27', 'asyn', '', '', 0, 1, 21),
(450, 'etatgen-asyn_get_table_column_mysql', 'etatgen', 'asyn_get_table_column_mysql', 'ad', NULL, '2017-05-27', 'asyn', '', '', 0, 1, 21),
(451, 'etatgen-asyn_compile', 'etatgen', 'asyn_compile', 'ad', NULL, '2017-05-27', 'asyn', '', '', 0, 1, 21),
(452, 'crudmaker-asyn_get_base_mysql', 'crudmaker', 'asyn_get_base_mysql', 'ad', NULL, '2017-05-27', 'asyn', '', '', 0, 1, 21),
(453, 'crudmaker-asyn_get_table_mysql', 'crudmaker', 'asyn_get_table_mysql', 'ad', NULL, '2017-05-27', 'asyn', '', '', 0, 1, 21),
(454, 'crudmaker-asyn_get_table_column_mysql', 'crudmaker', 'asyn_get_table_column_mysql', 'ad', NULL, '2017-05-27', 'asyn', '', '', 0, 1, 21),
(456, 'Gestion des articles', 'article', 'index', 'front', '18', '2017-05-27', 'vu', '', '', 1, 1, 21),
(457, 'Sortie client', 'consommation', 'index', 'front', '18', '2017-05-27', 'vu', '', '', 0, 1, 21),
(460, 'Approvisionnement MP', 'entree', 'index', 'front', '20', '2017-05-27', 'vu', '', '', 3, 1, 21),
(461, 'Gestion de l\'inventaire', 'inventaire', 'index', 'front', '16', '2017-05-27', 'vu', '', '', 1, 1, 21),
(462, 'main-asyn_getautoselect', 'main', 'asyn_getautoselect', 'front', NULL, '2017-05-27', 'asyn', '', '', 0, 1, 21),
(463, 'main-asyn_add_entitie', 'main', 'asyn_add_entitie', 'front', NULL, '2017-05-27', 'asyn', '', '', 0, 1, 21),
(464, 'main-asyn_getautoselectsearch', 'main', 'asyn_getautoselectsearch', 'front', NULL, '2017-05-27', 'asyn', '', '', 0, 1, 21),
(466, 'article-asyn_get_article', 'article', 'asyn_get_article', 'front', NULL, '2017-05-29', 'asyn', '', '', 0, 1, 21),
(467, 'article-asyn_ajout_article', 'article', 'asyn_ajout_article', 'front', NULL, '2017-05-29', 'asyn', '', '', 0, 1, 21),
(468, 'article-asyn_update_article', 'article', 'asyn_update_article', 'front', NULL, '2017-05-29', 'asyn', '', '', 0, 1, 21),
(469, 'article-asyn_delete_article', 'article', 'asyn_delete_article', 'front', NULL, '2017-05-29', 'asyn', '', '', 0, 1, 21),
(470, 'article-asyn_get_artuniqcode', 'article', 'asyn_get_artuniqcode', 'front', NULL, '2017-05-29', 'asyn', '', '', 0, 1, 21),
(471, 'entree-asyn_get_entree', 'entree', 'asyn_get_entree', 'front', NULL, '2017-05-29', 'asyn', '', '', 0, 1, 21),
(472, 'entree-asyn_ajout_entree', 'entree', 'asyn_ajout_entree', 'front', NULL, '2017-05-29', 'asyn', '', '', 0, 1, 21),
(473, 'entree-asyn_update_entree', 'entree', 'asyn_update_entree', 'front', NULL, '2017-05-29', 'asyn', '', '', 0, 1, 21),
(476, 'entree-asyn_get_entree_object', 'entree', 'asyn_get_entree_object', 'front', NULL, '2017-06-17', 'asyn', '', '', 0, 1, 21),
(477, 'entree-asyn_annulation_entree', 'entree', 'asyn_annulation_entree', 'front', NULL, '2017-06-17', 'asyn', '', '', 0, 1, 21),
(478, 'entree-asyn_get_entuniqcode', 'entree', 'asyn_get_entuniqcode', 'front', NULL, '2017-06-17', 'asyn', '', '', 0, 1, 21),
(479, 'entree-asyn_get_entuniqcodetrace', 'entree', 'asyn_get_entuniqcodetrace', 'front', NULL, '2017-06-17', 'asyn', '', '', 0, 1, 21),
(480, 'consommation-asyn_get_cons', 'consommation', 'asyn_get_cons', 'front', NULL, '2017-06-17', 'asyn', '', '', 0, 1, 21),
(481, 'consommation-asyn_get_cons_object', 'consommation', 'asyn_get_cons_object', 'front', NULL, '2017-06-17', 'asyn', '', '', 0, 1, 21),
(482, 'consommation-asyn_ajout_cons', 'consommation', 'asyn_ajout_cons', 'front', NULL, '2017-06-17', 'asyn', '', '', 0, 1, 21),
(483, 'consommation-asyn_annulation_cons', 'consommation', 'asyn_annulation_cons', 'front', NULL, '2017-06-17', 'asyn', '', '', 0, 1, 21),
(484, 'consommation-asyn_update_cons', 'consommation', 'asyn_update_cons', 'front', NULL, '2017-06-17', 'asyn', '', '', 0, 1, 21),
(485, 'consommation-asyn_get_consuniqcode', 'consommation', 'asyn_get_consuniqcode', 'front', NULL, '2017-06-17', 'asyn', '', '', 0, 1, 21),
(492, 'inventaire-get_stk', 'inventaire', 'get_stk', 'front', NULL, '2017-06-17', 'vu', '', '', 0, 1, 21),
(493, 'inventaire-asyn_gen_ecart', 'inventaire', 'asyn_gen_ecart', 'front', NULL, '2017-06-17', 'asyn', '', '', 0, 1, 21),
(494, 'inventaire-asyn_invttable_state', 'inventaire', 'asyn_invttable_state', 'front', NULL, '2017-06-17', 'asyn', '', '', 0, 1, 21),
(495, 'inventaire-asyn_gen_invttable', 'inventaire', 'asyn_gen_invttable', 'front', NULL, '2017-06-17', 'asyn', '', '', 0, 1, 21),
(496, 'inventaire-asyn_rds_stck', 'inventaire', 'asyn_rds_stck', 'front', NULL, '2017-06-17', 'asyn', '', '', 0, 1, 21),
(497, 'inventaire-asyn_get_ivntbrd', 'inventaire', 'asyn_get_ivntbrd', 'front', NULL, '2017-06-17', 'asyn', '', '', 0, 1, 21),
(498, 'inventaire-asyn_save_ivntbrd', 'inventaire', 'asyn_save_ivntbrd', 'front', NULL, '2017-06-17', 'asyn', '', '', 0, 1, 21),
(499, 'inventaire-asyn_get_consuniqcode', 'inventaire', 'asyn_get_consuniqcode', 'front', NULL, '2017-06-17', 'asyn', '', '', 0, 1, 21),
(500, 'inventaire-asyn_get_entuniqcode', 'inventaire', 'asyn_get_entuniqcode', 'front', NULL, '2017-06-17', 'asyn', '', '', 0, 1, 21),
(503, 'article-asyn_stock_article', 'article', 'asyn_stock_article', 'front', NULL, '2017-06-27', 'asyn', '', '', 0, 1, 21),
(504, 'consommation-asyn_chk_art_cons', 'consommation', 'asyn_chk_art_cons', 'front', NULL, '2017-06-27', 'asyn', '', '', 0, 1, 21),
(506, 'Etat du stock', 'edition', 'stk', 'front', '22', '2017-06-27', 'vu', '', '', 4, 1, 21),
(507, 'Historique de prix', 'edition', 'histprix', 'front', '23', '2017-06-27', 'vu', '', '', 4, 1, 21),
(508, 'Stock non mouvement', 'edition', 'stknmvt', 'front', '24', '2017-06-27', 'vu', '', '', 4, 1, 21),
(509, 'Etat de consommations', 'edition', 'cons', 'front', '25', '2017-06-27', 'vu', '', '', 4, 1, 21),
(513, 'edition-asyn_get_histprix', 'edition', 'asyn_get_histprix', 'front', NULL, '2017-07-02', 'asyn', '', '', 0, 1, 21),
(514, 'edition-asyn_get_cons', 'edition', 'asyn_get_cons', 'front', NULL, '2017-07-02', 'asyn', '', '', 0, 1, 21),
(515, 'edition-asyn_get_nmvt', 'edition', 'asyn_get_nmvt', 'front', NULL, '2017-07-02', 'asyn', '', '', 0, 1, 21),
(516, 'edition-asyn_get_stk', 'edition', 'asyn_get_stk', 'front', NULL, '2017-07-02', 'asyn', '', '', 0, 1, 21),
(517, 'parametrage-index', 'parametrage', 'index', 'front', NULL, '2017-07-02', 'vu', '', '', 0, 1, 21),
(518, 'Gestion des clients/fournisseur', 'fournisseur', 'index', 'front', '17', '2017-07-02', 'vu', '', '', 1, 1, 21),
(519, 'fournisseur-asyn_get_fournisseur', 'fournisseur', 'asyn_get_fournisseur', 'front', NULL, '2017-07-02', 'asyn', '', '', 0, 1, 21),
(520, 'fournisseur-asyn_ajout_fournisseur', 'fournisseur', 'asyn_ajout_fournisseur', 'front', NULL, '2017-07-02', 'asyn', '', '', 0, 1, 21),
(521, 'fournisseur-asyn_update_fournisseur', 'fournisseur', 'asyn_update_fournisseur', 'front', NULL, '2017-07-02', 'asyn', '', '', 0, 1, 21),
(523, 'fournisseur-asyn_delete_fournisseur', 'fournisseur', 'asyn_delete_fournisseur', 'front', NULL, '2017-07-02', 'asyn', '', '', 0, 1, 21),
(525, 'article-asyn_ajout_cat', 'article', 'asyn_ajout_cat', 'front', NULL, '2017-10-03', 'asyn', '', '', 0, 1, 21),
(526, 'article-asyn_supp_art', 'article', 'asyn_supp_art', 'front', NULL, '2017-10-03', 'asyn', '', '', 0, 1, 21),
(527, 'article-asyn_supp_cat', 'article', 'asyn_supp_cat', 'front', NULL, '2017-10-03', 'asyn', '', '', 0, 1, 21),
(528, 'consommation-asyn_ajout_typeaff', 'consommation', 'asyn_ajout_typeaff', 'front', NULL, '2017-10-03', 'asyn', '', '', 0, 1, 21),
(529, 'consommation-asyn_ajout_aff', 'consommation', 'asyn_ajout_aff', 'front', NULL, '2017-10-03', 'asyn', '', '', 0, 1, 21),
(530, 'consommation-asyn_supp_typeaff', 'consommation', 'asyn_supp_typeaff', 'front', NULL, '2017-10-03', 'asyn', '', '', 0, 1, 21),
(531, 'consommation-asyn_supp_aff', 'consommation', 'asyn_supp_aff', 'front', NULL, '2017-10-03', 'asyn', '', '', 0, 1, 21),
(532, 'consommation-asyn_getautoselectaff', 'consommation', 'asyn_getautoselectaff', 'front', NULL, '2017-10-03', 'asyn', '', '', 0, 1, 21),
(533, 'parametrage-asyn_state_stktable', 'parametrage', 'asyn_state_stktable', 'front', NULL, '2017-10-03', 'asyn', '', '', 0, 1, 21),
(534, 'parametrage-asyn_gen_stktable', 'parametrage', 'asyn_gen_stktable', 'front', NULL, '2017-10-03', 'asyn', '', '', 0, 1, 21),
(535, 'parametrage-asyn_get_nbalert_stk', 'parametrage', 'asyn_get_nbalert_stk', 'front', NULL, '2017-10-03', 'asyn', '', '', 0, 1, 21),
(536, 'parametrage-asyn_get_alert_stk', 'parametrage', 'asyn_get_alert_stk', 'front', NULL, '2017-10-03', 'asyn', '', '', 0, 1, 21),
(537, 'parametrage-asyn_gen_alert_stk', 'parametrage', 'asyn_gen_alert_stk', 'front', NULL, '2017-10-03', 'asyn', '', '', 0, 1, 21),
(538, 'main-asyn_isadmin', 'main', 'asyn_isadmin', 'front', NULL, '2017-10-04', 'asyn', '', '', 0, 1, 21),
(539, 'gestion-asyn_get_ouvexe', 'gestion', 'asyn_get_ouvexe', 'ad', NULL, '2018-01-17', 'asyn', '', '', 0, 1, 21),
(540, 'main-asyn_isadmin', 'main', 'asyn_isadmin', 'ad', NULL, '2018-01-17', 'asyn', '', '', 0, 1, 21),
(541, 'Transferts inter-magsin', 'transfert', 'index', 'front', '19', '2018-01-17', 'vu', '', '', 0, 1, 21),
(542, 'transfert-asyn_get_trans', 'transfert', 'asyn_get_trans', 'front', NULL, '2018-01-17', 'asyn', '', '', 0, 1, 21),
(543, 'transfert-asyn_chk_art_trans', 'transfert', 'asyn_chk_art_trans', 'front', NULL, '2018-01-17', 'asyn', '', '', 0, 1, 21),
(544, 'transfert-asyn_get_trans_object', 'transfert', 'asyn_get_trans_object', 'front', NULL, '2018-01-17', 'asyn', '', '', 0, 1, 21),
(545, 'transfert-asyn_ajout_dem_trans', 'transfert', 'asyn_ajout_dem_trans', 'front', NULL, '2018-01-17', 'asyn', '', '', 0, 1, 21),
(546, 'transfert-asyn_liv_trans', 'transfert', 'asyn_liv_trans', 'front', NULL, '2018-01-17', 'asyn', '', '', 0, 1, 21),
(547, 'transfert-asyn_annulation_trans', 'transfert', 'asyn_annulation_trans', 'front', NULL, '2018-01-17', 'asyn', '', '', 0, 1, 21),
(548, 'transfert-asyn_get_transuniqcode', 'transfert', 'asyn_get_transuniqcode', 'front', NULL, '2018-01-17', 'asyn', '', '', 0, 1, 21),
(549, 'consommation-asyn_liv_cons', 'consommation', 'asyn_liv_cons', 'front', NULL, '2018-01-19', 'asyn', '', '', 0, 1, 21),
(550, 'main-asyn_get_mag', 'main', 'asyn_get_mag', 'front', NULL, '2018-01-19', 'asyn', '', '', 0, 1, 21),
(551, 'Gestion des Devis/BC', 'devis', 'index', 'front', '13', '2019-01-13', 'vu', '', '', 1, 1, 21),
(552, 'devis-asyn_get_data', 'devis', 'asyn_get_data', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(553, 'devis-asyn_get_data_object', 'devis', 'asyn_get_data_object', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(554, 'devis-asyn_ajout_data', 'devis', 'asyn_ajout_data', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(555, 'devis-asyn_ajout_data_auto', 'devis', 'asyn_ajout_data_auto', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 0, 21),
(556, 'devis-asyn_annulation_data', 'devis', 'asyn_annulation_data', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(557, 'devis-asyn_update_data', 'devis', 'asyn_update_data', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 0, 21),
(558, 'devis-asyn_get_datauniqcode', 'devis', 'asyn_get_datauniqcode', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(559, 'bcn-index', 'bcn', 'index', 'front', NULL, '2019-01-13', 'vu', '', '', 0, 1, 21),
(560, 'Gestion de la production', 'bord', 'index', 'front', NULL, '2019-01-13', 'vu', '', '', 0, 1, 21),
(561, 'bord-async_generer_brd', 'bord', 'async_generer_brd', 'front', NULL, '2019-01-13', 'sync', '', '', 0, 1, 21),
(562, 'etatgensys-index', 'etatgensys', 'index', 'front', NULL, '2019-01-13', 'vu', '', '', 0, 1, 21),
(563, 'etatgensys-asyn_get_config_etat', 'etatgensys', 'asyn_get_config_etat', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(564, 'etatgensys-asyn_get_shema_db2', 'etatgensys', 'asyn_get_shema_db2', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(565, 'etatgensys-asyn_get_shema_mysql', 'etatgensys', 'asyn_get_shema_mysql', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(566, 'etatgensys-asyn_get_base_mysql', 'etatgensys', 'asyn_get_base_mysql', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(567, 'etatgensys-asyn_get_table_mysql', 'etatgensys', 'asyn_get_table_mysql', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(568, 'etatgensys-asyn_get_table_column_mysql', 'etatgensys', 'asyn_get_table_column_mysql', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(569, 'etatgensys-asyn_compile', 'etatgensys', 'asyn_compile', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(570, 'gestart-index', 'gestart', 'index', 'front', NULL, '2019-01-13', 'vu', '', '', 0, 1, 21),
(571, 'gestart-async_search_arts', 'gestart', 'async_search_arts', 'front', NULL, '2019-01-13', 'sync', '', '', 0, 1, 21),
(572, 'gestart-async_get_art', 'gestart', 'async_get_art', 'front', NULL, '2019-01-13', 'sync', '', '', 0, 1, 21),
(573, 'gestart-async_supp_art', 'gestart', 'async_supp_art', 'front', NULL, '2019-01-13', 'sync', '', '', 0, 1, 21),
(574, 'gestart-async_ajout_art', 'gestart', 'async_ajout_art', 'front', NULL, '2019-01-13', 'sync', '', '', 0, 1, 21),
(575, 'gestart-async_update_art', 'gestart', 'async_update_art', 'front', NULL, '2019-01-13', 'sync', '', '', 0, 1, 21),
(576, 'habillement-index', 'habillement', 'index', 'front', NULL, '2019-01-13', 'vu', '', '', 0, 1, 21),
(577, 'habillement-asyn_get_hab', 'habillement', 'asyn_get_hab', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(578, 'main-updateSchemaDoctrin', 'main', 'updateSchemaDoctrin', 'front', NULL, '2019-01-13', 'vu', '', '', 0, 1, 21),
(579, 'majbrd-index', 'majbrd', 'index', 'front', NULL, '2019-01-13', 'vu', '', '', 0, 1, 21),
(580, 'majbrd-asyn_get_brd_page', 'majbrd', 'asyn_get_brd_page', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(581, 'majbrd-asyn_save_brd_page', 'majbrd', 'asyn_save_brd_page', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(582, 'devis-asyn_genbc', 'devis', 'asyn_genbc', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(583, 'Gestion de la production', 'prod', 'index', 'front', '14', '2019-01-13', 'vu', '', '', 1, 1, 21),
(584, 'prod-asyn_get_data', 'prod', 'asyn_get_data', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(585, 'prod-asyn_get_data_object', 'prod', 'asyn_get_data_object', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(586, 'prod-asyn_ajout_data', 'prod', 'asyn_ajout_data', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(587, 'prod-asyn_annulation_data', 'prod', 'asyn_annulation_data', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(588, 'prod-asyn_genbc', 'prod', 'asyn_genbc', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 0, 21),
(589, 'prod-asyn_get_datauniqcode', 'prod', 'asyn_get_datauniqcode', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(590, 'Gestion des factures/BL', 'facturation', 'index', 'front', '15', '2019-01-15', 'vu', '', '', 1, 1, 21),
(591, 'facturation-asyn_get_data', 'facturation', 'asyn_get_data', 'front', NULL, '2019-01-15', 'asyn', '', '', 0, 1, 21),
(592, 'facturation-asyn_get_data_object', 'facturation', 'asyn_get_data_object', 'front', NULL, '2019-01-15', 'asyn', '', '', 0, 1, 21),
(593, 'facturation-asyn_ajout_data', 'facturation', 'asyn_ajout_data', 'front', NULL, '2019-01-15', 'asyn', '', '', 0, 1, 21),
(594, 'facturation-asyn_annulation_data', 'facturation', 'asyn_annulation_data', 'front', NULL, '2019-01-15', 'asyn', '', '', 0, 1, 21),
(595, 'facturation-asyn_genprod', 'facturation', 'asyn_genprod', 'front', NULL, '2019-01-15', 'asyn', '', '', 0, 0, 21),
(596, 'facturation-asyn_validprod', 'facturation', 'asyn_validprod', 'front', NULL, '2019-01-15', 'asyn', '', '', 0, 1, 21),
(597, 'facturation-asyn_get_datauniqcode', 'facturation', 'asyn_get_datauniqcode', 'front', NULL, '2019-01-15', 'asyn', '', '', 0, 1, 21),
(598, 'prod-asyn_chek_article_frs_stock', 'prod', 'asyn_chek_article_frs_stock', 'front', NULL, '2019-01-15', 'asyn', '', '', 0, 1, 21),
(599, 'prod-asyn_genprod', 'prod', 'asyn_genprod', 'front', NULL, '2019-01-15', 'asyn', '', '', 0, 1, 21),
(600, 'prod-asyn_validprod', 'prod', 'asyn_validprod', 'front', NULL, '2019-01-15', 'asyn', '', '', 0, 1, 21),
(601, 'Identification', 'edition', 'identification', 'front', '11', '2019-02-10', 'vu', '', '', 5, 1, 21),
(602, 'edition-asyn_get_ident', 'edition', 'asyn_get_ident', 'front', NULL, '2019-02-10', 'asyn', '', '', 0, 1, 21),
(603, 'facturation-asyn_genfact', 'facturation', 'asyn_genfact', 'front', NULL, '2019-02-10', 'asyn', '', '', 0, 1, 21);

CREATE TABLE `oper` (
  `idOPER` int(11) NOT NULL,
  `idMODUL` int(11) NOT NULL,
  `actionOPER` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descriptOPER` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateOPER` datetime NOT NULL,
  `catOPER` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `idPRF` int(11) NOT NULL,
  `IDUTIL` int(11) NOT NULL,
  `UTINOM` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UTIPNOM` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `paramOPER` text COLLATE utf8_unicode_ci NOT NULL,
  `ipOPER` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `prf` (
  `idPRF` int(11) NOT NULL,
  `PRFnom` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRFtype` int(11) DEFAULT NULL,
  `PRFdcr` date DEFAULT NULL,
  `idENT` int(11) NOT NULL,
  `PRFetat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `prf` (`idPRF`, `PRFnom`, `PRFtype`, `PRFdcr`, `idENT`, `PRFetat`) VALUES
(0, 'Supper administrateur', 2, '2015-11-24', 1, 31),
(1, 'Utilisateur', 2, '2017-10-03', 1, 31),
(2, 'Magasinier', 2, '2019-03-20', 1, 31);

CREATE TABLE `prf_has_droit` (
  `idPRF` int(11) NOT NULL,
  `idDROIT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `prf_has_droit` (`idPRF`, `idDROIT`) VALUES
(0, 99),
(0, 102),
(0, 103),
(0, 104),
(0, 105),
(0, 106),
(0, 107),
(0, 108),
(0, 109),
(0, 110),
(0, 111),
(0, 112),
(0, 113),
(0, 114),
(0, 115),
(0, 116),
(0, 118),
(0, 119),
(0, 120),
(0, 121),
(0, 122),
(0, 123),
(0, 124),
(0, 125),
(0, 126),
(0, 127),
(0, 128),
(0, 129),
(0, 130),
(0, 131),
(0, 132),
(0, 133),
(0, 135),
(0, 136),
(0, 137),
(0, 138),
(0, 139),
(1, 99),
(1, 102),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 107),
(1, 108),
(1, 109),
(1, 110),
(1, 111),
(1, 112),
(1, 113),
(1, 114),
(1, 115),
(1, 116),
(1, 118),
(1, 119),
(1, 120),
(1, 121),
(1, 122),
(1, 123),
(1, 124),
(1, 125),
(1, 126),
(1, 127),
(1, 128),
(1, 129),
(1, 130),
(2, 99),
(2, 113),
(2, 119),
(2, 120),
(2, 121),
(2, 137),
(2, 140),
(2, 141);

CREATE TABLE `prf_has_exe` (
  `id` int(11) NOT NULL,
  `idPRF` int(11) NOT NULL,
  `exe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `prf_has_exe` (`id`, `idPRF`, `exe`) VALUES
(2, 0, 2017),
(3, 0, 2018),
(7, 2, 2018);

CREATE TABLE `prf_has_mag` (
  `idPRF` int(11) NOT NULL,
  `MAGCOD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `prf_has_mag` (`idPRF`, `MAGCOD`) VALUES
(0, 1),
(0, 2),
(1, 1);

CREATE TABLE `stk_affectation_analityque` (
  `affectation_code` int(11) NOT NULL,
  `affectation_designation` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `affectation_type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stk_affectation_type` (
  `afftype_code` int(11) NOT NULL,
  `afftype_designation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stk_article` (
  `art_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `art_designation` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `art_unite` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `art_description` mediumtext COLLATE utf8_unicode_ci,
  `art_image` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `art_DDM` datetime DEFAULT NULL,
  `art_dernierPrix` double DEFAULT NULL,
  `art_dateCreation` datetime DEFAULT NULL,
  `art_delaisLivraison` int(11) DEFAULT NULL,
  `art_coutPossetion` double DEFAULT NULL,
  `art_coutPassation` double DEFAULT NULL,
  `art_stockMinimale` double DEFAULT NULL,
  `art_prix` double DEFAULT NULL,
  `art_tva` int(11) DEFAULT NULL,
  `art_categorieCode` int(11) DEFAULT NULL,
  `art_etatCode` int(11) DEFAULT NULL,
  `art_class` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stk_article_fournisseur` (
  `art_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `frs_code` int(11) NOT NULL,
  `frs_artRef` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frs_artEtatCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stk_categorie_article` (
  `catart_code` int(11) NOT NULL,
  `catart_designation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stk_consomation_detail` (
  `cons_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cons_exercice` int(11) DEFAULT NULL,
  `cons_seq` int(11) DEFAULT NULL,
  `cons_qte` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cons_qtedem` double DEFAULT NULL,
  `cons_traceCode` int(11) DEFAULT NULL,
  `Cons_lotTraceCode` int(11) DEFAULT NULL,
  `cons_artCode` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stk_consomation_entete` (
  `cons_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cons_exercice` int(11) DEFAULT NULL,
  `cons_magCode` int(11) DEFAULT NULL,
  `cons_type` int(11) DEFAULT NULL,
  `cons_motif` int(11) DEFAULT NULL,
  `cons_observation` longtext COLLATE utf8_unicode_ci,
  `cons_date` datetime DEFAULT NULL,
  `cons_datedem` datetime DEFAULT NULL,
  `cons_clientCode` int(11) DEFAULT NULL,
  `cons_affectationCode` int(11) DEFAULT NULL,
  `cons_affectationTypeCode` int(11) DEFAULT NULL,
  `cons_etatCode` int(11) DEFAULT NULL,
  `cons_artCode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stk_consommation_motif` (
  `consmot_code` int(11) NOT NULL,
  `consmot_lib` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stk_consommation_prod` (
  `cons_prod_id` int(11) NOT NULL,
  `cons_journe_id` int(11) DEFAULT NULL,
  `consprod_article_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `consprod_qte` double DEFAULT NULL,
  `consprod_code_frs` int(11) DEFAULT NULL,
  `consprod_date_peromption` datetime DEFAULT NULL,
  `consprod_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stk_dem_appro_det` (
  `demapro_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `demapro_seq` int(11) DEFAULT NULL,
  `demapro_qte` double DEFAULT NULL,
  `demapro_qteStk` double DEFAULT NULL,
  `demapro_artCode` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stk_dem_appro_ent` (
  `demapro_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `demapro_exercice` int(11) DEFAULT NULL,
  `demapro_magCode` int(11) DEFAULT NULL,
  `demapro_date` date DEFAULT NULL,
  `demapro_etatCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stk_devise` (
  `devise_code` int(11) NOT NULL,
  `devise_libelle` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `stk_devise` (`devise_code`, `devise_libelle`) VALUES
(1, 'Euro'),
(2, 'Dolars'),
(3, 'Dinars');

CREATE TABLE `stk_entre_detail` (
  `ent_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tva_code` int(11) DEFAULT NULL,
  `ent_exercice` int(11) DEFAULT NULL,
  `ent_qte` double DEFAULT NULL,
  `ent_qteSurplus` double DEFAULT NULL,
  `ent_datePeromption` datetime DEFAULT NULL,
  `ent_PU` double DEFAULT NULL,
  `ent_PTT` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ent_prixTotale` double DEFAULT NULL,
  `ent_codeTrace` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ent_lotCodeTrace` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ent_artTraceEtatCode` int(11) DEFAULT NULL,
  `ent_seq` int(11) DEFAULT NULL,
  `ent_artCode` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stk_entre_entete` (
  `ent_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ent_exercice` int(11) DEFAULT NULL,
  `ent_bcOlCode` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ent_bcOlExercice` int(11) DEFAULT NULL,
  `ent_contratCode` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ent_contratExercice` int(11) DEFAULT NULL,
  `ent_magRecepCode` int(11) DEFAULT NULL,
  `ent_dateReception` datetime DEFAULT NULL,
  `ent_numBL` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ent_dateBL` date DEFAULT NULL,
  `ent_numFacture` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ent_dateFacture` date DEFAULT NULL,
  `ent_typeCode` int(11) DEFAULT NULL,
  `ent_motifCode` int(11) DEFAULT NULL,
  `ent_numTransit` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ent_devise` double DEFAULT NULL,
  `ent_cours` double DEFAULT NULL,
  `ent_valeurTotaleDT` double DEFAULT NULL,
  `ent_observation` text COLLATE utf8_unicode_ci,
  `ent_etatCode` int(11) DEFAULT NULL,
  `ent_fournisseurCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stk_etat` (
  `etat_code` int(11) NOT NULL,
  `etat_libelle` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `stk_etat` (`etat_code`, `etat_libelle`) VALUES
(11, 'Article Actif'),
(12, 'Artice non actif '),
(21, 'Article actif pour se forunisseur'),
(22, 'Article non actif pour se fournisseur'),
(31, 'Entree Active'),
(32, 'Entree annule'),
(33, 'Entr?e de redressement'),
(41, 'Code de tra?abilit? actif en stock'),
(42, 'Code de tra?abilit? non actif en stock'),
(51, 'Sortie en instance'),
(52, 'Sortie livr'),
(53, 'Sortie Annul'),
(54, 'Sortie de redressement'),
(61, 'Borderau inventaire genérer'),
(62, 'Bordereau inventaire saisie'),
(63, 'Borderau inventaire ecart calcul'),
(71, 'Devis Cr'),
(72, 'Devis Valid'),
(73, 'Devis Annul'),
(74, 'Bc générer'),
(75, 'Bon de prod générer'),
(76, 'Bon de prod valider'),
(77, 'facture BL générer'),
(81, 'Fournisseur actif'),
(82, 'Fournisseur non actif'),
(91, 'Trasfert cre'),
(92, 'Transfert livr'),
(93, 'Transfert annul');

CREATE TABLE `stk_fournisseur` (
  `frs_code` int(11) NOT NULL,
  `frs_raisonSociale` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frs_adresse` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frs_tel` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frs_fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frs_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frs_logo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frs_mf` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frs_etatCode` int(11) DEFAULT NULL,
  `frs_typeCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stk_inventaire` (
  `mag_code` int(11) NOT NULL,
  `exercice` int(11) NOT NULL,
  `art_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `inv_etat` int(11) DEFAULT NULL,
  `invt_date` date DEFAULT NULL,
  `invt_qte` double DEFAULT NULL,
  `inv_stkaDateInvt` double DEFAULT NULL,
  `inv_ecart` double DEFAULT NULL,
  `inv_num_borderau` int(11) DEFAULT NULL,
  `inv_observation` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stk_journe_prod` (
  `cons_journe_id` int(11) NOT NULL,
  `prod_detail_id` int(11) DEFAULT NULL,
  `journe_qte` double DEFAULT NULL,
  `journe_date` datetime DEFAULT NULL,
  `journe_date_peromption` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stk_production` (
  `prod_id` int(11) NOT NULL,
  `prod_code_devis_bc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prod_code_Prod` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prod_code_bl` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prod_code_facture` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prod_code_mag` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prod_code_client` int(11) DEFAULT NULL,
  `prod_exercice_devis` int(11) DEFAULT NULL,
  `prod_exercice_Bc` int(11) DEFAULT NULL,
  `prod_exercice_Blfacture` int(11) DEFAULT NULL,
  `prod_code_etat` int(11) DEFAULT NULL,
  `prod_prix_totale` double DEFAULT NULL,
  `prod_prix_totale_ttc` double DEFAULT NULL,
  `prod_date_devis` datetime DEFAULT NULL,
  `prod_date_Bc` datetime DEFAULT NULL,
  `prod_date_prod` datetime DEFAULT NULL,
  `prod_date_Bl` datetime DEFAULT NULL,
  `prod_date_facture` datetime DEFAULT NULL,
  `prod_exercice_prod` int(11) DEFAULT NULL,
  `prod_devise` int(11) DEFAULT NULL,
  `prod_commerciale` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stk_production_detail` (
  `prod_detail_id` int(11) NOT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `proddetail_article_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proddetail_date_peromption` datetime DEFAULT NULL,
  `proddetail_qte_devis` double DEFAULT NULL,
  `proddetail_qte_bc` double DEFAULT NULL,
  `proddetail_qte_prod` double DEFAULT NULL,
  `proddetail_code_frs` int(11) DEFAULT NULL,
  `proddetail_prix_unitaire` double DEFAULT NULL,
  `proddetail_prix_unitaire_devise` double DEFAULT NULL,
  `proddetail_tva` int(11) DEFAULT NULL,
  `proddetail_etat` int(11) DEFAULT NULL,
  `proddetail_prix_unitaire_devis` double DEFAULT NULL,
  `proddetail_prix_unitaire_devise_devis` double DEFAULT NULL,
  `proddetail_tva_devise` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stk_rds` (
  `rds_code` int(11) NOT NULL,
  `rds_libelle` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rds_exercice` int(11) DEFAULT NULL,
  `rds_mag` int(11) DEFAULT NULL,
  `rds_qte` double DEFAULT NULL,
  `rds_date` date DEFAULT NULL,
  `rds_artCode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stk_stock` (
  `mag_code` int(11) NOT NULL,
  `exercice` int(11) NOT NULL,
  `art_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `stk_initial` double DEFAULT NULL,
  `stk_entre` double DEFAULT NULL,
  `stk_sortie` double DEFAULT NULL,
  `stk_finale` double DEFAULT NULL,
  `stk_alert` double DEFAULT NULL,
  `stk_securite` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stk_trans_detail` (
  `trans_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `trans_exercice` int(11) DEFAULT NULL,
  `trans_seq` int(11) DEFAULT NULL,
  `trans_qtedem` double DEFAULT NULL,
  `trans_qteliv` double DEFAULT NULL,
  `trans_artCode` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stk_trans_entete` (
  `trans_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `trans_exercice` int(11) DEFAULT NULL,
  `trans_magdem` int(11) DEFAULT NULL,
  `trans_magliv` int(11) DEFAULT NULL,
  `stk_trans_datedem` datetime DEFAULT NULL,
  `stk_trans_dateliv` datetime DEFAULT NULL,
  `trans_obs` text COLLATE utf8_unicode_ci,
  `trans_etatCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stk_tva` (
  `tva_code` int(11) NOT NULL,
  `tva_pourcentage` double DEFAULT NULL,
  `tva_designation` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `stk_tva` (`tva_code`, `tva_pourcentage`, `tva_designation`) VALUES
(0, 0, '0%'),
(7, 7, '7%'),
(19, 19, '19%');

CREATE TABLE `stk_type_fournisseur` (
  `typfrs_code` int(11) NOT NULL,
  `typfrs_designation` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `stk_type_fournisseur` (`typfrs_code`, `typfrs_designation`) VALUES
(1, 'Fournisseur'),
(2, 'Client');

CREATE TABLE `util` (
  `IDUTIL` int(11) NOT NULL,
  `UTILOG` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UTIPWD` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UTINOM` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UTIPNOM` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UTIDCR` date DEFAULT NULL,
  `UTImat` decimal(10,0) DEFAULT NULL,
  `OPECOD` decimal(10,0) DEFAULT NULL,
  `OPEEXE` decimal(10,0) DEFAULT NULL,
  `PROFCOD` decimal(10,0) DEFAULT NULL,
  `ETATCOD` decimal(10,0) DEFAULT NULL,
  `idPRF` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


ALTER TABLE `droit`
  ADD PRIMARY KEY (`idDROIT`),
  ADD KEY `fk_DROIT_GRBDROIT1_idx` (`idGRBDROIT`);

ALTER TABLE `droit_has_modul`
  ADD PRIMARY KEY (`idDROIT`,`idMODUL`),
  ADD KEY `fk_DROIT_has_MODUL_MODUL1_idx` (`idMODUL`),
  ADD KEY `fk_DROIT_has_MODUL_DROIT1_idx` (`idDROIT`);

ALTER TABLE `ent`
  ADD PRIMARY KEY (`idENT`);

ALTER TABLE `etat`
  ADD PRIMARY KEY (`idETAT`);

ALTER TABLE `etatgen`
  ADD PRIMARY KEY (`idETAT`);

ALTER TABLE `exe`
  ADD PRIMARY KEY (`exe`);

ALTER TABLE `grbdroit`
  ADD PRIMARY KEY (`idGRBDROIT`);

ALTER TABLE `hera`
  ADD PRIMARY KEY (`idHERA`);

ALTER TABLE `mag`
  ADD PRIMARY KEY (`MAGCOD`),
  ADD KEY `fk_MAG_ETAT1_idx` (`ETATCOD`);

ALTER TABLE `menu`
  ADD PRIMARY KEY (`idMENU`);

ALTER TABLE `modul`
  ADD PRIMARY KEY (`idMODUL`),
  ADD KEY `fk_MODUL_MENU1_idx` (`idMENU`),
  ADD KEY `fk_MODUL_ETAT1_idx` (`idETAT`);

ALTER TABLE `oper`
  ADD PRIMARY KEY (`idOPER`);

ALTER TABLE `prf`
  ADD PRIMARY KEY (`idPRF`),
  ADD KEY `fk_PRF_ENT1_idx` (`idENT`),
  ADD KEY `fk_PRF_ETAT1_idx` (`PRFetat`);

ALTER TABLE `prf_has_droit`
  ADD PRIMARY KEY (`idPRF`,`idDROIT`),
  ADD KEY `fk_PRF_has_DROIT_DROIT1_idx` (`idDROIT`),
  ADD KEY `fk_PRF_has_DROIT_PRF1_idx` (`idPRF`);

ALTER TABLE `prf_has_exe`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `prf_has_mag`
  ADD PRIMARY KEY (`idPRF`,`MAGCOD`),
  ADD KEY `fk_PRF_has_MAG_MAG1_idx` (`MAGCOD`),
  ADD KEY `fk_PRF_has_MAG_PRF1_idx` (`idPRF`);

ALTER TABLE `stk_affectation_analityque`
  ADD PRIMARY KEY (`affectation_code`);

ALTER TABLE `stk_affectation_type`
  ADD PRIMARY KEY (`afftype_code`);

ALTER TABLE `stk_article`
  ADD PRIMARY KEY (`art_code`),
  ADD KEY `fk_stk_article_stk_etat_idx` (`art_etatCode`),
  ADD KEY `fk_stk_article_stk_categorie_article1_idx` (`art_categorieCode`);

ALTER TABLE `stk_article_fournisseur`
  ADD PRIMARY KEY (`art_code`,`frs_code`),
  ADD KEY `fk_stk_article_fournisseur_stk_etat1_idx` (`frs_artEtatCode`),
  ADD KEY `fk_stk_article_fournisseur_stk_fournisseur1_idx` (`frs_code`),
  ADD KEY `IDX_57EE174C7E354607` (`art_code`);

ALTER TABLE `stk_categorie_article`
  ADD PRIMARY KEY (`catart_code`);

ALTER TABLE `stk_consomation_detail`
  ADD PRIMARY KEY (`cons_code`,`cons_artCode`),
  ADD KEY `IDX_B9A21DC33001E491` (`cons_code`),
  ADD KEY `IDX_B9A21DC3FC29DDFE` (`cons_artCode`);

ALTER TABLE `stk_consomation_entete`
  ADD PRIMARY KEY (`cons_code`),
  ADD KEY `IDX_849783134C3CC624` (`cons_clientCode`),
  ADD KEY `IDX_84978313FC29DDFE` (`cons_artCode`),
  ADD KEY `fk_stk_consommation_entete_stk_affectation_analityque1_idx` (`cons_affectationCode`),
  ADD KEY `fk_stk_consommation_entete_stk_affectation_type1_idx` (`cons_affectationTypeCode`),
  ADD KEY `IDX_84978313ED098EC4` (`cons_etatCode`);

ALTER TABLE `stk_consommation_motif`
  ADD PRIMARY KEY (`consmot_code`);

ALTER TABLE `stk_consommation_prod`
  ADD PRIMARY KEY (`cons_prod_id`),
  ADD KEY `IDX_A70612F1FB7A270A` (`consprod_article_code`),
  ADD KEY `IDX_A70612F1492A4A8F` (`consprod_code_frs`),
  ADD KEY `IDX_A70612F16DFEB22B` (`cons_journe_id`);

ALTER TABLE `stk_dem_appro_det`
  ADD PRIMARY KEY (`demapro_artCode`,`demapro_code`),
  ADD KEY `IDX_70DD644D7F9F1D03` (`demapro_artCode`),
  ADD KEY `IDX_70DD644DDC14EBC6` (`demapro_code`);

ALTER TABLE `stk_dem_appro_ent`
  ADD PRIMARY KEY (`demapro_code`),
  ADD KEY `fk_demande_approvisionnement_entete_stk_etat1_idx` (`demapro_etatCode`);

ALTER TABLE `stk_devise`
  ADD PRIMARY KEY (`devise_code`);

ALTER TABLE `stk_entre_detail`
  ADD PRIMARY KEY (`ent_artCode`,`ent_code`),
  ADD KEY `fk_stk_entre_detail_stk_tva1_idx` (`tva_code`),
  ADD KEY `fk_stk_entre_detail_stk_article1_idx` (`ent_artCode`),
  ADD KEY `IDX_3ADC24D75A01BE47` (`ent_code`);

ALTER TABLE `stk_entre_entete`
  ADD PRIMARY KEY (`ent_code`),
  ADD KEY `fk_stk_entre_entete_stk_etat1_idx` (`ent_etatCode`),
  ADD KEY `fk_stk_entre_entete_stk_fournisseur1_idx` (`ent_fournisseurCode`);

ALTER TABLE `stk_etat`
  ADD PRIMARY KEY (`etat_code`);

ALTER TABLE `stk_fournisseur`
  ADD PRIMARY KEY (`frs_code`),
  ADD KEY `fk_stk_fournisseur_stk_etat1_idx` (`frs_etatCode`),
  ADD KEY `fk_stk_fournisseur_stk_type_fournisseur1_idx` (`frs_typeCode`);

ALTER TABLE `stk_inventaire`
  ADD PRIMARY KEY (`mag_code`,`exercice`,`art_code`),
  ADD KEY `fk_stk_inventaire_stk_etat1_idx` (`inv_etat`),
  ADD KEY `IDX_5F7D50397E354607` (`art_code`);

ALTER TABLE `stk_journe_prod`
  ADD PRIMARY KEY (`cons_journe_id`),
  ADD KEY `IDX_FF31911A2D71DF5E` (`prod_detail_id`);

ALTER TABLE `stk_production`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `IDX_BF19C13996804146` (`prod_code_etat`),
  ADD KEY `IDX_BF19C13997D0CAAC` (`prod_devise`),
  ADD KEY `IDX_BF19C13972AECBB1` (`prod_commerciale`);

ALTER TABLE `stk_production_detail`
  ADD PRIMARY KEY (`prod_detail_id`),
  ADD KEY `IDX_189B1EBF1C83F75` (`prod_id`),
  ADD KEY `IDX_189B1EBFFE026DDF` (`proddetail_article_code`),
  ADD KEY `IDX_189B1EBF60EB394C` (`proddetail_tva`),
  ADD KEY `IDX_189B1EBF7E220BF9` (`proddetail_tva_devise`);

ALTER TABLE `stk_rds`
  ADD PRIMARY KEY (`rds_code`),
  ADD KEY `IDX_323B31ACC1F70D80` (`rds_artCode`);

ALTER TABLE `stk_stock`
  ADD PRIMARY KEY (`mag_code`,`exercice`,`art_code`),
  ADD KEY `IDX_FE4077947E354607` (`art_code`);

ALTER TABLE `stk_trans_detail`
  ADD PRIMARY KEY (`trans_code`,`trans_artCode`),
  ADD UNIQUE KEY `fk_stk_trans_detail_stk_trans_entete1_idx` (`trans_code`),
  ADD KEY `fk_stk_trans_detail_stk_article1_idx` (`trans_artCode`);

ALTER TABLE `stk_trans_entete`
  ADD PRIMARY KEY (`trans_code`),
  ADD KEY `fk_stk_trans_entete_stk_etat1_idx` (`trans_etatCode`);

ALTER TABLE `stk_tva`
  ADD PRIMARY KEY (`tva_code`);

ALTER TABLE `stk_type_fournisseur`
  ADD PRIMARY KEY (`typfrs_code`);

ALTER TABLE `util`
  ADD PRIMARY KEY (`IDUTIL`),
  ADD KEY `fk_UTIL_PRF1_idx` (`idPRF`);


ALTER TABLE `droit`
  MODIFY `idDROIT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

ALTER TABLE `ent`
  MODIFY `idENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `etat`
  MODIFY `idETAT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

ALTER TABLE `etatgen`
  MODIFY `idETAT` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `exe`
  MODIFY `exe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2020;

ALTER TABLE `grbdroit`
  MODIFY `idGRBDROIT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

ALTER TABLE `hera`
  MODIFY `idHERA` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `mag`
  MODIFY `MAGCOD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `menu`
  MODIFY `idMENU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `modul`
  MODIFY `idMODUL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;

ALTER TABLE `oper`
  MODIFY `idOPER` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `prf`
  MODIFY `idPRF` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `prf_has_exe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `stk_affectation_analityque`
  MODIFY `affectation_code` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `stk_affectation_type`
  MODIFY `afftype_code` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `stk_categorie_article`
  MODIFY `catart_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `stk_consommation_motif`
  MODIFY `consmot_code` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `stk_consommation_prod`
  MODIFY `cons_prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

ALTER TABLE `stk_devise`
  MODIFY `devise_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `stk_etat`
  MODIFY `etat_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

ALTER TABLE `stk_fournisseur`
  MODIFY `frs_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `stk_journe_prod`
  MODIFY `cons_journe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

ALTER TABLE `stk_production`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

ALTER TABLE `stk_production_detail`
  MODIFY `prod_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

ALTER TABLE `stk_rds`
  MODIFY `rds_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `stk_type_fournisseur`
  MODIFY `typfrs_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `util`
  MODIFY `IDUTIL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `stk_article`
  ADD CONSTRAINT `FK_3E838FF7235A3AF1` FOREIGN KEY (`art_categorieCode`) REFERENCES `stk_categorie_article` (`catart_code`),
  ADD CONSTRAINT `FK_3E838FF7859026D2` FOREIGN KEY (`art_etatCode`) REFERENCES `stk_etat` (`etat_code`);

ALTER TABLE `stk_article_fournisseur`
  ADD CONSTRAINT `FK_57EE174C69F57FA6` FOREIGN KEY (`frs_code`) REFERENCES `stk_fournisseur` (`frs_code`),
  ADD CONSTRAINT `FK_57EE174C7BAD5C56` FOREIGN KEY (`frs_artEtatCode`) REFERENCES `stk_etat` (`etat_code`),
  ADD CONSTRAINT `FK_57EE174C7E354607` FOREIGN KEY (`art_code`) REFERENCES `stk_article` (`art_code`);

ALTER TABLE `stk_consomation_detail`
  ADD CONSTRAINT `FK_B9A21DC33001E491` FOREIGN KEY (`cons_code`) REFERENCES `stk_consomation_entete` (`cons_code`),
  ADD CONSTRAINT `FK_B9A21DC3FC29DDFE` FOREIGN KEY (`cons_artCode`) REFERENCES `stk_article` (`art_code`);

ALTER TABLE `stk_consomation_entete`
  ADD CONSTRAINT `FK_849783132C89E311` FOREIGN KEY (`cons_affectationTypeCode`) REFERENCES `stk_affectation_type` (`afftype_code`),
  ADD CONSTRAINT `FK_849783134C3CC624` FOREIGN KEY (`cons_clientCode`) REFERENCES `stk_fournisseur` (`frs_code`),
  ADD CONSTRAINT `FK_84978313DB566CAE` FOREIGN KEY (`cons_affectationCode`) REFERENCES `stk_affectation_analityque` (`affectation_code`),
  ADD CONSTRAINT `FK_84978313ED098EC4` FOREIGN KEY (`cons_etatCode`) REFERENCES `stk_etat` (`etat_code`),
  ADD CONSTRAINT `FK_84978313FC29DDFE` FOREIGN KEY (`cons_artCode`) REFERENCES `stk_article` (`art_code`);

ALTER TABLE `stk_consommation_prod`
  ADD CONSTRAINT `FK_A70612F1492A4A8F` FOREIGN KEY (`consprod_code_frs`) REFERENCES `stk_fournisseur` (`frs_code`),
  ADD CONSTRAINT `FK_A70612F16DFEB22B` FOREIGN KEY (`cons_journe_id`) REFERENCES `stk_journe_prod` (`cons_journe_id`),
  ADD CONSTRAINT `FK_A70612F1FB7A270A` FOREIGN KEY (`consprod_article_code`) REFERENCES `stk_article` (`art_code`);

ALTER TABLE `stk_dem_appro_det`
  ADD CONSTRAINT `FK_70DD644D7F9F1D03` FOREIGN KEY (`demapro_artCode`) REFERENCES `stk_article` (`art_code`),
  ADD CONSTRAINT `FK_70DD644DDC14EBC6` FOREIGN KEY (`demapro_code`) REFERENCES `stk_dem_appro_ent` (`demapro_code`);

ALTER TABLE `stk_dem_appro_ent`
  ADD CONSTRAINT `FK_92EBD7B12E86B6A5` FOREIGN KEY (`demapro_etatCode`) REFERENCES `stk_etat` (`etat_code`);

ALTER TABLE `stk_entre_detail`
  ADD CONSTRAINT `FK_3ADC24D7357921C8` FOREIGN KEY (`ent_artCode`) REFERENCES `stk_article` (`art_code`),
  ADD CONSTRAINT `FK_3ADC24D75A01BE47` FOREIGN KEY (`ent_code`) REFERENCES `stk_entre_entete` (`ent_code`),
  ADD CONSTRAINT `FK_3ADC24D7ED3ACE73` FOREIGN KEY (`tva_code`) REFERENCES `stk_tva` (`tva_code`);

ALTER TABLE `stk_entre_entete`
  ADD CONSTRAINT `FK_7E9BA07227A4BA1` FOREIGN KEY (`ent_etatCode`) REFERENCES `stk_etat` (`etat_code`),
  ADD CONSTRAINT `FK_7E9BA07C671CF22` FOREIGN KEY (`ent_fournisseurCode`) REFERENCES `stk_fournisseur` (`frs_code`);

ALTER TABLE `stk_fournisseur`
  ADD CONSTRAINT `FK_C9FD543213D4D424` FOREIGN KEY (`frs_etatCode`) REFERENCES `stk_etat` (`etat_code`),
  ADD CONSTRAINT `FK_C9FD54325718EB5D` FOREIGN KEY (`frs_typeCode`) REFERENCES `stk_type_fournisseur` (`typfrs_code`);

ALTER TABLE `stk_inventaire`
  ADD CONSTRAINT `FK_5F7D503962B9CDF9` FOREIGN KEY (`inv_etat`) REFERENCES `stk_etat` (`etat_code`),
  ADD CONSTRAINT `FK_5F7D50397E354607` FOREIGN KEY (`art_code`) REFERENCES `stk_article` (`art_code`);

ALTER TABLE `stk_journe_prod`
  ADD CONSTRAINT `FK_FF31911A2D71DF5E` FOREIGN KEY (`prod_detail_id`) REFERENCES `stk_production_detail` (`prod_detail_id`);

ALTER TABLE `stk_production`
  ADD CONSTRAINT `FK_34ZD34R3434R34R3` FOREIGN KEY (`prod_devise`) REFERENCES `stk_devise` (`devise_code`),
  ADD CONSTRAINT `FK_34ZD34R343QSDQ3` FOREIGN KEY (`prod_commerciale`) REFERENCES `util` (`IDUTIL`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_BF19C13996804146` FOREIGN KEY (`prod_code_etat`) REFERENCES `stk_etat` (`etat_code`);

ALTER TABLE `stk_production_detail`
  ADD CONSTRAINT `FK_189B1EBF1C83F75` FOREIGN KEY (`prod_id`) REFERENCES `stk_production` (`prod_id`),
  ADD CONSTRAINT `FK_189B1EBF60EB394C` FOREIGN KEY (`proddetail_tva`) REFERENCES `stk_tva` (`tva_code`),
  ADD CONSTRAINT `FK_189B1EBF7E220BF9` FOREIGN KEY (`proddetail_tva_devise`) REFERENCES `stk_tva` (`tva_code`),
  ADD CONSTRAINT `FK_189B1EBFFE026DDF` FOREIGN KEY (`proddetail_article_code`) REFERENCES `stk_article` (`art_code`);

ALTER TABLE `stk_rds`
  ADD CONSTRAINT `FK_323B31ACC1F70D80` FOREIGN KEY (`rds_artCode`) REFERENCES `stk_article` (`art_code`);

ALTER TABLE `stk_stock`
  ADD CONSTRAINT `FK_FE4077947E354607` FOREIGN KEY (`art_code`) REFERENCES `stk_article` (`art_code`);

ALTER TABLE `stk_trans_detail`
  ADD CONSTRAINT `FK_382A102D370EC194` FOREIGN KEY (`trans_artCode`) REFERENCES `stk_article` (`art_code`),
  ADD CONSTRAINT `FK_382A102D6411F9AB` FOREIGN KEY (`trans_code`) REFERENCES `stk_trans_entete` (`trans_code`);

ALTER TABLE `stk_trans_entete`
  ADD CONSTRAINT `FK_51F8EFD40A5219E` FOREIGN KEY (`trans_etatCode`) REFERENCES `stk_etat` (`etat_code`);


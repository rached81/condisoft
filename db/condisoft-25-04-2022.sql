-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Dim 24 Avril 2022 à 13:58
-- Version du serveur :  10.1.37-MariaDB-0+deb9u1
-- Version de PHP :  7.0.33-0+deb9u3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `condisoft`
--

-- --------------------------------------------------------

--
-- Structure de la table `droit`
--

CREATE TABLE `droit` (
  `idDROIT` int(11) NOT NULL,
  `DROITnom` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DROITdcr` date DEFAULT NULL,
  `DROITmark` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idGRBDROIT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `droit`
--

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

-- --------------------------------------------------------

--
-- Structure de la table `droit_has_modul`
--

CREATE TABLE `droit_has_modul` (
  `idDROIT` int(11) NOT NULL,
  `idMODUL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `droit_has_modul`
--

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

-- --------------------------------------------------------

--
-- Structure de la table `ent`
--

CREATE TABLE `ent` (
  `idENT` int(11) NOT NULL,
  `ENTcod` int(11) DEFAULT NULL,
  `ENTnom` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SRVidsup` int(11) DEFAULT NULL,
  `idHERA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `ent`
--

INSERT INTO `ent` (`idENT`, `ENTcod`, `ENTnom`, `SRVidsup`, `idHERA`) VALUES
(1, 1000, 'Administrateur', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `etat`
--

CREATE TABLE `etat` (
  `idETAT` int(11) NOT NULL,
  `ETATnom` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `etat`
--

INSERT INTO `etat` (`idETAT`, `ETATnom`) VALUES
(21, 'Module dÃ©sactivÃ©'),
(22, 'Module activÃ©'),
(31, 'profil activÃ©'),
(32, 'profil dÃ©sactivÃ©');

-- --------------------------------------------------------

--
-- Structure de la table `etatgen`
--

CREATE TABLE `etatgen` (
  `idETAT` int(11) NOT NULL,
  `ETAdesc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ETAparam` text COLLATE utf8_unicode_ci NOT NULL,
  `ETAdatecr` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `exe`
--

CREATE TABLE `exe` (
  `exe` int(11) NOT NULL,
  `idETAT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `exe`
--

INSERT INTO `exe` (`exe`, `idETAT`) VALUES
(2017, 52),
(2018, 52),
(2019, 51);

-- --------------------------------------------------------

--
-- Structure de la table `grbdroit`
--

CREATE TABLE `grbdroit` (
  `idGRBDROIT` int(11) NOT NULL,
  `GRBDROITnom` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GRBDROITdcr` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `grbdroit`
--

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

-- --------------------------------------------------------

--
-- Structure de la table `hera`
--

CREATE TABLE `hera` (
  `idHERA` int(11) NOT NULL,
  `HERAnom` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `mag`
--

CREATE TABLE `mag` (
  `MAGCOD` int(11) NOT NULL,
  `MAGLIB` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MAGDCR` date DEFAULT NULL,
  `OPECOD` int(11) DEFAULT NULL,
  `OPEEXE` int(11) DEFAULT NULL,
  `TMAGCOD` int(11) DEFAULT NULL,
  `ETATCOD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `mag`
--

INSERT INTO `mag` (`MAGCOD`, `MAGLIB`, `MAGDCR`, `OPECOD`, `OPEEXE`, `TMAGCOD`, `ETATCOD`) VALUES
(1, '1', NULL, NULL, NULL, NULL, 0),
(2, '2', NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

CREATE TABLE `menu` (
  `idMENU` int(11) NOT NULL,
  `MENUnom` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MENUparent` int(11) DEFAULT NULL,
  `MENUmod` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MENUicon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MENUmnseq` int(11) DEFAULT NULL,
  `MENUdcr` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `menu`
--

INSERT INTO `menu` (`idMENU`, `MENUnom`, `MENUparent`, `MENUmod`, `MENUicon`, `MENUmnseq`, `MENUdcr`) VALUES
(1, 'Gestion', 0, NULL, '', 13, '2017-05-27'),
(3, 'Mouvements du stock', 0, NULL, '', 18, '2017-05-27'),
(4, 'Edition', 0, NULL, '', 20, '2017-05-27'),
(5, 'Identification', 0, NULL, '', 11, '2019-02-10'),
(6, 'Menu test', 0, NULL, '', 10, '2019-03-20'),
(7, 'Paramétrages', 0, NULL, '', 25, '2019-05-22');

-- --------------------------------------------------------

--
-- Structure de la table `modul`
--

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

--
-- Contenu de la table `modul`
--

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
(456, 'Gestion des articles', 'article', 'index', 'front', '27', '2017-05-27', 'vu', '', '', 7, 1, 21),
(457, 'Sortie client', 'consommation', 'index', 'front', '18', '2017-05-27', 'vu', '', '', 0, 1, 21),
(460, 'Approvisionnement MP', 'entree', 'index', 'front', '19', '2017-05-27', 'vu', '', '', 3, 1, 21),
(461, 'Gestion de l\'inventaire', 'inventaire', 'index', 'front', '17', '2017-05-27', 'vu', '', '', 1, 1, 21),
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
(506, 'Etat du stock', 'edition', 'stk', 'front', '21', '2017-06-27', 'vu', '', '', 4, 1, 21),
(507, 'Historique de prix', 'edition', 'histprix', 'front', '22', '2017-06-27', 'vu', '', '', 4, 1, 21),
(508, 'Stock non mouvement', 'edition', 'stknmvt', 'front', '23', '2017-06-27', 'vu', '', '', 4, 1, 21),
(509, 'Etat de consommations', 'edition', 'cons', 'front', '24', '2017-06-27', 'vu', '', '', 4, 1, 21),
(513, 'edition-asyn_get_histprix', 'edition', 'asyn_get_histprix', 'front', NULL, '2017-07-02', 'asyn', '', '', 0, 1, 21),
(514, 'edition-asyn_get_cons', 'edition', 'asyn_get_cons', 'front', NULL, '2017-07-02', 'asyn', '', '', 0, 1, 21),
(515, 'edition-asyn_get_nmvt', 'edition', 'asyn_get_nmvt', 'front', NULL, '2017-07-02', 'asyn', '', '', 0, 1, 21),
(516, 'edition-asyn_get_stk', 'edition', 'asyn_get_stk', 'front', NULL, '2017-07-02', 'asyn', '', '', 0, 1, 21),
(517, 'parametrage-index', 'parametrage', 'index', 'front', NULL, '2017-07-02', 'vu', '', '', 0, 1, 21),
(518, 'Gestion des clients/fournisseur', 'fournisseur', 'index', 'front', '26', '2017-07-02', 'vu', '', '', 7, 1, 21),
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
(551, 'Gestion des Devis/BC', 'devis', 'index', 'front', '14', '2019-01-13', 'vu', '', '', 1, 1, 21),
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
(583, 'Gestion de la production', 'prod', 'index', 'front', '15', '2019-01-13', 'vu', '', '', 1, 1, 21),
(584, 'prod-asyn_get_data', 'prod', 'asyn_get_data', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(585, 'prod-asyn_get_data_object', 'prod', 'asyn_get_data_object', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(586, 'prod-asyn_ajout_data', 'prod', 'asyn_ajout_data', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(587, 'prod-asyn_annulation_data', 'prod', 'asyn_annulation_data', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(588, 'prod-asyn_genbc', 'prod', 'asyn_genbc', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 0, 21),
(589, 'prod-asyn_get_datauniqcode', 'prod', 'asyn_get_datauniqcode', 'front', NULL, '2019-01-13', 'asyn', '', '', 0, 1, 21),
(590, 'Gestion des factures/BL', 'facturation', 'index', 'front', '16', '2019-01-15', 'vu', '', '', 1, 1, 21),
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
(601, 'Identification', 'edition', 'identification', 'front', '12', '2019-02-10', 'vu', '', '', 5, 1, 21),
(602, 'edition-asyn_get_ident', 'edition', 'asyn_get_ident', 'front', NULL, '2019-02-10', 'asyn', '', '', 0, 1, 21),
(603, 'facturation-asyn_genfact', 'facturation', 'asyn_genfact', 'front', NULL, '2019-02-10', 'asyn', '', '', 0, 1, 21);

-- --------------------------------------------------------

--
-- Structure de la table `oper`
--

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

--
-- Contenu de la table `oper`
--

INSERT INTO `oper` (`idOPER`, `idMODUL`, `actionOPER`, `descriptOPER`, `dateOPER`, `catOPER`, `idPRF`, `IDUTIL`, `UTINOM`, `UTIPNOM`, `paramOPER`, `ipOPER`) VALUES
(1, 433, 'index', 'Page d\'accueil', '2019-03-26 09:25:44', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(2, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-03-26 09:25:56', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.224.244.95'),
(3, 433, 'index', 'Page d\'accueil', '2019-03-26 09:27:09', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(4, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-03-26 09:27:11', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.224.244.95'),
(5, 456, 'index', 'Gestion des articles', '2019-03-26 09:28:21', '', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(6, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 09:28:23', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(7, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 09:28:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.224.244.95'),
(8, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 09:28:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '41.224.244.95'),
(9, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 09:28:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.224.244.95'),
(10, 470, 'asyn_get_artuniqcode', 'article-asyn_get_artuniqcode', '2019-03-26 09:28:25', '', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(11, 525, 'asyn_ajout_cat', 'article-asyn_ajout_cat', '2019-03-26 09:28:32', '', 0, 1, 'admin', 'admin', 'array (\n  \'catart\' => \'supper\',\n)', '41.224.244.95'),
(12, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-03-26 09:28:33', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(13, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 09:28:33', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.224.244.95'),
(14, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 09:28:33', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.224.244.95'),
(15, 527, 'asyn_supp_cat', 'article-asyn_supp_cat', '2019-03-26 09:28:38', '', 0, 1, 'admin', 'admin', 'array (\n  \'catart\' => \'5\',\n)', '41.224.244.95'),
(16, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-03-26 09:28:40', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(17, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 09:28:41', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.224.244.95'),
(18, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 09:28:41', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.224.244.95'),
(19, 518, 'index', 'Gestion des clients/fournisseur', '2019-03-26 09:28:47', '', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(20, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 09:28:50', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(21, 520, 'asyn_ajout_fournisseur', 'fournisseur-asyn_ajout_fournisseur', '2019-03-26 09:29:10', '', 0, 1, 'admin', 'admin', 'array (\n  \'frsCode\' => \'\',\n  \'frsRaisonsociale\' => \'FRs\',\n  \'frsAdresse\' => \'sqdqsd\',\n  \'frsTel\' => \'4545646\',\n  \'frsFax\' => \'564654654\',\n  \'frsEmail\' => \'qsdq@qsdqsd.com\',\n  \'frsMf\' => \'qsd-54654-54564\',\n  \'frsTypecode\' => \'1\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '41.224.244.95'),
(22, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-03-26 09:29:11', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(23, 519, 'asyn_get_fournisseur', 'fournisseur-asyn_get_fournisseur', '2019-03-26 09:29:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'frsCoder\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '41.224.244.95'),
(24, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 09:29:14', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(25, 523, 'asyn_delete_fournisseur', 'fournisseur-asyn_delete_fournisseur', '2019-03-26 09:29:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'p_frsCode\' => \'5\',\n  \'datarefval\' => \n  array (\n    \'p_frsCode\' => \'5\',\n    \'p_frsRaisonsociale\' => \'FRs\',\n    \'p_frsAdresse\' => \'sqdqsd\',\n    \'p_frsTel\' => \'4545646\',\n    \'p_frsFax\' => \'564654654\',\n    \'p_frsMf\' => \'qsd-54654-54564\',\n    \'p_frsEmail\' => \'qsdq@qsdqsd.com\',\n    \'p_frsLogo\' => \'\',\n    \'g_typfrsCode\' => \'1\',\n    \'g_typfrsDesignation\' => \'Fournisseur\',\n  ),\n)', '41.224.244.95'),
(26, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-03-26 09:29:26', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(27, 519, 'asyn_get_fournisseur', 'fournisseur-asyn_get_fournisseur', '2019-03-26 09:29:29', '', 0, 1, 'admin', 'admin', 'array (\n  \'frsCoder\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '41.224.244.95'),
(28, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 09:29:30', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(29, 433, 'index', 'Page d\'accueil', '2019-03-26 10:32:43', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(30, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-03-26 10:32:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.224.244.95'),
(31, 433, 'index', 'Page d\'accueil', '2019-03-26 10:32:59', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(32, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-03-26 10:33:07', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.224.244.95'),
(33, 433, 'index', 'Page d\'accueil', '2019-03-26 10:33:22', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(34, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-03-26 10:33:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.224.244.95'),
(35, 433, 'index', 'Page d\'accueil', '2019-03-26 10:37:25', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(36, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-03-26 10:37:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.224.244.95'),
(37, 433, 'index', 'Page d\'accueil', '2019-03-26 10:51:31', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(38, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-03-26 10:52:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.224.244.95'),
(39, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-03-26 10:59:08', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '160.159.239.208'),
(40, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-03-26 10:59:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '160.159.239.208'),
(41, 601, 'identification', 'Identification', '2019-03-26 10:59:26', '', 0, 1, 'admin', 'admin', '\'\'', '66.249.93.216'),
(42, 583, 'index', 'Gestion de la production', '2019-03-26 10:59:39', '', 0, 1, 'admin', 'admin', '\'\'', '66.249.93.216'),
(43, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-26 10:59:40', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '160.159.239.208'),
(44, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-03-26 10:59:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '160.159.239.208'),
(45, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-03-26 13:07:10', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(46, 551, 'index', 'Gestion des Devis/BC', '2019-03-26 13:07:20', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(47, 551, 'index', 'Gestion des Devis/BC', '2019-03-26 13:07:20', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(48, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:07:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '165.51.234.141'),
(49, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:07:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '165.51.234.141'),
(50, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:07:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '165.51.234.141'),
(51, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:07:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '165.51.234.141'),
(52, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:07:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '165.51.234.141'),
(53, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-26 13:07:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(54, 558, 'asyn_get_datauniqcode', 'devis-asyn_get_datauniqcode', '2019-03-26 13:07:30', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(55, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:07:34', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(56, 456, 'index', 'Gestion des articles', '2019-03-26 13:07:41', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(57, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 13:07:42', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(58, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:07:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '165.51.234.141'),
(59, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:07:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '165.51.234.141'),
(60, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:07:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '165.51.234.141'),
(61, 470, 'asyn_get_artuniqcode', 'article-asyn_get_artuniqcode', '2019-03-26 13:07:44', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(62, 518, 'index', 'Gestion des clients/fournisseur', '2019-03-26 13:10:38', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(63, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 13:10:38', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(64, 520, 'asyn_ajout_fournisseur', 'fournisseur-asyn_ajout_fournisseur', '2019-03-26 13:11:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'frsCode\' => \'\',\n  \'frsRaisonsociale\' => \'test client\',\n  \'frsAdresse\' => \'\',\n  \'frsTel\' => \'\',\n  \'frsFax\' => \'\',\n  \'frsEmail\' => \'\',\n  \'frsMf\' => \'\',\n  \'frsTypecode\' => \'2\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(65, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-03-26 13:11:00', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(66, 520, 'asyn_ajout_fournisseur', 'fournisseur-asyn_ajout_fournisseur', '2019-03-26 13:11:18', '', 0, 1, 'admin', 'admin', 'array (\n  \'frsCode\' => \'\',\n  \'frsRaisonsociale\' => \'test fournisseur\',\n  \'frsAdresse\' => \'\',\n  \'frsTel\' => \'\',\n  \'frsFax\' => \'\',\n  \'frsEmail\' => \'\',\n  \'frsMf\' => \'\',\n  \'frsTypecode\' => \'1\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(67, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-03-26 13:11:18', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(68, 456, 'index', 'Gestion des articles', '2019-03-26 13:11:25', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(69, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 13:11:25', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(70, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:11:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '165.51.234.141'),
(71, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:11:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '165.51.234.141'),
(72, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:11:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '165.51.234.141'),
(73, 525, 'asyn_ajout_cat', 'article-asyn_ajout_cat', '2019-03-26 13:12:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'catart\' => \'DEGLET NOUR\',\n)', '165.51.234.141'),
(74, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-03-26 13:12:23', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(75, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:12:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '165.51.234.141'),
(76, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:12:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '165.51.234.141'),
(77, 470, 'asyn_get_artuniqcode', 'article-asyn_get_artuniqcode', '2019-03-26 13:12:26', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(78, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:12:53', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(79, 467, 'asyn_ajout_article', 'article-asyn_ajout_article', '2019-03-26 13:13:45', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(80, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-03-26 13:13:45', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(81, 551, 'index', 'Gestion des Devis/BC', '2019-03-26 13:13:51', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(82, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:13:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '165.51.234.141'),
(83, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:13:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '165.51.234.141'),
(84, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:13:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '165.51.234.141'),
(85, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:13:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '165.51.234.141'),
(86, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:13:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '165.51.234.141'),
(87, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-26 13:13:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(88, 558, 'asyn_get_datauniqcode', 'devis-asyn_get_datauniqcode', '2019-03-26 13:14:02', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(89, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:14:08', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(90, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:14:12', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(91, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:14:18', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(92, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:14:30', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(93, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:14:37', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(94, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:14:40', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(95, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:14:42', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(96, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:14:45', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(97, 456, 'index', 'Gestion des articles', '2019-03-26 13:15:02', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(98, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:15:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '165.51.234.141'),
(99, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 13:15:04', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(100, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:15:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '165.51.234.141'),
(101, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:15:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '165.51.234.141'),
(102, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-03-26 13:15:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '165.51.234.141'),
(103, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 13:15:07', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(104, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-03-26 13:15:09', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'7673457953\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'7673457953\',\n    \'g_artDesignation\' => \'Dattes branchée\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'5c9a1778d00ce.jpg\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'0\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'g_artDelaislivraison\' => \'0\',\n    \'g_artClass\' => \'2\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'10\',\n    \'g_artTva\' => \'0\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'6\',\n    \'i_catartDesignation\' => \'DEGLET NOUR\',\n    \'p_art_code\' => \'7673457953\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '165.51.234.141'),
(105, 468, 'asyn_update_article', 'article-asyn_update_article', '2019-03-26 13:15:15', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(106, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-03-26 13:15:15', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(107, 551, 'index', 'Gestion des Devis/BC', '2019-03-26 13:15:20', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(108, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:15:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '165.51.234.141'),
(109, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:15:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '165.51.234.141'),
(110, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:15:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '165.51.234.141'),
(111, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:15:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '165.51.234.141'),
(112, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:15:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '165.51.234.141'),
(113, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-26 13:15:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(114, 558, 'asyn_get_datauniqcode', 'devis-asyn_get_datauniqcode', '2019-03-26 13:15:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(115, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:15:27', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(116, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:15:35', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(117, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:15:40', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(118, 554, 'asyn_ajout_data', 'devis-asyn_ajout_data', '2019-03-26 13:16:11', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'\',\n  \'prodCodeDeviBc\' => \'1/2019\',\n  \'prodExerciceDevis\' => \'2019\',\n  \'prodDateDevis\' => \'26/03/2019\',\n  \'prodDateBc\' => \'\',\n  \'prodExerciceBc\' => \'\',\n  \'prodCodeClient\' => \'6\',\n  \'prodCommerciale\' => \'1\',\n  \'prodDevise\' => \'1\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'proddetailQteDevis\' => \'10\',\n      \'proddetailPrixUniaireDeviseDevis\' => \'11\',\n      \'proddetailTvaDevis\' => \'0\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(119, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-03-26 13:16:11', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(120, 552, 'asyn_get_data', 'devis-asyn_get_data', '2019-03-26 13:16:14', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(121, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 13:16:14', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(122, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2019-03-26 13:16:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'50\',\n    \'a_prodCodeDeviBc\' => \'1/2019\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \'\',\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'71\',\n    \'b_etatLibelle\' => \'Devis Cr\',\n  ),\n)', '165.51.234.141'),
(123, 583, 'index', 'Gestion de la production', '2019-03-26 13:16:50', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(124, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-26 13:16:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(125, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-03-26 13:16:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(126, 551, 'index', 'Gestion des Devis/BC', '2019-03-26 13:16:55', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(127, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:16:56', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '165.51.234.141'),
(128, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:16:56', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '165.51.234.141'),
(129, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:16:56', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '165.51.234.141'),
(130, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:16:56', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '165.51.234.141'),
(131, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:16:56', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '165.51.234.141'),
(132, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-26 13:16:56', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(133, 552, 'asyn_get_data', 'devis-asyn_get_data', '2019-03-26 13:16:58', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(134, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 13:16:58', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(135, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2019-03-26 13:17:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'50\',\n    \'a_prodCodeDeviBc\' => \'1/2019\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \'\',\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'71\',\n    \'b_etatLibelle\' => \'Devis Cr\',\n  ),\n)', '165.51.234.141'),
(136, 582, 'asyn_genbc', 'devis-asyn_genbc', '2019-03-26 13:17:09', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'50\',\n  \'prodCodeDeviBc\' => \'1/2019\',\n  \'prodExerciceDevis\' => \'2019\',\n  \'prodDateDevis\' => \'26/03/2019\',\n  \'prodDateBc\' => \'26/03/2019\',\n  \'prodExerciceBc\' => \'2019\',\n  \'prodCodeClient\' => \'6\',\n  \'prodCommerciale\' => \'\',\n  \'prodDevise\' => \'\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'proddetailQteDevis\' => \'10\',\n      \'proddetailPrixUniaireDeviseDevis\' => \'11\',\n      \'proddetailTva\' => \'0%\',\n      \'proddetailPtttc\' => \'110.000\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(137, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-03-26 13:17:09', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(138, 583, 'index', 'Gestion de la production', '2019-03-26 13:17:13', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(139, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-26 13:17:14', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(140, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-03-26 13:17:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(141, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2019-03-26 13:17:17', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(142, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-03-26 13:17:18', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'50\',\n    \'a_prodCodeDeviBc\' => \'1/2019\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'26/03/2019\',\n)', '165.51.234.141'),
(143, 456, 'index', 'Gestion des articles', '2019-03-26 13:20:22', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(144, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 13:20:22', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(145, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:20:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '165.51.234.141'),
(146, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:20:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '165.51.234.141'),
(147, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:20:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '165.51.234.141'),
(148, 470, 'asyn_get_artuniqcode', 'article-asyn_get_artuniqcode', '2019-03-26 13:20:25', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(149, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:20:41', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(150, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:20:41', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(151, 467, 'asyn_ajout_article', 'article-asyn_ajout_article', '2019-03-26 13:21:41', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(152, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-03-26 13:21:41', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(153, 583, 'index', 'Gestion de la production', '2019-03-26 13:21:45', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(154, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-26 13:21:46', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(155, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-03-26 13:21:48', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(156, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2019-03-26 13:21:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(157, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-03-26 13:21:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'50\',\n    \'a_prodCodeDeviBc\' => \'1/2019\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'26/03/2019\',\n)', '165.51.234.141'),
(158, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-03-26 13:22:03', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(159, 460, 'index', 'Approvisionnement MP', '2019-03-26 13:22:14', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(160, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:22:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '165.51.234.141'),
(161, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 13:22:15', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(162, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:22:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '165.51.234.141'),
(163, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:22:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '165.51.234.141'),
(164, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-26 13:22:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(165, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-03-26 13:22:15', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(166, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2019-03-26 13:22:18', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(167, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:22:43', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(168, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:22:44', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(169, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:22:44', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(170, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:22:45', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(171, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:22:58', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(172, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-03-26 13:23:28', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(173, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:23:35', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(174, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:23:37', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(175, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:23:38', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(176, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:23:40', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(177, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2019-03-26 13:25:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'1/2019\',\n  \'entExercice\' => \'2019\',\n  \'entBcolcode\' => \'1\',\n  \'entBcolexercice\' => \'1\',\n  \'entContratcode\' => \'1\',\n  \'entContratexercice\' => \'1\',\n  \'entDatereception\' => \'26/03/2019\',\n  \'entNumbl\' => \'\',\n  \'entDatebl\' => \'26/03/2019\',\n  \'entNumfacture\' => \'1\',\n  \'entDatefacture\' => \'26/03/2019\',\n  \'entTypecode\' => \'\',\n  \'entNumtransit\' => \'\',\n  \'entDevise\' => \'\',\n  \'entCours\' => \'\',\n  \'entObservation\' => \'\',\n  \'entFournisseurcode\' => \'7\',\n  \'entCodes\' => \n  array (\n    0 => \n    array (\n      \'entArtcode\' => \'7686426e63\',\n      \'entCodetrace\' => \'227bed6425\',\n      \'entQte\' => \'10\',\n      \'entQtesurplus\' => \'1\',\n      \'entDateperomption\' => \'31/03/2019\',\n      \'entPu\' => \'1\',\n      \'tvaCode\' => \'0\',\n      \'entPrixtotale\' => \'10\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(178, 440, 'asyn_get_exception', 'RecupÃ©rer exception', '2019-03-26 13:25:05', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(179, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2019-03-26 13:25:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'1/2019\',\n  \'entExercice\' => \'2019\',\n  \'entBcolcode\' => \'1\',\n  \'entBcolexercice\' => \'1\',\n  \'entContratcode\' => \'1\',\n  \'entContratexercice\' => \'1\',\n  \'entDatereception\' => \'26/03/2019\',\n  \'entNumbl\' => \'\',\n  \'entDatebl\' => \'26/03/2019\',\n  \'entNumfacture\' => \'1\',\n  \'entDatefacture\' => \'26/03/2019\',\n  \'entTypecode\' => \'\',\n  \'entNumtransit\' => \'1\',\n  \'entDevise\' => \'\',\n  \'entCours\' => \'\',\n  \'entObservation\' => \'\',\n  \'entFournisseurcode\' => \'7\',\n  \'entCodes\' => \n  array (\n    0 => \n    array (\n      \'entArtcode\' => \'7686426e63\',\n      \'entCodetrace\' => \'227bed6425\',\n      \'entQte\' => \'10\',\n      \'entQtesurplus\' => \'1\',\n      \'entDateperomption\' => \'31/03/2019\',\n      \'entPu\' => \'1\',\n      \'tvaCode\' => \'0\',\n      \'entPrixtotale\' => \'10\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(180, 440, 'asyn_get_exception', 'RecupÃ©rer exception', '2019-03-26 13:25:14', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(181, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2019-03-26 13:25:33', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'1/2019\',\n  \'entExercice\' => \'2019\',\n  \'entBcolcode\' => \'1\',\n  \'entBcolexercice\' => \'1\',\n  \'entContratcode\' => \'1\',\n  \'entContratexercice\' => \'1\',\n  \'entDatereception\' => \'26/03/2019\',\n  \'entNumbl\' => \'\',\n  \'entDatebl\' => \'26/03/2019\',\n  \'entNumfacture\' => \'1\',\n  \'entDatefacture\' => \'26/03/2019\',\n  \'entTypecode\' => \'\',\n  \'entNumtransit\' => \'1\',\n  \'entDevise\' => \'\',\n  \'entCours\' => \'\',\n  \'entObservation\' => \'\',\n  \'entFournisseurcode\' => \'7\',\n  \'entCodes\' => \n  array (\n    0 => \n    array (\n      \'entArtcode\' => \'7686426e63\',\n      \'entCodetrace\' => \'227bed6425\',\n      \'entQte\' => \'10\',\n      \'entQtesurplus\' => \'1\',\n      \'entDateperomption\' => \'31/03/2019\',\n      \'entPu\' => \'1\',\n      \'tvaCode\' => \'0\',\n      \'entPrixtotale\' => \'10\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(182, 440, 'asyn_get_exception', 'RecupÃ©rer exception', '2019-03-26 13:25:33', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(183, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2019-03-26 13:25:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'1/2019\',\n  \'entExercice\' => \'2019\',\n  \'entBcolcode\' => \'1\',\n  \'entBcolexercice\' => \'1\',\n  \'entContratcode\' => \'1\',\n  \'entContratexercice\' => \'1\',\n  \'entDatereception\' => \'26/03/2019\',\n  \'entNumbl\' => \'\',\n  \'entDatebl\' => \'26/03/2019\',\n  \'entNumfacture\' => \'1\',\n  \'entDatefacture\' => \'26/03/2019\',\n  \'entTypecode\' => \'\',\n  \'entNumtransit\' => \'1\',\n  \'entDevise\' => \'\',\n  \'entCours\' => \'\',\n  \'entObservation\' => \'\',\n  \'entFournisseurcode\' => \'7\',\n  \'entCodes\' => \n  array (\n    0 => \n    array (\n      \'entArtcode\' => \'7686426e63\',\n      \'entCodetrace\' => \'227bed6425\',\n      \'entQte\' => \'10\',\n      \'entQtesurplus\' => \'1\',\n      \'entDateperomption\' => \'31/03/2019\',\n      \'entPu\' => \'1\',\n      \'tvaCode\' => \'0\',\n      \'entPrixtotale\' => \'10\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(184, 440, 'asyn_get_exception', 'RecupÃ©rer exception', '2019-03-26 13:25:45', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(185, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2019-03-26 13:27:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'1/2019\',\n  \'entExercice\' => \'2019\',\n  \'entBcolcode\' => \'1\',\n  \'entBcolexercice\' => \'1\',\n  \'entContratcode\' => \'1\',\n  \'entContratexercice\' => \'1\',\n  \'entDatereception\' => \'26/03/2019\',\n  \'entNumbl\' => \'\',\n  \'entDatebl\' => \'26/03/2019\',\n  \'entNumfacture\' => \'1\',\n  \'entDatefacture\' => \'26/03/2019\',\n  \'entTypecode\' => \'\',\n  \'entNumtransit\' => \'1\',\n  \'entDevise\' => \'\',\n  \'entCours\' => \'\',\n  \'entObservation\' => \'\',\n  \'entFournisseurcode\' => \'7\',\n  \'entCodes\' => \n  array (\n    0 => \n    array (\n      \'entArtcode\' => \'7686426e63\',\n      \'entCodetrace\' => \'227bed6425\',\n      \'entQte\' => \'10\',\n      \'entQtesurplus\' => \'1\',\n      \'entDateperomption\' => \'31/03/2019\',\n      \'entPu\' => \'1\',\n      \'tvaCode\' => \'0\',\n      \'entPrixtotale\' => \'10\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(186, 440, 'asyn_get_exception', 'RecupÃ©rer exception', '2019-03-26 13:27:49', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(187, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2019-03-26 13:28:09', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'1/2019\',\n  \'entExercice\' => \'2019\',\n  \'entBcolcode\' => \'1\',\n  \'entBcolexercice\' => \'1\',\n  \'entContratcode\' => \'1\',\n  \'entContratexercice\' => \'1\',\n  \'entDatereception\' => \'26/03/2019\',\n  \'entNumbl\' => \'\',\n  \'entDatebl\' => \'26/03/2019\',\n  \'entNumfacture\' => \'1\',\n  \'entDatefacture\' => \'26/03/2019\',\n  \'entTypecode\' => \'0\',\n  \'entNumtransit\' => \'1\',\n  \'entDevise\' => \'\',\n  \'entCours\' => \'\',\n  \'entObservation\' => \'\',\n  \'entFournisseurcode\' => \'7\',\n  \'entCodes\' => \n  array (\n    0 => \n    array (\n      \'entArtcode\' => \'7686426e63\',\n      \'entCodetrace\' => \'227bed6425\',\n      \'entQte\' => \'10\',\n      \'entQtesurplus\' => \'1\',\n      \'entDateperomption\' => \'31/03/2019\',\n      \'entPu\' => \'1\',\n      \'tvaCode\' => \'0\',\n      \'entPrixtotale\' => \'10\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(188, 440, 'asyn_get_exception', 'RecupÃ©rer exception', '2019-03-26 13:28:09', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(189, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2019-03-26 13:28:33', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(190, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 13:28:33', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(191, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2019-03-26 13:29:44', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(192, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 13:29:44', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(193, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2019-03-26 13:30:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(194, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 13:30:21', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(195, 461, 'index', 'Gestion de l\'inventaire', '2019-03-26 13:30:24', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(196, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 13:30:26', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(197, 494, 'asyn_invttable_state', 'inventaire-asyn_invttable_state', '2019-03-26 13:30:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(198, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-03-26 13:30:26', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141');
INSERT INTO `oper` (`idOPER`, `idMODUL`, `actionOPER`, `descriptOPER`, `dateOPER`, `catOPER`, `idPRF`, `IDUTIL`, `UTINOM`, `UTIPNOM`, `paramOPER`, `ipOPER`) VALUES
(199, 495, 'asyn_gen_invttable', 'inventaire-asyn_gen_invttable', '2019-03-26 13:30:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(200, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-03-26 13:30:26', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(201, 506, 'stk', 'Etat du stock', '2019-03-26 13:30:52', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(202, 551, 'index', 'Gestion des Devis/BC', '2019-03-26 13:30:58', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(203, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:30:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '165.51.234.141'),
(204, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:30:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '165.51.234.141'),
(205, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:30:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '165.51.234.141'),
(206, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:30:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '165.51.234.141'),
(207, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:30:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '165.51.234.141'),
(208, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-26 13:30:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(209, 583, 'index', 'Gestion de la production', '2019-03-26 13:31:01', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(210, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-26 13:31:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(211, 590, 'index', 'Gestion des factures/BL', '2019-03-26 13:31:03', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(212, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:31:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '165.51.234.141'),
(213, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-26 13:31:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(214, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:31:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '165.51.234.141'),
(215, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:31:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '165.51.234.141'),
(216, 461, 'index', 'Gestion de l\'inventaire', '2019-03-26 13:31:07', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(217, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 13:31:07', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(218, 494, 'asyn_invttable_state', 'inventaire-asyn_invttable_state', '2019-03-26 13:31:07', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(219, 518, 'index', 'Gestion des clients/fournisseur', '2019-03-26 13:31:10', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(220, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 13:31:11', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(221, 551, 'index', 'Gestion des Devis/BC', '2019-03-26 13:31:15', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(222, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:31:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '165.51.234.141'),
(223, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:31:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '165.51.234.141'),
(224, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:31:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '165.51.234.141'),
(225, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:31:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '165.51.234.141'),
(226, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:31:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '165.51.234.141'),
(227, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-26 13:31:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(228, 583, 'index', 'Gestion de la production', '2019-03-26 13:31:18', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(229, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-26 13:31:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(230, 456, 'index', 'Gestion des articles', '2019-03-26 13:31:23', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(231, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 13:31:24', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(232, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:31:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '165.51.234.141'),
(233, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:31:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '165.51.234.141'),
(234, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:31:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '165.51.234.141'),
(235, 460, 'index', 'Approvisionnement MP', '2019-03-26 13:31:28', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(236, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 13:31:29', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(237, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:31:29', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '165.51.234.141'),
(238, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:31:29', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '165.51.234.141'),
(239, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-26 13:31:29', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(240, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:31:29', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '165.51.234.141'),
(241, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-03-26 13:31:29', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(242, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2019-03-26 13:31:33', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(243, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 13:31:33', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(244, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2019-03-26 13:31:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(245, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:31:42', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(246, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:31:48', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(247, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:31:52', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(248, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:31:53', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(249, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:31:55', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(250, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:31:56', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(251, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:31:58', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(252, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:32:00', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(253, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:32:01', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(254, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:32:02', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(255, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-03-26 13:33:39', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(256, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:33:52', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(257, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:33:53', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(258, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2019-03-26 13:33:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'1/2019\',\n  \'entExercice\' => \'2019\',\n  \'entBcolcode\' => \'1\',\n  \'entBcolexercice\' => \'1\',\n  \'entContratcode\' => \'1\',\n  \'entContratexercice\' => \'1\',\n  \'entDatereception\' => \'26/03/2019\',\n  \'entNumbl\' => \'1\',\n  \'entDatebl\' => \'26/03/2019\',\n  \'entNumfacture\' => \'\',\n  \'entDatefacture\' => \'26/03/2019\',\n  \'entTypecode\' => \'1\',\n  \'entNumtransit\' => \'\',\n  \'entDevise\' => \'\',\n  \'entCours\' => \'\',\n  \'entObservation\' => \'\',\n  \'entFournisseurcode\' => \'7\',\n  \'entCodes\' => \n  array (\n    0 => \n    array (\n      \'entArtcode\' => \'7686426e63\',\n      \'entCodetrace\' => \'872f4efd61\',\n      \'entQte\' => \'5\',\n      \'entQtesurplus\' => \'\',\n      \'entDateperomption\' => \'31/03/2019\',\n      \'entPu\' => \'5\',\n      \'tvaCode\' => \'0\',\n      \'entPrixtotale\' => \'25\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(259, 440, 'asyn_get_exception', 'RecupÃ©rer exception', '2019-03-26 13:33:59', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(260, 583, 'index', 'Gestion de la production', '2019-03-26 13:34:15', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(261, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-26 13:34:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(262, 460, 'index', 'Approvisionnement MP', '2019-03-26 13:34:21', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(263, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:34:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '165.51.234.141'),
(264, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 13:34:22', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(265, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:34:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '165.51.234.141'),
(266, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:34:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '165.51.234.141'),
(267, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-26 13:34:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(268, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-03-26 13:34:22', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(269, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2019-03-26 13:34:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(270, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 13:34:25', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(271, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2019-03-26 13:34:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(272, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:34:33', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(273, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-03-26 13:34:37', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(274, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-03-26 13:34:53', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(275, 583, 'index', 'Gestion de la production', '2019-03-26 13:35:10', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(276, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-26 13:35:10', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(277, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-03-26 13:35:12', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(278, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2019-03-26 13:35:14', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(279, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-03-26 13:35:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'50\',\n    \'a_prodCodeDeviBc\' => \'1/2019\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'26/03/2019\',\n)', '165.51.234.141'),
(280, 460, 'index', 'Approvisionnement MP', '2019-03-26 13:35:33', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(281, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 13:35:33', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(282, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:35:33', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '165.51.234.141'),
(283, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:35:33', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '165.51.234.141'),
(284, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 13:35:33', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '165.51.234.141'),
(285, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-26 13:35:33', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(286, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-03-26 13:35:33', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(287, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2019-03-26 13:35:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(288, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 13:35:35', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(289, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2019-03-26 13:35:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(290, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:35:40', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(291, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-03-26 13:35:52', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(292, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:35:58', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(293, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:35:58', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(294, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-03-26 13:36:01', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(295, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:36:05', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(296, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-03-26 13:36:08', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(297, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 13:36:37', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(298, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2019-03-26 13:36:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'1/2019\',\n  \'entExercice\' => \'2019\',\n  \'entBcolcode\' => \'1\',\n  \'entBcolexercice\' => \'1\',\n  \'entContratcode\' => \'\',\n  \'entContratexercice\' => \'\',\n  \'entDatereception\' => \'26/03/2019\',\n  \'entNumbl\' => \'\',\n  \'entDatebl\' => \'\',\n  \'entNumfacture\' => \'\',\n  \'entDatefacture\' => \'26/03/2019\',\n  \'entTypecode\' => \'\',\n  \'entNumtransit\' => \'\',\n  \'entDevise\' => \'\',\n  \'entCours\' => \'\',\n  \'entObservation\' => \'\',\n  \'entFournisseurcode\' => \'7\',\n  \'entCodes\' => \n  array (\n    0 => \n    array (\n      \'entArtcode\' => \'7686426e63\',\n      \'entCodetrace\' => \'c54bb6fd73\',\n      \'entQte\' => \'12\',\n      \'entQtesurplus\' => \'\',\n      \'entDateperomption\' => \'26/03/2019\',\n      \'entPu\' => \'1\',\n      \'tvaCode\' => \'0\',\n      \'entPrixtotale\' => \'12\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(299, 440, 'asyn_get_exception', 'RecupÃ©rer exception', '2019-03-26 13:36:43', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(300, 583, 'index', 'Gestion de la production', '2019-03-26 13:36:51', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(301, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-26 13:36:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(302, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-03-26 13:36:55', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '165.51.234.141'),
(303, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2019-03-26 13:36:56', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '165.51.234.141'),
(304, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-03-26 13:36:56', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'50\',\n    \'a_prodCodeDeviBc\' => \'1/2019\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'26/03/2019\',\n)', '165.51.234.141'),
(305, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-03-26 13:38:23', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.234.141'),
(306, 433, 'index', 'Page d\'accueil', '2019-03-26 14:58:14', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(307, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-03-26 14:58:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.224.244.95'),
(308, 551, 'index', 'Gestion des Devis/BC', '2019-03-26 14:58:16', '', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(309, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 14:58:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '41.224.244.95'),
(310, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 14:58:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '41.224.244.95'),
(311, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 14:58:17', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '41.224.244.95'),
(312, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 14:58:17', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '41.224.244.95'),
(313, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 14:58:17', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '41.224.244.95'),
(314, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-26 14:58:17', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '41.224.244.95'),
(315, 460, 'index', 'Approvisionnement MP', '2019-03-26 14:58:26', '', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(316, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 14:58:26', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(317, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 14:58:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '41.224.244.95'),
(318, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 14:58:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '41.224.244.95'),
(319, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-26 14:58:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '41.224.244.95'),
(320, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-26 14:58:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '41.224.244.95'),
(321, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-03-26 14:58:27', '', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(322, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2019-03-26 14:58:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '41.224.244.95'),
(323, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 14:58:27', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(324, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2019-03-26 14:58:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '41.224.244.95'),
(325, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2019-03-26 15:00:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '41.224.244.95'),
(326, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-03-26 15:00:05', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(327, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2019-03-26 15:00:07', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '41.224.244.95'),
(328, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 15:00:30', '', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(329, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 15:00:32', '', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(330, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 15:00:35', '', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(331, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 15:00:39', '', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(332, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 15:00:40', '', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(333, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 15:00:42', '', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(334, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 15:00:42', '', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(335, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 15:00:44', '', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(336, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-03-26 15:01:08', '', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(337, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-03-26 15:01:18', '', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(338, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2019-03-26 15:01:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'1/2019\',\n  \'entExercice\' => \'2019\',\n  \'entBcolcode\' => \'10\',\n  \'entBcolexercice\' => \'2019\',\n  \'entContratcode\' => \'\',\n  \'entContratexercice\' => \'\',\n  \'entDatereception\' => \'21/03/2019\',\n  \'entNumbl\' => \'1\',\n  \'entDatebl\' => \'06/03/2019\',\n  \'entNumfacture\' => \'10\',\n  \'entDatefacture\' => \'22/03/2019\',\n  \'entTypecode\' => \'0\',\n  \'entNumtransit\' => \'\',\n  \'entDevise\' => \'\',\n  \'entCours\' => \'\',\n  \'entObservation\' => \'\',\n  \'entFournisseurcode\' => \'7\',\n  \'entCodes\' => \n  array (\n    0 => \n    array (\n      \'entArtcode\' => \'7686426e63\',\n      \'entCodetrace\' => \'e217b2bc69\',\n      \'entQte\' => \'10\',\n      \'entQtesurplus\' => \'\',\n      \'entDateperomption\' => \'06/03/2019\',\n      \'entPu\' => \'10\',\n      \'tvaCode\' => \'19\',\n      \'entPrixtotale\' => \'100\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '41.224.244.95'),
(339, 440, 'asyn_get_exception', 'RecupÃ©rer exception', '2019-03-26 15:01:23', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(340, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2019-03-26 15:05:54', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'1/2019\',\n  \'entExercice\' => \'2019\',\n  \'entBcolcode\' => \'10\',\n  \'entBcolexercice\' => \'2019\',\n  \'entContratcode\' => \'\',\n  \'entContratexercice\' => \'\',\n  \'entDatereception\' => \'21/03/2019\',\n  \'entNumbl\' => \'1\',\n  \'entDatebl\' => \'06/03/2019\',\n  \'entNumfacture\' => \'10\',\n  \'entDatefacture\' => \'22/03/2019\',\n  \'entTypecode\' => \'0\',\n  \'entNumtransit\' => \'\',\n  \'entDevise\' => \'\',\n  \'entCours\' => \'\',\n  \'entObservation\' => \'\',\n  \'entFournisseurcode\' => \'7\',\n  \'entCodes\' => \n  array (\n    0 => \n    array (\n      \'entArtcode\' => \'7686426e63\',\n      \'entCodetrace\' => \'e217b2bc69\',\n      \'entQte\' => \'10\',\n      \'entQtesurplus\' => \'\',\n      \'entDateperomption\' => \'06/03/2019\',\n      \'entPu\' => \'10\',\n      \'tvaCode\' => \'19\',\n      \'entPrixtotale\' => \'100\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '41.224.244.95'),
(341, 440, 'asyn_get_exception', 'RecupÃ©rer exception', '2019-03-26 15:05:54', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(342, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-03-28 08:43:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.235.60.18'),
(343, 551, 'index', 'Gestion des Devis/BC', '2019-03-28 08:43:48', '', 0, 1, 'admin', 'admin', '\'\'', '196.235.60.18'),
(344, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-28 08:43:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '196.235.60.18'),
(345, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-28 08:43:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '196.235.60.18'),
(346, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-28 08:43:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '196.235.60.18'),
(347, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-28 08:43:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '196.235.60.18'),
(348, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-28 08:43:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '196.235.60.18'),
(349, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-28 08:43:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.235.60.18'),
(350, 551, 'index', 'Gestion des Devis/BC', '2019-03-28 08:44:34', '', 0, 1, 'admin', 'admin', '\'\'', '196.235.60.18'),
(351, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-28 08:44:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '196.235.60.18'),
(352, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-28 08:44:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '196.235.60.18'),
(353, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-28 08:44:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '196.235.60.18'),
(354, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-28 08:44:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '196.235.60.18'),
(355, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-28 08:44:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '196.235.60.18'),
(356, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-28 08:44:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.235.60.18'),
(357, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-03-30 14:16:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.178.76.26'),
(358, 551, 'index', 'Gestion des Devis/BC', '2019-03-30 14:17:15', '', 0, 1, 'admin', 'admin', '\'\'', '196.178.76.26'),
(359, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-30 14:17:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '196.178.76.26'),
(360, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-30 14:17:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '196.178.76.26'),
(361, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-30 14:17:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '196.178.76.26'),
(362, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-30 14:17:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '196.178.76.26'),
(363, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-30 14:17:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '196.178.76.26'),
(364, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-30 14:17:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.178.76.26'),
(365, 551, 'index', 'Gestion des Devis/BC', '2019-03-30 14:17:24', '', 0, 1, 'admin', 'admin', '\'\'', '196.178.76.26'),
(366, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-30 14:17:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '196.178.76.26'),
(367, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-30 14:17:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '196.178.76.26'),
(368, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-30 14:17:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '196.178.76.26'),
(369, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-30 14:17:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '196.178.76.26'),
(370, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-03-30 14:17:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '196.178.76.26'),
(371, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-03-30 14:17:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.178.76.26'),
(372, 433, 'index', 'Page d\'accueil', '2019-04-02 10:30:59', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(373, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-04-02 10:31:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.224.244.95'),
(374, 551, 'index', 'Gestion des Devis/BC', '2019-04-02 10:31:13', '', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(375, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 10:31:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '41.224.244.95'),
(376, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-04-02 10:31:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '41.224.244.95'),
(377, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 10:31:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '41.224.244.95'),
(378, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 10:31:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '41.224.244.95'),
(379, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 10:31:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '41.224.244.95'),
(380, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 10:31:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '41.224.244.95'),
(381, 558, 'asyn_get_datauniqcode', 'devis-asyn_get_datauniqcode', '2019-04-02 10:31:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '41.224.244.95'),
(382, 456, 'index', 'Gestion des articles', '2019-04-02 10:31:44', '', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(383, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-04-02 10:31:45', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(384, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 10:31:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.224.244.95'),
(385, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 10:31:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '41.224.244.95'),
(386, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 10:31:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.224.244.95'),
(387, 518, 'index', 'Gestion des clients/fournisseur', '2019-04-02 10:31:49', '', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(388, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-04-02 10:31:50', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(389, 520, 'asyn_ajout_fournisseur', 'fournisseur-asyn_ajout_fournisseur', '2019-04-02 10:32:47', '', 0, 1, 'admin', 'admin', 'array (\n  \'frsCode\' => \'\',\n  \'frsRaisonsociale\' => \'Condi-Smart\',\n  \'frsAdresse\' => \'technopark elgazala\',\n  \'frsTel\' => \'29200547\',\n  \'frsFax\' => \'715454545\',\n  \'frsEmail\' => \'contact@gmail.com\',\n  \'frsMf\' => \'14023589\',\n  \'frsTypecode\' => \'1\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '41.224.244.95'),
(390, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-04-02 10:32:47', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(391, 519, 'asyn_get_fournisseur', 'fournisseur-asyn_get_fournisseur', '2019-04-02 10:32:54', '', 0, 1, 'admin', 'admin', 'array (\n  \'frsCoder\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '41.224.244.95'),
(392, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-04-02 10:32:55', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.224.244.95'),
(393, 433, 'index', 'Page d\'accueil', '2019-04-02 19:44:50', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.74.97'),
(394, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-04-02 19:44:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '197.31.74.97'),
(395, 456, 'index', 'Gestion des articles', '2019-04-02 19:45:02', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.74.97'),
(396, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-04-02 19:45:03', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.74.97'),
(397, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 19:45:03', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '197.31.74.97'),
(398, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 19:45:03', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '197.31.74.97'),
(399, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 19:45:03', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '197.31.74.97'),
(400, 456, 'index', 'Gestion des articles', '2019-04-02 19:47:18', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.74.97'),
(401, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-04-02 19:47:19', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.74.97'),
(402, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 19:47:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '197.31.74.97'),
(403, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 19:47:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '197.31.74.97'),
(404, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 19:47:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '197.31.74.97'),
(405, 456, 'index', 'Gestion des articles', '2019-04-02 19:49:21', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.74.97'),
(406, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-04-02 19:49:22', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.74.97'),
(407, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 19:49:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '197.31.74.97'),
(408, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 19:49:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '197.31.74.97'),
(409, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 19:49:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '197.31.74.97'),
(410, 518, 'index', 'Gestion des clients/fournisseur', '2019-04-02 19:49:25', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.74.97'),
(411, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-04-02 19:49:26', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.74.97'),
(412, 456, 'index', 'Gestion des articles', '2019-04-02 20:08:12', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.74.97'),
(413, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-04-02 20:08:13', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.74.97');
INSERT INTO `oper` (`idOPER`, `idMODUL`, `actionOPER`, `descriptOPER`, `dateOPER`, `catOPER`, `idPRF`, `IDUTIL`, `UTINOM`, `UTIPNOM`, `paramOPER`, `ipOPER`) VALUES
(414, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 20:08:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '197.31.74.97'),
(415, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 20:08:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '197.31.74.97'),
(416, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 20:08:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '197.31.74.97'),
(417, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-04-02 20:08:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '197.31.74.97'),
(418, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-04-02 20:08:22', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.74.97'),
(419, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-04-02 20:08:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '197.31.74.97'),
(420, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-04-02 20:08:28', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.74.97'),
(421, 456, 'index', 'Gestion des articles', '2019-04-02 20:08:31', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.74.97'),
(422, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-04-02 20:08:32', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.74.97'),
(423, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 20:08:32', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '197.31.74.97'),
(424, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 20:08:32', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '197.31.74.97'),
(425, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-02 20:08:32', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '197.31.74.97'),
(426, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-04-02 20:08:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '197.31.74.97'),
(427, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-04-02 20:08:35', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.74.97'),
(428, 433, 'index', 'Page d\'accueil', '2019-04-13 21:14:36', 'P', 0, 1, 'admin', 'admin', '\'\'', '66.249.93.216'),
(429, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-04-13 21:14:38', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '196.179.160.13'),
(430, 583, 'index', 'Gestion de la production', '2019-04-13 21:15:14', '', 0, 1, 'admin', 'admin', '\'\'', '66.249.93.214'),
(431, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-04-13 21:15:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.179.160.13'),
(432, 461, 'index', 'Gestion de l\'inventaire', '2019-04-13 21:15:33', '', 0, 1, 'admin', 'admin', '\'\'', '66.249.93.215'),
(433, 494, 'asyn_invttable_state', 'inventaire-asyn_invttable_state', '2019-04-13 21:15:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.179.160.13'),
(434, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-04-13 21:15:34', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.179.160.13'),
(435, 460, 'index', 'Approvisionnement MP', '2019-04-13 21:15:47', '', 0, 1, 'admin', 'admin', '\'\'', '66.249.93.216'),
(436, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-04-13 21:15:48', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.179.160.13'),
(437, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-13 21:15:48', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '196.179.160.13'),
(438, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-13 21:15:48', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '196.179.160.13'),
(439, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-04-13 21:15:48', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.179.160.13'),
(440, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-13 21:15:48', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '196.179.160.13'),
(441, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-04-13 21:15:48', '', 0, 1, 'admin', 'admin', '\'\'', '196.179.160.13'),
(442, 461, 'index', 'Gestion de l\'inventaire', '2019-04-13 21:15:54', '', 0, 1, 'admin', 'admin', '\'\'', '66.249.93.215'),
(443, 494, 'asyn_invttable_state', 'inventaire-asyn_invttable_state', '2019-04-13 21:15:55', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.179.160.13'),
(444, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-04-13 21:15:55', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.179.160.13'),
(445, 583, 'index', 'Gestion de la production', '2019-04-13 21:15:56', '', 0, 1, 'admin', 'admin', '\'\'', '66.249.93.214'),
(446, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-04-13 21:15:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.179.160.13'),
(447, 433, 'index', 'Page d\'accueil', '2019-04-13 21:15:58', 'P', 0, 1, 'admin', 'admin', '\'\'', '66.249.93.215'),
(448, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-04-13 21:15:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '196.179.160.13'),
(449, 433, 'index', 'Page d\'accueil', '2019-04-13 21:16:01', 'P', 0, 1, 'admin', 'admin', '\'\'', '66.249.93.215'),
(450, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-04-13 21:16:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '196.179.160.13'),
(451, 433, 'index', 'Page d\'accueil', '2019-04-25 09:21:58', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.240.220'),
(452, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-04-25 09:22:14', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '196.229.240.220'),
(453, 456, 'index', 'Gestion des articles', '2019-04-25 09:22:38', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.240.220'),
(454, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-04-25 09:22:40', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.240.220'),
(455, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 09:22:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.229.240.220'),
(456, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 09:22:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.229.240.220'),
(457, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 09:22:43', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '196.229.240.220'),
(458, 470, 'asyn_get_artuniqcode', 'article-asyn_get_artuniqcode', '2019-04-25 09:22:56', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.240.220'),
(459, 433, 'index', 'Page d\'accueil', '2019-04-25 09:23:55', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.240.220'),
(460, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-04-25 09:23:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '196.229.240.220'),
(461, 551, 'index', 'Gestion des Devis/BC', '2019-04-25 09:24:26', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.240.220'),
(462, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 09:24:31', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '196.229.240.220'),
(463, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 09:24:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '196.229.240.220'),
(464, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 09:25:07', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '196.229.240.220'),
(465, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 09:25:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '196.229.240.220'),
(466, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 09:25:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '196.229.240.220'),
(467, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-04-25 09:25:29', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.229.240.220'),
(468, 433, 'index', 'Page d\'accueil', '2019-04-25 14:25:24', 'P', 0, 1, 'admin', 'admin', '\'\'', '66.249.93.215'),
(469, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-04-25 14:25:30', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '197.9.48.169'),
(470, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-04-25 14:26:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '197.9.48.169'),
(471, 583, 'index', 'Gestion de la production', '2019-04-25 14:26:42', '', 0, 1, 'admin', 'admin', '\'\'', '66.249.93.215'),
(472, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-04-25 14:26:53', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.9.48.169'),
(473, 583, 'index', 'Gestion de la production', '2019-04-25 14:27:42', '', 0, 1, 'admin', 'admin', '\'\'', '66.249.93.214'),
(474, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-04-25 14:27:48', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.9.48.169'),
(475, 551, 'index', 'Gestion des Devis/BC', '2019-04-25 14:28:00', '', 0, 1, 'admin', 'admin', '\'\'', '66.249.93.215'),
(476, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 14:28:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '197.9.48.169'),
(477, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 14:28:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '197.9.48.169'),
(478, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 14:28:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '197.9.48.169'),
(479, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 14:28:08', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '197.9.48.169'),
(480, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 14:28:08', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '197.9.48.169'),
(481, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-04-25 14:28:09', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.9.48.169'),
(482, 461, 'index', 'Gestion de l\'inventaire', '2019-04-25 14:31:40', '', 0, 1, 'admin', 'admin', '\'\'', '66.249.93.215'),
(483, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-04-25 14:32:10', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.9.48.169'),
(484, 494, 'asyn_invttable_state', 'inventaire-asyn_invttable_state', '2019-04-25 14:32:46', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.9.48.169'),
(485, 433, 'index', 'Page d\'accueil', '2019-04-25 15:36:00', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.230.111.248'),
(486, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-04-25 15:36:47', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.230.111.248'),
(487, 433, 'index', 'Page d\'accueil', '2019-04-25 16:07:39', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.230.111.248'),
(488, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-04-25 16:07:48', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.230.111.248'),
(489, 456, 'index', 'Gestion des articles', '2019-04-25 16:08:55', '', 0, 1, 'admin', 'admin', '\'\'', '41.230.111.248'),
(490, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-04-25 16:08:57', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.230.111.248'),
(491, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 16:09:08', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.230.111.248'),
(492, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 16:09:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.230.111.248'),
(493, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 16:09:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '41.230.111.248'),
(494, 525, 'asyn_ajout_cat', 'article-asyn_ajout_cat', '2019-04-25 16:13:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'catart\' => \'dattes branchées\',\n)', '41.230.111.248'),
(495, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-04-25 16:14:00', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.230.111.248'),
(496, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 16:14:02', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.230.111.248'),
(497, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 16:14:03', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.230.111.248'),
(498, 525, 'asyn_ajout_cat', 'article-asyn_ajout_cat', '2019-04-25 16:14:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'catart\' => \'dattes standards\',\n)', '41.230.111.248'),
(499, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-04-25 16:14:28', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.230.111.248'),
(500, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 16:14:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.230.111.248'),
(501, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 16:14:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.230.111.248'),
(502, 525, 'asyn_ajout_cat', 'article-asyn_ajout_cat', '2019-04-25 16:15:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'catart\' => \'dattes séches\',\n)', '41.230.111.248'),
(503, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-04-25 16:15:01', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.230.111.248'),
(504, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 16:15:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.230.111.248'),
(505, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 16:15:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.230.111.248'),
(506, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2019-04-25 16:15:47', '', 0, 1, 'admin', 'admin', 'array (\n  \'catart\' => \'6\',\n)', '41.230.111.248'),
(507, 440, 'asyn_get_exception', 'RecupÃ©rer exception', '2019-04-25 16:15:50', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.230.111.248'),
(508, 433, 'index', 'Page d\'accueil', '2019-04-25 16:25:33', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.230.111.248'),
(509, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-04-25 16:25:40', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.230.111.248'),
(510, 460, 'index', 'Approvisionnement MP', '2019-04-25 17:04:40', '', 0, 1, 'admin', 'admin', '\'\'', '41.230.111.248'),
(511, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 17:04:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '41.230.111.248'),
(512, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 17:04:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '41.230.111.248'),
(513, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-04-25 17:04:43', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '41.230.111.248'),
(514, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-04-25 17:04:46', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '41.230.111.248'),
(515, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-04-25 17:04:47', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.230.111.248'),
(516, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-04-25 17:04:48', '', 0, 1, 'admin', 'admin', '\'\'', '41.230.111.248'),
(517, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2019-04-25 17:06:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '41.230.111.248'),
(518, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2019-04-25 17:06:33', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '41.230.111.248'),
(519, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2019-04-25 17:06:54', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '41.230.111.248'),
(520, 461, 'index', 'Gestion de l\'inventaire', '2019-04-25 17:08:00', '', 0, 1, 'admin', 'admin', '\'\'', '41.230.111.248'),
(521, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-04-25 17:08:06', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.230.111.248'),
(522, 494, 'asyn_invttable_state', 'inventaire-asyn_invttable_state', '2019-04-25 17:08:07', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '41.230.111.248'),
(523, 493, 'asyn_gen_ecart', 'inventaire-asyn_gen_ecart', '2019-04-25 17:08:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '41.230.111.248'),
(524, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-04-25 17:08:58', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.230.111.248'),
(525, 518, 'index', 'Gestion des clients/fournisseur', '2019-04-25 17:12:37', '', 0, 1, 'admin', 'admin', '\'\'', '41.230.111.248'),
(526, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-04-25 17:12:51', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.230.111.248'),
(527, 433, 'index', 'Page d\'accueil', '2019-04-30 09:49:31', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.230.201.213'),
(528, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-04-30 09:49:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.230.201.213'),
(529, 433, 'index', 'Page d\'accueil', '2019-04-30 17:14:38', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.230.201.213'),
(530, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-04-30 17:14:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.230.201.213'),
(531, 433, 'index', 'Page d\'accueil', '2019-05-12 04:40:49', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.213.28'),
(532, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-12 04:40:53', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.225.213.28'),
(533, 433, 'index', 'Page d\'accueil', '2019-05-12 04:41:38', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.213.28'),
(534, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-12 04:41:38', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.225.213.28'),
(535, 433, 'index', 'Page d\'accueil', '2019-05-12 04:42:14', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.213.28'),
(536, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-12 04:42:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.225.213.28'),
(537, 433, 'index', 'Page d\'accueil', '2019-05-13 15:51:49', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(538, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-13 15:51:53', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '196.224.154.55'),
(539, 456, 'index', 'Gestion des articles', '2019-05-13 15:52:02', '', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(540, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-13 15:52:03', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(541, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-13 15:52:03', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.224.154.55'),
(542, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-13 15:52:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.224.154.55'),
(543, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-13 15:52:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '196.224.154.55'),
(544, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-05-13 15:52:08', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '196.224.154.55'),
(545, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-13 15:52:08', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(546, 590, 'index', 'Gestion des factures/BL', '2019-05-13 15:52:20', '', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(547, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-13 15:52:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '196.224.154.55'),
(548, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-13 15:52:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '196.224.154.55'),
(549, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-13 15:52:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '196.224.154.55'),
(550, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-13 15:52:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.224.154.55'),
(551, 583, 'index', 'Gestion de la production', '2019-05-13 15:52:25', '', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(552, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-13 15:52:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.224.154.55'),
(553, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-05-13 15:52:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '196.224.154.55'),
(554, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2019-05-13 15:52:33', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '196.224.154.55'),
(555, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-05-13 15:52:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'50\',\n    \'a_prodCodeDeviBc\' => \'1/2019\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'13/05/2019\',\n)', '196.224.154.55'),
(556, 456, 'index', 'Gestion des articles', '2019-05-13 15:52:59', '', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(557, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-13 15:53:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.224.154.55'),
(558, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-13 15:53:00', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(559, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-13 15:53:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.224.154.55'),
(560, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-13 15:53:02', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '196.224.154.55'),
(561, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-05-13 15:53:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '196.224.154.55'),
(562, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-13 15:53:04', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(563, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2019-05-13 15:53:10', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'art\' => \'7686426e63\',\n  \'clas\' => \'2\',\n)', '196.224.154.55'),
(564, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-05-13 15:53:10', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'7686426e63\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'7686426e63\',\n    \'g_artDesignation\' => \'MP\',\n    \'g_artUnite\' => \'\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'0\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'g_artDelaislivraison\' => \'1\',\n    \'g_artClass\' => \'2\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'1\',\n    \'g_artTva\' => \'1\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'6\',\n    \'i_catartDesignation\' => \'DEGLET NOUR\',\n    \'p_art_code\' => \'7686426e63\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '196.224.154.55'),
(565, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-13 15:53:10', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(566, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-13 15:53:10', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(567, 433, 'index', 'Page d\'accueil', '2019-05-13 15:53:11', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(568, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2019-05-13 15:53:29', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'art\' => \'7686426e63\',\n  \'clas\' => \'2\',\n)', '196.224.154.55'),
(569, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-05-13 15:53:29', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'7686426e63\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'7686426e63\',\n    \'g_artDesignation\' => \'MP\',\n    \'g_artUnite\' => \'\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'0\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'g_artDelaislivraison\' => \'1\',\n    \'g_artClass\' => \'2\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'1\',\n    \'g_artTva\' => \'1\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'6\',\n    \'i_catartDesignation\' => \'DEGLET NOUR\',\n    \'p_art_code\' => \'7686426e63\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '196.224.154.55'),
(570, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-13 15:53:31', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(571, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-13 15:53:31', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(572, 433, 'index', 'Page d\'accueil', '2019-05-13 15:53:31', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(573, 460, 'index', 'Approvisionnement MP', '2019-05-13 15:53:39', '', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(574, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-13 15:53:40', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(575, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-13 15:53:40', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '196.224.154.55'),
(576, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-13 15:53:41', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '196.224.154.55'),
(577, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-13 15:53:41', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '196.224.154.55'),
(578, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-13 15:53:41', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.224.154.55'),
(579, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-05-13 15:53:41', '', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(580, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2019-05-13 15:53:44', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '196.224.154.55'),
(581, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-05-13 15:53:50', '', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(582, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-05-13 15:54:19', '', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(583, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-05-13 15:55:02', '', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(584, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-05-13 15:55:08', '', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(585, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-05-13 15:55:28', '', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(586, 472, 'asyn_ajout_entree', 'entree-asyn_ajout_entree', '2019-05-13 15:56:33', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'1/2019\',\n  \'entExercice\' => \'2019\',\n  \'entBcolcode\' => \'1\',\n  \'entBcolexercice\' => \'1\',\n  \'entContratcode\' => \'1\',\n  \'entContratexercice\' => \'1\',\n  \'entDatereception\' => \'13/05/2019\',\n  \'entNumbl\' => \'1\',\n  \'entDatebl\' => \'13/05/2019\',\n  \'entNumfacture\' => \'1\',\n  \'entDatefacture\' => \'13/05/2019\',\n  \'entTypecode\' => \'0\',\n  \'entNumtransit\' => \'\',\n  \'entDevise\' => \'\',\n  \'entCours\' => \'\',\n  \'entObservation\' => \'1\',\n  \'entFournisseurcode\' => \'7\',\n  \'entCodes\' => \n  array (\n    0 => \n    array (\n      \'entArtcode\' => \'7686426e63\',\n      \'entCodetrace\' => \'70555ced07\',\n      \'entQte\' => \'20\',\n      \'entQtesurplus\' => \'\',\n      \'entDateperomption\' => \'29/06/2019\',\n      \'entPu\' => \'2\',\n      \'tvaCode\' => \'0\',\n      \'entPrixtotale\' => \'40\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '196.224.154.55'),
(587, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-05-13 15:56:33', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(588, 583, 'index', 'Gestion de la production', '2019-05-13 15:56:41', '', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(589, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-13 15:56:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.224.154.55'),
(590, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-05-13 15:56:44', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '196.224.154.55'),
(591, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2019-05-13 15:56:47', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '196.224.154.55'),
(592, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-05-13 15:56:48', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'50\',\n    \'a_prodCodeDeviBc\' => \'1/2019\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'13/05/2019\',\n)', '196.224.154.55'),
(593, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2019-05-13 15:57:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'proddetailArticleCodes\' => \'MP-7686426e63\',\n  \'consprodQtes\' => \'10\',\n  \'undefined\' => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '196.224.154.55'),
(594, 440, 'asyn_get_exception', 'RecupÃ©rer exception', '2019-05-13 15:57:06', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(595, 599, 'asyn_genprod', 'prod-asyn_genprod', '2019-05-13 15:58:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'50\',\n  \'prodCodeProd\' => \'1/2019\',\n  \'prodExerciceProd\' => \'2019\',\n  \'journeDate\' => \'13/05/2019\',\n  \'prodDateProd\' => \'\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'prodDetailId\' => \'56\',\n      \'consProdId\' => \n      array (\n        0 => \n        array (\n          \'consprodType\' => \'MP\',\n          \'consprodArticleCode\' => \'7686426e63\',\n          \'consprodCodeFrs\' => \'7\',\n          \'consprodQte\' => \'10<i class=\"fa fa\',\n        ),\n      ),\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'journeQte\' => \'10\',\n      \'journeDatePeromption\' => \'13/05/2019\',\n      \'qteProduite\' => \'null\',\n      \'proddetailQteDevis\' => \'10\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '196.224.154.55'),
(596, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-05-13 15:58:17', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(597, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-05-13 15:58:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n  \'formapp\' => \n  array (\n    \'qtestk\' => \n    array (\n      0 => \n      array (\n        \'art\' => \'7686426e63\',\n        \'qte\' => \'10<i class=\"fa fa\',\n      ),\n    ),\n  ),\n)', '196.224.154.55'),
(598, 600, 'asyn_validprod', 'prod-asyn_validprod', '2019-05-13 15:58:31', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'50\',\n    \'a_prodCodeDeviBc\' => \'1/2019\',\n    \'a_prodCodeProd\' => \'1/2019\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'75\',\n    \'b_etatLibelle\' => \'Bon de prod générer\',\n  ),\n)', '196.224.154.55'),
(599, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-05-13 15:58:34', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(600, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-05-13 15:58:38', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n  \'formapp\' => \n  array (\n    \'qtestk\' => \n    array (\n      0 => \n      array (\n        \'art\' => \'7686426e63\',\n        \'qte\' => \'10<i class=\"fa fa\',\n      ),\n    ),\n  ),\n)', '196.224.154.55'),
(601, 590, 'index', 'Gestion des factures/BL', '2019-05-13 15:58:47', '', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(602, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-13 15:58:47', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '196.224.154.55'),
(603, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-13 15:58:47', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '196.224.154.55'),
(604, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-13 15:58:48', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '196.224.154.55'),
(605, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-13 15:58:48', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.224.154.55'),
(606, 591, 'asyn_get_data', 'facturation-asyn_get_data', '2019-05-13 15:58:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '196.224.154.55'),
(607, 597, 'asyn_get_datauniqcode', 'facturation-asyn_get_datauniqcode', '2019-05-13 15:58:54', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '196.224.154.55'),
(608, 592, 'asyn_get_data_object', 'facturation-asyn_get_data_object', '2019-05-13 15:58:56', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeProd\' => \'1/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'50\',\n    \'a_prodCodeDeviBc\' => \'1/2019\',\n    \'a_prodCodeProd\' => \'1/2019\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-05-13 14:58:31.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'76\',\n    \'b_etatLibelle\' => \'Bon de prod valider\',\n  ),\n)', '196.224.154.55'),
(609, 603, 'asyn_genfact', 'facturation-asyn_genfact', '2019-05-13 15:59:31', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'50\',\n  \'prodCodeDeviBc\' => \'1/2019\',\n  \'prodExerciceBc\' => \'2019\',\n  \'prodCodeProd\' => \'1/2019\',\n  \'prodExerciceProd\' => \'2019\',\n  \'prodDateProd\' => \'13/05/2019\',\n  \'prodCodeClient\' => \'6\',\n  \'prodCodeFacture\' => \'1/2019\',\n  \'prodExerciceBlfacture\' => \'2019\',\n  \'prodCodeBl\' => \'1/2019\',\n  \'prodDateBl\' => \'13/05/2019\',\n  \'prodDateFacture\' => \'13/05/2019\',\n  \'prodDevise\' => \'1\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'prodDetailId\' => \'56\',\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'proddetailQteDevis\' => \'10\',\n      \'proddetailPrixUniaireDevise\' => \'11\',\n      \'proddetailTva\' => \'0\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '196.224.154.55'),
(610, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-05-13 15:59:32', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(611, 591, 'asyn_get_data', 'facturation-asyn_get_data', '2019-05-13 15:59:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '196.224.154.55'),
(612, 592, 'asyn_get_data_object', 'facturation-asyn_get_data_object', '2019-05-13 15:59:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeProd\' => \'1/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'50\',\n    \'a_prodCodeDeviBc\' => \'1/2019\',\n    \'a_prodCodeProd\' => \'1/2019\',\n    \'a_prodCodeBl\' => \'1/2019\',\n    \'a_prodCodeFacture\' => \'1/2019\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'2019\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-05-13 14:58:31.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2019-05-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2019-05-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n)', '196.224.154.55'),
(613, 551, 'index', 'Gestion des Devis/BC', '2019-05-13 16:00:22', '', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(614, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-13 16:00:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '196.224.154.55');
INSERT INTO `oper` (`idOPER`, `idMODUL`, `actionOPER`, `descriptOPER`, `dateOPER`, `catOPER`, `idPRF`, `IDUTIL`, `UTINOM`, `UTIPNOM`, `paramOPER`, `ipOPER`) VALUES
(615, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-13 16:00:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '196.224.154.55'),
(616, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-13 16:00:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '196.224.154.55'),
(617, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-13 16:00:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '196.224.154.55'),
(618, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-13 16:00:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '196.224.154.55'),
(619, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-13 16:00:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.224.154.55'),
(620, 552, 'asyn_get_data', 'devis-asyn_get_data', '2019-05-13 16:00:31', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '196.224.154.55'),
(621, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-13 16:00:34', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(622, 558, 'asyn_get_datauniqcode', 'devis-asyn_get_datauniqcode', '2019-05-13 16:00:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '196.224.154.55'),
(623, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-05-13 16:01:03', '', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.55'),
(624, 433, 'index', 'Page d\'accueil', '2019-05-14 10:32:57', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(625, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-14 10:33:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.225.6.90'),
(626, 433, 'index', 'Page d\'accueil', '2019-05-14 10:33:03', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(627, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-14 10:33:03', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.225.6.90'),
(628, 433, 'index', 'Page d\'accueil', '2019-05-20 11:30:05', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(629, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-20 11:30:12', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.225.6.90'),
(630, 433, 'index', 'Page d\'accueil', '2019-05-20 11:40:22', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.224.154.30'),
(631, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-20 11:40:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '196.224.154.30'),
(632, 433, 'index', 'Page d\'accueil', '2019-05-22 09:33:33', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(633, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-22 09:33:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.225.6.90'),
(634, 433, 'index', 'Page d\'accueil', '2019-05-22 09:34:18', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.197.141'),
(635, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-22 09:34:18', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '165.51.197.141'),
(636, 456, 'index', 'Gestion des articles', '2019-05-22 09:34:51', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.197.141'),
(637, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-22 09:34:52', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.197.141'),
(638, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 09:34:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '165.51.197.141'),
(639, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 09:34:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '165.51.197.141'),
(640, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 09:34:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '165.51.197.141'),
(641, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-05-22 09:34:55', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '165.51.197.141'),
(642, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-22 09:34:55', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.197.141'),
(643, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2019-05-22 09:35:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'art\' => \'7673457953\',\n  \'clas\' => \'1\',\n)', '165.51.197.141'),
(644, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-05-22 09:35:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'7673457953\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'7673457953\',\n    \'g_artDesignation\' => \'Dattes branchée\',\n    \'g_artUnite\' => \'\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'5c9a1778d00ce.jpg\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'0\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'g_artDelaislivraison\' => \'0\',\n    \'g_artClass\' => \'1\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'10\',\n    \'g_artTva\' => \'0\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'6\',\n    \'i_catartDesignation\' => \'DEGLET NOUR\',\n    \'p_art_code\' => \'7673457953\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '165.51.197.141'),
(645, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-22 09:35:06', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.197.141'),
(646, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-22 09:35:06', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.197.141'),
(647, 470, 'asyn_get_artuniqcode', 'article-asyn_get_artuniqcode', '2019-05-22 09:35:16', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.197.141'),
(648, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-05-22 09:36:01', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.197.141'),
(649, 467, 'asyn_ajout_article', 'article-asyn_ajout_article', '2019-05-22 09:36:41', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.197.141'),
(650, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-05-22 09:36:41', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.197.141'),
(651, 551, 'index', 'Gestion des Devis/BC', '2019-05-22 09:36:54', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.197.141'),
(652, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 09:36:54', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '165.51.197.141'),
(653, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 09:36:54', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '165.51.197.141'),
(654, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 09:36:54', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '165.51.197.141'),
(655, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 09:36:54', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '165.51.197.141'),
(656, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 09:36:55', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '165.51.197.141'),
(657, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-22 09:36:55', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.197.141'),
(658, 552, 'asyn_get_data', 'devis-asyn_get_data', '2019-05-22 09:36:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '165.51.197.141'),
(659, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-22 09:36:57', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.197.141'),
(660, 558, 'asyn_get_datauniqcode', 'devis-asyn_get_datauniqcode', '2019-05-22 09:37:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '165.51.197.141'),
(661, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-05-22 09:37:04', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.197.141'),
(662, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-05-22 09:37:34', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.197.141'),
(663, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-05-22 09:38:29', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.197.141'),
(664, 554, 'asyn_ajout_data', 'devis-asyn_ajout_data', '2019-05-22 09:38:32', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'\',\n  \'prodCodeDeviBc\' => \'2/2019\',\n  \'prodExerciceDevis\' => \'2019\',\n  \'prodDateDevis\' => \'22/05/2019\',\n  \'prodDateBc\' => \'\',\n  \'prodExerciceBc\' => \'\',\n  \'prodCodeClient\' => \'6\',\n  \'prodCommerciale\' => \'1\',\n  \'prodDevise\' => \'3\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'proddetailQteDevis\' => \'10\',\n      \'proddetailPrixUniaireDeviseDevis\' => \'5\',\n      \'proddetailTvaDevis\' => \'0\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '165.51.197.141'),
(665, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-05-22 09:38:33', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.197.141'),
(666, 552, 'asyn_get_data', 'devis-asyn_get_data', '2019-05-22 09:38:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '165.51.197.141'),
(667, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-22 09:38:37', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.197.141'),
(668, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2019-05-22 09:38:40', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'2/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'51\',\n    \'a_prodCodeDeviBc\' => \'2/2019\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-05-22 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \'\',\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'71\',\n    \'b_etatLibelle\' => \'Devis Cr\',\n  ),\n)', '165.51.197.141'),
(669, 551, 'index', 'Gestion des Devis/BC', '2019-05-22 09:40:30', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(670, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 09:40:31', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '41.225.6.90'),
(671, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 09:40:31', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '41.225.6.90'),
(672, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 09:40:31', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '41.225.6.90'),
(673, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 09:40:31', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '41.225.6.90'),
(674, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 09:40:31', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '41.225.6.90'),
(675, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-22 09:40:31', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '41.225.6.90'),
(676, 433, 'index', 'Page d\'accueil', '2019-05-22 09:58:28', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(677, 433, 'index', 'Page d\'accueil', '2019-05-22 09:58:36', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(678, 433, 'index', 'Page d\'accueil', '2019-05-22 09:59:29', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(679, 433, 'index', 'Page d\'accueil', '2019-05-22 10:03:08', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(680, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-22 10:03:11', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.225.6.90'),
(681, 551, 'index', 'Gestion des Devis/BC', '2019-05-22 10:03:18', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(682, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:03:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '41.225.6.90'),
(683, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:03:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '41.225.6.90'),
(684, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:03:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '41.225.6.90'),
(685, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:03:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '41.225.6.90'),
(686, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:03:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '41.225.6.90'),
(687, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-22 10:03:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '41.225.6.90'),
(688, 583, 'index', 'Gestion de la production', '2019-05-22 10:03:57', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(689, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-22 10:03:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '41.225.6.90'),
(690, 551, 'index', 'Gestion des Devis/BC', '2019-05-22 10:04:00', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(691, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:04:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '41.225.6.90'),
(692, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:04:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '41.225.6.90'),
(693, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:04:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '41.225.6.90'),
(694, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:04:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '41.225.6.90'),
(695, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:04:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '41.225.6.90'),
(696, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-22 10:04:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '41.225.6.90'),
(697, 558, 'asyn_get_datauniqcode', 'devis-asyn_get_datauniqcode', '2019-05-22 10:04:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '41.225.6.90'),
(698, 518, 'index', 'Gestion des clients/fournisseur', '2019-05-22 10:04:11', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(699, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-22 10:04:11', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(700, 520, 'asyn_ajout_fournisseur', 'fournisseur-asyn_ajout_fournisseur', '2019-05-22 10:05:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'frsCode\' => \'\',\n  \'frsRaisonsociale\' => \'clien test\',\n  \'frsAdresse\' => \'adresse\',\n  \'frsTel\' => \'11223665\',\n  \'frsFax\' => \'55777888\',\n  \'frsEmail\' => \'rached.bkhalifa@gmail.com\',\n  \'frsMf\' => \'mf 555 5585 \',\n  \'frsTypecode\' => \'1\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '41.225.6.90'),
(701, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-05-22 10:05:00', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(702, 519, 'asyn_get_fournisseur', 'fournisseur-asyn_get_fournisseur', '2019-05-22 10:05:11', '', 0, 1, 'admin', 'admin', 'array (\n  \'frsCoder\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '41.225.6.90'),
(703, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-22 10:05:11', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(704, 551, 'index', 'Gestion des Devis/BC', '2019-05-22 10:05:36', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(705, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:05:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '41.225.6.90'),
(706, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:05:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '41.225.6.90'),
(707, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:05:38', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '41.225.6.90'),
(708, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:05:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '41.225.6.90'),
(709, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:05:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '41.225.6.90'),
(710, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-22 10:05:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '41.225.6.90'),
(711, 558, 'asyn_get_datauniqcode', 'devis-asyn_get_datauniqcode', '2019-05-22 10:05:40', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '41.225.6.90'),
(712, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-05-22 10:05:46', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(713, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-05-22 10:05:47', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(714, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-05-22 10:05:48', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(715, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-05-22 10:05:53', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(716, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-05-22 10:05:58', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(717, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-05-22 10:06:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'7673457953\',\n)', '41.225.6.90'),
(718, 456, 'index', 'Gestion des articles', '2019-05-22 10:06:19', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(719, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-22 10:06:20', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(720, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:06:20', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.225.6.90'),
(721, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:06:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.225.6.90'),
(722, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:06:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '41.225.6.90'),
(723, 470, 'asyn_get_artuniqcode', 'article-asyn_get_artuniqcode', '2019-05-22 10:06:22', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(724, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-05-22 10:06:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '41.225.6.90'),
(725, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-22 10:06:36', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(726, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-05-22 10:06:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'7673457953\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'7673457953\',\n    \'g_artDesignation\' => \'Dattes branchée\',\n    \'g_artUnite\' => \'\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'5c9a1778d00ce.jpg\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'0\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'g_artDelaislivraison\' => \'0\',\n    \'g_artClass\' => \'1\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'10\',\n    \'g_artTva\' => \'0\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'6\',\n    \'i_catartDesignation\' => \'DEGLET NOUR\',\n    \'p_art_code\' => \'7673457953\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '41.225.6.90'),
(727, 468, 'asyn_update_article', 'article-asyn_update_article', '2019-05-22 10:06:55', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(728, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-05-22 10:06:55', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(729, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-05-22 10:06:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '41.225.6.90'),
(730, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-22 10:06:59', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(731, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2019-05-22 10:07:02', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'art\' => \'7673457953\',\n  \'clas\' => \'1\',\n)', '41.225.6.90'),
(732, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-05-22 10:07:02', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'7673457953\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'7673457953\',\n    \'g_artDesignation\' => \'Dattes branchée\',\n    \'g_artUnite\' => \'Kg\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'5c9a1778d00ce.jpg\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'0\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'g_artDelaislivraison\' => \'0\',\n    \'g_artClass\' => \'1\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'10\',\n    \'g_artTva\' => \'0\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'6\',\n    \'i_catartDesignation\' => \'DEGLET NOUR\',\n    \'p_art_code\' => \'7673457953\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '41.225.6.90'),
(733, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-22 10:07:02', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(734, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-22 10:07:03', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(735, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-05-22 10:08:17', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'7673457953\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'7673457953\',\n    \'g_artDesignation\' => \'Dattes branchée\',\n    \'g_artUnite\' => \'Kg\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'5c9a1778d00ce.jpg\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'0\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'g_artDelaislivraison\' => \'0\',\n    \'g_artClass\' => \'1\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'10\',\n    \'g_artTva\' => \'0\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'6\',\n    \'i_catartDesignation\' => \'DEGLET NOUR\',\n    \'p_art_code\' => \'7673457953\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '41.225.6.90'),
(736, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2019-05-22 10:08:18', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'art\' => \'7673457953\',\n  \'clas\' => \'1\',\n)', '41.225.6.90'),
(737, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-22 10:08:18', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(738, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-22 10:08:18', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(739, 551, 'index', 'Gestion des Devis/BC', '2019-05-22 10:08:23', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(740, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:08:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '41.225.6.90'),
(741, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:08:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '41.225.6.90'),
(742, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:08:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '41.225.6.90'),
(743, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:08:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '41.225.6.90'),
(744, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:08:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '41.225.6.90'),
(745, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-22 10:08:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '41.225.6.90'),
(746, 558, 'asyn_get_datauniqcode', 'devis-asyn_get_datauniqcode', '2019-05-22 10:08:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '41.225.6.90'),
(747, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-05-22 10:08:28', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(748, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-05-22 10:08:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'7673457953\',\n)', '41.225.6.90'),
(749, 583, 'index', 'Gestion de la production', '2019-05-22 10:11:11', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(750, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-22 10:11:11', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '41.225.6.90'),
(751, 551, 'index', 'Gestion des Devis/BC', '2019-05-22 10:19:25', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(752, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:19:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '41.225.6.90'),
(753, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:19:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '41.225.6.90'),
(754, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:19:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '41.225.6.90'),
(755, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:19:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '41.225.6.90'),
(756, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:19:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '41.225.6.90'),
(757, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-22 10:19:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '41.225.6.90'),
(758, 558, 'asyn_get_datauniqcode', 'devis-asyn_get_datauniqcode', '2019-05-22 10:19:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '41.225.6.90'),
(759, 456, 'index', 'Gestion des articles', '2019-05-22 10:19:51', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(760, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-22 10:19:51', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(761, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:19:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.225.6.90'),
(762, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:19:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.225.6.90'),
(763, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:19:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '41.225.6.90'),
(764, 470, 'asyn_get_artuniqcode', 'article-asyn_get_artuniqcode', '2019-05-22 10:21:29', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(765, 361, 'index', 'gestion-index', '2019-05-22 10:24:21', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(766, 430, 'asyn_get_net_modul', 'updateMod-asyn_get_net_modul', '2019-05-22 10:24:23', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(767, 377, 'asyn_get_menulist', 'gestion-asyn_get_menulist', '2019-05-22 10:24:24', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(768, 390, 'asyn_get_grbdoit_list', 'gestion-asyn_get_grbdoit_list', '2019-05-22 10:24:24', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(769, 376, 'asyn_get_allvu', 'gestion-asyn_get_allvu', '2019-05-22 10:24:25', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(770, 363, 'asyn_get_srvlist', 'gestion-asyn_get_srvlist', '2019-05-22 10:24:26', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(771, 365, 'asyn_get_prf', 'gestion-asyn_get_prf', '2019-05-22 10:24:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'ident\' => \'1\',\n)', '41.225.6.90'),
(772, 365, 'asyn_get_prf', 'gestion-asyn_get_prf', '2019-05-22 10:24:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'ident\' => \'1\',\n)', '41.225.6.90'),
(773, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-05-22 10:24:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '41.225.6.90'),
(774, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-05-22 10:24:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '41.225.6.90'),
(775, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-05-22 10:24:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '41.225.6.90'),
(776, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-05-22 10:24:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '41.225.6.90'),
(777, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-05-22 10:24:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '41.225.6.90'),
(778, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-05-22 10:24:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '41.225.6.90'),
(779, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-05-22 10:24:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '41.225.6.90'),
(780, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-05-22 10:24:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '41.225.6.90'),
(781, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-05-22 10:24:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '41.225.6.90'),
(782, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-05-22 10:24:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '41.225.6.90'),
(783, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-05-22 10:24:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '41.225.6.90'),
(784, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-05-22 10:24:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '41.225.6.90'),
(785, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-05-22 10:24:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '41.225.6.90'),
(786, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-05-22 10:24:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '41.225.6.90'),
(787, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-05-22 10:24:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '41.225.6.90'),
(788, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-05-22 10:24:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '41.225.6.90'),
(789, 375, 'asyn_ajout_menu', 'gestion-asyn_ajout_menu', '2019-05-22 10:24:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'mname\' => \'Paramétrages\',\n)', '41.225.6.90'),
(790, 422, 'asyn_get_msg', 'main-asyn_get_msg', '2019-05-22 10:24:57', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(791, 377, 'asyn_get_menulist', 'gestion-asyn_get_menulist', '2019-05-22 10:24:57', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90');
INSERT INTO `oper` (`idOPER`, `idMODUL`, `actionOPER`, `descriptOPER`, `dateOPER`, `catOPER`, `idPRF`, `IDUTIL`, `UTINOM`, `UTIPNOM`, `paramOPER`, `ipOPER`) VALUES
(792, 385, 'asyn_modif_menu_position', 'gestion-asyn_modif_menu_position', '2019-05-22 10:25:30', '', 0, 1, 'admin', 'admin', 'array (\n  0 => \n  array (\n    \'id\' => \'6\',\n    \'text\' => \'Menu test\',\n    \'icon\' => \'glyphicon glyphicon-plus\',\n    \'li_attr\' => \n    array (\n      \'id\' => \'6\',\n    ),\n    \'a_attr\' => \n    array (\n      \'href\' => \'#\',\n      \'id\' => \'6_anchor\',\n    ),\n    \'state\' => \n    array (\n      \'loaded\' => \'true\',\n      \'opened\' => \'false\',\n      \'selected\' => \'false\',\n      \'disabled\' => \'false\',\n    ),\n    \'type\' => \'menu\',\n  ),\n  1 => \n  array (\n    \'id\' => \'5\',\n    \'text\' => \'Identification\',\n    \'icon\' => \'glyphicon glyphicon-plus\',\n    \'li_attr\' => \n    array (\n      \'id\' => \'5\',\n    ),\n    \'a_attr\' => \n    array (\n      \'href\' => \'#\',\n      \'id\' => \'5_anchor\',\n    ),\n    \'state\' => \n    array (\n      \'loaded\' => \'true\',\n      \'opened\' => \'false\',\n      \'selected\' => \'false\',\n      \'disabled\' => \'false\',\n    ),\n    \'children\' => \n    array (\n      0 => \n      array (\n        \'id\' => \'601\',\n        \'text\' => \'Identification\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'601\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n    ),\n    \'type\' => \'menu\',\n  ),\n  2 => \n  array (\n    \'id\' => \'1\',\n    \'text\' => \'Gestion\',\n    \'icon\' => \'glyphicon glyphicon-plus\',\n    \'li_attr\' => \n    array (\n      \'id\' => \'1\',\n    ),\n    \'a_attr\' => \n    array (\n      \'href\' => \'#\',\n      \'id\' => \'1_anchor\',\n    ),\n    \'state\' => \n    array (\n      \'loaded\' => \'true\',\n      \'opened\' => \'false\',\n      \'selected\' => \'false\',\n      \'disabled\' => \'false\',\n    ),\n    \'children\' => \n    array (\n      0 => \n      array (\n        \'id\' => \'551\',\n        \'text\' => \'Gestion des Devis/BC\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'551\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n      1 => \n      array (\n        \'id\' => \'583\',\n        \'text\' => \'Gestion de la production\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'583\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n      2 => \n      array (\n        \'id\' => \'590\',\n        \'text\' => \'Gestion des factures/BL\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'590\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n      3 => \n      array (\n        \'id\' => \'461\',\n        \'text\' => \'Gestion de l\\\'inventaire\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'461\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n      4 => \n      array (\n        \'id\' => \'518\',\n        \'text\' => \'Gestion des clients/fournisseur\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'518\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n      5 => \n      array (\n        \'id\' => \'456\',\n        \'text\' => \'Gestion des articles\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'456\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n    ),\n    \'type\' => \'menu\',\n  ),\n  3 => \n  array (\n    \'id\' => \'3\',\n    \'text\' => \'Mouvements du stock\',\n    \'icon\' => \'glyphicon glyphicon-plus\',\n    \'li_attr\' => \n    array (\n      \'id\' => \'3\',\n    ),\n    \'a_attr\' => \n    array (\n      \'href\' => \'#\',\n      \'id\' => \'3_anchor\',\n    ),\n    \'state\' => \n    array (\n      \'loaded\' => \'true\',\n      \'opened\' => \'false\',\n      \'selected\' => \'false\',\n      \'disabled\' => \'false\',\n    ),\n    \'children\' => \n    array (\n      0 => \n      array (\n        \'id\' => \'460\',\n        \'text\' => \'Approvisionnement MP\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'460\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n    ),\n    \'type\' => \'menu\',\n  ),\n  4 => \n  array (\n    \'id\' => \'4\',\n    \'text\' => \'Edition\',\n    \'icon\' => \'glyphicon glyphicon-plus\',\n    \'li_attr\' => \n    array (\n      \'id\' => \'4\',\n    ),\n    \'a_attr\' => \n    array (\n      \'href\' => \'#\',\n      \'id\' => \'4_anchor\',\n    ),\n    \'state\' => \n    array (\n      \'loaded\' => \'true\',\n      \'opened\' => \'false\',\n      \'selected\' => \'false\',\n      \'disabled\' => \'false\',\n    ),\n    \'children\' => \n    array (\n      0 => \n      array (\n        \'id\' => \'506\',\n        \'text\' => \'Etat du stock\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'506\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n          \'id\' => \'506_anchor\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n      1 => \n      array (\n        \'id\' => \'507\',\n        \'text\' => \'Historique de prix\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'507\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n          \'id\' => \'507_anchor\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n      2 => \n      array (\n        \'id\' => \'508\',\n        \'text\' => \'Stock non mouvement\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'508\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n          \'id\' => \'508_anchor\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n      3 => \n      array (\n        \'id\' => \'509\',\n        \'text\' => \'Etat de consommations\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'509\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n          \'id\' => \'509_anchor\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n    ),\n    \'type\' => \'menu\',\n  ),\n  5 => \n  array (\n    \'id\' => \'7\',\n    \'text\' => \'Paramétrages\',\n    \'icon\' => \'glyphicon glyphicon-plus\',\n    \'li_attr\' => \n    array (\n      \'id\' => \'7\',\n    ),\n    \'a_attr\' => \n    array (\n      \'href\' => \'#\',\n      \'id\' => \'7_anchor\',\n    ),\n    \'state\' => \n    array (\n      \'loaded\' => \'true\',\n      \'opened\' => \'false\',\n      \'selected\' => \'false\',\n      \'disabled\' => \'false\',\n    ),\n    \'type\' => \'menu\',\n  ),\n)', '41.225.6.90'),
(793, 382, 'asyn_modif_menu_menu', 'gestion-asyn_modif_menu_menu', '2019-05-22 10:25:30', '', 0, 1, 'admin', 'admin', 'array (\n  \'idmodul\' => \'7\',\n  \'idmenu\' => \'#\',\n)', '41.225.6.90'),
(794, 377, 'asyn_get_menulist', 'gestion-asyn_get_menulist', '2019-05-22 10:25:31', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(795, 376, 'asyn_get_allvu', 'gestion-asyn_get_allvu', '2019-05-22 10:25:32', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(796, 381, 'asyn_modif_menu', 'gestion-asyn_modif_menu', '2019-05-22 10:25:41', '', 0, 1, 'admin', 'admin', 'array (\n  \'idmodul\' => \'456\',\n  \'idmenu\' => \'7\',\n)', '41.225.6.90'),
(797, 385, 'asyn_modif_menu_position', 'gestion-asyn_modif_menu_position', '2019-05-22 10:25:43', '', 0, 1, 'admin', 'admin', 'array (\n  0 => \n  array (\n    \'id\' => \'6\',\n    \'text\' => \'Menu test\',\n    \'icon\' => \'glyphicon glyphicon-plus\',\n    \'li_attr\' => \n    array (\n      \'id\' => \'6\',\n    ),\n    \'a_attr\' => \n    array (\n      \'href\' => \'#\',\n      \'id\' => \'6_anchor\',\n    ),\n    \'state\' => \n    array (\n      \'loaded\' => \'true\',\n      \'opened\' => \'false\',\n      \'selected\' => \'false\',\n      \'disabled\' => \'false\',\n    ),\n    \'type\' => \'menu\',\n  ),\n  1 => \n  array (\n    \'id\' => \'5\',\n    \'text\' => \'Identification\',\n    \'icon\' => \'glyphicon glyphicon-plus\',\n    \'li_attr\' => \n    array (\n      \'id\' => \'5\',\n    ),\n    \'a_attr\' => \n    array (\n      \'href\' => \'#\',\n      \'id\' => \'5_anchor\',\n    ),\n    \'state\' => \n    array (\n      \'loaded\' => \'true\',\n      \'opened\' => \'false\',\n      \'selected\' => \'false\',\n      \'disabled\' => \'false\',\n    ),\n    \'children\' => \n    array (\n      0 => \n      array (\n        \'id\' => \'601\',\n        \'text\' => \'Identification\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'601\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n          \'id\' => \'601_anchor\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n    ),\n    \'type\' => \'menu\',\n  ),\n  2 => \n  array (\n    \'id\' => \'1\',\n    \'text\' => \'Gestion\',\n    \'icon\' => \'glyphicon glyphicon-plus\',\n    \'li_attr\' => \n    array (\n      \'id\' => \'1\',\n    ),\n    \'a_attr\' => \n    array (\n      \'href\' => \'#\',\n      \'id\' => \'1_anchor\',\n    ),\n    \'state\' => \n    array (\n      \'loaded\' => \'true\',\n      \'opened\' => \'true\',\n      \'selected\' => \'false\',\n      \'disabled\' => \'false\',\n    ),\n    \'children\' => \n    array (\n      0 => \n      array (\n        \'id\' => \'551\',\n        \'text\' => \'Gestion des Devis/BC\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'551\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n          \'id\' => \'551_anchor\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n      1 => \n      array (\n        \'id\' => \'583\',\n        \'text\' => \'Gestion de la production\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'583\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n          \'id\' => \'583_anchor\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n      2 => \n      array (\n        \'id\' => \'590\',\n        \'text\' => \'Gestion des factures/BL\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'590\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n          \'id\' => \'590_anchor\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n      3 => \n      array (\n        \'id\' => \'461\',\n        \'text\' => \'Gestion de l\\\'inventaire\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'461\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n          \'id\' => \'461_anchor\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n      4 => \n      array (\n        \'id\' => \'518\',\n        \'text\' => \'Gestion des clients/fournisseur\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'518\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n          \'id\' => \'518_anchor\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n    ),\n    \'type\' => \'menu\',\n  ),\n  3 => \n  array (\n    \'id\' => \'3\',\n    \'text\' => \'Mouvements du stock\',\n    \'icon\' => \'glyphicon glyphicon-plus\',\n    \'li_attr\' => \n    array (\n      \'id\' => \'3\',\n    ),\n    \'a_attr\' => \n    array (\n      \'href\' => \'#\',\n      \'id\' => \'3_anchor\',\n    ),\n    \'state\' => \n    array (\n      \'loaded\' => \'true\',\n      \'opened\' => \'false\',\n      \'selected\' => \'false\',\n      \'disabled\' => \'false\',\n    ),\n    \'children\' => \n    array (\n      0 => \n      array (\n        \'id\' => \'460\',\n        \'text\' => \'Approvisionnement MP\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'460\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n    ),\n    \'type\' => \'menu\',\n  ),\n  4 => \n  array (\n    \'id\' => \'4\',\n    \'text\' => \'Edition\',\n    \'icon\' => \'glyphicon glyphicon-plus\',\n    \'li_attr\' => \n    array (\n      \'id\' => \'4\',\n    ),\n    \'a_attr\' => \n    array (\n      \'href\' => \'#\',\n      \'id\' => \'4_anchor\',\n    ),\n    \'state\' => \n    array (\n      \'loaded\' => \'true\',\n      \'opened\' => \'false\',\n      \'selected\' => \'false\',\n      \'disabled\' => \'false\',\n    ),\n    \'children\' => \n    array (\n      0 => \n      array (\n        \'id\' => \'506\',\n        \'text\' => \'Etat du stock\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'506\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n      1 => \n      array (\n        \'id\' => \'507\',\n        \'text\' => \'Historique de prix\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'507\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n      2 => \n      array (\n        \'id\' => \'508\',\n        \'text\' => \'Stock non mouvement\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'508\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n      3 => \n      array (\n        \'id\' => \'509\',\n        \'text\' => \'Etat de consommations\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'509\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n    ),\n    \'type\' => \'menu\',\n  ),\n  5 => \n  array (\n    \'id\' => \'7\',\n    \'text\' => \'Paramétrages\',\n    \'icon\' => \'glyphicon glyphicon-plus\',\n    \'li_attr\' => \n    array (\n      \'id\' => \'7\',\n    ),\n    \'a_attr\' => \n    array (\n      \'href\' => \'#\',\n      \'id\' => \'7_anchor\',\n    ),\n    \'state\' => \n    array (\n      \'loaded\' => \'true\',\n      \'opened\' => \'false\',\n      \'selected\' => \'false\',\n      \'disabled\' => \'false\',\n    ),\n    \'children\' => \n    array (\n      0 => \n      array (\n        \'id\' => \'456\',\n        \'text\' => \'Gestion des articles\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'456\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n          \'id\' => \'456_anchor\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n    ),\n    \'type\' => \'menu\',\n  ),\n)', '41.225.6.90'),
(798, 377, 'asyn_get_menulist', 'gestion-asyn_get_menulist', '2019-05-22 10:25:43', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(799, 376, 'asyn_get_allvu', 'gestion-asyn_get_allvu', '2019-05-22 10:25:43', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(800, 381, 'asyn_modif_menu', 'gestion-asyn_modif_menu', '2019-05-22 10:25:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'idmodul\' => \'518\',\n  \'idmenu\' => \'7\',\n)', '41.225.6.90'),
(801, 385, 'asyn_modif_menu_position', 'gestion-asyn_modif_menu_position', '2019-05-22 10:25:52', '', 0, 1, 'admin', 'admin', 'array (\n  0 => \n  array (\n    \'id\' => \'6\',\n    \'text\' => \'Menu test\',\n    \'icon\' => \'glyphicon glyphicon-plus\',\n    \'li_attr\' => \n    array (\n      \'id\' => \'6\',\n    ),\n    \'a_attr\' => \n    array (\n      \'href\' => \'#\',\n      \'id\' => \'6_anchor\',\n    ),\n    \'state\' => \n    array (\n      \'loaded\' => \'true\',\n      \'opened\' => \'false\',\n      \'selected\' => \'false\',\n      \'disabled\' => \'false\',\n    ),\n    \'type\' => \'menu\',\n  ),\n  1 => \n  array (\n    \'id\' => \'5\',\n    \'text\' => \'Identification\',\n    \'icon\' => \'glyphicon glyphicon-plus\',\n    \'li_attr\' => \n    array (\n      \'id\' => \'5\',\n    ),\n    \'a_attr\' => \n    array (\n      \'href\' => \'#\',\n      \'id\' => \'5_anchor\',\n    ),\n    \'state\' => \n    array (\n      \'loaded\' => \'true\',\n      \'opened\' => \'false\',\n      \'selected\' => \'false\',\n      \'disabled\' => \'false\',\n    ),\n    \'children\' => \n    array (\n      0 => \n      array (\n        \'id\' => \'601\',\n        \'text\' => \'Identification\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'601\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n    ),\n    \'type\' => \'menu\',\n  ),\n  2 => \n  array (\n    \'id\' => \'1\',\n    \'text\' => \'Gestion\',\n    \'icon\' => \'glyphicon glyphicon-plus\',\n    \'li_attr\' => \n    array (\n      \'id\' => \'1\',\n    ),\n    \'a_attr\' => \n    array (\n      \'href\' => \'#\',\n      \'id\' => \'1_anchor\',\n    ),\n    \'state\' => \n    array (\n      \'loaded\' => \'true\',\n      \'opened\' => \'true\',\n      \'selected\' => \'false\',\n      \'disabled\' => \'false\',\n    ),\n    \'children\' => \n    array (\n      0 => \n      array (\n        \'id\' => \'551\',\n        \'text\' => \'Gestion des Devis/BC\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'551\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n          \'id\' => \'551_anchor\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n      1 => \n      array (\n        \'id\' => \'583\',\n        \'text\' => \'Gestion de la production\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'583\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n          \'id\' => \'583_anchor\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n      2 => \n      array (\n        \'id\' => \'590\',\n        \'text\' => \'Gestion des factures/BL\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'590\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n          \'id\' => \'590_anchor\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n      3 => \n      array (\n        \'id\' => \'461\',\n        \'text\' => \'Gestion de l\\\'inventaire\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'461\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n          \'id\' => \'461_anchor\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n    ),\n    \'type\' => \'menu\',\n  ),\n  3 => \n  array (\n    \'id\' => \'3\',\n    \'text\' => \'Mouvements du stock\',\n    \'icon\' => \'glyphicon glyphicon-plus\',\n    \'li_attr\' => \n    array (\n      \'id\' => \'3\',\n    ),\n    \'a_attr\' => \n    array (\n      \'href\' => \'#\',\n      \'id\' => \'3_anchor\',\n    ),\n    \'state\' => \n    array (\n      \'loaded\' => \'true\',\n      \'opened\' => \'false\',\n      \'selected\' => \'false\',\n      \'disabled\' => \'false\',\n    ),\n    \'children\' => \n    array (\n      0 => \n      array (\n        \'id\' => \'460\',\n        \'text\' => \'Approvisionnement MP\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'460\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n    ),\n    \'type\' => \'menu\',\n  ),\n  4 => \n  array (\n    \'id\' => \'4\',\n    \'text\' => \'Edition\',\n    \'icon\' => \'glyphicon glyphicon-plus\',\n    \'li_attr\' => \n    array (\n      \'id\' => \'4\',\n    ),\n    \'a_attr\' => \n    array (\n      \'href\' => \'#\',\n      \'id\' => \'4_anchor\',\n    ),\n    \'state\' => \n    array (\n      \'loaded\' => \'true\',\n      \'opened\' => \'false\',\n      \'selected\' => \'false\',\n      \'disabled\' => \'false\',\n    ),\n    \'children\' => \n    array (\n      0 => \n      array (\n        \'id\' => \'506\',\n        \'text\' => \'Etat du stock\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'506\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n      1 => \n      array (\n        \'id\' => \'507\',\n        \'text\' => \'Historique de prix\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'507\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n      2 => \n      array (\n        \'id\' => \'508\',\n        \'text\' => \'Stock non mouvement\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'508\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n      3 => \n      array (\n        \'id\' => \'509\',\n        \'text\' => \'Etat de consommations\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'509\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n    ),\n    \'type\' => \'menu\',\n  ),\n  5 => \n  array (\n    \'id\' => \'7\',\n    \'text\' => \'Paramétrages\',\n    \'icon\' => \'glyphicon glyphicon-plus\',\n    \'li_attr\' => \n    array (\n      \'id\' => \'7\',\n    ),\n    \'a_attr\' => \n    array (\n      \'href\' => \'#\',\n      \'id\' => \'7_anchor\',\n    ),\n    \'state\' => \n    array (\n      \'loaded\' => \'true\',\n      \'opened\' => \'true\',\n      \'selected\' => \'false\',\n      \'disabled\' => \'false\',\n    ),\n    \'children\' => \n    array (\n      0 => \n      array (\n        \'id\' => \'518\',\n        \'text\' => \'Gestion des clients/fournisseur\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'518\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n          \'id\' => \'518_anchor\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n      1 => \n      array (\n        \'id\' => \'456\',\n        \'text\' => \'Gestion des articles\',\n        \'icon\' => \'glyphicon glyphicon-list-alt\',\n        \'li_attr\' => \n        array (\n          \'id\' => \'456\',\n        ),\n        \'a_attr\' => \n        array (\n          \'href\' => \'#\',\n          \'id\' => \'456_anchor\',\n        ),\n        \'state\' => \n        array (\n          \'loaded\' => \'true\',\n          \'opened\' => \'false\',\n          \'selected\' => \'false\',\n          \'disabled\' => \'false\',\n        ),\n        \'type\' => \'module\',\n      ),\n    ),\n    \'type\' => \'menu\',\n  ),\n)', '41.225.6.90'),
(802, 377, 'asyn_get_menulist', 'gestion-asyn_get_menulist', '2019-05-22 10:25:52', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(803, 376, 'asyn_get_allvu', 'gestion-asyn_get_allvu', '2019-05-22 10:25:52', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(804, 433, 'index', 'Page d\'accueil', '2019-05-22 10:26:07', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(805, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-22 10:26:09', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.225.6.90'),
(806, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-22 10:27:03', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.225.6.90'),
(807, 536, 'asyn_get_alert_stk', 'parametrage-asyn_get_alert_stk', '2019-05-22 10:27:09', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'mode\' => \'R\',\n)', '41.225.6.90'),
(808, 433, 'index', 'Page d\'accueil', '2019-05-22 10:27:42', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(809, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2019-05-22 10:27:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'det\' => \n  array (\n    0 => \n    array (\n      \'a_magCode\' => \'1\',\n      \'a_exercice\' => \'2019\',\n      \'a_stkInitial\' => \'0\',\n      \'a_stkEntre\' => \'10\',\n      \'a_stkSortie\' => \'10\',\n      \'a_stkFinale\' => \'0\',\n      \'a_stkAlert\' => \'\',\n      \'a_stkSecurite\' => \'\',\n      \'b_artCode\' => \'7673457953\',\n      \'b_artDesignation\' => \'Dattes branchée\',\n      \'b_artUnite\' => \'Kg\',\n      \'b_artDescription\' => \'\',\n      \'b_artImage\' => \'5c9a1778d00ce.jpg\',\n      \'b_artDdm\' => \'\',\n      \'b_artDernierprix\' => \'0\',\n      \'b_artDatecreation\' => \n      array (\n        \'date\' => \'2019-03-26 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'UTC\',\n      ),\n      \'b_artDelaislivraison\' => \'0\',\n      \'b_artClass\' => \'1\',\n      \'b_artCoutpossetion\' => \'\',\n      \'b_artCoutpassation\' => \'\',\n      \'b_artStockminimale\' => \'1\',\n      \'b_artPrix\' => \'10\',\n      \'b_artTva\' => \'0\',\n      \'a_art_code\' => \'7673457953\',\n      \'demqte\' => \'10\',\n    ),\n    1 => \n    array (\n      \'a_magCode\' => \'1\',\n      \'a_exercice\' => \'2019\',\n      \'a_stkInitial\' => \'0\',\n      \'a_stkEntre\' => \'0\',\n      \'a_stkSortie\' => \'0\',\n      \'a_stkFinale\' => \'0\',\n      \'a_stkAlert\' => \'\',\n      \'a_stkSecurite\' => \'\',\n      \'b_artCode\' => \'787fc0b574\',\n      \'b_artDesignation\' => \'test\',\n      \'b_artUnite\' => \'kg\',\n      \'b_artDescription\' => \'\',\n      \'b_artImage\' => \'\',\n      \'b_artDdm\' => \'\',\n      \'b_artDernierprix\' => \'0\',\n      \'b_artDatecreation\' => \n      array (\n        \'date\' => \'2019-05-22 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'UTC\',\n      ),\n      \'b_artDelaislivraison\' => \'1\',\n      \'b_artClass\' => \'2\',\n      \'b_artCoutpossetion\' => \'\',\n      \'b_artCoutpassation\' => \'\',\n      \'b_artStockminimale\' => \'1\',\n      \'b_artPrix\' => \'10\',\n      \'b_artTva\' => \'0\',\n      \'a_art_code\' => \'787fc0b574\',\n      \'demqte\' => \'10\',\n    ),\n  ),\n)', '41.225.6.90'),
(810, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2019-05-22 10:27:46', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'det\' => \n  array (\n    0 => \n    array (\n      \'a_magCode\' => \'1\',\n      \'a_exercice\' => \'2019\',\n      \'a_stkInitial\' => \'0\',\n      \'a_stkEntre\' => \'10\',\n      \'a_stkSortie\' => \'10\',\n      \'a_stkFinale\' => \'0\',\n      \'a_stkAlert\' => \'\',\n      \'a_stkSecurite\' => \'\',\n      \'b_artCode\' => \'7673457953\',\n      \'b_artDesignation\' => \'Dattes branchée\',\n      \'b_artUnite\' => \'Kg\',\n      \'b_artDescription\' => \'\',\n      \'b_artImage\' => \'5c9a1778d00ce.jpg\',\n      \'b_artDdm\' => \'\',\n      \'b_artDernierprix\' => \'0\',\n      \'b_artDatecreation\' => \n      array (\n        \'date\' => \'2019-03-26 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'UTC\',\n      ),\n      \'b_artDelaislivraison\' => \'0\',\n      \'b_artClass\' => \'1\',\n      \'b_artCoutpossetion\' => \'\',\n      \'b_artCoutpassation\' => \'\',\n      \'b_artStockminimale\' => \'1\',\n      \'b_artPrix\' => \'10\',\n      \'b_artTva\' => \'0\',\n      \'a_art_code\' => \'7673457953\',\n      \'demqte\' => \'10\',\n    ),\n    1 => \n    array (\n      \'a_magCode\' => \'1\',\n      \'a_exercice\' => \'2019\',\n      \'a_stkInitial\' => \'0\',\n      \'a_stkEntre\' => \'0\',\n      \'a_stkSortie\' => \'0\',\n      \'a_stkFinale\' => \'0\',\n      \'a_stkAlert\' => \'\',\n      \'a_stkSecurite\' => \'\',\n      \'b_artCode\' => \'787fc0b574\',\n      \'b_artDesignation\' => \'test\',\n      \'b_artUnite\' => \'kg\',\n      \'b_artDescription\' => \'\',\n      \'b_artImage\' => \'\',\n      \'b_artDdm\' => \'\',\n      \'b_artDernierprix\' => \'0\',\n      \'b_artDatecreation\' => \n      array (\n        \'date\' => \'2019-05-22 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'UTC\',\n      ),\n      \'b_artDelaislivraison\' => \'1\',\n      \'b_artClass\' => \'2\',\n      \'b_artCoutpossetion\' => \'\',\n      \'b_artCoutpassation\' => \'\',\n      \'b_artStockminimale\' => \'1\',\n      \'b_artPrix\' => \'10\',\n      \'b_artTva\' => \'0\',\n      \'a_art_code\' => \'787fc0b574\',\n      \'demqte\' => \'10\',\n    ),\n  ),\n)', '41.225.6.90'),
(811, 440, 'asyn_get_exception', 'RecupÃ©rer exception', '2019-05-22 10:27:46', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(812, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-22 10:27:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.225.6.90'),
(813, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-22 10:27:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.225.6.90'),
(814, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-22 10:28:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.225.6.90'),
(815, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-22 10:28:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.225.6.90'),
(816, 433, 'index', 'Page d\'accueil', '2019-05-22 10:28:01', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(817, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-22 10:28:02', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.225.6.90'),
(818, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-22 10:28:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.225.6.90'),
(819, 536, 'asyn_get_alert_stk', 'parametrage-asyn_get_alert_stk', '2019-05-22 10:28:08', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'mode\' => \'P\',\n)', '41.225.6.90'),
(820, 456, 'index', 'Gestion des articles', '2019-05-22 10:29:28', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(821, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-22 10:29:29', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(822, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:29:29', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.225.6.90'),
(823, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:29:29', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.225.6.90'),
(824, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:29:29', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '41.225.6.90'),
(825, 601, 'identification', 'Identification', '2019-05-22 10:29:34', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(826, 551, 'index', 'Gestion des Devis/BC', '2019-05-22 10:29:40', '', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(827, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:29:41', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '41.225.6.90'),
(828, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:29:41', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '41.225.6.90'),
(829, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:29:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '41.225.6.90'),
(830, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:29:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '41.225.6.90'),
(831, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-22 10:29:43', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '41.225.6.90'),
(832, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-22 10:29:43', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '41.225.6.90'),
(833, 552, 'asyn_get_data', 'devis-asyn_get_data', '2019-05-22 10:29:53', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '41.225.6.90'),
(834, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-22 10:29:53', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.6.90'),
(835, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2019-05-22 10:29:56', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'2/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'51\',\n    \'a_prodCodeDeviBc\' => \'2/2019\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-05-22 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \'\',\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'71\',\n    \'b_etatLibelle\' => \'Devis Cr\',\n  ),\n)', '41.225.6.90'),
(836, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2019-05-22 10:30:02', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'2/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'51\',\n    \'a_prodCodeDeviBc\' => \'2/2019\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-05-22 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \'\',\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'71\',\n    \'b_etatLibelle\' => \'Devis Cr\',\n  ),\n)', '41.225.6.90'),
(837, 433, 'index', 'Page d\'accueil', '2019-05-23 01:55:51', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.26.82.35'),
(838, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-23 01:55:55', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '197.26.82.35'),
(839, 361, 'index', 'gestion-index', '2019-05-23 01:56:55', '', 0, 1, 'admin', 'admin', '\'\'', '197.26.82.35'),
(840, 430, 'asyn_get_net_modul', 'updateMod-asyn_get_net_modul', '2019-05-23 01:56:55', '', 0, 1, 'admin', 'admin', '\'\'', '197.26.82.35'),
(841, 390, 'asyn_get_grbdoit_list', 'gestion-asyn_get_grbdoit_list', '2019-05-23 01:56:55', '', 0, 1, 'admin', 'admin', '\'\'', '197.26.82.35'),
(842, 377, 'asyn_get_menulist', 'gestion-asyn_get_menulist', '2019-05-23 01:56:55', '', 0, 1, 'admin', 'admin', '\'\'', '197.26.82.35'),
(843, 376, 'asyn_get_allvu', 'gestion-asyn_get_allvu', '2019-05-23 01:56:56', '', 0, 1, 'admin', 'admin', '\'\'', '197.26.82.35'),
(844, 363, 'asyn_get_srvlist', 'gestion-asyn_get_srvlist', '2019-05-23 01:56:56', '', 0, 1, 'admin', 'admin', '\'\'', '197.26.82.35'),
(845, 365, 'asyn_get_prf', 'gestion-asyn_get_prf', '2019-05-23 01:56:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'ident\' => \'1\',\n)', '197.26.82.35'),
(846, 365, 'asyn_get_prf', 'gestion-asyn_get_prf', '2019-05-23 01:56:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'ident\' => \'1\',\n)', '197.26.82.35'),
(847, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-05-23 01:56:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(848, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-05-23 01:56:58', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(849, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-05-23 01:56:58', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(850, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-05-23 01:56:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(851, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-05-23 01:56:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(852, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-05-23 01:56:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(853, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-05-23 01:56:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(854, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-05-23 01:56:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(855, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-05-23 01:57:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(856, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-05-23 01:57:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(857, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-05-23 01:57:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(858, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-05-23 01:57:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(859, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-05-23 01:57:02', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(860, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-05-23 01:57:02', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(861, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-05-23 01:57:02', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(862, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-05-23 01:57:02', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(863, 370, 'asyn_ck_login', 'gestion-asyn_ck_login', '2019-05-23 01:58:41', '', 0, 1, 'admin', 'admin', '\'\'', '197.26.82.35'),
(864, 367, 'asyn_aj_util', 'gestion-asyn_aj_util', '2019-05-23 01:59:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'UTIPNOM\' => \'Ouerghi\',\n  \'UTINOM\' => \'Oussama\',\n  \'UTILOG\' => \'oussama\',\n  \'UTImat\' => \'19684\',\n  \'UTIPWD\' => \'oussama\',\n  \'UTIPWD2\' => \'oussama\',\n  \'ETATCOD\' => \'41\',\n  \'IDUTIL\' => \'\',\n  \'idprf\' => \'0\',\n)', '197.26.82.35');
INSERT INTO `oper` (`idOPER`, `idMODUL`, `actionOPER`, `descriptOPER`, `dateOPER`, `catOPER`, `idPRF`, `IDUTIL`, `UTINOM`, `UTIPNOM`, `paramOPER`, `ipOPER`) VALUES
(865, 422, 'asyn_get_msg', 'main-asyn_get_msg', '2019-05-23 01:59:01', '', 0, 1, 'admin', 'admin', '\'\'', '197.26.82.35'),
(866, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-05-23 01:59:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(867, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-05-23 01:59:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'1\',\n)', '197.26.82.35'),
(868, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-05-23 01:59:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'1\',\n)', '197.26.82.35'),
(869, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-05-23 01:59:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'1\',\n)', '197.26.82.35'),
(870, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-05-23 01:59:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'1\',\n)', '197.26.82.35'),
(871, 361, 'index', 'gestion-index', '2019-05-23 01:59:31', '', 0, 1, 'admin', 'admin', '\'\'', '197.26.82.35'),
(872, 377, 'asyn_get_menulist', 'gestion-asyn_get_menulist', '2019-05-23 01:59:32', '', 0, 1, 'admin', 'admin', '\'\'', '197.26.82.35'),
(873, 430, 'asyn_get_net_modul', 'updateMod-asyn_get_net_modul', '2019-05-23 01:59:32', '', 0, 1, 'admin', 'admin', '\'\'', '197.26.82.35'),
(874, 376, 'asyn_get_allvu', 'gestion-asyn_get_allvu', '2019-05-23 01:59:32', '', 0, 1, 'admin', 'admin', '\'\'', '197.26.82.35'),
(875, 390, 'asyn_get_grbdoit_list', 'gestion-asyn_get_grbdoit_list', '2019-05-23 01:59:32', '', 0, 1, 'admin', 'admin', '\'\'', '197.26.82.35'),
(876, 363, 'asyn_get_srvlist', 'gestion-asyn_get_srvlist', '2019-05-23 01:59:32', '', 0, 1, 'admin', 'admin', '\'\'', '197.26.82.35'),
(877, 365, 'asyn_get_prf', 'gestion-asyn_get_prf', '2019-05-23 01:59:33', '', 0, 1, 'admin', 'admin', 'array (\n  \'ident\' => \'1\',\n)', '197.26.82.35'),
(878, 365, 'asyn_get_prf', 'gestion-asyn_get_prf', '2019-05-23 01:59:33', '', 0, 1, 'admin', 'admin', 'array (\n  \'ident\' => \'1\',\n)', '197.26.82.35'),
(879, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-05-23 01:59:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(880, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-05-23 01:59:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(881, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-05-23 01:59:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(882, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-05-23 01:59:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(883, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-05-23 01:59:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(884, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-05-23 01:59:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(885, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-05-23 01:59:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(886, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-05-23 01:59:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(887, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-05-23 01:59:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(888, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-05-23 01:59:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(889, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-05-23 01:59:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(890, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-05-23 01:59:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(891, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-05-23 01:59:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(892, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-05-23 01:59:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(893, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-05-23 01:59:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(894, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-05-23 01:59:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(895, 361, 'index', 'gestion-index', '2019-05-23 01:59:49', '', 0, 1, 'admin', 'admin', '\'\'', '197.26.82.35'),
(896, 430, 'asyn_get_net_modul', 'updateMod-asyn_get_net_modul', '2019-05-23 01:59:50', '', 0, 1, 'admin', 'admin', '\'\'', '197.26.82.35'),
(897, 376, 'asyn_get_allvu', 'gestion-asyn_get_allvu', '2019-05-23 01:59:50', '', 0, 1, 'admin', 'admin', '\'\'', '197.26.82.35'),
(898, 377, 'asyn_get_menulist', 'gestion-asyn_get_menulist', '2019-05-23 01:59:50', '', 0, 1, 'admin', 'admin', '\'\'', '197.26.82.35'),
(899, 390, 'asyn_get_grbdoit_list', 'gestion-asyn_get_grbdoit_list', '2019-05-23 01:59:50', '', 0, 1, 'admin', 'admin', '\'\'', '197.26.82.35'),
(900, 363, 'asyn_get_srvlist', 'gestion-asyn_get_srvlist', '2019-05-23 01:59:50', '', 0, 1, 'admin', 'admin', '\'\'', '197.26.82.35'),
(901, 365, 'asyn_get_prf', 'gestion-asyn_get_prf', '2019-05-23 01:59:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'ident\' => \'1\',\n)', '197.26.82.35'),
(902, 365, 'asyn_get_prf', 'gestion-asyn_get_prf', '2019-05-23 01:59:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'ident\' => \'1\',\n)', '197.26.82.35'),
(903, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-05-23 01:59:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(904, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-05-23 01:59:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(905, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-05-23 01:59:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(906, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-05-23 01:59:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(907, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-05-23 01:59:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(908, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-05-23 01:59:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(909, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-05-23 01:59:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(910, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-05-23 01:59:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(911, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-05-23 01:59:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(912, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-05-23 01:59:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(913, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-05-23 01:59:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(914, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-05-23 01:59:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(915, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-05-23 01:59:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(916, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-05-23 01:59:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(917, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-05-23 01:59:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(918, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-05-23 01:59:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(919, 433, 'index', 'Page d\'accueil', '2019-05-23 02:01:19', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.26.82.35'),
(920, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-23 02:01:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '197.26.82.35'),
(921, 433, 'index', 'Page d\'accueil', '2019-05-23 02:01:35', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '197.26.82.35'),
(922, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-23 02:01:35', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '197.26.82.35'),
(923, 551, 'index', 'Gestion des Devis/BC', '2019-05-23 02:01:48', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '197.26.82.35'),
(924, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 02:01:49', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '197.26.82.35'),
(925, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 02:01:50', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '197.26.82.35'),
(926, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 02:01:50', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '197.26.82.35'),
(927, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 02:01:50', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '197.26.82.35'),
(928, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 02:01:50', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '197.26.82.35'),
(929, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-23 02:01:51', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.26.82.35'),
(930, 552, 'asyn_get_data', 'devis-asyn_get_data', '2019-05-23 02:01:54', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '197.26.82.35'),
(931, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-23 02:01:54', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '197.26.82.35'),
(932, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2019-05-23 02:01:57', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'50\',\n    \'a_prodCodeDeviBc\' => \'1/2019\',\n    \'a_prodCodeProd\' => \'1/2019\',\n    \'a_prodCodeBl\' => \'1/2019\',\n    \'a_prodCodeFacture\' => \'1/2019\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'2019\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-05-13 14:58:31.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2019-05-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2019-05-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n)', '197.26.82.35'),
(933, 558, 'asyn_get_datauniqcode', 'devis-asyn_get_datauniqcode', '2019-05-23 02:02:03', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'exe\' => \'2019\',\n)', '197.26.82.35'),
(934, 433, 'index', 'Page d\'accueil', '2019-05-23 09:40:09', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '41.225.6.90'),
(935, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-23 09:40:15', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.225.6.90'),
(936, 456, 'index', 'Gestion des articles', '2019-05-23 09:48:03', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '41.225.6.90'),
(937, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 09:48:05', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '41.225.6.90'),
(938, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 09:48:05', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.225.6.90'),
(939, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-23 09:48:07', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '41.225.6.90'),
(940, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 09:48:07', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.225.6.90'),
(941, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-05-23 09:48:15', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '41.225.6.90'),
(942, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-23 09:48:15', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '41.225.6.90'),
(943, 456, 'index', 'Gestion des articles', '2019-05-23 09:49:17', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '41.225.6.90'),
(944, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-23 09:49:46', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '41.225.6.90'),
(945, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 09:49:46', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.225.6.90'),
(946, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 09:49:47', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.225.6.90'),
(947, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 09:49:52', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '41.225.6.90'),
(948, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-05-23 09:50:00', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '41.225.6.90'),
(949, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-23 09:50:13', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '41.225.6.90'),
(950, 461, 'index', 'Gestion de l\'inventaire', '2019-05-23 09:52:19', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '41.225.6.90'),
(951, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-23 09:52:20', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '41.225.6.90'),
(952, 494, 'asyn_invttable_state', 'inventaire-asyn_invttable_state', '2019-05-23 09:52:21', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '41.225.6.90'),
(953, 495, 'asyn_gen_invttable', 'inventaire-asyn_gen_invttable', '2019-05-23 09:52:23', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '41.225.6.90'),
(954, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-05-23 09:52:23', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '41.225.6.90'),
(955, 518, 'index', 'Gestion des clients/fournisseur', '2019-05-23 09:52:24', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '41.225.6.90'),
(956, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-05-23 09:52:24', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '41.225.6.90'),
(957, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-23 09:52:24', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '41.225.6.90'),
(958, 519, 'asyn_get_fournisseur', 'fournisseur-asyn_get_fournisseur', '2019-05-23 09:52:25', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'frsCoder\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '41.225.6.90'),
(959, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-23 09:52:25', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '41.225.6.90'),
(960, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-23 09:52:47', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.225.6.90'),
(961, 433, 'index', 'Page d\'accueil', '2019-05-23 12:06:26', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(962, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-23 12:06:29', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '197.29.25.10'),
(963, 551, 'index', 'Gestion des Devis/BC', '2019-05-23 12:06:33', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(964, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:06:33', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '197.29.25.10'),
(965, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:06:33', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '197.29.25.10'),
(966, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:06:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '197.29.25.10'),
(967, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:06:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '197.29.25.10'),
(968, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:06:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '197.29.25.10'),
(969, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-23 12:06:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(970, 558, 'asyn_get_datauniqcode', 'devis-asyn_get_datauniqcode', '2019-05-23 12:06:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(971, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-05-23 12:06:45', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(972, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-05-23 12:06:58', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'7673457953\',\n)', '197.29.25.10'),
(973, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-05-23 12:07:36', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(974, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-05-23 12:08:05', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(975, 554, 'asyn_ajout_data', 'devis-asyn_ajout_data', '2019-05-23 12:08:11', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'\',\n  \'prodCodeDeviBc\' => \'3/2019\',\n  \'prodExerciceDevis\' => \'2019\',\n  \'prodDateDevis\' => \'23/05/2019\',\n  \'prodDateBc\' => \'\',\n  \'prodExerciceBc\' => \'\',\n  \'prodCodeClient\' => \'6\',\n  \'prodCommerciale\' => \'1\',\n  \'prodDevise\' => \'3\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'proddetailQteDevis\' => \'10\',\n      \'proddetailPrixUniaireDeviseDevis\' => \'5\',\n      \'proddetailTvaDevis\' => \'0\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '197.29.25.10'),
(976, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-05-23 12:08:12', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(977, 583, 'index', 'Gestion de la production', '2019-05-23 12:08:16', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(978, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-23 12:08:17', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(979, 460, 'index', 'Approvisionnement MP', '2019-05-23 12:08:22', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(980, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-23 12:08:22', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(981, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:08:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '197.29.25.10'),
(982, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:08:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '197.29.25.10'),
(983, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:08:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '197.29.25.10'),
(984, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-23 12:08:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(985, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-05-23 12:08:23', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(986, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2019-05-23 12:08:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '197.29.25.10'),
(987, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-23 12:08:28', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(988, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2019-05-23 12:08:31', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(989, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-05-23 12:08:35', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(990, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-05-23 12:09:08', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(991, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-05-23 12:09:20', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(992, 472, 'asyn_ajout_entree', 'entree-asyn_ajout_entree', '2019-05-23 12:10:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'2/2019\',\n  \'entExercice\' => \'2019\',\n  \'entBcolcode\' => \'1\',\n  \'entBcolexercice\' => \'2\',\n  \'entContratcode\' => \'1\',\n  \'entContratexercice\' => \'1\',\n  \'entDatereception\' => \'23/05/2019\',\n  \'entNumbl\' => \'1\',\n  \'entDatebl\' => \'23/05/2019\',\n  \'entNumfacture\' => \'\',\n  \'entDatefacture\' => \'23/05/2019\',\n  \'entTypecode\' => \'0\',\n  \'entNumtransit\' => \'\',\n  \'entDevise\' => \'\',\n  \'entCours\' => \'\',\n  \'entObservation\' => \'1\',\n  \'entFournisseurcode\' => \'7\',\n  \'entCodes\' => \n  array (\n    0 => \n    array (\n      \'entArtcode\' => \'787fc0b574\',\n      \'entCodetrace\' => \'6e405e5c65\',\n      \'entQte\' => \'10\',\n      \'entQtesurplus\' => \'\',\n      \'entDateperomption\' => \'09/11/2019\',\n      \'entPu\' => \'1\',\n      \'tvaCode\' => \'0\',\n      \'entPrixtotale\' => \'10\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '197.29.25.10'),
(993, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-05-23 12:10:34', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(994, 583, 'index', 'Gestion de la production', '2019-05-23 12:11:37', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(995, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-23 12:11:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(996, 583, 'index', 'Gestion de la production', '2019-05-23 12:11:40', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(997, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-23 12:11:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(998, 601, 'identification', 'Identification', '2019-05-23 12:11:58', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(999, 583, 'index', 'Gestion de la production', '2019-05-23 12:12:31', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1000, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-23 12:12:31', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(1001, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-05-23 12:12:40', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '197.29.25.10'),
(1002, 551, 'index', 'Gestion des Devis/BC', '2019-05-23 12:12:44', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1003, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:12:47', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '197.29.25.10'),
(1004, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:12:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '197.29.25.10'),
(1005, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:12:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '197.29.25.10'),
(1006, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:12:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '197.29.25.10'),
(1007, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:12:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '197.29.25.10'),
(1008, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-23 12:12:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(1009, 551, 'index', 'Gestion des Devis/BC', '2019-05-23 12:13:10', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1010, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:13:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '197.29.25.10'),
(1011, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:13:20', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '197.29.25.10'),
(1012, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:13:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '197.29.25.10'),
(1013, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:13:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '197.29.25.10'),
(1014, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:13:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '197.29.25.10'),
(1015, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-23 12:13:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(1016, 551, 'index', 'Gestion des Devis/BC', '2019-05-23 12:13:31', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1017, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:13:32', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '197.29.25.10'),
(1018, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:13:33', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '197.29.25.10'),
(1019, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:13:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '197.29.25.10'),
(1020, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:13:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '197.29.25.10'),
(1021, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:13:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '197.29.25.10'),
(1022, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-23 12:13:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(1023, 552, 'asyn_get_data', 'devis-asyn_get_data', '2019-05-23 12:13:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '197.29.25.10'),
(1024, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-23 12:13:38', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1025, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2019-05-23 12:13:55', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'52\',\n    \'a_prodCodeDeviBc\' => \'3/2019\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \'\',\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'71\',\n    \'b_etatLibelle\' => \'Devis Cr\',\n  ),\n)', '197.29.25.10'),
(1026, 582, 'asyn_genbc', 'devis-asyn_genbc', '2019-05-23 12:14:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'52\',\n  \'prodCodeDeviBc\' => \'3/2019\',\n  \'prodExerciceDevis\' => \'2019\',\n  \'prodDateDevis\' => \'23/05/2019\',\n  \'prodDateBc\' => \'23/05/2019\',\n  \'prodExerciceBc\' => \'2019\',\n  \'prodCodeClient\' => \'6\',\n  \'prodCommerciale\' => \'\',\n  \'prodDevise\' => \'\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'proddetailQteDevis\' => \'10\',\n      \'proddetailPrixUniaireDeviseDevis\' => \'5\',\n      \'proddetailTva\' => \'0%\',\n      \'proddetailPtttc\' => \'50.000\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '197.29.25.10'),
(1027, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-05-23 12:14:31', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1028, 590, 'index', 'Gestion des factures/BL', '2019-05-23 12:14:47', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1029, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:14:48', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '197.29.25.10'),
(1030, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:14:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '197.29.25.10'),
(1031, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:14:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '197.29.25.10'),
(1032, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-23 12:14:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(1033, 461, 'index', 'Gestion de l\'inventaire', '2019-05-23 12:16:01', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1034, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-23 12:16:08', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1035, 494, 'asyn_invttable_state', 'inventaire-asyn_invttable_state', '2019-05-23 12:16:18', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(1036, 583, 'index', 'Gestion de la production', '2019-05-23 12:16:23', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1037, 433, 'index', 'Page d\'accueil', '2019-05-23 12:16:29', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1038, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-23 12:16:43', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '197.29.25.10'),
(1039, 590, 'index', 'Gestion des factures/BL', '2019-05-23 12:17:43', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1040, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:17:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '197.29.25.10'),
(1041, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:17:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '197.29.25.10'),
(1042, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:18:12', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '197.29.25.10'),
(1043, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-23 12:18:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(1044, 591, 'asyn_get_data', 'facturation-asyn_get_data', '2019-05-23 12:18:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '197.29.25.10'),
(1045, 583, 'index', 'Gestion de la production', '2019-05-23 12:19:09', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1046, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-23 12:19:18', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(1047, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-05-23 12:19:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '197.29.25.10'),
(1048, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2019-05-23 12:19:41', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(1049, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-05-23 12:19:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'52\',\n    \'a_prodCodeDeviBc\' => \'3/2019\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'23/05/2019\',\n)', '197.29.25.10'),
(1050, 433, 'index', 'Page d\'accueil', '2019-05-23 12:20:28', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1051, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-23 12:21:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '197.29.25.10'),
(1052, 456, 'index', 'Gestion des articles', '2019-05-23 12:21:49', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1053, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:22:10', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '197.29.25.10'),
(1054, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-23 12:22:10', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1055, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:22:12', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '197.29.25.10'),
(1056, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:22:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '197.29.25.10'),
(1057, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-05-23 12:22:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '197.29.25.10'),
(1058, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-23 12:22:25', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1059, 518, 'index', 'Gestion des clients/fournisseur', '2019-05-23 12:23:07', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1060, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-23 12:23:14', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1061, 519, 'asyn_get_fournisseur', 'fournisseur-asyn_get_fournisseur', '2019-05-23 12:23:18', '', 0, 1, 'admin', 'admin', 'array (\n  \'frsCoder\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '197.29.25.10'),
(1062, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-05-23 12:23:22', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1063, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-05-23 12:25:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'52\',\n    \'a_prodCodeDeviBc\' => \'3/2019\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'22/05/2019\',\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(1064, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-05-23 12:25:30', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'52\',\n    \'a_prodCodeDeviBc\' => \'3/2019\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'23/05/2019\',\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(1065, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2019-05-23 12:27:03', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(1066, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-05-23 12:27:38', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'52\',\n    \'a_prodCodeDeviBc\' => \'3/2019\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'23/05/2019\',\n)', '197.29.25.10'),
(1067, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2019-05-23 12:28:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'52\',\n  \'prodCodeProd\' => \'2/2019\',\n  \'prodExerciceProd\' => \'2019\',\n  \'journeDate\' => \'23/05/2019\',\n  \'prodDateProd\' => \'\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'prodDetailId\' => \'58\',\n      \'consProdId\' => \n      array (\n        0 => \n        array (\n          \'consprodType\' => \'MP\',\n          \'consprodArticleCode\' => \'787fc0b574\',\n          \'consprodCodeFrs\' => \'7\',\n          \'consprodQte\' => \'5<i class=\"fa fa\',\n        ),\n      ),\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'journeQte\' => \'5 \',\n      \'journeDatePeromption\' => \'\',\n      \'qteProduite\' => \'null\',\n      \'proddetailQteDevis\' => \'10\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '197.29.25.10'),
(1068, 440, 'asyn_get_exception', 'RecupÃ©rer exception', '2019-05-23 12:28:38', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1069, 599, 'asyn_genprod', 'prod-asyn_genprod', '2019-05-23 12:28:53', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'52\',\n  \'prodCodeProd\' => \'2/2019\',\n  \'prodExerciceProd\' => \'2019\',\n  \'journeDate\' => \'23/05/2019\',\n  \'prodDateProd\' => \'\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'prodDetailId\' => \'58\',\n      \'consProdId\' => \n      array (\n        0 => \n        array (\n          \'consprodType\' => \'MP\',\n          \'consprodArticleCode\' => \'787fc0b574\',\n          \'consprodCodeFrs\' => \'7\',\n          \'consprodQte\' => \'5<i class=\"fa fa\',\n        ),\n      ),\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'journeQte\' => \'5 \',\n      \'journeDatePeromption\' => \'01/11/2019\',\n      \'qteProduite\' => \'null\',\n      \'proddetailQteDevis\' => \'10\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '197.29.25.10'),
(1070, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-05-23 12:28:59', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1071, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-05-23 12:29:10', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n  \'formapp\' => \n  array (\n    \'qtestk\' => \n    array (\n      0 => \n      array (\n        \'art\' => \'787fc0b574\',\n        \'qte\' => \'5<i class=\"fa fa\',\n      ),\n    ),\n  ),\n)', '197.29.25.10'),
(1072, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2019-05-23 12:29:14', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '197.29.25.10');
INSERT INTO `oper` (`idOPER`, `idMODUL`, `actionOPER`, `descriptOPER`, `dateOPER`, `catOPER`, `idPRF`, `IDUTIL`, `UTINOM`, `UTIPNOM`, `paramOPER`, `ipOPER`) VALUES
(1073, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-05-23 12:29:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'52\',\n    \'a_prodCodeDeviBc\' => \'3/2019\',\n    \'a_prodCodeProd\' => \'2/2019\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'23/05/2019\',\n)', '197.29.25.10'),
(1074, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-05-23 12:29:38', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'52\',\n    \'a_prodCodeDeviBc\' => \'3/2019\',\n    \'a_prodCodeProd\' => \'2/2019\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'24/05/2019\',\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(1075, 599, 'asyn_genprod', 'prod-asyn_genprod', '2019-05-23 12:30:18', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'52\',\n  \'prodCodeProd\' => \'2/2019\',\n  \'prodExerciceProd\' => \'2019\',\n  \'journeDate\' => \'24/05/2019\',\n  \'prodDateProd\' => \'\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'prodDetailId\' => \'58\',\n      \'consProdId\' => \n      array (\n        0 => \n        array (\n          \'consprodType\' => \'MP\',\n          \'consprodArticleCode\' => \'787fc0b574\',\n          \'consprodCodeFrs\' => \'7\',\n          \'consprodQte\' => \'5<i class=\"fa fa\',\n        ),\n      ),\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'journeQte\' => \'5 \',\n      \'journeDatePeromption\' => \'03/12/2019\',\n      \'qteProduite\' => \'5\',\n      \'proddetailQteDevis\' => \'10\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '197.29.25.10'),
(1076, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-05-23 12:30:27', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1077, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-05-23 12:30:38', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n  \'formapp\' => \n  array (\n    \'qtestk\' => \n    array (\n      0 => \n      array (\n        \'art\' => \'787fc0b574\',\n        \'qte\' => \'5<i class=\"fa fa\',\n      ),\n    ),\n  ),\n)', '197.29.25.10'),
(1078, 600, 'asyn_validprod', 'prod-asyn_validprod', '2019-05-23 12:30:47', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'52\',\n    \'a_prodCodeDeviBc\' => \'3/2019\',\n    \'a_prodCodeProd\' => \'2/2019\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'75\',\n    \'b_etatLibelle\' => \'Bon de prod générer\',\n  ),\n)', '197.29.25.10'),
(1079, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-05-23 12:31:01', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1080, 590, 'index', 'Gestion des factures/BL', '2019-05-23 12:31:40', '', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1081, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:31:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '197.29.25.10'),
(1082, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:31:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '197.29.25.10'),
(1083, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-23 12:31:55', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '197.29.25.10'),
(1084, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-23 12:31:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(1085, 591, 'asyn_get_data', 'facturation-asyn_get_data', '2019-05-23 12:32:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '197.29.25.10'),
(1086, 597, 'asyn_get_datauniqcode', 'facturation-asyn_get_datauniqcode', '2019-05-23 12:32:07', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(1087, 592, 'asyn_get_data_object', 'facturation-asyn_get_data_object', '2019-05-23 12:32:09', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeProd\' => \'2/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'52\',\n    \'a_prodCodeDeviBc\' => \'3/2019\',\n    \'a_prodCodeProd\' => \'2/2019\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-05-23 11:30:45.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'76\',\n    \'b_etatLibelle\' => \'Bon de prod valider\',\n  ),\n)', '197.29.25.10'),
(1088, 597, 'asyn_get_datauniqcode', 'facturation-asyn_get_datauniqcode', '2019-05-23 12:32:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '197.29.25.10'),
(1089, 592, 'asyn_get_data_object', 'facturation-asyn_get_data_object', '2019-05-23 12:32:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeProd\' => \'2/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'52\',\n    \'a_prodCodeDeviBc\' => \'3/2019\',\n    \'a_prodCodeProd\' => \'2/2019\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-05-23 11:30:45.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'76\',\n    \'b_etatLibelle\' => \'Bon de prod valider\',\n  ),\n)', '197.29.25.10'),
(1090, 603, 'asyn_genfact', 'facturation-asyn_genfact', '2019-05-23 12:33:07', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'52\',\n  \'prodCodeDeviBc\' => \'3/2019\',\n  \'prodExerciceBc\' => \'2019\',\n  \'prodCodeProd\' => \'2/2019\',\n  \'prodExerciceProd\' => \'2019\',\n  \'prodDateProd\' => \'23/05/2019\',\n  \'prodCodeClient\' => \'6\',\n  \'prodCodeFacture\' => \'2/2019\',\n  \'prodExerciceBlfacture\' => \'2019\',\n  \'prodCodeBl\' => \'2/2019\',\n  \'prodDateBl\' => \'23/05/2019\',\n  \'prodDateFacture\' => \'16/05/2019\',\n  \'prodDevise\' => \'3\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'prodDetailId\' => \'58\',\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'proddetailQteDevis\' => \'10\',\n      \'proddetailPrixUniaireDevise\' => \'5\',\n      \'proddetailTva\' => \'0\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '197.29.25.10'),
(1091, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-05-23 12:33:18', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.29.25.10'),
(1092, 591, 'asyn_get_data', 'facturation-asyn_get_data', '2019-05-23 12:33:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '197.29.25.10'),
(1093, 592, 'asyn_get_data_object', 'facturation-asyn_get_data_object', '2019-05-23 12:33:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeProd\' => \'1/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'50\',\n    \'a_prodCodeDeviBc\' => \'1/2019\',\n    \'a_prodCodeProd\' => \'1/2019\',\n    \'a_prodCodeBl\' => \'1/2019\',\n    \'a_prodCodeFacture\' => \'1/2019\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'2019\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-05-13 14:58:31.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2019-05-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2019-05-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n)', '197.29.25.10'),
(1094, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-23 12:34:38', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '197.29.25.10'),
(1095, 433, 'index', 'Page d\'accueil', '2019-05-25 01:06:05', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '197.26.82.35'),
(1096, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-25 01:06:17', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '197.26.82.35'),
(1097, 361, 'index', 'gestion-index', '2019-05-25 01:06:42', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '197.26.82.35'),
(1098, 430, 'asyn_get_net_modul', 'updateMod-asyn_get_net_modul', '2019-05-25 01:06:47', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '197.26.82.35'),
(1099, 376, 'asyn_get_allvu', 'gestion-asyn_get_allvu', '2019-05-25 01:06:59', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '197.26.82.35'),
(1100, 377, 'asyn_get_menulist', 'gestion-asyn_get_menulist', '2019-05-25 01:07:11', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '197.26.82.35'),
(1101, 390, 'asyn_get_grbdoit_list', 'gestion-asyn_get_grbdoit_list', '2019-05-25 01:07:20', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '197.26.82.35'),
(1102, 363, 'asyn_get_srvlist', 'gestion-asyn_get_srvlist', '2019-05-25 01:07:30', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '197.26.82.35'),
(1103, 365, 'asyn_get_prf', 'gestion-asyn_get_prf', '2019-05-25 01:07:43', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'ident\' => \'1\',\n)', '197.26.82.35'),
(1104, 365, 'asyn_get_prf', 'gestion-asyn_get_prf', '2019-05-25 01:07:47', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'ident\' => \'1\',\n)', '197.26.82.35'),
(1105, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-05-25 01:07:47', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(1106, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-05-25 01:07:47', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(1107, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-05-25 01:07:48', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(1108, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-05-25 01:07:48', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(1109, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-05-25 01:07:48', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(1110, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-05-25 01:07:55', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(1111, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-05-25 01:07:56', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(1112, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-05-25 01:07:56', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(1113, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-05-25 01:07:56', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(1114, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-05-25 01:07:57', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(1115, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-05-25 01:07:57', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(1116, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-05-25 01:08:03', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(1117, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-05-25 01:08:05', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(1118, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-05-25 01:08:06', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(1119, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-05-25 01:08:06', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(1120, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-05-25 01:08:13', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '197.26.82.35'),
(1121, 551, 'index', 'Gestion des Devis/BC', '2019-05-25 01:12:00', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '197.26.82.35'),
(1122, 551, 'index', 'Gestion des Devis/BC', '2019-05-25 01:12:05', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '197.26.82.35'),
(1123, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-25 01:12:13', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '197.26.82.35'),
(1124, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-25 01:12:20', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '197.26.82.35'),
(1125, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-25 01:12:22', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '197.26.82.35'),
(1126, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-25 01:12:23', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '197.26.82.35'),
(1127, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-25 01:12:23', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '197.26.82.35'),
(1128, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-25 01:12:26', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.26.82.35'),
(1129, 551, 'index', 'Gestion des Devis/BC', '2019-05-25 01:13:25', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '197.26.82.35'),
(1130, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-25 01:13:27', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '197.26.82.35'),
(1131, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-25 01:13:48', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '197.26.82.35'),
(1132, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-25 01:13:55', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '197.26.82.35'),
(1133, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-25 01:14:02', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '197.26.82.35'),
(1134, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-05-25 01:14:03', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.26.82.35'),
(1135, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-05-25 01:14:04', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '197.26.82.35'),
(1136, 537, 'asyn_gen_alert_stk', 'parametrage-asyn_gen_alert_stk', '2019-05-25 01:14:23', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '197.26.82.35'),
(1137, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-25 01:14:23', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'180\',\n)', '197.26.82.35'),
(1138, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-05-25 01:14:23', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'180\',\n)', '197.26.82.35'),
(1139, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-05-25 01:14:24', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '197.26.82.35'),
(1140, 402, 'asyn_get_hist_action', 'gestion-asyn_get_hist_action', '2019-05-25 01:18:25', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idutil\' => \'\',\n  \'descriptOPER\' => \'ou\',\n  \'datedeb\' => \'\',\n  \'datefin\' => \'\',\n)', '197.26.82.35'),
(1141, 433, 'index', 'Page d\'accueil', '2019-06-04 09:58:24', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1142, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-06-04 09:58:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '196.229.216.67'),
(1143, 551, 'index', 'Gestion des Devis/BC', '2019-06-04 09:58:43', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1144, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 09:58:44', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '196.229.216.67'),
(1145, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 09:58:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '196.229.216.67'),
(1146, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 09:58:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '196.229.216.67'),
(1147, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 09:58:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '196.229.216.67'),
(1148, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 09:58:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '196.229.216.67'),
(1149, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-06-04 09:58:46', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.229.216.67'),
(1150, 558, 'asyn_get_datauniqcode', 'devis-asyn_get_datauniqcode', '2019-06-04 09:58:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '196.229.216.67'),
(1151, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-06-04 09:58:58', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1152, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-06-04 09:58:59', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1153, 433, 'index', 'Page d\'accueil', '2019-06-04 09:59:10', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1154, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-06-04 09:59:10', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '196.229.216.67'),
(1155, 461, 'index', 'Gestion de l\'inventaire', '2019-06-04 09:59:34', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1156, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-04 09:59:35', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1157, 494, 'asyn_invttable_state', 'inventaire-asyn_invttable_state', '2019-06-04 09:59:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.229.216.67'),
(1158, 590, 'index', 'Gestion des factures/BL', '2019-06-04 09:59:54', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1159, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 09:59:55', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '196.229.216.67'),
(1160, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 09:59:55', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '196.229.216.67'),
(1161, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 09:59:55', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '196.229.216.67'),
(1162, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-06-04 09:59:55', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.229.216.67'),
(1163, 591, 'asyn_get_data', 'facturation-asyn_get_data', '2019-06-04 10:00:02', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '196.229.216.67'),
(1164, 592, 'asyn_get_data_object', 'facturation-asyn_get_data_object', '2019-06-04 10:00:14', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeProd\' => \'1/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'50\',\n    \'a_prodCodeDeviBc\' => \'1/2019\',\n    \'a_prodCodeProd\' => \'1/2019\',\n    \'a_prodCodeBl\' => \'1/2019\',\n    \'a_prodCodeFacture\' => \'1/2019\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'2019\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-05-13 14:58:31.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2019-05-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2019-05-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n)', '196.229.216.67'),
(1165, 461, 'index', 'Gestion de l\'inventaire', '2019-06-04 10:00:19', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1166, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-04 10:00:19', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1167, 494, 'asyn_invttable_state', 'inventaire-asyn_invttable_state', '2019-06-04 10:00:20', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.229.216.67'),
(1168, 433, 'index', 'Page d\'accueil', '2019-06-04 10:00:20', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1169, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-06-04 10:00:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '196.229.216.67'),
(1170, 583, 'index', 'Gestion de la production', '2019-06-04 10:00:31', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1171, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-06-04 10:00:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.229.216.67'),
(1172, 551, 'index', 'Gestion des Devis/BC', '2019-06-04 10:01:12', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1173, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 10:01:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '196.229.216.67'),
(1174, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 10:01:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '196.229.216.67'),
(1175, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 10:01:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '196.229.216.67'),
(1176, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 10:01:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '196.229.216.67'),
(1177, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 10:01:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '196.229.216.67'),
(1178, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-06-04 10:01:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.229.216.67'),
(1179, 552, 'asyn_get_data', 'devis-asyn_get_data', '2019-06-04 10:01:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '196.229.216.67'),
(1180, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-04 10:01:26', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1181, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2019-06-04 10:01:33', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'50\',\n    \'a_prodCodeDeviBc\' => \'1/2019\',\n    \'a_prodCodeProd\' => \'1/2019\',\n    \'a_prodCodeBl\' => \'1/2019\',\n    \'a_prodCodeFacture\' => \'1/2019\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'2019\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-05-13 14:58:31.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2019-05-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2019-05-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n)', '196.229.216.67'),
(1182, 583, 'index', 'Gestion de la production', '2019-06-04 10:01:50', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1183, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-06-04 10:01:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.229.216.67'),
(1184, 590, 'index', 'Gestion des factures/BL', '2019-06-04 10:01:55', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1185, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 10:01:56', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '196.229.216.67'),
(1186, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 10:01:56', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '196.229.216.67'),
(1187, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-06-04 10:01:56', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.229.216.67'),
(1188, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 10:01:56', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '196.229.216.67'),
(1189, 591, 'asyn_get_data', 'facturation-asyn_get_data', '2019-06-04 10:02:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '196.229.216.67'),
(1190, 592, 'asyn_get_data_object', 'facturation-asyn_get_data_object', '2019-06-04 10:02:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeProd\' => \'2/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'52\',\n    \'a_prodCodeDeviBc\' => \'3/2019\',\n    \'a_prodCodeProd\' => \'2/2019\',\n    \'a_prodCodeBl\' => \'2/2019\',\n    \'a_prodCodeFacture\' => \'2/2019\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'2019\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-05-23 11:30:45.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2019-05-16 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n)', '196.229.216.67'),
(1191, 583, 'index', 'Gestion de la production', '2019-06-04 10:02:17', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1192, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-06-04 10:02:18', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.229.216.67'),
(1193, 456, 'index', 'Gestion des articles', '2019-06-04 10:03:34', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1194, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-04 10:03:35', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1195, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 10:03:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.229.216.67'),
(1196, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 10:03:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.229.216.67'),
(1197, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 10:03:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '196.229.216.67'),
(1198, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-06-04 10:03:44', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '196.229.216.67'),
(1199, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-04 10:03:44', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1200, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-06-04 10:04:38', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'7673457953\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'7673457953\',\n    \'g_artDesignation\' => \'Dattes branchée\',\n    \'g_artUnite\' => \'Kg\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'5c9a1778d00ce.jpg\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'0\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'g_artDelaislivraison\' => \'0\',\n    \'g_artClass\' => \'1\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'10\',\n    \'g_artTva\' => \'0\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'6\',\n    \'i_catartDesignation\' => \'DEGLET NOUR\',\n    \'p_art_code\' => \'7673457953\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '196.229.216.67'),
(1201, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2019-06-04 10:04:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'art\' => \'7673457953\',\n  \'clas\' => \'1\',\n)', '196.229.216.67'),
(1202, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-04 10:04:44', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1203, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-04 10:04:44', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1204, 583, 'index', 'Gestion de la production', '2019-06-04 10:04:52', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1205, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-06-04 10:04:55', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.229.216.67'),
(1206, 456, 'index', 'Gestion des articles', '2019-06-04 10:12:48', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1207, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-04 10:12:49', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1208, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 10:12:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.229.216.67'),
(1209, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 10:12:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.229.216.67'),
(1210, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 10:12:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '196.229.216.67'),
(1211, 470, 'asyn_get_artuniqcode', 'article-asyn_get_artuniqcode', '2019-06-04 10:12:52', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1212, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-06-04 10:13:38', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1213, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-06-04 10:13:38', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1214, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-06-04 10:13:39', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1215, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-06-04 10:13:39', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1216, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-06-04 10:13:42', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1217, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-06-04 10:13:42', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1218, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-06-04 10:13:49', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1219, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-06-04 10:13:49', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1220, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-06-04 10:13:50', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1221, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-06-04 10:13:50', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1222, 433, 'index', 'Page d\'accueil', '2019-06-04 11:11:59', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.179.125.238'),
(1223, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-06-04 11:12:44', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '196.179.125.238'),
(1224, 456, 'index', 'Gestion des articles', '2019-06-04 11:13:50', '', 0, 1, 'admin', 'admin', '\'\'', '196.179.125.238'),
(1225, 456, 'index', 'Gestion des articles', '2019-06-04 11:13:50', '', 0, 1, 'admin', 'admin', '\'\'', '196.179.125.238'),
(1226, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-04 11:13:56', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.179.125.238'),
(1227, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 11:13:58', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.179.125.238'),
(1228, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 11:14:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.179.125.238'),
(1229, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 11:14:03', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '196.179.125.238'),
(1230, 525, 'asyn_ajout_cat', 'article-asyn_ajout_cat', '2019-06-04 11:16:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'catart\' => \'Datte Alig\',\n)', '196.179.125.238'),
(1231, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-06-04 11:16:28', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.179.125.238'),
(1232, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 11:16:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.179.125.238'),
(1233, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 11:16:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.179.125.238'),
(1234, 525, 'asyn_ajout_cat', 'article-asyn_ajout_cat', '2019-06-04 11:16:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'catart\' => \'Kenta\',\n)', '196.179.125.238'),
(1235, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-06-04 11:16:51', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.179.125.238'),
(1236, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 11:16:54', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.179.125.238'),
(1237, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 11:16:54', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.179.125.238'),
(1238, 525, 'asyn_ajout_cat', 'article-asyn_ajout_cat', '2019-06-04 11:20:48', '', 0, 1, 'admin', 'admin', 'array (\n  \'catart\' => \'KHOUAT ALIG\',\n)', '196.179.125.238'),
(1239, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-06-04 11:20:49', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.179.125.238'),
(1240, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 11:20:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.179.125.238'),
(1241, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 11:20:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.179.125.238'),
(1242, 551, 'index', 'Gestion des Devis/BC', '2019-06-04 12:10:34', '', 0, 1, 'admin', 'admin', '\'\'', '196.179.125.238'),
(1243, 551, 'index', 'Gestion des Devis/BC', '2019-06-04 12:10:34', '', 0, 1, 'admin', 'admin', '\'\'', '196.179.125.238'),
(1244, 551, 'index', 'Gestion des Devis/BC', '2019-06-04 12:10:34', '', 0, 1, 'admin', 'admin', '\'\'', '196.179.125.238'),
(1245, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 12:10:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '196.179.125.238'),
(1246, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 12:10:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '196.179.125.238'),
(1247, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 12:10:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '196.179.125.238'),
(1248, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 12:10:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '196.179.125.238'),
(1249, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 12:10:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '196.179.125.238'),
(1250, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-06-04 12:10:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.179.125.238'),
(1251, 558, 'asyn_get_datauniqcode', 'devis-asyn_get_datauniqcode', '2019-06-04 12:10:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '196.179.125.238'),
(1252, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-06-04 12:10:50', '', 0, 1, 'admin', 'admin', '\'\'', '196.179.125.238'),
(1253, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-06-04 12:11:05', '', 0, 1, 'admin', 'admin', '\'\'', '196.179.125.238');
INSERT INTO `oper` (`idOPER`, `idMODUL`, `actionOPER`, `descriptOPER`, `dateOPER`, `catOPER`, `idPRF`, `IDUTIL`, `UTINOM`, `UTIPNOM`, `paramOPER`, `ipOPER`) VALUES
(1254, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-06-04 12:11:14', '', 0, 1, 'admin', 'admin', '\'\'', '196.179.125.238'),
(1255, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-06-04 12:11:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'7673457953\',\n)', '196.179.125.238'),
(1256, 590, 'index', 'Gestion des factures/BL', '2019-06-04 12:29:34', '', 0, 1, 'admin', 'admin', '\'\'', '196.179.125.238'),
(1257, 590, 'index', 'Gestion des factures/BL', '2019-06-04 12:29:35', '', 0, 1, 'admin', 'admin', '\'\'', '196.179.125.238'),
(1258, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 12:29:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '196.179.125.238'),
(1259, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 12:29:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '196.179.125.238'),
(1260, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-06-04 12:29:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '196.179.125.238'),
(1261, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-04 12:29:38', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '196.179.125.238'),
(1262, 591, 'asyn_get_data', 'facturation-asyn_get_data', '2019-06-04 12:29:44', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '196.179.125.238'),
(1263, 592, 'asyn_get_data_object', 'facturation-asyn_get_data_object', '2019-06-04 12:29:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeProd\' => \'2/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'52\',\n    \'a_prodCodeDeviBc\' => \'3/2019\',\n    \'a_prodCodeProd\' => \'2/2019\',\n    \'a_prodCodeBl\' => \'2/2019\',\n    \'a_prodCodeFacture\' => \'2/2019\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'2019\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-05-23 11:30:45.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2019-05-23 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2019-05-16 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n)', '196.179.125.238'),
(1264, 506, 'stk', 'Etat du stock', '2019-06-04 12:35:52', '', 0, 1, 'admin', 'admin', '\'\'', '196.179.125.238'),
(1265, 516, 'asyn_get_stk', 'edition-asyn_get_stk', '2019-06-04 12:35:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '196.179.125.238'),
(1266, 433, 'index', 'Page d\'accueil', '2019-06-08 07:37:34', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1267, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-06-08 07:37:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '197.31.126.47'),
(1268, 518, 'index', 'Gestion des clients/fournisseur', '2019-06-08 07:37:47', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1269, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-08 07:37:49', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1270, 519, 'asyn_get_fournisseur', 'fournisseur-asyn_get_fournisseur', '2019-06-08 07:37:55', '', 0, 1, 'admin', 'admin', 'array (\n  \'frsCoder\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '197.31.126.47'),
(1271, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-08 07:37:55', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1272, 456, 'index', 'Gestion des articles', '2019-06-08 07:38:02', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1273, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-08 07:38:03', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1274, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:38:03', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '197.31.126.47'),
(1275, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:38:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '197.31.126.47'),
(1276, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:38:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '197.31.126.47'),
(1277, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-06-08 07:38:12', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '197.31.126.47'),
(1278, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-08 07:38:12', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1279, 461, 'index', 'Gestion de l\'inventaire', '2019-06-08 07:38:43', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1280, 583, 'index', 'Gestion de la production', '2019-06-08 07:38:44', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1281, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-06-08 07:38:46', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.31.126.47'),
(1282, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-06-08 07:38:48', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '197.31.126.47'),
(1283, 551, 'index', 'Gestion des Devis/BC', '2019-06-08 07:38:57', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1284, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:38:58', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '197.31.126.47'),
(1285, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:38:58', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '197.31.126.47'),
(1286, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:38:58', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '197.31.126.47'),
(1287, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:38:58', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '197.31.126.47'),
(1288, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:38:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '197.31.126.47'),
(1289, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-06-08 07:38:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.31.126.47'),
(1290, 552, 'asyn_get_data', 'devis-asyn_get_data', '2019-06-08 07:39:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '197.31.126.47'),
(1291, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-08 07:39:01', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1292, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2019-06-08 07:39:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'2/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'51\',\n    \'a_prodCodeDeviBc\' => \'2/2019\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-05-22 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \'\',\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'71\',\n    \'b_etatLibelle\' => \'Devis Cr\',\n  ),\n)', '197.31.126.47'),
(1293, 582, 'asyn_genbc', 'devis-asyn_genbc', '2019-06-08 07:39:18', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'51\',\n  \'prodCodeDeviBc\' => \'2/2019\',\n  \'prodExerciceDevis\' => \'2019\',\n  \'prodDateDevis\' => \'22/05/2019\',\n  \'prodDateBc\' => \'08/06/2019\',\n  \'prodExerciceBc\' => \'2019\',\n  \'prodCodeClient\' => \'6\',\n  \'prodCommerciale\' => \'\',\n  \'prodDevise\' => \'\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'proddetailQteDevis\' => \'10\',\n      \'proddetailPrixUniaireDeviseDevis\' => \'5\',\n      \'proddetailTva\' => \'0%\',\n      \'proddetailPtttc\' => \'50.000\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '197.31.126.47'),
(1294, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-06-08 07:39:19', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1295, 456, 'index', 'Gestion des articles', '2019-06-08 07:39:29', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1296, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-08 07:39:30', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1297, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:39:30', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '197.31.126.47'),
(1298, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:39:30', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '197.31.126.47'),
(1299, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:39:30', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '197.31.126.47'),
(1300, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-06-08 07:39:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '197.31.126.47'),
(1301, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-08 07:39:37', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1302, 470, 'asyn_get_artuniqcode', 'article-asyn_get_artuniqcode', '2019-06-08 07:39:51', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1303, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-06-08 07:40:28', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1304, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-06-08 07:40:29', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1305, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2019-06-08 07:41:20', '', 0, 1, 'admin', 'admin', 'array (\n  \'existant\' => \'on\',\n  \'artCode\' => \'77a0ee12b9\',\n  \'artCategoriecode\' => \'7\',\n  \'artClass\' => \'2\',\n  \'frsCode\' => \'7\',\n  \'uniqCode\' => \'a0ee12b9\',\n  \'artDesignation\' => \'Dattes branchées MP\',\n  \'artUnite\' => \'1\',\n  \'artDatecreation\' => \'2019-06-08\',\n  \'artDatecreationh\' => \'2019-06-08\',\n  \'artEtatCode\' => \'11\',\n  \'artDelaislivraison\' => \'1\',\n  \'frsArtref\' => \'1\',\n  \'artStockMinimale\' => \'1\',\n  \'artPrix\' => \'1\',\n  \'artTva\' => \'1\',\n  \'artDescription\' => \'\',\n  \'artImage\' => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '197.31.126.47'),
(1306, 440, 'asyn_get_exception', 'RecupÃ©rer exception', '2019-06-08 07:41:20', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1307, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2019-06-08 07:41:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'existant\' => \'on\',\n  \'artCode\' => \'77a0ee12b9\',\n  \'artCategoriecode\' => \'7\',\n  \'artClass\' => \'2\',\n  \'frsCode\' => \'7\',\n  \'uniqCode\' => \'a0ee12b9\',\n  \'artDesignation\' => \'Dattes branchées MP\',\n  \'artUnite\' => \'1\',\n  \'artDatecreation\' => \'2019-06-08\',\n  \'artDatecreationh\' => \'2019-06-08\',\n  \'artEtatCode\' => \'11\',\n  \'artDelaislivraison\' => \'1\',\n  \'frsArtref\' => \'1\',\n  \'artStockMinimale\' => \'1\',\n  \'artPrix\' => \'1\',\n  \'artTva\' => \'1\',\n  \'artDescription\' => \'\',\n  \'artImage\' => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '197.31.126.47'),
(1308, 440, 'asyn_get_exception', 'RecupÃ©rer exception', '2019-06-08 07:41:54', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1309, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-06-08 07:42:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '197.31.126.47'),
(1310, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-08 07:42:04', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1311, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-06-08 07:42:14', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'77a0ee12b9\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'77a0ee12b9\',\n    \'g_artDesignation\' => \'Dattes branchées MP\',\n    \'g_artUnite\' => \'1\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'0\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-06-08 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'g_artDelaislivraison\' => \'1\',\n    \'g_artClass\' => \'2\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'1\',\n    \'g_artTva\' => \'1\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'7\',\n    \'i_catartDesignation\' => \'dattes branchées\',\n    \'p_art_code\' => \'77a0ee12b9\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '197.31.126.47'),
(1312, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2019-06-08 07:42:18', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'art\' => \'77a0ee12b9\',\n  \'clas\' => \'2\',\n)', '197.31.126.47'),
(1313, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-08 07:42:18', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1314, 433, 'index', 'Page d\'accueil', '2019-06-08 07:42:19', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1315, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-08 07:42:20', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1316, 456, 'index', 'Gestion des articles', '2019-06-08 07:42:33', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1317, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-08 07:42:34', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1318, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:42:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '197.31.126.47'),
(1319, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:42:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '197.31.126.47'),
(1320, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:42:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '197.31.126.47'),
(1321, 460, 'index', 'Approvisionnement MP', '2019-06-08 07:42:41', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1322, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-08 07:42:42', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1323, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:42:43', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '197.31.126.47'),
(1324, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:42:43', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '197.31.126.47'),
(1325, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:42:43', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '197.31.126.47'),
(1326, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-06-08 07:42:44', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.31.126.47'),
(1327, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-06-08 07:42:44', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1328, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2019-06-08 07:42:48', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '197.31.126.47'),
(1329, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-08 07:42:49', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1330, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2019-06-08 07:42:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '197.31.126.47'),
(1331, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-06-08 07:42:59', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1332, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-06-08 07:44:13', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1333, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-06-08 07:44:45', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1334, 472, 'asyn_ajout_entree', 'entree-asyn_ajout_entree', '2019-06-08 07:45:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'3/2019\',\n  \'entExercice\' => \'2019\',\n  \'entBcolcode\' => \'1\',\n  \'entBcolexercice\' => \'12\',\n  \'entContratcode\' => \'\',\n  \'entContratexercice\' => \'\',\n  \'entDatereception\' => \'27/06/2019\',\n  \'entNumbl\' => \'1\',\n  \'entDatebl\' => \'08/06/2019\',\n  \'entNumfacture\' => \'1\',\n  \'entDatefacture\' => \'08/06/2019\',\n  \'entTypecode\' => \'0\',\n  \'entNumtransit\' => \'\',\n  \'entDevise\' => \'\',\n  \'entCours\' => \'\',\n  \'entObservation\' => \'1\',\n  \'entFournisseurcode\' => \'7\',\n  \'entCodes\' => \n  array (\n    0 => \n    array (\n      \'entArtcode\' => \'77a0ee12b9\',\n      \'entCodetrace\' => \'47586bae96\',\n      \'entQte\' => \'20\',\n      \'entQtesurplus\' => \'0\',\n      \'entDateperomption\' => \'30/06/2019\',\n      \'entPu\' => \'1\',\n      \'tvaCode\' => \'0\',\n      \'entPrixtotale\' => \'20\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '197.31.126.47'),
(1335, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-06-08 07:45:26', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1336, 583, 'index', 'Gestion de la production', '2019-06-08 07:45:36', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1337, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-06-08 07:45:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.31.126.47'),
(1338, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-06-08 07:45:47', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '197.31.126.47'),
(1339, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2019-06-08 07:45:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '197.31.126.47'),
(1340, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-06-08 07:45:54', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'2/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'51\',\n    \'a_prodCodeDeviBc\' => \'2/2019\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-05-22 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-06-08 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'08/06/2019\',\n)', '197.31.126.47'),
(1341, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-06-08 07:46:50', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1342, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-06-08 07:47:09', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1343, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2019-06-08 07:47:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '197.31.126.47'),
(1344, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-06-08 07:47:30', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'2/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'51\',\n    \'a_prodCodeDeviBc\' => \'2/2019\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-05-22 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-06-08 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'08/06/2019\',\n)', '197.31.126.47'),
(1345, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-06-08 07:47:52', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1346, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-06-08 07:48:18', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n  \'formapp\' => \n  array (\n    \'qtestk\' => \n    array (\n      0 => \n      array (\n        \'art\' => \'77a0ee12b9\',\n        \'qte\' => \'20<i class=\"fa fa\',\n      ),\n    ),\n  ),\n)', '197.31.126.47'),
(1347, 456, 'index', 'Gestion des articles', '2019-06-08 07:48:45', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1348, 456, 'index', 'Gestion des articles', '2019-06-08 07:48:50', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1349, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-08 07:48:53', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1350, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:48:55', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '197.31.126.47'),
(1351, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:48:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '197.31.126.47'),
(1352, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:48:58', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '197.31.126.47'),
(1353, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-06-08 07:49:03', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '197.31.126.47'),
(1354, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-08 07:49:06', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1355, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2019-06-08 07:49:12', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'art\' => \'77a0ee12b9\',\n  \'clas\' => \'2\',\n)', '197.31.126.47'),
(1356, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-06-08 07:49:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'77a0ee12b9\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'77a0ee12b9\',\n    \'g_artDesignation\' => \'Dattes branchées MP\',\n    \'g_artUnite\' => \'1\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'1\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-06-08 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'g_artDelaislivraison\' => \'1\',\n    \'g_artClass\' => \'2\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'1\',\n    \'g_artTva\' => \'1\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'7\',\n    \'i_catartDesignation\' => \'dattes branchées\',\n    \'p_art_code\' => \'77a0ee12b9\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '197.31.126.47'),
(1357, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-08 07:49:15', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1358, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-08 07:49:15', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1359, 433, 'index', 'Page d\'accueil', '2019-06-08 07:49:16', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1360, 583, 'index', 'Gestion de la production', '2019-06-08 07:50:02', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1361, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-06-08 07:50:03', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '197.31.126.47'),
(1362, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-06-08 07:50:07', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '197.31.126.47'),
(1363, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2019-06-08 07:50:12', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '197.31.126.47'),
(1364, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-06-08 07:50:29', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'2/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'51\',\n    \'a_prodCodeDeviBc\' => \'2/2019\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-05-22 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-06-08 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'08/06/2019\',\n)', '197.31.126.47'),
(1365, 599, 'asyn_genprod', 'prod-asyn_genprod', '2019-06-08 07:51:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'51\',\n  \'prodCodeProd\' => \'3/2019\',\n  \'prodExerciceProd\' => \'2019\',\n  \'journeDate\' => \'08/06/2019\',\n  \'prodDateProd\' => \'\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'prodDetailId\' => \'57\',\n      \'consProdId\' => \n      array (\n        0 => \n        array (\n          \'consprodType\' => \'MP\',\n          \'consprodArticleCode\' => \'77a0ee12b9\',\n          \'consprodCodeFrs\' => \'7\',\n          \'consprodQte\' => \'10<i class=\"fa fa\',\n        ),\n      ),\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'journeQte\' => \'10\',\n      \'journeDatePeromption\' => \'25/06/2019\',\n      \'qteProduite\' => \'null\',\n      \'proddetailQteDevis\' => \'10\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '197.31.126.47'),
(1366, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-06-08 07:51:28', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1367, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-06-08 07:51:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n  \'formapp\' => \n  array (\n    \'qtestk\' => \n    array (\n      0 => \n      array (\n        \'art\' => \'77a0ee12b9\',\n        \'qte\' => \'10<i class=\"fa fa\',\n      ),\n    ),\n  ),\n)', '197.31.126.47'),
(1368, 600, 'asyn_validprod', 'prod-asyn_validprod', '2019-06-08 07:51:46', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'2/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'51\',\n    \'a_prodCodeDeviBc\' => \'2/2019\',\n    \'a_prodCodeProd\' => \'3/2019\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-05-22 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-06-08 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'75\',\n    \'b_etatLibelle\' => \'Bon de prod générer\',\n  ),\n)', '197.31.126.47'),
(1369, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-06-08 07:51:47', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1370, 590, 'index', 'Gestion des factures/BL', '2019-06-08 07:52:06', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1371, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:52:07', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '197.31.126.47'),
(1372, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:52:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '197.31.126.47'),
(1373, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-08 07:52:30', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '197.31.126.47'),
(1374, 591, 'asyn_get_data', 'facturation-asyn_get_data', '2019-06-08 07:52:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '197.31.126.47'),
(1375, 597, 'asyn_get_datauniqcode', 'facturation-asyn_get_datauniqcode', '2019-06-08 07:53:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2019\',\n)', '197.31.126.47'),
(1376, 592, 'asyn_get_data_object', 'facturation-asyn_get_data_object', '2019-06-08 07:53:03', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeProd\' => \'3/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'51\',\n    \'a_prodCodeDeviBc\' => \'2/2019\',\n    \'a_prodCodeProd\' => \'3/2019\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-05-22 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-06-08 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-06-08 06:51:46.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'76\',\n    \'b_etatLibelle\' => \'Bon de prod valider\',\n  ),\n)', '197.31.126.47'),
(1377, 603, 'asyn_genfact', 'facturation-asyn_genfact', '2019-06-08 07:53:32', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'51\',\n  \'prodCodeDeviBc\' => \'2/2019\',\n  \'prodExerciceBc\' => \'2019\',\n  \'prodCodeProd\' => \'3/2019\',\n  \'prodExerciceProd\' => \'2019\',\n  \'prodDateProd\' => \'08/06/2019\',\n  \'prodCodeClient\' => \'6\',\n  \'prodCodeFacture\' => \'3/2019\',\n  \'prodExerciceBlfacture\' => \'2019\',\n  \'prodCodeBl\' => \'3/2019\',\n  \'prodDateBl\' => \'08/06/2019\',\n  \'prodDateFacture\' => \'08/06/2019\',\n  \'prodDevise\' => \'1\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'prodDetailId\' => \'57\',\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'proddetailQteDevis\' => \'10\',\n      \'proddetailPrixUniaireDevise\' => \'5\',\n      \'proddetailTva\' => \'0\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '197.31.126.47'),
(1378, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-06-08 07:53:34', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.126.47'),
(1379, 591, 'asyn_get_data', 'facturation-asyn_get_data', '2019-06-08 07:53:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '197.31.126.47'),
(1380, 592, 'asyn_get_data_object', 'facturation-asyn_get_data_object', '2019-06-08 07:53:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeProd\' => \'3/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'51\',\n    \'a_prodCodeDeviBc\' => \'2/2019\',\n    \'a_prodCodeProd\' => \'3/2019\',\n    \'a_prodCodeBl\' => \'3/2019\',\n    \'a_prodCodeFacture\' => \'3/2019\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'2019\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-05-22 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-06-08 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-06-08 06:51:46.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2019-06-08 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2019-06-08 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n)', '197.31.126.47'),
(1381, 433, 'index', 'Page d\'accueil', '2019-06-08 19:32:51', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.224.129.43'),
(1382, 433, 'index', 'Page d\'accueil', '2019-06-08 19:33:04', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.224.129.43'),
(1383, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-06-08 19:33:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '196.224.129.43'),
(1384, 456, 'index', 'Gestion des articles', '2019-06-08 19:38:21', '', 0, 1, 'admin', 'admin', '\'\'', '196.224.129.43'),
(1385, 518, 'index', 'Gestion des clients/fournisseur', '2019-06-08 19:38:35', '', 0, 1, 'admin', 'admin', '\'\'', '196.224.129.43'),
(1386, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-08 19:38:45', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.224.129.43'),
(1387, 433, 'index', 'Page d\'accueil', '2019-06-09 10:11:47', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1388, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-06-09 10:12:03', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '196.229.216.67'),
(1389, 433, 'index', 'Page d\'accueil', '2019-06-09 12:09:08', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1390, 433, 'index', 'Page d\'accueil', '2019-06-09 12:09:29', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1391, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-06-09 12:10:38', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '196.229.216.67'),
(1392, 518, 'index', 'Gestion des clients/fournisseur', '2019-06-09 12:11:01', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1393, 518, 'index', 'Gestion des clients/fournisseur', '2019-06-09 12:11:15', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1394, 456, 'index', 'Gestion des articles', '2019-06-09 12:11:38', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1395, 551, 'index', 'Gestion des Devis/BC', '2019-06-09 12:12:31', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1396, 456, 'index', 'Gestion des articles', '2019-06-09 12:12:58', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1397, 518, 'index', 'Gestion des clients/fournisseur', '2019-06-09 12:13:30', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1398, 433, 'index', 'Page d\'accueil', '2019-06-09 12:14:30', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1399, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-06-09 12:14:43', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '196.229.216.67'),
(1400, 456, 'index', 'Gestion des articles', '2019-06-09 12:14:54', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1401, 456, 'index', 'Gestion des articles', '2019-06-09 12:15:39', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1402, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-09 12:15:59', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1403, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-09 12:16:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.229.216.67'),
(1404, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-09 12:16:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '196.229.216.67'),
(1405, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-09 12:17:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.229.216.67'),
(1406, 601, 'identification', 'Identification', '2019-06-09 12:17:50', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1407, 456, 'index', 'Gestion des articles', '2019-06-09 12:18:32', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1408, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-09 12:18:37', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1409, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-09 12:18:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.229.216.67'),
(1410, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-09 12:18:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.229.216.67'),
(1411, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-09 12:18:44', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '196.229.216.67'),
(1412, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-06-09 12:18:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '196.229.216.67'),
(1413, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-09 12:18:57', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.216.67'),
(1414, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-06-09 12:19:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'787fc0b574\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'787fc0b574\',\n    \'g_artDesignation\' => \'test\',\n    \'g_artUnite\' => \'kg\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'1\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-05-22 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'g_artDelaislivraison\' => \'1\',\n    \'g_artClass\' => \'2\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'10\',\n    \'g_artTva\' => \'0\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'8\',\n    \'i_catartDesignation\' => \'dattes standards\',\n    \'p_art_code\' => \'787fc0b574\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '196.229.216.67'),
(1415, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2019-06-09 12:36:48', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'art\' => \'787fc0b574\',\n  \'clas\' => \'2\',\n)', '196.229.216.67'),
(1416, 537, 'asyn_gen_alert_stk', 'parametrage-asyn_gen_alert_stk', '2019-06-09 12:37:03', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '196.229.216.67'),
(1417, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2019-06-09 12:38:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'art\' => \'7673457953\',\n  \'clas\' => \'1\',\n)', '196.229.216.67'),
(1418, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-06-09 12:39:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'7673457953\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'7673457953\',\n    \'g_artDesignation\' => \'Dattes branchée\',\n    \'g_artUnite\' => \'Kg\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'5c9a1778d00ce.jpg\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'0\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'g_artDelaislivraison\' => \'0\',\n    \'g_artClass\' => \'1\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'10\',\n    \'g_artTva\' => \'0\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'6\',\n    \'i_catartDesignation\' => \'DEGLET NOUR\',\n    \'p_art_code\' => \'7673457953\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '196.229.216.67'),
(1419, 433, 'index', 'Page d\'accueil', '2019-06-09 19:36:08', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.31.197.173'),
(1420, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-06-09 19:38:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '197.31.197.173'),
(1421, 456, 'index', 'Gestion des articles', '2019-06-09 19:38:44', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.197.173'),
(1422, 456, 'index', 'Gestion des articles', '2019-06-09 19:38:55', '', 0, 1, 'admin', 'admin', '\'\'', '197.31.197.173'),
(1423, 433, 'index', 'Page d\'accueil', '2019-06-11 09:53:05', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.221.244'),
(1424, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-06-11 09:53:08', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '196.229.221.244'),
(1425, 456, 'index', 'Gestion des articles', '2019-06-11 09:53:11', '', 0, 1, 'admin', 'admin', '\'\'', '196.229.221.244');
INSERT INTO `oper` (`idOPER`, `idMODUL`, `actionOPER`, `descriptOPER`, `dateOPER`, `catOPER`, `idPRF`, `IDUTIL`, `UTINOM`, `UTIPNOM`, `paramOPER`, `ipOPER`) VALUES
(1426, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-11 09:53:12', 'P', 0, 1, 'admin', 'admin', '\'\'', '196.229.221.244'),
(1427, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-11 09:53:12', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '196.229.221.244'),
(1428, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-11 09:53:12', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.229.221.244'),
(1429, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-11 09:53:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '196.229.221.244'),
(1430, 433, 'index', 'Page d\'accueil', '2019-06-13 20:27:41', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.27.212.189'),
(1431, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-06-13 20:27:55', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '197.27.212.189'),
(1432, 456, 'index', 'Gestion des articles', '2019-06-13 20:28:21', '', 0, 1, 'admin', 'admin', '\'\'', '197.27.212.189'),
(1433, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-13 20:28:25', 'P', 0, 1, 'admin', 'admin', '\'\'', '197.27.212.189'),
(1434, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-13 20:28:31', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '197.27.212.189'),
(1435, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-13 20:28:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '197.27.212.189'),
(1436, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-13 20:28:47', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '197.27.212.189'),
(1437, 433, 'index', 'Page d\'accueil', '2019-06-13 23:41:35', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '41.225.188.173'),
(1438, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-06-13 23:41:44', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.225.188.173'),
(1439, 456, 'index', 'Gestion des articles', '2019-06-13 23:42:01', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '41.225.188.173'),
(1440, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-13 23:42:07', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '41.225.188.173'),
(1441, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-13 23:42:11', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.225.188.173'),
(1442, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-13 23:42:21', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '41.225.188.173'),
(1443, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-13 23:42:39', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '41.225.188.173'),
(1444, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-06-13 23:43:04', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '41.225.188.173'),
(1445, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-13 23:43:15', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '41.225.188.173'),
(1446, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-06-13 23:43:31', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'g_artCode\' => \'7673457953\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'7673457953\',\n    \'g_artDesignation\' => \'Dattes branchée\',\n    \'g_artUnite\' => \'Kg\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'5c9a1778d00ce.jpg\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'0\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'g_artDelaislivraison\' => \'0\',\n    \'g_artClass\' => \'1\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'10\',\n    \'g_artTva\' => \'0\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'6\',\n    \'i_catartDesignation\' => \'DEGLET NOUR\',\n    \'p_art_code\' => \'7673457953\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '41.225.188.173'),
(1447, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2019-06-13 23:43:46', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'art\' => \'7673457953\',\n  \'clas\' => \'1\',\n)', '41.225.188.173'),
(1448, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-13 23:43:55', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '41.225.188.173'),
(1449, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-13 23:43:58', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '41.225.188.173'),
(1450, 551, 'index', 'Gestion des Devis/BC', '2019-06-13 23:45:42', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '41.225.188.173'),
(1451, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-13 23:45:43', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '41.225.188.173'),
(1452, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-13 23:45:44', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '41.225.188.173'),
(1453, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-06-13 23:45:47', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '41.225.188.173'),
(1454, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-13 23:45:48', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '41.225.188.173'),
(1455, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-13 23:45:48', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '41.225.188.173'),
(1456, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-13 23:45:48', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '41.225.188.173'),
(1457, 552, 'asyn_get_data', 'devis-asyn_get_data', '2019-06-13 23:46:34', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '41.225.188.173'),
(1458, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-13 23:46:34', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '41.225.188.173'),
(1459, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2019-06-13 23:46:37', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'50\',\n    \'a_prodCodeDeviBc\' => \'1/2019\',\n    \'a_prodCodeProd\' => \'1/2019\',\n    \'a_prodCodeBl\' => \'1/2019\',\n    \'a_prodCodeFacture\' => \'1/2019\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'2019\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-05-13 14:58:31.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2019-05-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2019-05-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'UTC\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n)', '41.225.188.173'),
(1460, 433, 'index', 'Page d\'accueil', '2019-06-14 00:17:42', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.188.173'),
(1461, 433, 'index', 'Page d\'accueil', '2019-06-14 00:17:48', 'P', 0, 1, 'admin', 'admin', '\'\'', '41.225.188.173'),
(1462, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-06-14 00:18:10', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '41.225.188.173'),
(1463, 433, 'index', 'Page d\'accueil', '2019-06-14 07:17:00', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.207.125'),
(1464, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-06-14 07:17:18', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '165.51.207.125'),
(1465, 456, 'index', 'Gestion des articles', '2019-06-14 07:17:43', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.207.125'),
(1466, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-14 07:17:54', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.207.125'),
(1467, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-14 07:18:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '165.51.207.125'),
(1468, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-14 07:18:38', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '165.51.207.125'),
(1469, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-14 07:18:58', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '165.51.207.125'),
(1470, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-06-14 07:19:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '165.51.207.125'),
(1471, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-06-14 07:20:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '165.51.207.125'),
(1472, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-14 07:20:41', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.207.125'),
(1473, 433, 'index', 'Page d\'accueil', '2019-06-14 07:22:26', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.207.125'),
(1474, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-06-14 07:22:33', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '165.51.207.125'),
(1475, 456, 'index', 'Gestion des articles', '2019-06-14 07:22:57', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.207.125'),
(1476, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-14 07:23:12', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.207.125'),
(1477, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-14 07:23:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '165.51.207.125'),
(1478, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-14 07:23:17', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '165.51.207.125'),
(1479, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-14 07:23:17', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '165.51.207.125'),
(1480, 470, 'asyn_get_artuniqcode', 'article-asyn_get_artuniqcode', '2019-06-14 07:24:04', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.207.125'),
(1481, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-06-14 07:25:58', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.207.125'),
(1482, 467, 'asyn_ajout_article', 'article-asyn_ajout_article', '2019-06-14 07:27:51', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.207.125'),
(1483, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2019-06-14 07:29:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'existant\' => \'on\',\n  \'artCode\' => \'76ca8a3b58\',\n  \'artCategoriecode\' => \'6\',\n  \'artClass\' => \'2\',\n  \'frsCode\' => \'7\',\n  \'uniqCode\' => \'ca8a3b58\',\n  \'artDesignation\' => \'test\',\n  \'artUnite\' => \'kg\',\n  \'artDatecreation\' => \'2019-06-14\',\n  \'artDatecreationh\' => \'2019-06-14\',\n  \'artEtatCode\' => \'11\',\n  \'artDelaislivraison\' => \'12\',\n  \'frsArtref\' => \'12\',\n  \'artStockMinimale\' => \'12\',\n  \'artPrix\' => \'12\',\n  \'artTva\' => \'0\',\n  \'artDescription\' => \'\',\n  \'artImage\' => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '165.51.207.125'),
(1484, 440, 'asyn_get_exception', 'RecupÃ©rer exception', '2019-06-14 07:30:14', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.207.125'),
(1485, 433, 'index', 'Page d\'accueil', '2019-06-14 16:40:06', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.207.125'),
(1486, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-06-14 16:40:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '165.51.207.125'),
(1487, 461, 'index', 'Gestion de l\'inventaire', '2019-06-14 17:05:03', '', 0, 1, 'admin', 'admin', '\'\'', '165.51.207.125'),
(1488, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-14 17:05:12', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.207.125'),
(1489, 494, 'asyn_invttable_state', 'inventaire-asyn_invttable_state', '2019-06-14 17:05:41', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.207.125'),
(1490, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-06-14 17:05:42', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.207.125'),
(1491, 495, 'asyn_gen_invttable', 'inventaire-asyn_gen_invttable', '2019-06-14 17:05:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '165.51.207.125'),
(1492, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-06-14 17:05:54', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.207.125'),
(1493, 497, 'asyn_get_ivntbrd', 'inventaire-asyn_get_ivntbrd', '2019-06-14 18:08:20', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'brdnum\' => \'1\',\n)', '165.51.207.125'),
(1494, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-14 18:08:24', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.207.125'),
(1495, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2019-06-14 18:08:29', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'brdnum\' => \'1\',\n)', '165.51.207.125'),
(1496, 440, 'asyn_get_exception', 'RecupÃ©rer exception', '2019-06-14 18:08:30', 'P', 0, 1, 'admin', 'admin', '\'\'', '165.51.207.125'),
(1497, 433, 'index', 'Page d\'accueil', '2019-06-27 00:57:58', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.5'),
(1498, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-06-27 00:57:59', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '192.168.1.5'),
(1499, 601, 'identification', 'Identification', '2019-06-27 00:58:07', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.5'),
(1500, 551, 'index', 'Gestion des Devis/BC', '2019-06-27 00:58:09', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.5'),
(1501, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-27 00:58:10', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.5'),
(1502, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-27 00:58:10', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.5'),
(1503, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-27 00:58:10', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '192.168.1.5'),
(1504, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-27 00:58:10', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '192.168.1.5'),
(1505, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-27 00:58:10', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.5'),
(1506, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-06-27 00:58:10', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.5'),
(1507, 552, 'asyn_get_data', 'devis-asyn_get_data', '2019-06-27 00:58:13', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '192.168.1.5'),
(1508, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-27 00:58:13', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.5'),
(1509, 583, 'index', 'Gestion de la production', '2019-06-27 00:58:20', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.5'),
(1510, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-06-27 00:58:20', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.5'),
(1511, 433, 'index', 'Page d\'accueil', '2019-06-29 21:24:30', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.8'),
(1512, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-06-29 21:24:31', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '192.168.1.8'),
(1513, 551, 'index', 'Gestion des Devis/BC', '2019-06-29 21:25:04', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.8'),
(1514, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-29 21:25:04', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.8'),
(1515, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-29 21:25:04', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.8'),
(1516, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-29 21:25:04', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '192.168.1.8'),
(1517, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-29 21:25:04', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '192.168.1.8'),
(1518, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-06-29 21:25:04', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.8'),
(1519, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-06-29 21:25:05', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.8'),
(1520, 552, 'asyn_get_data', 'devis-asyn_get_data', '2019-06-29 21:25:11', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '192.168.1.8'),
(1521, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-06-29 21:25:12', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.8'),
(1522, 433, 'index', 'Page d\'accueil', '2019-07-10 08:21:07', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1523, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-07-10 08:21:09', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '192.168.1.3'),
(1524, 601, 'identification', 'Identification', '2019-07-10 08:21:18', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1525, 551, 'index', 'Gestion des Devis/BC', '2019-07-10 08:21:21', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1526, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:21:21', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.3'),
(1527, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:21:21', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.3'),
(1528, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:21:22', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '192.168.1.3'),
(1529, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:21:22', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '192.168.1.3'),
(1530, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:21:22', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.3'),
(1531, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-07-10 08:21:22', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1532, 518, 'index', 'Gestion des clients/fournisseur', '2019-07-10 08:22:02', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1533, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:22:02', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1534, 519, 'asyn_get_fournisseur', 'fournisseur-asyn_get_fournisseur', '2019-07-10 08:22:05', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'frsCoder\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.3'),
(1535, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:22:05', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1536, 456, 'index', 'Gestion des articles', '2019-07-10 08:22:11', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1537, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:22:11', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.3'),
(1538, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:22:11', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1539, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:22:13', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.3'),
(1540, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:22:13', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.3'),
(1541, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-07-10 08:22:19', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.3'),
(1542, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:22:19', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1543, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-07-10 08:22:33', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'g_artCode\' => \'7673457953\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'7673457953\',\n    \'g_artDesignation\' => \'Dattes branchée\',\n    \'g_artUnite\' => \'Kg\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'5c9a1778d00ce.jpg\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'0\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'g_artDelaislivraison\' => \'0\',\n    \'g_artClass\' => \'1\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'10\',\n    \'g_artTva\' => \'0\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'6\',\n    \'i_catartDesignation\' => \'DEGLET NOUR\',\n    \'p_art_code\' => \'7673457953\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '192.168.1.3'),
(1544, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2019-07-10 08:22:33', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'art\' => \'7673457953\',\n  \'clas\' => \'1\',\n)', '192.168.1.3'),
(1545, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:22:33', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1546, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:22:34', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.3'),
(1547, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:22:35', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1548, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:22:35', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1549, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-07-10 08:22:45', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'g_artCode\' => \'76ca8a3b58\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'12\',\n    \'g_artCode\' => \'76ca8a3b58\',\n    \'g_artDesignation\' => \'test\',\n    \'g_artUnite\' => \'kg\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'0\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-06-14 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'g_artDelaislivraison\' => \'12\',\n    \'g_artClass\' => \'2\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'12\',\n    \'g_artPrix\' => \'12\',\n    \'g_artTva\' => \'0\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'6\',\n    \'i_catartDesignation\' => \'DEGLET NOUR\',\n    \'p_art_code\' => \'76ca8a3b58\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '192.168.1.3'),
(1550, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2019-07-10 08:22:45', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'art\' => \'76ca8a3b58\',\n  \'clas\' => \'2\',\n)', '192.168.1.3'),
(1551, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:22:45', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1552, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:22:45', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.3'),
(1553, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:22:46', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1554, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:22:46', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1555, 433, 'index', 'Page d\'accueil', '2019-07-10 08:22:46', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1556, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-07-10 08:24:27', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'g_artCode\' => \'7686426e63\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'7686426e63\',\n    \'g_artDesignation\' => \'MP\',\n    \'g_artUnite\' => \'\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'2\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'g_artDelaislivraison\' => \'1\',\n    \'g_artClass\' => \'2\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'1\',\n    \'g_artTva\' => \'1\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'6\',\n    \'i_catartDesignation\' => \'DEGLET NOUR\',\n    \'p_art_code\' => \'7686426e63\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '192.168.1.3'),
(1557, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:24:27', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1558, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:24:28', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.3'),
(1559, 433, 'index', 'Page d\'accueil', '2019-07-10 08:24:29', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1560, 468, 'asyn_update_article', 'article-asyn_update_article', '2019-07-10 08:24:59', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1561, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-07-10 08:24:59', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1562, 460, 'index', 'Approvisionnement MP', '2019-07-10 08:25:23', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1563, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:25:23', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1564, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:25:23', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.3'),
(1565, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:25:23', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.3'),
(1566, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:25:23', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '192.168.1.3'),
(1567, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-07-10 08:25:23', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1568, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-07-10 08:25:23', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1569, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2019-07-10 08:25:27', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1570, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2019-07-10 08:25:31', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '192.168.1.3'),
(1571, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:25:32', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1572, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2019-07-10 08:25:35', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1573, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-07-10 08:25:42', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1574, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-07-10 08:26:34', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1575, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-07-10 08:26:58', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1576, 472, 'asyn_ajout_entree', 'entree-asyn_ajout_entree', '2019-07-10 08:28:05', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'entCode\' => \'4/2019\',\n  \'entExercice\' => \'2019\',\n  \'entBcolcode\' => \'12\',\n  \'entBcolexercice\' => \'12\',\n  \'entContratcode\' => \'\',\n  \'entContratexercice\' => \'\',\n  \'entDatereception\' => \'10/07/2019\',\n  \'entNumbl\' => \'\',\n  \'entDatebl\' => \'10/07/2019\',\n  \'entNumfacture\' => \'\',\n  \'entDatefacture\' => \'\',\n  \'entTypecode\' => \'0\',\n  \'entNumtransit\' => \'\',\n  \'entDevise\' => \'\',\n  \'entCours\' => \'\',\n  \'entObservation\' => \'\',\n  \'entFournisseurcode\' => \'7\',\n  \'entCodes\' => \n  array (\n    0 => \n    array (\n      \'entArtcode\' => \'7686426e63\',\n      \'entCodetrace\' => \'0166fbab16\',\n      \'entQte\' => \'20\',\n      \'entQtesurplus\' => \'1\',\n      \'entDateperomption\' => \'09/12/2020\',\n      \'entPu\' => \'1\',\n      \'tvaCode\' => \'0\',\n      \'entPrixtotale\' => \'20\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '192.168.1.3'),
(1577, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-07-10 08:28:05', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1578, 456, 'index', 'Gestion des articles', '2019-07-10 08:28:17', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1579, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:28:17', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1580, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:28:17', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.3'),
(1581, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:28:17', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.3'),
(1582, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:28:17', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.3'),
(1583, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-07-10 08:28:19', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.3'),
(1584, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:28:20', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1585, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-07-10 08:28:24', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'g_artCode\' => \'7686426e63\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'7686426e63\',\n    \'g_artDesignation\' => \'MP\',\n    \'g_artUnite\' => \'\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'5d2584bb22402.jpg\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'1.3333333333333\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'g_artDelaislivraison\' => \'1\',\n    \'g_artClass\' => \'2\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'1\',\n    \'g_artTva\' => \'1\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'6\',\n    \'i_catartDesignation\' => \'DEGLET NOUR\',\n    \'p_art_code\' => \'7686426e63\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '192.168.1.3'),
(1586, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2019-07-10 08:28:24', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'art\' => \'7686426e63\',\n  \'clas\' => \'2\',\n)', '192.168.1.3'),
(1587, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:28:24', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1588, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:28:24', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.3'),
(1589, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:28:24', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1590, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:28:24', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1591, 551, 'index', 'Gestion des Devis/BC', '2019-07-10 08:28:41', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1592, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:28:42', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.3'),
(1593, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:28:42', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.3'),
(1594, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:28:42', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '192.168.1.3'),
(1595, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:28:42', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '192.168.1.3'),
(1596, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:28:42', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.3'),
(1597, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-07-10 08:28:42', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1598, 558, 'asyn_get_datauniqcode', 'devis-asyn_get_datauniqcode', '2019-07-10 08:28:44', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1599, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-07-10 08:28:52', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1600, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-07-10 08:29:15', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1601, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-07-10 08:29:30', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'artCode\' => \'7673457953\',\n)', '192.168.1.3'),
(1602, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2019-07-10 08:29:38', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1603, 554, 'asyn_ajout_data', 'devis-asyn_ajout_data', '2019-07-10 08:29:47', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodId\' => \'\',\n  \'prodCodeDeviBc\' => \'4/2019\',\n  \'prodExerciceDevis\' => \'2019\',\n  \'prodDateDevis\' => \'10/07/2019\',\n  \'prodDateBc\' => \'\',\n  \'prodExerciceBc\' => \'\',\n  \'prodCodeClient\' => \'6\',\n  \'prodCommerciale\' => \'2\',\n  \'prodDevise\' => \'1\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'proddetailQteDevis\' => \'12\',\n      \'proddetailPrixUniaireDeviseDevis\' => \'12\',\n      \'proddetailTvaDevis\' => \'0\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '192.168.1.3'),
(1604, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-07-10 08:29:47', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1605, 552, 'asyn_get_data', 'devis-asyn_get_data', '2019-07-10 08:29:50', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '192.168.1.3'),
(1606, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:29:50', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1607, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2019-07-10 08:29:52', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'a_prodCodeDeviBc\' => \'4/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'53\',\n    \'a_prodCodeDeviBc\' => \'4/2019\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \'\',\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'71\',\n    \'b_etatLibelle\' => \'Devis Cr\',\n  ),\n)', '192.168.1.3'),
(1608, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:29:52', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1609, 582, 'asyn_genbc', 'devis-asyn_genbc', '2019-07-10 08:29:58', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodId\' => \'53\',\n  \'prodCodeDeviBc\' => \'4/2019\',\n  \'prodExerciceDevis\' => \'2019\',\n  \'prodDateDevis\' => \'10/07/2019\',\n  \'prodDateBc\' => \'10/07/2019\',\n  \'prodExerciceBc\' => \'2019\',\n  \'prodCodeClient\' => \'6\',\n  \'prodCommerciale\' => \'\',\n  \'prodDevise\' => \'\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'proddetailQteDevis\' => \'12\',\n      \'proddetailPrixUniaireDeviseDevis\' => \'12\',\n      \'proddetailTva\' => \'0%\',\n      \'proddetailPtttc\' => \'144.00\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '192.168.1.3'),
(1610, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-07-10 08:29:58', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1611, 552, 'asyn_get_data', 'devis-asyn_get_data', '2019-07-10 08:30:01', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '192.168.1.3'),
(1612, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:30:01', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1613, 583, 'index', 'Gestion de la production', '2019-07-10 08:30:04', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1614, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-07-10 08:30:05', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1615, 590, 'index', 'Gestion des factures/BL', '2019-07-10 08:30:11', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1616, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:30:12', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.3'),
(1617, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:30:12', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.3'),
(1618, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:30:12', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '192.168.1.3'),
(1619, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-07-10 08:30:12', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1620, 461, 'index', 'Gestion de l\'inventaire', '2019-07-10 08:30:22', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3');
INSERT INTO `oper` (`idOPER`, `idMODUL`, `actionOPER`, `descriptOPER`, `dateOPER`, `catOPER`, `idPRF`, `IDUTIL`, `UTINOM`, `UTIPNOM`, `paramOPER`, `ipOPER`) VALUES
(1621, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:30:23', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1622, 494, 'asyn_invttable_state', 'inventaire-asyn_invttable_state', '2019-07-10 08:30:23', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1623, 583, 'index', 'Gestion de la production', '2019-07-10 08:30:26', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1624, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-07-10 08:30:26', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1625, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-07-10 08:30:28', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '192.168.1.3'),
(1626, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2019-07-10 08:30:30', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1627, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-07-10 08:30:30', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'a_prodCodeDeviBc\' => \'4/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'53\',\n    \'a_prodCodeDeviBc\' => \'4/2019\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'10/07/2019\',\n)', '192.168.1.3'),
(1628, 599, 'asyn_genprod', 'prod-asyn_genprod', '2019-07-10 08:31:21', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodId\' => \'53\',\n  \'prodCodeProd\' => \'4/2019\',\n  \'prodExerciceProd\' => \'2019\',\n  \'journeDate\' => \'10/07/2019\',\n  \'prodDateProd\' => \'\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'prodDetailId\' => \'59\',\n      \'consProdId\' => \n      array (\n        0 => \n        array (\n          \'consprodType\' => \'MP\',\n          \'consprodArticleCode\' => \'7686426e63\',\n          \'consprodCodeFrs\' => \'7\',\n          \'consprodQte\' => \'6<i class=\"fa fa\',\n        ),\n      ),\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'journeQte\' => \'6 \',\n      \'journeDatePeromption\' => \'16/07/2020\',\n      \'qteProduite\' => \'null\',\n      \'proddetailQteDevis\' => \'12\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '192.168.1.3'),
(1629, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-07-10 08:31:21', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1630, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-07-10 08:31:25', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n  \'formapp\' => \n  array (\n    \'qtestk\' => \n    array (\n      0 => \n      array (\n        \'art\' => \'7686426e63\',\n        \'qte\' => \'6<i class=\"fa fa\',\n      ),\n    ),\n  ),\n)', '192.168.1.3'),
(1631, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2019-07-10 08:31:27', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1632, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-07-10 08:31:27', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'a_prodCodeDeviBc\' => \'4/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'53\',\n    \'a_prodCodeDeviBc\' => \'4/2019\',\n    \'a_prodCodeProd\' => \'4/2019\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'10/07/2019\',\n)', '192.168.1.3'),
(1633, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-07-10 08:31:35', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'a_prodCodeDeviBc\' => \'4/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'53\',\n    \'a_prodCodeDeviBc\' => \'4/2019\',\n    \'a_prodCodeProd\' => \'4/2019\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'11/07/2019\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1634, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2019-07-10 08:31:52', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodId\' => \'53\',\n  \'prodCodeProd\' => \'4/2019\',\n  \'prodExerciceProd\' => \'2019\',\n  \'journeDate\' => \'11/07/2019\',\n  \'prodDateProd\' => \'\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'prodDetailId\' => \'59\',\n      \'consProdId\' => \n      array (\n        0 => \n        array (\n          \'consprodType\' => \'MP\',\n          \'consprodArticleCode\' => \'7686426e63\',\n          \'consprodCodeFrs\' => \'7\',\n          \'consprodQte\' => \'6<i class=\"fa fa\',\n        ),\n      ),\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'journeQte\' => \'6 \',\n      \'journeDatePeromption\' => \'\',\n      \'qteProduite\' => \'6\',\n      \'proddetailQteDevis\' => \'12\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '192.168.1.3'),
(1635, 599, 'asyn_genprod', 'prod-asyn_genprod', '2019-07-10 08:32:22', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodId\' => \'53\',\n  \'prodCodeProd\' => \'4/2019\',\n  \'prodExerciceProd\' => \'2019\',\n  \'journeDate\' => \'11/07/2019\',\n  \'prodDateProd\' => \'\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'prodDetailId\' => \'59\',\n      \'consProdId\' => \n      array (\n        0 => \n        array (\n          \'consprodType\' => \'MP\',\n          \'consprodArticleCode\' => \'7686426e63\',\n          \'consprodCodeFrs\' => \'7\',\n          \'consprodQte\' => \'6<i class=\"fa fa\',\n        ),\n      ),\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'journeQte\' => \'6 \',\n      \'journeDatePeromption\' => \'16/07/2020\',\n      \'qteProduite\' => \'6\',\n      \'proddetailQteDevis\' => \'12\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '192.168.1.3'),
(1636, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-07-10 08:32:22', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1637, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-07-10 08:32:26', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n  \'formapp\' => \n  array (\n    \'qtestk\' => \n    array (\n      0 => \n      array (\n        \'art\' => \'7686426e63\',\n        \'qte\' => \'6<i class=\"fa fa\',\n      ),\n    ),\n  ),\n)', '192.168.1.3'),
(1638, 600, 'asyn_validprod', 'prod-asyn_validprod', '2019-07-10 08:32:30', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'a_prodCodeDeviBc\' => \'4/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'53\',\n    \'a_prodCodeDeviBc\' => \'4/2019\',\n    \'a_prodCodeProd\' => \'4/2019\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'75\',\n    \'b_etatLibelle\' => \'Bon de prod générer\',\n  ),\n)', '192.168.1.3'),
(1639, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-07-10 08:32:30', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1640, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-07-10 08:32:32', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n  \'formapp\' => \n  array (\n    \'qtestk\' => \n    array (\n      0 => \n      array (\n        \'art\' => \'7686426e63\',\n        \'qte\' => \'6<i class=\"fa fa\',\n      ),\n    ),\n  ),\n)', '192.168.1.3'),
(1641, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-07-10 08:32:34', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'a_prodCodeDeviBc\' => \'4/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'53\',\n    \'a_prodCodeDeviBc\' => \'4/2019\',\n    \'a_prodCodeProd\' => \'4/2019\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-07-10 08:32:30.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'76\',\n    \'b_etatLibelle\' => \'Bon de prod valider\',\n  ),\n  \'journeDate\' => \'11/07/2019\',\n)', '192.168.1.3'),
(1642, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-07-10 08:32:38', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'a_prodCodeDeviBc\' => \'4/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'53\',\n    \'a_prodCodeDeviBc\' => \'4/2019\',\n    \'a_prodCodeProd\' => \'4/2019\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-07-10 08:32:30.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'76\',\n    \'b_etatLibelle\' => \'Bon de prod valider\',\n  ),\n  \'journeDate\' => \'10/07/2019\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1643, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-07-10 08:32:42', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'a_prodCodeDeviBc\' => \'4/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'53\',\n    \'a_prodCodeDeviBc\' => \'4/2019\',\n    \'a_prodCodeProd\' => \'4/2019\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-07-10 08:32:30.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'76\',\n    \'b_etatLibelle\' => \'Bon de prod valider\',\n  ),\n  \'journeDate\' => \'11/07/2019\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1644, 590, 'index', 'Gestion des factures/BL', '2019-07-10 08:32:47', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1645, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:32:47', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.3'),
(1646, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:32:47', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.3'),
(1647, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:32:47', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '192.168.1.3'),
(1648, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-07-10 08:32:47', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1649, 591, 'asyn_get_data', 'facturation-asyn_get_data', '2019-07-10 08:32:51', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '192.168.1.3'),
(1650, 597, 'asyn_get_datauniqcode', 'facturation-asyn_get_datauniqcode', '2019-07-10 08:32:54', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1651, 592, 'asyn_get_data_object', 'facturation-asyn_get_data_object', '2019-07-10 08:32:54', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'a_prodCodeProd\' => \'4/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'53\',\n    \'a_prodCodeDeviBc\' => \'4/2019\',\n    \'a_prodCodeProd\' => \'4/2019\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-07-10 08:32:30.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'76\',\n    \'b_etatLibelle\' => \'Bon de prod valider\',\n  ),\n)', '192.168.1.3'),
(1652, 603, 'asyn_genfact', 'facturation-asyn_genfact', '2019-07-10 08:33:06', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodId\' => \'53\',\n  \'prodCodeDeviBc\' => \'4/2019\',\n  \'prodExerciceBc\' => \'2019\',\n  \'prodCodeProd\' => \'4/2019\',\n  \'prodExerciceProd\' => \'2019\',\n  \'prodDateProd\' => \'10/07/2019\',\n  \'prodCodeClient\' => \'6\',\n  \'prodCodeFacture\' => \'4/2019\',\n  \'prodExerciceBlfacture\' => \'2019\',\n  \'prodCodeBl\' => \'4/2019\',\n  \'prodDateBl\' => \'10/07/2019\',\n  \'prodDateFacture\' => \'10/07/2019\',\n  \'prodDevise\' => \'1\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'prodDetailId\' => \'59\',\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'proddetailQteDevis\' => \'12\',\n      \'proddetailPrixUniaireDevise\' => \'12\',\n      \'proddetailTva\' => \'0\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '192.168.1.3'),
(1653, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-07-10 08:33:06', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1654, 591, 'asyn_get_data', 'facturation-asyn_get_data', '2019-07-10 08:33:10', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '192.168.1.3'),
(1655, 583, 'index', 'Gestion de la production', '2019-07-10 08:33:18', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1656, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-07-10 08:33:18', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1657, 590, 'index', 'Gestion des factures/BL', '2019-07-10 08:33:23', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1658, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:33:24', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.3'),
(1659, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:33:24', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.3'),
(1660, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:33:24', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '192.168.1.3'),
(1661, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-07-10 08:33:24', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1662, 591, 'asyn_get_data', 'facturation-asyn_get_data', '2019-07-10 08:33:25', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '192.168.1.3'),
(1663, 592, 'asyn_get_data_object', 'facturation-asyn_get_data_object', '2019-07-10 08:33:26', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'a_prodCodeProd\' => \'4/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'53\',\n    \'a_prodCodeDeviBc\' => \'4/2019\',\n    \'a_prodCodeProd\' => \'4/2019\',\n    \'a_prodCodeBl\' => \'4/2019\',\n    \'a_prodCodeFacture\' => \'4/2019\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'2019\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-07-10 08:32:30.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n)', '192.168.1.3'),
(1664, 506, 'stk', 'Etat du stock', '2019-07-10 08:33:55', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1665, 516, 'asyn_get_stk', 'edition-asyn_get_stk', '2019-07-10 08:33:57', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '192.168.1.3'),
(1666, 461, 'index', 'Gestion de l\'inventaire', '2019-07-10 08:34:22', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1667, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:34:24', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1668, 494, 'asyn_invttable_state', 'inventaire-asyn_invttable_state', '2019-07-10 08:34:24', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1669, 497, 'asyn_get_ivntbrd', 'inventaire-asyn_get_ivntbrd', '2019-07-10 08:34:30', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'brdnum\' => \'\',\n)', '192.168.1.3'),
(1670, 497, 'asyn_get_ivntbrd', 'inventaire-asyn_get_ivntbrd', '2019-07-10 08:34:44', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'brdnum\' => \'1\',\n)', '192.168.1.3'),
(1671, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:34:44', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1672, 497, 'asyn_get_ivntbrd', 'inventaire-asyn_get_ivntbrd', '2019-07-10 08:35:19', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'brdnum\' => \'\',\n)', '192.168.1.3'),
(1673, 493, 'asyn_gen_ecart', 'inventaire-asyn_gen_ecart', '2019-07-10 08:35:36', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1674, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:35:36', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1675, 493, 'asyn_gen_ecart', 'inventaire-asyn_gen_ecart', '2019-07-10 08:35:37', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1676, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:35:37', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1677, 493, 'asyn_gen_ecart', 'inventaire-asyn_gen_ecart', '2019-07-10 08:35:39', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1678, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:35:39', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1679, 493, 'asyn_gen_ecart', 'inventaire-asyn_gen_ecart', '2019-07-10 08:35:39', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1680, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:35:39', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1681, 493, 'asyn_gen_ecart', 'inventaire-asyn_gen_ecart', '2019-07-10 08:35:41', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1682, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:35:41', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1683, 493, 'asyn_gen_ecart', 'inventaire-asyn_gen_ecart', '2019-07-10 08:35:41', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1684, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:35:41', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1685, 493, 'asyn_gen_ecart', 'inventaire-asyn_gen_ecart', '2019-07-10 08:35:42', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1686, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:35:42', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1687, 493, 'asyn_gen_ecart', 'inventaire-asyn_gen_ecart', '2019-07-10 08:36:00', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1688, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:36:00', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1689, 493, 'asyn_gen_ecart', 'inventaire-asyn_gen_ecart', '2019-07-10 08:36:01', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1690, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:36:01', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1691, 493, 'asyn_gen_ecart', 'inventaire-asyn_gen_ecart', '2019-07-10 08:36:01', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1692, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:36:01', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1693, 497, 'asyn_get_ivntbrd', 'inventaire-asyn_get_ivntbrd', '2019-07-10 08:36:53', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'brdnum\' => \'2\',\n)', '192.168.1.3'),
(1694, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:36:53', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1695, 497, 'asyn_get_ivntbrd', 'inventaire-asyn_get_ivntbrd', '2019-07-10 08:37:03', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'brdnum\' => \'1\',\n)', '192.168.1.3'),
(1696, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:37:03', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1697, 498, 'asyn_save_ivntbrd', 'inventaire-asyn_save_ivntbrd', '2019-07-10 08:38:56', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'data\' => \n  array (\n    0 => \n    array (\n      \'p_magCode\' => \'1\',\n      \'p_exercice\' => \'2019\',\n      \'p_invtDate\' => \'\',\n      \'p_invtQte\' => \'\',\n      \'p_invStkadateinvt\' => \'\',\n      \'p_invEcart\' => \'\',\n      \'p_invNumBorderau\' => \'1\',\n      \'p_invObservation\' => \'\',\n      \'g_artCode\' => \'7673457953\',\n      \'g_artDesignation\' => \'Dattes branchée\',\n      \'g_artUnite\' => \'Kg\',\n      \'g_artDescription\' => \'\',\n      \'g_artImage\' => \'5c9a1778d00ce.jpg\',\n      \'g_artDdm\' => \'\',\n      \'g_artDernierprix\' => \'0\',\n      \'g_artDatecreation\' => \n      array (\n        \'date\' => \'2019-03-26 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'Europe/Berlin\',\n      ),\n      \'g_artDelaislivraison\' => \'0\',\n      \'g_artClass\' => \'1\',\n      \'g_artCoutpossetion\' => \'\',\n      \'g_artCoutpassation\' => \'\',\n      \'g_artStockminimale\' => \'1\',\n      \'g_artPrix\' => \'10\',\n      \'g_artTva\' => \'0\',\n      \'h_etatCode\' => \'61\',\n      \'h_etatLibelle\' => \'Borderau inventaire genérer\',\n      \'p_art_code\' => \'7673457953\',\n      \'invtQte\' => \'12\',\n    ),\n    1 => \n    array (\n      \'p_magCode\' => \'1\',\n      \'p_exercice\' => \'2019\',\n      \'p_invtDate\' => \'\',\n      \'p_invtQte\' => \'\',\n      \'p_invStkadateinvt\' => \'\',\n      \'p_invEcart\' => \'\',\n      \'p_invNumBorderau\' => \'1\',\n      \'p_invObservation\' => \'\',\n      \'g_artCode\' => \'7686426e63\',\n      \'g_artDesignation\' => \'MP\',\n      \'g_artUnite\' => \'\',\n      \'g_artDescription\' => \'\',\n      \'g_artImage\' => \'5d2584bb22402.jpg\',\n      \'g_artDdm\' => \'\',\n      \'g_artDernierprix\' => \'1.3333333333333\',\n      \'g_artDatecreation\' => \n      array (\n        \'date\' => \'2019-03-26 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'Europe/Berlin\',\n      ),\n      \'g_artDelaislivraison\' => \'1\',\n      \'g_artClass\' => \'2\',\n      \'g_artCoutpossetion\' => \'\',\n      \'g_artCoutpassation\' => \'\',\n      \'g_artStockminimale\' => \'1\',\n      \'g_artPrix\' => \'1\',\n      \'g_artTva\' => \'1\',\n      \'h_etatCode\' => \'61\',\n      \'h_etatLibelle\' => \'Borderau inventaire genérer\',\n      \'p_art_code\' => \'7686426e63\',\n      \'invtQte\' => \'12\',\n    ),\n    2 => \n    array (\n      \'p_magCode\' => \'1\',\n      \'p_exercice\' => \'2019\',\n      \'p_invtDate\' => \'\',\n      \'p_invtQte\' => \'\',\n      \'p_invStkadateinvt\' => \'\',\n      \'p_invEcart\' => \'\',\n      \'p_invNumBorderau\' => \'1\',\n      \'p_invObservation\' => \'\',\n      \'g_artCode\' => \'76ca8a3b58\',\n      \'g_artDesignation\' => \'test\',\n      \'g_artUnite\' => \'kg\',\n      \'g_artDescription\' => \'\',\n      \'g_artImage\' => \'\',\n      \'g_artDdm\' => \'\',\n      \'g_artDernierprix\' => \'0\',\n      \'g_artDatecreation\' => \n      array (\n        \'date\' => \'2019-06-14 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'Europe/Berlin\',\n      ),\n      \'g_artDelaislivraison\' => \'12\',\n      \'g_artClass\' => \'2\',\n      \'g_artCoutpossetion\' => \'\',\n      \'g_artCoutpassation\' => \'\',\n      \'g_artStockminimale\' => \'12\',\n      \'g_artPrix\' => \'12\',\n      \'g_artTva\' => \'0\',\n      \'h_etatCode\' => \'61\',\n      \'h_etatLibelle\' => \'Borderau inventaire genérer\',\n      \'p_art_code\' => \'76ca8a3b58\',\n      \'invtQte\' => \'12\',\n    ),\n    3 => \n    array (\n      \'p_magCode\' => \'1\',\n      \'p_exercice\' => \'2019\',\n      \'p_invtDate\' => \'\',\n      \'p_invtQte\' => \'\',\n      \'p_invStkadateinvt\' => \'\',\n      \'p_invEcart\' => \'\',\n      \'p_invNumBorderau\' => \'1\',\n      \'p_invObservation\' => \'\',\n      \'g_artCode\' => \'77a0ee12b9\',\n      \'g_artDesignation\' => \'Dattes branchées MP\',\n      \'g_artUnite\' => \'1\',\n      \'g_artDescription\' => \'\',\n      \'g_artImage\' => \'\',\n      \'g_artDdm\' => \'\',\n      \'g_artDernierprix\' => \'1\',\n      \'g_artDatecreation\' => \n      array (\n        \'date\' => \'2019-06-08 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'Europe/Berlin\',\n      ),\n      \'g_artDelaislivraison\' => \'1\',\n      \'g_artClass\' => \'2\',\n      \'g_artCoutpossetion\' => \'\',\n      \'g_artCoutpassation\' => \'\',\n      \'g_artStockminimale\' => \'1\',\n      \'g_artPrix\' => \'1\',\n      \'g_artTva\' => \'1\',\n      \'h_etatCode\' => \'61\',\n      \'h_etatLibelle\' => \'Borderau inventaire genérer\',\n      \'p_art_code\' => \'77a0ee12b9\',\n      \'invtQte\' => \'12\',\n    ),\n    4 => \n    array (\n      \'p_magCode\' => \'1\',\n      \'p_exercice\' => \'2019\',\n      \'p_invtDate\' => \'\',\n      \'p_invtQte\' => \'\',\n      \'p_invStkadateinvt\' => \'\',\n      \'p_invEcart\' => \'\',\n      \'p_invNumBorderau\' => \'1\',\n      \'p_invObservation\' => \'\',\n      \'g_artCode\' => \'787fc0b574\',\n      \'g_artDesignation\' => \'test\',\n      \'g_artUnite\' => \'kg\',\n      \'g_artDescription\' => \'\',\n      \'g_artImage\' => \'\',\n      \'g_artDdm\' => \'\',\n      \'g_artDernierprix\' => \'1\',\n      \'g_artDatecreation\' => \n      array (\n        \'date\' => \'2019-05-22 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'Europe/Berlin\',\n      ),\n      \'g_artDelaislivraison\' => \'1\',\n      \'g_artClass\' => \'2\',\n      \'g_artCoutpossetion\' => \'\',\n      \'g_artCoutpassation\' => \'\',\n      \'g_artStockminimale\' => \'1\',\n      \'g_artPrix\' => \'10\',\n      \'g_artTva\' => \'0\',\n      \'h_etatCode\' => \'61\',\n      \'h_etatLibelle\' => \'Borderau inventaire genérer\',\n      \'p_art_code\' => \'787fc0b574\',\n      \'invtQte\' => \'12\',\n    ),\n  ),\n  \'date\' => \'11/07/2019\',\n)', '192.168.1.3'),
(1698, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-07-10 08:38:57', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1699, 497, 'asyn_get_ivntbrd', 'inventaire-asyn_get_ivntbrd', '2019-07-10 08:38:57', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'brdnum\' => \'1\',\n)', '192.168.1.3'),
(1700, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:38:57', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1701, 493, 'asyn_gen_ecart', 'inventaire-asyn_gen_ecart', '2019-07-10 08:39:08', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1702, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:39:09', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1703, 496, 'asyn_rds_stck', 'inventaire-asyn_rds_stck', '2019-07-10 08:39:21', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'magCode\' => \'1\',\n  \'exercice\' => \'2019\',\n  \'invtDate\' => \n  array (\n    \'date\' => \'2019-07-11 00:00:00.000000\',\n    \'timezone_type\' => \'3\',\n    \'timezone\' => \'Europe/Berlin\',\n  ),\n  \'invtQte\' => \'12\',\n  \'invStkadateinvt\' => \'0\',\n  \'invEcart\' => \'-12\',\n  \'invNumBorderau\' => \'1\',\n  \'invObservation\' => \'\',\n  \'art_code\' => \'76ca8a3b58\',\n)', '192.168.1.3'),
(1704, 493, 'asyn_gen_ecart', 'inventaire-asyn_gen_ecart', '2019-07-10 08:39:21', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1705, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:39:21', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1706, 496, 'asyn_rds_stck', 'inventaire-asyn_rds_stck', '2019-07-10 08:39:58', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'magCode\' => \'1\',\n  \'exercice\' => \'2019\',\n  \'invtDate\' => \n  array (\n    \'date\' => \'2019-07-11 00:00:00.000000\',\n    \'timezone_type\' => \'3\',\n    \'timezone\' => \'Europe/Berlin\',\n  ),\n  \'invtQte\' => \'12\',\n  \'invStkadateinvt\' => \'0\',\n  \'invEcart\' => \'-12\',\n  \'invNumBorderau\' => \'1\',\n  \'invObservation\' => \'\',\n  \'art_code\' => \'7673457953\',\n)', '192.168.1.3'),
(1707, 493, 'asyn_gen_ecart', 'inventaire-asyn_gen_ecart', '2019-07-10 08:39:58', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1708, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:39:58', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1709, 496, 'asyn_rds_stck', 'inventaire-asyn_rds_stck', '2019-07-10 08:40:00', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'magCode\' => \'1\',\n  \'exercice\' => \'2019\',\n  \'invtDate\' => \n  array (\n    \'date\' => \'2019-07-11 00:00:00.000000\',\n    \'timezone_type\' => \'3\',\n    \'timezone\' => \'Europe/Berlin\',\n  ),\n  \'invtQte\' => \'12\',\n  \'invStkadateinvt\' => \'19\',\n  \'invEcart\' => \'7\',\n  \'invNumBorderau\' => \'1\',\n  \'invObservation\' => \'\',\n  \'art_code\' => \'7686426e63\',\n)', '192.168.1.3'),
(1710, 493, 'asyn_gen_ecart', 'inventaire-asyn_gen_ecart', '2019-07-10 08:40:00', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1711, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:40:00', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1712, 496, 'asyn_rds_stck', 'inventaire-asyn_rds_stck', '2019-07-10 08:40:01', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'magCode\' => \'1\',\n  \'exercice\' => \'2019\',\n  \'invtDate\' => \n  array (\n    \'date\' => \'2019-07-11 00:00:00.000000\',\n    \'timezone_type\' => \'3\',\n    \'timezone\' => \'Europe/Berlin\',\n  ),\n  \'invtQte\' => \'12\',\n  \'invStkadateinvt\' => \'10\',\n  \'invEcart\' => \'-2\',\n  \'invNumBorderau\' => \'1\',\n  \'invObservation\' => \'\',\n  \'art_code\' => \'77a0ee12b9\',\n)', '192.168.1.3'),
(1713, 493, 'asyn_gen_ecart', 'inventaire-asyn_gen_ecart', '2019-07-10 08:40:01', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1714, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:40:01', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1715, 496, 'asyn_rds_stck', 'inventaire-asyn_rds_stck', '2019-07-10 08:40:03', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'magCode\' => \'1\',\n  \'exercice\' => \'2019\',\n  \'invtDate\' => \n  array (\n    \'date\' => \'2019-07-11 00:00:00.000000\',\n    \'timezone_type\' => \'3\',\n    \'timezone\' => \'Europe/Berlin\',\n  ),\n  \'invtQte\' => \'12\',\n  \'invStkadateinvt\' => \'0\',\n  \'invEcart\' => \'-12\',\n  \'invNumBorderau\' => \'1\',\n  \'invObservation\' => \'\',\n  \'art_code\' => \'787fc0b574\',\n)', '192.168.1.3'),
(1716, 493, 'asyn_gen_ecart', 'inventaire-asyn_gen_ecart', '2019-07-10 08:40:03', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1717, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:40:03', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1718, 601, 'identification', 'Identification', '2019-07-10 08:50:19', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1719, 551, 'index', 'Gestion des Devis/BC', '2019-07-10 08:50:23', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1720, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:50:24', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.3'),
(1721, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:50:24', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.3'),
(1722, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:50:24', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '192.168.1.3'),
(1723, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:50:24', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.3'),
(1724, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:50:24', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '192.168.1.3'),
(1725, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-07-10 08:50:24', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1726, 583, 'index', 'Gestion de la production', '2019-07-10 08:50:26', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1727, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-07-10 08:50:27', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1728, 590, 'index', 'Gestion des factures/BL', '2019-07-10 08:50:28', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1729, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:50:29', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.3'),
(1730, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:50:29', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.3'),
(1731, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-07-10 08:50:29', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '192.168.1.3'),
(1732, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-07-10 08:50:29', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1733, 461, 'index', 'Gestion de l\'inventaire', '2019-07-10 08:50:30', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1734, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-07-10 08:50:31', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1735, 494, 'asyn_invttable_state', 'inventaire-asyn_invttable_state', '2019-07-10 08:50:31', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.3'),
(1736, 433, 'index', 'Page d\'accueil', '2019-07-10 09:07:34', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.3'),
(1737, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-07-10 09:07:35', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '192.168.1.3'),
(1738, 433, 'index', 'Page d\'accueil', '2019-07-10 09:54:22', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.30'),
(1739, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-07-10 09:54:23', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '192.168.1.30'),
(1740, 433, 'index', 'Page d\'accueil', '2019-08-21 20:16:37', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.32'),
(1741, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-08-21 20:16:38', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '192.168.1.32'),
(1742, 361, 'index', 'gestion-index', '2019-08-21 20:17:51', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.32'),
(1743, 430, 'asyn_get_net_modul', 'updateMod-asyn_get_net_modul', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.32'),
(1744, 376, 'asyn_get_allvu', 'gestion-asyn_get_allvu', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.32'),
(1745, 377, 'asyn_get_menulist', 'gestion-asyn_get_menulist', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.32'),
(1746, 390, 'asyn_get_grbdoit_list', 'gestion-asyn_get_grbdoit_list', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.32'),
(1747, 363, 'asyn_get_srvlist', 'gestion-asyn_get_srvlist', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.32'),
(1748, 365, 'asyn_get_prf', 'gestion-asyn_get_prf', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'ident\' => \'1\',\n)', '192.168.1.32'),
(1749, 365, 'asyn_get_prf', 'gestion-asyn_get_prf', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'ident\' => \'1\',\n)', '192.168.1.32'),
(1750, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '192.168.1.32'),
(1751, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '192.168.1.32'),
(1752, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '192.168.1.32'),
(1753, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '192.168.1.32'),
(1754, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '192.168.1.32'),
(1755, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '192.168.1.32'),
(1756, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '192.168.1.32'),
(1757, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '192.168.1.32'),
(1758, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '192.168.1.32'),
(1759, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '192.168.1.32'),
(1760, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '192.168.1.32'),
(1761, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '192.168.1.32'),
(1762, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '192.168.1.32'),
(1763, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '192.168.1.32'),
(1764, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '192.168.1.32'),
(1765, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-08-21 20:17:52', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '192.168.1.32'),
(1766, 370, 'asyn_ck_login', 'gestion-asyn_ck_login', '2019-08-21 20:21:31', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.32'),
(1767, 367, 'asyn_aj_util', 'gestion-asyn_aj_util', '2019-08-21 20:22:28', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'UTIPNOM\' => \'Nouredine\',\n  \'UTINOM\' => \'Nouredine\',\n  \'UTILOG\' => \'Nouredine\',\n  \'UTImat\' => \'1\',\n  \'UTIPWD\' => \'Nouredine\',\n  \'UTIPWD2\' => \'Nouredine\',\n  \'ETATCOD\' => \'41\',\n  \'IDUTIL\' => \'\',\n  \'idprf\' => \'0\',\n)', '192.168.1.32'),
(1768, 422, 'asyn_get_msg', 'main-asyn_get_msg', '2019-08-21 20:22:28', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.32'),
(1769, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-08-21 20:22:28', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '192.168.1.32'),
(1770, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-08-21 20:23:05', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'1\',\n)', '192.168.1.32'),
(1771, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-08-21 20:23:05', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'1\',\n)', '192.168.1.32'),
(1772, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-08-21 20:23:05', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'1\',\n)', '192.168.1.32');
INSERT INTO `oper` (`idOPER`, `idMODUL`, `actionOPER`, `descriptOPER`, `dateOPER`, `catOPER`, `idPRF`, `IDUTIL`, `UTINOM`, `UTIPNOM`, `paramOPER`, `ipOPER`) VALUES
(1773, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-08-21 20:23:05', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'1\',\n)', '192.168.1.32'),
(1774, 398, 'asyn_get_all_mag', 'gestion-asyn_get_all_mag', '2019-08-21 20:23:09', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '192.168.1.32'),
(1775, 395, 'asyn_get_all_droits', 'gestion-asyn_get_all_droits', '2019-08-21 20:23:09', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '192.168.1.32'),
(1776, 400, 'asyn_get_all_exe', 'gestion-asyn_get_all_exe', '2019-08-21 20:23:09', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '192.168.1.32'),
(1777, 368, 'asyn_get_allutil', 'gestion-asyn_get_allutil', '2019-08-21 20:23:09', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'idprf\' => \'0\',\n)', '192.168.1.32'),
(1778, 397, 'asyn_prf_droit', 'gestion-asyn_prf_droit', '2019-08-21 20:23:35', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'iddroit\' => \'140\',\n  \'idprf\' => \'0\',\n  \'type\' => \'select\',\n)', '192.168.1.32'),
(1779, 397, 'asyn_prf_droit', 'gestion-asyn_prf_droit', '2019-08-21 20:23:36', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'iddroit\' => \'141\',\n  \'idprf\' => \'0\',\n  \'type\' => \'select\',\n)', '192.168.1.32'),
(1780, 397, 'asyn_prf_droit', 'gestion-asyn_prf_droit', '2019-08-21 20:23:46', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'iddroit\' => \'134\',\n  \'idprf\' => \'0\',\n  \'type\' => \'select\',\n)', '192.168.1.32'),
(1781, 433, 'index', 'Page d\'accueil', '2019-08-21 20:24:57', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.32'),
(1782, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-08-21 20:24:58', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '192.168.1.32'),
(1783, 433, 'index', 'Page d\'accueil', '2019-08-21 20:25:25', 'P', 0, 3, 'Nouredine', 'Nouredine', '\'\'', '192.168.1.32'),
(1784, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-08-21 20:25:26', '', 0, 3, 'Nouredine', 'Nouredine', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '192.168.1.32'),
(1785, 433, 'index', 'Page d\'accueil', '2019-08-22 09:20:07', 'P', 0, 3, 'Nouredine', 'Nouredine', '\'\'', '192.168.1.15'),
(1786, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-08-22 09:20:08', '', 0, 3, 'Nouredine', 'Nouredine', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '192.168.1.15'),
(1787, 433, 'index', 'Page d\'accueil', '2019-08-22 09:30:04', 'P', 0, 3, 'Nouredine', 'Nouredine', '\'\'', '192.168.1.14'),
(1788, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-08-22 09:30:05', '', 0, 3, 'Nouredine', 'Nouredine', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '192.168.1.14'),
(1789, 433, 'index', 'Page d\'accueil', '2019-08-22 10:30:23', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1790, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-08-22 10:30:24', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '192.168.1.15'),
(1791, 551, 'index', 'Gestion des Devis/BC', '2019-08-22 10:30:29', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1792, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-08-22 10:30:30', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.15'),
(1793, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-08-22 10:30:30', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.15'),
(1794, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-08-22 10:30:30', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '192.168.1.15'),
(1795, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-08-22 10:30:30', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.15'),
(1796, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-08-22 10:30:30', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '192.168.1.15'),
(1797, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-08-22 10:30:30', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.15'),
(1798, 558, 'asyn_get_datauniqcode', 'devis-asyn_get_datauniqcode', '2019-08-22 10:30:32', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'exe\' => \'2019\',\n)', '192.168.1.15'),
(1799, 552, 'asyn_get_data', 'devis-asyn_get_data', '2019-08-22 10:30:38', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '192.168.1.15'),
(1800, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-08-22 10:30:38', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1801, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-08-22 10:30:49', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1802, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2019-08-22 10:30:49', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'a_prodCodeDeviBc\' => \'4/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'53\',\n    \'a_prodCodeDeviBc\' => \'4/2019\',\n    \'a_prodCodeProd\' => \'4/2019\',\n    \'a_prodCodeBl\' => \'4/2019\',\n    \'a_prodCodeFacture\' => \'4/2019\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'2019\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-07-10 08:32:30.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n)', '192.168.1.15'),
(1803, 460, 'index', 'Approvisionnement MP', '2019-08-22 10:31:00', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1804, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-08-22 10:31:01', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1805, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-08-22 10:31:01', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.15'),
(1806, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-08-22 10:31:01', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.15'),
(1807, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-08-22 10:31:01', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '192.168.1.15'),
(1808, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-08-22 10:31:01', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.15'),
(1809, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2019-08-22 10:31:01', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1810, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2019-08-22 10:31:04', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '192.168.1.15'),
(1811, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-08-22 10:31:04', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1812, 518, 'index', 'Gestion des clients/fournisseur', '2019-08-22 10:31:22', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1813, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-08-22 10:31:23', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1814, 519, 'asyn_get_fournisseur', 'fournisseur-asyn_get_fournisseur', '2019-08-22 10:31:37', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'frsCoder\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.15'),
(1815, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-08-22 10:31:37', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1816, 456, 'index', 'Gestion des articles', '2019-08-22 10:31:46', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1817, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-08-22 10:31:48', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1818, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-08-22 10:31:48', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.15'),
(1819, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-08-22 10:31:48', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.15'),
(1820, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-08-22 10:31:48', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.15'),
(1821, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-08-22 10:31:50', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.15'),
(1822, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-08-22 10:31:50', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1823, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-08-22 10:31:55', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'g_artCode\' => \'7673457953\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'7673457953\',\n    \'g_artDesignation\' => \'Dattes branchée\',\n    \'g_artUnite\' => \'Kg\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'5c9a1778d00ce.jpg\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'0\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'g_artDelaislivraison\' => \'0\',\n    \'g_artClass\' => \'1\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'10\',\n    \'g_artTva\' => \'0\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'6\',\n    \'i_catartDesignation\' => \'DEGLET NOUR\',\n    \'p_art_code\' => \'7673457953\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '192.168.1.15'),
(1824, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2019-08-22 10:31:55', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'art\' => \'7673457953\',\n  \'clas\' => \'1\',\n)', '192.168.1.15'),
(1825, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-08-22 10:31:55', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1826, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-08-22 10:31:55', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.15'),
(1827, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-08-22 10:31:55', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1828, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-08-22 10:31:56', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1829, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2019-08-22 10:32:12', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1830, 466, 'asyn_get_article', 'article-asyn_get_article', '2019-08-22 10:32:12', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'g_artCode\' => \'7673457953\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'7673457953\',\n    \'g_artDesignation\' => \'Dattes branchée\',\n    \'g_artUnite\' => \'Kg\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'5c9a1778d00ce.jpg\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'0\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'g_artDelaislivraison\' => \'0\',\n    \'g_artClass\' => \'1\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'10\',\n    \'g_artTva\' => \'0\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'6\',\n    \'i_catartDesignation\' => \'DEGLET NOUR\',\n    \'p_art_code\' => \'7673457953\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '192.168.1.15'),
(1831, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-08-22 10:32:14', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.15'),
(1832, 468, 'asyn_update_article', 'article-asyn_update_article', '2019-08-22 10:32:21', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1833, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-08-22 10:32:21', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1834, 590, 'index', 'Gestion des factures/BL', '2019-08-22 10:32:34', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1835, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-08-22 10:32:35', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.15'),
(1836, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-08-22 10:32:35', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.15'),
(1837, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2019-08-22 10:32:35', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '192.168.1.15'),
(1838, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-08-22 10:32:35', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.15'),
(1839, 591, 'asyn_get_data', 'facturation-asyn_get_data', '2019-08-22 10:32:37', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '192.168.1.15'),
(1840, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2019-08-22 10:32:51', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'a_prodCodeProd\' => \'4/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'53\',\n    \'a_prodCodeDeviBc\' => \'4/2019\',\n    \'a_prodCodeProd\' => \'4/2019\',\n    \'a_prodCodeBl\' => \'4/2019\',\n    \'a_prodCodeFacture\' => \'4/2019\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'2019\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-07-10 08:32:30.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2019-07-10 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n)', '192.168.1.15'),
(1841, 591, 'asyn_get_data', 'facturation-asyn_get_data', '2019-08-22 10:32:57', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '192.168.1.15'),
(1842, 583, 'index', 'Gestion de la production', '2019-08-22 10:35:51', '', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1843, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-08-22 10:35:52', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.15'),
(1844, 584, 'asyn_get_data', 'prod-asyn_get_data', '2019-08-22 10:35:54', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '192.168.1.15'),
(1845, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-08-22 10:35:57', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'50\',\n    \'a_prodCodeDeviBc\' => \'1/2019\',\n    \'a_prodCodeProd\' => \'1/2019\',\n    \'a_prodCodeBl\' => \'1/2019\',\n    \'a_prodCodeFacture\' => \'1/2019\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'2019\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-05-13 14:58:31.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2019-05-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2019-05-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n  \'journeDate\' => \'22/08/2019\',\n)', '192.168.1.15'),
(1846, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-08-22 10:36:01', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'50\',\n    \'a_prodCodeDeviBc\' => \'1/2019\',\n    \'a_prodCodeProd\' => \'1/2019\',\n    \'a_prodCodeBl\' => \'1/2019\',\n    \'a_prodCodeFacture\' => \'1/2019\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'2019\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-05-13 14:58:31.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2019-05-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2019-05-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n  \'journeDate\' => \'21/08/2019\',\n  \'exe\' => \'2019\',\n)', '192.168.1.15'),
(1847, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2019-08-22 10:36:05', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2019\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'50\',\n    \'a_prodCodeDeviBc\' => \'1/2019\',\n    \'a_prodCodeProd\' => \'1/2019\',\n    \'a_prodCodeBl\' => \'1/2019\',\n    \'a_prodCodeFacture\' => \'1/2019\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2019\',\n    \'a_prodExerciceBc\' => \'2019\',\n    \'a_prodExerciceBlfacture\' => \'2019\',\n    \'a_prodExerciceProd\' => \'2019\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2019-05-13 14:58:31.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2019-05-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2019-05-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n  \'journeDate\' => \'20/08/2019\',\n  \'exe\' => \'2019\',\n)', '192.168.1.15'),
(1848, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-08-22 10:37:59', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '192.168.1.15'),
(1849, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-08-22 10:38:00', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '192.168.1.15'),
(1850, 537, 'asyn_gen_alert_stk', 'parametrage-asyn_gen_alert_stk', '2019-08-22 10:38:05', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '192.168.1.15'),
(1851, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2019-08-22 10:38:05', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1852, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-08-22 10:38:21', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '192.168.1.15'),
(1853, 433, 'index', 'Page d\'accueil', '2019-08-22 10:52:09', 'P', 0, 3, 'Nouredine', 'Nouredine', '\'\'', '192.168.1.14'),
(1854, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-08-22 10:52:10', '', 0, 3, 'Nouredine', 'Nouredine', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '192.168.1.14'),
(1855, 583, 'index', 'Gestion de la production', '2019-08-22 10:52:41', '', 0, 3, 'Nouredine', 'Nouredine', '\'\'', '192.168.1.14'),
(1856, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2019-08-22 10:52:42', '', 0, 3, 'Nouredine', 'Nouredine', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n)', '192.168.1.14'),
(1857, 433, 'index', 'Page d\'accueil', '2019-08-22 12:11:41', 'P', 0, 2, 'Oussama', 'Ouerghi', '\'\'', '192.168.1.15'),
(1858, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-08-22 12:11:42', '', 0, 2, 'Oussama', 'Ouerghi', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '192.168.1.15'),
(1859, 433, 'index', 'Page d\'accueil', '2019-08-22 12:12:06', 'P', 0, 3, 'Nouredine', 'Nouredine', '\'\'', '192.168.1.14'),
(1860, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-08-22 12:12:07', '', 0, 3, 'Nouredine', 'Nouredine', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '192.168.1.14'),
(1861, 506, 'stk', 'Etat du stock', '2019-08-22 12:13:23', '', 0, 3, 'Nouredine', 'Nouredine', '\'\'', '192.168.1.14'),
(1862, 516, 'asyn_get_stk', 'edition-asyn_get_stk', '2019-08-22 12:27:02', '', 0, 3, 'Nouredine', 'Nouredine', 'array (\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2019\',\n  \'mag\' => \'1\',\n)', '192.168.1.14'),
(1863, 433, 'index', 'Page d\'accueil', '2019-08-22 13:20:11', 'P', 0, 3, 'Nouredine', 'Nouredine', '\'\'', '192.168.1.14'),
(1864, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2019-08-22 13:20:12', '', 0, 3, 'Nouredine', 'Nouredine', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2019\',\n  \'periode\' => \'90\',\n)', '192.168.1.14'),
(1865, 433, 'index', 'Page d\'accueil', '2021-01-28 11:51:29', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1866, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2021-01-28 11:51:29', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.222'),
(1867, 551, 'index', 'Gestion des Devis/BC', '2021-01-28 11:52:13', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1868, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:52:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.222'),
(1869, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:52:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.222'),
(1870, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:52:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '192.168.1.222'),
(1871, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:52:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '192.168.1.222'),
(1872, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-01-28 11:52:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.222'),
(1873, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:52:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.222'),
(1874, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-01-28 11:52:13', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1875, 534, 'asyn_gen_stktable', 'parametrage-asyn_gen_stktable', '2021-01-28 11:52:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.222'),
(1876, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-01-28 11:52:13', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1877, 552, 'asyn_get_data', 'devis-asyn_get_data', '2021-01-28 11:52:18', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.222'),
(1878, 583, 'index', 'Gestion de la production', '2021-01-28 11:52:20', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1879, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-01-28 11:52:20', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.222'),
(1880, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-01-28 11:52:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.222'),
(1881, 590, 'index', 'Gestion des factures/BL', '2021-01-28 11:52:23', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1882, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:52:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.222'),
(1883, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:52:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.222'),
(1884, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:52:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '192.168.1.222'),
(1885, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-01-28 11:52:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.222'),
(1886, 591, 'asyn_get_data', 'facturation-asyn_get_data', '2021-01-28 11:52:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.222'),
(1887, 461, 'index', 'Gestion de l\'inventaire', '2021-01-28 11:52:26', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1888, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-01-28 11:52:26', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1889, 494, 'asyn_invttable_state', 'inventaire-asyn_invttable_state', '2021-01-28 11:52:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.222'),
(1890, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-01-28 11:52:26', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1891, 495, 'asyn_gen_invttable', 'inventaire-asyn_gen_invttable', '2021-01-28 11:52:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.222'),
(1892, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-01-28 11:52:26', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1893, 460, 'index', 'Approvisionnement MP', '2021-01-28 11:52:38', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1894, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-01-28 11:52:39', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1895, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:52:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.222'),
(1896, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:52:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.222'),
(1897, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:52:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '192.168.1.222'),
(1898, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-01-28 11:52:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.222'),
(1899, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-01-28 11:52:39', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1900, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2021-01-28 11:52:40', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.222'),
(1901, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-01-28 11:52:40', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1902, 456, 'index', 'Gestion des articles', '2021-01-28 11:52:45', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1903, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-01-28 11:52:45', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1904, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:52:46', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.222'),
(1905, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:52:46', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.222'),
(1906, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:52:46', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.222'),
(1907, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-01-28 11:52:47', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.222'),
(1908, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-01-28 11:52:47', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1909, 518, 'index', 'Gestion des clients/fournisseur', '2021-01-28 11:52:52', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1910, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-01-28 11:52:52', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1911, 519, 'asyn_get_fournisseur', 'fournisseur-asyn_get_fournisseur', '2021-01-28 11:52:54', '', 0, 1, 'admin', 'admin', 'array (\n  \'frsCoder\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.222'),
(1912, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-01-28 11:52:54', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1913, 551, 'index', 'Gestion des Devis/BC', '2021-01-28 11:53:15', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1914, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:53:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.222'),
(1915, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:53:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.222'),
(1916, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:53:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '192.168.1.222'),
(1917, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:53:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '192.168.1.222'),
(1918, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:53:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.222'),
(1919, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-01-28 11:53:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.222'),
(1920, 558, 'asyn_get_datauniqcode', 'devis-asyn_get_datauniqcode', '2021-01-28 11:53:18', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.222'),
(1921, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-01-28 11:53:22', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1922, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-01-28 11:53:44', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1923, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-01-28 11:53:48', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1924, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-01-28 11:53:50', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1925, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-01-28 11:53:58', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1926, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-01-28 11:54:09', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'7673457953\',\n)', '192.168.1.222'),
(1927, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-01-28 11:54:16', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1928, 554, 'asyn_ajout_data', 'devis-asyn_ajout_data', '2021-01-28 11:54:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'\',\n  \'prodCodeDeviBc\' => \'1/2017\',\n  \'prodExerciceDevis\' => \'2017\',\n  \'prodDateDevis\' => \'28/01/2021\',\n  \'prodDateBc\' => \'\',\n  \'prodExerciceBc\' => \'\',\n  \'prodCodeClient\' => \'6\',\n  \'prodCommerciale\' => \'2\',\n  \'prodDevise\' => \'1\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'proddetailQteDevis\' => \'50\',\n      \'proddetailPrixUniaireDeviseDevis\' => \'12\',\n      \'proddetailTvaDevis\' => \'0\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '192.168.1.222'),
(1929, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-01-28 11:54:19', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1930, 583, 'index', 'Gestion de la production', '2021-01-28 11:54:25', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1931, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-01-28 11:54:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.222'),
(1932, 551, 'index', 'Gestion des Devis/BC', '2021-01-28 11:54:27', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1933, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:54:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.222'),
(1934, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:54:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.222'),
(1935, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:54:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '192.168.1.222'),
(1936, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:54:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.222'),
(1937, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:54:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '192.168.1.222'),
(1938, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-01-28 11:54:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.222'),
(1939, 552, 'asyn_get_data', 'devis-asyn_get_data', '2021-01-28 11:54:29', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.222'),
(1940, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-01-28 11:54:29', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1941, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2021-01-28 11:55:56', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'54\',\n    \'a_prodCodeDeviBc\' => \'1/2017\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \'\',\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'71\',\n    \'b_etatLibelle\' => \'Devis Cr\',\n  ),\n)', '192.168.1.222'),
(1942, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-01-28 11:55:56', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1943, 582, 'asyn_genbc', 'devis-asyn_genbc', '2021-01-28 11:56:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'54\',\n  \'prodCodeDeviBc\' => \'1/2017\',\n  \'prodExerciceDevis\' => \'2017\',\n  \'prodDateDevis\' => \'28/01/2021\',\n  \'prodDateBc\' => \'28/01/2021\',\n  \'prodExerciceBc\' => \'2017\',\n  \'prodCodeClient\' => \'6\',\n  \'prodCommerciale\' => \'\',\n  \'prodDevise\' => \'\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'proddetailQteDevis\' => \'50\',\n      \'proddetailPrixUniaireDeviseDevis\' => \'12\',\n      \'proddetailTva\' => \'0%\',\n      \'proddetailPtttc\' => \'600.00\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '192.168.1.222'),
(1944, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-01-28 11:56:01', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1945, 461, 'index', 'Gestion de l\'inventaire', '2021-01-28 11:56:04', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1946, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-01-28 11:56:05', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1947, 494, 'asyn_invttable_state', 'inventaire-asyn_invttable_state', '2021-01-28 11:56:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.222'),
(1948, 460, 'index', 'Approvisionnement MP', '2021-01-28 11:56:26', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1949, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-01-28 11:56:26', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1950, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:56:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.222'),
(1951, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:56:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.222'),
(1952, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 11:56:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '192.168.1.222'),
(1953, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-01-28 11:56:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.222'),
(1954, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-01-28 11:56:26', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1955, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2021-01-28 11:56:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.222'),
(1956, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-01-28 11:56:28', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1957, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2021-01-28 11:56:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.222'),
(1958, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-01-28 11:56:36', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1959, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2021-01-28 11:56:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.222'),
(1960, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-01-28 11:56:37', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222');
INSERT INTO `oper` (`idOPER`, `idMODUL`, `actionOPER`, `descriptOPER`, `dateOPER`, `catOPER`, `idPRF`, `IDUTIL`, `UTINOM`, `UTIPNOM`, `paramOPER`, `ipOPER`) VALUES
(1961, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2021-01-28 11:56:44', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.222'),
(1962, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-01-28 11:56:44', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1963, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2021-01-28 11:56:48', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.222'),
(1964, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-01-28 11:56:53', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1965, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-01-28 11:57:34', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1966, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-01-28 11:58:01', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1967, 472, 'asyn_ajout_entree', 'entree-asyn_ajout_entree', '2021-01-28 11:58:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'1/2017\',\n  \'entExercice\' => \'2017\',\n  \'entBcolcode\' => \'120\',\n  \'entBcolexercice\' => \'1\',\n  \'entContratcode\' => \'12\',\n  \'entContratexercice\' => \'\',\n  \'entDatereception\' => \'28/01/2021\',\n  \'entNumbl\' => \'12\',\n  \'entDatebl\' => \'28/01/2021\',\n  \'entNumfacture\' => \'123\',\n  \'entDatefacture\' => \'\',\n  \'entTypecode\' => \'0\',\n  \'entNumtransit\' => \'\',\n  \'entDevise\' => \'\',\n  \'entCours\' => \'\',\n  \'entObservation\' => \'12\',\n  \'entFournisseurcode\' => \'7\',\n  \'entCodes\' => \n  array (\n    0 => \n    array (\n      \'entArtcode\' => \'77a0ee12b9\',\n      \'entCodetrace\' => \'a7a93215ae\',\n      \'entQte\' => \'100\',\n      \'entQtesurplus\' => \'\',\n      \'entDateperomption\' => \'28/01/2022\',\n      \'entPu\' => \'12\',\n      \'tvaCode\' => \'\',\n      \'entPrixtotale\' => \'1200\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '192.168.1.222'),
(1968, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-01-28 11:58:39', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1969, 583, 'index', 'Gestion de la production', '2021-01-28 11:58:53', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1970, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-01-28 11:58:53', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.222'),
(1971, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-01-28 11:58:55', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.222'),
(1972, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2021-01-28 11:58:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.222'),
(1973, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-01-28 11:58:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'54\',\n    \'a_prodCodeDeviBc\' => \'1/2017\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'28/01/2021\',\n)', '192.168.1.222'),
(1974, 599, 'asyn_genprod', 'prod-asyn_genprod', '2021-01-28 11:59:41', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'54\',\n  \'prodCodeProd\' => \'1/2017\',\n  \'prodExerciceProd\' => \'2017\',\n  \'journeDate\' => \'28/01/2021\',\n  \'prodDateProd\' => \'\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'prodDetailId\' => \'60\',\n      \'consProdId\' => \n      array (\n        0 => \n        array (\n          \'consprodType\' => \'MP\',\n          \'consprodArticleCode\' => \'77a0ee12b9\',\n          \'consprodCodeFrs\' => \'7\',\n          \'consprodQte\' => \'25<i class=\"fa fa\',\n        ),\n      ),\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'journeQte\' => \'25\',\n      \'journeDatePeromption\' => \'26/01/2022\',\n      \'qteProduite\' => \'null\',\n      \'proddetailQteDevis\' => \'50\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '192.168.1.222'),
(1975, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-01-28 11:59:41', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1976, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2021-01-28 12:00:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.222'),
(1977, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-01-28 12:00:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'54\',\n    \'a_prodCodeDeviBc\' => \'1/2017\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'28/01/2021\',\n)', '192.168.1.222'),
(1978, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-01-28 12:00:38', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'54\',\n    \'a_prodCodeDeviBc\' => \'1/2017\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'27/01/2021\',\n  \'exe\' => \'2017\',\n)', '192.168.1.222'),
(1979, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-01-28 12:00:44', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'54\',\n    \'a_prodCodeDeviBc\' => \'1/2017\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'29/01/2021\',\n  \'exe\' => \'2017\',\n)', '192.168.1.222'),
(1980, 599, 'asyn_genprod', 'prod-asyn_genprod', '2021-01-28 12:01:03', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'54\',\n  \'prodCodeProd\' => \'1/2017\',\n  \'prodExerciceProd\' => \'2017\',\n  \'journeDate\' => \'29/01/2021\',\n  \'prodDateProd\' => \'\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'prodDetailId\' => \'60\',\n      \'consProdId\' => \n      array (\n        0 => \n        array (\n          \'consprodType\' => \'MP\',\n          \'consprodArticleCode\' => \'77a0ee12b9\',\n          \'consprodCodeFrs\' => \'7\',\n          \'consprodQte\' => \'25<i class=\"fa fa\',\n        ),\n      ),\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'journeQte\' => \'25\',\n      \'journeDatePeromption\' => \'28/01/2021\',\n      \'qteProduite\' => \'25\',\n      \'proddetailQteDevis\' => \'50\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '192.168.1.222'),
(1981, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-01-28 12:01:03', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1982, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2021-01-28 12:01:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.222'),
(1983, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-01-28 12:01:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'54\',\n    \'a_prodCodeDeviBc\' => \'1/2017\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'29/01/2021\',\n)', '192.168.1.222'),
(1984, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-01-28 12:01:10', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n  \'formapp\' => \n  array (\n    \'qtestk\' => \n    array (\n      0 => \n      array (\n        \'art\' => \'77a0ee12b9\',\n        \'qte\' => \'25<i class=\"fa fa\',\n      ),\n    ),\n  ),\n)', '192.168.1.222'),
(1985, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-01-28 12:01:55', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n  \'formapp\' => \n  array (\n    \'qtestk\' => \n    array (\n      0 => \n      array (\n        \'art\' => \'77a0ee12b9\',\n        \'qte\' => \'25<i class=\"fa fa\',\n      ),\n    ),\n  ),\n)', '192.168.1.222'),
(1986, 600, 'asyn_validprod', 'prod-asyn_validprod', '2021-01-28 12:02:14', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'54\',\n    \'a_prodCodeDeviBc\' => \'1/2017\',\n    \'a_prodCodeProd\' => \'1/2017\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'75\',\n    \'b_etatLibelle\' => \'Bon de prod générer\',\n  ),\n)', '192.168.1.222'),
(1987, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-01-28 12:02:14', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1988, 590, 'index', 'Gestion des factures/BL', '2021-01-28 12:02:28', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.222'),
(1989, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 12:02:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.222'),
(1990, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 12:02:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.222'),
(1991, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-01-28 12:02:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '192.168.1.222'),
(1992, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-01-28 12:02:28', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.222'),
(1993, 591, 'asyn_get_data', 'facturation-asyn_get_data', '2021-01-28 12:02:30', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.222'),
(1994, 597, 'asyn_get_datauniqcode', 'facturation-asyn_get_datauniqcode', '2021-01-28 12:02:40', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.222'),
(1995, 592, 'asyn_get_data_object', 'facturation-asyn_get_data_object', '2021-01-28 12:02:40', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeProd\' => \'1/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'54\',\n    \'a_prodCodeDeviBc\' => \'1/2017\',\n    \'a_prodCodeProd\' => \'1/2017\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2021-01-28 12:02:14.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'76\',\n    \'b_etatLibelle\' => \'Bon de prod valider\',\n  ),\n)', '192.168.1.222'),
(1996, 433, 'index', 'Page d\'accueil', '2021-03-02 22:39:19', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.109'),
(1997, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2021-03-02 22:39:20', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.109'),
(1998, 506, 'stk', 'Etat du stock', '2021-03-02 22:40:05', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.109'),
(1999, 456, 'index', 'Gestion des articles', '2021-03-02 22:40:14', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.109'),
(2000, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-03-02 22:40:14', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.109'),
(2001, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-03-02 22:40:14', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.109'),
(2002, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-03-02 22:40:14', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.109'),
(2003, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-03-02 22:40:14', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.109'),
(2004, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-03-02 22:40:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.109'),
(2005, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-03-02 22:40:26', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.109'),
(2006, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-03-02 22:40:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'7673457953\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'7673457953\',\n    \'g_artDesignation\' => \'Dattes branchée\',\n    \'g_artUnite\' => \'\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'5d5e531581ebf.jpg\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'0\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'g_artDelaislivraison\' => \'0\',\n    \'g_artClass\' => \'1\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'10\',\n    \'g_artTva\' => \'0\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'6\',\n    \'i_catartDesignation\' => \'DEGLET NOUR\',\n    \'p_art_code\' => \'7673457953\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '192.168.1.109'),
(2007, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2021-03-02 22:40:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'art\' => \'7673457953\',\n  \'clas\' => \'1\',\n)', '192.168.1.109'),
(2008, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-03-02 22:40:50', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.109'),
(2009, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-03-02 22:40:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.109'),
(2010, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-03-02 22:40:51', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.109'),
(2011, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-03-02 22:40:51', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.109'),
(2012, 551, 'index', 'Gestion des Devis/BC', '2021-03-02 22:41:21', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.109'),
(2013, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-03-02 22:41:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.109'),
(2014, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-03-02 22:41:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.109'),
(2015, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-03-02 22:41:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '192.168.1.109'),
(2016, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-03-02 22:41:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '192.168.1.109'),
(2017, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-03-02 22:41:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.109'),
(2018, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-03-02 22:41:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.109'),
(2019, 509, 'cons', 'Etat de consommations', '2021-03-02 22:41:31', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.109'),
(2020, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-03-02 22:41:31', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '192.168.1.109'),
(2021, 508, 'stknmvt', 'Stock non mouvement', '2021-03-02 22:41:37', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.109'),
(2022, 507, 'histprix', 'Historique de prix', '2021-03-02 22:41:42', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.109'),
(2023, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-03-02 22:41:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n)', '192.168.1.109'),
(2024, 506, 'stk', 'Etat du stock', '2021-03-02 22:41:48', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.109'),
(2025, 460, 'index', 'Approvisionnement MP', '2021-03-02 22:41:54', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.109'),
(2026, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-03-02 22:41:54', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.109'),
(2027, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-03-02 22:41:54', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.109'),
(2028, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-03-02 22:41:54', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.109'),
(2029, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-03-02 22:41:54', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '192.168.1.109'),
(2030, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-03-02 22:41:54', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.109'),
(2031, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-03-02 22:41:54', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.109'),
(2032, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2021-03-02 22:41:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.109'),
(2033, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-03-02 22:41:57', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.109'),
(2034, 476, 'asyn_get_entree_object', 'entree-asyn_get_entree_object', '2021-03-02 22:41:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_entCode\' => \'1/2017\',\n  \'datarefval\' => \n  array (\n    \'a_entCode\' => \'1/2017\',\n    \'a_entExercice\' => \'2017\',\n    \'a_entBcolcode\' => \'120\',\n    \'a_entBcolexercice\' => \'1\',\n    \'a_entContratcode\' => \'12\',\n    \'a_entContratexercice\' => \'0\',\n    \'a_entMagrecepcode\' => \'1\',\n    \'a_entDatereception\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_entNumbl\' => \'12\',\n    \'a_entDatebl\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_entNumfacture\' => \'123\',\n    \'a_entDatefacture\' => \'\',\n    \'a_entTypecode\' => \'0\',\n    \'a_entMotifcode\' => \'\',\n    \'a_entNumtransit\' => \'\',\n    \'a_entDevise\' => \'0\',\n    \'a_entCours\' => \'0\',\n    \'a_entValeurtotaledt\' => \'\',\n    \'a_entObservation\' => \'12\',\n    \'b_etatCode\' => \'31\',\n    \'b_etatLibelle\' => \'Entree Active\',\n    \'c_frsCode\' => \'7\',\n    \'c_frsRaisonsociale\' => \'test fournisseur\',\n    \'c_frsAdresse\' => \'\',\n    \'c_frsTel\' => \'\',\n    \'c_frsFax\' => \'\',\n    \'c_frsMf\' => \'\',\n    \'c_frsEmail\' => \'\',\n    \'c_frsLogo\' => \'\',\n  ),\n)', '192.168.1.109'),
(2035, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-03-02 22:41:59', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.109'),
(2036, 551, 'index', 'Gestion des Devis/BC', '2021-03-02 22:42:35', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.109'),
(2037, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-03-02 22:42:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.109'),
(2038, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-03-02 22:42:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.109'),
(2039, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-03-02 22:42:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '192.168.1.109'),
(2040, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-03-02 22:42:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '192.168.1.109'),
(2041, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-03-02 22:42:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.109'),
(2042, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-03-02 22:42:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.109'),
(2043, 583, 'index', 'Gestion de la production', '2021-03-02 22:42:41', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.109'),
(2044, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-03-02 22:42:41', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.109'),
(2045, 590, 'index', 'Gestion des factures/BL', '2021-03-02 22:42:47', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.109'),
(2046, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-03-02 22:42:47', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.109'),
(2047, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-03-02 22:42:47', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.109'),
(2048, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-03-02 22:42:47', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '192.168.1.109'),
(2049, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-03-02 22:42:47', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.109'),
(2050, 591, 'asyn_get_data', 'facturation-asyn_get_data', '2021-03-02 22:42:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.109'),
(2051, 597, 'asyn_get_datauniqcode', 'facturation-asyn_get_datauniqcode', '2021-03-02 22:42:53', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.109'),
(2052, 592, 'asyn_get_data_object', 'facturation-asyn_get_data_object', '2021-03-02 22:42:53', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeProd\' => \'1/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'54\',\n    \'a_prodCodeDeviBc\' => \'1/2017\',\n    \'a_prodCodeProd\' => \'1/2017\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2021-01-28 12:02:14.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'76\',\n    \'b_etatLibelle\' => \'Bon de prod valider\',\n  ),\n)', '192.168.1.109'),
(2053, 433, 'index', 'Page d\'accueil', '2021-12-13 09:04:47', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2054, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2021-12-13 09:04:47', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.103'),
(2055, 601, 'identification', 'Identification', '2021-12-13 09:05:09', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2056, 509, 'cons', 'Etat de consommations', '2021-12-13 09:05:32', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2057, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:05:33', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '192.168.1.103'),
(2058, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:05:38', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2059, 514, 'asyn_get_cons', 'edition-asyn_get_cons', '2021-12-13 09:05:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'affectation\' => \'8\',\n  \'date\' => \'01/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2060, 514, 'asyn_get_cons', 'edition-asyn_get_cons', '2021-12-13 09:05:58', '', 0, 1, 'admin', 'admin', 'array (\n  \'affectation\' => \'8\',\n  \'date\' => \'01/12/2019\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2061, 514, 'asyn_get_cons', 'edition-asyn_get_cons', '2021-12-13 09:05:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'affectation\' => \'8\',\n  \'date\' => \'01/12/2019\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2062, 551, 'index', 'Gestion des Devis/BC', '2021-12-13 09:06:14', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2063, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:06:14', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.103'),
(2064, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:06:14', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2065, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:06:14', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '192.168.1.103'),
(2066, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 09:06:14', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2067, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:06:14', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '192.168.1.103'),
(2068, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:06:14', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2069, 552, 'asyn_get_data', 'devis-asyn_get_data', '2021-12-13 09:06:17', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2070, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:06:17', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2071, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2021-12-13 09:06:18', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'54\',\n    \'a_prodCodeDeviBc\' => \'1/2017\',\n    \'a_prodCodeProd\' => \'1/2017\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2021-01-28 12:02:14.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'76\',\n    \'b_etatLibelle\' => \'Bon de prod valider\',\n  ),\n)', '192.168.1.103'),
(2072, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:06:18', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2073, 442, 'asyn_change_mag', 'Changer un magasin', '2021-12-13 09:06:44', 'P', 0, 1, 'admin', 'admin', 'array (\n  \'mags\' => \'2\',\n)', '192.168.1.103'),
(2074, 456, 'index', 'Gestion des articles', '2021-12-13 09:06:57', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2075, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:06:57', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2076, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:06:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.103'),
(2077, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:06:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.103'),
(2078, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:06:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2079, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 09:07:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.103'),
(2080, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:07:01', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2081, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 09:07:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'7673457953\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'7673457953\',\n    \'g_artDesignation\' => \'Dattes branchée\',\n    \'g_artUnite\' => \'\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'5d5e531581ebf.jpg\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'0\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'g_artDelaislivraison\' => \'0\',\n    \'g_artClass\' => \'1\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'10\',\n    \'g_artTva\' => \'0\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'6\',\n    \'i_catartDesignation\' => \'DEGLET NOUR\',\n    \'p_art_code\' => \'7673457953\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '192.168.1.103'),
(2082, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2021-12-13 09:07:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'art\' => \'7673457953\',\n  \'clas\' => \'1\',\n)', '192.168.1.103'),
(2083, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:07:06', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2084, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:07:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2085, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:07:06', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2086, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:07:06', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2087, 470, 'asyn_get_artuniqcode', 'article-asyn_get_artuniqcode', '2021-12-13 09:07:35', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2088, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:07:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2089, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:08:29', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2090, 467, 'asyn_ajout_article', 'article-asyn_ajout_article', '2021-12-13 09:09:08', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2091, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 09:09:08', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2092, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 09:09:38', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.103'),
(2093, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:09:38', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2094, 601, 'identification', 'Identification', '2021-12-13 09:10:01', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2095, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 09:10:04', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2096, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2021-12-13 09:10:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'identifiant\' => \'797e5d47c3\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2097, 440, 'asyn_get_exception', 'RecupÃ©rer exception', '2021-12-13 09:10:04', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2098, 456, 'index', 'Gestion des articles', '2021-12-13 09:10:11', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2099, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:10:11', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2100, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:10:11', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.103'),
(2101, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:10:11', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.103'),
(2102, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:10:11', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2103, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 09:10:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.103'),
(2104, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:10:13', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2105, 601, 'identification', 'Identification', '2021-12-13 09:10:34', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2106, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 09:10:39', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2107, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2021-12-13 09:10:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'identifiant\' => \'797e5d47c3\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2108, 440, 'asyn_get_exception', 'RecupÃ©rer exception', '2021-12-13 09:10:39', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2109, 518, 'index', 'Gestion des clients/fournisseur', '2021-12-13 09:10:46', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2110, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:10:46', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2111, 519, 'asyn_get_fournisseur', 'fournisseur-asyn_get_fournisseur', '2021-12-13 09:10:47', '', 0, 1, 'admin', 'admin', 'array (\n  \'frsCoder\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.103'),
(2112, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:10:47', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2113, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:10:57', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2114, 523, 'asyn_delete_fournisseur', 'fournisseur-asyn_delete_fournisseur', '2021-12-13 09:10:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'p_frsCode\' => \'6\',\n  \'datarefval\' => \n  array (\n    \'p_frsCode\' => \'6\',\n    \'p_frsRaisonsociale\' => \'test client\',\n    \'p_frsAdresse\' => \'\',\n    \'p_frsTel\' => \'\',\n    \'p_frsFax\' => \'\',\n    \'p_frsMf\' => \'\',\n    \'p_frsEmail\' => \'\',\n    \'p_frsLogo\' => \'\',\n    \'g_typfrsCode\' => \'2\',\n    \'g_typfrsDesignation\' => \'Client\',\n  ),\n)', '192.168.1.103'),
(2115, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 09:10:59', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2116, 520, 'asyn_ajout_fournisseur', 'fournisseur-asyn_ajout_fournisseur', '2021-12-13 09:11:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'frsCode\' => \'\',\n  \'frsRaisonsociale\' => \'om-tech\',\n  \'frsAdresse\' => \'\',\n  \'frsTel\' => \'45644502\',\n  \'frsFax\' => \'\',\n  \'frsEmail\' => \'\',\n  \'frsMf\' => \'13587492\',\n  \'frsTypecode\' => \'2\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2117, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 09:11:37', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2118, 460, 'index', 'Approvisionnement MP', '2021-12-13 09:11:49', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2119, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:11:49', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2120, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:11:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2121, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:11:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2122, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:11:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '192.168.1.103'),
(2123, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 09:11:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2124, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 09:11:49', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103');
INSERT INTO `oper` (`idOPER`, `idMODUL`, `actionOPER`, `descriptOPER`, `dateOPER`, `catOPER`, `idPRF`, `IDUTIL`, `UTINOM`, `UTIPNOM`, `paramOPER`, `ipOPER`) VALUES
(2125, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 09:11:49', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2126, 534, 'asyn_gen_stktable', 'parametrage-asyn_gen_stktable', '2021-12-13 09:11:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2127, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 09:11:49', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2128, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2021-12-13 09:11:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2129, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:11:59', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2130, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2021-12-13 09:12:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2131, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:12:49', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2132, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 09:13:21', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2133, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 09:13:22', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2134, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 09:13:23', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2135, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 09:13:28', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2136, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 09:13:29', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2137, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:13:33', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2138, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 09:13:42', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2139, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 09:13:58', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2140, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 09:14:03', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2141, 472, 'asyn_ajout_entree', 'entree-asyn_ajout_entree', '2021-12-13 09:15:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'2/2017\',\n  \'entExercice\' => \'2017\',\n  \'entBcolcode\' => \'13\',\n  \'entBcolexercice\' => \'12\',\n  \'entContratcode\' => \'12\',\n  \'entContratexercice\' => \'12\',\n  \'entDatereception\' => \'13/12/2021\',\n  \'entNumbl\' => \'\',\n  \'entDatebl\' => \'13/12/2021\',\n  \'entNumfacture\' => \'1234\',\n  \'entDatefacture\' => \'13/12/2021\',\n  \'entTypecode\' => \'0\',\n  \'entNumtransit\' => \'\',\n  \'entDevise\' => \'\',\n  \'entCours\' => \'\',\n  \'entObservation\' => \'123\',\n  \'entFournisseurcode\' => \'7\',\n  \'entCodes\' => \n  array (\n    0 => \n    array (\n      \'entArtcode\' => \'77a0ee12b9\',\n      \'entCodetrace\' => \'90ad231c47\',\n      \'entQte\' => \'100\',\n      \'entQtesurplus\' => \'10\',\n      \'entDateperomption\' => \'22/12/2022\',\n      \'entPu\' => \'20\',\n      \'tvaCode\' => \'0\',\n      \'entPrixtotale\' => \'2000\',\n    ),\n  ),\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2142, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 09:15:15', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2143, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2021-12-13 09:15:20', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2144, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:15:20', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2145, 476, 'asyn_get_entree_object', 'entree-asyn_get_entree_object', '2021-12-13 09:15:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_entCode\' => \'2/2017\',\n  \'datarefval\' => \n  array (\n    \'a_entCode\' => \'2/2017\',\n    \'a_entExercice\' => \'2017\',\n    \'a_entBcolcode\' => \'13\',\n    \'a_entBcolexercice\' => \'12\',\n    \'a_entContratcode\' => \'12\',\n    \'a_entContratexercice\' => \'12\',\n    \'a_entMagrecepcode\' => \'2\',\n    \'a_entDatereception\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_entNumbl\' => \'\',\n    \'a_entDatebl\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_entNumfacture\' => \'1234\',\n    \'a_entDatefacture\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_entTypecode\' => \'0\',\n    \'a_entMotifcode\' => \'\',\n    \'a_entNumtransit\' => \'\',\n    \'a_entDevise\' => \'0\',\n    \'a_entCours\' => \'0\',\n    \'a_entValeurtotaledt\' => \'\',\n    \'a_entObservation\' => \'123\',\n    \'b_etatCode\' => \'31\',\n    \'b_etatLibelle\' => \'Entree Active\',\n    \'c_frsCode\' => \'7\',\n    \'c_frsRaisonsociale\' => \'test fournisseur\',\n    \'c_frsAdresse\' => \'\',\n    \'c_frsTel\' => \'\',\n    \'c_frsFax\' => \'\',\n    \'c_frsMf\' => \'\',\n    \'c_frsEmail\' => \'\',\n    \'c_frsLogo\' => \'\',\n  ),\n)', '192.168.1.103'),
(2146, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:15:22', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2147, 551, 'index', 'Gestion des Devis/BC', '2021-12-13 09:15:45', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2148, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:15:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.103'),
(2149, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:15:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2150, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:15:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '192.168.1.103'),
(2151, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:15:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2152, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:15:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '192.168.1.103'),
(2153, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 09:15:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2154, 552, 'asyn_get_data', 'devis-asyn_get_data', '2021-12-13 09:15:47', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2155, 558, 'asyn_get_datauniqcode', 'devis-asyn_get_datauniqcode', '2021-12-13 09:15:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2156, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:16:13', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2157, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 09:18:08', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'7673457953\',\n)', '192.168.1.103'),
(2158, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:18:13', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2159, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:18:15', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2160, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:18:21', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2161, 554, 'asyn_ajout_data', 'devis-asyn_ajout_data', '2021-12-13 09:18:38', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'\',\n  \'prodCodeDeviBc\' => \'2/2017\',\n  \'prodExerciceDevis\' => \'2017\',\n  \'prodDateDevis\' => \'13/12/2021\',\n  \'prodDateBc\' => \'\',\n  \'prodExerciceBc\' => \'\',\n  \'prodCodeClient\' => \'10\',\n  \'prodCommerciale\' => \'2\',\n  \'prodDevise\' => \'3\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'proddetailQteDevis\' => \'100\',\n      \'proddetailPrixUniaireDeviseDevis\' => \'3\',\n      \'proddetailTvaDevis\' => \'0\',\n    ),\n  ),\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2162, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 09:18:38', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2163, 552, 'asyn_get_data', 'devis-asyn_get_data', '2021-12-13 09:18:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2164, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:18:42', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2165, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2021-12-13 09:18:44', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'2/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'55\',\n    \'a_prodCodeDeviBc\' => \'2/2017\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \'\',\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'71\',\n    \'b_etatLibelle\' => \'Devis Cr\',\n  ),\n)', '192.168.1.103'),
(2166, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:18:44', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2167, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:19:11', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2168, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2021-12-13 09:19:11', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'2/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'55\',\n    \'a_prodCodeDeviBc\' => \'2/2017\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \'\',\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'71\',\n    \'b_etatLibelle\' => \'Devis Cr\',\n  ),\n)', '192.168.1.103'),
(2169, 552, 'asyn_get_data', 'devis-asyn_get_data', '2021-12-13 09:19:20', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2170, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:19:20', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2171, 552, 'asyn_get_data', 'devis-asyn_get_data', '2021-12-13 09:19:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2172, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:19:21', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2173, 552, 'asyn_get_data', 'devis-asyn_get_data', '2021-12-13 09:19:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2174, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:19:27', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2175, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:19:32', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2176, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2021-12-13 09:19:32', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'2/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'55\',\n    \'a_prodCodeDeviBc\' => \'2/2017\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \'\',\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'71\',\n    \'b_etatLibelle\' => \'Devis Cr\',\n  ),\n)', '192.168.1.103'),
(2177, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:20:04', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2178, 556, 'asyn_annulation_data', 'devis-asyn_annulation_data', '2021-12-13 09:20:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'2/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'55\',\n    \'a_prodCodeDeviBc\' => \'2/2017\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \'\',\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'71\',\n    \'b_etatLibelle\' => \'Devis Cr\',\n  ),\n)', '192.168.1.103'),
(2179, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 09:20:05', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2180, 552, 'asyn_get_data', 'devis-asyn_get_data', '2021-12-13 09:20:10', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2181, 558, 'asyn_get_datauniqcode', 'devis-asyn_get_datauniqcode', '2021-12-13 09:20:11', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2182, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:20:20', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2183, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:20:29', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2184, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:20:29', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2185, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 09:20:32', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'7673457953\',\n)', '192.168.1.103'),
(2186, 554, 'asyn_ajout_data', 'devis-asyn_ajout_data', '2021-12-13 09:20:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'\',\n  \'prodCodeDeviBc\' => \'3/2017\',\n  \'prodExerciceDevis\' => \'2017\',\n  \'prodDateDevis\' => \'13/12/2021\',\n  \'prodDateBc\' => \'\',\n  \'prodExerciceBc\' => \'\',\n  \'prodCodeClient\' => \'10\',\n  \'prodCommerciale\' => \'2\',\n  \'prodDevise\' => \'2\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'proddetailQteDevis\' => \'100\',\n      \'proddetailPrixUniaireDeviseDevis\' => \'3\',\n      \'proddetailTvaDevis\' => \'0\',\n    ),\n  ),\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2187, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 09:20:42', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2188, 552, 'asyn_get_data', 'devis-asyn_get_data', '2021-12-13 09:20:44', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2189, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:20:44', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2190, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2021-12-13 09:21:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'56\',\n    \'a_prodCodeDeviBc\' => \'3/2017\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \'\',\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'71\',\n    \'b_etatLibelle\' => \'Devis Cr\',\n  ),\n)', '192.168.1.103'),
(2191, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:21:01', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2192, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:21:38', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2193, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2021-12-13 09:21:38', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'56\',\n    \'a_prodCodeDeviBc\' => \'3/2017\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \'\',\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'71\',\n    \'b_etatLibelle\' => \'Devis Cr\',\n  ),\n)', '192.168.1.103'),
(2194, 582, 'asyn_genbc', 'devis-asyn_genbc', '2021-12-13 09:21:43', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'56\',\n  \'prodCodeDeviBc\' => \'3/2017\',\n  \'prodExerciceDevis\' => \'2017\',\n  \'prodDateDevis\' => \'13/12/2021\',\n  \'prodDateBc\' => \'13/12/2021\',\n  \'prodExerciceBc\' => \'2017\',\n  \'prodCodeClient\' => \'10\',\n  \'prodCommerciale\' => \'\',\n  \'prodDevise\' => \'\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'proddetailQteDevis\' => \'100\',\n      \'proddetailPrixUniaireDeviseDevis\' => \'3\',\n      \'proddetailTva\' => \'0%\',\n      \'proddetailPtttc\' => \'300.00\',\n    ),\n  ),\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2195, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 09:21:43', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2196, 552, 'asyn_get_data', 'devis-asyn_get_data', '2021-12-13 09:21:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2197, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:21:49', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2198, 583, 'index', 'Gestion de la production', '2021-12-13 09:21:52', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2199, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 09:21:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2200, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-12-13 09:21:54', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2201, 551, 'index', 'Gestion des Devis/BC', '2021-12-13 09:22:04', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2202, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:22:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.103'),
(2203, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:22:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2204, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:22:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '192.168.1.103'),
(2205, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:22:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2206, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:22:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '192.168.1.103'),
(2207, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 09:22:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2208, 552, 'asyn_get_data', 'devis-asyn_get_data', '2021-12-13 09:22:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2209, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:22:05', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2210, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2021-12-13 09:22:07', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'56\',\n    \'a_prodCodeDeviBc\' => \'3/2017\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n)', '192.168.1.103'),
(2211, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:22:07', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2212, 583, 'index', 'Gestion de la production', '2021-12-13 09:22:24', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2213, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 09:22:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2214, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-12-13 09:22:31', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2215, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2021-12-13 09:22:47', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2216, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-12-13 09:22:47', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'56\',\n    \'a_prodCodeDeviBc\' => \'3/2017\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'13/12/2021\',\n)', '192.168.1.103'),
(2217, 599, 'asyn_genprod', 'prod-asyn_genprod', '2021-12-13 09:25:46', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'56\',\n  \'prodCodeProd\' => \'2/2017\',\n  \'prodExerciceProd\' => \'2017\',\n  \'journeDate\' => \'13/12/2021\',\n  \'prodDateProd\' => \'\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'prodDetailId\' => \'62\',\n      \'consProdId\' => \n      array (\n        0 => \n        array (\n          \'consprodType\' => \'MP\',\n          \'consprodArticleCode\' => \'77a0ee12b9\',\n          \'consprodCodeFrs\' => \'7\',\n          \'consprodQte\' => \'22\',\n        ),\n      ),\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'journeQte\' => \'50\',\n      \'journeDatePeromption\' => \'14/12/2021\',\n      \'qteProduite\' => \'null\',\n      \'proddetailQteDevis\' => \'100\',\n    ),\n  ),\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2218, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 09:25:46', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2219, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-12-13 09:25:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n  \'formapp\' => \n  array (\n    \'qtestk\' => \n    array (\n      0 => \n      array (\n        \'art\' => \'77a0ee12b9\',\n        \'qte\' => \'22\',\n      ),\n    ),\n  ),\n)', '192.168.1.103'),
(2220, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-12-13 09:25:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n  \'formapp\' => \n  array (\n    \'qtestk\' => \n    array (\n      0 => \n      array (\n        \'art\' => \'77a0ee12b9\',\n        \'qte\' => \'22\',\n      ),\n    ),\n  ),\n)', '192.168.1.103'),
(2221, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2021-12-13 09:25:53', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2222, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-12-13 09:25:53', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'56\',\n    \'a_prodCodeDeviBc\' => \'3/2017\',\n    \'a_prodCodeProd\' => \'2/2017\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'13/12/2021\',\n)', '192.168.1.103'),
(2223, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-12-13 09:26:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'56\',\n    \'a_prodCodeDeviBc\' => \'3/2017\',\n    \'a_prodCodeProd\' => \'2/2017\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'14/12/2021\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2224, 599, 'asyn_genprod', 'prod-asyn_genprod', '2021-12-13 09:27:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'56\',\n  \'prodCodeProd\' => \'2/2017\',\n  \'prodExerciceProd\' => \'2017\',\n  \'journeDate\' => \'14/12/2021\',\n  \'prodDateProd\' => \'\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'prodDetailId\' => \'62\',\n      \'consProdId\' => \n      array (\n        0 => \n        array (\n          \'consprodType\' => \'MP\',\n          \'consprodArticleCode\' => \'77a0ee12b9\',\n          \'consprodCodeFrs\' => \'7\',\n          \'consprodQte\' => \'22\',\n        ),\n      ),\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'journeQte\' => \'50\',\n      \'journeDatePeromption\' => \'20/12/2022\',\n      \'qteProduite\' => \'50\',\n      \'proddetailQteDevis\' => \'100\',\n    ),\n  ),\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2225, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 09:27:22', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2226, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-12-13 09:27:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n  \'formapp\' => \n  array (\n    \'qtestk\' => \n    array (\n      0 => \n      array (\n        \'art\' => \'77a0ee12b9\',\n        \'qte\' => \'22\',\n      ),\n    ),\n  ),\n)', '192.168.1.103'),
(2227, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2021-12-13 09:27:31', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2228, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-12-13 09:27:31', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'56\',\n    \'a_prodCodeDeviBc\' => \'3/2017\',\n    \'a_prodCodeProd\' => \'2/2017\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'75\',\n    \'b_etatLibelle\' => \'Bon de prod générer\',\n  ),\n  \'journeDate\' => \'14/12/2021\',\n)', '192.168.1.103'),
(2229, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-12-13 09:27:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'56\',\n    \'a_prodCodeDeviBc\' => \'3/2017\',\n    \'a_prodCodeProd\' => \'2/2017\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'75\',\n    \'b_etatLibelle\' => \'Bon de prod générer\',\n  ),\n  \'journeDate\' => \'15/12/2021\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2230, 600, 'asyn_validprod', 'prod-asyn_validprod', '2021-12-13 09:27:44', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'56\',\n    \'a_prodCodeDeviBc\' => \'3/2017\',\n    \'a_prodCodeProd\' => \'2/2017\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'75\',\n    \'b_etatLibelle\' => \'Bon de prod générer\',\n  ),\n)', '192.168.1.103'),
(2231, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 09:27:44', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2232, 590, 'index', 'Gestion des factures/BL', '2021-12-13 09:28:25', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2233, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:28:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.103'),
(2234, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:28:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2235, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:28:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '192.168.1.103'),
(2236, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 09:28:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2237, 591, 'asyn_get_data', 'facturation-asyn_get_data', '2021-12-13 09:28:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2238, 597, 'asyn_get_datauniqcode', 'facturation-asyn_get_datauniqcode', '2021-12-13 09:28:30', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2239, 592, 'asyn_get_data_object', 'facturation-asyn_get_data_object', '2021-12-13 09:28:31', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeProd\' => \'2/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'56\',\n    \'a_prodCodeDeviBc\' => \'3/2017\',\n    \'a_prodCodeProd\' => \'2/2017\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2021-12-13 09:27:44.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'76\',\n    \'b_etatLibelle\' => \'Bon de prod valider\',\n  ),\n)', '192.168.1.103'),
(2240, 603, 'asyn_genfact', 'facturation-asyn_genfact', '2021-12-13 09:29:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'56\',\n  \'prodCodeDeviBc\' => \'3/2017\',\n  \'prodExerciceBc\' => \'2017\',\n  \'prodCodeProd\' => \'2/2017\',\n  \'prodExerciceProd\' => \'2017\',\n  \'prodDateProd\' => \'13/12/2021\',\n  \'prodCodeClient\' => \'10\',\n  \'prodCodeFacture\' => \'1/2017\',\n  \'prodExerciceBlfacture\' => \'2017\',\n  \'prodCodeBl\' => \'1/2017\',\n  \'prodDateBl\' => \'16/12/2021\',\n  \'prodDateFacture\' => \'13/12/2021\',\n  \'prodDevise\' => \'2\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'prodDetailId\' => \'62\',\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'proddetailQteDevis\' => \'100\',\n      \'proddetailPrixUniaireDevise\' => \'4\',\n      \'proddetailTva\' => \'0\',\n    ),\n  ),\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2241, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 09:29:15', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2242, 591, 'asyn_get_data', 'facturation-asyn_get_data', '2021-12-13 09:29:17', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2243, 592, 'asyn_get_data_object', 'facturation-asyn_get_data_object', '2021-12-13 09:29:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeProd\' => \'2/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'56\',\n    \'a_prodCodeDeviBc\' => \'3/2017\',\n    \'a_prodCodeProd\' => \'2/2017\',\n    \'a_prodCodeBl\' => \'1/2017\',\n    \'a_prodCodeFacture\' => \'1/2017\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'2017\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2021-12-13 09:27:44.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2021-12-16 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n)', '192.168.1.103'),
(2244, 592, 'asyn_get_data_object', 'facturation-asyn_get_data_object', '2021-12-13 09:29:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeProd\' => \'2/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'56\',\n    \'a_prodCodeDeviBc\' => \'3/2017\',\n    \'a_prodCodeProd\' => \'2/2017\',\n    \'a_prodCodeBl\' => \'1/2017\',\n    \'a_prodCodeFacture\' => \'1/2017\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'2017\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2021-12-13 09:27:44.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2021-12-16 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n)', '192.168.1.103'),
(2245, 506, 'stk', 'Etat du stock', '2021-12-13 09:31:46', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2246, 516, 'asyn_get_stk', 'edition-asyn_get_stk', '2021-12-13 09:31:48', '', 0, 1, 'admin', 'admin', 'array (\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2247, 460, 'index', 'Approvisionnement MP', '2021-12-13 09:33:19', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2248, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:33:19', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2249, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:33:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2250, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:33:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2251, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:33:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '192.168.1.103'),
(2252, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 09:33:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2253, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 09:33:19', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2254, 551, 'index', 'Gestion des Devis/BC', '2021-12-13 09:33:34', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2255, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:33:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.103'),
(2256, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:33:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2257, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:33:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '192.168.1.103'),
(2258, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:33:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '192.168.1.103'),
(2259, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:33:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103');
INSERT INTO `oper` (`idOPER`, `idMODUL`, `actionOPER`, `descriptOPER`, `dateOPER`, `catOPER`, `idPRF`, `IDUTIL`, `UTINOM`, `UTIPNOM`, `paramOPER`, `ipOPER`) VALUES
(2260, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 09:33:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2261, 552, 'asyn_get_data', 'devis-asyn_get_data', '2021-12-13 09:33:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2262, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:33:36', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2263, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2021-12-13 09:33:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'56\',\n    \'a_prodCodeDeviBc\' => \'3/2017\',\n    \'a_prodCodeProd\' => \'2/2017\',\n    \'a_prodCodeBl\' => \'1/2017\',\n    \'a_prodCodeFacture\' => \'1/2017\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'2017\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2021-12-13 09:27:44.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2021-12-16 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n)', '192.168.1.103'),
(2264, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:33:37', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2265, 583, 'index', 'Gestion de la production', '2021-12-13 09:33:48', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2266, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 09:33:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2267, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-12-13 09:33:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2268, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-12-13 09:33:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'56\',\n    \'a_prodCodeDeviBc\' => \'3/2017\',\n    \'a_prodCodeProd\' => \'2/2017\',\n    \'a_prodCodeBl\' => \'1/2017\',\n    \'a_prodCodeFacture\' => \'1/2017\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'2017\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2021-12-13 09:27:44.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2021-12-16 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n  \'journeDate\' => \'13/12/2021\',\n)', '192.168.1.103'),
(2269, 456, 'index', 'Gestion des articles', '2021-12-13 09:34:22', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2270, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:34:22', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2271, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:34:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.103'),
(2272, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:34:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.103'),
(2273, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:34:22', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2274, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 09:34:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.103'),
(2275, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:34:24', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2276, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 09:34:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'7673457953\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'7673457953\',\n    \'g_artDesignation\' => \'Dattes branchée\',\n    \'g_artUnite\' => \'\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'5d5e531581ebf.jpg\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'0\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'g_artDelaislivraison\' => \'0\',\n    \'g_artClass\' => \'1\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'10\',\n    \'g_artTva\' => \'0\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'6\',\n    \'i_catartDesignation\' => \'DEGLET NOUR\',\n    \'p_art_code\' => \'7673457953\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '192.168.1.103'),
(2277, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2021-12-13 09:34:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'art\' => \'7673457953\',\n  \'clas\' => \'1\',\n)', '192.168.1.103'),
(2278, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:34:42', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2279, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:34:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2280, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:34:42', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2281, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:34:42', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2282, 518, 'index', 'Gestion des clients/fournisseur', '2021-12-13 09:35:05', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2283, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:35:05', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2284, 456, 'index', 'Gestion des articles', '2021-12-13 09:35:32', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2285, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:35:32', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2286, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:35:32', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.103'),
(2287, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:35:32', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.103'),
(2288, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:35:32', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2289, 518, 'index', 'Gestion des clients/fournisseur', '2021-12-13 09:35:36', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2290, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:35:37', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2291, 519, 'asyn_get_fournisseur', 'fournisseur-asyn_get_fournisseur', '2021-12-13 09:35:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'frsCoder\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.103'),
(2292, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:35:39', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2293, 519, 'asyn_get_fournisseur', 'fournisseur-asyn_get_fournisseur', '2021-12-13 09:35:41', '', 0, 1, 'admin', 'admin', 'array (\n  \'p_frsCode\' => \'7\',\n  \'datarefval\' => \n  array (\n    \'p_frsCode\' => \'7\',\n    \'p_frsRaisonsociale\' => \'test fournisseur\',\n    \'p_frsAdresse\' => \'\',\n    \'p_frsTel\' => \'\',\n    \'p_frsFax\' => \'\',\n    \'p_frsMf\' => \'\',\n    \'p_frsEmail\' => \'\',\n    \'p_frsLogo\' => \'\',\n    \'g_typfrsCode\' => \'1\',\n    \'g_typfrsDesignation\' => \'Fournisseur\',\n  ),\n)', '192.168.1.103'),
(2294, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:35:41', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2295, 433, 'index', 'Page d\'accueil', '2021-12-13 09:36:07', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2296, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2021-12-13 09:36:07', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.103'),
(2297, 433, 'index', 'Page d\'accueil', '2021-12-13 09:36:20', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2298, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2021-12-13 09:36:20', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.103'),
(2299, 433, 'index', 'Page d\'accueil', '2021-12-13 09:37:03', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2300, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2021-12-13 09:37:03', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.103'),
(2301, 433, 'index', 'Page d\'accueil', '2021-12-13 09:37:18', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2302, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2021-12-13 09:37:18', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.103'),
(2303, 583, 'index', 'Gestion de la production', '2021-12-13 09:37:43', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2304, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 09:37:44', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2305, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-12-13 09:37:47', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2306, 551, 'index', 'Gestion des Devis/BC', '2021-12-13 09:37:57', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2307, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:37:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.103'),
(2308, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:37:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2309, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:37:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '192.168.1.103'),
(2310, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:37:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '192.168.1.103'),
(2311, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:37:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2312, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 09:37:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2313, 558, 'asyn_get_datauniqcode', 'devis-asyn_get_datauniqcode', '2021-12-13 09:37:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2314, 558, 'asyn_get_datauniqcode', 'devis-asyn_get_datauniqcode', '2021-12-13 09:38:53', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2315, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:39:00', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2316, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:39:20', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2317, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:39:25', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2318, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 09:39:30', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'7673457953\',\n)', '192.168.1.103'),
(2319, 554, 'asyn_ajout_data', 'devis-asyn_ajout_data', '2021-12-13 09:39:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'\',\n  \'prodCodeDeviBc\' => \'4/2017\',\n  \'prodExerciceDevis\' => \'2017\',\n  \'prodDateDevis\' => \'13/12/2021\',\n  \'prodDateBc\' => \'\',\n  \'prodExerciceBc\' => \'\',\n  \'prodCodeClient\' => \'10\',\n  \'prodCommerciale\' => \'3\',\n  \'prodDevise\' => \'1\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'proddetailQteDevis\' => \'100\',\n      \'proddetailPrixUniaireDeviseDevis\' => \'5\',\n      \'proddetailTvaDevis\' => \'0\',\n    ),\n  ),\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2320, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 09:39:34', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2321, 552, 'asyn_get_data', 'devis-asyn_get_data', '2021-12-13 09:39:38', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2322, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:39:38', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2323, 583, 'index', 'Gestion de la production', '2021-12-13 09:39:48', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2324, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 09:39:48', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2325, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-12-13 09:39:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2326, 551, 'index', 'Gestion des Devis/BC', '2021-12-13 09:39:52', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2327, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:39:53', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.103'),
(2328, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:39:53', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2329, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:39:53', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '192.168.1.103'),
(2330, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:39:53', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '192.168.1.103'),
(2331, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 09:39:53', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2332, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:39:53', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2333, 552, 'asyn_get_data', 'devis-asyn_get_data', '2021-12-13 09:39:55', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2334, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:39:55', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2335, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2021-12-13 09:39:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'4/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'57\',\n    \'a_prodCodeDeviBc\' => \'4/2017\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \'\',\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'71\',\n    \'b_etatLibelle\' => \'Devis Cr\',\n  ),\n)', '192.168.1.103'),
(2336, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:39:57', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2337, 582, 'asyn_genbc', 'devis-asyn_genbc', '2021-12-13 09:40:20', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'57\',\n  \'prodCodeDeviBc\' => \'4/2017\',\n  \'prodExerciceDevis\' => \'2017\',\n  \'prodDateDevis\' => \'13/12/2021\',\n  \'prodDateBc\' => \'13/12/2021\',\n  \'prodExerciceBc\' => \'2017\',\n  \'prodCodeClient\' => \'10\',\n  \'prodCommerciale\' => \'\',\n  \'prodDevise\' => \'\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'proddetailQteDevis\' => \'100\',\n      \'proddetailPrixUniaireDeviseDevis\' => \'5\',\n      \'proddetailTva\' => \'0%\',\n      \'proddetailPtttc\' => \'500.00\',\n    ),\n  ),\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2338, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 09:40:20', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2339, 583, 'index', 'Gestion de la production', '2021-12-13 09:40:22', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2340, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 09:40:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2341, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-12-13 09:40:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2342, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2021-12-13 09:40:30', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2343, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-12-13 09:40:30', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'4/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'57\',\n    \'a_prodCodeDeviBc\' => \'4/2017\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'13/12/2021\',\n)', '192.168.1.103'),
(2344, 599, 'asyn_genprod', 'prod-asyn_genprod', '2021-12-13 09:42:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'57\',\n  \'prodCodeProd\' => \'3/2017\',\n  \'prodExerciceProd\' => \'2017\',\n  \'journeDate\' => \'13/12/2021\',\n  \'prodDateProd\' => \'\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'prodDetailId\' => \'63\',\n      \'consProdId\' => \n      array (\n        0 => \n        array (\n          \'consprodType\' => \'MP\',\n          \'consprodArticleCode\' => \'77a0ee12b9\',\n          \'consprodCodeFrs\' => \'7\',\n          \'consprodQte\' => \'22\',\n        ),\n      ),\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'journeQte\' => \'50\',\n      \'journeDatePeromption\' => \'11/12/2023\',\n      \'qteProduite\' => \'null\',\n      \'proddetailQteDevis\' => \'100\',\n    ),\n  ),\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2345, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 09:42:15', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2346, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-12-13 09:42:18', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n  \'formapp\' => \n  array (\n    \'qtestk\' => \n    array (\n      0 => \n      array (\n        \'art\' => \'77a0ee12b9\',\n        \'qte\' => \'22\',\n      ),\n    ),\n  ),\n)', '192.168.1.103'),
(2347, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-12-13 09:42:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n  \'formapp\' => \n  array (\n    \'qtestk\' => \n    array (\n      0 => \n      array (\n        \'art\' => \'77a0ee12b9\',\n        \'qte\' => \'22\',\n      ),\n    ),\n  ),\n)', '192.168.1.103'),
(2348, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2021-12-13 09:42:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2349, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-12-13 09:42:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'4/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'57\',\n    \'a_prodCodeDeviBc\' => \'4/2017\',\n    \'a_prodCodeProd\' => \'3/2017\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'13/12/2021\',\n)', '192.168.1.103'),
(2350, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-12-13 09:42:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'4/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'57\',\n    \'a_prodCodeDeviBc\' => \'4/2017\',\n    \'a_prodCodeProd\' => \'3/2017\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'14/12/2021\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2351, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 09:42:47', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2352, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 09:42:53', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2353, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-12-13 09:43:07', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'56\',\n    \'a_prodCodeDeviBc\' => \'3/2017\',\n    \'a_prodCodeProd\' => \'2/2017\',\n    \'a_prodCodeBl\' => \'1/2017\',\n    \'a_prodCodeFacture\' => \'1/2017\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'2017\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2021-12-13 09:27:44.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2021-12-16 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n  \'journeDate\' => \'14/12/2021\',\n)', '192.168.1.103'),
(2354, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-12-13 09:43:11', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'56\',\n    \'a_prodCodeDeviBc\' => \'3/2017\',\n    \'a_prodCodeProd\' => \'2/2017\',\n    \'a_prodCodeBl\' => \'1/2017\',\n    \'a_prodCodeFacture\' => \'1/2017\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'2017\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2021-12-13 09:27:44.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2021-12-16 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n  \'journeDate\' => \'14/12/2021\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2355, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-12-13 09:43:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n  \'formapp\' => \n  array (\n    \'qtestk\' => \n    array (\n      0 => \n      array (\n        \'art\' => \'77a0ee12b9\',\n        \'qte\' => \'22\',\n      ),\n    ),\n  ),\n)', '192.168.1.103'),
(2356, 601, 'identification', 'Identification', '2021-12-13 09:43:51', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2357, 601, 'identification', 'Identification', '2021-12-13 09:43:53', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2358, 601, 'identification', 'Identification', '2021-12-13 09:43:56', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2359, 433, 'index', 'Page d\'accueil', '2021-12-13 09:48:02', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2360, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2021-12-13 09:48:02', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.103'),
(2361, 433, 'index', 'Page d\'accueil', '2021-12-13 09:48:13', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2362, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2021-12-13 09:48:14', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.103'),
(2363, 433, 'index', 'Page d\'accueil', '2021-12-13 09:49:39', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2364, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2021-12-13 09:49:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.103'),
(2365, 435, 'asyn_get_profil_det', 'RecupÃ©rer les paramÃ©tre de l\'utilisateu', '2021-12-13 09:49:44', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2366, 460, 'index', 'Approvisionnement MP', '2021-12-13 09:50:08', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2367, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:50:09', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2368, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:50:09', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2369, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:50:09', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2370, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:50:09', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '192.168.1.103'),
(2371, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 09:50:09', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2372, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 09:50:09', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2373, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2021-12-13 09:50:14', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2374, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:50:14', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2375, 507, 'histprix', 'Historique de prix', '2021-12-13 09:50:20', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2376, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:50:20', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n)', '192.168.1.103'),
(2377, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:50:27', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2378, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:50:46', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2379, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:50:51', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2380, 513, 'asyn_get_histprix', 'edition-asyn_get_histprix', '2021-12-13 09:50:53', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'7673457953\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2381, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:50:57', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2382, 513, 'asyn_get_histprix', 'edition-asyn_get_histprix', '2021-12-13 09:51:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'77a0ee12b9\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2383, 460, 'index', 'Approvisionnement MP', '2021-12-13 09:51:21', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2384, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:51:21', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2385, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:51:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2386, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:51:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2387, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:51:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '192.168.1.103'),
(2388, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 09:51:21', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2389, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 09:51:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2390, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2021-12-13 09:51:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2391, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:51:23', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2392, 476, 'asyn_get_entree_object', 'entree-asyn_get_entree_object', '2021-12-13 09:51:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_entCode\' => \'2/2017\',\n  \'datarefval\' => \n  array (\n    \'a_entCode\' => \'2/2017\',\n    \'a_entExercice\' => \'2017\',\n    \'a_entBcolcode\' => \'13\',\n    \'a_entBcolexercice\' => \'12\',\n    \'a_entContratcode\' => \'12\',\n    \'a_entContratexercice\' => \'12\',\n    \'a_entMagrecepcode\' => \'2\',\n    \'a_entDatereception\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_entNumbl\' => \'\',\n    \'a_entDatebl\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_entNumfacture\' => \'1234\',\n    \'a_entDatefacture\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_entTypecode\' => \'0\',\n    \'a_entMotifcode\' => \'\',\n    \'a_entNumtransit\' => \'\',\n    \'a_entDevise\' => \'0\',\n    \'a_entCours\' => \'0\',\n    \'a_entValeurtotaledt\' => \'\',\n    \'a_entObservation\' => \'123\',\n    \'b_etatCode\' => \'31\',\n    \'b_etatLibelle\' => \'Entree Active\',\n    \'c_frsCode\' => \'7\',\n    \'c_frsRaisonsociale\' => \'test fournisseur\',\n    \'c_frsAdresse\' => \'\',\n    \'c_frsTel\' => \'\',\n    \'c_frsFax\' => \'\',\n    \'c_frsMf\' => \'\',\n    \'c_frsEmail\' => \'\',\n    \'c_frsLogo\' => \'\',\n  ),\n)', '192.168.1.103'),
(2393, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:51:27', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2394, 508, 'stknmvt', 'Stock non mouvement', '2021-12-13 09:51:46', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2395, 515, 'asyn_get_nmvt', 'edition-asyn_get_nmvt', '2021-12-13 09:52:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'date\' => \'31/12/2017\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2396, 515, 'asyn_get_nmvt', 'edition-asyn_get_nmvt', '2021-12-13 09:52:20', '', 0, 1, 'admin', 'admin', 'array (\n  \'date\' => \'31/12/2017\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2397, 515, 'asyn_get_nmvt', 'edition-asyn_get_nmvt', '2021-12-13 09:52:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'date\' => \'31/12/2017\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2398, 509, 'cons', 'Etat de consommations', '2021-12-13 09:52:51', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2399, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:52:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '192.168.1.103'),
(2400, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:52:56', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2401, 514, 'asyn_get_cons', 'edition-asyn_get_cons', '2021-12-13 09:53:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'affectation\' => \'8\',\n  \'date\' => \'10/11/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2402, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:53:15', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2403, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:53:17', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2404, 514, 'asyn_get_cons', 'edition-asyn_get_cons', '2021-12-13 09:53:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'affectation\' => \'10\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2405, 514, 'asyn_get_cons', 'edition-asyn_get_cons', '2021-12-13 09:53:40', '', 0, 1, 'admin', 'admin', 'array (\n  \'affectation\' => \'10\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2406, 514, 'asyn_get_cons', 'edition-asyn_get_cons', '2021-12-13 09:53:41', '', 0, 1, 'admin', 'admin', 'array (\n  \'affectation\' => \'10\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2407, 514, 'asyn_get_cons', 'edition-asyn_get_cons', '2021-12-13 09:53:41', '', 0, 1, 'admin', 'admin', 'array (\n  \'affectation\' => \'10\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2408, 514, 'asyn_get_cons', 'edition-asyn_get_cons', '2021-12-13 09:53:41', '', 0, 1, 'admin', 'admin', 'array (\n  \'affectation\' => \'10\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2409, 514, 'asyn_get_cons', 'edition-asyn_get_cons', '2021-12-13 09:53:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'affectation\' => \'10\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2410, 514, 'asyn_get_cons', 'edition-asyn_get_cons', '2021-12-13 09:53:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'affectation\' => \'10\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2411, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:53:46', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2412, 514, 'asyn_get_cons', 'edition-asyn_get_cons', '2021-12-13 09:53:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'affectation\' => \'7\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2413, 514, 'asyn_get_cons', 'edition-asyn_get_cons', '2021-12-13 09:53:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'affectation\' => \'7\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2414, 514, 'asyn_get_cons', 'edition-asyn_get_cons', '2021-12-13 09:53:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'affectation\' => \'7\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2415, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:53:53', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2416, 514, 'asyn_get_cons', 'edition-asyn_get_cons', '2021-12-13 09:53:56', '', 0, 1, 'admin', 'admin', 'array (\n  \'affectation\' => \'8\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2417, 514, 'asyn_get_cons', 'edition-asyn_get_cons', '2021-12-13 09:53:56', '', 0, 1, 'admin', 'admin', 'array (\n  \'affectation\' => \'8\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2418, 514, 'asyn_get_cons', 'edition-asyn_get_cons', '2021-12-13 09:53:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'affectation\' => \'8\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2419, 514, 'asyn_get_cons', 'edition-asyn_get_cons', '2021-12-13 09:53:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'affectation\' => \'8\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2420, 514, 'asyn_get_cons', 'edition-asyn_get_cons', '2021-12-13 09:53:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'affectation\' => \'8\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2421, 508, 'stknmvt', 'Stock non mouvement', '2021-12-13 09:54:00', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2422, 507, 'histprix', 'Historique de prix', '2021-12-13 09:54:01', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2423, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:54:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n)', '192.168.1.103'),
(2424, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:54:13', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2425, 513, 'asyn_get_histprix', 'edition-asyn_get_histprix', '2021-12-13 09:54:17', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'77a0ee12b9\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2426, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:54:29', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2427, 513, 'asyn_get_histprix', 'edition-asyn_get_histprix', '2021-12-13 09:54:31', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'7673457953\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103');
INSERT INTO `oper` (`idOPER`, `idMODUL`, `actionOPER`, `descriptOPER`, `dateOPER`, `catOPER`, `idPRF`, `IDUTIL`, `UTINOM`, `UTIPNOM`, `paramOPER`, `ipOPER`) VALUES
(2428, 513, 'asyn_get_histprix', 'edition-asyn_get_histprix', '2021-12-13 09:54:32', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'7673457953\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2429, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:54:35', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2430, 513, 'asyn_get_histprix', 'edition-asyn_get_histprix', '2021-12-13 09:54:44', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'797e5d47c3\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2431, 513, 'asyn_get_histprix', 'edition-asyn_get_histprix', '2021-12-13 09:54:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'797e5d47c3\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2432, 513, 'asyn_get_histprix', 'edition-asyn_get_histprix', '2021-12-13 09:54:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'797e5d47c3\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2433, 551, 'index', 'Gestion des Devis/BC', '2021-12-13 09:54:49', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2434, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:54:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.103'),
(2435, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:54:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2436, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:54:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '192.168.1.103'),
(2437, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:54:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '192.168.1.103'),
(2438, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:54:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2439, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 09:54:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2440, 552, 'asyn_get_data', 'devis-asyn_get_data', '2021-12-13 09:54:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2441, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:54:51', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2442, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2021-12-13 09:54:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'56\',\n    \'a_prodCodeDeviBc\' => \'3/2017\',\n    \'a_prodCodeProd\' => \'2/2017\',\n    \'a_prodCodeBl\' => \'1/2017\',\n    \'a_prodCodeFacture\' => \'1/2017\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'2017\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2021-12-13 09:27:44.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2021-12-16 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n)', '192.168.1.103'),
(2443, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:54:52', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2444, 552, 'asyn_get_data', 'devis-asyn_get_data', '2021-12-13 09:54:59', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2445, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:54:59', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2446, 507, 'histprix', 'Historique de prix', '2021-12-13 09:55:09', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2447, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:55:09', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n)', '192.168.1.103'),
(2448, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 09:55:14', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2449, 513, 'asyn_get_histprix', 'edition-asyn_get_histprix', '2021-12-13 09:55:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'7673457953\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2450, 513, 'asyn_get_histprix', 'edition-asyn_get_histprix', '2021-12-13 09:55:30', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'7673457953\',\n  \'date\' => \'13/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2451, 513, 'asyn_get_histprix', 'edition-asyn_get_histprix', '2021-12-13 09:55:38', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'7673457953\',\n  \'date\' => \'14/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2452, 513, 'asyn_get_histprix', 'edition-asyn_get_histprix', '2021-12-13 09:55:38', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'7673457953\',\n  \'date\' => \'14/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2453, 513, 'asyn_get_histprix', 'edition-asyn_get_histprix', '2021-12-13 09:55:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'7673457953\',\n  \'date\' => \'14/12/2021\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2454, 508, 'stknmvt', 'Stock non mouvement', '2021-12-13 09:55:40', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2455, 507, 'histprix', 'Historique de prix', '2021-12-13 09:55:42', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2456, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:55:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n)', '192.168.1.103'),
(2457, 506, 'stk', 'Etat du stock', '2021-12-13 09:55:43', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2458, 516, 'asyn_get_stk', 'edition-asyn_get_stk', '2021-12-13 09:55:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2459, 460, 'index', 'Approvisionnement MP', '2021-12-13 09:57:02', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2460, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:57:02', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2461, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:57:02', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2462, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:57:02', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2463, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 09:57:02', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '192.168.1.103'),
(2464, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 09:57:02', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2465, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 09:57:02', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2466, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2021-12-13 09:57:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2467, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:57:04', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2468, 476, 'asyn_get_entree_object', 'entree-asyn_get_entree_object', '2021-12-13 09:57:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_entCode\' => \'2/2017\',\n  \'datarefval\' => \n  array (\n    \'a_entCode\' => \'2/2017\',\n    \'a_entExercice\' => \'2017\',\n    \'a_entBcolcode\' => \'13\',\n    \'a_entBcolexercice\' => \'12\',\n    \'a_entContratcode\' => \'12\',\n    \'a_entContratexercice\' => \'12\',\n    \'a_entMagrecepcode\' => \'2\',\n    \'a_entDatereception\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_entNumbl\' => \'\',\n    \'a_entDatebl\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_entNumfacture\' => \'1234\',\n    \'a_entDatefacture\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_entTypecode\' => \'0\',\n    \'a_entMotifcode\' => \'\',\n    \'a_entNumtransit\' => \'\',\n    \'a_entDevise\' => \'0\',\n    \'a_entCours\' => \'0\',\n    \'a_entValeurtotaledt\' => \'\',\n    \'a_entObservation\' => \'123\',\n    \'b_etatCode\' => \'31\',\n    \'b_etatLibelle\' => \'Entree Active\',\n    \'c_frsCode\' => \'7\',\n    \'c_frsRaisonsociale\' => \'test fournisseur\',\n    \'c_frsAdresse\' => \'\',\n    \'c_frsTel\' => \'\',\n    \'c_frsFax\' => \'\',\n    \'c_frsMf\' => \'\',\n    \'c_frsEmail\' => \'\',\n    \'c_frsLogo\' => \'\',\n  ),\n)', '192.168.1.103'),
(2469, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 09:57:05', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2470, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2021-12-13 09:57:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2471, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 09:57:54', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2472, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 09:58:48', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2473, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2021-12-13 09:59:27', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2474, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 09:59:55', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2475, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 10:00:05', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2476, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 10:00:25', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2477, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 10:00:35', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2478, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 10:01:08', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2479, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 10:01:27', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2480, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 10:01:41', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2481, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 10:01:47', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2482, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 10:01:51', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2483, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 10:01:53', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2484, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 10:02:00', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2485, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 10:02:03', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2486, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 10:02:10', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2487, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 10:02:13', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2488, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2021-12-13 10:02:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2489, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 10:02:59', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2490, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 10:03:13', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2491, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 10:03:37', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2492, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 10:04:03', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2493, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 10:04:20', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2494, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 10:04:55', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2495, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 10:05:50', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2496, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 10:05:51', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2497, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 10:05:55', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2498, 460, 'index', 'Approvisionnement MP', '2021-12-13 10:06:05', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2499, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:06:05', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2500, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:06:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2501, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:06:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2502, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:06:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '192.168.1.103'),
(2503, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 10:06:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2504, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 10:06:05', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2505, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2021-12-13 10:06:08', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2506, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:06:08', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2507, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2021-12-13 10:06:09', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2508, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:06:09', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2509, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2021-12-13 10:06:09', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2510, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:06:09', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2511, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2021-12-13 10:06:10', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2512, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 10:06:19', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2513, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 10:06:55', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2514, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 10:07:26', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2515, 472, 'asyn_ajout_entree', 'entree-asyn_ajout_entree', '2021-12-13 10:07:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'3/2017\',\n  \'entExercice\' => \'2017\',\n  \'entBcolcode\' => \'77\',\n  \'entBcolexercice\' => \'555\',\n  \'entContratcode\' => \'\',\n  \'entContratexercice\' => \'\',\n  \'entDatereception\' => \'15/12/2021\',\n  \'entNumbl\' => \'\',\n  \'entDatebl\' => \'15/12/2021\',\n  \'entNumfacture\' => \'123\',\n  \'entDatefacture\' => \'\',\n  \'entTypecode\' => \'0\',\n  \'entNumtransit\' => \'\',\n  \'entDevise\' => \'\',\n  \'entCours\' => \'\',\n  \'entObservation\' => \'00\',\n  \'entFournisseurcode\' => \'8\',\n  \'entCodes\' => \n  array (\n    0 => \n    array (\n      \'entArtcode\' => \'77a0ee12b9\',\n      \'entCodetrace\' => \'d640f167e9\',\n      \'entQte\' => \'150\',\n      \'entQtesurplus\' => \'1\',\n      \'entDateperomption\' => \'11/12/2023\',\n      \'entPu\' => \'19\',\n      \'tvaCode\' => \'0\',\n      \'entPrixtotale\' => \'2850\',\n    ),\n  ),\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2516, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 10:07:34', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2517, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2021-12-13 10:07:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2518, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:07:36', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2519, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2021-12-13 10:07:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2520, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:07:37', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2521, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2021-12-13 10:07:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2522, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:07:39', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2523, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2021-12-13 10:07:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2524, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:07:39', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2525, 460, 'index', 'Approvisionnement MP', '2021-12-13 10:07:43', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2526, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:07:44', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2527, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:07:44', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2528, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:07:44', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2529, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:07:44', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '192.168.1.103'),
(2530, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 10:07:44', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2531, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 10:07:44', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2532, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2021-12-13 10:07:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2533, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:07:45', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2534, 506, 'stk', 'Etat du stock', '2021-12-13 10:07:55', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2535, 516, 'asyn_get_stk', 'edition-asyn_get_stk', '2021-12-13 10:07:56', '', 0, 1, 'admin', 'admin', 'array (\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2536, 516, 'asyn_get_stk', 'edition-asyn_get_stk', '2021-12-13 10:08:10', '', 0, 1, 'admin', 'admin', 'array (\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2537, 516, 'asyn_get_stk', 'edition-asyn_get_stk', '2021-12-13 10:08:11', '', 0, 1, 'admin', 'admin', 'array (\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2538, 516, 'asyn_get_stk', 'edition-asyn_get_stk', '2021-12-13 10:08:11', '', 0, 1, 'admin', 'admin', 'array (\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2539, 516, 'asyn_get_stk', 'edition-asyn_get_stk', '2021-12-13 10:08:11', '', 0, 1, 'admin', 'admin', 'array (\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2540, 516, 'asyn_get_stk', 'edition-asyn_get_stk', '2021-12-13 10:08:12', '', 0, 1, 'admin', 'admin', 'array (\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2541, 456, 'index', 'Gestion des articles', '2021-12-13 10:14:30', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2542, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:14:31', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2543, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:14:31', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.103'),
(2544, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:14:31', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.103'),
(2545, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:14:31', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2546, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 10:14:32', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.103'),
(2547, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:14:32', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2548, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 10:14:41', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'77a0ee12b9\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'77a0ee12b9\',\n    \'g_artDesignation\' => \'Dattes branchées MP\',\n    \'g_artUnite\' => \'1\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'17.8\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-06-08 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'g_artDelaislivraison\' => \'1\',\n    \'g_artClass\' => \'2\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'1\',\n    \'g_artTva\' => \'1\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'7\',\n    \'i_catartDesignation\' => \'dattes branchées\',\n    \'p_art_code\' => \'77a0ee12b9\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '192.168.1.103'),
(2549, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:14:41', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2550, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2021-12-13 10:14:41', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'art\' => \'77a0ee12b9\',\n  \'clas\' => \'2\',\n)', '192.168.1.103'),
(2551, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:14:41', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2552, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:14:41', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2553, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:14:41', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2554, 433, 'index', 'Page d\'accueil', '2021-12-13 10:14:41', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2555, 583, 'index', 'Gestion de la production', '2021-12-13 10:17:57', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2556, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 10:17:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2557, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-12-13 10:17:58', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2558, 589, 'asyn_get_datauniqcode', 'prod-asyn_get_datauniqcode', '2021-12-13 10:18:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2559, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-12-13 10:18:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'4/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'57\',\n    \'a_prodCodeDeviBc\' => \'4/2017\',\n    \'a_prodCodeProd\' => \'3/2017\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'13/12/2021\',\n)', '192.168.1.103'),
(2560, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-12-13 10:18:08', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'4/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'57\',\n    \'a_prodCodeDeviBc\' => \'4/2017\',\n    \'a_prodCodeProd\' => \'3/2017\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'74\',\n    \'b_etatLibelle\' => \'Bc générer\',\n  ),\n  \'journeDate\' => \'14/12/2021\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2561, 599, 'asyn_genprod', 'prod-asyn_genprod', '2021-12-13 10:19:11', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'57\',\n  \'prodCodeProd\' => \'3/2017\',\n  \'prodExerciceProd\' => \'2017\',\n  \'journeDate\' => \'14/12/2021\',\n  \'prodDateProd\' => \'\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'prodDetailId\' => \'63\',\n      \'consProdId\' => \n      array (\n        0 => \n        array (\n          \'consprodType\' => \'MP\',\n          \'consprodArticleCode\' => \'77a0ee12b9\',\n          \'consprodCodeFrs\' => \'7\',\n          \'consprodQte\' => \'22\',\n        ),\n      ),\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'journeQte\' => \'50\',\n      \'journeDatePeromption\' => \'20/12/2023\',\n      \'qteProduite\' => \'50\',\n      \'proddetailQteDevis\' => \'100\',\n    ),\n  ),\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2562, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 10:19:11', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2563, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-12-13 10:19:14', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n  \'formapp\' => \n  array (\n    \'qtestk\' => \n    array (\n      0 => \n      array (\n        \'art\' => \'77a0ee12b9\',\n        \'qte\' => \'22\',\n      ),\n    ),\n  ),\n)', '192.168.1.103'),
(2564, 600, 'asyn_validprod', 'prod-asyn_validprod', '2021-12-13 10:19:16', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'4/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'57\',\n    \'a_prodCodeDeviBc\' => \'4/2017\',\n    \'a_prodCodeProd\' => \'3/2017\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'75\',\n    \'b_etatLibelle\' => \'Bon de prod générer\',\n  ),\n)', '192.168.1.103'),
(2565, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 10:19:16', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2566, 600, 'asyn_validprod', 'prod-asyn_validprod', '2021-12-13 10:19:20', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'4/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'57\',\n    \'a_prodCodeDeviBc\' => \'4/2017\',\n    \'a_prodCodeProd\' => \'3/2017\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'75\',\n    \'b_etatLibelle\' => \'Bon de prod générer\',\n  ),\n)', '192.168.1.103'),
(2567, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 10:19:20', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2568, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-12-13 10:19:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n  \'formapp\' => \n  array (\n    \'qtestk\' => \n    array (\n      0 => \n      array (\n        \'art\' => \'77a0ee12b9\',\n        \'qte\' => \'22\',\n      ),\n    ),\n  ),\n)', '192.168.1.103'),
(2569, 461, 'index', 'Gestion de l\'inventaire', '2021-12-13 10:19:24', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2570, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:19:24', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2571, 494, 'asyn_invttable_state', 'inventaire-asyn_invttable_state', '2021-12-13 10:19:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2572, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 10:19:25', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2573, 495, 'asyn_gen_invttable', 'inventaire-asyn_gen_invttable', '2021-12-13 10:19:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2574, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 10:19:25', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2575, 456, 'index', 'Gestion des articles', '2021-12-13 10:19:34', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2576, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:19:34', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2577, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:19:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.103'),
(2578, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:19:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.103'),
(2579, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:19:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2580, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 10:19:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.103'),
(2581, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:19:35', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2582, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 10:19:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'77a0ee12b9\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'77a0ee12b9\',\n    \'g_artDesignation\' => \'Dattes branchées MP\',\n    \'g_artUnite\' => \'1\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'17.8\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-06-08 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'g_artDelaislivraison\' => \'1\',\n    \'g_artClass\' => \'2\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'1\',\n    \'g_artTva\' => \'1\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'7\',\n    \'i_catartDesignation\' => \'dattes branchées\',\n    \'p_art_code\' => \'77a0ee12b9\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '192.168.1.103'),
(2583, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:19:39', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2584, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2021-12-13 10:19:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'art\' => \'77a0ee12b9\',\n  \'clas\' => \'2\',\n)', '192.168.1.103'),
(2585, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:19:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2586, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:19:39', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2587, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:19:39', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2588, 433, 'index', 'Page d\'accueil', '2021-12-13 10:19:39', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2589, 460, 'index', 'Approvisionnement MP', '2021-12-13 10:21:08', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2590, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:21:08', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2591, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:21:08', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2592, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:21:08', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2593, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:21:08', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '192.168.1.103'),
(2594, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 10:21:08', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2595, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 10:21:08', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2596, 506, 'stk', 'Etat du stock', '2021-12-13 10:21:13', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2597, 516, 'asyn_get_stk', 'edition-asyn_get_stk', '2021-12-13 10:21:14', '', 0, 1, 'admin', 'admin', 'array (\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2598, 460, 'index', 'Approvisionnement MP', '2021-12-13 10:22:04', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2599, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:22:05', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2600, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:22:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2601, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:22:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2602, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:22:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '192.168.1.103'),
(2603, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 10:22:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2604, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 10:22:05', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2605, 583, 'index', 'Gestion de la production', '2021-12-13 10:22:11', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2606, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 10:22:11', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2607, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-12-13 10:22:12', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2608, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-12-13 10:22:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'56\',\n    \'a_prodCodeDeviBc\' => \'3/2017\',\n    \'a_prodCodeProd\' => \'2/2017\',\n    \'a_prodCodeBl\' => \'1/2017\',\n    \'a_prodCodeFacture\' => \'1/2017\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'2017\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2021-12-13 09:27:44.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2021-12-16 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n  \'journeDate\' => \'13/12/2021\',\n)', '192.168.1.103');
INSERT INTO `oper` (`idOPER`, `idMODUL`, `actionOPER`, `descriptOPER`, `dateOPER`, `catOPER`, `idPRF`, `IDUTIL`, `UTINOM`, `UTIPNOM`, `paramOPER`, `ipOPER`) VALUES
(2609, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-12-13 10:22:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'56\',\n    \'a_prodCodeDeviBc\' => \'3/2017\',\n    \'a_prodCodeProd\' => \'2/2017\',\n    \'a_prodCodeBl\' => \'1/2017\',\n    \'a_prodCodeFacture\' => \'1/2017\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'2017\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2021-12-13 09:27:44.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2021-12-16 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n  \'journeDate\' => \'14/12/2021\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2610, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-12-13 10:22:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'3/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'56\',\n    \'a_prodCodeDeviBc\' => \'3/2017\',\n    \'a_prodCodeProd\' => \'2/2017\',\n    \'a_prodCodeBl\' => \'1/2017\',\n    \'a_prodCodeFacture\' => \'1/2017\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'2017\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2021-12-13 09:27:44.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \n    array (\n      \'date\' => \'2021-12-16 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateFacture\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'b_etatCode\' => \'77\',\n    \'b_etatLibelle\' => \'facture BL générer\',\n  ),\n  \'journeDate\' => \'15/12/2021\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2611, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-12-13 10:22:44', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'4/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'57\',\n    \'a_prodCodeDeviBc\' => \'4/2017\',\n    \'a_prodCodeProd\' => \'3/2017\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'2\',\n    \'a_prodCodeClient\' => \'10\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2021-12-13 10:19:20.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'76\',\n    \'b_etatLibelle\' => \'Bon de prod valider\',\n  ),\n  \'journeDate\' => \'15/12/2021\',\n)', '192.168.1.103'),
(2612, 460, 'index', 'Approvisionnement MP', '2021-12-13 10:23:10', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2613, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:23:10', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2614, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:23:10', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2615, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:23:10', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2616, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:23:10', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '192.168.1.103'),
(2617, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 10:23:10', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2618, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 10:23:10', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2619, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2021-12-13 10:23:12', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'2\',\n)', '192.168.1.103'),
(2620, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:23:12', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2621, 476, 'asyn_get_entree_object', 'entree-asyn_get_entree_object', '2021-12-13 10:23:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_entCode\' => \'2/2017\',\n  \'datarefval\' => \n  array (\n    \'a_entCode\' => \'2/2017\',\n    \'a_entExercice\' => \'2017\',\n    \'a_entBcolcode\' => \'13\',\n    \'a_entBcolexercice\' => \'12\',\n    \'a_entContratcode\' => \'12\',\n    \'a_entContratexercice\' => \'12\',\n    \'a_entMagrecepcode\' => \'2\',\n    \'a_entDatereception\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_entNumbl\' => \'\',\n    \'a_entDatebl\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_entNumfacture\' => \'1234\',\n    \'a_entDatefacture\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_entTypecode\' => \'0\',\n    \'a_entMotifcode\' => \'\',\n    \'a_entNumtransit\' => \'\',\n    \'a_entDevise\' => \'0\',\n    \'a_entCours\' => \'0\',\n    \'a_entValeurtotaledt\' => \'\',\n    \'a_entObservation\' => \'123\',\n    \'b_etatCode\' => \'31\',\n    \'b_etatLibelle\' => \'Entree Active\',\n    \'c_frsCode\' => \'7\',\n    \'c_frsRaisonsociale\' => \'test fournisseur\',\n    \'c_frsAdresse\' => \'\',\n    \'c_frsTel\' => \'\',\n    \'c_frsFax\' => \'\',\n    \'c_frsMf\' => \'\',\n    \'c_frsEmail\' => \'\',\n    \'c_frsLogo\' => \'\',\n  ),\n)', '192.168.1.103'),
(2622, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:23:15', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2623, 476, 'asyn_get_entree_object', 'entree-asyn_get_entree_object', '2021-12-13 10:23:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_entCode\' => \'3/2017\',\n  \'datarefval\' => \n  array (\n    \'a_entCode\' => \'3/2017\',\n    \'a_entExercice\' => \'2017\',\n    \'a_entBcolcode\' => \'77\',\n    \'a_entBcolexercice\' => \'555\',\n    \'a_entContratcode\' => \'\',\n    \'a_entContratexercice\' => \'0\',\n    \'a_entMagrecepcode\' => \'2\',\n    \'a_entDatereception\' => \n    array (\n      \'date\' => \'2021-12-15 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_entNumbl\' => \'\',\n    \'a_entDatebl\' => \n    array (\n      \'date\' => \'2021-12-15 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_entNumfacture\' => \'123\',\n    \'a_entDatefacture\' => \'\',\n    \'a_entTypecode\' => \'0\',\n    \'a_entMotifcode\' => \'\',\n    \'a_entNumtransit\' => \'\',\n    \'a_entDevise\' => \'0\',\n    \'a_entCours\' => \'0\',\n    \'a_entValeurtotaledt\' => \'\',\n    \'a_entObservation\' => \'00\',\n    \'b_etatCode\' => \'31\',\n    \'b_etatLibelle\' => \'Entree Active\',\n    \'c_frsCode\' => \'8\',\n    \'c_frsRaisonsociale\' => \'Condi-Smart\',\n    \'c_frsAdresse\' => \'technopark elgazala\',\n    \'c_frsTel\' => \'29200547\',\n    \'c_frsFax\' => \'715454545\',\n    \'c_frsMf\' => \'14023589\',\n    \'c_frsEmail\' => \'contact@gmail.com\',\n    \'c_frsLogo\' => \'\',\n  ),\n)', '192.168.1.103'),
(2624, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:23:21', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2625, 456, 'index', 'Gestion des articles', '2021-12-13 10:23:46', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2626, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:23:46', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2627, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:23:46', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.103'),
(2628, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:23:46', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.103'),
(2629, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:23:46', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2630, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 10:23:48', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.103'),
(2631, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:23:48', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2632, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 10:23:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'77a0ee12b9\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'77a0ee12b9\',\n    \'g_artDesignation\' => \'Dattes branchées MP\',\n    \'g_artUnite\' => \'1\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'17.8\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-06-08 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'g_artDelaislivraison\' => \'1\',\n    \'g_artClass\' => \'2\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'1\',\n    \'g_artTva\' => \'1\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'7\',\n    \'i_catartDesignation\' => \'dattes branchées\',\n    \'p_art_code\' => \'77a0ee12b9\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '192.168.1.103'),
(2633, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2021-12-13 10:23:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'art\' => \'77a0ee12b9\',\n  \'clas\' => \'2\',\n)', '192.168.1.103'),
(2634, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:23:52', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2635, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:23:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2636, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:23:52', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2637, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:23:52', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2638, 433, 'index', 'Page d\'accueil', '2021-12-13 10:23:52', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2639, 461, 'index', 'Gestion de l\'inventaire', '2021-12-13 10:24:36', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2640, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:24:36', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2641, 494, 'asyn_invttable_state', 'inventaire-asyn_invttable_state', '2021-12-13 10:24:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2642, 497, 'asyn_get_ivntbrd', 'inventaire-asyn_get_ivntbrd', '2021-12-13 10:24:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'brdnum\' => \'\',\n)', '192.168.1.103'),
(2643, 497, 'asyn_get_ivntbrd', 'inventaire-asyn_get_ivntbrd', '2021-12-13 10:25:14', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'brdnum\' => \'\',\n)', '192.168.1.103'),
(2644, 497, 'asyn_get_ivntbrd', 'inventaire-asyn_get_ivntbrd', '2021-12-13 10:25:32', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'brdnum\' => \'1\',\n)', '192.168.1.103'),
(2645, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:25:32', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2646, 456, 'index', 'Gestion des articles', '2021-12-13 10:26:00', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2647, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:26:00', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2648, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:26:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.103'),
(2649, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:26:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.103'),
(2650, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:26:00', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2651, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 10:26:02', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.103'),
(2652, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:26:02', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2653, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 10:26:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'7673457953\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'7673457953\',\n    \'g_artDesignation\' => \'Dattes branchée\',\n    \'g_artUnite\' => \'\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'5d5e531581ebf.jpg\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'0\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'g_artDelaislivraison\' => \'0\',\n    \'g_artClass\' => \'1\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'10\',\n    \'g_artTva\' => \'0\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'6\',\n    \'i_catartDesignation\' => \'DEGLET NOUR\',\n    \'p_art_code\' => \'7673457953\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '192.168.1.103'),
(2654, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2021-12-13 10:26:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'art\' => \'7673457953\',\n  \'clas\' => \'1\',\n)', '192.168.1.103'),
(2655, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:26:06', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2656, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:26:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2657, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:26:06', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2658, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:26:06', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2659, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 10:26:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'7686426e63\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'7686426e63\',\n    \'g_artDesignation\' => \'MP\',\n    \'g_artUnite\' => \'\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'5d2584bb22402.jpg\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'1.3333333333333\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-03-26 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'g_artDelaislivraison\' => \'1\',\n    \'g_artClass\' => \'2\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'1\',\n    \'g_artTva\' => \'1\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'6\',\n    \'i_catartDesignation\' => \'DEGLET NOUR\',\n    \'p_art_code\' => \'7686426e63\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '192.168.1.103'),
(2660, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:26:52', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2661, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2021-12-13 10:26:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'art\' => \'7686426e63\',\n  \'clas\' => \'2\',\n)', '192.168.1.103'),
(2662, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:26:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2663, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:26:52', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2664, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:26:52', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2665, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 10:27:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'76ca8a3b58\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'12\',\n    \'g_artCode\' => \'76ca8a3b58\',\n    \'g_artDesignation\' => \'test\',\n    \'g_artUnite\' => \'kg\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'0\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-06-14 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'g_artDelaislivraison\' => \'12\',\n    \'g_artClass\' => \'2\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'12\',\n    \'g_artPrix\' => \'12\',\n    \'g_artTva\' => \'0\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'6\',\n    \'i_catartDesignation\' => \'DEGLET NOUR\',\n    \'p_art_code\' => \'76ca8a3b58\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '192.168.1.103'),
(2666, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2021-12-13 10:27:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'art\' => \'76ca8a3b58\',\n  \'clas\' => \'2\',\n)', '192.168.1.103'),
(2667, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:27:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2668, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:27:01', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2669, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:27:01', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2670, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:27:01', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2671, 433, 'index', 'Page d\'accueil', '2021-12-13 10:27:01', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2672, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 10:27:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'77a0ee12b9\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'77a0ee12b9\',\n    \'g_artDesignation\' => \'Dattes branchées MP\',\n    \'g_artUnite\' => \'1\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'17.8\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-06-08 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'g_artDelaislivraison\' => \'1\',\n    \'g_artClass\' => \'2\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'1\',\n    \'g_artTva\' => \'1\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'7\',\n    \'i_catartDesignation\' => \'dattes branchées\',\n    \'p_art_code\' => \'77a0ee12b9\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '192.168.1.103'),
(2673, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2021-12-13 10:27:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'art\' => \'77a0ee12b9\',\n  \'clas\' => \'2\',\n)', '192.168.1.103'),
(2674, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:27:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2675, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:27:06', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2676, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:27:06', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2677, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:27:06', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2678, 433, 'index', 'Page d\'accueil', '2021-12-13 10:27:06', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2679, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 10:27:54', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'787fc0b574\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'787fc0b574\',\n    \'g_artDesignation\' => \'test\',\n    \'g_artUnite\' => \'kg\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'1\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-05-22 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'g_artDelaislivraison\' => \'1\',\n    \'g_artClass\' => \'2\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'10\',\n    \'g_artTva\' => \'0\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'8\',\n    \'i_catartDesignation\' => \'dattes standards\',\n    \'p_art_code\' => \'787fc0b574\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '192.168.1.103'),
(2680, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2021-12-13 10:27:54', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'art\' => \'787fc0b574\',\n  \'clas\' => \'2\',\n)', '192.168.1.103'),
(2681, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:27:54', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2682, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:27:54', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2683, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:27:55', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2684, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:27:55', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2685, 433, 'index', 'Page d\'accueil', '2021-12-13 10:27:55', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2686, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 10:28:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'797e5d47c3\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'\',\n    \'g_artCode\' => \'797e5d47c3\',\n    \'g_artDesignation\' => \'datte test\',\n    \'g_artUnite\' => \'\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'0\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'g_artDelaislivraison\' => \'0\',\n    \'g_artClass\' => \'2\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'0\',\n    \'g_artPrix\' => \'10\',\n    \'g_artTva\' => \'0\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'9\',\n    \'i_catartDesignation\' => \'dattes séches\',\n    \'p_art_code\' => \'797e5d47c3\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '192.168.1.103'),
(2687, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2021-12-13 10:28:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'art\' => \'797e5d47c3\',\n  \'clas\' => \'2\',\n)', '192.168.1.103'),
(2688, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:28:01', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2689, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:28:01', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2690, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:28:01', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2691, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:28:01', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2692, 433, 'index', 'Page d\'accueil', '2021-12-13 10:28:01', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2693, 461, 'index', 'Gestion de l\'inventaire', '2021-12-13 10:28:12', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2694, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:28:12', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2695, 494, 'asyn_invttable_state', 'inventaire-asyn_invttable_state', '2021-12-13 10:28:12', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2696, 497, 'asyn_get_ivntbrd', 'inventaire-asyn_get_ivntbrd', '2021-12-13 10:28:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'brdnum\' => \'1\',\n)', '192.168.1.103'),
(2697, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:28:24', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2698, 498, 'asyn_save_ivntbrd', 'inventaire-asyn_save_ivntbrd', '2021-12-13 10:29:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'data\' => \n  array (\n    0 => \n    array (\n      \'p_magCode\' => \'2\',\n      \'p_exercice\' => \'2017\',\n      \'p_invtDate\' => \'\',\n      \'p_invtQte\' => \'\',\n      \'p_invStkadateinvt\' => \'\',\n      \'p_invEcart\' => \'\',\n      \'p_invNumBorderau\' => \'1\',\n      \'p_invObservation\' => \'\',\n      \'g_artCode\' => \'7673457953\',\n      \'g_artDesignation\' => \'Dattes branchée\',\n      \'g_artUnite\' => \'\',\n      \'g_artDescription\' => \'\',\n      \'g_artImage\' => \'5d5e531581ebf.jpg\',\n      \'g_artDdm\' => \'\',\n      \'g_artDernierprix\' => \'0\',\n      \'g_artDatecreation\' => \n      array (\n        \'date\' => \'2019-03-26 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'Europe/Berlin\',\n      ),\n      \'g_artDelaislivraison\' => \'0\',\n      \'g_artClass\' => \'1\',\n      \'g_artCoutpossetion\' => \'\',\n      \'g_artCoutpassation\' => \'\',\n      \'g_artStockminimale\' => \'1\',\n      \'g_artPrix\' => \'10\',\n      \'g_artTva\' => \'0\',\n      \'h_etatCode\' => \'61\',\n      \'h_etatLibelle\' => \'Borderau inventaire genérer\',\n      \'p_art_code\' => \'7673457953\',\n      \'invtQte\' => \'100\',\n    ),\n    1 => \n    array (\n      \'p_magCode\' => \'2\',\n      \'p_exercice\' => \'2017\',\n      \'p_invtDate\' => \'\',\n      \'p_invtQte\' => \'\',\n      \'p_invStkadateinvt\' => \'\',\n      \'p_invEcart\' => \'\',\n      \'p_invNumBorderau\' => \'1\',\n      \'p_invObservation\' => \'\',\n      \'g_artCode\' => \'7686426e63\',\n      \'g_artDesignation\' => \'MP\',\n      \'g_artUnite\' => \'\',\n      \'g_artDescription\' => \'\',\n      \'g_artImage\' => \'5d2584bb22402.jpg\',\n      \'g_artDdm\' => \'\',\n      \'g_artDernierprix\' => \'1.3333333333333\',\n      \'g_artDatecreation\' => \n      array (\n        \'date\' => \'2019-03-26 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'Europe/Berlin\',\n      ),\n      \'g_artDelaislivraison\' => \'1\',\n      \'g_artClass\' => \'2\',\n      \'g_artCoutpossetion\' => \'\',\n      \'g_artCoutpassation\' => \'\',\n      \'g_artStockminimale\' => \'1\',\n      \'g_artPrix\' => \'1\',\n      \'g_artTva\' => \'1\',\n      \'h_etatCode\' => \'61\',\n      \'h_etatLibelle\' => \'Borderau inventaire genérer\',\n      \'p_art_code\' => \'7686426e63\',\n      \'invtQte\' => \'0\',\n    ),\n    2 => \n    array (\n      \'p_magCode\' => \'2\',\n      \'p_exercice\' => \'2017\',\n      \'p_invtDate\' => \'\',\n      \'p_invtQte\' => \'\',\n      \'p_invStkadateinvt\' => \'\',\n      \'p_invEcart\' => \'\',\n      \'p_invNumBorderau\' => \'1\',\n      \'p_invObservation\' => \'\',\n      \'g_artCode\' => \'76ca8a3b58\',\n      \'g_artDesignation\' => \'test\',\n      \'g_artUnite\' => \'kg\',\n      \'g_artDescription\' => \'\',\n      \'g_artImage\' => \'\',\n      \'g_artDdm\' => \'\',\n      \'g_artDernierprix\' => \'0\',\n      \'g_artDatecreation\' => \n      array (\n        \'date\' => \'2019-06-14 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'Europe/Berlin\',\n      ),\n      \'g_artDelaislivraison\' => \'12\',\n      \'g_artClass\' => \'2\',\n      \'g_artCoutpossetion\' => \'\',\n      \'g_artCoutpassation\' => \'\',\n      \'g_artStockminimale\' => \'12\',\n      \'g_artPrix\' => \'12\',\n      \'g_artTva\' => \'0\',\n      \'h_etatCode\' => \'61\',\n      \'h_etatLibelle\' => \'Borderau inventaire genérer\',\n      \'p_art_code\' => \'76ca8a3b58\',\n      \'invtQte\' => \'0\',\n    ),\n    3 => \n    array (\n      \'p_magCode\' => \'2\',\n      \'p_exercice\' => \'2017\',\n      \'p_invtDate\' => \'\',\n      \'p_invtQte\' => \'\',\n      \'p_invStkadateinvt\' => \'\',\n      \'p_invEcart\' => \'\',\n      \'p_invNumBorderau\' => \'1\',\n      \'p_invObservation\' => \'\',\n      \'g_artCode\' => \'77a0ee12b9\',\n      \'g_artDesignation\' => \'Dattes branchées MP\',\n      \'g_artUnite\' => \'1\',\n      \'g_artDescription\' => \'\',\n      \'g_artImage\' => \'\',\n      \'g_artDdm\' => \'\',\n      \'g_artDernierprix\' => \'17.8\',\n      \'g_artDatecreation\' => \n      array (\n        \'date\' => \'2019-06-08 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'Europe/Berlin\',\n      ),\n      \'g_artDelaislivraison\' => \'1\',\n      \'g_artClass\' => \'2\',\n      \'g_artCoutpossetion\' => \'\',\n      \'g_artCoutpassation\' => \'\',\n      \'g_artStockminimale\' => \'1\',\n      \'g_artPrix\' => \'1\',\n      \'g_artTva\' => \'1\',\n      \'h_etatCode\' => \'61\',\n      \'h_etatLibelle\' => \'Borderau inventaire genérer\',\n      \'p_art_code\' => \'77a0ee12b9\',\n      \'invtQte\' => \'61\',\n    ),\n    4 => \n    array (\n      \'p_magCode\' => \'2\',\n      \'p_exercice\' => \'2017\',\n      \'p_invtDate\' => \'\',\n      \'p_invtQte\' => \'\',\n      \'p_invStkadateinvt\' => \'\',\n      \'p_invEcart\' => \'\',\n      \'p_invNumBorderau\' => \'1\',\n      \'p_invObservation\' => \'\',\n      \'g_artCode\' => \'787fc0b574\',\n      \'g_artDesignation\' => \'test\',\n      \'g_artUnite\' => \'kg\',\n      \'g_artDescription\' => \'\',\n      \'g_artImage\' => \'\',\n      \'g_artDdm\' => \'\',\n      \'g_artDernierprix\' => \'1\',\n      \'g_artDatecreation\' => \n      array (\n        \'date\' => \'2019-05-22 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'Europe/Berlin\',\n      ),\n      \'g_artDelaislivraison\' => \'1\',\n      \'g_artClass\' => \'2\',\n      \'g_artCoutpossetion\' => \'\',\n      \'g_artCoutpassation\' => \'\',\n      \'g_artStockminimale\' => \'1\',\n      \'g_artPrix\' => \'10\',\n      \'g_artTva\' => \'0\',\n      \'h_etatCode\' => \'61\',\n      \'h_etatLibelle\' => \'Borderau inventaire genérer\',\n      \'p_art_code\' => \'787fc0b574\',\n      \'invtQte\' => \'0\',\n    ),\n    5 => \n    array (\n      \'p_magCode\' => \'2\',\n      \'p_exercice\' => \'2017\',\n      \'p_invtDate\' => \'\',\n      \'p_invtQte\' => \'\',\n      \'p_invStkadateinvt\' => \'\',\n      \'p_invEcart\' => \'\',\n      \'p_invNumBorderau\' => \'1\',\n      \'p_invObservation\' => \'\',\n      \'g_artCode\' => \'797e5d47c3\',\n      \'g_artDesignation\' => \'datte test\',\n      \'g_artUnite\' => \'\',\n      \'g_artDescription\' => \'\',\n      \'g_artImage\' => \'\',\n      \'g_artDdm\' => \'\',\n      \'g_artDernierprix\' => \'0\',\n      \'g_artDatecreation\' => \n      array (\n        \'date\' => \'2021-12-13 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'Europe/Berlin\',\n      ),\n      \'g_artDelaislivraison\' => \'0\',\n      \'g_artClass\' => \'2\',\n      \'g_artCoutpossetion\' => \'\',\n      \'g_artCoutpassation\' => \'\',\n      \'g_artStockminimale\' => \'0\',\n      \'g_artPrix\' => \'10\',\n      \'g_artTva\' => \'0\',\n      \'h_etatCode\' => \'61\',\n      \'h_etatLibelle\' => \'Borderau inventaire genérer\',\n      \'p_art_code\' => \'797e5d47c3\',\n      \'invtQte\' => \'0\',\n    ),\n  ),\n  \'date\' => \'13/12/2021\',\n)', '192.168.1.103'),
(2699, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 10:29:04', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2700, 497, 'asyn_get_ivntbrd', 'inventaire-asyn_get_ivntbrd', '2021-12-13 10:29:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'brdnum\' => \'1\',\n)', '192.168.1.103'),
(2701, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:29:04', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2702, 493, 'asyn_gen_ecart', 'inventaire-asyn_gen_ecart', '2021-12-13 10:29:09', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2703, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:29:09', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2704, 496, 'asyn_rds_stck', 'inventaire-asyn_rds_stck', '2021-12-13 10:30:08', '', 0, 1, 'admin', 'admin', 'array (\n  \'magCode\' => \'2\',\n  \'exercice\' => \'2017\',\n  \'invtDate\' => \n  array (\n    \'date\' => \'2021-12-13 00:00:00.000000\',\n    \'timezone_type\' => \'3\',\n    \'timezone\' => \'Europe/Berlin\',\n  ),\n  \'invtQte\' => \'61\',\n  \'invStkadateinvt\' => \'110\',\n  \'invEcart\' => \'49\',\n  \'invNumBorderau\' => \'1\',\n  \'invObservation\' => \'\',\n  \'art_code\' => \'77a0ee12b9\',\n)', '192.168.1.103'),
(2705, 493, 'asyn_gen_ecart', 'inventaire-asyn_gen_ecart', '2021-12-13 10:30:09', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2706, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:30:09', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2707, 497, 'asyn_get_ivntbrd', 'inventaire-asyn_get_ivntbrd', '2021-12-13 10:30:24', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'brdnum\' => \'\',\n)', '192.168.1.103'),
(2708, 497, 'asyn_get_ivntbrd', 'inventaire-asyn_get_ivntbrd', '2021-12-13 10:30:30', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'brdnum\' => \'2\',\n)', '192.168.1.103'),
(2709, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:30:30', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2710, 497, 'asyn_get_ivntbrd', 'inventaire-asyn_get_ivntbrd', '2021-12-13 10:30:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'brdnum\' => \'1\',\n)', '192.168.1.103'),
(2711, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:30:34', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2712, 551, 'index', 'Gestion des Devis/BC', '2021-12-13 10:30:36', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2713, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:30:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.103'),
(2714, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:30:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2715, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:30:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '192.168.1.103'),
(2716, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:30:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '192.168.1.103'),
(2717, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:30:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2718, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 10:30:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2719, 456, 'index', 'Gestion des articles', '2021-12-13 10:30:39', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2720, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:30:39', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2721, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:30:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.103'),
(2722, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:30:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.103'),
(2723, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:30:39', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2724, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 10:30:41', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.103'),
(2725, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:30:41', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2726, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 10:30:43', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'77a0ee12b9\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'77a0ee12b9\',\n    \'g_artDesignation\' => \'Dattes branchées MP\',\n    \'g_artUnite\' => \'1\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'17.8\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-06-08 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'g_artDelaislivraison\' => \'1\',\n    \'g_artClass\' => \'2\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'1\',\n    \'g_artTva\' => \'1\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'7\',\n    \'i_catartDesignation\' => \'dattes branchées\',\n    \'p_art_code\' => \'77a0ee12b9\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '192.168.1.103'),
(2727, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2021-12-13 10:30:43', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'2\',\n  \'exe\' => \'2017\',\n  \'art\' => \'77a0ee12b9\',\n  \'clas\' => \'2\',\n)', '192.168.1.103'),
(2728, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:30:44', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2729, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 10:30:44', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2730, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:30:44', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2731, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:30:44', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2732, 433, 'index', 'Page d\'accueil', '2021-12-13 10:30:44', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2733, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 10:30:58', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.103'),
(2734, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 10:30:58', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2735, 433, 'index', 'Page d\'accueil', '2021-12-13 14:31:41', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2736, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2021-12-13 14:31:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.103'),
(2737, 601, 'identification', 'Identification', '2021-12-13 14:31:47', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2738, 602, 'asyn_get_ident', 'edition-asyn_get_ident', '2021-12-13 14:31:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'identifiant\' => \'MP-77a0ee12b9-7-22\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2739, 602, 'asyn_get_ident', 'edition-asyn_get_ident', '2021-12-13 14:32:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'identifiant\' => \'MP-77a0ee12b9-8-22\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2740, 602, 'asyn_get_ident', 'edition-asyn_get_ident', '2021-12-13 14:32:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'identifiant\' => \'MP-77a0ee12b9-8-22\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2741, 602, 'asyn_get_ident', 'edition-asyn_get_ident', '2021-12-13 14:32:32', '', 0, 1, 'admin', 'admin', 'array (\n  \'identifiant\' => \'MP-77a0ee12b9-8-22\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2742, 602, 'asyn_get_ident', 'edition-asyn_get_ident', '2021-12-13 14:32:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'identifiant\' => \'MP-77a0ee12b9-7-22\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2743, 601, 'identification', 'Identification', '2021-12-13 14:38:13', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2744, 602, 'asyn_get_ident', 'edition-asyn_get_ident', '2021-12-13 14:38:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'identifiant\' => \'MP-77a0ee12b9-7-22\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103');
INSERT INTO `oper` (`idOPER`, `idMODUL`, `actionOPER`, `descriptOPER`, `dateOPER`, `catOPER`, `idPRF`, `IDUTIL`, `UTINOM`, `UTIPNOM`, `paramOPER`, `ipOPER`) VALUES
(2745, 602, 'asyn_get_ident', 'edition-asyn_get_ident', '2021-12-13 14:38:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'identifiant\' => \'MF-77a0ee12b9-7-22\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2746, 602, 'asyn_get_ident', 'edition-asyn_get_ident', '2021-12-13 14:39:08', '', 0, 1, 'admin', 'admin', 'array (\n  \'identifiant\' => \'MF-77a0ee12b9-8-22\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2747, 602, 'asyn_get_ident', 'edition-asyn_get_ident', '2021-12-13 14:39:09', '', 0, 1, 'admin', 'admin', 'array (\n  \'identifiant\' => \'MF-77a0ee12b9-8-22\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2748, 602, 'asyn_get_ident', 'edition-asyn_get_ident', '2021-12-13 14:39:10', '', 0, 1, 'admin', 'admin', 'array (\n  \'identifiant\' => \'MF-77a0ee12b9-8-22\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2749, 602, 'asyn_get_ident', 'edition-asyn_get_ident', '2021-12-13 14:39:10', '', 0, 1, 'admin', 'admin', 'array (\n  \'identifiant\' => \'MF-77a0ee12b9-8-22\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2750, 602, 'asyn_get_ident', 'edition-asyn_get_ident', '2021-12-13 14:39:11', '', 0, 1, 'admin', 'admin', 'array (\n  \'identifiant\' => \'MF-77a0ee12b9-8-22\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2751, 602, 'asyn_get_ident', 'edition-asyn_get_ident', '2021-12-13 14:39:15', '', 0, 1, 'admin', 'admin', 'array (\n  \'identifiant\' => \'MF-77a0ee12b9-7-22\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2752, 433, 'index', 'Page d\'accueil', '2021-12-13 14:39:23', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2753, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2021-12-13 14:39:23', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.103'),
(2754, 506, 'stk', 'Etat du stock', '2021-12-13 14:41:40', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2755, 516, 'asyn_get_stk', 'edition-asyn_get_stk', '2021-12-13 14:41:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2756, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2021-12-13 15:04:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.103'),
(2757, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2021-12-13 15:04:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.103'),
(2758, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2021-12-13 15:07:40', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.103'),
(2759, 601, 'identification', 'Identification', '2021-12-13 15:08:03', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2760, 602, 'asyn_get_ident', 'edition-asyn_get_ident', '2021-12-13 15:08:07', '', 0, 1, 'admin', 'admin', 'array (\n  \'identifiant\' => \'MP-77a0ee12b9-7-22\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2761, 601, 'identification', 'Identification', '2021-12-13 15:08:26', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2762, 433, 'index', 'Page d\'accueil', '2021-12-13 15:08:32', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2763, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2021-12-13 15:08:32', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.103'),
(2764, 433, 'index', 'Page d\'accueil', '2021-12-13 15:09:32', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2765, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2021-12-13 15:09:33', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.103'),
(2766, 433, 'index', 'Page d\'accueil', '2021-12-13 15:25:20', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2767, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2021-12-13 15:25:20', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.103'),
(2768, 456, 'index', 'Gestion des articles', '2021-12-13 15:26:05', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2769, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 15:26:05', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2770, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:26:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.103'),
(2771, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:26:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.103'),
(2772, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:26:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2773, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 15:26:08', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.103'),
(2774, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 15:26:08', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2775, 470, 'asyn_get_artuniqcode', 'article-asyn_get_artuniqcode', '2021-12-13 15:27:21', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2776, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:27:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2777, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 15:29:23', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2778, 467, 'asyn_ajout_article', 'article-asyn_ajout_article', '2021-12-13 15:29:46', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2779, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 15:29:46', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2780, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 15:29:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.103'),
(2781, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 15:29:51', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2782, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 15:30:03', '', 0, 1, 'admin', 'admin', 'array (\n  \'g_artCode\' => \'77a0ee12b9\',\n  \'datarefval\' => \n  array (\n    \'p_frsArtref\' => \'1\',\n    \'g_artCode\' => \'77a0ee12b9\',\n    \'g_artDesignation\' => \'Dattes branchées MP\',\n    \'g_artUnite\' => \'1\',\n    \'g_artDescription\' => \'\',\n    \'g_artImage\' => \'\',\n    \'g_artDdm\' => \'\',\n    \'g_artDernierprix\' => \'17.8\',\n    \'g_artDatecreation\' => \n    array (\n      \'date\' => \'2019-06-08 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'g_artDelaislivraison\' => \'1\',\n    \'g_artClass\' => \'2\',\n    \'g_artCoutpossetion\' => \'\',\n    \'g_artCoutpassation\' => \'\',\n    \'g_artStockminimale\' => \'1\',\n    \'g_artPrix\' => \'1\',\n    \'g_artTva\' => \'1\',\n    \'h_etatCode\' => \'11\',\n    \'h_etatLibelle\' => \'Article Actif\',\n    \'i_catartCode\' => \'7\',\n    \'i_catartDesignation\' => \'dattes branchées\',\n    \'p_art_code\' => \'77a0ee12b9\',\n    \'p_frs_code\' => \'7\',\n  ),\n)', '192.168.1.103'),
(2783, 503, 'asyn_stock_article', 'article-asyn_stock_article', '2021-12-13 15:30:03', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'art\' => \'77a0ee12b9\',\n  \'clas\' => \'2\',\n)', '192.168.1.103'),
(2784, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:30:03', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2785, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 15:30:03', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2786, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 15:30:03', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2787, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 15:30:03', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2788, 433, 'index', 'Page d\'accueil', '2021-12-13 15:30:03', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2789, 518, 'index', 'Gestion des clients/fournisseur', '2021-12-13 15:32:16', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2790, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 15:32:17', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2791, 519, 'asyn_get_fournisseur', 'fournisseur-asyn_get_fournisseur', '2021-12-13 15:32:18', '', 0, 1, 'admin', 'admin', 'array (\n  \'frsCoder\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.103'),
(2792, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 15:32:18', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2793, 520, 'asyn_ajout_fournisseur', 'fournisseur-asyn_ajout_fournisseur', '2021-12-13 15:32:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'frsCode\' => \'\',\n  \'frsRaisonsociale\' => \'om-tech1\',\n  \'frsAdresse\' => \'TUNIS\',\n  \'frsTel\' => \'45644502\',\n  \'frsFax\' => \'\',\n  \'frsEmail\' => \'\',\n  \'frsMf\' => \'13587492\',\n  \'frsTypecode\' => \'2\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2794, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 15:32:45', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2795, 519, 'asyn_get_fournisseur', 'fournisseur-asyn_get_fournisseur', '2021-12-13 15:32:54', '', 0, 1, 'admin', 'admin', 'array (\n  \'frsCoder\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.103'),
(2796, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 15:32:54', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2797, 551, 'index', 'Gestion des Devis/BC', '2021-12-13 15:33:05', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2798, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:33:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.103'),
(2799, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:33:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2800, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:33:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '192.168.1.103'),
(2801, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:33:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '192.168.1.103'),
(2802, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:33:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2803, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 15:33:05', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2804, 552, 'asyn_get_data', 'devis-asyn_get_data', '2021-12-13 15:33:07', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2805, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 15:33:07', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2806, 558, 'asyn_get_datauniqcode', 'devis-asyn_get_datauniqcode', '2021-12-13 15:33:20', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2807, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 15:33:35', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2808, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 15:33:52', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2809, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 15:33:58', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2810, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 15:36:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'7673457953\',\n)', '192.168.1.103'),
(2811, 554, 'asyn_ajout_data', 'devis-asyn_ajout_data', '2021-12-13 15:36:54', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'\',\n  \'prodCodeDeviBc\' => \'5/2017\',\n  \'prodExerciceDevis\' => \'2017\',\n  \'prodDateDevis\' => \'13/12/2021\',\n  \'prodDateBc\' => \'\',\n  \'prodExerciceBc\' => \'\',\n  \'prodCodeClient\' => \'11\',\n  \'prodCommerciale\' => \'2\',\n  \'prodDevise\' => \'1\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'proddetailQteDevis\' => \'100\',\n      \'proddetailPrixUniaireDeviseDevis\' => \'3\',\n      \'proddetailTvaDevis\' => \'0\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2812, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 15:36:54', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2813, 552, 'asyn_get_data', 'devis-asyn_get_data', '2021-12-13 15:36:57', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2814, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 15:36:57', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2815, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 15:37:04', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2816, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2021-12-13 15:37:04', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'5/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'58\',\n    \'a_prodCodeDeviBc\' => \'5/2017\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'11\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \'\',\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'71\',\n    \'b_etatLibelle\' => \'Devis Cr\',\n  ),\n)', '192.168.1.103'),
(2817, 583, 'index', 'Gestion de la production', '2021-12-13 15:38:05', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2818, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 15:38:06', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2819, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-12-13 15:38:10', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2820, 551, 'index', 'Gestion des Devis/BC', '2021-12-13 15:38:25', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2821, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:38:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.103'),
(2822, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:38:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2823, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:38:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '192.168.1.103'),
(2824, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:38:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '192.168.1.103'),
(2825, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:38:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2826, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 15:38:25', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2827, 552, 'asyn_get_data', 'devis-asyn_get_data', '2021-12-13 15:38:26', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2828, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 15:38:26', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2829, 553, 'asyn_get_data_object', 'devis-asyn_get_data_object', '2021-12-13 15:38:29', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'5/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'58\',\n    \'a_prodCodeDeviBc\' => \'5/2017\',\n    \'a_prodCodeProd\' => \'\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'11\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-12-13 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \'\',\n    \'a_prodDateProd\' => \'\',\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'71\',\n    \'b_etatLibelle\' => \'Devis Cr\',\n  ),\n)', '192.168.1.103'),
(2830, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 15:38:29', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2831, 582, 'asyn_genbc', 'devis-asyn_genbc', '2021-12-13 15:38:34', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodId\' => \'58\',\n  \'prodCodeDeviBc\' => \'5/2017\',\n  \'prodExerciceDevis\' => \'2017\',\n  \'prodDateDevis\' => \'13/12/2021\',\n  \'prodDateBc\' => \'13/12/2021\',\n  \'prodExerciceBc\' => \'2017\',\n  \'prodCodeClient\' => \'11\',\n  \'prodCommerciale\' => \'\',\n  \'prodDevise\' => \'\',\n  \'prodCodeDeviBcs\' => \n  array (\n    0 => \n    array (\n      \'proddetailArticleCode\' => \'7673457953\',\n      \'proddetailQteDevis\' => \'100\',\n      \'proddetailPrixUniaireDeviseDevis\' => \'3\',\n      \'proddetailTva\' => \'0%\',\n      \'proddetailPtttc\' => \'300.00\',\n    ),\n  ),\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2832, 439, 'asyn_get_msg', 'RecupÃ©rer message', '2021-12-13 15:38:34', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2833, 583, 'index', 'Gestion de la production', '2021-12-13 15:38:38', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2834, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 15:38:38', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2835, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-12-13 15:38:40', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2836, 460, 'index', 'Approvisionnement MP', '2021-12-13 15:38:50', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2837, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 15:38:50', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2838, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:38:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2839, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:38:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2840, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:38:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '192.168.1.103'),
(2841, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 15:38:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2842, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 15:38:50', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2843, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2021-12-13 15:38:51', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2844, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 15:38:51', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2845, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2021-12-13 15:39:03', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2846, 506, 'stk', 'Etat du stock', '2021-12-13 15:40:31', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2847, 516, 'asyn_get_stk', 'edition-asyn_get_stk', '2021-12-13 15:41:08', '', 0, 1, 'admin', 'admin', 'array (\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2848, 583, 'index', 'Gestion de la production', '2021-12-13 15:48:33', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2849, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 15:48:33', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2850, 551, 'index', 'Gestion des Devis/BC', '2021-12-13 15:48:39', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2851, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:48:40', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_devise\',\n  \'id\' => \'devise_code\',\n  \'lib\' => \'devise_libelle\',\n)', '192.168.1.103'),
(2852, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 15:48:40', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2853, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:48:40', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2854, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:48:40', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'2\',\n  ),\n)', '192.168.1.103'),
(2855, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:48:40', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_pourcentage\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2856, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:48:40', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'util\',\n  \'id\' => \'IDUTIL\',\n  \'lib\' => \'UTINOM\',\n  \'aff\' => \'IDUTIL;UTINOM\',\n)', '192.168.1.103'),
(2857, 552, 'asyn_get_data', 'devis-asyn_get_data', '2021-12-13 15:48:41', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeDeviBc\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2858, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 15:48:41', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2859, 583, 'index', 'Gestion de la production', '2021-12-13 15:48:47', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2860, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 15:48:47', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2861, 584, 'asyn_get_data', 'prod-asyn_get_data', '2021-12-13 15:48:49', '', 0, 1, 'admin', 'admin', 'array (\n  \'prodCodeProd\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2862, 585, 'asyn_get_data_object', 'prod-asyn_get_data_object', '2021-12-13 15:48:50', '', 0, 1, 'admin', 'admin', 'array (\n  \'a_prodCodeDeviBc\' => \'1/2017\',\n  \'datarefval\' => \n  array (\n    \'a_prodId\' => \'54\',\n    \'a_prodCodeDeviBc\' => \'1/2017\',\n    \'a_prodCodeProd\' => \'1/2017\',\n    \'a_prodCodeBl\' => \'\',\n    \'a_prodCodeFacture\' => \'\',\n    \'a_prodCodeMag\' => \'1\',\n    \'a_prodCodeClient\' => \'6\',\n    \'a_prodExerciceDevis\' => \'2017\',\n    \'a_prodExerciceBc\' => \'2017\',\n    \'a_prodExerciceBlfacture\' => \'\',\n    \'a_prodExerciceProd\' => \'2017\',\n    \'a_prodPrixTotale\' => \'\',\n    \'a_prodPrixTotaleTtc\' => \'\',\n    \'a_prodDateDevis\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBc\' => \n    array (\n      \'date\' => \'2021-01-28 00:00:00.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateProd\' => \n    array (\n      \'date\' => \'2021-01-28 12:02:14.000000\',\n      \'timezone_type\' => \'3\',\n      \'timezone\' => \'Europe/Berlin\',\n    ),\n    \'a_prodDateBl\' => \'\',\n    \'a_prodDateFacture\' => \'\',\n    \'b_etatCode\' => \'76\',\n    \'b_etatLibelle\' => \'Bon de prod valider\',\n  ),\n  \'journeDate\' => \'13/12/2021\',\n)', '192.168.1.103'),
(2863, 456, 'index', 'Gestion des articles', '2021-12-13 15:51:07', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2864, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 15:51:07', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2865, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:51:07', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.103'),
(2866, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:51:07', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_categorie_article\',\n  \'id\' => \'catart_code\',\n  \'lib\' => \'catart_designation\',\n)', '192.168.1.103'),
(2867, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:51:07', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2868, 466, 'asyn_get_article', 'article-asyn_get_article', '2021-12-13 15:51:11', '', 0, 1, 'admin', 'admin', 'array (\n  \'artCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n)', '192.168.1.103'),
(2869, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 15:51:11', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2870, 470, 'asyn_get_artuniqcode', 'article-asyn_get_artuniqcode', '2021-12-13 15:51:20', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2871, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:51:20', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2872, 460, 'index', 'Approvisionnement MP', '2021-12-13 15:57:36', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2873, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 15:57:37', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2874, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:57:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2875, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:57:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2876, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:57:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '192.168.1.103'),
(2877, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 15:57:37', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2878, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 15:57:37', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2879, 471, 'asyn_get_entree', 'entree-asyn_get_entree', '2021-12-13 15:57:38', '', 0, 1, 'admin', 'admin', 'array (\n  \'entCode\' => \'\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2880, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 15:57:38', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2881, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2021-12-13 15:57:41', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2882, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 15:58:02', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2883, 460, 'index', 'Approvisionnement MP', '2021-12-13 15:58:18', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2884, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2021-12-13 15:58:19', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2885, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:58:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.103'),
(2886, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:58:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.103'),
(2887, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2021-12-13 15:58:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '192.168.1.103'),
(2888, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2021-12-13 15:58:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2889, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 15:58:19', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2890, 478, 'asyn_get_entuniqcode', 'entree-asyn_get_entuniqcode', '2021-12-13 15:58:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'exe\' => \'2017\',\n)', '192.168.1.103'),
(2891, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 15:58:29', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2892, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2021-12-13 15:59:19', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2893, 464, 'asyn_getautoselectsearch', 'main-asyn_getautoselectsearch', '2021-12-13 15:59:26', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2894, 601, 'identification', 'Identification', '2021-12-13 16:00:11', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2895, 602, 'asyn_get_ident', 'edition-asyn_get_ident', '2021-12-13 16:00:21', '', 0, 1, 'admin', 'admin', 'array (\n  \'identifiant\' => \'MP-77a0ee12b9-7-22\',\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.103'),
(2896, 433, 'index', 'Page d\'accueil', '2021-12-14 08:31:36', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2897, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2021-12-14 08:31:36', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.103'),
(2898, 433, 'index', 'Page d\'accueil', '2021-12-14 08:31:45', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2899, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2021-12-14 08:31:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.103'),
(2900, 433, 'index', 'Page d\'accueil', '2021-12-14 08:32:12', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2901, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2021-12-14 08:32:13', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.103'),
(2902, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2021-12-14 08:32:17', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.103'),
(2903, 536, 'asyn_get_alert_stk', 'parametrage-asyn_get_alert_stk', '2021-12-14 08:32:20', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'mode\' => \'R\',\n)', '192.168.1.103'),
(2904, 433, 'index', 'Page d\'accueil', '2021-12-14 08:32:45', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2905, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2021-12-14 08:32:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'det\' => \n  array (\n    0 => \n    array (\n      \'a_magCode\' => \'1\',\n      \'a_exercice\' => \'2017\',\n      \'a_stkInitial\' => \'0\',\n      \'a_stkEntre\' => \'0\',\n      \'a_stkSortie\' => \'0\',\n      \'a_stkFinale\' => \'0\',\n      \'a_stkAlert\' => \'\',\n      \'a_stkSecurite\' => \'\',\n      \'b_artCode\' => \'7686426e63\',\n      \'b_artDesignation\' => \'MP\',\n      \'b_artUnite\' => \'\',\n      \'b_artDescription\' => \'\',\n      \'b_artImage\' => \'5d2584bb22402.jpg\',\n      \'b_artDdm\' => \'\',\n      \'b_artDernierprix\' => \'1.3333333333333\',\n      \'b_artDatecreation\' => \n      array (\n        \'date\' => \'2019-03-26 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'Europe/Berlin\',\n      ),\n      \'b_artDelaislivraison\' => \'1\',\n      \'b_artClass\' => \'2\',\n      \'b_artCoutpossetion\' => \'\',\n      \'b_artCoutpassation\' => \'\',\n      \'b_artStockminimale\' => \'1\',\n      \'b_artPrix\' => \'1\',\n      \'b_artTva\' => \'1\',\n      \'a_art_code\' => \'7686426e63\',\n      \'demqte\' => \'100\',\n    ),\n    1 => \n    array (\n      \'a_magCode\' => \'1\',\n      \'a_exercice\' => \'2017\',\n      \'a_stkInitial\' => \'0\',\n      \'a_stkEntre\' => \'0\',\n      \'a_stkSortie\' => \'0\',\n      \'a_stkFinale\' => \'0\',\n      \'a_stkAlert\' => \'\',\n      \'a_stkSecurite\' => \'\',\n      \'b_artCode\' => \'76ca8a3b58\',\n      \'b_artDesignation\' => \'test\',\n      \'b_artUnite\' => \'kg\',\n      \'b_artDescription\' => \'\',\n      \'b_artImage\' => \'\',\n      \'b_artDdm\' => \'\',\n      \'b_artDernierprix\' => \'0\',\n      \'b_artDatecreation\' => \n      array (\n        \'date\' => \'2019-06-14 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'Europe/Berlin\',\n      ),\n      \'b_artDelaislivraison\' => \'12\',\n      \'b_artClass\' => \'2\',\n      \'b_artCoutpossetion\' => \'\',\n      \'b_artCoutpassation\' => \'\',\n      \'b_artStockminimale\' => \'12\',\n      \'b_artPrix\' => \'12\',\n      \'b_artTva\' => \'0\',\n      \'a_art_code\' => \'76ca8a3b58\',\n      \'demqte\' => \'100\',\n    ),\n  ),\n)', '192.168.1.103'),
(2906, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2021-12-14 08:32:45', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'det\' => \n  array (\n    0 => \n    array (\n      \'a_magCode\' => \'1\',\n      \'a_exercice\' => \'2017\',\n      \'a_stkInitial\' => \'0\',\n      \'a_stkEntre\' => \'0\',\n      \'a_stkSortie\' => \'0\',\n      \'a_stkFinale\' => \'0\',\n      \'a_stkAlert\' => \'\',\n      \'a_stkSecurite\' => \'\',\n      \'b_artCode\' => \'7686426e63\',\n      \'b_artDesignation\' => \'MP\',\n      \'b_artUnite\' => \'\',\n      \'b_artDescription\' => \'\',\n      \'b_artImage\' => \'5d2584bb22402.jpg\',\n      \'b_artDdm\' => \'\',\n      \'b_artDernierprix\' => \'1.3333333333333\',\n      \'b_artDatecreation\' => \n      array (\n        \'date\' => \'2019-03-26 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'Europe/Berlin\',\n      ),\n      \'b_artDelaislivraison\' => \'1\',\n      \'b_artClass\' => \'2\',\n      \'b_artCoutpossetion\' => \'\',\n      \'b_artCoutpassation\' => \'\',\n      \'b_artStockminimale\' => \'1\',\n      \'b_artPrix\' => \'1\',\n      \'b_artTva\' => \'1\',\n      \'a_art_code\' => \'7686426e63\',\n      \'demqte\' => \'100\',\n    ),\n    1 => \n    array (\n      \'a_magCode\' => \'1\',\n      \'a_exercice\' => \'2017\',\n      \'a_stkInitial\' => \'0\',\n      \'a_stkEntre\' => \'0\',\n      \'a_stkSortie\' => \'0\',\n      \'a_stkFinale\' => \'0\',\n      \'a_stkAlert\' => \'\',\n      \'a_stkSecurite\' => \'\',\n      \'b_artCode\' => \'76ca8a3b58\',\n      \'b_artDesignation\' => \'test\',\n      \'b_artUnite\' => \'kg\',\n      \'b_artDescription\' => \'\',\n      \'b_artImage\' => \'\',\n      \'b_artDdm\' => \'\',\n      \'b_artDernierprix\' => \'0\',\n      \'b_artDatecreation\' => \n      array (\n        \'date\' => \'2019-06-14 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'Europe/Berlin\',\n      ),\n      \'b_artDelaislivraison\' => \'12\',\n      \'b_artClass\' => \'2\',\n      \'b_artCoutpossetion\' => \'\',\n      \'b_artCoutpassation\' => \'\',\n      \'b_artStockminimale\' => \'12\',\n      \'b_artPrix\' => \'12\',\n      \'b_artTva\' => \'0\',\n      \'a_art_code\' => \'76ca8a3b58\',\n      \'demqte\' => \'100\',\n    ),\n  ),\n)', '192.168.1.103'),
(2907, 440, 'asyn_get_exception', 'RecupÃ©rer exception', '2021-12-14 08:32:45', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2908, 433, 'index', 'Page d\'accueil', '2021-12-14 08:32:55', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2909, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2021-12-14 08:32:55', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'det\' => \n  array (\n    0 => \n    array (\n      \'a_magCode\' => \'1\',\n      \'a_exercice\' => \'2017\',\n      \'a_stkInitial\' => \'0\',\n      \'a_stkEntre\' => \'0\',\n      \'a_stkSortie\' => \'0\',\n      \'a_stkFinale\' => \'0\',\n      \'a_stkAlert\' => \'\',\n      \'a_stkSecurite\' => \'\',\n      \'b_artCode\' => \'7686426e63\',\n      \'b_artDesignation\' => \'MP\',\n      \'b_artUnite\' => \'\',\n      \'b_artDescription\' => \'\',\n      \'b_artImage\' => \'5d2584bb22402.jpg\',\n      \'b_artDdm\' => \'\',\n      \'b_artDernierprix\' => \'1.3333333333333\',\n      \'b_artDatecreation\' => \n      array (\n        \'date\' => \'2019-03-26 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'Europe/Berlin\',\n      ),\n      \'b_artDelaislivraison\' => \'1\',\n      \'b_artClass\' => \'2\',\n      \'b_artCoutpossetion\' => \'\',\n      \'b_artCoutpassation\' => \'\',\n      \'b_artStockminimale\' => \'1\',\n      \'b_artPrix\' => \'1\',\n      \'b_artTva\' => \'1\',\n      \'a_art_code\' => \'7686426e63\',\n      \'demqte\' => \'100\',\n    ),\n    1 => \n    array (\n      \'a_magCode\' => \'1\',\n      \'a_exercice\' => \'2017\',\n      \'a_stkInitial\' => \'0\',\n      \'a_stkEntre\' => \'0\',\n      \'a_stkSortie\' => \'0\',\n      \'a_stkFinale\' => \'0\',\n      \'a_stkAlert\' => \'\',\n      \'a_stkSecurite\' => \'\',\n      \'b_artCode\' => \'76ca8a3b58\',\n      \'b_artDesignation\' => \'test\',\n      \'b_artUnite\' => \'kg\',\n      \'b_artDescription\' => \'\',\n      \'b_artImage\' => \'\',\n      \'b_artDdm\' => \'\',\n      \'b_artDernierprix\' => \'0\',\n      \'b_artDatecreation\' => \n      array (\n        \'date\' => \'2019-06-14 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'Europe/Berlin\',\n      ),\n      \'b_artDelaislivraison\' => \'12\',\n      \'b_artClass\' => \'2\',\n      \'b_artCoutpossetion\' => \'\',\n      \'b_artCoutpassation\' => \'\',\n      \'b_artStockminimale\' => \'12\',\n      \'b_artPrix\' => \'12\',\n      \'b_artTva\' => \'0\',\n      \'a_art_code\' => \'76ca8a3b58\',\n      \'demqte\' => \'100\',\n    ),\n  ),\n)', '192.168.1.103'),
(2910, 538, 'asyn_isadmin', 'main-asyn_isadmin', '2021-12-14 08:32:55', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'det\' => \n  array (\n    0 => \n    array (\n      \'a_magCode\' => \'1\',\n      \'a_exercice\' => \'2017\',\n      \'a_stkInitial\' => \'0\',\n      \'a_stkEntre\' => \'0\',\n      \'a_stkSortie\' => \'0\',\n      \'a_stkFinale\' => \'0\',\n      \'a_stkAlert\' => \'\',\n      \'a_stkSecurite\' => \'\',\n      \'b_artCode\' => \'7686426e63\',\n      \'b_artDesignation\' => \'MP\',\n      \'b_artUnite\' => \'\',\n      \'b_artDescription\' => \'\',\n      \'b_artImage\' => \'5d2584bb22402.jpg\',\n      \'b_artDdm\' => \'\',\n      \'b_artDernierprix\' => \'1.3333333333333\',\n      \'b_artDatecreation\' => \n      array (\n        \'date\' => \'2019-03-26 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'Europe/Berlin\',\n      ),\n      \'b_artDelaislivraison\' => \'1\',\n      \'b_artClass\' => \'2\',\n      \'b_artCoutpossetion\' => \'\',\n      \'b_artCoutpassation\' => \'\',\n      \'b_artStockminimale\' => \'1\',\n      \'b_artPrix\' => \'1\',\n      \'b_artTva\' => \'1\',\n      \'a_art_code\' => \'7686426e63\',\n      \'demqte\' => \'100\',\n    ),\n    1 => \n    array (\n      \'a_magCode\' => \'1\',\n      \'a_exercice\' => \'2017\',\n      \'a_stkInitial\' => \'0\',\n      \'a_stkEntre\' => \'0\',\n      \'a_stkSortie\' => \'0\',\n      \'a_stkFinale\' => \'0\',\n      \'a_stkAlert\' => \'\',\n      \'a_stkSecurite\' => \'\',\n      \'b_artCode\' => \'76ca8a3b58\',\n      \'b_artDesignation\' => \'test\',\n      \'b_artUnite\' => \'kg\',\n      \'b_artDescription\' => \'\',\n      \'b_artImage\' => \'\',\n      \'b_artDdm\' => \'\',\n      \'b_artDernierprix\' => \'0\',\n      \'b_artDatecreation\' => \n      array (\n        \'date\' => \'2019-06-14 00:00:00.000000\',\n        \'timezone_type\' => \'3\',\n        \'timezone\' => \'Europe/Berlin\',\n      ),\n      \'b_artDelaislivraison\' => \'12\',\n      \'b_artClass\' => \'2\',\n      \'b_artCoutpossetion\' => \'\',\n      \'b_artCoutpassation\' => \'\',\n      \'b_artStockminimale\' => \'12\',\n      \'b_artPrix\' => \'12\',\n      \'b_artTva\' => \'0\',\n      \'a_art_code\' => \'76ca8a3b58\',\n      \'demqte\' => \'100\',\n    ),\n  ),\n)', '192.168.1.103'),
(2911, 440, 'asyn_get_exception', 'RecupÃ©rer exception', '2021-12-14 08:32:55', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.103'),
(2912, 433, 'index', 'Page d\'accueil', '2022-03-15 09:24:18', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.4'),
(2913, 535, 'asyn_get_nbalert_stk', 'parametrage-asyn_get_nbalert_stk', '2022-03-15 09:24:19', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n  \'periode\' => \'90\',\n)', '192.168.1.4'),
(2914, 601, 'identification', 'Identification', '2022-03-15 09:24:32', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.4'),
(2915, 460, 'index', 'Approvisionnement MP', '2022-03-15 09:24:35', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.4'),
(2916, 444, 'asyn_get_all_right', 'Lire tout les droits de l\'utilisateur', '2022-03-15 09:24:35', 'P', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.4'),
(2917, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2022-03-15 09:24:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_tva\',\n  \'id\' => \'tva_code\',\n  \'lib\' => \'tva_designation\',\n)', '192.168.1.4'),
(2918, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2022-03-15 09:24:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n  \'dep\' => \n  array (\n    \'item\' => \'frs_typeCode\',\n    \'val\' => \'1\',\n  ),\n)', '192.168.1.4'),
(2919, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2022-03-15 09:24:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_article\',\n  \'id\' => \'art_code\',\n  \'lib\' => \'art_designation\',\n  \'aff\' => \'art_code;art_designation\',\n  \'dep\' => \n  array (\n    \'item\' => \'art_class\',\n    \'val\' => \'2|3\',\n  ),\n)', '192.168.1.4'),
(2920, 533, 'asyn_state_stktable', 'parametrage-asyn_state_stktable', '2022-03-15 09:24:35', '', 0, 1, 'admin', 'admin', 'array (\n  \'mag\' => \'1\',\n  \'exe\' => \'2017\',\n)', '192.168.1.4'),
(2921, 479, 'asyn_get_entuniqcodetrace', 'entree-asyn_get_entuniqcodetrace', '2022-03-15 09:24:35', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.4');
INSERT INTO `oper` (`idOPER`, `idMODUL`, `actionOPER`, `descriptOPER`, `dateOPER`, `catOPER`, `idPRF`, `IDUTIL`, `UTINOM`, `UTIPNOM`, `paramOPER`, `ipOPER`) VALUES
(2922, 506, 'stk', 'Etat du stock', '2022-03-15 09:24:39', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.4'),
(2923, 516, 'asyn_get_stk', 'edition-asyn_get_stk', '2022-03-15 09:24:42', '', 0, 1, 'admin', 'admin', 'array (\n  \'undefined\' => \'\',\n  0 => \'\',\n  \'exe\' => \'2017\',\n  \'mag\' => \'1\',\n)', '192.168.1.4'),
(2924, 508, 'stknmvt', 'Stock non mouvement', '2022-03-15 09:24:49', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.4'),
(2925, 509, 'cons', 'Etat de consommations', '2022-03-15 09:24:52', '', 0, 1, 'admin', 'admin', '\'\'', '192.168.1.4'),
(2926, 462, 'asyn_getautoselect', 'main-asyn_getautoselect', '2022-03-15 09:24:52', '', 0, 1, 'admin', 'admin', 'array (\n  \'model\' => \'stk_fournisseur\',\n  \'id\' => \'frs_code\',\n  \'lib\' => \'frs_raisonSociale\',\n  \'aff\' => \'frs_code;frs_raisonSociale\',\n)', '192.168.1.4');

-- --------------------------------------------------------

--
-- Structure de la table `prf`
--

CREATE TABLE `prf` (
  `idPRF` int(11) NOT NULL,
  `PRFnom` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRFtype` int(11) DEFAULT NULL,
  `PRFdcr` date DEFAULT NULL,
  `idENT` int(11) NOT NULL,
  `PRFetat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `prf`
--

INSERT INTO `prf` (`idPRF`, `PRFnom`, `PRFtype`, `PRFdcr`, `idENT`, `PRFetat`) VALUES
(0, 'Supper administrateur', 2, '2015-11-24', 1, 31),
(1, 'Utilisateur', 2, '2017-10-03', 1, 31),
(2, 'Magasinier', 2, '2019-03-20', 1, 31);

-- --------------------------------------------------------

--
-- Structure de la table `prf_has_droit`
--

CREATE TABLE `prf_has_droit` (
  `idPRF` int(11) NOT NULL,
  `idDROIT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `prf_has_droit`
--

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
(0, 134),
(0, 135),
(0, 136),
(0, 137),
(0, 138),
(0, 139),
(0, 140),
(0, 141),
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

-- --------------------------------------------------------

--
-- Structure de la table `prf_has_exe`
--

CREATE TABLE `prf_has_exe` (
  `id` int(11) NOT NULL,
  `idPRF` int(11) NOT NULL,
  `exe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `prf_has_exe`
--

INSERT INTO `prf_has_exe` (`id`, `idPRF`, `exe`) VALUES
(2, 0, 2017),
(3, 0, 2018),
(7, 2, 2018);

-- --------------------------------------------------------

--
-- Structure de la table `prf_has_mag`
--

CREATE TABLE `prf_has_mag` (
  `idPRF` int(11) NOT NULL,
  `MAGCOD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `prf_has_mag`
--

INSERT INTO `prf_has_mag` (`idPRF`, `MAGCOD`) VALUES
(0, 1),
(0, 2),
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `stk_affectation_analityque`
--

CREATE TABLE `stk_affectation_analityque` (
  `affectation_code` int(11) NOT NULL,
  `affectation_designation` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `affectation_type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stk_affectation_type`
--

CREATE TABLE `stk_affectation_type` (
  `afftype_code` int(11) NOT NULL,
  `afftype_designation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stk_article`
--

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

--
-- Contenu de la table `stk_article`
--

INSERT INTO `stk_article` (`art_code`, `art_designation`, `art_unite`, `art_description`, `art_image`, `art_DDM`, `art_dernierPrix`, `art_dateCreation`, `art_delaisLivraison`, `art_coutPossetion`, `art_coutPassation`, `art_stockMinimale`, `art_prix`, `art_tva`, `art_categorieCode`, `art_etatCode`, `art_class`) VALUES
('7673457953', 'Dattes branchée', '', '', '5d5e531581ebf.jpg', NULL, 0, '2019-03-26 00:00:00', 0, NULL, NULL, 1, 10, 0, 6, 11, 1),
('7686426e63', 'MP', '', '', '5d2584bb22402.jpg', NULL, 1.3333333333333, '2019-03-26 00:00:00', 1, NULL, NULL, 1, 1, 1, 6, 11, 2),
('76ca8a3b58', 'test', 'kg', '', NULL, NULL, 0, '2019-06-14 00:00:00', 12, NULL, NULL, 12, 12, 0, 6, 11, 2),
('77a0ee12b9', 'Dattes branchées MP', '1', '', NULL, NULL, 17.8, '2019-06-08 00:00:00', 1, NULL, NULL, 1, 1, 1, 7, 11, 2),
('787fc0b574', 'test', 'kg', '', NULL, NULL, 1, '2019-05-22 00:00:00', 1, NULL, NULL, 1, 10, 0, 8, 11, 2),
('78b6fd81de', 'datte BIO', '', '', '61b758dac55e6.jpg', NULL, 0, '2021-12-13 00:00:00', 0, NULL, NULL, 0, 0, 0, 8, 11, 2),
('797e5d47c3', 'datte test', '', '', NULL, NULL, 0, '2021-12-13 00:00:00', 0, NULL, NULL, 0, 10, 0, 9, 11, 2);

-- --------------------------------------------------------

--
-- Structure de la table `stk_article_fournisseur`
--

CREATE TABLE `stk_article_fournisseur` (
  `art_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `frs_code` int(11) NOT NULL,
  `frs_artRef` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frs_artEtatCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `stk_article_fournisseur`
--

INSERT INTO `stk_article_fournisseur` (`art_code`, `frs_code`, `frs_artRef`, `frs_artEtatCode`) VALUES
('7673457953', 7, '1', 21),
('7686426e63', 7, '1', 21),
('76ca8a3b58', 7, '12', 21),
('77a0ee12b9', 7, '1', 21),
('787fc0b574', 7, '1', 21),
('78b6fd81de', 7, '', 21),
('797e5d47c3', 7, '', 21);

-- --------------------------------------------------------

--
-- Structure de la table `stk_categorie_article`
--

CREATE TABLE `stk_categorie_article` (
  `catart_code` int(11) NOT NULL,
  `catart_designation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `stk_categorie_article`
--

INSERT INTO `stk_categorie_article` (`catart_code`, `catart_designation`) VALUES
(6, 'DEGLET NOUR'),
(7, 'dattes branchées'),
(8, 'dattes standards'),
(9, 'dattes séches'),
(10, 'Datte Alig'),
(11, 'Kenta'),
(12, 'KHOUAT ALIG');

-- --------------------------------------------------------

--
-- Structure de la table `stk_consomation_detail`
--

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

-- --------------------------------------------------------

--
-- Structure de la table `stk_consomation_entete`
--

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

-- --------------------------------------------------------

--
-- Structure de la table `stk_consommation_motif`
--

CREATE TABLE `stk_consommation_motif` (
  `consmot_code` int(11) NOT NULL,
  `consmot_lib` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stk_consommation_prod`
--

CREATE TABLE `stk_consommation_prod` (
  `cons_prod_id` int(11) NOT NULL,
  `cons_journe_id` int(11) DEFAULT NULL,
  `consprod_article_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `consprod_qte` double DEFAULT NULL,
  `consprod_code_frs` int(11) DEFAULT NULL,
  `consprod_date_peromption` datetime DEFAULT NULL,
  `consprod_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `stk_consommation_prod`
--

INSERT INTO `stk_consommation_prod` (`cons_prod_id`, `cons_journe_id`, `consprod_article_code`, `consprod_qte`, `consprod_code_frs`, `consprod_date_peromption`, `consprod_type`) VALUES
(1, 1, '7686426e63', 10, 7, NULL, 'MP'),
(2, 2, '787fc0b574', 5, 7, NULL, 'MP'),
(3, 3, '787fc0b574', 5, 7, NULL, 'MP'),
(4, 4, '77a0ee12b9', 10, 7, NULL, 'MP'),
(5, 5, '7686426e63', 6, 7, NULL, 'MP'),
(6, 6, '7686426e63', 6, 7, NULL, 'MP'),
(7, 7, '77a0ee12b9', 25, 7, NULL, 'MP'),
(8, 8, '77a0ee12b9', 25, 7, NULL, 'MP'),
(9, 9, '77a0ee12b9', 22, 7, NULL, 'MP'),
(10, 10, '77a0ee12b9', 22, 7, NULL, 'MP'),
(11, 11, '77a0ee12b9', 22, 7, NULL, 'MP'),
(12, 12, '77a0ee12b9', 22, 7, NULL, 'MP');

-- --------------------------------------------------------

--
-- Structure de la table `stk_dem_appro_det`
--

CREATE TABLE `stk_dem_appro_det` (
  `demapro_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `demapro_seq` int(11) DEFAULT NULL,
  `demapro_qte` double DEFAULT NULL,
  `demapro_qteStk` double DEFAULT NULL,
  `demapro_artCode` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stk_dem_appro_ent`
--

CREATE TABLE `stk_dem_appro_ent` (
  `demapro_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `demapro_exercice` int(11) DEFAULT NULL,
  `demapro_magCode` int(11) DEFAULT NULL,
  `demapro_date` date DEFAULT NULL,
  `demapro_etatCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stk_devise`
--

CREATE TABLE `stk_devise` (
  `devise_code` int(11) NOT NULL,
  `devise_libelle` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `stk_devise`
--

INSERT INTO `stk_devise` (`devise_code`, `devise_libelle`) VALUES
(1, 'Euro'),
(2, 'Dolars'),
(3, 'Dinars');

-- --------------------------------------------------------

--
-- Structure de la table `stk_entre_detail`
--

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

--
-- Contenu de la table `stk_entre_detail`
--

INSERT INTO `stk_entre_detail` (`ent_code`, `tva_code`, `ent_exercice`, `ent_qte`, `ent_qteSurplus`, `ent_datePeromption`, `ent_PU`, `ent_PTT`, `ent_prixTotale`, `ent_codeTrace`, `ent_lotCodeTrace`, `ent_artTraceEtatCode`, `ent_seq`, `ent_artCode`) VALUES
('1/2019', 0, 2019, 20, 0, '2019-06-29 00:00:00', 2, NULL, 40, '70555ced07', NULL, 41, NULL, '7686426e63'),
('4/2019', 0, 2019, 20, 1, '2020-12-09 00:00:00', 1, NULL, 20, '0166fbab16', NULL, 41, NULL, '7686426e63'),
('1/2017', 0, 2017, 100, 0, '2022-01-28 00:00:00', 12, NULL, 1200, 'a7a93215ae', NULL, 41, NULL, '77a0ee12b9'),
('2/2017', 0, 2017, 100, 10, '2022-12-22 00:00:00', 20, NULL, 2000, '90ad231c47', NULL, 41, NULL, '77a0ee12b9'),
('3/2017', 0, 2017, 150, 1, '2023-12-11 00:00:00', 19, NULL, 2850, 'd640f167e9', NULL, 41, NULL, '77a0ee12b9'),
('3/2019', 0, 2019, 20, 0, '2019-06-30 00:00:00', 1, NULL, 20, '47586bae96', NULL, 41, NULL, '77a0ee12b9'),
('2/2019', 0, 2019, 10, 0, '2019-11-09 00:00:00', 1, NULL, 10, '6e405e5c65', NULL, 41, NULL, '787fc0b574');

-- --------------------------------------------------------

--
-- Structure de la table `stk_entre_entete`
--

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

--
-- Contenu de la table `stk_entre_entete`
--

INSERT INTO `stk_entre_entete` (`ent_code`, `ent_exercice`, `ent_bcOlCode`, `ent_bcOlExercice`, `ent_contratCode`, `ent_contratExercice`, `ent_magRecepCode`, `ent_dateReception`, `ent_numBL`, `ent_dateBL`, `ent_numFacture`, `ent_dateFacture`, `ent_typeCode`, `ent_motifCode`, `ent_numTransit`, `ent_devise`, `ent_cours`, `ent_valeurTotaleDT`, `ent_observation`, `ent_etatCode`, `ent_fournisseurCode`) VALUES
('1/2017', 2017, '120', 1, '12', 0, 1, '2021-01-28 00:00:00', '12', '2021-01-28', '123', NULL, 0, NULL, '', 0, 0, NULL, '12', 31, 7),
('1/2019', 2019, '1', 1, '1', 1, 1, '2019-05-13 00:00:00', '1', '2019-05-13', '1', '2019-05-13', 0, NULL, '', 0, 0, NULL, '1', 31, 7),
('2/2017', 2017, '13', 12, '12', 12, 2, '2021-12-13 00:00:00', '', '2021-12-13', '1234', '2021-12-13', 0, NULL, '', 0, 0, NULL, '123', 31, 7),
('2/2019', 2019, '1', 2, '1', 1, 1, '2019-05-23 00:00:00', '1', '2019-05-23', '', '2019-05-23', 0, NULL, '', 0, 0, NULL, '1', 31, 7),
('3/2017', 2017, '77', 555, '', 0, 2, '2021-12-15 00:00:00', '', '2021-12-15', '123', NULL, 0, NULL, '', 0, 0, NULL, '00', 31, 8),
('3/2019', 2019, '1', 12, '', 0, 1, '2019-06-27 00:00:00', '1', '2019-06-08', '1', '2019-06-08', 0, NULL, '', 0, 0, NULL, '1', 31, 7),
('4/2019', 2019, '12', 12, '', 0, 1, '2019-07-10 00:00:00', '', '2019-07-10', '', NULL, 0, NULL, '', 0, 0, NULL, '', 31, 7);

-- --------------------------------------------------------

--
-- Structure de la table `stk_etat`
--

CREATE TABLE `stk_etat` (
  `etat_code` int(11) NOT NULL,
  `etat_libelle` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `stk_etat`
--

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

-- --------------------------------------------------------

--
-- Structure de la table `stk_fournisseur`
--

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

--
-- Contenu de la table `stk_fournisseur`
--

INSERT INTO `stk_fournisseur` (`frs_code`, `frs_raisonSociale`, `frs_adresse`, `frs_tel`, `frs_fax`, `frs_email`, `frs_logo`, `frs_mf`, `frs_etatCode`, `frs_typeCode`) VALUES
(7, 'test fournisseur', '', '', '', '', NULL, '', NULL, 1),
(8, 'Condi-Smart', 'technopark elgazala', '29200547', '715454545', 'contact@gmail.com', NULL, '14023589', NULL, 1),
(9, 'clien test', 'adresse', '11223665', '55777888', 'rached.bkhalifa@gmail.com', NULL, 'mf 555 5585 ', NULL, 1),
(10, 'om-tech', '', '45644502', '', '', NULL, '13587492', NULL, 2),
(11, 'om-tech1', 'TUNIS', '45644502', '', '', NULL, '13587492', NULL, 2);

-- --------------------------------------------------------

--
-- Structure de la table `stk_inventaire`
--

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

--
-- Contenu de la table `stk_inventaire`
--

INSERT INTO `stk_inventaire` (`mag_code`, `exercice`, `art_code`, `inv_etat`, `invt_date`, `invt_qte`, `inv_stkaDateInvt`, `inv_ecart`, `inv_num_borderau`, `inv_observation`) VALUES
(1, 2017, '7673457953', 61, NULL, NULL, NULL, NULL, 1, NULL),
(1, 2017, '7686426e63', 61, NULL, NULL, NULL, NULL, 1, NULL),
(1, 2017, '76ca8a3b58', 61, NULL, NULL, NULL, NULL, 1, NULL),
(1, 2017, '77a0ee12b9', 61, NULL, NULL, NULL, NULL, 1, NULL),
(1, 2017, '787fc0b574', 61, NULL, NULL, NULL, NULL, 1, NULL),
(1, 2019, '7673457953', 62, '2019-07-11', 12, 0, -12, 1, NULL),
(1, 2019, '7686426e63', 62, '2019-07-11', 12, 19, 7, 1, NULL),
(1, 2019, '76ca8a3b58', 62, '2019-07-11', 12, 0, -12, 1, NULL),
(1, 2019, '77a0ee12b9', 62, '2019-07-11', 12, 10, -2, 1, NULL),
(1, 2019, '787fc0b574', 62, '2019-07-11', 12, 0, -12, 1, NULL),
(2, 2017, '7673457953', 62, '2021-12-13', 100, 0, -100, 1, NULL),
(2, 2017, '7686426e63', 62, '2021-12-13', 0, NULL, NULL, 1, NULL),
(2, 2017, '76ca8a3b58', 62, '2021-12-13', 0, NULL, NULL, 1, NULL),
(2, 2017, '77a0ee12b9', 62, '2021-12-13', 61, 110, 49, 1, NULL),
(2, 2017, '787fc0b574', 62, '2021-12-13', 0, NULL, NULL, 1, NULL),
(2, 2017, '797e5d47c3', 62, '2021-12-13', 0, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `stk_journe_prod`
--

CREATE TABLE `stk_journe_prod` (
  `cons_journe_id` int(11) NOT NULL,
  `prod_detail_id` int(11) DEFAULT NULL,
  `journe_qte` double DEFAULT NULL,
  `journe_date` datetime DEFAULT NULL,
  `journe_date_peromption` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `stk_journe_prod`
--

INSERT INTO `stk_journe_prod` (`cons_journe_id`, `prod_detail_id`, `journe_qte`, `journe_date`, `journe_date_peromption`) VALUES
(1, 56, 10, '2019-05-13 00:00:00', '2019-05-13 00:00:00'),
(2, 58, 5, '2019-05-23 00:00:00', '2019-11-01 00:00:00'),
(3, 58, 5, '2019-05-24 00:00:00', '2019-12-03 00:00:00'),
(4, 57, 10, '2019-06-08 00:00:00', '2019-06-25 00:00:00'),
(5, 59, 6, '2019-07-10 00:00:00', '2020-07-16 00:00:00'),
(6, 59, 6, '2019-07-11 00:00:00', '2020-07-16 00:00:00'),
(7, 60, 25, '2021-01-28 00:00:00', '2022-01-26 00:00:00'),
(8, 60, 25, '2021-01-29 00:00:00', '2021-01-28 00:00:00'),
(9, 62, 50, '2021-12-13 00:00:00', '2021-12-14 00:00:00'),
(10, 62, 50, '2021-12-14 00:00:00', '2022-12-20 00:00:00'),
(11, 63, 50, '2021-12-13 00:00:00', '2023-12-11 00:00:00'),
(12, 63, 50, '2021-12-14 00:00:00', '2023-12-20 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `stk_production`
--

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

--
-- Contenu de la table `stk_production`
--

INSERT INTO `stk_production` (`prod_id`, `prod_code_devis_bc`, `prod_code_Prod`, `prod_code_bl`, `prod_code_facture`, `prod_code_mag`, `prod_code_client`, `prod_exercice_devis`, `prod_exercice_Bc`, `prod_exercice_Blfacture`, `prod_code_etat`, `prod_prix_totale`, `prod_prix_totale_ttc`, `prod_date_devis`, `prod_date_Bc`, `prod_date_prod`, `prod_date_Bl`, `prod_date_facture`, `prod_exercice_prod`, `prod_devise`, `prod_commerciale`) VALUES
(50, '1/2019', '1/2019', '1/2019', '1/2019', '1', 6, 2019, 2019, 2019, 77, NULL, NULL, '2019-03-26 00:00:00', '2019-03-26 00:00:00', '2019-05-13 14:58:31', '2019-05-13 00:00:00', '2019-05-13 00:00:00', 2019, 1, 1),
(51, '2/2019', '3/2019', '3/2019', '3/2019', '1', 6, 2019, 2019, 2019, 77, NULL, NULL, '2019-05-22 00:00:00', '2019-06-08 00:00:00', '2019-06-08 06:51:46', '2019-06-08 00:00:00', '2019-06-08 00:00:00', 2019, 3, 1),
(52, '3/2019', '2/2019', '2/2019', '2/2019', '1', 6, 2019, 2019, 2019, 77, NULL, NULL, '2019-05-23 00:00:00', '2019-05-23 00:00:00', '2019-05-23 11:30:45', '2019-05-23 00:00:00', '2019-05-16 00:00:00', 2019, 3, 1),
(53, '4/2019', '4/2019', '4/2019', '4/2019', '1', 6, 2019, 2019, 2019, 76, NULL, NULL, '2019-07-10 00:00:00', '2019-07-10 00:00:00', '2019-07-10 08:32:30', '2019-07-10 00:00:00', '2019-07-10 00:00:00', 2019, 1, 2),
(54, '1/2017', '1/2017', NULL, NULL, '1', 6, 2017, 2017, NULL, 76, NULL, NULL, '2021-01-28 00:00:00', '2021-01-28 00:00:00', '2021-01-28 12:02:14', NULL, NULL, 2017, 1, 2),
(55, '2/2017', NULL, NULL, NULL, '2', 10, 2017, NULL, NULL, 73, NULL, NULL, '2021-12-13 00:00:00', NULL, NULL, NULL, NULL, NULL, 3, 2),
(56, '3/2017', '2/2017', '1/2017', '1/2017', '2', 10, 2017, 2017, 2017, 77, NULL, NULL, '2021-12-13 00:00:00', '2021-12-13 00:00:00', '2021-12-13 09:27:44', '2021-12-16 00:00:00', '2021-12-13 00:00:00', 2017, 2, 2),
(57, '4/2017', '3/2017', NULL, NULL, '2', 10, 2017, 2017, NULL, 76, NULL, NULL, '2021-12-13 00:00:00', '2021-12-13 00:00:00', '2021-12-13 10:19:20', NULL, NULL, 2017, 1, 3),
(58, '5/2017', NULL, NULL, NULL, '1', 11, 2017, 2017, NULL, 74, NULL, NULL, '2021-12-13 00:00:00', '2021-12-13 00:00:00', NULL, NULL, NULL, NULL, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `stk_production_detail`
--

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

--
-- Contenu de la table `stk_production_detail`
--

INSERT INTO `stk_production_detail` (`prod_detail_id`, `prod_id`, `proddetail_article_code`, `proddetail_date_peromption`, `proddetail_qte_devis`, `proddetail_qte_bc`, `proddetail_qte_prod`, `proddetail_code_frs`, `proddetail_prix_unitaire`, `proddetail_prix_unitaire_devise`, `proddetail_tva`, `proddetail_etat`, `proddetail_prix_unitaire_devis`, `proddetail_prix_unitaire_devise_devis`, `proddetail_tva_devise`) VALUES
(56, 50, '7673457953', NULL, 10, NULL, NULL, NULL, NULL, 11, 0, NULL, NULL, 11, 0),
(57, 51, '7673457953', NULL, 10, NULL, NULL, NULL, NULL, 5, 0, NULL, NULL, 5, 0),
(58, 52, '7673457953', NULL, 10, NULL, NULL, NULL, NULL, 5, 0, NULL, NULL, 5, 0),
(59, 53, '7673457953', NULL, 12, NULL, NULL, NULL, NULL, 12, 0, NULL, NULL, 12, 0),
(60, 54, '7673457953', NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 0),
(61, 55, '7673457953', NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0),
(62, 56, '7673457953', NULL, 100, NULL, NULL, NULL, NULL, 4, 0, NULL, NULL, 3, 0),
(63, 57, '7673457953', NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 0),
(64, 58, '7673457953', NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0);

-- --------------------------------------------------------

--
-- Structure de la table `stk_rds`
--

CREATE TABLE `stk_rds` (
  `rds_code` int(11) NOT NULL,
  `rds_libelle` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rds_exercice` int(11) DEFAULT NULL,
  `rds_mag` int(11) DEFAULT NULL,
  `rds_qte` double DEFAULT NULL,
  `rds_date` date DEFAULT NULL,
  `rds_artCode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `stk_rds`
--

INSERT INTO `stk_rds` (`rds_code`, `rds_libelle`, `rds_exercice`, `rds_mag`, `rds_qte`, `rds_date`, `rds_artCode`) VALUES
(1, NULL, 2019, 1, 12, '2019-07-11', '76ca8a3b58'),
(2, NULL, 2019, 1, 12, '2019-07-11', '7673457953'),
(3, NULL, 2019, 1, -7, '2019-07-11', '7686426e63'),
(4, NULL, 2019, 1, 2, '2019-07-11', '77a0ee12b9'),
(5, NULL, 2019, 1, 12, '2019-07-11', '787fc0b574'),
(6, NULL, 2017, 2, -49, '2021-12-13', '77a0ee12b9');

-- --------------------------------------------------------

--
-- Structure de la table `stk_stock`
--

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

--
-- Contenu de la table `stk_stock`
--

INSERT INTO `stk_stock` (`mag_code`, `exercice`, `art_code`, `stk_initial`, `stk_entre`, `stk_sortie`, `stk_finale`, `stk_alert`, `stk_securite`) VALUES
(1, 2017, '7673457953', 0, 50, 0, 50, NULL, NULL),
(1, 2017, '7686426e63', 0, 0, 0, 0, NULL, NULL),
(1, 2017, '76ca8a3b58', 0, 0, 0, 0, NULL, NULL),
(1, 2017, '77a0ee12b9', 0, 100, 50, 50, NULL, NULL),
(1, 2017, '787fc0b574', 0, 0, 0, 0, NULL, NULL),
(1, 2017, '78b6fd81de', 0, 0, 0, 0, NULL, NULL),
(1, 2017, '797e5d47c3', 0, 0, 0, 0, NULL, NULL),
(1, 2018, '7673457953', 50, 0, 0, 50, NULL, NULL),
(1, 2018, '7686426e63', 0, 0, 0, 0, NULL, NULL),
(1, 2018, '76ca8a3b58', 0, 0, 0, 0, NULL, NULL),
(1, 2018, '77a0ee12b9', 50, 0, 0, 50, NULL, NULL),
(1, 2018, '787fc0b574', 0, 0, 0, 0, NULL, NULL),
(1, 2018, '78b6fd81de', 0, 0, 0, 0, NULL, NULL),
(1, 2018, '797e5d47c3', 0, 0, 0, 0, NULL, NULL),
(1, 2019, '7673457953', 0, 42, 30, 24, 1, 0),
(1, 2019, '7686426e63', 0, 41, 22, 12, 1, 0),
(1, 2019, '76ca8a3b58', 0, 0, 0, 12, 12, 0),
(1, 2019, '77a0ee12b9', 0, 20, 10, 12, 1, 0),
(1, 2019, '787fc0b574', 0, 10, 10, 12, 1, 0),
(1, 2020, '7673457953', 24, 0, 0, 24, NULL, NULL),
(1, 2020, '7686426e63', 12, 0, 0, 12, NULL, NULL),
(1, 2020, '76ca8a3b58', 12, 0, 0, 12, NULL, NULL),
(1, 2020, '77a0ee12b9', 12, 0, 0, 12, NULL, NULL),
(1, 2020, '787fc0b574', 12, 0, 0, 12, NULL, NULL),
(2, 2017, '7673457953', 0, 0, 0, 0, NULL, NULL),
(2, 2017, '7686426e63', 0, 0, 0, 0, NULL, NULL),
(2, 2017, '76ca8a3b58', 0, 0, 0, 0, NULL, NULL),
(2, 2017, '77a0ee12b9', 0, 261, 88, 124, NULL, NULL),
(2, 2017, '787fc0b574', 0, 0, 0, 0, NULL, NULL),
(2, 2017, '78b6fd81de', 0, 0, 0, 0, NULL, NULL),
(2, 2017, '797e5d47c3', 0, 0, 0, 0, NULL, NULL),
(2, 2018, '7673457953', 0, 0, 0, 0, NULL, NULL),
(2, 2018, '7686426e63', 0, 0, 0, 0, NULL, NULL),
(2, 2018, '76ca8a3b58', 0, 0, 0, 0, NULL, NULL),
(2, 2018, '77a0ee12b9', 124, 0, 0, 124, NULL, NULL),
(2, 2018, '787fc0b574', 0, 0, 0, 0, NULL, NULL),
(2, 2018, '797e5d47c3', 0, 0, 0, 0, NULL, NULL),
(2, 2019, '7673457953', 0, 0, 0, 0, NULL, NULL),
(2, 2019, '7686426e63', 0, 0, 0, 0, NULL, NULL),
(2, 2019, '76ca8a3b58', 0, 0, 0, 0, NULL, NULL),
(2, 2019, '77a0ee12b9', 0, 0, 0, 0, NULL, NULL),
(2, 2019, '787fc0b574', 0, 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `stk_trans_detail`
--

CREATE TABLE `stk_trans_detail` (
  `trans_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `trans_exercice` int(11) DEFAULT NULL,
  `trans_seq` int(11) DEFAULT NULL,
  `trans_qtedem` double DEFAULT NULL,
  `trans_qteliv` double DEFAULT NULL,
  `trans_artCode` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stk_trans_entete`
--

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

-- --------------------------------------------------------

--
-- Structure de la table `stk_tva`
--

CREATE TABLE `stk_tva` (
  `tva_code` int(11) NOT NULL,
  `tva_pourcentage` double DEFAULT NULL,
  `tva_designation` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `stk_tva`
--

INSERT INTO `stk_tva` (`tva_code`, `tva_pourcentage`, `tva_designation`) VALUES
(0, 0, '0%'),
(7, 7, '7%'),
(19, 19, '19%');

-- --------------------------------------------------------

--
-- Structure de la table `stk_type_fournisseur`
--

CREATE TABLE `stk_type_fournisseur` (
  `typfrs_code` int(11) NOT NULL,
  `typfrs_designation` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `stk_type_fournisseur`
--

INSERT INTO `stk_type_fournisseur` (`typfrs_code`, `typfrs_designation`) VALUES
(1, 'Fournisseur'),
(2, 'Client');

-- --------------------------------------------------------

--
-- Structure de la table `util`
--

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

--
-- Contenu de la table `util`
--

INSERT INTO `util` (`IDUTIL`, `UTILOG`, `UTIPWD`, `UTINOM`, `UTIPNOM`, `UTIDCR`, `UTImat`, `OPECOD`, `OPEEXE`, `PROFCOD`, `ETATCOD`, `idPRF`) VALUES
(1, 'admin', '3fb1c6c3b92c4209c2d487bda86cdd15', 'admin', 'admin', '2019-03-26', '11111', '0', '2019', '1', '1', 0),
(2, 'oussama', '3910dd2d465bc1bc499d47c7ca86d435', 'Oussama', 'Ouerghi', '2019-05-23', '19684', NULL, NULL, NULL, '41', 0),
(3, 'Nouredine', '9331614b54308449d26eec51f1da73ab', 'Nouredine', 'Nouredine', '2019-08-21', '1', NULL, NULL, NULL, '41', 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `droit`
--
ALTER TABLE `droit`
  ADD PRIMARY KEY (`idDROIT`),
  ADD KEY `fk_DROIT_GRBDROIT1_idx` (`idGRBDROIT`);

--
-- Index pour la table `droit_has_modul`
--
ALTER TABLE `droit_has_modul`
  ADD PRIMARY KEY (`idDROIT`,`idMODUL`),
  ADD KEY `fk_DROIT_has_MODUL_MODUL1_idx` (`idMODUL`),
  ADD KEY `fk_DROIT_has_MODUL_DROIT1_idx` (`idDROIT`);

--
-- Index pour la table `ent`
--
ALTER TABLE `ent`
  ADD PRIMARY KEY (`idENT`);

--
-- Index pour la table `etat`
--
ALTER TABLE `etat`
  ADD PRIMARY KEY (`idETAT`);

--
-- Index pour la table `etatgen`
--
ALTER TABLE `etatgen`
  ADD PRIMARY KEY (`idETAT`);

--
-- Index pour la table `exe`
--
ALTER TABLE `exe`
  ADD PRIMARY KEY (`exe`);

--
-- Index pour la table `grbdroit`
--
ALTER TABLE `grbdroit`
  ADD PRIMARY KEY (`idGRBDROIT`);

--
-- Index pour la table `hera`
--
ALTER TABLE `hera`
  ADD PRIMARY KEY (`idHERA`);

--
-- Index pour la table `mag`
--
ALTER TABLE `mag`
  ADD PRIMARY KEY (`MAGCOD`),
  ADD KEY `fk_MAG_ETAT1_idx` (`ETATCOD`);

--
-- Index pour la table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`idMENU`);

--
-- Index pour la table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`idMODUL`),
  ADD KEY `fk_MODUL_MENU1_idx` (`idMENU`),
  ADD KEY `fk_MODUL_ETAT1_idx` (`idETAT`);

--
-- Index pour la table `oper`
--
ALTER TABLE `oper`
  ADD PRIMARY KEY (`idOPER`);

--
-- Index pour la table `prf`
--
ALTER TABLE `prf`
  ADD PRIMARY KEY (`idPRF`),
  ADD KEY `fk_PRF_ENT1_idx` (`idENT`),
  ADD KEY `fk_PRF_ETAT1_idx` (`PRFetat`);

--
-- Index pour la table `prf_has_droit`
--
ALTER TABLE `prf_has_droit`
  ADD PRIMARY KEY (`idPRF`,`idDROIT`),
  ADD KEY `fk_PRF_has_DROIT_DROIT1_idx` (`idDROIT`),
  ADD KEY `fk_PRF_has_DROIT_PRF1_idx` (`idPRF`);

--
-- Index pour la table `prf_has_exe`
--
ALTER TABLE `prf_has_exe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prf_has_mag`
--
ALTER TABLE `prf_has_mag`
  ADD PRIMARY KEY (`idPRF`,`MAGCOD`),
  ADD KEY `fk_PRF_has_MAG_MAG1_idx` (`MAGCOD`),
  ADD KEY `fk_PRF_has_MAG_PRF1_idx` (`idPRF`);

--
-- Index pour la table `stk_affectation_analityque`
--
ALTER TABLE `stk_affectation_analityque`
  ADD PRIMARY KEY (`affectation_code`);

--
-- Index pour la table `stk_affectation_type`
--
ALTER TABLE `stk_affectation_type`
  ADD PRIMARY KEY (`afftype_code`);

--
-- Index pour la table `stk_article`
--
ALTER TABLE `stk_article`
  ADD PRIMARY KEY (`art_code`),
  ADD KEY `fk_stk_article_stk_etat_idx` (`art_etatCode`),
  ADD KEY `fk_stk_article_stk_categorie_article1_idx` (`art_categorieCode`);

--
-- Index pour la table `stk_article_fournisseur`
--
ALTER TABLE `stk_article_fournisseur`
  ADD PRIMARY KEY (`art_code`,`frs_code`),
  ADD KEY `fk_stk_article_fournisseur_stk_etat1_idx` (`frs_artEtatCode`),
  ADD KEY `fk_stk_article_fournisseur_stk_fournisseur1_idx` (`frs_code`),
  ADD KEY `IDX_57EE174C7E354607` (`art_code`);

--
-- Index pour la table `stk_categorie_article`
--
ALTER TABLE `stk_categorie_article`
  ADD PRIMARY KEY (`catart_code`);

--
-- Index pour la table `stk_consomation_detail`
--
ALTER TABLE `stk_consomation_detail`
  ADD PRIMARY KEY (`cons_code`,`cons_artCode`),
  ADD KEY `IDX_B9A21DC33001E491` (`cons_code`),
  ADD KEY `IDX_B9A21DC3FC29DDFE` (`cons_artCode`);

--
-- Index pour la table `stk_consomation_entete`
--
ALTER TABLE `stk_consomation_entete`
  ADD PRIMARY KEY (`cons_code`),
  ADD KEY `IDX_849783134C3CC624` (`cons_clientCode`),
  ADD KEY `IDX_84978313FC29DDFE` (`cons_artCode`),
  ADD KEY `fk_stk_consommation_entete_stk_affectation_analityque1_idx` (`cons_affectationCode`),
  ADD KEY `fk_stk_consommation_entete_stk_affectation_type1_idx` (`cons_affectationTypeCode`),
  ADD KEY `IDX_84978313ED098EC4` (`cons_etatCode`);

--
-- Index pour la table `stk_consommation_motif`
--
ALTER TABLE `stk_consommation_motif`
  ADD PRIMARY KEY (`consmot_code`);

--
-- Index pour la table `stk_consommation_prod`
--
ALTER TABLE `stk_consommation_prod`
  ADD PRIMARY KEY (`cons_prod_id`),
  ADD KEY `IDX_A70612F1FB7A270A` (`consprod_article_code`),
  ADD KEY `IDX_A70612F1492A4A8F` (`consprod_code_frs`),
  ADD KEY `IDX_A70612F16DFEB22B` (`cons_journe_id`);

--
-- Index pour la table `stk_dem_appro_det`
--
ALTER TABLE `stk_dem_appro_det`
  ADD PRIMARY KEY (`demapro_artCode`,`demapro_code`),
  ADD KEY `IDX_70DD644D7F9F1D03` (`demapro_artCode`),
  ADD KEY `IDX_70DD644DDC14EBC6` (`demapro_code`);

--
-- Index pour la table `stk_dem_appro_ent`
--
ALTER TABLE `stk_dem_appro_ent`
  ADD PRIMARY KEY (`demapro_code`),
  ADD KEY `fk_demande_approvisionnement_entete_stk_etat1_idx` (`demapro_etatCode`);

--
-- Index pour la table `stk_devise`
--
ALTER TABLE `stk_devise`
  ADD PRIMARY KEY (`devise_code`);

--
-- Index pour la table `stk_entre_detail`
--
ALTER TABLE `stk_entre_detail`
  ADD PRIMARY KEY (`ent_artCode`,`ent_code`),
  ADD KEY `fk_stk_entre_detail_stk_tva1_idx` (`tva_code`),
  ADD KEY `fk_stk_entre_detail_stk_article1_idx` (`ent_artCode`),
  ADD KEY `IDX_3ADC24D75A01BE47` (`ent_code`);

--
-- Index pour la table `stk_entre_entete`
--
ALTER TABLE `stk_entre_entete`
  ADD PRIMARY KEY (`ent_code`),
  ADD KEY `fk_stk_entre_entete_stk_etat1_idx` (`ent_etatCode`),
  ADD KEY `fk_stk_entre_entete_stk_fournisseur1_idx` (`ent_fournisseurCode`);

--
-- Index pour la table `stk_etat`
--
ALTER TABLE `stk_etat`
  ADD PRIMARY KEY (`etat_code`);

--
-- Index pour la table `stk_fournisseur`
--
ALTER TABLE `stk_fournisseur`
  ADD PRIMARY KEY (`frs_code`),
  ADD KEY `fk_stk_fournisseur_stk_etat1_idx` (`frs_etatCode`),
  ADD KEY `fk_stk_fournisseur_stk_type_fournisseur1_idx` (`frs_typeCode`);

--
-- Index pour la table `stk_inventaire`
--
ALTER TABLE `stk_inventaire`
  ADD PRIMARY KEY (`mag_code`,`exercice`,`art_code`),
  ADD KEY `fk_stk_inventaire_stk_etat1_idx` (`inv_etat`),
  ADD KEY `IDX_5F7D50397E354607` (`art_code`);

--
-- Index pour la table `stk_journe_prod`
--
ALTER TABLE `stk_journe_prod`
  ADD PRIMARY KEY (`cons_journe_id`),
  ADD KEY `IDX_FF31911A2D71DF5E` (`prod_detail_id`);

--
-- Index pour la table `stk_production`
--
ALTER TABLE `stk_production`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `IDX_BF19C13996804146` (`prod_code_etat`),
  ADD KEY `IDX_BF19C13997D0CAAC` (`prod_devise`),
  ADD KEY `IDX_BF19C13972AECBB1` (`prod_commerciale`);

--
-- Index pour la table `stk_production_detail`
--
ALTER TABLE `stk_production_detail`
  ADD PRIMARY KEY (`prod_detail_id`),
  ADD KEY `IDX_189B1EBF1C83F75` (`prod_id`),
  ADD KEY `IDX_189B1EBFFE026DDF` (`proddetail_article_code`),
  ADD KEY `IDX_189B1EBF60EB394C` (`proddetail_tva`),
  ADD KEY `IDX_189B1EBF7E220BF9` (`proddetail_tva_devise`);

--
-- Index pour la table `stk_rds`
--
ALTER TABLE `stk_rds`
  ADD PRIMARY KEY (`rds_code`),
  ADD KEY `IDX_323B31ACC1F70D80` (`rds_artCode`);

--
-- Index pour la table `stk_stock`
--
ALTER TABLE `stk_stock`
  ADD PRIMARY KEY (`mag_code`,`exercice`,`art_code`),
  ADD KEY `IDX_FE4077947E354607` (`art_code`);

--
-- Index pour la table `stk_trans_detail`
--
ALTER TABLE `stk_trans_detail`
  ADD PRIMARY KEY (`trans_code`,`trans_artCode`),
  ADD UNIQUE KEY `fk_stk_trans_detail_stk_trans_entete1_idx` (`trans_code`),
  ADD KEY `fk_stk_trans_detail_stk_article1_idx` (`trans_artCode`);

--
-- Index pour la table `stk_trans_entete`
--
ALTER TABLE `stk_trans_entete`
  ADD PRIMARY KEY (`trans_code`),
  ADD KEY `fk_stk_trans_entete_stk_etat1_idx` (`trans_etatCode`);

--
-- Index pour la table `stk_tva`
--
ALTER TABLE `stk_tva`
  ADD PRIMARY KEY (`tva_code`);

--
-- Index pour la table `stk_type_fournisseur`
--
ALTER TABLE `stk_type_fournisseur`
  ADD PRIMARY KEY (`typfrs_code`);

--
-- Index pour la table `util`
--
ALTER TABLE `util`
  ADD PRIMARY KEY (`IDUTIL`),
  ADD KEY `fk_UTIL_PRF1_idx` (`idPRF`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `droit`
--
ALTER TABLE `droit`
  MODIFY `idDROIT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
--
-- AUTO_INCREMENT pour la table `ent`
--
ALTER TABLE `ent`
  MODIFY `idENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `etat`
--
ALTER TABLE `etat`
  MODIFY `idETAT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT pour la table `etatgen`
--
ALTER TABLE `etatgen`
  MODIFY `idETAT` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `exe`
--
ALTER TABLE `exe`
  MODIFY `exe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2020;
--
-- AUTO_INCREMENT pour la table `grbdroit`
--
ALTER TABLE `grbdroit`
  MODIFY `idGRBDROIT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `hera`
--
ALTER TABLE `hera`
  MODIFY `idHERA` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `mag`
--
ALTER TABLE `mag`
  MODIFY `MAGCOD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `menu`
--
ALTER TABLE `menu`
  MODIFY `idMENU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `modul`
--
ALTER TABLE `modul`
  MODIFY `idMODUL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;
--
-- AUTO_INCREMENT pour la table `oper`
--
ALTER TABLE `oper`
  MODIFY `idOPER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2927;
--
-- AUTO_INCREMENT pour la table `prf`
--
ALTER TABLE `prf`
  MODIFY `idPRF` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `prf_has_exe`
--
ALTER TABLE `prf_has_exe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `stk_affectation_analityque`
--
ALTER TABLE `stk_affectation_analityque`
  MODIFY `affectation_code` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `stk_affectation_type`
--
ALTER TABLE `stk_affectation_type`
  MODIFY `afftype_code` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `stk_categorie_article`
--
ALTER TABLE `stk_categorie_article`
  MODIFY `catart_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `stk_consommation_motif`
--
ALTER TABLE `stk_consommation_motif`
  MODIFY `consmot_code` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `stk_consommation_prod`
--
ALTER TABLE `stk_consommation_prod`
  MODIFY `cons_prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `stk_devise`
--
ALTER TABLE `stk_devise`
  MODIFY `devise_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `stk_etat`
--
ALTER TABLE `stk_etat`
  MODIFY `etat_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT pour la table `stk_fournisseur`
--
ALTER TABLE `stk_fournisseur`
  MODIFY `frs_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `stk_journe_prod`
--
ALTER TABLE `stk_journe_prod`
  MODIFY `cons_journe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `stk_production`
--
ALTER TABLE `stk_production`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT pour la table `stk_production_detail`
--
ALTER TABLE `stk_production_detail`
  MODIFY `prod_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT pour la table `stk_rds`
--
ALTER TABLE `stk_rds`
  MODIFY `rds_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `stk_type_fournisseur`
--
ALTER TABLE `stk_type_fournisseur`
  MODIFY `typfrs_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `util`
--
ALTER TABLE `util`
  MODIFY `IDUTIL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `stk_article`
--
ALTER TABLE `stk_article`
  ADD CONSTRAINT `FK_3E838FF7235A3AF1` FOREIGN KEY (`art_categorieCode`) REFERENCES `stk_categorie_article` (`catart_code`),
  ADD CONSTRAINT `FK_3E838FF7859026D2` FOREIGN KEY (`art_etatCode`) REFERENCES `stk_etat` (`etat_code`);

--
-- Contraintes pour la table `stk_article_fournisseur`
--
ALTER TABLE `stk_article_fournisseur`
  ADD CONSTRAINT `FK_57EE174C69F57FA6` FOREIGN KEY (`frs_code`) REFERENCES `stk_fournisseur` (`frs_code`),
  ADD CONSTRAINT `FK_57EE174C7BAD5C56` FOREIGN KEY (`frs_artEtatCode`) REFERENCES `stk_etat` (`etat_code`),
  ADD CONSTRAINT `FK_57EE174C7E354607` FOREIGN KEY (`art_code`) REFERENCES `stk_article` (`art_code`);

--
-- Contraintes pour la table `stk_consomation_detail`
--
ALTER TABLE `stk_consomation_detail`
  ADD CONSTRAINT `FK_B9A21DC33001E491` FOREIGN KEY (`cons_code`) REFERENCES `stk_consomation_entete` (`cons_code`),
  ADD CONSTRAINT `FK_B9A21DC3FC29DDFE` FOREIGN KEY (`cons_artCode`) REFERENCES `stk_article` (`art_code`);

--
-- Contraintes pour la table `stk_consomation_entete`
--
ALTER TABLE `stk_consomation_entete`
  ADD CONSTRAINT `FK_849783132C89E311` FOREIGN KEY (`cons_affectationTypeCode`) REFERENCES `stk_affectation_type` (`afftype_code`),
  ADD CONSTRAINT `FK_849783134C3CC624` FOREIGN KEY (`cons_clientCode`) REFERENCES `stk_fournisseur` (`frs_code`),
  ADD CONSTRAINT `FK_84978313DB566CAE` FOREIGN KEY (`cons_affectationCode`) REFERENCES `stk_affectation_analityque` (`affectation_code`),
  ADD CONSTRAINT `FK_84978313ED098EC4` FOREIGN KEY (`cons_etatCode`) REFERENCES `stk_etat` (`etat_code`),
  ADD CONSTRAINT `FK_84978313FC29DDFE` FOREIGN KEY (`cons_artCode`) REFERENCES `stk_article` (`art_code`);

--
-- Contraintes pour la table `stk_consommation_prod`
--
ALTER TABLE `stk_consommation_prod`
  ADD CONSTRAINT `FK_A70612F1492A4A8F` FOREIGN KEY (`consprod_code_frs`) REFERENCES `stk_fournisseur` (`frs_code`),
  ADD CONSTRAINT `FK_A70612F16DFEB22B` FOREIGN KEY (`cons_journe_id`) REFERENCES `stk_journe_prod` (`cons_journe_id`),
  ADD CONSTRAINT `FK_A70612F1FB7A270A` FOREIGN KEY (`consprod_article_code`) REFERENCES `stk_article` (`art_code`);

--
-- Contraintes pour la table `stk_dem_appro_det`
--
ALTER TABLE `stk_dem_appro_det`
  ADD CONSTRAINT `FK_70DD644D7F9F1D03` FOREIGN KEY (`demapro_artCode`) REFERENCES `stk_article` (`art_code`),
  ADD CONSTRAINT `FK_70DD644DDC14EBC6` FOREIGN KEY (`demapro_code`) REFERENCES `stk_dem_appro_ent` (`demapro_code`);

--
-- Contraintes pour la table `stk_dem_appro_ent`
--
ALTER TABLE `stk_dem_appro_ent`
  ADD CONSTRAINT `FK_92EBD7B12E86B6A5` FOREIGN KEY (`demapro_etatCode`) REFERENCES `stk_etat` (`etat_code`);

--
-- Contraintes pour la table `stk_entre_detail`
--
ALTER TABLE `stk_entre_detail`
  ADD CONSTRAINT `FK_3ADC24D7357921C8` FOREIGN KEY (`ent_artCode`) REFERENCES `stk_article` (`art_code`),
  ADD CONSTRAINT `FK_3ADC24D75A01BE47` FOREIGN KEY (`ent_code`) REFERENCES `stk_entre_entete` (`ent_code`),
  ADD CONSTRAINT `FK_3ADC24D7ED3ACE73` FOREIGN KEY (`tva_code`) REFERENCES `stk_tva` (`tva_code`);

--
-- Contraintes pour la table `stk_entre_entete`
--
ALTER TABLE `stk_entre_entete`
  ADD CONSTRAINT `FK_7E9BA07227A4BA1` FOREIGN KEY (`ent_etatCode`) REFERENCES `stk_etat` (`etat_code`),
  ADD CONSTRAINT `FK_7E9BA07C671CF22` FOREIGN KEY (`ent_fournisseurCode`) REFERENCES `stk_fournisseur` (`frs_code`);

--
-- Contraintes pour la table `stk_fournisseur`
--
ALTER TABLE `stk_fournisseur`
  ADD CONSTRAINT `FK_C9FD543213D4D424` FOREIGN KEY (`frs_etatCode`) REFERENCES `stk_etat` (`etat_code`),
  ADD CONSTRAINT `FK_C9FD54325718EB5D` FOREIGN KEY (`frs_typeCode`) REFERENCES `stk_type_fournisseur` (`typfrs_code`);

--
-- Contraintes pour la table `stk_inventaire`
--
ALTER TABLE `stk_inventaire`
  ADD CONSTRAINT `FK_5F7D503962B9CDF9` FOREIGN KEY (`inv_etat`) REFERENCES `stk_etat` (`etat_code`),
  ADD CONSTRAINT `FK_5F7D50397E354607` FOREIGN KEY (`art_code`) REFERENCES `stk_article` (`art_code`);

--
-- Contraintes pour la table `stk_journe_prod`
--
ALTER TABLE `stk_journe_prod`
  ADD CONSTRAINT `FK_FF31911A2D71DF5E` FOREIGN KEY (`prod_detail_id`) REFERENCES `stk_production_detail` (`prod_detail_id`);

--
-- Contraintes pour la table `stk_production`
--
ALTER TABLE `stk_production`
  ADD CONSTRAINT `FK_34ZD34R3434R34R3` FOREIGN KEY (`prod_devise`) REFERENCES `stk_devise` (`devise_code`),
  ADD CONSTRAINT `FK_34ZD34R343QSDQ3` FOREIGN KEY (`prod_commerciale`) REFERENCES `util` (`IDUTIL`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_BF19C13996804146` FOREIGN KEY (`prod_code_etat`) REFERENCES `stk_etat` (`etat_code`);

--
-- Contraintes pour la table `stk_production_detail`
--
ALTER TABLE `stk_production_detail`
  ADD CONSTRAINT `FK_189B1EBF1C83F75` FOREIGN KEY (`prod_id`) REFERENCES `stk_production` (`prod_id`),
  ADD CONSTRAINT `FK_189B1EBF60EB394C` FOREIGN KEY (`proddetail_tva`) REFERENCES `stk_tva` (`tva_code`),
  ADD CONSTRAINT `FK_189B1EBF7E220BF9` FOREIGN KEY (`proddetail_tva_devise`) REFERENCES `stk_tva` (`tva_code`),
  ADD CONSTRAINT `FK_189B1EBFFE026DDF` FOREIGN KEY (`proddetail_article_code`) REFERENCES `stk_article` (`art_code`);

--
-- Contraintes pour la table `stk_rds`
--
ALTER TABLE `stk_rds`
  ADD CONSTRAINT `FK_323B31ACC1F70D80` FOREIGN KEY (`rds_artCode`) REFERENCES `stk_article` (`art_code`);

--
-- Contraintes pour la table `stk_stock`
--
ALTER TABLE `stk_stock`
  ADD CONSTRAINT `FK_FE4077947E354607` FOREIGN KEY (`art_code`) REFERENCES `stk_article` (`art_code`);

--
-- Contraintes pour la table `stk_trans_detail`
--
ALTER TABLE `stk_trans_detail`
  ADD CONSTRAINT `FK_382A102D370EC194` FOREIGN KEY (`trans_artCode`) REFERENCES `stk_article` (`art_code`),
  ADD CONSTRAINT `FK_382A102D6411F9AB` FOREIGN KEY (`trans_code`) REFERENCES `stk_trans_entete` (`trans_code`);

--
-- Contraintes pour la table `stk_trans_entete`
--
ALTER TABLE `stk_trans_entete`
  ADD CONSTRAINT `FK_51F8EFD40A5219E` FOREIGN KEY (`trans_etatCode`) REFERENCES `stk_etat` (`etat_code`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

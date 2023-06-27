-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 29 Mai 2023 à 09:41
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `vigne_protec`
--

-- --------------------------------------------------------

--
-- Structure de la table `degats`
--

CREATE TABLE IF NOT EXISTS `degats` (
  `degats_id` int(11) NOT NULL AUTO_INCREMENT,
  `pourcentage_bourgeons_impactes` decimal(5,2) DEFAULT NULL,
  `vigne_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`degats_id`),
  KEY `vigne_id` (`vigne_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `domaine`
--

CREATE TABLE IF NOT EXISTS `domaine` (
  `domaine_id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`domaine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `mesures`
--

CREATE TABLE IF NOT EXISTS `mesures` (
  `mesure_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `heure` int(11) DEFAULT NULL,
  `minute` int(11) DEFAULT NULL,
  `seconde` int(11) DEFAULT NULL,
  `vigne_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`mesure_id`),
  KEY `vigne_id` (`vigne_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `periodegel`
--

CREATE TABLE IF NOT EXISTS `periodegel` (
  `gel_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `vigne_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`gel_id`),
  KEY `vigne_id` (`vigne_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `personneréférente`
--

CREATE TABLE IF NOT EXISTS `personneréférente` (
  `personne_id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `prénom` varchar(255) DEFAULT NULL,
  `tel_perso` varchar(20) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `fonction` varchar(255) DEFAULT NULL,
  `domaine_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`personne_id`),
  KEY `domaine_id` (`domaine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `vigne`
--

CREATE TABLE IF NOT EXISTS `vigne` (
  `vigne_id` int(11) NOT NULL AUTO_INCREMENT,
  `clos` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `coord_gps` varchar(255) DEFAULT NULL,
  `surface` decimal(10,2) DEFAULT NULL,
  `longueur` decimal(10,2) DEFAULT NULL,
  `largeur` decimal(10,2) DEFAULT NULL,
  `date_equipement` date DEFAULT NULL,
  `type_protection` varchar(255) DEFAULT NULL,
  `position_protection` varchar(255) DEFAULT NULL,
  `domaine_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`vigne_id`),
  KEY `domaine_id` (`domaine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `degats`
--
ALTER TABLE `degats`
  ADD CONSTRAINT `degats_ibfk_1` FOREIGN KEY (`vigne_id`) REFERENCES `vigne` (`vigne_id`);

--
-- Contraintes pour la table `mesures`
--
ALTER TABLE `mesures`
  ADD CONSTRAINT `mesures_ibfk_1` FOREIGN KEY (`vigne_id`) REFERENCES `vigne` (`vigne_id`);

--
-- Contraintes pour la table `periodegel`
--
ALTER TABLE `periodegel`
  ADD CONSTRAINT `periodegel_ibfk_1` FOREIGN KEY (`vigne_id`) REFERENCES `vigne` (`vigne_id`);

--
-- Contraintes pour la table `personneréférente`
--
ALTER TABLE `personneréférente`
  ADD CONSTRAINT `personneréférente_ibfk_1` FOREIGN KEY (`domaine_id`) REFERENCES `domaine` (`domaine_id`);

--
-- Contraintes pour la table `vigne`
--
ALTER TABLE `vigne`
  ADD CONSTRAINT `vigne_ibfk_1` FOREIGN KEY (`domaine_id`) REFERENCES `domaine` (`domaine_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

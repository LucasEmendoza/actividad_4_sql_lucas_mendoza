-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para lugares_en_el_mundo
DROP DATABASE IF EXISTS `lugares_en_el_mundo`;
CREATE DATABASE IF NOT EXISTS `lugares_en_el_mundo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `lugares_en_el_mundo`;

-- Volcando estructura para tabla lugares_en_el_mundo.cities
DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` smallint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COMMENT='Esta tabla relaciona ciudades del mundo.';

-- Volcando datos para la tabla lugares_en_el_mundo.cities: ~19 rows (aproximadamente)
DELETE FROM `cities`;
INSERT INTO `cities` (`id`, `name`) VALUES
	(1, 'chicago'),
	(2, 'medellin'),
	(3, 'new york'),
	(4, 'yarumal'),
	(5, 'ciudad de mexico'),
	(6, 'guadalajara'),
	(7, 'buenos aires'),
	(8, 'moscu'),
	(9, 'tokyo'),
	(10, 'madrid'),
	(11, 'el cairo'),
	(12, 'leticia'),
	(13, 'la plata'),
	(14, 'alejandria'),
	(15, 'san petersburgo'),
	(16, 'barcelona'),
	(17, 'osaka'),
	(18, 'berlin '),
	(19, 'munich'),
	(20, 'bogota'),
	(21, 'caracas');

-- Volcando estructura para tabla lugares_en_el_mundo.cities_countries_continents
DROP TABLE IF EXISTS `cities_countries_continents`;
CREATE TABLE IF NOT EXISTS `cities_countries_continents` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `cities_id` smallint(6) NOT NULL,
  `contries_id` smallint(6) NOT NULL,
  `continents_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COMMENT='Esta tabla relaciona lugares en el mundo';

-- Volcando datos para la tabla lugares_en_el_mundo.cities_countries_continents: ~21 rows (aproximadamente)
DELETE FROM `cities_countries_continents`;
INSERT INTO `cities_countries_continents` (`id`, `cities_id`, `contries_id`, `continents_id`) VALUES
	(1, 1, 2, 1),
	(2, 2, 1, 1),
	(3, 3, 2, 1),
	(4, 4, 1, 1),
	(5, 5, 3, 1),
	(6, 6, 3, 1),
	(7, 7, 4, 1),
	(8, 8, 5, 3),
	(9, 9, 6, 5),
	(10, 10, 8, 3),
	(11, 11, 7, 2),
	(12, 12, 1, 1),
	(13, 13, 4, 1),
	(14, 14, 7, 2),
	(15, 15, 5, 3),
	(16, 16, 8, 3),
	(17, 17, 6, 5),
	(18, 18, 9, 3),
	(19, 19, 9, 3),
	(20, 20, 1, 1),
	(21, 21, 10, 1);

-- Volcando estructura para tabla lugares_en_el_mundo.continents
DROP TABLE IF EXISTS `continents`;
CREATE TABLE IF NOT EXISTS `continents` (
  `id` smallint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='Esta tabla lista los continentes del mundo.\r\n';

-- Volcando datos para la tabla lugares_en_el_mundo.continents: ~5 rows (aproximadamente)
DELETE FROM `continents`;
INSERT INTO `continents` (`id`, `name`) VALUES
	(1, 'america'),
	(2, 'africa'),
	(3, 'europa'),
	(4, 'oceania'),
	(5, 'asia');

-- Volcando estructura para tabla lugares_en_el_mundo.countries
DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` smallint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='Esta tabla relaciona paises en el mundo.';

-- Volcando datos para la tabla lugares_en_el_mundo.countries: ~10 rows (aproximadamente)
DELETE FROM `countries`;
INSERT INTO `countries` (`id`, `name`) VALUES
	(1, 'colombia'),
	(2, 'estados unidos'),
	(3, 'mexico'),
	(4, 'argentina'),
	(5, 'rusia'),
	(6, 'japon'),
	(7, 'egipto'),
	(8, 'españa'),
	(9, 'alemania'),
	(10, 'venezuela');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

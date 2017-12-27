CREATE DATABASE  IF NOT EXISTS `Cinestar` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `Cinestar`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: cr.cinestar-internal.lan    Database: Cinestar
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED='1ff38fe1-e642-11e7-b75b-000c29450cf1:1-42,
3f34ce8b-e63c-11e7-bb7e-000c29450cf1:1-20,
4e540acf-e641-11e7-b75b-000c29450cf1:1-3';

--
-- Table structure for table `MovieReview`
--

DROP TABLE IF EXISTS `MovieReview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MovieReview` (
  `ReviewID` int(11) NOT NULL,
  `MovieID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Score` int(11) DEFAULT NULL,
  `Review` varchar(5000) NOT NULL,
  PRIMARY KEY (`ReviewID`),
  KEY `MovieID_to_Movies_idx` (`MovieID`),
  KEY `UserID_to_Users_idx` (`UserID`),
  CONSTRAINT `MovieID_to_Movies` FOREIGN KEY (`MovieID`) REFERENCES `Movies` (`movieID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `UserID_to_Users` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MovieReview`
--

LOCK TABLES `MovieReview` WRITE;
/*!40000 ALTER TABLE `MovieReview` DISABLE KEYS */;
/*!40000 ALTER TABLE `MovieReview` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-21 23:00:10

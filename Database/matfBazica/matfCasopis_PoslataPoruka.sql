-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: matfCasopis
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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

--
-- Table structure for table `PoslataPoruka`
--

DROP TABLE IF EXISTS `PoslataPoruka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PoslataPoruka` (
  `idSablon` int(11) NOT NULL,
  `idPosiljalac` int(11) NOT NULL,
  `vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `adresaPrimaoca` varchar(45) NOT NULL,
  PRIMARY KEY (`idSablon`,`idPosiljalac`),
  KEY `fk_Sablon_has_KorisnickiNalog_KorisnickiNalog1_idx` (`idPosiljalac`),
  KEY `fk_Sablon_has_KorisnickiNalog_Sablon1_idx` (`idSablon`),
  CONSTRAINT `fk_Sablon_has_KorisnickiNalog_KorisnickiNalog1` FOREIGN KEY (`idPosiljalac`) REFERENCES `KorisnickiNalog` (`idKorisnickiNalog`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Sablon_has_KorisnickiNalog_Sablon1` FOREIGN KEY (`idSablon`) REFERENCES `Sablon` (`idSablon`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PoslataPoruka`
--

LOCK TABLES `PoslataPoruka` WRITE;
/*!40000 ALTER TABLE `PoslataPoruka` DISABLE KEYS */;
/*!40000 ALTER TABLE `PoslataPoruka` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-26 20:52:51

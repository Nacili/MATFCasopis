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
-- Table structure for table `Pise`
--

DROP TABLE IF EXISTS `Pise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pise` (
  `IDRadKorisnickiNalog` int(11) NOT NULL,
  `IDKorisnickiNalogRad` int(11) NOT NULL,
  PRIMARY KEY (`IDRadKorisnickiNalog`,`IDKorisnickiNalogRad`),
  KEY `fk_KorisnickiNalogUloga_has_Rad_Rad1_idx` (`IDRadKorisnickiNalog`),
  KEY `fk_AutorRad_KorisnickiNalog1_idx` (`IDKorisnickiNalogRad`),
  CONSTRAINT `fk_AutorRad_KorisnickiNalog1` FOREIGN KEY (`IDKorisnickiNalogRad`) REFERENCES `KorisnickiNalog` (`idKorisnickiNalog`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_KorisnickiNalogUloga_has_Rad_Rad1` FOREIGN KEY (`IDRadKorisnickiNalog`) REFERENCES `Rad` (`idRada`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pise`
--

LOCK TABLES `Pise` WRITE;
/*!40000 ALTER TABLE `Pise` DISABLE KEYS */;
INSERT INTO `Pise` VALUES (1,3),(1,4),(1,5),(1,6),(2,7),(2,8),(2,9),(3,10),(3,11),(3,12),(4,13),(4,14),(5,15),(5,16),(6,17),(6,18),(6,19),(7,20),(8,21),(8,22),(9,23),(9,24),(10,25),(11,26),(11,27),(12,28),(12,29),(13,30),(13,31),(14,32),(15,33),(16,34),(17,35),(18,36),(19,37);
/*!40000 ALTER TABLE `Pise` ENABLE KEYS */;
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

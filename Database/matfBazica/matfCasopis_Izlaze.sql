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
-- Table structure for table `Izlaze`
--

DROP TABLE IF EXISTS `Izlaze`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Izlaze` (
  `idKonferencija` int(11) NOT NULL,
  `idSala` int(11) NOT NULL,
  `datum` date NOT NULL,
  `vreme` time NOT NULL,
  `radId` int(11) NOT NULL,
  `idKorisnikAutor` int(11) NOT NULL,
  PRIMARY KEY (`idKonferencija`,`idSala`,`radId`,`idKorisnikAutor`),
  KEY `fk_AutorRad_has_KonferencijaSala_KonferencijaSala1_idx` (`idKonferencija`,`idSala`),
  KEY `fk_AutorIzlaze_AutorRad1_idx` (`radId`,`idKorisnikAutor`),
  CONSTRAINT `fk_AutorIzlaze_AutorRad1` FOREIGN KEY (`radId`, `idKorisnikAutor`) REFERENCES `Pise` (`IDRadKorisnickiNalog`, `IDKorisnickiNalogRad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_AutorRad_has_KonferencijaSala_KonferencijaSala1` FOREIGN KEY (`idKonferencija`, `idSala`) REFERENCES `OdrzavaSe` (`IDKonferencijaSala`, `IDSalaKonferencija`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Izlaze`
--

LOCK TABLES `Izlaze` WRITE;
/*!40000 ALTER TABLE `Izlaze` DISABLE KEYS */;
INSERT INTO `Izlaze` VALUES (1,706,'2018-08-18','16:00:00',1,3),(1,706,'2018-08-18','17:00:00',3,10),(1,830,'2018-08-18','16:00:00',2,8);
/*!40000 ALTER TABLE `Izlaze` ENABLE KEYS */;
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

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
-- Table structure for table `Recenzija`
--

DROP TABLE IF EXISTS `Recenzija`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Recenzija` (
  `komentarZaAutora` text NOT NULL,
  `idKorisnik` int(11) NOT NULL,
  `komentarZaUrednika` text NOT NULL,
  `Verzija_idRada` int(11) NOT NULL,
  `Verzija_brojVerzije` int(11) NOT NULL,
  PRIMARY KEY (`idKorisnik`,`Verzija_idRada`,`Verzija_brojVerzije`),
  KEY `fk_Recenzija_KorisnickiNalog1_idx` (`idKorisnik`),
  KEY `fk_Recenzija_Verzija1_idx` (`Verzija_idRada`,`Verzija_brojVerzije`),
  CONSTRAINT `fk_Recenzija_KorisnickiNalog1` FOREIGN KEY (`idKorisnik`) REFERENCES `KorisnickiNalog` (`idKorisnickiNalog`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Recenzija_Verzija1` FOREIGN KEY (`Verzija_idRada`, `Verzija_brojVerzije`) REFERENCES `Verzija` (`idRada`, `brojVerzije`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recenzija`
--

LOCK TABLES `Recenzija` WRITE;
/*!40000 ALTER TABLE `Recenzija` DISABLE KEYS */;
/*!40000 ALTER TABLE `Recenzija` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-26 20:52:50

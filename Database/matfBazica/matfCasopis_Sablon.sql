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
-- Table structure for table `Sablon`
--

DROP TABLE IF EXISTS `Sablon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sablon` (
  `idSablon` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(45) NOT NULL,
  `sadrzaj` text NOT NULL,
  `idKorisikaAutora` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSablon`),
  KEY `fk_Sablon_KorisnickiNalog1_idx` (`idKorisikaAutora`),
  CONSTRAINT `fk_Sablon_KorisnickiNalog1` FOREIGN KEY (`idKorisikaAutora`) REFERENCES `KorisnickiNalog` (`idKorisnickiNalog`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sablon`
--

LOCK TABLES `Sablon` WRITE;
/*!40000 ALTER TABLE `Sablon` DISABLE KEYS */;
INSERT INTO `Sablon` VALUES (1,'Uspesno registrovanje','Uspesno ste se reistrovali',NULL),(2,'Uspesna promena podataka','Vasi podaci su uspesno poslati',NULL),(3,'Obavestenje o novopristiglom radu','Postovani urednice, vasoj oblasti dodeljen je jos jedan rad',NULL),(4,'Brisanje korisnika','Postovani, zelim da obrisem korisnika iz sistema. Ime: Prezime',NULL),(5,'Predlog za recenziranje','Postovani, da li ste u mogucnosti da\nrecenzirate rad pod nazivom: ',NULL),(6,'Odbijanje','Postovani, ne zelim da recenziram rad sa nazivom: ',NULL),(7,'Rad je prihvacen','Postovani, cestitamo! Vas rad je prihvacen.',NULL),(8,'Rad je odbijen','Postovani, Vas rad je odbijen jer....',NULL),(9,'Komentarisanje rada','Postovani, na Vas rad je ostavljen komentar.',NULL);
/*!40000 ALTER TABLE `Sablon` ENABLE KEYS */;
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

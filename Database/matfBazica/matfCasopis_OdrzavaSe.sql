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
-- Table structure for table `OdrzavaSe`
--

DROP TABLE IF EXISTS `OdrzavaSe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OdrzavaSe` (
  `IDKonferencijaSala` int(11) NOT NULL,
  `IDSalaKonferencija` int(11) NOT NULL,
  PRIMARY KEY (`IDKonferencijaSala`,`IDSalaKonferencija`),
  KEY `fk_Konferencija_has_Sala_Sala1_idx` (`IDSalaKonferencija`),
  KEY `fk_Konferencija_has_Sala_Konferencija1_idx` (`IDKonferencijaSala`),
  CONSTRAINT `fk_Konferencija_has_Sala_Konferencija1` FOREIGN KEY (`IDKonferencijaSala`) REFERENCES `Konferencija` (`idKonferencija`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Konferencija_has_Sala_Sala1` FOREIGN KEY (`IDSalaKonferencija`) REFERENCES `Sala` (`idSala`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OdrzavaSe`
--

LOCK TABLES `OdrzavaSe` WRITE;
/*!40000 ALTER TABLE `OdrzavaSe` DISABLE KEYS */;
INSERT INTO `OdrzavaSe` VALUES (1,706),(1,830);
/*!40000 ALTER TABLE `OdrzavaSe` ENABLE KEYS */;
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

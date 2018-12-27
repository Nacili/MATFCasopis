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
-- Table structure for table `Ima`
--

DROP TABLE IF EXISTS `Ima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ima` (
  `IDKorisnickiNalogUloga` int(11) NOT NULL,
  `vremeDobijanjaUloge` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IDUlogaKorisnickiNalog` int(11) NOT NULL,
  PRIMARY KEY (`IDKorisnickiNalogUloga`,`IDUlogaKorisnickiNalog`),
  KEY `fk_Uloga_has_Korisnicki nalog_Korisnicki nalog1_idx` (`IDKorisnickiNalogUloga`),
  KEY `fk_KorisnickiNalogUloga_Uloga1_idx` (`IDUlogaKorisnickiNalog`),
  CONSTRAINT `fk_KorisnickiNalogUloga_Uloga1` FOREIGN KEY (`IDUlogaKorisnickiNalog`) REFERENCES `Uloga` (`idUloga`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Uloga_has_Korisnicki nalog_Korisnicki nalog1` FOREIGN KEY (`IDKorisnickiNalogUloga`) REFERENCES `KorisnickiNalog` (`idKorisnickiNalog`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ima`
--

LOCK TABLES `Ima` WRITE;
/*!40000 ALTER TABLE `Ima` DISABLE KEYS */;
INSERT INTO `Ima` VALUES (1,'2018-12-26 19:18:32',1),(2,'2018-12-26 19:18:32',2),(3,'2018-12-26 19:23:26',5),(4,'2018-12-26 19:23:26',5),(5,'2018-12-26 19:23:26',5),(6,'2018-12-26 19:23:26',5),(7,'2018-12-26 19:46:34',5),(8,'2018-12-26 19:46:34',5),(9,'2018-12-26 19:46:34',5),(10,'2018-12-26 19:46:34',5),(11,'2018-12-26 19:46:35',5),(12,'2018-12-26 19:46:35',5),(13,'2018-12-26 19:46:35',5),(14,'2018-12-26 19:46:35',5),(15,'2018-12-26 19:46:35',5),(16,'2018-12-26 19:46:35',5),(17,'2018-12-26 19:46:35',5),(18,'2018-12-26 19:46:35',5),(19,'2018-12-26 19:46:35',5),(20,'2018-12-26 19:46:35',5),(21,'2018-12-26 19:46:35',5),(22,'2018-12-26 19:46:35',5),(23,'2018-12-26 19:46:35',5),(24,'2018-12-26 19:46:35',5),(25,'2018-12-26 19:46:35',5),(26,'2018-12-26 19:46:35',5),(27,'2018-12-26 19:46:35',5),(28,'2018-12-26 19:46:35',5),(29,'2018-12-26 19:46:35',5),(30,'2018-12-26 19:46:35',5),(31,'2018-12-26 19:46:35',5),(32,'2018-12-26 19:46:35',5),(33,'2018-12-26 19:46:35',5),(34,'2018-12-26 19:46:35',5),(35,'2018-12-26 19:46:35',5),(36,'2018-12-26 19:46:35',5),(37,'2018-12-26 19:46:35',5);
/*!40000 ALTER TABLE `Ima` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger Ima_update before update on Ima
for each row
begin
	signal sqlstate '45000' set message_text = 'Greska: Ne moze se update-ovati ova tabela';
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-26 20:52:50

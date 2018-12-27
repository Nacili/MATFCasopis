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
-- Table structure for table `KorisnickiNalog`
--

DROP TABLE IF EXISTS `KorisnickiNalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KorisnickiNalog` (
  `idKorisnickiNalog` int(11) NOT NULL AUTO_INCREMENT,
  `ime` varchar(45) NOT NULL,
  `prezime` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefon` varchar(45) DEFAULT NULL,
  `ptt` varchar(45) DEFAULT NULL,
  `poslednjeLoginVreme` timestamp NULL DEFAULT NULL,
  `adresa` varchar(45) DEFAULT NULL,
  `sifra` varchar(45) NOT NULL,
  PRIMARY KEY (`idKorisnickiNalog`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KorisnickiNalog`
--

LOCK TABLES `KorisnickiNalog` WRITE;
/*!40000 ALTER TABLE `KorisnickiNalog` DISABLE KEYS */;
INSERT INTO `KorisnickiNalog` VALUES (1,'Administrator','Administrator','admin@admin',NULL,NULL,NULL,NULL,'admin'),(2,'Gurednik','Gurednik','gurednik@gurednik',NULL,NULL,NULL,NULL,'gurednik'),(3,'Randall','Balestriero','randal@gmail.com',NULL,NULL,NULL,NULL,'randal'),(4,'Romain','Cosentino','romain@gmail.com',NULL,NULL,NULL,NULL,'romain'),(5,'Herve','Glotin','herve@gmail.com',NULL,NULL,NULL,NULL,'herve'),(6,'Richard','Baraniuk','richard@gmail.com',NULL,NULL,NULL,NULL,'richard'),(7,'Zeyuan','Allen-Zhu','zhu@gmail.com',NULL,NULL,NULL,NULL,'alenzhu'),(8,'Dadid','Simchi-Levi','david@gmail.com',NULL,NULL,NULL,NULL,'david'),(9,'Xinshang','Weng','weng@gmail.com',NULL,NULL,NULL,NULL,'wneg'),(10,'Pan','Li','pan@gmail.com',NULL,NULL,NULL,NULL,'pan'),(11,'Niao','He','niao@gmail.com',NULL,NULL,NULL,NULL,'niao'),(12,'Olgica','Milenkovic','olgica@gmail.com',NULL,NULL,NULL,NULL,'Milenkovic'),(13,'Riu','Shu','riu@gmail.com',NULL,NULL,NULL,NULL,'riushu'),(14,'Stefano','Ermon','stefanoe@gmail.com',NULL,NULL,NULL,NULL,'stefanoe'),(15,'Pieree-Alexandre','Mattei','pierrem@gmail.com',NULL,NULL,NULL,NULL,'pierrem'),(16,'Jes','Frellsen','jes@gmail.com',NULL,NULL,NULL,NULL,'jesfrel'),(17,'Fengchang','Ma','ma@gmail.com',NULL,NULL,NULL,NULL,'mafeng'),(18,'Ulas','Ayaz','ulas@gmail.com',NULL,NULL,NULL,NULL,'ulasa'),(19,'Sertac','Karaman','sertac@gmail.com',NULL,NULL,NULL,NULL,'sertac'),(20,'Diederik','Kingman','diederik@gmail.com',NULL,NULL,NULL,NULL,'diederik'),(21,'Mike','Vu','mikevu@gmail.com',NULL,NULL,NULL,NULL,'mikevu'),(22,'Noah','Goodman','noahg@gmail.com',NULL,NULL,NULL,NULL,'noahg'),(23,'Mario','Fritz','mariof@gmail.com',NULL,NULL,NULL,NULL,'mariof'),(24,'Rakshith','Shetty','shetty@gmail.com',NULL,NULL,NULL,NULL,'shetty'),(25,'Egor','Burkov','egorb@gmail.com',NULL,NULL,NULL,NULL,'egorb'),(26,'Bo','Zhang','zhang@gmail.com',NULL,NULL,NULL,NULL,'zhangbo'),(27,'Max','Welling','@gmail.com',NULL,NULL,NULL,NULL,''),(28,'Farzan','Farnia','farnia@gmail.com',NULL,NULL,NULL,NULL,'farnia'),(29,'David','Tse','tsed@gmail.com',NULL,NULL,NULL,NULL,'tsed'),(30,'Jonas','Adler','adlerj@gmail.com',NULL,NULL,NULL,NULL,''),(31,'Sebastian','Junz','junz@gmail.com',NULL,NULL,NULL,NULL,'sebjunz'),(32,'Boris','Muzellec','borism@gmail.com',NULL,NULL,NULL,NULL,'borism'),(33,'Riu','Bu','riubu@gmail.com',NULL,NULL,NULL,NULL,'buriu'),(34,'Gavin','Grey','gaving@gmail.com',NULL,NULL,NULL,NULL,'gaving'),(35,'Cem','Keskin','keskin@gmail.com',NULL,NULL,NULL,NULL,'keskin'),(36,'Ron','Banner','banner@gmail.com',NULL,NULL,NULL,NULL,'banner'),(37,'Wei','Chai','chai@gmail.com',NULL,NULL,NULL,NULL,'chaiw');
/*!40000 ALTER TABLE `KorisnickiNalog` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger KorisnickiNalog_insert_before before insert on KorisnickiNalog
for each row
begin
	declare em varchar(45);
    set em = (select email from KorisnickiNalog where email = new.email);
    if(em is not null) then
		signal sqlstate '45000' set message_text = 'Greska: Korisnik sa ovom email adresom je vec registrovan';
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger KorisnickiNalog_insert_after after insert on KorisnickiNalog
for each row
begin
        insert into Ima values (new.idKorisnickiNalog,now(),5);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger KorisnickiNalog_update before update on KorisnickiNalog
for each row
begin
	declare em varchar(45);
    set em = (select email from KorisnickiNalog where email = new.email and idKorisnickiNalog != old.idKorisnickiNalog);
    if(em is not null) then
		signal sqlstate '45000' set message_text = 'greska: Korisnik sa ovom email adresom je vec registrovan';
    end if;
    if(new.sifra is not null and new.sifra like '') then 
        signal sqlstate '45000' set message_text = 'greska: Sifra mora sadrzati karaktere';
    end if;
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

-- Dump completed on 2018-12-26 20:52:51

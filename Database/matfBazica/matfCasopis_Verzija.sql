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
-- Table structure for table `Verzija`
--

DROP TABLE IF EXISTS `Verzija`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Verzija` (
  `idRada` int(11) NOT NULL AUTO_INCREMENT,
  `pdfStorageLinkId` varchar(200) NOT NULL,
  `datum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `brojVerzije` int(11) NOT NULL,
  PRIMARY KEY (`idRada`,`brojVerzije`),
  CONSTRAINT `fk_Verzija_Rad1` FOREIGN KEY (`idRada`) REFERENCES `Rad` (`idRada`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Verzija`
--

LOCK TABLES `Verzija` WRITE;
/*!40000 ALTER TABLE `Verzija` DISABLE KEYS */;
INSERT INTO `Verzija` VALUES (1,'http://proceedings.mlr.press/v80/balestriero18a/balestriero18a.pdf','2018-12-26 19:46:23',1),(2,'http://papers.nips.cc/paper/7400-the-lingering-of-gradients-how-to-reuse-gradients-over-time.pdf','2018-12-26 19:46:34',1),(3,'http://papers.nips.cc/paper/7383-quadratic-decomposable-submodular-function-minimization.pdf','2018-12-26 19:46:35',1),(4,'http://papers.nips.cc/paper/7692-amortized-inference-regularization.pdf','2018-12-26 19:46:35',1),(5,'http://papers.nips.cc/paper/7642-leveraging-the-exact-likelihood-of-deep-latent-variable-models.pdf','2018-12-26 19:46:35',1),(6,'http://papers.nips.cc/paper/8171-invertibility-of-convolutional-generative-networks-from-partial-measurements.pdf','2018-12-26 19:46:35',1),(7,'http://papers.nips.cc/paper/8224-glow-generative-flow-with-invertible-1x1-convolutions.pdf','2018-12-26 19:46:35',1),(8,'http://papers.nips.cc/paper/7801-multimodal-generative-models-for-scalable-weakly-supervised-learning.pdf','2018-12-26 19:46:35',1),(9,'http://papers.nips.cc/paper/7997-adversarial-scene-editing-automatic-object-removal-from-weak-supervision.pdf','2018-12-26 19:46:35',1),(10,'http://papers.nips.cc/paper/7859-deep-neural-networks-with-box-convolutions.pdf','2018-12-26 19:46:35',1),(11,'http://papers.nips.cc/paper/7846-graphical-generative-adversarial-networks.pdf','2018-12-26 19:46:35',1),(12,'http://papers.nips.cc/paper/7771-a-convex-duality-framework-for-gans.pdf','2018-12-26 19:46:35',1),(13,'http://papers.nips.cc/paper/7909-banach-wasserstein-gan.pdf','2018-12-26 19:46:35',1),(14,'http://papers.nips.cc/paper/8226-generalizing-point-embeddings-using-the-wasserstein-space-of-elliptical-distributions.pdf','2018-12-26 19:46:35',1),(15,'http://papers.nips.cc/paper/7362-pointcnn-convolution-on-x-transformed-points.pdf','2018-12-26 19:46:35',1),(16,'http://papers.nips.cc/paper/7553-moonshine-distilling-with-cheap-convolutions.pdf','2018-12-26 19:46:35',1),(17,'http://papers.nips.cc/paper/7470-splinenets-continuous-neural-decision-graphs.pdf','2018-12-26 19:46:35',1),(18,'http://papers.nips.cc/paper/7761-scalable-methods-for-8-bit-training-of-neural-networks.pdf','2018-12-26 19:46:35',1),(19,'http://papers.nips.cc/paper/7454-collaborative-learning-for-deep-neural-networks.pdf','2018-12-26 19:46:35',1);
/*!40000 ALTER TABLE `Verzija` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger Verzija_insert_b before insert on Verzija 
for each row
begin
    set new.datum = now();
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger Verzija_insert after insert on Verzija 
for each row
begin
    if (new.brojVerzije <> 1) then
		update Rad set pdfStorageLinkId = new.pdfStorageLinkId where idRada = new.idRada;
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

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
-- Table structure for table `Rad`
--

DROP TABLE IF EXISTS `Rad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rad` (
  `idRada` int(11) NOT NULL AUTO_INCREMENT,
  `naslov` varchar(200) NOT NULL,
  `pdfStorageLinkId` varchar(200) NOT NULL,
  `status` varchar(45) NOT NULL,
  `objavljen` tinyint(1) NOT NULL,
  `IzdanjeCasopisa_issn` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`idRada`),
  KEY `fk_Rad_IzdanjeCasopisa1_idx` (`IzdanjeCasopisa_issn`),
  CONSTRAINT `fk_Rad_IzdanjeCasopisa1` FOREIGN KEY (`IzdanjeCasopisa_issn`) REFERENCES `IzdanjeCasopisa` (`issn`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rad`
--

LOCK TABLES `Rad` WRITE;
/*!40000 ALTER TABLE `Rad` DISABLE KEYS */;
INSERT INTO `Rad` VALUES (1,'Spline Filters For End-to-End Deep Learning','http://proceedings.mlr.press/v80/balestriero18a/balestriero18a.pdf','prihvacen',1,'A1B2-C3D4'),(2,'The Lingering of Gradients: How to Reuse Gradients Over Time','http://papers.nips.cc/paper/7400-the-lingering-of-gradients-how-to-reuse-gradients-over-time.pdf','prihvacen',1,'A1B2-C3D4'),(3,'Quadratic Decomposable Submodular Function Minimization','http://papers.nips.cc/paper/7383-quadratic-decomposable-submodular-function-minimization.pdf','prihvacen',1,'A1B2-C3D4'),(4,'Amortized Inference Regularization','http://papers.nips.cc/paper/7692-amortized-inference-regularization.pdf','prihvacen',1,'A1B2-C3D4'),(5,'Leveraging the Exact Likelihood of Deep Latent Variable Models','http://papers.nips.cc/paper/7642-leveraging-the-exact-likelihood-of-deep-latent-variable-models.pdf','prihvacen',1,'A1B2-C3D4'),(6,'Invertibility of Convolutional Generative Networks from Partial Measurements','http://papers.nips.cc/paper/8171-invertibility-of-convolutional-generative-networks-from-partial-measurements.pdf','prihvacen',1,'A1B2-C3D4'),(7,'Glow: Generative Flow with Invertible 1x1 Convolutions ','http://papers.nips.cc/paper/8224-glow-generative-flow-with-invertible-1x1-convolutions.pdf','prijavljen',0,NULL),(8,'Multimodal Generative Models for Scalable Weakly-Supervised Learning','http://papers.nips.cc/paper/7801-multimodal-generative-models-for-scalable-weakly-supervised-learning.pdf','prijavljen',0,NULL),(9,'Adversarial Scene Editing: Automatic Object Removal from Weak Supervision','http://papers.nips.cc/paper/7997-adversarial-scene-editing-automatic-object-removal-from-weak-supervision.pdf','prijavljen',0,NULL),(10,'Deep Neural Networks with Box Convolutions','http://papers.nips.cc/paper/7859-deep-neural-networks-with-box-convolutions.pdf','prijavljen',0,NULL),(11,'Graphical Generative Adversarial Networks','http://papers.nips.cc/paper/7846-graphical-generative-adversarial-networks.pdf','prijavljen',0,NULL),(12,'A Convex Duality Framework for GANs ','http://papers.nips.cc/paper/7771-a-convex-duality-framework-for-gans.pdf','prijavljen',0,NULL),(13,'Banach Wasserstein GAN','http://papers.nips.cc/paper/7909-banach-wasserstein-gan.pdf','prijavljen',0,NULL),(14,'Generalizing Point Embeddings using the Wasserstein Space of Elliptical Distributions','http://papers.nips.cc/paper/8226-generalizing-point-embeddings-using-the-wasserstein-space-of-elliptical-distributions.pdf','prijavljen',0,NULL),(15,'PointCNN: Convolution On X-Transformed Points','http://papers.nips.cc/paper/7362-pointcnn-convolution-on-x-transformed-points.pdf','prijavljen',0,NULL),(16,'Moonshine: Distilling with Cheap Convolutions','http://papers.nips.cc/paper/7553-moonshine-distilling-with-cheap-convolutions.pdf','prijavljen',0,NULL),(17,'SplineNets: Continuous Neural Decision Graphs','http://papers.nips.cc/paper/7470-splinenets-continuous-neural-decision-graphs.pdf','prihvacen',1,'AB12-CD34'),(18,'Scalable methods for 8-bit training of neural networks','http://papers.nips.cc/paper/7761-scalable-methods-for-8-bit-training-of-neural-networks.pdf','prihvacen',1,'AB12-CD34'),(19,'Collaborative Learning for Deep Neural Networks','http://papers.nips.cc/paper/7454-collaborative-learning-for-deep-neural-networks.pdf','prihvacen',1,'AB12-CD34');
/*!40000 ALTER TABLE `Rad` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger Rad_insert after insert on Rad 
for each row
begin
    insert into Verzija values(new.idRada,new.pdfStorageLinkId,now(),1);
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

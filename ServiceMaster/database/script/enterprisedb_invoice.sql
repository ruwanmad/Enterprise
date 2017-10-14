-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: enterprisedb
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice` (
  `invoice_number` varchar(15) NOT NULL,
  `isActive` int(11) DEFAULT '1',
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `sale_code` varchar(15) NOT NULL,
  PRIMARY KEY (`invoice_number`),
  KEY `fk_invoice_sale1_idx` (`sale_code`),
  CONSTRAINT `fk_invoice_sale1` FOREIGN KEY (`sale_code`) REFERENCES `sale` (`sale_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES ('INV1003',NULL,'2017-10-06','22:52:46',1,NULL,NULL,NULL,'SVR1001'),('INV1004',NULL,'2017-10-06','23:09:46',1,NULL,NULL,NULL,'DRS1007'),('INV1005',NULL,'2017-10-07','02:30:20',1,NULL,NULL,NULL,'SVR1002'),('INV1006',NULL,'2017-10-07','14:43:35',1,NULL,NULL,NULL,'DRS1008'),('INV1007',NULL,'2017-10-07','14:49:40',1,NULL,NULL,NULL,'SVR1003'),('INV1008',NULL,'2017-10-07','21:51:59',1,NULL,NULL,NULL,'SVR1004'),('INV1009',NULL,'2017-10-08','00:16:18',1,NULL,NULL,NULL,'SVR1005'),('INV1010',NULL,'2017-10-08','10:42:59',1,NULL,NULL,NULL,'SVR1006'),('INV1011',NULL,'2017-10-08','13:30:22',1,NULL,NULL,NULL,'DRS1009'),('INV1012',NULL,'2017-10-14','16:31:00',1,NULL,NULL,NULL,'DRS1010'),('INV1013',NULL,'2017-10-14','16:32:20',1,NULL,NULL,NULL,'SVR1007');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-14 16:36:48

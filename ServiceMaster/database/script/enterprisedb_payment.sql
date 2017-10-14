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
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `payment_code` varchar(15) NOT NULL,
  `amount` float DEFAULT NULL,
  `isActive` int(11) DEFAULT '1',
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(150) DEFAULT NULL,
  `payment_type_code` varchar(15) NOT NULL,
  `invoice_number` varchar(15) NOT NULL,
  PRIMARY KEY (`payment_code`),
  KEY `fk_payment_payment_type1_idx` (`payment_type_code`),
  KEY `fk_payment_invoice1_idx` (`invoice_number`),
  CONSTRAINT `fk_payment_invoice1` FOREIGN KEY (`invoice_number`) REFERENCES `invoice` (`invoice_number`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_payment_payment_type1` FOREIGN KEY (`payment_type_code`) REFERENCES `payment_type` (`payment_type_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES ('PAY1002',300,NULL,'2017-10-06','23:01:13',1,NULL,NULL,NULL,NULL,'PTY1000','INV1003'),('PAY1003',350,NULL,'2017-10-06','23:09:55',1,NULL,NULL,NULL,NULL,'PTY1000','INV1004'),('PAY1004',100,NULL,'2017-10-07','02:30:42',1,NULL,NULL,NULL,NULL,'PTY1000','INV1005'),('PAY1005',200,NULL,'2017-10-07','02:30:49',1,NULL,NULL,NULL,NULL,'PTY1000','INV1005'),('PAY1006',350,NULL,'2017-10-07','14:43:50',1,NULL,NULL,NULL,NULL,'PTY1000','INV1006'),('PAY1007',300,NULL,'2017-10-07','14:49:51',1,NULL,NULL,NULL,NULL,'PTY1000','INV1007'),('PAY1008',800,NULL,'2017-10-07','23:58:01',1,NULL,NULL,NULL,NULL,'PTY1000','INV1008'),('PAY1009',2900,NULL,'2017-10-08','10:43:07',1,NULL,NULL,NULL,NULL,'PTY1000','INV1010'),('PAY1010',2900,NULL,'2017-10-08','13:30:35',1,NULL,NULL,NULL,NULL,'PTY1000','INV1011'),('PAY1011',650,NULL,'2017-10-14','15:00:47',1,NULL,NULL,NULL,'Number of credit days : 15. Due Date : 2017-10-29','PTY1002','INV1009'),('PAY1012',300,NULL,'2017-10-14','16:33:00',1,NULL,NULL,NULL,'Number of credit days : 15. Due Date : 2017-10-29','PTY1002','INV1013');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-14 16:36:55

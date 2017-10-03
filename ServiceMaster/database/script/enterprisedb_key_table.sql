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
-- Table structure for table `key_table`
--

DROP TABLE IF EXISTS `key_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `key_table` (
  `key_id` int(11) NOT NULL AUTO_INCREMENT,
  `key_code` varchar(5) DEFAULT NULL,
  `key_number` int(11) DEFAULT NULL,
  `key_remark` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `key_table`
--

LOCK TABLES `key_table` WRITE;
/*!40000 ALTER TABLE `key_table` DISABLE KEYS */;
INSERT INTO `key_table` VALUES (1,'ADD',1004,'Address codes','2017-01-01','12:00:00',1,'2017-10-01','18:38:46',1),(2,'TEL',1004,'Telephone codes','2017-01-01','12:00:00',1,'2017-10-01','18:39:06',1),(3,'BPT',1004,'Business partner codes','2017-01-01','12:00:00',1,'2017-10-01','18:46:38',1),(4,'STO',1001,'Storage','2017-09-09','20:37:13',1,NULL,NULL,NULL),(5,'RAC',1001,'Racks','2017-09-09','20:37:36',1,NULL,NULL,NULL),(6,'SLT',1002,'Rack slots','2017-09-09','20:37:58',1,'2017-09-09','20:38:15',1),(7,'LOC',1003,'Location','2017-09-09','20:38:44',1,'2017-09-09','20:39:12',1),(8,'PRN',1001,'Printer','2017-09-09','20:39:31',1,NULL,NULL,NULL),(9,'CAT',1005,'Category','2017-09-09','20:40:02',1,'2017-09-10','21:02:05',1),(10,'SUB',1039,'Sub Category','2017-09-09','20:47:52',1,'2017-09-10','21:03:18',1),(11,'ITP',1002,'Item type','2017-09-09','20:48:29',1,'2017-09-09','20:48:44',1),(13,'VHT',1001,'Vehicle type','2017-09-09','22:25:22',1,NULL,NULL,NULL),(14,'VEH',1002,'Vehivle','2017-09-09','22:25:50',1,'2017-09-17','12:41:07',1),(30,'ITM',1570,'Item codes','2017-09-10','22:40:57',1,'2017-10-01','19:34:11',1),(31,'DRS',1002,'Direct sale','2017-10-04','00:18:49',1,NULL,NULL,NULL),(32,'INV',1002,'Invoices','2017-10-04','00:18:50',1,NULL,NULL,NULL),(33,'PAY',1002,'Payment','2017-10-04','00:19:13',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `key_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-04  1:24:30

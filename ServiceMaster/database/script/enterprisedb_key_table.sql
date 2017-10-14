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
  `isActive` int(11) DEFAULT '1',
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `key_table`
--

LOCK TABLES `key_table` WRITE;
/*!40000 ALTER TABLE `key_table` DISABLE KEYS */;
INSERT INTO `key_table` VALUES (1,'STO',1002,'Storage',NULL,'2017-10-05','15:34:11',1,NULL,NULL,NULL),(2,'RAC',1002,'Racks',NULL,'2017-10-05','15:35:40',1,NULL,NULL,NULL),(3,'SLT',1002,'Rack slots',NULL,'2017-10-05','15:36:24',1,NULL,NULL,NULL),(4,'LOC',1007,'Location',NULL,'2017-10-05','15:46:42',1,'2017-10-05','15:47:29',1),(5,'PRN',1002,'Printer',NULL,'2017-10-05','15:48:52',1,NULL,NULL,NULL),(6,'BOM',1002,'Bill of metirial codes',NULL,'2017-10-05','19:29:46',1,NULL,NULL,NULL),(7,'BOI',1002,'Bill of metirial item code',NULL,'2017-10-05','19:29:47',1,NULL,NULL,NULL),(8,'DRS',1011,'Direct sale',NULL,'2017-10-05','19:42:00',1,'2017-10-14','16:30:59',1),(9,'INV',1014,'Invoices',NULL,'2017-10-05','19:51:59',1,'2017-10-14','16:32:20',1),(10,'PAY',1013,'Payment',NULL,'2017-10-05','19:58:28',1,'2017-10-14','16:33:00',1),(11,'SVR',1008,'Service',NULL,'2017-10-06','22:52:36',1,'2017-10-14','16:32:16',1),(12,'BPT',1007,'Business partner code',NULL,'2017-10-07','17:18:16',1,'2017-10-07','17:35:31',1),(13,'ITM',1570,'Item code',1,'2017-10-07','17:18:16',1,NULL,NULL,NULL),(14,'ACC',1010,'Account codes',NULL,'2017-10-10','00:44:46',1,'2017-10-14','14:23:55',1);
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

-- Dump completed on 2017-10-14 16:36:57

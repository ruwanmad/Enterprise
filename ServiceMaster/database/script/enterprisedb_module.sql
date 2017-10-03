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
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module` (
  `module_id` int(11) NOT NULL,
  `module_code` varchar(10) NOT NULL,
  `module_name` varchar(45) DEFAULT NULL,
  `module_icon` mediumblob,
  `isShortcut_added` int(11) DEFAULT '0',
  `isActive` int(11) DEFAULT NULL,
  `isMaximized` int(11) DEFAULT '0',
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (1,'1','Users','',0,1,0,'2016-01-01','12:00:00',1,'2017-10-01','18:46:03',1,'Users module'),(2,'2','User Privilages','',0,1,0,'2016-01-01','12:00:00',1,'2017-10-01','18:46:03',1,'User privilages module'),(3,'3','Storage','',0,1,0,'2016-01-01','12:00:00',1,'2017-10-01','18:46:03',1,'Storage module'),(4,'4','Storage Racks','',0,1,0,'2016-01-01','12:00:00',1,'2017-10-01','18:46:03',1,'Storage Racks module'),(5,'5','Rack Slots','',0,1,0,'2016-01-01','12:00:00',1,'2017-10-01','18:46:03',1,'Rack Slots module'),(6,'6','Locations','',0,1,0,'2016-01-01','12:00:00',1,'2017-10-01','18:46:03',1,'Locations module'),(7,'7','Category','',0,1,0,'2016-01-01','12:00:00',1,'2017-10-01','18:46:03',1,'Category module'),(8,'8','Item Type','',0,1,0,'2016-01-01','12:00:00',1,'2017-10-01','18:46:03',1,'Sub category type module'),(9,'9','Sub Category','',0,1,0,'2016-01-01','12:00:00',1,'2017-10-01','18:46:03',1,'Sub category module'),(10,'10','Items','',1,1,0,'2016-01-01','12:00:00',1,'2017-10-01','18:46:03',1,'Items module'),(11,'11','Business Partner','',1,1,0,'2016-01-01','12:00:00',1,'2017-10-01','18:46:03',1,'Business partner module'),(12,'12','Printers','',0,1,0,'2016-01-01','12:00:00',1,'2017-10-01','18:46:03',1,'Printers module'),(13,'13','Vehicle Type','',0,1,0,'2016-01-01','12:00:00',1,'2017-10-01','18:46:03',1,'Vehivle Type module'),(14,'14','Vehicles','',0,1,0,'2016-01-01','12:00:00',1,'2017-10-01','18:46:03',1,'Vehivles module'),(15,'15','Add Shortcuts','',0,1,0,'2016-01-01','12:00:00',1,'2017-10-01','18:46:03',1,'Add Shortcuts module'),(16,'16','Service','',1,1,1,'2016-01-01','12:00:00',1,'2017-10-01','18:46:03',1,'Service module'),(17,'17','BOM','',0,1,0,'2016-01-01','12:00:00',1,'2017-10-01','18:46:03',1,'BOM module'),(18,'18','GRN','...',1,1,0,'2016-01-01','12:00:00',1,'2017-10-01','18:46:03',1,'Good receive note module'),(19,'19','Sale','...',1,1,0,'2016-01-01','12:00:00',1,'2017-10-01','18:46:03',1,'Direct sale module'),(20,'20','Service History','?',0,1,0,'2016-01-01','12:00:00',1,'2017-10-01','18:46:03',1,'Service history module'),(21,'21','Sales Returns','?',1,1,0,'2016-01-01','12:00:00',1,'2017-10-01','18:46:03',1,'Sales returns module'),(22,'22','Accounts','?',0,1,0,'2016-01-01','12:00:00',1,'2017-10-01','18:46:03',1,'Create accounts module');
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-04  1:24:19

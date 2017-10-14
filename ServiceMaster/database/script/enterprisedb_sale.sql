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
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale` (
  `sale_code` varchar(15) NOT NULL,
  `previous_milage` float DEFAULT NULL,
  `sub_total` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `grand_total` float DEFAULT NULL,
  `discounted` int(11) DEFAULT NULL,
  `isActive` int(11) DEFAULT '1',
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `service_bay_code` varchar(15) NOT NULL,
  `vehicle_code` varchar(15) NOT NULL,
  `status_id` int(11) NOT NULL,
  `current_milage` float DEFAULT NULL,
  `next_milage` float DEFAULT NULL,
  PRIMARY KEY (`sale_code`),
  KEY `fk_service_service_bay1_idx` (`service_bay_code`),
  KEY `fk_service_vehicle1_idx` (`vehicle_code`),
  KEY `fk_sales_sale_status1_idx` (`status_id`),
  CONSTRAINT `fk_sales_sale_status1` FOREIGN KEY (`status_id`) REFERENCES `sale_status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_service_service_bay1` FOREIGN KEY (`service_bay_code`) REFERENCES `service_bay` (`service_bay_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_service_vehicle1` FOREIGN KEY (`vehicle_code`) REFERENCES `vehicle` (`vehicle_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES ('DRS1007',NULL,350,0,350,0,NULL,'2017-10-06','23:09:45',1,NULL,NULL,NULL,NULL,'LOC1001','VEH1000',5,0,NULL),('DRS1008',0,350,0,350,0,NULL,'2017-10-07','14:43:35',1,NULL,NULL,NULL,NULL,'LOC1001','VEH1000',5,0,NULL),('DRS1009',0,2900,0,2900,0,NULL,'2017-10-08','13:30:20',1,NULL,NULL,NULL,NULL,'LOC1001','VEH1000',5,0,NULL),('DRS1010',NULL,0,0,0,0,NULL,'2017-10-14','16:31:00',1,NULL,NULL,NULL,NULL,'LOC1001','VEH1000',5,0,NULL),('SVR1001',NULL,180,0,180,0,NULL,'2017-10-06','22:52:36',1,'2017-10-07','16:20:50',1,NULL,'LOC1001','VEH1000',5,25000,NULL),('SVR1002',25100,300,0,300,0,NULL,'2017-10-07','02:28:25',1,NULL,NULL,NULL,NULL,'LOC1001','VEH1000',5,25100,30100),('SVR1003',32000,300,0,300,0,NULL,'2017-10-07','14:49:23',1,NULL,NULL,NULL,NULL,'LOC1001','VEH1000',5,32000,37000),('SVR1004',25100,800,0,800,0,NULL,'2017-10-07','18:24:55',1,'2017-10-07','23:57:32',1,NULL,'LOC1001','VEH1000',5,25100,30100),('SVR1005',NULL,650,0,650,0,NULL,'2017-10-08','00:16:13',1,NULL,NULL,NULL,NULL,'LOC1001','VEH1000',5,257257,262257),('SVR1006',25133,2900,0,2900,0,NULL,'2017-10-08','10:42:53',1,NULL,NULL,NULL,NULL,'LOC1001','VEH1001',5,25133,30133),('SVR1007',NULL,300,0,300,0,NULL,'2017-10-14','16:32:16',1,NULL,NULL,NULL,NULL,'LOC1001','VEH1000',5,25100,27600);
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
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

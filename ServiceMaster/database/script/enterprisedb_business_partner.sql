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
-- Table structure for table `business_partner`
--

DROP TABLE IF EXISTS `business_partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_partner` (
  `business_partner_code` varchar(15) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `search_key` varchar(45) DEFAULT NULL,
  `nic` varchar(45) DEFAULT NULL,
  `birth_day` date DEFAULT NULL,
  `isCustomer` tinyint(1) NOT NULL DEFAULT '0',
  `isSupplier` tinyint(1) NOT NULL DEFAULT '0',
  `isEmployee` tinyint(1) NOT NULL DEFAULT '0',
  `isActive` int(11) DEFAULT '1',
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`business_partner_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_partner`
--

LOCK TABLES `business_partner` WRITE;
/*!40000 ALTER TABLE `business_partner` DISABLE KEYS */;
INSERT INTO `business_partner` VALUES ('BPT1000','SYSTEM','ADMINISTRATOR','','123456789V','1984-09-01',1,1,1,0,'2017-01-01','12:00:00',1,NULL,NULL,NULL,'ruwan madawala'),('BPT1001','RUWAN','MADAWALA',NULL,'842450497V','2017-10-07',1,1,0,1,NULL,NULL,NULL,'2017-10-14','14:23:20',1,'RUWAN MADAWALA'),('BPT1002','CHARITH','KUMARASINGHE',NULL,'782456987V','2017-10-07',1,1,0,1,NULL,NULL,NULL,'2017-10-14','14:23:55',1,'CHARITH KUMARASINGHE'),('BPT1003','SERVICE','MAN 1',NULL,'','2017-10-07',0,0,1,1,'2017-10-07','17:19:20',1,NULL,NULL,NULL,'service man 1'),('BPT1004','SERVICE','MAN 2',NULL,'','2017-10-07',0,0,1,1,'2017-10-07','17:34:40',1,NULL,NULL,NULL,'service man 2'),('BPT1005','SERVICE','MAN 3',NULL,'','2017-10-07',0,0,1,1,'2017-10-07','17:35:04',1,NULL,NULL,NULL,'service man 3'),('BPT1006','SERVICE','MAN 4',NULL,'','2017-10-07',0,0,1,1,'2017-10-07','17:35:31',1,NULL,NULL,NULL,'service man 4');
/*!40000 ALTER TABLE `business_partner` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-14 16:36:47

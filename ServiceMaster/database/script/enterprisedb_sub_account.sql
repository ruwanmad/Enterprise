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
-- Table structure for table `sub_account`
--

DROP TABLE IF EXISTS `sub_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_account` (
  `code` varchar(15) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `isActive` int(11) DEFAULT '1',
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `main_account_code` varchar(15) NOT NULL,
  PRIMARY KEY (`code`),
  KEY `fk_sub_account_main_account1_idx` (`main_account_code`),
  CONSTRAINT `fk_sub_account_main_account1` FOREIGN KEY (`main_account_code`) REFERENCES `main_account` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_account`
--

LOCK TABLES `sub_account` WRITE;
/*!40000 ALTER TABLE `sub_account` DISABLE KEYS */;
INSERT INTO `sub_account` VALUES ('SAC1000','CASH',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'CASH ACCOUNT','MAC1001'),('SAC1001','BANK',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'BANK ACCOUNT','MAC1001'),('SAC1002','RECIEVABLES',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'RECIEVABLES ACCOUNT','MAC1001'),('SAC1003','PAYABLES',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'PAYABLES ACCOUNT','MAC1000'),('SAC1004','SALES',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SALES ACCOUNT','MAC1005'),('SAC1005','PURCHASES',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'PURCHASES ACCOUNT','MAC1004'),('SAC1006','CURRENT ASSETS',1,'2017-01-01','12:00:00',1,NULL,NULL,NULL,'CURRENT ASSETS','MAC1001'),('SAC1007','CURRENT LIABILITIES',1,'2017-01-01','12:00:00',1,NULL,NULL,NULL,'CURRENT LIABILITIES','MAC1000');
/*!40000 ALTER TABLE `sub_account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-14 16:36:53

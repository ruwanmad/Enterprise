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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `account_code` varchar(15) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `isActive` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `business_partner_business_partner_code` varchar(15) DEFAULT NULL,
  `sub_account_code` varchar(15) NOT NULL,
  PRIMARY KEY (`account_code`),
  KEY `fk_account_business_partner1_idx` (`business_partner_business_partner_code`),
  KEY `fk_account_sub_account1_idx` (`sub_account_code`),
  CONSTRAINT `fk_account_business_partner1` FOREIGN KEY (`business_partner_business_partner_code`) REFERENCES `business_partner` (`business_partner_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_account_sub_account1` FOREIGN KEY (`sub_account_code`) REFERENCES `sub_account` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('ACC1001','CASH',1,NULL,NULL,NULL,'2017-09-30','16:02:11',1,'CASH ACCOUNT',NULL,'SAC1000'),('ACC1002','RUWAN MADAWALA',1,'2017-09-30','16:25:51',1,NULL,NULL,NULL,'Debit account for RUWAN MADAWALA','BPT1001','SAC1002'),('ACC1003','RUWAN MADAWALA',1,'2017-09-30','16:26:31',1,NULL,NULL,NULL,'Credit account for RUWAN MADAWALA','BPT1001','SAC1003'),('ACC1004','COMMERCIAL BANK',1,'2017-09-30','18:20:20',1,NULL,NULL,NULL,'023035001335',NULL,'SAC1001'),('ACC1005','UNALLOCATED RECEIPTS',1,'2017-09-30','18:38:22',1,NULL,NULL,NULL,'UNALLOCATED RECEIPTS FROM CUSTOMERS',NULL,'SAC1007'),('ACC1006','SALES',1,'2017-09-30','18:57:40',1,NULL,NULL,NULL,'DEFAULT SALES ACCOUNT',NULL,'SAC1004'),('ACC1007','SAMANTHA AMARASINGHA',1,'2017-10-01','18:46:39',1,NULL,NULL,NULL,'DEBIT ACCOUNT FOR SAMANTHA AMARASINGHA','BPT1003','SAC1002');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-04  1:24:28

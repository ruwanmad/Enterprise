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
-- Table structure for table `account_posting`
--

DROP TABLE IF EXISTS `account_posting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_posting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `narration` varchar(250) DEFAULT NULL,
  `debit` float DEFAULT NULL,
  `credit` float DEFAULT NULL,
  `number_of_days` int(11) DEFAULT NULL,
  `cheque_date` date DEFAULT NULL,
  `posted_date` date DEFAULT NULL,
  `isActive` int(11) DEFAULT '1',
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `invoice_number` varchar(15) DEFAULT NULL,
  `grn_code` varchar(15) DEFAULT NULL,
  `business_partner_code` varchar(15) DEFAULT NULL,
  `account_code` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_account_posting_invoice1_idx` (`invoice_number`),
  KEY `fk_account_posting_account1_idx` (`account_code`),
  KEY `fk_account_posting_grn1_idx` (`grn_code`),
  KEY `fk_account_posting_business_partner1_idx` (`business_partner_code`),
  CONSTRAINT `fk_account_posting_account1` FOREIGN KEY (`account_code`) REFERENCES `account` (`account_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_account_posting_business_partner1` FOREIGN KEY (`business_partner_code`) REFERENCES `business_partner` (`business_partner_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_account_posting_grn1` FOREIGN KEY (`grn_code`) REFERENCES `grn` (`grn_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_account_posting_invoice1` FOREIGN KEY (`invoice_number`) REFERENCES `invoice` (`invoice_number`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_posting`
--

LOCK TABLES `account_posting` WRITE;
/*!40000 ALTER TABLE `account_posting` DISABLE KEYS */;
INSERT INTO `account_posting` VALUES (12,'Credit settlemnt for SVR1007',300,NULL,NULL,NULL,'2017-10-14',NULL,'2017-10-14','16:33:04',1,NULL,NULL,NULL,NULL,'INV1013',NULL,NULL,'ACC1006'),(13,'Credit settlemnt for SVR1007',NULL,300,NULL,NULL,'2017-10-14',NULL,'2017-10-14','16:33:04',1,NULL,NULL,NULL,NULL,'INV1013',NULL,NULL,'ACC1001');
/*!40000 ALTER TABLE `account_posting` ENABLE KEYS */;
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

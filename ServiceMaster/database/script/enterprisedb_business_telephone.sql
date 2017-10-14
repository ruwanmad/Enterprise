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
-- Table structure for table `business_telephone`
--

DROP TABLE IF EXISTS `business_telephone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_telephone` (
  `telephone_number_telephone_number_code` varchar(15) NOT NULL,
  `business_partner_business_partner_code` varchar(15) NOT NULL,
  KEY `fk_business_telephone_telephone_number1_idx` (`telephone_number_telephone_number_code`),
  KEY `fk_business_telephone_business_partner1_idx` (`business_partner_business_partner_code`),
  CONSTRAINT `fk_business_telephone_business_partner1` FOREIGN KEY (`business_partner_business_partner_code`) REFERENCES `business_partner` (`business_partner_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_business_telephone_telephone_number1` FOREIGN KEY (`telephone_number_telephone_number_code`) REFERENCES `telephone_number` (`telephone_number_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_telephone`
--

LOCK TABLES `business_telephone` WRITE;
/*!40000 ALTER TABLE `business_telephone` DISABLE KEYS */;
INSERT INTO `business_telephone` VALUES ('TEL1001','BPT1001'),('TEL1002','BPT1002'),('TEL1003','BPT1003'),('TEL1000','BPT1004'),('TEL1000','BPT1005'),('TEL1000','BPT1006');
/*!40000 ALTER TABLE `business_telephone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-14 16:36:54

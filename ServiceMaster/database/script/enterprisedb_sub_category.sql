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
-- Table structure for table `sub_category`
--

DROP TABLE IF EXISTS `sub_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_category` (
  `sub_category_code` varchar(15) NOT NULL,
  `sub_category_name` varchar(100) DEFAULT NULL,
  `isActive` int(11) DEFAULT '0',
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `category_category_code` varchar(15) NOT NULL,
  `printer_printer_code` varchar(10) NOT NULL,
  PRIMARY KEY (`sub_category_code`),
  KEY `fk_sub_category_category1_idx` (`category_category_code`),
  KEY `fk_sub_category_printer1_idx` (`printer_printer_code`),
  CONSTRAINT `fk_sub_category_category1` FOREIGN KEY (`category_category_code`) REFERENCES `category` (`category_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sub_category_printer1` FOREIGN KEY (`printer_printer_code`) REFERENCES `printer` (`printer_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_category`
--

LOCK TABLES `sub_category` WRITE;
/*!40000 ALTER TABLE `sub_category` DISABLE KEYS */;
INSERT INTO `sub_category` VALUES ('SUB1000','BRACK OIL',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'BRACK OIL','CAT1002','PRN1000'),('SUB1001','ENGIN OIL',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ENGIN OIL','CAT1002','PRN1000'),('SUB1002','GEAR OIL',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'GEAR OIL','CAT1002','PRN1000'),('SUB1003','GREESE',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'GREESE','CAT1002','PRN1000'),('SUB1004','POWER STEERING  OIL',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'POWER STEERING  OIL','CAT1002','PRN1000'),('SUB1005','AC FILTER',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER','CAT1001','PRN1000'),('SUB1006','AIR FILTER',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER','CAT1001','PRN1000'),('SUB1007','FUEL  FILTER',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'FUEL  FILTER','CAT1001','PRN1000'),('SUB1008','OIL FILTER',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER','CAT1001','PRN1000'),('SUB1009','PAWER STEERING FILTER',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'PAWER STEERING FILTER','CAT1001','PRN1000'),('SUB1010','AIR FRESHENER',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FRESHENER','CAT1000','PRN1000'),('SUB1011','BATTERY ACID',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'BATTERY ACID','CAT1000','PRN1000'),('SUB1012','CAR WASH',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'CAR WASH','CAT1000','PRN1000'),('SUB1013','DISTILLED WATER',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'DISTILLED WATER','CAT1000','PRN1000'),('SUB1014','EFI CLEANER',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'EFI CLEANER','CAT1000','PRN1000'),('SUB1015','ENGINE FLUSH',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ENGINE FLUSH','CAT1000','PRN1000'),('SUB1016','GLASS CLEANER',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'GLASS CLEANER','CAT1000','PRN1000'),('SUB1017','INJECTOR CLEANER',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'INJECTOR CLEANER','CAT1000','PRN1000'),('SUB1018','MOTOR FLUSH',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MOTOR FLUSH','CAT1000','PRN1000'),('SUB1019','OIL TREATMENT',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL TREATMENT','CAT1000','PRN1000'),('SUB1020','RADIATOR COOLANT',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'RADIATOR COOLANT','CAT1000','PRN1000'),('SUB1021','REDIATOR FLUSH',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'REDIATOR FLUSH','CAT1000','PRN1000'),('SUB1022','UNDER WASH CLEANER',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'UNDER WASH CLEANER','CAT1000','PRN1000'),('SUB1023','UPHOLSTERY CLEANER',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'UPHOLSTERY CLEANER','CAT1000','PRN1000'),('SUB1024','WINDSCREEN CLEANER',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'WINDSCREEN CLEANER','CAT1000','PRN1000'),('SUB1025','CARPET',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'CARPET','CAT1005','PRN1000'),('SUB1026','GREES  NIPPLE',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'GREES  NIPPLE','CAT1005','PRN1000'),('SUB1027','RADIATOR CAP',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'RADIATOR CAP','CAT1005','PRN1000'),('SUB1028','SAMP NUTS',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SAMP NUTS','CAT1005','PRN1000'),('SUB1029','SILANSER END',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SILANSER END','CAT1005','PRN1000'),('SUB1030','STEERING WEEL COVER',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'STEERING  WEEL COVER','CAT1005','PRN1000'),('SUB1031','WIPER BLADE',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'WIPER BLADE','CAT1005','PRN1000'),('SUB1032','BODY WASH',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'BODY WASH','CAT1004','PRN1000'),('SUB1033','CVT OIL CHANGING',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'CVT OIL CHANGING','CAT1004','PRN1000'),('SUB1034','ENGINE WASH',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ENGINE WASH','CAT1004','PRN1000'),('SUB1035','FULL SERVICE',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'FULL SERVICE','CAT1004','PRN1000'),('SUB1036','INTERIOR CLEAN',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'INTERIOR CLEAN','CAT1004','PRN1000'),('SUB1037','UNDERWASH',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'UNDERWASH','CAT1004','PRN1000'),('SUB1038','VACUUM CLEAN',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'VACUUM CLEAN','CAT1004','PRN1000'),('SUB1039','TOWEL',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOWEL','CAT1003','PRN1000');
/*!40000 ALTER TABLE `sub_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-04  1:24:22

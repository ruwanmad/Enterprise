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
-- Table structure for table `bom_item`
--

DROP TABLE IF EXISTS `bom_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bom_item` (
  `bom_bom_code` varchar(15) NOT NULL,
  `item_item_code` varchar(15) NOT NULL,
  `bom_item_quantity` float DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `selling_price` float DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `bom_item_code` varchar(15) NOT NULL,
  `uom_uom_code` varchar(15) NOT NULL,
  PRIMARY KEY (`bom_item_code`),
  KEY `fk_bom_item_bom1_idx` (`bom_bom_code`),
  KEY `fk_bom_item_item1_idx` (`item_item_code`),
  KEY `fk_bom_item_uom1_idx` (`uom_uom_code`),
  CONSTRAINT `fk_bom_item_bom1` FOREIGN KEY (`bom_bom_code`) REFERENCES `bom` (`bom_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bom_item_item1` FOREIGN KEY (`item_item_code`) REFERENCES `item` (`item_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bom_item_uom1` FOREIGN KEY (`uom_uom_code`) REFERENCES `uom` (`uom_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bom_item`
--

LOCK TABLES `bom_item` WRITE;
/*!40000 ALTER TABLE `bom_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `bom_item` ENABLE KEYS */;
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

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
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `invoice_invoice_number` varchar(15) DEFAULT NULL,
  `grn_grn_code` varchar(15) DEFAULT NULL,
  `account_account_code` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_account_posting_invoice1_idx` (`invoice_invoice_number`),
  KEY `fk_account_posting_account1_idx` (`account_account_code`),
  KEY `fk_account_posting_grn1_idx` (`grn_grn_code`),
  CONSTRAINT `fk_account_posting_account1` FOREIGN KEY (`account_account_code`) REFERENCES `account` (`account_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_account_posting_grn1` FOREIGN KEY (`grn_grn_code`) REFERENCES `grn` (`grn_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_account_posting_invoice1` FOREIGN KEY (`invoice_invoice_number`) REFERENCES `invoice` (`invoice_number`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_posting`
--

LOCK TABLES `account_posting` WRITE;
/*!40000 ALTER TABLE `account_posting` DISABLE KEYS */;
INSERT INTO `account_posting` VALUES (1,'Cash settlemnt for DRS1001',350,NULL,NULL,NULL,'2017-10-04','2017-10-04','00:19:14',1,NULL,NULL,NULL,NULL,'INV1001',NULL,'ACC1001'),(2,'Cash settlemnt for DRS1001',NULL,350,NULL,NULL,'2017-10-04','2017-10-04','00:19:15',1,NULL,NULL,NULL,NULL,'INV1001',NULL,'ACC1006');
/*!40000 ALTER TABLE `account_posting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `address_code` varchar(15) NOT NULL,
  `adress_line_1` varchar(100) DEFAULT NULL,
  `adress_line_2` varchar(100) DEFAULT NULL,
  `adress_line_3` varchar(100) DEFAULT NULL,
  `isActive` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`address_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES ('ADD1000','Admin Add 1','Admin Add 2','Admin Add 3',1,'2017-01-01','12:00:00',1,NULL,NULL,NULL,'Admin Address'),('ADD1001','279/1','KALUPAHANA','PORUWADANDA',NULL,'2017-09-09','20:50:43',1,NULL,NULL,NULL,NULL),('ADD1002','25A','Bamunumulla','Bandaragama',NULL,'2017-09-17','12:40:40',1,NULL,NULL,NULL,NULL),('ADD1003','hahingoda','ehaliyagoda','',NULL,'2017-10-01','18:38:46',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(100) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES (1,'BOC','2017-01-01','12:00:00',1,NULL,NULL,NULL,'BANK OF CEYLON'),(2,'PEOPLE\'S BANK','2017-01-01','12:00:00',1,NULL,NULL,NULL,'PEOPLE\'S BANK'),(3,'COMMERCIAL BANK','2017-01-01','12:00:00',1,NULL,NULL,NULL,'COMMERCIAL BANK OF CEYLON PLC'),(4,'SAMPATH BANK','2017-01-01','12:00:00',1,NULL,NULL,NULL,'SAMPATH BANK PLC'),(5,'HNB','2017-01-01','12:00:00',1,NULL,NULL,NULL,'HATTON NATIONAL BANK PLC'),(6,'SEYLAN BANK','2017-01-01','12:00:00',1,NULL,NULL,NULL,'SEYLAN BANK PLC'),(7,'NTB','2017-01-01','12:00:00',1,NULL,NULL,NULL,'NATIONS TRUST BANK PLC'),(8,'NDB','2017-01-01','12:00:00',1,NULL,NULL,NULL,'NATIONAL DEVELOPMENT BANK PLC'),(9,'DFCC BANK','2017-01-01','12:00:00',1,NULL,NULL,NULL,'DFCC BANK PLC'),(10,'HSBC','2017-01-01','12:00:00',1,NULL,NULL,NULL,'THE HONG KONG AND SHANGHAI BANKING CORPORATION LTD (HSBC)'),(11,'CARGILLS BANK','2017-01-01','12:00:00',1,NULL,NULL,NULL,'CARGILLS BANK LTD'),(12,'UNION BANK','2017-01-01','12:00:00',1,NULL,NULL,NULL,'UNION BANK OF COLOMBO PLC'),(13,'PAN ASIA BANK','2017-01-01','12:00:00',1,NULL,NULL,NULL,'PAN ASIA BANKING CORPORATION PLC'),(14,'AMANA BANK','2017-01-01','12:00:00',1,NULL,NULL,NULL,'AMANA BANK'),(15,'AXIS BANK','2017-01-01','12:00:00',1,NULL,NULL,NULL,'AXIS BANK LTD'),(16,'CITIBANK','2017-01-01','12:00:00',1,NULL,NULL,NULL,'CITIBANK N.A.'),(17,'DEUTSCHE BANK','2017-01-01','12:00:00',1,NULL,NULL,NULL,'DEUTSCHE BANK AG'),(18,'HABIB BANK','2017-01-01','12:00:00',1,NULL,NULL,NULL,'HABIB BANK LTD'),(19,'ICICI BANK','2017-01-01','12:00:00',1,NULL,NULL,NULL,'ICICI BANK LTD'),(20,'INDIAN BANK','2017-01-01','12:00:00',1,NULL,NULL,NULL,'INDIAN BANK'),(21,'INDIAN OVERSEAS BANK','2017-01-01','12:00:00',1,NULL,NULL,NULL,'INDIAN OVERSEAS BANK'),(22,'MCB BANK','2017-01-01','12:00:00',1,NULL,NULL,NULL,'MCB BANK LTD'),(23,'PUBLIC BANK','2017-01-01','12:00:00',1,NULL,NULL,NULL,'PUBLIC BANK BERHAD'),(24,'STANDARD CHARTERED BANK','2017-01-01','12:00:00',1,NULL,NULL,NULL,'STANDARD CHARTERED BANK'),(25,'STATE BANK OF INDIA','2017-01-01','12:00:00',1,NULL,NULL,NULL,'STATE BANK OF INDIA');
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bom`
--

DROP TABLE IF EXISTS `bom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bom` (
  `bom_code` varchar(15) NOT NULL,
  `bom_name` varchar(45) DEFAULT NULL,
  `selling_price` float DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `item_item_code` varchar(15) NOT NULL,
  `isActive` int(11) DEFAULT NULL,
  PRIMARY KEY (`bom_code`),
  KEY `fk_bom_item1_idx` (`item_item_code`),
  CONSTRAINT `fk_bom_item1` FOREIGN KEY (`item_item_code`) REFERENCES `item` (`item_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bom`
--

LOCK TABLES `bom` WRITE;
/*!40000 ALTER TABLE `bom` DISABLE KEYS */;
/*!40000 ALTER TABLE `bom` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `business_address`
--

DROP TABLE IF EXISTS `business_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_address` (
  `address_address_code` varchar(15) NOT NULL,
  `business_partner_business_partner_code` varchar(15) NOT NULL,
  KEY `fk_business_address_address1_idx` (`address_address_code`),
  KEY `fk_business_address_business_partner1_idx` (`business_partner_business_partner_code`),
  CONSTRAINT `fk_business_address_address1` FOREIGN KEY (`address_address_code`) REFERENCES `address` (`address_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_business_address_business_partner1` FOREIGN KEY (`business_partner_business_partner_code`) REFERENCES `business_partner` (`business_partner_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_address`
--

LOCK TABLES `business_address` WRITE;
/*!40000 ALTER TABLE `business_address` DISABLE KEYS */;
INSERT INTO `business_address` VALUES ('ADD1000','BPT1000'),('ADD1001','BPT1001'),('ADD1002','BPT1002'),('ADD1003','BPT1003');
/*!40000 ALTER TABLE `business_address` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `business_partner` VALUES ('BPT1000','SYSTEM','ADMINISTRATOR','123456789V','1984-09-01',1,1,0,0,'2017-01-01','12:00:00',1,NULL,NULL,NULL,'ruwan madawala'),('BPT1001','RUWAN','MADAWALA','842450497V','1984-09-01',1,1,1,1,NULL,NULL,NULL,'2017-09-30','16:25:42',1,'ruwan madawala'),('BPT1002','CHARITH','KUMARASINGHE','14611611313','1980-03-19',1,1,0,1,'2017-09-17','12:40:56',1,NULL,NULL,NULL,''),('BPT1003','SAMANTHA','AMARASINGHA','','2017-10-01',1,0,1,1,'2017-10-01','18:46:39',1,NULL,NULL,NULL,'owner');
/*!40000 ALTER TABLE `business_partner` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `business_telephone` VALUES ('TEL1000','BPT1000'),('TEL1001','BPT1001'),('TEL1002','BPT1002'),('TEL1003','BPT1003');
/*!40000 ALTER TABLE `business_telephone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_code` varchar(15) NOT NULL,
  `category_name` varchar(20) DEFAULT NULL,
  `isActive` int(11) DEFAULT '1',
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('CAT1000','CHEMICLE',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'CHEMICLE'),('CAT1001','FILTERS',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'FILTERS'),('CAT1002','LUBRICANTS',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'LUBRICANTS'),('CAT1003','MICHELANIOUS',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MICHELANIOUS'),('CAT1004','SERVICES',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SERVICES'),('CAT1005','SPARE PARTS',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SPARE PARTS');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grn`
--

DROP TABLE IF EXISTS `grn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grn` (
  `grn_code` varchar(15) NOT NULL,
  `grn_reference` varchar(45) NOT NULL,
  `grn_time` time DEFAULT NULL,
  `grn_date` date DEFAULT NULL,
  `handed_over_by` varchar(45) DEFAULT NULL,
  `batch` varchar(15) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `business_partner_business_partner_code` varchar(15) NOT NULL,
  PRIMARY KEY (`grn_code`),
  KEY `fk_grn_business_partner1_idx` (`business_partner_business_partner_code`),
  CONSTRAINT `fk_grn_business_partner1` FOREIGN KEY (`business_partner_business_partner_code`) REFERENCES `business_partner` (`business_partner_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grn`
--

LOCK TABLES `grn` WRITE;
/*!40000 ALTER TABLE `grn` DISABLE KEYS */;
/*!40000 ALTER TABLE `grn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grn_line`
--

DROP TABLE IF EXISTS `grn_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grn_line` (
  `grn_line_id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_price` float DEFAULT NULL,
  `received_quantity` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `sub_total` float DEFAULT NULL,
  `cost_price` float DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `grn_grn_code` varchar(15) NOT NULL,
  `item_item_code` varchar(15) NOT NULL,
  PRIMARY KEY (`grn_line_id`),
  KEY `fk_grn_line_grn2_idx` (`grn_grn_code`),
  KEY `fk_grn_line_item2_idx` (`item_item_code`),
  CONSTRAINT `fk_grn_line_grn2` FOREIGN KEY (`grn_grn_code`) REFERENCES `grn` (`grn_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_grn_line_item2` FOREIGN KEY (`item_item_code`) REFERENCES `item` (`item_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grn_line`
--

LOCK TABLES `grn_line` WRITE;
/*!40000 ALTER TABLE `grn_line` DISABLE KEYS */;
/*!40000 ALTER TABLE `grn_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice` (
  `invoice_number` varchar(15) NOT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `sale_sale_code` varchar(15) NOT NULL,
  PRIMARY KEY (`invoice_number`),
  KEY `fk_invoice_sale1_idx` (`sale_sale_code`),
  CONSTRAINT `fk_invoice_sale1` FOREIGN KEY (`sale_sale_code`) REFERENCES `sale` (`sale_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES ('INV1001','2017-10-04','00:18:50',1,NULL,NULL,NULL,'DRS1001');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_method`
--

DROP TABLE IF EXISTS `issue_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_method` (
  `issue_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_method_code` varchar(10) DEFAULT NULL,
  `issue_method_desciption` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`issue_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_method`
--

LOCK TABLES `issue_method` WRITE;
/*!40000 ALTER TABLE `issue_method` DISABLE KEYS */;
INSERT INTO `issue_method` VALUES (1,'FIFO','First in first out','2017-01-01','12:00:00',1,NULL,NULL,NULL,'First in first out issue method'),(2,'LIFO','Last in first out','2017-01-01','12:00:00',1,NULL,NULL,NULL,'Last in first out issue method'),(3,'AVG','Average weighted','2017-01-01','12:00:00',1,NULL,NULL,NULL,'Average weighted issue method');
/*!40000 ALTER TABLE `issue_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `item_code` varchar(15) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `issue_method` varchar(10) DEFAULT NULL,
  `reorder_quantity` float DEFAULT NULL,
  `item_quantity` float DEFAULT NULL,
  `isPhysical` int(11) DEFAULT '1',
  `isActive` int(11) DEFAULT '1',
  `from_bom` tinyint(1) DEFAULT '0',
  `creadet_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `sub_category_sub_category_code` varchar(15) NOT NULL,
  `rack_slot_rack_slot_code` varchar(10) NOT NULL,
  `buying_uom` varchar(15) NOT NULL,
  `selling_uom` varchar(15) NOT NULL,
  `issue_method_issue_method_id` int(11) NOT NULL,
  `base_item` varchar(15) DEFAULT NULL,
  `item_type_item_type_code` varchar(15) NOT NULL,
  `item_brand_brand_code` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`item_code`),
  KEY `fk_item_sub_category1_idx` (`sub_category_sub_category_code`),
  KEY `fk_item_rack_slot1_idx` (`rack_slot_rack_slot_code`),
  KEY `fk_item_uom1_idx` (`buying_uom`),
  KEY `fk_item_uom2_idx` (`selling_uom`),
  KEY `fk_item_issue_method1_idx` (`issue_method_issue_method_id`),
  KEY `fk_item_item1_idx` (`base_item`),
  KEY `fk_item_item_type1_idx` (`item_type_item_type_code`),
  KEY `fk_item_item_brand1_idx` (`item_brand_brand_code`),
  CONSTRAINT `fk_item_issue_method1` FOREIGN KEY (`issue_method_issue_method_id`) REFERENCES `issue_method` (`issue_method_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_item1` FOREIGN KEY (`base_item`) REFERENCES `item` (`item_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_item_brand1` FOREIGN KEY (`item_brand_brand_code`) REFERENCES `item_brand` (`brand_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_item_type1` FOREIGN KEY (`item_type_item_type_code`) REFERENCES `item_type` (`item_type_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_rack_slot1` FOREIGN KEY (`rack_slot_rack_slot_code`) REFERENCES `rack_slot` (`rack_slot_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_sub_category1` FOREIGN KEY (`sub_category_sub_category_code`) REFERENCES `sub_category` (`sub_category_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_uom1` FOREIGN KEY (`buying_uom`) REFERENCES `uom` (`uom_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_uom2` FOREIGN KEY (`selling_uom`) REFERENCES `uom` (`uom_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES ('ITM1000','GREESE MP2','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'GREESE MP2','SUB1003','SLT1000','UOM1003','UOM1004',1,NULL,'ITP1001',NULL),('ITM1001','GREESE MP2 100G',NULL,10,100,1,1,0,'2017-10-01','18:33:38',1,NULL,NULL,NULL,'GREESE MP2 100G','SUB1003','SLT1000','UOM1003','UOM1004',1,NULL,'ITP1000','BRN1055'),('ITM1002','DIFFERENTIAL GEAR OIL 85W90 GL-5','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'DIFFERENTIAL GEAR OIL 85W90 GL-5','SUB1002','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1003','GEAR OIL MP140 1L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'GEAR OIL MP140 1L','SUB1002','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1004','GL5  EP 80W90 5L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'GL5  EP 80W90 5L','SUB1002','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1005','GL5 EP GEAR OIL 80W90','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'GL5 EP GEAR OIL 80W90','SUB1002','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1006','HONDA CVT GEAR OIL 3.5L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HONDA CVT GEAR OIL 3.5L','SUB1002','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1007','LIMITED SLIP GEAR OIL 80W-90','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'LIMITED SLIP GEAR OIL 80W-90','SUB1002','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1008','LSD GEAR OIL GL5 85W90 1L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'LSD GEAR OIL GL5 85W90 1L','SUB1002','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1009','TOYOTA LIMITED SLIP GEAR OIL','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA LIMITED SLIP GEAR OIL','SUB1002','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1010','VALVOLINE 80W-90 (LSD) GEAR OIL','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'VALVOLINE 80W-90 (LSD) GEAR OIL','SUB1002','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1011','HEAVY DUTY DIESEL ENGINE OIL 15W40 5L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HEAVY DUTY DIESEL ENGINE OIL 15W40 5L','SUB1001','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1012','FULL SERVICE CAR',NULL,0,1,1,1,0,'2017-10-01','19:34:12',1,NULL,NULL,NULL,'FULL SERVICE FOR CARS','SUB1035','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1013','LANKA SUPER DS30 5L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'LANKA SUPER DS30 5L','SUB1001','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1014','MOBIL 10W-40 1L SN/CF','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MOBIL 10W-40 1L SN/CF','SUB1001','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1015','MOBIL 10W-40 4L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MOBIL 10W-40 4L','SUB1001','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1016','MOBIL FULLY SYNTHETIC 5W30 1L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MOBIL FULLY SYNTHETIC 5W30 1L','SUB1001','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1017','MOBIL FULLY SYNTHETIC 5W50 4L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MOBIL FULLY SYNTHETIC 5W50 4L','SUB1001','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1018','MOBIL MX 15W40 1L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MOBIL MX 15W40 1L','SUB1001','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1019','MOBIL SUPER 1000 1L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MOBIL SUPER 1000 1L','SUB1001','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1020','MOBIL SUPER 1000 4L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MOBIL SUPER 1000 4L','SUB1001','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1021','MOBIL SUPER 2000 1L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MOBIL SUPER 2000 1L','SUB1001','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1022','MOTOR OIL DIESEL CF 10W30 4L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MOTOR OIL DIESEL CF 10W30 4L','SUB1001','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1023','MOTOR OIL SL/CF 10W30 1L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MOTOR OIL SL/CF 10W30 1L','SUB1001','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1024','SUPER PLUS 40 1L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUPER PLUS 40 1L','SUB1001','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1025','TURBO HEAVY DUTY DIESEL ENGINE OIL 15W40 1L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TORBO HEAVY DUTY DIESEL ENGINE OIL 15W40 1L','SUB1001','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1026','TURBO HEAVY DUTY DIESEL ENGINE OIL 15W40 5L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TURBO HEAVY DUTY DIESEL ENGINE OIL 15W40 5L','SUB1001','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1027','TOYOTA SL/CF MOTOR OIL 4L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA SL/CF MOTOR OIL 4L','SUB1001','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1028','TOYOTA MOTER OIL SL/CF 10W30 4L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA MOTER OIL SL/CF 10W30 4L','SUB1001','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1029','CALTEX BRAK OIL 250ML','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'CALTEX BRAK OIL 250ML','SUB1000','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1030','CALTEX BRAK OIL 500ML','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'CALTEX BRAK OIL 500ML','SUB1000','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1031','LOCKHEED 250ML','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'LOCKHEED 250ML','SUB1000','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1032','LOCKHEED 500ML','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'LOCKHEED 500ML','SUB1000','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1033','ATF & POWER STEERING OIL 1L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ATF & POWER STEERING OIL 1L','SUB1002','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1034','ATF & POWER STEERING OIL 250ML','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ATF & POWER STEERING OIL 250ML','SUB1002','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1035','ATF & POWER STEERING OIL 500ML','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ATF & POWER STEERING OIL 500ML','SUB1002','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1036','ATF D2 TOYOTA','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ATF D2 TOYOTA','SUB1002','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1037','AUTOMATIC TRANSMISSION  MOBIL','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AUTOMATIC TRANSMISSION  MOBIL','SUB1002','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1038','FULL SYNTHETIC ATF-WS','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'FULL SYNTHETIC ATF-WS','SUB1002','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1039','HAVOLINE ATF-J','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HAVOLINE ATF-J','SUB1002','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1040','MULTIPURPOSE ATF MOBIL','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MULTIPURPOSE ATF MOBIL','SUB1002','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1041','SYNTHETIC CVT FLUID BG','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SYNTHETIC CVT FLUID BG','SUB1002','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1042','TOYOTA ATF T4 1L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA ATF T4 1L','SUB1002','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1043','TOYOTA WS ATF 4L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA WS ATF 4L','SUB1002','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1044','TOYOTA CVT FLUID 4L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA CVT FLUID 4L','SUB1002','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1045','ASSY OIL FILTER TC0101','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ASSY OIL FILTER TC0101','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1046','AUDI OIL FILTER O004V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AUDI OIL FILTER O004V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1047','DAIHATSU OIL FILTER C703AV','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'DAIHATSU OIL FILTER C703AV','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1048','DAIHATSU OIL FILTER C932V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'DAIHATSU OIL FILTER C932V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1049','DAIMLER BENZ OIL FILTER TO11','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'DAIMLER BENZ OIL FILTER TO11','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1050','ELEMENT OIL FILTER WO1040','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ELEMENT OIL FILTER WO1040','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1051','GENUINE OIL FILTER 37010','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'GENUINE OIL FILTER 37010','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1052','GENUINE OIL FILTER 40060','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'GENUINE OIL FILTER 40060','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1053','GENUINE TOYOTA OIL FILTER 10003','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'GENUINE TOYOTA OIL FILTER 10003','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1054','HINO OIL FILTER O605V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HINO OIL FILTER O605V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1055','HONDA OIL FILTER 15400-PLM-A02','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HONDA OIL FILTER 15400-PLM-A02','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1056','HONDA OIL FILTER C804V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HONDA OIL FILTER C804V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1057','HONDA OIL FILTER C806V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HONDA OIL FILTER C806V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1058','HONDA OIL FILTER C808V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HONDA OIL FILTER C808V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1059','HONDA OIL FILTER C809V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HONDA OIL FILTER C809V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1060','ISUZU OIL FILTER  C525N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ISUZU OIL FILTER  C525N','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1061','ISUZU OIL FILTER C502V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ISUZU OIL FILTER C502V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1062','ISUZU OIL FILTER C508A','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ISUZU OIL FILTER C508A','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1063','ISUZU OIL FILTER C508AN','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ISUZU OIL FILTER C508AN','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1064','ISUZU OIL FILTER C512V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ISUZU OIL FILTER C512V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1065','ISUZU OIL FILTER C518N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ISUZU OIL FILTER C518N','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1066','ISUZU OIL FILTER C519N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ISUZU OIL FILTER C519N','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1067','ISUZU OIL FILTER C521V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ISUZU OIL FILTER C521V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1068','ISUZU OIL FILTER C522N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ISUZU OIL FILTER C522N','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1069','ISUZU OIL FILTER C525V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ISUZU OIL FILTER C525V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1070','ISUZU OIL FILTER O502AV','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ISUZU OIL FILTER O502AV','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1071','ISUZU OIL FILTER O503V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ISUZU OIL FILTER O503V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1072','ISUZU OIL FILTER O504V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ISUZU OIL FILTER O504V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1073','MAHINDRA OIL FILTER','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAHINDRA OIL FILTER','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1074','MAZDA OIL FILTER C304V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA OIL FILTER C304V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1075','MAZDA OIL FILTER C307V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA OIL FILTER C307V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1076','MAZDA OIL FILTER C405V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA OIL FILTER C405V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1077','MAZDA OIL FILTER C406V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA OIL FILTER C406V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1078','MAZDA OIL FILTER C409N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA OIL FILTER C409N','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1079','MAZDA OIL FILTER C411N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA OIL FILTER C411N','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1080','MAZDA OIL FILTER C411V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA OIL FILTER C411V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1081','MAZDA OIL FILTER C412N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA OIL FILTER C412N','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1082','MAZDA OIL FILTER C412V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA OIL FILTER C412V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1083','MAZDA OIL FILTER C416V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA OIL FILTER C416V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1084','MAZDA OIL FILTER C417V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA OIL FILTER C417V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1085','MAZDA OIL FILTER C418V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA OIL FILTER C418V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1086','MAZDA OIL FILTER C506V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA OIL FILTER C506V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1087','MAZDA OIL FILTER C901V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA OIL FILTER C901V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1088','MERCEDES BENZ OIL FILTER KO12','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MERCEDES BENZ OIL FILTER KO12','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1089','MITSUBISHI OIL FILTER','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI OIL FILTER','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1090','MITSUBISHI OIL FILTER C303N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI OIL FILTER C303N','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1091','MITSUBISHI OIL FILTER C303V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI OIL FILTER C303V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1092','MITSUBISHI OIL FILTER C306N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI OIL FILTER C306N','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1093','MITSUBISHI OIL FILTER C306V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI OIL FILTER C306V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1094','MITSUBISHI OIL FILTER C308V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI OIL FILTER C308V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1095','MITSUBISHI OIL FILTER C312V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI OIL FILTER C312V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1096','MITSUBISHI OIL FILTER C313V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI OIL FILTER C313V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1097','MITSUBISHI OIL FILTER C316V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI OIL FILTER C316V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1098','MITSUBISHI OIL FILTER C317V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI OIL FILTER C317V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1099','MITSUBISHI OIL FILTER C407V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI OIL FILTER C407V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1100','MITSUBISHI OIL FILTER C503V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI OIL FILTER C503V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1101','MITSUBISHI OIL FILTER O306V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI OIL FILTER O306V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1102','NISSAN OIL FILTER C204V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN OIL FILTER C204V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1103','NISSAN OIL FILTER C205V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN OIL FILTER C205V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1104','NISSAN OIL FILTER C206N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN OIL FILTER C206N','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1105','NISSAN OIL FILTER C206V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN OIL FILTER C206V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1106','NISSAN OIL FILTER C207N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN OIL FILTER C207N','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1107','NISSAN OIL FILTER C207V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN OIL FILTER C207V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1108','NISSAN OIL FILTER C209N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN OIL FILTER C209N','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1109','NISSAN OIL FILTER C209V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN OIL FILTER C209V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1110','NISSAN OIL FILTER C211V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN OIL FILTER C211V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1111','NISSAN OIL FILTER C212V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN OIL FILTER C212V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1112','NISSAN OIL FILTER C218V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN OIL FILTER C218V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1113','NISSAN OIL FILTER C224V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN OIL FILTER C224V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1114','NISSAN OIL FILTER C225V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN OIL FILTER C225V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1115','NISSAN OIL FILTER C226N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN OIL FILTER C226N','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1116','NISSAN OIL FILTER C226V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN OIL FILTER C226V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1117','NISSAN OIL FILTER O203V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN OIL FILTER O203V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1118','NISSAN OIL FILTER O206V',NULL,10,1,1,1,0,'2017-10-01','18:34:33',1,NULL,NULL,NULL,'NISSAN OIL FILTER O206V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000','BRN1046'),('ITM1119','OIL FILTER','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1120','OIL FILTER  ABL/YUJIN/ WB178','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER  ABL/YUJIN/ WB178','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1121','OIL FILTER (KIA) SORENTO IPEO 795','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER (KIA) SORENTO IPEO 795','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1122','OIL FILTER ABL/CHANGAN/FAW WB7009','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER ABL/CHANGAN/FAW WB7009','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1123','OIL FILTER C110N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER C110N','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1124','OIL FILTER C1132','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER C1132','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1125','OIL FILTER C1515','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER C1515','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1126','OIL FILTER C1523','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER C1523','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1127','OIL FILTER C415V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER C415V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1128','OIL FILTER C502N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER C502N','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1129','OIL FILTER C805N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER C805N','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1130','OIL FILTER C805V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER C805V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1131','OIL FILTER CHANGN/YUJIN/JX707','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER CHANGN/YUJIN/JX707','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1132','OIL FILTER CHERRY QQ JXO705','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER CHERRY QQ JXO705','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1133','OIL FILTER EO2624','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER EO2624','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1134','OIL FILTER FAW/FOTON JXO814D','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER FAW/FOTON JXO814D','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1135','OIL FILTER FOTON/ABL/JX1008','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER FOTON/ABL/JX1008','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1136','OIL FILTER FUDA /ATCO','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER FUDA /ATCO','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1137','OIL FILTER JAC/ATCO/ABL DX150','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER JAC/ATCO/ABL DX150','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1138','OIL FILTER JAC/FAW  0805D','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER JAC/FAW  0805D','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1139','OIL FILTER JAC/FOTON/FAW WB202','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER JAC/FOTON/FAW WB202','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1140','OIL FILTER JAC/FOTON/JX1008A','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER JAC/FOTON/JX1008A','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1141','OIL FILTER JX1011','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER JX1011','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1142','OIL FILTER JX-1023','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER JX-1023','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1143','OIL FILTER JXO706A','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER JXO706A','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1144','OIL FILTER JXO707','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER JXO707','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1145','OIL FILTER LS923','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER LS923','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1146','OIL FILTER O1301','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER O1301','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1147','OIL FILTER O1502','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER O1502','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1148','OIL FILTER O306N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER O306N','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1149','OIL FILTER O308N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER O308N','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1150','OIL FILTER OC110 BENZ','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER OC110 BENZ','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1151','OIL FILTER OX123','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER OX123','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1152','OIL FILTER OX38D','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER OX38D','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1153','OIL FILTER PEUGEOT LS468','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER PEUGEOT LS468','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1154','OIL FILTER PEUGEOT MC2851','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OIL FILTER PEUGEOT MC2851','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1155','SUZUKI OIL FILTER','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUZUKI OIL FILTER','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1156','SUZUKI OIL FILTER C931V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUZUKI OIL FILTER C931V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1157','SUZUKI OIL FILTER C933V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUZUKI OIL FILTER C933V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1158','TOYOTA OIL FILTER','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1159','TOYOTA OIL FILTER 20003','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER 20003','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1160','TOYOTA OIL FILTER 30001','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER 30001','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1161','TOYOTA OIL FILTER 38020','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER 38020','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1162','TOYOTA OIL FILTER 41010','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER 41010','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1163','TOYOTA OIL FILTER C09V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER C09V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1164','TOYOTA OIL FILTER C101V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER C101V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1165','TOYOTA OIL FILTER C102V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER C102V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1166','TOYOTA OIL FILTER C103V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER C103V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1167','TOYOTA OIL FILTER C106V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER C106V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1168','TOYOTA OIL FILTER C110V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER C110V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1169','TOYOTA OIL FILTER C111V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER C111V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1170','TOYOTA OIL FILTER C112N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER C112N','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1171','TOYOTA OIL FILTER C112V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER C112V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1172','TOYOTA OIL FILTER C113V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER C113V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1173','TOYOTA OIL FILTER C114V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER C114V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1174','TOYOTA OIL FILTER C115N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER C115N','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1175','TOYOTA OIL FILTER C115V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER C115V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1176','TOYOTA OIL FILTER C116V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER C116V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1177','TOYOTA OIL FILTER O110V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER O110V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1178','TOYOTA OIL FILTER O116V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER O116V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1179','TOYOTA OIL FILTER O117V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER O117V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1180','TOYOTA OIL FILTER O119V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER O119V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1181','TOYOTA OIL FILTER O120V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER O120V','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1182','TOYOTA OIL FILTER YZZB2','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER YZZB2','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1183','TOYOTA OIL FILTER YZZC2','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER YZZC2','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1184','TOYOTA OIL FILTER YZZC3','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA OIL FILTER YZZC3','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1185','YUIL OIL FILTER','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'YUIL OIL FILTER','SUB1008','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1186','BOSH F/F FC6205','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'BOSH F/F FC6205','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1187','DAIHATSU FUEL FILTER FC707AV','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'DAIHATSU FUEL FILTER FC707AV','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1188','DAIHATSU FUEL FILTER FC713V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'DAIHATSU FUEL FILTER FC713V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1189','ELEMENT FUEL FILTER WO1190','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ELEMENT FUEL FILTER WO1190','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1190','ELEMENT FUEL FILTER WO1200','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ELEMENT FUEL FILTER WO1200','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1191','FUEL FILTER ATCO/FUDA/CXO708','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'FUEL FILTER ATCO/FUDA/CXO708','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1192','FUEL FILTER EF1509','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'FUEL FILTER EF1509','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1193','FUEL FILTER FC1002','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'FUEL FILTER FC1002','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1194','FUEL FILTER FC1003','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'FUEL FILTER FC1003','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1195','FUEL FILTER FC1018 ANIMAL CAB','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'FUEL FILTER FC1018 ANIMAL CAB','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1196','FUEL FILTER FC226N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'FUEL FILTER FC226N','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1197','FUEL FILTER FS1705','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'FUEL FILTER FS1705','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1198','FUEL FILTER FS8903','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'FUEL FILTER FS8903','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1199','FUEL FILTER JAC/FOTON/ CXO','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'FUEL FILTER JAC/FOTON/ CXO','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1200','FUEL FILTER KC22','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'FUEL FILTER KC22','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1201','FUEL FILTER KC63ID','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'FUEL FILTER KC63ID','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1202','HINO FUEL FILTER FC607V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HINO FUEL FILTER FC607V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1203','HONDA FUEL FILTER FC805V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HONDA FUEL FILTER FC805V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1204','HONDA FUEL FILTER FC818V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HONDA FUEL FILTER FC818V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1205','HONDA FUEL FILTER FC819V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HONDA FUEL FILTER FC819V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1206','IN-LINE FUEL FILTER FS-18310','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'IN-LINE FUEL FILTER FS-18310','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1207','ISUZU FUEL FILTER F503V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ISUZU FUEL FILTER F503V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1208','ISUZU FUEL FILTER F505V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ISUZU FUEL FILTER F505V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1209','ISUZU FUEL FILTER FC 510V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ISUZU FUEL FILTER FC 510V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1210','ISUZU FUEL FILTER FC208AV','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ISUZU FUEL FILTER FC208AV','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1211','ISUZU FUEL FILTER FC511V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ISUZU FUEL FILTER FC511V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1212','MAZDA FUEL FILTER FC406V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA FUEL FILTER FC406V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1213','MAZDA FUEL FILTER FC408V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA FUEL FILTER FC408V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1214','MAZDA FUEL FILTER FC409V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA FUEL FILTER FC409V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1215','MAZDA FUEL FILTER FC410V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA FUEL FILTER FC410V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1216','MITSUBISHI FUEL FILTER F308V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI FUEL FILTER F308V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1217','MITSUBISHI FUEL FILTER F315V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI FUEL FILTER F315V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1218','MITSUBISHI FUEL FILTER FC317V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI FUEL FILTER FC317V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1219','MITSUBISHI FUEL FILTER FC318V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI FUEL FILTER FC318V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1220','MITSUBISHI FUEL FILTER FC319V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI FUEL FILTER FC319V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1221','MITSUBISHI FUEL FILTER FC321V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI FUEL FILTER FC321V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1222','MITSUBISHI FUEL FILTER FC322V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI FUEL FILTER FC322V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1223','MITSUBISHI FUEL FILTER FC326V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI FUEL FILTER FC326V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1224','MITSUBISHI FUEL FILTER FC328V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI FUEL FILTER FC328V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1225','MITSUBISHI FUEL FILTER FC332V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI FUEL FILTER FC332V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1226','MITSUBISHI FUEL FILTER FC334V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI FUEL FILTER FC334V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1227','SUZUKI FUEL FILTER FC934V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUZUKI FUEL FILTER FC934V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1228','SUZUKI FUEL FILTER FC945V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUZUKI FUEL FILTER FC945V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1229','TATA DIESEL FILTER','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TATA DIESEL FILTER','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1230','TOYOTA FUEL FILTER 0L010','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA FUEL FILTER 0L010','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1231','TOYOTA FUEL FILTER 0L041','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA FUEL FILTER 0L041','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1232','TOYOTA FUEL FILTER 64480','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA FUEL FILTER 64480','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1233','TOYOTA FUEL FILTER F193V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA FUEL FILTER F193V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1234','TOYOTA FUEL FILTER F194V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA FUEL FILTER F194V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1235','TOYOTA FUEL FILTER FC109V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA FUEL FILTER FC109V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1236','TOYOTA FUEL FILTER FC129V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA FUEL FILTER FC129V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1237','TOYOTA FUEL FILTER FC130V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA FUEL FILTER FC130V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1238','TOYOTA FUEL FILTER FC146V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA FUEL FILTER FC146V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1239','TOYOTA FUEL FILTER FC147V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA FUEL FILTER FC147V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1240','TOYOTA FUEL FILTER FC174V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA FUEL FILTER FC174V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1241','TOYOTA FUEL FILTER FC175V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA FUEL FILTER FC175V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1242','TOYOTA FUEL FILTER FC183V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA FUEL FILTER FC183V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1243','TOYOTA FUEL FILTER FC184V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA FUEL FILTER FC184V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1244','TOYOTA FUEL FILTERFC158V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA FUEL FILTERFC158V','SUB1007','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1245','AIR FILTER 059','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER 059','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1246','AIR FILTER A041','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A041','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1247','AIR FILTER A1003N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1003N','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1248','AIR FILTER A1016','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1016','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1249','AIR FILTER A10321','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A10321','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1250','AIR FILTER A1039','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1039','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1251','AIR FILTER A1043','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1043','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1252','AIR FILTER A1106','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1106','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1253','AIR FILTER A1117','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1117','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1254','AIR FILTER A1119','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1119','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1255','AIR FILTER A1148','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1148','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1256','AIR FILTER A1153','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1153','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1257','AIR FILTER A1165','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1165','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1258','AIR FILTER A1167','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1167','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1259','AIR FILTER A1169','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1169','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1260','AIR FILTER A1178','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1178','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1261','AIR FILTER A1181','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1181','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1262','AIR FILTER A1419','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1419','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1263','AIR FILTER A1426','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1426','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1264','AIR FILTER A144701','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A144701','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1265','AIR FILTER A1505','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1505','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1266','AIR FILTER A1510','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1510','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1267','AIR FILTER A1516','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1516','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1268','AIR FILTER A1517','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1517','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1269','AIR FILTER A161N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A161N','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1270','AIR FILTER A1801','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1801','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1271','AIR FILTER A1831','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1831','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1272','AIR FILTER A1875','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1875','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1273','AIR FILTER A1880','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1880','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1274','AIR FILTER A1948','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1948','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1275','AIR FILTER A1952','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A1952','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1276','AIR FILTER A2816','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A2816','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1277','AIR FILTER A2817','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A2817','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1278','AIR FILTER A2924','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A2924','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1279','AIR FILTER A2932','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A2932','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1280','AIR FILTER A2936','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A2936','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1281','AIR FILTER A3026VV','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A3026VV','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1282','AIR FILTER A3312','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A3312','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1283','AIR FILTER A5903','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A5903','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1284','AIR FILTER A744N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER A744N','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1285','AIR FILTER AS 1014','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER AS 1014','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1286','AIR FILTER AS 1031','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER AS 1031','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1287','AIR FILTER AS 1708','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER AS 1708','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1288','AIR FILTER HONDA 17220','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER HONDA 17220','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1289','AIR FILTER HONDA 17220-RBJ-000','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER HONDA 17220-RBJ-000','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1290','AIR FILTER KIA SORENTO IPA K045','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER KIA SORENTO IPA K045','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1291','AIR FILTER KYA001','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER KIA 001','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1292','AIR FILTER MAHINDRA','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER MAHINDRA','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1293','AIR FILTER MICRO PANDA','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER MICRO PANDA','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1294','AIR FILTER SAKURA','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER SAKURA','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1295','AIR FILTER TOYOTA','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER TOYOTA','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1296','AIR FILTER VIC A750V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER VIC A750V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1297','AIR FILTER YA 027','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER YA027','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1298','AIR FILTER YA008','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER YA008','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1299','AIR FILTER YA013','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER YA013','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1300','AIR FILTER YA3004','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER YA3004','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1301','AIR FILTER YAH 152','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER YAH 152','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1302','AIR FILTER YAO19','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTER YAO19','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1303','AIR FILTERS','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FILTERS','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1304','CABIN AIR FILTER  CAC-1006','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'CABIN AIR FILTER  CAC-1006','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1305','CHVRY AIR FILTER','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'CHVRY AIR FILTER','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1306','DAIHATSU AIR FILTER  A734V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'DAIHATSU AIR FILTER  A734V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1307','DAIHATSU AIR FILTER A726V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'DAIHATSU AIR FILTER A726V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1308','DAIHATSU AIR FILTER A729V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'DAIHATSU AIR FILTER A729V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1309','DAIHATSU AIR FILTER A736V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'DAIHATSU AIR FILTER A736V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1310','DAIHATSU AIR FILTER A740V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'DAIHATSU AIR FILTER A740V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1311','DAIHATSU AIR FILTER A742V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'DAIHATSU AIR FILTER A742V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1312','FORD A/F A1901-1','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'FORD A/F A1901-1','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1313','HONDA AIR FILTER A819V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HONDA AIR FILTER A819V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1314','HONDA AIR FILTER A850V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HONDA AIR FILTER A850V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1315','HONDA AIR FILTER A859V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HONDA AIR FILTER A859V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1316','HONDA AIR FILTER A863V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HONDA AIR FILTER A863V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1317','HONDA AIR FILTER A868V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HONDA AIR FILTER A868V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1318','HONDA AIR FILTER A874V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HONDA AIR FILTER A874V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1319','HONDA AIR FILTER A889V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HONDA AIR FILTER A889V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1320','HONDA AIR FILTER A892V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HONDA AIR FILTER A892V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1321','HONDA AIR FILTER A893V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HONDA AIR FILTER A893V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1322','HONDA AIR FILTER A89811V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HONDA AIR FILTER A89811V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1323','ISUZU AIR FILTER A503V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ISUZU AIR FILTER A503V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1324','ISUZU AIR FILTER A521V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ISUZU AIR FILTER A521V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1325','ISUZU AIR FILTER A522V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ISUZU AIR FILTER A522V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1326','LAND ROVER DISCOVERY TD55/2.5L A/F A8688','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'LAND ROVER DISCOVERY TD55/2.5L A/F A8688','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1327','LAND ROVER/DISCOVERY/RANGE ROVER A/F A4901','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'LAND ROVER/DISCOVERY/RANGE ROVER A/F A4901','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1328','MAZDA AIR FILTER A404V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA AIR FILTER A404V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1329','MAZDA AIR FILTER A423V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA AIR FILTER A423V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1330','MAZDA AIR FILTER A444V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA AIR FILTER A444V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1331','MAZDA AIR FILTER A447V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA AIR FILTER A447V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1332','MAZDA AIR FILTER A464V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAZDA AIR FILTER A464V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1333','MITSUBISHI AIR FILTER A142S','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI AIR FILTER A142S','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1334','MITSUBISHI AIR FILTER A3004V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI AIR FILTER A3004V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1335','MITSUBISHI AIR FILTER A3011V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI AIR FILTER A3011V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1336','MITSUBISHI AIR FILTER A3012V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI AIR FILTER A3012V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1337','MITSUBISHI AIR FILTER A3016V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI AIR FILTER A3016V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1338','MITSUBISHI AIR FILTER A3017V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI AIR FILTER A3017V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1339','MITSUBISHI AIR FILTER A303V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI AIR FILTER A303V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1340','MITSUBISHI AIR FILTER A310V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI AIR FILTER A310V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1341','MITSUBISHI AIR FILTER A324V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI AIR FILTER A324V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1342','MITSUBISHI AIR FILTER A328N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI AIR FILTER A328N','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1343','MITSUBISHI AIR FILTER A328V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI AIR FILTER A328V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1344','MITSUBISHI AIR FILTER A331V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI AIR FILTER A331V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1345','MITSUBISHI AIR FILTER A334V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI AIR FILTER A334V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1346','MITSUBISHI AIR FILTER A344V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI AIR FILTER A344V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1347','MITSUBISHI AIR FILTER A348V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI AIR FILTER A348V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1348','MITSUBISHI AIR FILTER A349V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI AIR FILTER A349V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1349','NISSAN AIR FILTER','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN AIR FILTER','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1350','NISSAN AIR FILTER A2003V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN AIR FILTER A2003V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1351','NISSAN AIR FILTER A2006V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN AIR FILTER A2006V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1352','NISSAN AIR FILTER A2008V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN AIR FILTER A2008V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1353','NISSAN AIR FILTER A2011V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN AIR FILTER A2011V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1354','NISSAN AIR FILTER A2016V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN AIR FILTER A2016V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1355','NISSAN AIR FILTER A206AVV','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN AIR FILTER A206AVV','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1356','NISSAN AIR FILTER A210V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN AIR FILTER A210V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1357','NISSAN AIR FILTER A215V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN AIR FILTER A215V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1358','NISSAN AIR FILTER A221V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN AIR FILTER A221V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1359','NISSAN AIR FILTER A226V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN AIR FILTER A226V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1360','NISSAN AIR FILTER A243V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN AIR FILTER A243V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1361','NISSAN AIR FILTER A270V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN AIR FILTER A270V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1362','NISSAN AIR FILTER AN212SV','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN AIR FILTER AN212SV','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1363','NISSAN FUEL FILTER FC208V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN FUEL FILTER FC208V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1364','NISSAN FUEL FILTER FC210V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN FUEL FILTER FC210V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1365','NISSAN FUEL FILTER FC224V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN FUEL FILTER FC224V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1366','NISSAN FUEL FILTER FC227V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN FUEL FILTER FC227V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1367','NISSAN FUEL FILTER FC231V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN FUEL FILTER FC231V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1368','NISSAN FUEL FILTER FC232V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN FUEL FILTER FC232V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1369','NISSAN FUEL FILTER FC235V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN FUEL FILTER FC235V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1370','NISSAN FUEL FILTER FC236V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN FUEL FILTER FC236V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1371','NISSAN FUEL FILTER FC237V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN FUEL FILTER FC237V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1372','NISSAN FUEL FILTERFC226V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN FUEL FILTERFC226V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1373','SAKURA AIR FILTER','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SAKURA AIR FILTER','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1374','SUBARU AIR FILTER A926V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUBARU AIR FILTER A926V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1375','SUBARU AIR FILTER A941V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUBARU AIR FILTER A941V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1376','SUZUKI AIR FILTER A945V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUZUKI AIR FILTER A945V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1377','SUZUKI AIR FILTER A946V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUZUKI AIR FILTER A946V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1378','SUZUKI AIR FILTER A948V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUZUKI AIR FILTER A948V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1379','SUZUKI AIR FILTER A953V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUZUKI AIR FILTER A953V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1380','SUZUKI AIR FILTER A955V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUZUKI AIR FILTER A955V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1381','SUZUKI AIR FILTER A957V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUZUKI AIR FILTER A957V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1382','SUZUKI AIR FILTER A959V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUZUKI AIR FILTER A959V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1383','SUZUKI AIR FILTER A961V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUZUKI AIR FILTER A961V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1384','SUZUKI AIR FILTER A963V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUZUKI AIR FILTER A963V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1385','SUZUKI AIR FILTER A964V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUZUKI AIR FILTER A964V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1386','SUZUKI AIR FILTER A965V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUZUKI AIR FILTER A965V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1387','SUZUKI AIR FILTER A966V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUZUKI AIR FILTER A966V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1388','SUZUKI AIR FILTER A969V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUZUKI AIR FILTER A969V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1389','SUZUKI AIR FILTER A970V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUZUKI AIR FILTER A970V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1390','SUZUKI AIR FILTER A971V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUZUKI AIR FILTER A971V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1391','SUZUKI AIR FILTER A973V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUZUKI AIR FILTER A973V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1392','TOYOTA A/F A1126','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA A/F A1126','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1393','TOYOTA AIR FILTER','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1394','TOYOTA AIR FILTER 21030','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER 21030','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1395','TOYOTA AIR FILTER 21050','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER 21050','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1396','TOYOTA AIR FILTER 21060','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER 21060','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1397','TOYOTA AIR FILTER 30050','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER 30050','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1398','TOYOTA AIR FILTER 97402','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER 97402','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1399','TOYOTA AIR FILTER A1003V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A1003V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1400','TOYOTA AIR FILTER A1008V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A1008V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1401','TOYOTA AIR FILTER A1010V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A1010V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1402','TOYOTA AIR FILTER A1011V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A1011V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1403','TOYOTA AIR FILTER A1016V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A1016V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1404','TOYOTA AIR FILTER A1021V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A1021V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1405','TOYOTA AIR FILTER A1022V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A1022V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1406','TOYOTA AIR FILTER A1023V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A1023V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1407','TOYOTA AIR FILTER A1024V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A1024V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1408','TOYOTA AIR FILTER A1025V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A1025V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1409','TOYOTA AIR FILTER A1027V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A1027V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1410','TOYOTA AIR FILTER A1030V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A1030V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1411','TOYOTA AIR FILTER A1031V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A1031V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1412','TOYOTA AIR FILTER A135V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A135V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1413','TOYOTA AIR FILTER A136V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A136V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1414','TOYOTA AIR FILTER A137V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A137V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1415','TOYOTA AIR FILTER A138V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A138V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1416','TOYOTA AIR FILTER A143V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A143V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1417','TOYOTA AIR FILTER A147V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A147V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1418','TOYOTA AIR FILTER A149V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A149V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1419','TOYOTA AIR FILTER A157V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A157V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1420','TOYOTA AIR FILTER A161V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A161V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1421','TOYOTA AIR FILTER A169V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A169V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1422','TOYOTA AIR FILTER A170V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A170V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1423','TOYOTA AIR FILTER A177V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A177V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1424','TOYOTA AIR FILTER A179V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A179V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1425','TOYOTA AIR FILTER A181V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A181V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1426','TOYOTA AIR FILTER A182V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A182V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1427','TOYOTA AIR FILTER A183V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A183V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1428','TOYOTA AIR FILTER A184V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A184V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1429','TOYOTA AIR FILTER A185V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A185V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1430','TOYOTA AIR FILTER A190V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A190V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1431','TOYOTA AIR FILTER A191V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A191V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1432','TOYOTA AIR FILTER A194V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A194V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1433','TOYOTA AIR FILTER A195V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A195V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1434','TOYOTA AIR FILTER A197V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER A197V','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1435','TOYOTA AIR FILTER C010','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA AIR FILTER C010','SUB1006','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1436','AC FILTER  97133-2E210','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER  97133-2E210','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1437','AC FILTER  AC 801V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER  AC 801V','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1438','AC FILTER  AC 805V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER  AC 805V','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1439','AC FILTER (KIA SORENTO) IPCA K009','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER (KIA SORENTO) IPCA K009','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1440','AC FILTER (KIA SPORTAGE) IPCAK008','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER (KIA SPORTAGE) IPCAK008','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1441','AC FILTER AC 202V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER AC 202V','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1442','AC FILTER AC 203N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER AC 203N','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1443','AC FILTER AC 203V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER AC 203V','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1444','AC FILTER AC 206V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER AC 206V','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1445','AC FILTER AC 208V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER AC 208V','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1446','AC FILTER AC 804V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER AC 804V','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1447','AC FILTER AC 808V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER AC 808V','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1448','AC FILTER AC 932V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER AC 932V','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1449','AC FILTER AC 934V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER AC 934V','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1450','AC FILTER AC102N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER AC102N','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1451','AC FILTER AC102V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER AC102V','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1452','AC FILTER AC103V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER AC103V','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1453','AC FILTER AC108V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER AC108V','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1454','AC FILTER AC109V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER AC109V','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1455','AC FILTER AC201V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER AC201V','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1456','AC FILTER AC801N','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER AC801N','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1457','AC FILTER AC803V','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER AC803V','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1458','AC FILTER CABIN ','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER CABIN ','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1459','AC FILTER HONDA CIVIC','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER HONDA CIVIC','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1460','AC FILTER HONDA FIT','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER HONDA FIT','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1461','AC FILTER HONDA VEZEL','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER HONDA VEZEL','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1462','AC FILTER KYRON','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER KYRON','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1463','AC FILTER M400','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER M400','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1464','AC FILTER MAZDA DEMIO','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER MAZDA DEMIO','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1465','AC FILTER MITSUBISHI L200 ( THAILAND )','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER MITSUBISHI L200 ( THAILAND )','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1466','AC FILTER MITSUBISHI MONTERO','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER MITSUBISHI MONTERO','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1467','AC FILTER NISSAN NAVARA','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER NISSAN NAVARA','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1468','AC FILTER NISSAN SUNNY','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER NISSAN SUNNY','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1469','AC FILTER PANDA','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER PANDA','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1470','AC FILTER PICANTO','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER PICANTO','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1471','AC FILTER REXTON','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER REXTON','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1472','AC FILTER SAKURA','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER SAKURA','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1473','AC FILTER SANTAFE','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER SANTAFE','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1474','AC FILTER SORENTO','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER SORENTO','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1475','AC FILTER SUZUKI EVERY','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER SUZUKI EVERY','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1476','AC FILTER SUZUKI SWIFT','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER SUZUKI SWIFT','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1477','AC FILTER TOYOTA 52010','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER TOYOTA 52010','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1478','AC FILTER TOYOTA KDH','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER TOYOTA KDH','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1479','AC FILTER TOYOTA RUSH','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AC FILTER TOYOTA RUSH','SUB1005','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1480','3M QUICK WAX','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'3M QUICK WAX','SUB1012','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1481','ANTI -RUST COOLANT 1L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ANTI -RUST COOLANT 1L','SUB1020','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1482','BG COOLING SYSTEM CLEANER','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'BG COOLING SYSTEM CLEANER','SUB1023','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1483','BG WINDSHIELD WASHER CONCENTRATE','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'BG WINDSHIELD WASHER CONCENTRATE','SUB1023','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1484','CAR WASH 500ML','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'CAR WASH 500ML','SUB1012','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1485','COOLANT PINK 1L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'COOLANT PINK 1L','SUB1020','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1486','COOLANT RED  1L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'COOLANT RED  1L','SUB1020','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1487','ENGINE FLUSH (QUICK CLEAN) BG','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ENGINE FLUSH (QUICK CLEAN) BG','SUB1018','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1488','FUEL INJECTOR CLEANER','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'FUEL INJECTOR CLEANER','SUB1017','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1489','FUEL INJECTOR CLEANER DIESEL ABRO','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'FUEL INJECTOR CLEANER DIESEL ABRO','SUB1017','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1490','FUEL SYSTEM CLEANER 3M','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'FUEL SYSTEM CLEANER 3M','SUB1019','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1491','INTAKE SYSTEM CLEANER 3M','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'INTAKE SYSTEM CLEANER 3M','SUB1019','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1492','MOTOR FLUSE 443ML','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MOTOR FLUSH 443ML','SUB1018','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1493','PRE-MIXED RED COOLANT  1L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'PRE-MIXED RED COOLANT  1L','SUB1020','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1494','QUICK DRYING CONTACT CLEANER 3M','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'QUICK DRYING CONTACT CLEANER 3M','SUB1023','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1495','RADIATOR COOLANT  RED','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'RADIATOR COOLANT  RED','SUB1020','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1496','RADIATOR COOLANT BLUE','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'RADIATOR COOLANT BLUE','SUB1020','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1497','RADIATOR FLUSH','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'RADIATOR FLUSH','SUB1021','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1498','THROTTLE PLATE & CARB CLEANER 3M','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'THROTTLE PLATE & CARB CLEANER 3M','SUB1023','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1499','TOYOTA INJECTOR DIESEL CLEANER','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA INJECTOR DIESEL CLEANER','SUB1017','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1500','TOYOTA LONG LIFE COOLANT PINK 2L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA LONG LIFE COOLANT PINK 2L','SUB1020','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1501','TOYOTA LONG LIFE COOLANT RED 1L','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA LONG LIFE COOLANT RED 1L','SUB1020','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1502','WIRTH WINDSCREEN CLEANER','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'WIRTH WINDSCREEN CLEANER','SUB1024','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1503','DIESEL FILTER INSERT','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'DIESEL FILTER INSERT','SUB1027','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1504','MAXCLEAR WIPER BLADE 18\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLADE 18\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1505','MAXCLEAR WIPER BLEAD 21\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1506','MAXCLEAR WIPER BLEDE 19\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1507','NORMAL CAR MAT COIL MAT','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1508','RAINX W/B WIPER BLADE 12\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1509','RAINX W/B WIPER BLADE 15\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1510','RAINX W/B WIPER BLADE18\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1511','RAINX W/B WIPER BLADE22\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1512','RAINX W/B WIPER BLADE24\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1513','RAINX W/B WIPRE BLADE 16\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1514','RAINX W/B WIPRE BLADE26\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1515','RX FUSION  WIPER BLADE 24\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1516','RX FUSION WIPER BLADE 16\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1517','RX FUSION WIPER BLADE 18\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1518','RX FUSION WIPER BLADE 20\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1519','RX FUSION WIPER BLADE 22\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1520','SILANSER END','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1521','SILANSER END MF216','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1522','SILANSER END MF40','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1523','SILANSER END MF4043','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1524','STEERING WEEL COVER *L*','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1525','STEERING WEEL COVER *M*','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1526','STEERING WEEL COVER *S*','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1527','STEERING WEEL COVER *XL*','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1528','STEERING WEEL COVER *XXL*','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1529','WINDSHIELD WIPER 12\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1530','WINDSHIELD WIPER 14\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1531','WINDSHIELD WIPER 16\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1532','WINDSHIELD WIPER 17\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1533','WINDSHIELD WIPER 20\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1534','WINDSHIELD WIPER 22\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1535','WINDSHIELD WIPER 24\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1536','WIPER BLADE (UNI) 21\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1537','WIPER BLADE (UNI) 22\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1538','WIPER BLADE (UNI) 24\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1539','WIPER BLADE 18\"(WURTH)\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1540','WIPER BLADE 19\" (BOSCH)\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1541','WIPER BLADE 20\" (WURTH)\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1542','WIPER BLADE 21\" (WURTH)\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1543','WIPER BLADE 24\" (WURTH)\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1544','WIPER BLADE BOSCH 12\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1545','WIPER BLADE BOSCH 14\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1546','WIPER BLADE BOSCH 16\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1547','WIPER BLADE BOSCH 18\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1548','WIPER BLADE BOSCH 20\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1549','WIPER BLADE BOSCH 21\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1550','WIPER BLADE BOSCH 24\"\"','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR WIPER BLEAD 21\"\"','SUB1031','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1551','AIR FRESHENER ENGLISH ROSE ','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FRESHENER ENGLISH ROSE ','SUB1010','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1552','AIR FRESHENER GEL (AQVA COOL)','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FRESHENER GEL (AQVA COOL)','SUB1010','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1553','AIR FRESHENER GEL (LEVENDER)','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FRESHENER GEL (LEVENDER)','SUB1010','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1554','AIR FRESHENER GEL (LOTUS)','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FRESHENER GEL (LOTUS)','SUB1010','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1555','AIR FRESHENER GEL (MUSK TWIST)','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FRESHENER GEL (MUSK TWIST)','SUB1010','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1556','AIR FRESHENER GEL (PEACH)','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FRESHENER GEL (PEACH)','SUB1010','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1557','AIR FRESHENER LAVENDER ','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FRESHENER LAVENDER ','SUB1010','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1558','AIR FRESHENER LAVENDER GARDEN ','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FRESHENER LAVENDER GARDEN ','SUB1010','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1559','AIR FRESHENER MUSK','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FRESHENER MUSK','SUB1010','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1560','AIR FRESHENER PETAL','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FRESHENER PETAL','SUB1010','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1561','AIR FRESHENER STRAWBERRY ','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AIR FRESHENER STRAWBERRY ','SUB1010','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1562','DASH AIR FRESHENER','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'DASH AIR FRESHENER','SUB1010','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1563','GLADE AIR FRESHENER (COOLWATER)','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'GLADE AIR FRESHENER (COOLWATER)','SUB1010','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1564','GLADE AIR FRESHENER (TROPICAL FRESH)','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'GLADE AIR FRESHENER (TROPICAL FRESH)','SUB1010','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1565','GODREJ AIR FRESHENER','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'GODREJ AIR FRESHENER','SUB1010','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1566','GODREJ AIR FRESHENER (COOL)','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'GODREJ AIR FRESHENER (COOL)','SUB1010','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1567','GODREJ AIR FRESHENER (FRESH)','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'GODREJ AIR FRESHENER (FRESH)','SUB1010','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1568','GODREJ AIR FRESHENER (MUSK)','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'GODREJ AIR FRESHENER (MUSK)','SUB1010','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL),('ITM1569','GODREJ AIR FRESHENER SPRAY','1',10,1,1,1,0,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'GODREJ AIR FRESHENER SPRAY','SUB1010','SLT1000','UOM1000','UOM1000',1,NULL,'ITP1000',NULL);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_brand`
--

DROP TABLE IF EXISTS `item_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_brand` (
  `brand_code` varchar(15) NOT NULL,
  `brand_name` varchar(100) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`brand_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_brand`
--

LOCK TABLES `item_brand` WRITE;
/*!40000 ALTER TABLE `item_brand` DISABLE KEYS */;
INSERT INTO `item_brand` VALUES ('BRN1000','3M','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'3M'),('BRN1001','ABRO','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ABRO'),('BRN1002','AUTO BEST','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AUTO BEST'),('BRN1003','AUTOMAX','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'AUTOMAX'),('BRN1004','BG','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'BG'),('BRN1005','BONELESS','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'BONELESS'),('BRN1006','BOSCH','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'BOSCH'),('BRN1007','BRITOL','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'BRITOL'),('BRN1008','C&P','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'C&P'),('BRN1009','CALTEX','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'CALTEX'),('BRN1010','CASTROL','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'CASTROL'),('BRN1011','CHAINA FILTER','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'CHAINA FILTER'),('BRN1012','CHARGE','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'CHARGE'),('BRN1013','COIL MAT','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'COIL MAT'),('BRN1014','COLD GUARD','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'COLD GUARD'),('BRN1015','CYCLO','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'CYCLO'),('BRN1016','DASH','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'DASH'),('BRN1017','D-FRESH','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'D-FRESH'),('BRN1018','EAGLE','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'EAGLE'),('BRN1019','FRESHY','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'FRESHY'),('BRN1020','FURLUX','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'FURLUX'),('BRN1021','GLADE','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'GLADE'),('BRN1022','GM','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'GM'),('BRN1023','GODREJ','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'GODREJ'),('BRN1024','GREEN FULL','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'GREEN FULL'),('BRN1025','HAIYE','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HAIYE'),('BRN1026','HAVOLINE','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HAVOLINE'),('BRN1027','HKT','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HKT'),('BRN1028','HONDA','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'HONDA'),('BRN1029','INTER PART','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'INTER PART'),('BRN1030','JAPN','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'JAPN'),('BRN1031','JAZMIN','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'JAZMIN'),('BRN1032','KLN','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'KLN'),('BRN1033','KNECHT','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'KNECHT'),('BRN1034','LITTLE TREES','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'LITTLE TREES'),('BRN1035','LOCKHEED','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'LOCKHEED'),('BRN1036','M@AP','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'M@AP'),('BRN1037','MAC','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAC'),('BRN1038','MAHINDRA','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAHINDRA'),('BRN1039','MAHLE','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAHLE'),('BRN1040','MANN','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MANN'),('BRN1041','MAX','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAX'),('BRN1042','MAXCLEAR','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MAXCLEAR'),('BRN1043','MICOTA TYPE','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MICOTA TYPE'),('BRN1044','MITSUBISHI','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MITSUBISHI'),('BRN1045','MOBIL','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'MOBIL'),('BRN1046','NISSAN','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'NISSAN'),('BRN1047','OSAKA','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OSAKA'),('BRN1048','OSK','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'OSK'),('BRN1049','PIKAWANG','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'PIKAWANG'),('BRN1050','PURPLUX','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'PURPLUX'),('BRN1051','ROKI','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'ROKI'),('BRN1052','RX FUSION','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'RX FUSION'),('BRN1053','RX WEATHER BEATER','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'RX WEATHER BEATER'),('BRN1054','SAKURA','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SAKURA'),('BRN1055','SERVO','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SERVO'),('BRN1056','SUPER ANTI-RUST','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'SUPER ANTI-RUST'),('BRN1057','TATA','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TATA'),('BRN1058','TOYOTA','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'TOYOTA'),('BRN1059','UNI POINT','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'UNI POINT'),('BRN1060','VALVOLINE','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'VALVOLINE'),('BRN1061','VIC','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'VIC'),('BRN1062','WARTH','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'WARTH'),('BRN1063','YUIL','2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'YUIL');
/*!40000 ALTER TABLE `item_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_type`
--

DROP TABLE IF EXISTS `item_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_type` (
  `item_type_code` varchar(15) NOT NULL,
  `item_type_name` varchar(45) DEFAULT NULL,
  `isActive` int(11) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_type`
--

LOCK TABLES `item_type` WRITE;
/*!40000 ALTER TABLE `item_type` DISABLE KEYS */;
INSERT INTO `item_type` VALUES ('ITP1000','SELL',1,'SELL','2017-09-09','20:48:29',1,NULL,NULL,NULL),('ITP1001','STORE',1,'STORE','2017-09-09','20:48:44',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `item_type` ENABLE KEYS */;
UNLOCK TABLES;

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
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `key_table`
--

LOCK TABLES `key_table` WRITE;
/*!40000 ALTER TABLE `key_table` DISABLE KEYS */;
INSERT INTO `key_table` VALUES (1,'ADD',1004,'Address codes','2017-01-01','12:00:00',1,'2017-10-01','18:38:46',1),(2,'TEL',1004,'Telephone codes','2017-01-01','12:00:00',1,'2017-10-01','18:39:06',1),(3,'BPT',1004,'Business partner codes','2017-01-01','12:00:00',1,'2017-10-01','18:46:38',1),(4,'STO',1001,'Storage','2017-09-09','20:37:13',1,NULL,NULL,NULL),(5,'RAC',1001,'Racks','2017-09-09','20:37:36',1,NULL,NULL,NULL),(6,'SLT',1002,'Rack slots','2017-09-09','20:37:58',1,'2017-09-09','20:38:15',1),(7,'LOC',1003,'Location','2017-09-09','20:38:44',1,'2017-09-09','20:39:12',1),(8,'PRN',1001,'Printer','2017-09-09','20:39:31',1,NULL,NULL,NULL),(9,'CAT',1005,'Category','2017-09-09','20:40:02',1,'2017-09-10','21:02:05',1),(10,'SUB',1039,'Sub Category','2017-09-09','20:47:52',1,'2017-09-10','21:03:18',1),(11,'ITP',1002,'Item type','2017-09-09','20:48:29',1,'2017-09-09','20:48:44',1),(13,'VHT',1001,'Vehicle type','2017-09-09','22:25:22',1,NULL,NULL,NULL),(14,'VEH',1002,'Vehivle','2017-09-09','22:25:50',1,'2017-09-17','12:41:07',1),(30,'ITM',1570,'Item codes','2017-09-10','22:40:57',1,'2017-10-01','19:34:11',1),(31,'DRS',1002,'Direct sale','2017-10-04','00:18:49',1,NULL,NULL,NULL),(32,'INV',1002,'Invoices','2017-10-04','00:18:50',1,NULL,NULL,NULL),(33,'PAY',1002,'Payment','2017-10-04','00:19:13',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `key_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license`
--

DROP TABLE IF EXISTS `license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `license` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) DEFAULT NULL,
  `address_line1` varchar(100) DEFAULT NULL,
  `address_line2` varchar(100) DEFAULT NULL,
  `address_line3` varchar(100) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `web` varchar(45) DEFAULT NULL,
  `vat_number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license`
--

LOCK TABLES `license` WRITE;
/*!40000 ALTER TABLE `license` DISABLE KEYS */;
INSERT INTO `license` VALUES (1,'Zillion Hub Private Ltd','279/1, Ranasinghegoda Mw','Kalupahana','Poruwadanda','+94342210010','+94342210020','zillionhub@zillionhub.com','www.zillionhub.com','1111-11111111');
/*!40000 ALTER TABLE `license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_account`
--

DROP TABLE IF EXISTS `main_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_account` (
  `code` varchar(15) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `isActive` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_account`
--

LOCK TABLES `main_account` WRITE;
/*!40000 ALTER TABLE `main_account` DISABLE KEYS */;
INSERT INTO `main_account` VALUES ('MAC1000','LIABILITIES',1,'2017-01-01','12:00:00',1,NULL,NULL,NULL,'LIABILITIES'),('MAC1001','ASSETS',1,'2017-01-01','12:00:00',1,NULL,NULL,NULL,'ASSETS'),('MAC1002','INDIRECT EXPENSES',1,'2017-01-01','12:00:00',1,NULL,NULL,NULL,'INDIRECT EXPENSES'),('MAC1003','INDIRECT INCOME',1,'2017-01-01','12:00:00',1,NULL,NULL,NULL,'INDIRECT INCOME'),('MAC1004','PURCHASE',1,'2017-01-01','12:00:00',1,NULL,NULL,NULL,'PURCHASE'),('MAC1005','SALES',1,'2017-01-01','12:00:00',1,NULL,NULL,NULL,'SALES');
/*!40000 ALTER TABLE `main_account` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `payment_code` varchar(15) NOT NULL,
  `amount` float DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(150) DEFAULT NULL,
  `payment_type_payment_type_code` varchar(15) NOT NULL,
  `invoice_invoice_number` varchar(15) NOT NULL,
  PRIMARY KEY (`payment_code`),
  KEY `fk_payment_payment_type1_idx` (`payment_type_payment_type_code`),
  KEY `fk_payment_invoice1_idx` (`invoice_invoice_number`),
  CONSTRAINT `fk_payment_invoice1` FOREIGN KEY (`invoice_invoice_number`) REFERENCES `invoice` (`invoice_number`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_payment_payment_type1` FOREIGN KEY (`payment_type_payment_type_code`) REFERENCES `payment_type` (`payment_type_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES ('PAY1001',350,'2017-10-04','00:19:13',1,NULL,NULL,NULL,NULL,'PTY1000','INV1001');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_type`
--

DROP TABLE IF EXISTS `payment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_type` (
  `payment_type_code` varchar(15) NOT NULL,
  `payment_type_name` varchar(45) DEFAULT NULL,
  `isActive` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`payment_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_type`
--

LOCK TABLES `payment_type` WRITE;
/*!40000 ALTER TABLE `payment_type` DISABLE KEYS */;
INSERT INTO `payment_type` VALUES ('PTY1000','CASH',1,'2017-01-01','12:00:00',1,NULL,NULL,NULL,'CASH PAYMENTS'),('PTY1001','CHEQUE',1,'2017-01-01','12:00:00',1,NULL,NULL,NULL,'CHEQUE PAYMENTS'),('PTY1002','CREDIT',1,'2017-01-01','12:00:00',1,NULL,NULL,NULL,'SETTLE TO CUSTOMER ACCOUNT');
/*!40000 ALTER TABLE `payment_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `printer`
--

DROP TABLE IF EXISTS `printer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `printer` (
  `printer_code` varchar(15) NOT NULL,
  `printer_name` varchar(50) NOT NULL,
  `isActive` int(11) DEFAULT '1',
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`printer_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `printer`
--

LOCK TABLES `printer` WRITE;
/*!40000 ALTER TABLE `printer` DISABLE KEYS */;
INSERT INTO `printer` VALUES ('PRN1000','MAIN STORAGE PRINTER',1,'2017-09-09','20:39:31',1,NULL,NULL,NULL,'MAIN STORAGE PRINTER');
/*!40000 ALTER TABLE `printer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rack`
--

DROP TABLE IF EXISTS `rack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rack` (
  `rack_code` varchar(15) NOT NULL,
  `rack_name` varchar(45) DEFAULT NULL,
  `isActive` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `storage_storage_code` varchar(15) NOT NULL,
  PRIMARY KEY (`rack_code`),
  KEY `fk_rack_storage1_idx` (`storage_storage_code`),
  CONSTRAINT `fk_rack_storage1` FOREIGN KEY (`storage_storage_code`) REFERENCES `storage` (`storage_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rack`
--

LOCK TABLES `rack` WRITE;
/*!40000 ALTER TABLE `rack` DISABLE KEYS */;
INSERT INTO `rack` VALUES ('RAC1000','MAIN RACK',1,'2017-09-09','20:37:36',1,NULL,NULL,NULL,'MAIN RACK','STO1000');
/*!40000 ALTER TABLE `rack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rack_slot`
--

DROP TABLE IF EXISTS `rack_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rack_slot` (
  `rack_slot_code` varchar(15) NOT NULL,
  `rack_slot_name` varchar(45) DEFAULT NULL,
  `isActive` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `rack_rack_code` varchar(10) NOT NULL,
  PRIMARY KEY (`rack_slot_code`),
  KEY `fk_rack_slot_rack1_idx` (`rack_rack_code`),
  CONSTRAINT `fk_rack_slot_rack1` FOREIGN KEY (`rack_rack_code`) REFERENCES `rack` (`rack_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rack_slot`
--

LOCK TABLES `rack_slot` WRITE;
/*!40000 ALTER TABLE `rack_slot` DISABLE KEYS */;
INSERT INTO `rack_slot` VALUES ('SLT1000','SLOT 1',1,'2017-09-09','20:37:58',1,NULL,NULL,NULL,'SLOT 1','RAC1000'),('SLT1001','SLOT 2',1,'2017-09-09','20:38:15',1,NULL,NULL,NULL,'SLOT 2','RAC1000');
/*!40000 ALTER TABLE `rack_slot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale` (
  `sale_code` varchar(15) NOT NULL,
  `milage` float DEFAULT NULL,
  `sub_total` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `grand_total` float DEFAULT NULL,
  `discounted` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `service_bay_service_bay_code` varchar(15) NOT NULL,
  `vehicle_vehicle_code` varchar(15) NOT NULL,
  `sale_status_status_id` int(11) NOT NULL,
  PRIMARY KEY (`sale_code`),
  KEY `fk_service_service_bay1_idx` (`service_bay_service_bay_code`),
  KEY `fk_service_vehicle1_idx` (`vehicle_vehicle_code`),
  KEY `fk_sales_sale_status1_idx` (`sale_status_status_id`),
  CONSTRAINT `fk_sales_sale_status1` FOREIGN KEY (`sale_status_status_id`) REFERENCES `sale_status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_service_service_bay1` FOREIGN KEY (`service_bay_service_bay_code`) REFERENCES `service_bay` (`service_bay_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_service_vehicle1` FOREIGN KEY (`vehicle_vehicle_code`) REFERENCES `vehicle` (`vehicle_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES ('DRS1001',0,140,0,140,0,'2017-10-04','00:18:49',1,'2017-10-04','00:19:48',1,NULL,'LOC1000','VEH1000',5);
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_business_partner`
--

DROP TABLE IF EXISTS `sale_business_partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale_business_partner` (
  `service_has_business_partner_id` int(11) NOT NULL AUTO_INCREMENT,
  `business_partner_business_partner_code` varchar(15) NOT NULL,
  `sale_sale_code` varchar(15) NOT NULL,
  PRIMARY KEY (`service_has_business_partner_id`,`business_partner_business_partner_code`,`sale_sale_code`),
  KEY `fk_service_has_business_partner_business_partner1_idx` (`business_partner_business_partner_code`),
  KEY `fk_sale_business_partner_sale1_idx` (`sale_sale_code`),
  CONSTRAINT `fk_sale_business_partner_sale1` FOREIGN KEY (`sale_sale_code`) REFERENCES `sale` (`sale_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_service_has_business_partner_business_partner1` FOREIGN KEY (`business_partner_business_partner_code`) REFERENCES `business_partner` (`business_partner_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_business_partner`
--

LOCK TABLES `sale_business_partner` WRITE;
/*!40000 ALTER TABLE `sale_business_partner` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_business_partner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_item`
--

DROP TABLE IF EXISTS `sale_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale_item` (
  `item_item_code` varchar(15) NOT NULL,
  `unit_price` float DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `sub_total` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_sale_code` varchar(15) NOT NULL,
  `sale_item_status_item_status_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_service_has_item_item1_idx` (`item_item_code`),
  KEY `fk_sale_item_sale1_idx` (`sale_sale_code`),
  KEY `fk_sale_item_sale_item_status1_idx` (`sale_item_status_item_status_id`),
  CONSTRAINT `fk_sale_item_sale1` FOREIGN KEY (`sale_sale_code`) REFERENCES `sale` (`sale_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sale_item_sale_item_status1` FOREIGN KEY (`sale_item_status_item_status_id`) REFERENCES `sale_item_status` (`item_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_service_has_item_item1` FOREIGN KEY (`item_item_code`) REFERENCES `item` (`item_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_item`
--

LOCK TABLES `sale_item` WRITE;
/*!40000 ALTER TABLE `sale_item` DISABLE KEYS */;
INSERT INTO `sale_item` VALUES ('ITM1001',70,2,140,0,140,'2017-10-04','00:18:49',1,'2017-10-04','00:19:48',1,'GREESE MP2 100G',1,'DRS1001',1);
/*!40000 ALTER TABLE `sale_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_item_status`
--

DROP TABLE IF EXISTS `sale_item_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale_item_status` (
  `item_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_status_description` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`item_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_item_status`
--

LOCK TABLES `sale_item_status` WRITE;
/*!40000 ALTER TABLE `sale_item_status` DISABLE KEYS */;
INSERT INTO `sale_item_status` VALUES (1,'ACTIVE','2017-01-01','12:00:00',1,NULL,NULL,NULL,'Active items in service'),(2,'CANCELED','2017-01-01','12:00:00',1,NULL,NULL,NULL,'Canceled items in service');
/*!40000 ALTER TABLE `sale_item_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_status`
--

DROP TABLE IF EXISTS `sale_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_description` varchar(45) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `create_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_status`
--

LOCK TABLES `sale_status` WRITE;
/*!40000 ALTER TABLE `sale_status` DISABLE KEYS */;
INSERT INTO `sale_status` VALUES (1,'NEW','2017-01-01','12:00:00',1,NULL,NULL,NULL,'New service'),(2,'OPEN','2017-01-01','12:00:00',1,NULL,NULL,NULL,'Open service'),(3,'INVOICED','2017-01-01','12:00:00',1,NULL,NULL,NULL,'Invoiced service'),(4,'PARTIALLY PAID','2017-01-01','12:00:00',1,NULL,NULL,NULL,'Partially paid service'),(5,'SETTLED','2017-01-01','12:00:00',1,NULL,NULL,NULL,'Settled service'),(6,'CANCELED','2017-01-01','12:00:00',1,NULL,NULL,NULL,'Canceled service');
/*!40000 ALTER TABLE `sale_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selling_price`
--

DROP TABLE IF EXISTS `selling_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `selling_price` (
  `selling_price_id` int(11) NOT NULL AUTO_INCREMENT,
  `selling_price` float DEFAULT NULL,
  `effective_date` date DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `item_item_code` varchar(15) NOT NULL,
  PRIMARY KEY (`selling_price_id`),
  KEY `fk_selling_price_item1_idx` (`item_item_code`),
  CONSTRAINT `fk_selling_price_item1` FOREIGN KEY (`item_item_code`) REFERENCES `item` (`item_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selling_price`
--

LOCK TABLES `selling_price` WRITE;
/*!40000 ALTER TABLE `selling_price` DISABLE KEYS */;
INSERT INTO `selling_price` VALUES (15,70,'2017-10-01','2017-10-01','18:20:55',1,'2017-10-01','18:33:38',1,'','ITM1001'),(16,500,'2017-10-01','2017-10-01','18:34:33',1,NULL,NULL,NULL,'','ITM1118'),(17,2600,'2017-10-01','2017-10-01','19:34:12',1,NULL,NULL,NULL,'','ITM1012');
/*!40000 ALTER TABLE `selling_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_bay`
--

DROP TABLE IF EXISTS `service_bay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_bay` (
  `service_bay_code` varchar(15) NOT NULL,
  `service_bay_name` varchar(45) DEFAULT NULL,
  `isActive` int(11) DEFAULT '1',
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`service_bay_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_bay`
--

LOCK TABLES `service_bay` WRITE;
/*!40000 ALTER TABLE `service_bay` DISABLE KEYS */;
INSERT INTO `service_bay` VALUES ('LOC1000','SERVICE BAY 1',1,'2017-09-09','20:38:44',1,NULL,NULL,NULL,'SERVICE BAY 1'),('LOC1001','SERVICE BAY 2',1,'2017-09-09','20:39:02',1,NULL,NULL,NULL,'SERVICE BAY 2'),('LOC1002','SERVICE BAY 3',1,'2017-09-09','20:39:12',1,NULL,NULL,NULL,'SERVICE BAY 3');
/*!40000 ALTER TABLE `service_bay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `cost_price` float DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `grn_grn_code` varchar(15) NOT NULL,
  `item_item_code` varchar(15) NOT NULL,
  `stock_status_stock_status_id` int(11) NOT NULL,
  PRIMARY KEY (`stock_id`),
  KEY `fk_grn_line_grn1_idx` (`grn_grn_code`),
  KEY `fk_stock_item1_idx` (`item_item_code`),
  KEY `fk_stock_stock_status1_idx` (`stock_status_stock_status_id`),
  CONSTRAINT `fk_grn_line_grn1` FOREIGN KEY (`grn_grn_code`) REFERENCES `grn` (`grn_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_stock_item1` FOREIGN KEY (`item_item_code`) REFERENCES `item` (`item_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_stock_stock_status1` FOREIGN KEY (`stock_status_stock_status_id`) REFERENCES `stock_status` (`stock_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_status`
--

DROP TABLE IF EXISTS `stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `stock_status_name` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`stock_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_status`
--

LOCK TABLES `stock_status` WRITE;
/*!40000 ALTER TABLE `stock_status` DISABLE KEYS */;
INSERT INTO `stock_status` VALUES (1,'STOCKED','2017-01-01','12:00:00',1,NULL,NULL,NULL,'Added to stock status'),(2,'REJECTED','2017-01-01','12:00:00',1,NULL,NULL,NULL,'Rejected stock status'),(3,'RETURNED','2017-01-01','12:00:00',1,NULL,NULL,NULL,'Returned stock status');
/*!40000 ALTER TABLE `stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage`
--

DROP TABLE IF EXISTS `storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storage` (
  `storage_code` varchar(15) NOT NULL,
  `storage_name` varchar(100) DEFAULT NULL,
  `isActive` int(11) DEFAULT '1',
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`storage_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage`
--

LOCK TABLES `storage` WRITE;
/*!40000 ALTER TABLE `storage` DISABLE KEYS */;
INSERT INTO `storage` VALUES ('STO1000','MAIN STORAGE',1,'2017-09-09','20:37:14',1,NULL,NULL,NULL,'MAIN STORAGE');
/*!40000 ALTER TABLE `storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_account`
--

DROP TABLE IF EXISTS `sub_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_account` (
  `code` varchar(15) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `isActive` int(11) DEFAULT NULL,
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

--
-- Table structure for table `telephone_number`
--

DROP TABLE IF EXISTS `telephone_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telephone_number` (
  `telephone_number_code` varchar(15) NOT NULL,
  `telephone_number` varchar(15) DEFAULT NULL,
  `isActive` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`telephone_number_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telephone_number`
--

LOCK TABLES `telephone_number` WRITE;
/*!40000 ALTER TABLE `telephone_number` DISABLE KEYS */;
INSERT INTO `telephone_number` VALUES ('TEL1000','0342222222',1,'2017-01-01','12:00:00',1,NULL,NULL,NULL,'Admin telephone'),('TEL1001','0773099342',NULL,'2017-09-09','20:50:53',1,NULL,NULL,NULL,NULL),('TEL1002','0770556547',NULL,'2017-09-17','12:40:53',1,NULL,NULL,NULL,NULL),('TEL1003','0773670571',NULL,'2017-10-01','18:39:06',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `telephone_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uom`
--

DROP TABLE IF EXISTS `uom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uom` (
  `uom_code` varchar(15) NOT NULL,
  `uom_symble` varchar(10) DEFAULT NULL,
  `uom_name` varchar(45) DEFAULT NULL,
  `isActive` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uom_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uom`
--

LOCK TABLES `uom` WRITE;
/*!40000 ALTER TABLE `uom` DISABLE KEYS */;
INSERT INTO `uom` VALUES ('UOM1000','E','EACH',1,'2017-01-01','12:00:00',1,NULL,NULL,NULL,'EACH UNIT OF MEASURE'),('UOM1001','L','LITER',1,'2017-01-01','12:00:00',1,NULL,NULL,NULL,'LITER UNIT OF MEASURE'),('UOM1002','ML','MILILITER',1,'2017-01-01','12:00:00',1,NULL,NULL,NULL,'MILILITER UNIT OF MEASURE'),('UOM1003','KG','KILOGRAM',1,'2017-01-01','12:00:00',1,NULL,NULL,NULL,'KOLIGRAM UNIT OF MEASURE'),('UOM1004','G','GRAM',1,'2017-01-01','12:00:00',1,NULL,NULL,NULL,'GRAM UNIT OF MEASURE');
/*!40000 ALTER TABLE `uom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uom_conversion`
--

DROP TABLE IF EXISTS `uom_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uom_conversion` (
  `uom_conversion_code` varchar(15) NOT NULL,
  `multiplied_by` float DEFAULT NULL,
  `divided_by` float DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `uom_uom_code_from` varchar(15) NOT NULL,
  `uom_uom_code_to` varchar(15) NOT NULL,
  PRIMARY KEY (`uom_conversion_code`),
  KEY `fk_uom_conversion_uom1_idx` (`uom_uom_code_from`),
  KEY `fk_uom_conversion_uom2_idx` (`uom_uom_code_to`),
  CONSTRAINT `fk_uom_conversion_uom1` FOREIGN KEY (`uom_uom_code_from`) REFERENCES `uom` (`uom_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_uom_conversion_uom2` FOREIGN KEY (`uom_uom_code_to`) REFERENCES `uom` (`uom_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uom_conversion`
--

LOCK TABLES `uom_conversion` WRITE;
/*!40000 ALTER TABLE `uom_conversion` DISABLE KEYS */;
INSERT INTO `uom_conversion` VALUES ('UOC',1000,1000,'2017-01-01','12:00:00',1,NULL,NULL,NULL,'liter to milliliter','UOM1001','UOM1002');
/*!40000 ALTER TABLE `uom_conversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `user_level` int(11) NOT NULL,
  `isActive` int(11) DEFAULT '1',
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `midified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `midified_user` int(11) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `user_privilage_privilage_id` int(11) NOT NULL,
  `business_partner_business_partner_code` varchar(15) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_user_user_privilage1_idx` (`user_privilage_privilage_id`),
  KEY `fk_user_business_partner1_idx` (`business_partner_business_partner_code`),
  CONSTRAINT `fk_user_business_partner1` FOREIGN KEY (`business_partner_business_partner_code`) REFERENCES `business_partner` (`business_partner_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_user_privilage1` FOREIGN KEY (`user_privilage_privilage_id`) REFERENCES `user_privilage` (`privilage_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin@123',1,1,'2017-05-01','08:00:00',1,'1900-01-01','12:00:00',1,'System admin',1,'BPT1000');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_privilage`
--

DROP TABLE IF EXISTS `user_privilage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_privilage` (
  `privilage_id` int(11) NOT NULL,
  `privilage_code` varchar(255) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`privilage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_privilage`
--

LOCK TABLES `user_privilage` WRITE;
/*!40000 ALTER TABLE `user_privilage` DISABLE KEYS */;
INSERT INTO `user_privilage` VALUES (1,'1,2,3,4,5,11,12,13,14,15,21,22,23,24,25,31,32,33,34,35,41,42,43,44,45,51,52,53,54,55,111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115,1116','2017-05-01','08:00:00',1,'1900-01-01','12:00:00',1,'System admin role');
/*!40000 ALTER TABLE `user_privilage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle` (
  `vehicle_code` varchar(15) NOT NULL,
  `vehicle_number` varchar(15) NOT NULL,
  `manufacturered_year` varchar(10) DEFAULT NULL,
  `isActive` int(11) DEFAULT '1',
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `business_partner_business_partner_code` varchar(15) NOT NULL,
  `vehicle_type_vehicle_type_code` varchar(15) NOT NULL,
  PRIMARY KEY (`vehicle_code`),
  KEY `fk_vehicle_business_partner1_idx` (`business_partner_business_partner_code`),
  KEY `fk_vehicle_vehicle_type1_idx` (`vehicle_type_vehicle_type_code`),
  CONSTRAINT `fk_vehicle_business_partner1` FOREIGN KEY (`business_partner_business_partner_code`) REFERENCES `business_partner` (`business_partner_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vehicle_vehicle_type1` FOREIGN KEY (`vehicle_type_vehicle_type_code`) REFERENCES `vehicle_type` (`vehicle_type_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES ('VEH1000','CAJ-1082','2016',1,'2017-09-09','22:25:50',1,NULL,NULL,NULL,'','BPT1001','VHT1000'),('VEH1001','CAJ-2535','2015',1,'2017-09-17','12:41:07',1,NULL,NULL,NULL,'HFUKALSDFHSKA;','BPT1002','VHT1000');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_type`
--

DROP TABLE IF EXISTS `vehicle_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_type` (
  `vehicle_type_code` varchar(15) NOT NULL,
  `vehicle_type_name` varchar(45) DEFAULT NULL,
  `isActive` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`vehicle_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_type`
--

LOCK TABLES `vehicle_type` WRITE;
/*!40000 ALTER TABLE `vehicle_type` DISABLE KEYS */;
INSERT INTO `vehicle_type` VALUES ('VHT1000','CAR',1,'2017-09-09','22:25:22',1,NULL,NULL,NULL,'CAR');
/*!40000 ALTER TABLE `vehicle_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'enterprisedb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-04  1:24:07

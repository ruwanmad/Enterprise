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
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
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
INSERT INTO `business_partner` VALUES ('BPT1000','System','Administrator','','1900-01-01',1,1,1,1,'2017-05-01','08:00:00',1,'1900-01-01','12:00:00',1,'System administrator');
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
  `grn_number` varchar(15) NOT NULL,
  `grn_time` time DEFAULT NULL,
  `grn_date` date DEFAULT NULL,
  `handed_over_by` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `midified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`grn_code`)
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
  `grn_line_code` varchar(15) NOT NULL,
  `unit_price` float DEFAULT NULL,
  `received_quantity` float DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `rejected_quantity` float DEFAULT NULL,
  `rejected_reason` varchar(150) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `grn_grn_id` int(11) NOT NULL,
  `item_item_code` varchar(15) NOT NULL,
  `grn_grn_code` varchar(15) NOT NULL,
  PRIMARY KEY (`grn_line_code`),
  KEY `fk_grn_line_item1_idx` (`item_item_code`),
  KEY `fk_grn_line_grn1_idx` (`grn_grn_code`),
  CONSTRAINT `fk_grn_line_grn1` FOREIGN KEY (`grn_grn_code`) REFERENCES `grn` (`grn_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_grn_line_item1` FOREIGN KEY (`item_item_code`) REFERENCES `item` (`item_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  `net_amount` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `service_service_id` int(11) NOT NULL,
  `service_service_code` varchar(15) NOT NULL,
  PRIMARY KEY (`invoice_number`),
  KEY `fk_invoice_service1_idx` (`service_service_code`),
  CONSTRAINT `fk_invoice_service1` FOREIGN KEY (`service_service_code`) REFERENCES `service` (`service_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_line`
--

DROP TABLE IF EXISTS `invoice_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_line` (
  `invoice_line_code` varchar(10) NOT NULL,
  `discount` float DEFAULT NULL,
  `tax1` float DEFAULT NULL,
  `tax2` float DEFAULT NULL,
  `tax3` float DEFAULT NULL,
  `tax4` float DEFAULT NULL,
  `tax5` float DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `invoice_invoice_number` varchar(10) NOT NULL,
  PRIMARY KEY (`invoice_line_code`),
  KEY `fk_invoice_line_invoice1_idx` (`invoice_invoice_number`),
  CONSTRAINT `fk_invoice_line_invoice1` FOREIGN KEY (`invoice_invoice_number`) REFERENCES `invoice` (`invoice_number`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_line`
--

LOCK TABLES `invoice_line` WRITE;
/*!40000 ALTER TABLE `invoice_line` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_line` ENABLE KEYS */;
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
  `selling_uom` int(11) DEFAULT NULL,
  `buying_uom` int(11) DEFAULT NULL,
  `cost_price` float DEFAULT NULL,
  `selling_price` float DEFAULT NULL,
  `issue_method` varchar(10) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `reorder_quantity` float DEFAULT NULL,
  `isActive` int(11) DEFAULT '1',
  `creadet_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `sub_category_sub_category_code` varchar(15) NOT NULL,
  `rack_slot_rack_slot_code` varchar(10) NOT NULL,
  PRIMARY KEY (`item_code`),
  KEY `fk_item_sub_category1_idx` (`sub_category_sub_category_code`),
  KEY `fk_item_rack_slot1_idx` (`rack_slot_rack_slot_code`),
  CONSTRAINT `fk_item_rack_slot1` FOREIGN KEY (`rack_slot_rack_slot_code`) REFERENCES `rack_slot` (`rack_slot_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_sub_category1` FOREIGN KEY (`sub_category_sub_category_code`) REFERENCES `sub_category` (`sub_category_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `key_table`
--

LOCK TABLES `key_table` WRITE;
/*!40000 ALTER TABLE `key_table` DISABLE KEYS */;
INSERT INTO `key_table` VALUES (1,'VHT',1001,'Vehicle type','2017-06-04','23:29:18',1,NULL,NULL,NULL),(2,'VEH',1001,'Vehicle','2017-06-04','23:30:28',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `key_table` ENABLE KEYS */;
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
  `icon_name` varchar(45) DEFAULT NULL,
  `isShortcut_added` int(11) DEFAULT '0',
  `isActive` int(11) DEFAULT NULL,
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
INSERT INTO `module` VALUES (1,'1','Users','users.png',0,1,'2016-01-01','12:00:00',1,'2017-06-03','00:34:32',1,'Users module'),(2,'2','User Privilages','up.png',0,1,'2016-01-01','12:00:00',1,'2017-06-03','00:34:32',1,'User privilages module'),(3,'3','Storage','storage.png',0,1,'2016-01-01','12:00:00',1,'2017-06-03','00:34:32',1,'Storage module'),(4,'4','Storage Racks','racks.png',0,1,'2016-01-01','12:00:00',1,'2017-06-03','00:34:32',1,'Storage Racks module'),(5,'5','Rack Slots','slots.png',0,1,'2016-01-01','12:00:00',1,'2017-06-03','00:34:32',1,'Rack Slots module'),(6,'6','Locations','locations.png',0,1,'2016-01-01','12:00:00',1,'2017-06-03','00:34:32',1,'Locations module'),(7,'7','Category','category.png',0,1,'2016-01-01','12:00:00',1,'2017-06-03','00:34:32',1,'Category module'),(8,'8','Sub Category Type','sct.png',0,1,'2016-01-01','12:00:00',1,'2017-06-03','00:34:32',1,'Sub category type module'),(9,'9','Sub Category','sc.png',0,1,'2016-01-01','12:00:00',1,'2017-06-03','00:34:32',1,'Sub category module'),(10,'10','Items','items.png',0,1,'2016-01-01','12:00:00',1,'2017-06-03','00:34:32',1,'Items module'),(11,'11','Business Partner','bp.png',0,1,'2016-01-01','12:00:00',1,'2017-06-03','00:34:32',1,'Business partner module'),(12,'12','Printers','printers.png',0,1,'2016-01-01','12:00:00',1,'2017-06-03','00:34:32',1,'Printers module'),(13,'13','Vehicle Type','vt.png',0,1,'2016-01-01','12:00:00',1,'2017-06-03','00:34:32',1,'Vehivle Type module'),(14,'14','Vehicles','vehivles.png',0,1,'2016-01-01','12:00:00',1,'2017-06-03','00:34:32',1,'Vehivles module'),(15,'15','Add Shortcuts','as.png',0,1,'2016-01-01','12:00:00',1,'2017-06-03','00:34:32',1,'Add Shortcuts module');
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
/*!40000 ALTER TABLE `rack_slot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `service_code` varchar(15) NOT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `servicecol` varchar(45) DEFAULT NULL,
  `service_bay_service_bay_code` varchar(15) NOT NULL,
  `vehicle_vehicle_code` varchar(15) NOT NULL,
  PRIMARY KEY (`service_code`),
  KEY `fk_service_service_bay1_idx` (`service_bay_service_bay_code`),
  KEY `fk_service_vehicle1_idx` (`vehicle_vehicle_code`),
  CONSTRAINT `fk_service_service_bay1` FOREIGN KEY (`service_bay_service_bay_code`) REFERENCES `service_bay` (`service_bay_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_service_vehicle1` FOREIGN KEY (`vehicle_vehicle_code`) REFERENCES `vehicle` (`vehicle_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
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
/*!40000 ALTER TABLE `service_bay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_item`
--

DROP TABLE IF EXISTS `service_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_item` (
  `item_item_code` varchar(15) NOT NULL,
  `service_service_code` varchar(15) NOT NULL,
  KEY `fk_service_item_item1_idx` (`item_item_code`),
  KEY `fk_service_item_service1_idx` (`service_service_code`),
  CONSTRAINT `fk_service_item_item1` FOREIGN KEY (`item_item_code`) REFERENCES `item` (`item_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_service_item_service1` FOREIGN KEY (`service_service_code`) REFERENCES `service` (`service_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_item`
--

LOCK TABLES `service_item` WRITE;
/*!40000 ALTER TABLE `service_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_item` ENABLE KEYS */;
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
/*!40000 ALTER TABLE `storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_category`
--

DROP TABLE IF EXISTS `sub_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_category` (
  `sub_category_code` varchar(15) NOT NULL,
  `sub_category_name` varchar(20) DEFAULT NULL,
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
  `sub_category_type_sub_category_type_code` varchar(15) NOT NULL,
  PRIMARY KEY (`sub_category_code`),
  KEY `fk_sub_category_category1_idx` (`category_category_code`),
  KEY `fk_sub_category_printer1_idx` (`printer_printer_code`),
  KEY `fk_sub_category_sub_category_type1_idx` (`sub_category_type_sub_category_type_code`),
  CONSTRAINT `fk_sub_category_category1` FOREIGN KEY (`category_category_code`) REFERENCES `category` (`category_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sub_category_printer1` FOREIGN KEY (`printer_printer_code`) REFERENCES `printer` (`printer_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sub_category_sub_category_type1` FOREIGN KEY (`sub_category_type_sub_category_type_code`) REFERENCES `sub_category_type` (`sub_category_type_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_category`
--

LOCK TABLES `sub_category` WRITE;
/*!40000 ALTER TABLE `sub_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_category_type`
--

DROP TABLE IF EXISTS `sub_category_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_category_type` (
  `sub_category_type_code` varchar(15) NOT NULL,
  `sub_category_type_name` varchar(45) DEFAULT NULL,
  `isActive` int(11) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_time` time DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`sub_category_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_category_type`
--

LOCK TABLES `sub_category_type` WRITE;
/*!40000 ALTER TABLE `sub_category_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_category_type` ENABLE KEYS */;
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
/*!40000 ALTER TABLE `telephone_number` ENABLE KEYS */;
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
INSERT INTO `user_privilage` VALUES (1,'1,2,3,4,5,11,12,13,14,15,21,22,23,24,25,31,32,33,34,35,41,42,43,44,45,51,52,53,54,55,111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115','2017-05-01','08:00:00',1,'1900-01-01','12:00:00',1,'System admin role');
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
INSERT INTO `vehicle` VALUES ('CAJ-1082','CAJ-1082','2015',1,NULL,NULL,NULL,'2017-06-04','23:42:15',1,'ADMIN CAR','BPT1000','VHT1000'),('VEH1000','CAJ-1082','2015',1,'2017-06-04','23:30:29',1,NULL,NULL,NULL,'RUWAN CAR','BPT1000','VHT1000');
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
INSERT INTO `vehicle_type` VALUES ('VHT1000','CAR',1,'2017-06-04','23:29:18',1,NULL,NULL,NULL,'CAR');
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

-- Dump completed on 2017-06-04 23:45:40

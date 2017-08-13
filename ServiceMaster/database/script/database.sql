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
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES ('ADD1000','279/1','Kalupahana','Poruwadanda',1,'2017-01-01','12:00:00',1,'2017-01-01','12:00:00',1,'Awanthi address');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `bom`
--

LOCK TABLES `bom` WRITE;
/*!40000 ALTER TABLE `bom` DISABLE KEYS */;
/*!40000 ALTER TABLE `bom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `bom_item`
--

LOCK TABLES `bom_item` WRITE;
/*!40000 ALTER TABLE `bom_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `bom_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `business_address`
--

LOCK TABLES `business_address` WRITE;
/*!40000 ALTER TABLE `business_address` DISABLE KEYS */;
INSERT INTO `business_address` VALUES ('ADD1000','BPT1000'),('ADD1000','BPT1001');
/*!40000 ALTER TABLE `business_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `business_partner`
--

LOCK TABLES `business_partner` WRITE;
/*!40000 ALTER TABLE `business_partner` DISABLE KEYS */;
INSERT INTO `business_partner` VALUES ('BPT1000','Awanthi','Iroshani','842015436v','1984-10-28',1,0,0,1,'2017-08-06','22:19:14',1,NULL,NULL,NULL,''),('BPT1001','Ruwan','Madawala','842450497v','1984-09-01',1,1,1,1,'2017-08-07','14:38:37',1,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `business_partner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `business_telephone`
--

LOCK TABLES `business_telephone` WRITE;
/*!40000 ALTER TABLE `business_telephone` DISABLE KEYS */;
INSERT INTO `business_telephone` VALUES ('TEL1000','BPT1000'),('TEL1001','BPT1001');
/*!40000 ALTER TABLE `business_telephone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('CAT1000','OIL',1,'2017-08-06','16:45:07',1,NULL,NULL,NULL,'OIL');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `grn`
--

LOCK TABLES `grn` WRITE;
/*!40000 ALTER TABLE `grn` DISABLE KEYS */;
/*!40000 ALTER TABLE `grn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `grn_line`
--

LOCK TABLES `grn_line` WRITE;
/*!40000 ALTER TABLE `grn_line` DISABLE KEYS */;
/*!40000 ALTER TABLE `grn_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES ('ITM1000','BREAK OIL 500ML CAN',250,'1',10,1,1,'2017-08-07','15:00:00',1,NULL,NULL,NULL,'BREAK OIL 500ML CAN','SUB1000','SLT1000','UOM1000','UOM1000'),('ITM1001','ENGINE OIL 1L CAN',2100,'1',10,1,1,'2017-08-07','15:00:00',1,NULL,NULL,NULL,'ENGINE OIL 1L CAN','SUB1000','SLT1000','UOM1000','UOM1000'),('ITM1002','CAR OIL FILTER',300,'1',10,1,1,'2017-08-07','15:00:00',1,NULL,NULL,NULL,'CAR OIL FILTER','SUB1000','SLT1000','UOM1000','UOM1000'),('ITM1003','STEERING OIL 250ML CAN',170,'1',10,1,1,'2017-08-07','15:00:00',1,NULL,NULL,NULL,'STEERING OIL 250ML CAN','SUB1000','SLT1000','UOM1000','UOM1000');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `item_has_manufacturer`
--

LOCK TABLES `item_has_manufacturer` WRITE;
/*!40000 ALTER TABLE `item_has_manufacturer` DISABLE KEYS */;
INSERT INTO `item_has_manufacturer` VALUES ('ITM1000','MAN1000');
/*!40000 ALTER TABLE `item_has_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `key_table`
--

LOCK TABLES `key_table` WRITE;
/*!40000 ALTER TABLE `key_table` DISABLE KEYS */;
INSERT INTO `key_table` VALUES (1,'STO',1001,'Storage','2017-08-06','16:42:51',1,NULL,NULL,NULL),(2,'RAC',1001,'Rack','2017-08-06','16:43:19',1,NULL,NULL,NULL),(3,'SLT',1001,'Rack slot','2017-08-06','16:43:43',1,NULL,NULL,NULL),(4,'LOC',1001,'Location','2017-08-06','16:44:15',1,NULL,NULL,NULL),(5,'PRN',1001,'Printers','2017-08-06','16:44:39',1,NULL,NULL,NULL),(6,'CAT',1001,'Category','2017-08-06','16:45:07',1,NULL,NULL,NULL),(7,'SCT',1001,'Sub category type','2017-08-06','16:45:39',1,NULL,NULL,NULL),(8,'SUB',1001,'Sub Category','2017-08-06','16:46:09',1,NULL,NULL,NULL),(9,'VHT',1003,'Vehicle type','2017-08-06','17:19:52',1,'2017-08-06','22:20:43',1),(10,'VEH',1002,'Vehicle','2017-08-06','17:21:07',1,'2017-08-06','22:21:17',1),(11,'ADD',1001,'Address','2017-08-06','17:21:07',1,NULL,NULL,NULL),(12,'TEL',1002,'Telephone numer','2017-08-06','22:19:04',1,'2017-08-07','14:38:27',1),(13,'BPT',1002,'Business patner','2017-08-06','22:19:14',1,'2017-08-07','14:38:37',1),(14,'UOM',1001,'Unit of measure','2017-08-07','14:56:00',1,NULL,NULL,NULL),(15,'MAN',1001,'Manufacturer','2017-08-07','14:56:00',1,NULL,NULL,NULL),(18,'SVR',1002,'Service','2017-08-07','18:01:20',1,'2017-08-07','18:03:15',1);
/*!40000 ALTER TABLE `key_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `license`
--

LOCK TABLES `license` WRITE;
/*!40000 ALTER TABLE `license` DISABLE KEYS */;
INSERT INTO `license` VALUES (1,'Test Companu','Address one','Address two','Address Three','+94 115 667 900','+94 115 667 901','testcompany@company.com','www.testcompany.com','111-123456789');
/*!40000 ALTER TABLE `license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES ('MAN1000','CALTEX','2017-08-07','14:58:00',1,NULL,NULL,NULL,'CALTEX');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (1,'1','Users','users.png',0,1,0,'2016-01-01','12:00:00',1,'2017-08-06','16:35:43',1,'Users module'),(2,'2','User Privilages','up.png',0,1,0,'2016-01-01','12:00:00',1,'2017-08-06','16:35:43',1,'User privilages module'),(3,'3','Storage','storage.png',0,1,0,'2016-01-01','12:00:00',1,'2017-08-06','16:35:43',1,'Storage module'),(4,'4','Storage Racks','racks.png',0,1,0,'2016-01-01','12:00:00',1,'2017-08-06','16:35:43',1,'Storage Racks module'),(5,'5','Rack Slots','slots.png',0,1,0,'2016-01-01','12:00:00',1,'2017-08-06','16:35:43',1,'Rack Slots module'),(6,'6','Locations','locations.png',0,1,0,'2016-01-01','12:00:00',1,'2017-08-06','16:35:43',1,'Locations module'),(7,'7','Category','category.png',0,1,0,'2016-01-01','12:00:00',1,'2017-08-06','16:35:43',1,'Category module'),(8,'8','Sub Category Type','sct.png',0,1,0,'2016-01-01','12:00:00',1,'2017-08-06','16:35:43',1,'Sub category type module'),(9,'9','Sub Category','sc.png',0,1,0,'2016-01-01','12:00:00',1,'2017-08-06','16:35:43',1,'Sub category module'),(10,'10','Items','items.png',0,1,0,'2016-01-01','12:00:00',1,'2017-08-06','16:35:43',1,'Items module'),(11,'11','Business Partner','bp.png',0,1,0,'2016-01-01','12:00:00',1,'2017-08-06','16:35:43',1,'Business partner module'),(12,'12','Printers','printers.png',0,1,0,'2016-01-01','12:00:00',1,'2017-08-06','16:35:43',1,'Printers module'),(13,'13','Vehicle Type','vt.png',0,1,0,'2016-01-01','12:00:00',1,'2017-08-06','16:35:43',1,'Vehivle Type module'),(14,'14','Vehicles','vehivles.png',0,1,0,'2016-01-01','12:00:00',1,'2017-08-06','16:35:43',1,'Vehivles module'),(15,'15','Add Shortcuts','as.png',0,1,0,'2016-01-01','12:00:00',1,'2017-08-06','16:35:43',1,'Add Shortcuts module'),(16,'16','Service','sv.png',1,1,1,'2016-01-01','12:00:00',1,'2017-08-06','16:35:43',1,'Servicemodule');
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `payment_type`
--

LOCK TABLES `payment_type` WRITE;
/*!40000 ALTER TABLE `payment_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `printer`
--

LOCK TABLES `printer` WRITE;
/*!40000 ALTER TABLE `printer` DISABLE KEYS */;
INSERT INTO `printer` VALUES ('PRN1000','BILL PRINTER',1,'2017-08-06','16:44:39',1,NULL,NULL,NULL,'BILL PRINTER');
/*!40000 ALTER TABLE `printer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `rack`
--

LOCK TABLES `rack` WRITE;
/*!40000 ALTER TABLE `rack` DISABLE KEYS */;
INSERT INTO `rack` VALUES ('RAC1000','RACK 1',1,'2017-08-06','16:43:19',1,NULL,NULL,NULL,'RACK 1','STO1000');
/*!40000 ALTER TABLE `rack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `rack_slot`
--

LOCK TABLES `rack_slot` WRITE;
/*!40000 ALTER TABLE `rack_slot` DISABLE KEYS */;
INSERT INTO `rack_slot` VALUES ('SLT1000','SLOT 1',1,'2017-08-06','16:43:43',1,NULL,NULL,NULL,'SLOT 1','RAC1000');
/*!40000 ALTER TABLE `rack_slot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES ('SVR1001',15100,'2017-08-07','18:03:19',1,NULL,NULL,NULL,NULL,'LOC1000','VEH1000');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `service_bay`
--

LOCK TABLES `service_bay` WRITE;
/*!40000 ALTER TABLE `service_bay` DISABLE KEYS */;
INSERT INTO `service_bay` VALUES ('LOC1000','SERVICE BAY 1',1,'2017-08-06','16:44:15',1,NULL,NULL,NULL,'SERVICE BAY 1');
/*!40000 ALTER TABLE `service_bay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `service_has_item`
--

LOCK TABLES `service_has_item` WRITE;
/*!40000 ALTER TABLE `service_has_item` DISABLE KEYS */;
INSERT INTO `service_has_item` VALUES ('ITM1000','SVR1001',1,250,0,250,'2017-08-07','18:03:19',1,NULL,NULL,NULL,'BREAK OIL 500ML CAN',5),('ITM1002','SVR1001',1,300,0,300,'2017-08-07','18:03:19',1,NULL,NULL,NULL,'CAR OIL FILTER',6),('ITM1001','SVR1001',1,2100,0,2100,'2017-08-07','18:03:19',1,NULL,NULL,NULL,'ENGINE OIL 1L CAN',7),('ITM1003','SVR1001',1,170,0,170,'2017-08-07','18:03:19',1,NULL,NULL,NULL,'STEERING OIL 250ML CAN',8);
/*!40000 ALTER TABLE `service_has_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `storage`
--

LOCK TABLES `storage` WRITE;
/*!40000 ALTER TABLE `storage` DISABLE KEYS */;
INSERT INTO `storage` VALUES ('STO1000','STORAGE 1',1,'2017-08-06','16:42:51',1,NULL,NULL,NULL,'STORAGE 1');
/*!40000 ALTER TABLE `storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sub_category`
--

LOCK TABLES `sub_category` WRITE;
/*!40000 ALTER TABLE `sub_category` DISABLE KEYS */;
INSERT INTO `sub_category` VALUES ('SUB1000','BREAK OIL',1,'2017-08-06','16:46:09',1,NULL,NULL,NULL,'BREAK OIL','CAT1000','PRN1000','SCT1000');
/*!40000 ALTER TABLE `sub_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sub_category_type`
--

LOCK TABLES `sub_category_type` WRITE;
/*!40000 ALTER TABLE `sub_category_type` DISABLE KEYS */;
INSERT INTO `sub_category_type` VALUES ('SCT1000','SELL',1,'SELL','2017-08-06','16:45:39',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sub_category_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `telephone_number`
--

LOCK TABLES `telephone_number` WRITE;
/*!40000 ALTER TABLE `telephone_number` DISABLE KEYS */;
INSERT INTO `telephone_number` VALUES ('TEL1000','0773811155',NULL,'2017-08-06','22:19:04',1,NULL,NULL,NULL,NULL),('TEL1001','0773099342',NULL,'2017-08-07','14:38:27',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `telephone_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `uom`
--

LOCK TABLES `uom` WRITE;
/*!40000 ALTER TABLE `uom` DISABLE KEYS */;
INSERT INTO `uom` VALUES ('UOM1000','E','Each',1,'2017-08-07','14:56:00',1,NULL,NULL,NULL,'Each');
/*!40000 ALTER TABLE `uom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `uom_conversion`
--

LOCK TABLES `uom_conversion` WRITE;
/*!40000 ALTER TABLE `uom_conversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `uom_conversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin@123',1,1,'2017-05-01','08:00:00',1,'1900-01-01','12:00:00',1,'System admin',1,'BPT1000');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_privilage`
--

LOCK TABLES `user_privilage` WRITE;
/*!40000 ALTER TABLE `user_privilage` DISABLE KEYS */;
INSERT INTO `user_privilage` VALUES (1,'1,2,3,4,5,11,12,13,14,15,21,22,23,24,25,31,32,33,34,35,41,42,43,44,45,51,52,53,54,55,111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115','2017-05-01','08:00:00',1,'1900-01-01','12:00:00',1,'System admin role');
/*!40000 ALTER TABLE `user_privilage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES ('VEH1000','WP CAJ 1082','2015',1,NULL,NULL,NULL,'2017-08-07','14:42:06',1,'WP CAJ 1082','BPT1001','VHT1000'),('VEH1001','WP XQ 2287','2012',1,'2017-08-06','22:21:17',1,NULL,NULL,NULL,'BAJAJ DISCOVERY','BPT1000','VHT1002');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vehicle_type`
--

LOCK TABLES `vehicle_type` WRITE;
/*!40000 ALTER TABLE `vehicle_type` DISABLE KEYS */;
INSERT INTO `vehicle_type` VALUES ('VHT1000','CAR',1,'2017-08-06','17:19:52',1,NULL,NULL,NULL,'CAR'),('VHT1001','VAN',1,'2017-08-06','17:20:14',1,NULL,NULL,NULL,'VAN'),('VHT1002','MOTOR BIKE',1,'2017-08-06','22:20:43',1,NULL,NULL,NULL,'MOTOR BIKE');
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

-- Dump completed on 2017-08-13 17:03:05

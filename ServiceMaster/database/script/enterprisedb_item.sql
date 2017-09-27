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
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES ('ITM1000','KEROSENE OIL',NULL,10,1,1,1,0,'2017-09-10','22:41:01',1,NULL,NULL,NULL,'KEROSENE OIL','SUB1006','SLT1000','UOM1001','UOM1002','MAN1000',1,NULL,'ITP1001'),('ITM1001','CAR WASH',NULL,10,1,1,1,0,'2017-09-10','22:43:34',1,NULL,NULL,NULL,'CAR WASH','SUB1005','SLT1000','UOM1001','UOM1002','MAN1000',1,NULL,'ITP1001'),('ITM1002','CALTEX - DOT 3 BREAK OIL',NULL,10,1,1,1,0,'2017-09-10','22:44:25',1,NULL,NULL,NULL,'DOT 3 BREAK OIL','SUB1000','SLT1000','UOM1001','UOM1002','MAN1001',1,NULL,'ITP1001'),('ITM1003','PANDA UNDER WASH',NULL,0,1,0,1,0,'2017-09-10','22:46:23',1,NULL,NULL,NULL,'MICRO PANDA UNDER WASH','SUB1003','SLT1000','UOM1000','UOM1000','MAN1000',1,NULL,'ITP1000'),('ITM1004','PANDA BODY WASH',NULL,0,1,0,1,0,'2017-09-10','22:46:06',1,NULL,NULL,NULL,'MICRO PANDA BODY WASH','SUB1002','SLT1000','UOM1000','UOM1000','MAN1000',1,NULL,'ITP1000'),('ITM1005','PANDA ENGINE WASH',NULL,0,1,0,1,0,'2017-09-10','22:47:05',1,NULL,NULL,NULL,'MICRO PANDA ENGINE WASH','SUB1004','SLT1000','UOM1000','UOM1000','MAN1000',1,NULL,'ITP1000'),('ITM1006','CALTEX - DOT 3 250 ML',NULL,10,250,1,1,0,'2017-09-10','22:48:28',1,NULL,NULL,NULL,'DOT 3 250 ML','SUB1000','SLT1000','UOM1001','UOM1002','MAN1001',1,'ITM1002','ITP1000'),('ITM1007','PANDA FULL SERVICE',NULL,1,1,1,1,1,'2017-09-10','22:49:42',1,NULL,NULL,NULL,'MICRO PANDA','SUB1001','SLT1000','UOM1000','UOM1000','MAN1000',1,NULL,'ITP1000'),('ITM1008','KEROSENE 100 ML',NULL,10,100,1,1,0,'2017-09-16','18:09:43',1,NULL,NULL,NULL,'KEROSENE 100 ML','SUB1006','SLT1000','UOM1001','UOM1002','MAN1000',1,'ITM1000','ITP1001'),('ITM1009','CAR WASH 250 ML',NULL,10,250,1,1,0,'2017-09-10','23:01:33',1,NULL,NULL,NULL,'CAR WASH 250 ML','SUB1005','SLT1000','UOM1001','UOM1002','MAN1000',1,'ITM1001','ITP1000'),('ITM1010','UNDER WASH',NULL,0,1,0,1,0,'2017-09-17','12:37:06',1,NULL,NULL,NULL,'SMALL CAR UNDER WASH','SUB1001','SLT1000','UOM1000','UOM1000','MAN1000',1,NULL,'ITP1000');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-28  0:13:13

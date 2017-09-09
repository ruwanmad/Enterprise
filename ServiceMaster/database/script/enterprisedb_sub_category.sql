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
-- Dumping data for table `sub_category`
--

LOCK TABLES `sub_category` WRITE;
/*!40000 ALTER TABLE `sub_category` DISABLE KEYS */;
INSERT INTO `sub_category` VALUES ('SUB1002','BREAK OIL',1,'2017-09-05','22:45:32',1,NULL,NULL,NULL,'BREAK OIL','CAT1000','PRN1000','SCT1000'),('SUB1003','BODY WASH',1,NULL,NULL,NULL,'2017-09-05','22:46:14',1,'BODY WASH','CAT1002','PRN1000','SCT1000'),('SUB1004','CARPET WASH',1,'2017-09-05','22:46:43',1,NULL,NULL,NULL,'CARPET WASH','CAT1002','PRN1000','SCT1000'),('SUB1005','UNDER WASH',1,'2017-09-05','22:47:01',1,NULL,NULL,NULL,'UNDER WASH','CAT1002','PRN1000','SCT1000'),('SUB1006','FULL SERVICE',1,'2017-09-05','22:47:17',1,NULL,NULL,NULL,'FULL SERVICE','CAT1001','PRN1000','SCT1000'),('SUB1007','ENGINE OIL',1,'2017-09-05','22:47:35',1,NULL,NULL,NULL,'ENGINE OIL','CAT1000','PRN1000','SCT1000'),('SUB1008','POWER STEERING OIL',1,'2017-09-05','22:47:52',1,NULL,NULL,NULL,'POWER STEERING OIL','CAT1000','PRN1000','SCT1000'),('SUB1009','GEAR OIL',1,NULL,NULL,NULL,'2017-09-05','22:48:18',1,'GEAR OIL','CAT1000','PRN1000','SCT1000');
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

-- Dump completed on 2017-09-09 19:42:45

-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: ch07_saleco
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS ch07_saleco;
CREATE DATABASE IF NOT EXISTS ch07_saleco;
USE ch07_saleco;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CUS_CODE` int NOT NULL,
  `CUS_LNAME` varchar(15) NOT NULL,
  `CUS_FNAME` varchar(15) NOT NULL,
  `CUS_INITIAL` char(1) DEFAULT NULL,
  `CUS_AREACODE` char(3) DEFAULT NULL,
  `CUS_PHONE` char(8) NOT NULL,
  `CUS_BALANCE` decimal(9,2) DEFAULT '0.00',
  PRIMARY KEY (`CUS_CODE`),
  UNIQUE KEY `CUS_UI1` (`CUS_LNAME`,`CUS_FNAME`,`CUS_PHONE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (10010,'Ramas','Alfred','A','615','844-2573',0.00),(10011,'Dunne','Leona','K','713','894-1238',0.00),(10012,'Smith','Kathy','W','615','894-2285',345.86),(10013,'Olowski','Paul','F','615','894-2180',536.75),(10014,'Orlando','Myron',NULL,'615','222-1672',0.00),(10015,'O\'Brian','Amy','B','713','442-3381',0.00),(10016,'Brown','James','G','615','297-1228',221.19),(10017,'Williams','George',NULL,'615','290-2556',768.93),(10018,'Farriss','Anne','G','713','382-7185',216.55),(10019,'Smith','Olette','K','615','297-3809',0.00);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp` (
  `EMP_NUM` int NOT NULL,
  `EMP_TITLE` char(10) DEFAULT NULL,
  `EMP_LNAME` varchar(15) NOT NULL,
  `EMP_FNAME` varchar(15) NOT NULL,
  `EMP_INITIAL` char(1) DEFAULT NULL,
  `EMP_DOB` datetime DEFAULT NULL,
  `EMP_HIRE_DATE` datetime DEFAULT NULL,
  `EMP_AREACODE` char(3) DEFAULT NULL,
  `EMP_PHONE` char(8) DEFAULT NULL,
  `EMP_MGR` int DEFAULT NULL,
  PRIMARY KEY (`EMP_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (100,'Mr.','Kolmycz','George','D','1942-06-15 00:00:00','1985-03-15 00:00:00','615','324-5456',NULL),(101,'Ms.','Lewis','Rhonda','G','1965-03-19 00:00:00','1986-04-25 00:00:00','615','324-4472',100),(102,'Mr.','Vandam','Rhett',NULL,'1958-11-14 00:00:00','1990-12-20 00:00:00','901','675-8993',100),(103,'Ms.','Jones','Anne','M','1974-10-16 00:00:00','1994-08-28 00:00:00','615','898-3456',100),(104,'Mr.','Lange','John','P','1971-11-08 00:00:00','1994-10-20 00:00:00','901','504-4430',105),(105,'Mr.','Williams','Robert','D','1975-03-14 00:00:00','1998-11-08 00:00:00','615','890-3220',NULL),(106,'Mrs.','Smith','Jeanine','K','1968-02-12 00:00:00','1989-01-05 00:00:00','615','324-7883',105),(107,'Mr.','Diante','Jorge','D','1974-08-21 00:00:00','1994-07-02 00:00:00','615','890-4567',105),(108,'Mr.','Wiesenbach','Paul','R','1966-02-14 00:00:00','1992-11-18 00:00:00','615','897-4358',NULL),(109,'Mr.','Smith','George','K','1961-06-18 00:00:00','1989-04-14 00:00:00','901','504-3339',108),(110,'Mrs.','Genkazi','Leighla','W','1970-05-19 00:00:00','1990-12-01 00:00:00','901','569-0093',108),(111,'Mr.','Washington','Rupert','E','1966-01-03 00:00:00','1993-06-21 00:00:00','615','890-4925',105),(112,'Mr.','Johnson','Edward','E','1961-05-14 00:00:00','1983-12-01 00:00:00','615','898-4387',100),(113,'Ms.','Smythe','Melanie','P','1970-09-15 00:00:00','1999-05-11 00:00:00','615','324-9006',105),(114,'Ms.','Brandon','Marie','G','1956-11-02 00:00:00','1979-11-15 00:00:00','901','882-0845',108),(115,'Mrs.','Saranda','Hermine','R','1972-07-25 00:00:00','1993-04-23 00:00:00','615','324-5505',105),(116,'Mr.','Smith','George','A','1965-11-08 00:00:00','1988-12-10 00:00:00','615','890-2984',108);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EMP_NUM` int NOT NULL,
  `EMP_TITLE` char(10) DEFAULT NULL,
  `EMP_LNAME` varchar(15) NOT NULL,
  `EMP_FNAME` varchar(15) NOT NULL,
  `EMP_INITIAL` char(1) DEFAULT NULL,
  `EMP_DOB` datetime DEFAULT NULL,
  `EMP_HIRE_DATE` datetime DEFAULT NULL,
  `EMP_YEARS` int DEFAULT NULL,
  `EMP_AREACODE` char(3) DEFAULT NULL,
  `EMP_PHONE` char(8) DEFAULT NULL,
  PRIMARY KEY (`EMP_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (100,'Mr.','Kolmycz','George','D','1942-06-15 00:00:00','1985-03-15 00:00:00',18,'615','324-5456'),(101,'Ms.','Lewis','Rhonda','G','1965-03-19 00:00:00','1986-04-25 00:00:00',16,'615','324-4472'),(102,'Mr.','Vandam','Rhett',NULL,'1958-11-14 00:00:00','1990-12-20 00:00:00',12,'901','675-8993'),(103,'Ms.','Jones','Anne','M','1974-10-16 00:00:00','1994-08-28 00:00:00',8,'615','898-3456'),(104,'Mr.','Lange','John','P','1971-11-08 00:00:00','1994-10-20 00:00:00',8,'901','504-4430'),(105,'Mr.','Williams','Robert','D','1975-03-14 00:00:00','1998-11-08 00:00:00',4,'615','890-3220'),(106,'Mrs.','Smith','Jeanine','K','1968-02-12 00:00:00','1989-01-05 00:00:00',14,'615','324-7883'),(107,'Mr.','Diante','Jorge','D','1974-08-21 00:00:00','1994-07-02 00:00:00',8,'615','890-4567'),(108,'Mr.','Wiesenbach','Paul','R','1966-02-14 00:00:00','1992-11-18 00:00:00',10,'615','897-4358'),(109,'Mr.','Smith','George','K','1961-06-18 00:00:00','1989-04-14 00:00:00',13,'901','504-3339'),(110,'Mrs.','Genkazi','Leighla','W','1970-05-19 00:00:00','1990-12-01 00:00:00',12,'901','569-0093'),(111,'Mr.','Washington','Rupert','E','1966-01-03 00:00:00','1993-06-21 00:00:00',9,'615','890-4925'),(112,'Mr.','Johnson','Edward','E','1961-05-14 00:00:00','1983-12-01 00:00:00',19,'615','898-4387'),(113,'Ms.','Smythe','Melanie','P','1970-09-15 00:00:00','1999-05-11 00:00:00',3,'615','324-9006'),(114,'Ms.','Brandon','Marie','G','1956-11-02 00:00:00','1979-11-15 00:00:00',23,'901','882-0845'),(115,'Mrs.','Saranda','Hermine','R','1972-07-25 00:00:00','1993-04-23 00:00:00',9,'615','324-5505'),(116,'Mr.','Smith','George','A','1965-11-08 00:00:00','1988-12-10 00:00:00',14,'615','890-2984');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `INV_NUMBER` int NOT NULL,
  `CUS_CODE` int NOT NULL,
  `INV_DATE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`INV_NUMBER`),
  KEY `fk_invoice_customer1_idx` (`CUS_CODE`),
  CONSTRAINT `fk_invoice_customer1` FOREIGN KEY (`CUS_CODE`) REFERENCES `customer` (`CUS_CODE`),
  CONSTRAINT `INV_CK1` CHECK ((`INV_DATE` > _utf8mb4'2010-01-01'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1001,10014,'2018-01-16 00:00:00'),(1002,10011,'2018-01-16 00:00:00'),(1003,10012,'2018-01-16 00:00:00'),(1004,10011,'2018-01-17 00:00:00'),(1005,10018,'2018-01-17 00:00:00'),(1006,10014,'2018-01-17 00:00:00'),(1007,10015,'2018-01-17 00:00:00'),(1008,10011,'2018-01-17 00:00:00');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `line`
--

DROP TABLE IF EXISTS `line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `line` (
  `INV_NUMBER` int NOT NULL,
  `LINE_NUMBER` decimal(2,0) NOT NULL,
  `P_CODE` varchar(10) NOT NULL,
  `LINE_UNITS` decimal(9,2) NOT NULL DEFAULT '0.00',
  `LINE_PRICE` decimal(9,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`INV_NUMBER`,`LINE_NUMBER`),
  UNIQUE KEY `LINE_UI1` (`INV_NUMBER`,`P_CODE`),
  KEY `P_CODE` (`P_CODE`),
  CONSTRAINT `line_ibfk_1` FOREIGN KEY (`INV_NUMBER`) REFERENCES `invoice` (`INV_NUMBER`),
  CONSTRAINT `line_ibfk_2` FOREIGN KEY (`P_CODE`) REFERENCES `product` (`P_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line`
--

LOCK TABLES `line` WRITE;
/*!40000 ALTER TABLE `line` DISABLE KEYS */;
INSERT INTO `line` VALUES (1001,1,'13-Q2/P2',1.00,14.99),(1001,2,'23109-HB',1.00,9.95),(1002,1,'54778-2T',2.00,4.99),(1003,1,'2238/QPD',1.00,38.95),(1003,2,'1546-QQ2',1.00,39.95),(1003,3,'13-Q2/P2',5.00,14.99),(1004,1,'54778-2T',3.00,4.99),(1004,2,'23109-HB',2.00,9.95),(1005,1,'PVC23DRT',12.00,5.87),(1006,1,'SM-18277',3.00,6.99),(1006,2,'2232/QTY',1.00,109.92),(1006,3,'23109-HB',1.00,9.95),(1006,4,'89-WRE-Q',1.00,256.99),(1007,1,'13-Q2/P2',2.00,14.99),(1007,2,'54778-2T',1.00,4.99),(1008,1,'PVC23DRT',5.00,5.87),(1008,2,'WR3/TT3',3.00,119.95),(1008,3,'23109-HB',1.00,9.95);
/*!40000 ALTER TABLE `line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `P_CODE` varchar(10) NOT NULL,
  `P_DESCRIPT` varchar(35) NOT NULL,
  `P_INDATE` datetime NOT NULL,
  `P_QOH` int NOT NULL,
  `P_MIN` int NOT NULL,
  `P_PRICE` decimal(8,2) NOT NULL,
  `P_DISCOUNT` decimal(4,2) NOT NULL,
  `V_CODE` int DEFAULT NULL,
  PRIMARY KEY (`P_CODE`),
  KEY `V_CODE` (`V_CODE`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`V_CODE`) REFERENCES `vendor` (`V_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('11QER/31','Power painter, 15 psi., 3-nozzle','2017-11-03 00:00:00',8,5,109.99,0.00,25595),('13-Q2/P2','7.25-in. pwr. saw blade','2017-12-13 00:00:00',32,15,14.99,0.05,21344),('14-Q1/L3','9.00-in. pwr. saw blade','2017-11-13 00:00:00',18,12,17.49,0.00,21344),('1546-QQ2','Hrd. cloth, 1/4-in., 2x50','2018-01-15 00:00:00',15,8,39.95,0.00,23119),('1558-QW1','Hrd. cloth, 1/2-in., 3x50','2018-01-15 00:00:00',23,5,43.99,0.00,23119),('2232/QTY','B&D jigsaw, 12-in. blade','2017-12-30 00:00:00',8,5,109.92,0.05,24288),('2232/QWE','B&D jigsaw, 8-in. blade','2017-12-24 00:00:00',6,5,99.87,0.05,24288),('2238/QPD','B&D cordless drill, 1/2-in.','2018-01-20 00:00:00',12,5,38.95,0.05,25595),('23109-HB','Claw hammer','2018-01-20 00:00:00',23,10,9.95,0.10,21225),('23114-AA','Sledge hammer, 12 lb.','2018-01-02 00:00:00',8,5,14.40,0.05,NULL),('54778-2T','Rat-tail file, 1/8-in. fine','2017-12-15 00:00:00',43,20,4.99,0.00,21344),('89-WRE-Q','Hicut chain saw, 16 in.','2018-02-07 00:00:00',11,5,256.99,0.05,24288),('PVC23DRT','PVC pipe, 3.5-in., 8-ft','2018-02-20 00:00:00',188,75,5.87,0.00,NULL),('SM-18277','1.25-in. metal screw, 25','2018-03-01 00:00:00',172,75,6.99,0.00,21225),('SW-23116','2.5-in. wd. screw, 50','2018-02-24 00:00:00',237,100,8.45,0.00,21231),('WR3/TT3','Steel matting, 4\'x8\'x1/6\", .5\" mesh','2018-01-17 00:00:00',18,5,119.95,0.10,25595);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `V_CODE` int NOT NULL,
  `V_NAME` varchar(35) NOT NULL,
  `V_CONTACT` varchar(15) NOT NULL,
  `V_AREACODE` char(3) NOT NULL,
  `V_PHONE` char(8) NOT NULL,
  `V_STATE` char(2) NOT NULL,
  `V_ORDER` char(1) NOT NULL,
  PRIMARY KEY (`V_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (21225,'Bryson, Inc.','Smithson','615','223-3234','TN','Y'),(21226,'SuperLoo, Inc.','Flushing','904','215-8995','FL','N'),(21231,'D&E Supply','Singh','615','228-3245','TN','Y'),(21344,'Gomez Bros.','Ortega','615','889-2546','KY','N'),(22567,'Dome Supply','Smith','901','678-1419','GA','N'),(23119,'Randsets Ltd.','Anderson','901','678-3998','GA','Y'),(24004,'Brackman Bros.','Browning','615','228-1410','TN','N'),(24288,'ORDVA, Inc.','Hakford','615','898-1234','TN','Y'),(25443,'B&K, Inc.','Smith','904','227-0093','FL','N'),(25501,'Damal Supplies','Smythe','615','890-3529','TN','N'),(25595,'Rubicon Systems','Orton','904','456-0092','FL','Y');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-05 14:03:36

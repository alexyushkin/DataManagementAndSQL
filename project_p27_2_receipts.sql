-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: project_p27_2
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `receipts`
--

DROP TABLE IF EXISTS `receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipts` (
  `receipt_id` int unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `receipt_date` date NOT NULL,
  `total` decimal(3,2) NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(20) NOT NULL,
  PRIMARY KEY (`receipt_id`,`customer_id`),
  KEY `fk_receipts_streams1_idx` (`customer_id`),
  CONSTRAINT `fk_receipts_streams1` FOREIGN KEY (`customer_id`) REFERENCES `streams` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipts`
--

LOCK TABLES `receipts` WRITE;
/*!40000 ALTER TABLE `receipts` DISABLE KEYS */;
INSERT INTO `receipts` VALUES (1,64,'2018-12-31',1.99,1,'2021-01-26 00:00:00','2021-01-26 00:00:00','trigger_receipts');
INSERT INTO `receipts` VALUES (2,67,'2018-12-31',5.58,1,'2021-01-26 00:00:00','2021-01-26 00:00:00','trigger_receipts');
INSERT INTO `receipts` VALUES (3,76,'2018-12-31',2.29,1,'2021-01-26 00:00:00','2021-01-26 00:00:00','trigger_receipts');
INSERT INTO `receipts` VALUES (4,77,'2018-12-31',2.89,1,'2021-01-26 00:00:00','2021-01-26 00:00:00','trigger_receipts');
INSERT INTO `receipts` VALUES (5,81,'2018-12-31',2.69,1,'2021-01-26 00:00:00','2021-01-26 00:00:00','trigger_receipts');
INSERT INTO `receipts` VALUES (6,84,'2018-12-31',1.69,1,'2021-01-26 00:00:00','2021-01-26 00:00:00','trigger_receipts');
INSERT INTO `receipts` VALUES (7,93,'2018-12-31',1.99,1,'2021-01-26 00:00:00','2021-01-26 00:00:00','trigger_receipts');
INSERT INTO `receipts` VALUES (8,94,'2018-12-31',1.59,1,'2021-01-26 00:00:00','2021-01-26 00:00:00','trigger_receipts');
INSERT INTO `receipts` VALUES (9,102,'2018-12-31',2.89,1,'2021-01-26 00:00:00','2021-01-26 00:00:00','trigger_receipts');
INSERT INTO `receipts` VALUES (10,108,'2018-12-31',2.49,1,'2021-01-26 00:00:00','2021-01-26 00:00:00','trigger_receipts');
INSERT INTO `receipts` VALUES (11,109,'2018-12-31',2.49,1,'2021-01-26 00:00:00','2021-01-26 00:00:00','trigger_receipts');
INSERT INTO `receipts` VALUES (12,118,'2018-12-31',2.09,1,'2021-01-26 00:00:00','2021-01-26 00:00:00','trigger_receipts');
/*!40000 ALTER TABLE `receipts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-28 10:16:12

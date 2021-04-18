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
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `customer_id` int unsigned NOT NULL,
  `country` varchar(20) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `delivery_by` enum('Mail','email') DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(20) NOT NULL,
  PRIMARY KEY (`customer_id`),
  CONSTRAINT `fk_contacts_customers1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (2,'Austria','Customer Address 2','###-###-###-####','email@customer002','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (3,'Austria','Customer Address 3','###-###-###-####','email@customer003','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (4,'Austria','Customer Address 4','###-###-###-####','email@customer004','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (5,'Austria','Customer Address 5','###-###-###-####','email@customer005','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (6,'Belgium','Customer Address 6','###-###-###-####','email@customer006','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (7,'Belgium','Customer Address 7','###-###-###-####','email@customer007','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (8,'Belgium','Customer Address 8','###-###-###-####','email@customer008','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (9,'Belgium','Customer Address 9','###-###-###-####','email@customer009','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (10,'Belgium','Customer Address 10','###-###-###-####','email@customer010','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (11,'Belgium','Customer Address 11','###-###-###-####','email@customer011','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (12,'Denmark','Customer Address 12','###-###-###-####','email@customer012','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (13,'Denmark','Customer Address 13','###-###-###-####','email@customer013','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (14,'Denmark','Customer Address 14','###-###-###-####','email@customer014','Mail','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (15,'Denmark','Customer Address 15','###-###-###-####','email@customer015','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (16,'Denmark','Customer Address 16','###-###-###-####','email@customer016','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (17,'Denmark','Customer Address 17','###-###-###-####','email@customer017','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (18,'Denmark','Customer Address 18','###-###-###-####','email@customer018','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (19,'France','Customer Address 19','###-###-###-####','email@customer019','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (20,'France','Customer Address 20','###-###-###-####','email@customer020','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (21,'France','Customer Address 21','###-###-###-####','email@customer021','Mail','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (22,'France','Customer Address 22','###-###-###-####','email@customer022','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (23,'France','Customer Address 23','###-###-###-####','email@customer023','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (24,'France','Customer Address 24','###-###-###-####','email@customer024','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (25,'France','Customer Address 25','###-###-###-####','email@customer025','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (26,'France','Customer Address 26','###-###-###-####','email@customer026','Mail','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (27,'France','Customer Address 27','###-###-###-####','email@customer027','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (28,'France','Customer Address 28','###-###-###-####','email@customer028','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (29,'France','Customer Address 29','###-###-###-####','email@customer029','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (30,'France','Customer Address 30','###-###-###-####','email@customer030','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (31,'France','Customer Address 31','###-###-###-####','email@customer031','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (32,'Great Britan','Customer Address 32','###-###-###-####','email@customer032','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (33,'Great Britan','Customer Address 33','###-###-###-####','email@customer033','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (34,'Great Britan','Customer Address 34','###-###-###-####','email@customer034','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (35,'Great Britan','Customer Address 35','###-###-###-####','email@customer035','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (36,'Great Britan','Customer Address 36','###-###-###-####','email@customer036','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (37,'Great Britan','Customer Address 37','###-###-###-####','email@customer037','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (38,'Great Britan','Customer Address 38','###-###-###-####','email@customer038','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (39,'Great Britan','Customer Address 39','###-###-###-####','email@customer039','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (40,'Great Britan','Customer Address 40','###-###-###-####','email@customer040','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (41,'Great Britan','Customer Address 41','###-###-###-####','email@customer041','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (42,'Hungary','Customer Address 42','###-###-###-####','email@customer042','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (43,'Hungary','Customer Address 43','###-###-###-####','email@customer043','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (44,'Hungary','Customer Address 44','###-###-###-####','email@customer044','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (45,'Hungary','Customer Address 45','###-###-###-####','email@customer045','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (46,'Hungary','Customer Address 46','###-###-###-####','email@customer046','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (47,'Hungary','Customer Address 47','###-###-###-####','email@customer047','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (48,'Hungary','Customer Address 48','###-###-###-####','email@customer048','Mail','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (49,'Hungary','Customer Address 49','###-###-###-####','email@customer049','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (50,'Hungary','Customer Address 50','###-###-###-####','email@customer050','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (51,'Hungary','Customer Address 51','###-###-###-####','email@customer051','Mail','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (52,'Hungary','Customer Address 52','###-###-###-####','email@customer052','Mail','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (53,'Italy','Customer Address 53','###-###-###-####','email@customer053','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (54,'Italy','Customer Address 54','###-###-###-####','email@customer054','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (55,'Italy','Customer Address 55','###-###-###-####','email@customer055','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (56,'Italy','Customer Address 56','###-###-###-####','email@customer056','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (57,'Italy','Customer Address 57','###-###-###-####','email@customer057','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (58,'Italy','Customer Address 58','###-###-###-####','email@customer058','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (59,'Italy','Customer Address 59','###-###-###-####','email@customer059','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (60,'Italy','Customer Address 60','###-###-###-####','email@customer060','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (61,'Italy','Customer Address 61','###-###-###-####','email@customer061','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (62,'Italy','Customer Address 62','###-###-###-####','email@customer062','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (63,'Italy','Customer Address 63','###-###-###-####','email@customer063','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (64,'Italy','Customer Address 64','###-###-###-####','email@customer064','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (65,'Italy','Customer Address 65','###-###-###-####','email@customer065','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (66,'Italy','Customer Address 66','###-###-###-####','email@customer066','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (67,'Italy','Customer Address 67','###-###-###-####','email@customer067','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (68,'Italy','Customer Address 68','###-###-###-####','email@customer068','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (69,'Italy','Customer Address 69','###-###-###-####','email@customer069','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (70,'Italy','Customer Address 70','###-###-###-####','email@customer070','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (71,'Italy','Customer Address 71','###-###-###-####','email@customer071','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (72,'Italy','Customer Address 72','###-###-###-####','email@customer072','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (73,'Italy','Customer Address 73','###-###-###-####','email@customer073','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (74,'Italy','Customer Address 74','###-###-###-####','email@customer074','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (75,'Italy','Customer Address 75','###-###-###-####','email@customer075','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (76,'Italy','Customer Address 76','###-###-###-####','email@customer076','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (77,'Italy','Customer Address 77','###-###-###-####','email@customer077','Mail','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (78,'Italy','Customer Address 78','###-###-###-####','email@customer078','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (79,'Italy','Customer Address 79','###-###-###-####','email@customer079','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (80,'Poland','Customer Address 80','###-###-###-####','email@customer080','Mail','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (81,'Poland','Customer Address 81','###-###-###-####','email@customer081','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (82,'Poland','Customer Address 82','###-###-###-####','email@customer082','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (83,'Poland','Customer Address 83','###-###-###-####','email@customer083','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (84,'Poland','Customer Address 84','###-###-###-####','email@customer084','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (85,'Poland','Customer Address 85','###-###-###-####','email@customer085','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (86,'Poland','Customer Address 86','###-###-###-####','email@customer086','Mail','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (87,'Poland','Customer Address 87','###-###-###-####','email@customer087','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (88,'Poland','Customer Address 88','###-###-###-####','email@customer088','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (89,'Poland','Customer Address 89','###-###-###-####','email@customer089','Mail','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (90,'Poland','Customer Address 90','###-###-###-####','email@customer090','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (91,'Poland','Customer Address 91','###-###-###-####','email@customer091','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (92,'Poland','Customer Address 92','###-###-###-####','email@customer092','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (93,'Slovenia','Customer Address 93','###-###-###-####','email@customer093','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (94,'Slovenia','Customer Address 94','###-###-###-####','email@customer094','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (95,'Slovenia','Customer Address 95','###-###-###-####','email@customer095','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (96,'Slovenia','Customer Address 96','###-###-###-####','email@customer096','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (97,'Slovenia','Customer Address 97','###-###-###-####','email@customer097','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (98,'Slovenia','Customer Address 98','###-###-###-####','email@customer098','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (99,'Slovenia','Customer Address 99','###-###-###-####','email@customer099','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (100,'Slovenia','Customer Address 100','###-###-###-####','email@customer100','Mail','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (101,'Slovenia','Customer Address 101','###-###-###-####','email@customer101','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (102,'Slovenia','Customer Address 102','###-###-###-####','email@customer102','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (103,'Slovenia','Customer Address 103','###-###-###-####','email@customer103','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (104,'Spain','Customer Address 104','###-###-###-####','email@customer104','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (105,'Spain','Customer Address 105','###-###-###-####','email@customer105','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (106,'Spain','Customer Address 106','###-###-###-####','email@customer106','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (107,'Spain','Customer Address 107','###-###-###-####','email@customer107','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (108,'Spain','Customer Address 108','###-###-###-####','email@customer108','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (109,'Spain','Customer Address 109','###-###-###-####','email@customer109','Mail','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (110,'Spain','Customer Address 110','###-###-###-####','email@customer110','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (111,'Spain','Customer Address 111','###-###-###-####','email@customer111','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (112,'Spain','Customer Address 112','###-###-###-####','email@customer112','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (113,'Spain','Customer Address 113','###-###-###-####','email@customer113','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (114,'Spain','Customer Address 114','###-###-###-####','email@customer114','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (115,'Spain','Customer Address 115','###-###-###-####','email@customer115','Mail','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (116,'Spain','Customer Address 116','###-###-###-####','email@customer116','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (117,'Spain','Customer Address 117','###-###-###-####','email@customer117','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (118,'Spain','Customer Address 118','###-###-###-####','email@customer118','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (119,'Spain','Customer Address 119','###-###-###-####','email@customer119','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (120,'USA','Customer Address 120','###-###-###-####','email@customer120','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (121,'USA','Customer Address 121','###-###-###-####','email@customer121','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (122,'USA','Customer Address 122','###-###-###-####','email@customer122','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `contacts` VALUES (123,'USA','Customer Address 123','###-###-###-####','email@customer123','email','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-28 10:16:11

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
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `providers` (
  `provider_id` int unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(60) DEFAULT NULL,
  `phones` varchar(60) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `website` varchar(20) DEFAULT NULL,
  `bank_acc` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(20) NOT NULL,
  PRIMARY KEY (`provider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES (1,'Provider 1','1 Provider Rd, Providers','###-###-####','email@provider1.com','www.provider1.com','11111111 Bank1','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `providers` VALUES (2,'Provider 2','2 Provider Rd, Providers','###-###-####','email@provider2.com','www.provider2.com','22222222 Bank2','2017-01-02 00:00:00','2017-01-02 00:00:00','admin');
INSERT INTO `providers` VALUES (3,'Provider 3','3 Provider Rd, Providers','###-###-####','email@provider3.com','www.provider3.com','33333333 Bank3','2017-01-03 00:00:00','2017-01-03 00:00:00','admin');
INSERT INTO `providers` VALUES (4,'Provider 4','4 Provider Rd, Providers','###-###-####','email@provider4.com','www.provider4.com','44444444 Bank4','2017-01-04 00:00:00','2017-01-04 00:00:00','admin');
INSERT INTO `providers` VALUES (5,'Provider 5','5 Provider Rd, Providers','###-###-####','email@provider5.com','www.provider5.com','55555555 Bank5','2017-01-05 00:00:00','2017-01-05 00:00:00','admin');
INSERT INTO `providers` VALUES (6,'Provider 6','6 Provider Rd, Providers','###-###-####','email@provider6.com','www.provider6.com','66666666 Bank6','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `providers` VALUES (7,'Provider 7','7 Provider Rd, Providers','###-###-####','email@provider7.com','www.provider7.com','77777777 Bank7','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `providers` VALUES (8,'Provider 8','8 Provider Rd, Providers','###-###-####','email@provider8.com','www.provider8.com','88888888 Bank8','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `providers` VALUES (9,'Provider 9','9 Provider Rd, Providers','###-###-####','email@provider9.com','www.provider9.com','99999999 Bank9','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `providers` VALUES (10,'Provider 10','10 Provider Rd, Providers','###-###-####','email@provider10.com','www.provider10.com','00000000 Bank10','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
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

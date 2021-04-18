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
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content` (
  `content_id` int unsigned NOT NULL,
  `type` enum('Movie','Series','Show') NOT NULL,
  `title` varchar(45) NOT NULL,
  `language` varchar(15) DEFAULT NULL,
  `genre` varchar(45) DEFAULT NULL,
  `year` year DEFAULT NULL,
  `duration` int unsigned DEFAULT NULL,
  `description` text,
  `price` decimal(3,2) NOT NULL,
  `cost` decimal(3,2) NOT NULL,
  `link` varchar(100) NOT NULL,
  `category` varchar(45) NOT NULL,
  `provider_id` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(20) NOT NULL,
  PRIMARY KEY (`content_id`,`provider_id`),
  KEY `fk_content_providers_idx` (`provider_id`),
  CONSTRAINT `fk_content_providers` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`provider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (1,'Movie','One Night at McCool\'s','English','Comedy',2001,93,'This is the film description',2.09,0.84,'This is the link to content','G',5,'2002-01-01 00:00:00','2002-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (2,'Movie','Swordfish','English','Drama',2001,99,'This is the film description',2.19,0.88,'This is the link to content','G',3,'2002-01-01 00:00:00','2002-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (3,'Movie','What Women Want','English','Comedy',2001,127,'This is the film description',2.59,1.04,'This is the link to content','G',4,'2002-01-01 00:00:00','2002-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (4,'Movie','Training Day','English','Drama',2001,122,'This is the film description',1.79,0.72,'This is the link to content','G',1,'2002-01-01 00:00:00','2002-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (5,'Movie','The Fellowship of the Ring','English','Science Fiction & Fantasy',2001,178,'This is the film description',2.59,1.04,'This is the link to content','G',1,'2002-01-01 00:00:00','2002-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (6,'Movie','Harry Potter and the Philosopher\'s Stone','English','Science Fiction & Fantasy',2001,152,'This is the film description',2.69,1.08,'This is the link to content','G',3,'2002-01-01 00:00:00','2002-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (7,'Movie','The Royal Tenenbaums','English','Comedy',2002,110,'This is the film description',1.89,0.76,'This is the link to content','G',4,'2003-01-01 00:00:00','2003-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (8,'Movie','Waking Up in Reno','English','Comedy',2002,91,'This is the film description',2.59,1.04,'This is the link to content','G',2,'2003-01-01 00:00:00','2003-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (9,'Movie','11\'09\'\'01 September 11','English','Drama',2002,134,'This is the film description',2.99,1.20,'This is the link to content','G',3,'2003-01-01 00:00:00','2003-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (10,'Movie','Simone','English','Drama',2002,117,'This is the film description',2.69,1.08,'This is the link to content','G',2,'2003-01-01 00:00:00','2003-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (11,'Movie','Showtime','English','Comedy',2002,95,'This is the film description',1.79,0.72,'This is the link to content','G',3,'2003-01-01 00:00:00','2003-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (12,'Movie','The Two Towers','English','Science Fiction & Fantasy',2002,179,'This is the film description',2.39,0.96,'This is the link to content','G',1,'2003-01-01 00:00:00','2003-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (13,'Movie','Harry Potter and the Chamber of Secrets','English','Science Fiction & Fantasy',2002,161,'This is the film description',1.79,0.72,'This is the link to content','G',5,'2003-01-01 00:00:00','2003-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (14,'Movie','The Recruit','English','Mystery & Suspense',2003,115,'This is the film description',1.69,0.68,'This is the link to content','G',5,'2004-01-01 00:00:00','2004-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (15,'Movie','Something\'s Gotta Give','English','Comedy',2003,128,'This is the film description',1.69,0.68,'This is the link to content','G',2,'2004-01-01 00:00:00','2004-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (16,'Movie','25th Hour','English','Drama',2003,135,'This is the film description',1.59,0.64,'This is the link to content','G',3,'2004-01-01 00:00:00','2004-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (17,'Movie','The Human Stain','English','Mystery & Suspense',2003,106,'This is the film description',1.99,0.80,'This is the link to content','G',3,'2004-01-01 00:00:00','2004-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (18,'Movie','Secondhand Lions','English','Drama',2003,111,'This is the film description',1.69,0.68,'This is the link to content','G',1,'2004-01-01 00:00:00','2004-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (19,'Movie','21 Grams','English','Drama',2003,124,'This is the film description',2.09,0.84,'This is the link to content','G',2,'2004-01-01 00:00:00','2004-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (20,'Movie','Love Actually','English','Comedy',2003,135,'This is the film description',2.29,0.92,'This is the link to content','G',1,'2004-01-01 00:00:00','2004-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (21,'Movie','The Return of the King','English','Science Fiction & Fantasy',2003,200,'This is the film description',1.99,0.80,'This is the link to content','G',4,'2004-01-01 00:00:00','2004-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (22,'Movie','Imagining Argentina','English','Art House & International',2004,107,'This is the film description',2.59,1.04,'This is the link to content','G',1,'2005-01-01 00:00:00','2005-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (23,'Movie','Shall We Dance','English','Drama',2004,106,'This is the film description',1.69,0.68,'This is the link to content','G',3,'2005-01-01 00:00:00','2005-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (24,'Movie','Welcome to Mooseport','English','Comedy',2004,110,'This is the film description',2.89,1.16,'This is the link to content','G',2,'2005-01-01 00:00:00','2005-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (25,'Movie','Bridget Jones - The Edge of Reason','English','Drama',2004,108,'This is the film description',2.89,1.16,'This is the link to content','G',1,'2005-01-01 00:00:00','2005-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (26,'Movie','Ray','English','Drama',2004,152,'This is the film description',2.59,1.04,'This is the link to content','G',5,'2005-01-01 00:00:00','2005-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (27,'Movie','Monster','English','Drama',2004,109,'This is the film description',2.09,0.84,'This is the link to content','G',3,'2005-01-01 00:00:00','2005-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (28,'Movie','Harry Potter and the Prisoner of Azkaban','English','Science Fiction & Fantasy',2004,142,'This is the film description',1.69,0.68,'This is the link to content','G',2,'2005-01-01 00:00:00','2005-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (29,'Movie','Two for the Money','English','Drama',2005,122,'This is the film description',2.79,1.12,'This is the link to content','G',2,'2006-01-01 00:00:00','2006-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (30,'Movie','Capote','English','Drama',2005,114,'This is the film description',2.39,0.96,'This is the link to content','G',4,'2006-01-01 00:00:00','2006-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (31,'Movie','Harry Potter and the Goblet of Fire','English','Science Fiction & Fantasy',2005,157,'This is the film description',2.69,1.08,'This is the link to content','G',2,'2006-01-01 00:00:00','2006-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (32,'Movie','A Good Woman','English','Drama',2006,93,'This is the film description',2.89,1.16,'This is the link to content','G',3,'2007-01-01 00:00:00','2007-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (33,'Movie','V for Vendetta','English','Drama',2006,132,'This is the film description',1.59,0.64,'This is the link to content','G',5,'2007-01-01 00:00:00','2007-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (34,'Movie','Failure to Launch','English','Drama',2006,97,'This is the film description',1.99,0.80,'This is the link to content','G',2,'2007-01-01 00:00:00','2007-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (35,'Movie','Happy Feet','English','Animation',2006,108,'This is the film description',1.79,0.72,'This is the link to content','G',5,'2007-01-01 00:00:00','2007-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (36,'Movie','World Trade Center','English','Drama',2006,129,'This is the film description',1.59,0.64,'This is the link to content','G',3,'2007-01-01 00:00:00','2007-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (37,'Movie','Candy','English','Drama',2006,116,'This is the film description',1.59,0.64,'This is the link to content','G',3,'2007-01-01 00:00:00','2007-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (38,'Movie','The Lake House','English','Drama',2006,99,'This is the film description',2.49,1.00,'This is the link to content','G',5,'2007-01-01 00:00:00','2007-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (39,'Movie','I\'m Not There','English','Drama',2007,135,'This is the film description',1.79,0.72,'This is the link to content','G',2,'2008-01-01 00:00:00','2008-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (40,'Movie','Then She Found Me','English','Drama',2007,100,'This is the film description',1.99,0.80,'This is the link to content','G',2,'2008-01-01 00:00:00','2008-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (41,'Movie','The Kingdom','English','Drama',2007,110,'This is the film description',2.09,0.84,'This is the link to content','G',2,'2008-01-01 00:00:00','2008-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (42,'Movie','No Country for Old Men','English','Drama',2007,122,'This is the film description',1.49,0.60,'This is the link to content','G',1,'2008-01-01 00:00:00','2008-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (43,'Movie','The Invasion','English','Mystery & Suspense',2007,99,'This is the film description',2.09,0.84,'This is the link to content','G',4,'2008-01-01 00:00:00','2008-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (44,'Movie','Harry Potter and the Order of the Phoenix','English','Science Fiction & Fantasy',2007,138,'This is the film description',2.49,1.00,'This is the link to content','G',4,'2008-01-01 00:00:00','2008-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (45,'Movie','Burn After Reading','English','Drama',2008,96,'This is the film description',2.39,0.96,'This is the link to content','G',1,'2009-01-01 00:00:00','2009-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (46,'Movie','Sleepwalking','English','Drama',2008,101,'This is the film description',1.79,0.72,'This is the link to content','G',4,'2009-01-01 00:00:00','2009-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (47,'Movie','Fool\'s Gold','English','Action & Adventure',2008,112,'This is the film description',2.69,1.08,'This is the link to content','G',2,'2009-01-01 00:00:00','2009-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (48,'Movie','Astro Boy','English','Action & Adventure',2009,94,'This is the film description',2.89,1.16,'This is the link to content','G',2,'2010-01-01 00:00:00','2010-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (49,'Movie','Harry Potter and the Half-Blood Prince','English','Science Fiction & Fantasy',2009,153,'This is the film description',1.59,0.64,'This is the link to content','G',2,'2010-01-01 00:00:00','2010-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (50,'Movie','Winter\'s Bone','English','Drama',2010,100,'This is the film description',2.69,1.08,'This is the link to content','G',3,'2011-01-01 00:00:00','2011-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (51,'Movie','Morning Glory','English','Comedy',2010,107,'This is the film description',2.99,1.20,'This is the link to content','G',4,'2011-01-01 00:00:00','2011-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (52,'Movie','Fair Game','English','Drama',2010,108,'This is the film description',2.89,1.16,'This is the link to content','G',2,'2011-01-01 00:00:00','2011-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (53,'Movie','The Fighter','English','Other',2010,116,'This is the film description',2.49,1.00,'This is the link to content','G',5,'2011-01-01 00:00:00','2011-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (54,'Movie','Harry Potter and the Deathly Hallows – Part 1','English','Science Fiction & Fantasy',2010,146,'This is the film description',2.79,1.12,'This is the link to content','G',2,'2011-01-01 00:00:00','2011-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (55,'Movie','The Other Woman','English','Drama',2011,102,'This is the film description',1.69,0.68,'This is the link to content','G',3,'2012-01-01 00:00:00','2012-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (56,'Movie','Jack and Jill','English','Comedy',2011,91,'This is the film description',2.09,0.84,'This is the link to content','G',4,'2012-01-01 00:00:00','2012-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (57,'Movie','Young Adult','English','Drama',2011,94,'This is the film description',1.99,0.80,'This is the link to content','G',5,'2012-01-01 00:00:00','2012-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (58,'Movie','The Help','English','Drama',2011,146,'This is the film description',2.49,1.00,'This is the link to content','G',1,'2012-01-01 00:00:00','2012-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (59,'Movie','Brighton Rock','English','Mystery & Suspense',2011,111,'This is the film description',2.39,0.96,'This is the link to content','G',2,'2012-01-01 00:00:00','2012-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (60,'Movie','Black Death','English','Drama',2011,102,'This is the film description',2.69,1.08,'This is the link to content','G',5,'2012-01-01 00:00:00','2012-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (61,'Movie','Harry Potter and the Deathly Hallows – Part 2','English','Science Fiction & Fantasy',2011,130,'This is the film description',1.99,0.80,'This is the link to content','G',2,'2012-01-01 00:00:00','2012-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (62,'Movie','The Sessions','English','Drama',2012,95,'This is the film description',2.29,0.92,'This is the link to content','G',1,'2013-01-01 00:00:00','2013-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (63,'Movie','Django Unchained','English','Other',2012,165,'This is the film description',2.69,1.08,'This is the link to content','G',4,'2013-01-01 00:00:00','2013-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (64,'Movie','Cloud Atlas','English','Drama',2012,172,'This is the film description',2.89,1.16,'This is the link to content','G',3,'2013-01-01 00:00:00','2013-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (65,'Movie','Ghost Rider: Spirit of Vengeance','English','Action & Adventure',2012,96,'This is the film description',1.79,0.72,'This is the link to content','G',1,'2013-01-01 00:00:00','2013-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (66,'Movie','The Hunger Games','English','Drama',2012,142,'This is the film description',1.59,0.64,'This is the link to content','G',4,'2013-01-01 00:00:00','2013-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (67,'Movie','White House Down','English','Drama',2013,131,'This is the film description',1.59,0.64,'This is the link to content','G',2,'2014-01-01 00:00:00','2014-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (68,'Movie','The Company You Keep','English','Mystery & Suspense',2013,125,'This is the film description',2.39,0.96,'This is the link to content','G',4,'2014-01-01 00:00:00','2014-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (69,'Movie','The Frozen Ground','English','Mystery & Suspense',2013,105,'This is the film description',2.49,1.00,'This is the link to content','G',4,'2014-01-01 00:00:00','2014-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (70,'Movie','Captain Phillips','English','Drama',2013,134,'This is the film description',1.59,0.64,'This is the link to content','G',5,'2014-01-01 00:00:00','2014-01-01 00:00:00','admin');
INSERT INTO `content` VALUES (71,'Movie','Rio 2','English','Animation',2014,101,'This is the film description',1.79,0.72,'This is the link to content','G',4,'2015-01-01 00:00:00','2015-01-01 00:00:00','admin');
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
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

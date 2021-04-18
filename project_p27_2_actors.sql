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
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actors` (
  `actor_id` int unsigned NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `birth_year` year DEFAULT NULL,
  `gender` enum('Female','Male','Other') DEFAULT NULL,
  `nationality` varchar(20) DEFAULT NULL,
  `link_wiki` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(20) NOT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'Abbie','Cornish',1982,'Female','Australia','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (2,'Adam','Sandler',1966,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (3,'Al','Pacino',1940,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (4,'Amy','Adams',1974,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (5,'Andrea','Riseborough',1981,'Female','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (6,'Anjelica','Huston',1951,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (7,'Annasophia','Robb',1993,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (8,'Anne','Hathaway',1982,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (9,'Anthony','Hopkins',1937,'Male','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (10,'Barkhad','Abdi',1985,'Male','Somalia','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (11,'Barry','Pepper',1970,'Male','Canada','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (12,'Benicio','Del Toro',1967,'Male','Puerto Rico','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (13,'Bette','Midler',1945,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (14,'Bill','Nighy',1949,'Male','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (15,'Bridget','Moynahan',1971,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (16,'Bruce','Dern',1936,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (17,'Bruce','McGill',1950,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (18,'Bryce','Dallas Howard',1981,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (19,'Carice','van Houten',1976,'Female','Netherlands','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (20,'Cate','Blanchett',1969,'Female','Australia','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (21,'Catherine','Keener',1959,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (22,'Channing','Tatum',1980,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (23,'Charlize','Theron',1975,'Female','South Africa','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (24,'Chris','Cooper',1951,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (25,'Christian','Bale',1974,'Male','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (26,'Christina','Ricci',1980,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (27,'Christoph','Waltz',1956,'Male','Austria','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (28,'Ciaran','Hinds',1953,'Male','Northern Ireland','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (29,'Colin','Farrell',1976,'Male','Ireland','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (30,'Colin','Firth',1960,'Male','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (31,'Daniel','Craig',1968,'Male','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (32,'Daniel','Radcliffe',1989,'Male','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (33,'Denzel','Washington',1954,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (34,'Diane','Keaton',1946,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (35,'Donald','Sutherland',1935,'Male','Canada','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (36,'Eddie','Murphy',1961,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (37,'Eddie','Redmayne',1982,'Male','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (38,'Ed','Harris',1950,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (39,'Edward','Norton',1969,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (40,'Elijah','Wood',1981,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (41,'Emma','Stone',1988,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (42,'Emma','Watson',1990,'Female','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (43,'Ethan','Hawke',1970,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (44,'Fernando','Tielve',1986,'Male','Spain','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (45,'Frances','McDormand',1957,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (46,'Freddie','Highmore',1992,'Male','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (47,'Gene','Hackman',1930,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (48,'Geoffrey','Rush',1951,'Male','Australia','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (49,'George','Clooney',1961,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (50,'Gwyneth','Paltrow',1972,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (51,'Haley','Joel Osment',1988,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (52,'Halle','Berry',1966,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (53,'Harrison','Ford',1942,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (54,'Heath','Ledger',1979,'Male','Australia','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (55,'Hector','Bordoni',1965,'Male','Argentina','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (56,'Helen','Hunt',1963,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (57,'Helen','Mirren',1945,'Female','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (58,'Hugh','Grant',1960,'Male','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (59,'Hugh','Jackman',1968,'Male','Australia','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (60,'Hugo','Weaving',1960,'Male','Australia','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (61,'Ian','McKellen',1939,'Male','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (62,'Irene','Escolar',1988,'Female','Spain','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (63,'Jack','Nicholson',1937,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (64,'Jamie','Foxx',1967,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (65,'Javier','Bardem',1969,'Male','Spain','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (66,'Jennifer','Garner',1972,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (67,'Jennifer','Lawrence',1990,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (68,'Jennifer','Lopez',1969,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (69,'Jeremy','Northam',1961,'Male','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (70,'Jesse','Eisenberg',1983,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (71,'Jim','Broadbent',1949,'Male','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (72,'John','Cusack',1966,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (73,'John','Hawkes',1959,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (74,'John','Malkovich',1953,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (75,'John','Travolta',1954,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (76,'Josh','Brolin',1968,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (77,'Josh','Hutcherson',1992,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (78,'Julie','Christie',1940,'Female','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (79,'Kate','Hudson',1979,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (80,'Katie','Holmes',1978,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (81,'Keanu','Reeves',1964,'Male','Canada','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (82,'Kerry','Washington',1977,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (83,'Kevin','Breznahan',1968,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (84,'Kristen','Bell',1980,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (85,'Leonardo','DiCaprio',1974,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (86,'Liam','Hemsworth',1990,'Male','Australia','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (87,'Liam','Neeson',1952,'Male','Northern Ireland','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (88,'Lisa','Kudrow',1963,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (89,'Liv','Tyler',1977,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (90,'Maggie','Gyllenhaal',1977,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (91,'Marcia','Gay Harden',1959,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (92,'Marisa','Tomei',1964,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (93,'Mark','Wahlberg',1971,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (94,'Maryam','Karimi',NULL,'Female',NULL,'www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (95,'Matt','Dillon',1964,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (96,'Matthew','McConaughey',1969,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (97,'Mel','Gibson',1956,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (98,'Michael','Caine',1933,'Male','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (99,'Michael','Pena',1976,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (100,'Mohamad','Dolati',NULL,'Male',NULL,'www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (101,'Naomi','Watts',1968,'Female','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (102,'Natalie','Portman',1981,'Female','Israel','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (103,'Natasha','Richardson',1963,'Female','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (104,'Nick','Stahl',1979,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (105,'Nicolas','Cage',1964,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (106,'Nicole','Kidman',1967,'Female','Australia','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (107,'Patrick','Swayze',1952,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (108,'Patrick','Wilson',1973,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (109,'Patton','Oswalt',1969,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (110,'Paul','Reiser',1956,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (111,'Philip','Seymour Hoffman',1967,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (112,'Rachel','McAdams',1978,'Female','Canada','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (113,'Rachel','Roberts',1927,'Female','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (114,'Ray','Romano',1957,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (115,'Regina','King',1971,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (116,'Renee','Zellweger',1969,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (117,'Rene','Russo',1954,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (118,'Richard','Gere',1949,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (119,'Robert','De Niro',1943,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (120,'Robert','Duvall',1931,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (121,'Robert','Redford',1936,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (122,'Robin','Williams',1951,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (123,'Rupert','Grint',1988,'Male','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (124,'Sam','Riley',1980,'Male','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (125,'Sandra','Bullock',1964,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (126,'Sarah','Jessica Parker',1965,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (127,'Scarlett','Johansson',1984,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (128,'Scott','Cohen',1961,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (129,'Scott','Glenn',1939,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (130,'Sean','Bean',1959,'Male','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (131,'Sean','Penn',1960,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (132,'Shia','LaBeouf',1986,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (133,'Shohreh','Aghdashloo',1952,'Female','Iran','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (134,'Stephen','Rea',1946,'Male','Ireland','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (135,'Susan','Sarandon',1946,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (136,'Tom','Hanks',1956,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (137,'Tommy','Lee Jones',1946,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (138,'Tom','Wilkinson',1948,'Male','British','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (139,'Vanessa','Hudgens',1988,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (140,'Viggo','Mortensen',1958,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (141,'Viola','Davis',1965,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (142,'Violante','Placido',1976,'Female','Italy','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (143,'','will.i.am',1975,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (144,'William','H. Macy',1950,'Male','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `actors` VALUES (145,'Zooey','Deschanel',1980,'Female','USA','www.wikipedia.org','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-28 10:30:52

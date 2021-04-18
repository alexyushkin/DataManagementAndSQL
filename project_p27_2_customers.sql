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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int unsigned NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `gender` enum('Female','Male','Other') DEFAULT NULL,
  `birth_date` date NOT NULL,
  `login` varchar(10) NOT NULL,
  `password_hash` varchar(12) NOT NULL,
  `subscription_date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(20) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (2,'Wolfgang','Ackermann','Male','1971-11-17','login002','************','2018-10-15','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (3,'Daniela','Herzog','Female','1974-08-07','login003','************','2019-02-14','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (4,'Julia','Jung','Female','1991-01-04','login004','************','2017-11-22','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (5,'Juliane','Kirsch','Female','1977-03-01','login005','************','2018-12-16','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (6,'Rowanne','Couperus','Female','1994-04-05','login006','************','2018-08-26','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (7,'Annelous','Sneep','Female','1993-11-14','login007','************','2018-05-12','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (8,'Jaëla','van den Dolder','Female','1990-08-31','login008','************','2018-02-08','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (9,'Antal','van Looij','Male','1982-06-18','login009','************','2019-03-10','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (10,'Arnout','Veenhuis','Male','1984-07-26','login010','************','2017-01-28','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (11,'Yakup','Mes','Male','1978-04-28','login011','************','2019-02-19','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (12,'Kristine','J. Lauritsen','Female','1994-01-14','login012','************','2018-12-02','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (13,'Thomas','T. Nissen','Male','1975-09-25','login013','************','2017-04-30','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (14,'Niels','M. Holm','Male','1991-12-29','login014','************','2018-01-26','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (15,'Jasmin','M. Krogh','Female','1977-11-12','login015','************','2018-06-20','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (16,'Sofia','J. Pedersen','Female','1990-05-27','login016','************','2018-10-02','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (17,'Ida','E. Gregersen','Female','1998-09-15','login017','************','2018-02-07','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (18,'Nikolaj','L. Jensen','Male','1995-06-03','login018','************','2019-01-14','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (19,'Avelaine','Piedalue','Female','1972-04-14','login019','************','2017-01-13','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (20,'Jacqueline','Cloutier','Female','1990-09-30','login020','************','2018-11-03','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (21,'Avelaine','Corbeil','Female','1986-03-17','login021','************','2017-06-11','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (22,'Delit','Perillard','Female','1970-01-10','login022','************','2018-11-18','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (23,'Fleurette','Pomerleau','Female','1981-12-10','login023','************','2017-09-04','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (24,'Christien','Tachel','Male','1991-06-26','login024','************','2018-09-21','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (25,'Fiacre','Montminy','Male','1973-08-01','login025','************','2017-03-29','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (26,'Marcel','Sicard','Male','1988-08-06','login026','************','2017-01-20','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (27,'Perrin','Patel','Male','1994-10-30','login027','************','2018-12-20','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (28,'Sidney','Généreux','Male','1980-12-01','login028','************','2017-02-04','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (29,'Loyal','Arcouet','Male','1995-08-13','login029','************','2017-10-30','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (30,'Gradasso','Mousseau','Male','1976-07-11','login030','************','2017-10-10','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (31,'Christien','D\'Aubigné','Male','1986-11-06','login031','************','2018-02-13','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (32,'Hayden','O\'Donnell','Male','1991-11-07','login032','************','2017-11-20','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (33,'Oliver','Fleming','Male','1981-03-04','login033','************','2018-02-22','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (34,'Oscar','Stanley','Male','1993-12-01','login034','************','2017-03-31','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (35,'Harvey','Jarvis','Male','1990-01-16','login035','************','2017-05-22','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (36,'Jacob','Hope','Male','1979-08-27','login036','************','2018-06-24','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (37,'Sienna','Forster','Female','1984-12-16','login037','************','2018-12-09','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (38,'Millie','Marsden','Female','1974-07-02','login038','************','2017-11-06','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (39,'Amy','Haynes','Female','1975-07-28','login039','************','2018-01-19','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (40,'Matilda','Connor','Female','1990-12-18','login040','************','2019-01-18','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (41,'Zara','Mitchell','Female','1994-07-08','login041','************','2017-06-12','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (42,'Takáts','Agoti','Female','1992-07-07','login042','************','2018-11-08','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (43,'Szôllôs','Erzebet','Female','1995-09-04','login043','************','2018-08-17','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (44,'Lakatos','Mária','Female','1994-11-28','login044','************','2018-08-12','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (45,'Vargha','Ivett','Female','1998-11-27','login045','************','2017-08-09','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (46,'Söröss','Ema','Female','1984-03-13','login046','************','2017-06-26','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (47,'Kállai','Sólyom','Male','1983-10-29','login047','************','2018-10-18','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (48,'Mayer','Károly','Male','1991-06-02','login048','************','2019-02-26','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (49,'Havasy','Kristof','Male','1998-06-13','login049','************','2017-01-18','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (50,'Csordás','Ármin','Male','1986-11-30','login050','************','2018-04-23','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (51,'Sághy','Sebes','Male','1976-01-04','login051','************','2017-03-15','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (52,'Szepessi','Marton','Male','1983-03-14','login052','************','2018-03-24','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (53,'Teresio','Panicucci','Male','1999-07-21','login053','************','2018-11-06','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (54,'Demetrio','Palermo','Male','1997-10-10','login054','************','2018-10-17','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (55,'Facino','Milano','Male','1973-05-23','login055','************','2018-01-02','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (56,'Dionisio','Li Fonti','Male','1998-01-11','login056','************','2019-02-12','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (57,'Mario','Lettiere','Male','1975-05-04','login057','************','2018-01-30','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (58,'Rocco','Buccho','Male','1999-07-03','login058','************','2018-02-27','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (59,'Cristoforo','Mancini','Male','1980-06-05','login059','************','2018-01-12','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (60,'Gloria','Folliero','Female','1972-03-09','login060','************','2018-10-24','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (61,'Nella','Manfrin','Female','1974-01-11','login061','************','2017-05-14','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (62,'Gina','Lucciano','Female','1985-11-29','login062','************','2018-05-22','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (63,'Candida','Padovano','Female','1976-03-21','login063','************','2018-10-13','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (64,'Dalia','Lucciano','Female','1972-09-18','login064','************','2018-09-20','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (65,'Vittoria','Bellucci','Female','1978-04-02','login065','************','2017-04-09','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (66,'Filippa','Toscani','Female','1981-04-23','login066','************','2017-02-28','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (67,'Dora','Milanesi','Female','1998-04-19','login067','************','2018-11-22','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (68,'Irma','Siciliani','Female','1980-01-20','login068','************','2019-02-18','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (69,'Violetta','Pagnotto','Female','1999-05-04','login069','************','2018-12-23','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (70,'Annabella','Endrizzi','Female','1971-07-31','login070','************','2018-05-10','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (71,'Donata','Bellucci','Female','1981-04-02','login071','************','2017-11-23','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (72,'Macaria','Onio','Female','1997-04-20','login072','************','2017-09-07','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (73,'Veneranda','Milani','Female','1983-01-15','login073','************','2018-01-15','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (74,'Fausto','Sabbatini','Male','1978-01-23','login074','************','2018-03-16','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (75,'Luca','Pinto','Male','1971-02-04','login075','************','2019-03-09','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (76,'Michelino','Barese','Male','1986-04-22','login076','************','2017-10-06','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (77,'Nunzio','Milanesi','Male','1972-04-06','login077','************','2018-04-27','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (78,'Doroteo','Napolitano','Male','1992-06-01','login078','************','2017-07-27','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (79,'Quarantino','Barese','Male','1978-11-29','login079','************','2017-09-27','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (80,'Tymoteusz','Nowak','Male','1983-07-27','login080','************','2018-11-17','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (81,'Jarek','Tomaszewski','Male','1972-11-30','login081','************','2018-11-01','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (82,'Dobrogost','Nowakowski','Male','1993-08-14','login082','************','2018-02-21','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (83,'Marek','Zawadzki','Male','1995-11-21','login083','************','2019-04-01','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (84,'Maksym','Wojciechowski','Male','1992-11-23','login084','************','2018-08-15','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (85,'Teofil','Szczepański','Male','1979-02-25','login085','************','2018-10-14','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (86,'Albin','Jaworski','Male','1984-05-01','login086','************','2017-12-15','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (87,'Frydryk','Wieczorek','Male','1996-11-17','login087','************','2017-06-01','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (88,'Bazyli','Kalinowski','Male','1973-03-07','login088','************','2018-07-26','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (89,'Klementyna','Borkowska','Female','1975-05-10','login089','************','2017-03-03','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (90,'Zosia','Adamczyk','Female','1988-12-31','login090','************','2019-01-13','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (91,'Ewa','Zawadzka','Female','1988-07-13','login091','************','2018-01-05','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (92,'Honorata','Nowak','Female','1986-05-02','login092','************','2017-09-21','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (93,'Ivi','Boškan','Female','1997-08-12','login093','************','2017-04-19','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (94,'Seima','Andreč','Female','1989-11-19','login094','************','2017-04-08','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (95,'Darija','Pokec','Female','1992-01-28','login095','************','2017-05-31','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (96,'Cvijeta','Hervatski','Female','1981-07-15','login096','************','2018-09-19','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (97,'Šida','Črnčič','Female','1978-08-21','login097','************','2017-06-18','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (98,'Nesiha','Tomat','Female','1977-07-07','login098','************','2017-09-22','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (99,'Majdi','Rozin','Female','1996-09-12','login099','************','2017-01-31','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (100,'Tonček','Bolje','Male','1992-12-14','login100','************','2018-02-20','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (101,'Tunjo','Krličević','Male','1994-10-29','login101','************','2019-03-23','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (102,'Jaša','Zorzut','Male','1984-10-06','login102','************','2018-07-15','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (103,'Seljim','Runovec','Male','1982-01-12','login103','************','2017-08-12','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (104,'Dimitri','Zambrano Morales','Male','1992-06-21','login104','************','2017-04-12','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (105,'Micael','Cardona Razo','Male','1989-12-04','login105','************','2017-09-10','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (106,'Jenofonte','Gaona Mireles','Male','1998-12-18','login106','************','2017-12-21','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (107,'Filippo','Segovia Muro','Male','1996-12-29','login107','************','2018-02-12','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (108,'Saúl','Tafoya Meraz','Male','1992-05-15','login108','************','2017-03-13','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (109,'Zohar','Malave Ornelas','Male','1979-10-22','login109','************','2018-07-22','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (110,'Ann','Guajardo Méndez','Female','1998-07-17','login110','************','2017-10-31','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (111,'Quirina','Alcaraz Sánchez','Female','1980-11-05','login111','************','2017-06-17','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (112,'Exaltación','Herrera Ceja','Female','1979-11-20','login112','************','2017-10-15','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (113,'Lucy','Centeno Barrios','Female','1970-11-03','login113','************','2017-06-13','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (114,'Canela','Gaona Lozano','Female','1997-04-01','login114','************','2017-02-14','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (115,'Merlin','Rolón Badillo','Female','1977-10-14','login115','************','2019-02-21','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (116,'Maciela','Casillas Peralta','Female','1991-03-30','login116','************','2017-12-10','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (117,'Moira','Jurado Paez','Female','1996-01-30','login117','************','2018-11-09','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (118,'Digna','Mateo Carrasquill','Female','1978-11-01','login118','************','2017-11-24','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (119,'Lisa','Ibarra Valadez','Female','1998-12-08','login119','************','2019-03-06','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (120,'Robin','J. Himes','Male','1988-11-30','login120','************','2018-08-06','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (121,'Annie','R. Barnett','Female','1987-03-02','login121','************','2017-09-13','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (122,'Thelma','B. Coward','Female','1971-04-15','login122','************','2018-11-27','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
INSERT INTO `customers` VALUES (123,'Andrew','J. Ramos','Male','1994-03-11','login123','************','2018-12-30','2017-01-01 00:00:00','2017-01-01 00:00:00','admin');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-28 10:16:10

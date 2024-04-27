CREATE DATABASE  IF NOT EXISTS `sofiia_20variant` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sofiia_20variant`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sofiia_20variant
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Temporary view structure for view `airportsummary`
--

DROP TABLE IF EXISTS `airportsummary`;
/*!50001 DROP VIEW IF EXISTS `airportsummary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `airportsummary` AS SELECT 
 1 AS `initial_destination`,
 1 AS `final_destination`,
 1 AS `total_flights`,
 1 AS `total_passengers`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `brigad`
--

DROP TABLE IF EXISTS `brigad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brigad` (
  `brigad_id` int NOT NULL AUTO_INCREMENT,
  `brigad_name` varchar(50) NOT NULL,
  `worker_id` int NOT NULL,
  PRIMARY KEY (`brigad_id`),
  UNIQUE KEY `brigad_id_UNIQUE` (`brigad_id`),
  KEY `worker_id_idx` (`worker_id`),
  CONSTRAINT `worker_id` FOREIGN KEY (`worker_id`) REFERENCES `worker` (`worker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brigad`
--

LOCK TABLES `brigad` WRITE;
/*!40000 ALTER TABLE `brigad` DISABLE KEYS */;
INSERT INTO `brigad` VALUES (1,'Відряд \"B21\"',12345),(2,'Відряд \"B34\"',21345),(3,'Відряд \"B32\"',31452),(4,'Відряд \"B56\"',41325),(5,'Відряд \"B11\"',54321),(6,'Відряд \"B76\"',44213),(7,'Відряд \"B89\"',32167),(8,'Відряд \"B29\"',21897),(9,'Відряд \"B59\"',21212),(10,'Відряд \"B78\"',67231);
/*!40000 ALTER TABLE `brigad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `complexflightsummary`
--

DROP TABLE IF EXISTS `complexflightsummary`;
/*!50001 DROP VIEW IF EXISTS `complexflightsummary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `complexflightsummary` AS SELECT 
 1 AS `flight_id`,
 1 AS `total_passengers`,
 1 AS `average_ticket_price`,
 1 AS `total_revenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `departurepassengerinfo`
--

DROP TABLE IF EXISTS `departurepassengerinfo`;
/*!50001 DROP VIEW IF EXISTS `departurepassengerinfo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `departurepassengerinfo` AS SELECT 
 1 AS `passenger_id`,
 1 AS `passenger_surname`,
 1 AS `passenger_name`,
 1 AS `passenger_passport`,
 1 AS `departure`,
 1 AS `initial_destination`,
 1 AS `seat_number`,
 1 AS `ticket_number`,
 1 AS `border_control_result`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight` (
  `flight_id` int NOT NULL AUTO_INCREMENT,
  `passenger_id` int NOT NULL,
  `seat_number` varchar(50) NOT NULL,
  `ticket_number` int NOT NULL,
  `ticket_price` varchar(45) NOT NULL,
  `border_control_result` varchar(45) NOT NULL,
  PRIMARY KEY (`flight_id`),
  UNIQUE KEY `flight_id_UNIQUE` (`flight_id`),
  KEY `passenger_id_idx` (`passenger_id`),
  KEY `idx_flight_id` (`flight_id`),
  CONSTRAINT `passenger_id` FOREIGN KEY (`passenger_id`) REFERENCES `passenger` (`passenger_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90239 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight`
--

LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
INSERT INTO `flight` VALUES (12456,7310923,'09A',903821,'315','Not Passed'),(12728,4235023,'13B',802132,'209','Passed'),(23109,4515761,'18B',123456,'1080','Passed'),(23324,2376450,'19E',967123,'1546','Passed'),(33009,4589231,'14C',229902,'999','Passed'),(45902,9015761,'19A',209012,'320','Passed'),(50321,8815761,'03A',344092,'1056','Not Passed'),(67749,4212761,'23B',454092,'1090','Passed'),(78165,4235761,'23B',963452,'1347','Passed'),(78274,9215761,'12C',704092,'896','Not Passed');
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `flightpassengerinfo`
--

DROP TABLE IF EXISTS `flightpassengerinfo`;
/*!50001 DROP VIEW IF EXISTS `flightpassengerinfo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `flightpassengerinfo` AS SELECT 
 1 AS `passenger_id`,
 1 AS `passenger_surname`,
 1 AS `passenger_name`,
 1 AS `passenger_passport`,
 1 AS `departure`,
 1 AS `arrival`,
 1 AS `transfer_point`,
 1 AS `final_destination`,
 1 AS `initial_destination`,
 1 AS `seat_number`,
 1 AS `ticket_number`,
 1 AS `border_control_result`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `flightsummary`
--

DROP TABLE IF EXISTS `flightsummary`;
/*!50001 DROP VIEW IF EXISTS `flightsummary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `flightsummary` AS SELECT 
 1 AS `flight_id`,
 1 AS `total_passengers`,
 1 AS `average_ticket_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenger` (
  `passenger_id` int NOT NULL AUTO_INCREMENT,
  `passenger_surname` varchar(50) NOT NULL,
  `passenger_name` varchar(50) NOT NULL,
  `passenger_passport` varchar(50) NOT NULL,
  PRIMARY KEY (`passenger_id`),
  UNIQUE KEY `passenger_id_UNIQUE` (`passenger_id`),
  KEY `idx_passenger_full_name` (`passenger_surname`,`passenger_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9215762 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` VALUES (2376450,'Гончарова','Софія','KE123546'),(4212761,'Зефиров','Антон','NP132091'),(4235023,'Кефиров','Михайло','CQ432092'),(4235761,'Мирошниченко','Марія','FC732941'),(4515761,'Кручатов','Олексій','WE731241'),(4589231,'Фрідман','Лекс','LD732091'),(7310923,'Крейненко','Максим','NM213566'),(8815761,'Лисенко','Дарія','FD702941'),(9015761,'Рудненко','Олександра','JI232941'),(9215761,'Кушнирь','Вікторія','FD732941');
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plane`
--

DROP TABLE IF EXISTS `plane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plane` (
  `plane_id` int NOT NULL AUTO_INCREMENT,
  `plane_name` varchar(45) NOT NULL,
  `plane_seats` varchar(45) NOT NULL,
  `brigad_id` int NOT NULL,
  PRIMARY KEY (`plane_id`),
  UNIQUE KEY `plane_id_UNIQUE` (`plane_id`),
  KEY `brigad_id_idx` (`brigad_id`),
  CONSTRAINT `brigad_id` FOREIGN KEY (`brigad_id`) REFERENCES `brigad` (`brigad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94594 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plane`
--

LOCK TABLES `plane` WRITE;
/*!40000 ALTER TABLE `plane` DISABLE KEYS */;
INSERT INTO `plane` VALUES (23001,'Boeing 737','162',7),(23415,'Boeing 737','162',4),(45210,'Boeing 737','126',2),(67749,'Boeing 707','126',1),(68338,'Boeing 747','126',3),(77843,'Boeing 727','126',10),(78165,'Boeing 737','126',9),(78193,'Boeing 707','126',8),(91942,'Boeing 757','162',5),(94593,'Boeing 707','126',6);
/*!40000 ALTER TABLE `plane` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `position_id` int NOT NULL AUTO_INCREMENT,
  `position_name` varchar(50) NOT NULL,
  PRIMARY KEY (`position_id`),
  UNIQUE KEY `idposition_UNIQUE` (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'Льотчик'),(2,'Бортпровідник'),(3,'Технік'),(4,'Охоронець'),(5,'Касир'),(6,'Вантажник'),(7,'Митник'),(8,'Бармен'),(9,'Адміністратор'),(10,'Оператор');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `schedule_id` int NOT NULL AUTO_INCREMENT,
  `plane_id` int NOT NULL,
  `flight_id` int NOT NULL,
  `departure` datetime NOT NULL,
  `arrival` datetime NOT NULL,
  `transfer_point` varchar(45) NOT NULL,
  `final_destination` varchar(45) NOT NULL,
  `initial_destination` varchar(45) NOT NULL,
  `ticket_price` decimal(10,0) NOT NULL,
  PRIMARY KEY (`schedule_id`),
  UNIQUE KEY `schedule_id_UNIQUE` (`schedule_id`),
  KEY `plane_id_idx` (`plane_id`),
  KEY `flight_id_idx` (`flight_id`),
  KEY `idx_route_id` (`initial_destination`,`transfer_point`,`final_destination`),
  CONSTRAINT `flight_id` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`),
  CONSTRAINT `plane_id` FOREIGN KEY (`plane_id`) REFERENCES `plane` (`plane_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6091 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1025,77843,23324,'2024-01-23 08:30:44','2024-01-23 11:45:00','Гонконг','Сан-Франциско','Токіо',1546),(2030,68338,23324,'2024-04-22 09:15:12','2024-04-22 14:15:22','Варшава','Київ','Берлін',315),(2100,23001,23109,'2024-05-18 10:00:00','2024-05-18 22:30:00','Сінгапур','Сідней','Токіо ',1080),(2209,78193,50321,'2024-04-15 11:30:00','2024-04-17 07:00:00','Лондон','Сідней','Ньй-Йорк',1056),(2308,91942,50321,'2024-03-06 07:45:34','2024-03-06 22:12:00','Сінгапур','Сідней','Тайбей',1347),(2312,78165,12456,'2024-04-10 14:00:23','2024-04-10 21:30:00','Париж','Лос-Анджелес','Київ',1090),(3152,78193,45902,'2024-05-13 12:30:00','2024-05-13 21:00:00','Лондон','Рим','Сан-Франциско',320),(3467,94593,33009,'2024-05-14 08:45:00','2024-05-14 17:30:00','Стамбул','Москва','Дубай',999),(4500,45210,12728,'2024-05-09 09:00:00','2024-05-09 17:00:00','Амстердам','Париж ','Нью-Йорк',209),(5040,67749,12456,'2024-02-18 11:00:22','2024-02-18 18:30:00','Мюнхен','Лос-Анджелес','Мадрид',1123),(6090,23415,78274,'2024-04-22 10:30:23','2024-04-23 08:21:00','Франкфурт','Шанхай','Париж',896);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `support group for plane`
--

DROP TABLE IF EXISTS `support group for plane`;
/*!50001 DROP VIEW IF EXISTS `support group for plane`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `support group for plane` AS SELECT 
 1 AS `worker_id`,
 1 AS `worker_surname`,
 1 AS `worker_name`,
 1 AS `department_name`,
 1 AS `brigad_id`,
 1 AS `brigad_name`,
 1 AS `plane_id`,
 1 AS `plane_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worker` (
  `worker_id` int NOT NULL AUTO_INCREMENT,
  `worker_surname` varchar(50) NOT NULL,
  `worker_name` varchar(50) NOT NULL,
  `position_id` int NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `medical_exam` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`worker_id`),
  UNIQUE KEY `worker_id_UNIQUE` (`worker_id`),
  KEY `id_position_idx` (`position_id`),
  KEY `idx_position` (`position_id`),
  KEY `idx_worker_full_name` (`worker_surname`,`worker_name`),
  CONSTRAINT `position_id` FOREIGN KEY (`position_id`) REFERENCES `position` (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9215762 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
INSERT INTO `worker` VALUES (12345,'Микитін','Павло',1,'Пілотний відділ','Пройдено'),(21212,'Перльштейн','Артур',7,'Відділ митного контролю',NULL),(21345,'Павленко','Микола',1,'Пілотний відділ','Пройдено'),(21897,'Мілашко','Ксенія',2,'Відділ бортпровідників',NULL),(31313,'Бурман','Марія',9,'Адміністрація',NULL),(31452,'Шелудько','Геогрій',4,'Відділ служби безпеки',NULL),(32167,'Лачен','Михайло',2,'Відділ бортпровідників',NULL),(41325,'Шевченко','Олексій',3,'Технічний відділ',NULL),(41414,'Бошмачник','Евгеній',10,'Відділ операторів аеропорту',NULL),(44213,'Максименко','Олексій',2,'Відділ бортпровідників',NULL),(54321,'Рудненко','Олександр',3,'Технічний відділ',NULL),(67231,'Грушевський','Михайло',2,'Відділ бортпровідників',NULL),(98231,'Гавриленко','Олег',4,'Відділ служби безпеки',NULL);
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `airportsummary`
--

/*!50001 DROP VIEW IF EXISTS `airportsummary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `airportsummary` AS select `schedule`.`initial_destination` AS `initial_destination`,`schedule`.`final_destination` AS `final_destination`,count(distinct `flight`.`flight_id`) AS `total_flights`,count(distinct `flight`.`passenger_id`) AS `total_passengers` from (`schedule` left join `flight` on((`schedule`.`flight_id` = `flight`.`flight_id`))) group by `schedule`.`initial_destination`,`schedule`.`final_destination` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `complexflightsummary`
--

/*!50001 DROP VIEW IF EXISTS `complexflightsummary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `complexflightsummary` AS select `flight`.`flight_id` AS `flight_id`,count(`flight`.`passenger_id`) AS `total_passengers`,avg(`flight`.`ticket_price`) AS `average_ticket_price`,sum(`flight`.`ticket_price`) AS `total_revenue` from (`schedule` join `flight` on((`schedule`.`flight_id` = `flight`.`flight_id`))) group by `schedule`.`flight_id` having (avg(`flight`.`ticket_price`) > (select avg(`flight`.`ticket_price`) from `flight`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `departurepassengerinfo`
--

/*!50001 DROP VIEW IF EXISTS `departurepassengerinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `departurepassengerinfo` AS select `flight`.`passenger_id` AS `passenger_id`,`passenger`.`passenger_surname` AS `passenger_surname`,`passenger`.`passenger_name` AS `passenger_name`,`passenger`.`passenger_passport` AS `passenger_passport`,`schedule`.`departure` AS `departure`,`schedule`.`initial_destination` AS `initial_destination`,`flight`.`seat_number` AS `seat_number`,`flight`.`ticket_number` AS `ticket_number`,`flight`.`border_control_result` AS `border_control_result` from ((`schedule` join `flight` on((`schedule`.`flight_id` = `flight`.`flight_id`))) join `passenger` on((`flight`.`passenger_id` = `passenger`.`passenger_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `flightpassengerinfo`
--

/*!50001 DROP VIEW IF EXISTS `flightpassengerinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `flightpassengerinfo` AS select `flight`.`passenger_id` AS `passenger_id`,`passenger`.`passenger_surname` AS `passenger_surname`,`passenger`.`passenger_name` AS `passenger_name`,`passenger`.`passenger_passport` AS `passenger_passport`,`schedule`.`departure` AS `departure`,`schedule`.`arrival` AS `arrival`,`schedule`.`transfer_point` AS `transfer_point`,`schedule`.`final_destination` AS `final_destination`,`schedule`.`initial_destination` AS `initial_destination`,`flight`.`seat_number` AS `seat_number`,`flight`.`ticket_number` AS `ticket_number`,`flight`.`border_control_result` AS `border_control_result` from ((`schedule` join `flight` on((`schedule`.`flight_id` = `flight`.`flight_id`))) join `passenger` on((`flight`.`passenger_id` = `passenger`.`passenger_id`))) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `flightsummary`
--

/*!50001 DROP VIEW IF EXISTS `flightsummary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `flightsummary` AS select `flight`.`flight_id` AS `flight_id`,count(`flight`.`passenger_id`) AS `total_passengers`,avg(`flight`.`ticket_price`) AS `average_ticket_price` from (`schedule` join `flight` on((`flight`.`flight_id` = `schedule`.`flight_id`))) group by `flight`.`flight_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `support group for plane`
--

/*!50001 DROP VIEW IF EXISTS `support group for plane`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `support group for plane` AS select `worker`.`worker_id` AS `worker_id`,`worker`.`worker_surname` AS `worker_surname`,`worker`.`worker_name` AS `worker_name`,`worker`.`department_name` AS `department_name`,`brigad`.`brigad_id` AS `brigad_id`,`brigad`.`brigad_name` AS `brigad_name`,`plane`.`plane_id` AS `plane_id`,`plane`.`plane_name` AS `plane_name` from ((`worker` join `brigad` on((`worker`.`worker_id` = `brigad`.`worker_id`))) join `plane` on((`brigad`.`brigad_id` = `plane`.`brigad_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-26 23:40:47

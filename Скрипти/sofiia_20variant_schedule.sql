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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-26 23:38:34

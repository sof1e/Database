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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-26 23:38:35

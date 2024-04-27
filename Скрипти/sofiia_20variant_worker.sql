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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-26 23:38:35

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-26 23:38:35

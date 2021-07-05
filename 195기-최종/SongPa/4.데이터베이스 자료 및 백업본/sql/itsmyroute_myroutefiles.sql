-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: itsmyroute
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `myroutefiles`
--

DROP TABLE IF EXISTS `myroutefiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myroutefiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `src` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myroutefiles`
--

LOCK TABLES `myroutefiles` WRITE;
/*!40000 ALTER TABLE `myroutefiles` DISABLE KEYS */;
INSERT INTO `myroutefiles` VALUES (1,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1624884912652_birds-6305827_1920.jpg','2021-06-28 12:55:14','2021-06-28 12:55:14'),(2,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1624884912658_pic.jpg','2021-06-28 12:55:14','2021-06-28 12:55:14'),(3,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1624934696934_%EC%9D%8C%EC%8B%9D1.jpg','2021-06-29 02:45:01','2021-06-29 02:45:01'),(4,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1624934696937_%EC%B9%B4%ED%8E%981.jpg','2021-06-29 02:45:01','2021-06-29 02:45:01'),(5,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1624934696977_%ED%95%9C%EC%9D%98%EC%9B%90.jpg','2021-06-29 02:45:01','2021-06-29 02:45:01'),(6,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1624935591207_%EC%B9%B4%ED%8E%982.jpg','2021-06-29 03:00:19','2021-06-29 03:00:19'),(7,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1624935596625_%EC%B9%98%ED%82%A8.jpg','2021-06-29 03:00:19','2021-06-29 03:00:19'),(8,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1624935600288_%ED%8E%B8%EC%9D%98%EC%A0%901.jpg','2021-06-29 03:00:19','2021-06-29 03:00:19'),(9,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1625015135647_%EB%B2%A0%EC%8A%A4%ED%82%A8%EB%9D%BC%EB%B9%88%EC%8A%A4.jpg','2021-06-30 01:06:46','2021-06-30 01:06:46'),(10,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1625016261888_%EA%B3%B5%EC%9B%90.jpg','2021-06-30 01:24:48','2021-06-30 01:24:48'),(11,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1625016285287_%EC%B9%B4%ED%8E%984.jpg','2021-06-30 01:24:48','2021-06-30 01:24:48'),(12,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1625016776779_2018012901435_0.jpg','2021-06-30 01:34:40','2021-06-30 01:34:40'),(13,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1625016796499_%EB%A7%A5%EC%A3%BC.jpg','2021-06-30 01:34:40','2021-06-30 01:34:40'),(14,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1625018045675_%EC%98%81%ED%99%94%EA%B4%80.jpg','2021-06-30 01:54:07','2021-06-30 01:54:07'),(15,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1625018220322_%EC%9D%8C%EC%8B%9D3.jpg','2021-06-30 01:57:01','2021-06-30 01:57:01'),(16,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1625018697326_%EC%84%BC%ED%84%B0.jpg','2021-06-30 02:04:58','2021-06-30 02:04:58'),(17,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1625019070381_%ED%95%9C%EC%9D%98.jpg','2021-06-30 02:11:11','2021-06-30 02:11:11'),(18,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1625019205225_%EC%9A%B0%EC%B2%B4%EA%B5%AD.jpg','2021-06-30 02:13:44','2021-06-30 02:13:44'),(19,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1625019409656_%EA%B1%B7%EA%B8%B0.jpg','2021-06-30 02:16:50','2021-06-30 02:16:50'),(20,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1625019766197_%EC%98%AC%EA%B3%B5.jpg','2021-06-30 02:22:47','2021-06-30 02:22:47'),(21,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1625019953677_%ED%95%99%EC%9A%B0%EB%84%88.jpg','2021-06-30 02:25:55','2021-06-30 02:25:55'),(22,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1625020169572_%EA%B3%B5%EA%B3%B5.jpg','2021-06-30 02:29:33','2021-06-30 02:29:33'),(23,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1625020169572_%EC%98%AC%20%EA%B3%B5.jpg','2021-06-30 02:29:33','2021-06-30 02:29:33'),(24,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1625022978841_%ED%95%9C%EC%9D%98.jpg','2021-06-30 03:17:46','2021-06-30 03:17:46'),(25,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1625023786411_%ED%95%9C%EC%9D%98.jpg','2021-06-30 03:30:30','2021-06-30 03:30:30'),(26,'https://itsmyroute.s3.ap-northeast-2.amazonaws.com/original/1625036924774_%EA%B3%B5%EA%B3%B5.jpg','2021-06-30 07:09:36','2021-06-30 07:09:36');
/*!40000 ALTER TABLE `myroutefiles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-05 11:42:50

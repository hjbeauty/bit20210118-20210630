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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `nickname` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phoneNumber` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `snsId` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `profile` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provider` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'song@gmail.com','song','송은석','$2b$12$mQ/6Nm10YVcimMUsh9BlOu4OaIvQ2kFw4RBMkJa8flAGAOyG2Afhq','01077021045',1,NULL,'https://cdn.pixabay.com/photo/2021/05/29/07/06/shiba-6292660_960_720.jpg',NULL,'2021-06-28 12:51:32','2021-06-28 12:51:32'),(2,'kim@gmail.com','kim','김승훈','$2b$12$qcgc299pEPEtCju.qD7XCunfZ8Zmf0PrW.0OE2RMt7sdjPvSzYL5O','01077021045',1,NULL,'https://cdn.pixabay.com/photo/2018/04/13/21/24/lion-3317670_960_720.jpg',NULL,'2021-06-30 01:16:25','2021-06-30 01:16:25'),(3,'park@naver.com','park','박규환','$2b$12$esGvAQG/Su59Fg03r9Y3TeY/o4/cdZ9oOozRF9eWhF7B4Nzi25O6m','01077021045',1,NULL,'https://cdn.pixabay.com/photo/2016/04/06/01/32/red-fox-1310826_960_720.jpg',NULL,'2021-06-30 01:46:26','2021-06-30 01:46:26'),(4,'thddmstjrwkd@naver.com','cnsong',NULL,NULL,NULL,NULL,'45379322',NULL,'naver','2021-06-30 02:57:50','2021-06-30 02:57:50'),(7,'chlgidtnrwkd@naver.com','송은석',NULL,NULL,NULL,NULL,'1751544152',NULL,'kakao','2021-06-30 03:20:38','2021-06-30 03:20:38'),(9,'AAA@AAA','ASDF','RHD','$2b$12$ZvpdRBT49vPPqOuF8DHZ8utL48E1ADq2qdSLn4DzG2D7zLJ1isaIi','01077021045',1,NULL,NULL,NULL,'2021-06-30 04:38:19','2021-06-30 04:38:19'),(10,'fivedeskwook@gmail.com','우기','오사욱','$2b$12$7cqFc.P8PysKfKD5ugXP7uq7K4Zg7OdsV1P6EsoQTS4BjGXzg83MK','01041109622',1,NULL,NULL,NULL,'2021-06-30 07:02:16','2021-06-30 07:02:16');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-05 11:42:51

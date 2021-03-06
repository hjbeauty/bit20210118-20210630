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
-- Table structure for table `myroutetag`
--

DROP TABLE IF EXISTS `myroutetag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myroutetag` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `MyRouteId` int NOT NULL,
  `TagId` int NOT NULL,
  PRIMARY KEY (`MyRouteId`,`TagId`),
  KEY `TagId` (`TagId`),
  CONSTRAINT `myroutetag_ibfk_1` FOREIGN KEY (`MyRouteId`) REFERENCES `myroutes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `myroutetag_ibfk_2` FOREIGN KEY (`TagId`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myroutetag`
--

LOCK TABLES `myroutetag` WRITE;
/*!40000 ALTER TABLE `myroutetag` DISABLE KEYS */;
INSERT INTO `myroutetag` VALUES ('2021-06-28 12:55:14','2021-06-28 12:55:14',1,1),('2021-06-28 12:55:14','2021-06-28 12:55:14',1,2),('2021-06-28 12:55:14','2021-06-28 12:55:14',1,3),('2021-06-29 02:45:01','2021-06-29 02:45:01',2,4),('2021-06-29 02:45:01','2021-06-29 02:45:01',2,5),('2021-06-29 02:45:01','2021-06-29 02:45:01',2,6),('2021-06-29 03:00:19','2021-06-29 03:00:19',3,7),('2021-06-29 03:00:19','2021-06-29 03:00:19',3,8),('2021-06-29 03:00:19','2021-06-29 03:00:19',3,9),('2021-06-30 01:06:46','2021-06-30 01:06:46',6,13),('2021-06-30 01:06:46','2021-06-30 01:06:46',6,14),('2021-06-30 01:24:48','2021-06-30 01:24:48',7,15),('2021-06-30 01:24:48','2021-06-30 01:24:48',7,16),('2021-06-30 01:24:48','2021-06-30 01:24:48',7,17),('2021-06-30 01:34:40','2021-06-30 01:34:40',8,18),('2021-06-30 01:34:40','2021-06-30 01:34:40',8,19),('2021-06-30 01:34:40','2021-06-30 01:34:40',8,20),('2021-06-30 01:54:07','2021-06-30 01:54:07',9,21),('2021-06-30 01:54:07','2021-06-30 01:54:07',9,22),('2021-06-30 01:54:07','2021-06-30 01:54:07',9,23),('2021-06-30 01:57:01','2021-06-30 01:57:01',10,24),('2021-06-30 01:57:01','2021-06-30 01:57:01',10,25),('2021-06-30 01:57:01','2021-06-30 01:57:01',10,26),('2021-06-30 02:04:58','2021-06-30 02:04:58',15,27),('2021-06-30 02:04:58','2021-06-30 02:04:58',15,28),('2021-06-30 02:04:58','2021-06-30 02:04:58',15,29),('2021-06-30 02:11:11','2021-06-30 02:11:11',16,30),('2021-06-30 02:11:11','2021-06-30 02:11:11',16,31),('2021-06-30 02:11:11','2021-06-30 02:11:11',16,32),('2021-06-30 02:13:44','2021-06-30 02:13:44',17,33),('2021-06-30 02:13:44','2021-06-30 02:13:44',17,34),('2021-06-30 02:16:50','2021-06-30 02:16:50',18,35),('2021-06-30 02:16:50','2021-06-30 02:16:50',18,36),('2021-06-30 02:16:50','2021-06-30 02:16:50',18,37),('2021-06-30 02:22:47','2021-06-30 02:22:47',19,38),('2021-06-30 02:22:47','2021-06-30 02:22:47',19,39),('2021-06-30 02:22:47','2021-06-30 02:22:47',19,40),('2021-06-30 02:25:55','2021-06-30 02:25:55',20,41),('2021-06-30 02:25:55','2021-06-30 02:25:55',20,42),('2021-06-30 02:25:55','2021-06-30 02:25:55',20,43),('2021-06-30 02:29:33','2021-06-30 02:29:33',21,44),('2021-06-30 02:29:33','2021-06-30 02:29:33',21,45),('2021-06-30 02:29:33','2021-06-30 02:29:33',21,46),('2021-06-30 07:09:36','2021-06-30 07:09:36',24,49);
/*!40000 ALTER TABLE `myroutetag` ENABLE KEYS */;
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

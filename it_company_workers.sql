-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: it_company
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `workers`
--

DROP TABLE IF EXISTS `workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workers` (
  `id` int NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `profession` varchar(50) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_number_UNIQUE` (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workers`
--

LOCK TABLES `workers` WRITE;
/*!40000 ALTER TABLE `workers` DISABLE KEYS */;
INSERT INTO `workers` VALUES (1,'Aleksander Danshyn','CEO',100000.00,'aldan@gmail.com','0950931316',1),(2,'Александр Гусаров','Тимлид',50000.00,'devilhaze@gmail.com','0951325432',0),(3,'Владимири Голдин','Тимлид',50000.00,'goldin@gmail.com','0931347809',1),(4,'Евгений Кушнир','Старший программист',38000.00,'kushch@gmail.com','0980922245',1),(5,'Василий Пасечник','Старший программист',40000.00,'kaban@gmail.com','0950931719',0),(6,'Стас Колесников','Программист',30000.00,'stas@gmail.com','0955679843',1),(7,'Андрей Шматов','Программист',30000.99,'andre@gmail.com','0947890091',1),(8,'Дмитрий Коломийчук','Программист',30001.00,'icelies@gmail.com','0930951713',1),(9,'Владимир Литвин','Программист',30000.00,'volodya@gmail.com','0931371876',0),(10,'Владимир Галкин','Программист',30000.00,'galkin@gmail.com','0934753892',1),(11,'Владимир Бабаев','Программист',30000.00,'frxntk@gmail.com','0947268798',1),(12,'Ангелина Кулачек','Уборщица',6700.00,'fam@gmail.com','0935748239',1),(13,'Алина Ларина','Уборщица',6700.00,'larina@gmail.com','0927689825',0),(14,'Дмитрий Пархоменко','Охранник',10000.00,'parho@gmail.com','0940967898',1);
/*!40000 ALTER TABLE `workers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-25 18:55:04

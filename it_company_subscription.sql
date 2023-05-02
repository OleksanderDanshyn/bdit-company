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
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_of_product` varchar(30) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `first_date` date DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `price_for_time` decimal(10,2) DEFAULT NULL,
  `product_id` int unsigned NOT NULL,
  `client_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_subscription_product_idx` (`product_id`),
  KEY `fk_subscription_client1_idx` (`client_id`),
  CONSTRAINT `fk_subscription_client1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  CONSTRAINT `fk_subscription_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES (1,'Фотошоп, профессиональный',2000.00,'2021-07-06','2021-10-20',6000.00,3,7),(2,'Фотошоп, базовая',1000.00,'2021-03-10','2021-12-10',9000.00,1,1),(3,'Офис, базовый',5000.00,'2023-02-05','2023-03-05',5000.00,4,7),(4,'Видеоредактор, про',3000.00,'2020-07-15','2021-07-15',36000.00,9,4),(5,'Офис, профессиональный',9000.00,'2023-02-12','2023-06-12',36000.00,6,3),(6,'Офис, рабочий',6500.00,'2022-11-21','2023-11-21',78000.00,5,12),(7,'Видеоредактор, рабочий',2000.00,'2020-09-02','2021-09-02',24000.00,8,5),(8,'Видеоредактор, базовый',1000.00,'2021-09-22','2021-12-22',3000.00,7,2),(9,'Офис, базовый',5000.00,'2020-05-09','2020-09-09',20000.00,4,6),(10,'Фотошоп, профессиональный',2000.00,'2022-02-12','2023-12-12',44000.00,3,9),(11,'Видеоредактор, про',3000.00,'2021-08-07','2021-12-07',12000.00,9,8),(12,'Офис, рабочий',6500.00,'2020-12-02','2022-12-02',156000.00,5,10),(13,'Фотошоп, базовая',1000.00,'2022-05-17','2024-05-17',24000.00,1,11),(14,'Видеоредактор, про',3000.00,'2022-03-10','2024-03-10',72000.00,9,11),(15,'Офис, профессиональный',9000.00,'2023-04-16','2025-04-16',216000.00,6,11);
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_price_for_time` BEFORE UPDATE ON `subscription` FOR EACH ROW BEGIN
	IF NEW.price_for_time <= 0 THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "Цена должна быть больше 0";
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-25 18:55:05

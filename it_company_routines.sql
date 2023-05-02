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
-- Temporary view structure for view `workers_project_is_prooffice`
--

DROP TABLE IF EXISTS `workers_project_is_prooffice`;
/*!50001 DROP VIEW IF EXISTS `workers_project_is_prooffice`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `workers_project_is_prooffice` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `profession`,
 1 AS `salary`,
 1 AS `email`,
 1 AS `phone_number`,
 1 AS `status`,
 1 AS `name_of_product`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `products_and_clients`
--

DROP TABLE IF EXISTS `products_and_clients`;
/*!50001 DROP VIEW IF EXISTS `products_and_clients`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `products_and_clients` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `name_of_product`,
 1 AS `price_for_time`,
 1 AS `product_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `big_spenders`
--

DROP TABLE IF EXISTS `big_spenders`;
/*!50001 DROP VIEW IF EXISTS `big_spenders`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `big_spenders` AS SELECT 
 1 AS `client id`,
 1 AS `name`,
 1 AS `subscription id`,
 1 AS `name_of_product`,
 1 AS `price_for_time`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `093_number_clients`
--

DROP TABLE IF EXISTS `093_number_clients`;
/*!50001 DROP VIEW IF EXISTS `093_number_clients`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `093_number_clients` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `phone_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `students`
--

DROP TABLE IF EXISTS `students`;
/*!50001 DROP VIEW IF EXISTS `students`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `students` AS SELECT 
 1 AS `client id`,
 1 AS `name`,
 1 AS `subscription id`,
 1 AS `name_of_product`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `workers_project_is_prooffice`
--

/*!50001 DROP VIEW IF EXISTS `workers_project_is_prooffice`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `workers_project_is_prooffice` AS select `workers`.`id` AS `id`,`workers`.`name` AS `name`,`workers`.`profession` AS `profession`,`workers`.`salary` AS `salary`,`workers`.`email` AS `email`,`workers`.`phone_number` AS `phone_number`,`workers`.`status` AS `status`,`product`.`name_of_product` AS `name_of_product` from ((`workers` join `product_has_workers` `joiner` on((`joiner`.`workers_id` = `workers`.`id`))) join `product` on((`joiner`.`product_id` = `product`.`id`))) where ((`workers`.`status` = 1) and (`product`.`name_of_product` = 'Офис, профессиональный')) order by `workers`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `products_and_clients`
--

/*!50001 DROP VIEW IF EXISTS `products_and_clients`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `products_and_clients` AS select `client`.`id` AS `id`,`client`.`name` AS `name`,`subscription`.`name_of_product` AS `name_of_product`,`subscription`.`price_for_time` AS `price_for_time`,`subscription`.`product_id` AS `product_id` from (`client` join `subscription` on((`subscription`.`client_id` = `client`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `big_spenders`
--

/*!50001 DROP VIEW IF EXISTS `big_spenders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `big_spenders` AS select `client`.`id` AS `client id`,`client`.`name` AS `name`,`subscription`.`id` AS `subscription id`,`subscription`.`name_of_product` AS `name_of_product`,`subscription`.`price_for_time` AS `price_for_time` from (`subscription` join `client` on((`subscription`.`client_id` = `client`.`id`))) where (`subscription`.`price_for_time` > (select avg(`subscription`.`price_for_time`) from `subscription`)) order by `subscription`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `093_number_clients`
--

/*!50001 DROP VIEW IF EXISTS `093_number_clients`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `093_number_clients` AS select `client`.`id` AS `id`,`client`.`name` AS `name`,`client`.`phone_number` AS `phone_number` from `client` where (`client`.`phone_number` like '093%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `students`
--

/*!50001 DROP VIEW IF EXISTS `students`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `students` AS select `client`.`id` AS `client id`,`client`.`name` AS `name`,`subscription`.`id` AS `subscription id`,`subscription`.`name_of_product` AS `name_of_product` from (`client` join `subscription` on((`client`.`id` = `subscription`.`client_id`))) where (`client`.`using_purpose` = 'Обучение') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'it_company'
--

--
-- Dumping routines for database 'it_company'
--
/*!50003 DROP PROCEDURE IF EXISTS `expenses` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `expenses`()
BEGIN
DECLARE expense DECIMAL;
SELECT SUM(salary) into expense
FROM workers;
SELECT expense AS "Витрати";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `income` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `income`()
BEGIN
DECLARE income_sum DECIMAL;
SELECT SUM(price_for_time) INTO income_sum
FROM subscription;
SELECT income_sum AS "Прибуток";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_price_for_time` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_price_for_time`()
BEGIN
DECLARE diff INT;
DECLARE pricecount DECIMAL(10,2);
DECLARE first_date12 DATE;
DECLARE last_date12 DATE;
DECLARE done INT DEFAULT 0;
DECLARE id12 INT;
DECLARE cur1 CURSOR FOR SELECT id FROM subscription;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

OPEN cur1;

read_loop: LOOP
FETCH cur1 INTO id12;

IF done = 1 THEN
LEAVE read_loop;
END IF;

SELECT first_date INTO first_date12 FROM subscription WHERE subscription.id = id12;
SELECT last_date INTO last_date12 FROM subscription WHERE subscription.id = id12;

SET diff = TIMESTAMPDIFF (MONTH, first_date12, last_date12);

SELECT price INTO pricecount
FROM subscription WHERE 
subscription.id = id12;

UPDATE subscription 
SET price_for_time = diff * price 
WHERE subscription.id = id12;

END LOOP;

CLOSE cur1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `users_need_to_update_subscription` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `users_need_to_update_subscription`()
BEGIN
DECLARE end_date int;
SELECT COUNT(*)  INTO end_date 
FROM subscription
WHERE last_date < CURDATE();
SELECT end_date AS "Потрібно оновити";
END ;;
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

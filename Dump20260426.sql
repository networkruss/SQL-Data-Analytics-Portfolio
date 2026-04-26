-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: neil_data_training
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `developers`
--

DROP TABLE IF EXISTS `developers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `developers` (
  `dev_id` int NOT NULL,
  `dev_name` varchar(50) DEFAULT NULL,
  `team` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dev_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developers`
--

LOCK TABLES `developers` WRITE;
/*!40000 ALTER TABLE `developers` DISABLE KEYS */;
INSERT INTO `developers` VALUES (1,'Neil Soliven','Vortex-5'),(2,'Juan Dela Cruz','Hufflepuff'),(3,'Maria Clara','Vortex-5');
/*!40000 ALTER TABLE `developers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `project_id` int NOT NULL,
  `project_name` varchar(50) DEFAULT NULL,
  `dev_id` int DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `project_hours` int DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (101,'PasaBuy App',1,'Active',NULL),(102,'Utang Collections',1,'Active',NULL),(103,'LGU Portal',1,'In-Progress',NULL),(104,'Inventory System',1,'Active',15),(105,'Mobile Game',2,'Active',NULL),(106,'E-Commerce Site',3,'Active',NULL),(107,'Web Dashboard',3,'Active',10);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_transactions`
--

DROP TABLE IF EXISTS `sales_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_transactions` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_transactions`
--

LOCK TABLES `sales_transactions` WRITE;
/*!40000 ALTER TABLE `sales_transactions` DISABLE KEYS */;
INSERT INTO `sales_transactions` VALUES (1,'Neil Russel Soliven',5000.00,'Completed','2026-04-20'),(2,'Keizer Dax Relucio',1500.00,'Pending','2026-04-21'),(3,'Quennie S. Frias',3200.50,'Completed','2026-04-22'),(4,'Noriella Z. Ramirez',2800.00,'Cancelled','2026-04-23'),(5,'Neliessa B. Soliven',4500.00,'Completed','2026-04-24'),(6,'Ranina D. Soliven',1200.00,'Completed','2026-04-20'),(7,'Riza Reyes',450.00,'Completed','2026-04-25'),(8,'Benjie Cruz',8900.00,'Completed','2026-04-26'),(9,'Carla Abellana',12000.00,'Pending','2026-04-26'),(10,'Dingdong Dantes',5500.00,'Completed','2026-04-27'),(11,'Marian Rivera',7200.00,'Completed','2026-04-27'),(12,'Coco Martin',300.00,'Cancelled','2026-04-28'),(13,'Vic Sotto',15000.00,'Completed','2026-04-28'),(14,'Pia Wurtzbach',9500.00,'Completed','2026-04-29'),(15,'Catriona Gray',11000.00,'Pending','2026-04-29'),(16,'Alden Richards',6400.00,'Completed','2026-04-30');
/*!40000 ALTER TABLE `sales_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_developer_workload`
--

DROP TABLE IF EXISTS `v_developer_workload`;
/*!50001 DROP VIEW IF EXISTS `v_developer_workload`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_developer_workload` AS SELECT 
 1 AS `dev_name`,
 1 AS `team`,
 1 AS `project_name`,
 1 AS `hours`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_developer_workload`
--

/*!50001 DROP VIEW IF EXISTS `v_developer_workload`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_developer_workload` AS select `d`.`dev_name` AS `dev_name`,`d`.`team` AS `team`,coalesce(`p`.`project_name`,'Idle') AS `project_name`,coalesce(`p`.`project_hours`,0) AS `hours` from (`developers` `d` left join `projects` `p` on((`d`.`dev_id` = `p`.`dev_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-26 14:59:21

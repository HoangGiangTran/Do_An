-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `thumbnail` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Car Electronics','./assets/img/cat6.jpg'),(2,'Replacement Parts','./assets/img/35.jpg'),(3,'Smart Electronic Devices','./assets/img/43.jpg'),(4,'Portable Audio & Video','./assets/img/cat1.jpg'),(5,'name','./assets/img/cat6.jpg'),(6,'name','./assets/img/cat6.jpg'),(7,'name','./assets/img/cat6.jpg'),(8,'name','./assets/img/cat6.jpg'),(9,'name','./assets/img/cat6.jpg'),(10,'name','./assets/img/cat6.jpg'),(11,'name','./assets/img/cat6.jpg'),(12,'name','./assets/img/cat6.jpg'),(13,'name','./assets/img/cat6.jpg'),(14,'name','./assets/img/cat6.jpg'),(15,'name','./assets/img/cat6.jpg'),(16,'name','./assets/img/cat6.jpg'),(17,'name','./assets/img/cat6.jpg'),(18,'name','./assets/img/cat6.jpg'),(19,'name','./assets/img/cat6.jpg'),(20,'name','./assets/img/cat6.jpg'),(21,'name','./assets/img/cat6.jpg'),(22,'name','./assets/img/cat6.jpg'),(23,'name','./assets/img/cat6.jpg'),(24,'name','./assets/img/cat6.jpg'),(25,'name','./assets/img/cat6.jpg'),(26,'name','./assets/img/cat6.jpg'),(27,'name','./assets/img/cat6.jpg'),(28,'name','./assets/img/cat6.jpg'),(29,'name','./assets/img/cat6.jpg'),(30,'name','./assets/img/cat6.jpg'),(31,'name','./assets/img/cat6.jpg'),(32,'name','./assets/img/cat6.jpg'),(33,'name','./assets/img/cat6.jpg'),(34,'name','./assets/img/cat6.jpg'),(35,'name','./assets/img/cat6.jpg'),(36,'name','./assets/img/cat6.jpg'),(37,'name','./assets/img/cat6.jpg'),(38,'name','./assets/img/cat6.jpg'),(39,'name','./assets/img/cat6.jpg'),(40,'name','./assets/img/cat6.jpg'),(41,'name','./assets/img/20.jpg'),(42,'name','./assets/img/cat6.jpg'),(43,'name','./assets/img/cat6.jpg'),(44,'name','./assets/img/cat6.jpg'),(45,'name','./assets/img/cat6.jpg'),(46,'name','./assets/img/cat6.jpg'),(47,'name','./assets/img/cat6.jpg'),(48,'name','./assets/img/cat6.jpg'),(49,'name','./assets/img/cat6.jpg'),(50,'name','./assets/img/cat6.jpg'),(51,'name','./assets/img/cat6.jpg'),(52,'name','./assets/img/cat6.jpg'),(53,'name','./assets/img/cat6.jpg'),(54,'name','./assets/img/cat6.jpg'),(55,'name','./assets/img/cat6.jpg'),(56,'name','./assets/img/cat6.jpg'),(57,'name','./assets/img/cat6.jpg'),(58,'name','./assets/img/cat6.jpg'),(59,'name','./assets/img/cat6.jpg'),(60,'name','./assets/img/cat6.jpg'),(61,'name','./assets/img/cat6.jpg'),(62,'name','./assets/img/cat6.jpg'),(63,'name','./assets/img/cat6.jpg'),(64,'name','./assets/img/cat6.jpg'),(65,'name','./assets/img/cat6.jpg'),(66,'name','./assets/img/cat6.jpg'),(67,'name','./assets/img/cat6.jpg'),(68,'name','./assets/img/cat6.jpg'),(69,'name','./assets/img/cat6.jpg'),(70,'name','./assets/img/cat6.jpg'),(71,'name','./assets/img/cat6.jpg'),(72,'name','./assets/img/cat6.jpg'),(73,'name','./assets/img/cat6.jpg'),(74,'name','./assets/img/cat6.jpg'),(75,'name','./assets/img/cat6.jpg'),(76,'name','./assets/img/cat6.jpg'),(77,'name','./assets/img/cat6.jpg'),(78,'name','./assets/img/cat6.jpg'),(79,'name','./assets/img/cat6.jpg'),(80,'name','./assets/img/cat6.jpg'),(81,'name','./assets/img/cat6.jpg'),(82,'name','./assets/img/cat6.jpg'),(83,'name','./assets/img/cat6.jpg'),(84,'name','./assets/img/cat6.jpg'),(85,'name','./assets/img/cat6.jpg'),(86,'name','./assets/img/cat6.jpg'),(87,'name','./assets/img/cat6.jpg'),(88,'name','./assets/img/cat6.jpg'),(89,'name','./assets/img/cat6.jpg'),(90,'name','./assets/img/cat6.jpg'),(91,'name','./assets/img/cat6.jpg'),(92,'name','./assets/img/cat6.jpg'),(93,'name','./assets/img/cat6.jpg'),(94,'name','./assets/img/cat6.jpg'),(95,'name','./assets/img/cat6.jpg'),(96,'name','./assets/img/cat6.jpg'),(97,'name','./assets/img/cat6.jpg'),(98,'name','./assets/img/cat6.jpg'),(99,'name','./assets/img/cat6.jpg'),(100,'Dien thoai','./assets/img/cat6.jpg'),(101,'Dien thoai','./assets/img/cat6.jpg'),(102,'Tai nghe','./assets/img/cat6.jpg'),(103,'Loa','./assets/img/cat6.jpg'),(104,'May anh','./assets/img/cat6.jpg'),(105,'Tai nghe','./assets/img/cat6.jpg'),(106,'May anh','./assets/img/cat6.jpg'),(107,'May anh','./assets/img/cat6.jpg'),(108,'Tai nghe','./assets/img/cat6.jpg'),(109,'Tai nghe','./assets/img/cat6.jpg'),(110,'Loa','./assets/img/cat6.jpg'),(111,'Loa','./assets/img/cat6.jpg'),(112,'Loa','./assets/img/cat6.jpg'),(113,'Dien thoai','./assets/img/cat6.jpg'),(114,'Tai nghe','./assets/img/cat6.jpg'),(115,'May anh','./assets/img/cat6.jpg'),(116,'May anh','./assets/img/cat6.jpg'),(117,'May anh','./assets/img/cat6.jpg'),(118,'Dien thoai','./assets/img/cat6.jpg'),(119,'Dien thoai','./assets/img/cat6.jpg');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(1024) DEFAULT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Gallenies_products1_idx` (`product_id`),
  CONSTRAINT `fk_Gallenies_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'http://localhost:8080/CornSaladStore/assets/img/16-300x300.jpg',41),(2,'http://localhost:8080/CornSaladStore/assets/img/17.jpg',41),(3,'http://localhost:8080/CornSaladStore/assets/img/19.jpg',41),(4,'http://localhost:8080/CornSaladStore/assets/img/1.jpg',41),(5,'http://localhost:8080/CornSaladStore/assets/img/20-300x300.jpg',42),(6,'http://localhost:8080/CornSaladStore/assets/img/14-300x300.jpg',43),(7,'http://localhost:8080/CornSaladStore/assets/img/8-300x300.jpg',44),(8,'http://localhost:8080/CornSaladStore/assets/img/4-300x300.jpg',45),(9,'http://localhost:8080/CornSaladStore/assets/img/1-300x300.jpg',46),(10,'http://localhost:8080/CornSaladStore/assets/img/5-300x300.jpg',47),(11,'http://localhost:8080/CornSaladStore/assets/img/22.jpg',48),(12,'http://localhost:8080/CornSaladStore/assets/img/21.jpg',42),(13,'http://localhost:8080/CornSaladStore/assets/img/22.jpg',42),(14,'http://localhost:8080/CornSaladStore/assets/img/23.jpg',42),(15,'http://localhost:8080/CornSaladStore/assets/img/15.jpg',43),(16,'http://localhost:8080/CornSaladStore/assets/img/9.jpg',44),(17,'http://localhost:8080/CornSaladStore/assets/img/101.jpg',44),(18,'http://localhost:8080/CornSaladStore/assets/img/102.jpg',44),(19,'http://localhost:8080/CornSaladStore/assets/img/6.jpg',47),(20,'http://localhost:8080/CornSaladStore/assets/img/7.jpg',47);
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order-detais_orders1_idx` (`order_id`),
  KEY `fk_order-items_products1_idx` (`product_id`),
  CONSTRAINT `fk_order-detais_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `fk_order-items_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(1028) NOT NULL,
  `status` varchar(1028) DEFAULT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_orders_users1_idx` (`user_id`),
  CONSTRAINT `fk_orders_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` text,
  `price` decimal(10,0) DEFAULT NULL,
  `quality` int DEFAULT NULL,
  `view` int DEFAULT NULL,
  `category_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_products_categories_idx` (`category_id`),
  CONSTRAINT `fk_products_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (41,'Beats Studio Wireless Over-Ear','MP3 / MP4 Player Accessories',150,24,10,1,NULL),(42,'Bose SoundLink Mini','Engine',599,45,11,2,NULL),(43,'Bose® 35 Wireless Headphones','MP3 / MP4 Player Accessories',170,55,100,3,NULL),(44,'Beats Solo3 Wireless On-Ear','Speakers',129,193,2,66,NULL),(45,'AirPods Pro','Electronic Components & Supplies',500,12,2,96,NULL),(46,'AirPods','MP3 / MP4 Player Accessories',1200,14,3,100,NULL),(47,'UE Megaboom Portable Wireless ','Electronic Components & Supplies',5000,680,4,83,NULL),(48,'LapTop','Engine',43000,366,5,30,NULL),(49,'AirPods','MP3 / MP4 Player Accessories',1200,14,1,3,'2023-05-19 09:11:19'),(50,'Beats Studio Wireless Over-Ear','MP3 / MP4 Player Accessories',150,24,1,1,'2023-05-19 09:23:16'),(51,'Bose SoundLink Mini','Engine',599,12,1,66,'2023-05-19 09:23:16');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` varchar(45) DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abc@gmail.com','123','admin');
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

-- Dump completed on 2023-05-19 18:17:36

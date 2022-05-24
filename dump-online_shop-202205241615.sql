-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: online_shop
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL COMMENT 'Название раздела',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Разделы интернет-магазина';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogs`
--

LOCK TABLES `catalogs` WRITE;
/*!40000 ALTER TABLE `catalogs` DISABLE KEYS */;
INSERT INTO `catalogs` VALUES (3,'Видеокарты'),(4,'Жесткие диски'),(2,'Материнские платы'),(5,'Оперативная память'),(1,'Процессоры');
/*!40000 ALTER TABLE `catalogs` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_catalogs_on_insert` AFTER INSERT ON `catalogs` FOR EACH ROW BEGIN 
INSERT INTO logs SET table_type='catalogs', entity_id=NEW.id, name=NEW.name;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `customer_service`
--

DROP TABLE IF EXISTS `customer_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_service` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL COMMENT 'Имя работника магазина',
  `lastname` varchar(100) NOT NULL COMMENT 'Фамилия работника магазина',
  `email` varchar(120) NOT NULL COMMENT 'e-mail адрес работника магазина',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Тех. поддержка интернет-магазина';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_service`
--

LOCK TABLES `customer_service` WRITE;
/*!40000 ALTER TABLE `customer_service` DISABLE KEYS */;
INSERT INTO `customer_service` VALUES (1,'Дмитрий','Козлов','d.kozlov@onlineshop.by','2022-05-23 20:09:24','2022-05-23 20:09:24'),(2,'Валерий','Петров','v.petrov@onlineshop.by','2022-05-23 20:09:24','2022-05-23 20:09:24'),(3,'Александр','Смирнов','a.smirnov@onlineshop.by','2022-05-23 20:09:24','2022-05-23 20:09:24'),(4,'Николай','Попов','n.popov@onlineshop.by','2022-05-23 20:09:24','2022-05-23 20:09:24'),(5,'Владимир','Жуков','v.zhukov@onlineshop.by','2022-05-23 20:09:24','2022-05-23 20:09:24');
/*!40000 ALTER TABLE `customer_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL COMMENT 'Имя покупателя',
  `lastname` varchar(100) NOT NULL COMMENT 'Фамилия покупателя',
  `email` varchar(120) NOT NULL COMMENT 'е-mail адрес покупателя',
  `phone` varchar(120) NOT NULL COMMENT 'Телефон покупателя',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `lastname` (`lastname`),
  KEY `email_2` (`email`),
  KEY `phone_2` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Покупатели';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Дарья','Астафьева','dasha@gmail.com','+375297589385','2022-05-23 20:23:06','2022-05-23 20:23:06'),(2,'Дмитрий','Синицын','dima123@mail.ru','+375256874467','2022-05-23 20:23:06','2022-05-23 20:23:06'),(3,'Александр','Воробьев','alex555@rambler.ru','+375445676789','2022-05-23 20:23:06','2022-05-23 20:23:06'),(4,'Николай','Панин','nick1980@mail.ru','+375293456321','2022-05-23 20:23:06','2022-05-23 20:23:06'),(5,'Владимир','Черкесов','vovanchik@gmail.com','+375445678943','2022-05-23 20:23:06','2022-05-23 20:23:06'),(6,'Семен','Корочаев','korochaev@rambler.ru','+375297637890','2022-05-23 20:23:06','2022-05-23 20:23:06'),(7,'Андрей','Рублев','a_rublev@hotmail.com','+375256786543','2022-05-23 20:23:06','2022-05-23 20:23:06'),(8,'Марина','Белова','marinochka80@gmail.com','+375293458909','2022-05-23 20:23:06','2022-05-23 20:23:06'),(9,'Николай','Сохор','n.sohor@gmail.com','+375254565631','2022-05-23 20:23:06','2022-05-23 20:23:06'),(10,'Анатолий','Бараховский','tolan1980@mail.ru','+375294567809','2022-05-23 20:23:06','2022-05-23 20:23:06');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_users_on_insert` AFTER INSERT ON `customers` FOR EACH ROW BEGIN 
INSERT INTO logs SET table_type='customers', entity_id=NEW.id, name=NEW.firstname;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `table_type` varchar(255) NOT NULL,
  `entity_id` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=ARCHIVE DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `size` int NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `media_product_id_fk` (`product_id`),
  CONSTRAINT `media_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Медиафайлы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,'100.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(2,2,'120.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(3,3,'130.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(4,4,'140.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(5,5,'150.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(6,6,'170.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(7,7,'180.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(8,8,'190.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(9,9,'200.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(10,10,'210.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(11,11,'220.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(12,12,'230.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(13,13,'240.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(14,14,'250.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(15,15,'260.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(16,16,'270.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(17,17,'280.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(18,18,'290.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(19,19,'300.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(20,20,'310.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(21,21,'320.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(22,22,'330.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(23,23,'340.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(24,24,'350.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35'),(25,25,'360.jpg',42466,'2022-05-23 19:34:35','2022-05-23 19:34:35');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `customer_id` bigint unsigned NOT NULL,
  `customer_service_id` bigint unsigned NOT NULL,
  `body` text NOT NULL,
  `important` tinyint(1) DEFAULT NULL,
  `delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`customer_id`),
  KEY `messages_customer_service_id_fk` (`customer_service_id`),
  CONSTRAINT `messages_customer_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `messages_customer_service_id_fk` FOREIGN KEY (`customer_service_id`) REFERENCES `customer_service` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Переписка покупателей и тех. поддержки интернет-магазина';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,2,'Как сегодня прошел ваш день ?)',0,1,'2021-12-13 08:38:22'),(2,2,'Сколько стоит доставка в г. Мозырь ?',1,1,'2021-09-09 09:03:08'),(3,1,'Какую гарантию вы даете на видеокарты ?',1,1,'2022-05-19 14:32:14'),(4,5,'Есть ли у вас рассрочка платежа ?',1,1,'2021-10-19 20:25:21'),(5,3,'Собираетесь ли расширять ассортимент ?',0,1,'2021-06-16 03:06:59'),(6,4,'Продаете ли вы мониторы? Спасибо',1,1,'2021-03-25 10:42:09'),(7,2,'Возможна ли оплата банковской картой ? Спасибо',1,1,'2021-07-23 03:56:15'),(8,4,'Откуда возите видеокарты?)',0,1,'2022-01-10 07:02:02'),(9,5,'Какие сроки Доставки товара в г. Брест? Спасибо',1,1,'2022-04-19 11:57:29');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `product_id` bigint unsigned DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL COMMENT 'Статус оплаты заказа',
  `amount` int unsigned NOT NULL,
  `delivered` tinyint(1) DEFAULT NULL COMMENT 'Статус доставки заказа покупателю',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `orders_product_id_fk` (`product_id`),
  KEY `orders_customer_id_fk` (`customer_id`),
  CONSTRAINT `orders_customer_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `orders_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Заказы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,10,1,170,1,'2022-05-24 13:19:01','2022-05-24 13:19:01'),(2,1,22,1,470,1,'2022-05-24 13:19:01','2022-05-24 13:19:01'),(3,5,1,1,690,1,'2022-05-24 13:19:01','2022-05-24 13:19:01'),(4,5,15,1,3200,1,'2022-05-24 13:19:01','2022-05-24 13:19:01'),(5,5,23,1,278,1,'2022-05-24 13:19:01','2022-05-24 13:19:01'),(6,9,2,1,995,1,'2022-05-24 13:19:01','2022-05-24 13:19:01'),(7,9,15,1,3200,1,'2022-05-24 13:19:01','2022-05-24 13:19:01'),(8,2,3,1,1273,1,'2022-05-24 13:19:01','2022-05-24 13:19:01'),(9,2,10,1,170,1,'2022-05-24 13:19:01','2022-05-24 13:19:01'),(10,2,15,1,3200,1,'2022-05-24 13:19:01','2022-05-24 13:19:01'),(11,3,24,1,89,1,'2022-05-24 13:19:01','2022-05-24 13:19:01'),(12,3,11,1,1835,1,'2022-05-24 13:19:01','2022-05-24 13:19:01'),(13,3,19,1,195,1,'2022-05-24 13:19:01','2022-05-24 13:19:01'),(14,4,5,1,3888,1,'2022-05-24 13:19:01','2022-05-24 13:19:01'),(15,4,13,1,2035,1,'2022-05-24 13:19:01','2022-05-24 13:19:01'),(16,4,17,1,719,1,'2022-05-24 13:19:01','2022-05-24 13:19:01'),(17,4,21,1,269,1,'2022-05-24 13:19:01','2022-05-24 13:19:01'),(18,6,9,1,686,0,'2022-05-24 13:19:01','2022-05-24 13:19:01'),(19,8,13,1,2035,0,'2022-05-24 13:19:01','2022-05-24 13:19:01'),(20,8,22,1,470,0,'2022-05-24 13:19:01','2022-05-24 13:19:01');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `orders_for_age_groups`
--

DROP TABLE IF EXISTS `orders_for_age_groups`;
/*!50001 DROP VIEW IF EXISTS `orders_for_age_groups`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `orders_for_age_groups` AS SELECT 
 1 AS `age_group`,
 1 AS `Количество заказов`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Наименование товара',
  `price` int unsigned DEFAULT NULL COMMENT 'Цена товара',
  `description` text COMMENT 'Описание товара',
  `catalog_id` bigint unsigned DEFAULT NULL,
  `media_id` bigint unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `name_2` (`name`),
  KEY `product_media_id_fk` (`media_id`),
  KEY `product_catalog_id_fk` (`catalog_id`),
  CONSTRAINT `product_catalog_id_fk` FOREIGN KEY (`catalog_id`) REFERENCES `catalogs` (`id`) ON DELETE SET NULL,
  CONSTRAINT `product_media_id_fk` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Товарные позиции интернет-магазина';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'AMD Ryzen 5 5600X',690,'Vermeer, AM4, 6 ядер, частота 4.6/3.7 ГГц, кэш 3 МБ + 32 МБ, техпроцесс 7 нм, TDP 65W',1,1,'2022-05-23 18:43:06','2022-05-23 20:00:40'),(2,'AMD Ryzen 7 5800X',995,'Vermeer, AM4, 8 ядер, частота 4.7/3.8 ГГц, кэш 4 МБ + 32 МБ, техпроцесс 7 нм, TDP 105W',1,2,'2022-05-23 18:43:06','2022-05-23 20:00:40'),(3,'Intel Core i7-12700K',1273,'Alder Lake, LGA1700, 12 ядер, частота 5/2.7 ГГц, кэш 12 МБ + 25 МБ, техпроцесс 10 нм, TDP 190W',1,3,'2022-05-23 18:43:06','2022-05-23 20:00:40'),(4,'Intel Core i9-12900K',1950,'Alder Lake, LGA1700, 16 ядер, частота 5.2/2.4 ГГц, кэш 14 МБ + 30 МБ, техпроцесс 10 нм, TDP 241W',1,4,'2022-05-23 18:43:06','2022-05-23 20:00:40'),(5,'AMD Ryzen Threadripper 1950X (BOX)',3888,'Whitehaven, TR4, 16 ядер, частота 4/3.4 ГГц, кэш 8 МБ + 32 МБ, техпроцесс 14 нм, TDP 180W',1,5,'2022-05-23 18:43:06','2022-05-23 20:00:40'),(6,'ASRock B660M Pro RS',357,'mATX, сокет Intel LGA1700, чипсет Intel B660, память 4xDDR4, слоты: 2xPCIe x16, 1xPCIe x1, 2xM.2',2,6,'2022-05-23 19:18:59','2022-05-23 20:00:40'),(7,'Gigabyte B450 Aorus Pro (rev. 1.0)',284,'ATX, сокет AMD AM4, чипсет AMD B450, память 4xDDR4, слоты: 3xPCIe x16, 1xPCIe x1, 2xM.2',2,7,'2022-05-23 19:18:59','2022-05-23 20:00:40'),(8,'ASUS Prime H510M-K',209,'mATX, сокет Intel LGA1200, чипсет Intel H510, память 2xDDR4, слоты: 1xPCIe x16, 1xPCIe x1, 1xM.2',2,8,'2022-05-23 19:18:59','2022-05-23 20:00:40'),(9,'ASUS ROG STRIX B550-E Gaming',686,'ATX, сокет AMD AM4, чипсет AMD B550, память 4xDDR4, слоты: 3xPCIe x16, 2xPCIe x1, 2xM.2',2,9,'2022-05-23 19:18:59','2022-05-23 20:00:40'),(10,'Gigabyte B450M DS3H (rev. 1.0)',170,'mATX, сокет AMD AM4, чипсет AMD B450, память 4xDDR4, слоты: 2xPCIe x16, 1xPCIe x1, 1xM.2',2,10,'2022-05-23 19:18:59','2022-05-23 20:00:40'),(11,'Palit GeForce RTX 3060 Dual 12GB GDDR6 NE63060019K9-190AD',1835,'NVIDIA GeForce RTX 3060 12 ГБ GDDR6 LHR, базовая частота 1320 МГц, макс. частота 1777 МГц, 3584sp, частота памяти 15000 МГц, 192 бит, доп. питание: 8 pin, 2 слота, HDMI, DisplayPort',3,11,'2022-05-23 19:18:59','2022-05-23 20:00:40'),(12,'Gigabyte GeForce GTX 1660 Super OC 6GB GDDR6 GV-N166SOC-6GD',1280,'NVIDIA GeForce GTX 1660 Super 6 ГБ GDDR6, базовая частота 1530 МГц, макс. частота 1830 МГц, 1408sp, частота памяти 14000 МГц, 192 бит, доп. питание: 8 pin, 2 слота, HDMI, DisplayPort',3,12,'2022-05-23 19:18:59','2022-05-23 20:00:40'),(13,'MSI GeForce RTX 3060 Ti Ventus 2X 8G OCV1 LHR',2035,'NVIDIA GeForce RTX 3060 Ti 8 ГБ GDDR6 LHR, базовая частота 1410 МГц, макс. частота 1695 МГц, 4864sp, частота памяти 14000 МГц, 256 бит, доп. питание: 8 pin, 2.3 слота, HDMI, DisplayPort',3,13,'2022-05-23 19:18:59','2022-05-23 20:00:40'),(14,'Palit GeForce RTX 3050 Dual 8G NE63050019P1-190AD',1340,'NVIDIA GeForce RTX 3050 8 ГБ GDDR6 LHR, базовая частота 1550 МГц, макс. частота 1777 МГц, 2560sp, частота памяти 14000 МГц, 128 бит, доп. питание: 8 pin, 2 слота, HDMI, DisplayPort',3,14,'2022-05-23 19:18:59','2022-05-23 20:00:40'),(15,'ASUS TUF Gaming GeForce RTX 3070 Ti 8GB GDDR6X',3200,'NVIDIA GeForce RTX 3070 Ti 8 ГБ GDDR6X LHR, базовая частота 1580 МГц, макс. частота 1800 МГц, 6144sp, частота памяти 19000 МГц, 256 бит, доп. питание: 8+8 pin, 2.7 слота, HDMI, DisplayPort',3,15,'2022-05-23 19:18:59','2022-05-23 20:00:40'),(16,'SSD Kingston A400 480GB SA400M8/480G',180,'480 ГБ, M.2, SATA 3.0, микросхемы TLC, последовательный доступ: 500/450 MBps',4,16,'2022-05-23 19:18:59','2022-05-23 20:00:40'),(17,'SSD Samsung 970 PRO 1TB MZ-V7P1T0BW',719,'1 ТБ, M.2, PCI Express 3.0 x4 (NVMe 1.3), контроллер Samsung Phoenix, микросхемы 3D MLC NAND, последовательный доступ: 3500/2700 MBps, случайный доступ: 500000/500000 IOps',4,17,'2022-05-23 19:18:59','2022-05-23 20:00:40'),(18,'SSD Crucial BX500 240GB CT240BX500SSD1',120,'240 ГБ, 2.5\", SATA 3.0, контроллер Silicon Motion SM2258XT, микросхемы 3D TLC NAND, последовательный доступ: 540/500 MBps',4,18,'2022-05-23 19:18:59','2022-05-23 20:00:40'),(19,'HDD Seagate Barracuda 2TB ST2000DM008',195,'3.5\", SATA 3.0 (6Gbps), 7200 об/мин, буфер 256 МБ',4,19,'2022-05-23 19:18:59','2022-05-23 20:00:40'),(20,'HDD WD Purple 4TB [WD40PURZ]',350,'3.5\", SATA 3.0 (6Gbps), 5400 об/мин, буфер 64 МБ',4,20,'2022-05-23 19:18:59','2022-05-23 20:00:40'),(21,'Crucial Ballistix 2x8GB DDR4 PC4-25600 BL2K8G32C16U4B',269,'16 ГБ, 2 модуля DDR4 DIMM по 8 ГБ, частота 3200 МГц, CL 16T, напряжение 1.35 В',5,21,'2022-05-23 19:18:59','2022-05-23 20:00:40'),(22,'Crucial Ballistix 2x16GB DDR4 PC4-25600 BL2K16G32C16U4B',470,'32 ГБ, 2 модуля DDR4 DIMM по 16 ГБ, частота 3200 МГц, CL 16T, напряжение 1.35 В',5,22,'2022-05-23 19:18:59','2022-05-23 20:00:40'),(23,'Kingston FURY Beast 2x8GB DDR4 PC4-28800 KF436C17BBK2/16',278,'16 ГБ, 2 модуля DDR4 DIMM по 8 ГБ, частота 3600 МГц, CL 17T, тайминги 17-21-21, напряжение 1.35 В',5,23,'2022-05-23 19:18:59','2022-05-23 20:00:40'),(24,'Patriot Signature Line 8GB DDR4 SODIMM PC4-21300 PSD48G266681S',89,'8 ГБ, 1 модуль DDR4 SO-DIMM, частота 2666 МГц, CL 19T, тайминги 19-19-19-43, напряжение 1.2 В',5,24,'2022-05-23 19:18:59','2022-05-23 20:00:40'),(25,'HyperX Fury 4GB DDR4 PC4-25600 HX432C16FB3/4',90,'4 ГБ, 1 модуль DDR4 DIMM, частота 3200 МГц, CL 16T, тайминги 16-18-18, напряжение 1.35 В',5,25,'2022-05-23 19:18:59','2022-05-23 20:00:40');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_products_on_insert` AFTER INSERT ON `product` FOR EACH ROW BEGIN 
INSERT INTO logs SET table_type='products', entity_id=NEW.id, name=NEW.name;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `products_in_warehouses`
--

DROP TABLE IF EXISTS `products_in_warehouses`;
/*!50001 DROP VIEW IF EXISTS `products_in_warehouses`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `products_in_warehouses` AS SELECT 
 1 AS `Адрес склада`,
 1 AS `наименование товара`,
 1 AS `количество`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `products_warehouses`
--

DROP TABLE IF EXISTS `products_warehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_warehouses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `warehouse_id` bigint unsigned DEFAULT NULL,
  `product_id` bigint unsigned DEFAULT NULL,
  `amount` int unsigned DEFAULT NULL COMMENT 'Запас товарной позиции на складе',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `products_warehouses_warehouse_id_fk` (`warehouse_id`),
  KEY `products_warehouses_product_id_fk` (`product_id`),
  CONSTRAINT `products_warehouses_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `products_warehouses_warehouse_id_fk` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Запасы на складе';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_warehouses`
--

LOCK TABLES `products_warehouses` WRITE;
/*!40000 ALTER TABLE `products_warehouses` DISABLE KEYS */;
INSERT INTO `products_warehouses` VALUES (1,1,1,10),(2,1,2,12),(3,1,3,16),(4,1,4,5),(5,1,5,5),(6,1,6,7),(7,1,7,11),(8,1,8,5),(9,1,9,6),(10,2,10,21),(11,2,11,10),(12,2,12,7),(13,2,13,11),(14,3,14,24),(15,3,15,10),(16,4,16,11),(17,4,17,26),(18,4,18,7),(19,5,19,15),(20,5,20,13),(21,5,21,7),(22,5,22,8),(23,3,23,4),(24,4,24,7),(25,2,25,32),(26,1,1,8),(27,5,10,9),(28,3,16,10),(29,1,8,6),(30,4,9,6),(31,5,15,5),(32,2,22,9),(33,2,1,14),(34,3,1,11),(35,1,1,9);
/*!40000 ALTER TABLE `products_warehouses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `customer_id` bigint unsigned NOT NULL,
  `sex` char(1) NOT NULL COMMENT 'Пол покупателя',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения покупателя',
  `address` varchar(200) DEFAULT NULL COMMENT 'Адрес покупателя',
  PRIMARY KEY (`customer_id`),
  CONSTRAINT `profiles_customer_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Профили покупателей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'f','1998-10-31','г. Минск, ул. Сурганова, 5-128'),(2,'m','2006-10-18','г. Минск, ул. Притыцкого, 67-12'),(3,'m','1972-06-27','г. Минск, ул. П. Глебки, 12-65'),(4,'m','1994-05-01','г. Могилев, ул. Первомайская, 56-13'),(5,'m','1999-04-11','г. Гродно, ул. Победителей, 32-8'),(6,'m','1982-09-28','г. Могилев, ул. Сурганова, 10-11'),(7,'m','1999-07-27','г. Витебск, ул. Семашко, 8-56'),(8,'f','1997-07-14','г. Гродно, ул. Стрыкало, 67-16'),(9,'m','2002-03-24','г. Гомель, ул. Тимошенко, 45-16'),(10,'m','1977-04-05','г. Брест, ул. Центральная, 7-16');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `product_id` bigint unsigned DEFAULT NULL,
  `body` text NOT NULL COMMENT 'Отзыв покупателя о товаре',
  `ranking` tinyint DEFAULT NULL COMMENT 'Оценка товара от 0 до 10',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `ranking` (`ranking`),
  KEY `reviews_customer_id_fk` (`customer_id`),
  KEY `reviews_product_id_fk` (`product_id`),
  CONSTRAINT `reviews_customer_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Отзывы покупателей от товарах';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,1,'Брал на замену R5 3500, который без многопотока, 5600х на 77% лучше при том же +-тдп. На матери b450 с последним биосом от гигов работает как часы даже без перестановки Windows, \r\n  хотя и юзал временный атлон неделю. Однозначно лучший 6 ядерный 12 поточный проц амд на данный момент. По температурам скажу, что разница с той же башней и мх-4 5-10 градусов в 100% нагрузке, в простое 45-50.\r\n  Достоинства: TDP, частоты и многопоток Недостатки: Цена',9,'2022-05-23 21:50:53','2022-05-23 21:50:53'),(2,5,1,'Попался голд семп. Настроил через гидру в даунвольт. По итогу: 4800 в легких приложениях и 4500 на все ядра в тяжелых. Температура упала с 50 до 40. Температуры под кастом водой.\r\n  Достоинства: классный проц для игр Недостатки: цена',8,'2022-05-23 21:50:53','2022-05-23 21:50:53'),(3,2,2,'По доставке, пришел заляпанный, отмыл но не приятно, имейте в ввиду. Очень жаркий, 200ватт сожрёт и не подумает\r\n  105 ватт это на минимальной скорости Охлаждается водянкой, 70° на мощный задачах, зато полное раскрытие\r\n  Достоинства: Мощный Почти топНедостатки: Горячий',9,'2022-05-23 21:50:53','2022-05-23 21:50:53'),(4,3,4,'Камень прекрасный, не горячий если не гнать. Для разгона однозначно нужна водянка. Материнку брать только на DDR5 c поддержкой PCIe 5.0 для SSD, смотрите описания к материнкам, \r\n  производители хитрят. Достоинства: Все понравилось, даже цена. Недостатки: Нет, пока, SSD с \r\n  поддержкой PCIe 5.0 в продаже, а видеокарт наверно и не предвидится в этом году.',9,'2022-05-23 21:50:53','2022-05-23 21:50:53'),(5,4,10,'пользуюсь несколько лет, со временем все больше вылазит проблема с sata, недавно угробила один из дисков\r\n  Достоинства: за эти деньги много всего Недостатки: sata разъемы',5,'2022-05-23 21:50:53','2022-05-23 21:50:53'),(6,1,15,'Долго не хотел брать из-за диких цен, но недавно они опять поползли вверх, вот и решил заменить свою 1080, а то мало ли еще больший дефицит будет.\r\n  СО для этой карты избыточная, что выливается в 60-65 градусов в играх при 1440p и локе в 144Гц (Warframe, Destiny 2) на максах. Имеется переключатель режимов охлаждения Perfomance/Quiet. Оставил на перфоманс, все равно почти не слышно, а низкие температуры я люблю.\r\n  Достоинства: Охлаждение, тишина, компонентная база\r\n  Недостатки: 2х оверпрайс, порой незначительный свист дросселей',7,'2022-05-23 21:50:53','2022-05-23 21:50:53'),(7,5,20,'Используется 6 дисков по 4 тб, 24 камеры параллельно на них записывают. Пару раз вырубались от грозы, отвалился за 2 года только один и то из-за внезапного выключения света.\r\n  Достоинства: Никогда не спит, 5400 оборотов, скорость 150мб в сек не у каждого харда\r\n  Недостатки: Может сломаться',8,'2022-05-23 21:50:53','2022-05-23 21:50:53'),(8,6,20,'Отличные HDD для систем видеонаблюдения. В течении 5 лет - ни один не сломался. Хотя поставил уже порядка 20- 30шт.\r\n  Достоинства: надёжность на высоте Недостатки: пока не огбнаружил',9,'2022-05-23 21:50:53','2022-05-23 21:50:53'),(9,7,23,'Память топ, особенно за свою цену, холодная, гнать легко, XMP 2.0 профиль, стабильная\r\n  Достоинства: 2-ух стороннее расположение чипов, охлаждение, цена, качество\r\n  Недостатки: нет',10,'2022-05-23 21:50:53','2022-05-23 21:50:53'),(10,8,25,'Все работает стабильно больше сказать нечего, больше ставить памяти вообще нет смысла.\r\n  Достоинства: работает, ))  Недостатки: выключаешь комп перестает работать ))',9,'2022-05-23 21:50:53','2022-05-23 21:50:53'),(11,9,22,'Все работает стабильно больше сказать нечего, больше ставить памяти вообще нет смысла.\r\n  Достоинства: работает, ))  Недостатки: выключаешь комп перестает работать ))',9,'2022-05-23 21:50:53','2022-05-23 21:50:53'),(12,10,6,'Плата отлично подходит для i5 и нон к i7, питальник не греется, радиаторы после часа игры в бф 2042 еле теплые (i5 12400), этот проц полностью разлоченный в биос в играх не выходит за 65 вт, в стресс тесте аида 70 вт. 12 поколение это уже не 11, где i5 ели под 120-150 вт. В тяжелом ОССТ врм за час разоргелся с 12400 до 75, что очень круто, в целом по врм все хорошо, нужно только поднять/снять лимиты в биос, т.к. Асрок заложил интеловский дефолт, а тот же мси хитрит и завышает пл1 и пл2, поэтому в стоке их мамки якобы лучше держат частоту.\r\n  На последнем биосе вер.5 и выше память отлично гонится и тайминги жмутся прекрастно, на старых пишут даже не берет xmp 3600, но я не пробовал, сразу обновил.\r\n  Минусы: не определяет в режтме UEFI старые видеокарты, паскали не пашут что 1050 ti от гиги, что 1070 от асуса, нужно включать csm, но для этого нужна другая видеокарта , т.к. csm по дефолту отключен. А с включенным csm не встанет вин 11. На 3060 палит все заработало. Это так стимулируют покупки новых видеокарт?\r\n  Достоинства: Выше Недостатки: Совместимость с видиками паскалеанской эры',9,'2022-05-23 21:50:53','2022-05-23 21:50:53'),(13,5,13,'Очень небольшой размер, влезет в любой корпус. Память гонится на +1600, хотя и хайникс, может 1800, но в некоторых играх вылетает. Можно включить режим зеро фрозр, становится заметно тише в нагрузках, но и греется на 5 градусов больше. Насколько греется память неизвестно, но охлаждение хорошее, на цепях питания отдельный радиатор, все в термопрокладках и важные элементы попадают под радиатор. В хорошо продуваемом корпусе в играх больше 72 градусов не видел, хот спот +13 градусов. Можно ТДП снизить до 80%, фпс падает на 20 кадров ( но в играх без дллс он и так 90-110), но и температура не выше 66 градусов. По производительности в целом более чем достаточно для 2К, если бы была возможность повысить ТДП, возможно бы и неплохо разогналась, но все упирается в питание.\r\n  Достоинства: Габариты, охлаждение, память Недостатки: ТДП ограничен 100%, отсюда и не очень большой разгон',9,'2022-05-23 21:50:53','2022-05-23 21:50:53'),(14,6,16,'Купил в ноутбук для замены умершего ssd. Работает отлично, никаких проблем.\r\n  Достоинства: Отличное ssd за свои деньги. Недостатки: не обнаружил',10,'2022-05-23 21:50:53','2022-05-23 21:50:53'),(15,5,12,'Посидев малость на rx560 на 2gb решил обновиться и взять оную карточку. Из того, во что играю (gta, far cry, EFT и проч.), всё идёт либо на максимальных настройках графики, либо предмаксимальных. Вполне себе хороша, НО. Будьте внимательны с системой охлаждения и качеством заводской термопасты. Прослужив мне примерно год, меня начало напрягать 80 градусов при 100% загрузки, хотя подобные значение были достаточно давно. Приложив отвёртку к винтам обнаружил, что они были ослаблены, паста уже давно высохла, а на самой плате и чипе уже имеются проблемные участки с потемнениями. И это не смотря на заявленные 93 градуса максимальной нагрузки. По цене считаю, что она сейчас чересчур завышена. Я брал в былом ** за 270$ или 570 рублей, сейчас в среднем в 2 раза дороже в рублях и примерно на сотню в долларах, во всяком случае из того, что на онлайнере показывает. Так что выбор за вами.\r\n  Достоинства: 6gb super Недостатки: После покупки лучше заменить термопасту Шумная при хорошей загрузке, но это в сравнении с 2gb радеона',7,'2022-05-23 21:50:53','2022-05-23 21:50:53'),(16,3,10,'Кабели sata в комплекте ужасные диски просто через время перестают работать, не удивлюсь если и с портами проблема\r\n  Достоинства: цена Недостатки: vrm мосты и все что связано с sata',7,'2022-05-23 21:50:53','2022-05-23 21:50:53'),(17,2,17,'Скорость зависит от процессора и организации PCI-E на плате, т.е. у кого процессор имеет прямую связь с NVME в выигрыше, на Райзене дает честных 3300МБс на запись, в тоже время на Интеле только 2300. Цена выше средней, можно взять 2 по 512 за те-же деньги, но скорость будет меньше.\r\n  Достоинства: Высокая скорость. Большой ресурс. Недостатки: Нет встроенного PROM как у 950 PRO, \r\n  те кто подключает через переходник и хочет использовать под систему должны модифицировать BIOS.',8,'2022-05-23 21:50:53','2022-05-23 21:50:53'),(18,9,21,'Топовая память. На некоторых системах разгоняется до 4 ггц. Надежный производитель. Красивая\r\n  Достоинства: Красивая, быстрая, надежная Недостатки: Пропадает из продажи',10,'2022-05-23 21:50:53','2022-05-23 21:50:53'),(19,7,16,'Обычный накопитель, почему отрицательный отзыв написали не понятно. Два фото приведу, HDD и SSD, всё очевидно.\r\n  Достоинства: Всё Недостатки: Не выявил',9,'2022-05-23 21:50:53','2022-05-23 21:50:53'),(20,6,25,'Доброго времени суток, покупал для Asrok B550 pro4 - 2плашки по 8 Гб 3777мгц, гоняет уже больше года, ни тормозов ни ошибок - все супер! Рекомендую!\r\n  Достоинства: Качество, работает безотказно, частота соответствует заявленной. Недостатки: Цена',8,'2022-05-23 21:50:53','2022-05-23 21:50:53');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL COMMENT 'Адрес склада',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Склады товаров';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouses`
--

LOCK TABLES `warehouses` WRITE;
/*!40000 ALTER TABLE `warehouses` DISABLE KEYS */;
INSERT INTO `warehouses` VALUES (4,'г. Брест, ул. Советская 56'),(3,'г. Витебск, 1-я улица Доватора, дом 1'),(5,'г. Гродно, ул. Максима Горького 49-123'),(1,'г. Минск, ул. Кнорина 6Б оф. 5Н'),(2,'г. Могилев, ул. Дзержинского 4');
/*!40000 ALTER TABLE `warehouses` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `no_warehouses_delete` BEFORE DELETE ON `warehouses` FOR EACH ROW BEGIN
  SIGNAL SQLSTATE '45000'
  SET MESSAGE_TEXT = 'У вас нет прав на данную операцию!';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping routines for database 'online_shop'
--

--
-- Final view structure for view `orders_for_age_groups`
--

/*!50001 DROP VIEW IF EXISTS `orders_for_age_groups`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orders_for_age_groups` AS select (case when ((timestampdiff(YEAR,`p`.`birthday`,now()) >= 10) and (timestampdiff(YEAR,`p`.`birthday`,now()) <= 20)) then '10-20' when ((timestampdiff(YEAR,`p`.`birthday`,now()) >= 21) and (timestampdiff(YEAR,`p`.`birthday`,now()) <= 30)) then '21-30' when ((timestampdiff(YEAR,`p`.`birthday`,now()) >= 31) and (timestampdiff(YEAR,`p`.`birthday`,now()) <= 40)) then '31-40' when ((timestampdiff(YEAR,`p`.`birthday`,now()) >= 41) and (timestampdiff(YEAR,`p`.`birthday`,now()) <= 50)) then '41-50' when ((timestampdiff(YEAR,`p`.`birthday`,now()) >= 51) and (timestampdiff(YEAR,`p`.`birthday`,now()) <= 60)) then '51-60' when (timestampdiff(YEAR,`p`.`birthday`,now()) >= 61) then '61+' end) AS `age_group`,count(`o`.`id`) AS `Количество заказов` from (`profiles` `p` join `orders` `o` on((`p`.`customer_id` = `o`.`customer_id`))) group by `age_group` order by `age_group` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `products_in_warehouses`
--

/*!50001 DROP VIEW IF EXISTS `products_in_warehouses`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `products_in_warehouses` AS select `w`.`name` AS `Адрес склада`,`p`.`name` AS `наименование товара`,count(0) AS `количество` from ((`warehouses` `w` join `products_warehouses` `pw` on((`w`.`id` = `pw`.`warehouse_id`))) join `product` `p` on((`pw`.`product_id` = `p`.`id`))) group by `w`.`name`,`p`.`name` */;
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

-- Dump completed on 2022-05-24 16:15:59

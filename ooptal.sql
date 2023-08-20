-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: optikartdb
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add news mail',7,'add_newsmail'),(26,'Can change news mail',7,'change_newsmail'),(27,'Can delete news mail',7,'delete_newsmail'),(28,'Can view news mail',7,'view_newsmail'),(29,'Can add products',8,'add_products'),(30,'Can change products',8,'change_products'),(31,'Can delete products',8,'delete_products'),(32,'Can view products',8,'view_products'),(33,'Can add product',8,'add_product'),(34,'Can change product',8,'change_product'),(35,'Can delete product',8,'delete_product'),(36,'Can view product',8,'view_product'),(37,'Can add blog',9,'add_blog'),(38,'Can change blog',9,'change_blog'),(39,'Can delete blog',9,'delete_blog'),(40,'Can view blog',9,'view_blog'),(41,'Can add cart item',10,'add_cartitem'),(42,'Can change cart item',10,'change_cartitem'),(43,'Can delete cart item',10,'delete_cartitem'),(44,'Can view cart item',10,'view_cartitem'),(45,'Can add order status',11,'add_orderstatus'),(46,'Can change order status',11,'change_orderstatus'),(47,'Can delete order status',11,'delete_orderstatus'),(48,'Can view order status',11,'view_orderstatus');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$0exVQyPJvBDk4AtN3DzyvT$ZNJDm+6C8Y063ZwFJGQOZLcZoCk9GLia5MTnFpy5fYI=','2023-08-18 16:01:02.822636',1,'AnirbanBhattacharya','','','contact@anirbanbhattacharya.in',1,1,'2023-08-04 15:50:35.064264'),(13,'pbkdf2_sha256$390000$pUeuWur6Am3UauzrlnI7Z1$E29CSIrftUHOcbJA+CqceDeW1hO5DJa08VziNqDizyw=','2023-08-20 05:50:58.058473',0,'contact@anirbanbhattacharya.in','Anirban','','contact@anirbanbhattacharya.in',0,1,'2023-08-19 09:26:56.904402');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-08-05 05:16:20.874953','1','Aviator',1,'[{\"added\": {}}]',8,1),(2,'2023-08-05 05:17:04.674123','2','Crane',1,'[{\"added\": {}}]',8,1),(3,'2023-08-05 05:17:50.150945','3','Bodie',1,'[{\"added\": {}}]',8,1),(4,'2023-08-05 05:18:44.533950','4','Hughes',1,'[{\"added\": {}}]',8,1),(5,'2023-08-05 05:19:23.637180','5','Collins',1,'[{\"added\": {}}]',8,1),(6,'2023-08-05 05:20:26.712973','6','Raider',1,'[{\"added\": {}}]',8,1),(7,'2023-08-05 05:21:20.174719','7','Darrow',1,'[{\"added\": {}}]',8,1),(8,'2023-08-05 05:23:53.896382','8','Alston',1,'[{\"added\": {}}]',8,1),(9,'2023-08-05 05:58:48.050983','8','Alston',2,'[{\"changed\": {\"fields\": [\"Rating\"]}}]',8,1),(10,'2023-08-05 05:58:59.012062','8','Alston',2,'[{\"changed\": {\"fields\": [\"Rating\"]}}]',8,1),(11,'2023-08-05 06:08:53.066452','1','Aviator',1,'[{\"added\": {}}]',9,1),(12,'2023-08-05 06:10:18.875115','1','Aviator',3,'',9,1),(13,'2023-08-05 06:16:37.771994','2','The Uses & Benefits of Wearing Computer Glasses',1,'[{\"added\": {}}]',9,1),(14,'2023-08-05 06:19:19.509638','3','Bodie',1,'[{\"added\": {}}]',9,1),(15,'2023-08-05 06:19:26.386860','3','Bodie',3,'',9,1),(16,'2023-08-05 09:48:12.848960','4','Rising Trends in Men\'s Eyewear',1,'[{\"added\": {}}]',9,1),(17,'2023-08-05 09:49:08.934646','5','5 Benefits Of Wearing Anti Reflective Glasses',1,'[{\"added\": {}}]',9,1),(18,'2023-08-05 09:50:52.978452','6','Latest Different Eyewear Trends In Fashion',1,'[{\"added\": {}}]',9,1),(19,'2023-08-05 09:51:04.385254','5','5 Benefits Of Wearing Anti Reflective Glasses',2,'[{\"changed\": {\"fields\": [\"Desc\"]}}]',9,1),(20,'2023-08-05 09:51:13.040274','4','Rising Trends in Men\'s Eyewear',2,'[{\"changed\": {\"fields\": [\"Desc\"]}}]',9,1),(21,'2023-08-05 09:51:23.899006','2','The Uses & Benefits of Wearing Computer Glasses',2,'[]',9,1),(22,'2023-08-05 09:52:13.474144','6','Latest Different Eyewear Trends In Fashion',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(23,'2023-08-05 09:52:22.442215','5','5 Benefits Of Wearing Anti Reflective Glasses',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(24,'2023-08-05 09:52:26.282683','4','Rising Trends in Men\'s Eyewear',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(25,'2023-08-05 10:15:01.555757','6','Latest Different Eyewear Trends In Fashion',2,'[{\"changed\": {\"fields\": [\"Post\"]}}]',9,1),(26,'2023-08-05 10:18:20.799474','6','Latest Different Eyewear Trends In Fashion',2,'[{\"changed\": {\"fields\": [\"Post\"]}}]',9,1),(27,'2023-08-05 10:18:45.743560','6','Latest Different Eyewear Trends In Fashion',2,'[{\"changed\": {\"fields\": [\"Post\"]}}]',9,1),(28,'2023-08-05 10:20:08.286654','6','Latest Different Eyewear Trends In Fashion',2,'[]',9,1),(29,'2023-08-05 10:22:02.263632','6','Latest Different Eyewear Trends In Fashion',2,'[{\"changed\": {\"fields\": [\"Views\"]}}]',9,1),(30,'2023-08-05 10:37:23.025312','8','Alston',2,'[{\"changed\": {\"fields\": [\"Rating\"]}}]',8,1),(31,'2023-08-06 10:32:15.114399','2','contact@anirbanbhattacharya.in',3,'',4,1),(32,'2023-08-06 10:46:01.642866','4','contact.anirbanbhattacharya@gmail.com',3,'',4,1),(33,'2023-08-06 10:46:51.837492','5','contact.anirbanbhattacharya@gmail.com',3,'',4,1),(34,'2023-08-06 10:47:40.827909','6','contact.anirbanbhattacharya@gmail.com',3,'',4,1),(35,'2023-08-06 15:39:08.725929','7','contact.anirbanbhattacharya@gmail.com',3,'',4,1),(36,'2023-08-06 15:39:13.001721','3','contact@anirbanbhattacharya.in',3,'',4,1),(37,'2023-08-06 15:48:33.123959','8','contact@anirbanbhattacharya.in',3,'',4,1),(38,'2023-08-06 16:19:39.266171','2','Crane',2,'[{\"changed\": {\"fields\": [\"Rating\", \"Rates\"]}}]',8,1),(39,'2023-08-06 16:22:23.595641','2','Crane',2,'[{\"changed\": {\"fields\": [\"Rating\", \"Rates\"]}}]',8,1),(40,'2023-08-06 16:24:30.035079','2','Crane',2,'[{\"changed\": {\"fields\": [\"Rates\", \"ActRates\"]}}]',8,1),(41,'2023-08-06 16:25:58.554580','2','Crane',2,'[{\"changed\": {\"fields\": [\"Rating\", \"Rates\"]}}]',8,1),(42,'2023-08-06 16:28:14.945983','2','Crane',2,'[{\"changed\": {\"fields\": [\"Rating\", \"Rates\", \"ActRates\"]}}]',8,1),(43,'2023-08-06 16:29:20.358416','2','Crane',2,'[{\"changed\": {\"fields\": [\"Rating\", \"Rates\", \"ActRates\"]}}]',8,1),(44,'2023-08-18 14:57:37.872815','3','Bodie',2,'[{\"changed\": {\"fields\": [\"Rating\", \"Rates\", \"ActRates\"]}}]',8,1),(45,'2023-08-18 16:01:38.375108','5','Collins',2,'[{\"changed\": {\"fields\": [\"Rates\", \"ActRates\"]}}]',8,1),(46,'2023-08-18 16:01:44.770852','8','Alston',2,'[{\"changed\": {\"fields\": [\"Rates\", \"ActRates\"]}}]',8,1),(47,'2023-08-18 16:01:49.991792','6','Raider',2,'[{\"changed\": {\"fields\": [\"Rates\", \"ActRates\"]}}]',8,1),(48,'2023-08-18 16:01:53.416223','5','Collins',2,'[]',8,1),(49,'2023-08-18 16:01:57.408179','4','Hughes',2,'[{\"changed\": {\"fields\": [\"Rates\", \"ActRates\"]}}]',8,1),(50,'2023-08-18 16:02:01.998457','3','Bodie',2,'[]',8,1),(51,'2023-08-18 16:02:06.317476','3','Bodie',2,'[]',8,1),(52,'2023-08-18 16:02:08.843690','2','Crane',2,'[]',8,1),(53,'2023-08-18 16:02:12.646250','1','Aviator',2,'[{\"changed\": {\"fields\": [\"Rates\", \"ActRates\"]}}]',8,1),(54,'2023-08-18 16:03:07.926891','8','Alston',2,'[{\"changed\": {\"fields\": [\"Rating\"]}}]',8,1),(55,'2023-08-18 16:03:16.998251','7','Darrow',2,'[{\"changed\": {\"fields\": [\"Rates\", \"ActRates\"]}}]',8,1),(56,'2023-08-18 16:03:21.957413','6','Raider',2,'[{\"changed\": {\"fields\": [\"Rating\", \"Rates\", \"ActRates\"]}}]',8,1),(57,'2023-08-18 16:03:25.479318','5','Collins',2,'[]',8,1),(58,'2023-08-18 16:03:27.946335','4','Hughes',2,'[]',8,1),(59,'2023-08-18 16:03:30.390518','2','Crane',2,'[]',8,1),(60,'2023-08-18 16:04:00.930211','3','Bodie',2,'[{\"changed\": {\"fields\": [\"Rating\", \"Rates\", \"ActRates\"]}}]',8,1),(61,'2023-08-19 06:49:24.084223','31','Collins',3,'',10,1),(62,'2023-08-19 06:49:24.171002','30','Darrow',3,'',10,1),(63,'2023-08-19 06:49:24.195976','29','Darrow',3,'',10,1),(64,'2023-08-19 06:49:24.221072','28','Alston',3,'',10,1),(65,'2023-08-19 06:49:24.247111','27','Alston',3,'',10,1),(66,'2023-08-19 06:49:24.271205','26','Crane',3,'',10,1),(67,'2023-08-19 06:49:24.297245','25','Darrow',3,'',10,1),(68,'2023-08-19 06:49:24.321310','24','Darrow',3,'',10,1),(69,'2023-08-19 06:49:24.346375','23','Darrow',3,'',10,1),(70,'2023-08-19 06:49:24.371442','22','Darrow',3,'',10,1),(71,'2023-08-19 06:49:24.396516','21','Darrow',3,'',10,1),(72,'2023-08-19 06:49:24.421572','20','Darrow',3,'',10,1),(73,'2023-08-19 06:49:24.446640','19','Darrow',3,'',10,1),(74,'2023-08-19 06:49:24.471705','18','Darrow',3,'',10,1),(75,'2023-08-19 06:49:24.496773','17','Darrow',3,'',10,1),(76,'2023-08-19 06:49:24.520920','16','Darrow',3,'',10,1),(77,'2023-08-19 06:49:24.546906','15','Darrow',3,'',10,1),(78,'2023-08-19 06:49:24.727485','14','Darrow',3,'',10,1),(79,'2023-08-19 06:49:24.771577','13','Darrow',3,'',10,1),(80,'2023-08-19 06:49:24.889882','12','Darrow',3,'',10,1),(81,'2023-08-19 06:49:24.923972','11','Hughes',3,'',10,1),(82,'2023-08-19 06:49:25.007194','10','Crane',3,'',10,1),(83,'2023-08-19 06:49:25.057351','9','Bodie',3,'',10,1),(84,'2023-08-19 06:49:25.080427','8','Bodie',3,'',10,1),(85,'2023-08-19 06:49:25.113478','7','Bodie',3,'',10,1),(86,'2023-08-19 06:49:25.138549','6','Bodie',3,'',10,1),(87,'2023-08-19 06:49:25.178650','5','Bodie',3,'',10,1),(88,'2023-08-19 06:49:25.213745','4','Bodie',3,'',10,1),(89,'2023-08-19 06:49:25.238812','3','Bodie',3,'',10,1),(90,'2023-08-19 06:49:25.278914','2','Bodie',3,'',10,1),(91,'2023-08-19 06:49:25.295959','1','Raider',3,'',10,1),(92,'2023-08-19 06:58:21.858168','10','contact@anirbanbhattacharya.in',3,'',4,1),(93,'2023-08-19 15:38:39.889966','14','contact.anirbanbhattacharya@gmail.com',3,'',4,1),(94,'2023-08-19 15:38:46.111910','12','contact@anirbanbhattacharya.com',3,'',4,1),(95,'2023-08-20 03:59:39.452764','6','Bodie',3,'',11,1),(96,'2023-08-20 03:59:39.482841','5','Collins',3,'',11,1),(97,'2023-08-20 03:59:39.503895','4','Darrow',3,'',11,1),(98,'2023-08-20 03:59:39.528960','3','Bodie',3,'',11,1),(99,'2023-08-20 03:59:39.553021','2','Collins',3,'',11,1),(100,'2023-08-20 03:59:39.579089','1','Darrow',3,'',11,1),(101,'2023-08-20 04:00:43.135588','12','Bodie',3,'',11,1),(102,'2023-08-20 04:00:43.166047','11','Collins',3,'',11,1),(103,'2023-08-20 04:00:43.197121','10','Darrow',3,'',11,1),(104,'2023-08-20 04:00:43.220120','9','Bodie',3,'',11,1),(105,'2023-08-20 04:00:43.247165','8','Collins',3,'',11,1),(106,'2023-08-20 04:00:43.270226','7','Darrow',3,'',11,1),(107,'2023-08-20 04:02:02.034560','18','Bodie',3,'',11,1),(108,'2023-08-20 04:02:02.058712','17','Collins',3,'',11,1),(109,'2023-08-20 04:02:02.113763','16','Darrow',3,'',11,1),(110,'2023-08-20 04:02:02.133869','15','Bodie',3,'',11,1),(111,'2023-08-20 04:02:02.159886','14','Collins',3,'',11,1),(112,'2023-08-20 04:02:02.184956','13','Darrow',3,'',11,1),(113,'2023-08-20 04:02:35.988765','24','Bodie',3,'',11,1),(114,'2023-08-20 04:02:36.013935','23','Collins',3,'',11,1),(115,'2023-08-20 04:02:36.037986','22','Darrow',3,'',11,1),(116,'2023-08-20 04:02:36.064054','21','Bodie',3,'',11,1),(117,'2023-08-20 04:02:36.088115','20','Collins',3,'',11,1),(118,'2023-08-20 04:02:36.114183','19','Darrow',3,'',11,1),(119,'2023-08-20 04:10:41.368452','50','Darrow',3,'',11,1),(120,'2023-08-20 04:10:41.396432','49','Darrow',3,'',11,1),(121,'2023-08-20 04:10:41.446565','48','Darrow',3,'',11,1),(122,'2023-08-20 04:10:41.471629','47','Darrow',3,'',11,1),(123,'2023-08-20 04:10:41.496693','46','Darrow',3,'',11,1),(124,'2023-08-20 04:10:41.520755','45','Darrow',3,'',11,1),(125,'2023-08-20 04:10:41.713257','44','Darrow',3,'',11,1),(126,'2023-08-20 04:10:41.746340','43','Darrow',3,'',11,1),(127,'2023-08-20 04:10:41.854621','42','Bodie',3,'',11,1),(128,'2023-08-20 04:10:41.887738','41','Collins',3,'',11,1),(129,'2023-08-20 04:10:41.912803','40','Darrow',3,'',11,1),(130,'2023-08-20 04:10:41.937838','39','Bodie',3,'',11,1),(131,'2023-08-20 04:10:41.962934','38','Collins',3,'',11,1),(132,'2023-08-20 04:10:41.987970','37','Darrow',3,'',11,1),(133,'2023-08-20 04:10:42.013064','36','Bodie',3,'',11,1),(134,'2023-08-20 04:10:42.038098','35','Collins',3,'',11,1),(135,'2023-08-20 04:10:42.092240','34','Darrow',3,'',11,1),(136,'2023-08-20 04:10:42.113293','33','Bodie',3,'',11,1),(137,'2023-08-20 04:10:42.138358','32','Collins',3,'',11,1),(138,'2023-08-20 04:10:42.162426','31','Darrow',3,'',11,1),(139,'2023-08-20 04:10:42.188499','30','Bodie',3,'',11,1),(140,'2023-08-20 04:10:42.212583','29','Collins',3,'',11,1),(141,'2023-08-20 04:10:42.238619','28','Darrow',3,'',11,1),(142,'2023-08-20 04:10:42.283735','27','Bodie',3,'',11,1),(143,'2023-08-20 04:10:42.304789','26','Collins',3,'',11,1),(144,'2023-08-20 04:10:42.328879','25','Darrow',3,'',11,1),(145,'2023-08-20 04:22:03.584268','72','Bodie',3,'',11,1),(146,'2023-08-20 04:22:03.653093','71','Collins',3,'',11,1),(147,'2023-08-20 04:22:03.678157','70','Darrow',3,'',11,1),(148,'2023-08-20 04:22:03.736309','69','Bodie',3,'',11,1),(149,'2023-08-20 04:22:03.761374','68','Collins',3,'',11,1),(150,'2023-08-20 04:22:03.817520','67','Darrow',3,'',11,1),(151,'2023-08-20 04:22:03.873673','66','Bodie',3,'',11,1),(152,'2023-08-20 04:22:03.990971','65','Collins',3,'',11,1),(153,'2023-08-20 04:22:04.279721','64','Darrow',3,'',11,1),(154,'2023-08-20 04:22:04.328883','63','Bodie',3,'',11,1),(155,'2023-08-20 04:22:04.369956','62','Collins',3,'',11,1),(156,'2023-08-20 04:22:04.419081','61','Darrow',3,'',11,1),(157,'2023-08-20 04:22:04.519340','60','Darrow',3,'',11,1),(158,'2023-08-20 04:22:04.542400','59','Darrow',3,'',11,1),(159,'2023-08-20 04:22:04.561452','58','Bodie',3,'',11,1),(160,'2023-08-20 04:22:04.584579','57','Collins',3,'',11,1),(161,'2023-08-20 04:22:04.603562','56','Darrow',3,'',11,1),(162,'2023-08-20 04:22:04.627656','55','Bodie',3,'',11,1),(163,'2023-08-20 04:22:04.653707','54','Collins',3,'',11,1),(164,'2023-08-20 04:22:04.678758','53','Darrow',3,'',11,1),(165,'2023-08-20 04:22:04.703829','52','Darrow',3,'',11,1),(166,'2023-08-20 04:22:04.727889','51','Darrow',3,'',11,1),(167,'2023-08-20 04:26:10.175322','75','Bodie',3,'',11,1),(168,'2023-08-20 04:26:10.201460','74','Collins',3,'',11,1),(169,'2023-08-20 04:26:10.225520','73','Darrow',3,'',11,1),(170,'2023-08-20 04:28:01.995211','78','Bodie',3,'',11,1),(171,'2023-08-20 04:28:02.013251','77','Collins',3,'',11,1),(172,'2023-08-20 04:28:02.037315','76','Darrow',3,'',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'OptiKartPortal','blog'),(10,'OptiKartPortal','cartitem'),(7,'OptiKartPortal','newsmail'),(11,'OptiKartPortal','orderstatus'),(8,'OptiKartPortal','product'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'OptiKartPortal','0001_initial','2023-08-04 15:47:58.900163'),(2,'OptiKartPortal','0002_rename_newsletter_newsmail','2023-08-04 15:47:59.056504'),(3,'OptiKartPortal','0003_products','2023-08-04 15:47:59.478401'),(4,'contenttypes','0001_initial','2023-08-04 15:48:00.509744'),(5,'auth','0001_initial','2023-08-04 15:48:02.806913'),(6,'admin','0001_initial','2023-08-04 15:48:03.244370'),(7,'admin','0002_logentry_remove_auto_add','2023-08-04 15:48:03.259997'),(8,'admin','0003_logentry_add_action_flag_choices','2023-08-04 15:48:03.275652'),(9,'contenttypes','0002_remove_content_type_name','2023-08-04 15:48:03.478769'),(10,'auth','0002_alter_permission_name_max_length','2023-08-04 15:48:03.619454'),(11,'auth','0003_alter_user_email_max_length','2023-08-04 15:48:03.681987'),(12,'auth','0004_alter_user_username_opts','2023-08-04 15:48:03.697626'),(13,'auth','0005_alter_user_last_login_null','2023-08-04 15:48:03.853873'),(14,'auth','0006_require_contenttypes_0002','2023-08-04 15:48:03.869521'),(15,'auth','0007_alter_validators_add_error_messages','2023-08-04 15:48:03.885154'),(16,'auth','0008_alter_user_username_max_length','2023-08-04 15:48:04.057010'),(17,'auth','0009_alter_user_last_name_max_length','2023-08-04 15:48:04.228910'),(18,'auth','0010_alter_group_name_max_length','2023-08-04 15:48:04.260197'),(19,'auth','0011_update_proxy_permissions','2023-08-04 15:48:04.275824'),(20,'auth','0012_alter_user_first_name_max_length','2023-08-04 15:48:04.400742'),(21,'sessions','0001_initial','2023-08-04 15:48:04.541386'),(22,'OptiKartPortal','0004_rename_products_product','2023-08-05 05:13:21.513275'),(23,'OptiKartPortal','0005_blog','2023-08-05 06:08:24.809868'),(24,'OptiKartPortal','0006_blog_image','2023-08-05 06:12:39.880110'),(25,'OptiKartPortal','0007_cartitem','2023-08-05 11:44:02.439360'),(26,'OptiKartPortal','0008_product_rates','2023-08-06 16:18:54.462366'),(27,'OptiKartPortal','0009_product_actrates','2023-08-06 16:23:47.937831'),(28,'OptiKartPortal','0010_alter_product_actrates_alter_product_rates_and_more','2023-08-18 16:00:41.690080'),(29,'OptiKartPortal','0011_cartitem_user','2023-08-19 06:05:20.894680'),(30,'OptiKartPortal','0012_cartitem_orderstatus','2023-08-20 03:40:17.155556'),(31,'OptiKartPortal','0012_orderstatus','2023-08-20 03:45:07.681202');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('6qm1m9ce1h6mjytskodgcsty1hn8d55r','.eJxVjDsOwjAQBe_iGlmY9ZeSPmewdv3BAWRLcVIh7k4spYDyzYzem3nc1uK3nhY_R3ZlAtjpFxKGZ6rDxAfWe-Oh1XWZiY-EH7bzqcX0uh3t30HBXsavtooyWp2V0i4TZWVJQsigXAxun1ILJSTQ2didJZIZE-AFgQyhYZ8vEHA4dQ:1qXb5b:UoOD3xf3c55UgvWs8OFw9ME8ST7-a66jwmR-GMlfcqI','2023-09-03 05:35:03.348441'),('7pc102o40r7v1v81n56jcvlxslgit5xb','.eJxVjDsOwjAQBe_iGlmY9ZeSPmewdv3BAWRLcVIh7k4spYDyzYzem3nc1uK3nhY_R3ZlAtjpFxKGZ6rDxAfWe-Oh1XWZiY-EH7bzqcX0uh3t30HBXsavtooyWp2V0i4TZWVJQsigXAxun1ILJSTQ2didJZIZE-AFgQyhYZ8vEHA4dQ:1qXbL0:uXr4OCpJ8Hed1lmoOmKWdI5qYqGo-DwrAYwdg3Pri_c','2023-09-03 05:50:58.132735'),('vvzz1ijqyw5fwf0ju9jnqg41zegka6mn','.eJxVjDsOwjAQBe_iGln2Jv6Ekj5nsHbXNg4gR4qTCnF3EikFtG9m3lsE3NYStpaWMEVxFVpcfjdCfqZ6gPjAep8lz3VdJpKHIk_a5DjH9Lqd7t9BwVb2ulPIPnMaMjgPznJvHTgdU6KYPWi_A03Gs0NjDNJAoBXYzmQCr2IvPl_nczeq:1qX1uI:Hh3XPmzZmtzn2YvrQYh-Y4gqeafOGc_gMRCZMHKMF88','2023-09-01 16:01:02.876804'),('x0pwwwkgd30lpb4pmw4nzjj7gfu9opj5','.eJxVjDsOwjAQBe_iGln2Jv6Ekj5nsHbXNg4gR4qTCnF3EikFtG9m3lsE3NYStpaWMEVxFVpcfjdCfqZ6gPjAep8lz3VdJpKHIk_a5DjH9Lqd7t9BwVb2ulPIPnMaMjgPznJvHTgdU6KYPWi_A03Gs0NjDNJAoBXYzmQCr2IvPl_nczeq:1qRx4k:faR5jr00873P2UYFRnuyQ_kJeQhTklfnAlC7yHgHPtg','2023-08-18 15:50:50.465822');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optikartportal_blog`
--

DROP TABLE IF EXISTS `optikartportal_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `optikartportal_blog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `Desc` varchar(200) NOT NULL,
  `Post` longtext NOT NULL,
  `Date` date NOT NULL,
  `Views` int NOT NULL,
  `Image` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optikartportal_blog`
--

LOCK TABLES `optikartportal_blog` WRITE;
/*!40000 ALTER TABLE `optikartportal_blog` DISABLE KEYS */;
INSERT INTO `optikartportal_blog` VALUES (2,'The Uses & Benefits of Wearing Computer Glasses','The Covid -19 pandemic has changed the world in many ways. For one, it has increased the amount of time we spend indoors looking at our digital devices.','The Covid -19 pandemic has changed the world in many ways. For one, it has increased the amount of time we spend indoors looking at our digital devices. The prolonged use of digital screens can lead to potential eye hazards such as Computer Vision Syndrome.\r\n\r\nYes we can’t survive without our gadgets like mobile phone, laptop and so on. So don\'t worry, we have computer glasses that are specially designed to limit the exposure to blue light from various digital devices such as smartphones, tablets, laptops, TVs, some light bulbs and even the sunlight.\r\n\r\nThese computer glasses offer protection to your eyes and can prevent eye strain caused by prolonged staring / looking at these digital devices. These glasses also protect your eyes as they function to reduce glare with a special type of coating on the lenses. So look good, feel good, with Specsmakers special range of eyeglasses, and take good care of your eyes without burning a hole in your pocket.\r\n\r\nWhat is digital eye strain and how can you prevent it?\r\n\r\nDigital eye strain is a problem occurring globally and affects all working people. It can cause dryness, irritation, blurriness, headaches, insomnia and eye fatigue. It can also affect your posture and cause neck and shoulder problems due to these issues.\r\nThe most common cause of digital eye strain is prolonged hours of sitting and working in front of a computer. People who suffer from this eye problem also face difficulty while working and can lead to a drop in productivity.\r\nYet another symptom could be lack of sleep. Blue Light is built into our circadian rhythm to indicate daylight. So this prolonged use of digital devices and exposure to blue light changes the circadian rhythm and as a result our body does not get enough sleep.\r\nHow can we prevent this?\r\n\r\nWell for starters, use computer glasses or Blue Light blocking glasses.\r\nThese Computer glasses are built to offer protection to your eyes and prevent Computer Vision Syndrome. The frames are designed to keep the eyeglasses lightweight so that you can wear them for long hours without feeling tired.\r\nThey eliminate unwanted glare and reflections and reduce eye strain also can help enhance your focus so that you can remain more productive and your eyes feel less tired.\r\nIn addition, follow the 20-20-20 rule and take regular breaks from the screen. You should optimally aim to take a break every 20 minutes, to look at an object 20 feet away and for 20 seconds. This can help benefit your eyes from the strain caused by CVS.','2023-08-05',38,'Computer Glasses.webp'),(4,'Rising Trends in Men\'s Eyewear','Seeing is significant, no matter how you pick out to correct your vision. Perhaps your present-day glasses are feeling less than inspiring.','Seeing is significant, no matter how you pick out to correct your vision. Perhaps your present-day glasses are feeling less than inspiring. Have no worries. While you are in the market for new eyeglasses, it is an extraordinary time to see the current patterns and trend developments for the coming year. \r\n\r\nIt is in no way been simpler to locate men\'s eyeglasses patterns that suit your character and way of life. The professional enhancements have delivered new stages of remedy and sturdiness. The sky is the limit when it comes to eyeglass styles. \r\n\r\nFor everyone who wears specs, they think of it as the finishing touch, as the most vital accessory. After all, your glasses are the first component human beings see when they seem to be at your eyes. \r\n\r\nWayfarer\r\nThe wayfarer form was brought by Ray-Ban in 1956 and has been a timeless classic. These frames go to exhibit that while icons are regularly imitated, nothing beats the original form & style.\r\n\r\nRound\r\nThe sophisticated nuance of rounded frames sits in the core of the spectrum between perfectly circular and square shapes. Flawlessly round frames featuring the brand\'s signature arrow and Meflecto pressure-reducing technology are a masterpiece.\r\n\r\nSquare\r\nWhen it comes to squares, they are imperceptibly oversized, vintage-inspired frames that give off an intellectual and eccentric vibe that will allow you to channel your inner Harry Styles or Jeff Goldblum.\r\n\r\nD-Frame Sunglasses\r\nWhat\'s new in town, the D-shape frame is making a comeback for men. The style is becoming more and more popular thanks to its futuristic feel and masculine character. It is identified by its angular, oversized look and its most flattering on gentlemen with round faces.\r\n\r\nFlat-Brow Cool Sunglasses\r\nThe top metal bar is a substitute for the large, straight acetate brow line. It\'s this particular change that transformed the look into a more elegant and modern form. The silken and refined design perfectly mirrors the prevailing contemporary aesthetic.\r\n\r\nRetro Sunglasses\r\nRetro sunglasses for men talk the talk while you walk the walk, isn\'t it so very cool? It got inspired by the steam-powered machines of the industrial revolution. Who doesn\'t want a Steampunk frame with metallic strokes that are a futuristic approach to a classic round frame?\r\n\r\nClassic Cool Clubmasters\r\nThey are a timeless representation of coolness in sunglasses trends. The result of a fusion between casual and fashion statements is that they have become essential to any men\'s wardrobe.\r\n\r\nSo, gear up and put your best foot forward with new eyeglasses this year that put a smile on your face. These are a few of the Hottest and Coolest Eyewear that will rule the world of fashion in 2021.','2023-08-03',16,'Trend.webp'),(5,'5 Benefits Of Wearing Anti Reflective Glasses','It may be common knowledge to you already that an Anti-Reflective coating on glasses makes it easier to remove water, oil, and dirt from sticking to the lenses.','It may be common knowledge to you already that an Anti-Reflective coating on glasses makes it easier to remove water, oil, and dirt from sticking to the lenses. But what you might not know is that they help you see better, look good, and keep your eyes happy till the end of the day. \r\n\r\nSignificantly more goes into choosing the ideal prescription glasses than essentially turning in your prescription and picking an frame. The sort of lenses you decide for your prescription eyewear is significant, and that\'s only the tip of the iceberg and more individuals are discovering benefits of anti-reflective coating to their eyewear.\r\n\r\nHere are some important benefits to think about if you are considering upgrading your lenses with an Anti-Reflective coating. \r\n\r\nAnti-reflective coating (otherwise called Anti-glare or AR coatings) are intended to limit the amount of light reflected in your lenses. The coatings are applied either to the front, back, or the two sides of your lenses so the most amount of positive light arrives at your eyes, giving you the most clear conceivable view. \r\n\r\nImprove Your Visual Clarity:\r\nAnti-Reflective coating helps you get a clear vision by reducing in your prescription glasses, increasing the visibility of your eyes. As a result, you won’t be hampered by irritating reflections. It is a coating applied on glasses to provide clear vision so that you can go about your daily tasks at home, on the job, driving and in the classroom.\r\n\r\nImprove Your Appearance:\r\nAnti-Reflective coatings reduce the glare by cutting off the harsh reflections from your lenses. Whether you are posing for a picture or having a video chat with a friend, you can feel at ease knowing that your eyes grab all their attention and not that annoying glare. The cosmetic perks with specs makes you look smarter and your eyes much easier to see. you’ll also be more photogenic!\r\n\r\nIncrease the Lenses Lifespan:\r\nAnti-Reflective coating prevents your glasses from scratches and smears and in turn extends the lifespan of your lenses. You can save money by replacing your lenses less frequently.\r\n\r\nAnti-reflective coatings can give you sharper and clear vision that’s more natural and brilliant than what’s offered with uncoated lenses.\r\n\r\nProtect Your Eyes From UV Damage: \r\nAnti-Reflective coating can also protect your eyes from damage from the sun’s ultraviolet light. They can effectively eliminate reflections into your eyes from the back surface of the lenses and defend your eyes from UV rays.\r\n\r\nAR coating help in reducing eye fatigue at work. They are especially suited for people who spend long hours working on computers, which can cause considerable eye strain. But when you use an anti-reflective coating, your eyes are protected against glare, meaning eye strain is less.\r\n\r\nAnyone who wears glasses daily can opt for Anti-Reflective glasses. The Anti-Reflective coating technology is trustworthy and can be useful in many situations.','2022-08-02',12,'Car.webp'),(6,'Latest Different Eyewear Trends In Fashion','Many of us are working from home due to the covid-19 pandemic and the increasing screen time can cause side effects such as eye strain, fatigue, headaches, dryness and excessive blinking.','Many of us are working from home due to the covid-19 pandemic and the increasing screen time can cause side effects such as eye strain, fatigue, headaches, dryness and excessive blinking. So up your style game with the hottest eyeglasses in trend. From vintage to modern, circular to hexagonal, we have rounded up the latest eyewear trends in fashion. Check them out here: \r\n<br>\r\n<h4>Rich Acetate frames:</h4>\r\n<br>\r\nWith our collection of Happster glasses frames you’re sure to find a pair that adds a touch of vintage flair. Show off your creative and fashionista side with rich acetate frames crafted with finest material. \r\n<br>\r\n<h4>Cat-eye, Wayfarer, & Pilot frames:</h4>\r\n<br>\r\nMade to turn heads, they never go out of style. Appeals to the younger generations who have an appetite for a wide range of fashion and all things new. \r\n<br>\r\n<h4>The Clip-ons:</h4>\r\n<br>\r\nThese 2-in1 glasses are a popular choice that suits for both indoor and outdoor activities. Just pull your magnetic clip on to turn eyeglasses into shades. Show off your style – Whether you are a outgoing college student or hanging out over the weekend under the hot sun, it’s time to develop your own identity. \r\n<br>\r\n<h4>Metallics:</h4>\r\n<br>\r\nChic, lightweight and urbane - these polished metal frames provide all the glam without the weight. Durable and long-lasting, these frames aren\'t going out of style anytime soon. Modern metal frames can be a creative look sometimes. \r\n<br>\r\n<h4>Blue Light Glasses:</h4>\r\n<br>\r\nSince last year most of us are working from home and with increase in screen time causes digital eye strain and can also lead to vision-related issues. Specsmakers has addressed this problem with their BluPro and BlueZero range of computer glasses with blue light filter coating. Blue light glasses are trending in 2021. So no matter what frame you choose, make sure to opt for blue light glasses to keep your eyes protected. \r\n<br>\r\n<h4>Hexagonal frames:</h4><br>\r\nVibe with a pair of these oversized frames which are in trend this season. They are a standout look no matter the occasion. \r\n<br>\r\n<h4>Round frames:</h4><br>\r\nRound eyeglasses are timeless for a reason, they suit everyone. No matter the time of the year, the classic is always in style. \r\n<br>\r\n<h4>Lightanium:</h4><br>\r\nThese frames are as light as they get. Lightanium frames are mostly rimless and adds a certain suaveness to the wearer. Made from high quality metal, Lightanium frames are a blend of superior quality and sophisticated look. \r\n<br>\r\n<h4>Flex:</h4><br>\r\nJust the as the name suggests, Flex frames are flexible, bendable but almost unbreakable. Made from TR or Toughned Resin these Flex frames are durable yet stylish. \r\n\r\nJust as you have different clothes for various purposes and different occasions, you can also have different eyewear style.','2023-07-29',57,'Fashion.webp');
/*!40000 ALTER TABLE `optikartportal_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optikartportal_cartitem`
--

DROP TABLE IF EXISTS `optikartportal_cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `optikartportal_cartitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Product_id` varchar(40) NOT NULL,
  `User_id` int NOT NULL,
  `OrderStatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `OptiKartPortal_carti_Product_id_d51987ca_fk_OptiKartP` (`Product_id`),
  KEY `OptiKartPortal_cartitem_User_id_2ccdfd99_fk_auth_user_id` (`User_id`),
  CONSTRAINT `OptiKartPortal_carti_Product_id_d51987ca_fk_OptiKartP` FOREIGN KEY (`Product_id`) REFERENCES `optikartportal_product` (`ProdID`),
  CONSTRAINT `OptiKartPortal_cartitem_User_id_2ccdfd99_fk_auth_user_id` FOREIGN KEY (`User_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optikartportal_cartitem`
--

LOCK TABLES `optikartportal_cartitem` WRITE;
/*!40000 ALTER TABLE `optikartportal_cartitem` DISABLE KEYS */;
INSERT INTO `optikartportal_cartitem` VALUES (40,'7',13,0),(41,'5',13,0),(49,'3',13,0);
/*!40000 ALTER TABLE `optikartportal_cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optikartportal_newsmail`
--

DROP TABLE IF EXISTS `optikartportal_newsmail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `optikartportal_newsmail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Email` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optikartportal_newsmail`
--

LOCK TABLES `optikartportal_newsmail` WRITE;
/*!40000 ALTER TABLE `optikartportal_newsmail` DISABLE KEYS */;
INSERT INTO `optikartportal_newsmail` VALUES (1,'contact@anirbanbhattacharya.in');
/*!40000 ALTER TABLE `optikartportal_newsmail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optikartportal_orderstatus`
--

DROP TABLE IF EXISTS `optikartportal_orderstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `optikartportal_orderstatus` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Product_id` varchar(40) NOT NULL,
  `User_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `OptiKartPortal_order_Product_id_cbbabf23_fk_OptiKartP` (`Product_id`),
  KEY `OptiKartPortal_orderstatus_User_id_df634b52_fk_auth_user_id` (`User_id`),
  CONSTRAINT `OptiKartPortal_order_Product_id_cbbabf23_fk_OptiKartP` FOREIGN KEY (`Product_id`) REFERENCES `optikartportal_product` (`ProdID`),
  CONSTRAINT `OptiKartPortal_orderstatus_User_id_df634b52_fk_auth_user_id` FOREIGN KEY (`User_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optikartportal_orderstatus`
--

LOCK TABLES `optikartportal_orderstatus` WRITE;
/*!40000 ALTER TABLE `optikartportal_orderstatus` DISABLE KEYS */;
INSERT INTO `optikartportal_orderstatus` VALUES (79,'7',13),(80,'5',13),(81,'3',13);
/*!40000 ALTER TABLE `optikartportal_orderstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optikartportal_product`
--

DROP TABLE IF EXISTS `optikartportal_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `optikartportal_product` (
  `ProdID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Desc` longtext NOT NULL,
  `Seller` varchar(50) NOT NULL,
  `Rating` int NOT NULL,
  `Price` int NOT NULL,
  `Image` varchar(200) NOT NULL,
  `Rates` varchar(20) NOT NULL,
  `ActRates` varchar(20) NOT NULL,
  PRIMARY KEY (`ProdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optikartportal_product`
--

LOCK TABLES `optikartportal_product` WRITE;
/*!40000 ALTER TABLE `optikartportal_product` DISABLE KEYS */;
INSERT INTO `optikartportal_product` VALUES ('1','Aviator','Aviator glasses, also known as pilot or aviator sunglasses, epitomize timeless elegance and iconic style. Originally designed in the 1930s by Bausch & Lomb, these classic eyewear pieces were intended to serve as protective gear for aviators, shielding their eyes from the sun\'s glare during high-altitude flights.\r\n\r\nCharacterized by their distinct teardrop shape and large lenses, aviator glasses have since transcended their utilitarian origins to become a globally celebrated fashion accessory. Their versatile design complements a wide range of face shapes, making them a popular choice for both men and women.\r\n\r\nAviator glasses often feature metal frames, evoking a sense of sophistication and durability. While the traditional color scheme consists of silver frames with dark green lenses, contemporary variations offer an array of frame colors, lens tints, and materials, catering to diverse personal preferences and styles.\r\n\r\nThese iconic shades have cemented their place in pop culture, worn by countless celebrities, fashion icons, and movie characters, further solidifying their status as a symbol of timeless coolness and confident allure. Whether strolling on sunlit city streets or lounging on sandy beaches, aviator glasses remain an evergreen choice, seamlessly blending classic charm with modern-day chic.','A1 Eyewears, Mumbai',0,699,'p1.png','0','0'),('2','Crane','Crane Glasses: Embrace Clarity and Style\r\n\r\nCrane Glasses represents the perfect fusion of innovative technology and timeless design, providing an unparalleled visual experience to its wearers. Crafted with precision and expertise, these glasses are meticulously engineered to meet the demands of modern lifestyles, be it work or leisure.\r\n\r\nAt the heart of Crane Glasses lies cutting-edge lens technology. These lenses are crafted with high-definition precision, minimizing distortion and optimizing clarity, allowing wearers to see the world with unmatched precision. Whether you\'re immersed in the digital realm or appreciating the beauty of the natural world, Crane Glasses provide exceptional visual comfort, reducing eye strain and fatigue.\r\n\r\nBut it\'s not just about function; Crane Glasses also exude sophistication and style. With a wide range of fashionable frames, from classic to contemporary, they cater to diverse tastes and complement various face shapes. Each pair of Crane Glasses is a fashion statement in itself, enhancing one\'s appearance and confidence.\r\n\r\nMoreover, Crane Glasses are engineered with durable and lightweight materials, ensuring lasting comfort and resilience. Designed for daily wear and long-term use, these glasses are an investment in both visual health and aesthetic appeal.\r\n\r\nWhether you\'re a professional seeking enhanced productivity or a fashion-conscious individual, Crane Glasses are the epitome of clarity and style, elevating your everyday experience and making a lasting impression. Embrace Crane Glasses, and see the world in a new light.','Nakshatra Optical, Kolkata',0,2999,'p2.png','0','0'),('3','Bodie','Bodie Glasses: A Revolution in Eyewear Technology\r\n\r\nBodie Glasses represents a groundbreaking leap forward in eyewear technology, offering unparalleled comfort, style, and visual clarity. Crafted with precision and innovation, these glasses have quickly become the go-to choice for discerning individuals seeking the ultimate eyewear experience.\r\n\r\nAt the core of Bodie Glasses lies cutting-edge lens technology. Employing advanced materials and coatings, these lenses provide exceptional optical performance, reducing glare and eye strain while enhancing color perception. Whether you\'re outdoors under the sun or indoors under artificial lighting, Bodie Glasses offer remarkable visual acuity.\r\n\r\nThe frames of Bodie Glasses are meticulously designed to combine fashion with functionality. Sleek and lightweight, they ensure a comfortable fit for extended wear. Each frame is carefully crafted using premium materials, guaranteeing durability and timeless aesthetics. With a wide range of styles and colors, Bodie Glasses cater to diverse fashion tastes, making a bold statement in any setting.\r\n\r\nMoreover, Bodie Glasses are designed to cater to individual needs, offering customizable options for prescriptions and lens coatings. This personalization ensures that every wearer experiences the perfect blend of style and visual correction.\r\n\r\nJoin the eyewear revolution with Bodie Glasses and elevate your vision to new heights. Embrace the fusion of cutting-edge technology and contemporary design, and experience eyewear like never before.','Amazon',56,1099,'p3.png','14','4'),('4','Hughes','Hughes Glasses: Enhancing Vision, Elevating Style\r\n\r\nStep into a world of optical brilliance with Hughes Glasses, where cutting-edge technology meets timeless design to create eyewear that exceeds expectations. For decades, Hughes Glasses has been a pioneer in the eyewear industry, delivering unmatched quality, precision, and innovation.\r\n\r\nCrafted with utmost care, each pair of Hughes Glasses is a perfect fusion of function and fashion. Whether you require prescription lenses or simply seek to elevate your style, Hughes Glasses offers a vast array of options to suit every need and taste. From sleek and sophisticated frames for the fashion-forward individuals to durable and sporty designs for the active adventurers, the collection caters to all.\r\n\r\nWhat sets Hughes Glasses apart is their unwavering commitment to providing the clearest, sharpest vision possible. Utilizing state-of-the-art lens technology, their glasses reduce glare, enhance clarity, and minimize eye strain, ensuring optimal comfort throughout the day.\r\n\r\nAt Hughes Glasses, style and substance go hand in hand. Choose from an extensive palette of colors, materials, and shapes to find the perfect match for your personality and lifestyle. Experience the confidence that comes with wearing eyewear that not only complements your look but also elevates your vision to new heights.\r\n\r\nIn conclusion, Hughes Glasses offers a seamless blend of form and function, making them the go-to choice for individuals seeking the best in optical precision and fashion-forward eyewear. Discover the world of Hughes Glasses today and see the world with unrivaled clarity and style.','Drishti Eyewears, Delhi',0,5999,'p4.png','0','0'),('5','Collins','Collins Glasses, a quintessential piece of barware, are a must-have for any home or professional bartender. Named after the popular cocktail they were originally designed for, the Tom Collins, these versatile glasses have found their way into the hearts of mixology enthusiasts worldwide. With a capacity of around 10 to 14 ounces, Collins Glasses strike the perfect balance between form and function.\r\n\r\nCharacterized by their sleek, tall, and cylindrical shape, Collins Glasses are specifically crafted to showcase the vibrant colors and layered presentations of refreshing, long cocktails. Their elongated design allows for generous servings of the concoctions, typically composed of spirits, mixers, and ice, with ample room for garnishes like citrus slices, cherries, or mint sprigs.\r\n\r\nMade from high-quality, durable glass, these glasses can withstand the rigors of a busy bar environment or the elegance of a home entertaining setting. Their versatility extends beyond serving cocktails; Collins Glasses can also be used to showcase other chilled beverages like iced tea, lemonades, or even fruit-infused water.\r\n\r\nWhether you\'re a budding mixologist experimenting with creative recipes or simply looking to add a touch of sophistication to your next gathering, Collins Glasses offer a delightful vessel for indulging in your favorite long drinks, while elevating the overall drinking experience with style and elegance.','A1 Eyewears, Mumbai',0,3599,'p5.png','0','0'),('6','Raider','Raider Glasses: Unparalleled Vision and Style\r\n\r\nIntroducing Raider Glasses, the ultimate fusion of cutting-edge technology and chic design, engineered to enhance your visual experience and elevate your style to new heights. These glasses are not just an accessory; they are an indispensable tool for those seeking a clear and comfortable vision in any situation.\r\n\r\nEquipped with state-of-the-art optics, Raider Glasses provide unparalleled clarity and sharpness, ensuring a distortion-free view. Whether you\'re driving, working on a computer, or simply enjoying the outdoors, these glasses offer advanced glare reduction and blue light filtering, safeguarding your eyes from strain and fatigue.\r\n\r\nRaider Glasses boast a sleek and contemporary design that complements any fashion ensemble, making them a perfect blend of function and fashion. Crafted with high-quality materials, the frames are not only durable but also lightweight, guaranteeing a comfortable fit throughout the day.\r\n\r\nWith various lens options available, including prescription lenses for those with specific visual needs, Raider Glasses cater to a wide range of individuals looking to protect their eyes and upgrade their style simultaneously.\r\n\r\nDon\'t compromise on your vision or settle for ordinary eyewear. Join the league of trendsetters and experience the world through the lens of Raider Glasses — where vision meets fashion, and innovation meets elegance. Enhance your daily life and see the world with unparalleled clarity and confidence with Raider Glasses.','LensKart',0,999,'p6.png','0','0'),('7','Darrow','Darrow glasses are the epitome of sophisticated eyewear, merging impeccable craftsmanship with timeless design. These exquisite spectacles are crafted with meticulous attention to detail, appealing to those with discerning tastes seeking both fashion and function. \r\n\r\nAt the core of Darrow glasses lies a commitment to quality materials, ensuring durability and comfort. Premium acetate frames, lightweight titanium, or a blend of both materials are used to create frames that gracefully adorn the face while remaining resilient to everyday wear and tear.\r\n\r\nThe design philosophy behind Darrow glasses revolves around versatility and elegance. Whether you\'re seeking a classic, retro-inspired look or a modern, minimalist edge, their diverse range of styles caters to all preferences. From subtle and understated frames to bold and daring shapes, there\'s a perfect pair for every personality and occasion.\r\n\r\nFurthermore, Darrow\'s dedication to innovation extends to their lenses. Each pair boasts top-tier optical technology, offering crystal-clear vision and superior protection against harmful UV rays.\r\n\r\nDarrow glasses are not merely accessories; they are a statement of refined taste and an emblem of enduring style. Whether you\'re on a formal business meeting or an evening soirée, these glasses will elevate your look and leave a lasting impression. Experience the fusion of aesthetics and functionality with Darrow glasses, a timeless expression of individuality and grace.','Nakshatra Optical, Kolkata',0,1599,'p7.png','0','0'),('8','Alston','Alston glasses are the epitome of timeless elegance and unparalleled craftsmanship. With a rich heritage dating back to the early 20th century, Alston has established itself as a premier eyewear brand, renowned for its iconic designs and top-quality materials.\r\n\r\nCrafted with utmost precision and attention to detail, Alston glasses combine classic aesthetics with contemporary flair, making them a perfect accessory for any occasion. Whether you seek a refined look for business meetings or a chic style for leisure, Alston has a frame to suit every taste.\r\n\r\nThe brand prides itself on using only the finest materials, such as premium acetate, titanium, and stainless steel, ensuring durability and comfort without compromising on style. Each pair of Alston glasses is meticulously handcrafted by skilled artisans, resulting in an impeccable finish that exudes sophistication.\r\n\r\nAlston\'s commitment to innovation is evident in its cutting-edge lens technology, providing optimal visual clarity and UV protection. Furthermore, their extensive range of designs and colors ensures there is something for everyone, from subtle and understated to bold and striking.\r\n\r\nIn conclusion, Alston glasses exemplify a harmonious blend of tradition and modernity, offering eyewear that not only enhances vision but also elevates one\'s personal style. Indulge in the luxury and grace of Alston glasses, and experience the allure of timeless eyewear craftsmanship.','Drishti Eyewears, Delhi',0,1299,'p8.png','0','0');
/*!40000 ALTER TABLE `optikartportal_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-20 11:29:12

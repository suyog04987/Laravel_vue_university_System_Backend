-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: university
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.23.04.1

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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit_hrs` int NOT NULL,
  `semesters_id` bigint unsigned NOT NULL,
  `universities_id` bigint unsigned NOT NULL,
  `faculties_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_semesters_id_foreign` (`semesters_id`),
  KEY `courses_universities_id_foreign` (`universities_id`),
  KEY `courses_faculties_id_foreign` (`faculties_id`),
  CONSTRAINT `courses_faculties_id_foreign` FOREIGN KEY (`faculties_id`) REFERENCES `faculties` (`id`),
  CONSTRAINT `courses_semesters_id_foreign` FOREIGN KEY (`semesters_id`) REFERENCES `semesters` (`id`),
  CONSTRAINT `courses_universities_id_foreign` FOREIGN KEY (`universities_id`) REFERENCES `universities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Test Data 2',3,1,1,1,'2024-03-18 00:22:18','2024-04-02 03:39:42'),(2,'Assumenda quidem mag',56,3,1,2,'2024-03-18 00:23:10','2024-03-18 00:23:10'),(3,'Cum deserunt corrupt',41,3,1,2,'2024-03-18 00:23:15','2024-03-18 00:23:15'),(4,'Fuga Deserunt est p',74,1,2,4,'2024-03-18 00:23:18','2024-03-18 00:23:18'),(5,'Et sunt velit debiti',91,1,1,4,'2024-03-18 00:23:23','2024-03-18 00:23:23'),(6,'Aut incididunt et pe',3,6,1,1,'2024-03-20 22:56:38','2024-03-20 22:56:38'),(7,'Aliquid in laboriosa',4,6,1,1,'2024-03-20 22:57:22','2024-03-20 22:57:22'),(8,'Business Statistics',3,7,1,1,'2024-03-21 03:50:30','2024-03-21 03:50:30'),(9,'Nepalese Society and Politics',3,7,1,1,'2024-03-21 03:50:40','2024-03-21 03:50:40'),(10,'Basic Finance',3,7,1,1,'2024-03-21 03:50:46','2024-03-21 03:50:46'),(11,'Business Communication',3,7,1,1,'2024-03-21 03:51:02','2024-03-21 03:51:02'),(12,'Computer Based Financial Accounting',3,7,1,1,'2024-03-21 03:51:11','2024-03-21 03:51:11'),(13,'Business Research Methods',3,8,1,1,'2024-03-21 03:51:25','2024-03-21 03:51:25'),(14,'Fundamentals of Marketing',3,8,1,1,'2024-03-21 03:51:34','2024-03-21 03:51:34'),(15,'Human Resource Management',3,8,1,1,'2024-03-21 03:51:44','2024-03-21 03:51:44'),(16,'Financial Management',3,8,1,1,'2024-03-21 03:51:54','2024-03-21 03:51:54'),(17,'Accounting for Decision Making',3,8,1,1,'2024-03-21 03:52:01','2024-03-21 03:52:01'),(18,'Legal Environment of Business',3,9,1,1,'2024-03-21 03:52:39','2024-03-21 03:52:39'),(19,'Operations Management',3,9,1,1,'2024-03-21 03:52:47','2024-03-21 03:52:47'),(20,'Organizational Behavior',3,9,1,1,'2024-03-21 03:53:12','2024-03-21 03:53:12'),(21,'Corporate Taxation in Nepal Area Course I',3,9,1,1,'2024-03-21 03:54:03','2024-03-21 03:54:03'),(22,'Business Ethics, Social Responsibility',3,10,1,1,'2024-03-21 03:54:18','2024-03-21 03:54:18'),(23,'International Business',3,10,1,1,'2024-03-21 03:54:37','2024-03-21 03:54:37'),(24,'Business Environment in Nepal',3,10,1,1,'2024-03-21 03:54:53','2024-03-21 03:54:53'),(25,'Database Management',3,10,1,1,'2024-03-21 03:55:00','2024-03-21 03:55:00'),(26,'Focus Area Course II',3,10,1,1,'2024-03-21 03:55:08','2024-03-21 03:55:08'),(27,'Business Strategy',3,11,1,1,'2024-03-21 03:55:29','2024-03-21 03:55:29'),(28,'E-Commerce',3,11,1,1,'2024-03-21 03:55:59','2024-03-21 03:55:59'),(29,'Focus Area Course IV',3,11,1,1,'2024-03-21 03:56:06','2024-03-21 03:56:06'),(30,'Focus Area Course III',3,11,1,1,'2024-03-21 03:56:12','2024-03-21 03:56:12'),(31,'Elective Course I',3,11,1,1,'2024-03-21 03:56:18','2024-03-21 03:56:18'),(32,'BCA',3,1,2,1,'2024-04-02 01:18:53','2024-04-02 01:18:53'),(33,'CSIT',4,1,1,1,'2024-04-02 01:20:48','2024-04-02 01:20:48'),(34,'Arts',4,1,1,1,'2024-04-02 01:23:02','2024-04-02 01:23:02'),(35,'this is test',12,1,1,1,'2024-04-02 03:04:23','2024-04-02 03:04:23');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculties`
--

DROP TABLE IF EXISTS `faculties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculties` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `universities_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faculties_universities_id_foreign` (`universities_id`),
  CONSTRAINT `faculties_universities_id_foreign` FOREIGN KEY (`universities_id`) REFERENCES `universities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculties`
--

LOCK TABLES `faculties` WRITE;
/*!40000 ALTER TABLE `faculties` DISABLE KEYS */;
INSERT INTO `faculties` VALUES (1,'Bachelor of Business Management (BBM)',1,'2024-03-17 06:14:00','2024-03-17 06:14:00'),(2,'Bachelors of Information Mangaement (BIM)',1,'2024-03-17 06:14:28','2024-03-17 06:14:28'),(3,'Bachelors of Science in Computer and Information Technology (BSc.CSIT)',1,'2024-03-17 06:15:10','2024-03-17 06:15:10'),(4,'Bachelors of Business Studies (BBS)',1,'2024-03-17 06:15:38','2024-03-17 06:15:38'),(5,'Bachelors of Arts (BA)',1,'2024-03-17 06:15:56','2024-03-17 06:15:56'),(6,'Bachelor of Business Administration (BBA)',2,'2024-03-19 03:11:12','2024-03-19 03:11:12'),(7,'Bachelor of Business Management (BBM)',2,'2024-03-19 03:17:01','2024-03-19 03:17:01'),(8,'Bachelor of Pharmacy (B.Pharm)',2,'2024-03-19 03:17:08','2024-03-19 03:17:08'),(9,'Bachelor of Civil Engineering (BCE)',2,'2024-03-19 03:17:18','2024-03-19 03:17:18'),(10,'Bachelor of Public Health (BPH)',2,'2024-03-19 03:17:29','2024-03-19 03:17:29'),(11,'Aero Engineering',11,'2024-04-01 03:23:01','2024-04-01 05:05:23'),(14,'Buddhism Course',8,'2024-04-01 05:20:47','2024-04-01 05:20:47');
/*!40000 ALTER TABLE `faculties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `syllabus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `solution` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courses_id` bigint unsigned NOT NULL,
  `semesters_id` bigint unsigned NOT NULL,
  `universities_id` bigint unsigned NOT NULL,
  `faculties_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `materials_courses_id_foreign` (`courses_id`),
  KEY `materials_semesters_id_foreign` (`semesters_id`),
  KEY `materials_universities_id_foreign` (`universities_id`),
  KEY `materials_faculties_id_foreign` (`faculties_id`),
  CONSTRAINT `materials_courses_id_foreign` FOREIGN KEY (`courses_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `materials_faculties_id_foreign` FOREIGN KEY (`faculties_id`) REFERENCES `faculties` (`id`),
  CONSTRAINT `materials_semesters_id_foreign` FOREIGN KEY (`semesters_id`) REFERENCES `semesters` (`id`),
  CONSTRAINT `materials_universities_id_foreign` FOREIGN KEY (`universities_id`) REFERENCES `universities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2024_03_13_041845_create_universities_table',1),(6,'2024_03_13_041903_create_faculties_table',1),(7,'2024_03_13_041936_create_semesters_table',1),(8,'2024_03_13_041952_create_courses_table',1),(9,'2024_03_13_042019_create_materials_table',1),(10,'2024_03_25_050800_add_image_url_to_universities',2),(11,'2016_06_01_000001_create_oauth_auth_codes_table',3),(12,'2016_06_01_000002_create_oauth_access_tokens_table',3),(13,'2016_06_01_000003_create_oauth_refresh_tokens_table',3),(14,'2016_06_01_000004_create_oauth_clients_table',3),(15,'2016_06_01_000005_create_oauth_personal_access_clients_table',3),(16,'2024_04_14_094836_create_permission_tables',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','s7oVC4GIfH2PJnIz6sL5mUYocLZaCMDJHulQ8Gja',NULL,'http://localhost',1,0,0,'2024-04-04 02:21:38','2024-04-04 02:21:38'),(2,NULL,'Laravel Password Grant Client','GgS24BmDByOD6RLdiIo7BDKP3DY58u9mHpfAV19e','users','http://localhost',0,1,0,'2024-04-04 02:21:38','2024-04-04 02:21:38'),(3,NULL,'Laravel Password Grant Client','0ZsPhvNxuubpbVSQvf4SJkAlyN2nFcPETcyoIqnG','users','http://localhost',0,1,0,'2024-04-07 01:22:47','2024-04-07 01:22:47');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2024-04-04 02:21:38','2024-04-04 02:21:38');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',1,'Laravel Password Grant Client','c4c7203f3f50fe9d31cd02fdcfabe4ddad33ca92ce2f472d58bbb5fb35794ccf','[\"*\"]',NULL,NULL,'2024-04-06 07:07:05','2024-04-06 07:07:05'),(2,'App\\Models\\User',1,'Laravel Password Grant Client','1db1effc7e5ba6e4f2932bb7197b201d13d7b86b9950c364c222fb5b300dd5eb','[\"*\"]',NULL,NULL,'2024-04-06 07:08:25','2024-04-06 07:08:25'),(3,'App\\Models\\User',1,'Laravel Password Grant Client','01b4537f5dfb03b3436e1ebd340521d5de01deffbd8486b8c997c9eaa163477c','[\"*\"]',NULL,NULL,'2024-04-06 07:08:52','2024-04-06 07:08:52'),(4,'App\\Models\\User',1,'Laravel Password Grant Client','14d46257c8e0227c4b487e4b6212caccfa00529f0e0bd01cb75432f114eedf90','[\"*\"]',NULL,NULL,'2024-04-06 19:55:50','2024-04-06 19:55:50'),(5,'App\\Models\\User',1,'Laravel Password Grant Client','db0212e1e3a449b16540df4f9281d3a60557628f1457b15c5a66f9aaa8cf5511','[\"*\"]',NULL,NULL,'2024-04-06 19:55:56','2024-04-06 19:55:56'),(6,'App\\Models\\User',1,'Laravel Password Grant Client','c3c956c37e6059e9de973308fcfdaf9b216b97e52a536b4dab38da90fa39d17d','[\"*\"]',NULL,NULL,'2024-04-06 22:58:51','2024-04-06 22:58:51'),(7,'App\\Models\\User',1,'Laravel Password Grant Client','4c259b92ff7238c62fc239a4a4b86dccfb8e0e7f6a724c0b379201f00a6c3d18','[\"*\"]',NULL,NULL,'2024-04-06 22:58:59','2024-04-06 22:58:59'),(8,'App\\Models\\User',1,'Laravel Password Grant Client','1272caabfddefc3c2505b33b9bb376b62dbc6fa5e5c2bec343f7dc06b10ff363','[\"*\"]',NULL,NULL,'2024-04-06 23:10:48','2024-04-06 23:10:48'),(9,'App\\Models\\User',1,'Laravel Password Grant Client','e44ebf4452d0a3881138bab45bbaabb8c694a7bb5eeaee9c2b016ada975fc124','[\"*\"]',NULL,NULL,'2024-04-07 00:50:30','2024-04-07 00:50:30'),(10,'App\\Models\\User',1,'Laravel Password Grant Client','0e0084582fbe8c06301c635bdbda010b375eb8820f61dfc0ba0df8cc554f9921','[\"*\"]',NULL,NULL,'2024-04-07 00:51:12','2024-04-07 00:51:12'),(11,'App\\Models\\User',1,'Laravel Password Grant Client','feb9beb796d4b3dd40e138ebc25c9be1c944da3510f7e2f61434740cba4f4202','[\"*\"]',NULL,NULL,'2024-04-07 00:52:52','2024-04-07 00:52:52'),(12,'App\\Models\\User',1,'Laravel Password Grant Client','9916dda90abebc2c3590f8f0b03d21e774d60063363fc81c0a79d85ad9a10853','[\"*\"]',NULL,NULL,'2024-04-07 00:53:52','2024-04-07 00:53:52'),(13,'App\\Models\\User',1,'Laravel Password Grant Client','0859d8844ceae0af5e503bb5c55b8c6863011615482e2d5a3920dd7efa349794','[\"*\"]',NULL,NULL,'2024-04-07 00:54:29','2024-04-07 00:54:29'),(14,'App\\Models\\User',1,'Laravel Password Grant Client','c8a8e4ceb664a1fcd6a563b36531a98391277d62766dd9fc0a0f3943f9eef3eb','[\"*\"]',NULL,NULL,'2024-04-07 00:54:46','2024-04-07 00:54:46'),(15,'App\\Models\\User',1,'Laravel Password Grant Client','9afa98b72569a5de8ed8e3b3fcd7440a3d5a07f090977ee7d76b4647b76a700b','[\"*\"]',NULL,NULL,'2024-04-07 01:04:12','2024-04-07 01:04:12'),(16,'App\\Models\\User',1,'Laravel Password Grant Client','d315cdd4cbffde0edc41e56a708592d11061b7ac4a78931b882360c10a1dbec6','[\"*\"]',NULL,NULL,'2024-04-07 01:05:06','2024-04-07 01:05:06'),(17,'App\\Models\\User',1,'Laravel Password Grant Client','e5c193ce637da4ce3038edae8d9f4a9b08dacaece0c419fda0c3ade0b36dd6e9','[\"*\"]',NULL,NULL,'2024-04-07 01:06:26','2024-04-07 01:06:26'),(18,'App\\Models\\User',1,'Laravel Password Grant Client','1f4f1641f641cb9c12c29212358759992cee50351f4b71b23f0d6186beb9678d','[\"*\"]',NULL,NULL,'2024-04-07 01:11:34','2024-04-07 01:11:34'),(19,'App\\Models\\User',1,'Laravel Password Grant Client','aaa4a9d328f4b4736a03e1667890eb255db220fcea88a413f0f175caf8ace8db','[\"*\"]',NULL,NULL,'2024-04-07 01:13:57','2024-04-07 01:13:57'),(20,'App\\Models\\User',1,'Laravel Password Grant Client','0454044d11adafa5f3167c149957430e0cf963bf71860308c1997d7dce4f941a','[\"*\"]',NULL,NULL,'2024-04-07 01:14:22','2024-04-07 01:14:22'),(21,'App\\Models\\User',1,'Laravel Password Grant Client','b16076a9c62fd0fc19ae67679704ebbeb8c7a3ee0bef238e8bf1d5dbd231cabc','[\"*\"]',NULL,NULL,'2024-04-07 01:14:38','2024-04-07 01:14:38'),(22,'App\\Models\\User',1,'Laravel Password Grant Client','b73bae5d9f17dbbb10d3c6923f24c32d3d442819b718ef98c67324714f4f34bf','[\"*\"]',NULL,NULL,'2024-04-07 01:16:30','2024-04-07 01:16:30'),(23,'App\\Models\\User',1,'Laravel Password Grant Client','dec7542db3c3e00484ae9b0f02d4ab0d5a0b1b98da26199d868e4696003a86b0','[\"*\"]',NULL,NULL,'2024-04-07 01:16:59','2024-04-07 01:16:59'),(24,'App\\Models\\User',1,'Laravel Password Grant Client','6d6eb928dcd8b26e2b90a33883cc9f37408521b40cdc2e64466df2ebb517fbf1','[\"*\"]',NULL,NULL,'2024-04-07 04:01:36','2024-04-07 04:01:36'),(25,'App\\Models\\User',1,'Laravel Password Grant Client','2292f9b87c4d31ed67ef18c8c0c2c37eedcba38cebe9d71bc131e8ce96729bec','[\"*\"]',NULL,NULL,'2024-04-07 05:50:21','2024-04-07 05:50:21'),(26,'App\\Models\\User',1,'Laravel Password Grant Client','85f7001222cad276d180996f54946cc4e4ca4032ac59e074c3ee4897a1d5af6b','[\"*\"]',NULL,NULL,'2024-04-07 22:04:02','2024-04-07 22:04:02'),(27,'App\\Models\\User',1,'Laravel Password Grant Client','16c0c0e6e074f400d1c63b393ebde8c1756f49a186c11fd9ca4854e2d348d5c9','[\"*\"]',NULL,NULL,'2024-04-07 22:05:51','2024-04-07 22:05:51'),(28,'App\\Models\\User',1,'Laravel Password Grant Client','b2ef7848788a2625e92a91a36bdd601e9f8aaa871cc3595ed21c4296da1772d9','[\"*\"]',NULL,NULL,'2024-04-07 22:28:25','2024-04-07 22:28:25'),(29,'App\\Models\\User',1,'Laravel Password Grant Client','a490bd9919ffb859785c2d908dbe463e295d3ed92cdfd2cbb3ea49ada7a8fa25','[\"*\"]',NULL,NULL,'2024-04-07 22:28:27','2024-04-07 22:28:27'),(30,'App\\Models\\User',1,'Laravel Password Grant Client','37f1fe4f256a34d0e9f55654d018f4237e4e76afcdcedc017400a530352ca0e9','[\"*\"]',NULL,NULL,'2024-04-07 22:28:27','2024-04-07 22:28:27'),(31,'App\\Models\\User',1,'Laravel Password Grant Client','41d7a795a418401622ae74db881a13b7f080f88f93dfbd8401f3eb7043154a45','[\"*\"]',NULL,NULL,'2024-04-07 22:28:28','2024-04-07 22:28:28'),(32,'App\\Models\\User',1,'Laravel Password Grant Client','229a1d394349c8742a5840e864f9a3a526bf753d7a096ef1973eb933b435a10d','[\"*\"]',NULL,NULL,'2024-04-07 22:28:28','2024-04-07 22:28:28'),(33,'App\\Models\\User',1,'Laravel Password Grant Client','536f8edbcaebc9664e468c3bb6d2a44c039b4164d52e6a8e1cf23e2c5498f589','[\"*\"]',NULL,NULL,'2024-04-07 22:28:28','2024-04-07 22:28:28'),(34,'App\\Models\\User',1,'Laravel Password Grant Client','e39cce61ff31d50fbd3c928a7028b1b9bdee00702aa9959e5d6110c64b1c0598','[\"*\"]',NULL,NULL,'2024-04-07 22:28:29','2024-04-07 22:28:29'),(35,'App\\Models\\User',1,'Laravel Password Grant Client','d13bab18a772839c84334280acc6ae8556a013afa7a78e4ab4f25255893cbec2','[\"*\"]',NULL,NULL,'2024-04-07 22:28:29','2024-04-07 22:28:29'),(36,'App\\Models\\User',1,'Laravel Password Grant Client','abaf59104cb273106386e858c58b1b690ee779c07fb9242a9dc8bfc39d7256e7','[\"*\"]',NULL,NULL,'2024-04-07 22:28:29','2024-04-07 22:28:29'),(37,'App\\Models\\User',1,'Laravel Password Grant Client','89139a970e729647b03f5cd1244171d131b03a9df4c22d7ffd077c96f9ab6beb','[\"*\"]',NULL,NULL,'2024-04-07 22:32:37','2024-04-07 22:32:37'),(38,'App\\Models\\User',1,'Laravel Password Grant Client','ca4f80fb8db8932523265e909d71acfd71e6707f237cf58960c380a803e09261','[\"*\"]',NULL,NULL,'2024-04-07 22:32:39','2024-04-07 22:32:39'),(39,'App\\Models\\User',1,'Laravel Password Grant Client','6ca7486241f6e1051aaa69687f45ae7861764d6a0656112affd214a09dd0b6d7','[\"*\"]',NULL,NULL,'2024-04-07 22:41:11','2024-04-07 22:41:11'),(40,'App\\Models\\User',1,'Laravel Password Grant Client','43d8dbb762930c34ff041cf1eb521ad9b22036f539972f394d3fa555a8f63e17','[\"*\"]',NULL,NULL,'2024-04-07 22:42:38','2024-04-07 22:42:38'),(41,'App\\Models\\User',1,'Laravel Password Grant Client','76f0c60a9efffc4ba6813cede4c3f47a27a20b3c35ae3feca2c17610a3e92700','[\"*\"]',NULL,NULL,'2024-04-07 22:43:08','2024-04-07 22:43:08'),(42,'App\\Models\\User',1,'Laravel Password Grant Client','236639b6f5c15efeac3b3f38033715d20fdcb2aea2467c40636bb4733c5fdcf5','[\"*\"]',NULL,NULL,'2024-04-07 22:49:17','2024-04-07 22:49:17'),(43,'App\\Models\\User',1,'Laravel Password Grant Client','e8ddc439e93136f7ff9e7add9785c7729aacbb57209ad44915ef116a9f5dd945','[\"*\"]',NULL,NULL,'2024-04-07 22:50:12','2024-04-07 22:50:12'),(44,'App\\Models\\User',1,'Laravel Password Grant Client','b6c5d3658829ba6fe00a4f71b1e24a26626d14c9d7cef1fa94a9cd482f0335bf','[\"*\"]',NULL,NULL,'2024-04-07 22:51:33','2024-04-07 22:51:33'),(45,'App\\Models\\User',1,'Laravel Password Grant Client','0a8dbb2adb2074c93afce18df06e37781a83db6b916fad7597e17a35b82393b7','[\"*\"]',NULL,NULL,'2024-04-07 23:22:58','2024-04-07 23:22:58'),(46,'App\\Models\\User',1,'Laravel Password Grant Client','7a02626a96079cb0869aedf23b2cd14cc59dd1b7c8ca72f3a4de8cb0d2083d34','[\"*\"]',NULL,NULL,'2024-04-07 23:23:19','2024-04-07 23:23:19'),(47,'App\\Models\\User',1,'Laravel Password Grant Client','d9f8399126227d0f51e5060b30f56d93e5cf1b145b6711254a6b80082072c34f','[\"*\"]',NULL,NULL,'2024-04-07 23:23:59','2024-04-07 23:23:59'),(48,'App\\Models\\User',1,'Laravel Password Grant Client','ca04610934ff7b49e41c66452894761853994ee9ecfd53367fb63a944be6391f','[\"*\"]',NULL,NULL,'2024-04-07 23:53:18','2024-04-07 23:53:18'),(49,'App\\Models\\User',1,'Laravel Password Grant Client','3dd8cee515107a2c50945d06f6da1c0d41ea4ddd9a7bdae20c2f609779c28d5d','[\"*\"]',NULL,NULL,'2024-04-07 23:54:18','2024-04-07 23:54:18'),(50,'App\\Models\\User',1,'Laravel Password Grant Client','73faf15d81425d47e199685a36e49fc33efddbe4b927d886e33c5d160a0e4ddd','[\"*\"]',NULL,NULL,'2024-04-07 23:55:15','2024-04-07 23:55:15'),(51,'App\\Models\\User',1,'Laravel Password Grant Client','e38e4447775f05df63bb4c80cc278b2644eab9f8cfbb5e7e48ee5871801e3c5b','[\"*\"]',NULL,NULL,'2024-04-08 00:19:22','2024-04-08 00:19:22'),(52,'App\\Models\\User',1,'Laravel Password Grant Client','a9d9b9956bae74273655619e0b22c3d72012f326a9efeb6fac4b2a200cdeb5b1','[\"*\"]',NULL,NULL,'2024-04-08 00:19:40','2024-04-08 00:19:40'),(53,'App\\Models\\User',1,'Laravel Password Grant Client','9850d00b05fb3959b4d4b82ac261d41d1e1a233166a32e3c3af35f69ee8d89ca','[\"*\"]',NULL,NULL,'2024-04-13 23:29:27','2024-04-13 23:29:27'),(54,'App\\Models\\User',1,'Laravel Password Grant Client','7bd634041acfca51cafb9da6c59a1a1dec7fb9796107c4b003bf04d8ed8722fa','[\"*\"]',NULL,NULL,'2024-04-13 23:46:38','2024-04-13 23:46:38'),(55,'App\\Models\\User',1,'Laravel Password Grant Client','7cc926eae2e8df1d7fbea98cf3b126d2596ffe60c6bf65ec496f8c9b7cbf4150','[\"*\"]',NULL,NULL,'2024-04-13 23:48:54','2024-04-13 23:48:54'),(56,'App\\Models\\User',1,'Laravel Password Grant Client','529a94b5b68649927ffcb6080ce2125f053f2309c7f4f0e116efb831301d45e4','[\"*\"]',NULL,NULL,'2024-04-14 00:18:04','2024-04-14 00:18:04'),(57,'App\\Models\\User',1,'Laravel Password Grant Client','5026722f36a3b7c630be8ceb09fd68e2a72bd9f4deb62225cafc7bf465ec0336','[\"*\"]',NULL,NULL,'2024-04-14 00:19:08','2024-04-14 00:19:08'),(58,'App\\Models\\User',1,'Laravel Password Grant Client','ca81c0d0fb7e2fc3c53a8f6146635ed5554fce30e454d18e83177738fd9495fe','[\"*\"]',NULL,NULL,'2024-04-14 00:39:17','2024-04-14 00:39:17'),(59,'App\\Models\\User',1,'Laravel Password Grant Client','f569d15c18285f651cd6c5be0145d07a83abe197a82dd9259a85e83d1860db57','[\"*\"]',NULL,NULL,'2024-04-14 00:39:34','2024-04-14 00:39:34'),(60,'App\\Models\\User',1,'Laravel Password Grant Client','e7d8a5e3e0037f78590c0d212530ae4e3f93fbcd8c090241b9f3d90bfb3e49f7','[\"*\"]',NULL,NULL,'2024-04-14 00:40:16','2024-04-14 00:40:16'),(61,'App\\Models\\User',1,'Laravel Password Grant Client','bda55c673eb00a15cc95f50b039b33456ddac371ea1da12365eff7158528e1f6','[\"*\"]',NULL,NULL,'2024-04-14 00:40:22','2024-04-14 00:40:22'),(62,'App\\Models\\User',1,'Laravel Password Grant Client','68bce1d1310119d2881bf2480c8af02c3e212f72b0b1ee623a5340c85773d682','[\"*\"]',NULL,NULL,'2024-04-14 00:41:17','2024-04-14 00:41:17'),(63,'App\\Models\\User',1,'Laravel Password Grant Client','4f7bbbf341930d85a91e1dd12e6425d3ab643ba18c08e0ebe2e6f8df57983a15','[\"*\"]',NULL,NULL,'2024-04-14 00:47:08','2024-04-14 00:47:08'),(64,'App\\Models\\User',1,'Laravel Password Grant Client','0327debae1b660eaa25c49445a92a26fd831c1d3d0006f0783b44788457e0287','[\"*\"]',NULL,NULL,'2024-04-14 00:53:42','2024-04-14 00:53:42'),(65,'App\\Models\\User',1,'Laravel Password Grant Client','42984d3c5f47d173c4ec8df7002b6cabff0518953790f39a823369dc707f8fed','[\"*\"]',NULL,NULL,'2024-04-14 00:54:14','2024-04-14 00:54:14'),(66,'App\\Models\\User',1,'Laravel Password Grant Client','99d44a756742ae5a47f648830b2cecedaff1df9c8c9bb17237d91a38b25bbbc2','[\"*\"]',NULL,NULL,'2024-04-14 00:54:44','2024-04-14 00:54:44'),(67,'App\\Models\\User',1,'Laravel Password Grant Client','43b6d20f7f6a7feba3d209ba23d54d5d80efc7629ea00a03cfedb1f2fa374812','[\"*\"]',NULL,NULL,'2024-04-14 00:55:33','2024-04-14 00:55:33'),(68,'App\\Models\\User',1,'Laravel Password Grant Client','a3b26f32920c7003605596d1ebf576329d427a6724f56641149686485168b354','[\"*\"]',NULL,NULL,'2024-04-14 00:55:51','2024-04-14 00:55:51'),(69,'App\\Models\\User',1,'Laravel Password Grant Client','cdfee0bb9ba685782bb5866fa416ee7d1eeaf47d3b2021fb1d56d87905f7fe8d','[\"*\"]',NULL,NULL,'2024-04-14 00:57:54','2024-04-14 00:57:54'),(70,'App\\Models\\User',1,'Laravel Password Grant Client','c5e7be3053a18219dd69a36777a003cbf13daa2710b494f861e2f2d139bfa160','[\"*\"]',NULL,NULL,'2024-04-14 00:59:00','2024-04-14 00:59:00'),(71,'App\\Models\\User',1,'Laravel Password Grant Client','3bb66da90984f5cea6aa2fbaa927ce53a7bbed0b161d8b9d0fcf772f2f297a30','[\"*\"]',NULL,NULL,'2024-04-14 01:03:16','2024-04-14 01:03:16'),(72,'App\\Models\\User',1,'Laravel Password Grant Client','7b437e668f74ee5ed29ae343797cc53b2d51201f4c80bba07a97f46fdc36dd70','[\"*\"]',NULL,NULL,'2024-04-14 01:14:14','2024-04-14 01:14:14'),(73,'App\\Models\\User',1,'Laravel Password Grant Client','616bb64377d3e77283bdf90126adbd297e5dd8bd8542a47afea580223ee0b27c','[\"*\"]',NULL,NULL,'2024-04-14 01:19:15','2024-04-14 01:19:15'),(74,'App\\Models\\User',1,'Laravel Password Grant Client','8bbe2b8d2dc81d1e51604fe8d521b5f08a0218d6ee9b8c8d870fb94fa205058c','[\"*\"]',NULL,NULL,'2024-04-14 01:19:33','2024-04-14 01:19:33'),(75,'App\\Models\\User',1,'Laravel Password Grant Client','f701912293c876c7743755e8f1115b7bb1022c6eed51c8afb28c2ded37c9d52b','[\"*\"]',NULL,NULL,'2024-04-14 01:20:02','2024-04-14 01:20:02'),(76,'App\\Models\\User',1,'Laravel Password Grant Client','d0f49eed74c35bd56c0ebb8dd37d3606ae71f3d84ea3000d30e961cc2f8cab14','[\"*\"]',NULL,NULL,'2024-04-14 01:21:05','2024-04-14 01:21:05'),(77,'App\\Models\\User',1,'Laravel Password Grant Client','4eb163827aa1c8b81ba1ed7a84faae571aa97fa3c9827f7560dea4662eb297ec','[\"*\"]',NULL,NULL,'2024-04-14 02:44:04','2024-04-14 02:44:04'),(78,'App\\Models\\User',1,'Laravel Password Grant Client','fa2fefd464b493682fc1678dedf712b4482110f9bfb9ed90c40dba76838f3b93','[\"*\"]',NULL,NULL,'2024-04-14 02:44:45','2024-04-14 02:44:45'),(79,'App\\Models\\User',1,'Laravel Password Grant Client','515171ab818b1070ac41469e971cebfabcd767df0a2f6ad477e29d8d6e3f7019','[\"*\"]',NULL,NULL,'2024-04-14 02:44:46','2024-04-14 02:44:46'),(80,'App\\Models\\User',1,'Laravel Password Grant Client','83807b93af006b5cd15fb0d204ea400d604a63fb7a67373d5c9b1850fe6d055c','[\"*\"]',NULL,NULL,'2024-04-14 02:44:49','2024-04-14 02:44:49'),(81,'App\\Models\\User',1,'Laravel Password Grant Client','835b6bef24fb2ff8c19ec10af4a5654ff28511c919d362b112c2190e6cb0b4b7','[\"*\"]',NULL,NULL,'2024-04-14 03:40:22','2024-04-14 03:40:22'),(82,'App\\Models\\User',1,'Laravel Password Grant Client','fb742043da66f471b76f1974e1d3dbfb66d724de755a2407d3bc9f6c88a3114f','[\"*\"]',NULL,NULL,'2024-04-14 03:45:12','2024-04-14 03:45:12'),(83,'App\\Models\\User',1,'Laravel Password Grant Client','b55b8921553ec99f164b075a08a4ccf1dc9a5a80a4ef23ed5e2c4f5ccf2b5338','[\"*\"]',NULL,NULL,'2024-05-15 22:12:45','2024-05-15 22:12:45'),(84,'App\\Models\\User',1,'Laravel Password Grant Client','a1b27f63fa0fde9afb89d4b47acaea4e30064248fda0cc14060ba4c553d48bd5','[\"*\"]',NULL,NULL,'2024-05-15 22:13:13','2024-05-15 22:13:13'),(85,'App\\Models\\User',1,'Laravel Password Grant Client','5ae07dc8f841829c8da6d94310e9a3c6efe4019d1c496b6d152747f71903f2ca','[\"*\"]',NULL,NULL,'2024-05-21 02:59:10','2024-05-21 02:59:10'),(86,'App\\Models\\User',1,'Laravel Password Grant Client','7f7595cd7ebaf437ba182f19a8dcfe22889ccf803640c8f48e81be9b553ac197','[\"*\"]',NULL,NULL,'2024-05-21 03:02:01','2024-05-21 03:02:01'),(87,'App\\Models\\User',1,'Laravel Password Grant Client','30e6ddc820c6b1643313d34235ad0ec5c62e97f8440915a9b9bd5dabc4f89513','[\"*\"]',NULL,NULL,'2024-05-21 03:03:16','2024-05-21 03:03:16'),(88,'App\\Models\\User',1,'Laravel Password Grant Client','b08ef5aa85ded0b42d335c63b16f5f08a5632c8b9bffd76ef336c78d73b9db8e','[\"*\"]',NULL,NULL,'2024-06-16 00:52:43','2024-06-16 00:52:43'),(89,'App\\Models\\User',1,'Laravel Password Grant Client','aa0b0ab15073499a3c9a19413f15b78cbffad8454f79d915c8c32b5d1779e495','[\"*\"]',NULL,NULL,'2024-06-16 00:58:47','2024-06-16 00:58:47'),(90,'App\\Models\\User',1,'Laravel Password Grant Client','0e18b5444cfb5cc20aafbd26f2058c91584a8dfbedbc8e5c99bf64c39f482101','[\"*\"]',NULL,NULL,'2024-06-18 04:38:41','2024-06-18 04:38:41');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semesters`
--

DROP TABLE IF EXISTS `semesters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semesters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculties_id` bigint unsigned NOT NULL,
  `universities_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `semesters_faculties_id_foreign` (`faculties_id`),
  KEY `semesters_universities_id_foreign` (`universities_id`),
  CONSTRAINT `semesters_faculties_id_foreign` FOREIGN KEY (`faculties_id`) REFERENCES `faculties` (`id`),
  CONSTRAINT `semesters_universities_id_foreign` FOREIGN KEY (`universities_id`) REFERENCES `universities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semesters`
--

LOCK TABLES `semesters` WRITE;
/*!40000 ALTER TABLE `semesters` DISABLE KEYS */;
INSERT INTO `semesters` VALUES (1,'First Semester (1st)....',1,1,'2024-03-18 00:14:56','2024-04-02 02:35:06'),(3,'first',2,1,'2024-03-18 00:19:23','2024-03-18 00:19:23'),(4,'second',3,1,'2024-03-18 00:21:38','2024-03-18 00:21:38'),(6,'Second',1,1,'2024-03-19 04:20:41','2024-03-19 04:20:41'),(7,'Third',1,1,'2024-03-19 04:20:45','2024-03-19 04:20:45'),(8,'Fourth',1,1,'2024-03-19 04:20:54','2024-03-19 04:20:54'),(9,'Fifth',1,1,'2024-03-19 04:20:59','2024-03-19 04:20:59'),(10,'Sixth',1,1,'2024-03-19 04:21:05','2024-03-19 04:21:05'),(11,'Seventh',1,1,'2024-03-19 04:21:10','2024-03-19 04:21:10'),(12,'test',1,1,'2024-04-02 00:01:35','2024-04-02 00:01:35'),(13,'test 2',1,1,'2024-04-02 00:02:50','2024-04-02 00:02:50');
/*!40000 ALTER TABLE `semesters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `universities`
--

DROP TABLE IF EXISTS `universities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `universities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `universities`
--

LOCK TABLES `universities` WRITE;
/*!40000 ALTER TABLE `universities` DISABLE KEYS */;
INSERT INTO `universities` VALUES (1,'Tribhuvan University','Tribhuvan University is a public university located in Kirtipur, Kathmandu, Nepal. Established in 1959, TU is the oldest and the largest university in Nepal','Kirtipur , Nepal','2024-03-17 04:27:36','2024-06-18 04:40:03','https://portal.tu.edu.np/medias/registraroffice_2023_05_04_08_14_47.png'),(2,'Pokharra University','Pokhara University was established in 1997 and is Nepal\'s fifth university. Its central office is located in Pokhara, Kaski District, Gandaki Province. Along with Purbanchal University,','Pokhara, Nepal','2024-03-17 04:55:14','2024-03-17 04:55:14','https://www.commonentranceexamnepal.com/blog/wp-content/uploads/2022/12/pokhara-university-admission-in-2023.jpg'),(3,'Kathmandu University','Kathmandu University is a public autonomous university in Nepal. It is the third oldest university in Nepal, located in Dhulikhel of Kavrepalanchok District, about 30 km east of Kathmandu.','Dhulikhel, Kathmandu','2024-03-24 23:46:34','2024-03-24 23:46:34','https://cdn.gurubaa.com/wp-content/uploads/2022/06/26155937/KU.jpg'),(4,'Purbanchal University','Purbanchal University (PU) is a public university located in Koshi Province, Nepal.[1] It was established in 1993 after the restoration of multi party democracy by the Government of Nepal.','Morang Nepal','2024-03-25 00:00:45','2024-03-25 00:00:45','https://lh3.googleusercontent.com/p/AF1QipNOYSO7qDTSp8emJUsMXNcBQfdJoAnFnRTv6rij=s680-w680-h510'),(5,'Far Western University (FU)','Far-Western University was established through the declaration of Council of Minister in 2011 A.D. (2068 B.S.). University Act was passed by Constituent Assembly in 2010 A.D. (2067 B.S.).','Far-Western , Nepal','2024-03-25 00:43:08','2024-03-25 00:43:08','https://saralnotes.com/wp-content/uploads/2019/11/FU.jpg'),(6,'Mid Western University (MU)','Mid-Western University (MWU) is an autonomous and public institution of higher learning with the mission to serve the people of Nepal and enrich the global learning community by extending the advantages of higher education.','Mid-Western , Nepal','2024-03-25 00:44:44','2024-03-25 00:44:44','https://saralnotes.com/wp-content/uploads/2019/11/MU.jpg'),(7,'Sanskrit University (SU)','Nepal Sanskrit is an autonomous and public institution of higher learning with the mission to serve the people of Nepal and global learning community by extending the advantages of higher education.','Chitwan , Nepal','2024-03-25 00:47:16','2024-03-30 10:16:11','https://saralnotes.com/wp-content/uploads/2019/11/sanskrit.jpg'),(8,'Buddhist University','Lumbini Buddhist University  is an autonomous and public institution of higher learning the mission to serve the people of Nepal andlearning community by extending the advantages of higher education.','Lubini , Nepal','2024-03-25 00:48:46','2024-03-25 00:48:46','https://saralnotes.com/wp-content/uploads/2019/11/LBU-1.jpg'),(11,'Harvard University','Harvard University is devoted to excellence in teaching, learning, and research, and to developing leaders who make a difference globally.','U.S.A','2024-04-01 03:19:50','2024-04-01 03:22:10','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3JjtJ7oSuNMmdXkjT5y7bJ8Se50DgAp5QzQ&usqp=CAU'),(13,'Orla Chandler','Laudantium vero sit','Illum nisi repellen','2024-06-18 05:05:21','2024-06-18 05:05:21','Sequi voluptatem ten'),(14,'Orla Chandler','Laudantium vero sit','Illum nisi repellen','2024-06-18 05:05:58','2024-06-18 05:05:58','Sequi voluptatem ten');
/*!40000 ALTER TABLE `universities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Test User','test@example.com','2024-04-06 07:03:57','$2y$12$zyrRY82KixGdFUTEbzwdGuh8ezT0rlMzeTNVlbACPazS78XTACgPW','dS6AFW4Cuj','2024-04-06 07:03:57','2024-04-06 07:03:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'university'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-18 16:38:07

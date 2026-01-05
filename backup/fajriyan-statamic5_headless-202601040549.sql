-- MySQL dump 10.13  Distrib 8.4.2, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: statamic5_headless
-- ------------------------------------------------------
-- Server version	8.4.2

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
-- Table structure for table `asset_containers`
--

DROP TABLE IF EXISTS `asset_containers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_containers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `asset_containers_handle_unique` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_containers`
--

LOCK TABLES `asset_containers` WRITE;
/*!40000 ALTER TABLE `asset_containers` DISABLE KEYS */;
INSERT INTO `asset_containers` VALUES (1,'assets','Assets','assets','{\"sort_by\": \"basename\", \"sort_dir\": \"asc\", \"allow_moving\": true, \"search_index\": null, \"warm_presets\": null, \"allow_uploads\": true, \"source_preset\": null, \"allow_renaming\": true, \"create_folders\": true, \"validation_rules\": [], \"allow_downloading\": true}','2025-11-24 14:33:32','2025-11-24 14:33:32');
/*!40000 ALTER TABLE `asset_containers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets_meta`
--

DROP TABLE IF EXISTS `assets_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assets_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `container` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `assets_meta_container_folder_basename_unique` (`container`,`folder`,`basename`),
  KEY `assets_meta_container_index` (`container`),
  KEY `assets_meta_folder_index` (`folder`),
  KEY `assets_meta_basename_index` (`basename`),
  KEY `assets_meta_filename_index` (`filename`),
  KEY `assets_meta_extension_index` (`extension`),
  KEY `assets_meta_path_index` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets_meta`
--

LOCK TABLES `assets_meta` WRITE;
/*!40000 ALTER TABLE `assets_meta` DISABLE KEYS */;
INSERT INTO `assets_meta` VALUES (1,'assets','/','fajriyan-15qzpwwothm-unsplash.jpg','fajriyan-15qzpwwothm-unsplash','jpg','fajriyan-15qzpwwothm-unsplash.jpg','{\"data\": [], \"size\": 1516054, \"width\": 2160, \"height\": 3789, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1764021672}','2025-11-24 15:01:12','2025-11-24 15:01:12'),(2,'assets','/','fajriyan-uxifk8sbsbw-unsplash.jpg','fajriyan-uxifk8sbsbw-unsplash','jpg','fajriyan-uxifk8sbsbw-unsplash.jpg','{\"data\": [], \"size\": 1518689, \"width\": 3514, \"height\": 1977, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1764021672}','2025-11-24 15:01:12','2025-11-24 15:01:12'),(3,'assets','/','fajriyan-slc1u_zxqj8-unsplash.jpg','fajriyan-slc1u_zxqj8-unsplash','jpg','fajriyan-slc1u_zxqj8-unsplash.jpg','{\"data\": [], \"size\": 2099011, \"width\": 3840, \"height\": 2160, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1764021673}','2025-11-24 15:01:13','2025-11-24 15:01:13'),(4,'assets','/','fajriyan-ucrm9jkuqye-unsplash.jpg','fajriyan-ucrm9jkuqye-unsplash','jpg','fajriyan-ucrm9jkuqye-unsplash.jpg','{\"data\": [], \"size\": 2138078, \"width\": 3840, \"height\": 2160, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1764021673}','2025-11-24 15:01:13','2025-11-24 15:01:13');
/*!40000 ALTER TABLE `assets_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blueprints`
--

DROP TABLE IF EXISTS `blueprints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blueprints` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blueprints_handle_namespace_unique` (`handle`,`namespace`),
  KEY `blueprints_namespace_index` (`namespace`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blueprints`
--

LOCK TABLES `blueprints` WRITE;
/*!40000 ALTER TABLE `blueprints` DISABLE KEYS */;
INSERT INTO `blueprints` VALUES (1,NULL,'default','{\"tabs\": {\"main\": {\"sections\": [{\"fields\": [{\"field\": {\"type\": \"markdown\", \"display\": \"Content\", \"localizable\": true}, \"handle\": \"content\"}, {\"field\": {\"type\": \"users\", \"default\": \"current\", \"display\": \"Author\", \"max_items\": 1, \"localizable\": true}, \"handle\": \"author\"}, {\"field\": {\"type\": \"template\", \"display\": \"Template\", \"localizable\": true}, \"handle\": \"template\"}]}]}}, \"title\": \"Default\"}','2025-11-12 04:04:09','2025-11-12 04:04:09'),(2,'assets','assets','{\"tabs\": {\"main\": {\"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Alt Text\", \"instructions\": \"Description of the image\"}, \"handle\": \"alt\"}]}]}}, \"title\": \"Asset\"}','2025-11-12 04:04:09','2025-11-12 04:04:09'),(3,NULL,'user','{\"tabs\": {\"main\": {\"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Name\"}, \"handle\": \"name\"}, {\"field\": {\"type\": \"text\", \"input\": \"email\", \"display\": \"Email Address\"}, \"handle\": \"email\"}, {\"field\": {\"type\": \"user_roles\", \"width\": 50}, \"handle\": \"roles\"}, {\"field\": {\"type\": \"user_groups\", \"width\": 50}, \"handle\": \"groups\"}, {\"field\": {\"type\": \"assets\", \"container\": \"assets\", \"max_files\": 1}, \"handle\": \"avatar\"}]}]}}, \"title\": \"User\"}','2025-11-12 04:04:09','2025-11-12 04:04:09'),(4,'collections.products','product','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"], \"localizable\": true}, \"handle\": \"title\"}, {\"field\": {\"type\": \"assets\", \"width\": 50, \"display\": \"Featured Product\", \"validate\": [\"required\", \"image\"], \"container\": \"assets\", \"max_files\": 1, \"min_files\": 1, \"localizable\": false}, \"handle\": \"featured_product\"}, {\"field\": {\"type\": \"radio\", \"width\": 50, \"display\": \"Is Featured\", \"options\": [{\"key\": \"Yes\", \"value\": null}, {\"key\": \"No\", \"value\": null}], \"validate\": [\"required\"], \"localizable\": false}, \"handle\": \"is_featured\"}, {\"field\": {\"type\": \"bard\", \"buttons\": [\"h2\", \"h3\", \"bold\", \"italic\", \"unorderedlist\", \"orderedlist\", \"removeformat\", \"quote\", \"anchor\", \"table\", \"alignleft\", \"aligncenter\", \"alignright\", \"alignjustify\"], \"display\": \"Content\", \"validate\": [\"required\"], \"save_html\": true, \"localizable\": true, \"remove_empty_nodes\": false}, \"handle\": \"content\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}, {\"field\": {\"type\": \"users\", \"default\": \"current\", \"display\": \"Author\", \"max_items\": 1, \"localizable\": true}, \"handle\": \"author\"}, {\"field\": {\"type\": \"date\", \"default\": \"now\", \"required\": true, \"validate\": [\"required\"], \"localizable\": false}, \"handle\": \"date\"}, {\"field\": {\"mode\": \"select\", \"type\": \"terms\", \"display\": \"Product Categories\", \"taxonomies\": [\"product_categories\"], \"localizable\": false}, \"handle\": \"product_categories\"}], \"__count\": 0}]}}, \"title\": \"Product\"}','2025-11-24 14:36:25','2026-01-03 15:46:37'),(5,'collections.careers','career','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"], \"localizable\": true}, \"handle\": \"title\"}, {\"field\": {\"type\": \"bard\", \"buttons\": [\"h2\", \"h3\", \"bold\", \"italic\", \"unorderedlist\", \"orderedlist\", \"removeformat\", \"quote\", \"anchor\", \"table\", \"h4\", \"alignleft\", \"aligncenter\", \"alignright\", \"alignjustify\"], \"display\": \"Content\", \"validate\": [\"required\"], \"save_html\": true, \"localizable\": true, \"remove_empty_nodes\": false}, \"handle\": \"content\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}, {\"field\": {\"type\": \"users\", \"default\": \"current\", \"display\": \"Author\", \"max_items\": 1, \"localizable\": true}, \"handle\": \"author\"}, {\"field\": {\"type\": \"date\", \"default\": \"now\", \"required\": true, \"validate\": [\"required\"], \"localizable\": false}, \"handle\": \"date\"}, {\"field\": {\"mode\": \"select\", \"type\": \"terms\", \"display\": \"Career Categories\", \"taxonomies\": [\"career_categories\"], \"localizable\": false}, \"handle\": \"career_categories\"}, {\"field\": {\"mode\": \"select\", \"type\": \"terms\", \"display\": \"Career Department\", \"taxonomies\": [\"career_department\"], \"localizable\": false}, \"handle\": \"career_department\"}, {\"field\": {\"mode\": \"select\", \"type\": \"terms\", \"display\": \"Career Location\", \"taxonomies\": [\"career_location\"], \"localizable\": false}, \"handle\": \"career_location\"}], \"__count\": 0}]}}, \"title\": \"Career\"}','2025-11-24 14:38:19','2026-01-03 15:45:23'),(6,'taxonomies.career_location','career_location','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"users\", \"default\": \"current\", \"display\": \"Author\", \"max_items\": 1, \"localizable\": true}, \"handle\": \"author\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"required\": true, \"validate\": [\"required\", \"max:200\"]}, \"handle\": \"slug\"}], \"__count\": 0}]}}, \"title\": \"Career Location\"}','2025-11-24 14:38:58','2025-11-24 14:38:58'),(7,'taxonomies.career_categories','career_category','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"users\", \"default\": \"current\", \"display\": \"Author\", \"max_items\": 1, \"localizable\": true}, \"handle\": \"author\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"required\": true, \"validate\": [\"required\", \"max:200\"]}, \"handle\": \"slug\"}], \"__count\": 0}]}}, \"title\": \"Career Category\"}','2025-11-24 14:39:25','2025-11-24 14:39:25'),(8,'taxonomies.career_department','career_department','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"users\", \"default\": \"current\", \"display\": \"Author\", \"max_items\": 1, \"localizable\": true}, \"handle\": \"author\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"required\": true, \"validate\": [\"required\", \"max:200\"]}, \"handle\": \"slug\"}], \"__count\": 0}]}}, \"title\": \"Career Department\"}','2025-11-24 14:39:59','2025-11-24 14:39:59'),(9,'taxonomies.product_categories','product_category','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"users\", \"default\": \"current\", \"display\": \"Author\", \"max_items\": 1, \"localizable\": true}, \"handle\": \"author\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"required\": true, \"validate\": [\"required\", \"max:200\"]}, \"handle\": \"slug\"}], \"__count\": 0}]}}, \"title\": \"Product Category\"}','2025-11-24 14:40:19','2025-11-24 14:40:19'),(11,'collections.pages','abous_us','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Main Headers\", \"validate\": [\"required\"], \"localizable\": true}, \"handle\": \"main_headers\"}, {\"field\": {\"type\": \"textarea\", \"display\": \"Main Description\", \"validate\": [\"required\"], \"localizable\": true}, \"handle\": \"main_description\"}, {\"field\": {\"type\": \"assets\", \"display\": \"Main Image\", \"validate\": [\"required\", \"image\"], \"container\": \"assets\", \"max_files\": 1, \"min_files\": 1, \"localizable\": true}, \"handle\": \"main_image\"}, {\"field\": {\"type\": \"assets\", \"display\": \"Multiple Image\", \"validate\": [\"required\", \"image\"], \"container\": \"assets\", \"min_files\": 3, \"localizable\": true}, \"handle\": \"multiple_image\"}, {\"field\": {\"sets\": {\"new_set_group\": {\"sets\": {\"main_content\": {\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Header\", \"validate\": [\"required\"], \"localizable\": false}, \"handle\": \"header\"}, {\"field\": {\"type\": \"textarea\", \"display\": \"Description\", \"validate\": [\"required\"], \"localizable\": false}, \"handle\": \"description\"}, {\"field\": {\"type\": \"assets\", \"display\": \"Image\", \"validate\": [\"required\", \"image\"], \"container\": \"assets\", \"max_files\": 1, \"min_files\": 1, \"localizable\": false}, \"handle\": \"image\"}], \"display\": \"Main Content\"}}, \"display\": \"New Set Group\"}}, \"type\": \"replicator\", \"display\": \"Main Content\", \"localizable\": true}, \"handle\": \"main_content\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"], \"localizable\": true}, \"handle\": \"title\"}, {\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}, {\"field\": {\"type\": \"entries\", \"listable\": false, \"max_items\": 1, \"collections\": [\"pages\"], \"localizable\": true}, \"handle\": \"parent\"}], \"__count\": 0}]}}, \"title\": \"Abous US\"}','2025-11-24 14:52:16','2025-11-24 14:55:04');
/*!40000 ALTER TABLE `blueprints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `collections_handle_unique` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collections`
--

LOCK TABLES `collections` WRITE;
/*!40000 ALTER TABLE `collections` DISABLE KEYS */;
INSERT INTO `collections` VALUES (1,'pages','Pages','{\"dated\": false, \"mount\": null, \"sites\": [\"indonesia\", \"english\"], \"slugs\": true, \"inject\": [], \"layout\": \"layout\", \"routes\": \"{parent_uri}/{slug}\", \"sort_dir\": \"asc\", \"template\": \"default\", \"propagate\": true, \"revisions\": false, \"structure\": {\"root\": true}, \"sort_field\": null, \"taxonomies\": [], \"search_index\": null, \"title_formats\": [], \"default_status\": true, \"origin_behavior\": \"select\", \"preview_targets\": [{\"id\": \"rAdDsflQ\", \"label\": \"Entry\", \"format\": \"{permalink}\", \"refresh\": true}], \"past_date_behavior\": \"public\", \"future_date_behavior\": \"public\"}','2025-11-12 04:04:09','2026-01-03 15:40:59'),(2,'products','Products','{\"dated\": true, \"mount\": null, \"sites\": [\"indonesia\", \"english\"], \"slugs\": true, \"inject\": [], \"layout\": \"layout\", \"routes\": null, \"sort_dir\": \"asc\", \"template\": \"default\", \"propagate\": false, \"revisions\": false, \"structure\": null, \"sort_field\": null, \"taxonomies\": [\"product_categories\"], \"search_index\": null, \"title_formats\": [], \"default_status\": true, \"origin_behavior\": \"select\", \"preview_targets\": [{\"id\": \"aalaUHEP\", \"label\": \"Entry\", \"format\": \"{permalink}\", \"refresh\": true}], \"past_date_behavior\": \"public\", \"future_date_behavior\": \"private\"}','2025-11-24 14:35:34','2026-01-03 15:41:19'),(3,'careers','Careers','{\"dated\": true, \"mount\": null, \"sites\": [\"indonesia\", \"english\"], \"slugs\": true, \"inject\": [], \"layout\": \"layout\", \"routes\": null, \"sort_dir\": \"asc\", \"template\": \"default\", \"propagate\": false, \"revisions\": false, \"structure\": null, \"sort_field\": null, \"taxonomies\": [\"career_categories\", \"career_department\", \"career_location\"], \"search_index\": null, \"title_formats\": [], \"default_status\": true, \"origin_behavior\": \"select\", \"preview_targets\": [{\"id\": \"vRNXpP2Y\", \"label\": \"Entry\", \"format\": \"{permalink}\", \"refresh\": true}], \"past_date_behavior\": \"public\", \"future_date_behavior\": \"private\"}','2025-11-24 14:37:39','2026-01-03 15:41:10');
/*!40000 ALTER TABLE `collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entries` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int DEFAULT NULL,
  `collection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blueprint` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entries_site_index` (`site`),
  KEY `entries_origin_id_index` (`origin_id`),
  KEY `entries_uri_index` (`uri`),
  KEY `entries_date_index` (`date`),
  KEY `entries_order_index` (`order`),
  KEY `entries_collection_index` (`collection`),
  KEY `entries_blueprint_index` (`blueprint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
INSERT INTO `entries` VALUES ('13af5e93-92b9-4a3b-afa4-e2a2a710039e','indonesia',NULL,1,'digital-marketing-strategist',NULL,'2025-11-24 00:00:00',NULL,'careers','career','{\"title\": \"Digital Marketing Strategist\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"content\": \"<h4>📌 Deskripsi Pekerjaan</h4><p>Posisi ini berfokus pada penyusunan strategi digital untuk meningkatkan <em>brand awareness</em> dan konversi.</p><h4>📊 Tugas Harian</h4><ul><li><p>Menyusun dan mengeksekusi <strong>campaign digital</strong></p></li><li><p>Membuat konten dan copywriting untuk berbagai platform</p></li><li><p>Menganalisis performa kampanye menggunakan <em>analytics tools</em></p></li></ul><h4>⭐ Keunggulan Kandidat</h4><ul><li><p>Menguasai <strong>SEO &amp; SEM</strong></p></li><li><p>Terbiasa bekerja dengan target yang terukur</p></li><li><p>Mampu membuat laporan performa dengan gaya presentasi yang <em>profesional</em></p></li></ul>\", \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"career_location\": [\"semarang\"], \"career_categories\": [\"full-time\", \"freelance\"], \"career_department\": [\"management\"]}','2025-11-24 14:58:37','2025-11-24 14:58:37'),('20b3fb6c-995f-4cda-a86b-0e523047d8be','indonesia',NULL,1,'product-name-novadesk-pro',NULL,'2025-11-24 00:00:00',NULL,'products','product','{\"title\": \"Product Name: NovaDesk Pro\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"content\": \"<p>Fitur Utama</p><ul><li><p><strong>Task management</strong> dengan tampilan board dan timeline</p></li><li><p>Fitur kolaborasi <em>real-time</em></p></li><li><p>Integrasi dengan Slack, Gmail, dan berbagai layanan lainnya</p></li></ul><p>🌟 Keunggulan</p><ul><li><p>UI yang <em>clean</em> dan mudah digunakan</p></li><li><p>Performa cepat &amp; stabil</p></li><li><p>Mendukung tim kecil hingga skala enterprise</p></li></ul>\", \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"is_featured\": \"Yes\", \"featured_product\": \"fajriyan-15qzpwwothm-unsplash.jpg\", \"product_categories\": [\"local-brand\"]}','2025-11-24 15:02:01','2025-11-24 15:02:01'),('3a34a369-2de1-4e76-8161-14dd3500ea4d','english','690994a2-477b-4369-a273-554baa8b2261',1,'about-us-english','/',NULL,1,'pages','abous_us','{\"title\": \"About US English\", \"parent\": \"home\", \"main_image\": \"fajriyan-ucrm9jkuqye-unsplash.jpg\", \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"main_content\": [{\"id\": \"midp2llu\", \"type\": \"main_content\", \"image\": \"fajriyan-slc1u_zxqj8-unsplash.jpg\", \"header\": \"Main Content 1\", \"enabled\": true, \"description\": \"Main Content Description 1\"}, {\"id\": \"midp2y3f\", \"type\": \"main_content\", \"image\": \"fajriyan-15qzpwwothm-unsplash.jpg\", \"header\": \"Main Content 2\", \"enabled\": true, \"description\": \"Main Content Description 2\"}, {\"id\": \"midp34qb\", \"type\": \"main_content\", \"image\": \"fajriyan-uxifk8sbsbw-unsplash.jpg\", \"header\": \"Main Content 3\", \"enabled\": true, \"description\": \"Main Content Description 3\"}], \"main_headers\": \"About Us Headers English\", \"multiple_image\": [\"fajriyan-15qzpwwothm-unsplash.jpg\", \"fajriyan-slc1u_zxqj8-unsplash.jpg\", \"fajriyan-ucrm9jkuqye-unsplash.jpg\", \"fajriyan-uxifk8sbsbw-unsplash.jpg\"], \"main_description\": \"This is Description for About Us Page English\", \"__localized_fields\": [\"main_headers\", \"main_description\", \"title\"]}','2026-01-03 15:44:35','2026-01-03 15:44:50'),('45de5e9c-e449-4189-a455-ebdf21d4dabd','indonesia',NULL,1,'software-engineer-frontend',NULL,'2025-11-24 00:00:00',NULL,'careers','career','{\"title\": \"Software Engineer – Frontend\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"content\": \"<h4>🔧 Tanggung Jawab Utama</h4><ul><li><p>Mengembangkan antarmuka menggunakan <strong>React</strong> dan <strong>TailwindCSS</strong></p></li><li><p>Berkolaborasi dengan tim desain untuk menghasilkan UI yang <em>responsif</em></p></li><li><p>Melakukan optimasi performa pada aplikasi web</p></li></ul><h4>✨ Kualifikasi</h4><ul><li><p>Pengalaman minimal <strong>3 tahun</strong></p></li><li><p>Pemahaman kuat tentang <em>modern frontend architecture</em></p></li><li><p>Mampu bekerja secara mandiri maupun dalam tim</p></li></ul>\", \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"career_location\": [\"semarang\"], \"career_categories\": [\"full-time\"], \"career_department\": [\"it-production\"]}','2025-11-24 14:58:11','2025-11-24 14:58:11'),('53310565-e770-4850-9d64-7b8fea630d95','english','45de5e9c-e449-4189-a455-ebdf21d4dabd',1,'software-engineer-frontend-english',NULL,'2025-11-24 00:00:00',NULL,'careers','career','{\"title\": \"Software Engineer – Frontend English\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"content\": \"<h4>🔧 Tanggung Jawab Utama</h4><ul><li><p>Mengembangkan antarmuka menggunakan <strong>React</strong> dan <strong>TailwindCSS</strong></p></li><li><p>Berkolaborasi dengan tim desain untuk menghasilkan UI yang <em>responsif</em></p></li><li><p>Melakukan optimasi performa pada aplikasi web</p></li></ul><h4>✨ Kualifikasi</h4><ul><li><p>Pengalaman minimal <strong>3 tahun</strong></p></li><li><p>Pemahaman kuat tentang <em>modern frontend architecture</em></p></li><li><p>Mampu bekerja secara mandiri maupun dalam tim</p></li></ul>\", \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"career_location\": [\"semarang\"], \"career_categories\": [\"full-time\"], \"career_department\": [\"it-production\"], \"__localized_fields\": [\"title\"]}','2026-01-03 15:46:00','2026-01-03 15:46:04'),('540cc7a8-7cd5-424a-aa20-50b142a3aa32','indonesia',NULL,1,'title-backend-engineer',NULL,'2025-11-24 00:00:00',NULL,'careers','career','{\"title\": \"Title: Backend Engineer\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"content\": \"<h4>⚙️ Job Scope</h4><ul><li><p>Membangun API menggunakan <strong>Laravel</strong> atau <strong>Node.js</strong></p></li><li><p>Mendesain struktur database yang <em>scalable</em></p></li><li><p>Menjamin keamanan dan reliabilitas sistem backend</p></li></ul><h4>🧩 Skill yang Dibutuhkan</h4><ul><li><p>Familiar dengan <strong>REST API</strong> dan <strong>microservices</strong></p></li><li><p>Pengalaman dengan <em>CI/CD pipelines</em></p></li><li><p>Mampu melakukan debugging tingkat lanjut</p></li></ul>\", \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"career_location\": [\"malang\", \"lamongan\"], \"career_categories\": [\"part-time\"], \"career_department\": [\"management\"]}','2025-11-24 14:59:07','2025-11-24 14:59:07'),('55edc895-26e9-4f75-a659-c9b60a17c43f','indonesia',NULL,1,'pixelforge-studio',NULL,'2025-11-24 00:00:00',NULL,'products','product','{\"title\": \"PixelForge Studio\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"content\": \"<p>🎨 Tentang Produk</p><p>PixelForge Studio merupakan aplikasi editing grafis <strong>all-in-one</strong> dengan fitur yang cocok untuk desainer pemula hingga profesional.</p><p>🎛️ Tools Utama</p><ul><li><p><em>Layer-based editor</em> lengkap</p></li><li><p>Template desain siap pakai</p></li><li><p><strong>Advanced color grading</strong></p></li></ul><p>🧩 Alasan Memilih PixelForge</p><ul><li><p>Ringan dan <em>fast rendering</em></p></li><li><p>Kompatibel dengan berbagai format</p></li><li><p>Didukung komunitas yang aktif</p></li></ul><h3></h3>\", \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"is_featured\": \"Yes\", \"featured_product\": \"fajriyan-uxifk8sbsbw-unsplash.jpg\", \"product_categories\": [\"tools\"]}','2025-11-24 15:02:49','2025-11-24 15:02:49'),('5931ee03-6bfa-4485-9864-903c7b5c3b3d','english','20b3fb6c-995f-4cda-a86b-0e523047d8be',1,'product-name-novadesk-pro-english',NULL,'2025-11-24 00:00:00',NULL,'products','product','{\"title\": \"Product Name: NovaDesk Pro English\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"content\": \"<p>Fitur Utama</p><ul><li><p><strong>Task management</strong> dengan tampilan board dan timeline</p></li><li><p>Fitur kolaborasi <em>real-time</em></p></li><li><p>Integrasi dengan Slack, Gmail, dan berbagai layanan lainnya</p></li></ul><p>🌟 Keunggulan</p><ul><li><p>UI yang <em>clean</em> dan mudah digunakan</p></li><li><p>Performa cepat &amp; stabil</p></li><li><p>Mendukung tim kecil hingga skala enterprise</p></li></ul>\", \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"is_featured\": \"Yes\", \"featured_product\": \"fajriyan-15qzpwwothm-unsplash.jpg\", \"__localized_fields\": [\"title\"], \"product_categories\": [\"local-brand\"]}','2026-01-03 15:46:24','2026-01-03 15:46:51'),('690994a2-477b-4369-a273-554baa8b2261','indonesia',NULL,1,'about-us','/',NULL,1,'pages','abous_us','{\"title\": \"About US\", \"parent\": \"home\", \"main_image\": \"fajriyan-ucrm9jkuqye-unsplash.jpg\", \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"main_content\": [{\"id\": \"midp2llu\", \"type\": \"main_content\", \"image\": \"fajriyan-slc1u_zxqj8-unsplash.jpg\", \"header\": \"Main Content 1\", \"enabled\": true, \"description\": \"Main Content Description 1\"}, {\"id\": \"midp2y3f\", \"type\": \"main_content\", \"image\": \"fajriyan-15qzpwwothm-unsplash.jpg\", \"header\": \"Main Content 2\", \"enabled\": true, \"description\": \"Main Content Description 2\"}, {\"id\": \"midp34qb\", \"type\": \"main_content\", \"image\": \"fajriyan-uxifk8sbsbw-unsplash.jpg\", \"header\": \"Main Content 3\", \"enabled\": true, \"description\": \"Main Content Description 3\"}], \"main_headers\": \"About Us Headers\", \"multiple_image\": [\"fajriyan-15qzpwwothm-unsplash.jpg\", \"fajriyan-slc1u_zxqj8-unsplash.jpg\", \"fajriyan-ucrm9jkuqye-unsplash.jpg\", \"fajriyan-uxifk8sbsbw-unsplash.jpg\"], \"main_description\": \"This is Description for About Us Page\"}','2025-11-24 15:04:56','2025-11-24 15:05:03'),('9009b2d7-f246-4e68-b061-6a2a9a5ed954','indonesia',NULL,1,'fittrack-ultra',NULL,'2025-11-24 00:00:00',NULL,'products','product','{\"title\": \"FitTrack Ultra\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"content\": \"<p><strong>Content:</strong></p><p>🏃 Gambaran Produk</p><p>FitTrack Ultra adalah smart band canggih dengan teknologi <strong>health tracking</strong> terbaru untuk mendukung gaya hidup sehat.</p><p>📱 Fitur Health Tracking</p><ul><li><p>Monitor <em>heart rate</em> 24/7</p></li><li><p>Pengukur kualitas tidur</p></li><li><p><strong>Water-resistant</strong> hingga 50m</p></li></ul><p>💡 Nilai Lebih</p><ul><li><p>Baterai tahan lama 10–14 hari</p></li><li><p>Sinkronisasi mudah ke aplikasi mobile</p></li><li><p>Tampilannya modern dan <em>minimalis</em></p></li></ul>\", \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"is_featured\": \"Yes\", \"featured_product\": \"fajriyan-ucrm9jkuqye-unsplash.jpg\", \"product_categories\": [\"electronics\", \"education\"]}','2025-11-24 15:03:13','2025-11-24 15:03:13'),('a5669977-eadc-47d8-8fd5-c79397ecd34c','english','540cc7a8-7cd5-424a-aa20-50b142a3aa32',1,'title-backend-engineer-english',NULL,'2025-11-24 00:00:00',NULL,'careers','career','{\"title\": \"Title: Backend Engineer English\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"content\": \"<h4>⚙️ Job Scope</h4><ul><li><p>Membangun API menggunakan <strong>Laravel</strong> atau <strong>Node.js</strong></p></li><li><p>Mendesain struktur database yang <em>scalable</em></p></li><li><p>Menjamin keamanan dan reliabilitas sistem backend</p></li></ul><h4>🧩 Skill yang Dibutuhkan</h4><ul><li><p>Familiar dengan <strong>REST API</strong> dan <strong>microservices</strong></p></li><li><p>Pengalaman dengan <em>CI/CD pipelines</em></p></li><li><p>Mampu melakukan debugging tingkat lanjut</p></li></ul>\", \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"career_location\": [\"malang\", \"lamongan\"], \"career_categories\": [\"part-time\"], \"career_department\": [\"management\"], \"__localized_fields\": [\"title\"]}','2026-01-03 15:46:10','2026-01-03 15:46:14'),('c1066209-baf8-466b-8d34-44fc50ade141','english','13af5e93-92b9-4a3b-afa4-e2a2a710039e',1,'digital-marketing-strategist-english',NULL,'2025-11-24 00:00:00',NULL,'careers','career','{\"title\": \"Digital Marketing Strategist English\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"content\": \"<h4>📌 Deskripsi Pekerjaan</h4><p>Posisi ini berfokus pada penyusunan strategi digital untuk meningkatkan <em>brand awareness</em> dan konversi.</p><h4>📊 Tugas Harian</h4><ul><li><p>Menyusun dan mengeksekusi <strong>campaign digital</strong></p></li><li><p>Membuat konten dan copywriting untuk berbagai platform</p></li><li><p>Menganalisis performa kampanye menggunakan <em>analytics tools</em></p></li></ul><h4>⭐ Keunggulan Kandidat</h4><ul><li><p>Menguasai <strong>SEO &amp; SEM</strong></p></li><li><p>Terbiasa bekerja dengan target yang terukur</p></li><li><p>Mampu membuat laporan performa dengan gaya presentasi yang <em>profesional</em></p></li></ul>\", \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"career_location\": [\"semarang\"], \"career_categories\": [\"full-time\", \"freelance\"], \"career_department\": [\"management\"], \"__localized_fields\": [\"title\"]}','2026-01-03 15:45:10','2026-01-03 15:45:51'),('d9e22dc2-baaa-4c7c-bf5a-7617b2191559','english','55edc895-26e9-4f75-a659-c9b60a17c43f',1,'pixelforge-studio-english',NULL,'2025-11-24 00:00:00',NULL,'products','product','{\"title\": \"PixelForge Studio English\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"content\": \"<p>🎨 Tentang Produk</p><p>PixelForge Studio merupakan aplikasi editing grafis <strong>all-in-one</strong> dengan fitur yang cocok untuk desainer pemula hingga profesional.</p><p>🎛️ Tools Utama</p><ul><li><p><em>Layer-based editor</em> lengkap</p></li><li><p>Template desain siap pakai</p></li><li><p><strong>Advanced color grading</strong></p></li></ul><p>🧩 Alasan Memilih PixelForge</p><ul><li><p>Ringan dan <em>fast rendering</em></p></li><li><p>Kompatibel dengan berbagai format</p></li><li><p>Didukung komunitas yang aktif</p></li></ul><h3></h3>\", \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"is_featured\": \"Yes\", \"featured_product\": \"fajriyan-uxifk8sbsbw-unsplash.jpg\", \"__localized_fields\": [\"title\"], \"product_categories\": [\"tools\"]}','2026-01-03 15:46:55','2026-01-03 15:46:58'),('f2a1fd5c-aa6d-4d47-b359-6fb91d796b53','indonesia',NULL,1,'cloudguard-secure',NULL,'2025-11-24 00:00:00',NULL,'products','product','{\"title\": \"CloudGuard Secure\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"content\": \"<p>🔐 Deskripsi</p><p>CloudGuard Secure adalah layanan <strong>keamanan cloud</strong> yang memberikan perlindungan menyeluruh untuk aplikasi modern.</p><p>🛡️ Fitur</p><ul><li><p><em>Real-time threat detection</em></p></li><li><p><strong>Firewall berbasis AI</strong></p></li><li><p>Pemindaian kerentanan otomatis</p></li></ul><p>🚀 Kelebihan Produk</p><ul><li><p>Skalabilitas tanpa batas</p></li><li><p>Dashboard monitoring yang <em>intuitif</em></p></li><li><p>Laporan keamanan terperinci</p></li></ul>\", \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"is_featured\": \"No\", \"featured_product\": \"fajriyan-slc1u_zxqj8-unsplash.jpg\", \"product_categories\": [\"electronics\"]}','2025-11-24 15:02:25','2025-11-24 15:02:25');
/*!40000 ALTER TABLE `entries` ENABLE KEYS */;
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
-- Table structure for table `fieldsets`
--

DROP TABLE IF EXISTS `fieldsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fieldsets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fieldsets_handle_unique` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldsets`
--

LOCK TABLES `fieldsets` WRITE;
/*!40000 ALTER TABLE `fieldsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `fieldsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_submissions`
--

DROP TABLE IF EXISTS `form_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form_submissions` (
  `id` decimal(14,4) NOT NULL,
  `form` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `form_submissions_id_unique` (`id`),
  UNIQUE KEY `form_submissions_form_created_at_unique` (`form`,`created_at`),
  KEY `form_submissions_form_index` (`form`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_submissions`
--

LOCK TABLES `form_submissions` WRITE;
/*!40000 ALTER TABLE `form_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `forms_handle_unique` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms`
--

LOCK TABLES `forms` WRITE;
/*!40000 ALTER TABLE `forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_set_variables`
--

DROP TABLE IF EXISTS `global_set_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_set_variables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `global_set_variables_handle_index` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_set_variables`
--

LOCK TABLES `global_set_variables` WRITE;
/*!40000 ALTER TABLE `global_set_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `global_set_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_sets`
--

DROP TABLE IF EXISTS `global_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `global_sets_handle_unique` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_sets`
--

LOCK TABLES `global_sets` WRITE;
/*!40000 ALTER TABLE `global_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `global_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_03_07_100000_create_asset_containers_table',2),(5,'2024_03_07_100000_create_asset_table',3),(6,'2024_03_07_100000_create_blueprints_table',4),(7,'2024_03_07_100000_create_collections_table',5),(8,'2024_03_07_100000_create_navigation_trees_table',6),(9,'2024_03_07_100000_create_entries_table_with_string_ids',7),(10,'2024_03_07_100000_create_fieldsets_table',8),(11,'2024_03_07_100000_create_forms_table',9),(12,'2024_03_07_100000_create_form_submissions_table',10),(13,'2024_05_15_100000_modify_form_submissions_id',10),(14,'2024_03_07_100000_create_globals_table',11),(15,'2024_03_07_100000_create_global_variables_table',12),(16,'2024_03_07_100000_create_navigations_table',13),(17,'2024_07_16_100000_create_sites_table',14),(18,'2024_03_07_100000_create_taxonomies_table',15),(19,'2024_03_07_100000_create_terms_table',16),(20,'2024_03_07_100000_create_tokens_table',17);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigations`
--

DROP TABLE IF EXISTS `navigations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navigations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `navigations_handle_unique` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigations`
--

LOCK TABLES `navigations` WRITE;
/*!40000 ALTER TABLE `navigations` DISABLE KEYS */;
/*!40000 ALTER TABLE `navigations` ENABLE KEYS */;
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
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sites` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributes` json NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sites_handle_unique` (`handle`),
  KEY `sites_order_index` (`order`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (2,'indonesia','Indonesia','/','{{ config:app:locale }}','{{ config:app:locale }}','[]',1,'2025-11-24 14:48:22','2025-11-24 14:49:26'),(3,'english','English','/en','en','en','[]',2,'2025-11-24 14:49:26','2025-11-24 14:49:26');
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomies`
--

DROP TABLE IF EXISTS `taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sites` json DEFAULT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taxonomies_handle_unique` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomies`
--

LOCK TABLES `taxonomies` WRITE;
/*!40000 ALTER TABLE `taxonomies` DISABLE KEYS */;
INSERT INTO `taxonomies` VALUES (1,'career_location','Career Location','[\"indonesia\"]','{\"inject\": [], \"layout\": null, \"template\": null, \"revisions\": false, \"term_template\": null, \"preview_targets\": [{\"label\": \"Term\", \"format\": \"{permalink}\", \"refresh\": true}]}','2025-11-24 14:38:50','2025-11-24 14:38:50'),(2,'career_categories','Career Categories','[\"indonesia\"]','{\"inject\": [], \"layout\": null, \"template\": null, \"revisions\": false, \"term_template\": null, \"preview_targets\": [{\"label\": \"Term\", \"format\": \"{permalink}\", \"refresh\": true}]}','2025-11-24 14:39:17','2025-11-24 14:39:17'),(3,'career_department','Career Department','[\"indonesia\"]','{\"inject\": [], \"layout\": null, \"template\": null, \"revisions\": false, \"term_template\": null, \"preview_targets\": [{\"label\": \"Term\", \"format\": \"{permalink}\", \"refresh\": true}]}','2025-11-24 14:39:51','2025-11-24 14:39:51'),(4,'product_categories','Product Categories','[\"indonesia\"]','{\"inject\": [], \"layout\": null, \"template\": null, \"revisions\": false, \"term_template\": null, \"preview_targets\": [{\"label\": \"Term\", \"format\": \"{permalink}\", \"refresh\": true}]}','2025-11-24 14:40:12','2025-11-24 14:40:12');
/*!40000 ALTER TABLE `taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy_terms`
--

DROP TABLE IF EXISTS `taxonomy_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy_terms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `site` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxonomy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taxonomy_terms_slug_taxonomy_site_unique` (`slug`,`taxonomy`,`site`),
  KEY `taxonomy_terms_site_index` (`site`),
  KEY `taxonomy_terms_uri_index` (`uri`),
  KEY `taxonomy_terms_taxonomy_index` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy_terms`
--

LOCK TABLES `taxonomy_terms` WRITE;
/*!40000 ALTER TABLE `taxonomy_terms` DISABLE KEYS */;
INSERT INTO `taxonomy_terms` VALUES (1,'indonesia','electronics','/product-categories/electronics','product_categories','{\"title\": \"Electronics\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"blueprint\": \"product_category\", \"updated_at\": 1764020448, \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\"}','2025-11-24 14:40:48','2025-11-24 14:40:48'),(2,'indonesia','tools','/product-categories/tools','product_categories','{\"title\": \"Tools\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"blueprint\": \"product_category\", \"updated_at\": 1764020475, \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\"}','2025-11-24 14:41:15','2025-11-24 14:41:15'),(3,'indonesia','local-brand','/product-categories/local-brand','product_categories','{\"title\": \"Local Brand\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"blueprint\": \"product_category\", \"updated_at\": 1764020481, \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\"}','2025-11-24 14:41:21','2025-11-24 14:41:21'),(4,'indonesia','health-care','/product-categories/health-care','product_categories','{\"title\": \"Health Care\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"blueprint\": \"product_category\", \"updated_at\": 1764020523, \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\"}','2025-11-24 14:42:03','2025-11-24 14:42:03'),(5,'indonesia','education','/product-categories/education','product_categories','{\"title\": \"Education\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"blueprint\": \"product_category\", \"updated_at\": 1764020565, \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\"}','2025-11-24 14:42:45','2025-11-24 14:42:45'),(6,'indonesia','kitchen','/product-categories/kitchen','product_categories','{\"title\": \"Kitchen\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"blueprint\": \"product_category\", \"updated_at\": 1764020589, \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\"}','2025-11-24 14:43:09','2025-11-24 14:43:09'),(7,'indonesia','malang','/career-location/malang','career_location','{\"title\": \"Malang\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"blueprint\": \"career_location\", \"updated_at\": 1764020599, \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\"}','2025-11-24 14:43:19','2025-11-24 14:43:19'),(8,'indonesia','surabaya','/career-location/surabaya','career_location','{\"title\": \"Surabaya\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"blueprint\": \"career_location\", \"updated_at\": 1764020603, \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\"}','2025-11-24 14:43:23','2025-11-24 14:43:23'),(9,'indonesia','jakarta','/career-location/jakarta','career_location','{\"title\": \"Jakarta\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"blueprint\": \"career_location\", \"updated_at\": 1764020607, \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\"}','2025-11-24 14:43:27','2025-11-24 14:43:27'),(10,'indonesia','lamongan','/career-location/lamongan','career_location','{\"title\": \"Lamongan\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"blueprint\": \"career_location\", \"updated_at\": 1764020611, \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\"}','2025-11-24 14:43:31','2025-11-24 14:43:31'),(11,'indonesia','semarang','/career-location/semarang','career_location','{\"title\": \"Semarang\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"blueprint\": \"career_location\", \"updated_at\": 1764020624, \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\"}','2025-11-24 14:43:44','2025-11-24 14:43:44'),(12,'indonesia','gresik','/career-location/gresik','career_location','{\"title\": \"Gresik\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"blueprint\": \"career_location\", \"updated_at\": 1764020637, \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\"}','2025-11-24 14:43:57','2025-11-24 14:43:57'),(13,'indonesia','pasuruan','/career-location/pasuruan','career_location','{\"title\": \"Pasuruan\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"blueprint\": \"career_location\", \"updated_at\": 1764020648, \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\"}','2025-11-24 14:44:08','2025-11-24 14:44:08'),(14,'indonesia','it-production','/career-department/it-production','career_department','{\"title\": \"IT Production\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"blueprint\": \"career_department\", \"updated_at\": 1764020669, \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\"}','2025-11-24 14:44:29','2025-11-24 14:44:29'),(15,'indonesia','management','/career-department/management','career_department','{\"title\": \"Management\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"blueprint\": \"career_department\", \"updated_at\": 1764020676, \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\"}','2025-11-24 14:44:36','2025-11-24 14:44:36'),(16,'indonesia','rnd','/career-department/rnd','career_department','{\"title\": \"RnD\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"blueprint\": \"career_department\", \"updated_at\": 1764020688, \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\"}','2025-11-24 14:44:48','2025-11-24 14:44:48'),(17,'indonesia','hr','/career-department/hr','career_department','{\"title\": \"HR\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"blueprint\": \"career_department\", \"updated_at\": 1764020698, \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\"}','2025-11-24 14:44:58','2025-11-24 14:44:58'),(18,'indonesia','frontend-developer','/career-department/frontend-developer','career_department','{\"title\": \"Frontend Developer\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"blueprint\": \"career_department\", \"updated_at\": 1764020722, \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\"}','2025-11-24 14:45:22','2025-11-24 14:45:22'),(19,'indonesia','full-time','/career-categories/full-time','career_categories','{\"title\": \"Full Time\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"blueprint\": \"career_category\", \"updated_at\": 1764020755, \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\"}','2025-11-24 14:45:55','2025-11-24 14:45:55'),(20,'indonesia','part-time','/career-categories/part-time','career_categories','{\"title\": \"Part Time\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"blueprint\": \"career_category\", \"updated_at\": 1764020760, \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\"}','2025-11-24 14:46:00','2025-11-24 14:46:00'),(21,'indonesia','internship','/career-categories/internship','career_categories','{\"title\": \"Internship\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"blueprint\": \"career_category\", \"updated_at\": 1764020770, \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\"}','2025-11-24 14:46:10','2025-11-24 14:46:10'),(22,'indonesia','freelance','/career-categories/freelance','career_categories','{\"title\": \"Freelance\", \"author\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\", \"blueprint\": \"career_category\", \"updated_at\": 1764020777, \"updated_by\": \"89c6ef79-a64d-428d-842d-a29f3c97eabd\"}','2025-11-24 14:46:17','2025-11-24 14:46:17');
/*!40000 ALTER TABLE `taxonomy_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handler` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `expire_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokens_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trees`
--

DROP TABLE IF EXISTS `trees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tree` json DEFAULT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trees_handle_type_locale_unique` (`handle`,`type`,`locale`),
  KEY `trees_type_index` (`type`),
  KEY `trees_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trees`
--

LOCK TABLES `trees` WRITE;
/*!40000 ALTER TABLE `trees` DISABLE KEYS */;
INSERT INTO `trees` VALUES (1,'pages','collection','default','[{\"entry\": \"home\"}]','[]','2025-11-12 04:04:09','2025-11-12 04:04:09'),(2,'pages','collection','indonesia','[{\"entry\": \"690994a2-477b-4369-a273-554baa8b2261\"}, {\"entry\": \"home\"}]','[]','2025-11-24 14:48:22','2026-01-03 15:33:02'),(3,'pages','collection','english','[{\"entry\": \"3a34a369-2de1-4e76-8161-14dd3500ea4d\"}]','[]','2026-01-03 15:44:35','2026-01-03 15:44:35');
/*!40000 ALTER TABLE `trees` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'statamic5_headless'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-04  5:49:35

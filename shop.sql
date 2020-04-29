-- MySQL dump 10.13  Distrib 5.7.26, for Win64 (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	5.7.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mall_admin_menu`
--

DROP TABLE IF EXISTS `mall_admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_admin_menu`
--

LOCK TABLES `mall_admin_menu` WRITE;
/*!40000 ALTER TABLE `mall_admin_menu` DISABLE KEYS */;
INSERT INTO `mall_admin_menu` VALUES (1,2,1,'系统环境','fa-bar-chart','/',NULL,NULL,'2020-04-25 00:56:58'),(2,0,2,'系统设置','fa-tasks',NULL,NULL,NULL,'2020-04-11 15:26:56'),(3,2,3,'后台用户管理','fa-users','auth/users',NULL,NULL,NULL),(4,2,4,'后台角色管理','fa-user','auth/roles',NULL,NULL,NULL),(5,2,5,'后台权限管理','fa-ban','auth/permissions',NULL,NULL,NULL),(6,2,6,'后台菜单管理','fa-bars','auth/menu',NULL,NULL,NULL),(7,2,7,'操作日志','fa-history','auth/logs',NULL,NULL,NULL),(8,0,0,'会员管理','fa-user-md',NULL,NULL,'2020-04-11 15:32:03','2020-04-11 15:33:17'),(9,8,0,'会员列表','fa-list','wx/users',NULL,'2020-04-11 15:35:52','2020-04-11 15:35:52'),(10,8,0,'等级设置','fa-eraser','wx/levels',NULL,'2020-04-11 15:47:24','2020-04-11 15:47:24'),(11,8,0,'绩效管理','fa-archive','wx/commission',NULL,'2020-04-11 15:50:33','2020-04-11 15:50:33'),(12,0,0,'订单管理','fa-stack-overflow',NULL,NULL,'2020-04-11 15:52:44','2020-04-11 15:52:44'),(13,12,0,'订单列表','fa-list','wx/orders',NULL,'2020-04-11 15:53:19','2020-04-11 15:53:19'),(14,0,0,'商品管理','fa-product-hunt',NULL,NULL,'2020-04-11 15:54:49','2020-04-11 15:54:49'),(15,14,0,'商品列表','fa-list','wx/goods',NULL,'2020-04-11 15:55:25','2020-04-11 15:55:25'),(16,0,0,'广告管理','fa-tripadvisor',NULL,NULL,'2020-04-11 15:56:19','2020-04-11 15:56:19'),(17,16,0,'广告列表','fa-list','wx/advertises',NULL,'2020-04-11 15:56:47','2020-04-13 05:57:55'),(18,0,0,'评论管理','fa-commenting',NULL,NULL,'2020-04-11 15:57:35','2020-04-11 15:57:35'),(19,18,0,'评论列表','fa-list','wx/reply',NULL,'2020-04-11 15:58:07','2020-04-11 15:58:07'),(20,14,0,'规格设置','fa-cogs','specifications',NULL,'2020-04-13 05:25:16','2020-04-13 05:25:16'),(21,14,0,'分类管理','fa-object-ungroup','wx/categories',NULL,'2020-04-13 05:26:41','2020-04-14 22:39:41');
/*!40000 ALTER TABLE `mall_admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_admin_operation_log`
--

DROP TABLE IF EXISTS `mall_admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mall_admin_operation_log_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=781 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_admin_operation_log`
--

LOCK TABLES `mall_admin_operation_log` WRITE;
/*!40000 ALTER TABLE `mall_admin_operation_log` DISABLE KEYS */;
INSERT INTO `mall_admin_operation_log` VALUES (1,1,'admin','GET','127.0.0.1','[]','2020-04-11 15:14:50','2020-04-11 15:14:50'),(2,1,'admin','GET','127.0.0.1','[]','2020-04-11 15:26:17','2020-04-11 15:26:17'),(3,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-11 15:26:31','2020-04-11 15:26:31'),(4,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-11 15:26:35','2020-04-11 15:26:35'),(5,1,'admin/auth/menu/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-11 15:26:45','2020-04-11 15:26:45'),(6,1,'admin/auth/menu/2','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u8bbe\\u7f6e\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"UXMFE5nz0tQAqWJpiNepIZoIiLJFZNDeya2BZXxm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/auth\\/menu\"}','2020-04-11 15:26:55','2020-04-11 15:26:55'),(7,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-11 15:26:56','2020-04-11 15:26:56'),(8,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-11 15:29:04','2020-04-11 15:29:04'),(9,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u4f1a\\u5458\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"UXMFE5nz0tQAqWJpiNepIZoIiLJFZNDeya2BZXxm\"}','2020-04-11 15:32:03','2020-04-11 15:32:03'),(10,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-11 15:32:03','2020-04-11 15:32:03'),(11,1,'admin/auth/menu/8/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-11 15:32:10','2020-04-11 15:32:10'),(12,1,'admin/auth/menu/8','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u4f1a\\u5458\\u7ba1\\u7406\",\"icon\":\"fa-user-md\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"UXMFE5nz0tQAqWJpiNepIZoIiLJFZNDeya2BZXxm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/auth\\/menu\"}','2020-04-11 15:33:17','2020-04-11 15:33:17'),(13,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-11 15:33:17','2020-04-11 15:33:17'),(14,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"8\",\"title\":\"\\u4f1a\\u5458\\u5217\\u8868\",\"icon\":\"fa-list\",\"uri\":\"wx\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"UXMFE5nz0tQAqWJpiNepIZoIiLJFZNDeya2BZXxm\"}','2020-04-11 15:35:52','2020-04-11 15:35:52'),(15,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-11 15:35:52','2020-04-11 15:35:52'),(16,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"8\",\"title\":\"\\u7b49\\u7ea7\\u8bbe\\u7f6e\",\"icon\":\"fa-eraser\",\"uri\":\"wx\\/levels\",\"roles\":[null],\"permission\":null,\"_token\":\"UXMFE5nz0tQAqWJpiNepIZoIiLJFZNDeya2BZXxm\"}','2020-04-11 15:47:24','2020-04-11 15:47:24'),(17,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-11 15:47:24','2020-04-11 15:47:24'),(18,1,'admin/auth/menu/8/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-11 15:47:36','2020-04-11 15:47:36'),(19,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-11 15:47:38','2020-04-11 15:47:38'),(20,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"8\",\"title\":\"\\u7ee9\\u6548\\u7ba1\\u7406\",\"icon\":\"fa-archive\",\"uri\":\"wx\\/commission\",\"roles\":[null],\"permission\":null,\"_token\":\"UXMFE5nz0tQAqWJpiNepIZoIiLJFZNDeya2BZXxm\"}','2020-04-11 15:50:33','2020-04-11 15:50:33'),(21,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-11 15:50:33','2020-04-11 15:50:33'),(22,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u8ba2\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-stack-overflow\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"UXMFE5nz0tQAqWJpiNepIZoIiLJFZNDeya2BZXxm\"}','2020-04-11 15:52:44','2020-04-11 15:52:44'),(23,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-11 15:52:44','2020-04-11 15:52:44'),(24,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"12\",\"title\":\"\\u8ba2\\u5355\\u5217\\u8868\",\"icon\":\"fa-list\",\"uri\":\"wx\\/orders\",\"roles\":[null],\"permission\":null,\"_token\":\"UXMFE5nz0tQAqWJpiNepIZoIiLJFZNDeya2BZXxm\"}','2020-04-11 15:53:19','2020-04-11 15:53:19'),(25,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-11 15:53:19','2020-04-11 15:53:19'),(26,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"icon\":\"fa-product-hunt\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"UXMFE5nz0tQAqWJpiNepIZoIiLJFZNDeya2BZXxm\"}','2020-04-11 15:54:49','2020-04-11 15:54:49'),(27,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-11 15:54:49','2020-04-11 15:54:49'),(28,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"14\",\"title\":\"\\u5546\\u54c1\\u5217\\u8868\",\"icon\":\"fa-list\",\"uri\":\"wx\\/goods\",\"roles\":[null],\"permission\":null,\"_token\":\"UXMFE5nz0tQAqWJpiNepIZoIiLJFZNDeya2BZXxm\"}','2020-04-11 15:55:25','2020-04-11 15:55:25'),(29,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-11 15:55:25','2020-04-11 15:55:25'),(30,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u5e7f\\u544a\\u7ba1\\u7406\",\"icon\":\"fa-tripadvisor\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"UXMFE5nz0tQAqWJpiNepIZoIiLJFZNDeya2BZXxm\"}','2020-04-11 15:56:19','2020-04-11 15:56:19'),(31,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-11 15:56:20','2020-04-11 15:56:20'),(32,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"16\",\"title\":\"\\u5e7f\\u544a\\u5217\\u8868\",\"icon\":\"fa-list\",\"uri\":\"wx\\/ad\",\"roles\":[null],\"permission\":null,\"_token\":\"UXMFE5nz0tQAqWJpiNepIZoIiLJFZNDeya2BZXxm\"}','2020-04-11 15:56:47','2020-04-11 15:56:47'),(33,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-11 15:56:47','2020-04-11 15:56:47'),(34,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u8bc4\\u8bba\\u7ba1\\u7406\",\"icon\":\"fa-commenting\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"UXMFE5nz0tQAqWJpiNepIZoIiLJFZNDeya2BZXxm\"}','2020-04-11 15:57:35','2020-04-11 15:57:35'),(35,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-11 15:57:35','2020-04-11 15:57:35'),(36,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"18\",\"title\":\"\\u8bc4\\u8bba\\u5217\\u8868\",\"icon\":\"fa-list\",\"uri\":\"wx\\/reply\",\"roles\":[null],\"permission\":null,\"_token\":\"UXMFE5nz0tQAqWJpiNepIZoIiLJFZNDeya2BZXxm\"}','2020-04-11 15:58:07','2020-04-11 15:58:07'),(37,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-11 15:58:07','2020-04-11 15:58:07'),(38,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-11 16:00:18','2020-04-11 16:00:18'),(39,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-11 16:23:26','2020-04-11 16:23:26'),(40,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-11 16:55:16','2020-04-11 16:55:16'),(41,1,'admin/wx/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-11 16:55:28','2020-04-11 16:55:28'),(42,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-11 17:42:30','2020-04-11 17:42:30'),(43,1,'admin/wx/users','GET','127.0.0.1','[]','2020-04-11 17:42:43','2020-04-11 17:42:43'),(44,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-11 17:42:59','2020-04-11 17:42:59'),(45,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-11 18:03:10','2020-04-11 18:03:10'),(46,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-11 18:05:22','2020-04-11 18:05:22'),(47,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-11 18:06:19','2020-04-11 18:06:19'),(48,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 04:27:30','2020-04-12 04:27:30'),(49,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-12 04:27:49','2020-04-12 04:27:49'),(50,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-12 04:28:03','2020-04-12 04:28:03'),(51,1,'admin/wx/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 04:28:14','2020-04-12 04:28:14'),(52,1,'admin/wx/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 04:29:27','2020-04-12 04:29:27'),(53,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 04:32:37','2020-04-12 04:32:37'),(54,1,'admin/wx/users','GET','127.0.0.1','[]','2020-04-12 04:32:38','2020-04-12 04:32:38'),(55,1,'admin/wx/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 04:34:34','2020-04-12 04:34:34'),(56,1,'admin/wx/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 05:15:00','2020-04-12 05:15:00'),(57,1,'admin/wx/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 05:15:06','2020-04-12 05:15:06'),(58,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 05:15:08','2020-04-12 05:15:08'),(59,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 05:19:21','2020-04-12 05:19:21'),(60,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 05:19:29','2020-04-12 05:19:29'),(61,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 05:19:47','2020-04-12 05:19:47'),(62,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 05:20:21','2020-04-12 05:20:21'),(63,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-12 05:23:03','2020-04-12 05:23:03'),(64,1,'admin/wx/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 05:26:42','2020-04-12 05:26:42'),(65,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 05:26:44','2020-04-12 05:26:44'),(66,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 05:27:52','2020-04-12 05:27:52'),(67,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 05:28:23','2020-04-12 05:28:23'),(68,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-12 05:28:24','2020-04-12 05:28:24'),(69,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:00:25','2020-04-12 06:00:25'),(70,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:00:58','2020-04-12 06:00:58'),(71,1,'admin/wx/levels/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:01:19','2020-04-12 06:01:19'),(72,1,'admin/wx/levels/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:06:57','2020-04-12 06:06:57'),(73,1,'admin/wx/levels/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:10:24','2020-04-12 06:10:24'),(74,1,'admin/wx/levels/1','PUT','127.0.0.1','{\"type\":\"1\",\"gender\":\"2\",\"_token\":\"Bze7rqeUaz2Jjyp0dnpBQyDklrmhgja0xJQpyqxW\",\"_method\":\"PUT\"}','2020-04-12 06:10:52','2020-04-12 06:10:52'),(75,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-12 06:10:52','2020-04-12 06:10:52'),(76,1,'admin/wx/levels/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:11:51','2020-04-12 06:11:51'),(77,1,'admin/wx/levels/1','PUT','127.0.0.1','{\"type\":\"0\",\"gender\":\"2\",\"_token\":\"Bze7rqeUaz2Jjyp0dnpBQyDklrmhgja0xJQpyqxW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/wx\\/levels\"}','2020-04-12 06:12:56','2020-04-12 06:12:56'),(78,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-12 06:12:56','2020-04-12 06:12:56'),(79,1,'admin/wx/levels/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:15:12','2020-04-12 06:15:12'),(80,1,'admin/wx/levels/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:20:47','2020-04-12 06:20:47'),(81,1,'admin/wx/levels/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:21:23','2020-04-12 06:21:23'),(82,1,'admin/wx/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:28:42','2020-04-12 06:28:42'),(83,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:28:48','2020-04-12 06:28:48'),(84,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-12 06:30:33','2020-04-12 06:30:33'),(85,1,'admin/wx/levels/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:30:53','2020-04-12 06:30:53'),(86,1,'admin/wx/levels/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:30:58','2020-04-12 06:30:58'),(87,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:31:03','2020-04-12 06:31:03'),(88,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:31:04','2020-04-12 06:31:04'),(89,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:31:06','2020-04-12 06:31:06'),(90,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:31:07','2020-04-12 06:31:07'),(91,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:31:09','2020-04-12 06:31:09'),(92,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:31:10','2020-04-12 06:31:10'),(93,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:31:12','2020-04-12 06:31:12'),(94,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:31:13','2020-04-12 06:31:13'),(95,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:31:15','2020-04-12 06:31:15'),(96,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:31:17','2020-04-12 06:31:17'),(97,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:31:18','2020-04-12 06:31:18'),(98,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:31:20','2020-04-12 06:31:20'),(99,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:31:21','2020-04-12 06:31:21'),(100,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:31:23','2020-04-12 06:31:23'),(101,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:31:24','2020-04-12 06:31:24'),(102,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:31:26','2020-04-12 06:31:26'),(103,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:31:27','2020-04-12 06:31:27'),(104,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:31:28','2020-04-12 06:31:28'),(105,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:31:30','2020-04-12 06:31:30'),(106,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:31:31','2020-04-12 06:31:31'),(107,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:31:33','2020-04-12 06:31:33'),(108,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:32:10','2020-04-12 06:32:10'),(109,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:34:56','2020-04-12 06:34:56'),(110,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:34:59','2020-04-12 06:34:59'),(111,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-12 06:36:45','2020-04-12 06:36:45'),(112,1,'admin/wx/levels/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:37:25','2020-04-12 06:37:25'),(113,1,'admin/wx/levels/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:37:30','2020-04-12 06:37:30'),(114,1,'admin/wx/levels/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:37:40','2020-04-12 06:37:40'),(115,1,'admin/wx/levels/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:38:40','2020-04-12 06:38:40'),(116,1,'admin/wx/levels/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:38:54','2020-04-12 06:38:54'),(117,1,'admin/wx/levels/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:39:23','2020-04-12 06:39:23'),(118,1,'admin/wx/levels/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:39:43','2020-04-12 06:39:43'),(119,1,'admin/wx/levels/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:43:05','2020-04-12 06:43:05'),(120,1,'admin/wx/levels/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:43:34','2020-04-12 06:43:34'),(121,1,'admin/wx/levels/1','PUT','127.0.0.1','{\"type\":\"1\",\"gender\":\"2\",\"_token\":\"Bze7rqeUaz2Jjyp0dnpBQyDklrmhgja0xJQpyqxW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/wx\\/levels\\/1\"}','2020-04-12 06:43:39','2020-04-12 06:43:39'),(122,1,'admin/wx/levels/1','GET','127.0.0.1','[]','2020-04-12 06:43:39','2020-04-12 06:43:39'),(123,1,'admin/wx/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:43:52','2020-04-12 06:43:52'),(124,1,'admin/wx/users/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-12 06:43:58','2020-04-12 06:43:58'),(125,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-13 04:42:07','2020-04-13 04:42:07'),(126,1,'admin/wx/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 04:42:16','2020-04-13 04:42:16'),(127,1,'admin/wx/users/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 04:42:30','2020-04-13 04:42:30'),(128,1,'admin/wx/users/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 04:43:55','2020-04-13 04:43:55'),(129,1,'admin/wx/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 04:44:05','2020-04-13 04:44:05'),(130,1,'admin/wx/users/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 04:44:10','2020-04-13 04:44:10'),(131,1,'admin/wx/users/1','PUT','127.0.0.1','{\"name\":\"Ressie Denesik III\",\"phone\":\"13765096763\",\"password\":\"$2y$10$Qy6LqqliPqS0GW\\/TGiPAu.I.xv5rLtbyQIXgItAd0NxThtlnQTXM2\",\"remember_token\":null,\"_token\":\"hCny3pON7d0krKFQpPHqcFTquv8nD0Aij57ZRxYF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/wx\\/users\"}','2020-04-13 04:44:59','2020-04-13 04:44:59'),(132,1,'admin/wx/users','GET','127.0.0.1','[]','2020-04-13 04:44:59','2020-04-13 04:44:59'),(133,1,'admin/wx/users/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 04:45:38','2020-04-13 04:45:38'),(134,1,'admin/wx/users/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 04:45:51','2020-04-13 04:45:51'),(135,1,'admin/wx/users/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 04:49:06','2020-04-13 04:49:06'),(136,1,'admin/wx/users/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 04:52:17','2020-04-13 04:52:17'),(137,1,'admin/wx/users/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 04:53:45','2020-04-13 04:53:45'),(138,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 05:02:19','2020-04-13 05:02:19'),(139,1,'admin/auth/users/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 05:02:26','2020-04-13 05:02:26'),(140,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 05:03:00','2020-04-13 05:03:00'),(141,1,'admin/wx/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 05:03:07','2020-04-13 05:03:07'),(142,1,'admin/wx/users/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 05:03:13','2020-04-13 05:03:13'),(143,1,'admin/wx/users/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 05:07:17','2020-04-13 05:07:17'),(144,1,'admin/wx/users/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 05:15:00','2020-04-13 05:15:00'),(145,1,'admin/wx/users/1','PUT','127.0.0.1','{\"name\":\"Ressie Denesik\",\"phone\":\"13765096763\",\"password\":null,\"_token\":\"hCny3pON7d0krKFQpPHqcFTquv8nD0Aij57ZRxYF\",\"_method\":\"PUT\"}','2020-04-13 05:16:04','2020-04-13 05:16:04'),(146,1,'admin/wx/users','GET','127.0.0.1','[]','2020-04-13 05:16:04','2020-04-13 05:16:04'),(147,1,'admin/wx/users/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 05:16:15','2020-04-13 05:16:15'),(148,1,'admin/wx/users/1','PUT','127.0.0.1','{\"name\":\"Ressie Denesik\",\"phone\":\"13765096763\",\"password\":\"112233\",\"_token\":\"hCny3pON7d0krKFQpPHqcFTquv8nD0Aij57ZRxYF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/wx\\/users\"}','2020-04-13 05:16:29','2020-04-13 05:16:29'),(149,1,'admin/wx/users','GET','127.0.0.1','[]','2020-04-13 05:16:29','2020-04-13 05:16:29'),(150,1,'admin/wx/users/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 05:19:22','2020-04-13 05:19:22'),(151,1,'admin/wx/users/1','PUT','127.0.0.1','{\"name\":\"Ressie Denesik\",\"phone\":\"13765096763\",\"password\":\"112233\",\"_token\":\"hCny3pON7d0krKFQpPHqcFTquv8nD0Aij57ZRxYF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/wx\\/users\"}','2020-04-13 05:19:32','2020-04-13 05:19:32'),(152,1,'admin/wx/users','GET','127.0.0.1','[]','2020-04-13 05:19:32','2020-04-13 05:19:32'),(153,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-13 05:21:28','2020-04-13 05:21:28'),(154,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 05:23:01','2020-04-13 05:23:01'),(155,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"14\",\"title\":\"\\u89c4\\u683c\\u8bbe\\u7f6e\",\"icon\":\"fa-cogs\",\"uri\":\"specifications\",\"roles\":[null],\"permission\":null,\"_token\":\"hCny3pON7d0krKFQpPHqcFTquv8nD0Aij57ZRxYF\"}','2020-04-13 05:25:16','2020-04-13 05:25:16'),(156,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-13 05:25:17','2020-04-13 05:25:17'),(157,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"14\",\"title\":\"\\u4ea7\\u54c1\\u7ba1\\u7406\",\"icon\":\"fa-pied-piper-pp\",\"uri\":\"products\",\"roles\":[null],\"permission\":null,\"_token\":\"hCny3pON7d0krKFQpPHqcFTquv8nD0Aij57ZRxYF\"}','2020-04-13 05:26:41','2020-04-13 05:26:41'),(158,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-13 05:26:41','2020-04-13 05:26:41'),(159,1,'admin/wx/users/1/edit','GET','127.0.0.1','[]','2020-04-13 05:56:55','2020-04-13 05:56:55'),(160,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 05:57:40','2020-04-13 05:57:40'),(161,1,'admin/auth/menu/17/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 05:57:45','2020-04-13 05:57:45'),(162,1,'admin/auth/menu/17','PUT','127.0.0.1','{\"parent_id\":\"16\",\"title\":\"\\u5e7f\\u544a\\u5217\\u8868\",\"icon\":\"fa-list\",\"uri\":\"wx\\/advertises\",\"roles\":[null],\"permission\":null,\"_token\":\"hCny3pON7d0krKFQpPHqcFTquv8nD0Aij57ZRxYF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/auth\\/menu\"}','2020-04-13 05:57:55','2020-04-13 05:57:55'),(163,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-13 05:57:55','2020-04-13 05:57:55'),(164,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-13 05:58:05','2020-04-13 05:58:05'),(165,1,'admin/wx/advertises','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 05:58:11','2020-04-13 05:58:11'),(166,1,'admin/wx/advertises/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 06:03:33','2020-04-13 06:03:33'),(167,1,'admin/wx/advertises','POST','127.0.0.1','{\"image\":\"\\u5e7f\\u544a1\",\"position\":\"112233\",\"_token\":\"hCny3pON7d0krKFQpPHqcFTquv8nD0Aij57ZRxYF\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/wx\\/advertises\"}','2020-04-13 06:04:05','2020-04-13 06:04:05'),(168,1,'admin/wx/advertises','GET','127.0.0.1','[]','2020-04-13 06:04:05','2020-04-13 06:04:05'),(169,1,'admin/wx/advertises','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 06:07:50','2020-04-13 06:07:50'),(170,1,'admin/wx/advertises/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 06:08:19','2020-04-13 06:08:19'),(171,1,'admin/wx/advertises/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 06:09:52','2020-04-13 06:09:52'),(172,1,'admin/wx/advertises/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 06:10:41','2020-04-13 06:10:41'),(173,1,'admin/wx/advertises','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 06:10:48','2020-04-13 06:10:48'),(174,1,'admin/wx/orders','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-13 06:11:13','2020-04-13 06:11:13'),(175,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-14 00:53:29','2020-04-14 00:53:29'),(176,1,'admin/wx/reply','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-14 00:55:23','2020-04-14 00:55:23'),(177,1,'admin/wx/reply','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-14 01:29:32','2020-04-14 01:29:32'),(178,1,'admin/wx/reply','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-14 01:38:43','2020-04-14 01:38:43'),(179,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-14 22:03:00','2020-04-14 22:03:00'),(180,1,'admin/auth/menu/21/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-14 22:37:44','2020-04-14 22:37:44'),(181,1,'admin/auth/menu/21','PUT','127.0.0.1','{\"parent_id\":\"14\",\"title\":\"\\u5206\\u7c7b\\u7ba1\\u7406\",\"icon\":\"fa-object-ungroup\",\"uri\":\"wx\\/categories\",\"roles\":[null],\"permission\":null,\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/auth\\/menu\"}','2020-04-14 22:39:41','2020-04-14 22:39:41'),(182,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-14 22:39:42','2020-04-14 22:39:42'),(183,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-14 22:40:45','2020-04-14 22:40:45'),(184,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-14 22:40:52','2020-04-14 22:40:52'),(185,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-14 22:56:49','2020-04-14 22:56:49'),(186,1,'admin/wx/categories/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-14 22:56:54','2020-04-14 22:56:54'),(187,1,'admin/wx/categories/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-14 23:05:20','2020-04-14 23:05:20'),(188,1,'admin/wx/categories/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-14 23:05:45','2020-04-14 23:05:45'),(189,1,'admin/wx/categories','POST','127.0.0.1','{\"name\":\"\\u53a8\\u5177\",\"parent_id\":null,\"level\":\"0\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\"}','2020-04-14 23:06:49','2020-04-14 23:06:49'),(190,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-14 23:06:50','2020-04-14 23:06:50'),(191,1,'admin/wx/categories/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-14 23:18:18','2020-04-14 23:18:18'),(192,1,'admin/wx/categories','POST','127.0.0.1','{\"name\":\"\\u53a8\\u5177\",\"parent_id\":null,\"level\":\"0\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/wx\\/categories\"}','2020-04-14 23:18:29','2020-04-14 23:18:29'),(193,1,'admin/wx/categories/create','GET','127.0.0.1','[]','2020-04-14 23:18:34','2020-04-14 23:18:34'),(194,1,'admin/wx/categories','POST','127.0.0.1','{\"name\":\"\\u53a8\\u5177\",\"parent_id\":null,\"level\":\"0\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\"}','2020-04-14 23:19:38','2020-04-14 23:19:38'),(195,1,'admin/wx/categories/create','GET','127.0.0.1','[]','2020-04-14 23:19:42','2020-04-14 23:19:42'),(196,1,'admin/wx/categories','POST','127.0.0.1','{\"name\":\"\\u53a8\\u5177\",\"parent_id\":null,\"level\":\"0\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\"}','2020-04-14 23:20:48','2020-04-14 23:20:48'),(197,1,'admin/wx/categories/create','GET','127.0.0.1','[]','2020-04-14 23:20:52','2020-04-14 23:20:52'),(198,1,'admin/wx/categories','POST','127.0.0.1','{\"name\":\"\\u53a8\\u5177\",\"parent_id\":null,\"level\":\"0\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\"}','2020-04-14 23:24:30','2020-04-14 23:24:30'),(199,1,'admin/wx/categories/create','GET','127.0.0.1','[]','2020-04-14 23:24:34','2020-04-14 23:24:34'),(200,1,'admin/wx/categories','POST','127.0.0.1','{\"name\":\"\\u53a8\\u5177\",\"parent_id\":null,\"level\":\"0\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\"}','2020-04-14 23:27:06','2020-04-14 23:27:06'),(201,1,'admin/wx/categories/create','GET','127.0.0.1','[]','2020-04-14 23:27:11','2020-04-14 23:27:11'),(202,1,'admin/wx/categories','POST','127.0.0.1','{\"name\":\"\\u53a8\\u5177\",\"parent_id\":null,\"level\":\"0\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\"}','2020-04-14 23:28:42','2020-04-14 23:28:42'),(203,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-14 23:28:43','2020-04-14 23:28:43'),(204,1,'admin/wx/categories/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-14 23:58:05','2020-04-14 23:58:05'),(205,1,'admin/wx/categories','POST','127.0.0.1','{\"name\":\"\\u84b8\\u9505\",\"parent_id\":\"1\",\"level\":\"0\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/wx\\/categories\"}','2020-04-14 23:58:36','2020-04-14 23:58:36'),(206,1,'admin/wx/categories/create','GET','127.0.0.1','[]','2020-04-14 23:58:41','2020-04-14 23:58:41'),(207,1,'admin/wx/categories','POST','127.0.0.1','{\"name\":\"\\u84b8\\u9505\",\"parent_id\":\"1\",\"level\":\"0\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\"}','2020-04-15 00:00:15','2020-04-15 00:00:15'),(208,1,'admin/wx/categories/create','GET','127.0.0.1','[]','2020-04-15 00:00:18','2020-04-15 00:00:18'),(209,1,'admin/wx/categories','POST','127.0.0.1','{\"name\":\"\\u84b8\\u9505\",\"parent_id\":\"1\",\"level\":\"0\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\"}','2020-04-15 00:00:52','2020-04-15 00:00:52'),(210,1,'admin/wx/categories/create','GET','127.0.0.1','[]','2020-04-15 00:00:55','2020-04-15 00:00:55'),(211,1,'admin/wx/categories','POST','127.0.0.1','{\"name\":\"\\u84b8\\u9505\",\"parent_id\":\"1\",\"level\":\"0\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\"}','2020-04-15 00:06:12','2020-04-15 00:06:12'),(212,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 00:06:13','2020-04-15 00:06:13'),(213,1,'admin/wx/categories/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:08:06','2020-04-15 00:08:06'),(214,1,'admin/wx/categories/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:08:56','2020-04-15 00:08:56'),(215,1,'admin/wx/categories/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:09:08','2020-04-15 00:09:08'),(216,1,'admin/wx/categories','POST','127.0.0.1','{\"name\":\"\\u53a8\\u5177\",\"parent_id\":\"2\",\"level\":\"1\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\"}','2020-04-15 00:09:23','2020-04-15 00:09:23'),(217,1,'admin/wx/categories/create','GET','127.0.0.1','[]','2020-04-15 00:09:24','2020-04-15 00:09:24'),(218,1,'admin/wx/categories','POST','127.0.0.1','{\"name\":\"\\u84b8\\u9505\",\"parent_id\":\"1\",\"level\":\"1\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\"}','2020-04-15 00:10:19','2020-04-15 00:10:19'),(219,1,'admin/wx/categories/create','GET','127.0.0.1','[]','2020-04-15 00:10:19','2020-04-15 00:10:19'),(220,1,'admin/wx/categories','POST','127.0.0.1','{\"name\":\"\\u84b8\\u9505\",\"parent_id\":\"1\",\"level\":\"1\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\"}','2020-04-15 00:10:56','2020-04-15 00:10:56'),(221,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:11:47','2020-04-15 00:11:47'),(222,1,'admin/wx/categories/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:11:50','2020-04-15 00:11:50'),(223,1,'admin/wx/categories','POST','127.0.0.1','{\"name\":\"\\u84b8\\u9505\",\"parent_id\":\"1\",\"level\":\"0\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/wx\\/categories\"}','2020-04-15 00:12:04','2020-04-15 00:12:04'),(224,1,'admin/wx/categories/create','GET','127.0.0.1','[]','2020-04-15 00:12:04','2020-04-15 00:12:04'),(225,1,'admin/wx/categories','POST','127.0.0.1','{\"name\":\"\\u84b8\\u9505\",\"parent_id\":null,\"level\":\"1\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\"}','2020-04-15 00:12:47','2020-04-15 00:12:47'),(226,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:13:32','2020-04-15 00:13:32'),(227,1,'admin/wx/categories/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:13:34','2020-04-15 00:13:34'),(228,1,'admin/wx/categories','POST','127.0.0.1','{\"name\":\"\\u84b8\\u9505\",\"parent_id\":null,\"level\":\"1\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/wx\\/categories\"}','2020-04-15 00:13:42','2020-04-15 00:13:42'),(229,1,'admin/wx/categories/create','GET','127.0.0.1','[]','2020-04-15 00:13:43','2020-04-15 00:13:43'),(230,1,'admin/wx/categories','POST','127.0.0.1','{\"name\":\"\\u53a8\\u5177\",\"parent_id\":\"2\",\"level\":\"0\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\"}','2020-04-15 00:13:54','2020-04-15 00:13:54'),(231,1,'admin/wx/categories/create','GET','127.0.0.1','[]','2020-04-15 00:13:55','2020-04-15 00:13:55'),(232,1,'admin/wx/categories','POST','127.0.0.1','{\"name\":\"\\u714e\\u9505\",\"parent_id\":\"1\",\"level\":\"1\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\"}','2020-04-15 00:14:19','2020-04-15 00:14:19'),(233,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:19:31','2020-04-15 00:19:31'),(234,1,'admin/wx/categories/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:19:37','2020-04-15 00:19:37'),(235,1,'admin/wx/categories','POST','127.0.0.1','{\"name\":\"\\u714e\\u9505\",\"parent_id\":\"1\",\"level\":\"1\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/wx\\/categories\"}','2020-04-15 00:19:50','2020-04-15 00:19:50'),(236,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 00:19:51','2020-04-15 00:19:51'),(237,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:23:18','2020-04-15 00:23:18'),(238,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:26:16','2020-04-15 00:26:16'),(239,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:26:45','2020-04-15 00:26:45'),(240,1,'admin/wx/categories/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:27:22','2020-04-15 00:27:22'),(241,1,'admin/wx/categories/2','PUT','127.0.0.1','{\"name\":\"\\u84b8\\u9505\",\"parent_id\":\"1\",\"level\":\"1\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/wx\\/categories\"}','2020-04-15 00:27:34','2020-04-15 00:27:34'),(242,1,'admin/wx/categories/2','GET','127.0.0.1','[]','2020-04-15 00:27:34','2020-04-15 00:27:34'),(243,1,'admin/wx/categories/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:27:50','2020-04-15 00:27:50'),(244,1,'admin/wx/categories/2','PUT','127.0.0.1','{\"name\":\"\\u84b8\\u9505\",\"parent_id\":\"1\",\"level\":\"0\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/wx\\/categories\\/2\"}','2020-04-15 00:34:15','2020-04-15 00:34:15'),(245,1,'admin/wx/categories/2/edit','GET','127.0.0.1','[]','2020-04-15 00:34:16','2020-04-15 00:34:16'),(246,1,'admin/wx/categories/2','PUT','127.0.0.1','{\"name\":\"\\u84b8\\u9505\",\"parent_id\":\"1\",\"level\":\"1\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\",\"_method\":\"PUT\"}','2020-04-15 00:34:27','2020-04-15 00:34:27'),(247,1,'admin/wx/categories/2/edit','GET','127.0.0.1','[]','2020-04-15 00:34:30','2020-04-15 00:34:30'),(248,1,'admin/wx/categories/2','PUT','127.0.0.1','{\"name\":\"\\u84b8\\u9505\",\"parent_id\":\"1\",\"level\":\"1\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\",\"_method\":\"PUT\"}','2020-04-15 00:36:21','2020-04-15 00:36:21'),(249,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 00:36:21','2020-04-15 00:36:21'),(250,1,'admin/wx/categories/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:37:58','2020-04-15 00:37:58'),(251,1,'admin/wx/categories/1','PUT','127.0.0.1','{\"name\":\"\\u53a8\\u5177\",\"parent_id\":null,\"level\":\"0\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/wx\\/categories\"}','2020-04-15 00:38:13','2020-04-15 00:38:13'),(252,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 00:38:13','2020-04-15 00:38:13'),(253,1,'admin/wx/categories/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:38:43','2020-04-15 00:38:43'),(254,1,'admin/wx/categories/1','PUT','127.0.0.1','{\"name\":\"\\u53a8\\u5177\",\"parent_id\":null,\"level\":\"0\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/wx\\/categories\"}','2020-04-15 00:38:59','2020-04-15 00:38:59'),(255,1,'admin/wx/categories/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:39:03','2020-04-15 00:39:03'),(256,1,'admin/wx/categories/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:39:07','2020-04-15 00:39:07'),(257,1,'admin/wx/categories/1','PUT','127.0.0.1','{\"name\":\"\\u53a8\\u5177\",\"parent_id\":null,\"level\":\"0\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/wx\\/categories\\/1\"}','2020-04-15 00:40:52','2020-04-15 00:40:52'),(258,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 00:40:53','2020-04-15 00:40:53'),(259,1,'admin/wx/categories/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:41:03','2020-04-15 00:41:03'),(260,1,'admin/wx/categories/1','PUT','127.0.0.1','{\"name\":\"\\u53a8\\u5177\",\"parent_id\":null,\"level\":\"0\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/wx\\/categories\"}','2020-04-15 00:41:13','2020-04-15 00:41:13'),(261,1,'admin/wx/categories/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:41:42','2020-04-15 00:41:42'),(262,1,'admin/wx/categories/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:41:47','2020-04-15 00:41:47'),(263,1,'admin/wx/categories/1','PUT','127.0.0.1','{\"name\":\"\\u53a8\\u5177\",\"parent_id\":null,\"level\":\"0\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/wx\\/categories\\/1\"}','2020-04-15 00:41:54','2020-04-15 00:41:54'),(264,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 00:41:54','2020-04-15 00:41:54'),(265,1,'admin/wx/categories/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:42:57','2020-04-15 00:42:57'),(266,1,'admin/wx/categories/1','PUT','127.0.0.1','{\"name\":\"\\u53a8\\u5177\",\"parent_id\":null,\"level\":\"0\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/wx\\/categories\"}','2020-04-15 00:43:05','2020-04-15 00:43:05'),(267,1,'admin/wx/categories/1/edit','GET','127.0.0.1','[]','2020-04-15 00:43:06','2020-04-15 00:43:06'),(268,1,'admin/wx/categories/1','PUT','127.0.0.1','{\"name\":\"\\u53a8\\u5177\",\"parent_id\":null,\"level\":\"0\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\",\"_method\":\"PUT\"}','2020-04-15 00:43:41','2020-04-15 00:43:41'),(269,1,'admin/wx/categories/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:47:41','2020-04-15 00:47:41'),(270,1,'admin/wx/categories/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:47:45','2020-04-15 00:47:45'),(271,1,'admin/wx/categories/1','PUT','127.0.0.1','{\"name\":\"\\u53a8\\u5177\",\"parent_id\":null,\"level\":\"0\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/wx\\/categories\\/1\"}','2020-04-15 00:47:52','2020-04-15 00:47:52'),(272,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 00:47:52','2020-04-15 00:47:52'),(273,1,'admin/wx/categories/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:47:57','2020-04-15 00:47:57'),(274,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:48:08','2020-04-15 00:48:08'),(275,1,'admin/wx/categories/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 00:48:15','2020-04-15 00:48:15'),(276,1,'admin/wx/categories/3','PUT','127.0.0.1','{\"name\":\"\\u714e\\u9505\",\"parent_id\":\"1\",\"level\":\"1\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/wx\\/categories\"}','2020-04-15 00:48:24','2020-04-15 00:48:24'),(277,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 00:48:24','2020-04-15 00:48:24'),(278,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 01:01:01','2020-04-15 01:01:01'),(279,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 01:09:05','2020-04-15 01:09:05'),(280,1,'admin/_handle_action_','POST','127.0.0.1','{\"_key\":\"1\",\"_model\":\"App_Model_Category\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}','2020-04-15 01:09:11','2020-04-15 01:09:11'),(281,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 01:09:11','2020-04-15 01:09:11'),(282,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 01:11:16','2020-04-15 01:11:16'),(283,1,'admin/_handle_action_','POST','127.0.0.1','{\"_key\":\"1\",\"_model\":\"App_Model_Category\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}','2020-04-15 01:11:23','2020-04-15 01:11:23'),(284,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 01:11:23','2020-04-15 01:11:23'),(285,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 01:11:51','2020-04-15 01:11:51'),(286,1,'admin/_handle_action_','POST','127.0.0.1','{\"_key\":\"1\",\"_model\":\"App_Model_Category\",\"_token\":\"dCeUDLtjf0koYjNlvgjFj7IaqGkLp2t07ei9FJuY\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}','2020-04-15 01:11:55','2020-04-15 01:11:55'),(287,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 01:11:56','2020-04-15 01:11:56'),(288,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 01:13:32','2020-04-15 01:13:32'),(289,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 01:59:53','2020-04-15 01:59:53'),(290,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 02:07:51','2020-04-15 02:07:51'),(291,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 02:08:38','2020-04-15 02:08:38'),(292,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 02:10:26','2020-04-15 02:10:26'),(293,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 02:14:25','2020-04-15 02:14:25'),(294,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 02:20:40','2020-04-15 02:20:40'),(295,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 02:20:58','2020-04-15 02:20:58'),(296,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 02:21:20','2020-04-15 02:21:20'),(297,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 06:04:57','2020-04-15 06:04:57'),(298,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:06:44','2020-04-15 06:06:44'),(299,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:06:52','2020-04-15 06:06:52'),(300,1,'admin/wx/categories/1/edit','GET','127.0.0.1','[]','2020-04-15 06:06:58','2020-04-15 06:06:58'),(301,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:07:09','2020-04-15 06:07:09'),(302,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:07:24','2020-04-15 06:07:24'),(303,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:08:00','2020-04-15 06:08:00'),(304,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 06:08:44','2020-04-15 06:08:44'),(305,1,'admin','GET','127.0.0.1','[]','2020-04-15 06:12:01','2020-04-15 06:12:01'),(306,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:12:10','2020-04-15 06:12:10'),(307,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:13:59','2020-04-15 06:13:59'),(308,1,'admin/wx/categories/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:14:53','2020-04-15 06:14:53'),(309,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:15:04','2020-04-15 06:15:04'),(310,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 06:16:49','2020-04-15 06:16:49'),(311,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:19:04','2020-04-15 06:19:04'),(312,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:22:07','2020-04-15 06:22:07'),(313,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:22:20','2020-04-15 06:22:20'),(314,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:23:30','2020-04-15 06:23:30'),(315,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:24:06','2020-04-15 06:24:06'),(316,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:24:37','2020-04-15 06:24:37'),(317,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:25:10','2020-04-15 06:25:10'),(318,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:25:51','2020-04-15 06:25:51'),(319,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:27:59','2020-04-15 06:27:59'),(320,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:28:40','2020-04-15 06:28:40'),(321,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 06:28:48','2020-04-15 06:28:48'),(322,1,'admin/wx/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:32:08','2020-04-15 06:32:08'),(323,1,'admin/wx/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:33:14','2020-04-15 06:33:14'),(324,1,'admin/wx/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:33:46','2020-04-15 06:33:46'),(325,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:36:53','2020-04-15 06:36:53'),(326,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 06:37:15','2020-04-15 06:37:15'),(327,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 06:38:55','2020-04-15 06:38:55'),(328,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 06:44:42','2020-04-15 06:44:42'),(329,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 06:47:24','2020-04-15 06:47:24'),(330,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 06:52:51','2020-04-15 06:52:51'),(331,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 06:55:39','2020-04-15 06:55:39'),(332,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 06:56:39','2020-04-15 06:56:39'),(333,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 06:58:26','2020-04-15 06:58:26'),(334,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 06:59:27','2020-04-15 06:59:27'),(335,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 06:59:52','2020-04-15 06:59:52'),(336,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 07:04:27','2020-04-15 07:04:27'),(337,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 07:13:13','2020-04-15 07:13:13'),(338,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 07:14:53','2020-04-15 07:14:53'),(339,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 07:15:08','2020-04-15 07:15:08'),(340,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 07:19:20','2020-04-15 07:19:20'),(341,1,'admin/wx/categories/1','GET','127.0.0.1','[]','2020-04-15 07:19:29','2020-04-15 07:19:29'),(342,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 07:19:51','2020-04-15 07:19:51'),(343,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 07:20:29','2020-04-15 07:20:29'),(344,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 07:22:18','2020-04-15 07:22:18'),(345,1,'admin/wx/categories/1','DELETE','127.0.0.1','{\"_method\":\"DELETE\"}','2020-04-15 07:30:43','2020-04-15 07:30:43'),(346,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 07:30:44','2020-04-15 07:30:44'),(347,1,'admin/wx/categories/1','DELETE','127.0.0.1','{\"_method\":\"DELETE\"}','2020-04-15 07:32:14','2020-04-15 07:32:14'),(348,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 07:32:14','2020-04-15 07:32:14'),(349,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 07:33:03','2020-04-15 07:33:03'),(350,1,'admin/wx/categories/1','DELETE','127.0.0.1','{\"_method\":\"DELETE\"}','2020-04-15 07:33:09','2020-04-15 07:33:09'),(351,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 07:33:09','2020-04-15 07:33:09'),(352,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 07:33:59','2020-04-15 07:33:59'),(353,1,'admin/wx/categories/1','DELETE','127.0.0.1','{\"_method\":\"DELETE\"}','2020-04-15 07:35:00','2020-04-15 07:35:00'),(354,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 07:35:00','2020-04-15 07:35:00'),(355,1,'admin/wx/categories/1','DELETE','127.0.0.1','{\"_method\":\"DELETE\"}','2020-04-15 07:37:50','2020-04-15 07:37:50'),(356,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 07:37:51','2020-04-15 07:37:51'),(357,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 07:38:03','2020-04-15 07:38:03'),(358,1,'admin/wx/categories/1','DELETE','127.0.0.1','{\"_method\":\"DELETE\"}','2020-04-15 07:38:59','2020-04-15 07:38:59'),(359,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 07:39:02','2020-04-15 07:39:02'),(360,1,'admin/wx/categories/1','DELETE','127.0.0.1','{\"_method\":\"DELETE\"}','2020-04-15 07:39:20','2020-04-15 07:39:20'),(361,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 07:39:32','2020-04-15 07:39:32'),(362,1,'admin/wx/categories/1','DELETE','127.0.0.1','{\"_method\":\"DELETE\"}','2020-04-15 07:39:59','2020-04-15 07:39:59'),(363,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 07:43:01','2020-04-15 07:43:01'),(364,1,'admin/wx/categories/1','DELETE','127.0.0.1','{\"_method\":\"DELETE\"}','2020-04-15 07:43:07','2020-04-15 07:43:07'),(365,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 07:46:59','2020-04-15 07:46:59'),(366,1,'admin/wx/categories/1','DELETE','127.0.0.1','{\"_method\":\"DELETE\"}','2020-04-15 07:47:07','2020-04-15 07:47:07'),(367,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 07:47:46','2020-04-15 07:47:46'),(368,1,'admin/wx/categories/1','DELETE','127.0.0.1','{\"_method\":\"DELETE\"}','2020-04-15 07:47:53','2020-04-15 07:47:53'),(369,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 17:51:00','2020-04-15 17:51:00'),(370,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-15 19:26:41','2020-04-15 19:26:41'),(371,1,'admin/specifications','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 20:08:14','2020-04-15 20:08:14'),(372,1,'admin/specifications','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 20:10:36','2020-04-15 20:10:36'),(373,1,'admin/specifications/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 20:10:39','2020-04-15 20:10:39'),(374,1,'admin/specifications','POST','127.0.0.1','{\"title\":\"\\u5185\\u5b58\",\"_token\":\"etnFjTltk8saq9rPdVmQbTiNRAAdhR0rnRUU34HO\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/specifications\"}','2020-04-15 20:10:50','2020-04-15 20:10:50'),(375,1,'admin/specifications','GET','127.0.0.1','[]','2020-04-15 20:10:50','2020-04-15 20:10:50'),(376,1,'admin/specifications/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 20:10:53','2020-04-15 20:10:53'),(377,1,'admin/specifications','POST','127.0.0.1','{\"title\":\"\\u5b58\\u50a8\\u7a7a\\u95f4\",\"_token\":\"etnFjTltk8saq9rPdVmQbTiNRAAdhR0rnRUU34HO\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/specifications\"}','2020-04-15 20:10:59','2020-04-15 20:10:59'),(378,1,'admin/specifications','GET','127.0.0.1','[]','2020-04-15 20:10:59','2020-04-15 20:10:59'),(379,1,'admin/specifications/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 20:11:01','2020-04-15 20:11:01'),(380,1,'admin/specifications','POST','127.0.0.1','{\"title\":\"test\",\"_token\":\"etnFjTltk8saq9rPdVmQbTiNRAAdhR0rnRUU34HO\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/specifications\"}','2020-04-15 20:11:05','2020-04-15 20:11:05'),(381,1,'admin/specifications','GET','127.0.0.1','[]','2020-04-15 20:11:05','2020-04-15 20:11:05'),(382,1,'admin/specifications/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 20:14:58','2020-04-15 20:14:58'),(383,1,'admin/specifications','POST','127.0.0.1','{\"title\":\"test\",\"_token\":\"etnFjTltk8saq9rPdVmQbTiNRAAdhR0rnRUU34HO\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/specifications\"}','2020-04-15 20:15:01','2020-04-15 20:15:01'),(384,1,'admin/specifications/create','GET','127.0.0.1','[]','2020-04-15 20:15:04','2020-04-15 20:15:04'),(385,1,'admin/specifications','POST','127.0.0.1','{\"title\":\"test\",\"_token\":\"etnFjTltk8saq9rPdVmQbTiNRAAdhR0rnRUU34HO\"}','2020-04-15 20:15:18','2020-04-15 20:15:18'),(386,1,'admin/specifications/create','GET','127.0.0.1','[]','2020-04-15 20:15:19','2020-04-15 20:15:19'),(387,1,'admin/specifications','POST','127.0.0.1','{\"title\":\"test2\",\"_token\":\"etnFjTltk8saq9rPdVmQbTiNRAAdhR0rnRUU34HO\"}','2020-04-15 20:15:45','2020-04-15 20:15:45'),(388,1,'admin/specifications','GET','127.0.0.1','[]','2020-04-15 20:15:45','2020-04-15 20:15:45'),(389,1,'admin/specifications','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 21:33:55','2020-04-15 21:33:55'),(390,1,'admin/specifications','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 21:35:22','2020-04-15 21:35:22'),(391,1,'admin/specifications','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 21:36:27','2020-04-15 21:36:27'),(392,1,'admin/specifications','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 21:37:26','2020-04-15 21:37:26'),(393,1,'admin/specifications','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 21:38:17','2020-04-15 21:38:17'),(394,1,'admin/specifications','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 21:39:35','2020-04-15 21:39:35'),(395,1,'admin/specifications','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 21:41:00','2020-04-15 21:41:00'),(396,1,'admin/specifications/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-15 22:01:45','2020-04-15 22:01:45'),(397,1,'admin/specifications/create','GET','127.0.0.1','[]','2020-04-15 22:17:35','2020-04-15 22:17:35'),(398,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-16 06:03:25','2020-04-16 06:03:25'),(399,1,'admin/specifications','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 06:09:51','2020-04-16 06:09:51'),(400,1,'admin/specifications/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 06:09:55','2020-04-16 06:09:55'),(401,1,'admin/specifications/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 06:13:49','2020-04-16 06:13:49'),(402,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 06:16:56','2020-04-16 06:16:56'),(403,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 06:27:01','2020-04-16 06:27:01'),(404,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 07:01:39','2020-04-16 07:01:39'),(405,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 07:03:12','2020-04-16 07:03:12'),(406,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 07:08:46','2020-04-16 07:08:46'),(407,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 07:13:51','2020-04-16 07:13:51'),(408,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 07:20:43','2020-04-16 07:20:43'),(409,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 07:26:55','2020-04-16 07:26:55'),(410,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 07:27:09','2020-04-16 07:27:09'),(411,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 07:27:16','2020-04-16 07:27:16'),(412,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 07:28:52','2020-04-16 07:28:52'),(413,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 07:29:17','2020-04-16 07:29:17'),(414,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 07:29:58','2020-04-16 07:29:58'),(415,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 07:31:35','2020-04-16 07:31:35'),(416,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 07:32:00','2020-04-16 07:32:00'),(417,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 07:32:18','2020-04-16 07:32:18'),(418,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 07:32:25','2020-04-16 07:32:25'),(419,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 07:33:17','2020-04-16 07:33:17'),(420,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 07:33:45','2020-04-16 07:33:45'),(421,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-16 07:34:09','2020-04-16 07:34:09'),(422,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 07:34:16','2020-04-16 07:34:16'),(423,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 07:34:18','2020-04-16 07:34:18'),(424,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 07:34:41','2020-04-16 07:34:41'),(425,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-16 19:36:23','2020-04-16 19:36:23'),(426,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 19:36:32','2020-04-16 19:36:32'),(427,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 19:36:37','2020-04-16 19:36:37'),(428,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 19:47:06','2020-04-16 19:47:06'),(429,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 19:48:26','2020-04-16 19:48:26'),(430,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 19:49:02','2020-04-16 19:49:02'),(431,1,'admin/wx/goods/create','GET','127.0.0.1','[]','2020-04-16 19:49:21','2020-04-16 19:49:21'),(432,1,'admin/wx/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 20:14:48','2020-04-16 20:14:48'),(433,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 21:02:50','2020-04-16 21:02:50'),(434,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 21:02:53','2020-04-16 21:02:53'),(435,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 21:11:57','2020-04-16 21:11:57'),(436,1,'admin/wx/goods','POST','127.0.0.1','{\"title\":\"\\u534e\\u4e3a-P30\",\"description\":\"\\u534e\\u4e3a\\u667a\\u80fd\\u624b\\u673a\",\"on_hot\":\"on\",\"on_sale\":\"on\",\"content\":\"<p><strong>\\u8fd9\\u91cc\\u662f\\u8be6\\u60c5\\u9762\\u719f<\\/strong><\\/p>\",\"express_price\":\"4000\",\"price\":\"3500\",\"rating\":\"5\",\"category_id1\":\"1\",\"category_id2\":\"3\",\"good_no\":null,\"stock\":\"70\",\"_token\":\"ZZdcwpEFhXpqEDsqGefY1rnvNPKdsWqF2BM4L58F\"}','2020-04-16 21:14:20','2020-04-16 21:14:20'),(437,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 21:14:21','2020-04-16 21:14:21'),(438,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 21:19:33','2020-04-16 21:19:33'),(439,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 21:21:53','2020-04-16 21:21:53'),(440,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 21:22:59','2020-04-16 21:22:59'),(441,1,'admin/wx/goods/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 21:23:14','2020-04-16 21:23:14'),(442,1,'admin/wx/goods/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 21:47:18','2020-04-16 21:47:18'),(443,1,'admin/wx/goods/1','PUT','127.0.0.1','{\"title\":\"\\u534e\\u4e3a-P30\",\"description\":\"\\u534e\\u4e3a\\u667a\\u80fd\\u624b\\u673a\",\"on_hot\":\"on\",\"on_sale\":\"on\",\"content\":\"<p><strong>\\u8fd9\\u91cc\\u662f\\u8be6\\u60c5\\u9762\\u719f<\\/strong><\\/p>\",\"express_price\":\"4000\",\"price\":\"3500\",\"rating\":\"5\",\"category_id1\":\"1\",\"category_id2\":\"2\",\"good_no\":\"Y5000\",\"stock\":\"70\",\"_token\":\"ZZdcwpEFhXpqEDsqGefY1rnvNPKdsWqF2BM4L58F\",\"_method\":\"PUT\"}','2020-04-16 21:47:43','2020-04-16 21:47:43'),(444,1,'admin/wx/goods/1/edit','GET','127.0.0.1','[]','2020-04-16 21:47:43','2020-04-16 21:47:43'),(445,1,'admin/wx/goods/1','PUT','127.0.0.1','{\"title\":\"\\u534e\\u4e3a-P30\",\"description\":\"\\u534e\\u4e3a\\u667a\\u80fd\\u624b\\u673a\",\"on_hot\":\"on\",\"on_sale\":\"on\",\"content\":\"<p><strong>\\u8fd9\\u91cc\\u662f\\u8be6\\u60c5\\u9762\\u719f<\\/strong><\\/p>\",\"express_price\":\"4000\",\"price\":\"3500\",\"rating\":\"5\",\"category_id1\":\"1\",\"category_id2\":\"2\",\"good_no\":\"Y5000\",\"stock\":\"70\",\"_token\":\"ZZdcwpEFhXpqEDsqGefY1rnvNPKdsWqF2BM4L58F\",\"_method\":\"PUT\"}','2020-04-16 21:56:03','2020-04-16 21:56:03'),(446,1,'admin/wx/goods/1/edit','GET','127.0.0.1','[]','2020-04-16 21:56:04','2020-04-16 21:56:04'),(447,1,'admin/wx/goods/1','PUT','127.0.0.1','{\"title\":\"\\u534e\\u4e3a-P30\",\"description\":\"\\u534e\\u4e3a\\u667a\\u80fd\\u624b\\u673a\",\"on_hot\":\"on\",\"on_sale\":\"on\",\"content\":\"<p><strong>\\u8fd9\\u91cc\\u662f\\u8be6\\u60c5\\u9762\\u719f<\\/strong><\\/p>\",\"express_price\":\"4000\",\"price\":\"3500\",\"rating\":\"5\",\"category_id1\":\"1\",\"category_id2\":\"2\",\"good_no\":\"Y5000\",\"stock\":\"70\",\"_token\":\"ZZdcwpEFhXpqEDsqGefY1rnvNPKdsWqF2BM4L58F\",\"_method\":\"PUT\"}','2020-04-16 21:56:18','2020-04-16 21:56:18'),(448,1,'admin/wx/goods/1/edit','GET','127.0.0.1','[]','2020-04-16 21:56:19','2020-04-16 21:56:19'),(449,1,'admin/wx/goods/1','PUT','127.0.0.1','{\"title\":\"\\u534e\\u4e3a-P30\",\"description\":\"\\u534e\\u4e3a\\u667a\\u80fd\\u624b\\u673a\",\"on_hot\":\"on\",\"on_sale\":\"on\",\"content\":\"<p><strong>\\u8fd9\\u91cc\\u662f\\u8be6\\u60c5\\u9762\\u719f<\\/strong><\\/p>\",\"express_price\":\"4000\",\"price\":\"3500\",\"rating\":\"5\",\"category_id1\":\"1\",\"category_id2\":\"2\",\"good_no\":\"Y5000\",\"stock\":\"70\",\"_token\":\"ZZdcwpEFhXpqEDsqGefY1rnvNPKdsWqF2BM4L58F\",\"_method\":\"PUT\"}','2020-04-16 22:03:26','2020-04-16 22:03:26'),(450,1,'admin/wx/goods/1/edit','GET','127.0.0.1','[]','2020-04-16 22:03:26','2020-04-16 22:03:26'),(451,1,'admin/wx/goods/1','PUT','127.0.0.1','{\"title\":\"\\u534e\\u4e3a-P30\",\"description\":\"\\u534e\\u4e3a\\u667a\\u80fd\\u624b\\u673a\",\"on_hot\":\"on\",\"on_sale\":\"on\",\"content\":\"<p><strong>\\u8fd9\\u91cc\\u662f\\u8be6\\u60c5\\u9762\\u719f<\\/strong><\\/p>\",\"express_price\":\"4000\",\"price\":\"3500\",\"rating\":\"5\",\"category_id1\":\"1\",\"category_id2\":\"2\",\"good_no\":\"Y5000\",\"stock\":\"70\",\"_token\":\"ZZdcwpEFhXpqEDsqGefY1rnvNPKdsWqF2BM4L58F\",\"_method\":\"PUT\"}','2020-04-16 22:04:38','2020-04-16 22:04:38'),(452,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 22:04:39','2020-04-16 22:04:39'),(453,1,'admin/wx/goods/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 22:05:46','2020-04-16 22:05:46'),(454,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 22:05:57','2020-04-16 22:05:57'),(455,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 22:09:02','2020-04-16 22:09:02'),(456,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 22:09:24','2020-04-16 22:09:24'),(457,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"title\":\"\\u534e\\u4e3a\",\"category1\":{\"name\":null},\"category2\":{\"name\":null}}','2020-04-16 22:09:43','2020-04-16 22:09:43'),(458,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"title\":\"\\u534e\\u4e3a\",\"category1\":{\"name\":\"\\u53a8\\u5177\"},\"category2\":{\"name\":null}}','2020-04-16 22:09:54','2020-04-16 22:09:54'),(459,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"title\":null,\"category1\":{\"name\":\"\\u53a8\\u5177\"},\"category2\":{\"name\":null}}','2020-04-16 22:10:01','2020-04-16 22:10:01'),(460,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"title\":null,\"category1\":{\"name\":\"js\"},\"category2\":{\"name\":null}}','2020-04-16 22:10:10','2020-04-16 22:10:10'),(461,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"title\":null,\"category1\":{\"name\":null},\"category2\":{\"name\":\"\\u9505\"}}','2020-04-16 22:10:18','2020-04-16 22:10:18'),(462,1,'admin/specifications','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 22:11:17','2020-04-16 22:11:17'),(463,1,'admin/specifications/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 22:11:20','2020-04-16 22:11:20'),(464,1,'admin/specifications','POST','127.0.0.1','{\"goods_id\":\"1\",\"title\":\"\\u5185\\u5b58,\\u5b58\\u50a8\\u7a7a\\u95f4\",\"description\":\"8G,32G\",\"price\":\"3500\",\"stock\":\"70\",\"_token\":\"ZZdcwpEFhXpqEDsqGefY1rnvNPKdsWqF2BM4L58F\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/specifications\"}','2020-04-16 22:11:56','2020-04-16 22:11:56'),(465,1,'admin/specifications/create','GET','127.0.0.1','[]','2020-04-16 22:11:59','2020-04-16 22:11:59'),(466,1,'admin/specifications/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 22:15:23','2020-04-16 22:15:23'),(467,1,'admin/specifications','POST','127.0.0.1','{\"good_id\":\"1\",\"title\":\"\\u5185\\u5b58,\\u5b58\\u50a8\\u7a7a\\u95f4\",\"description\":\"8G,32G\",\"price\":\"3500\",\"stock\":\"70\",\"_token\":\"ZZdcwpEFhXpqEDsqGefY1rnvNPKdsWqF2BM4L58F\"}','2020-04-16 22:15:39','2020-04-16 22:15:39'),(468,1,'admin/specifications','GET','127.0.0.1','[]','2020-04-16 22:15:39','2020-04-16 22:15:39'),(469,1,'admin/specifications','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 22:16:46','2020-04-16 22:16:46'),(470,1,'admin/specifications','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 22:17:16','2020-04-16 22:17:16'),(471,1,'admin/specifications','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 22:18:15','2020-04-16 22:18:15'),(472,1,'admin/specifications','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 22:19:29','2020-04-16 22:19:29'),(473,1,'admin/specifications/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 22:19:34','2020-04-16 22:19:34'),(474,1,'admin/specifications/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 22:20:02','2020-04-16 22:20:02'),(475,1,'admin/specifications/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 22:21:53','2020-04-16 22:21:53'),(476,1,'admin/specifications','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 22:22:01','2020-04-16 22:22:01'),(477,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 22:22:12','2020-04-16 22:22:12'),(478,1,'admin/wx/advertises','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 22:25:57','2020-04-16 22:25:57'),(479,1,'admin/wx/advertises/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 22:26:40','2020-04-16 22:26:40'),(480,1,'admin/wx/reply','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 22:27:58','2020-04-16 22:27:58'),(481,1,'admin/wx/orders','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 22:33:48','2020-04-16 22:33:48'),(482,1,'admin/wx/orders','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 22:56:09','2020-04-16 22:56:09'),(483,1,'admin/wx/orders','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 22:57:16','2020-04-16 22:57:16'),(484,1,'admin/wx/orders','GET','127.0.0.1','[]','2020-04-16 22:57:20','2020-04-16 22:57:20'),(485,1,'admin/wx/orders','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 23:07:28','2020-04-16 23:07:28'),(486,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 23:48:42','2020-04-16 23:48:42'),(487,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 23:49:06','2020-04-16 23:49:06'),(488,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-16 23:51:28','2020-04-16 23:51:28'),(489,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 23:51:32','2020-04-16 23:51:32'),(490,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 23:51:36','2020-04-16 23:51:36'),(491,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 23:51:40','2020-04-16 23:51:40'),(492,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 23:51:44','2020-04-16 23:51:44'),(493,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 23:51:48','2020-04-16 23:51:48'),(494,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 23:51:51','2020-04-16 23:51:51'),(495,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 23:51:55','2020-04-16 23:51:55'),(496,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 23:52:00','2020-04-16 23:52:00'),(497,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 23:52:03','2020-04-16 23:52:03'),(498,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 23:52:08','2020-04-16 23:52:08'),(499,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 23:52:11','2020-04-16 23:52:11'),(500,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 23:52:16','2020-04-16 23:52:16'),(501,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 23:52:21','2020-04-16 23:52:21'),(502,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 23:52:25','2020-04-16 23:52:25'),(503,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 23:52:29','2020-04-16 23:52:29'),(504,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 23:52:34','2020-04-16 23:52:34'),(505,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 23:52:37','2020-04-16 23:52:37'),(506,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 23:52:42','2020-04-16 23:52:42'),(507,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 23:52:47','2020-04-16 23:52:47'),(508,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 23:52:51','2020-04-16 23:52:51'),(509,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 23:52:56','2020-04-16 23:52:56'),(510,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-16 23:56:24','2020-04-16 23:56:24'),(511,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-17 00:09:23','2020-04-17 00:09:23'),(512,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-17 00:11:07','2020-04-17 00:11:07'),(513,1,'admin/goods/1/images','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 00:11:35','2020-04-17 00:11:35'),(514,1,'admin/wx/goods','GET','127.0.0.1','[]','2020-04-17 00:11:39','2020-04-17 00:11:39'),(515,1,'admin/goods/1/images','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 00:12:15','2020-04-17 00:12:15'),(516,1,'admin/goods/1/images','GET','127.0.0.1','[]','2020-04-17 00:12:38','2020-04-17 00:12:38'),(517,1,'admin/goods/1/images','GET','127.0.0.1','[]','2020-04-17 00:12:44','2020-04-17 00:12:44'),(518,1,'admin/goods/1/images','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 00:14:06','2020-04-17 00:14:06'),(519,1,'admin/goods/1/images','GET','127.0.0.1','[]','2020-04-17 00:14:56','2020-04-17 00:14:56'),(520,1,'admin/goods/1/images/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 00:15:10','2020-04-17 00:15:10'),(521,1,'admin/goods/1/images/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 00:15:53','2020-04-17 00:15:53'),(522,1,'admin/goods/1/images','POST','127.0.0.1','{\"description\":\"\\u534e\\u4e3a\\u667a\\u80fd\\u624b\\u673a\",\"cover\":\"on\",\"_token\":\"ZZdcwpEFhXpqEDsqGefY1rnvNPKdsWqF2BM4L58F\"}','2020-04-17 00:18:29','2020-04-17 00:18:29'),(523,1,'admin/goods/1/images','GET','127.0.0.1','[]','2020-04-17 00:18:34','2020-04-17 00:18:34'),(524,1,'admin/goods/1/images/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 00:20:43','2020-04-17 00:20:43'),(525,1,'admin/goods/1/images','POST','127.0.0.1','{\"goods_id\":\"1\",\"description\":\"\\u534e\\u4e3a\\u667a\\u80fd\\u624b\\u673a\",\"cover\":\"on\",\"_token\":\"ZZdcwpEFhXpqEDsqGefY1rnvNPKdsWqF2BM4L58F\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/goods\\/1\\/images\"}','2020-04-17 00:21:07','2020-04-17 00:21:07'),(526,1,'admin/goods/1/images/create','GET','127.0.0.1','[]','2020-04-17 00:21:10','2020-04-17 00:21:10'),(527,1,'admin/goods/1/images/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 00:22:12','2020-04-17 00:22:12'),(528,1,'admin/goods/1/images','POST','127.0.0.1','{\"good_id\":\"1\",\"description\":\"\\u534e\\u4e3a\\u667a\\u80fd\\u624b\\u673a\",\"cover\":\"on\",\"_token\":\"ZZdcwpEFhXpqEDsqGefY1rnvNPKdsWqF2BM4L58F\"}','2020-04-17 00:22:36','2020-04-17 00:22:36'),(529,1,'admin/goods/1/images','GET','127.0.0.1','[]','2020-04-17 00:22:37','2020-04-17 00:22:37'),(530,1,'admin/goods/1/images','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 00:23:01','2020-04-17 00:23:01'),(531,1,'admin/goods/1/images/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 01:05:39','2020-04-17 01:05:39'),(532,1,'admin/goods/1/images/1','PUT','127.0.0.1','{\"good_id\":\"1\",\"description\":\"\\u534e\\u4e3a\\u667a\\u80fd\\u624b\\u673a2\",\"cover\":\"on\",\"_token\":\"ZZdcwpEFhXpqEDsqGefY1rnvNPKdsWqF2BM4L58F\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/goods\\/1\\/images\"}','2020-04-17 01:08:30','2020-04-17 01:08:30'),(533,1,'admin/goods/1/images','GET','127.0.0.1','[]','2020-04-17 01:08:31','2020-04-17 01:08:31'),(534,1,'admin/goods/1/images','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 01:09:20','2020-04-17 01:09:20'),(535,1,'admin/_handle_action_','POST','127.0.0.1','{\"_key\":\"1\",\"_model\":\"App_Model_GoodsImg\",\"_token\":\"ZZdcwpEFhXpqEDsqGefY1rnvNPKdsWqF2BM4L58F\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}','2020-04-17 01:10:16','2020-04-17 01:10:16'),(536,1,'admin/goods/1/images','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 01:10:17','2020-04-17 01:10:17'),(537,1,'admin/wx/orders','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 01:10:47','2020-04-17 01:10:47'),(538,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 01:33:00','2020-04-17 01:33:00'),(539,1,'admin/goods/1/images','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 01:33:07','2020-04-17 01:33:07'),(540,1,'admin/goods/1/images/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 01:33:10','2020-04-17 01:33:10'),(541,1,'admin/goods/1/images','POST','127.0.0.1','{\"good_id\":\"1\",\"description\":null,\"cover\":\"on\",\"_token\":\"ZZdcwpEFhXpqEDsqGefY1rnvNPKdsWqF2BM4L58F\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/goods\\/1\\/images\"}','2020-04-17 02:04:50','2020-04-17 02:04:50'),(542,1,'admin/goods/1/images','GET','127.0.0.1','[]','2020-04-17 02:04:51','2020-04-17 02:04:51'),(543,1,'admin/goods/1/images/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 02:04:57','2020-04-17 02:04:57'),(544,1,'admin/goods/1/images','POST','127.0.0.1','{\"good_id\":\"1\",\"description\":null,\"cover\":\"on\",\"_token\":\"ZZdcwpEFhXpqEDsqGefY1rnvNPKdsWqF2BM4L58F\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/goods\\/1\\/images\"}','2020-04-17 02:05:15','2020-04-17 02:05:15'),(545,1,'admin/goods/1/images','GET','127.0.0.1','[]','2020-04-17 02:05:16','2020-04-17 02:05:16'),(546,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-17 05:55:39','2020-04-17 05:55:39'),(547,1,'admin/wx/orders','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 05:55:54','2020-04-17 05:55:54'),(548,1,'admin/wx/orders','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 06:09:11','2020-04-17 06:09:11'),(549,1,'admin/wx/orders','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}','2020-04-17 06:10:52','2020-04-17 06:10:52'),(550,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 06:39:16','2020-04-17 06:39:16'),(551,1,'admin/goods/1/images','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 06:39:19','2020-04-17 06:39:19'),(552,1,'admin/goods/1/images/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 06:39:24','2020-04-17 06:39:24'),(553,1,'admin/goods/1/images','GET','127.0.0.1','[]','2020-04-17 06:39:24','2020-04-17 06:39:24'),(554,1,'admin/goods/1/images/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 06:42:00','2020-04-17 06:42:00'),(555,1,'admin/goods/1/images','GET','127.0.0.1','[]','2020-04-17 06:42:00','2020-04-17 06:42:00'),(556,1,'admin/goods/1/images/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 06:49:48','2020-04-17 06:49:48'),(557,1,'admin/goods/1/images/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 06:50:32','2020-04-17 06:50:32'),(558,1,'admin/goods/1/images/2/edit','GET','127.0.0.1','[]','2020-04-17 07:01:06','2020-04-17 07:01:06'),(559,1,'admin/goods/1/images/2','PUT','127.0.0.1','{\"good_id\":\"1\",\"description\":\"\\u534e\\u4e3a\\u667a\\u80fd\\u624b\\u673a2\",\"cover\":\"on\",\"_token\":\"vcNbGM45RUHOjHFCU8A0FcMRyrbjPFzTHZyt2Lbx\",\"_method\":\"PUT\"}','2020-04-17 07:01:29','2020-04-17 07:01:29'),(560,1,'admin','GET','127.0.0.1','[]','2020-04-17 07:07:00','2020-04-17 07:07:00'),(561,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 07:07:13','2020-04-17 07:07:13'),(562,1,'admin/goods/1/images','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 07:07:17','2020-04-17 07:07:17'),(563,1,'admin/goods/1/images/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 07:07:19','2020-04-17 07:07:19'),(564,1,'admin/goods/1/images/2','PUT','127.0.0.1','{\"good_id\":\"1\",\"description\":\"\\u534e\\u4e3a\\u667a\\u80fd\\u624b\\u673a2\",\"cover\":\"on\",\"_token\":\"vcNbGM45RUHOjHFCU8A0FcMRyrbjPFzTHZyt2Lbx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/goods\\/1\\/images\"}','2020-04-17 07:07:24','2020-04-17 07:07:24'),(565,1,'admin/goods/1/images','GET','127.0.0.1','[]','2020-04-17 07:07:24','2020-04-17 07:07:24'),(566,1,'admin/goods/1/images/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 07:07:42','2020-04-17 07:07:42'),(567,1,'admin/goods/1/images/3','PUT','127.0.0.1','{\"good_id\":\"1\",\"description\":\"\\u534e\\u4e3a\\u667a\\u80fd\\u624b\\u673a\",\"cover\":\"on\",\"_token\":\"vcNbGM45RUHOjHFCU8A0FcMRyrbjPFzTHZyt2Lbx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/goods\\/1\\/images\"}','2020-04-17 07:10:04','2020-04-17 07:10:04'),(568,1,'admin/goods/1/images/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 07:10:12','2020-04-17 07:10:12'),(569,1,'admin/goods/1/images/3','PUT','127.0.0.1','{\"good_id\":\"1\",\"description\":null,\"cover\":\"on\",\"_token\":\"vcNbGM45RUHOjHFCU8A0FcMRyrbjPFzTHZyt2Lbx\",\"_method\":\"PUT\"}','2020-04-17 07:10:23','2020-04-17 07:10:23'),(570,1,'admin/goods/1/images/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 07:11:17','2020-04-17 07:11:17'),(571,1,'admin/goods/1/images/3','PUT','127.0.0.1','{\"good_id\":\"1\",\"description\":null,\"cover\":\"on\",\"_token\":\"vcNbGM45RUHOjHFCU8A0FcMRyrbjPFzTHZyt2Lbx\",\"_method\":\"PUT\"}','2020-04-17 07:11:31','2020-04-17 07:11:31'),(572,1,'admin/goods/1/images/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 07:12:06','2020-04-17 07:12:06'),(573,1,'admin/goods/1/images/3','PUT','127.0.0.1','{\"good_id\":\"1\",\"description\":null,\"cover\":\"on\",\"_token\":\"vcNbGM45RUHOjHFCU8A0FcMRyrbjPFzTHZyt2Lbx\",\"_method\":\"PUT\"}','2020-04-17 07:12:08','2020-04-17 07:12:08'),(574,1,'admin/goods/1/images/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 07:14:50','2020-04-17 07:14:50'),(575,1,'admin/goods/1/images/3','PUT','127.0.0.1','{\"good_id\":\"1\",\"description\":\"\\u534e\\u4e3a\\u667a\\u80fd\\u624b\\u673a\",\"cover\":\"on\",\"_token\":\"vcNbGM45RUHOjHFCU8A0FcMRyrbjPFzTHZyt2Lbx\",\"_method\":\"PUT\"}','2020-04-17 07:14:53','2020-04-17 07:14:53'),(576,1,'admin/goods/1/images','GET','127.0.0.1','[]','2020-04-17 07:14:54','2020-04-17 07:14:54'),(577,1,'admin/goods/1/images/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 07:15:02','2020-04-17 07:15:02'),(578,1,'admin/goods/1/images/3','PUT','127.0.0.1','{\"good_id\":\"1\",\"description\":\"\\u534e\\u4e3a\\u667a\\u80fd\\u624b\\u673a\",\"cover\":\"on\",\"_token\":\"vcNbGM45RUHOjHFCU8A0FcMRyrbjPFzTHZyt2Lbx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/goods\\/1\\/images\"}','2020-04-17 07:16:06','2020-04-17 07:16:06'),(579,1,'admin/goods/1/images/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 07:16:50','2020-04-17 07:16:50'),(580,1,'admin/goods/1/images/3','PUT','127.0.0.1','{\"good_id\":\"1\",\"description\":\"\\u534e\\u4e3a\\u667a\\u80fd\\u624b\\u673a\",\"cover\":\"on\",\"_token\":\"vcNbGM45RUHOjHFCU8A0FcMRyrbjPFzTHZyt2Lbx\",\"_method\":\"PUT\"}','2020-04-17 07:16:52','2020-04-17 07:16:52'),(581,1,'admin/goods/1/images/3/edit','GET','127.0.0.1','[]','2020-04-17 07:16:53','2020-04-17 07:16:53'),(582,1,'admin/goods/1/images/3','PUT','127.0.0.1','{\"good_id\":\"1\",\"description\":\"\\u534e\\u4e3a\\u667a\\u80fd\\u624b\\u673a\",\"cover\":\"on\",\"_token\":\"vcNbGM45RUHOjHFCU8A0FcMRyrbjPFzTHZyt2Lbx\",\"_method\":\"PUT\"}','2020-04-17 07:17:13','2020-04-17 07:17:13'),(583,1,'admin/goods/1/images/3/edit','GET','127.0.0.1','[]','2020-04-17 07:17:13','2020-04-17 07:17:13'),(584,1,'admin/goods/1/images/3','PUT','127.0.0.1','{\"good_id\":\"1\",\"description\":\"\\u534e\\u4e3a\\u667a\\u80fd\\u624b\\u673a\",\"cover\":\"on\",\"_token\":\"vcNbGM45RUHOjHFCU8A0FcMRyrbjPFzTHZyt2Lbx\",\"_method\":\"PUT\"}','2020-04-17 07:17:34','2020-04-17 07:17:34'),(585,1,'admin/goods/1/images/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 07:23:36','2020-04-17 07:23:36'),(586,1,'admin/goods/1/images/3','PUT','127.0.0.1','{\"good_id\":\"1\",\"description\":\"\\u534e\\u4e3a\\u667a\\u80fd\\u624b\\u673a\",\"cover\":\"on\",\"_token\":\"vcNbGM45RUHOjHFCU8A0FcMRyrbjPFzTHZyt2Lbx\",\"_method\":\"PUT\"}','2020-04-17 07:23:38','2020-04-17 07:23:38'),(587,1,'admin/goods/1/images/3/edit','GET','127.0.0.1','[]','2020-04-17 07:23:38','2020-04-17 07:23:38'),(588,1,'admin/goods/1/images/3','PUT','127.0.0.1','{\"good_id\":\"1\",\"description\":\"\\u534e\\u4e3a\\u667a\\u80fd\\u624b\\u673a\",\"cover\":\"off\",\"_token\":\"vcNbGM45RUHOjHFCU8A0FcMRyrbjPFzTHZyt2Lbx\",\"_method\":\"PUT\"}','2020-04-17 07:23:44','2020-04-17 07:23:44'),(589,1,'admin/goods/1/images','GET','127.0.0.1','[]','2020-04-17 07:23:45','2020-04-17 07:23:45'),(590,1,'admin/goods/1/images','GET','127.0.0.1','[]','2020-04-17 07:26:54','2020-04-17 07:26:54'),(591,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 08:02:52','2020-04-17 08:02:52'),(592,1,'admin/wx/orders','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-17 08:03:00','2020-04-17 08:03:00'),(593,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-21 02:07:09','2020-04-21 02:07:09'),(594,1,'admin/wx/categories/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-21 02:07:16','2020-04-21 02:07:16'),(595,1,'admin/wx/categories','GET','127.0.0.1','[]','2020-04-21 06:20:31','2020-04-21 06:20:31'),(596,1,'admin/wx/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-21 06:41:39','2020-04-21 06:41:39'),(597,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-21 06:46:22','2020-04-21 06:46:22'),(598,1,'admin/wx/users','GET','127.0.0.1','[]','2020-04-21 06:46:25','2020-04-21 06:46:25'),(599,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-21 06:47:18','2020-04-21 06:47:18'),(600,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-21 06:47:49','2020-04-21 06:47:49'),(601,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-21 06:48:20','2020-04-21 06:48:20'),(602,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-21 06:48:49','2020-04-21 06:48:49'),(603,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-21 06:49:22','2020-04-21 06:49:22'),(604,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-21 06:49:36','2020-04-21 06:49:36'),(605,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-21 06:49:51','2020-04-21 06:49:51'),(606,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-21 06:50:44','2020-04-21 06:50:44'),(607,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-21 06:50:53','2020-04-21 06:50:53'),(608,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-21 06:53:35','2020-04-21 06:53:35'),(609,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-21 06:55:13','2020-04-21 06:55:13'),(610,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-21 06:55:45','2020-04-21 06:55:45'),(611,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-21 06:56:04','2020-04-21 06:56:04'),(612,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-21 06:57:14','2020-04-21 06:57:14'),(613,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-21 06:58:39','2020-04-21 06:58:39'),(614,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-21 07:00:06','2020-04-21 07:00:06'),(615,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-21 07:00:53','2020-04-21 07:00:53'),(616,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-21 07:04:36','2020-04-21 07:04:36'),(617,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-21 07:23:45','2020-04-21 07:23:45'),(618,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-21 07:25:03','2020-04-21 07:25:03'),(619,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-21 07:28:47','2020-04-21 07:28:47'),(620,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-21 07:31:37','2020-04-21 07:31:37'),(621,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-21 07:32:16','2020-04-21 07:32:16'),(622,1,'admin/wx/commission/flush','DELETE','127.0.0.1','{\"_method\":\"DELETE\",\"year_month\":null,\"user_id\":null}','2020-04-21 07:34:06','2020-04-21 07:34:06'),(623,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-21 07:34:07','2020-04-21 07:34:07'),(624,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-21 07:34:47','2020-04-21 07:34:47'),(625,1,'admin/wx/commission/flush','DELETE','127.0.0.1','{\"_method\":\"DELETE\",\"year_month\":null,\"user_id\":null}','2020-04-21 07:34:52','2020-04-21 07:34:52'),(626,1,'admin/wx/commission/flush','DELETE','127.0.0.1','{\"_method\":\"DELETE\",\"year_month\":null,\"user_id\":null}','2020-04-21 07:35:41','2020-04-21 07:35:41'),(627,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-21 07:37:16','2020-04-21 07:37:16'),(628,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-21 07:37:46','2020-04-21 07:37:46'),(629,1,'admin/wx/commission/flush','POST','127.0.0.1','{\"year_month\":\"2020-03\",\"user_id\":\"1\"}','2020-04-21 07:37:52','2020-04-21 07:37:52'),(630,1,'admin/wx/commission/flush','POST','127.0.0.1','{\"year_month\":\"2020-03\",\"user_id\":\"1\"}','2020-04-21 07:39:34','2020-04-21 07:39:34'),(631,1,'admin/wx/commission/flush','POST','127.0.0.1','{\"year_month\":\"2020-03\",\"user_id\":\"1\"}','2020-04-21 07:39:55','2020-04-21 07:39:55'),(632,1,'admin/wx/commission/flush','POST','127.0.0.1','{\"year_month\":\"2020-03\",\"user_id\":\"1\"}','2020-04-21 07:41:13','2020-04-21 07:41:13'),(633,1,'admin/wx/commission/flush','POST','127.0.0.1','{\"year_month\":\"2020-03\",\"user_id\":\"1\"}','2020-04-21 07:41:28','2020-04-21 07:41:28'),(634,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-21 07:41:28','2020-04-21 07:41:28'),(635,1,'admin/wx/commission/flush','POST','127.0.0.1','{\"year_month\":\"2020-03\",\"user_id\":\"1\"}','2020-04-21 07:42:33','2020-04-21 07:42:33'),(636,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-21 07:42:52','2020-04-21 07:42:52'),(637,1,'admin/wx/commission/flush','POST','127.0.0.1','{\"year_month\":\"2020-03\",\"user_id\":\"1\"}','2020-04-21 07:43:06','2020-04-21 07:43:06'),(638,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-21 07:43:06','2020-04-21 07:43:06'),(639,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-23 05:30:15','2020-04-23 05:30:15'),(640,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-23 05:55:03','2020-04-23 05:55:03'),(641,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-23 05:55:43','2020-04-23 05:55:43'),(642,1,'admin/commissions/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-23 05:55:49','2020-04-23 05:55:49'),(643,1,'admin/commissions/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-23 05:56:32','2020-04-23 05:56:32'),(644,1,'admin/commissions/1','GET','127.0.0.1','[]','2020-04-23 05:57:23','2020-04-23 05:57:23'),(645,1,'admin/commissions/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-23 05:58:00','2020-04-23 05:58:00'),(646,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-23 06:10:07','2020-04-23 06:10:07'),(647,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-23 06:10:16','2020-04-23 06:10:16'),(648,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-23 06:10:22','2020-04-23 06:10:22'),(649,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-23 06:10:39','2020-04-23 06:10:39'),(650,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-23 06:11:52','2020-04-23 06:11:52'),(651,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-23 06:12:09','2020-04-23 06:12:09'),(652,1,'admin/commissions/1/2020-03','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-23 06:12:17','2020-04-23 06:12:17'),(653,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-23 06:12:20','2020-04-23 06:12:20'),(654,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-23 06:13:14','2020-04-23 06:13:14'),(655,1,'admin/commissions/1/2020-03','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-23 06:13:17','2020-04-23 06:13:17'),(656,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-23 06:13:21','2020-04-23 06:13:21'),(657,1,'admin/commissions/1/2020-03','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-23 06:14:04','2020-04-23 06:14:04'),(658,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-23 06:14:20','2020-04-23 06:14:20'),(659,1,'admin/commissions/2/2020-03','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-23 06:14:24','2020-04-23 06:14:24'),(660,1,'admin/wx/orders','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-23 06:15:11','2020-04-23 06:15:11'),(661,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-23 06:27:07','2020-04-23 06:27:07'),(662,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}','2020-04-23 06:27:14','2020-04-23 06:27:14'),(663,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}','2020-04-23 06:27:34','2020-04-23 06:27:34'),(664,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}','2020-04-23 06:27:44','2020-04-23 06:27:44'),(665,1,'admin/commissions/2/2020-03','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-23 06:28:03','2020-04-23 06:28:03'),(666,1,'admin/orders/3','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-23 06:28:05','2020-04-23 06:28:05'),(667,1,'admin/orders/3','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-23 06:28:30','2020-04-23 06:28:30'),(668,1,'admin/wx/commission','GET','127.0.0.1','[]','2020-04-24 22:23:18','2020-04-24 22:23:18'),(669,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-24 22:24:40','2020-04-24 22:24:40'),(670,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-24 22:25:03','2020-04-24 22:25:03'),(671,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-24 22:25:19','2020-04-24 22:25:19'),(672,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-24 22:26:04','2020-04-24 22:26:04'),(673,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-24 22:27:30','2020-04-24 22:27:30'),(674,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-24 22:32:55','2020-04-24 22:32:55'),(675,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}','2020-04-24 22:33:09','2020-04-24 22:33:09'),(676,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}','2020-04-24 23:02:31','2020-04-24 23:02:31'),(677,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-24 23:03:01','2020-04-24 23:03:01'),(678,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}','2020-04-24 23:03:03','2020-04-24 23:03:03'),(679,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}','2020-04-24 23:03:57','2020-04-24 23:03:57'),(680,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}','2020-04-24 23:05:59','2020-04-24 23:05:59'),(681,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}','2020-04-24 23:14:41','2020-04-24 23:14:41'),(682,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}','2020-04-24 23:18:39','2020-04-24 23:18:39'),(683,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}','2020-04-24 23:19:37','2020-04-24 23:19:37'),(684,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-24 23:21:40','2020-04-24 23:21:40'),(685,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"id\":null,\"name\":\"Ressi\",\"phone\":null}','2020-04-24 23:21:49','2020-04-24 23:21:49'),(686,1,'admin/wx/commission','GET','127.0.0.1','{\"id\":null,\"name\":\"Ressi\",\"phone\":null,\"_pjax\":\"#pjax-container\"}','2020-04-24 23:22:21','2020-04-24 23:22:21'),(687,1,'admin/wx/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-24 23:22:26','2020-04-24 23:22:26'),(688,1,'admin/wx/users/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-24 23:22:40','2020-04-24 23:22:40'),(689,1,'admin/wx/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-24 23:22:46','2020-04-24 23:22:46'),(690,1,'admin/wx/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}','2020-04-24 23:23:02','2020-04-24 23:23:02'),(691,1,'admin/wx/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-24 23:25:07','2020-04-24 23:25:07'),(692,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-24 23:25:26','2020-04-24 23:25:26'),(693,1,'admin/wx/levels/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-24 23:27:18','2020-04-24 23:27:18'),(694,1,'admin/wx/levels/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-24 23:27:21','2020-04-24 23:27:21'),(695,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-24 23:27:28','2020-04-24 23:27:28'),(696,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-24 23:32:20','2020-04-24 23:32:20'),(697,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:32:27','2020-04-24 23:32:27'),(698,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:32:31','2020-04-24 23:32:31'),(699,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:32:36','2020-04-24 23:32:36'),(700,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:32:39','2020-04-24 23:32:39'),(701,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:32:44','2020-04-24 23:32:44'),(702,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:32:47','2020-04-24 23:32:47'),(703,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-24 23:32:51','2020-04-24 23:32:51'),(704,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:32:55','2020-04-24 23:32:55'),(705,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:33:00','2020-04-24 23:33:00'),(706,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:33:04','2020-04-24 23:33:04'),(707,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:33:09','2020-04-24 23:33:09'),(708,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:33:14','2020-04-24 23:33:14'),(709,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:34:12','2020-04-24 23:34:12'),(710,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-24 23:34:43','2020-04-24 23:34:43'),(711,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-24 23:40:35','2020-04-24 23:40:35'),(712,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:40:40','2020-04-24 23:40:40'),(713,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:40:44','2020-04-24 23:40:44'),(714,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:40:48','2020-04-24 23:40:48'),(715,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:40:51','2020-04-24 23:40:51'),(716,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:40:56','2020-04-24 23:40:56'),(717,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:41:01','2020-04-24 23:41:01'),(718,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:41:06','2020-04-24 23:41:06'),(719,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:41:11','2020-04-24 23:41:11'),(720,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:41:15','2020-04-24 23:41:15'),(721,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:41:20','2020-04-24 23:41:20'),(722,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:41:23','2020-04-24 23:41:23'),(723,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:41:27','2020-04-24 23:41:27'),(724,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:41:31','2020-04-24 23:41:31'),(725,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:41:37','2020-04-24 23:41:37'),(726,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:41:42','2020-04-24 23:41:42'),(727,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:42:12','2020-04-24 23:42:12'),(728,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:42:50','2020-04-24 23:42:50'),(729,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:45:00','2020-04-24 23:45:00'),(730,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:45:28','2020-04-24 23:45:28'),(731,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:45:49','2020-04-24 23:45:49'),(732,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-24 23:47:59','2020-04-24 23:47:59'),(733,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-24 23:54:16','2020-04-24 23:54:16'),(734,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-25 00:04:20','2020-04-25 00:04:20'),(735,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-25 00:06:09','2020-04-25 00:06:09'),(736,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-25 00:08:31','2020-04-25 00:08:31'),(737,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-25 00:08:50','2020-04-25 00:08:50'),(738,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-25 00:09:37','2020-04-25 00:09:37'),(739,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-25 00:11:29','2020-04-25 00:11:29'),(740,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-25 00:12:03','2020-04-25 00:12:03'),(741,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-25 00:16:46','2020-04-25 00:16:46'),(742,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-25 00:17:52','2020-04-25 00:17:52'),(743,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-25 00:20:58','2020-04-25 00:20:58'),(744,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-25 00:23:29','2020-04-25 00:23:29'),(745,1,'admin/wx/levels/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:24:14','2020-04-25 00:24:14'),(746,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:26:19','2020-04-25 00:26:19'),(747,1,'admin/wx/levels/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:27:42','2020-04-25 00:27:42'),(748,1,'admin/wx/levels/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:28:56','2020-04-25 00:28:56'),(749,1,'admin/wx/levels/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:29:16','2020-04-25 00:29:16'),(750,1,'admin/wx/levels','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:29:23','2020-04-25 00:29:23'),(751,1,'admin/wx/levels','GET','127.0.0.1','[]','2020-04-25 00:30:29','2020-04-25 00:30:29'),(752,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:30:38','2020-04-25 00:30:38'),(753,1,'admin/wx/commission','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:31:46','2020-04-25 00:31:46'),(754,1,'admin/wx/orders','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:32:55','2020-04-25 00:32:55'),(755,1,'admin/wx/orders','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:47:16','2020-04-25 00:47:16'),(756,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:47:19','2020-04-25 00:47:19'),(757,1,'admin/goods/1/images','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:47:28','2020-04-25 00:47:28'),(758,1,'admin/specifications','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:47:37','2020-04-25 00:47:37'),(759,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:47:48','2020-04-25 00:47:48'),(760,1,'admin/goods/1/images','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:47:54','2020-04-25 00:47:54'),(761,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:48:06','2020-04-25 00:48:06'),(762,1,'admin/wx/advertises','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:50:21','2020-04-25 00:50:21'),(763,1,'admin/wx/advertises','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:51:06','2020-04-25 00:51:06'),(764,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:51:12','2020-04-25 00:51:12'),(765,1,'admin/specifications','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:51:17','2020-04-25 00:51:17'),(766,1,'admin/wx/goods','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:52:00','2020-04-25 00:52:00'),(767,1,'admin/wx/categories','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:52:04','2020-04-25 00:52:04'),(768,1,'admin/wx/advertises','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:54:12','2020-04-25 00:54:12'),(769,1,'admin/wx/advertises','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:54:36','2020-04-25 00:54:36'),(770,1,'admin/wx/advertises','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:54:39','2020-04-25 00:54:39'),(771,1,'admin/wx/reply','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:54:42','2020-04-25 00:54:42'),(772,1,'admin/wx/reply','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:55:55','2020-04-25 00:55:55'),(773,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:56:09','2020-04-25 00:56:09'),(774,1,'admin/auth/menu/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:56:18','2020-04-25 00:56:18'),(775,1,'admin/auth/menu/1','PUT','127.0.0.1','{\"parent_id\":\"2\",\"title\":\"\\u7cfb\\u7edf\\u73af\\u5883\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"49vX5yqHcMxr0wSJcYxiQL8MIJk1zTGrsYKnw94a\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.com\\/admin\\/auth\\/menu\"}','2020-04-25 00:56:58','2020-04-25 00:56:58'),(776,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-25 00:56:59','2020-04-25 00:56:59'),(777,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-04-25 00:57:07','2020-04-25 00:57:07'),(778,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:57:15','2020-04-25 00:57:15'),(779,1,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-04-25 00:57:36','2020-04-25 00:57:36'),(780,1,'admin','GET','127.0.0.1','[]','2020-04-25 01:05:20','2020-04-25 01:05:20');
/*!40000 ALTER TABLE `mall_admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_admin_permissions`
--

DROP TABLE IF EXISTS `mall_admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mall_admin_permissions_name_unique` (`name`),
  UNIQUE KEY `mall_admin_permissions_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_admin_permissions`
--

LOCK TABLES `mall_admin_permissions` WRITE;
/*!40000 ALTER TABLE `mall_admin_permissions` DISABLE KEYS */;
INSERT INTO `mall_admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL);
/*!40000 ALTER TABLE `mall_admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_admin_role_menu`
--

DROP TABLE IF EXISTS `mall_admin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `mall_admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_admin_role_menu`
--

LOCK TABLES `mall_admin_role_menu` WRITE;
/*!40000 ALTER TABLE `mall_admin_role_menu` DISABLE KEYS */;
INSERT INTO `mall_admin_role_menu` VALUES (1,2,NULL,NULL);
/*!40000 ALTER TABLE `mall_admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_admin_role_permissions`
--

DROP TABLE IF EXISTS `mall_admin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `mall_admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_admin_role_permissions`
--

LOCK TABLES `mall_admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `mall_admin_role_permissions` DISABLE KEYS */;
INSERT INTO `mall_admin_role_permissions` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `mall_admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_admin_role_users`
--

DROP TABLE IF EXISTS `mall_admin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `mall_admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_admin_role_users`
--

LOCK TABLES `mall_admin_role_users` WRITE;
/*!40000 ALTER TABLE `mall_admin_role_users` DISABLE KEYS */;
INSERT INTO `mall_admin_role_users` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `mall_admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_admin_roles`
--

DROP TABLE IF EXISTS `mall_admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mall_admin_roles_name_unique` (`name`),
  UNIQUE KEY `mall_admin_roles_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_admin_roles`
--

LOCK TABLES `mall_admin_roles` WRITE;
/*!40000 ALTER TABLE `mall_admin_roles` DISABLE KEYS */;
INSERT INTO `mall_admin_roles` VALUES (1,'Administrator','administrator','2020-04-11 15:14:01','2020-04-11 15:14:01');
/*!40000 ALTER TABLE `mall_admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_admin_user_permissions`
--

DROP TABLE IF EXISTS `mall_admin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `mall_admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_admin_user_permissions`
--

LOCK TABLES `mall_admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `mall_admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mall_admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_admin_users`
--

DROP TABLE IF EXISTS `mall_admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mall_admin_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_admin_users`
--

LOCK TABLES `mall_admin_users` WRITE;
/*!40000 ALTER TABLE `mall_admin_users` DISABLE KEYS */;
INSERT INTO `mall_admin_users` VALUES (1,'admin','$2y$10$2B5wzC2VfO7u5sXilypH3.HYtSezpW6fxzoImpXloGg02xtf1gHPq','Administrator',NULL,'AaFT4hZY2ReZpl1RcNGPIkrD1KwFmp3LTkZHBSjfDKBPmIv0eK436KweWEBd','2020-04-11 15:14:01','2020-04-11 15:14:01');
/*!40000 ALTER TABLE `mall_admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_ads`
--

DROP TABLE IF EXISTS `mall_ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_ads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '广告类型',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '广告位编号-前端约定',
  `url` text COLLATE utf8mb4_unicode_ci COMMENT 'url地址',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_ads`
--

LOCK TABLES `mall_ads` WRITE;
/*!40000 ALTER TABLE `mall_ads` DISABLE KEYS */;
INSERT INTO `mall_ads` VALUES (1,'广告1','112233','images/7d2e3eb35968f2e31cc146f23226d663.jpg','2020-04-13 06:04:05','2020-04-13 06:04:05');
/*!40000 ALTER TABLE `mall_ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_bonuses`
--

DROP TABLE IF EXISTS `mall_bonuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_bonuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `user_id` int(11) NOT NULL COMMENT '外键用户ID',
  `order_id` int(11) NOT NULL COMMENT '订单ID',
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0-普通客户 1-二级代销 2-一级代销',
  `bonus` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '返利金额',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mall_bonuses_user_id_index` (`user_id`),
  KEY `mall_bonuses_order_id_index` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_bonuses`
--

LOCK TABLES `mall_bonuses` WRITE;
/*!40000 ALTER TABLE `mall_bonuses` DISABLE KEYS */;
INSERT INTO `mall_bonuses` VALUES (1,1,1,'1',23.00,'2020-04-01 15:23:45',NULL),(2,1,2,'1',0.00,'2020-03-31 15:23:45','2020-04-21 07:43:06'),(3,2,3,'2',22.00,'2020-03-31 15:23:45',NULL),(4,2,4,'2',23.00,'2020-03-21 15:23:45',NULL);
/*!40000 ALTER TABLE `mall_bonuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_cart_items`
--

DROP TABLE IF EXISTS `mall_cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_cart_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '外键用户id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '外键商品id',
  `cartExist` tinyint(1) DEFAULT NULL COMMENT '是否在购物车内，不是则是立即购买',
  `amount` bigint(20) unsigned NOT NULL COMMENT '购买数量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_cart_items`
--

LOCK TABLES `mall_cart_items` WRITE;
/*!40000 ALTER TABLE `mall_cart_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mall_cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_categories`
--

DROP TABLE IF EXISTS `mall_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分类名称',
  `parent_id` bigint(20) unsigned DEFAULT NULL COMMENT '父类id',
  `is_directory` tinyint(1) DEFAULT '0' COMMENT '是否拥有子类',
  `level` int(10) unsigned NOT NULL COMMENT '当前分类层级',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '该分类所有父类id',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mall_categories_parent_id_foreign` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_categories`
--

LOCK TABLES `mall_categories` WRITE;
/*!40000 ALTER TABLE `mall_categories` DISABLE KEYS */;
INSERT INTO `mall_categories` VALUES (1,'厨具',NULL,0,0,NULL,NULL,NULL),(2,'蒸锅',1,0,1,NULL,'2020-04-15 08:06:12','2020-04-15 08:36:21'),(3,'煎锅',1,0,1,NULL,'2020-04-15 08:19:50','2020-04-15 08:48:24');
/*!40000 ALTER TABLE `mall_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_good_images`
--

DROP TABLE IF EXISTS `mall_good_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_good_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品图片描述',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '外键商品id',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品图片',
  `cover` tinyint(1) NOT NULL DEFAULT '1' COMMENT '商品封面-浏览的第一张图片',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mall_good_images_good_id_index` (`good_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_good_images`
--

LOCK TABLES `mall_good_images` WRITE;
/*!40000 ALTER TABLE `mall_good_images` DISABLE KEYS */;
INSERT INTO `mall_good_images` VALUES (2,'华为智能手机2',1,'images/665b23db70a296b62e4989ca7b505b2c.jpg',1,'2020-04-17 02:04:51','2020-04-17 07:07:24'),(3,'华为智能手机',1,'images/a96ed392ac892d698747a1797c00d5bd.jpg',0,'2020-04-17 02:05:15','2020-04-17 07:23:44');
/*!40000 ALTER TABLE `mall_good_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_good_skus`
--

DROP TABLE IF EXISTS `mall_good_skus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_good_skus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'sku商品名称',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'sku商品描述',
  `price` decimal(10,2) NOT NULL COMMENT 'sku商品价格',
  `stock` int(10) unsigned NOT NULL COMMENT 'sku商品数量',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '外键商品id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mall_good_skus_good_id_foreign` (`good_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_good_skus`
--

LOCK TABLES `mall_good_skus` WRITE;
/*!40000 ALTER TABLE `mall_good_skus` DISABLE KEYS */;
INSERT INTO `mall_good_skus` VALUES (1,'内存,存储空间','8G,32G',3500.00,70,1,'2020-04-16 22:15:39','2020-04-16 22:15:39');
/*!40000 ALTER TABLE `mall_good_skus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_goods`
--

DROP TABLE IF EXISTS `mall_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_goods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品名称',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品描述',
  `on_hot` tinyint(1) NOT NULL DEFAULT '1' COMMENT '推荐标识',
  `on_sale` tinyint(1) NOT NULL DEFAULT '1' COMMENT '上架标识',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品详情',
  `express_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '售价',
  `rating` double(8,2) NOT NULL DEFAULT '5.00' COMMENT '星级平均评分',
  `category_id1` int(11) NOT NULL COMMENT '分类一级id',
  `category_id2` int(11) NOT NULL COMMENT '分类二级id',
  `good_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '货号',
  `stock` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '库存',
  `sold_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `review_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览量',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id1` (`category_id1`),
  KEY `category_id2` (`category_id2`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_goods`
--

LOCK TABLES `mall_goods` WRITE;
/*!40000 ALTER TABLE `mall_goods` DISABLE KEYS */;
INSERT INTO `mall_goods` VALUES (1,'华为-P30','华为智能手机',1,1,'<p><strong>这里是详情面熟</strong></p>',4000.00,3500.00,5.00,1,2,'Y5000',70,0,0,'2020-04-16 21:14:20','2020-04-16 22:04:38');
/*!40000 ALTER TABLE `mall_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_images`
--

DROP TABLE IF EXISTS `mall_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `user_id` int(11) NOT NULL COMMENT '外键user_id',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户图片类型',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片相对路径',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mall_images_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_images`
--

LOCK TABLES `mall_images` WRITE;
/*!40000 ALTER TABLE `mall_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `mall_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_migrations`
--

DROP TABLE IF EXISTS `mall_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_migrations`
--

LOCK TABLES `mall_migrations` WRITE;
/*!40000 ALTER TABLE `mall_migrations` DISABLE KEYS */;
INSERT INTO `mall_migrations` VALUES (3,'2014_10_12_000000_create_users_table',2),(2,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2016_01_04_173148_create_admin_tables',2),(5,'2020_03_08_074655_create_images_table',3),(6,'2020_03_08_093730_create_categories_table',3),(7,'2020_03_08_094233_create_user_infos_table',3),(8,'2020_03_08_131446_create_user_addresses_table',3),(20,'2020_03_08_162327_create_goods_table',7),(10,'2020_03_09_072359_create_good_images_table',4),(11,'2020_03_09_114622_create_cart_items_table',4),(12,'2020_03_09_130858_create_orders_table',5),(13,'2020_03_09_130929_create_order_items_table',5),(14,'2020_03_09_135709_create_ads_table',5),(15,'2020_03_10_201919_create_replies_table',5),(16,'2020_04_12_031500_create_good_skus_table',5),(19,'2020_04_16_035840_create_specifications_table',6),(21,'2020_04_20_12313_create_bonuses_table',8);
/*!40000 ALTER TABLE `mall_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_order_items`
--

DROP TABLE IF EXISTS `mall_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_order_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `order_id` bigint(20) unsigned NOT NULL COMMENT '外键订单id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '外键商品id',
  `amount` int(10) unsigned NOT NULL COMMENT '数量',
  `price` decimal(10,2) NOT NULL COMMENT '单价',
  `rating` int(10) unsigned DEFAULT NULL COMMENT '评分',
  `reviewed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_order_items`
--

LOCK TABLES `mall_order_items` WRITE;
/*!40000 ALTER TABLE `mall_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mall_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_orders`
--

DROP TABLE IF EXISTS `mall_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单号',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '外键用户id',
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户地址',
  `total_amount` decimal(10,2) NOT NULL COMMENT '订单总价',
  `remark` text COLLATE utf8mb4_unicode_ci COMMENT '订单备注',
  `paid_at` datetime DEFAULT NULL COMMENT '支付时间',
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '支付方式',
  `payment_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '支付流水号',
  `refund_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'refund_pending' COMMENT '退款退货状态',
  `refund_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '退款退货单号',
  `closed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单是否关闭',
  `reply_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单是否已评价',
  `cancel` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单是否取消',
  `ship_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ship_pending' COMMENT '订单物流状态',
  `ship_data` text COLLATE utf8mb4_unicode_ci COMMENT '物流信息',
  `extra` text COLLATE utf8mb4_unicode_ci COMMENT '其他订单额外数据',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mall_orders_no_unique` (`no`),
  UNIQUE KEY `mall_orders_refund_no_unique` (`refund_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_orders`
--

LOCK TABLES `mall_orders` WRITE;
/*!40000 ALTER TABLE `mall_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `mall_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_replies`
--

DROP TABLE IF EXISTS `mall_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_replies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `good_id` int(11) NOT NULL COMMENT '外键商品id',
  `user_id` int(11) NOT NULL COMMENT '外键用户id',
  `order_id` int(11) NOT NULL COMMENT '外键订单id',
  `images` json DEFAULT NULL COMMENT '评论图片json数组',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '评论描述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mall_replies_good_id_index` (`good_id`),
  KEY `mall_replies_user_id_index` (`user_id`),
  KEY `mall_replies_order_id_index` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_replies`
--

LOCK TABLES `mall_replies` WRITE;
/*!40000 ALTER TABLE `mall_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `mall_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_specifications`
--

DROP TABLE IF EXISTS `mall_specifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_specifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_specifications`
--

LOCK TABLES `mall_specifications` WRITE;
/*!40000 ALTER TABLE `mall_specifications` DISABLE KEYS */;
INSERT INTO `mall_specifications` VALUES (1,'内存','2020-04-15 20:10:50','2020-04-15 20:10:50'),(2,'存储空间','2020-04-15 20:10:59','2020-04-15 20:10:59'),(3,'test','2020-04-15 20:11:05','2020-04-15 20:11:05'),(4,'test2','2020-04-15 20:15:45','2020-04-15 20:15:45');
/*!40000 ALTER TABLE `mall_specifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_user_addresses`
--

DROP TABLE IF EXISTS `mall_user_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_user_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `user_id` int(11) NOT NULL COMMENT '外键user_id',
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '省',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '市',
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '区',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地址',
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮编',
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '收货人姓名',
  `contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '收货人手机号',
  `default_address` tinyint(1) NOT NULL DEFAULT '0' COMMENT '默认地址标识',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mall_user_addresses_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_user_addresses`
--

LOCK TABLES `mall_user_addresses` WRITE;
/*!40000 ALTER TABLE `mall_user_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mall_user_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_user_infos`
--

DROP TABLE IF EXISTS `mall_user_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_user_infos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `user_id` int(11) NOT NULL COMMENT '外键user_id',
  `type` smallint(6) DEFAULT NULL,
  `gender` smallint(6) NOT NULL DEFAULT '0' COMMENT '性别:0-保密,1-男,2-女',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mall_user_infos_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_user_infos`
--

LOCK TABLES `mall_user_infos` WRITE;
/*!40000 ALTER TABLE `mall_user_infos` DISABLE KEYS */;
INSERT INTO `mall_user_infos` VALUES (1,1,1,2,'1986-09-24 16:01:52','2020-04-12 06:43:39'),(2,2,2,2,'1974-11-27 13:26:56',NULL),(3,3,0,0,'2019-04-20 02:15:46',NULL),(4,4,2,1,'2001-12-24 13:57:01',NULL),(5,5,2,2,'2014-06-25 02:48:37',NULL),(6,6,0,0,'2014-01-16 08:09:18',NULL),(7,7,1,0,'1970-03-03 08:28:56',NULL),(8,8,2,0,'1989-10-30 06:43:47',NULL),(9,9,2,2,'2007-02-08 16:56:36',NULL),(10,10,0,2,'2012-05-31 23:19:12',NULL),(11,11,1,2,'1999-05-14 07:56:30',NULL),(12,12,2,0,'1971-03-12 19:54:33',NULL),(13,13,0,2,'1991-03-18 22:16:16',NULL),(14,14,1,0,'2004-04-07 07:20:14',NULL),(15,15,2,2,'1978-08-10 14:35:31',NULL),(16,16,1,2,'2006-12-12 04:32:23',NULL),(17,17,2,1,'2018-04-20 18:29:55',NULL),(18,18,0,2,'2018-06-18 10:38:22',NULL),(19,19,2,1,'1974-03-22 17:56:11',NULL),(20,20,1,1,'2013-05-26 03:22:46',NULL),(21,21,1,2,'1973-12-16 12:29:52',NULL),(22,22,0,0,'1978-08-10 15:32:07',NULL),(23,23,2,2,'1972-04-03 07:49:26',NULL),(24,24,0,0,'1988-11-16 04:47:26',NULL),(25,25,2,2,'2014-09-19 01:55:22',NULL),(26,26,2,0,'1974-02-01 05:29:49',NULL),(27,27,1,2,'1989-12-22 23:29:01',NULL),(28,28,2,1,'1978-03-14 01:54:47',NULL),(29,29,0,2,'1998-02-16 15:29:35',NULL),(30,30,2,1,'1994-04-11 15:20:35',NULL);
/*!40000 ALTER TABLE `mall_user_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_users`
--

DROP TABLE IF EXISTS `mall_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信昵称',
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户手机号',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信头像',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '登录密码',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mall_users_phone_unique` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_users`
--

LOCK TABLES `mall_users` WRITE;
/*!40000 ALTER TABLE `mall_users` DISABLE KEYS */;
INSERT INTO `mall_users` VALUES (1,'Ressie Denesik','13765096763','images/OIP.jpg','112233',NULL,'1973-01-04 19:13:59','2020-04-13 05:19:32'),(2,'Gillian Weissnat','+1-982-205-','','$2y$10$XN2ic6iCQ/1oWLfn7AVPnOZOzwkXVlczf/lad6RKTrioDazRZXgOG',NULL,'1993-01-24 00:33:28',NULL),(3,'Kailee Hill MD','1-332-961-2','','$2y$10$mxPTn/07H0Xbg5Vc0g2V2emQeMLb7MitFYcDK95ykScwg7PhTghTS',NULL,'2015-10-13 12:50:29',NULL),(4,'Wade Greenfelder','707.995.656','','$2y$10$b8aQAKFLUEI8Hh265YngJuftYpqF9vkAdK4XZIBmxx8WK1Y6LNFxK',NULL,'1970-03-10 18:00:43',NULL),(5,'Mabel Ortiz','1-715-898-3','','$2y$10$PS./Vkku3pnLpLI8s1cVLeQujqlxRZ7RJn9xGdA1n93QE871Lo/6W',NULL,'1975-08-26 13:04:10',NULL),(6,'Dr. Adam Kohler PhD','446.759.240','','$2y$10$hVB8wFvGQzl42BILLqg/HurVuNQ.glHp1mmSGo8PAQ3ci7P/BPXQO',NULL,'1997-10-19 04:01:45',NULL),(7,'Rosanna Pouros','1-405-297-7','','$2y$10$1MKsXWXPgJtjf9ox.4QWBOzjkgunycnoF9b98FWO5spNO4AJIXafe',NULL,'1987-12-19 11:36:53',NULL),(8,'Dr. Marcus Weissnat','735-202-039','','$2y$10$o5A07dTqRrdrV3vxqD5ZEuKothDWnmIUGVrGp.afVAlKUbQLIbFpq',NULL,'2012-05-23 09:45:32',NULL),(9,'Marilou Douglas IV','+1623897271','','$2y$10$8IIEDbEKHa3AY/69ry2CpOqmsGsR/nUH1Aa/4NPdRNe3zMshDU.tm',NULL,'1999-12-23 02:26:12',NULL),(10,'Joany Abshire','207.402.907','','$2y$10$THqsE9Osv1EdtufWi8t4u.gfptTYihTZUPdg2wTrvt1AYfRc1Szpe',NULL,'2007-05-05 09:01:48',NULL),(11,'Adele Lynch','473-438-935','','$2y$10$Sh4CJ0jbbLzSMTpxdl0LtO73vDvIJTgf1L16wTCKU8gRrkFckcTTe',NULL,'2006-10-17 06:12:08',NULL),(12,'Jayda Hammes IV','+1223567515','','$2y$10$t4ikP.ZHf7ziP0pzXE8OqOiNzh53Qf7XEaVIWLwz9C/DdKGCxOguG',NULL,'2001-11-04 10:33:05',NULL),(13,'Karlie Schinner','340.520.294','','$2y$10$DjiOYwSBozXLFLqBBb7Vc.NmQ9w.M/hU2m4PcxFZDiOdRzJNUSi16',NULL,'1992-11-15 07:57:54',NULL),(14,'Cleo Medhurst','992.625.894','','$2y$10$A7wzHdnPcawFZvQ6FGwdO.NZd9MS9WdE9ICn23K8Cny/UBJxP0Id2',NULL,'2011-01-19 11:45:16',NULL),(15,'Isadore Wilderman III','330-533-635','','$2y$10$I3mEIh/DcxTHFVLIzCpjxe6mrGn3wMA9APpDd8N/KwLyeDcoNCc0m',NULL,'1984-03-06 07:16:25',NULL),(16,'Prof. Gabriel McGlynn','1-415-313-1','','$2y$10$XLOr56aP/Jb/X2EUiViL0eA21jGurXGJcNQmTckGu5F1Vq2uvX7Su',NULL,'2016-03-28 23:19:32',NULL),(17,'Ilene Runolfsson','+1290772851','','$2y$10$Iz54UfIoswTwaUm5qpiJBOHD9rv3ULoFMNjgvCSlNLe3KGsNkGmrC',NULL,'1972-06-11 13:29:26',NULL),(18,'Prof. Helmer Mosciski','(815) 566-6','','$2y$10$1HZwSYZbwbtHxckonNtpXOF8iGyGpTOUvdbR3QqaL9HZhShxpHKDq',NULL,'1988-02-12 14:11:04',NULL),(19,'Felicia Johnston','(709) 381-9','','$2y$10$O3b8/bD3tqfqk6275XhDbubFtus.MVlCT8DGUdheY8uZp1/T4iTfK',NULL,'2015-09-14 00:05:15',NULL),(20,'Dr. Lindsey Stehr MD','1-946-635-1','','$2y$10$8Kicva1hNfe4SEhRSNfg/u4yY1TI8LYWpU/lpd7.CpTjAE6w.mO5G',NULL,'2018-03-02 23:45:10',NULL),(21,'Jalen Watsica V','(408) 839-2','','$2y$10$fbg3xZJmh0FiMvztFAZ86ucKSBiYow2k0UUavbk83rY0x5rIsAKn2',NULL,'1997-12-14 13:56:43',NULL),(22,'Dortha Zemlak','583-461-198','','$2y$10$hVhes/ajPOlU1V2hiBZVXuaeGfG0chpC7ki/R1TZiD91AXNtVwJ4O',NULL,'2017-11-14 03:48:51',NULL),(23,'Annette Spinka','527-584-121','','$2y$10$ZkdX5a2jDLlRFzz6fw50FO1cNWk9P9yCRNbY4Cxa81TOXY0hzZ9aa',NULL,'1994-08-04 23:53:46',NULL),(24,'Stacy Anderson MD','524-369-056','','$2y$10$C9xxqvshhbRJVFhbG4pvb.NYi3.AeTKXggLQmnd61fbf1BujVZAOC',NULL,'1987-04-10 07:14:26',NULL),(25,'Abdullah Krajcik DVM','+1.628.458.','','$2y$10$OdX7XjPdU9CXvW0ZEzUO.uikP20UBZDepYyY.YvMh702leVYvIP4m',NULL,'1974-09-18 04:27:13',NULL),(26,'Gabrielle Hintz','(398) 733-0','','$2y$10$0fU8aB0.qdNKHq.JnfgLju/DY4UN0MldtjiXqnBYy9TccHSpNf/5q',NULL,'1983-08-14 12:55:16',NULL),(27,'Dr. Ahmed Wyman DVM','+1-516-409-','','$2y$10$WDFTvg9MZkBGqA0dwGb81O8LQa/GnIRBb0IVDgdxdVaZFQKpgMHcu',NULL,'2005-06-26 01:36:43',NULL),(28,'Prof. Theron Doyle','(281) 203-9','','$2y$10$CKFZxFDAuaI2JUwkZX4/Bus7p1BW2JInsB.uqSQXYswyZ9sXhSW0y',NULL,'2008-12-28 04:39:48',NULL),(29,'Misael Turcotte PhD','230.349.185','','$2y$10$iL5LIbUeW5zZs7kM2sgtRuZeufFIZnV58qKRmW5yYMQ0shvocP9AC',NULL,'2017-07-18 15:28:02',NULL),(30,'Marty Grant III','(658) 607-4','','$2y$10$DpjgL7UM.7ga8Rz7xtTv6.18mFkUvwBH0r.Z.1NlDtr4BInKFQJxG',NULL,'1996-02-22 23:07:50',NULL);
/*!40000 ALTER TABLE `mall_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-29 19:37:30

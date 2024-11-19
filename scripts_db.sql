-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: tuspelis_db2
-- ------------------------------------------------------
-- Server version	5.5.5-10.10.6-MariaDB-1:10.10.6+maria~ubu2204

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
-- Table structure for table `admin_interface_theme`
--

DROP TABLE IF EXISTS `admin_interface_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint(5) unsigned NOT NULL CHECK (`logo_max_height` >= 0),
  `logo_max_width` smallint(5) unsigned NOT NULL CHECK (`logo_max_width` >= 0),
  `foldable_apps` tinyint(1) NOT NULL,
  `language_chooser_control` varchar(20) NOT NULL,
  `list_filter_highlight` tinyint(1) NOT NULL,
  `list_filter_removal_links` tinyint(1) NOT NULL,
  `show_fieldsets_as_tabs` tinyint(1) NOT NULL,
  `show_inlines_as_tabs` tinyint(1) NOT NULL,
  `css_generic_link_active_color` varchar(10) NOT NULL,
  `collapsible_stacked_inlines` tinyint(1) NOT NULL,
  `collapsible_stacked_inlines_collapsed` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines_collapsed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_interface_theme`
--

LOCK TABLES `admin_interface_theme` WRITE;
/*!40000 ALTER TABLE `admin_interface_theme` DISABLE KEYS */;
INSERT INTO `admin_interface_theme` VALUES (1,'Django',1,'Administrador TusPelis',1,'admin-interface/logo/rb_82978.png',1,'#073322','#44B78B','#44B78B','#FFFFFF','#C9F0DD','#44B78B','#FFFFFF','#FFFFFF','#C9F0DD',1,'#0C3C26','#156641','#0C4B33','#0C3C26','#FFFFFF','#BA2121','#A41515','#FFFFFF',1,1,'#000000',1,'#FFFFFF',1,'admin-interface/favicon/favicon.ico','0.3','',1,'#E74C3C',1,1,1,'code',1,0,0,'#FFFFCC','#FFFFFF',100,400,1,'default-select',1,0,0,0,'#29B864',0,1,0,1);
/*!40000 ALTER TABLE `admin_interface_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add Theme',10,'add_theme'),(26,'Can change Theme',10,'change_theme'),(27,'Can delete Theme',10,'delete_theme'),(28,'Can view Theme',10,'view_theme');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-10-19 02:00:14.288949','1','TipoFavorito object (1)',2,'[{\"changed\": {\"fields\": [\"Estado\"]}}]',7,1),(2,'2024-10-19 02:00:23.350639','2','TipoFavorito object (2)',2,'[{\"changed\": {\"fields\": [\"Estado\"]}}]',7,1),(3,'2024-10-22 00:08:45.293357','1','Favorito object (1)',1,'[{\"added\": {}}]',8,1),(4,'2024-10-22 01:47:30.803205','1','FavoritosUser object (1)',1,'[{\"added\": {}}]',9,1),(5,'2024-10-22 02:05:01.746283','1','Django',2,'[{\"changed\": {\"fields\": [\"Logo\", \"Title\"]}}]',10,1),(6,'2024-10-22 02:13:04.299026','1','Django',2,'[{\"changed\": {\"fields\": [\"Logo\"]}}]',10,1),(7,'2024-10-22 02:16:14.182958','1','Django',2,'[]',10,1),(8,'2024-10-22 02:16:51.571112','1','Django',2,'[{\"changed\": {\"fields\": [\"Favicon\"]}}]',10,1),(9,'2024-10-22 02:18:17.980285','1','Django',2,'[{\"changed\": {\"fields\": [\"Color\", \"Background color\"]}}]',10,1),(10,'2024-10-22 02:18:40.768431','1','Django',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',10,1),(11,'2024-10-22 22:25:36.931280','2','aaa',1,'[{\"added\": {}}]',8,1),(12,'2024-10-22 22:26:12.588656','2','FavoritosUser object (2)',1,'[{\"added\": {}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(10,'admin_interface','theme'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(8,'favoritos','favorito'),(9,'favoritos_user','favoritosuser'),(5,'sessions','session'),(7,'tipo_favoritos','tipofavorito'),(6,'users','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-10-17 23:45:39.068398'),(2,'contenttypes','0002_remove_content_type_name','2024-10-17 23:45:39.215521'),(3,'auth','0001_initial','2024-10-17 23:45:39.705335'),(4,'auth','0002_alter_permission_name_max_length','2024-10-17 23:45:39.812764'),(5,'auth','0003_alter_user_email_max_length','2024-10-17 23:45:39.820047'),(6,'auth','0004_alter_user_username_opts','2024-10-17 23:45:39.829144'),(7,'auth','0005_alter_user_last_login_null','2024-10-17 23:45:39.844486'),(8,'auth','0006_require_contenttypes_0002','2024-10-17 23:45:39.851087'),(9,'auth','0007_alter_validators_add_error_messages','2024-10-17 23:45:39.861807'),(10,'auth','0008_alter_user_username_max_length','2024-10-17 23:45:39.873129'),(11,'auth','0009_alter_user_last_name_max_length','2024-10-17 23:45:39.882463'),(12,'auth','0010_alter_group_name_max_length','2024-10-17 23:45:39.959570'),(13,'auth','0011_update_proxy_permissions','2024-10-17 23:45:39.971269'),(14,'auth','0012_alter_user_first_name_max_length','2024-10-17 23:45:39.980127'),(15,'users','0001_initial','2024-10-17 23:45:40.628494'),(16,'admin','0001_initial','2024-10-17 23:45:40.850377'),(17,'admin','0002_logentry_remove_auto_add','2024-10-17 23:45:40.859483'),(18,'admin','0003_logentry_add_action_flag_choices','2024-10-17 23:45:40.870943'),(19,'sessions','0001_initial','2024-10-17 23:45:40.973212'),(20,'admin_interface','0001_initial','2024-10-22 02:00:55.718673'),(21,'admin_interface','0002_add_related_modal','2024-10-22 02:00:56.124422'),(22,'admin_interface','0003_add_logo_color','2024-10-22 02:00:56.231696'),(23,'admin_interface','0004_rename_title_color','2024-10-22 02:00:56.295169'),(24,'admin_interface','0005_add_recent_actions_visible','2024-10-22 02:00:56.401374'),(25,'admin_interface','0006_bytes_to_str','2024-10-22 02:00:56.484420'),(26,'admin_interface','0007_add_favicon','2024-10-22 02:00:56.591697'),(27,'admin_interface','0008_change_related_modal_background_opacity_type','2024-10-22 02:00:56.789942'),(28,'admin_interface','0009_add_enviroment','2024-10-22 02:00:57.016711'),(29,'admin_interface','0010_add_localization','2024-10-22 02:00:57.034795'),(30,'admin_interface','0011_add_environment_options','2024-10-22 02:00:57.373727'),(31,'admin_interface','0012_update_verbose_names','2024-10-22 02:00:57.383844'),(32,'admin_interface','0013_add_related_modal_close_button','2024-10-22 02:00:57.486949'),(33,'admin_interface','0014_name_unique','2024-10-22 02:00:57.552532'),(34,'admin_interface','0015_add_language_chooser_active','2024-10-22 02:00:57.653822'),(35,'admin_interface','0016_add_language_chooser_display','2024-10-22 02:00:57.795782'),(36,'admin_interface','0017_change_list_filter_dropdown','2024-10-22 02:00:57.802519'),(37,'admin_interface','0018_theme_list_filter_sticky','2024-10-22 02:00:57.900423'),(38,'admin_interface','0019_add_form_sticky','2024-10-22 02:00:58.085142'),(39,'admin_interface','0020_module_selected_colors','2024-10-22 02:00:58.328728'),(40,'admin_interface','0021_file_extension_validator','2024-10-22 02:00:58.339360'),(41,'admin_interface','0022_add_logo_max_width_and_height','2024-10-22 02:00:58.550027'),(42,'admin_interface','0023_theme_foldable_apps','2024-10-22 02:00:58.648564'),(43,'admin_interface','0024_remove_theme_css','2024-10-22 02:00:58.706172'),(44,'admin_interface','0025_theme_language_chooser_control','2024-10-22 02:00:58.809578'),(45,'admin_interface','0026_theme_list_filter_highlight','2024-10-22 02:00:58.921999'),(46,'admin_interface','0027_theme_list_filter_removal_links','2024-10-22 02:00:59.025239'),(47,'admin_interface','0028_theme_show_fieldsets_as_tabs_and_more','2024-10-22 02:00:59.229612'),(48,'admin_interface','0029_theme_css_generic_link_active_color','2024-10-22 02:00:59.345814'),(49,'admin_interface','0030_theme_collapsible_stacked_inlines_and_more','2024-10-22 02:00:59.782633');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('x0jtuufx6e3z4eca7gwkbrlus8aqair4','.eJxVjMsOgjAQRf-la9Mw9OHUpXu_gcwDBDVtQmFl_HchYaHbe865b9PRuozdWvu5m9RcDJjT78Ykzz7vQB-U78VKycs8sd0Ve9Bqb0X71_Vw_w5GquNWC4eUPHhBOKMjFJBBBmBuGwohDVG9smtBMDm3Sao-YgzqhLDByObzBeTiN9g:1t1aa5:ubSygbOOI-47WTDPdN65dh130LySwXBv0By5O9JEPJQ','2024-11-01 00:11:01.015615');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favoritos`
--

DROP TABLE IF EXISTS `favoritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favoritos` (
  `id_favorito` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `sinopsis` varchar(100) DEFAULT NULL,
  `anio` varchar(4) NOT NULL,
  `rating_general` double DEFAULT NULL,
  `genero` varchar(100) NOT NULL,
  `imagen_caratula` varchar(200) DEFAULT NULL,
  `id_tipo` bigint(20) NOT NULL,
  PRIMARY KEY (`id_favorito`),
  KEY `favoritos_FK` (`id_tipo`),
  CONSTRAINT `favoritos_FK` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_favorito` (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favoritos`
--

LOCK TABLES `favoritos` WRITE;
/*!40000 ALTER TABLE `favoritos` DISABLE KEYS */;
INSERT INTO `favoritos` VALUES (1,'Batman','NN','2015',4.3,'Accion','favoritos/file-U0uImdWPScK1xGbzeYGGXBwp_1.webp',1),(2,'aaa','aaaa','2015',2,'Accion','favoritos/rb_82978.png',1);
/*!40000 ALTER TABLE `favoritos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favoritos_user`
--

DROP TABLE IF EXISTS `favoritos_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favoritos_user` (
  `id_favoritos_user` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_user` bigint(20) NOT NULL,
  `id_favorito` bigint(20) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  PRIMARY KEY (`id_favoritos_user`),
  KEY `favoritos_user_FK` (`id_user`),
  KEY `favoritos_user_FK_1` (`id_favorito`),
  CONSTRAINT `favoritos_user_FK` FOREIGN KEY (`id_user`) REFERENCES `users_user` (`id`),
  CONSTRAINT `favoritos_user_FK_1` FOREIGN KEY (`id_favorito`) REFERENCES `favoritos` (`id_favorito`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favoritos_user`
--

LOCK TABLES `favoritos_user` WRITE;
/*!40000 ALTER TABLE `favoritos_user` DISABLE KEYS */;
INSERT INTO `favoritos_user` VALUES (1,1,1,'2024-10-22 01:47:29'),(2,1,2,'2024-10-22 22:26:11'),(3,3,2,'2024-10-30 01:08:11'),(4,3,1,'2024-10-30 01:07:50'),(5,3,1,'2024-10-30 02:14:42');
/*!40000 ALTER TABLE `favoritos_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_favorito`
--

DROP TABLE IF EXISTS `tipo_favorito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_favorito` (
  `id_tipo` bigint(20) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  `estado` varchar(1) NOT NULL COMMENT 'ESTADO PUESDE SER ACTIVO CON S',
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_favorito`
--

LOCK TABLES `tipo_favorito` WRITE;
/*!40000 ALTER TABLE `tipo_favorito` DISABLE KEYS */;
INSERT INTO `tipo_favorito` VALUES (1,'Peliculas','A'),(2,'Series','A'),(4,'Pruebas','I'),(5,'Pruebas','I');
/*!40000 ALTER TABLE `tipo_favorito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user`
--

DROP TABLE IF EXISTS `users_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user`
--

LOCK TABLES `users_user` WRITE;
/*!40000 ALTER TABLE `users_user` DISABLE KEYS */;
INSERT INTO `users_user` VALUES (1,'pbkdf2_sha256$870000$HouPJqiMfYlPCqBXS698a0$WPb3cwx+1I2igNrYk6t8PYVQ0OkArjbIfXoCMo90fuQ=','2024-10-18 00:11:01.010319',1,'daxtter','','','dylrc12@gmail.com',1,1,'2024-10-18 00:06:28.859928'),(2,'12314656',NULL,0,'usernew','','','user@user.com',0,1,'2024-10-24 23:31:58.251962'),(3,'pbkdf2_sha256$870000$nKpZMbKKJAigd8VOGiDvhL$Oj/ONf7cdbRJCA+I/GxIOr1sPMxLjvebuqF63nQmfCg=',NULL,0,'usernew2','User','Me','user2@user.com',0,1,'2024-10-24 23:56:07.957345');
/*!40000 ALTER TABLE `users_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_groups`
--

DROP TABLE IF EXISTS `users_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_groups_user_id_group_id_b88eab82_uniq` (`user_id`,`group_id`),
  KEY `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_user_groups_user_id_5f6f5a90_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_groups`
--

LOCK TABLES `users_user_groups` WRITE;
/*!40000 ALTER TABLE `users_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_user_permissions`
--

DROP TABLE IF EXISTS `users_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_user_permissions_user_id_permission_id_43338c45_uniq` (`user_id`,`permission_id`),
  KEY `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_user_user_permissions_user_id_20aca447_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_user_permissions`
--

LOCK TABLES `users_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'tuspelis_db2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-05 10:55:03

-- MySQL dump 10.13  Distrib 5.7.20, for osx10.12 (x86_64)
--
-- Host: localhost    Database: fangyuanxiaozhan
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add group',2,'add_group'),(6,'Can change group',2,'change_group'),(7,'Can delete group',2,'delete_group'),(8,'Can add permission',3,'add_permission'),(9,'Can change permission',3,'change_permission'),(10,'Can delete permission',3,'delete_permission'),(11,'Can add user',4,'add_user'),(12,'Can change user',4,'change_user'),(13,'Can delete user',4,'delete_user'),(14,'Can view group',2,'view_group'),(15,'Can view permission',3,'view_permission'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add 主题_分类',7,'add_category'),(26,'Can change 主题_分类',7,'change_category'),(27,'Can delete 主题_分类',7,'delete_category'),(28,'Can add 主题_分类_元素',8,'add_atom'),(29,'Can change 主题_分类_元素',8,'change_atom'),(30,'Can delete 主题_分类_元素',8,'delete_atom'),(31,'Can add 主题',9,'add_title'),(32,'Can change 主题',9,'change_title'),(33,'Can delete 主题',9,'delete_title'),(34,'Can view 主题_分类_元素',8,'view_atom'),(35,'Can view 主题_分类',7,'view_category'),(36,'Can view 主题',9,'view_title'),(37,'Can add User Widget',10,'add_userwidget'),(38,'Can change User Widget',10,'change_userwidget'),(39,'Can delete User Widget',10,'delete_userwidget'),(40,'Can add log entry',11,'add_log'),(41,'Can change log entry',11,'change_log'),(42,'Can delete log entry',11,'delete_log'),(43,'Can add Bookmark',12,'add_bookmark'),(44,'Can change Bookmark',12,'change_bookmark'),(45,'Can delete Bookmark',12,'delete_bookmark'),(46,'Can add User Setting',13,'add_usersettings'),(47,'Can change User Setting',13,'change_usersettings'),(48,'Can delete User Setting',13,'delete_usersettings'),(49,'Can view Bookmark',12,'view_bookmark'),(50,'Can view log entry',11,'view_log'),(51,'Can view User Setting',13,'view_usersettings'),(52,'Can view User Widget',10,'view_userwidget'),(53,'Can add 留言板',14,'add_message'),(54,'Can change 留言板',14,'change_message'),(55,'Can delete 留言板',14,'delete_message'),(56,'Can view 留言板',14,'view_message'),(57,'Can add fy user',15,'add_fyuser'),(58,'Can change fy user',15,'change_fyuser'),(59,'Can delete fy user',15,'delete_fyuser'),(60,'Can view fy user',15,'view_fyuser'),(61,'Can add user info',16,'add_userinfo'),(62,'Can change user info',16,'change_userinfo'),(63,'Can delete user info',16,'delete_userinfo'),(64,'Can add 聊天内容',17,'add_chatinfo'),(65,'Can change 聊天内容',17,'change_chatinfo'),(66,'Can delete 聊天内容',17,'delete_chatinfo'),(67,'Can view 聊天内容',17,'view_chatinfo'),(68,'Can view user info',16,'view_userinfo'),(69,'Can add 装饰图片',18,'add_xmt_design_desc'),(70,'Can change 装饰图片',18,'change_xmt_design_desc'),(71,'Can delete 装饰图片',18,'delete_xmt_design_desc'),(72,'Can add 用户id和头像',19,'add_xmt_user'),(73,'Can change 用户id和头像',19,'change_xmt_user'),(74,'Can delete 用户id和头像',19,'delete_xmt_user'),(75,'Can view 装饰图片',18,'view_xmt_design_desc'),(76,'Can view 用户id和头像',19,'view_xmt_user'),(77,'Can add 用户访问量',20,'add_user_number'),(78,'Can change 用户访问量',20,'change_user_number'),(79,'Can delete 用户访问量',20,'delete_user_number');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$nzGTVNzDVQO2$Dd6yVYRYvtfJa8kZ6pI+j0niFhV3Yr5zXV2/EcWrUpk=','2017-12-21 07:04:09.376304',1,'zhaozhao','','','',1,1,'2017-11-27 10:53:01.642377');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatroom_chatinfo`
--

DROP TABLE IF EXISTS `chatroom_chatinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatroom_chatinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `real_delete` tinyint(1) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_ip` varchar(30) NOT NULL,
  `chat_content` varchar(400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatroom_chatinfo`
--

LOCK TABLES `chatroom_chatinfo` WRITE;
/*!40000 ALTER TABLE `chatroom_chatinfo` DISABLE KEYS */;
INSERT INTO `chatroom_chatinfo` VALUES (1,'2017-11-23 13:32:43.509392','2017-11-23 13:32:43.509698',0,'1511443957','匿名用户','127.0.0.1','撒地方'),(2,'2017-11-23 13:32:56.613925','2017-11-23 13:32:56.614313',0,'1511443957','匿名用户','127.0.0.1','阿斯顿发'),(3,'2017-11-23 13:35:32.339807','2017-11-23 13:35:32.340144',0,'1511444120','匿名用户','127.0.0.1','撒地方'),(4,'2017-11-23 13:36:04.736378','2017-11-23 13:36:04.736810',0,'1511444149','阿斯顿发','127.0.0.1','阿斯蒂芬546'),(5,'2017-11-24 00:14:32.718697','2017-11-24 00:14:32.719182',0,'1511482462','匿名用户','127.0.0.1','啊'),(6,'2017-11-24 00:14:55.875926','2017-11-24 00:14:55.876812',0,'1511482462','匿名用户','127.0.0.1','撒地方'),(7,'2017-11-24 00:14:59.243700','2017-11-24 00:14:59.244055',0,'1511482462','匿名用户','127.0.0.1','的'),(8,'2017-11-24 00:15:24.518326','2017-11-24 00:15:24.518673',0,'1511482509','分析','127.0.0.1','撒地方'),(9,'2017-11-24 00:15:42.463459','2017-11-24 00:15:42.463774',0,'1511482506','百度','127.0.0.1','你哈'),(10,'2017-11-24 00:15:54.511256','2017-11-24 00:15:54.511990',0,'1511482509','分析','127.0.0.1','你会在哪里?'),(11,'2017-11-24 00:22:15.614497','2017-11-24 00:22:15.615466',0,'1511482509','分析','127.0.0.1','海南大学 信息科学技术学院 李建昭  Tel：18689623196 祝工作顺利，学习进步'),(12,'2017-11-24 02:00:44.285962','2017-11-24 02:00:44.286314',0,'1511488839','匿名用户','127.0.0.1','环境'),(13,'2017-11-24 13:23:47.527051','2017-11-24 13:23:47.527353',0,'1511529821','匿名用户','127.0.0.1','阿斯顿发'),(14,'2017-11-24 13:23:51.117787','2017-11-24 13:23:51.118109',0,'1511529821','匿名用户','127.0.0.1','撒地方'),(15,'2017-11-24 13:24:07.539806','2017-11-24 13:24:07.540205',0,'1511529841','匿名用户','127.0.0.1','阿斯顿发的公司的风格'),(16,'2017-11-27 10:23:44.962282','2017-11-27 10:23:44.962645',0,'1511778210','匿名用户','127.0.0.1','阿斯顿发'),(17,'2017-11-27 10:23:49.804916','2017-11-27 10:23:49.805258',0,'1511778221','匿名用户','127.0.0.1','a\'s\'d\'f阿萨德法师打发');
/*!40000 ALTER TABLE `chatroom_chatinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatroom_userinfo`
--

DROP TABLE IF EXISTS `chatroom_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatroom_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `real_delete` tinyint(1) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatroom_userinfo`
--

LOCK TABLES `chatroom_userinfo` WRITE;
/*!40000 ALTER TABLE `chatroom_userinfo` DISABLE KEYS */;
INSERT INTO `chatroom_userinfo` VALUES (1,'2017-11-23 13:28:18.831156','2017-11-23 13:28:18.831656',0,'1511443698','匿名用户','127.0.0.1'),(2,'2017-11-23 13:28:25.732539','2017-11-23 13:28:25.734312',0,'1511443705','匿名用户','127.0.0.1'),(3,'2017-11-23 13:32:37.781712','2017-11-23 13:32:37.782711',0,'1511443957','匿名用户','127.0.0.1'),(4,'2017-11-23 13:35:20.651600','2017-11-23 13:35:20.652449',0,'1511444120','匿名用户','127.0.0.1'),(5,'2017-11-23 13:35:49.886865','2017-11-23 13:35:49.887780',0,'1511444149','匿名用户','127.0.0.1'),(6,'2017-11-24 00:14:07.061688','2017-11-24 00:14:07.062026',0,'1511482447','匿名用户','127.0.0.1'),(7,'2017-11-24 00:14:22.090939','2017-11-24 00:14:22.093241',0,'1511482462','匿名用户','127.0.0.1'),(8,'2017-11-24 00:15:06.787987','2017-11-24 00:15:06.790083',0,'1511482506','匿名用户','127.0.0.1'),(9,'2017-11-24 00:15:09.511228','2017-11-24 00:15:09.511687',0,'1511482509','匿名用户','127.0.0.1'),(10,'2017-11-24 02:00:39.757115','2017-11-24 02:00:39.757844',0,'1511488839','匿名用户','127.0.0.1'),(11,'2017-11-24 02:15:42.512227','2017-11-24 02:15:42.512972',0,'1511489742','匿名用户','127.0.0.1'),(12,'2017-11-24 02:15:52.388647','2017-11-24 02:15:52.389073',0,'1511489752','匿名用户','127.0.0.1'),(13,'2017-11-24 12:29:04.181088','2017-11-24 12:29:04.181690',0,'1511526544','匿名用户','127.0.0.1'),(14,'2017-11-24 12:30:43.433214','2017-11-24 12:30:43.433554',0,'1511526643','匿名用户','127.0.0.1'),(15,'2017-11-24 12:30:47.761062','2017-11-24 12:30:47.761396',0,'1511526647','匿名用户','127.0.0.1'),(16,'2017-11-24 12:31:15.199055','2017-11-24 12:31:15.202756',0,'1511526675','匿名用户','127.0.0.1'),(17,'2017-11-24 12:31:50.152344','2017-11-24 12:31:50.152728',0,'1511526710','匿名用户','127.0.0.1'),(18,'2017-11-24 13:21:42.732613','2017-11-24 13:21:42.733113',0,'1511529702','匿名用户','127.0.0.1'),(19,'2017-11-24 13:21:51.573608','2017-11-24 13:21:51.575443',0,'1511529711','匿名用户','127.0.0.1'),(20,'2017-11-24 13:23:38.551075','2017-11-24 13:23:38.551667',0,'1511529818','匿名用户','127.0.0.1'),(21,'2017-11-24 13:23:41.416502','2017-11-24 13:23:41.416838',0,'1511529821','匿名用户','127.0.0.1'),(22,'2017-11-24 13:24:01.418424','2017-11-24 13:24:01.419083',0,'1511529841','匿名用户','127.0.0.1'),(23,'2017-11-24 13:24:18.318991','2017-11-24 13:24:18.319599',0,'1511529858','匿名用户','127.0.0.1'),(24,'2017-11-24 13:27:26.893464','2017-11-24 13:27:26.893848',0,'1511530046','匿名用户','127.0.0.1'),(25,'2017-11-27 10:23:30.706471','2017-11-27 10:23:30.707467',0,'1511778210','匿名用户','127.0.0.1'),(26,'2017-11-27 10:23:41.352215','2017-11-27 10:23:41.352599',0,'1511778221','匿名用户','127.0.0.1'),(27,'2017-11-27 10:24:00.508114','2017-11-27 10:24:00.508811',0,'1511778240','匿名用户','127.0.0.1'),(28,'2017-11-27 11:01:17.487727','2017-11-27 11:01:17.488258',0,'1511780477','匿名用户','127.0.0.1'),(29,'2017-11-29 11:42:20.304827','2017-11-29 11:42:20.305187',0,'1511955740','匿名用户','127.0.0.1'),(30,'2017-11-29 11:49:10.024341','2017-11-29 11:49:10.024667',0,'1511956150','匿名用户','127.0.0.1');
/*!40000 ALTER TABLE `chatroom_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(17,'chatroom','chatinfo'),(16,'chatroom','userinfo'),(5,'contenttypes','contenttype'),(8,'nav','atom'),(7,'nav','category'),(9,'nav','title'),(14,'note','message'),(6,'sessions','session'),(15,'users','fyuser'),(12,'xadmin','bookmark'),(11,'xadmin','log'),(13,'xadmin','usersettings'),(10,'xadmin','userwidget'),(20,'xmt','user_number'),(18,'xmt','xmt_design_desc'),(19,'xmt','xmt_user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-11-23 13:27:07.190206'),(2,'auth','0001_initial','2017-11-23 13:27:07.518188'),(3,'admin','0001_initial','2017-11-23 13:27:07.591416'),(4,'admin','0002_logentry_remove_auto_add','2017-11-23 13:27:07.631542'),(5,'contenttypes','0002_remove_content_type_name','2017-11-23 13:27:07.694917'),(6,'auth','0002_alter_permission_name_max_length','2017-11-23 13:27:07.721446'),(7,'auth','0003_alter_user_email_max_length','2017-11-23 13:27:07.753264'),(8,'auth','0004_alter_user_username_opts','2017-11-23 13:27:07.769967'),(9,'auth','0005_alter_user_last_login_null','2017-11-23 13:27:07.798374'),(10,'auth','0006_require_contenttypes_0002','2017-11-23 13:27:07.801112'),(11,'auth','0007_alter_validators_add_error_messages','2017-11-23 13:27:07.814752'),(12,'auth','0008_alter_user_username_max_length','2017-11-23 13:27:07.844288'),(13,'chatroom','0001_initial','2017-11-23 13:27:07.886331'),(14,'nav','0001_initial','2017-11-23 13:27:08.066293'),(15,'note','0001_initial','2017-11-23 13:27:08.090232'),(16,'sessions','0001_initial','2017-11-23 13:27:08.130504'),(17,'users','0001_initial','2017-11-23 13:27:08.160478'),(18,'xadmin','0001_initial','2017-11-23 13:27:08.340414'),(19,'xadmin','0002_log','2017-11-23 13:27:08.423213'),(20,'xadmin','0003_auto_20160715_0100','2017-11-23 13:27:08.489935'),(21,'xmt','0001_initial','2017-11-27 12:26:14.053968'),(22,'xmt','0002_auto_20171127_2033','2017-11-27 12:34:04.599643'),(23,'xmt','0003_xmt_design_desc_xmt_desc_image','2017-11-28 12:07:52.443855'),(24,'xmt','0004_auto_20171128_2009','2017-11-28 12:09:23.786395'),(25,'xmt','0005_auto_20171128_2013','2017-11-28 12:13:35.856244'),(26,'xmt','0006_user_number','2017-12-24 10:07:12.170135');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3j0i45zdt0vmvg5d4ha2e4iam9awupqn','N2FmNTc1MzUyY2NiMDQ2NjFjMmMzZmE2YTUxMWEyMDc1NTQ2ODhkMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjkwNWQ0NzI3OTA3YmU4NWFiNWRiZDEwYzU0OWI0ZWJkYWY0NDIxYSIsIkxJU1RfUVVFUlkiOltbInhtdCIsInhtdF9kZXNpZ25fZGVzYyJdLCIiXSwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==','2018-01-04 07:29:27.696423'),('cej51oggdwo96hiwp3x7nyrp6wpj56lr','NDVjZDNkOGNlZmRjMDBiNmM5MzJlYzVjZjNkNzc4NTc0MDY2ZDZmMzp7IkxJU1RfUVVFUlkiOltbInhtdCIsInhtdF9kZXNpZ25fZGVzYyJdLCIiXSwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfaGFzaCI6IjY5MDVkNDcyNzkwN2JlODVhYjVkYmQxMGM1NDliNGViZGFmNDQyMWEifQ==','2017-12-14 01:35:40.962861'),('ijas2lvmgcor3fni9ietrpmdkym6wcjy','NDkyZGNmYzA1ODQxNWRhNGRlNGRkYjQ2MTFlZTliZmU3MDQ3MzMzZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI2OTA1ZDQ3Mjc5MDdiZTg1YWI1ZGJkMTBjNTQ5YjRlYmRhZjQ0MjFhIiwiTElTVF9RVUVSWSI6W1sieG10IiwieG10X2Rlc2lnbl9kZXNjIl0sIiJdfQ==','2017-12-12 12:48:00.111974');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nav_atom`
--

DROP TABLE IF EXISTS `nav_atom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nav_atom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `real_delete` tinyint(1) NOT NULL,
  `atom_name` varchar(100) NOT NULL,
  `atom_short` varchar(300) NOT NULL,
  `atom_image` varchar(100) NOT NULL,
  `atom_desc` varchar(1000) NOT NULL,
  `atom_visits` int(11) NOT NULL,
  `atom_hot` int(11) NOT NULL,
  `atom_outlink` varchar(200) NOT NULL,
  `atom_core` int(11) NOT NULL,
  `atom_title_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nav_atom_atom_title_id_8fc4d66c_fk_nav_title_id` (`atom_title_id`),
  CONSTRAINT `nav_atom_atom_title_id_8fc4d66c_fk_nav_title_id` FOREIGN KEY (`atom_title_id`) REFERENCES `nav_title` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nav_atom`
--

LOCK TABLES `nav_atom` WRITE;
/*!40000 ALTER TABLE `nav_atom` DISABLE KEYS */;
INSERT INTO `nav_atom` VALUES (1,'2017-11-23 13:27:18.841364','2017-11-23 13:27:18.841439',0,'字体之家','国内字体较全的网站,字体免费下载,有了它,可以广泛了解字体的种类','17ziti.png','主题详情占位',200,200,'http://www.17ziti.com/',0,1),(2,'2017-11-23 13:27:18.843802','2017-11-23 13:27:18.843846',0,'字体松鼠','网站内的字体有设计感,可商用,免费,偏抽象,网站很简洁,需要一定的英文基础','fontsquirrel.png','主题详情占位',200,200,'https://www.fontsquirrel.com/',0,1),(3,'2017-11-23 13:27:18.845756','2017-11-23 13:27:18.845828',0,'图虫网','最好的摄影师都在这儿,照片资源比较新,分类也很细,有风格分类,省份分类...整体风格偏向清新自然,','tuchong.png','主题详情占位',200,200,'https://tuchong.com/',0,1),(4,'2017-11-23 13:27:18.847615','2017-11-23 13:27:18.847662',0,'国家地理','专业摄影分享,有世界各个角落的照片,我很喜欢这个网站,网站有对于的app,每天都会推送一些大师级的照片,对学习摄影非常有帮助,重自然,重人文,','nationalgeographic.png','主题详情占位',200,200,'https://www.nationalgeographic.com/',0,1),(5,'2017-11-23 13:27:18.849209','2017-11-23 13:27:18.849281',0,'unsplash','又是免费图片的分享站点,网站主体采用了瀑布流布局,照片风格有些小众,照片不太新,优点是免费','Unsplash.png','主题详情占位',200,200,'https://unsplash.com/',0,1),(6,'2017-11-23 13:27:18.851177','2017-11-23 13:27:18.851238',0,'splitshire','免费, 摄影, 高清,这个网站更新的资源有些慢,爬虫一个月爬一次,基本找不到几张新图片,里面有些很怪异的图片...','splitshire.png','主题详情占位',200,200,'https://www.splitshire.com/',0,1),(7,'2017-11-23 13:27:18.852973','2017-11-23 13:27:18.853038',0,'sketch_im','一个sketch资源分享网站,国人钻石爱好者创建,MAC平台上,sketch确实是做UI的不二之选,另外Sketch在github也可以找到不少好的开源插件','sketch.png','主题详情占位',200,200,'http://sketch.im',0,1),(8,'2017-11-23 13:27:18.856691','2017-11-23 13:27:18.856745',0,'sketchfab','最佳创意3D模型展示, 里面有一些创意极好的3D模型,3维面设计的灵感来源,普通吃瓜群众,也可以看看,开阔视野','Sketchfab.png','主题详情占位',200,200,'https://sketchfab.com sketchfab',0,2),(9,'2017-11-23 13:27:18.858499','2017-11-23 13:27:18.858563',0,'uigradients','很有特色的网站,主要是推荐一些渐变配色,虽然有些配色不适合每个人的审美,但大胆的设计,都是出其不意!','uiGradients.png','主题详情占位',200,200,'https://uigradients.com',0,2),(10,'2017-11-23 13:27:18.860334','2017-11-23 13:27:18.860399',0,'behance','Adobe旗下,创意社区,Adobe的软件每个都是专业级,Adobe的社区很活跃,但作品反而都是大道至简的类型,社区的作品偏创意.','behance.png','主题详情占位',200,200,'https://www.behance.net',0,2),(11,'2017-11-23 13:27:18.863441','2017-11-23 13:27:18.863508',0,'Apple设计','Apple官方设计指南','Apple.png','主题详情占位',200,200,'https://developer.apple.com/design',0,2),(12,'2017-11-23 13:27:18.866563','2017-11-23 13:27:18.866633',0,'阿里矢量图标','阿里巴巴矢量图标库, 里面的素材很单纯,基本都是图标,网站设计打6分','Iconfont.png','主题详情占位',200,200,'http://www.iconfont.cn',0,2),(13,'2017-11-23 13:27:18.868764','2017-11-23 13:27:18.868823',0,'腾讯游戏官方设计','腾讯游戏官方设计,logo很抢眼,其它的基本就是各种资讯,可以当新闻来看!','TGideas.png','主题详情占位',200,200,'http://tgideas.qq.com/',0,2),(14,'2017-11-23 13:27:18.870637','2017-11-23 13:27:18.870729',0,'微软官方设计','微软官方设计指南,如果你很喜欢windows10的风格,推荐看看这个,如果对windows没啥兴趣,就直接跳过吧','MicDesign.png','主题详情占位',200,200,'https://www.microsoft.com/en-us/design',0,2),(15,'2017-11-23 13:27:18.874203','2017-11-23 13:27:18.874256',0,'菜鸟教程','最适合入门的教程网站,也是最靠谱的备忘录,程序员的第二大脑,被各路大牛推荐','runoob.png','主题详情占位',200,200,'http://www.runoob.com/',0,3),(16,'2017-11-23 13:27:18.878997','2017-11-23 13:27:18.879077',0,'廖雪峰的官方网站','一个很不错的技术分享网站,免费学Python的网站中,比较有深度的那种,零基础的人看起来会有些吃力,也可以用来学习javascript','liaoxuefeng.png','主题详情占位',200,200,'https://www.liaoxuefeng.com/',0,3),(17,'2017-11-23 13:27:18.885092','2017-11-23 13:27:18.885157',0,'阮一峰的个人网站','阮一峰确实称得上大牛,曾经拜读过阮一峰一篇机器学习的通俗版入门博客,感觉豁然开朗,在知乎搜阮一峰也会看到一些有趣的回答','ruanyifeng.png','主题详情占位',200,200,'http://www.ruanyifeng.com/',0,3),(18,'2017-11-23 13:27:18.891755','2017-11-23 13:27:18.891807',0,'在线练习贝塞尔曲线','用来练习PhotoShop抠图基本功,网站很有特色,但由于是非盈利网站,感觉好长时间没更新了','bezier.png','主题详情占位',200,200,'http://bezier.method.ac/',0,4),(19,'2017-11-23 13:27:18.893964','2017-11-23 13:27:18.894018',0,'在线二维码生成','草料二维码,简单,快速,在线生成,一个非常优秀的在线工具','cli.png','主题详情占位',200,200,'https://cli.im/',0,4),(20,'2017-11-23 13:27:18.895632','2017-11-23 13:27:18.895684',0,'在线压缩图片','支持压缩JPG, PNG,如果网速好的话,这个网站可以当本地的软件用,如果网速不好,推荐PPDUCK','tinypng.png','主题详情占位',200,200,'https://tinypng.com/',0,4),(21,'2017-11-23 13:27:18.897425','2017-11-23 13:27:18.897502',0,'在线图片格式转换','在线图片格式转换','CloudConvert.png','主题详情占位',200,200,'https://cloudconvert.com/',0,4),(22,'2017-11-23 13:27:18.899281','2017-11-23 13:27:18.899341',0,'上传图片找字体','提供OCR识别字体技术的网站中,效果比较好的一个,识别率据说能达到80%,','qiuziti.png','主题详情占位',200,200,'http://www.qiuziti.com/',0,4),(23,'2017-11-23 13:27:18.900966','2017-11-23 13:27:18.901021',0,'软件阁','网站的美工是后端临时凑上来的!,哈哈,开个玩笑,里面主要分享各种绿色软件,以及破解软件','ruanjiange.png','主题详情占位',200,200,'http://www.qiuziti.com/',0,4),(24,'2017-11-23 13:27:18.902518','2017-11-23 13:27:18.902565',0,'爱软客','专注常用软件绿色版、优化版、便携版,这里的软件可以放到U盘了随身行,极客必备','airuanke.png','主题详情占位',200,200,'http://www.bokeboke.net/',0,4),(25,'2017-11-23 13:27:18.904042','2017-11-23 13:27:18.904091',0,'精品绿色便携软件','个人最喜欢的一个软件分享网站,里面的资源更新的很及时,颜值也还可以,建议收藏,PortableSoft','portable.png','主题详情占位',200,200,'https://www.portablesoft.org/',0,4),(26,'2017-11-23 13:27:18.905493','2017-11-23 13:27:18.905537',0,'玩转苹果(mac)','这个是付费的,但软件质量都由站长亲自把关,花点小钱,可以省很多时间,mac软件分享','ifunmac.png','主题详情占位',200,200,'http://www.ifunmac.com/',0,4);
/*!40000 ALTER TABLE `nav_atom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nav_category`
--

DROP TABLE IF EXISTS `nav_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nav_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `real_delete` tinyint(1) NOT NULL,
  `cag_name` varchar(100) NOT NULL,
  `cag_big_title_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nav_category_cag_big_title_id_c34bcbf5_fk_nav_title_id` (`cag_big_title_id`),
  CONSTRAINT `nav_category_cag_big_title_id_c34bcbf5_fk_nav_title_id` FOREIGN KEY (`cag_big_title_id`) REFERENCES `nav_title` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nav_category`
--

LOCK TABLES `nav_category` WRITE;
/*!40000 ALTER TABLE `nav_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `nav_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nav_title`
--

DROP TABLE IF EXISTS `nav_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nav_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `real_delete` tinyint(1) NOT NULL,
  `title_name` varchar(100) NOT NULL,
  `title_desc` varchar(1000) NOT NULL,
  `title_target_id` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nav_title`
--

LOCK TABLES `nav_title` WRITE;
/*!40000 ALTER TABLE `nav_title` DISABLE KEYS */;
INSERT INTO `nav_title` VALUES (1,'2017-11-23 13:27:18.815790','2017-11-23 13:27:18.816641',0,'发现','主题描述','find'),(2,'2017-11-23 13:27:18.824555','2017-11-23 13:27:18.824616',0,'创意','主题描述','idea'),(3,'2017-11-23 13:27:18.836283','2017-11-23 13:27:18.836341',0,'生长','主题描述','grow'),(4,'2017-11-23 13:27:18.837696','2017-11-23 13:27:18.837747',0,'进化','主题描述','evolve');
/*!40000 ALTER TABLE `nav_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note_message`
--

DROP TABLE IF EXISTS `note_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `real_delete` tinyint(1) NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `message_content` varchar(1000) NOT NULL,
  `author_ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note_message`
--

LOCK TABLES `note_message` WRITE;
/*!40000 ALTER TABLE `note_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `note_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_fyuser`
--

DROP TABLE IF EXISTS `users_fyuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_fyuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `real_delete` tinyint(1) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_email` varchar(20) NOT NULL,
  `user_pic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_fyuser`
--

LOCK TABLES `users_fyuser` WRITE;
/*!40000 ALTER TABLE `users_fyuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_fyuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_bookmark`
--

DROP TABLE IF EXISTS `xadmin_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_bookmark`
--

LOCK TABLES `xadmin_bookmark` WRITE;
/*!40000 ALTER TABLE `xadmin_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_log`
--

DROP TABLE IF EXISTS `xadmin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_log`
--

LOCK TABLES `xadmin_log` WRITE;
/*!40000 ALTER TABLE `xadmin_log` DISABLE KEYS */;
INSERT INTO `xadmin_log` VALUES (1,'2017-11-28 12:18:54.681393','127.0.0.1','1','1','create','已添加。',18,1),(2,'2017-11-28 12:41:08.876763','127.0.0.1','2','1','create','已添加。',18,1),(3,'2017-11-28 12:41:30.355412','127.0.0.1','1','2','change','修改 xmt_desc_id 和 xmt_desc_image',18,1),(4,'2017-11-28 12:42:20.603790','127.0.0.1','1','2','change','修改 xmt_desc_image',18,1),(5,'2017-11-28 12:42:55.491665','127.0.0.1','2','1','change','修改 xmt_desc_image',18,1),(6,'2017-11-28 12:43:22.386646','127.0.0.1','2','1','change','修改 xmt_desc_image',18,1),(7,'2017-11-28 12:43:31.655832','127.0.0.1','1','2','change','修改 xmt_desc_image',18,1),(8,'2017-12-21 07:06:22.866874','127.0.0.1','3','3','create','已添加。',18,1),(9,'2017-12-21 07:07:04.985001','127.0.0.1',NULL,'','delete','批量删除 3 个 装饰图片',NULL,1),(10,'2017-12-21 07:07:21.564804','127.0.0.1','4','1','create','已添加。',18,1),(11,'2017-12-21 07:07:29.803055','127.0.0.1','5','2','create','已添加。',18,1),(12,'2017-12-21 07:07:37.376658','127.0.0.1','6','3','create','已添加。',18,1),(13,'2017-12-21 07:07:44.886496','127.0.0.1','7','4','create','已添加。',18,1),(14,'2017-12-21 07:07:53.313469','127.0.0.1','8','5','create','已添加。',18,1),(15,'2017-12-21 07:08:03.481544','127.0.0.1','9','6','create','已添加。',18,1),(16,'2017-12-21 07:08:11.759159','127.0.0.1','10','7','create','已添加。',18,1),(17,'2017-12-21 07:08:19.244309','127.0.0.1','11','8','create','已添加。',18,1),(18,'2017-12-21 07:08:25.704877','127.0.0.1','12','9','create','已添加。',18,1);
/*!40000 ALTER TABLE `xadmin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_usersettings`
--

DROP TABLE IF EXISTS `xadmin_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_usersettings`
--

LOCK TABLES `xadmin_usersettings` WRITE;
/*!40000 ALTER TABLE `xadmin_usersettings` DISABLE KEYS */;
INSERT INTO `xadmin_usersettings` VALUES (1,'dashboard:home:pos','',1);
/*!40000 ALTER TABLE `xadmin_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_userwidget`
--

DROP TABLE IF EXISTS `xadmin_userwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_userwidget`
--

LOCK TABLES `xadmin_userwidget` WRITE;
/*!40000 ALTER TABLE `xadmin_userwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_userwidget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xmt_user_number`
--

DROP TABLE IF EXISTS `xmt_user_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xmt_user_number` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `real_delete` tinyint(1) NOT NULL,
  `u_num` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xmt_user_number`
--

LOCK TABLES `xmt_user_number` WRITE;
/*!40000 ALTER TABLE `xmt_user_number` DISABLE KEYS */;
INSERT INTO `xmt_user_number` VALUES (1,'2017-12-24 10:08:11.658338','2018-01-03 10:41:08.962348',0,442),(2,'2017-12-24 10:08:11.666021','2017-12-24 10:08:11.666066',0,0),(3,'2017-12-24 10:08:11.678060','2017-12-24 10:08:11.678102',0,0),(4,'2017-12-24 10:08:11.682745','2017-12-24 10:08:11.682780',0,0),(5,'2017-12-24 10:08:11.683808','2017-12-24 10:08:11.683840',0,0);
/*!40000 ALTER TABLE `xmt_user_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xmt_xmt_design_desc`
--

DROP TABLE IF EXISTS `xmt_xmt_design_desc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xmt_xmt_design_desc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `real_delete` tinyint(1) NOT NULL,
  `xmt_desc_id` varchar(10) NOT NULL,
  `xmt_desc_image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xmt_xmt_design_desc`
--

LOCK TABLES `xmt_xmt_design_desc` WRITE;
/*!40000 ALTER TABLE `xmt_xmt_design_desc` DISABLE KEYS */;
INSERT INTO `xmt_xmt_design_desc` VALUES (4,'2017-12-21 07:07:21.563377','2017-12-21 07:07:21.563419',0,'1','xmt/desc_image/001.png'),(5,'2017-12-21 07:07:29.801877','2017-12-21 07:07:29.801920',0,'2','xmt/desc_image/002.png'),(6,'2017-12-21 07:07:37.375667','2017-12-21 07:07:37.375708',0,'3','xmt/desc_image/003.png'),(7,'2017-12-21 07:07:44.884686','2017-12-21 07:07:44.884795',0,'4','xmt/desc_image/004.png'),(8,'2017-12-21 07:07:53.311797','2017-12-21 07:07:53.311848',0,'5','xmt/desc_image/005.png'),(9,'2017-12-21 07:08:03.479606','2017-12-21 07:08:03.479708',0,'6','xmt/desc_image/006.png'),(10,'2017-12-21 07:08:11.757800','2017-12-21 07:08:11.757845',0,'7','xmt/desc_image/007.png'),(11,'2017-12-21 07:08:19.240992','2017-12-21 07:08:19.241107',0,'8','xmt/desc_image/008.png'),(12,'2017-12-21 07:08:25.701808','2017-12-21 07:08:25.701944',0,'9','xmt/desc_image/009.png');
/*!40000 ALTER TABLE `xmt_xmt_design_desc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xmt_xmt_user`
--

DROP TABLE IF EXISTS `xmt_xmt_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xmt_xmt_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `real_delete` tinyint(1) NOT NULL,
  `xmt_user_id` varchar(50) NOT NULL,
  `xmt_user_ip` varchar(30) NOT NULL,
  `xmt_user_old_icon` varchar(200) NOT NULL,
  `xmt_user_new_icon` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xmt_xmt_user`
--

LOCK TABLES `xmt_xmt_user` WRITE;
/*!40000 ALTER TABLE `xmt_xmt_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `xmt_xmt_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-11 17:21:03

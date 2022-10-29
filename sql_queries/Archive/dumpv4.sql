-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: prepare
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `EVENTS`
--

DROP TABLE IF EXISTS `EVENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENTS` (
  `EVENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SCENARIO_ID` int(11) NOT NULL,
  `EVENT_NAME` varchar(255) NOT NULL,
  `TIME_DURATION` int(11) DEFAULT NULL,
  `TIME_START` int(11) NOT NULL,
  `SKILL_TYPE` varchar(255) NOT NULL,
  `SPECIFIC_SKILL` varchar(255) NOT NULL,
  `WEIGHTAGE` int(11) DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_AT` datetime DEFAULT CURRENT_TIMESTAMP,
  `HEART_RATE` int(11) DEFAULT NULL,
  `SYSTOLIC_BP` int(11) DEFAULT NULL,
  `DISTOLIC_BP` int(11) DEFAULT NULL,
  `SPO2` int(11) DEFAULT NULL,
  `R_RATE` int(11) DEFAULT NULL,
  `CARDIAC_RYTHM` varchar(255) DEFAULT NULL,
  `SCENARIO_ROLE_ID` int(11) NOT NULL,
  PRIMARY KEY (`EVENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENTS`
--

LOCK TABLES `EVENTS` WRITE;
/*!40000 ALTER TABLE `EVENTS` DISABLE KEYS */;
INSERT INTO `EVENTS` VALUES (15,17,'Unresponsive patient',NULL,3,'psychomotor','dexterity',NULL,'2017-09-18 19:52:45','2017-09-18 19:52:45',-1,-1,-1,-1,-1,'no info',15),(16,17,'Heart Rate Drop',NULL,18,'psychomotor','dexterity',NULL,'2017-09-18 19:55:18','2017-09-18 19:55:18',-1,-1,-1,-1,-1,'no info',15),(17,17,'Cardiac Arrest',NULL,36,'cognitive','critical/clinical decision making',NULL,'2017-09-18 19:55:49','2017-09-18 19:55:49',-1,-1,-1,-1,-1,'no info',14),(18,17,'Abdomen Inflammation',NULL,50,'behavioral','judgment',NULL,'2017-09-18 19:56:54','2017-09-18 19:56:54',-1,-1,-1,-1,-1,'no info',14),(19,17,'Apply Turnicate',NULL,52,'psychomotor','coping strategies/psychological resilience (to stressful situations)',NULL,'2017-09-18 20:48:18','2017-09-18 20:48:18',-1,-1,-1,-1,-1,'no info',15),(26,19,'Intial assessment',NULL,120,'psychomotor','task prioritization',NULL,'2017-11-13 11:37:04','2017-11-13 11:37:04',128,88,58,88,24,'Sinus Tachycardia',22),(27,19,'Order diagnostic tests and labs',NULL,240,'cognitive','critical/clinical decision making',NULL,'2017-11-13 11:39:56','2017-11-13 11:39:56',125,86,56,88,24,'Sinus Tachycardia',22),(28,19,'Start fluid recessitation, blood infusion, Meds.',NULL,360,'psychomotor','critical/clinical decision making',NULL,'2017-11-13 11:43:11','2017-11-13 11:43:11',128,84,64,87,24,'Sinus Tachycardia',24),(29,19,'Airway control',NULL,120,'psychomotor','critical/clinical decision making',NULL,'2017-11-13 11:44:35','2017-11-13 11:44:35',124,88,58,88,24,'Sinus Tachycardia',24),(30,19,'RSI sedation',NULL,100,'psychomotor','medical/procedural knowledge',NULL,'2017-11-13 11:47:17','2017-11-13 11:47:17',125,88,58,88,24,'Sinus Tachycardia',24),(31,19,'Begin surgery',NULL,400,'psychomotor','medical/procedural knowledge',NULL,'2017-11-13 11:49:47','2017-11-13 11:49:47',128,82,54,90,-1,'Sinus with PVCs: 10%',22),(32,19,'Give anti arrythmic for frequent PVC\'s',NULL,430,'psychomotor','critical/clinical decision making',NULL,'2017-11-13 11:52:32','2017-11-13 11:52:32',128,90,60,95,-1,'Sinus with PVCs: 25%',22),(33,19,'Assessment',NULL,90,'psychomotor','critical/clinical decision making',NULL,'2017-11-13 11:54:18','2017-11-13 11:54:18',124,88,58,88,24,'Sinus Tachycardia',22),(34,19,'Prep patient',NULL,60,'psychomotor','medical/procedural knowledge',NULL,'2017-11-13 11:56:21','2017-11-13 11:56:21',128,88,58,88,24,'Sinus Tachycardia',23),(35,19,'Repair aortic tear',NULL,500,'psychomotor','medical/procedural knowledge',NULL,'2017-11-13 11:58:02','2017-11-13 11:58:02',115,90,60,96,-1,'Sinus Tachycardia',22),(36,19,'assist surgeon',NULL,400,'cognitive','critical/clinical decision making',NULL,'2017-11-13 12:02:37','2017-11-13 12:02:37',128,88,58,95,-1,'Sinus Tachycardia',23),(37,19,'close patient',NULL,800,'psychomotor','medical/procedural knowledge',NULL,'2017-11-13 12:03:55','2017-11-13 12:03:55',100,100,66,96,-1,'Sinus',22),(38,19,'recover patient',NULL,800,'cognitive','critical/clinical decision making',NULL,'2017-11-13 12:04:59','2017-11-13 12:04:59',100,100,66,96,-1,'Sinus',23),(39,19,'Recover patient',NULL,810,'psychomotor','critical/clinical decision making',NULL,'2017-11-13 12:06:35','2017-11-13 12:06:35',100,100,60,96,16,'Sinus',24);
/*!40000 ALTER TABLE `EVENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PLAYED_EVENTS`
--

DROP TABLE IF EXISTS `PLAYED_EVENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PLAYED_EVENTS` (
  `PLAY_ID` int(11) NOT NULL,
  `EVENT_ID` varchar(64) NOT NULL,
  `POINTS` varchar(64) NOT NULL DEFAULT '50',
  `CREATED_AT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORY` varchar(64) DEFAULT NULL,
  `SCENARIO_ROLE_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PLAYED_EVENTS`
--

LOCK TABLES `PLAYED_EVENTS` WRITE;
/*!40000 ALTER TABLE `PLAYED_EVENTS` DISABLE KEYS */;
INSERT INTO `PLAYED_EVENTS` VALUES (6,'6','97','2017-06-27 08:33:55',1,NULL,0),(7,'1','92','2017-08-21 05:48:02',2,NULL,0),(7,'2','99','2017-08-21 05:48:02',3,NULL,0),(8,'7','7','2017-08-23 11:26:57',4,NULL,0),(8,'8','9','2017-08-23 11:26:57',5,NULL,0),(8,'9','0','2017-08-23 11:26:57',6,NULL,0),(8,'10','7','2017-08-23 11:26:57',7,NULL,0),(8,'11','11','2017-08-23 11:26:57',8,NULL,0),(8,'12','9','2017-08-23 11:26:57',9,NULL,0),(8,'13','8','2017-08-23 11:26:57',10,NULL,0),(9,'7','18','2017-08-23 11:31:56',11,NULL,0),(9,'8','20','2017-08-23 11:31:56',12,NULL,0),(9,'9','28','2017-08-23 11:31:56',13,NULL,0),(9,'10','18','2017-08-23 11:31:56',14,NULL,0),(9,'11','22','2017-08-23 11:31:56',15,NULL,0),(9,'12','19','2017-08-23 11:31:56',16,NULL,0),(9,'13','20','2017-08-23 11:31:56',17,NULL,0),(10,'7','40','2017-08-23 11:42:51',18,NULL,0),(10,'8','32','2017-08-23 11:42:51',19,NULL,0),(10,'9','33','2017-08-23 11:42:51',20,NULL,0),(10,'10','38','2017-08-23 11:42:51',21,NULL,0),(10,'11','29','2017-08-23 11:42:51',22,NULL,0),(10,'12','39','2017-08-23 11:42:51',23,NULL,0),(10,'13','40','2017-08-23 11:42:51',24,NULL,0),(11,'7','58','2017-08-23 11:43:47',25,NULL,0),(11,'8','67','2017-08-23 11:43:47',26,NULL,0),(11,'9','70','2017-08-23 11:43:47',27,NULL,0),(11,'10','68','2017-08-23 11:43:47',28,NULL,0),(11,'11','68','2017-08-23 11:43:47',29,NULL,0),(11,'12','71','2017-08-23 11:43:47',30,NULL,0),(11,'13','70','2017-08-23 11:43:47',31,NULL,0),(12,'7','76','2017-08-23 11:44:38',32,NULL,0),(12,'8','86','2017-08-23 11:44:38',33,NULL,0),(12,'9','81','2017-08-23 11:44:38',34,NULL,0),(12,'10','87','2017-08-23 11:44:38',35,NULL,0),(12,'11','82','2017-08-23 11:44:38',36,NULL,0),(12,'12','84','2017-08-23 11:44:38',37,NULL,0),(12,'13','79','2017-08-23 11:44:38',38,NULL,0),(13,'7','98','2017-08-23 11:45:34',39,NULL,0),(13,'8','100','2017-08-23 11:45:34',40,NULL,0),(13,'9','98','2017-08-23 11:45:34',41,NULL,0),(13,'10','99','2017-08-23 11:45:34',42,NULL,0),(13,'11','97','2017-08-23 11:45:34',43,NULL,0),(13,'12','99','2017-08-23 11:45:34',44,NULL,0),(13,'13','99','2017-08-23 11:45:34',45,NULL,0),(14,'1','86','2017-08-23 14:01:01',46,NULL,0),(14,'2','89','2017-08-23 14:01:01',47,NULL,0),(15,'7','100','2017-08-25 22:18:18',48,NULL,0),(15,'8','100','2017-08-25 22:18:18',49,NULL,0),(15,'9','100','2017-08-25 22:18:18',50,NULL,0),(15,'10','100','2017-08-25 22:18:18',51,NULL,0),(15,'11','100','2017-08-25 22:18:18',52,NULL,0),(15,'12','100','2017-08-25 22:18:18',53,NULL,0),(15,'13','100','2017-08-25 22:18:18',54,NULL,0),(16,'15','4','2017-09-18 20:57:09',55,NULL,0),(16,'16','3','2017-09-18 20:57:09',56,NULL,0),(16,'17','2','2017-09-18 20:57:09',57,NULL,0),(16,'18','3','2017-09-18 20:57:09',58,NULL,0),(16,'19','3','2017-09-18 20:57:09',59,NULL,0),(17,'15','13','2017-09-18 20:58:04',60,NULL,0),(17,'16','16','2017-09-18 20:58:04',61,NULL,0),(17,'17','19','2017-09-18 20:58:04',62,NULL,0),(17,'18','16','2017-09-18 20:58:04',63,NULL,0),(17,'19','14','2017-09-18 20:58:04',64,NULL,0),(18,'15','35','2017-09-18 20:58:51',65,NULL,0),(18,'16','38','2017-09-18 20:58:51',66,NULL,0),(18,'17','42','2017-09-18 20:58:51',67,NULL,0),(18,'18','43','2017-09-18 20:58:51',68,NULL,0),(18,'19','40','2017-09-18 20:58:51',69,NULL,0),(19,'15','58','2017-09-18 20:59:37',70,NULL,0),(19,'16','59','2017-09-18 20:59:37',71,NULL,0),(19,'17','60','2017-09-18 20:59:37',72,NULL,0),(19,'18','63','2017-09-18 20:59:37',73,NULL,0),(19,'19','67','2017-09-18 20:59:37',74,NULL,0),(20,'15','75','2017-09-18 21:00:22',75,NULL,0),(20,'16','78','2017-09-18 21:00:22',76,NULL,0),(20,'17','80','2017-09-18 21:00:22',77,NULL,0),(20,'18','72','2017-09-18 21:00:22',78,NULL,0),(20,'19','79','2017-09-18 21:00:22',79,NULL,0),(21,'15','98','2017-09-18 21:01:12',80,NULL,0),(21,'16','96','2017-09-18 21:01:12',81,NULL,0),(21,'17','98','2017-09-18 21:01:12',82,NULL,0),(21,'18','100','2017-09-18 21:01:12',83,NULL,0),(21,'19','100','2017-09-18 21:01:12',84,NULL,0),(22,'15','86','2017-10-09 03:05:59',85,NULL,0),(22,'16','78','2017-10-09 03:05:59',86,NULL,0),(22,'17','83','2017-10-09 03:05:59',87,NULL,0),(22,'18','80','2017-10-09 03:05:59',88,NULL,0),(22,'19','78','2017-10-09 03:05:59',89,NULL,0),(22,'20','78','2017-10-09 03:05:59',90,NULL,0),(22,'21','88','2017-10-09 03:05:59',91,NULL,0),(24,'15','50','2017-10-30 21:04:35',92,NULL,15),(24,'16','50','2017-10-30 21:04:35',93,NULL,15),(24,'17','50','2017-10-30 21:04:35',94,NULL,14),(24,'18','50','2017-10-30 21:04:35',95,NULL,14),(24,'19','50','2017-10-30 21:04:35',96,NULL,15),(24,'20','50','2017-10-30 21:04:35',97,NULL,14),(24,'21','50','2017-10-30 21:04:35',98,NULL,14),(25,'15','50','2017-10-31 11:15:12',99,NULL,15),(25,'16','77','2017-10-31 11:15:12',100,NULL,15),(25,'17','93','2017-10-31 11:15:12',101,NULL,14),(25,'18','50','2017-10-31 11:15:12',102,NULL,14),(25,'19','50','2017-10-31 11:15:12',103,NULL,15),(25,'20','50','2017-10-31 11:15:12',104,NULL,14),(25,'21','50','2017-10-31 11:15:12',105,NULL,14),(30,'15','50','2017-11-02 22:43:12',106,NULL,15),(30,'16','50','2017-11-02 22:43:12',107,NULL,15),(30,'17','50','2017-11-02 22:43:12',108,NULL,14),(30,'18','50','2017-11-02 22:43:12',109,NULL,14),(30,'19','50','2017-11-02 22:43:12',110,NULL,15),(30,'20','50','2017-11-02 22:43:12',111,NULL,14),(30,'21','50','2017-11-02 22:43:12',112,NULL,14),(32,'15','50','2017-11-13 10:46:20',113,NULL,15),(32,'16','50','2017-11-13 10:46:20',114,NULL,15),(32,'17','50','2017-11-13 10:46:20',115,NULL,14),(32,'18','50','2017-11-13 10:46:20',116,NULL,14),(32,'19','50','2017-11-13 10:46:20',117,NULL,15),(35,'15','50','2017-11-13 11:07:06',118,NULL,15),(35,'16','50','2017-11-13 11:07:06',119,NULL,15),(35,'17','50','2017-11-13 11:07:06',120,NULL,14),(35,'18','50','2017-11-13 11:07:06',121,NULL,14),(35,'19','50','2017-11-13 11:07:06',122,NULL,15),(36,'15','71','2017-11-13 11:10:32',123,NULL,15),(36,'16','50','2017-11-13 11:10:32',124,NULL,15),(36,'17','50','2017-11-13 11:10:32',125,NULL,14),(36,'18','50','2017-11-13 11:10:32',126,NULL,14),(36,'19','50','2017-11-13 11:10:32',127,NULL,15),(37,'15','81','2017-11-13 11:11:58',128,NULL,15),(37,'16','84','2017-11-13 11:11:58',129,NULL,15),(37,'17','80','2017-11-13 11:11:58',130,NULL,14),(37,'18','81','2017-11-13 11:11:58',131,NULL,14),(37,'19','86','2017-11-13 11:11:58',132,NULL,15),(38,'26','69','2017-11-13 12:32:53',133,NULL,22),(38,'27','67','2017-11-13 12:32:53',134,NULL,22),(38,'28','67','2017-11-13 12:32:53',135,NULL,24),(38,'29','42','2017-11-13 12:32:53',136,NULL,24),(38,'30','79','2017-11-13 12:32:53',137,NULL,24),(38,'31','76','2017-11-13 12:32:53',138,NULL,22),(38,'32','32','2017-11-13 12:32:53',139,NULL,22),(38,'33','78','2017-11-13 12:32:53',140,NULL,22),(38,'34','72','2017-11-13 12:32:53',141,NULL,23),(38,'35','79','2017-11-13 12:32:53',142,NULL,22),(38,'36','69','2017-11-13 12:32:53',143,NULL,23),(38,'37','75','2017-11-13 12:32:53',144,NULL,22),(38,'38','64','2017-11-13 12:32:53',145,NULL,23),(38,'39','88','2017-11-13 12:32:53',146,NULL,24);
/*!40000 ALTER TABLE `PLAYED_EVENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PLAYS`
--

DROP TABLE IF EXISTS `PLAYS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PLAYS` (
  `PLAY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL,
  `SCENARIO_ID` int(11) NOT NULL,
  `CREATED_AT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PLAY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PLAYS`
--

LOCK TABLES `PLAYS` WRITE;
/*!40000 ALTER TABLE `PLAYS` DISABLE KEYS */;
INSERT INTO `PLAYS` VALUES (1,'1',47,'2017-06-26 05:18:13'),(2,'1',58,'2017-06-27 03:56:10'),(3,'1',58,'2017-06-27 03:57:52'),(4,'1',58,'2017-06-27 04:00:36'),(5,'1',58,'2017-06-27 04:01:52'),(6,'1',6,'2017-06-27 08:33:55'),(7,'1',1,'2017-08-21 05:48:02'),(8,'1',7,'2017-08-23 11:26:57'),(9,'1',7,'2017-08-23 11:31:56'),(10,'1',7,'2017-08-23 11:42:51'),(11,'1',7,'2017-08-23 11:43:47'),(12,'1',7,'2017-08-23 11:44:38'),(13,'1',7,'2017-08-23 11:45:34'),(14,'1',1,'2017-08-23 14:01:01'),(15,'1',7,'2017-08-25 22:18:18'),(16,'1',17,'2017-09-18 20:57:09'),(17,'1',17,'2017-09-18 20:58:03'),(18,'1',17,'2017-09-18 20:58:51'),(19,'1',17,'2017-09-18 20:59:37'),(20,'1',17,'2017-09-18 21:00:22'),(21,'1',17,'2017-09-18 21:01:12'),(22,'1',17,'2017-10-09 03:05:59'),(23,'1',17,'2017-10-30 21:02:33'),(24,'1',17,'2017-10-30 21:04:35'),(25,'1',17,'2017-10-31 11:15:12'),(26,'1',17,'2017-11-02 22:34:11'),(27,'1',17,'2017-11-02 22:37:59'),(28,'1',17,'2017-11-02 22:39:33'),(29,'1',17,'2017-11-02 22:41:42'),(30,'1',17,'2017-11-02 22:43:12'),(31,'1',17,'2017-11-13 10:38:53'),(32,'1',17,'2017-11-13 10:46:20'),(33,'1',17,'2017-11-13 11:01:54'),(34,'1',17,'2017-11-13 11:05:51'),(35,'1',17,'2017-11-13 11:07:06'),(36,'1',17,'2017-11-13 11:10:32'),(37,'1',17,'2017-11-13 11:11:58'),(38,'1',19,'2017-11-13 12:32:53');
/*!40000 ALTER TABLE `PLAYS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PLAYS_COMMENTS`
--

DROP TABLE IF EXISTS `PLAYS_COMMENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PLAYS_COMMENTS` (
  `ROW_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMMENT` text NOT NULL,
  `CREATED_AT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PLAY_ID` int(11) NOT NULL,
  PRIMARY KEY (`ROW_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PLAYS_COMMENTS`
--

LOCK TABLES `PLAYS_COMMENTS` WRITE;
/*!40000 ALTER TABLE `PLAYS_COMMENTS` DISABLE KEYS */;
INSERT INTO `PLAYS_COMMENTS` VALUES (26,'dddd','2017-11-02 22:43:12',30),(27,'dddd','2017-11-02 22:43:12',30),(28,'This is just a test','2017-11-13 10:46:20',32),(29,'ddd','2017-11-13 11:07:06',35),(30,'This person peformed well','2017-11-13 11:11:58',37),(31,'All went good','2017-11-13 12:32:53',38);
/*!40000 ALTER TABLE `PLAYS_COMMENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PLAYS_TRAINEE`
--

DROP TABLE IF EXISTS `PLAYS_TRAINEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PLAYS_TRAINEE` (
  `ROW_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PLAY_ID` int(11) NOT NULL,
  `TRAINEE_F_NAME` varchar(64) NOT NULL,
  `CREATED_AT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TRAINEE_L_NAME` varchar(64) NOT NULL,
  `TRAINEE_DISCIPLINE` varchar(45) NOT NULL,
  `TRAINEE_YEARS` int(11) NOT NULL,
  `SCENARIO_ROLE_ID` int(11) NOT NULL,
  `RATING` int(11) NOT NULL,
  PRIMARY KEY (`ROW_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PLAYS_TRAINEE`
--

LOCK TABLES `PLAYS_TRAINEE` WRITE;
/*!40000 ALTER TABLE `PLAYS_TRAINEE` DISABLE KEYS */;
INSERT INTO `PLAYS_TRAINEE` VALUES (23,24,'John','2017-10-30 21:04:35','Doe','CS',1,14,0),(24,24,'John1','2017-10-30 21:04:35','Doe1','BS',1,15,0),(25,25,'John','2017-10-31 11:15:12','Doe','CS',1,14,0),(26,25,'John1','2017-10-31 11:15:12','Doe1','BS',1,15,0),(27,30,'John','2017-11-02 22:43:12','Doe','CS',1,14,0),(28,30,'John1','2017-11-02 22:43:12','Doe1','BS',1,15,0),(29,32,'John','2017-11-13 10:46:20','Doe','CS',1,14,0),(30,32,'John1','2017-11-13 10:46:20','Doe1','Cs',1,15,0),(31,35,'John','2017-11-13 11:07:06','Doe','CS',1,14,3),(32,35,'John1','2017-11-13 11:07:06','Doe1','BS',1,15,3),(33,36,'John','2017-11-13 11:10:32','Doe','CS',1,14,3),(34,36,'John1','2017-11-13 11:10:32','Doe1','Cs',1,15,3),(35,37,'John','2017-11-13 11:11:58','Doe','CS',1,14,3),(36,37,'John1','2017-11-13 11:11:58','Doe1','BS',1,15,2),(37,38,'John','2017-11-13 12:32:53','Doe','General Sergery',1,22,3),(38,38,'John1','2017-11-13 12:32:53','Doe1','OR Nurse',1,23,2),(39,38,'Jane1','2017-11-13 12:32:53','Doe3','Anertheology',1,24,2);
/*!40000 ALTER TABLE `PLAYS_TRAINEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCENARIO`
--

DROP TABLE IF EXISTS `SCENARIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCENARIO` (
  `SCENARIO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SCENARIO_NAME` varchar(255) DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_AT` datetime DEFAULT CURRENT_TIMESTAMP,
  `TIME_DURATION` int(11) NOT NULL,
  `CATEGORY` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SCENARIO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCENARIO`
--

LOCK TABLES `SCENARIO` WRITE;
/*!40000 ALTER TABLE `SCENARIO` DISABLE KEYS */;
INSERT INTO `SCENARIO` VALUES (17,'Trauma','2017-09-18 19:49:20','2017-09-18 19:49:20',180,'Anesthesiology'),(19,'Trauma(MVA)','2017-11-13 11:14:26','2017-11-13 11:14:26',900,'Surgery');
/*!40000 ALTER TABLE `SCENARIO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCENARIO_ROLE`
--

DROP TABLE IF EXISTS `SCENARIO_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCENARIO_ROLE` (
  `SCENARIO_ROLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SCENARIO_ID` int(11) NOT NULL,
  `ROLE_NAME` varchar(255) DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_AT` datetime DEFAULT CURRENT_TIMESTAMP,
  `NUMBER` int(11) NOT NULL,
  PRIMARY KEY (`SCENARIO_ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCENARIO_ROLE`
--

LOCK TABLES `SCENARIO_ROLE` WRITE;
/*!40000 ALTER TABLE `SCENARIO_ROLE` DISABLE KEYS */;
INSERT INTO `SCENARIO_ROLE` VALUES (9,15,'Nurse','2017-09-12 04:19:46','2017-09-12 04:19:46',2),(10,15,'Doctors','2017-09-12 04:19:46','2017-09-12 04:19:46',3),(11,16,'Head Nurse','2017-09-12 08:28:33','2017-09-12 08:28:33',1),(12,16,'Nurses j','2017-09-12 08:28:33','2017-09-12 08:28:33',2),(13,16,'Doctor','2017-09-12 08:28:33','2017-09-12 08:28:33',1),(14,17,'Doctor','2017-09-18 19:49:20','2017-09-18 19:49:20',1),(15,17,'Nurse','2017-09-18 19:49:20','2017-09-18 19:49:20',2),(16,18,'computer Engineer','2017-10-08 22:22:59','2017-10-08 22:22:59',1),(17,18,'manager','2017-10-08 22:22:59','2017-10-08 22:22:59',1),(18,18,'intern','2017-10-08 22:22:59','2017-10-08 22:22:59',1),(19,18,'project manager','2017-10-08 22:22:59','2017-10-08 22:22:59',1),(20,18,'client','2017-10-08 22:22:59','2017-10-08 22:22:59',1),(21,18,'goverment','2017-10-08 22:22:59','2017-10-08 22:22:59',1),(22,19,'Surgeon','2017-11-13 11:14:26','2017-11-13 11:14:26',1),(23,19,'Nurse','2017-11-13 11:14:26','2017-11-13 11:14:26',1),(24,19,'Anesthesiologist','2017-11-13 11:14:26','2017-11-13 11:14:26',1);
/*!40000 ALTER TABLE `SCENARIO_ROLE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-13 12:46:16

-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: osticket
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `ost_config`
--

DROP TABLE IF EXISTS `ost_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `namespace` (`namespace`,`key`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_config`
--

LOCK TABLES `ost_config` WRITE;
/*!40000 ALTER TABLE `ost_config` DISABLE KEYS */;
INSERT INTO `ost_config` VALUES (1,'core','admin_email','jakob@secnd.me','2017-02-12 14:55:20'),(2,'core','helpdesk_url','http://localhost/osticket/upload/','2017-02-12 14:55:20'),(3,'core','helpdesk_title','itsys Tirol','2017-02-12 14:55:20'),(4,'core','schema_signature','98ad7d550c26ac44340350912296e673','2017-02-12 14:55:20'),(5,'core','time_format','hh:mm a','2017-02-12 14:55:18'),(6,'core','date_format','MM/dd/y','2017-02-12 14:55:18'),(7,'core','datetime_format','MM/dd/y h:mm a','2017-02-12 14:55:18'),(8,'core','daydatetime_format','EEE, MMM d y h:mm a','2017-02-12 14:55:18'),(9,'core','default_priority_id','2','2017-02-12 14:55:18'),(10,'core','enable_daylight_saving','','2017-02-12 14:55:18'),(11,'core','reply_separator','-- reply above this line --','2017-02-12 14:55:18'),(12,'core','isonline','1','2017-02-12 14:55:18'),(13,'core','staff_ip_binding','','2017-02-12 14:55:18'),(14,'core','staff_max_logins','4','2017-02-12 14:55:18'),(15,'core','staff_login_timeout','2','2017-02-12 14:55:18'),(16,'core','staff_session_timeout','30','2017-02-12 14:55:18'),(17,'core','passwd_reset_period','','2017-02-12 14:55:18'),(18,'core','client_max_logins','4','2017-02-12 14:55:18'),(19,'core','client_login_timeout','2','2017-02-12 14:55:18'),(20,'core','client_session_timeout','30','2017-02-12 14:55:18'),(21,'core','max_page_size','25','2017-02-12 14:55:18'),(22,'core','max_open_tickets','','2017-02-12 14:55:18'),(23,'core','autolock_minutes','3','2017-02-12 14:55:18'),(24,'core','default_smtp_id','','2017-02-12 14:55:18'),(25,'core','use_email_priority','','2017-02-12 14:55:18'),(26,'core','enable_kb','','2017-02-12 14:55:18'),(27,'core','enable_premade','1','2017-02-12 14:55:18'),(28,'core','enable_captcha','','2017-02-12 14:55:18'),(29,'core','enable_auto_cron','','2017-02-12 14:55:18'),(30,'core','enable_mail_polling','','2017-02-12 14:55:18'),(31,'core','send_sys_errors','1','2017-02-12 14:55:18'),(32,'core','send_sql_errors','1','2017-02-12 14:55:18'),(33,'core','send_login_errors','1','2017-02-12 14:55:18'),(34,'core','save_email_headers','1','2017-02-12 14:55:18'),(35,'core','strip_quoted_reply','1','2017-02-12 14:55:18'),(36,'core','ticket_autoresponder','','2017-02-12 14:55:18'),(37,'core','message_autoresponder','','2017-02-12 14:55:18'),(38,'core','ticket_notice_active','1','2017-02-12 14:55:18'),(39,'core','ticket_alert_active','1','2017-02-12 14:55:18'),(40,'core','ticket_alert_admin','1','2017-02-12 14:55:19'),(41,'core','ticket_alert_dept_manager','1','2017-02-12 14:55:19'),(42,'core','ticket_alert_dept_members','','2017-02-12 14:55:19'),(43,'core','message_alert_active','1','2017-02-12 14:55:19'),(44,'core','message_alert_laststaff','1','2017-02-12 14:55:19'),(45,'core','message_alert_assigned','1','2017-02-12 14:55:19'),(46,'core','message_alert_dept_manager','','2017-02-12 14:55:19'),(47,'core','note_alert_active','','2017-02-12 14:55:19'),(48,'core','note_alert_laststaff','1','2017-02-12 14:55:19'),(49,'core','note_alert_assigned','1','2017-02-12 14:55:19'),(50,'core','note_alert_dept_manager','','2017-02-12 14:55:19'),(51,'core','transfer_alert_active','','2017-02-12 14:55:19'),(52,'core','transfer_alert_assigned','','2017-02-12 14:55:19'),(53,'core','transfer_alert_dept_manager','1','2017-02-12 14:55:19'),(54,'core','transfer_alert_dept_members','','2017-02-12 14:55:19'),(55,'core','overdue_alert_active','1','2017-02-12 14:55:19'),(56,'core','overdue_alert_assigned','1','2017-02-12 14:55:19'),(57,'core','overdue_alert_dept_manager','1','2017-02-12 14:55:19'),(58,'core','overdue_alert_dept_members','','2017-02-12 14:55:19'),(59,'core','assigned_alert_active','1','2017-02-12 14:55:19'),(60,'core','assigned_alert_staff','1','2017-02-12 14:55:19'),(61,'core','assigned_alert_team_lead','','2017-02-12 14:55:19'),(62,'core','assigned_alert_team_members','','2017-02-12 14:55:19'),(63,'core','auto_claim_tickets','1','2017-02-12 14:55:19'),(64,'core','show_related_tickets','1','2017-02-12 14:55:19'),(65,'core','show_assigned_tickets','1','2017-02-12 14:55:19'),(66,'core','show_answered_tickets','','2017-02-12 14:55:19'),(67,'core','hide_staff_name','','2017-02-12 14:55:19'),(68,'core','overlimit_notice_active','','2017-02-12 14:55:19'),(69,'core','email_attachments','1','2017-02-12 14:55:19'),(70,'core','ticket_number_format','######','2017-02-12 14:55:19'),(71,'core','ticket_sequence_id','','2017-02-12 14:55:19'),(72,'core','task_number_format','#','2017-02-12 14:55:19'),(73,'core','task_sequence_id','2','2017-02-12 14:55:19'),(74,'core','log_level','2','2017-02-12 14:55:19'),(75,'core','log_graceperiod','12','2017-02-12 14:55:19'),(76,'core','client_registration','public','2017-02-12 14:55:19'),(77,'core','max_file_size','1048576','2017-02-12 14:55:19'),(78,'core','landing_page_id','1','2017-02-12 14:55:19'),(79,'core','thank-you_page_id','2','2017-02-12 14:55:19'),(80,'core','offline_page_id','3','2017-02-12 14:55:19'),(81,'core','system_language','de_AT','2017-02-13 11:24:37'),(82,'mysqlsearch','reindex','0','2017-02-12 16:12:22'),(83,'core','default_email_id','1','2017-02-12 14:55:20'),(84,'core','alert_email_id','2','2017-02-12 14:55:20'),(85,'core','default_dept_id','1','2017-02-12 14:55:20'),(86,'core','default_sla_id','1','2017-02-12 14:55:20'),(87,'core','default_template_id','1','2017-02-12 14:55:20'),(88,'core','default_timezone','Europe/Vienna','2017-02-13 11:26:27'),(89,'core','default_storage_bk','D','2017-02-12 15:25:11'),(90,'core','date_formats','24','2017-02-13 11:26:27'),(91,'core','default_locale','','2017-02-12 15:25:11'),(92,'core','secondary_langs','de_AT','2017-02-13 11:24:37'),(93,'core','enable_avatars','1','2017-02-12 15:25:11'),(94,'core','enable_richtext','1','2017-02-12 15:25:11'),(95,'core','files_req_auth','1','2017-02-12 15:25:11');
/*!40000 ALTER TABLE `ost_config` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-16 13:52:04

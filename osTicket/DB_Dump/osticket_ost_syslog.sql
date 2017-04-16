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
-- Table structure for table `ost_syslog`
--

DROP TABLE IF EXISTS `ost_syslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_syslog` (
  `log_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` enum('Debug','Warning','Error') NOT NULL,
  `title` varchar(255) NOT NULL,
  `log` text NOT NULL,
  `logger` varchar(64) NOT NULL,
  `ip_address` varchar(64) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_syslog`
--

LOCK TABLES `ost_syslog` WRITE;
/*!40000 ALTER TABLE `ost_syslog` DISABLE KEYS */;
INSERT INTO `ost_syslog` VALUES (1,'Debug','osTicket installed!','Congratulations osTicket basic installation completed!\n\nThank you for choosing osTicket!','','::1','2017-02-12 15:55:21','2017-02-12 15:55:21'),(2,'Error','Mailer Error','Unable to email via php mail function:jakob@secnd.me mail() returned failure ','','::1','2017-02-12 16:23:40','2017-02-12 16:23:40'),(3,'Warning','Failed login attempt (user)','Username: jakob@secnd.me IP: ::1 Time: Feb 12, 2017, 3:23 pm UTC Attempts: 3','','::1','2017-02-12 16:23:40','2017-02-12 16:23:40'),(4,'Error','Mailer Error','Unable to email via php mail function:ppollheimer@tsn.at mail() returned failure ','','::1','2017-02-21 11:28:51','2017-02-21 11:28:51'),(5,'Error','Mailer Error','Unable to email via php mail function:ppollheimer@tsn.at mail() returned failure ','','::1','2017-02-21 11:31:39','2017-02-21 11:31:39'),(6,'Error','Mailer Error','Unable to email via php mail function:jakob@secnd.me mail() returned failure ','','::1','2017-02-21 12:56:41','2017-02-21 12:56:41'),(7,'Error','Mailer-Fehler','Kann keine E-Mail über die PHP-Mail-Funktion versenden:jakob@secnd.me mail() returned failure ','','::1','2017-04-11 17:16:57','2017-04-11 17:16:57'),(8,'Warning','Fehlgeschlagener Anmeldeversuch (Benutzer)','Benutzername: jakob@secnd.me IP-Adresse: ::1 Uhrzeit: Apr 11, 2017, 3:16 pm UTC Versuche: 3','','::1','2017-04-11 17:16:57','2017-04-11 17:16:57');
/*!40000 ALTER TABLE `ost_syslog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-16 13:52:21

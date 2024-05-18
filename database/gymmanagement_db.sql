/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.4.27-MariaDB : Database - gymmanagement_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gymmanagement_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `gymmanagement_db`;

/*Table structure for table `adminaccount` */

DROP TABLE IF EXISTS `adminaccount`;

CREATE TABLE `adminaccount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `adminaccount` */

insert  into `adminaccount`(`id`,`username`,`password`) values (12,'rgtg','$2y$10$pDISpuDd7Z8W.Klr4ESp4uBjTS1PVh.XW/jsH54kXZ8C1yODbA2DG'),(13,'admin','$2y$10$3senSZb/agVPhZm3zE.Xye7fiC1q8h4MCIIBER/zIAywVsY07zAMy'),(14,'wdwfw','$2y$10$RCIP4izMzz/JXfLz2OGkHOr4b08IWXJKHtAyCSh9Svmh.kXlJPFui'),(15,'wefewf','$2y$10$WPaoGEyadFIfv0yg5NJPsedgS4ah7jvMukcu1VkX4OKNdMyOGwGBG');

/*Table structure for table `membership` */

DROP TABLE IF EXISTS `membership`;

CREATE TABLE `membership` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `firstname` varchar(250) DEFAULT NULL,
  `lastname` varchar(250) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `age` varchar(250) DEFAULT NULL,
  `contactnumber` varchar(250) DEFAULT NULL,
  `class` varchar(250) DEFAULT NULL,
  `goal` varchar(250) DEFAULT NULL,
  `currentweight` varchar(250) DEFAULT NULL,
  `currentheight` varchar(250) DEFAULT NULL,
  `startingdate` varchar(250) DEFAULT NULL,
  `membership` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL,
  `payment` varchar(250) DEFAULT NULL,
  `total` varchar(250) DEFAULT NULL,
  `datepaid` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `membership` */

insert  into `membership`(`id`,`username`,`email`,`firstname`,`lastname`,`gender`,`age`,`contactnumber`,`class`,`goal`,`currentweight`,`currentheight`,`startingdate`,`membership`,`status`,`payment`,`total`,`datepaid`) values (25,'CristobalParaon','paraoncristobal25@gmail.com','Cristobal Paraon','Paraon','male','22','09196224054','cardio','Fit','55kg.','160cm.','2024-05-17','sixmonths','Pending','Paid','1500','2024-05-17 02:36:38'),(26,'jessicanava','jessicapionava07@gmail.com','Jessica','Nava','female','22','09510218379','yoga','Fit','42kg.','160cm.','2024-07-17','yearly','Approved','Paid','1500','2024-05-17 02:35:27'),(27,'narcisoangelo','narcisoangelo@gmail.com','Narciso Angelo','Teofilo','male','24','0932323928','strength','Muscle','68kg.','167cm.','2024-06-21','sixmonths','Pending','Unpaid','1400',NULL),(30,'CristobalParaon','paraoncristobal25@gmail.com','','','male','','','Bulking','Lose Weight','','','2024-06-21','monthly','Pending','Unpaid','1800',NULL),(31,'CristobalParaon','paraoncristobal25@gmail.com','','','male','','','Bulking','Lose Weight','','','2024-06-21','monthly','Pending','Paid','1000',NULL),(32,'CristobalParaon','paraoncristobal25@gmail.com','','','male','','','Bulking','Lose Weight','','','2024-08-21','monthly','Pending','Unpaid','1600',NULL),(33,'CristobalParaon','paraoncristobal25@gmail.com','','','male','','','Bulking','Lose Weight','','','2024-09-21','monthly','Pending','Unpaid','1000',NULL),(35,'gine','oramaygine@gmail.com','maygine','ora','female','20','0978656435','Fat Burning','Lose Weight','45','150','2024-05-17','monthly','Approved','Paid','1000','2024-05-17 04:53:33');

/*Table structure for table `trainers` */

DROP TABLE IF EXISTS `trainers`;

CREATE TABLE `trainers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `expertise` varchar(250) DEFAULT NULL,
  `schedule` varchar(250) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `trainers` */

insert  into `trainers`(`id`,`name`,`expertise`,`schedule`) values (1,'Hector T. Daigl','Muscle Trainer','Monday'),(2,'Paul D. Newman','Power Trainer','Tuesday'),(3,'Isabella C. Chang','Flexibility Trainer','Wednesday'),(4,'Michael D. Johnson','Cardio Trainer','Thursday'),(5,'Emma W. Lee','Endurance Trainer','Friday'),(6,'Ashley R. Patel','Yoga Trainer','Saturday'),(7,'David M. Thomas','Cutting','Sunday'),(8,'Mary J. Taylor','Bulking','Monday');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`email`,`password`) values (12,'CristobalParaon','paraoncristobal25@gmail.com','$2y$10$uHBlD9SitRiZek15Kf0gy..fr6BT8nODWHdqV3L9Owp55DA8ioySi'),(13,'Babel','babel@hahaha','$2y$10$zS2GBR/RrZwU/K/.GnfvUOodQIhRjLZFoD9BwRJs54TciI6JhIOGm'),(14,'jes','paraoncrjkjkistobal25@gmail.com','$2y$10$ZW5I.RU2XfPgz/1cplBgveCdt.q02y3C9sKeE1SUUk7e2XPes0XhW'),(15,'admin','tobal@gmail.com','$2y$10$C2.jVl6ILKHI2jNonXYz0uefC2VavhfoNQhBVn6bp1mMYVdGBShzi'),(16,'jessicanava','jessicapionava07@gmail.com','$2y$10$4/CNYJuSnk9SiLOgo/66V.k1x98T9dssmZBRawZVX4iCjz7e..eWe'),(17,'narcisoangelo','narcisoangelo@gmail.com','$2y$10$WosGdUrw8g3J8PXJk7O6XuKZfa0Jwe0gouZKhZwADEk1bIKScnlqm'),(18,'abelitolim','abelitolim@gmail.com','$2y$10$qJoFb9MQgqizdP7rzxcPK.zMgDjfnGVIotQuMVFFwPwPjAw0GuwWe'),(19,'gine','oramaygine@gmail.com','$2y$10$Eiq633onrZr84IM1o.1bIOiNyVhuxZCkt67Xblsg1GoZC8lDzs4J.'),(20,'sample','sample@gmail.com','$2y$10$YHAEmKHnhyvPSKlLLb2nX.XX7XDxrjZH7Tumm9IKzqC9/nlW6lq6S');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

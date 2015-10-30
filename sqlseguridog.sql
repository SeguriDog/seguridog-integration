-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: dbseguridog
-- ------------------------------------------------------
-- Server version	5.6.27

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
-- Table structure for table `canine`
--

DROP TABLE IF EXISTS `canine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canine` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `attend_call` varchar(255) NOT NULL,
  `color_canine` varchar(255) NOT NULL,
  `date_birthday` datetime NOT NULL,
  `felt_down` varchar(255) NOT NULL,
  `micro_chip` varchar(255) NOT NULL,
  `name_canine` varchar(255) NOT NULL,
  `name_father` varchar(255) NOT NULL,
  `name_mother` varchar(255) NOT NULL,
  `position_stay` varchar(255) NOT NULL,
  `sex_canine` varchar(255) NOT NULL,
  `sign_canine` varchar(255) NOT NULL,
  `sit_down` varchar(255) NOT NULL,
  `type_race` varchar(255) NOT NULL,
  `walk_side` varchar(255) NOT NULL,
  `watch_canine` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canine`
--

LOCK TABLES `canine` WRITE;
/*!40000 ALTER TABLE `canine` DISABLE KEYS */;
/*!40000 ALTER TABLE `canine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canine_ability`
--

DROP TABLE IF EXISTS `canine_ability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canine_ability` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `act_certification` varchar(255) NOT NULL,
  `canines_id` bigint(20) NOT NULL,
  `date_certification` datetime NOT NULL,
  `date_training_ability` datetime NOT NULL,
  `name_entity` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_1k34aoyc99eg7ops0ccsnf25d` (`canines_id`),
  CONSTRAINT `FK_1k34aoyc99eg7ops0ccsnf25d` FOREIGN KEY (`canines_id`) REFERENCES `canine` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canine_ability`
--

LOCK TABLES `canine_ability` WRITE;
/*!40000 ALTER TABLE `canine_ability` DISABLE KEYS */;
/*!40000 ALTER TABLE `canine_ability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinic_history`
--

DROP TABLE IF EXISTS `clinic_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinic_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `canines_id` bigint(20) NOT NULL,
  `date_treatment` datetime NOT NULL,
  `evaluation` varchar(255) NOT NULL,
  `medics_id` bigint(20) NOT NULL,
  `name_treatment` varchar(255) NOT NULL,
  `type_treatment` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_jjf6b8usbknqry1waxt1djvum` (`canines_id`),
  KEY `FK_q1xgiriv89wdljc3esx6ywg8j` (`medics_id`),
  CONSTRAINT `FK_jjf6b8usbknqry1waxt1djvum` FOREIGN KEY (`canines_id`) REFERENCES `canine` (`id`),
  CONSTRAINT `FK_q1xgiriv89wdljc3esx6ywg8j` FOREIGN KEY (`medics_id`) REFERENCES `k9user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinic_history`
--

LOCK TABLES `clinic_history` WRITE;
/*!40000 ALTER TABLE `clinic_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `clinic_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise_ability`
--

DROP TABLE IF EXISTS `exercise_ability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercise_ability` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `actitude_general` int(11) NOT NULL,
  `canines_id` bigint(20) NOT NULL,
  `comunicative_canine` int(11) NOT NULL,
  `date_ability` datetime NOT NULL,
  `dominated` int(11) NOT NULL,
  `exercices_ability` varchar(255) NOT NULL,
  `instructors_id` bigint(20) NOT NULL,
  `inter_agressive` int(11) NOT NULL,
  `issues_training` varchar(255) NOT NULL,
  `level_contantactitude` int(11) NOT NULL,
  `level_exiting` int(11) NOT NULL,
  `name_ability` varchar(255) NOT NULL,
  `nature_explore` int(11) NOT NULL,
  `nature_play` int(11) NOT NULL,
  `obedience` int(11) NOT NULL,
  `relationship_handler` int(11) NOT NULL,
  `stablity_emotional` int(11) NOT NULL,
  `type_ability` varchar(255) NOT NULL,
  `type_training` varchar(255) NOT NULL,
  `vel_learning` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9gmpsmjvuov2anntvf4pbkljv` (`canines_id`),
  KEY `FK_n5q0q0j8r5o644gdweainsumy` (`instructors_id`),
  CONSTRAINT `FK_9gmpsmjvuov2anntvf4pbkljv` FOREIGN KEY (`canines_id`) REFERENCES `canine` (`id`),
  CONSTRAINT `FK_n5q0q0j8r5o644gdweainsumy` FOREIGN KEY (`instructors_id`) REFERENCES `k9user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise_ability`
--

LOCK TABLES `exercise_ability` WRITE;
/*!40000 ALTER TABLE `exercise_ability` DISABLE KEYS */;
/*!40000 ALTER TABLE `exercise_ability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k9user`
--

DROP TABLE IF EXISTS `k9user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k9user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `birth_date` datetime NOT NULL,
  `cedula` int(11) NOT NULL,
  `cellphone` varchar(10) NOT NULL,
  `date_contract` datetime NOT NULL,
  `e_mail` varchar(255) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `login_pass` varchar(255) NOT NULL,
  `login_user` varchar(255) NOT NULL,
  `type_contract` varchar(255) NOT NULL,
  `type_users` int(11) NOT NULL,
  `class` varchar(255) NOT NULL,
  `approved_course` varchar(255) DEFAULT NULL,
  `date_approved` datetime DEFAULT NULL,
  `date_initial_access` datetime DEFAULT NULL,
  `date_credentials` datetime DEFAULT NULL,
  `specialities` varchar(255) DEFAULT NULL,
  `date_expedition` datetime DEFAULT NULL,
  `professional_card` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_m7ix54rl16ry01qpagry1gsqc` (`cedula`),
  UNIQUE KEY `UK_c0ocoenxgoxpo5yk1c41etnh9` (`login_pass`),
  UNIQUE KEY `UK_7nmel6skfp3ex93dq0uvxcuxt` (`login_user`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k9user`
--

LOCK TABLES `k9user` WRITE;
/*!40000 ALTER TABLE `k9user` DISABLE KEYS */;
INSERT INTO `k9user` VALUES (1,1,'2015-10-29 00:00:00',10001001,'30430774','2015-10-29 00:00:00','jemmejiaca@unal.edu.co','Jesid','Mejia','admin','jemmejiaca','Fijo',1,'co.com.seguridog.K9Admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,'2015-10-29 00:00:00',10001002,'30430774','2015-10-29 00:00:00','eabohorquezg@unal.edu.co','Edwin','Bohorquez','instructor','eabohorquezg','Fijo',2,'co.com.seguridog.K9Instructor',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,3,'2015-10-29 00:00:00',10001003,'30430774','2015-10-29 00:00:00','roherrerap@unal.edu.co','Richard','Herrera','veterinario','roherrerap','Fijo',3,'co.com.seguridog.K9Veterinarian',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,4,'2015-10-29 00:00:00',10001004,'30430774','2015-10-29 00:00:00','jfcanob@unal.edu.co','Jefersson','Cano','manejador1','jfcanob','Fijo',4,'co.com.seguridog.K9Handler',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,5,'2015-10-29 00:00:00',10001005,'30430774','2015-10-29 00:00:00','afacevedom@unal.edu.co','Felipe','Acevedo','manejador2','afacevedom','Fijo',4,'co.com.seguridog.K9Handler',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `k9user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_instructor`
--

DROP TABLE IF EXISTS `training_instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `training_instructor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `date_course` datetime NOT NULL,
  `name_course` varchar(255) NOT NULL,
  `student_course` int(11) NOT NULL,
  `teacher_course` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_instructor`
--

LOCK TABLES `training_instructor` WRITE;
/*!40000 ALTER TABLE `training_instructor` DISABLE KEYS */;
/*!40000 ALTER TABLE `training_instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_canine`
--

DROP TABLE IF EXISTS `work_canine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_canine` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address_work_area` varchar(255) NOT NULL,
  `canines_id` bigint(20) NOT NULL,
  `date_work_area` datetime NOT NULL,
  `handlers_id` bigint(20) NOT NULL,
  `hours_per_day` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_294gwcg2y482ifra6ird2t2go` (`canines_id`),
  KEY `FK_ngc4xwr7gaonf0nne0nlp65lp` (`handlers_id`),
  CONSTRAINT `FK_294gwcg2y482ifra6ird2t2go` FOREIGN KEY (`canines_id`) REFERENCES `canine` (`id`),
  CONSTRAINT `FK_ngc4xwr7gaonf0nne0nlp65lp` FOREIGN KEY (`handlers_id`) REFERENCES `k9user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_canine`
--

LOCK TABLES `work_canine` WRITE;
/*!40000 ALTER TABLE `work_canine` DISABLE KEYS */;
/*!40000 ALTER TABLE `work_canine` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-29 23:09:54

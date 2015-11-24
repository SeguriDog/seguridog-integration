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
  `name_canine` varchar(15) NOT NULL,
  `name_father` varchar(15) NOT NULL,
  `name_mother` varchar(15) NOT NULL,
  `photo_canine` varchar(255) NOT NULL,
  `position_stay` varchar(255) NOT NULL,
  `sex_canine` varchar(255) NOT NULL,
  `sign_canine` varchar(255) NOT NULL,
  `sit_down` varchar(255) NOT NULL,
  `state_canine` varchar(255) NOT NULL,
  `type_race` varchar(255) NOT NULL,
  `walk_side` varchar(255) NOT NULL,
  `watch_canine` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ik0iuxaq1mmofoyfnyutlvqgk` (`micro_chip`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canine`
--

LOCK TABLES `canine` WRITE;
/*!40000 ALTER TABLE `canine` DISABLE KEYS */;
INSERT INTO `canine` VALUES (1,0,'','Negro','2006-01-01 00:00:00','','M15-001-0001','Rocky','PRocky','MRocky','img_alcon.jpg','','Macho','','','Activo','Pastor Aleman','',''),(2,0,'','Blanco','2007-01-01 00:00:00','','M15-002-0002','Toby','PToby','Mtoby','img_toby.jpg','','hembra','','','Recuperación Física','Schnauzer','',''),(3,0,'','Cafe Oscuro - Negro','2008-01-01 00:00:00','','M15-003-0003','Erik','PErik','MErik','img_erik.jpg','','macho','','','Activo','Rottweiller','',''),(4,0,'','Cafe Claro','2009-01-01 00:00:00','','M15-004-0004','Buddy','PBuddy','MBuddy','img_buddy.jpg','','Macho','','','Activo','Boxer','',''),(5,0,'','Gris Oscuro','2010-01-01 00:00:00','','M15-005-0005','Duke','PDuke','MDuke','img_duke.jpg','','Macho','','','Activo','Doberman','',''),(6,0,'','Cafe Claro','2011-01-01 00:00:00','','M15-001-0006','Dalia','PDalia','MDalia','img_dalia.jpg','','Hembra','','','Activo','Retriever','',''),(7,0,'','Cafe Claro','2012-01-01 00:00:00','','M15-001-0007','Rose','PRose','MRose','img_rose.jpg','','Hembra','','','Activo','Spaniels','',''),(8,0,'','Blanco','2013-01-01 00:00:00','','M15-001-0008','Linda','PLinda','MLinda','img_linda.jpg','','Hembra','','','Activo','Beagle','',''),(9,0,'','Blanco','2014-01-01 00:00:00','','M15-001-0009','Laika','PLaika','','img_laika.jpg','','Hembra','','','Activo','Zetter','',''),(10,0,'','Blanco','2015-01-01 00:00:00','','M15-001-0010','Bella','','MBella','img_bella.jpg','','Hembra','','','Activo','Pastor Belga','','');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinic_history`
--

LOCK TABLES `clinic_history` WRITE;
/*!40000 ALTER TABLE `clinic_history` DISABLE KEYS */;
INSERT INTO `clinic_history` VALUES (1,0,1,'2015-01-01 00:00:00','buena',7,'Vacuna1','Vacuna'),(2,0,1,'2015-03-01 00:00:00','buena',7,'Vacuna2','Vacuna'),(3,0,8,'2015-02-02 00:00:00','Estable',8,'Desparacitación garrapata','Desparacitación'),(4,0,1,'2015-04-04 00:00:00','Estable',8,'Desparacitación garrapata','Desparacitación');
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
  `enable_user` bit(1) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `login_pass` varchar(255) NOT NULL,
  `login_user` varchar(255) NOT NULL,
  `photo_user` varchar(255) NOT NULL,
  `type_contract` varchar(255) NOT NULL,
  `type_users` int(11) NOT NULL,
  `class` varchar(255) NOT NULL,
  `date_expedition` datetime DEFAULT NULL,
  `professional_card` varchar(255) DEFAULT NULL,
  `date_initial_access` datetime DEFAULT NULL,
  `approved_course` varchar(255) DEFAULT NULL,
  `date_approved` datetime DEFAULT NULL,
  `date_credentials` datetime DEFAULT NULL,
  `specialities` varchar(255) DEFAULT NULL,
  `basic_induction_course` varchar(255) DEFAULT NULL,
  `date_approved_induction` datetime DEFAULT NULL,
  `type_training_handler` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_m7ix54rl16ry01qpagry1gsqc` (`cedula`),
  UNIQUE KEY `UK_c0ocoenxgoxpo5yk1c41etnh9` (`login_pass`),
  UNIQUE KEY `UK_7nmel6skfp3ex93dq0uvxcuxt` (`login_user`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k9user`
--

LOCK TABLES `k9user` WRITE;
/*!40000 ALTER TABLE `k9user` DISABLE KEYS */;
INSERT INTO `k9user` VALUES (1,0,'1990-01-01 00:00:00',101300001,'3005640001','2015-01-01 00:00:00','mmejia@unal.edu.co','','Mauricio','Mejia','admin','jemmejiaca','img_mauricio.png','Indefinido',1,'co.com.seguridog.K9Admin',NULL,NULL,'2014-12-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,0,'1990-01-02 00:00:00',101300002,'3005640002','2015-01-02 00:00:00','ebohorquez@unal.edu.co','','Edwin','Bohorquez','instructor1','eabohorquezg','img_edwin.png','Indefinido',2,'co.com.seguridog.K9Instructor',NULL,NULL,NULL,'Busqueda de Narcoticos','2014-12-02 00:00:00','2014-12-12 00:00:00','Olfato',NULL,NULL,NULL),(3,0,'1990-01-03 00:00:00',101300003,'3005640003','2015-01-03 00:00:00','jcuatin@unal.edu.co','','James','Cuatin','instructor2','jcuatin','user1.jpg','Fijo',2,'co.com.seguridog.K9Instructor',NULL,NULL,NULL,'Busqueda de Explosivos','2014-12-03 00:00:00','2014-12-13 00:00:00','Olfato',NULL,NULL,NULL),(4,0,'1990-01-04 00:00:00',101300004,'3005640004','2015-01-04 00:00:00','camaya@gmail.edu.co','','Cristhian','Amaya','instructor3','camaya','user2.jpg','Indefinido',2,'co.com.seguridog.K9Instructor',NULL,NULL,NULL,'Defensa Controlada','2014-12-04 00:00:00','2014-12-14 00:00:00','Defensa',NULL,NULL,NULL),(5,0,'1990-01-05 00:00:00',101300005,'3005640005','2015-01-05 00:00:00','fvaldemar@gmail.edu.co','','Fabian','Valdemar','instructor4','fvaldemar','user3.jpg','Indefinido',2,'co.com.seguridog.K9Instructor',NULL,NULL,NULL,'Busqueda o deteccion de moneda','2014-12-05 00:00:00','2014-12-15 00:00:00','Olfato',NULL,NULL,NULL),(6,0,'1990-01-06 00:00:00',101300006,'3005640006','2015-01-06 00:00:00','jcasas@gmail.edu.co','','Jessica','Casas','instructor5','jcasas','user4.jpg','Fijo',2,'co.com.seguridog.K9Instructor',NULL,NULL,NULL,'Busqueda y rescate de personas','2014-12-06 00:00:00','2014-12-16 00:00:00','Apoyo',NULL,NULL,NULL),(7,0,'1990-01-07 00:00:00',101300007,'3005640007','2015-01-07 00:00:00','rherrera@gmail.edu.co','','Richard Orlando','Herrera','veterinario1','roherrerap','img_richard.png','Indefinido',3,'co.com.seguridog.K9Veterinarian','2014-12-08 00:00:00','vet-0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,0,'1990-01-08 00:00:00',101300008,'3005640008','2015-01-08 00:00:00','lhoyos@gmail.edu.co','','Laura','Hoyos','veterinario2','lhoyos','user5.jpg','Indefinido',3,'co.com.seguridog.K9Veterinarian','2014-12-09 00:00:00','vet-0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,0,'1990-01-09 00:00:00',101300009,'3005640009','2015-01-09 00:00:00','jcano@hotmail.com','','Jefersson','Cano','manejador1','jfcanob','img_jefersson.png','Indefinido',4,'co.com.seguridog.K9Handler',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Academia cadetes','2014-12-09 00:00:00','Busqueda de Narcoticos'),(10,0,'1989-02-10 00:00:00',101300010,'3005640010','2015-01-10 00:00:00','facevedo@unal.edu.co','','Andres Felipe','Acevedo','manejador2','afacevedom','img_felipe.png','Indefinido',4,'co.com.seguridog.K9Handler',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Academia cadetes','2014-12-10 00:00:00','Busqueda de Explosivos'),(11,0,'1990-01-11 00:00:00',101300011,'3005640011','2015-01-11 00:00:00','obustos@gmail.com','','Oscar','Bustos','manejador3','obustos','user6.jpg','Fijo',4,'co.com.seguridog.K9Handler',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Academia cadetes','2014-12-11 00:00:00','Defensa Controlada'),(12,0,'1990-01-12 00:00:00',101300012,'3005640012','2015-01-12 00:00:00','amoreno@gmail.com','','Andres','Moreno','manejador4','amoreno','user7.jpg','Fijo',4,'co.com.seguridog.K9Handler',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Academia cadetes','2014-12-12 00:00:00','Busqueda o deteccion de moneda'),(13,0,'1990-01-13 00:00:00',101300013,'3005640013','2015-01-13 00:00:00','amoreno@gmail.com','','Juan','Garcia','manejador5','jgarcia','user8.jpg','Indefinido',4,'co.com.seguridog.K9Handler',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Academia cadetes','2014-12-13 00:00:00','Busqueda y rescate de personas');
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
  `address_rest_canine` varchar(255) NOT NULL,
  `address_ubication_work_area` varchar(255) NOT NULL,
  `canines_id` bigint(20) NOT NULL,
  `date_finish_return_unitk9` datetime NOT NULL,
  `date_ubication_work_area` datetime NOT NULL,
  `handlers_id` bigint(20) NOT NULL,
  `hours_per_day` int(11) NOT NULL,
  `type_service` varchar(5) NOT NULL,
  `user_of_service` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_294gwcg2y482ifra6ird2t2go` (`canines_id`),
  KEY `FK_ngc4xwr7gaonf0nne0nlp65lp` (`handlers_id`),
  CONSTRAINT `FK_294gwcg2y482ifra6ird2t2go` FOREIGN KEY (`canines_id`) REFERENCES `canine` (`id`),
  CONSTRAINT `FK_ngc4xwr7gaonf0nne0nlp65lp` FOREIGN KEY (`handlers_id`) REFERENCES `k9user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_canine`
--

LOCK TABLES `work_canine` WRITE;
/*!40000 ALTER TABLE `work_canine` DISABLE KEYS */;
INSERT INTO `work_canine` VALUES (1,0,'Calle 7a No. 71d - 41','Calle 50 No. 30-24',1,'2015-10-22 00:00:00','2015-10-01 00:00:00',9,5,'Fija','Colsanitas'),(2,0,'Calle 7a No. 71d - 41','Calle 50 No. 30-24',2,'2015-11-20 00:00:00','2015-11-10 00:00:00',9,4,'Movil','Colsanitas'),(3,0,'Calle 7a No. 71d - 41','Calle 127 No. 89 - 30',3,'2015-11-21 00:00:00','2015-11-11 00:00:00',10,6,'Fija','Centro Comercial Niza');
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

-- Dump completed on 2015-11-23 20:43:44

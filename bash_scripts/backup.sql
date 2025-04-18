-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: student
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.24.04.1

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
-- Table structure for table `Students`
--

DROP TABLE IF EXISTS `Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `studentname` varchar(255) NOT NULL,
  `program` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Students`
--

LOCK TABLES `Students` WRITE;
/*!40000 ALTER TABLE `Students` DISABLE KEYS */;
INSERT INTO `Students` VALUES (1,'Liora Kasembe','Software Engineering'),(2,'Takashi Mori','Software Engineering'),(3,'Zarina Belikov','Software Engineering'),(4,'Mateo Aguilar','Software Engineering'),(5,'Esi Mensah','Software Engineering'),(6,'Rafiq Alvi','Software Engineering'),(7,'Inaya Tadesse','Software Engineering'),(8,'Jasper Mulenga','Software Engineering'),(9,'Sena Okoye','Software Engineering'),(10,'Niko Yamura','Software Engineering'),(11,'Farah El-Masri','Software Engineering'),(12,'Thiago Varela','Software Engineering'),(13,'Aneesa Qureshi','Software Engineering'),(14,'Mikhail Zorin','Software Engineering'),(15,'Noor Hassan','Software Engineering'),(16,'Zubair Khan','Software Engineering'),(17,'Amara Ndlovu','Software Engineering'),(18,'Jonas Maalim','Software Engineering'),(19,'Salima Idris','Software Engineering'),(20,'Oskar Lindholm','Software Engineering');
/*!40000 ALTER TABLE `Students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subjects`
--

DROP TABLE IF EXISTS `Subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Subjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subjectname` varchar(255) NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subjects`
--

LOCK TABLES `Subjects` WRITE;
/*!40000 ALTER TABLE `Subjects` DISABLE KEYS */;
INSERT INTO `Subjects` VALUES (1,'Principles of Programming Languages(CP 111)',1),(2,'Development Perspectives(DS 102)',1),(3,'Mathematical Foundations of Information Security-(IA 112)',1),(4,'Introduction to Information Technology(IT 111)',1),(5,'Communication Skills(LG 102)',1),(6,'Discrete Mathematics for ICT(MT1111)',1),(7,'Calculus(MT 1112)',1),(8,'Linear Algebra for ICT(MT 1117)',1),(9,'Introduction to Computer Networking(CN 121)',1),(10,'Introduction to Database systems(CP 121)',1),(11,'Introduction to High Level Programming(CP 123)',1),(12,'Introduction to Software Engineering(CS 123)',1),(13,'Introduction to IT Security(IA 124)',1),(14,'Numerical Analysis for ICT(MT 1211)',1),(15,'Introduction to Probability and Statistics(ST 1210)',1),(16,'Computer Networking Protocols(CN 211)',2),(17,'Introduction To Linux/Unix Systems(CP 211)',2),(18,'Systems Analysis and Design(CP 212)',2),(19,'Data Structures and Algorithms Analysis(CP 213)',2),(20,'Computational Theory(CP 214)',2),(21,'Object Oriented Programming in Java(CP 215)',2),(22,'Industrial Practical Training I(CS 131)',2),(23,'Computer Organization and Architecture I(CT 211)',2),(24,'Internet Programming And Application I(CP 221)',2),(25,'Open Source Technologies(CP 222)',2),(26,'Object-Oriented Systems Design(CP 223)',2),(27,'Database Management Systems(CP 224)',2),(28,'Software Testing and Quality Assurance(CP 225)',2),(29,'Operating Systems(CP 226)',2),(30,'ICT Research Methods(IS 221)',2),(31,'Internet Programming and Applications II(CP 311)',3),(32,'Python Programming(CP 312)',3),(33,'Mobile Applications Development(CP 313)',3),(34,'Selected Topics in Software Engineering(CP 316)',3),(35,'Computer Graphics(CP 318)',3),(36,'Industrial Practical Training II(CS 231)',3),(37,'ICT Entrepreneurship(EME 314)',3),(38,'Mathematical Logic and Formal Semantics(MT 3111)',3),(39,'Distributed Database Systems(CP 321)',3),(40,'Data Mining and Warehousing(CP 322)',3),(41,'Web Framework Development Using Javascript(CP 323)',3),(42,'Compiler Technology(CP 324)',3),(43,'Advanced Java Programming(CS 321)',3),(44,'Information and Communication Systems Security(IA 321)',3),(45,'ICT Project Management(BT 413)',4),(46,'Distributed Computing(CP 314)',4),(47,'C# Programming(CP 412)',4),(48,'Industrial Practical Training III(CS 332)',4),(49,'Software Reverse Engineering(CS 411)',4),(50,'Software Engineering Project I(CS 431)',4),(51,'Computer Maintenance(CT 312)',4),(52,'Human Computer Interaction(IM 411)',4),(53,'Professional Ethics and Conduct Core(SI 311)',4),(54,'Software Deployment and Management(CS 421)',4),(55,'Big Data Analysis(CS 329)',4),(56,'Software Engineering Project II(CS 432)',4),(57,'Artificial Intelligence(CP 422)',4),(58,'System Administration and Management(CP 423)',4),(59,'Cloud Computing(CP 424)',4),(60,'Foundations of Data Science(CG 222)',4);
/*!40000 ALTER TABLE `Subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Studentname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `program` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (27,'Liora Kasembe','Software Engineering'),(28,'Takashi Mori','Software Engineering'),(29,'Zarina Belikov','Software Engineering'),(30,'Mateo Aguilar','Software Engineering'),(31,'Esi Mensah','Software Engineering'),(32,'Rafiq Alvi','Software Engineering'),(33,'Inaya Tadesse','Software Engineering'),(34,'Jasper Mulenga','Software Engineering'),(35,'Sena Okoye','Software Engineering'),(36,'Niko Yamura','Software Engineering'),(37,'Farah El-Masri','Software Engineering'),(38,'Thiago Varela','Software Engineering'),(39,'Aneesa Qureshi','Software Engineering'),(40,'Mikhail Zorin','Software Engineering'),(41,'Noor Hassan','Software Engineering'),(42,'Zubair Khan','Software Engineering'),(43,'Amara Ndlovu','Software Engineering'),(44,'Jonas Maalim','Software Engineering'),(45,'Salima Idris','Software Engineering'),(46,'Oskar Lindholm','Software Engineering');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subjectname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Principles of Programming Languages(CP 111)',1),(2,'Development Perspectives(DS 102)',1),(3,'Mathematical Foundations of Information Security-(IA 112)',1),(4,'Introduction to Information Technology(IT 111)',1),(5,'Communication Skills(LG 102)',1),(6,'Discrete Mathematics for ICT(MT1111)',1),(7,'Calculus(MT 1112)',1),(8,'Linear Algebra for ICT(MT 1117)',1),(9,'Introduction to Computer Networking(CN 121)',1),(10,'Introduction to Database systems(CP 121)',1),(11,'Introduction to High Level Programming(CP 123)',1),(12,'Introduction to Software Engineering(CS 123)',1),(13,'Introduction to IT Security(IA 124)',1),(14,'Numerical Analysis for ICT(MT 1211)',1),(15,'Introduction to Probability and Statistics(ST 1210)',1),(16,'Computer Networking Protocols(CN 211)',2),(17,'Introduction To Linux/Unix Systems(CP 211)',2),(18,'Systems Analysis and Design(CP 212)',2),(19,'Data Structures and Algorithms Analysis(CP 213)',2),(20,'Computational Theory(CP 214)',2),(21,'Object Oriented Programming in Java(CP 215)',2),(22,'Industrial Practical Training I(CS 131)',2),(23,'Computer Organization and Architecture I(CT 211)',2),(24,'Internet Programming And Application I(CP 221)',2),(25,'Open Source Technologies(CP 222)',2),(26,'Object-Oriented Systems Design(CP 223)',2),(27,'Database Management Systems(CP 224)',2),(28,'Software Testing and Quality Assurance(CP 225)',2),(29,'Operating Systems(CP 226)',2),(30,'ICT Research Methods(IS 221)',2),(31,'Internet Programming and Applications II(CP 311)',3),(32,'Python Programming(CP 312)',3),(33,'Mobile Applications Development(CP 313)',3),(34,'Selected Topics in Software Engineering(CP 316)',3),(35,'Computer Graphics(CP 318)',3),(36,'Industrial Practical Training II(CS 231)',3),(37,'ICT Entrepreneurship(EME 314)',3),(38,'Mathematical Logic and Formal Semantics(MT 3111)',3),(39,'Distributed Database Systems(CP 321)',3),(40,'Data Mining and Warehousing(CP 322)',3),(41,'Web Framework Development Using Javascript(CP 323)',3),(42,'Compiler Technology(CP 324)',3),(43,'Advanced Java Programming(CS 321)',3),(44,'Information and Communication Systems Security(IA 321)',3),(45,'ICT Project Management(BT 413)',4),(46,'Distributed Computing(CP 314)',4),(47,'C# Programming(CP 412)',4),(48,'Industrial Practical Training III(CS 332)',4),(49,'Software Reverse Engineering(CS 411)',4),(50,'Software Engineering Project I(CS 431)',4),(51,'Computer Maintenance(CT 312)',4),(52,'Human Computer Interaction(IM 411)',4),(53,'Professional Ethics and Conduct Core(SI 311)',4),(54,'Software Deployment and Management(CS 421)',4),(55,'Big Data Analysis(CS 329)',4),(56,'Software Engineering Project II(CS 432)',4),(57,'Artificial Intelligence(CP 422)',4),(58,'System Administration and Management(CP 423)',4),(59,'Cloud Computing(CP 424)',4),(60,'Foundations of Data Science(CG 222)',4),(61,'Principles of Programming Languages(CP 111)',1),(62,'Development Perspectives(DS 102)',1),(63,'Mathematical Foundations of Information Security-(IA 112)',1),(64,'Introduction to Information Technology(IT 111)',1),(65,'Communication Skills(LG 102)',1),(66,'Discrete Mathematics for ICT(MT1111)',1),(67,'Calculus(MT 1112)',1),(68,'Linear Algebra for ICT(MT 1117)',1),(69,'Introduction to Computer Networking(CN 121)',1),(70,'Introduction to Database systems(CP 121)',1),(71,'Introduction to High Level Programming(CP 123)',1),(72,'Introduction to Software Engineering(CS 123)',1),(73,'Introduction to IT Security(IA 124)',1),(74,'Numerical Analysis for ICT(MT 1211)',1),(75,'Introduction to Probability and Statistics(ST 1210)',1),(76,'Computer Networking Protocols(CN 211)',2),(77,'Introduction To Linux/Unix Systems(CP 211)',2),(78,'Systems Analysis and Design(CP 212)',2),(79,'Data Structures and Algorithms Analysis(CP 213)',2),(80,'Computational Theory(CP 214)',2),(81,'Object Oriented Programming in Java(CP 215)',2),(82,'Industrial Practical Training I(CS 131)',2),(83,'Computer Organization and Architecture I(CT 211)',2),(84,'Internet Programming And Application I(CP 221)',2),(85,'Open Source Technologies(CP 222)',2),(86,'Object-Oriented Systems Design(CP 223)',2),(87,'Database Management Systems(CP 224)',2),(88,'Software Testing and Quality Assurance(CP 225)',2),(89,'Operating Systems(CP 226)',2),(90,'ICT Research Methods(IS 221)',2),(91,'Internet Programming and Applications II(CP 311)',3),(92,'Python Programming(CP 312)',3),(93,'Mobile Applications Development(CP 313)',3),(94,'Selected Topics in Software Engineering(CP 316)',3),(95,'Computer Graphics(CP 318)',3),(96,'Industrial Practical Training II(CS 231)',3),(97,'ICT Entrepreneurship(EME 314)',3),(98,'Mathematical Logic and Formal Semantics(MT 3111)',3),(99,'Distributed Database Systems(CP 321)',3),(100,'Data Mining and Warehousing(CP 322)',3),(101,'Web Framework Development Using Javascript(CP 323)',3),(102,'Compiler Technology(CP 324)',3),(103,'Advanced Java Programming(CS 321)',3),(104,'Information and Communication Systems Security(IA 321)',3),(105,'ICT Project Management(BT 413)',4),(106,'Distributed Computing(CP 314)',4),(107,'C# Programming(CP 412)',4),(108,'Industrial Practical Training III(CS 332)',4),(109,'Software Reverse Engineering(CS 411)',4),(110,'Software Engineering Project I(CS 431)',4),(111,'Computer Maintenance(CT 312)',4),(112,'Human Computer Interaction(IM 411)',4),(113,'Professional Ethics and Conduct Core(SI 311)',4),(114,'Software Deployment and Management(CS 421)',4),(115,'Big Data Analysis(CS 329)',4),(116,'Software Engineering Project II(CS 432)',4),(117,'Artificial Intelligence(CP 422)',4),(118,'System Administration and Management(CP 423)',4),(119,'Cloud Computing(CP 424)',4),(120,'Foundations of Data Science(CG 222)',4);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-18 11:14:58

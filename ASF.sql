CREATE DATABASE  IF NOT EXISTS `shooting_federation_arm1` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shooting_federation_arm1`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: shooting_federation_arm1
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `athletes`
--

DROP TABLE IF EXISTS `athletes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `athletes` (
  `AthletesId` int NOT NULL AUTO_INCREMENT,
  `First_name` varchar(45) NOT NULL,
  `Last_name` varchar(45) NOT NULL,
  `Birth_date` date NOT NULL,
  `Shooting_Class` varchar(20) NOT NULL,
  `CoachesId` int NOT NULL,
  `Shooting_CategoriesId` int NOT NULL,
  PRIMARY KEY (`AthletesId`),
  KEY `fk_Athletes_Coaches1_idx` (`CoachesId`),
  KEY `fk_Athletes_Shooting_Categories1_idx` (`Shooting_CategoriesId`),
  CONSTRAINT `fk_Athletes_Coaches1` FOREIGN KEY (`CoachesId`) REFERENCES `coaches` (`CoachesId`),
  CONSTRAINT `fk_Athletes_Shooting_Categories1` FOREIGN KEY (`Shooting_CategoriesId`) REFERENCES `shooting_categories` (`Shooting_CategoriesId`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `athletes`
--

LOCK TABLES `athletes` WRITE;
/*!40000 ALTER TABLE `athletes` DISABLE KEYS */;
INSERT INTO `athletes` VALUES (1,'Mariam','Mkrtchyan','2005-11-21','svt',1,3),(2,'Lilit','Mkrtchyan','1996-05-12','mksv',1,3),(3,'Hrach','Babayna','1998-04-15','sv',2,2),(4,'Gor','Karapetyan','2006-08-22','svt',2,1),(5,'Anahit','Harutyunyan','2006-11-02','10 class',4,1),(6,'Hayk','Minasyan','2007-05-19','mksv',4,3),(7,'Mariam','Mikaelyan','2004-11-12','3',4,2),(8,'Hayk','Babayan','2005-01-30','mksv',1,1),(9,'Elmira','Karapetyan','1996-07-25','mksv',2,2),(10,'Levon','Avagyan','2006-03-30','svt',2,1),(11,'Elen','Asatryan','2004-02-14','10 class',1,2),(12,'Hamlet','Karenyan','2007-09-05','sv',1,3),(13,'Armen','Sargsyan','2000-12-14','3',2,2),(14,'Ani','Hovhannisyan','2002-04-16','mksv',4,1),(15,'Suren','Hakobyan','1999-08-14','sv',1,3),(16,'Aram','Nazaryan','2005-06-11','svt',2,2),(17,'Mane','Gevorgyan','2004-03-22','10 class',4,1),(18,'Arsen','Petrosyan','2003-10-05','2',2,2),(19,'Gayane','Karapetyan','2006-01-15','3',4,1),(20,'Tigran','Sargsyan','2002-08-28','mksv',1,3),(21,'Seyran','Yeranyan','1997-03-14','mksv',3,1),(22,'Gor','Xachatryan','2001-12-25','sv',3,3),(23,'Elen','Ghazaryan','2002-06-02','svt',8,1),(24,'Narek','Asatryan','1999-01-05','10 class',8,3),(25,'Sona','Mirzoyan','2005-07-19','2',3,2),(26,'Artur','Baghdasaryan','2004-07-14','3',8,1),(27,'Davit','Galstyan','2005-09-09','mksv',3,2),(28,'Vahan','Petrosyan','2005-08-03','sv',3,1),(29,'Milena','Karapetyan','2006-03-08','svt',8,3),(30,'Angelina','Melkonyan','2005-12-11','10 class',8,2),(31,'Hovhannes','Khachatryan','2001-05-24','2',3,1),(32,'Anna','Sargsyan','2003-11-02','3',3,2),(33,'Gagik','Avetisyan','2004-04-18','mksv',8,3),(34,'Mary','Khachatryan','2005-09-12','sv',8,1),(35,'Karen','Balyan','2003-02-27','svt',3,2),(36,'Shant','Sargsyan','2002-07-07','10 class',3,1),(37,'Karine','Armenyan','2004-10-19','2',8,2),(38,'Ashot','Mnatsakanyan','2005-08-11','3',8,3),(39,'Ruben','Sanoyan','2001-01-30','mksv',3,1),(40,'Syuzanna','Azoyan','2006-05-05','sv',3,2),(41,'Zaven','Igityan','1999-03-24','mksv',5,2),(42,'Artur','Grigoryan','1997-10-27','sv',5,1),(43,'Armen','Sargsyan','2005-04-12','svt',10,2),(44,'Aram','Grigoryan','2004-02-17','10 class',10,1),(45,'Samvel','Danielyan','2005-06-25','2',12,3),(46,'Erik','Harutyunyan','2004-11-05','3',12,2),(47,'Hayk','Khachatryan','2006-12-01','mksv',5,1),(48,'Ani','Ghazaryan','2006-05-12','sv',5,3),(49,'Arpi','Danielyan','2004-06-17','svt',10,2),(50,'Gagik','Simonyan','2006-01-27','10 class',10,1),(51,'Nre','Baghdasaryan','2004-08-22','2',12,2),(52,'Syuzanna','Hakobyan','2005-02-28','3',12,3),(53,'Vardan','Margaryan','2003-07-13','mksv',5,2),(54,'Monika','Andreasyan','2004-09-21','sv',5,1),(55,'Alex','Manukyan','2002-11-08','svt',10,2),(56,'Silva','Tadevosyan','2005-03-14','10 class',10,1),(57,'Edgar','Vardanyan','2001-06-29','2',12,3),(58,'Lilit','Gevorgyan','2003-12-02','3',12,2),(59,'Rafayel','Simonyan','2004-05-25','mksv',5,1),(60,'Elen','Hakobyan','2006-10-18','sv',5,2),(61,'Lilit','Abrahamyan','1998-07-19','svt',7,1),(62,'Tigran','Mnatsakanyan','2005-01-19','10 class',7,2),(63,'Alen','Mirzoyan','2006-10-10','2',11,3),(64,'Rafael','Hakobyan','2004-12-12','3',11,2),(65,'Lilit','Sargsyan','2006-01-30','mksv',13,1),(66,'Elina','Tadevosyan','2006-07-25','sv',13,2),(67,'Mher','Kocharyan','2002-02-18','svt',7,1),(68,'Satenik','Galstyan','2004-04-09','10 class',7,2),(69,'Narek','Arakelyan','2003-08-23','2',11,3),(70,'Diana','Zargaryan','2005-11-15','3',11,1),(71,'Grigor','Alvandyan','2001-03-03','mksv',13,2),(72,'Milena','Hakobyan','2004-06-30','sv',13,1),(73,'Stepan','Baghdasaryan','2002-09-12','svt',7,3),(74,'Heghine','Mkrtchyan','2005-01-04','10 class',7,2),(75,'Aram','Barkhudaryan','2003-05-27','2',11,1),(76,'Karine','Hovsepyan','2006-02-14','3',11,2),(77,'Vahagn','Davtyan','2000-07-21','mksv',13,1),(78,'Gayane','Badalyan','2004-10-22','sv',13,3),(79,'Artak','Kirakosyan','2003-12-05','svt',7,2),(80,'Luiza','Vardanyan','2004-11-09','10 class',7,1),(81,'Meri','Sargsyan','2001-02-20','mksv',6,1),(82,'Hayk','Karapetyan','2000-11-08','sv',6,2),(83,'Karen','Martirosyan','2005-03-08','svt',9,3),(84,'Mariam','Grigoryan','2005-09-24','10 class',9,2),(85,'Mane','Petrosyan','2004-10-05','2',14,1),(86,'Gayane','Khachatryan','2005-04-15','3',14,3),(87,'Andranik','Manukyan','2002-01-11','mksv',6,2),(88,'Tatevik','Oganesyan','2003-08-04','sv',6,1),(89,'Gegham','Mikayelyan','2004-06-19','svt',9,2),(90,'Lousine','Melikyan','2005-05-23','10 class',9,1),(91,'Albert','Harutyunyan','2001-10-31','2',14,3),(92,'Shoghakat','Muradyan','2004-03-07','3',14,2),(93,'Robert','Khachatryan','2003-12-26','mksv',6,1),(94,'Alina','Sargsyan','2005-07-14','sv',6,2),(95,'Vahe','Danielian','2002-09-09','svt',9,3),(96,'Nelli','Stepanyan','2004-11-20','10 class',9,1),(97,'Khachatur','Asatryan','2003-02-15','2',14,2),(98,'Anahit','Voskanyan','2006-04-02','3',14,1),(99,'Arthur','Hovhannisyan','2001-08-12','mksv',6,3),(100,'Satenik','Minasyan','2005-10-01','sv',6,2);
/*!40000 ALTER TABLE `athletes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `clubfinancialsummary`
--

DROP TABLE IF EXISTS `clubfinancialsummary`;
/*!50001 DROP VIEW IF EXISTS `clubfinancialsummary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clubfinancialsummary` AS SELECT 
 1 AS `Club_Name`,
 1 AS `Total_Revenue`,
 1 AS `Sponsorship_Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `clubs`
--

DROP TABLE IF EXISTS `clubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clubs` (
  `ClubsId` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(40) NOT NULL,
  `City` varchar(40) NOT NULL,
  `Address` varchar(60) NOT NULL,
  `Founded_year` int NOT NULL,
  `Athletes_count` int NOT NULL,
  PRIMARY KEY (`ClubsId`),
  UNIQUE KEY `ClubsId_UNIQUE` (`ClubsId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubs`
--

LOCK TABLES `clubs` WRITE;
/*!40000 ALTER TABLE `clubs` DISABLE KEYS */;
INSERT INTO `clubs` VALUES (1,'Armenian Shooting Federation','Yerevan','Vilnius 4/3',2005,200),(2,'Armenia Shooting School','Gyumri','Gai Str. 5',2010,15),(3,'ASF','Yerevan','Arshakunyats 61',2011,70),(4,'Shooting Club','Charencavan','Shirakatsi 74',1998,30),(5,'Vanadzor Shooting School','Vanadzor','Tigran Mets 22',2015,45);
/*!40000 ALTER TABLE `clubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coaches`
--

DROP TABLE IF EXISTS `coaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coaches` (
  `CoachesId` int NOT NULL AUTO_INCREMENT,
  `First_name` varchar(45) NOT NULL,
  `Last_name` varchar(45) DEFAULT NULL,
  `License` varchar(45) NOT NULL,
  `ClubsId` int NOT NULL,
  PRIMARY KEY (`CoachesId`),
  KEY `fk_Coaches_Clubs1_idx` (`ClubsId`),
  CONSTRAINT `fk_Coaches_Clubs1` FOREIGN KEY (`ClubsId`) REFERENCES `clubs` (`ClubsId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coaches`
--

LOCK TABLES `coaches` WRITE;
/*!40000 ALTER TABLE `coaches` DISABLE KEYS */;
INSERT INTO `coaches` VALUES (1,'Lilit','Mkrtchyan','MKSV',1),(2,'Edgar','Baghdasaryan','MKSV',1),(3,'Andranik','Avetisyan','SVT',2),(4,'Zinaida','Simonyan','MKSV',1),(5,'Mariam','Hovhannisyan','SV',3),(6,'Hayk','Petrosyan','MKSV',5),(7,'Vovik','Xojayan','SV',4),(8,'Nora','Grigoryan','SVT',2),(9,'Seyran','Nikoghosyan','SV',5),(10,'Viktoria','lavrovna','MKSV',3),(11,'Aram','Aleqsanyan','MKSV',4),(12,'Ester','Mkrtchyan','SVT',3),(13,'Hrachya','Martirosyan','SV',4),(14,'Avetis','Aharonyan','MKSV',5);
/*!40000 ALTER TABLE `coaches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shooting_categories`
--

DROP TABLE IF EXISTS `shooting_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shooting_categories` (
  `Shooting_CategoriesId` int NOT NULL AUTO_INCREMENT,
  `Category_Name` varchar(45) NOT NULL,
  `Max_Score` decimal(5,1) NOT NULL,
  PRIMARY KEY (`Shooting_CategoriesId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shooting_categories`
--

LOCK TABLES `shooting_categories` WRITE;
/*!40000 ALTER TABLE `shooting_categories` DISABLE KEYS */;
INSERT INTO `shooting_categories` VALUES (1,'10m Air Rifle',654.0),(2,'10m Air Pistol',654.0),(3,'Running Target',600.0);
/*!40000 ALTER TABLE `shooting_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsors`
--

DROP TABLE IF EXISTS `sponsors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsors` (
  `SponsorsId` int NOT NULL AUTO_INCREMENT,
  `Company_Name` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Support_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`SponsorsId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsors`
--

LOCK TABLES `sponsors` WRITE;
/*!40000 ALTER TABLE `sponsors` DISABLE KEYS */;
INSERT INTO `sponsors` VALUES (1,'Dinamo State Support','+37410111111','contact@dinamo.am','Governmental'),(2,'Steyr Brand','+43074352025','contact@steyr.com','Equipment support'),(3,'MOESCS','010599600','secretariat@escs.am','Financial'),(4,'FastBank','+374-10-510000','fastcare@fcc.am','Financial'),(5,'Olympic sponsorships','4169620262','studies.centre@olympic.org','Commercial & Financial');
/*!40000 ALTER TABLE `sponsors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsorship`
--

DROP TABLE IF EXISTS `sponsorship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsorship` (
  `SponsorshipId` int NOT NULL AUTO_INCREMENT,
  `Amount` int NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `ClubsId` int NOT NULL,
  `SponsorsId` int NOT NULL,
  PRIMARY KEY (`SponsorshipId`),
  KEY `fk_Sponsorship_Clubs1_idx` (`ClubsId`),
  KEY `fk_Sponsorship_Sponsors1_idx` (`SponsorsId`),
  CONSTRAINT `fk_Sponsorship_Clubs1` FOREIGN KEY (`ClubsId`) REFERENCES `clubs` (`ClubsId`),
  CONSTRAINT `fk_Sponsorship_Sponsors1` FOREIGN KEY (`SponsorsId`) REFERENCES `sponsors` (`SponsorsId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsorship`
--

LOCK TABLES `sponsorship` WRITE;
/*!40000 ALTER TABLE `sponsorship` DISABLE KEYS */;
INSERT INTO `sponsorship` VALUES (1,5000000,'2025-01-01','2026-12-31','Active',1,3),(2,2000000,'2024-06-01','2026-06-01','Active',2,1),(3,1500000,'2025-03-15','2027-03-15','Active',3,5),(4,3000000,'2023-01-01','2025-12-31','Expired',4,2),(5,4500000,'2026-01-01','2027-12-31','Active',5,4),(6,3500000,'2025-05-01','2027-05-01','Active',1,1),(7,2500000,'2026-02-01','2028-02-01','Active',1,5),(8,1800000,'2025-09-01','2026-09-01','Active',2,1),(9,6000000,'2025-06-15','2027-06-15','Expired',3,3),(10,4000000,'2026-01-10','2027-01-10','Active',4,3);
/*!40000 ALTER TABLE `sponsorship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournaments`
--

DROP TABLE IF EXISTS `tournaments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tournaments` (
  `TournamentsId` int NOT NULL AUTO_INCREMENT,
  `Type` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Location` varchar(45) DEFAULT NULL,
  `Start_date` date NOT NULL,
  `End_date` date NOT NULL,
  PRIMARY KEY (`TournamentsId`),
  UNIQUE KEY `TournamentsId_UNIQUE` (`TournamentsId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournaments`
--

LOCK TABLES `tournaments` WRITE;
/*!40000 ALTER TABLE `tournaments` DISABLE KEYS */;
INSERT INTO `tournaments` VALUES (1,'National','Armenian Shooting Championship','Yerevan, Armenia','2027-05-18','2027-05-22'),(2,'European Championship','European Shooting Championship','Athens, Greece','2026-07-16','2026-07-20'),(3,'International Cup','World Shooting Cup','Tashkent, Uzbekistan','2027-11-05','2027-11-09'),(4,'World Championship','World Shooting Championship','Estonia, Tallinn','2026-11-24','2026-11-28'),(5,'Memorial Tournament','Zinaida Simonian Memorial Tournament','Yerevan, Armenia','2027-01-05','2027-01-09'),(6,'Memorial Tournament','Armen Avagyan Memorial Tournament','Yerevan, Armenia','2026-03-24','2026-03-28');
/*!40000 ALTER TABLE `tournaments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournaments_registration`
--

DROP TABLE IF EXISTS `tournaments_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tournaments_registration` (
  `TournamentsRegistrationId` int unsigned NOT NULL AUTO_INCREMENT,
  `RegistrationDate` date NOT NULL,
  `Status` tinyint NOT NULL,
  `TournamentsId` int NOT NULL,
  `AthletesId` int NOT NULL,
  `WeaponsId` int NOT NULL,
  PRIMARY KEY (`TournamentsRegistrationId`),
  KEY `fk_Tournaments-Registration_Tournaments1_idx` (`TournamentsId`),
  KEY `fk_Tournaments-Registration_Athlets1_idx` (`AthletesId`),
  KEY `fk_Tournaments_Registration_Weapons1_idx` (`WeaponsId`),
  CONSTRAINT `fk_Tournaments-Registration_Athlets1` FOREIGN KEY (`AthletesId`) REFERENCES `athletes` (`AthletesId`),
  CONSTRAINT `fk_Tournaments-Registration_Tournaments1` FOREIGN KEY (`TournamentsId`) REFERENCES `tournaments` (`TournamentsId`),
  CONSTRAINT `fk_Tournaments_Registration_Weapons1` FOREIGN KEY (`WeaponsId`) REFERENCES `weapons` (`WeaponsId`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournaments_registration`
--

LOCK TABLES `tournaments_registration` WRITE;
/*!40000 ALTER TABLE `tournaments_registration` DISABLE KEYS */;
INSERT INTO `tournaments_registration` VALUES (1,'2026-03-01',1,1,1,1),(2,'2026-03-01',1,1,2,2),(3,'2026-03-02',1,1,6,2),(4,'2026-03-03',1,1,13,2),(5,'2026-03-03',1,1,27,2),(6,'2026-03-04',1,1,30,1),(7,'2026-03-04',0,1,31,1),(8,'2026-04-01',1,2,1,1),(9,'2026-04-01',1,2,4,1),(10,'2026-04-02',1,2,10,1),(11,'2026-04-02',1,2,14,1),(12,'2026-04-03',0,2,29,2),(13,'2026-04-03',1,2,32,2),(14,'2025-05-10',1,3,2,2),(15,'2025-05-10',1,3,12,1),(16,'2025-05-11',1,3,20,1),(17,'2025-05-11',1,3,27,2),(18,'2025-05-12',0,3,36,1),(19,'2026-10-15',1,4,1,1),(20,'2026-10-15',1,4,6,2),(21,'2026-10-16',1,4,12,1),(22,'2026-10-16',1,4,30,1),(23,'2026-10-17',1,4,32,2),(24,'2026-11-01',1,4,2,2),(25,'2026-11-01',1,4,9,2),(26,'2026-11-02',1,4,21,1),(27,'2026-11-02',0,4,22,2),(28,'2026-11-03',1,4,41,2),(29,'2026-11-03',1,4,81,1),(30,'2027-01-01',1,5,3,2),(31,'2027-01-01',1,5,5,1),(32,'2027-01-01',1,5,7,2),(33,'2027-01-02',1,5,23,1),(34,'2027-01-02',1,5,25,2),(35,'2027-01-02',0,5,43,2),(36,'2027-01-03',1,5,61,1),(37,'2027-01-03',1,5,82,2),(38,'2026-03-10',1,6,8,1),(39,'2026-03-10',1,6,11,2),(40,'2026-03-11',1,6,24,2),(41,'2026-03-11',1,6,26,1),(42,'2026-03-12',1,6,44,1),(43,'2026-03-12',1,6,62,2),(44,'2026-03-13',0,6,63,2),(45,'2026-03-13',1,6,83,2);
/*!40000 ALTER TABLE `tournaments_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournaments_result`
--

DROP TABLE IF EXISTS `tournaments_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tournaments_result` (
  `TournamentsResultId` int unsigned NOT NULL AUTO_INCREMENT,
  `Position` int NOT NULL,
  `Score` decimal(5,1) DEFAULT NULL,
  `TournamentsId` int NOT NULL,
  `AthletesId` int NOT NULL,
  PRIMARY KEY (`TournamentsResultId`),
  KEY `fk_Tournaments-Result_Tournaments1_idx` (`TournamentsId`),
  KEY `fk_Tournaments-Result_Athlets1_idx` (`AthletesId`),
  CONSTRAINT `fk_Tournaments-Result_Athlets1` FOREIGN KEY (`AthletesId`) REFERENCES `athletes` (`AthletesId`),
  CONSTRAINT `fk_Tournaments-Result_Tournaments1` FOREIGN KEY (`TournamentsId`) REFERENCES `tournaments` (`TournamentsId`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournaments_result`
--

LOCK TABLES `tournaments_result` WRITE;
/*!40000 ALTER TABLE `tournaments_result` DISABLE KEYS */;
INSERT INTO `tournaments_result` VALUES (1,1,528.5,1,12),(2,2,525.1,1,1),(3,3,578.0,1,6),(4,1,582.5,1,27),(5,2,619.4,1,30),(6,3,565.0,1,13),(7,1,530.2,2,1),(8,2,621.0,2,10),(9,3,618.7,2,4),(10,3,574.5,2,32),(11,1,585.0,3,27),(12,2,526.4,3,12),(13,3,571.2,3,2),(14,3,520.0,3,20),(15,1,529.9,4,12),(16,2,579.1,4,32),(17,3,524.0,4,1),(18,3,615.3,4,30),(19,1,588.2,4,9),(20,2,526.7,4,21),(21,3,573.1,4,2),(22,4,619.5,4,81),(23,5,579.0,4,41),(24,1,624.1,5,5),(25,2,618.9,5,23),(26,3,576.4,5,3),(27,4,569.2,5,25),(28,5,565.0,5,7),(29,6,610.2,5,61),(30,7,558.7,5,82),(31,1,527.4,6,8),(32,2,521.0,6,44),(33,3,578.1,6,11),(34,4,572.5,6,24),(35,5,511.3,6,26),(36,6,562.9,6,62),(37,7,560.1,6,83);
/*!40000 ALTER TABLE `tournaments_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_leaderboard_global`
--

DROP TABLE IF EXISTS `view_leaderboard_global`;
/*!50001 DROP VIEW IF EXISTS `view_leaderboard_global`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_leaderboard_global` AS SELECT 
 1 AS `AthletesId`,
 1 AS `First_name`,
 1 AS `Last_name`,
 1 AS `Score`,
 1 AS `Global_Rank`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `weapons`
--

DROP TABLE IF EXISTS `weapons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weapons` (
  `WeaponsId` int NOT NULL AUTO_INCREMENT,
  `Model` varchar(45) NOT NULL,
  `Manufacture` varchar(45) NOT NULL,
  `Serial_Number` varchar(45) NOT NULL,
  `Weapon_Type` varchar(45) NOT NULL,
  `Weapon_Condition` enum('Excellent','Good','Poor') NOT NULL,
  `Owner_AthletesId` int DEFAULT NULL,
  PRIMARY KEY (`WeaponsId`),
  KEY `fk_Weapons_Athletes1_idx` (`Owner_AthletesId`),
  CONSTRAINT `fk_Weapons_Athletes1` FOREIGN KEY (`Owner_AthletesId`) REFERENCES `athletes` (`AthletesId`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapons`
--

LOCK TABLES `weapons` WRITE;
/*!40000 ALTER TABLE `weapons` DISABLE KEYS */;
INSERT INTO `weapons` VALUES (1,'Walther LG411','Carl Walther','W10001','Air Rifle','Excellent',1),(2,'Walther LG500','Carl Walther','W10002','Air Rifle','Good',4),(3,'Fine 222','Benjamin Fine','W10003','Air Rifle','Excellent',5),(4,'Fine 200','Benjamin Fine','W10004','Air Rifle','Excellent',8),(5,'Walther LG411','Carl Walther','W10005','Air Rifle','Good',10),(6,'Fine 222','Benjamin Fine','W10006','Air Rifle','Excellent',14),(7,'Walther LG500','Carl Walther','W10007','Air Rifle','Excellent',16),(8,'Fine 200','Benjamin Fine','W10008','Air Rifle','Good',17),(9,'Walther LG411','Carl Walther','W10009','Air Rifle','Excellent',19),(10,'Fine 222','Benjamin Fine','W10010','Air Rifle','Excellent',23),(11,'Walther LG500','Carl Walther','W10011','Air Rifle','Good',24),(12,'Fine 200','Benjamin Fine','W10012','Air Rifle','Excellent',26),(13,'Walther LG411','Carl Walther','W10013','Air Rifle','Excellent',28),(14,'Fine 222','Benjamin Fine','W10014','Air Rifle','Good',31),(15,'Walther LG500','Carl Walther','W10015','Air Rifle','Excellent',34),(16,'Fine 200','Benjamin Fine','W10016','Air Rifle','Excellent',36),(17,'Walther LG411','Carl Walther','W10017','Air Rifle','Good',39),(18,'Fine 222','Benjamin Fine','W10018','Air Rifle','Excellent',44),(19,'Walther LG500','Carl Walther','W10019','Air Rifle','Excellent',47),(20,'Fine 200','Benjamin Fine','W10020','Air Rifle','Good',50),(21,'Steyr EVO 10','Steyr Sport','S20001','Air Pistol','Excellent',2),(22,'Steyr EVO 12','Steyr Sport','S20002','Air Pistol','Good',3),(23,'Steyr EVO 14','Steyr Sport','S20003','Air Pistol','Excellent',7),(24,'Steyr EVO 18','Steyr Sport','S20004','Air Pistol','Excellent',9),(25,'Steyr EVO 20','Steyr Sport','S20005','Air Pistol','Good',11),(26,'Steyr EVO 10','Steyr Sport','S20006','Air Pistol','Excellent',13),(27,'Steyr EVO 12','Steyr Sport','S20007','Air Pistol','Excellent',15),(28,'Steyr EVO 14','Steyr Sport','S20008','Air Pistol','Good',18),(29,'Steyr EVO 18','Steyr Sport','S20009','Air Pistol','Excellent',20),(30,'Steyr EVO 20','Steyr Sport','S20010','Air Pistol','Excellent',21),(31,'Steyr EVO 10','Steyr Sport','S20011','Air Pistol','Good',25),(32,'Steyr EVO 12','Steyr Sport','S20012','Air Pistol','Excellent',27),(33,'Steyr EVO 14','Steyr Sport','S20013','Air Pistol','Excellent',30),(34,'Steyr EVO 18','Steyr Sport','S20014','Air Pistol','Good',32),(35,'Steyr EVO 20','Steyr Sport','S20015','Air Pistol','Excellent',35),(36,'Steyr EVO 10','Steyr Sport','S20016','Air Pistol','Excellent',37),(37,'Steyr EVO 12','Steyr Sport','S20017','Air Pistol','Good',40),(38,'Steyr EVO 14','Steyr Sport','S20018','Air Pistol','Excellent',41),(39,'Steyr EVO 18','Steyr Sport','S20019','Air Pistol','Excellent',43),(40,'Steyr EVO 20','Steyr Sport','S20020','Air Pistol','Good',45),(41,'Steyr EVO 10','Steyr Sport','S20021','Air Pistol','Excellent',46),(42,'Steyr EVO 12','Steyr Sport','S20022','Air Pistol','Excellent',48),(43,'Steyr EVO 14','Steyr Sport','S20023','Air Pistol','Good',49),(44,'Steyr EVO 18','Steyr Sport','S20024','Air Pistol','Excellent',2),(45,'Steyr EVO 20','Steyr Sport','S20025','Air Pistol','Excellent',3),(46,'Steyr EVO 10','Steyr Sport','S20026','Air Pistol','Good',7),(47,'Steyr EVO 12','Steyr Sport','S20027','Air Pistol','Excellent',9),(48,'Steyr EVO 14','Steyr Sport','S20028','Air Pistol','Excellent',11),(49,'Steyr EVO 18','Steyr Sport','S20029','Air Pistol','Good',13),(50,'Steyr EVO 20','Steyr Sport','S20030','Air Pistol','Excellent',15);
/*!40000 ALTER TABLE `weapons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `clubfinancialsummary`
--

/*!50001 DROP VIEW IF EXISTS `clubfinancialsummary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clubfinancialsummary` AS select `c`.`Name` AS `Club_Name`,sum(`sp`.`Amount`) AS `Total_Revenue`,count(`sp`.`SponsorshipId`) AS `Sponsorship_Count` from (`clubs` `c` left join `sponsorship` `sp` on((`c`.`ClubsId` = `sp`.`ClubsId`))) group by `c`.`ClubsId` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_leaderboard_global`
--

/*!50001 DROP VIEW IF EXISTS `view_leaderboard_global`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_leaderboard_global` AS select `tr`.`AthletesId` AS `AthletesId`,`a`.`First_name` AS `First_name`,`a`.`Last_name` AS `Last_name`,`tr`.`Score` AS `Score`,row_number() OVER (ORDER BY `tr`.`Score` desc )  AS `Global_Rank` from (`tournaments_result` `tr` join `athletes` `a` on((`tr`.`AthletesId` = `a`.`AthletesId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-06 16:02:52

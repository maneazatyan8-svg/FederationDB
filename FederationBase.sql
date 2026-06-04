CREATE DATABASE  IF NOT EXISTS `federation` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `federation`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: federation
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
-- Temporary view structure for view `athlete_performance_analysis`
--

DROP TABLE IF EXISTS `athlete_performance_analysis`;
/*!50001 DROP VIEW IF EXISTS `athlete_performance_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `athlete_performance_analysis` AS SELECT 
 1 AS `First_name`,
 1 AS `Last_name`,
 1 AS `Club_Name`,
 1 AS `Weight`,
 1 AS `Weight_Rank`*/;
SET character_set_client = @saved_cs_client;

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
  `Weight` varchar(10) NOT NULL,
  `Medical_state` varchar(200) NOT NULL,
  `CoachesId` int NOT NULL,
  PRIMARY KEY (`AthletesId`),
  KEY `fk_Athletes_Coaches1_idx` (`CoachesId`),
  CONSTRAINT `fk_Athletes_Coaches1` FOREIGN KEY (`CoachesId`) REFERENCES `coaches` (`CoachesId`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `athletes`
--

LOCK TABLES `athletes` WRITE;
/*!40000 ALTER TABLE `athletes` DISABLE KEYS */;
INSERT INTO `athletes` VALUES (1,'Gevorg','Tadevosyan','1998-09-30','-98 kg','Healthy',1),(2,'Ani','Hovhannisyan','2000-04-16','-65 kg','Healthy',1),(3,'Davit','Mkrtchyan','2001-12-25','+98 kg','Back pain - Light training',2),(4,'Suren','Hakobyan','1999-08-14','-64 kg','Healthy',1),(5,'Elen','Ghazaryan','2002-06-02','-50 kg','Healthy',2),(6,'Artur','Grigoryan','1997-10-27','-79 kg','Healthy',3),(7,'Meri','Sargsyan','2001-02-20','-72 kg','Healthy',6),(8,'Hayk','Karapetyan','2000-11-08','-88 kg','Healthy',9),(9,'Narek','Asatryan','1999-01-05','-71 kg','Healthy',3),(10,'Lilit','Abrahamyan','1998-07-19','+72 kg','Healthy',4),(11,'Armen','Sargsyan','2005-04-12','-64 kg','Healthy',10),(12,'Gor','Karapetyan','2006-08-22','-71 kg','Healthy',1),(13,'Erik','Harutyunyan','2004-11-05','-79 kg','Healthy',5),(14,'Tigran','Mnatsakanyan','2005-01-19','-88 kg','Healthy',4),(15,'Levon','Avagyan','2006-03-30','-98 kg','Healthy',7),(16,'Artur','Baghdasaryan','2004-07-14','+98 kg','Healthy',8),(17,'Davit','Galstyan','2005-09-09','-58 kg','Healthy',8),(18,'Hayk','Khachatryan','2006-12-01','-64 kg','Healthy',5),(19,'Aram','Grigoryan','2004-02-17','-71 kg','Healthy',10),(20,'Samvel','Danielyan','2005-06-25','-79 kg','Healthy',3),(21,'Alen','Mirzoyan','2006-10-10','-88 kg','Healthy',4),(22,'Narek','Ghazaryan','2004-05-14','-98 kg','Healthy',2),(23,'Vahan','Petrosyan','2005-08-03','+98 kg','Healthy',8),(24,'Gagik','Simonyan','2006-01-27','-58 kg','Healthy',10),(25,'Rafael','Hakobyan','2004-12-12','-64 kg','Healthy',4),(26,'Karen','Martirosyan','2005-03-08','-71 kg','Healthy',6),(27,'Ani','Ghazaryan','2006-05-12','-50 kg','Healthy',5),(28,'Mariam','Grigoryan','2005-09-24','-54 kg','Healthy',9),(29,'Elen','Asatryan','2004-02-14','-59 kg','Recovering from knee injury',7),(30,'Anahit','Harutyunyan','2006-11-02','-65 kg','Healthy',1),(31,'Sona','Mirzoyan','2005-07-19','-72 kg','Minor wrist sprain',2),(32,'Mane','Petrosyan','2004-10-05','+72 kg','Healthy',6),(33,'Lilit','Sargsyan','2006-01-30','-50 kg','Healthy',4),(34,'Gayane','Khachatryan','2005-04-15','-54 kg','Healthy',7),(35,'Nare','Baghdasaryan','2004-08-22','-59 kg','Healthy',10),(36,'Milena','Karapetyan','2006-03-08','-65 kg','Medical clearance pending',8),(37,'Angelina','Melkonyan','2005-12-11','-72 kg','Healthy',8),(38,'Arpi','Danielyan','2004-06-17','+72 kg','Healthy',5),(39,'Elina','Tadevosyan','2006-07-25','-50 kg','Healthy',4),(40,'Syuzanna','Hakobyan','2005-02-28','-54 kg','Recovering from shoulder strain',10),(41,'Luiza','Vardanyan','2004-11-09','-59 kg','Healthy',9);
/*!40000 ALTER TABLE `athletes` ENABLE KEYS */;
UNLOCK TABLES;

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
  `Founded_year` int DEFAULT NULL,
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
INSERT INTO `clubs` VALUES (1,'Dinamo','Yerevan','Aleks Manukyan 10',1925,50),(2,'Armenia Sambo','Gyumri','Gai Str. 5',2010,15),(3,'Grand Sport','Yerevan','Arshakunyats 61',2011,70),(4,'Margaryan Sport','Charencavan','Shirakatsi 74',1998,30),(5,'Artsakh Club','Vanadzor','Tigran Mets 22',2015,45);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coaches`
--

LOCK TABLES `coaches` WRITE;
/*!40000 ALTER TABLE `coaches` DISABLE KEYS */;
INSERT INTO `coaches` VALUES (1,'Karen','Antonyan','A-Class',1),(2,'Armen','Petrosyan','B-Class',2),(3,'Hakob','Manukyan','C-Class',3),(4,'Vazgen','Margaryan','B-Class',4),(5,'Mariam','Hovhannisyan','A-Class',3),(6,'Hayk','Petrosyan','B-Class',5),(7,'Vovik','Xojayan','A-Class',1),(8,'Varsik','Grigoryan','D-Class',2),(9,'Azat','Andryan','s-Class',5),(10,'Viktoria','lavrovna','A-Class',3);
/*!40000 ALTER TABLE `coaches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournaments`
--

DROP TABLE IF EXISTS `tournaments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tournaments` (
  `TournamentsId` int NOT NULL AUTO_INCREMENT,
  `Location` varchar(45) DEFAULT NULL,
  `Type` varchar(45) NOT NULL,
  `Start_date` date NOT NULL,
  `End_date` date NOT NULL,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`TournamentsId`),
  UNIQUE KEY `TournamentsId_UNIQUE` (`TournamentsId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournaments`
--

LOCK TABLES `tournaments` WRITE;
/*!40000 ALTER TABLE `tournaments` DISABLE KEYS */;
INSERT INTO `tournaments` VALUES (1,'Yerevan, Armenia','National','2026-03-18','2026-03-22','Armenian Sambo Championship'),(2,'Athens, Greece','Continental','2026-04-16','2026-04-19','European Sambo Championship'),(3,'Tashkent, Uzbekistan','International Cup','2026-06-05','2026-06-09','World Sambo Cup'),(4,'Astana, Kazakhstan','World Championship','2026-11-24','2026-11-27','World Sambo Championship');
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
  PRIMARY KEY (`TournamentsRegistrationId`),
  KEY `fk_Tournaments-Registration_Tournaments1_idx` (`TournamentsId`),
  KEY `fk_Tournaments-Registration_Athlets1_idx` (`AthletesId`),
  CONSTRAINT `fk_Tournaments-Registration_Athlets1` FOREIGN KEY (`AthletesId`) REFERENCES `athletes` (`AthletesId`),
  CONSTRAINT `fk_Tournaments-Registration_Tournaments1` FOREIGN KEY (`TournamentsId`) REFERENCES `tournaments` (`TournamentsId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournaments_registration`
--

LOCK TABLES `tournaments_registration` WRITE;
/*!40000 ALTER TABLE `tournaments_registration` DISABLE KEYS */;
INSERT INTO `tournaments_registration` VALUES (1,'2026-03-01',1,1,1),(2,'2026-03-01',1,1,2),(3,'2026-03-02',1,1,6),(4,'2026-03-03',1,1,13),(5,'2026-03-03',1,1,27),(6,'2026-03-04',1,1,30),(7,'2026-03-04',0,1,31),(8,'2026-04-01',1,2,1),(9,'2026-04-01',1,2,4),(10,'2026-04-02',1,2,10),(11,'2026-04-02',1,2,14),(12,'2026-04-03',0,2,29),(13,'2026-04-03',1,2,32),(14,'2025-05-10',1,3,2),(15,'2025-05-10',1,3,12),(16,'2025-05-11',1,3,20),(17,'2025-05-11',1,3,27),(18,'2025-05-12',0,3,36),(19,'2026-10-15',1,4,1),(20,'2026-10-15',1,4,6),(21,'2026-10-16',1,4,12),(22,'2026-10-16',1,4,30),(23,'2026-10-17',1,4,32);
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
  `TournamentsId` int NOT NULL,
  `AthletesId` int NOT NULL,
  PRIMARY KEY (`TournamentsResultId`),
  KEY `fk_Tournaments-Result_Tournaments1_idx` (`TournamentsId`),
  KEY `fk_Tournaments-Result_Athlets1_idx` (`AthletesId`),
  CONSTRAINT `fk_Tournaments-Result_Athlets1` FOREIGN KEY (`AthletesId`) REFERENCES `athletes` (`AthletesId`),
  CONSTRAINT `fk_Tournaments-Result_Tournaments1` FOREIGN KEY (`TournamentsId`) REFERENCES `tournaments` (`TournamentsId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournaments_result`
--

LOCK TABLES `tournaments_result` WRITE;
/*!40000 ALTER TABLE `tournaments_result` DISABLE KEYS */;
INSERT INTO `tournaments_result` VALUES (1,1,1,12),(2,2,1,1),(3,3,1,6),(4,1,1,27),(5,2,1,30),(6,3,1,13),(7,1,2,1),(8,2,2,10),(9,3,2,4),(10,3,2,32),(11,1,3,27),(12,2,3,12),(13,3,3,2),(14,3,3,20),(15,1,4,12),(16,2,4,32),(17,3,4,1),(18,3,4,30);
/*!40000 ALTER TABLE `tournaments_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `athlete_performance_analysis`
--

/*!50001 DROP VIEW IF EXISTS `athlete_performance_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `athlete_performance_analysis` AS select `a`.`First_name` AS `First_name`,`a`.`Last_name` AS `Last_name`,`cl`.`Name` AS `Club_Name`,`a`.`Weight` AS `Weight`,rank() OVER (PARTITION BY `cl`.`Name` ORDER BY `a`.`Weight` desc )  AS `Weight_Rank` from ((`athletes` `a` join `coaches` `c` on((`a`.`CoachesId` = `c`.`CoachesId`))) join `clubs` `cl` on((`c`.`ClubsId` = `cl`.`ClubsId`))) order by `cl`.`Name`,`Weight_Rank` */;
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

-- Dump completed on 2026-06-04 16:28:04

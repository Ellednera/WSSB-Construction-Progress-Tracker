-- MariaDB dump 10.19  Distrib 10.11.3-MariaDB, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: WSSB_MuaraTuang
-- ------------------------------------------------------
-- Server version	10.11.3-MariaDB-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `beams_story-0_concrete`
--

DROP TABLE IF EXISTS `beams_story-0_concrete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beams_story-0_concrete` (
  `code` int(3) NOT NULL,
  `length` varchar(10) NOT NULL,
  `width` varchar(10) NOT NULL,
  `area` varchar(10) NOT NULL,
  `depth` varchar(10) NOT NULL,
  `volume` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beams_story-0_concrete`
--

LOCK TABLES `beams_story-0_concrete` WRITE;
/*!40000 ALTER TABLE `beams_story-0_concrete` DISABLE KEYS */;
/*!40000 ALTER TABLE `beams_story-0_concrete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beams_story-1_concrete`
--

DROP TABLE IF EXISTS `beams_story-1_concrete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beams_story-1_concrete` (
  `code` int(3) NOT NULL,
  `length` varchar(10) NOT NULL,
  `width` varchar(10) NOT NULL,
  `area` varchar(10) NOT NULL,
  `depth` varchar(10) NOT NULL,
  `volume` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beams_story-1_concrete`
--

LOCK TABLES `beams_story-1_concrete` WRITE;
/*!40000 ALTER TABLE `beams_story-1_concrete` DISABLE KEYS */;
/*!40000 ALTER TABLE `beams_story-1_concrete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beams_story-2_concrete`
--

DROP TABLE IF EXISTS `beams_story-2_concrete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beams_story-2_concrete` (
  `code` int(3) NOT NULL,
  `length` varchar(10) NOT NULL,
  `width` varchar(10) NOT NULL,
  `area` varchar(10) NOT NULL,
  `depth` varchar(10) NOT NULL,
  `volume` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beams_story-2_concrete`
--

LOCK TABLES `beams_story-2_concrete` WRITE;
/*!40000 ALTER TABLE `beams_story-2_concrete` DISABLE KEYS */;
/*!40000 ALTER TABLE `beams_story-2_concrete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `columns_story-0_concrete`
--

DROP TABLE IF EXISTS `columns_story-0_concrete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `columns_story-0_concrete` (
  `code` int(3) NOT NULL,
  `code_pad_footing` int(3) DEFAULT NULL,
  `length` varchar(10) NOT NULL,
  `width` varchar(10) NOT NULL,
  `area` varchar(10) NOT NULL,
  `depth` varchar(10) NOT NULL,
  `volume` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columns_story-0_concrete`
--

LOCK TABLES `columns_story-0_concrete` WRITE;
/*!40000 ALTER TABLE `columns_story-0_concrete` DISABLE KEYS */;
INSERT INTO `columns_story-0_concrete` VALUES
(1,1,'800.0','1200.0','0.960','0.0','0.000'),
(2,NULL,'800.0','1200.0','0.960','0.0','0.000'),
(3,NULL,'800.0','1200.0','0.960','0.0','0.000'),
(4,NULL,'800.0','1200.0','0.960','0.0','0.000'),
(5,NULL,'800.0','1200.0','0.960','0.0','0.000'),
(6,NULL,'800.0','1200.0','0.960','0.0','0.000'),
(93,66,'1200','1200','1.440','400','5.640'),
(94,66,'1200','1200','1.440','400','5.640');
/*!40000 ALTER TABLE `columns_story-0_concrete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `columns_story-1_concrete`
--

DROP TABLE IF EXISTS `columns_story-1_concrete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `columns_story-1_concrete` (
  `code` int(3) NOT NULL,
  `length` varchar(10) NOT NULL,
  `width` varchar(10) NOT NULL,
  `area` varchar(10) NOT NULL,
  `depth` varchar(10) NOT NULL,
  `volume` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columns_story-1_concrete`
--

LOCK TABLES `columns_story-1_concrete` WRITE;
/*!40000 ALTER TABLE `columns_story-1_concrete` DISABLE KEYS */;
/*!40000 ALTER TABLE `columns_story-1_concrete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `columns_story-2_concrete`
--

DROP TABLE IF EXISTS `columns_story-2_concrete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `columns_story-2_concrete` (
  `code` int(3) NOT NULL,
  `length` varchar(10) NOT NULL,
  `width` varchar(10) NOT NULL,
  `area` varchar(10) NOT NULL,
  `depth` varchar(10) NOT NULL,
  `volume` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columns_story-2_concrete`
--

LOCK TABLES `columns_story-2_concrete` WRITE;
/*!40000 ALTER TABLE `columns_story-2_concrete` DISABLE KEYS */;
/*!40000 ALTER TABLE `columns_story-2_concrete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inspected_beam_story-0`
--

DROP TABLE IF EXISTS `inspected_beam_story-0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inspected_beam_story-0` (
  `inspector` varchar(15) NOT NULL,
  `code` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inspected_beam_story-0`
--

LOCK TABLES `inspected_beam_story-0` WRITE;
/*!40000 ALTER TABLE `inspected_beam_story-0` DISABLE KEYS */;
/*!40000 ALTER TABLE `inspected_beam_story-0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inspected_beam_story-1`
--

DROP TABLE IF EXISTS `inspected_beam_story-1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inspected_beam_story-1` (
  `inspector` varchar(15) NOT NULL,
  `code` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inspected_beam_story-1`
--

LOCK TABLES `inspected_beam_story-1` WRITE;
/*!40000 ALTER TABLE `inspected_beam_story-1` DISABLE KEYS */;
/*!40000 ALTER TABLE `inspected_beam_story-1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inspected_column_story-0`
--

DROP TABLE IF EXISTS `inspected_column_story-0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inspected_column_story-0` (
  `inspector` varchar(15) NOT NULL,
  `code` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inspected_column_story-0`
--

LOCK TABLES `inspected_column_story-0` WRITE;
/*!40000 ALTER TABLE `inspected_column_story-0` DISABLE KEYS */;
/*!40000 ALTER TABLE `inspected_column_story-0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inspected_column_story-1`
--

DROP TABLE IF EXISTS `inspected_column_story-1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inspected_column_story-1` (
  `inspector` varchar(15) NOT NULL,
  `code` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inspected_column_story-1`
--

LOCK TABLES `inspected_column_story-1` WRITE;
/*!40000 ALTER TABLE `inspected_column_story-1` DISABLE KEYS */;
/*!40000 ALTER TABLE `inspected_column_story-1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inspected_pad_footing`
--

DROP TABLE IF EXISTS `inspected_pad_footing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inspected_pad_footing` (
  `inspector` varchar(15) NOT NULL,
  `code` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inspected_pad_footing`
--

LOCK TABLES `inspected_pad_footing` WRITE;
/*!40000 ALTER TABLE `inspected_pad_footing` DISABLE KEYS */;
/*!40000 ALTER TABLE `inspected_pad_footing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inspectors`
--

DROP TABLE IF EXISTS `inspectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inspectors` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `ic_number` int(12) DEFAULT NULL,
  `position` varchar(50) NOT NULL,
  `contractor` varchar(10) NOT NULL,
  `company` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inspectors`
--

LOCK TABLES `inspectors` WRITE;
/*!40000 ALTER TABLE `inspectors` DISABLE KEYS */;
/*!40000 ALTER TABLE `inspectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pad_footing_concrete`
--

DROP TABLE IF EXISTS `pad_footing_concrete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pad_footing_concrete` (
  `code` int(3) NOT NULL,
  `length` varchar(10) NOT NULL,
  `width` varchar(10) NOT NULL,
  `area` varchar(10) NOT NULL,
  `depth` varchar(10) NOT NULL,
  `volume` varchar(10) NOT NULL,
  `dig_compact_ok` datetime DEFAULT NULL,
  `formwork_ok` datetime DEFAULT NULL,
  `concrete_in` datetime DEFAULT NULL,
  `inspector` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pad_footing_concrete`
--

LOCK TABLES `pad_footing_concrete` WRITE;
/*!40000 ALTER TABLE `pad_footing_concrete` DISABLE KEYS */;
INSERT INTO `pad_footing_concrete` VALUES
(1,'2900.0','3700.0','10.730','400.0','4.292',NULL,NULL,NULL,NULL),
(6,'4300.0','3600.0','15.480','500.0','7.740',NULL,NULL,NULL,NULL),
(7,'4700.0','3900.0','18.330','500.0','9.165',NULL,NULL,NULL,NULL),
(2,'4700.0','3900.0','18.330','500.0','9.165',NULL,NULL,NULL,NULL),
(8,'2900.0','3700.0','10.730','400.0','4.292',NULL,NULL,NULL,NULL),
(66,'3400','7400','2.500','700','17.50',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pad_footing_concrete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timecard`
--

DROP TABLE IF EXISTS `timecard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timecard` (
  `ic` int(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `team` varchar(50) NOT NULL,
  `contract_work` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timecard`
--

LOCK TABLES `timecard` WRITE;
/*!40000 ALTER TABLE `timecard` DISABLE KEYS */;
/*!40000 ALTER TABLE `timecard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timecard_activities`
--

DROP TABLE IF EXISTS `timecard_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timecard_activities` (
  `ic` int(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `work_hours` int(1) NOT NULL,
  `start_time` varchar(10) NOT NULL,
  `end_time` varchar(10) NOT NULL,
  `is_contract_work` int(1) NOT NULL,
  `activities` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timecard_activities`
--

LOCK TABLES `timecard_activities` WRITE;
/*!40000 ALTER TABLE `timecard_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `timecard_activities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-13 13:33:06

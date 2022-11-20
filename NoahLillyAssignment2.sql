CREATE DATABASE  IF NOT EXISTS `dealership` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dealership`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: dealership
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `address` varchar(90) NOT NULL,
  `zipcode` char(5) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Goodman','Yvonne','12 Creekside St','37205','2025550109','ygoodman@isp.com'),(2,'Mackenzie','Dante','137 Wall St','37205','2025550112','dmackenzie@isp.com'),(3,'Rollins','Alysha','411 Shirley St','37205','2025550115','arollins@isp.com'),(4,'Gonzalez','Avaya','7771 Border Court','37205','2025550119','agonzalez@isp.com'),(5,'Kelly','Haniya','6 South Sulphur Springs Street','37205','2025550121','hkelly@isp.com'),(6,'Chambers','Nathalie','942 New Saddle Drive','29710','2025550122','nchambers@isp.com'),(7,'Rollins','Daniel','9 Wrangler Ave','29710','2025550124','drollins@isp.com'),(8,'Mckee','Beverley','7319 S. Greenview Drive','29710','2025550125','bmckee@isp.com'),(9,'Lindsey','Paris','763 West Mulberry St','29710','2025550132','plindsey@isp.com'),(10,'Melia','Umaiza','545 Ohio Ave','29710','2025550135','umelia@isp.com'),(11,'Prince','Nico','20 Middle River Street','44094','2025550137','nprince@isp.com'),(12,'Rennie','Javan','8112 North Country St','44094','2025550139','jrennie@isp.com'),(13,'Waters','Ali','83 Rockland Lane','44094','2025550144','awaters@isp.com'),(14,'Clarke','JohnPaul','1 Riverside Lane','44094','2025550153','jpcClarke@isp.com'),(15,'Kaiser','Dane','694 Wall Road','44094','2025550155','kdaiser@isp.com'),(16,'Newman','Hammad','9970 State Court','30096','2025550157','hnewman@isp.com'),(17,'Guthrie','Maha','54 Woodsman Drive','30096','2025550161','mguthrie@isp.com'),(18,'Roberts','Tulisa','7174 Studebaker Street','30096','2025550163','troberts@isp.com'),(19,'Solis','Robin','8474 Wentworth Street','30096','2025550164','rsolis@isp.com'),(20,'Heath','Kavita','796 Hartford St','30096','2025550165','kheath@isp.com'),(21,'White','Meera','484 Bridge St','08854','2025550166','mwhite@isp.com'),(22,'Esparza','Bradlee','7031 Gainsway St','08854','2025550173','besparza@isp.com'),(23,'Leonard','Leilani','37 Monroe Street','08854','2025550175','lleonard@isp.com'),(24,'Brook','Stefanie','7990 West Surrey St','08854','2025550179','sbrook@isp.com'),(25,'Squires','Grover','7618 Madison Court','08854','2025550180','gsquires@isp.com'),(26,'Kumar','Jonathan','25 Annadale Court','33458','2025550182','jkumar@isp.com'),(27,'Neville','Angus','9841 Smith Drive','33458','2025550187','aneville@isp.com'),(28,'Sparrow','Uzair','7999 Hall Street','33458','2025550188','usparrow@isp.com'),(29,'Currie','Amari','8411 Pleasant St','33458','2025550194','acurrie@isp.com'),(30,'Wallace','Imaani','33 Pierce Rd','33458','2025550195','iwallace@isp.com'),(31,'House','Efe','97 High Point Street','20706','2025550196','ehouse@isp.com'),(32,'Atkinson','Atticus','66 Harrison Dr','20706','2025550197','aatkinson@isp.com'),(33,'Ramirez','Michelle','370 Hill Field Ave','20706','2025550198','mramirez@isp.com'),(34,'Hassan','Remy','249 Devon Lane','20706','2025550199','rhassan@isp.com'),(35,'Beck','Jordana','7911 Carson Lane','20706','2025550200','jbeck@isp.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `address` varchar(90) NOT NULL,
  `zipcode` char(5) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Prince','Igor','12 Creekside St','92647','2025550109','iprince@renovations.com'),(2,'Rennie','Dante','137 Wall St','38117','2025550112','drennie@renovations.com'),(3,'Waters','Thomas','411 Shirley St','24210','2025550115','twaters@renovations.com'),(4,'Clarke','Avaya','7771 Border Court','92078','2025550119','aclarke@renovations.com'),(5,'Kaiser','Haniya','6 South Sulphur Springs Street','70121','2025550121','hkaiser@renovations.com'),(6,'Guthrie','Douglas','9 Wrangler Ave','91764','2025550124','dguthrie@renovations.com'),(7,'Roberts','Brian','7319 S. Greenview Drive','44223','2025550125','broberts@renovations.com'),(8,'Solis','Paris','763 West Mulberry St','49016','2025550132','psolis@renovations.com'),(9,'Heath','Umaiza','545 Ohio Ave','85260','2025550135','uheath@renovations.com'),(10,'Newman','Victor','942 New Saddle Drive','70433','2025550122','vnewman@renovations.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `make` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `color` varchar(25) NOT NULL,
  `engine` varchar(10) NOT NULL,
  `cylinders` varchar(2) NOT NULL,
  `transmission` varchar(40) NOT NULL,
  `vin` char(17) NOT NULL,
  `odometer` int NOT NULL DEFAULT '0',
  `retail` decimal(8,2) NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'Sedan','BMW','3 Series','Alpine White','2.0','I4','8-speed shiftable automatic','WBAAR3346YJB35144',10,41450.00,2022),(2,'Coupe','BMW','3 Series','Potamaic Blue','3.0','I6','8-speed shiftable automatic','WBAAG1107B7071594',15,56700.00,2022),(3,'Sedan','BMW','2 Series','Tanzanite Blue','2.0','I4','8-speed shiftable automatic','WB10416A01ZC60664',15000,40750.00,2020),(4,'Convertible','BMW','2 Series','Mineral Grey','3.0','I6','8-speed shiftable automatic','WBAEP33403PE91635',16000,54000.00,2020),(5,'Sedan','BMW','1 Series','Sunset Orange','2.0','I4','8-speed shiftable automatic','WBAVC53597F280348',24000,34900.00,2018),(6,'Sedan','BMW','1 Series','Mediterranean Blue','3.0','I6','8-speed shiftable automatic','WBASP2C58BC337294',25000,48950.00,2018),(7,'Sedan','BMW','5 Series','Dravit Grey Metallic','2.0','I4','8-speed shiftable automatic','5UXZW0C51BL657600',43000,33150.00,2016),(8,'Sedan','BMW','5 Series','Black Sapphire','3.0','I6','8-speed shiftable automatic','WBABB2304KEC18748',44324,45800.00,2016),(9,'Sedan','BMW','6 Series','Sunset Orange','2.0','I4','8-speed shiftable automatic','WBAEA8104C8160045',51000,32750.00,2014),(10,'Sedan','BMW','6 Series','Alpine White','3.0','I6','8-speed shiftable automatic','WBSNB93526CX06186',54000,45400.00,2014),(11,'Wagon','BMW','7 Series','Potamaic Blue','2.0','I4','8-speed shiftable automatic','WBAVM1C58FVZ94090',56789,41450.00,2014),(12,'Sedan','BMW','7 Series','Mineral Grey','2.0','I4','6-speed manual','WBS6C9C50F0010137',45678,34900.00,2012),(13,'Sedan','BMW','8 Series','Mediterranean Blue','3.0','I6','6-speed manual','WBA1A1101FP627759',56123,42400.00,2012),(14,'Wagon','BMW','8 Series','Black Sapphire','3.0','I6','6-speed manual','WBA1K5C54FV473864',76543,37500.00,2012),(15,'Truck (Regular Cab)','Ford','F-150','Velocity Blue','3.3','V6','10-speed shiftable automatic','1FTPX27W8XNC05837',100,30495.00,2022),(16,'Truck (SuperCrew)','Ford','F-150','Guard','5.0','V8','10-speed shiftable automatic','1FDTF4GT0FEC04565',150,62070.00,2022),(17,'Truck (SuperCab)','Ford','F-150','Antimatter Blue','2.7','V6','10-speed shiftable automatic','1FAPP37U0RK147737',240,52360.00,2022),(18,'Truck (Regular Cab)','Ford','F-250','Space White','3.3','V6','6-speed shiftable automatic','NM0GE9F71E1140792',12345,28745.00,2020),(19,'Truck (SuperCab)','Ford','F-250','Carbonized Gray','3.3','V6','6-speed shiftable automatic','1FTHS34L5FHB78984',23456,32830.00,2020),(20,'Truck (SuperCrew)','Ford','F-250','OxFord White','3.3','V6','6-speed shiftable automatic','1ZVLT22B0P0016902',31234,35285.00,2020),(21,'Truck (Regular Cab)','Ford','F-350','Iconic Silver','3.5','V6','6-speed shiftable automatic','3FA6P0HR4DR275908',76543,26030.00,2015),(22,'Truck (SuperCab)','Ford','F-350','Rapid Red','3.5','V6','6-speed shiftable automatic','1FMDU32E0XUB16328',81234,30090.00,2015),(23,'Truck (SuperCrew)','Ford','F-350','Agate Black','3.5','V6','6-speed shiftable automatic','1FT8X3A66FEA17593',34899,32545.00,2015),(24,'Hatchback','Toyota','Prius','Red','1.8','I4','continuously variable-speed automatic','JTECB09J823005642',135,25075.00,2022),(25,'Sedan','Toyota','Camry','White','1.8','I4','continuously variable-speed automatic','4T1BG12K7TU071892',178,24325.00,2020),(26,'Sedan','Toyota','Corolla','Black','1.8','I4','continuously variable-speed automatic','JT4RN81A5L5058840',10234,23475.00,2018),(27,'SUV','Toyota','RAV4','Grey','1.5','I4','continuously variable-speed automatic','2T1LR38E13C094100',12098,19995.00,2003),(28,'SUV','Toyota','4Runner','Red','1.5','I4','continuously variable-speed automatic','JTEBU3FJ3E5048175',54198,19995.00,2002),(29,'Hatchback','Toyota','Prius','Black','1.5','I4','continuously variable-speed automatic','5TFAW5F13FX422831',78103,19995.00,2001);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-22 19:06:11

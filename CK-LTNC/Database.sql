CREATE DATABASE  IF NOT EXISTS `quanlykhupho` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `quanlykhupho`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: quanlykhupho
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
-- Table structure for table `hodan`
--

DROP TABLE IF EXISTS `hodan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hodan` (
  `maHoDan` char(10) NOT NULL,
  `soThanhVien` int DEFAULT NULL,
  `soNha` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `maKhuPho` char(10) DEFAULT NULL,
  PRIMARY KEY (`maHoDan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hodan`
--

LOCK TABLES `hodan` WRITE;
/*!40000 ALTER TABLE `hodan` DISABLE KEYS */;
INSERT INTO `hodan` VALUES ('0001',3,'N0001','PK1'),('0002',3,'N0002','PK2'),('0003',4,'N0003','PK3'),('0004',3,'N0004','PK4');
/*!40000 ALTER TABLE `hodan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khupho`
--

DROP TABLE IF EXISTS `khupho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khupho` (
  `maKhuPho` char(10) NOT NULL,
  `tenKhuPho` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`maKhuPho`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khupho`
--

LOCK TABLES `khupho` WRITE;
/*!40000 ALTER TABLE `khupho` DISABLE KEYS */;
INSERT INTO `khupho` VALUES ('PK1','       KhuPho1'),('PK2','       KhuPho2'),('PK3','       KhuPho3'),('PK4','       Trần Đại Nghĩa'),('PK5','       Lê Thanh Nghị');
/*!40000 ALTER TABLE `khupho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoi`
--

DROP TABLE IF EXISTS `nguoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nguoi` (
  `maNguoi` char(10) NOT NULL,
  `hoVaTen` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `tuoi` int DEFAULT NULL,
  `namSinh` int DEFAULT NULL,
  `ngheNghiep` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `maHoDan` char(10) NOT NULL,
  PRIMARY KEY (`maNguoi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoi`
--

LOCK TABLES `nguoi` WRITE;
/*!40000 ALTER TABLE `nguoi` DISABLE KEYS */;
INSERT INTO `nguoi` VALUES ('NG01','NguyenVanA',20,2002,'SinhVienChange','0001'),('NG02','LeThiB',40,1982,'KeToan','0001'),('NG03','TranVanC',40,1982,'GiaoVien','0002'),('NG04','NguyenVanD',38,1984,'CongNhan','0002'),('NG05','DuongNgocE',22,2000,'SinhVien','0003'),('NG06','LeVanF',10,2012,'HocSinh','0003'),('NG07','NguyenVanG',43,1979,'KySu','0001'),('NG08','TranThiH',17,2005,'HocSinh','0002'),('NG09','LeThiK',22,2000,'SinhVien','0003'),('NG10','NgoVanN',20,2002,'SinhVien','0003'),('NG11','BuiThanhL',35,1987,'CongNhan','0004'),('NG12','TranThiM',35,1987,'CongNhan','0004'),('NG13','BuiDucQ',13,2009,'HocSinh','0004');
/*!40000 ALTER TABLE `nguoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useritem`
--

DROP TABLE IF EXISTS `useritem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `useritem` (
  `tenTaiKhoan` char(10) NOT NULL,
  `matKhau` char(10) NOT NULL,
  `vaitro` bit(1) NOT NULL,
  PRIMARY KEY (`tenTaiKhoan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useritem`
--

LOCK TABLES `useritem` WRITE;
/*!40000 ALTER TABLE `useritem` DISABLE KEYS */;
INSERT INTO `useritem` VALUES ('admin','admin',_binary ''),('user','user',_binary '\0');
/*!40000 ALTER TABLE `useritem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-09 20:05:21

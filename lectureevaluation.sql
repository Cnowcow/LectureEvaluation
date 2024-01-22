-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lectureevaluation
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluation` (
  `evaluationID` int NOT NULL AUTO_INCREMENT,
  `userID` varchar(20) DEFAULT NULL,
  `lectureName` varchar(50) DEFAULT NULL,
  `professorName` varchar(20) DEFAULT NULL,
  `lectureYear` int DEFAULT NULL,
  `semesterDivide` varchar(20) DEFAULT NULL,
  `lectureDivide` varchar(10) DEFAULT NULL,
  `evaluationTitle` varchar(50) DEFAULT NULL,
  `evaluationContent` varchar(2048) DEFAULT NULL,
  `totalScore` varchar(5) DEFAULT NULL,
  `creditScore` varchar(5) DEFAULT NULL,
  `comfortableScore` varchar(5) DEFAULT NULL,
  `lectureScroe` varchar(5) DEFAULT NULL,
  `likeCount` int DEFAULT NULL,
  PRIMARY KEY (`evaluationID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation`
--

LOCK TABLES `evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation` DISABLE KEYS */;
INSERT INTO `evaluation` VALUES (24,'hhjnn92','정보보안','이순신',2011,'2학기','전공','정보보안의 귀재이십니다','이순신 교수님 덕에 정보보안 시간이 매일 즐거웠어요','A','A','A','A',1),(25,'hhjnn92','컴퓨터네트워크','홍길동',2013,'2학기','교양','네트워크의 신입니다','홍길동 교수님은 네트워크의 신이에요. 정말 잘 가르치십니다','B','B','B','B',1),(27,'hhjnn92','강문주','pay',2023,'1학기','전공','아니','이게머야\r\n','A','A','A','A',0),(28,'hhjnn92','유고운','pay',2023,'1학기','전공','얼마?','2000원~','A','A','A','A',1);
/*!40000 ALTER TABLE `evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likey`
--

DROP TABLE IF EXISTS `likey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likey` (
  `userID` varchar(20) NOT NULL,
  `evaluationID` int NOT NULL,
  `userIP` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userID`,`evaluationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likey`
--

LOCK TABLES `likey` WRITE;
/*!40000 ALTER TABLE `likey` DISABLE KEYS */;
INSERT INTO `likey` VALUES ('hhjnn92',20,'0:0:0:0:0:0:0:1'),('hhjnn92',21,'0:0:0:0:0:0:0:1'),('hhjnn92',24,'0:0:0:0:0:0:0:1'),('hhjnn92',25,'0:0:0:0:0:0:0:1'),('hhjnn92',28,'0:0:0:0:0:0:0:1');
/*!40000 ALTER TABLE `likey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userID` varchar(20) NOT NULL,
  `userPassword` varchar(64) DEFAULT NULL,
  `userEmail` varchar(50) DEFAULT NULL,
  `userEmailHash` varchar(64) DEFAULT NULL,
  `userEmailChecked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('hhjnn92','123','hhjnn92@icloud.com','2ca73d1a1894837ee38571a3cf641203502345f3fbe0f3570dd0614c2eb61964',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-22 23:08:33

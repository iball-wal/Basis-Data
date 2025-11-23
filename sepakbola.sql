-- MySQL dump 10.13  Distrib 8.4.3, for Win64 (x86_64)
--
-- Host: localhost    Database: sepakbola
-- ------------------------------------------------------
-- Server version	8.4.3

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
-- Table structure for table `club`
--

DROP TABLE IF EXISTS `club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club` (
  `id_club` int NOT NULL AUTO_INCREMENT,
  `nama_club` varchar(100) NOT NULL,
  `negara` varchar(50) NOT NULL,
  `stadion` varchar(100) DEFAULT NULL,
  `tahun_berdiri` int DEFAULT NULL,
  PRIMARY KEY (`id_club`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club`
--

LOCK TABLES `club` WRITE;
/*!40000 ALTER TABLE `club` DISABLE KEYS */;
INSERT INTO `club` VALUES (1,'Manchester United','Inggris','Old Trafford',1878),(2,'Real Madrid','Spanyol','Santiago Bernabéu',1902),(3,'Barcelona','Spanyol','Camp Nou',1899),(4,'Liverpool','Inggris','Anfield',1892),(5,'Bayern Munich','Jerman','Allianz Arena',1900),(6,'Paris Saint-Germain','Prancis','Parc des Princes',1970),(7,'Juventus','Italia','Allianz Stadium',1897),(8,'Chelsea','Inggris','Stamford Bridge',1905),(9,'AC Milan','Italia','San Siro',1899),(10,'Arsenal','Inggris','Emirates Stadium',1886),(11,'Inter Milan','Italia','Giuseppe Meazza',1908),(12,'Atletico Madrid','Spanyol','Wanda Metropolitano',1903),(13,'Borussia Dortmund','Jerman','Signal Iduna Park',1909),(14,'Ajax','Belanda','Johan Cruyff Arena',1900),(15,'Napoli','Italia','Diego Armando Maradona Stadium',1926);
/*!40000 ALTER TABLE `club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pemain`
--

DROP TABLE IF EXISTS `pemain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pemain` (
  `id_pemain` int NOT NULL AUTO_INCREMENT,
  `nama_pemain` varchar(100) DEFAULT NULL,
  `posisi` varchar(50) DEFAULT NULL,
  `umur` int DEFAULT NULL,
  `id_club` int DEFAULT NULL,
  PRIMARY KEY (`id_pemain`),
  KEY `id_club` (`id_club`),
  CONSTRAINT `pemain_ibfk_1` FOREIGN KEY (`id_club`) REFERENCES `club` (`id_club`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pemain`
--

LOCK TABLES `pemain` WRITE;
/*!40000 ALTER TABLE `pemain` DISABLE KEYS */;
INSERT INTO `pemain` VALUES (1,'Cristiano Ronaldo','Penyerang',39,1),(2,'Marcus Rashford','Penyerang',27,1),(3,'Luka Modric','Gelandang',39,2),(4,'Vinicius Jr','Penyerang',25,2),(5,'Robert Lewandowski','Penyerang',36,3),(6,'Pedri','Gelandang',22,3),(7,'Mohamed Salah','Penyerang',33,4),(8,'Virgil van Dijk','Bek',34,4),(9,'Kylian Mbappé','Penyerang',26,6),(10,'Lionel Messi','Penyerang',38,6),(11,'Dusan Vlahovic','Penyerang',25,7),(12,'Paul Pogba','Gelandang',32,7),(13,'Kai Havertz','Gelandang',26,10),(14,'Olivier Giroud','Penyerang',39,9),(15,'Lautaro Martinez','Penyerang',28,11);
/*!40000 ALTER TABLE `pemain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pertandingan`
--

DROP TABLE IF EXISTS `pertandingan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pertandingan` (
  `id_pertendingan` int NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `club_tuan_rumah` int DEFAULT NULL,
  `club_tamu` int DEFAULT NULL,
  `skor_tuan_rumah` int DEFAULT NULL,
  `skor_tamu` int DEFAULT NULL,
  PRIMARY KEY (`id_pertendingan`),
  KEY `club_tuan_rumah` (`club_tuan_rumah`),
  KEY `club_tamu` (`club_tamu`),
  CONSTRAINT `pertandingan_ibfk_1` FOREIGN KEY (`club_tuan_rumah`) REFERENCES `club` (`id_club`),
  CONSTRAINT `pertandingan_ibfk_2` FOREIGN KEY (`club_tamu`) REFERENCES `club` (`id_club`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pertandingan`
--

LOCK TABLES `pertandingan` WRITE;
/*!40000 ALTER TABLE `pertandingan` DISABLE KEYS */;
INSERT INTO `pertandingan` VALUES (1,'2025-01-10',1,4,2,2),(2,'2025-01-12',2,3,3,1),(3,'2025-01-15',5,6,1,1),(4,'2025-01-18',7,9,2,0),(5,'2025-01-20',8,10,1,2),(6,'2025-01-22',11,12,3,2),(7,'2025-01-25',13,14,4,1),(8,'2025-01-28',3,1,2,3),(9,'2025-02-01',2,5,0,0),(10,'2025-02-03',6,4,2,3),(11,'2025-02-06',10,8,1,1),(12,'2025-02-08',12,11,2,2),(13,'2025-02-10',14,13,1,4),(14,'2025-02-12',9,7,0,2),(15,'2025-02-15',15,1,3,2);
/*!40000 ALTER TABLE `pertandingan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-23 23:27:29

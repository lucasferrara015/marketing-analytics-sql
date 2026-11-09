-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: marketing_analytics_db
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `interacciones_campana`
--

DROP TABLE IF EXISTS `interacciones_campana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interacciones_campana` (
  `interaccion_id` int NOT NULL AUTO_INCREMENT,
  `campana_id` int NOT NULL,
  `cliente_id` int NOT NULL,
  `fecha_interaccion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tipo_interaccion` enum('impresion','clic','envio') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dispositivo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pais` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpc` decimal(8,4) DEFAULT '0.0000',
  `flag_convertido` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`interaccion_id`),
  KEY `fk_interacciones_cliente` (`cliente_id`),
  KEY `idx_interacciones_tipo` (`tipo_interaccion`),
  KEY `idx_interacciones_campana_tipo` (`campana_id`,`tipo_interaccion`),
  CONSTRAINT `fk_interacciones_campana` FOREIGN KEY (`campana_id`) REFERENCES `campanas` (`campana_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_interacciones_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`cliente_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interacciones_campana`
--

LOCK TABLES `interacciones_campana` WRITE;
/*!40000 ALTER TABLE `interacciones_campana` DISABLE KEYS */;
INSERT INTO `interacciones_campana` VALUES (1,1,1,'2026-01-05 11:20:00','impresion','Mobile','Argentina',0.0000,0),(2,1,1,'2026-01-05 11:22:00','clic','Mobile','Argentina',145.5000,1),(3,1,6,'2026-01-10 15:00:00','clic','Desktop','Argentina',150.0000,1),(4,2,4,'2026-02-02 10:05:00','clic','Mobile','Argentina',85.2000,1),(5,2,8,'2026-02-03 14:12:00','impresion','Mobile','Argentina',0.0000,0),(6,2,8,'2026-02-03 14:15:00','clic','Mobile','Argentina',85.2000,1),(7,3,2,'2026-01-18 09:30:00','clic','Desktop','Argentina',45.0000,1),(8,3,5,'2026-01-20 12:00:00','clic','Mobile','Argentina',45.0000,1),(9,4,1,'2026-02-11 18:00:00','clic','Mobile','Argentina',210.0000,1),(10,4,3,'2026-02-11 19:30:00','clic','Desktop','Argentina',210.0000,0),(11,4,6,'2026-02-11 20:10:00','clic','Mobile','Argentina',210.0000,1),(12,5,10,'2026-02-08 16:45:00','clic','Mobile','Argentina',120.0000,1),(13,5,5,'2026-02-09 11:00:00','clic','Tablet','Argentina',120.0000,1);
/*!40000 ALTER TABLE `interacciones_campana` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-09 12:00:07

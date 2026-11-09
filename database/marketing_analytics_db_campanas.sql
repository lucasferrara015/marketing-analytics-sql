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
-- Table structure for table `campanas`
--

DROP TABLE IF EXISTS `campanas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campanas` (
  `campana_id` int NOT NULL AUTO_INCREMENT,
  `nombre_campana` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_campana` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `presupuesto` decimal(12,2) NOT NULL DEFAULT '0.00',
  `audiencia_objetivo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canal` enum('Redes Sociales','Google Ads','Email','SMS','Influencer') COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` enum('Activa','Pausada','Finalizada') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Activa',
  PRIMARY KEY (`campana_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campanas`
--

LOCK TABLES `campanas` WRITE;
/*!40000 ALTER TABLE `campanas` DISABLE KEYS */;
INSERT INTO `campanas` VALUES (1,'Verano 2026 - Performance Max','Adquisición','2026-01-01','2026-01-31',150000.00,'Jóvenes 18-35 años','Google Ads','Finalizada'),(2,'Lanzamiento Colección Otoño','Awareness','2026-02-01','2026-02-28',80000.00,'Interesados en Moda','Redes Sociales','Activa'),(3,'Campaña Fidelización VIP','Retención','2026-01-15','2026-03-15',50000.00,'Clientes VIP Actuales','Email','Activa'),(4,'Cyber Monday Flash Sale','Conversión Rápida','2026-02-10','2026-02-12',120000.00,'Público General Masivo','Redes Sociales','Finalizada'),(5,'Alianzas con Influencers Tech','Consideración','2026-02-05','2026-03-05',95000.00,'Gamers y Techies','Influencer','Activa');
/*!40000 ALTER TABLE `campanas` ENABLE KEYS */;
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

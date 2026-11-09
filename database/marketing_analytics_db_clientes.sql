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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `cliente_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genero` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `ciudad` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provincia_estado` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `segmento_cliente` enum('Nuevo','Recurrente','VIP') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Nuevo',
  `canal_adquisicion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cliente_id`),
  KEY `idx_clientes_segmento` (`segmento_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Lucas','Gómez','Masculino',28,'Buenos Aires','Buenos Aires','2026-01-10 10:15:00','Nuevo','Redes Sociales'),(2,'Sofía','Martínez','Femenino',34,'Córdoba','Córdoba','2025-11-05 14:20:00','VIP','Google Ads'),(3,'Matías','Rodríguez','Masculino',41,'Rosario','Santa Fe','2025-12-01 09:00:00','Recurrente','Email'),(4,'Valentina','López','Femenino',25,'Mendoza','Mendoza','2026-02-14 18:30:00','Nuevo','Redes Sociales'),(5,'Joaquín','Pérez','Masculino',30,'La Plata','Buenos Aires','2025-10-20 11:10:00','VIP','Influencer'),(6,'Camila','Fernández','Femenino',29,'Mar del Plata','Buenos Aires','2026-01-25 16:45:00','Nuevo','Google Ads'),(7,'Agustín','Díaz','Masculino',38,'San Miguel de Tucumán','Tucumán','2025-09-15 08:20:00','Recurrente','SMS'),(8,'Lucía','Álvarez','Femenino',22,'Salta','Salta','2026-02-01 12:00:00','Nuevo','Redes Sociales'),(9,'Martín','Romero','Masculino',45,'Santa Fe','Santa Fe','2025-08-11 19:15:00','VIP','Google Ads'),(10,'Florencia','Sosa','Femenino',31,'Neuquén','Neuquén','2026-02-10 13:40:00','Nuevo','Influencer');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
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

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
-- Table structure for table `conversiones`
--

DROP TABLE IF EXISTS `conversiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversiones` (
  `conversion_id` int NOT NULL AUTO_INCREMENT,
  `campana_id` int NOT NULL,
  `cliente_id` int NOT NULL,
  `fecha_conversion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monto_ingreso` decimal(12,2) NOT NULL DEFAULT '0.00',
  `categoria_producto` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descuento_aplicado` decimal(5,2) DEFAULT '0.00',
  PRIMARY KEY (`conversion_id`),
  KEY `idx_conversiones_campana` (`campana_id`),
  KEY `idx_conversiones_cliente` (`cliente_id`),
  CONSTRAINT `fk_conversiones_campana` FOREIGN KEY (`campana_id`) REFERENCES `campanas` (`campana_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_conversiones_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`cliente_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversiones`
--

LOCK TABLES `conversiones` WRITE;
/*!40000 ALTER TABLE `conversiones` DISABLE KEYS */;
INSERT INTO `conversiones` VALUES (1,1,1,'2026-01-05 11:35:00',45000.00,'Indumentaria',10.00),(2,1,6,'2026-01-10 15:20:00',65000.00,'Calzado',0.00),(3,2,4,'2026-02-02 10:25:00',32000.00,'Accesorios',15.00),(4,2,8,'2026-02-03 14:40:00',28000.00,'Indumentaria',5.00),(5,3,2,'2026-01-18 10:00:00',150000.00,'Electrónica',20.00),(6,3,5,'2026-01-20 12:30:00',95000.00,'Hogar',10.00),(7,4,1,'2026-02-11 18:30:00',54000.00,'Indumentaria',25.00),(8,4,6,'2026-02-11 20:45:00',78000.00,'Calzado',25.00),(9,5,10,'2026-02-08 17:15:00',110000.00,'Gadgets',0.00),(10,5,5,'2026-02-09 11:30:00',135000.00,'Gadgets',10.00);
/*!40000 ALTER TABLE `conversiones` ENABLE KEYS */;
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

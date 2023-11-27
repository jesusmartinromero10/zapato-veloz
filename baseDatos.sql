CREATE DATABASE  IF NOT EXISTS `spr_p001_outlet_zapato_veloz` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8_spanish2_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `spr_p001_outlet_zapato_veloz`;
-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: spr_p001_outlet_zapato_veloz
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Mujer'),(2,'Hombre'),(3,'Infantil'),(4,'Complementos');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias_listaPrendas`
--

DROP TABLE IF EXISTS `categorias_listaPrendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias_listaPrendas` (
  `Categoria_id` int NOT NULL,
  `listaPrendas_id` int NOT NULL,
  UNIQUE KEY `UK_arduohd13fy3geoyxjj0bstxc` (`listaPrendas_id`),
  KEY `FK5ggve9s25sfclllbjk4mb5yrb` (`Categoria_id`),
  CONSTRAINT `FK5ggve9s25sfclllbjk4mb5yrb` FOREIGN KEY (`Categoria_id`) REFERENCES `categorias` (`id`),
  CONSTRAINT `FK6xdkh6hf2m6lw8tquqy2ik1hv` FOREIGN KEY (`listaPrendas_id`) REFERENCES `prendas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias_listaPrendas`
--

LOCK TABLES `categorias_listaPrendas` WRITE;
/*!40000 ALTER TABLE `categorias_listaPrendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorias_listaPrendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias_listaPrendasEnCategoria`
--

DROP TABLE IF EXISTS `categorias_listaPrendasEnCategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias_listaPrendasEnCategoria` (
  `Categoria_id` int NOT NULL,
  `listaPrendasEnCategoria_id` int NOT NULL,
  UNIQUE KEY `UK_tf0v9wmt86tmb7k0magxteh13` (`listaPrendasEnCategoria_id`),
  KEY `FKmqtly4xtskx92uxdoixt7apw2` (`Categoria_id`),
  CONSTRAINT `FKmqtly4xtskx92uxdoixt7apw2` FOREIGN KEY (`Categoria_id`) REFERENCES `categorias` (`id`),
  CONSTRAINT `FKob7ouutjetoq5t1tw1wp6d3fe` FOREIGN KEY (`listaPrendasEnCategoria_id`) REFERENCES `prendas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias_listaPrendasEnCategoria`
--

LOCK TABLES `categorias_listaPrendasEnCategoria` WRITE;
/*!40000 ALTER TABLE `categorias_listaPrendasEnCategoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorias_listaPrendasEnCategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prendas`
--

DROP TABLE IF EXISTS `prendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prendas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `categoria_id` int DEFAULT NULL,
  `temporada_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKeccuehq89hpqus9h7odo8gy15` (`categoria_id`),
  KEY `FKgl9nix9eqdnka4f3by2oh5eko` (`temporada_id`),
  CONSTRAINT `FKeccuehq89hpqus9h7odo8gy15` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  CONSTRAINT `FKgl9nix9eqdnka4f3by2oh5eko` FOREIGN KEY (`temporada_id`) REFERENCES `temporadas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prendas`
--

LOCK TABLES `prendas` WRITE;
/*!40000 ALTER TABLE `prendas` DISABLE KEYS */;
INSERT INTO `prendas` VALUES (1,'mujer1.jpg','Blusa vaquera',34,1,2),(2,'mujer2.jpg','Camisa blanca',26,1,3),(3,'mujer3.jpg','Top lentejuelas',20,1,3),(4,'mujer4.jpg','Top negro',24,1,3),(5,'hombre1.jpg','chaqueta de otoño',45,2,4),(6,'hombre2.jpg','Chaqueta para el frio',59,2,5),(7,'infantil1.jpg','Polo a rayas',32,3,2),(8,'infantil2.jpg','Chaleco de entretiempo',36,3,4),(9,'infantil3.jpg','Camisa a cuadros',43,3,4),(10,'mujer5.jpg','Camiseta a rayas naranja',12,1,2),(11,'complemento1.jpg','bufanda',16,4,2),(12,'complemento2.jpg','bufanda roja',22,4,5);
/*!40000 ALTER TABLE `prendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporadas`
--

DROP TABLE IF EXISTS `temporadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temporadas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `temporada` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporadas`
--

LOCK TABLES `temporadas` WRITE;
/*!40000 ALTER TABLE `temporadas` DISABLE KEYS */;
INSERT INTO `temporadas` VALUES (1,'Sin temporada'),(2,'Primavera'),(3,'Verano'),(4,'Otoño'),(5,'Invierno');
/*!40000 ALTER TABLE `temporadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporadas_listaPrendas`
--

DROP TABLE IF EXISTS `temporadas_listaPrendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temporadas_listaPrendas` (
  `Temporada_id` int NOT NULL,
  `listaPrendas_id` int NOT NULL,
  UNIQUE KEY `UK_t05ou5bf5y7397umukce1dw2m` (`listaPrendas_id`),
  KEY `FKd477hwm6qn1cv9uwxyo026y29` (`Temporada_id`),
  CONSTRAINT `FK8qfspx0j1tk8qkd9to2r4so2y` FOREIGN KEY (`listaPrendas_id`) REFERENCES `prendas` (`id`),
  CONSTRAINT `FKd477hwm6qn1cv9uwxyo026y29` FOREIGN KEY (`Temporada_id`) REFERENCES `temporadas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporadas_listaPrendas`
--

LOCK TABLES `temporadas_listaPrendas` WRITE;
/*!40000 ALTER TABLE `temporadas_listaPrendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `temporadas_listaPrendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporadas_listaPrendasEnTemporada`
--

DROP TABLE IF EXISTS `temporadas_listaPrendasEnTemporada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temporadas_listaPrendasEnTemporada` (
  `Temporada_id` int NOT NULL,
  `listaPrendasEnTemporada_id` int NOT NULL,
  UNIQUE KEY `UK_m0yasib06obx3li4q6bqy8nyw` (`listaPrendasEnTemporada_id`),
  KEY `FKrahp9nmx5ivexrhh8pb337wg2` (`Temporada_id`),
  CONSTRAINT `FKquhot9h7r3k2i0fvit05jibfa` FOREIGN KEY (`listaPrendasEnTemporada_id`) REFERENCES `prendas` (`id`),
  CONSTRAINT `FKrahp9nmx5ivexrhh8pb337wg2` FOREIGN KEY (`Temporada_id`) REFERENCES `temporadas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporadas_listaPrendasEnTemporada`
--

LOCK TABLES `temporadas_listaPrendasEnTemporada` WRITE;
/*!40000 ALTER TABLE `temporadas_listaPrendasEnTemporada` DISABLE KEYS */;
/*!40000 ALTER TABLE `temporadas_listaPrendasEnTemporada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'spr_p001_outlet_zapato_veloz'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-27 18:20:00

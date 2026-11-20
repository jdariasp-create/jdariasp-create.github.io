-- MySQL dump 10.13  Distrib 8.4.11, for Linux (x86_64)
--
-- Host: localhost    Database: arkanix
-- ------------------------------------------------------
-- Server version	8.4.11-0ubuntu0.26.04.1

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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_registro` date NOT NULL,
  `contrasena` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel_acceso` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `uq_administrador_correo` (`correo`),
  UNIQUE KEY `uq_administrador_nickname` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (1,'Juan','Arias','2026-11-02','HASH_PRUEBA_001','admin@arkanix.com','AdminArkanix','Administracion','SUPERADMIN');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_eliminaciones`
--

DROP TABLE IF EXISTS `auditoria_eliminaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoria_eliminaciones` (
  `id_auditoria` int NOT NULL AUTO_INCREMENT,
  `id_videojuego` int DEFAULT NULL,
  `titulo_eliminado` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_eliminacion` datetime DEFAULT NULL,
  `accion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_auditoria`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_eliminaciones`
--

LOCK TABLES `auditoria_eliminaciones` WRITE;
/*!40000 ALTER TABLE `auditoria_eliminaciones` DISABLE KEYS */;
INSERT INTO `auditoria_eliminaciones` VALUES (1,7,'Arkanix Test Modificado','2026-11-02 01:57:11','DELETE');
/*!40000 ALTER TABLE `auditoria_eliminaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_modificaciones`
--

DROP TABLE IF EXISTS `auditoria_modificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoria_modificaciones` (
  `id_auditoria` int NOT NULL AUTO_INCREMENT,
  `id_videojuego` int DEFAULT NULL,
  `titulo_anterior` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titulo_nuevo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `accion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_auditoria`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_modificaciones`
--

LOCK TABLES `auditoria_modificaciones` WRITE;
/*!40000 ALTER TABLE `auditoria_modificaciones` DISABLE KEYS */;
INSERT INTO `auditoria_modificaciones` VALUES (1,7,'Arkanix Test','Arkanix Test Modificado','2026-11-02 01:48:50','UPDATE');
/*!40000 ALTER TABLE `auditoria_modificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_videojuegos`
--

DROP TABLE IF EXISTS `auditoria_videojuegos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoria_videojuegos` (
  `id_auditoria` int NOT NULL AUTO_INCREMENT,
  `id_videojuego` int DEFAULT NULL,
  `titulo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `accion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_auditoria`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_videojuegos`
--

LOCK TABLES `auditoria_videojuegos` WRITE;
/*!40000 ALTER TABLE `auditoria_videojuegos` DISABLE KEYS */;
INSERT INTO `auditoria_videojuegos` VALUES (1,7,'Arkanix Test','2026-11-02 01:24:59','INSERT');
/*!40000 ALTER TABLE `auditoria_videojuegos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biblioteca`
--

DROP TABLE IF EXISTS `biblioteca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biblioteca` (
  `id_usuario` int NOT NULL,
  `id_videojuego` int NOT NULL,
  `fecha_adquisicion` date NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_videojuego`),
  KEY `fk_biblioteca_videojuego` (`id_videojuego`),
  CONSTRAINT `fk_biblioteca_jugador` FOREIGN KEY (`id_usuario`) REFERENCES `jugador` (`id_usuario`),
  CONSTRAINT `fk_biblioteca_videojuego` FOREIGN KEY (`id_videojuego`) REFERENCES `videojuego` (`id_videojuego`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biblioteca`
--

LOCK TABLES `biblioteca` WRITE;
/*!40000 ALTER TABLE `biblioteca` DISABLE KEYS */;
INSERT INTO `biblioteca` VALUES (1,1,'2026-10-02'),(1,2,'2026-10-04'),(2,4,'2026-10-06'),(3,3,'2026-10-08'),(4,6,'2026-10-12'),(5,1,'2026-10-16');
/*!40000 ALTER TABLE `biblioteca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Accion','Juegos centrados en combate y reflejos.'),(2,'Aventura','Juegos basados en exploracion y narrativa.'),(3,'RPG','Juegos de rol con progresion de personajes.'),(4,'Mundo abierto','Juegos con exploracion libre.'),(5,'Supervivencia','Juegos centrados en sobrevivir.'),(6,'Estrategia','Juegos que requieren planificacion.'),(7,'Deportes','Juegos basados en disciplinas deportivas.'),(8,'Simulacion','Juegos que recrean actividades reales.'),(9,'Carreras','Juegos de competicion vehicular.'),(10,'Terror','Juegos enfocados en miedo y suspenso.'),(11,'Multijugador','Juegos con interaccion entre varios jugadores.'),(12,'Plataformas','Juegos basados en saltos y obstaculos.');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `id_compra` int NOT NULL AUTO_INCREMENT,
  `fecha_compra` date NOT NULL,
  `metodo_pago` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id_compra`),
  KEY `fk_compra_jugador` (`id_usuario`),
  CONSTRAINT `fk_compra_jugador` FOREIGN KEY (`id_usuario`) REFERENCES `jugador` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (1,'2026-10-02','Tarjeta de credito',1),(2,'2026-10-06','PayPal',2),(3,'2026-10-08','Tarjeta debito',3),(4,'2026-10-12','PayPal',4),(5,'2026-10-16','Tarjeta de credito',5);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_dlc`
--

DROP TABLE IF EXISTS `compra_dlc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra_dlc` (
  `id_compra` int NOT NULL,
  `id_videojuego` int NOT NULL,
  `nombre_dlc` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio_pagado` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_compra`,`id_videojuego`,`nombre_dlc`),
  KEY `fk_cd_dlc` (`id_videojuego`,`nombre_dlc`),
  CONSTRAINT `fk_cd_compra` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id_compra`),
  CONSTRAINT `fk_cd_dlc` FOREIGN KEY (`id_videojuego`, `nombre_dlc`) REFERENCES `dlc` (`id_videojuego`, `nombre`),
  CONSTRAINT `ck_cd_precio` CHECK ((`precio_pagado` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_dlc`
--

LOCK TABLES `compra_dlc` WRITE;
/*!40000 ALTER TABLE `compra_dlc` DISABLE KEYS */;
INSERT INTO `compra_dlc` VALUES (1,2,'Blood and Wine',19.99),(2,4,'Shadow of the Erdtree',39.99),(3,3,'Ultimate Content',9.99);
/*!40000 ALTER TABLE `compra_dlc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_videojuego`
--

DROP TABLE IF EXISTS `compra_videojuego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra_videojuego` (
  `id_compra` int NOT NULL,
  `id_videojuego` int NOT NULL,
  `precio_pagado` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_compra`,`id_videojuego`),
  KEY `fk_cv_videojuego` (`id_videojuego`),
  CONSTRAINT `fk_cv_compra` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id_compra`),
  CONSTRAINT `fk_cv_videojuego` FOREIGN KEY (`id_videojuego`) REFERENCES `videojuego` (`id_videojuego`),
  CONSTRAINT `ck_cv_precio` CHECK ((`precio_pagado` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_videojuego`
--

LOCK TABLES `compra_videojuego` WRITE;
/*!40000 ALTER TABLE `compra_videojuego` DISABLE KEYS */;
INSERT INTO `compra_videojuego` VALUES (1,1,0.00),(1,2,29.99),(2,4,59.99),(3,3,39.99),(4,6,9.99),(5,1,0.00);
/*!40000 ALTER TABLE `compra_videojuego` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo`
--

DROP TABLE IF EXISTS `demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demo` (
  `id_videojuego` int NOT NULL,
  `descripcion` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  PRIMARY KEY (`id_videojuego`),
  CONSTRAINT `fk_demo_videojuego` FOREIGN KEY (`id_videojuego`) REFERENCES `videojuego` (`id_videojuego`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo`
--

LOCK TABLES `demo` WRITE;
/*!40000 ALTER TABLE `demo` DISABLE KEYS */;
INSERT INTO `demo` VALUES (1,'Version de demostracion para probar las mecanicas de construccion y supervivencia.','2026-01-15'),(2,'Version de prueba para conocer el sistema de combate y exploracion.','2026-02-10'),(4,'Demostracion de las mecanicas de combate y exploracion del mundo.','2026-03-20'),(6,'Version demostrativa para experimentar la jugabilidad y la historia.','2026-04-05');
/*!40000 ALTER TABLE `demo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desarrolladora`
--

DROP TABLE IF EXISTS `desarrolladora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `desarrolladora` (
  `id_desarrolladora` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitio_web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pais` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_desarrolladora`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desarrolladora`
--

LOCK TABLES `desarrolladora` WRITE;
/*!40000 ALTER TABLE `desarrolladora` DISABLE KEYS */;
INSERT INTO `desarrolladora` VALUES (1,'Mojang Studios','https://www.minecraft.net','Suecia'),(2,'CD Projekt Red','https://www.cdprojektred.com','Polonia'),(3,'Rockstar Games','https://www.rockstargames.com','Estados Unidos'),(4,'FromSoftware','https://www.fromsoftware.jp','Japon'),(5,'CD Projekt','https://www.cdprojekt.com','Polonia'),(6,'Ubisoft','https://www.ubisoft.com','Francia'),(7,'Valve','https://www.valvesoftware.com','Estados Unidos'),(8,'Electronic Arts','https://www.ea.com','Estados Unidos');
/*!40000 ALTER TABLE `desarrolladora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlc`
--

DROP TABLE IF EXISTS `dlc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dlc` (
  `id_videojuego` int NOT NULL,
  `nombre` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precio_vigente` decimal(10,2) NOT NULL,
  `fecha_lanzamiento` date DEFAULT NULL,
  PRIMARY KEY (`id_videojuego`,`nombre`),
  CONSTRAINT `fk_dlc_videojuego` FOREIGN KEY (`id_videojuego`) REFERENCES `videojuego` (`id_videojuego`),
  CONSTRAINT `ck_dlc_precio` CHECK ((`precio_vigente` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlc`
--

LOCK TABLES `dlc` WRITE;
/*!40000 ALTER TABLE `dlc` DISABLE KEYS */;
INSERT INTO `dlc` VALUES (1,'The Wild Update','Expansion que incorpora nuevos biomas y criaturas.',0.00,'2022-06-07'),(2,'Blood and Wine','Expansion que agrega una nueva region y misiones.',19.99,'2016-05-31'),(3,'Ultimate Content','Contenido adicional para el videojuego.',9.99,'2018-10-26'),(4,'Shadow of the Erdtree','Expansion con nuevas zonas, enemigos y jefes.',39.99,'2024-06-21');
/*!40000 ALTER TABLE `dlc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugador`
--

DROP TABLE IF EXISTS `jugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugador` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_registro` date NOT NULL,
  `contrasena` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pais_residencia` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `uq_jugador_correo` (`correo`),
  UNIQUE KEY `uq_jugador_nickname` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugador`
--

LOCK TABLES `jugador` WRITE;
/*!40000 ALTER TABLE `jugador` DISABLE KEYS */;
INSERT INTO `jugador` VALUES (1,'Carlos','Rodriguez','2026-10-01','HASH_JUGADOR_001','carlos@gmail.com','CarlosR','Colombia'),(2,'Laura','Martinez','2026-10-03','HASH_JUGADOR_002','laura@gmail.com','LauraM','Mexico'),(3,'Andres','Gomez','2026-10-05','HASH_JUGADOR_003','andres@gmail.com','AndresG','Argentina'),(4,'Sofia','Ramirez','2026-10-10','HASH_JUGADOR_004','sofia@gmail.com','SofiaR','España'),(5,'Daniel','Torres','2026-10-15','HASH_JUGADOR_005','daniel@gmail.com','DanielT','Colombia');
/*!40000 ALTER TABLE `jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugador_logro`
--

DROP TABLE IF EXISTS `jugador_logro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugador_logro` (
  `id_usuario` int NOT NULL,
  `id_videojuego` int NOT NULL,
  `nombre_logro` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_desbloqueo` date NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_videojuego`,`nombre_logro`),
  KEY `fk_jugador_logro_logro` (`id_videojuego`,`nombre_logro`),
  CONSTRAINT `fk_jugador_logro_jugador` FOREIGN KEY (`id_usuario`) REFERENCES `jugador` (`id_usuario`),
  CONSTRAINT `fk_jugador_logro_logro` FOREIGN KEY (`id_videojuego`, `nombre_logro`) REFERENCES `logro` (`id_videojuego`, `nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugador_logro`
--

LOCK TABLES `jugador_logro` WRITE;
/*!40000 ALTER TABLE `jugador_logro` DISABLE KEYS */;
INSERT INTO `jugador_logro` VALUES (1,1,'Edad de piedra','2026-10-04'),(1,1,'Primeros pasos','2026-10-03'),(1,2,'Lobo blanco','2026-10-05'),(2,4,'Sin miedo','2026-10-07'),(3,3,'Forajido','2026-10-09'),(4,6,'Resistencia','2026-10-13'),(5,1,'Diamantes','2026-10-17');
/*!40000 ALTER TABLE `jugador_logro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logro`
--

DROP TABLE IF EXISTS `logro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logro` (
  `id_videojuego` int NOT NULL,
  `nombre` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_videojuego`,`nombre`),
  CONSTRAINT `fk_logro_videojuego` FOREIGN KEY (`id_videojuego`) REFERENCES `videojuego` (`id_videojuego`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logro`
--

LOCK TABLES `logro` WRITE;
/*!40000 ALTER TABLE `logro` DISABLE KEYS */;
INSERT INTO `logro` VALUES (1,'Diamantes','Conseguir diamantes por primera vez.'),(1,'Edad de piedra','Conseguir herramientas fabricadas con piedra.'),(1,'Primeros pasos','Fabricar una mesa de trabajo por primera vez.'),(2,'Cazador experto','Derrotar una criatura peligrosa.'),(2,'Lobo blanco','Completar una mision principal de la historia.'),(3,'Explorador','Descubrir diferentes ubicaciones del mapa.'),(3,'Forajido','Completar una actividad criminal.'),(4,'Guerrero','Mejorar un arma por primera vez.'),(4,'Sin miedo','Derrotar al primer jefe principal.'),(5,'Vikingo','Completar una incursión.'),(6,'Fisica aplicada','Utilizar objetos del entorno para resolver un desafio.'),(6,'Resistencia','Sobrevivir a un enfrentamiento contra enemigos.');
/*!40000 ALTER TABLE `logro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicadora`
--

DROP TABLE IF EXISTS `publicadora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicadora` (
  `id_publicadora` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitio_web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pais` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_publicadora`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicadora`
--

LOCK TABLES `publicadora` WRITE;
/*!40000 ALTER TABLE `publicadora` DISABLE KEYS */;
INSERT INTO `publicadora` VALUES (1,'Xbox Game Studios','https://www.xbox.com','Estados Unidos'),(2,'CD Projekt','https://www.cdprojekt.com','Polonia'),(3,'Rockstar Games','https://www.rockstargames.com','Estados Unidos'),(4,'Bandai Namco Entertainment','https://www.bandainamcoent.com','Japon'),(5,'Ubisoft','https://www.ubisoft.com','Francia'),(6,'Electronic Arts','https://www.ea.com','Estados Unidos'),(7,'Valve','https://www.valvesoftware.com','Estados Unidos');
/*!40000 ALTER TABLE `publicadora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resena`
--

DROP TABLE IF EXISTS `resena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resena` (
  `id_usuario` int NOT NULL,
  `id_videojuego` int NOT NULL,
  `fecha_resena` date NOT NULL,
  `calificacion` int NOT NULL,
  `comentario` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_usuario`,`id_videojuego`),
  CONSTRAINT `fk_resena_biblioteca` FOREIGN KEY (`id_usuario`, `id_videojuego`) REFERENCES `biblioteca` (`id_usuario`, `id_videojuego`),
  CONSTRAINT `ck_resena_calificacion` CHECK ((`calificacion` between 1 and 5))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resena`
--

LOCK TABLES `resena` WRITE;
/*!40000 ALTER TABLE `resena` DISABLE KEYS */;
INSERT INTO `resena` VALUES (1,1,'2026-10-05',5,'Excelente juego, ofrece mucha libertad para construir y explorar.'),(1,2,'2026-10-07',5,'Una historia increible, con misiones interesantes y un mundo muy completo.'),(2,4,'2026-10-09',5,'Un juego desafiante, con buenos escenarios y combates emocionantes.'),(3,3,'2026-10-11',5,'Un mundo abierto impresionante y una historia muy bien desarrollada.'),(4,6,'2026-10-14',4,'Un clasico de los videojuegos, con una excelente jugabilidad.'),(5,1,'2026-10-18',4,'Es divertido jugar con amigos y explorar diferentes mundos.');
/*!40000 ALTER TABLE `resena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sesion_juego`
--

DROP TABLE IF EXISTS `sesion_juego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sesion_juego` (
  `id_usuario` int NOT NULL,
  `id_videojuego` int NOT NULL,
  `numero_sesion` int NOT NULL,
  `duracion_minutos` int NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_videojuego`,`numero_sesion`),
  CONSTRAINT `fk_sesion_biblioteca` FOREIGN KEY (`id_usuario`, `id_videojuego`) REFERENCES `biblioteca` (`id_usuario`, `id_videojuego`),
  CONSTRAINT `ck_sesion_duracion` CHECK ((`duracion_minutos` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sesion_juego`
--

LOCK TABLES `sesion_juego` WRITE;
/*!40000 ALTER TABLE `sesion_juego` DISABLE KEYS */;
INSERT INTO `sesion_juego` VALUES (1,1,1,120,'2026-10-03'),(1,1,2,90,'2026-10-04'),(1,2,1,150,'2026-10-05'),(2,4,1,180,'2026-10-07'),(2,4,2,95,'2026-10-08'),(3,3,1,210,'2026-10-09'),(4,6,1,75,'2026-10-13'),(4,6,2,110,'2026-10-15'),(5,1,1,60,'2026-10-17'),(5,1,2,100,'2026-10-18');
/*!40000 ALTER TABLE `sesion_juego` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sistem_video`
--

DROP TABLE IF EXISTS `sistem_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sistem_video` (
  `id_videojuego` int NOT NULL,
  `id_sistemaoperativo` int NOT NULL,
  PRIMARY KEY (`id_videojuego`,`id_sistemaoperativo`),
  KEY `fk_sistem_video_so` (`id_sistemaoperativo`),
  CONSTRAINT `fk_sistem_video_so` FOREIGN KEY (`id_sistemaoperativo`) REFERENCES `sistema_operativo` (`id_sistemaoperativo`),
  CONSTRAINT `fk_sistem_video_videojuego` FOREIGN KEY (`id_videojuego`) REFERENCES `videojuego` (`id_videojuego`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sistem_video`
--

LOCK TABLES `sistem_video` WRITE;
/*!40000 ALTER TABLE `sistem_video` DISABLE KEYS */;
INSERT INTO `sistem_video` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(1,2),(2,2),(4,2),(6,2),(1,3),(6,3);
/*!40000 ALTER TABLE `sistem_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sistema_operativo`
--

DROP TABLE IF EXISTS `sistema_operativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sistema_operativo` (
  `id_sistemaoperativo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_sistemaoperativo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sistema_operativo`
--

LOCK TABLES `sistema_operativo` WRITE;
/*!40000 ALTER TABLE `sistema_operativo` DISABLE KEYS */;
INSERT INTO `sistema_operativo` VALUES (1,'Windows'),(2,'Linux'),(3,'macOS');
/*!40000 ALTER TABLE `sistema_operativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vide_cate`
--

DROP TABLE IF EXISTS `vide_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vide_cate` (
  `id_videojuego` int NOT NULL,
  `id_categoria` int NOT NULL,
  PRIMARY KEY (`id_videojuego`,`id_categoria`),
  KEY `fk_vide_cate_categoria` (`id_categoria`),
  CONSTRAINT `fk_vide_cate_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  CONSTRAINT `fk_vide_cate_videojuego` FOREIGN KEY (`id_videojuego`) REFERENCES `videojuego` (`id_videojuego`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vide_cate`
--

LOCK TABLES `vide_cate` WRITE;
/*!40000 ALTER TABLE `vide_cate` DISABLE KEYS */;
INSERT INTO `vide_cate` VALUES (3,1),(4,1),(5,1),(6,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(2,3),(4,3),(5,3),(1,4),(2,4),(3,4),(1,5);
/*!40000 ALTER TABLE `vide_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videojuego`
--

DROP TABLE IF EXISTS `videojuego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videojuego` (
  `id_videojuego` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_lanzamiento` date DEFAULT NULL,
  `estado` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clasificacion_edad` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_administrador` int NOT NULL,
  `id_desarrolladora` int NOT NULL,
  `id_publicadora` int NOT NULL,
  `id_videojuego_original` int DEFAULT NULL,
  PRIMARY KEY (`id_videojuego`),
  KEY `fk_videojuego_administrador` (`id_administrador`),
  KEY `fk_videojuego_desarrolladora` (`id_desarrolladora`),
  KEY `fk_videojuego_original` (`id_videojuego_original`),
  KEY `fk_videojuego_publicadora` (`id_publicadora`),
  CONSTRAINT `fk_videojuego_administrador` FOREIGN KEY (`id_administrador`) REFERENCES `administrador` (`id_usuario`),
  CONSTRAINT `fk_videojuego_desarrolladora` FOREIGN KEY (`id_desarrolladora`) REFERENCES `desarrolladora` (`id_desarrolladora`),
  CONSTRAINT `fk_videojuego_original` FOREIGN KEY (`id_videojuego_original`) REFERENCES `videojuego` (`id_videojuego`),
  CONSTRAINT `fk_videojuego_publicadora` FOREIGN KEY (`id_publicadora`) REFERENCES `publicadora` (`id_publicadora`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videojuego`
--

LOCK TABLES `videojuego` WRITE;
/*!40000 ALTER TABLE `videojuego` DISABLE KEYS */;
INSERT INTO `videojuego` VALUES (1,'Minecraft','Videojuego de construccion y supervivencia en un mundo abierto.','2011-11-18','Disponible','PEGI 7',1,1,1,NULL),(2,'The Witcher 3','Juego de rol ambientado en un mundo de fantasia.','2015-05-19','Disponible','PEGI 18',1,2,2,NULL),(3,'Red Dead Redemption 2','Videojuego de accion y mundo abierto ambientado en el viejo oeste.','2018-10-26','Disponible','PEGI 18',1,3,3,NULL),(4,'Elden Ring','Videojuego de rol y accion en un mundo de fantasia.','2022-02-25','Disponible','PEGI 16',1,4,4,NULL),(5,'Assassins Creed Valhalla','Juego de accion y aventura ambientado en la era vikinga.','2020-11-10','Disponible','PEGI 18',1,6,5,NULL),(6,'Half-Life 2','Videojuego de disparos en primera persona.','2004-11-16','Disponible','PEGI 16',1,7,7,NULL);
/*!40000 ALTER TABLE `videojuego` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_videojuego_no_autoversion_insert` AFTER INSERT ON `videojuego` FOR EACH ROW BEGIN
    IF NEW.id_videojuego_original IS NOT NULL
       AND NEW.id_videojuego_original = NEW.id_videojuego THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Un videojuego no puede ser su propia version';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `registrar_videojuego` AFTER INSERT ON `videojuego` FOR EACH ROW BEGIN
    INSERT INTO auditoria_videojuegos (
        id_videojuego,
        titulo,
        fecha_registro,
        accion
    )
    VALUES (
        NEW.id_videojuego,
        NEW.titulo,
        NOW(),
        'INSERT'
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_videojuego_no_autoversion_update` BEFORE UPDATE ON `videojuego` FOR EACH ROW BEGIN
    IF NEW.id_videojuego_original IS NOT NULL
       AND NEW.id_videojuego_original = NEW.id_videojuego THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Un videojuego no puede ser su propia version';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `registrar_modificacion_videojuego` AFTER UPDATE ON `videojuego` FOR EACH ROW BEGIN
    INSERT INTO auditoria_modificaciones (
        id_videojuego,
        titulo_anterior,
        titulo_nuevo,
        fecha_modificacion,
        accion
    )
    VALUES (
        OLD.id_videojuego,
        OLD.titulo,
        NEW.titulo,
        NOW(),
        'UPDATE'
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `registrar_eliminacion_videojuego` AFTER DELETE ON `videojuego` FOR EACH ROW BEGIN
    INSERT INTO auditoria_eliminaciones (
        id_videojuego,
        titulo_eliminado,
        fecha_eliminacion,
        accion
    )
    VALUES (
        OLD.id_videojuego,
        OLD.titulo,
        NOW(),
        'DELETE'
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'arkanix'
--

--
-- Dumping routines for database 'arkanix'
--
/*!50003 DROP FUNCTION IF EXISTS `gasto_total_jugador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `gasto_total_jugador`(
    p_id_usuario INT
) RETURNS decimal(10,2)
    READS SQL DATA
BEGIN
    DECLARE total_videojuegos DECIMAL(10,2);
    DECLARE total_dlc DECIMAL(10,2);

    SELECT COALESCE(SUM(cv.precio_pagado), 0)
    INTO total_videojuegos
    FROM compra c
    INNER JOIN compra_videojuego cv
        ON c.id_compra = cv.id_compra
    WHERE c.id_usuario = p_id_usuario;

    SELECT COALESCE(SUM(cd.precio_pagado), 0)
    INTO total_dlc
    FROM compra c
    INNER JOIN compra_dlc cd
        ON c.id_compra = cd.id_compra
    WHERE c.id_usuario = p_id_usuario;

    RETURN total_videojuegos + total_dlc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `total_videojuegos_jugador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `total_videojuegos_jugador`(
    p_id_usuario INT
) RETURNS int
    READS SQL DATA
BEGIN
    DECLARE cantidad INT;

    SELECT COUNT(*)
    INTO cantidad
    FROM biblioteca
    WHERE id_usuario = p_id_usuario;

    RETURN cantidad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultar_compras_jugador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_compras_jugador`(
    IN p_id_usuario INT
)
BEGIN
    SELECT
        j.nickname,
        c.id_compra,
        c.fecha_compra,
        c.metodo_pago,
        v.titulo AS videojuego,
        cv.precio_pagado
    FROM jugador j
    INNER JOIN compra c
        ON j.id_usuario = c.id_usuario
    INNER JOIN compra_videojuego cv
        ON c.id_compra = cv.id_compra
    INNER JOIN videojuego v
        ON cv.id_videojuego = v.id_videojuego
    WHERE j.id_usuario = p_id_usuario
    ORDER BY c.fecha_compra DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultar_dlc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_dlc`(
    IN p_id_videojuego INT
)
BEGIN
    SELECT
        v.titulo AS videojuego,
        d.nombre AS nombre_dlc,
        d.descripcion,
        d.precio_vigente,
        d.fecha_lanzamiento
    FROM videojuego v
    INNER JOIN dlc d
        ON v.id_videojuego = d.id_videojuego
    WHERE v.id_videojuego = p_id_videojuego
    ORDER BY d.fecha_lanzamiento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultar_jugador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_jugador`(
    IN p_id_usuario INT
)
BEGIN
    SELECT
        j.id_usuario,
        j.nombre,
        j.apellido,
        j.nickname,
        j.correo,
        v.id_videojuego,
        v.titulo,
        b.fecha_adquisicion
    FROM jugador j
    LEFT JOIN biblioteca b
        ON j.id_usuario = b.id_usuario
    LEFT JOIN videojuego v
        ON b.id_videojuego = v.id_videojuego
    WHERE j.id_usuario = p_id_usuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultar_videojuegos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_videojuegos`()
BEGIN
    SELECT
        v.id_videojuego,
        v.titulo,
        v.fecha_lanzamiento,
        v.estado,
        d.nombre AS desarrolladora,
        p.nombre AS publicadora
    FROM videojuego v
    INNER JOIN desarrolladora d
        ON v.id_desarrolladora = d.id_desarrolladora
    INNER JOIN publicadora p
        ON v.id_publicadora = p.id_publicadora
    ORDER BY v.titulo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-02  1:59:37

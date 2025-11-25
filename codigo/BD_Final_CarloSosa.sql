-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_prueba
-- ------------------------------------------------------
-- Server version	8.4.3

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
-- Table structure for table `tbl_almacen`
--

DROP TABLE IF EXISTS `tbl_almacen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_almacen` (
  `Cmp_Id_Almacen` int NOT NULL AUTO_INCREMENT,
  `Cmp_Nombre_Almacen` varchar(100) NOT NULL,
  PRIMARY KEY (`Cmp_Id_Almacen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_almacen`
--

LOCK TABLES `tbl_almacen` WRITE;
/*!40000 ALTER TABLE `tbl_almacen` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_almacen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_aplicacion`
--

DROP TABLE IF EXISTS `tbl_aplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_aplicacion` (
  `Pk_Id_Aplicacion` int NOT NULL,
  `Fk_Id_Reporte_Aplicacion` int DEFAULT NULL,
  `Cmp_Nombre_Aplicacion` varchar(50) DEFAULT NULL,
  `Cmp_Descripcion_Aplicacion` varchar(50) DEFAULT NULL,
  `Cmp_Estado_Aplicacion` bit(1) NOT NULL,
  PRIMARY KEY (`Pk_Id_Aplicacion`),
  KEY `Fk_Aplicacion_Reporte` (`Fk_Id_Reporte_Aplicacion`),
  CONSTRAINT `Fk_Aplicacion_Reporte` FOREIGN KEY (`Fk_Id_Reporte_Aplicacion`) REFERENCES `tbl_reportes` (`Pk_Id_Reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_aplicacion`
--

LOCK TABLES `tbl_aplicacion` WRITE;
/*!40000 ALTER TABLE `tbl_aplicacion` DISABLE KEYS */;
INSERT INTO `tbl_aplicacion` VALUES (1,1,'Gestion de empleado','Se gestionan los empleados del hotel',_binary ''),(2,1,'pepe','pepe pepa',_binary ''),(3,NULL,'Gestion De Empleados','prueba permisos',_binary ''),(5,NULL,'Administracion','Formularios de administracion',_binary ''),(9,NULL,'prueba','aaaaa',_binary ''),(10,1,'Cesar Estrada Elias','cesar el mero mero',_binary ''),(12,NULL,'','',_binary ''),(15,NULL,'Vacio','asd',_binary ''),(16,NULL,'asd','asd',_binary ''),(22,NULL,'Administracion','a',_binary '\0'),(99,1,'Rockstar API','Rockstar API',_binary ''),(100,NULL,'Pruebaap','Prueba para MdA',_binary ''),(301,NULL,'Empleados','Control de empleados de la hoteleria',_binary ''),(302,NULL,'Usuarios','Control de usuarios de empleados',_binary ''),(303,1,'Perfiles','Perfiles que se asignan a usuarios',_binary ''),(304,NULL,'Modulos','Mantenimiento de modulos',_binary ''),(305,NULL,'Aplicacion','Mantenimiento de aplicaciones',_binary ''),(306,NULL,'Asig Aplicacion Usuario','Asigna permisos a usuarios',_binary ''),(307,NULL,'Asig aplicacion Perfil','Asigna permisos a perfiles',_binary ''),(308,NULL,'Asig Perfiles','Asigna los perfiles a usuarios',_binary ''),(309,NULL,'Bitacora','Da acceso a bitacora',_binary ''),(310,NULL,'Prueba25','prueba de estandar',_binary ''),(342,NULL,'Biología','Ver animales y estudiarlos',_binary ''),(424,NULL,'Caries','Ver los dientes y la boca en general',_binary ''),(483,NULL,'Intento2','Ver si se borra',_binary ''),(800,1,'PruebaVacío','Prueba para uso de tilde',_binary ''),(865,NULL,'Quimica','Ver quimicos y bacterias',_binary ''),(2222,NULL,'hola','mundo',_binary '\0'),(3042,NULL,'Tipo Habitación','TipoHabitacion',_binary ''),(3043,NULL,'Habitacion','Cuartos Hotel',_binary ''),(3044,NULL,'Servicios Habitaciones','ServiciosHabitaciones',_binary ''),(3045,NULL,'Estadia','Estadia Huesped',_binary ''),(3046,NULL,'Asignacion Servicios Cuartos','Asignacion de servicios',_binary ''),(3401,NULL,'Huespedes','aplicacion de huespedes',_binary ''),(3402,NULL,'Check In','Registro de entrada de huespedes',_binary ''),(3403,NULL,'Check Out','Registra salida de huespedes',_binary ''),(3404,NULL,'Area','Movimientos financieros',_binary ''),(3405,NULL,'Detalle Folio','Recopilacion de informacion de folio',_binary ''),(3412,NULL,'Promociones','Promociones',_binary ''),(3413,NULL,'Cierre Diario','Cierre',_binary ''),(5000,NULL,'prueba de permisos','aaa',_binary ''),(9000,NULL,'AppPrueba','Prueba',_binary ''),(50000,NULL,'prueba permisos','yo nunca vi tv',_binary '\0');
/*!40000 ALTER TABLE `tbl_aplicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_area`
--

DROP TABLE IF EXISTS `tbl_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_area` (
  `Pk_Id_Area` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Folio` int DEFAULT NULL,
  `Cmp_Nombre_Area` varchar(100) DEFAULT NULL,
  `Cmp_Descripcion` varchar(255) DEFAULT NULL,
  `Cmp_Tipo_Movimiento` enum('Cargo','Abono') DEFAULT NULL,
  `Cmp_Monto` decimal(10,2) DEFAULT NULL,
  `Cmp_Fecha_Movimiento` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Pk_Id_Area`),
  KEY `Fk_Id_Folio` (`Fk_Id_Folio`),
  CONSTRAINT `Tbl_Area_ibfk_1` FOREIGN KEY (`Fk_Id_Folio`) REFERENCES `tbl_folio` (`Pk_Id_Folio`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_area`
--

LOCK TABLES `tbl_area` WRITE;
/*!40000 ALTER TABLE `tbl_area` DISABLE KEYS */;
INSERT INTO `tbl_area` VALUES (1,1,'Restauruante','comida','Cargo',100.00,'2025-11-13 16:10:25'),(2,5,'Pago adelantado','abono','Abono',500.00,'2025-11-14 16:11:48'),(3,2,'Pago adelantado','abono','Abono',100.00,'2025-11-14 16:11:48'),(4,5,'Restauruante','comida','Cargo',100.00,'2025-11-13 16:10:25'),(5,5,'Restauruante','Comida','Cargo',550.20,'2025-11-14 18:16:42'),(6,5,'Pago','Pago Adelantado','Abono',100.00,'2025-11-14 18:17:55'),(7,5,'Gestión de habitaciones','Cobro de estadía - Noche 1','Cargo',950.00,'2025-11-13 00:00:00'),(8,5,'Gestión de habitaciones','Cobro de estadía - Noche 2','Cargo',950.00,'2025-11-14 00:00:00'),(9,5,'Gestión de habitaciones','Cobro de estadía - Noche 3','Cargo',950.00,'2025-11-15 00:00:00'),(10,5,'Gestión de habitaciones','Cobro de estadía - Noche 4','Cargo',950.00,'2025-11-16 00:00:00'),(11,6,'Restauruante','Comida','Cargo',500.00,'2025-11-20 19:07:28'),(12,6,'Pago','Pago Adelantado','Abono',100.00,'2025-11-21 19:08:23'),(13,6,'Gestión de habitaciones','Cobro de estadía - Noche 1','Cargo',550.00,'2025-11-20 00:00:00'),(14,6,'Gestión de habitaciones','Cobro de estadía - Noche 2','Cargo',550.00,'2025-11-21 00:00:00'),(15,6,'Gestión de habitaciones','Cobro de estadía - Noche 3','Cargo',550.00,'2025-11-22 00:00:00'),(16,6,'Impuesto de turismo','Cargo por visitante extranjero','Cargo',165.00,'2025-11-09 01:09:33'),(17,7,'Restauruante','comida','Cargo',100.00,'2025-11-21 19:24:20'),(18,7,'pago','pago adelantado','Cargo',100.00,'2025-11-22 19:25:45'),(19,7,'Gestión de habitaciones','Cobro de estadía - Noche 1','Cargo',550.00,'2025-11-21 00:00:00'),(20,7,'Gestión de habitaciones','Cobro de estadía - Noche 2','Cargo',550.00,'2025-11-22 00:00:00'),(21,7,'Impuesto de turismo','Cargo por visitante extranjero','Cargo',110.00,'2025-11-09 01:26:35'),(22,8,'Restauruante','comida','Cargo',500.00,'2025-11-21 19:37:35'),(23,8,'Pago','Pago adelantada','Abono',100.00,'2025-11-21 19:38:13'),(24,8,'Gestión de habitaciones','Cobro de estadía - Noche 1','Cargo',550.00,'2025-11-20 00:00:00'),(25,8,'Gestión de habitaciones','Cobro de estadía - Noche 2','Cargo',550.00,'2025-11-21 00:00:00'),(26,8,'Gestión de habitaciones','Cobro de estadía - Noche 3','Cargo',550.00,'2025-11-22 00:00:00'),(27,8,'Impuesto de turismo','Cargo por visitante extranjero','Cargo',165.00,'2025-11-09 01:39:04'),(28,4,'Restauruante','comida','Cargo',100.00,'2025-11-21 19:43:25'),(29,4,'Restauruante','cargo','Cargo',100.00,'2025-11-21 19:45:54'),(30,10,'Restauruante','Banquete','Cargo',500.00,'2025-11-11 21:52:22'),(31,9,'Gestión de habitaciones','Cobro de estadía - Noche 1','Cargo',550.00,'2025-11-10 00:00:00'),(32,9,'Gestión de habitaciones','Cobro de estadía - Noche 2','Cargo',550.00,'2025-11-11 00:00:00'),(33,9,'Gestión de habitaciones','Cobro de estadía - Noche 3','Cargo',550.00,'2025-11-12 00:00:00'),(34,9,'Gestión de habitaciones','Cobro de estadía - Noche 4','Cargo',550.00,'2025-11-13 00:00:00'),(35,9,'Gestión de habitaciones','Cobro de estadía - Noche 5','Cargo',550.00,'2025-11-14 00:00:00'),(36,9,'Gestión de habitaciones','Cobro de estadía - Noche 6','Cargo',550.00,'2025-11-15 00:00:00'),(37,9,'Gestión de habitaciones','Cobro de estadía - Noche 7','Cargo',550.00,'2025-11-16 00:00:00'),(38,9,'Gestión de habitaciones','Cobro de estadía - Noche 8','Cargo',550.00,'2025-11-17 00:00:00'),(39,10,'Gestión de habitaciones','Cobro de estadía - Noche 1','Cargo',950.00,'2025-11-10 00:00:00'),(40,10,'Gestión de habitaciones','Cobro de estadía - Noche 2','Cargo',950.00,'2025-11-11 00:00:00'),(41,10,'Gestión de habitaciones','Cobro de estadía - Noche 3','Cargo',950.00,'2025-11-12 00:00:00'),(42,10,'Gestión de habitaciones','Cobro de estadía - Noche 4','Cargo',950.00,'2025-11-13 00:00:00'),(43,10,'Gestión de habitaciones','Cobro de estadía - Noche 5','Cargo',950.00,'2025-11-14 00:00:00'),(44,10,'Gestión de habitaciones','Cobro de estadía - Noche 6','Cargo',950.00,'2025-11-15 00:00:00'),(45,10,'Gestión de habitaciones','Cobro de estadía - Noche 7','Cargo',950.00,'2025-11-16 00:00:00'),(46,10,'Gestión de habitaciones','Cobro de estadía - Noche 8','Cargo',950.00,'2025-11-17 00:00:00'),(47,10,'Gestión de habitaciones','Cobro de estadía - Noche 9','Cargo',950.00,'2025-11-18 00:00:00'),(48,10,'Gestión de habitaciones','Cobro de estadía - Noche 10','Cargo',950.00,'2025-11-19 00:00:00'),(49,10,'Gestión de habitaciones','Cobro de estadía - Noche 11','Cargo',950.00,'2025-11-20 00:00:00'),(50,10,'Gestión de habitaciones','Cobro de estadía - Noche 12','Cargo',950.00,'2025-11-21 00:00:00'),(51,10,'Gestión de habitaciones','Cobro de estadía - Noche 13','Cargo',950.00,'2025-11-22 00:00:00'),(52,10,'Gestión de habitaciones','Cobro de estadía - Noche 14','Cargo',950.00,'2025-11-23 00:00:00'),(53,10,'Gestión de habitaciones','Cobro de estadía - Noche 15','Cargo',950.00,'2025-11-24 00:00:00'),(54,11,'Restauruante','buffet','Cargo',100.00,'2025-11-15 10:59:51'),(55,11,'Gestión de habitaciones','Cobro de estadía - Noche 1','Cargo',550.00,'2025-11-15 00:00:00'),(56,15,'Restauruante','Comida','Cargo',100.00,'2025-11-10 12:49:02'),(57,15,'Pago','Pago Adelantado','Abono',100.00,'2025-11-10 12:49:53'),(58,15,'Gestión de habitaciones','Cobro de estadía - Noche 1','Cargo',550.00,'2025-11-09 00:00:00'),(59,15,'Gestión de habitaciones','Cobro de estadía - Noche 2','Cargo',550.00,'2025-11-10 00:00:00'),(60,15,'Gestión de habitaciones','Cobro de estadía - Noche 3','Cargo',550.00,'2025-11-11 00:00:00'),(61,15,'Impuesto de turismo','Cargo por visitante extranjero','Cargo',165.00,'2025-11-09 18:51:36'),(62,19,'Gestión de habitaciones','Cobro de estadía - Noche 1','Cargo',1250.00,'2025-11-09 00:00:00'),(63,19,'Gestión de habitaciones','Cobro de estadía - Noche 2','Cargo',1250.00,'2025-11-10 00:00:00'),(64,20,'Restauruante','Comida','Cargo',100.00,'2025-11-12 22:44:28'),(65,20,'Gestión de habitaciones','Cobro de estadía - Noche 1','Cargo',950.00,'2025-11-12 00:00:00'),(66,20,'Gestión de habitaciones','Cobro de estadía - Noche 2','Cargo',950.00,'2025-11-13 00:00:00'),(67,20,'Gestión de habitaciones','Cobro de estadía - Noche 3','Cargo',950.00,'2025-11-14 00:00:00'),(68,18,'Gestión de habitaciones','Cobro de estadía - Noche 12','Cargo',950.00,'2025-11-21 00:00:00'),(69,25,'Restaurante','Buffet','Cargo',100.00,'2025-11-14 18:57:59'),(70,25,'Gestión de habitaciones','Cobro de estadía - Noche 1','Cargo',412.50,'2025-11-01 00:00:00'),(71,25,'Gestión de habitaciones','Cobro de estadía - Noche 2','Cargo',412.50,'2025-11-02 00:00:00'),(72,25,'Gestión de habitaciones','Cobro de estadía - Noche 3','Cargo',412.50,'2025-11-03 00:00:00'),(73,25,'Gestión de habitaciones','Cobro de estadía - Noche 4','Cargo',412.50,'2025-11-04 00:00:00'),(74,25,'Gestión de habitaciones','Cobro de estadía - Noche 5','Cargo',412.50,'2025-11-05 00:00:00'),(75,25,'Gestión de habitaciones','Cobro de estadía - Noche 6','Cargo',412.50,'2025-11-06 00:00:00'),(76,25,'Gestión de habitaciones','Cobro de estadía - Noche 7','Cargo',412.50,'2025-11-07 00:00:00'),(77,25,'Gestión de habitaciones','Cobro de estadía - Noche 8','Cargo',412.50,'2025-11-08 00:00:00'),(78,25,'Gestión de habitaciones','Cobro de estadía - Noche 9','Cargo',412.50,'2025-11-09 00:00:00'),(79,25,'Gestión de habitaciones','Cobro de estadía - Noche 10','Cargo',412.50,'2025-11-10 00:00:00'),(80,25,'Gestión de habitaciones','Cobro de estadía - Noche 11','Cargo',412.50,'2025-11-11 00:00:00'),(81,25,'Gestión de habitaciones','Cobro de estadía - Noche 12','Cargo',412.50,'2025-11-12 00:00:00'),(82,27,'Restauruante','Buffet','Cargo',100.00,'2025-11-15 20:17:31'),(83,27,'Gestión de habitaciones','Cobro de estadía - Noche 1','Cargo',1250.00,'2025-11-15 00:00:00'),(84,27,'Gestión de habitaciones','Cobro de estadía - Noche 2','Cargo',1250.00,'2025-11-16 00:00:00'),(85,27,'Gestión de habitaciones','Cobro de estadía - Noche 3','Cargo',1250.00,'2025-11-17 00:00:00'),(86,27,'Gestión de habitaciones','Cobro de estadía - Noche 4','Cargo',1250.00,'2025-11-18 00:00:00'),(87,27,'Gestión de habitaciones','Cobro de estadía - Noche 5','Cargo',1250.00,'2025-11-19 00:00:00'),(88,27,'Gestión de habitaciones','Cobro de estadía - Noche 6','Cargo',1250.00,'2025-11-20 00:00:00'),(89,27,'Impuesto de turismo','Cargo por visitante extranjero','Cargo',750.00,'2025-11-14 02:52:10'),(90,28,'Lavanderia','Uso de lavadora','Cargo',500.00,'2025-11-15 08:12:12'),(91,28,'Gestión de habitaciones','Cobro de estadía - Noche 1','Cargo',800.00,'2025-11-14 00:00:00'),(92,28,'Gestión de habitaciones','Cobro de estadía - Noche 2','Cargo',800.00,'2025-11-15 00:00:00'),(93,28,'Impuesto de turismo','Cargo por visitante extranjero','Cargo',160.00,'2025-11-14 14:15:11');
/*!40000 ALTER TABLE `tbl_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_asignacion_habitacion_servicio`
--

DROP TABLE IF EXISTS `tbl_asignacion_habitacion_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_asignacion_habitacion_servicio` (
  `Fk_ID_Habitacion` int NOT NULL,
  `Fk_Id_Servicio` int NOT NULL,
  PRIMARY KEY (`Fk_ID_Habitacion`,`Fk_Id_Servicio`),
  KEY `Fk_Id_Servicio` (`Fk_Id_Servicio`),
  CONSTRAINT `Tbl_Asignacion_habitacion_Servicio_ibfk_1` FOREIGN KEY (`Fk_ID_Habitacion`) REFERENCES `tbl_habitaciones` (`PK_ID_Habitaciones`),
  CONSTRAINT `Tbl_Asignacion_habitacion_Servicio_ibfk_2` FOREIGN KEY (`Fk_Id_Servicio`) REFERENCES `tbl_servicios_habitacion` (`PK_ID_Servicio_habitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_asignacion_habitacion_servicio`
--

LOCK TABLES `tbl_asignacion_habitacion_servicio` WRITE;
/*!40000 ALTER TABLE `tbl_asignacion_habitacion_servicio` DISABLE KEYS */;
INSERT INTO `tbl_asignacion_habitacion_servicio` VALUES (2,1),(3,1),(4,1),(6,1),(2,2),(3,2),(4,2),(6,2),(7,2),(4,4),(7,4);
/*!40000 ALTER TABLE `tbl_asignacion_habitacion_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_asignacion_modulo_aplicacion`
--

DROP TABLE IF EXISTS `tbl_asignacion_modulo_aplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_asignacion_modulo_aplicacion` (
  `Fk_Id_Modulo` int NOT NULL,
  `Fk_Id_Aplicacion` int NOT NULL,
  PRIMARY KEY (`Fk_Id_Modulo`,`Fk_Id_Aplicacion`),
  KEY `Fk_AsigAplicacion` (`Fk_Id_Aplicacion`),
  CONSTRAINT `Fk_AsigAplicacion` FOREIGN KEY (`Fk_Id_Aplicacion`) REFERENCES `tbl_aplicacion` (`Pk_Id_Aplicacion`),
  CONSTRAINT `Fk_AsigModulo` FOREIGN KEY (`Fk_Id_Modulo`) REFERENCES `tbl_modulo` (`Pk_Id_Modulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_asignacion_modulo_aplicacion`
--

LOCK TABLES `tbl_asignacion_modulo_aplicacion` WRITE;
/*!40000 ALTER TABLE `tbl_asignacion_modulo_aplicacion` DISABLE KEYS */;
INSERT INTO `tbl_asignacion_modulo_aplicacion` VALUES (2,1),(1,2),(3,3),(2,5),(9,9),(1,10),(5,12),(5,15),(10,16),(4,22),(99,99),(96,100),(4,301),(4,302),(4,303),(4,304),(4,305),(4,306),(4,307),(4,308),(4,309),(1,310),(1,342),(543,424),(435,483),(1,800),(10,865),(4,2222),(6,3042),(6,3043),(6,3044),(6,3045),(6,3046),(6,3401),(6,3402),(6,3403),(6,3404),(6,3405),(6,3412),(6,3413),(1,9000),(9,50000);
/*!40000 ALTER TABLE `tbl_asignacion_modulo_aplicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_asignar_perfil_cliente`
--

DROP TABLE IF EXISTS `tbl_asignar_perfil_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_asignar_perfil_cliente` (
  `Fk_Id_Perfil` int NOT NULL,
  `Fk_Id_Cliente` int NOT NULL,
  PRIMARY KEY (`Fk_Id_Perfil`,`Fk_Id_Cliente`),
  KEY `Fk_AsigCliente` (`Fk_Id_Cliente`),
  CONSTRAINT `Fk_AsigCliente` FOREIGN KEY (`Fk_Id_Cliente`) REFERENCES `tbl_cliente` (`Pk_Id_Cliente`),
  CONSTRAINT `Fk_AsigPerfil` FOREIGN KEY (`Fk_Id_Perfil`) REFERENCES `tbl_perfil` (`Pk_Id_Perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_asignar_perfil_cliente`
--

LOCK TABLES `tbl_asignar_perfil_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_asignar_perfil_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_asignar_perfil_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bitacora`
--

DROP TABLE IF EXISTS `tbl_bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bitacora` (
  `Pk_Id_Bitacora` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Usuario` int DEFAULT NULL,
  `Fk_Id_Aplicacion` int DEFAULT NULL,
  `Cmp_Fecha` datetime DEFAULT NULL,
  `Cmp_Accion` varchar(255) DEFAULT NULL,
  `Cmp_Ip` varchar(50) DEFAULT NULL,
  `Cmp_Nombre_Pc` varchar(50) DEFAULT NULL,
  `Cmp_Login_Estado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Bitacora`),
  KEY `Fk_Bitacora_Usuario` (`Fk_Id_Usuario`),
  KEY `Fk_Bitacora_Aplicacion` (`Fk_Id_Aplicacion`),
  CONSTRAINT `Fk_Bitacora_Aplicacion` FOREIGN KEY (`Fk_Id_Aplicacion`) REFERENCES `tbl_aplicacion` (`Pk_Id_Aplicacion`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `Fk_Bitacora_Usuario` FOREIGN KEY (`Fk_Id_Usuario`) REFERENCES `tbl_usuario` (`Pk_Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4377 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bitacora`
--

LOCK TABLES `tbl_bitacora` WRITE;
/*!40000 ALTER TABLE `tbl_bitacora` DISABLE KEYS */;
INSERT INTO `tbl_bitacora` VALUES (3772,4,NULL,'2025-10-24 19:58:55','Ingreso','192.168.1.12','FER',_binary ''),(3773,4,NULL,'2025-10-24 20:00:05','Cierre de sesión','192.168.1.12','FER',_binary '\0'),(3774,23,NULL,'2025-10-24 20:17:44','Ingreso','192.168.56.1','VENNUS',_binary ''),(3775,23,303,'2025-10-24 20:20:34','Actualizo un registro en la tabla \'Tbl_Perfil\' Con la llave \'5\' ','192.168.56.1','VENNUS',_binary ''),(3776,23,22,'2025-10-24 20:25:42','Al usuario \'\'admin\'\' se le removieron permisos en la aplicación \'\'Administracion\'\': Eliminar','192.168.56.1','VENNUS',_binary ''),(3777,23,22,'2025-10-24 20:28:07','Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Administracion\'\': Eliminar','192.168.56.1','VENNUS',_binary ''),(3778,23,303,'2025-10-24 20:28:17','Al usuario \'\'admin\'\' se le removieron permisos en la aplicación \'\'Perfiles\'\': Eliminar','192.168.56.1','VENNUS',_binary ''),(3779,23,303,'2025-10-24 20:29:27','Actualizo un registro en la tabla \'Tbl_Perfil\' Con la llave \'2\' ','192.168.56.1','VENNUS',_binary ''),(3780,23,303,'2025-10-24 20:32:26','Al usuario \'\'admin\'\' se le asignaron permisos en la aplicación \'\'Perfiles\'\': Eliminar','192.168.56.1','VENNUS',_binary ''),(3781,23,303,'2025-10-24 20:32:27','Al usuario \'\'admin\'\' se le removieron permisos en la aplicación \'\'Perfiles\'\': Ingresar','192.168.56.1','VENNUS',_binary ''),(3782,23,NULL,'2025-10-24 20:34:22','Cierre de sesión','192.168.56.1','VENNUS',_binary '\0'),(3783,12,NULL,'2025-10-25 13:13:26','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3784,12,NULL,'2025-10-25 13:14:34','Cierre de sesión','192.168.1.102','LUCHCODEDEV',_binary '\0'),(3785,4,NULL,'2025-10-25 13:14:48','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3786,4,NULL,'2025-10-25 13:15:44','Cierre de sesión','192.168.1.102','LUCHCODEDEV',_binary '\0'),(3787,12,NULL,'2025-10-25 13:15:58','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3788,12,303,'2025-10-25 13:19:14','Insertó un nuevo registro en la tabla \'Tbl_Perfil\' con llave: 45','192.168.1.102','LUCHCODEDEV',_binary ''),(3789,12,303,'2025-10-25 13:22:01','Actualizo un registro en la tabla \'Tbl_Perfil\' Con la llave \'45\' ','192.168.1.102','LUCHCODEDEV',_binary ''),(3790,12,303,'2025-10-25 13:24:58','Eliminó un registro en la tabla \'Tbl_Perfil\' Con la llave \'45\' ','192.168.1.102','LUCHCODEDEV',_binary ''),(3791,12,NULL,'2025-10-25 13:38:23','Cierre de sesión','192.168.1.102','LUCHCODEDEV',_binary '\0'),(3792,12,NULL,'2025-10-25 13:49:04','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3793,12,1,'2025-10-25 13:50:23','Modificó aplicación: Perfiles','192.168.1.102','LUCHCODEDEV',_binary ''),(3794,12,NULL,'2025-10-25 13:51:36','Cierre de sesión','192.168.1.102','LUCHCODEDEV',_binary '\0'),(3795,12,NULL,'2025-10-25 14:46:31','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3796,12,303,'2025-10-25 14:47:42','Actualizo un registro en la tabla \'Tbl_Perfil\' Con la llave \'44\' ','192.168.1.102','LUCHCODEDEV',_binary ''),(3797,12,NULL,'2025-10-25 14:48:17','Cierre de sesión','192.168.1.102','LUCHCODEDEV',_binary '\0'),(3798,12,NULL,'2025-10-25 14:48:19','Cierre de sesión','192.168.1.102','LUCHCODEDEV',_binary '\0'),(3799,7,NULL,'2025-10-25 14:49:00','Recuperar contraseña','192.168.1.102','LUCHCODEDEV',_binary ''),(3800,23,NULL,'2025-10-27 07:01:04','Ingreso','10.0.7.68','COMPU_CESAR',_binary ''),(3801,23,NULL,'2025-10-27 07:02:11','Cierre de sesión','10.0.7.68','COMPU_CESAR',_binary '\0'),(3802,12,NULL,'2025-10-27 16:21:37','Ingreso','192.168.2.21','KEVINN',_binary ''),(3803,12,1,'2025-10-27 16:22:29','Eliminó al empleado/a: Brandon2','192.168.2.21','KEVINN',_binary ''),(3804,12,NULL,'2025-10-27 16:34:43','Ingreso','192.168.2.21','KEVINN',_binary ''),(3805,12,1,'2025-10-27 16:41:36','Guardó empleado/a: Kevin','192.168.2.21','KEVINN',_binary ''),(3806,12,1,'2025-10-27 16:53:56','Guardó empleado/a: Jose','192.168.2.21','KEVINN',_binary ''),(3807,12,1,'2025-10-27 16:54:47','Eliminó al empleado/a: Kevin','192.168.2.21','KEVINN',_binary ''),(3808,12,1,'2025-10-27 17:04:55','Modificó el módulo: PRUEBA_IMPLEMENTACION','192.168.2.21','KEVINN',_binary ''),(3809,12,1,'2025-10-27 17:05:18','Eliminó el módulo: PRUEBA_IMPLEMENTACION','192.168.2.21','KEVINN',_binary ''),(3810,12,NULL,'2025-10-27 17:27:41','Cierre de sesión','192.168.2.21','KEVINN',_binary '\0'),(3811,23,NULL,'2025-10-27 18:07:22','Ingreso','192.168.1.11','DAVID',_binary ''),(3812,23,1,'2025-10-27 18:08:10','Eliminó al empleado/a: Marcos','192.168.1.11','DAVID',_binary ''),(3813,23,NULL,'2025-10-27 18:08:19','Cierre de sesión','192.168.1.11','DAVID',_binary '\0'),(3814,23,NULL,'2025-10-27 18:13:34','Ingreso','192.168.1.11','DAVID',_binary ''),(3815,23,1,'2025-10-27 18:15:47','Modificó empleado/a: Ruben ','192.168.1.11','DAVID',_binary ''),(3816,23,1,'2025-10-27 18:17:20','Guardó empleado/a: Raul','192.168.1.11','DAVID',_binary ''),(3817,23,1,'2025-10-27 18:17:32','Eliminó empleado/a: Raul','192.168.1.11','DAVID',_binary ''),(3818,23,NULL,'2025-10-27 18:17:54','Cierre de sesión','192.168.1.11','DAVID',_binary '\0'),(3819,23,NULL,'2025-10-27 18:45:30','Ingreso','192.168.1.11','DAVID',_binary ''),(3820,23,1,'2025-10-27 18:46:48','Guardó empleado/a: Raul','192.168.1.11','DAVID',_binary ''),(3821,23,1,'2025-10-27 18:47:05','Eliminó empleado/a: Raul','192.168.1.11','DAVID',_binary ''),(3822,23,NULL,'2025-10-27 18:47:52','Cierre de sesión','192.168.1.11','DAVID',_binary '\0'),(3823,23,NULL,'2025-10-27 18:57:56','Ingreso','192.168.1.11','DAVID',_binary ''),(3824,23,NULL,'2025-10-27 19:00:08','Cierre de sesión','192.168.1.11','DAVID',_binary '\0'),(3825,23,NULL,'2025-10-27 19:07:12','Ingreso','192.168.1.11','DAVID',_binary ''),(3826,23,NULL,'2025-10-27 19:07:49','Cierre de sesión','192.168.1.11','DAVID',_binary '\0'),(3827,23,NULL,'2025-10-27 19:10:43','Ingreso','192.168.1.11','DAVID',_binary ''),(3828,23,1,'2025-10-27 19:11:37','Modificó empleado/a: Raúl','192.168.1.11','DAVID',_binary ''),(3829,23,1,'2025-10-27 19:13:26','Guardó empleado/a: Raúl','192.168.1.11','DAVID',_binary ''),(3830,23,1,'2025-10-27 19:13:42','Eliminó al empleado/a: Raúl','192.168.1.11','DAVID',_binary ''),(3831,23,NULL,'2025-10-27 19:13:48','Cierre de sesión','192.168.1.11','DAVID',_binary '\0'),(3832,23,NULL,'2025-10-28 18:12:27','Ingreso','192.168.1.12','FER',_binary ''),(3833,23,1,'2025-10-28 18:23:48','Guardó empleado/a: Ángel','192.168.1.12','FER',_binary ''),(3834,23,NULL,'2025-10-28 18:34:59','Ingreso','192.168.1.12','FER',_binary ''),(3835,23,1,'2025-10-28 18:36:24','Insertó un nuevo usuario: Ángel','192.168.1.12','FER',_binary ''),(3836,23,1,'2025-10-28 18:56:37','Guardó aplicación: PruebaVacío','192.168.1.12','FER',_binary ''),(3837,23,NULL,'2025-10-28 18:57:46','Cierre de sesión','192.168.1.12','FER',_binary '\0'),(3838,23,NULL,'2025-10-29 12:29:24','Ingreso','192.168.1.23','DESKTOP-SMGJLAQ',_binary ''),(3839,23,NULL,'2025-10-29 12:29:52','Cierre de sesión','192.168.1.23','DESKTOP-SMGJLAQ',_binary '\0'),(3840,23,NULL,'2025-10-29 12:31:28','Ingreso','192.168.1.23','DESKTOP-SMGJLAQ',_binary ''),(3841,23,1,'2025-10-29 12:37:48','Guardó empleado/a: Fredy','192.168.1.23','DESKTOP-SMGJLAQ',_binary ''),(3842,23,NULL,'2025-10-29 12:37:57','Cierre de sesión','192.168.1.23','DESKTOP-SMGJLAQ',_binary '\0'),(3843,23,NULL,'2025-10-29 12:48:02','Ingreso','192.168.1.23','DESKTOP-SMGJLAQ',_binary ''),(3844,23,NULL,'2025-10-29 12:49:24','Cierre de sesión','192.168.1.23','DESKTOP-SMGJLAQ',_binary '\0'),(3845,23,NULL,'2025-10-30 07:30:12','Ingreso','10.0.5.27','COMPU_CESAR',_binary ''),(3846,23,NULL,'2025-10-30 07:31:32','Cierre de sesión','10.0.5.27','COMPU_CESAR',_binary '\0'),(3847,23,NULL,'2025-10-30 23:05:50','Ingreso','192.168.1.23','DESKTOP-SMGJLAQ',_binary ''),(3848,23,NULL,'2025-10-30 23:07:26','Ingreso','192.168.1.23','DESKTOP-SMGJLAQ',_binary ''),(3849,23,NULL,'2025-10-30 23:08:55','Ingreso','192.168.1.23','DESKTOP-SMGJLAQ',_binary ''),(3850,4,NULL,'2025-10-31 22:38:25','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3851,4,NULL,'2025-10-31 22:39:35','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(3852,4,NULL,'2025-10-31 22:54:00','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3853,4,NULL,'2025-10-31 22:55:07','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(3854,23,NULL,'2025-10-31 23:11:22','Ingreso','192.168.56.1','DESKTOP-6VKCMBO',_binary ''),(3855,23,NULL,'2025-10-31 23:12:55','Cierre de sesión','192.168.56.1','DESKTOP-6VKCMBO',_binary '\0'),(3856,23,NULL,'2025-11-01 00:09:55','Ingreso','192.168.56.1','DESKTOP-6VKCMBO',_binary ''),(3857,23,NULL,'2025-11-01 00:11:30','Cierre de sesión','192.168.56.1','DESKTOP-6VKCMBO',_binary '\0'),(3858,4,NULL,'2025-11-01 14:13:52','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3859,4,NULL,'2025-11-01 14:18:26','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(3860,4,NULL,'2025-11-01 14:20:53','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3861,4,NULL,'2025-11-01 14:21:44','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(3862,4,NULL,'2025-11-01 14:23:42','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3863,4,NULL,'2025-11-01 14:26:47','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(3864,4,NULL,'2025-11-01 14:45:18','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3865,4,NULL,'2025-11-01 14:46:32','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(3866,4,NULL,'2025-11-01 14:47:52','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3867,4,NULL,'2025-11-01 14:50:04','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(3868,4,NULL,'2025-11-01 14:54:16','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3869,4,NULL,'2025-11-01 14:57:33','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(3870,4,NULL,'2025-11-01 15:32:32','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3871,4,NULL,'2025-11-01 15:33:35','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(3872,4,NULL,'2025-11-01 15:36:29','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3873,4,NULL,'2025-11-01 15:37:43','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(3874,4,NULL,'2025-11-01 15:39:01','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3875,4,NULL,'2025-11-01 15:40:41','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(3876,4,NULL,'2025-11-01 15:47:58','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3877,4,NULL,'2025-11-01 15:49:06','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(3878,4,NULL,'2025-11-01 15:58:21','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3879,4,NULL,'2025-11-01 15:59:11','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(3880,4,NULL,'2025-11-01 15:59:55','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3881,4,NULL,'2025-11-01 16:00:39','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(3882,4,NULL,'2025-11-07 12:25:44','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3883,4,NULL,'2025-11-07 12:31:10','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3884,4,NULL,'2025-11-07 12:43:06','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3885,4,NULL,'2025-11-07 12:55:24','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(3886,4,NULL,'2025-11-07 13:05:43','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(3887,4,303,'2025-11-07 13:07:11','Insertó un nuevo registro en la tabla \'Tbl_Huesped\' con llave: 10','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(3888,4,1,'2025-11-07 13:08:43','Guardó el módulo: Hoteleria','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(3889,4,1,'2025-11-07 13:10:23','Guardó aplicación: Huespedes','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(3890,4,3401,'2025-11-07 13:11:24','Al usuario \'\'brandon\'\' se le asignaron permisos en la aplicación \'\'Huespedes\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(3891,4,NULL,'2025-11-07 13:16:17','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(3892,4,NULL,'2025-11-07 14:46:40','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3893,4,NULL,'2025-11-07 15:04:49','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3894,4,NULL,'2025-11-07 15:09:16','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3895,4,NULL,'2025-11-07 15:17:49','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3896,4,NULL,'2025-11-07 15:22:00','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3897,4,NULL,'2025-11-07 15:29:34','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3898,4,3401,'2025-11-07 15:30:33','Actualizo un registro en la tabla \'Tbl_Huesped\' Con la llave \'1\' ','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3899,4,NULL,'2025-11-07 15:35:21','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3900,4,3401,'2025-11-07 15:37:19','Insertó un nuevo registro en la tabla \'Tbl_Huesped\' con llave: 2','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3901,4,3401,'2025-11-07 15:37:59','Actualizo un registro en la tabla \'Tbl_Huesped\' Con la llave \'2\' ','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3902,4,3401,'2025-11-07 15:38:36','Eliminó un registro en la tabla \'Tbl_Huesped\' Con la llave \'2\' ','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3903,4,3401,'2025-11-07 15:41:15','Insertó un nuevo registro en la tabla \'Tbl_Huesped\' con llave: 2','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3904,4,303,'2025-11-07 15:43:02','Insertó un nuevo registro en la tabla \'Tbl_Tipo_Habitacion\' con llave: abc','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3905,4,NULL,'2025-11-07 15:55:36','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3906,4,NULL,'2025-11-07 15:59:43','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3907,4,NULL,'2025-11-07 16:01:49','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3908,4,NULL,'2025-11-07 16:04:38','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3909,4,NULL,'2025-11-07 16:07:15','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3910,4,NULL,'2025-11-07 16:10:12','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3911,4,NULL,'2025-11-07 16:10:44','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3912,4,1,'2025-11-07 16:12:36','Guardó aplicación: Tipo Habitación','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3913,4,1,'2025-11-07 16:13:13','Guardó aplicación: Habitacion','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3914,4,1,'2025-11-07 16:14:03','Guardó aplicación: Servicios Habitaciones','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3915,4,1,'2025-11-07 16:14:57','Guardó aplicación: Estadia','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3916,4,1,'2025-11-07 16:16:00','Guardó aplicación: Asignacion Servicios Cuartos','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3917,4,NULL,'2025-11-07 16:17:26','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(3918,4,NULL,'2025-11-07 16:18:53','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3919,4,NULL,'2025-11-07 16:23:59','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3920,4,3042,'2025-11-07 16:26:39','Al usuario \'\'brandon\'\' se le asignaron permisos en la aplicación \'\'Tipo Habitación\'\': Ingresar, Modificar, Eliminar, Imprimir','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3921,4,3043,'2025-11-07 16:26:43','Al usuario \'\'brandon\'\' se le asignaron permisos en la aplicación \'\'Habitacion\'\': Ingresar, Modificar, Eliminar, Imprimir','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3922,4,3044,'2025-11-07 16:26:46','Al usuario \'\'brandon\'\' se le asignaron permisos en la aplicación \'\'Servicios Habitaciones\'\': Ingresar, Modificar, Eliminar, Imprimir','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3923,4,3045,'2025-11-07 16:26:50','Al usuario \'\'brandon\'\' se le asignaron permisos en la aplicación \'\'Estadia\'\': Ingresar, Modificar, Eliminar, Imprimir','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3924,4,3046,'2025-11-07 16:26:54','Al usuario \'\'brandon\'\' se le asignaron permisos en la aplicación \'\'Asignacion Servicios Cuartos\'\': Ingresar, Modificar, Eliminar, Imprimir','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3925,4,NULL,'2025-11-07 16:27:04','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(3926,4,NULL,'2025-11-07 16:28:58','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3927,4,NULL,'2025-11-07 16:32:00','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3928,4,3043,'2025-11-07 16:34:58','Actualizo un registro en la tabla \'Tbl_Habitaciones\' Con la llave \'1\' ','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3929,4,3043,'2025-11-07 16:35:23','Actualizo un registro en la tabla \'Tbl_Habitaciones\' Con la llave \'2\' ','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3930,4,3043,'2025-11-07 16:35:49','Actualizo un registro en la tabla \'Tbl_Habitaciones\' Con la llave \'3\' ','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3931,4,3043,'2025-11-07 16:36:11','Actualizo un registro en la tabla \'Tbl_Habitaciones\' Con la llave \'4\' ','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3932,4,NULL,'2025-11-07 16:45:59','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3933,4,NULL,'2025-11-07 16:49:38','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3934,4,NULL,'2025-11-07 16:53:59','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3935,12,NULL,'2025-11-07 16:54:07','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3936,7,NULL,'2025-11-07 16:54:51','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3937,7,NULL,'2025-11-07 16:57:07','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3938,4,NULL,'2025-11-07 16:59:12','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3939,7,NULL,'2025-11-07 17:01:11','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3940,4,NULL,'2025-11-07 17:02:11','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3941,4,NULL,'2025-11-07 17:03:02','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3942,7,NULL,'2025-11-07 17:04:42','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3943,7,NULL,'2025-11-07 17:05:16','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3944,7,NULL,'2025-11-07 17:08:34','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3945,4,NULL,'2025-11-07 17:09:12','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3946,7,NULL,'2025-11-07 17:10:25','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3947,4,NULL,'2025-11-07 17:10:26','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3948,7,NULL,'2025-11-07 17:13:59','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3949,4,NULL,'2025-11-07 17:15:12','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3950,4,NULL,'2025-11-07 17:16:12','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3951,7,NULL,'2025-11-07 17:16:48','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3952,7,NULL,'2025-11-07 17:18:56','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3953,7,NULL,'2025-11-07 17:20:08','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3954,4,NULL,'2025-11-07 17:20:47','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3955,7,NULL,'2025-11-07 17:48:11','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3956,7,NULL,'2025-11-07 17:55:34','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3957,7,NULL,'2025-11-07 18:01:28','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3958,7,NULL,'2025-11-07 18:01:51','Cierre de sesión','192.168.1.102','LUCHCODEDEV',_binary '\0'),(3959,7,NULL,'2025-11-07 18:02:11','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3960,7,NULL,'2025-11-07 18:05:02','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3961,7,NULL,'2025-11-07 18:05:33','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3962,7,NULL,'2025-11-07 18:21:36','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3963,4,NULL,'2025-11-07 19:00:00','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3964,4,NULL,'2025-11-07 21:03:13','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3965,4,NULL,'2025-11-07 21:04:54','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3966,4,NULL,'2025-11-07 21:16:48','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3967,4,NULL,'2025-11-07 21:20:14','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3968,4,NULL,'2025-11-07 21:21:54','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3969,4,NULL,'2025-11-07 21:22:31','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3970,4,NULL,'2025-11-07 21:26:33','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3971,23,NULL,'2025-11-07 21:31:48','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3972,4,NULL,'2025-11-07 21:46:30','Ingreso','192.168.1.12','FER',_binary ''),(3973,4,NULL,'2025-11-07 21:47:18','Ingreso','192.168.1.12','FER',_binary ''),(3974,4,NULL,'2025-11-07 21:57:47','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3975,4,1,'2025-11-07 21:59:32','Insertó un nuevo usuario: hoteleria','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3976,4,3042,'2025-11-07 22:02:56','Al usuario \'\'hoteleria\'\' se le asignaron permisos en la aplicación \'\'Tipo Habitación\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3977,4,3043,'2025-11-07 22:03:00','Al usuario \'\'hoteleria\'\' se le asignaron permisos en la aplicación \'\'Habitacion\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3978,4,3044,'2025-11-07 22:03:04','Al usuario \'\'hoteleria\'\' se le asignaron permisos en la aplicación \'\'Servicios Habitaciones\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3979,4,3045,'2025-11-07 22:03:12','Al usuario \'\'hoteleria\'\' se le asignaron permisos en la aplicación \'\'Estadia\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3980,4,3046,'2025-11-07 22:03:15','Al usuario \'\'hoteleria\'\' se le asignaron permisos en la aplicación \'\'Asignacion Servicios Cuartos\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3981,4,3401,'2025-11-07 22:03:19','Al usuario \'\'hoteleria\'\' se le asignaron permisos en la aplicación \'\'Huespedes\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3982,64,NULL,'2025-11-07 22:05:12','Ingreso','192.168.1.12','FER',_binary ''),(3983,4,NULL,'2025-11-07 22:07:03','Cierre de sesión','192.168.56.1','DESKTOP-01DDSQ2',_binary '\0'),(3984,64,NULL,'2025-11-07 22:09:24','Ingreso','192.168.1.12','FER',_binary ''),(3985,64,NULL,'2025-11-07 22:17:30','Ingreso','192.168.1.12','FER',_binary ''),(3986,64,NULL,'2025-11-07 22:19:03','Ingreso','192.168.1.12','FER',_binary ''),(3987,4,NULL,'2025-11-07 22:19:16','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3988,64,NULL,'2025-11-07 22:29:01','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3989,4,NULL,'2025-11-07 22:34:31','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(3990,64,NULL,'2025-11-07 23:24:11','Ingreso','192.168.1.12','FER',_binary ''),(3991,64,NULL,'2025-11-08 09:32:11','Ingreso','192.168.4.37','PAULA',_binary ''),(3992,64,NULL,'2025-11-08 09:38:22','Ingreso','192.168.4.37','PAULA',_binary ''),(3993,7,NULL,'2025-11-08 09:58:18','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3994,12,NULL,'2025-11-08 10:16:00','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(3995,4,NULL,'2025-11-08 12:22:18','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3996,4,NULL,'2025-11-08 12:24:43','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(3997,64,NULL,'2025-11-08 15:11:05','Ingreso','192.168.4.37','PAULA',_binary ''),(3998,64,NULL,'2025-11-08 15:45:48','Ingreso','192.168.4.37','PAULA',_binary ''),(3999,64,NULL,'2025-11-08 15:56:43','Ingreso','192.168.4.37','PAULA',_binary ''),(4000,4,NULL,'2025-11-08 18:06:23','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4001,4,NULL,'2025-11-08 18:15:28','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4002,4,NULL,'2025-11-08 18:27:21','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4003,4,NULL,'2025-11-08 18:34:11','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4004,4,NULL,'2025-11-08 18:38:40','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4005,4,NULL,'2025-11-08 18:42:41','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4006,4,NULL,'2025-11-08 18:47:48','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4007,4,NULL,'2025-11-08 18:51:06','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4008,4,NULL,'2025-11-08 18:53:30','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4009,4,NULL,'2025-11-08 19:00:58','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4010,4,3401,'2025-11-08 19:03:03','Insertó un nuevo registro en la tabla \'Tbl_Huesped\' con llave: 4','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4011,4,NULL,'2025-11-08 19:06:02','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4012,4,NULL,'2025-11-08 19:22:58','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4013,4,NULL,'2025-11-08 19:36:55','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4014,4,NULL,'2025-11-08 19:42:48','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4015,4,NULL,'2025-11-08 19:44:58','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4016,4,NULL,'2025-11-08 21:47:47','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4017,4,NULL,'2025-11-08 22:50:51','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4018,4,NULL,'2025-11-09 09:50:19','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4019,4,NULL,'2025-11-09 09:52:13','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4020,4,1,'2025-11-09 09:53:09','Guardó Check In: System.Windows.Forms.ComboBox, Items.Count: 3','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4021,4,NULL,'2025-11-09 09:56:16','Cierre de sesión','192.168.56.1','DESKTOP-01DDSQ2',_binary '\0'),(4022,4,NULL,'2025-11-09 10:32:27','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4023,4,1,'2025-11-09 10:34:29','Guardó aplicación: Check In ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4024,4,1,'2025-11-09 10:35:06','Guardó aplicación: Check Out','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4025,4,1,'2025-11-09 10:35:39','Guardó aplicación: Area','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4026,4,1,'2025-11-09 10:36:27','Guardó aplicación: Detalle Folio ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4027,4,3402,'2025-11-09 10:40:35','Al usuario \'\'brandon\'\' se le asignaron permisos en la aplicación \'\'Check In\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4028,4,3403,'2025-11-09 10:40:39','Al usuario \'\'brandon\'\' se le asignaron permisos en la aplicación \'\'Check Out\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4029,4,3404,'2025-11-09 10:40:42','Al usuario \'\'brandon\'\' se le asignaron permisos en la aplicación \'\'Area\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4030,4,3405,'2025-11-09 10:40:47','Al usuario \'\'brandon\'\' se le asignaron permisos en la aplicación \'\'Detalle Folio\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4031,4,3402,'2025-11-09 10:40:51','Al usuario \'\'hoteleria\'\' se le asignaron permisos en la aplicación \'\'Check In\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4032,4,3403,'2025-11-09 10:40:58','Al usuario \'\'hoteleria\'\' se le asignaron permisos en la aplicación \'\'Check Out\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4033,4,3404,'2025-11-09 10:41:02','Al usuario \'\'hoteleria\'\' se le asignaron permisos en la aplicación \'\'Area\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4034,4,3405,'2025-11-09 10:41:06','Al usuario \'\'hoteleria\'\' se le asignaron permisos en la aplicación \'\'Detalle Folio\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4035,4,NULL,'2025-11-09 10:41:17','Cierre de sesión','192.168.56.1','DESKTOP-01DDSQ2',_binary '\0'),(4036,4,NULL,'2025-11-09 10:58:59','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4037,4,NULL,'2025-11-09 10:59:02','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4038,4,3404,'2025-11-09 11:00:15','Movimiento de Area Guardado:System.Windows.Forms.TextBox, Text:  ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4039,4,3403,'2025-11-09 11:00:42','Check Out Guardado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4040,4,3403,'2025-11-09 11:01:01','Check Out Modificado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4041,4,3403,'2025-11-09 11:01:08','Check Out Eliminado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4042,4,NULL,'2025-11-09 11:02:27','Cierre de sesión','192.168.56.1','DESKTOP-01DDSQ2',_binary '\0'),(4043,4,NULL,'2025-11-09 11:10:11','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4044,4,NULL,'2025-11-09 11:10:12','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4045,4,3402,'2025-11-09 11:12:04','Check In Modificado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4046,4,NULL,'2025-11-09 11:13:33','Cierre de sesión','192.168.56.1','DESKTOP-01DDSQ2',_binary '\0'),(4047,4,NULL,'2025-11-09 11:58:05','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4048,4,3402,'2025-11-09 11:59:43','Check In Guardado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4049,4,NULL,'2025-11-09 12:04:45','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4050,4,3403,'2025-11-09 12:05:14','Check Out Guardado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4051,4,NULL,'2025-11-09 12:11:10','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4052,4,NULL,'2025-11-09 12:13:42','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4053,4,NULL,'2025-11-09 12:14:36','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4054,4,NULL,'2025-11-09 12:19:38','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4055,4,NULL,'2025-11-09 12:21:14','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4056,4,3402,'2025-11-09 12:21:57','Check In Guardado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4057,4,3045,'2025-11-09 12:23:08','Insertó un nuevo registro en la tabla \'Tbl_Estadia\' para la habitacion \'2\' y el Huesped \'3\'','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4058,4,3045,'2025-11-09 12:23:31','MODIFICO en la tabla \'Tbl_Estadia\' para la llave \'3\'','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4059,4,3045,'2025-11-09 12:25:01','Elimino en la tabla \'Tbl_Estadia\' para la llave \'5\'','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4060,4,3046,'2025-11-09 12:25:54','Se asigno al cuarto \'1\' el servicio \'1\'','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4061,4,3046,'2025-11-09 12:26:15','Al cuarto con numero \'1\' se le removio el servicio \'1\'','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4062,4,NULL,'2025-11-09 12:27:01','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4063,4,3402,'2025-11-09 12:29:03','Check In Guardado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4064,4,3403,'2025-11-09 12:29:51','Check Out Guardado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4065,4,NULL,'2025-11-09 12:30:11','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4066,4,3403,'2025-11-09 12:30:11','Check Out Guardado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4067,4,3403,'2025-11-09 12:30:34','Check Out Guardado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4068,4,NULL,'2025-11-09 12:32:07','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(4069,4,3043,'2025-11-09 12:34:45','Actualizo un registro en la tabla \'Tbl_Habitaciones\' Con la llave \'1\' ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4070,4,3043,'2025-11-09 12:35:52','Actualizo un registro en la tabla \'Tbl_Habitaciones\' Con la llave \'1\' ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4071,4,3043,'2025-11-09 12:38:10','Actualizo un registro en la tabla \'Tbl_Habitaciones\' Con la llave \'2\' ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4072,4,3043,'2025-11-09 12:39:07','Actualizo un registro en la tabla \'Tbl_Habitaciones\' Con la llave \'3\' ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4073,4,3043,'2025-11-09 12:41:45','Actualizo un registro en la tabla \'Tbl_Habitaciones\' Con la llave \'4\' ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4074,4,NULL,'2025-11-09 12:44:58','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4075,4,3402,'2025-11-09 12:48:20','Check In Guardado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4076,4,3404,'2025-11-09 12:49:30','Movimiento de Area Guardado: ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4077,4,3404,'2025-11-09 12:50:15','Movimiento de Area Guardado: ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4078,4,3403,'2025-11-09 12:51:44','Check Out Guardado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4079,4,NULL,'2025-11-09 12:55:53','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4080,4,3402,'2025-11-09 12:58:14','Check In Modificado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4081,4,3402,'2025-11-09 12:58:34','Check In Modificado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4082,4,3402,'2025-11-09 12:59:33','Check In Modificado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4083,4,3402,'2025-11-09 13:03:04','Check In Modificado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4084,4,NULL,'2025-11-09 13:16:20','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4085,4,NULL,'2025-11-09 13:17:53','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4086,4,NULL,'2025-11-09 13:19:57','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4087,4,NULL,'2025-11-09 13:21:30','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4088,4,NULL,'2025-11-09 13:22:41','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4089,15,NULL,'2025-11-09 13:24:04','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4090,4,NULL,'2025-11-09 13:34:57','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4091,15,NULL,'2025-11-09 13:36:44','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4092,15,NULL,'2025-11-09 13:37:27','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4093,4,NULL,'2025-11-09 13:38:53','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4094,4,NULL,'2025-11-09 13:40:37','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4095,4,NULL,'2025-11-09 13:57:27','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4096,4,NULL,'2025-11-09 13:57:49','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4097,4,NULL,'2025-11-09 14:00:25','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4098,4,3404,'2025-11-09 14:01:23','Al usuario \'\'jeffer\'\' se le asignaron permisos en la aplicación \'\'Area\'\': Ingresar, Modificar, Eliminar, Imprimir','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4099,4,NULL,'2025-11-09 14:01:38','Cierre de sesión','192.168.56.1','DESKTOP-01DDSQ2',_binary '\0'),(4100,15,NULL,'2025-11-09 14:02:10','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4101,4,NULL,'2025-11-09 14:03:02','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4102,15,NULL,'2025-11-09 14:04:19','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4103,4,NULL,'2025-11-09 14:05:16','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4104,15,NULL,'2025-11-09 14:11:38','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4105,64,NULL,'2025-11-09 14:12:20','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4106,4,NULL,'2025-11-09 14:29:31','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4107,4,3045,'2025-11-09 14:31:45','Insertó un nuevo registro en la tabla \'Tbl_Estadia\' para la habitación \'1\' y el huésped \'3\'','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4108,4,3045,'2025-11-09 14:33:26','Modificó en la tabla \'Tbl_Estadia\' el registro con llave \'4\'','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4109,4,3046,'2025-11-09 14:36:02','Se asignó al cuarto \'3\' el servicio \'1\'','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4110,4,3046,'2025-11-09 14:36:10','Se asignó al cuarto \'3\' el servicio \'2\'','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4111,4,3046,'2025-11-09 14:36:27','Se asignó al cuarto \'3\' el servicio \'3\'','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4112,4,3046,'2025-11-09 14:36:40','Al cuarto con número \'4\' se le removió el servicio \'3\'','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4113,15,NULL,'2025-11-09 14:57:47','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4114,4,NULL,'2025-11-09 14:59:02','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4115,15,NULL,'2025-11-09 15:00:19','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4116,4,NULL,'2025-11-09 15:03:15','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4117,4,3402,'2025-11-09 15:04:05','Check In Modificado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4118,4,NULL,'2025-11-09 15:07:00','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4119,4,NULL,'2025-11-09 15:12:25','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4120,4,NULL,'2025-11-09 15:17:14','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4121,4,NULL,'2025-11-09 15:18:00','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4122,4,NULL,'2025-11-09 15:20:37','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4123,4,NULL,'2025-11-09 15:27:55','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4124,4,3402,'2025-11-09 15:31:13','Check In Guardado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4125,4,3402,'2025-11-09 15:31:49','Check In Guardado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4126,4,3402,'2025-11-09 15:32:04','Check In Guardado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4127,4,3401,'2025-11-09 15:34:57','Insertó un nuevo registro en la tabla \'Tbl_Huesped\' con llave: 5','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4128,4,3402,'2025-11-09 15:36:54','Check In Modificado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4129,4,3402,'2025-11-09 15:37:18','Check In Modificado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4130,4,3402,'2025-11-09 15:37:39','Check In Modificado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4131,4,3402,'2025-11-09 15:38:04','Check In Guardado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4132,4,3403,'2025-11-09 15:38:56','Check Out Guardado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4133,4,NULL,'2025-11-09 16:18:06','Cierre de sesión','192.168.56.1','DESKTOP-01DDSQ2',_binary '\0'),(4134,4,NULL,'2025-11-09 16:20:55','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4135,4,NULL,'2025-11-09 16:22:18','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4136,4,NULL,'2025-11-09 16:23:43','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4137,7,NULL,'2025-11-09 16:24:29','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(4138,64,NULL,'2025-11-09 16:27:24','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(4139,64,3401,'2025-11-09 16:30:57','Insertó un nuevo registro en la tabla \'Tbl_Huesped\' con llave: 6','192.168.1.102','LUCHCODEDEV',_binary ''),(4140,15,NULL,'2025-11-09 16:34:16','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4141,4,NULL,'2025-11-09 16:39:07','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4142,7,NULL,'2025-11-09 16:52:21','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(4143,4,NULL,'2025-11-09 16:54:24','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4144,7,NULL,'2025-11-09 17:08:28','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(4145,4,NULL,'2025-11-09 17:28:35','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4146,7,NULL,'2025-11-09 18:18:48','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(4147,64,NULL,'2025-11-09 18:20:54','Ingreso','192.168.0.4','PAULA',_binary ''),(4148,4,NULL,'2025-11-09 18:21:21','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4149,4,NULL,'2025-11-09 19:32:31','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4150,4,NULL,'2025-11-09 20:52:42','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4151,4,NULL,'2025-11-09 20:59:45','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4152,4,NULL,'2025-11-09 21:07:05','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4153,4,NULL,'2025-11-09 21:13:24','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4154,4,3045,'2025-11-09 21:14:03','Insertó un nuevo registro en la tabla \'Tbl_Estadia\' para la habitación \'2\' y el huésped \'5\'','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4155,4,3045,'2025-11-09 21:15:32','Eliminó en la tabla \'Tbl_Estadia\' el registro con llave \'4\'','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4156,4,NULL,'2025-11-09 21:28:59','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4157,23,NULL,'2025-11-09 22:39:23','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4158,4,NULL,'2025-11-09 22:43:16','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4159,4,3402,'2025-11-09 22:44:18','Check In Guardado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4160,4,3404,'2025-11-09 22:45:01','Movimiento de Area Guardado: ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4161,4,3403,'2025-11-09 22:45:57','Check Out Guardado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4162,4,3045,'2025-11-09 22:50:42','Insertó un nuevo registro en la tabla \'Tbl_Estadia\' para la habitación \'1\' y el huésped \'1\'','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4163,4,3046,'2025-11-09 22:52:00','Se asignó al cuarto \'2\' el servicio \'1\'','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4164,4,3046,'2025-11-09 22:52:12','Se asignó al cuarto \'2\' el servicio \'1\'','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4165,4,3046,'2025-11-09 22:52:35','Al cuarto con número \'2\' se le removió el servicio \'1\'','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4166,4,NULL,'2025-11-09 23:05:13','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4167,4,NULL,'2025-11-09 23:05:29','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4168,4,3046,'2025-11-09 23:08:37','Se asignó al cuarto \'2\' el servicio \'1\'','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4169,4,3046,'2025-11-09 23:09:08','Al cuarto con número \'2\' se le removió el servicio \'1\'','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4170,4,3045,'2025-11-09 23:12:13','Modificó en la tabla \'Tbl_Estadia\' el registro con llave \'7\'','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4171,4,NULL,'2025-11-09 23:16:08','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4172,4,NULL,'2025-11-09 23:18:25','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(4173,4,NULL,'2025-11-10 19:05:24','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4174,4,NULL,'2025-11-11 08:05:21','Ingreso','172.20.10.3','LAPTOP-6C415UB3',_binary ''),(4175,4,NULL,'2025-11-11 08:23:07','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4176,4,NULL,'2025-11-11 08:32:18','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4177,4,NULL,'2025-11-11 14:52:51','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4178,4,NULL,'2025-11-11 14:58:40','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4179,4,NULL,'2025-11-11 15:01:27','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4180,4,NULL,'2025-11-11 15:04:55','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4181,4,NULL,'2025-11-11 15:05:50','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4182,4,NULL,'2025-11-11 15:22:28','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4183,4,NULL,'2025-11-11 15:31:44','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4184,4,NULL,'2025-11-11 15:45:54','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4185,4,NULL,'2025-11-11 16:08:33','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4186,4,NULL,'2025-11-11 16:10:15','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4187,23,NULL,'2025-11-11 16:10:39','Ingreso','192.168.1.12','FER',_binary ''),(4188,64,NULL,'2025-11-11 16:18:07','Ingreso','192.168.1.24','LAPTOP-JIIK1T9N',_binary ''),(4189,4,NULL,'2025-11-11 17:39:44','Ingreso','192.168.1.11','DAVID',_binary ''),(4190,4,NULL,'2025-11-11 17:42:52','Ingreso','192.168.1.11','DAVID',_binary ''),(4191,4,NULL,'2025-11-11 17:48:24','Ingreso','192.168.1.11','DAVID',_binary ''),(4192,4,NULL,'2025-11-11 17:53:56','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4193,4,3045,'2025-11-11 17:54:47','Insertó un nuevo registro en la tabla \'Tbl_Estadia\' para la habitación \'1\' y el huésped \'4\'','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4194,4,NULL,'2025-11-11 18:11:40','Ingreso','192.168.1.23','ESQUEM',_binary ''),(4195,64,NULL,'2025-11-11 18:22:22','Ingreso','192.168.1.24','LAPTOP-JIIK1T9N',_binary ''),(4196,64,3045,'2025-11-11 18:25:27','Insertó un nuevo registro en la tabla \'Tbl_Estadia\' para la habitación \'1\' y el huésped \'3\'','192.168.1.24','LAPTOP-JIIK1T9N',_binary ''),(4197,64,3045,'2025-11-11 18:26:22','Modificó en la tabla \'Tbl_Estadia\' el registro con llave \'10\'','192.168.1.24','LAPTOP-JIIK1T9N',_binary ''),(4198,4,NULL,'2025-11-11 18:29:50','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4199,64,3046,'2025-11-11 18:36:24','Se asignó al cuarto \'2\' el servicio \'1\'','192.168.1.24','LAPTOP-JIIK1T9N',_binary ''),(4200,64,3044,'2025-11-11 18:40:02','Insertó un nuevo registro en la tabla \'Tbl_Servicios_habitacion\' con llave: 4','192.168.1.24','LAPTOP-JIIK1T9N',_binary ''),(4201,64,3046,'2025-11-11 19:33:00','Se asignó al cuarto \'4\' el servicio \'4\'','192.168.1.24','LAPTOP-JIIK1T9N',_binary ''),(4202,4,NULL,'2025-11-11 19:37:17','Ingreso','192.168.1.23','ESQUEM',_binary ''),(4203,4,NULL,'2025-11-11 20:07:07','Ingreso','192.168.1.23','ESQUEM',_binary ''),(4204,64,NULL,'2025-11-11 20:16:34','Ingreso','192.168.1.20','DESKTOP-VOLOI8S',_binary ''),(4205,64,3404,'2025-11-11 21:07:45','Movimiento de Area Guardado: ','192.168.1.20','DESKTOP-VOLOI8S',_binary ''),(4206,64,NULL,'2025-11-11 21:09:11','Ingreso','192.168.1.20','DESKTOP-VOLOI8S',_binary ''),(4207,4,NULL,'2025-11-11 21:11:39','Ingreso','192.168.1.23','ESQUEM',_binary ''),(4208,64,NULL,'2025-11-11 21:15:07','Ingreso','192.168.1.20','DESKTOP-VOLOI8S',_binary ''),(4209,64,3402,'2025-11-11 21:16:17','Check In Modificado ','192.168.1.20','DESKTOP-VOLOI8S',_binary ''),(4210,64,3403,'2025-11-11 21:17:13','Check Out Eliminado ','192.168.1.20','DESKTOP-VOLOI8S',_binary ''),(4211,64,NULL,'2025-11-11 21:17:52','Ingreso','192.168.1.20','DESKTOP-VOLOI8S',_binary ''),(4212,64,NULL,'2025-11-11 21:19:30','Ingreso','192.168.1.20','DESKTOP-VOLOI8S',_binary ''),(4213,4,NULL,'2025-11-11 21:27:45','Ingreso','192.168.1.23','ESQUEM',_binary ''),(4214,64,NULL,'2025-11-11 21:44:51','Ingreso','192.168.1.20','DESKTOP-VOLOI8S',_binary ''),(4215,64,NULL,'2025-11-12 08:12:26','Ingreso','192.168.133.89','DESKTOP-VOLOI8S',_binary ''),(4216,23,NULL,'2025-11-13 06:34:31','Ingreso','10.0.4.198','COMPU_CESAR',_binary ''),(4217,23,NULL,'2025-11-13 06:35:00','Cierre de sesión','10.0.4.198','COMPU_CESAR',_binary '\0'),(4218,23,NULL,'2025-11-13 06:35:25','Ingreso','10.0.4.198','COMPU_CESAR',_binary ''),(4219,23,NULL,'2025-11-13 06:35:36','Cierre de sesión','10.0.4.198','COMPU_CESAR',_binary '\0'),(4220,23,NULL,'2025-11-13 08:17:08','Ingreso','192.168.138.137','LAPTOP-ISG7MR5K',_binary ''),(4221,23,3045,'2025-11-13 08:21:26','Insertó un nuevo registro en la tabla \'Tbl_Estadia\' para la habitación \'1\' y el huésped \'4\'','192.168.138.137','LAPTOP-ISG7MR5K',_binary ''),(4222,23,3046,'2025-11-13 08:22:34','Se asignó al cuarto \'2\' el servicio \'2\'','192.168.138.137','LAPTOP-ISG7MR5K',_binary ''),(4223,23,3046,'2025-11-13 08:23:05','Al cuarto con número \'3\' se le removió el servicio \'3\'','192.168.138.137','LAPTOP-ISG7MR5K',_binary ''),(4224,4,NULL,'2025-11-13 14:57:42','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4225,4,NULL,'2025-11-13 15:13:24','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4226,4,NULL,'2025-11-13 15:16:02','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(4227,4,NULL,'2025-11-13 15:21:47','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4228,4,NULL,'2025-11-13 15:23:53','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(4229,4,NULL,'2025-11-13 15:26:44','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4230,4,NULL,'2025-11-13 15:27:57','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(4231,4,NULL,'2025-11-13 15:37:22','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4232,4,NULL,'2025-11-13 15:51:02','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4233,4,NULL,'2025-11-13 15:52:29','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(4234,4,NULL,'2025-11-13 15:53:28','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4235,4,1,'2025-11-13 15:54:13','Guardó aplicación: Promociones','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4236,4,3412,'2025-11-13 15:55:04','Al usuario \'\'brandon\'\' se le asignaron permisos en la aplicación \'\'Promociones\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4237,4,NULL,'2025-11-13 15:55:38','Cierre de sesión','192.168.56.1','DESKTOP-BVMTMU2',_binary '\0'),(4238,4,NULL,'2025-11-13 15:59:47','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4239,4,3412,'2025-11-13 16:01:41','Insertó un nuevo registro en la tabla \'Tbl_Promociones\' con llave: 101','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4240,4,NULL,'2025-11-13 17:29:08','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4241,4,NULL,'2025-11-13 17:36:13','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4242,4,NULL,'2025-11-13 17:41:25','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4243,4,3401,'2025-11-13 17:58:46','Insertó un nuevo registro en la tabla \'Tbl_Huesped\' con llave: 7','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4244,4,3401,'2025-11-13 18:03:34','Insertó un nuevo registro en la tabla \'Tbl_Huesped\' con llave: 8','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4245,4,3043,'2025-11-13 18:05:43','Insertó un nuevo registro en la tabla \'Tbl_Habitaciones\' con llave: 5','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4246,4,NULL,'2025-11-13 18:15:54','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4247,4,NULL,'2025-11-13 18:16:45','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4248,4,NULL,'2025-11-13 18:22:28','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4249,4,3402,'2025-11-13 18:26:51','Check In Guardado ','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4250,4,3402,'2025-11-13 18:32:46','Check In Guardado ','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4251,64,NULL,'2025-11-13 18:34:50','Ingreso','192.168.56.1','LETY',_binary ''),(4252,4,3401,'2025-11-13 18:36:05','Insertó un nuevo registro en la tabla \'Tbl_Huesped\' con llave: 9','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4253,4,3043,'2025-11-13 18:37:33','Insertó un nuevo registro en la tabla \'Tbl_Habitaciones\' con llave: 6','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4254,4,3046,'2025-11-13 18:38:00','Se asignó al cuarto \'6\' el servicio \'1\'','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4255,4,3046,'2025-11-13 18:38:13','Se asignó al cuarto \'6\' el servicio \'2\'','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4256,4,NULL,'2025-11-13 18:40:58','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4257,4,3402,'2025-11-13 18:42:01','Check In Guardado ','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4258,4,NULL,'2025-11-13 18:42:42','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4259,4,3402,'2025-11-13 18:43:17','Check In Guardado ','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4260,4,NULL,'2025-11-13 18:46:37','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4261,4,NULL,'2025-11-13 18:48:11','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4262,4,NULL,'2025-11-13 18:49:20','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4263,4,NULL,'2025-11-13 18:54:38','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4264,4,3402,'2025-11-13 18:57:44','Check In Guardado ','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4265,4,3404,'2025-11-13 18:59:01','Movimiento de Area Guardado: ','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4266,4,3045,'2025-11-13 19:00:02','Insertó un nuevo registro en la tabla \'Tbl_Estadia\' para la habitación \'6\' y el huésped \'9\'','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4267,4,3403,'2025-11-13 19:01:19','Check Out Guardado ','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4268,4,NULL,'2025-11-13 19:14:15','Ingreso','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4269,23,NULL,'2025-11-13 19:19:17','Ingreso','192.168.43.10','LAPTOP-ISG7MR5K',_binary ''),(4270,4,3401,'2025-11-13 19:50:54','Insertó un nuevo registro en la tabla \'Tbl_Huesped\' con llave: 10','192.168.1.4','LAPTOP-6C415UB3',_binary ''),(4271,4,NULL,'2025-11-13 19:53:10','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4272,4,3402,'2025-11-13 19:56:49','Check In Guardado ','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4273,4,NULL,'2025-11-13 20:03:45','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4274,4,3043,'2025-11-13 20:06:17','Actualizo un registro en la tabla \'Tbl_Habitaciones\' Con la llave \'3\' ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4275,4,3402,'2025-11-13 20:17:17','Check In Guardado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4276,4,3404,'2025-11-13 20:20:34','Movimiento de Area Guardado: ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4277,4,NULL,'2025-11-13 20:53:43','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4278,4,3403,'2025-11-13 20:54:01','Check Out Guardado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4279,4,NULL,'2025-11-13 21:08:14','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4280,4,3045,'2025-11-13 21:19:00','Insertó un nuevo registro en la tabla \'Tbl_Estadia\' para la habitación \'1\' y el huésped \'5\'','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4281,4,3045,'2025-11-13 21:21:39','Modificó en la tabla \'Tbl_Estadia\' el registro con llave \'20\'','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4282,4,NULL,'2025-11-13 21:37:53','Ingreso','192.168.56.1','DESKTOP-BVMTMU2',_binary ''),(4283,4,NULL,'2025-11-13 23:14:17','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4284,7,NULL,'2025-11-14 02:11:19','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(4285,7,NULL,'2025-11-14 02:13:09','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(4286,7,NULL,'2025-11-14 02:14:21','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(4287,7,NULL,'2025-11-14 02:15:46','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(4288,7,NULL,'2025-11-14 02:18:26','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(4289,7,NULL,'2025-11-14 02:28:39','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(4290,7,NULL,'2025-11-14 02:36:25','Ingreso','192.168.1.102','LUCHCODEDEV',_binary ''),(4291,4,NULL,'2025-11-14 07:27:12','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4292,23,NULL,'2025-11-14 07:32:21','Ingreso','192.168.141.225','ASUSGERBER',_binary ''),(4293,23,NULL,'2025-11-14 07:35:56','Ingreso','192.168.141.225','ASUSGERBER',_binary ''),(4294,23,NULL,'2025-11-14 07:36:44','Ingreso','192.168.141.225','ASUSGERBER',_binary ''),(4295,23,NULL,'2025-11-14 07:39:40','Ingreso','192.168.141.225','ASUSGERBER',_binary ''),(4296,4,NULL,'2025-11-14 07:41:16','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4297,4,NULL,'2025-11-14 07:45:10','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4298,4,1,'2025-11-14 07:49:13','Guardó aplicación: Cierre Diario','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4299,23,NULL,'2025-11-14 07:50:01','Ingreso','192.168.142.164','DESKTOP-SMGJLAQ',_binary ''),(4300,23,NULL,'2025-11-14 07:50:20','Cierre de sesión','192.168.142.164','DESKTOP-SMGJLAQ',_binary '\0'),(4301,4,NULL,'2025-11-14 07:52:12','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4302,23,NULL,'2025-11-14 07:59:37','Ingreso','192.168.138.137','LAPTOP-ISG7MR5K',_binary ''),(4303,4,NULL,'2025-11-14 08:05:40','Ingreso','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4304,4,3401,'2025-11-14 08:06:47','Insertó un nuevo registro en la tabla \'Tbl_Huesped\' con llave: 12','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4305,4,3043,'2025-11-14 08:07:56','Insertó un nuevo registro en la tabla \'Tbl_Habitaciones\' con llave: 7','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4306,4,3412,'2025-11-14 08:08:49','Insertó un nuevo registro en la tabla \'Tbl_Promociones\' con llave: 2','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4307,4,3046,'2025-11-14 08:09:12','Se asignó al cuarto \'7\' el servicio \'2\'','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4308,4,3046,'2025-11-14 08:09:29','Se asignó al cuarto \'7\' el servicio \'4\'','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4309,4,3402,'2025-11-14 08:11:26','Check In Guardado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4310,4,3404,'2025-11-14 08:13:00','Movimiento de Area Guardado: ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4311,4,3045,'2025-11-14 08:14:36','Insertó un nuevo registro en la tabla \'Tbl_Estadia\' para la habitación \'7\' y el huésped \'11\'','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4312,4,3403,'2025-11-14 08:15:24','Check Out Guardado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4313,4,3413,'2025-11-14 08:16:31','Cierre Guardado ','192.168.56.1','DESKTOP-01DDSQ2',_binary ''),(4314,4,NULL,'2025-11-14 08:44:05','Cierre de sesión','192.168.56.1','DESKTOP-01DDSQ2',_binary '\0'),(4315,4,NULL,'2025-11-23 23:02:55','Ingreso','192.168.1.55','BELY',_binary ''),(4316,4,3402,'2025-11-23 23:03:25','Al usuario \'\'carlo\'\' se le asignaron permisos en la aplicación \'\'Check In\'\': Ingresar, Consultar, Modificar, Eliminar','192.168.1.55','BELY',_binary ''),(4317,4,NULL,'2025-11-23 23:03:40','Cierre de sesión','192.168.1.55','BELY',_binary '\0'),(4318,5,NULL,'2025-11-23 23:54:41','Ingreso','192.168.1.55','BELY',_binary ''),(4319,4,NULL,'2025-11-23 23:56:04','Ingreso','192.168.1.55','BELY',_binary ''),(4320,4,3402,'2025-11-23 23:56:20','Al usuario \'\'carlo\'\' se le removieron permisos en la aplicación \'\'Check In\'\': Ingresar, Consultar, Modificar, Eliminar','192.168.1.55','BELY',_binary ''),(4321,4,NULL,'2025-11-23 23:56:28','Cierre de sesión','192.168.1.55','BELY',_binary '\0'),(4322,5,NULL,'2025-11-23 23:56:40','Ingreso','192.168.1.55','BELY',_binary ''),(4323,5,NULL,'2025-11-23 23:57:22','Ingreso','192.168.1.55','BELY',_binary ''),(4324,4,NULL,'2025-11-23 23:57:55','Ingreso','192.168.1.55','BELY',_binary ''),(4325,4,3402,'2025-11-23 23:58:09','Al usuario \'\'carlo\'\' se le asignaron permisos en la aplicación \'\'Check In\'\': Ingresar, Consultar, Modificar, Eliminar','192.168.1.55','BELY',_binary ''),(4326,4,NULL,'2025-11-23 23:58:14','Cierre de sesión','192.168.1.55','BELY',_binary '\0'),(4327,5,NULL,'2025-11-23 23:58:29','Ingreso','192.168.1.55','BELY',_binary ''),(4328,5,NULL,'2025-11-24 00:06:31','Ingreso','192.168.1.55','BELY',_binary ''),(4329,5,NULL,'2025-11-24 00:07:36','Ingreso','192.168.1.55','BELY',_binary ''),(4330,1,1,'2025-11-24 00:07:38','Consulta','192.168.1.55','BELY',_binary '\0'),(4331,4,NULL,'2025-11-24 00:21:25','Ingreso','192.168.1.55','BELY',_binary ''),(4332,4,1,'2025-11-24 00:22:22','Insertó un nuevo usuario: Diego','192.168.1.55','BELY',_binary ''),(4333,4,3402,'2025-11-24 00:23:08','Al usuario \'\'Diego\'\' se le asignaron permisos en la aplicación \'\'Check In\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir','192.168.1.55','BELY',_binary ''),(4334,4,NULL,'2025-11-24 00:23:25','Cierre de sesión','192.168.1.55','BELY',_binary '\0'),(4335,65,NULL,'2025-11-24 00:24:29','Ingreso','192.168.1.55','BELY',_binary ''),(4336,1,1,'2025-11-24 00:24:39','Consulta','192.168.1.55','BELY',_binary '\0'),(4337,5,NULL,'2025-11-24 10:47:58','Ingreso','192.168.1.55','BELY',_binary ''),(4338,5,NULL,'2025-11-24 10:49:16','Ingreso','192.168.1.55','BELY',_binary ''),(4339,5,NULL,'2025-11-24 10:50:44','Ingreso','192.168.1.55','BELY',_binary ''),(4340,5,NULL,'2025-11-24 10:53:24','Ingreso','192.168.1.55','BELY',_binary ''),(4341,5,NULL,'2025-11-24 11:29:02','Ingreso','192.168.1.55','BELY',_binary ''),(4342,5,NULL,'2025-11-24 11:41:01','Ingreso','192.168.1.55','BELY',_binary ''),(4343,5,NULL,'2025-11-24 11:42:34','Ingreso','192.168.1.55','BELY',_binary ''),(4344,5,NULL,'2025-11-24 12:40:58','Ingreso','192.168.1.55','BELY',_binary ''),(4345,5,3402,'2025-11-24 12:41:27','Insertó un nuevo registro en la tabla \'tbl_tienda\' con llave: 1','192.168.1.55','BELY',_binary ''),(4346,4,NULL,'2025-11-24 12:43:31','Ingreso','192.168.1.55','BELY',_binary ''),(4347,4,1,'2025-11-24 12:43:57','Insertó un nuevo usuario: Jhin','192.168.1.55','BELY',_binary ''),(4348,4,NULL,'2025-11-24 12:44:38','Cierre de sesión','192.168.1.55','BELY',_binary '\0'),(4349,66,NULL,'2025-11-24 12:44:54','Ingreso','192.168.1.55','BELY',_binary ''),(4350,4,NULL,'2025-11-24 12:45:18','Ingreso','192.168.1.55','BELY',_binary ''),(4351,4,3402,'2025-11-24 12:45:36','Al usuario \'\'Jhin\'\' se le asignaron permisos en la aplicación \'\'Check In\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir','192.168.1.55','BELY',_binary ''),(4352,4,NULL,'2025-11-24 12:45:44','Cierre de sesión','192.168.1.55','BELY',_binary '\0'),(4353,66,NULL,'2025-11-24 12:45:53','Ingreso','192.168.1.55','BELY',_binary ''),(4354,66,NULL,'2025-11-24 12:51:14','Ingreso','192.168.1.55','BELY',_binary ''),(4355,5,NULL,'2025-11-25 08:42:40','Ingreso','172.20.10.3','BELY',_binary ''),(4356,5,NULL,'2025-11-25 08:59:00','Ingreso','172.20.10.3','BELY',_binary ''),(4357,5,NULL,'2025-11-25 09:26:31','Ingreso','172.20.10.3','BELY',_binary ''),(4358,5,NULL,'2025-11-25 09:27:50','Ingreso','172.20.10.3','BELY',_binary ''),(4359,4,NULL,'2025-11-25 09:29:22','Ingreso','172.20.10.3','BELY',_binary ''),(4360,5,NULL,'2025-11-25 09:31:12','Ingreso','172.20.10.3','BELY',_binary ''),(4361,5,NULL,'2025-11-25 09:32:47','Ingreso','172.20.10.3','BELY',_binary ''),(4362,5,NULL,'2025-11-25 09:36:53','Ingreso','172.20.10.3','BELY',_binary ''),(4363,4,NULL,'2025-11-25 09:37:13','Ingreso','172.20.10.3','BELY',_binary ''),(4364,4,1,'2025-11-25 09:38:01','Insertó un nuevo usuario: usuariofinal','172.20.10.3','BELY',_binary ''),(4365,4,3402,'2025-11-25 09:38:19','Al usuario \'\'usuariofinal\'\' se le asignaron permisos en la aplicación \'\'Check In\'\': Ingresar, Consultar, Modificar, Eliminar, Imprimir','172.20.10.3','BELY',_binary ''),(4366,67,NULL,'2025-11-25 09:38:46','Ingreso','172.20.10.3','BELY',_binary ''),(4367,67,NULL,'2025-11-25 09:40:08','Ingreso','172.20.10.3','BELY',_binary ''),(4368,67,NULL,'2025-11-25 09:41:14','Ingreso','172.20.10.3','BELY',_binary ''),(4369,4,NULL,'2025-11-25 09:42:07','Ingreso','172.20.10.3','BELY',_binary ''),(4370,4,NULL,'2025-11-25 09:43:30','Ingreso','172.20.10.3','BELY',_binary ''),(4371,67,NULL,'2025-11-25 09:44:01','Ingreso','172.20.10.3','BELY',_binary ''),(4372,4,NULL,'2025-11-25 09:47:28','Ingreso','172.20.10.3','BELY',_binary ''),(4373,67,NULL,'2025-11-25 09:47:58','Ingreso','172.20.10.3','BELY',_binary ''),(4374,67,3402,'2025-11-25 09:49:51','Actualizo un registro en la tabla \'tbl_paciente\' Con la llave \'1\' ','172.20.10.3','BELY',_binary ''),(4375,67,NULL,'2025-11-25 12:32:40','Ingreso','192.168.1.55','BELY',_binary ''),(4376,67,3402,'2025-11-25 12:33:19','Insertó un nuevo registro en la tabla \'tbl_paciente\' con llave: 1','192.168.1.55','BELY',_binary '');
/*!40000 ALTER TABLE `tbl_bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bloqueo_usuario`
--

DROP TABLE IF EXISTS `tbl_bloqueo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bloqueo_usuario` (
  `Pk_Id_Bloqueo` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Usuario` int DEFAULT NULL,
  `Fk_Id_Bitacora` int DEFAULT NULL,
  `Cmp_Fecha_Inicio_Bloqueo_Usuario` datetime DEFAULT NULL,
  `Cmp_Fecha_Fin_Bloqueo_Usuario` datetime DEFAULT NULL,
  `Cmp_Motivo__Bloqueo_Usuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Bloqueo`),
  KEY `Fk_Bloqueo_Usuario` (`Fk_Id_Usuario`),
  KEY `Fk_Bloqueo_Bitacora` (`Fk_Id_Bitacora`),
  CONSTRAINT `Fk_Bloqueo_Bitacora` FOREIGN KEY (`Fk_Id_Bitacora`) REFERENCES `tbl_bitacora` (`Pk_Id_Bitacora`),
  CONSTRAINT `Fk_Bloqueo_Usuario` FOREIGN KEY (`Fk_Id_Usuario`) REFERENCES `tbl_usuario` (`Pk_Id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bloqueo_usuario`
--

LOCK TABLES `tbl_bloqueo_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_bloqueo_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_bloqueo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_buffet`
--

DROP TABLE IF EXISTS `tbl_buffet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_buffet` (
  `Pk_Id_Buffet` int NOT NULL AUTO_INCREMENT,
  `Cmp_Tipo_Buffet` varchar(50) DEFAULT NULL,
  `Cmp_Descripcion` varchar(100) DEFAULT NULL,
  `Cmp_Incluido_En_Reserva` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Buffet`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_buffet`
--

LOCK TABLES `tbl_buffet` WRITE;
/*!40000 ALTER TABLE `tbl_buffet` DISABLE KEYS */;
INSERT INTO `tbl_buffet` VALUES (1,'Buffet Estándar','Incluido sin costo',1);
/*!40000 ALTER TABLE `tbl_buffet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_catalogo_cuentas`
--

DROP TABLE IF EXISTS `tbl_catalogo_cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_catalogo_cuentas` (
  `Pk_Codigo_Cuenta` varchar(20) NOT NULL,
  `Cmp_CtaNombre` varchar(100) NOT NULL,
  `Cmp_CtaMadre` varchar(20) DEFAULT NULL,
  `Cmp_CtaSaldoInicial` decimal(15,2) DEFAULT '0.00',
  `Cmp_CtaCargoMes` decimal(15,2) DEFAULT '0.00',
  `Cmp_CtaAbonoMes` decimal(15,2) DEFAULT '0.00',
  `Cmp_CtaSaldoActual` decimal(15,2) DEFAULT '0.00',
  `Cmp_CtaCargoActual` decimal(15,2) DEFAULT '0.00',
  `Cmp_CtaAbonoActual` decimal(15,2) DEFAULT '0.00',
  `Cmp_CtaTipo` bit(1) NOT NULL,
  `Cmp_CtaNaturaleza` bit(1) NOT NULL,
  PRIMARY KEY (`Pk_Codigo_Cuenta`),
  KEY `Fk_CtaMadre` (`Cmp_CtaMadre`),
  CONSTRAINT `Fk_CtaMadre` FOREIGN KEY (`Cmp_CtaMadre`) REFERENCES `tbl_catalogo_cuentas` (`Pk_Codigo_Cuenta`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_catalogo_cuentas`
--

LOCK TABLES `tbl_catalogo_cuentas` WRITE;
/*!40000 ALTER TABLE `tbl_catalogo_cuentas` DISABLE KEYS */;
INSERT INTO `tbl_catalogo_cuentas` VALUES ('1','ACTIVO',NULL,0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary ''),('1.1','Activo disponible','1',0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary ''),('1.1.1','Caja general','1.1',0.00,0.00,0.00,600.00,0.00,0.00,_binary '',_binary ''),('1.1.2','Caja chica','1.1',0.00,0.00,0.00,400.00,0.00,0.00,_binary '',_binary ''),('1.2','Bancos','1',0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary ''),('1.2.1','Banco G&T','1.2',0.00,0.00,0.00,700.00,0.00,0.00,_binary '',_binary ''),('1.2.2','Banco BI','1.2',0.00,0.00,0.00,500.00,0.00,0.00,_binary '',_binary ''),('1.3','Cuentas por cobrar','1',0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary ''),('1.3.1','Clientes nacionales','1.3',0.00,0.00,0.00,1200.00,0.00,0.00,_binary '',_binary ''),('1.3.2','Clientes extranjeros','1.3',0.00,0.00,0.00,800.00,0.00,0.00,_binary '',_binary ''),('1.4','Inventarios','1',0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary ''),('1.4.1','Mercadería','1.4',0.00,0.00,0.00,3000.00,0.00,0.00,_binary '',_binary ''),('1.4.2','Materia prima','1.4',0.00,0.00,0.00,1500.00,0.00,0.00,_binary '',_binary ''),('1.5','Activos fijos','1',0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary ''),('1.5.1','Mobiliario y equipo','1.5',0.00,0.00,0.00,4000.00,0.00,0.00,_binary '',_binary ''),('1.5.2','Equipo de cómputo','1.5',0.00,0.00,0.00,2500.00,0.00,0.00,_binary '',_binary ''),('1.5.3','Vehículos','1.5',0.00,0.00,0.00,3500.00,0.00,0.00,_binary '',_binary ''),('2','PASIVO',NULL,0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary '\0'),('2.1','Cuentas por pagar','2',0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary '\0'),('2.1.1','Proveedores locales','2.1',0.00,0.00,0.00,1500.00,0.00,0.00,_binary '',_binary '\0'),('2.1.2','Proveedores extranjeros','2.1',0.00,0.00,0.00,1000.00,0.00,0.00,_binary '',_binary '\0'),('2.2','Obligaciones bancarias','2',0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary '\0'),('2.2.1','Préstamo Banco G&T','2.2',0.00,0.00,0.00,2000.00,0.00,0.00,_binary '',_binary '\0'),('2.2.2','Préstamo Banco BI','2.2',0.00,0.00,0.00,1500.00,0.00,0.00,_binary '',_binary '\0'),('2.3','Impuestos por pagar','2',0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary '\0'),('2.3.1','IVA por pagar','2.3',0.00,0.00,0.00,800.00,0.00,0.00,_binary '',_binary '\0'),('2.3.2','ISR por pagar','2.3',0.00,0.00,0.00,1200.00,0.00,0.00,_binary '',_binary '\0'),('2.3.3','Retenciones por pagar','2.3',0.00,0.00,0.00,300.00,0.00,0.00,_binary '',_binary '\0'),('2.3.4','IGSS por pagar','2.3',0.00,0.00,0.00,500.00,0.00,0.00,_binary '',_binary '\0'),('2.4','Otras obligaciones','2',0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary '\0'),('2.4.1','Acreedores varios','2.4',0.00,0.00,0.00,400.00,0.00,0.00,_binary '',_binary '\0'),('2.5','Impuesto de turismo','2',0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary '\0'),('2.5.1','Impuesto de turismo por pagar','2.5',0.00,0.00,0.00,0.00,0.00,0.00,_binary '',_binary '\0'),('3','CAPITAL',NULL,0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary '\0'),('3.1','Capital social','3',0.00,0.00,0.00,3000.00,0.00,0.00,_binary '',_binary '\0'),('3.2','Utilidades retenidas','3',0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary '\0'),('3.2.1','Ejercicio anterior','3.2',0.00,0.00,0.00,2000.00,0.00,0.00,_binary '',_binary '\0'),('3.2.2','Ejercicio actual','3.2',0.00,0.00,0.00,0.00,0.00,0.00,_binary '',_binary '\0'),('4','INGRESOS',NULL,0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary '\0'),('4.1','Ventas','4',0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary '\0'),('4.1.1','Ventas nacionales','4.1',0.00,0.00,0.00,25000.00,0.00,0.00,_binary '',_binary '\0'),('4.1.2','Ventas exportación','4.1',0.00,0.00,0.00,8000.00,0.00,0.00,_binary '',_binary '\0'),('4.2','Otros ingresos','4',0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary '\0'),('4.2.1','Descuentos obtenidos','4.2',0.00,0.00,0.00,500.00,0.00,0.00,_binary '',_binary '\0'),('4.2.2','Intereses ganados','4.2',0.00,0.00,0.00,300.00,0.00,0.00,_binary '',_binary '\0'),('4.3','Devoluciones sobre compras','4',0.00,0.00,0.00,200.00,0.00,0.00,_binary '',_binary '\0'),('5','COSTOS',NULL,0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary ''),('5.1','Costos operativos','5',0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary ''),('5.1.1','Costo de ventas','5.1',0.00,0.00,0.00,18000.00,0.00,0.00,_binary '',_binary ''),('5.1.2','Transporte de mercadería','5.1',0.00,0.00,0.00,1200.00,0.00,0.00,_binary '',_binary ''),('5.2','Costos de producción','5',0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary ''),('5.2.1','Materia prima consumida','5.2',0.00,0.00,0.00,2800.00,0.00,0.00,_binary '',_binary ''),('5.2.2','Mano de obra directa','5.2',0.00,0.00,0.00,4000.00,0.00,0.00,_binary '',_binary ''),('6','GASTOS',NULL,0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary ''),('6.1','Gastos operativos','6',0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary ''),('6.1.1','Sueldos administrativos','6.1',0.00,0.00,0.00,3000.00,0.00,0.00,_binary '',_binary ''),('6.1.2','Energía eléctrica','6.1',0.00,0.00,0.00,900.00,0.00,0.00,_binary '',_binary ''),('6.1.3','Papelería y útiles','6.1',0.00,0.00,0.00,600.00,0.00,0.00,_binary '',_binary ''),('6.1.4','Publicidad','6.1',0.00,0.00,0.00,1200.00,0.00,0.00,_binary '',_binary ''),('6.2','Gastos financieros','6',0.00,0.00,0.00,0.00,0.00,0.00,_binary '\0',_binary ''),('6.2.1','Intereses bancarios','6.2',0.00,0.00,0.00,800.00,0.00,0.00,_binary '',_binary ''),('6.3','Gasto por impuesto ISR','6',0.00,0.00,0.00,1200.00,0.00,0.00,_binary '',_binary '');
/*!40000 ALTER TABLE `tbl_catalogo_cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_categoria_producto`
--

DROP TABLE IF EXISTS `tbl_categoria_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_categoria_producto` (
  `Cmp_Id_Categoria_Producto` int NOT NULL AUTO_INCREMENT,
  `Cmp_Nombre_Categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`Cmp_Id_Categoria_Producto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_categoria_producto`
--

LOCK TABLES `tbl_categoria_producto` WRITE;
/*!40000 ALTER TABLE `tbl_categoria_producto` DISABLE KEYS */;
INSERT INTO `tbl_categoria_producto` VALUES (1,'Carnes y Aves'),(2,'Aceites y Grasas'),(3,'Condimentos y Especias'),(4,'Verduras y Hortalizas'),(5,'Frutas y Cítricos');
/*!40000 ALTER TABLE `tbl_categoria_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_check_in`
--

DROP TABLE IF EXISTS `tbl_check_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_check_in` (
  `Pk_Id_Check_in` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Huesped` int DEFAULT NULL,
  `Fk_Id_Reserva` int DEFAULT NULL,
  `Cmp_Fecha_Check_In` date DEFAULT NULL,
  `Cmp_Estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Check_in`),
  KEY `Fk_Id_Huesped` (`Fk_Id_Huesped`),
  KEY `Fk_Id_Reserva` (`Fk_Id_Reserva`),
  CONSTRAINT `Tbl_Check_In_ibfk_1` FOREIGN KEY (`Fk_Id_Huesped`) REFERENCES `tbl_huesped` (`Pk_Id_Huesped`),
  CONSTRAINT `Tbl_Check_In_ibfk_2` FOREIGN KEY (`Fk_Id_Reserva`) REFERENCES `tbl_reserva` (`Pk_Id_Reserva`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_check_in`
--

LOCK TABLES `tbl_check_in` WRITE;
/*!40000 ALTER TABLE `tbl_check_in` DISABLE KEYS */;
INSERT INTO `tbl_check_in` VALUES (1,3,12,'2025-11-13','Finalizado'),(2,1,11,'2025-11-21','Cancelado'),(3,1,13,'2025-11-21','Finalizado'),(4,1,15,'2025-11-21','Cancelado'),(5,3,14,'2025-11-13','Finalizado'),(6,4,18,'2025-11-20','Finalizado'),(7,4,19,'2025-11-21','Finalizado'),(8,4,20,'2025-11-20','Finalizado'),(9,3,22,'2025-11-10','Finalizado'),(10,3,16,'2025-11-10','Finalizado'),(11,3,23,'2025-11-15','Finalizado'),(12,3,24,'2025-11-08','Cancelado'),(13,4,31,'2025-11-09','Cancelado'),(14,4,32,'2025-11-14','Cancelado'),(15,4,33,'2025-11-09','Finalizado'),(16,1,17,'2025-11-12','Cancelado'),(17,1,25,'2025-11-20','Cancelado'),(18,1,27,'2025-11-20','Cancelado'),(19,5,35,'2025-11-09','Finalizado'),(20,3,26,'2025-11-12','Finalizado'),(21,5,41,'2025-11-25','Activo'),(22,8,42,'2025-11-01','Activo'),(23,8,39,'2025-11-14','Activo'),(24,9,43,'2025-11-01','Activo'),(25,9,44,'2025-11-01','Finalizado'),(26,4,45,'2025-11-13','Activo'),(27,4,46,'2025-11-15','Finalizado'),(28,11,54,'2025-11-14','Finalizado');
/*!40000 ALTER TABLE `tbl_check_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_check_out`
--

DROP TABLE IF EXISTS `tbl_check_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_check_out` (
  `Pk_Id_Check_out` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Check_In` int DEFAULT NULL,
  `Cmp_Fecha_Check_Out` date DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Check_out`),
  KEY `Fk_Id_Check_In` (`Fk_Id_Check_In`),
  CONSTRAINT `Tbl_Check_Out_ibfk_1` FOREIGN KEY (`Fk_Id_Check_In`) REFERENCES `tbl_check_in` (`Pk_Id_Check_in`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_check_out`
--

LOCK TABLES `tbl_check_out` WRITE;
/*!40000 ALTER TABLE `tbl_check_out` DISABLE KEYS */;
INSERT INTO `tbl_check_out` VALUES (3,3,'2025-11-24'),(4,5,'2025-11-17'),(5,6,'2025-11-23'),(6,7,'2025-11-23'),(7,8,'2025-11-23'),(8,9,'2025-11-18'),(9,10,'2025-11-25'),(11,12,'2025-11-09'),(12,12,'2025-11-09'),(13,4,'2025-11-22'),(14,12,'2025-11-09'),(15,13,'2025-11-09'),(16,15,'2025-11-12'),(18,20,'2025-11-15'),(19,25,'2025-11-13'),(20,27,'2025-11-21'),(21,28,'2025-11-16');
/*!40000 ALTER TABLE `tbl_check_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cierre_diario`
--

DROP TABLE IF EXISTS `tbl_cierre_diario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cierre_diario` (
  `Pk_Id_Cierre` int NOT NULL AUTO_INCREMENT,
  `Cmp_Fecha_Corte` datetime NOT NULL,
  `Cmp_Descripcion` varchar(100) DEFAULT NULL,
  `Cmp_Total_Ingresos` decimal(12,2) DEFAULT '0.00',
  `Cmp_Total_Egresos` decimal(12,2) DEFAULT '0.00',
  `Cmp_Saldo_Final` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`Pk_Id_Cierre`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cierre_diario`
--

LOCK TABLES `tbl_cierre_diario` WRITE;
/*!40000 ALTER TABLE `tbl_cierre_diario` DISABLE KEYS */;
INSERT INTO `tbl_cierre_diario` VALUES (3,'2025-11-23 00:00:00','Cierre del dia 23 de Nov 2025',9065.00,200.00,8865.00),(7,'2025-11-15 00:00:00','Cierre del dia 15 de nov',2950.00,0.00,2950.00),(8,'2025-11-12 00:00:00','Cierre del dia 12nov',1915.00,100.00,1815.00),(9,'2025-11-13 00:00:00','Cierre Del 13 de Noviembre',5050.00,0.00,5050.00),(10,'2025-11-16 00:00:00','Cierre 16 de noviembre 2025',2260.00,0.00,2260.00);
/*!40000 ALTER TABLE `tbl_cierre_diario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cliente`
--

DROP TABLE IF EXISTS `tbl_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cliente` (
  `Pk_Id_Cliente` int NOT NULL,
  `Cmp_Nombres_Cliente` varchar(50) DEFAULT NULL,
  `Cmp_Apellidos_Cliente` varchar(50) DEFAULT NULL,
  `Cmp_Dni_Cliente` bigint DEFAULT NULL,
  `Cmp_Fecha_Registro_Cliente` datetime DEFAULT NULL,
  `Cmp_Estado_Cliente` bit(1) DEFAULT NULL,
  `Cmp_Nacionalidad_Cliente` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cliente`
--

LOCK TABLES `tbl_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_cliente` DISABLE KEYS */;
INSERT INTO `tbl_cliente` VALUES (1,'Cliente','Prueba',9876543210101,'2025-09-21 23:00:51',_binary '','Guatemalteco');
/*!40000 ALTER TABLE `tbl_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_correo_cliente`
--

DROP TABLE IF EXISTS `tbl_correo_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_correo_cliente` (
  `Pk_Id_Correo` int NOT NULL,
  `Fk_Id_Cliente` int DEFAULT NULL,
  `Cmp_Correo_Cliente` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Correo`),
  KEY `Fk_Correo_Cliente` (`Fk_Id_Cliente`),
  CONSTRAINT `Fk_Correo_Cliente` FOREIGN KEY (`Fk_Id_Cliente`) REFERENCES `tbl_cliente` (`Pk_Id_Cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_correo_cliente`
--

LOCK TABLES `tbl_correo_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_correo_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_correo_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detalle_cierre_diario`
--

DROP TABLE IF EXISTS `tbl_detalle_cierre_diario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_detalle_cierre_diario` (
  `Pk_Id_Detalle` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Cierre` int DEFAULT NULL,
  `Fk_Id_Folio` int DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Detalle`),
  KEY `Fk_Id_Cierre` (`Fk_Id_Cierre`),
  KEY `Fk_Id_Folio` (`Fk_Id_Folio`),
  CONSTRAINT `Tbl_Detalle_Cierre_Diario_ibfk_1` FOREIGN KEY (`Fk_Id_Cierre`) REFERENCES `tbl_cierre_diario` (`Pk_Id_Cierre`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Tbl_Detalle_Cierre_Diario_ibfk_2` FOREIGN KEY (`Fk_Id_Folio`) REFERENCES `tbl_folio` (`Pk_Id_Folio`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detalle_cierre_diario`
--

LOCK TABLES `tbl_detalle_cierre_diario` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_cierre_diario` DISABLE KEYS */;
INSERT INTO `tbl_detalle_cierre_diario` VALUES (2,3,6),(3,3,7),(4,3,8),(9,7,20),(10,8,15),(11,9,25),(12,10,28);
/*!40000 ALTER TABLE `tbl_detalle_cierre_diario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detalle_cierre_salones`
--

DROP TABLE IF EXISTS `tbl_detalle_cierre_salones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_detalle_cierre_salones` (
  `Pk_Id_Detalle_Salon` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Cierre` int DEFAULT NULL,
  `Fk_Id_Folio_Salon` int DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Detalle_Salon`),
  KEY `Fk_Id_Cierre` (`Fk_Id_Cierre`),
  KEY `Fk_Id_Folio_Salon` (`Fk_Id_Folio_Salon`),
  CONSTRAINT `Tbl_Detalle_Cierre_Salones_ibfk_1` FOREIGN KEY (`Fk_Id_Cierre`) REFERENCES `tbl_cierre_diario` (`Pk_Id_Cierre`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Tbl_Detalle_Cierre_Salones_ibfk_2` FOREIGN KEY (`Fk_Id_Folio_Salon`) REFERENCES `tbl_folio_salones` (`Pk_Id_Folio_Salones`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detalle_cierre_salones`
--

LOCK TABLES `tbl_detalle_cierre_salones` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_cierre_salones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detalle_cierre_salones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detalle_folio`
--

DROP TABLE IF EXISTS `tbl_detalle_folio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_detalle_folio` (
  `Pk_Id_Detalle_Folio` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Folio` int DEFAULT NULL,
  `Fk_Id_Area` int DEFAULT NULL,
  `Cmp_Descripciones` varchar(150) DEFAULT NULL,
  `Cmp_Estado` varchar(50) DEFAULT 'Activo',
  PRIMARY KEY (`Pk_Id_Detalle_Folio`),
  KEY `Fk_Id_Folio` (`Fk_Id_Folio`),
  KEY `Fk_Id_Area` (`Fk_Id_Area`),
  CONSTRAINT `Tbl_Detalle_Folio_ibfk_1` FOREIGN KEY (`Fk_Id_Folio`) REFERENCES `tbl_folio` (`Pk_Id_Folio`),
  CONSTRAINT `Tbl_Detalle_Folio_ibfk_2` FOREIGN KEY (`Fk_Id_Area`) REFERENCES `tbl_area` (`Pk_Id_Area`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detalle_folio`
--

LOCK TABLES `tbl_detalle_folio` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_folio` DISABLE KEYS */;
INSERT INTO `tbl_detalle_folio` VALUES (1,5,5,'Comida','Activo'),(2,5,6,'Pago Adelantado','Activo'),(3,5,7,'Cobro de estadía - Noche 1','Activo'),(4,5,8,'Cobro de estadía - Noche 2','Activo'),(5,5,9,'Cobro de estadía - Noche 3','Activo'),(6,5,10,'Cobro de estadía - Noche 4','Activo'),(7,6,11,'Comida','Activo'),(8,6,12,'Pago Adelantado','Activo'),(9,6,13,'Cobro de estadía - Noche 1','Activo'),(10,6,14,'Cobro de estadía - Noche 2','Activo'),(11,6,15,'Cobro de estadía - Noche 3','Activo'),(12,6,16,'Impuesto de turismo','Activo'),(13,7,17,'comida','Activo'),(14,7,18,'pago adelantado','Activo'),(15,7,19,'Cobro de estadía - Noche 1','Activo'),(16,7,20,'Cobro de estadía - Noche 2','Activo'),(17,7,21,'Impuesto de turismo','Activo'),(18,8,22,'comida','Activo'),(19,8,23,'Pago adelantada','Activo'),(20,8,24,'Cobro de estadía - Noche 1','Activo'),(21,8,25,'Cobro de estadía - Noche 2','Activo'),(22,8,26,'Cobro de estadía - Noche 3','Activo'),(23,8,27,'Impuesto de turismo','Activo'),(24,4,28,'comida','Activo'),(25,4,29,'cargo','Activo'),(26,10,30,'Banquete','Activo'),(27,9,31,'Cobro de estadía - Noche 1','Activo'),(28,9,32,'Cobro de estadía - Noche 2','Activo'),(29,9,33,'Cobro de estadía - Noche 3','Activo'),(30,9,34,'Cobro de estadía - Noche 4','Activo'),(31,9,35,'Cobro de estadía - Noche 5','Activo'),(32,9,36,'Cobro de estadía - Noche 6','Activo'),(33,9,37,'Cobro de estadía - Noche 7','Activo'),(34,9,38,'Cobro de estadía - Noche 8','Activo'),(35,10,39,'Cobro de estadía - Noche 1','Activo'),(36,10,40,'Cobro de estadía - Noche 2','Activo'),(37,10,41,'Cobro de estadía - Noche 3','Activo'),(38,10,42,'Cobro de estadía - Noche 4','Activo'),(39,10,43,'Cobro de estadía - Noche 5','Activo'),(40,10,44,'Cobro de estadía - Noche 6','Activo'),(41,10,45,'Cobro de estadía - Noche 7','Activo'),(42,10,46,'Cobro de estadía - Noche 8','Activo'),(43,10,47,'Cobro de estadía - Noche 9','Activo'),(44,10,48,'Cobro de estadía - Noche 10','Activo'),(45,10,49,'Cobro de estadía - Noche 11','Activo'),(46,10,50,'Cobro de estadía - Noche 12','Activo'),(47,10,51,'Cobro de estadía - Noche 13','Activo'),(48,10,52,'Cobro de estadía - Noche 14','Activo'),(49,10,53,'Cobro de estadía - Noche 15','Activo'),(50,11,54,'buffet','Activo'),(51,11,55,'Cobro de estadía - Noche 1','Activo'),(52,15,56,'Comida','Activo'),(53,15,57,'Pago Adelantado','Activo'),(54,15,58,'Cobro de estadía - Noche 1','Activo'),(55,15,59,'Cobro de estadía - Noche 2','Activo'),(56,15,60,'Cobro de estadía - Noche 3','Activo'),(57,15,61,'Impuesto de turismo','Activo'),(58,19,62,'Cobro de estadía - Noche 1','Activo'),(59,19,63,'Cobro de estadía - Noche 2','Activo'),(60,20,64,'Comida','Activo'),(61,20,65,'Cobro de estadía - Noche 1','Activo'),(62,20,66,'Cobro de estadía - Noche 2','Activo'),(63,20,67,'Cobro de estadía - Noche 3','Activo'),(64,18,68,'Cobro de estadía - Noche 12','Activo'),(65,25,69,'Buffet','Activo'),(66,25,70,'Cobro de estadía - Noche 1','Activo'),(67,25,71,'Cobro de estadía - Noche 2','Activo'),(68,25,72,'Cobro de estadía - Noche 3','Activo'),(69,25,73,'Cobro de estadía - Noche 4','Activo'),(70,25,74,'Cobro de estadía - Noche 5','Activo'),(71,25,75,'Cobro de estadía - Noche 6','Activo'),(72,25,76,'Cobro de estadía - Noche 7','Activo'),(73,25,77,'Cobro de estadía - Noche 8','Activo'),(74,25,78,'Cobro de estadía - Noche 9','Activo'),(75,25,79,'Cobro de estadía - Noche 10','Activo'),(76,25,80,'Cobro de estadía - Noche 11','Activo'),(77,25,81,'Cobro de estadía - Noche 12','Activo'),(78,27,82,'Buffet','Activo'),(79,27,83,'Cobro de estadía - Noche 1','Activo'),(80,27,84,'Cobro de estadía - Noche 2','Activo'),(81,27,85,'Cobro de estadía - Noche 3','Activo'),(82,27,86,'Cobro de estadía - Noche 4','Activo'),(83,27,87,'Cobro de estadía - Noche 5','Activo'),(84,27,88,'Cobro de estadía - Noche 6','Activo'),(85,27,89,'Impuesto de turismo','Activo'),(86,28,90,'Uso de lavadora','Activo'),(87,28,91,'Cobro de estadía - Noche 1','Activo'),(88,28,92,'Cobro de estadía - Noche 2','Activo'),(89,28,93,'Impuesto de turismo','Activo');
/*!40000 ALTER TABLE `tbl_detalle_folio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detalle_ordenes_menu`
--

DROP TABLE IF EXISTS `tbl_detalle_ordenes_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_detalle_ordenes_menu` (
  `Pk_Id_Detalle_Orden` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Orden_Produccion` int DEFAULT NULL,
  `Fk_Id_Menu` int DEFAULT NULL,
  `Cmp_Cantidad_Platillos` int DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Detalle_Orden`),
  KEY `Fk_Id_Orden_Produccion` (`Fk_Id_Orden_Produccion`),
  KEY `Fk_Id_Menu` (`Fk_Id_Menu`),
  CONSTRAINT `Tbl_Detalle_Ordenes_Menu_ibfk_1` FOREIGN KEY (`Fk_Id_Orden_Produccion`) REFERENCES `tbl_ordenes_produccion` (`Pk_Id_Orden_Produccion`),
  CONSTRAINT `Tbl_Detalle_Ordenes_Menu_ibfk_2` FOREIGN KEY (`Fk_Id_Menu`) REFERENCES `tbl_menu` (`Pk_Id_Menu`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detalle_ordenes_menu`
--

LOCK TABLES `tbl_detalle_ordenes_menu` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_ordenes_menu` DISABLE KEYS */;
INSERT INTO `tbl_detalle_ordenes_menu` VALUES (1,2,4,5),(3,3,5,3),(4,4,5,3),(5,5,1,3),(6,6,2,9),(7,7,3,6),(11,6,3,11),(12,10,2,25),(13,10,1,3),(14,11,1,2);
/*!40000 ALTER TABLE `tbl_detalle_ordenes_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detalle_ordenes_mobiliario`
--

DROP TABLE IF EXISTS `tbl_detalle_ordenes_mobiliario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_detalle_ordenes_mobiliario` (
  `Pk_Id_Detalle_Orden_Mobiliario` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Orden_Produccion` int DEFAULT NULL,
  `Fk_Id_Mobiliario` int DEFAULT NULL,
  `Cmp_Cantidad_Mobiliario` int DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Detalle_Orden_Mobiliario`),
  KEY `Fk_Id_Orden_Produccion` (`Fk_Id_Orden_Produccion`),
  KEY `Fk_Id_Mobiliario` (`Fk_Id_Mobiliario`),
  CONSTRAINT `Tbl_Detalle_Ordenes_Mobiliario_ibfk_1` FOREIGN KEY (`Fk_Id_Orden_Produccion`) REFERENCES `tbl_ordenes_produccion` (`Pk_Id_Orden_Produccion`),
  CONSTRAINT `Tbl_Detalle_Ordenes_Mobiliario_ibfk_2` FOREIGN KEY (`Fk_Id_Mobiliario`) REFERENCES `tbl_mobiliario` (`Pk_Id_Mobiliario`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detalle_ordenes_mobiliario`
--

LOCK TABLES `tbl_detalle_ordenes_mobiliario` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_ordenes_mobiliario` DISABLE KEYS */;
INSERT INTO `tbl_detalle_ordenes_mobiliario` VALUES (1,2,1,5),(2,3,2,10),(3,4,3,7),(4,5,4,8),(5,6,5,10),(6,7,6,9),(8,7,4,6),(10,9,3,3),(11,10,8,4),(12,11,2,1);
/*!40000 ALTER TABLE `tbl_detalle_ordenes_mobiliario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detallepoliza`
--

DROP TABLE IF EXISTS `tbl_detallepoliza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_detallepoliza` (
  `PkFk_EncCodigo_Poliza` int NOT NULL,
  `PkFk_Fecha_Poliza` date NOT NULL,
  `PkFk_Codigo_Cuenta` varchar(20) NOT NULL,
  `Cmp_Tipo_Poliza` bit(1) NOT NULL,
  `Cmp_Valor_Poliza` decimal(15,2) NOT NULL,
  PRIMARY KEY (`PkFk_EncCodigo_Poliza`,`PkFk_Fecha_Poliza`,`PkFk_Codigo_Cuenta`),
  KEY `fk_detalle_poliza_cuenta` (`PkFk_Codigo_Cuenta`),
  CONSTRAINT `fk_detalle_poliza_cuenta` FOREIGN KEY (`PkFk_Codigo_Cuenta`) REFERENCES `tbl_catalogo_cuentas` (`Pk_Codigo_Cuenta`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_detalle_poliza_encabezado` FOREIGN KEY (`PkFk_EncCodigo_Poliza`, `PkFk_Fecha_Poliza`) REFERENCES `tbl_encabezadopoliza` (`Pk_EncCodigo_Poliza`, `Pk_Fecha_Poliza`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Tbl_DetallePoliza_chk_1` CHECK ((`Cmp_Valor_Poliza` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detallepoliza`
--

LOCK TABLES `tbl_detallepoliza` WRITE;
/*!40000 ALTER TABLE `tbl_detallepoliza` DISABLE KEYS */;
INSERT INTO `tbl_detallepoliza` VALUES (1,'2025-11-14','1.2.1',_binary '',495.00),(1,'2025-11-14','2.5.1',_binary '\0',495.00),(2,'2025-11-14','1.2.1',_binary '',1565.00),(2,'2025-11-14','2.5.1',_binary '\0',1565.00);
/*!40000 ALTER TABLE `tbl_detallepoliza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_empleado`
--

DROP TABLE IF EXISTS `tbl_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_empleado` (
  `Pk_Id_Empleado` int NOT NULL AUTO_INCREMENT,
  `Cmp_Nombres_Empleado` varchar(50) DEFAULT NULL,
  `Cmp_Apellidos_Empleado` varchar(50) DEFAULT NULL,
  `Cmp_Dpi_Empleado` bigint DEFAULT NULL,
  `Cmp_Nit_Empleado` bigint DEFAULT NULL,
  `Cmp_Correo_Empleado` varchar(50) DEFAULT NULL,
  `Cmp_Telefono_Empleado` varchar(15) DEFAULT NULL,
  `Cmp_Genero_Empleado` bit(1) DEFAULT NULL,
  `Cmp_Fecha_Nacimiento_Empleado` date DEFAULT NULL,
  `Cmp_Fecha_Contratacion__Empleado` date DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'Ricardu','Esquite',1234567890101,12345676,'ricardo@email.com','5555-5555',_binary '','2000-01-01','2020-01-01'),(2,'Juan','Pérez López',1234567890101,9876542,'juan.perez@example.com','5555-1234',_binary '','1995-08-20','2025-09-21'),(3,'Juan','pruebas',1234,123,'@pruebas','1234',_binary '','2025-09-26','2025-09-26'),(4,'Kenph','Luna',1234567891234,123456789,'correo@miumg.edu.gt','12345678',_binary '','2003-03-02','2025-09-01'),(7,'Marcos','Velazquez',1234,232325,'marcos1@gmail.com','0901-22-3415',_binary '','2005-01-10','2025-10-10'),(8,'Juan','Perez',12345678,12345874,'juan@prueba.com','123456787',_binary '','2003-06-06','2025-02-02'),(9,'Ernesto','Samayoa',1212365656565,222325656,'samayoadavid1@gmail.com','2345-5560',_binary '','2004-01-24','2025-01-15'),(10,'Aron','Edquit',123456788,2345674,'aron1@gmail.com','55667744',_binary '','2005-01-25','2025-02-23'),(11,'Cesar','Estrada',123,123,'cestrada5@miumg.edu.gt','0901-22-10153',_binary '','2003-06-20','2025-10-10'),(12,'Raúl','Ramirez',1123454444444,677778544,'raul1@gmail.com','12345644',_binary '','2002-01-25','2026-01-25'),(13,'Kenph','Ansonny',12316546,123456123,'kenph','123156',_binary '','2004-02-03','2025-10-13'),(14,'Joge','Saul',12314,1231,'Jorge@gmail.com','123123',_binary '','2000-01-10','2025-10-13'),(16,'123as','asd',134,123,'123','asd',_binary '','2026-10-10','2025-10-10'),(120,'Jose','Natareno',1718181818181,878484849,'prueba@gmail.com','57894875',_binary '','2003-06-24','2030-11-10'),(255,'Dan','sal',1111111111111,595959595,'dan@gmail.com','45454545',_binary '\0','2003-05-26','2025-06-25'),(324,'Andrea','Suquen',2313,23123335,'andrea@gmail.com','32321',_binary '\0','2009-02-03','2020-05-10'),(400,'marcos','velasquez',7897897897,789789789,'marcos@gmail.com','789789789',_binary '','2025-08-12','2025-08-12'),(414,'Luis','vasquez',4324324267898,111111111,'luis@gmail.com','54345434',_binary '','2003-08-12','2022-09-15'),(800,'Ángel','González',9876743344321,877870938,'angelgonzalez@gmail.com','09767623',_binary '','2000-03-03','2025-10-28'),(900,'mario','vasquez',2343243242,789784443,'hjk@gmail.com','789789',_binary '','2022-08-12','2022-08-12'),(901,'Ismar','Cortez',1234567891234,123456784,'leo@gmail.com','4011-4445',_binary '','2005-09-08','2025-09-08'),(1001,'Ruben','Luch',1234567890999,123456782,'ruben1@miumg.edu.gt','5460-0441',_binary '','2001-01-11','2025-01-19'),(9999,'Fredy','Reyes',4894234580101,123456789,'fredy@gmail.com','12345678',_binary '','2003-05-30','2025-10-10');
/*!40000 ALTER TABLE `tbl_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_encabezadopoliza`
--

DROP TABLE IF EXISTS `tbl_encabezadopoliza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_encabezadopoliza` (
  `Pk_EncCodigo_Poliza` int NOT NULL,
  `Pk_Fecha_Poliza` date NOT NULL,
  `Cmp_Concepto_Poliza` varchar(200) NOT NULL,
  `Cmp_Valor_Poliza` decimal(15,2) DEFAULT '0.00',
  `Cmp_Estado_Poliza` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`Pk_EncCodigo_Poliza`,`Pk_Fecha_Poliza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_encabezadopoliza`
--

LOCK TABLES `tbl_encabezadopoliza` WRITE;
/*!40000 ALTER TABLE `tbl_encabezadopoliza` DISABLE KEYS */;
INSERT INTO `tbl_encabezadopoliza` VALUES (1,'2025-11-14','Poliza de Octubre',990.00,_binary ''),(2,'2025-11-14','Poliza Noviembre',3130.00,_binary '');
/*!40000 ALTER TABLE `tbl_encabezadopoliza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estadia`
--

DROP TABLE IF EXISTS `tbl_estadia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_estadia` (
  `Pk_Id_Estadia` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Habitaciones` int DEFAULT NULL,
  `Fk_Id_Huesped_Checkin` int DEFAULT NULL,
  `Cmp_Num_Huespedes` int DEFAULT NULL,
  `Cmp_Fecha_Check_In` date DEFAULT NULL,
  `Cmp_Fecha_Check_Out` date DEFAULT NULL,
  `Cmp_Tiene_Reservacion` tinyint(1) DEFAULT NULL,
  `Cmp_Monto_Total_Pago` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Estadia`),
  KEY `Fk_Id_Habitaciones` (`Fk_Id_Habitaciones`),
  KEY `Fk_Id_Huesped_Checkin` (`Fk_Id_Huesped_Checkin`),
  CONSTRAINT `Tbl_Estadia_ibfk_1` FOREIGN KEY (`Fk_Id_Habitaciones`) REFERENCES `tbl_habitaciones` (`PK_ID_Habitaciones`),
  CONSTRAINT `Tbl_Estadia_ibfk_2` FOREIGN KEY (`Fk_Id_Huesped_Checkin`) REFERENCES `tbl_huesped` (`Pk_Id_Huesped`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estadia`
--

LOCK TABLES `tbl_estadia` WRITE;
/*!40000 ALTER TABLE `tbl_estadia` DISABLE KEYS */;
INSERT INTO `tbl_estadia` VALUES (1,1,1,1,'2025-11-07','2025-11-09',1,1100.00),(3,2,3,2,'2025-11-07','2025-11-09',0,1900.00),(6,1,3,1,'2025-11-07','2025-11-09',1,1100.00),(7,1,5,1,'2025-11-09','2025-11-10',1,550.00),(8,1,1,1,'2025-11-07','2025-11-09',0,1100.00),(9,1,4,1,'2025-11-11','2025-11-12',1,550.00),(10,1,4,1,'2025-11-11','2025-11-14',1,1650.00),(11,1,4,1,'2025-11-09','2025-11-13',0,2200.00),(12,2,5,-1,'2025-11-25','2025-11-25',1,0.00),(13,4,8,-1,'2025-11-01','2025-11-01',1,0.00),(14,5,8,-1,'2025-11-14','2025-11-14',1,0.00),(15,3,9,-1,'2025-11-01','2025-11-01',1,0.00),(16,6,9,-1,'2025-11-01','2025-11-01',1,0.00),(17,6,9,2,'2025-11-01','2025-11-13',1,4950.00),(18,6,4,-1,'2025-11-13','2025-11-13',1,0.00),(19,3,4,-1,'2025-11-15','2025-11-15',1,0.00),(20,1,5,1,'2025-11-09','2025-11-14',1,2750.00),(21,7,11,-1,'2025-11-14','2025-11-14',1,0.00),(22,7,11,2,'2025-11-14','2025-11-16',1,1600.00);
/*!40000 ALTER TABLE `tbl_estadia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_existencia`
--

DROP TABLE IF EXISTS `tbl_existencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_existencia` (
  `Cmp_Id_Existencia` int NOT NULL AUTO_INCREMENT,
  `Cmp_Id_Producto` int DEFAULT NULL,
  `Cmp_Id_Almacen` int DEFAULT NULL,
  `Cmp_Cantidad` decimal(12,4) DEFAULT NULL,
  `Cmp_Cantidad_Minima` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `Cmp_Cantidad_Maxima` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`Cmp_Id_Existencia`),
  KEY `Cmp_Id_Producto` (`Cmp_Id_Producto`),
  KEY `Cmp_Id_Almacen` (`Cmp_Id_Almacen`),
  CONSTRAINT `Tbl_Existencia_ibfk_1` FOREIGN KEY (`Cmp_Id_Producto`) REFERENCES `tbl_producto` (`Cmp_Id_Producto`),
  CONSTRAINT `Tbl_Existencia_ibfk_2` FOREIGN KEY (`Cmp_Id_Almacen`) REFERENCES `tbl_almacen` (`Cmp_Id_Almacen`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_existencia`
--

LOCK TABLES `tbl_existencia` WRITE;
/*!40000 ALTER TABLE `tbl_existencia` DISABLE KEYS */;
INSERT INTO `tbl_existencia` VALUES (1,1,NULL,400.0000,0.0000,0.0000),(2,2,NULL,20.0000,0.0000,0.0000),(3,3,NULL,6.0000,0.0000,0.0000),(4,4,NULL,3.0000,0.0000,0.0000),(5,5,NULL,2.0000,0.0000,0.0000),(6,6,NULL,2.0000,0.0000,0.0000);
/*!40000 ALTER TABLE `tbl_existencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_factura`
--

DROP TABLE IF EXISTS `tbl_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_factura` (
  `Pk_Id_Factura` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Reserva` int NOT NULL,
  `Cmp_Fecha_Emision` date DEFAULT NULL,
  `Cmp_Total_Factura` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Factura`),
  KEY `Fk_Id_Reserva` (`Fk_Id_Reserva`),
  CONSTRAINT `Tbl_Factura_ibfk_1` FOREIGN KEY (`Fk_Id_Reserva`) REFERENCES `tbl_reserva` (`Pk_Id_Reserva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_factura`
--

LOCK TABLES `tbl_factura` WRITE;
/*!40000 ALTER TABLE `tbl_factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_folio`
--

DROP TABLE IF EXISTS `tbl_folio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_folio` (
  `Pk_Id_Folio` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Check_In` int DEFAULT NULL,
  `Fk_Id_Check_Out` int DEFAULT NULL,
  `Fk_Id_Habitacion` int DEFAULT NULL,
  `Cmp_Fecha_Creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `Cmp_Fecha_Cierre` datetime DEFAULT NULL,
  `Cmp_Total_Cargos` decimal(10,2) DEFAULT '0.00',
  `Cmp_Total_Abonos` decimal(10,2) DEFAULT '0.00',
  `Cmp_Saldo_Final` decimal(10,2) DEFAULT '0.00',
  `Cmp_Estado` varchar(50) DEFAULT 'Abierto',
  PRIMARY KEY (`Pk_Id_Folio`),
  KEY `Fk_Id_Check_In` (`Fk_Id_Check_In`),
  KEY `Fk_Id_Check_Out` (`Fk_Id_Check_Out`),
  KEY `Fk_Id_Habitacion` (`Fk_Id_Habitacion`),
  CONSTRAINT `Tbl_Folio_ibfk_1` FOREIGN KEY (`Fk_Id_Check_In`) REFERENCES `tbl_check_in` (`Pk_Id_Check_in`),
  CONSTRAINT `Tbl_Folio_ibfk_2` FOREIGN KEY (`Fk_Id_Check_Out`) REFERENCES `tbl_check_out` (`Pk_Id_Check_out`),
  CONSTRAINT `Tbl_Folio_ibfk_3` FOREIGN KEY (`Fk_Id_Habitacion`) REFERENCES `tbl_habitaciones` (`PK_ID_Habitaciones`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_folio`
--

LOCK TABLES `tbl_folio` WRITE;
/*!40000 ALTER TABLE `tbl_folio` DISABLE KEYS */;
INSERT INTO `tbl_folio` VALUES (1,1,NULL,2,'2025-11-07 22:07:52','2025-11-15 16:12:48',2000.00,100.00,1900.00,'ASIGNADO AL CIERRE'),(2,2,NULL,1,'2025-11-07 22:20:45','2025-11-22 00:00:00',550.00,100.00,450.00,'Cerrado'),(3,3,NULL,1,'2025-11-07 23:05:31','2025-11-24 21:05:14',1650.00,0.00,1650.00,'Cerrado'),(4,4,NULL,1,'2025-11-21 00:00:00',NULL,0.00,0.00,0.00,'Abierto'),(5,5,NULL,2,'2025-11-08 03:24:05','2025-11-17 18:27:45',8250.20,600.00,7650.20,'ASIGNADO AL CIERRE'),(6,6,NULL,1,'2025-11-09 01:06:36','2025-11-23 19:09:22',4130.00,100.00,4030.00,'ASIGNADO AL CIERRE'),(7,7,NULL,1,'2025-11-09 01:23:30','2025-11-23 19:26:24',2620.00,0.00,2620.00,'ASIGNADO AL CIERRE'),(8,8,NULL,1,'2025-11-09 01:37:22','2025-11-23 19:38:53',2315.00,100.00,2215.00,'ASIGNADO AL CIERRE'),(9,9,NULL,1,'2025-11-09 03:48:52','2025-11-18 21:53:13',4400.00,0.00,4400.00,'ASIGNADO AL CIERRE'),(10,10,NULL,2,'2025-11-09 03:50:15','2025-11-25 21:53:55',14750.00,0.00,14750.00,'Cerrado'),(11,11,NULL,1,'2025-11-09 15:53:08','2025-11-17 00:00:00',650.00,0.00,650.00,'ASIGNADO AL CIERRE'),(12,12,NULL,3,'2025-11-08 00:00:00',NULL,0.00,0.00,0.00,'Abierto'),(13,13,NULL,3,'2025-11-09 00:00:00',NULL,0.00,0.00,0.00,'Abierto'),(14,14,NULL,3,'2025-11-14 00:00:00',NULL,0.00,0.00,0.00,'Abierto'),(15,15,NULL,1,'2025-11-09 18:48:17','2025-11-12 12:51:25',1915.00,100.00,1815.00,'ASIGNADO AL CIERRE'),(16,16,NULL,2,'2025-11-12 00:00:00',NULL,0.00,0.00,0.00,'Abierto'),(17,17,NULL,1,'2025-11-20 00:00:00',NULL,0.00,0.00,0.00,'Abierto'),(18,18,NULL,1,'2025-11-20 00:00:00',NULL,0.00,0.00,0.00,'Abierto'),(19,19,NULL,3,'2025-11-09 21:38:02','2025-11-11 15:38:37',2500.00,0.00,2500.00,'ASIGNADO AL CIERRE'),(20,20,NULL,2,'2025-11-10 04:44:12','2025-11-15 22:45:29',2950.00,0.00,2950.00,'ASIGNADO AL CIERRE'),(21,21,NULL,2,'2025-11-14 00:26:44',NULL,0.00,0.00,0.00,'Abierto'),(22,22,NULL,4,'2025-11-14 00:31:22',NULL,0.00,0.00,0.00,'Abierto'),(23,23,NULL,5,'2025-11-14 00:41:41',NULL,0.00,0.00,0.00,'Abierto'),(24,24,NULL,3,'2025-11-14 00:42:47',NULL,0.00,0.00,0.00,'Abierto'),(25,25,NULL,6,'2025-11-14 00:56:09','2025-11-13 19:00:31',5050.00,0.00,5050.00,'ASIGNADO AL CIERRE'),(26,26,NULL,6,'2025-11-14 01:56:45',NULL,0.00,0.00,0.00,'Abierto'),(27,27,NULL,3,'2025-11-14 02:10:14','2025-11-21 20:51:46',8350.00,0.00,8350.00,'Cerrado'),(28,28,NULL,7,'2025-11-14 14:11:23','2025-11-16 08:14:53',2260.00,0.00,2260.00,'ASIGNADO AL CIERRE');
/*!40000 ALTER TABLE `tbl_folio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_folio_salones`
--

DROP TABLE IF EXISTS `tbl_folio_salones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_folio_salones` (
  `Pk_Id_Folio_Salones` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Reserva_Salon` int DEFAULT NULL,
  `Cmp_Fecha_Pago` datetime DEFAULT NULL,
  `Cmp_Pago_Total` decimal(10,2) DEFAULT NULL,
  `Cmp_Estado` varchar(50) DEFAULT NULL,
  `Cmp_Metodo_Pago` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Folio_Salones`),
  KEY `Fk_Id_Reserva_Salon` (`Fk_Id_Reserva_Salon`),
  CONSTRAINT `Tbl_Folio_Salones_ibfk_1` FOREIGN KEY (`Fk_Id_Reserva_Salon`) REFERENCES `tbl_reservas_salones` (`Pk_Id_Reserva_Salon`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_folio_salones`
--

LOCK TABLES `tbl_folio_salones` WRITE;
/*!40000 ALTER TABLE `tbl_folio_salones` DISABLE KEYS */;
INSERT INTO `tbl_folio_salones` VALUES (19,25,'2025-11-13 21:24:57',600.00,'Pagado','Efectivo'),(20,26,'2025-12-03 21:25:31',1500.00,'Pendiente','Tarjeta'),(21,27,'2025-11-21 21:26:05',800.00,'Cancelado','Tarjeta'),(22,28,'2025-11-27 21:26:27',1000.00,'Pagado','Transferencia'),(23,29,'2025-11-25 21:26:51',650.00,'Pagado','Efectivo'),(24,31,'2025-11-21 07:53:14',560.00,'Pendiente','Efectivo'),(25,32,'2025-11-28 08:21:32',1200.00,'Pagado','Efectivo');
/*!40000 ALTER TABLE `tbl_folio_salones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_habitaciones`
--

DROP TABLE IF EXISTS `tbl_habitaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_habitaciones` (
  `PK_ID_Habitaciones` int NOT NULL,
  `FK_ID_Tipo_Habitaciones` int DEFAULT NULL,
  `Cmp_Piso_Habitacion` int DEFAULT NULL,
  `Cmp_Descripcion_Habitacion` varchar(100) DEFAULT NULL,
  `Cmp_Tamaño_Habitacion_m2` varchar(75) DEFAULT NULL,
  `Cmp_Capacidad_Habitacion` int DEFAULT NULL,
  `Cmp_Estado_Habitacion` tinyint(1) DEFAULT NULL,
  `Cmp_Tarifa_Noche` double DEFAULT NULL,
  PRIMARY KEY (`PK_ID_Habitaciones`),
  KEY `Tbl_Habitaciones_ibfk_1` (`FK_ID_Tipo_Habitaciones`),
  CONSTRAINT `Tbl_Habitaciones_ibfk_1` FOREIGN KEY (`FK_ID_Tipo_Habitaciones`) REFERENCES `tbl_tipo_habitacion` (`Pk_ID_Tipo_Habitaciones`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_habitaciones`
--

LOCK TABLES `tbl_habitaciones` WRITE;
/*!40000 ALTER TABLE `tbl_habitaciones` DISABLE KEYS */;
INSERT INTO `tbl_habitaciones` VALUES (1,1,1,'Habitación Estándar Doble #101','42',1,1,550),(2,2,2,'Suite Deluxe con vista al volcán #202','60',2,1,950),(3,3,3,'Habitación Familiar #303','42',3,0,1250),(4,4,4,'Habitación Ejecutiva #404','60',4,1,800),(5,3,3,'Habitacion tamaño familiar','60',4,1,950),(6,1,2,'Habitacion simple','42',2,1,550),(7,2,3,'Habitación Estándar Doble #101','42',2,0,800);
/*!40000 ALTER TABLE `tbl_habitaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_huesped`
--

DROP TABLE IF EXISTS `tbl_huesped`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_huesped` (
  `Pk_Id_Huesped` int NOT NULL AUTO_INCREMENT,
  `Cmp_Nombre` varchar(50) NOT NULL,
  `Cmp_Apellido` varchar(50) NOT NULL,
  `Cmp_Email` varchar(100) DEFAULT NULL,
  `Cmp_Telefono` varchar(15) DEFAULT NULL,
  `Cmp_Pais` varchar(50) DEFAULT NULL,
  `Cmp_Viaja_Por_Trabajo` tinyint(1) DEFAULT NULL,
  `Cmp_Nombre_Empresa` varchar(100) DEFAULT NULL,
  `Cmp_Numero_Documento` varchar(25) DEFAULT NULL,
  `Cmp_Tipo_Documento` enum('DPI','Pasaporte') DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Huesped`),
  UNIQUE KEY `Cmp_Numero_Documento` (`Cmp_Numero_Documento`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_huesped`
--

LOCK TABLES `tbl_huesped` WRITE;
/*!40000 ALTER TABLE `tbl_huesped` DISABLE KEYS */;
INSERT INTO `tbl_huesped` VALUES (1,'Pablo','Martinez','pablo@gmail.com','12345678','Guatemala',0,'ACME','7834250860101','DPI'),(3,'pedro','ibanez','correo@gmail.com','123456','Guatemala',0,'Arasaka','6758745290101','DPI'),(4,'Leon','Kenedy','leon@mail.com','95655236','Estados Unidos ',1,'STARS','5563259952','Pasaporte'),(5,'Brandon','Hernandez','brandon@mail.com','55017801','Guatemala',0,'Componing','40472324','DPI'),(6,'Ruben','Lopez','rub@gmail.com','42869077','Guatemala',0,'ninguno','6754327590101','DPI'),(7,'Carlos','Martinez','carlos@gmail.com','54326756','Guatemala',1,'ACME','3456754367','DPI'),(8,'Miguel','Hernandez','Miguel@gmail.com','5467687','Guatemala',1,'UMG','78654738279','DPI'),(9,'Marcos','Antil','Marcos@gmail.com','34567654','Guatemala',1,'UMG','33289','DPI'),(10,'Mariela','Martínez','Mariela@gmail.com','56321080','Guatemala',1,'Licorera de Guatemala','299876856','DPI'),(11,'pedro','Ibañez','pedro@mail.com','42869077','Estados Unidos ',1,'UMG','449600111','Pasaporte');
/*!40000 ALTER TABLE `tbl_huesped` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mantenimiento`
--

DROP TABLE IF EXISTS `tbl_mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_mantenimiento` (
  `Pk_Id_Mantenimiento` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Salon` int DEFAULT NULL,
  `Fk_Id_Habitacion` int DEFAULT NULL,
  `Fk_Id_Empleado` int DEFAULT NULL,
  `Cmp_Tipo_Mantenimiento` varchar(50) DEFAULT NULL,
  `Cmp_Descripcion_Mantenimiento` varchar(100) DEFAULT NULL,
  `Cmp_Estado` varchar(50) DEFAULT NULL,
  `Cmp_Fecha_Inicio_Mantenimiento` date DEFAULT NULL,
  `Cmp_Fecha_Fin_Mantenimiento` date DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Mantenimiento`),
  KEY `Fk_Id_Salon` (`Fk_Id_Salon`),
  KEY `Fk_Id_Habitacion` (`Fk_Id_Habitacion`),
  KEY `Fk_Id_Empleado` (`Fk_Id_Empleado`),
  CONSTRAINT `Tbl_Mantenimiento_ibfk_1` FOREIGN KEY (`Fk_Id_Salon`) REFERENCES `tbl_salones` (`Pk_Id_Salon`),
  CONSTRAINT `Tbl_Mantenimiento_ibfk_2` FOREIGN KEY (`Fk_Id_Habitacion`) REFERENCES `tbl_habitaciones` (`PK_ID_Habitaciones`),
  CONSTRAINT `Tbl_Mantenimiento_ibfk_3` FOREIGN KEY (`Fk_Id_Empleado`) REFERENCES `tbl_empleado` (`Pk_Id_Empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mantenimiento`
--

LOCK TABLES `tbl_mantenimiento` WRITE;
/*!40000 ALTER TABLE `tbl_mantenimiento` DISABLE KEYS */;
INSERT INTO `tbl_mantenimiento` VALUES (12,2,NULL,9,'Limpio el piso','Se trapeo','terminado','2025-11-13','2025-11-13'),(14,13,NULL,2,'luces','cambios','Realizado','2025-11-14','2025-11-14');
/*!40000 ALTER TABLE `tbl_mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_materia_prima`
--

DROP TABLE IF EXISTS `tbl_materia_prima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_materia_prima` (
  `Pk_Id_Materia_Prima` int NOT NULL AUTO_INCREMENT,
  `Cmp_Materia_Prima` varchar(100) NOT NULL,
  PRIMARY KEY (`Pk_Id_Materia_Prima`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_materia_prima`
--

LOCK TABLES `tbl_materia_prima` WRITE;
/*!40000 ALTER TABLE `tbl_materia_prima` DISABLE KEYS */;
INSERT INTO `tbl_materia_prima` VALUES (1,'Pechuga de pollo'),(2,'Aceite de oliva'),(3,'Sal'),(4,'Pimienta negra'),(5,'Ajo'),(6,'Limón'),(7,'Hierbas Finas'),(8,'Pasta'),(9,'Tomate'),(10,'CARNE');
/*!40000 ALTER TABLE `tbl_materia_prima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menu`
--

DROP TABLE IF EXISTS `tbl_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_menu` (
  `Pk_Id_Menu` int NOT NULL AUTO_INCREMENT,
  `Cmp_Nombre_Platillo` varchar(50) NOT NULL,
  `Cmp_Descripcion_Platillo` varchar(250) DEFAULT NULL,
  `Cmp_Precio` decimal(10,2) NOT NULL,
  `Fk_Id_Tipo_Menu` int DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Menu`),
  KEY `Fk_Id_Tipo_Menu` (`Fk_Id_Tipo_Menu`),
  CONSTRAINT `Tbl_Menu_ibfk_1` FOREIGN KEY (`Fk_Id_Tipo_Menu`) REFERENCES `tbl_tipo_menu` (`Pk_Id_Tipo_Menu`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menu`
--

LOCK TABLES `tbl_menu` WRITE;
/*!40000 ALTER TABLE `tbl_menu` DISABLE KEYS */;
INSERT INTO `tbl_menu` VALUES (1,'Hamburguesa','hamburguesa',20.00,1),(2,'Pollo al Limón','Pechuga de pollo marinada con limón y hierbas finas, cocinada a la plancha.',120.00,2),(3,'Pasta Alfredo','Fettuccine en salsa cremosa de queso parmesano y mantequilla.',130.00,2),(4,'Ensalada César','Lechuga romana, aderezo César y trozos de pan tostado.',90.00,2),(5,'Salmón a la Parrilla','Filete de salmón asado con especias y limón.',180.00,2),(6,'Pizza','Pizza de jamon',40.00,1),(7,'Burrito','Burrito de Carne',20.00,1);
/*!40000 ALTER TABLE `tbl_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mobiliario`
--

DROP TABLE IF EXISTS `tbl_mobiliario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_mobiliario` (
  `Pk_Id_Mobiliario` int NOT NULL AUTO_INCREMENT,
  `Cmp_Mobiliario` varchar(150) NOT NULL,
  PRIMARY KEY (`Pk_Id_Mobiliario`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mobiliario`
--

LOCK TABLES `tbl_mobiliario` WRITE;
/*!40000 ALTER TABLE `tbl_mobiliario` DISABLE KEYS */;
INSERT INTO `tbl_mobiliario` VALUES (1,'Mesas redondas'),(2,'Mesas rectangulares'),(3,'Mesas cuadradas'),(4,'Sillas plegables'),(5,'Mantelería'),(6,'cristalería'),(8,'Silla');
/*!40000 ALTER TABLE `tbl_mobiliario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_modulo`
--

DROP TABLE IF EXISTS `tbl_modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_modulo` (
  `Pk_Id_Modulo` int NOT NULL,
  `Cmp_Nombre_Modulo` varchar(50) DEFAULT NULL,
  `Cmp_Descripcion_Modulo` varchar(50) DEFAULT NULL,
  `Cmp_Estado_Modulo` bit(1) NOT NULL,
  PRIMARY KEY (`Pk_Id_Modulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modulo`
--

LOCK TABLES `tbl_modulo` WRITE;
/*!40000 ALTER TABLE `tbl_modulo` DISABLE KEYS */;
INSERT INTO `tbl_modulo` VALUES (1,'Pruebas','modulo de pruebas para probar Duh',_binary '\0'),(2,'Navegador','Módulo de navegador',_binary ''),(3,'Estandarizacion ','modulo de estandarizacion ',_binary ''),(4,'Seguridad','Modulo de seguridad de la hoteleria',_binary ''),(5,'RHM','Recursos Humanos',_binary ''),(6,'Hoteleria','Modulo de hoteleria',_binary ''),(9,'11111$$$$$$','asd',_binary ''),(10,'##$$$|°','Modulo prueba',_binary '\0'),(14,'asdf','',_binary ''),(45,'Recursos','Quejas',_binary ''),(56,'Utileria','Muñecas prueba r',_binary ''),(91,'Prueba','Esto es una prueba para ver si funciona',_binary ''),(96,'Market','Publicidad',_binary ''),(99,'Rockstar','Games',_binary ''),(435,'Intento1','Intento43553',_binary ''),(543,'Dientes','Cuidar dientes y reparar',_binary ''),(866,'Mantenimiento','Cuidar los equipos',_binary '');
/*!40000 ALTER TABLE `tbl_modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_nit_cliente`
--

DROP TABLE IF EXISTS `tbl_nit_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_nit_cliente` (
  `Pk_Id_Nit` int NOT NULL,
  `Fk_Id_Cliente` int DEFAULT NULL,
  `Cmp_Nit_Cliente` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Nit`),
  KEY `Fk_Nit_Cliente` (`Fk_Id_Cliente`),
  CONSTRAINT `Fk_Nit_Cliente` FOREIGN KEY (`Fk_Id_Cliente`) REFERENCES `tbl_cliente` (`Pk_Id_Cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_nit_cliente`
--

LOCK TABLES `tbl_nit_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_nit_cliente` DISABLE KEYS */;
INSERT INTO `tbl_nit_cliente` VALUES (1,1,'0901-22-2929');
/*!40000 ALTER TABLE `tbl_nit_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_numero_cliente`
--

DROP TABLE IF EXISTS `tbl_numero_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_numero_cliente` (
  `Pk_Id_Numero` int NOT NULL,
  `Fk_Id_Cliente` int DEFAULT NULL,
  `Cmp_Telefono_Cliente` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Numero`),
  KEY `Fk_Numero_Cliente` (`Fk_Id_Cliente`),
  CONSTRAINT `Fk_Numero_Cliente` FOREIGN KEY (`Fk_Id_Cliente`) REFERENCES `tbl_cliente` (`Pk_Id_Cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_numero_cliente`
--

LOCK TABLES `tbl_numero_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_numero_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_numero_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_objetos_perdidos`
--

DROP TABLE IF EXISTS `tbl_objetos_perdidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_objetos_perdidos` (
  `Pk_Id_Objeto` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Mantenimiento` int DEFAULT NULL,
  `Fk_Id_Folio` int DEFAULT NULL,
  `Fk_Id_Folio_Salon` int DEFAULT NULL,
  `Fk_Id_Huesped` int DEFAULT NULL,
  `Cmp_Nombre_Objeto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Cmp_Descripcion_Objeto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Cmp_Tipo_Objeto` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Cmp_Fecha_Encontrado` date NOT NULL,
  `Cmp_Entregado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`Pk_Id_Objeto`),
  KEY `Fk_OP_Mantenimiento` (`Fk_Id_Mantenimiento`),
  KEY `Fk_OP_Folio` (`Fk_Id_Folio`),
  KEY `Fk_OP_Folio_Salon` (`Fk_Id_Folio_Salon`),
  KEY `Fk_OP_Huesped` (`Fk_Id_Huesped`),
  CONSTRAINT `Fk_OP_Folio` FOREIGN KEY (`Fk_Id_Folio`) REFERENCES `tbl_folio` (`Pk_Id_Folio`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `Fk_OP_Folio_Salon` FOREIGN KEY (`Fk_Id_Folio_Salon`) REFERENCES `tbl_folio_salones` (`Pk_Id_Folio_Salones`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `Fk_OP_Huesped` FOREIGN KEY (`Fk_Id_Huesped`) REFERENCES `tbl_huesped` (`Pk_Id_Huesped`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `Fk_OP_Mantenimiento` FOREIGN KEY (`Fk_Id_Mantenimiento`) REFERENCES `tbl_mantenimiento` (`Pk_Id_Mantenimiento`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_objetos_perdidos`
--

LOCK TABLES `tbl_objetos_perdidos` WRITE;
/*!40000 ALTER TABLE `tbl_objetos_perdidos` DISABLE KEYS */;
INSERT INTO `tbl_objetos_perdidos` VALUES (1,12,6,NULL,9,'Lentes de sol','lentes negros y redondos','anteojos','2025-11-13',0),(2,12,NULL,20,3,'Pelota de playa','Una pelota color roja','Pelota','2025-11-11',0),(3,14,28,25,11,'Gorra','gorra roja','ropa','2025-11-14',1);
/*!40000 ALTER TABLE `tbl_objetos_perdidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_oc`
--

DROP TABLE IF EXISTS `tbl_oc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_oc` (
  `Cmp_Id_OC` int NOT NULL AUTO_INCREMENT,
  `Cmp_Fecha_OC` date DEFAULT NULL,
  PRIMARY KEY (`Cmp_Id_OC`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_oc`
--

LOCK TABLES `tbl_oc` WRITE;
/*!40000 ALTER TABLE `tbl_oc` DISABLE KEYS */;
INSERT INTO `tbl_oc` VALUES (1,'2025-11-09'),(3,'2025-11-09'),(4,'2025-11-10'),(5,'2025-11-14'),(6,'2025-11-14');
/*!40000 ALTER TABLE `tbl_oc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_oc_det`
--

DROP TABLE IF EXISTS `tbl_oc_det`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_oc_det` (
  `Cmp_Id_OC_Det` int NOT NULL AUTO_INCREMENT,
  `Cmp_Id_OC` int DEFAULT NULL,
  `Cmp_Id_Producto` int DEFAULT NULL,
  `Cmp_Cantidad` decimal(12,4) DEFAULT NULL,
  `Cmp_Precio_Unitario` decimal(14,2) DEFAULT NULL,
  `Cmp_Total_Linea` decimal(14,2) DEFAULT NULL,
  PRIMARY KEY (`Cmp_Id_OC_Det`),
  KEY `Cmp_Id_OC` (`Cmp_Id_OC`),
  KEY `Cmp_Id_Producto` (`Cmp_Id_Producto`),
  CONSTRAINT `Tbl_OC_Det_ibfk_1` FOREIGN KEY (`Cmp_Id_OC`) REFERENCES `tbl_oc` (`Cmp_Id_OC`),
  CONSTRAINT `Tbl_OC_Det_ibfk_2` FOREIGN KEY (`Cmp_Id_Producto`) REFERENCES `tbl_producto` (`Cmp_Id_Producto`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_oc_det`
--

LOCK TABLES `tbl_oc_det` WRITE;
/*!40000 ALTER TABLE `tbl_oc_det` DISABLE KEYS */;
INSERT INTO `tbl_oc_det` VALUES (2,1,4,2.0000,NULL,NULL),(3,3,3,2.0000,NULL,NULL),(4,3,4,1.0000,NULL,NULL),(5,4,3,3.0000,NULL,NULL),(6,4,4,2.0000,NULL,NULL),(7,5,3,18.0000,NULL,NULL),(8,5,4,7.0000,NULL,NULL),(9,5,6,3.0000,NULL,NULL),(10,6,3,10.0000,NULL,NULL),(11,6,4,8.0000,NULL,NULL),(12,6,6,2.0000,NULL,NULL);
/*!40000 ALTER TABLE `tbl_oc_det` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ordenes_produccion`
--

DROP TABLE IF EXISTS `tbl_ordenes_produccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ordenes_produccion` (
  `Pk_Id_Orden_Produccion` int NOT NULL AUTO_INCREMENT,
  `Cmp_Fecha_Solicitud` date DEFAULT NULL,
  `Cmp_Fecha_Registro` date DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Orden_Produccion`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ordenes_produccion`
--

LOCK TABLES `tbl_ordenes_produccion` WRITE;
/*!40000 ALTER TABLE `tbl_ordenes_produccion` DISABLE KEYS */;
INSERT INTO `tbl_ordenes_produccion` VALUES (2,'2025-11-13','2025-11-17'),(3,'2025-11-13','2025-11-20'),(4,'2025-11-08','2025-11-09'),(5,'2025-11-01','2025-11-17'),(6,'2025-10-14','2025-10-16'),(7,'2025-09-04','2025-09-11'),(8,'2025-11-13','2025-11-15'),(9,'2025-11-14','2025-11-25'),(10,'2025-11-06','2025-11-13'),(11,'2025-11-06','2025-11-14');
/*!40000 ALTER TABLE `tbl_ordenes_produccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_paciente`
--

DROP TABLE IF EXISTS `tbl_paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_paciente` (
  `pk_idPaciente` int NOT NULL AUTO_INCREMENT,
  `nombrePaciente` varchar(50) DEFAULT NULL,
  `apellidoPaciente` varchar(50) DEFAULT NULL,
  `fechaNacimientoPaciente` date DEFAULT NULL,
  `sexoPaciente` varchar(15) DEFAULT NULL,
  `direccionPaciente` varchar(30) DEFAULT NULL,
  `telefonoPaciente` varchar(20) DEFAULT NULL,
  `estadoPaciente` int DEFAULT NULL,
  PRIMARY KEY (`pk_idPaciente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_paciente`
--

LOCK TABLES `tbl_paciente` WRITE;
/*!40000 ALTER TABLE `tbl_paciente` DISABLE KEYS */;
INSERT INTO `tbl_paciente` VALUES (1,'Carlo','Sosa','2025-11-25','Hombre','GUatemala','787878787',1);
/*!40000 ALTER TABLE `tbl_paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pago`
--

DROP TABLE IF EXISTS `tbl_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_pago` (
  `Pk_Id_Pago` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Folio` int NOT NULL,
  `Cmp_Metodo_Pago` enum('Tarjeta','Efectivo','Transferencia','Cheque') NOT NULL,
  `Cmp_Fecha_Pago` datetime DEFAULT CURRENT_TIMESTAMP,
  `Cmp_Monto_Total` decimal(10,2) NOT NULL,
  `Cmp_Estado_Pago` enum('Pagado','Pendiente','Cancelado') DEFAULT 'Pendiente',
  PRIMARY KEY (`Pk_Id_Pago`),
  KEY `Fk_Id_Folio` (`Fk_Id_Folio`),
  CONSTRAINT `Tbl_Pago_ibfk_1` FOREIGN KEY (`Fk_Id_Folio`) REFERENCES `tbl_folio` (`Pk_Id_Folio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pago`
--

LOCK TABLES `tbl_pago` WRITE;
/*!40000 ALTER TABLE `tbl_pago` DISABLE KEYS */;
INSERT INTO `tbl_pago` VALUES (1,9,'Tarjeta','2025-11-09 20:59:49',4400.00,'Pendiente'),(2,9,'Efectivo','2025-11-09 20:59:49',4400.00,'Pendiente'),(3,9,'Transferencia','2025-11-09 20:59:49',4400.00,'Pendiente'),(4,9,'Cheque','2025-11-09 20:59:49',4400.00,'Pendiente'),(5,10,'Tarjeta','2025-11-09 21:07:11',14750.00,'Pendiente'),(6,10,'Efectivo','2025-11-09 21:07:11',14750.00,'Pendiente'),(7,10,'Transferencia','2025-11-09 21:07:11',14750.00,'Pendiente'),(8,10,'Cheque','2025-11-09 21:07:11',14750.00,'Pendiente'),(9,20,'Tarjeta','2025-11-15 22:46:53',2950.00,'Pendiente'),(10,16,'Efectivo','2025-11-11 14:58:45',0.00,'Pendiente'),(11,20,'Transferencia','2025-11-11 15:01:31',0.00,'Pagado'),(12,19,'Transferencia','2025-11-11 15:05:00',0.00,'Pendiente'),(13,20,'Efectivo','2025-11-11 15:31:49',2950.00,'Pendiente'),(14,20,'Transferencia','2025-11-11 15:45:59',2950.00,'Pendiente'),(15,20,'Tarjeta','2025-11-11 15:45:59',2950.00,'Pendiente'),(16,19,'Transferencia','2025-11-11 16:08:40',2500.00,'Pendiente'),(17,20,'Transferencia','2025-11-11 16:10:21',2950.00,'Pendiente'),(18,20,'Tarjeta','2025-11-11 18:13:33',2950.00,'Pagado'),(19,2,'Cheque','2026-08-01 18:16:29',450.00,'Pendiente'),(20,2,'Cheque','2026-08-01 18:16:29',450.00,'Pendiente'),(21,2,'Efectivo','2026-08-01 18:16:29',450.00,'Pendiente'),(22,20,'Transferencia','2025-11-11 18:18:58',2950.00,'Pendiente'),(23,2,'Tarjeta','2025-11-13 08:17:35',450.00,'Pagado'),(24,25,'Tarjeta','2025-11-13 19:01:32',5050.00,'Pagado'),(25,2,'Tarjeta','2025-11-13 19:52:30',450.00,'Pendiente'),(26,2,'Efectivo','2025-11-13 19:52:30',450.00,'Pendiente'),(27,2,'Transferencia','2025-11-13 19:52:30',450.00,'Pendiente'),(28,27,'Tarjeta','2025-11-16 08:17:02',8350.00,'Pagado');
/*!40000 ALTER TABLE `tbl_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pago_cheque`
--

DROP TABLE IF EXISTS `tbl_pago_cheque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_pago_cheque` (
  `Fk_Id_Pago` int NOT NULL,
  `Cmp_Numero_Cheque` varchar(30) NOT NULL,
  `Cmp_Banco_Emisor` varchar(50) DEFAULT NULL,
  `Cmp_Nombre_Titular` varchar(50) DEFAULT NULL,
  `Cmp_Fecha_Emision` date DEFAULT NULL,
  `Cmp_Fecha_Cobro` date DEFAULT NULL,
  `Cmp_Estado_Cheque` enum('Emitido','Cobrado','Devuelto') DEFAULT 'Emitido',
  PRIMARY KEY (`Fk_Id_Pago`),
  CONSTRAINT `Tbl_Pago_Cheque_ibfk_1` FOREIGN KEY (`Fk_Id_Pago`) REFERENCES `tbl_pago` (`Pk_Id_Pago`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pago_cheque`
--

LOCK TABLES `tbl_pago_cheque` WRITE;
/*!40000 ALTER TABLE `tbl_pago_cheque` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_pago_cheque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pago_efectivo`
--

DROP TABLE IF EXISTS `tbl_pago_efectivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_pago_efectivo` (
  `Fk_Id_Pago` int NOT NULL,
  `Cmp_Numero_Recibo` varchar(20) DEFAULT NULL,
  `Cmp_Observaciones` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Fk_Id_Pago`),
  CONSTRAINT `Tbl_Pago_Efectivo_ibfk_1` FOREIGN KEY (`Fk_Id_Pago`) REFERENCES `tbl_pago` (`Pk_Id_Pago`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pago_efectivo`
--

LOCK TABLES `tbl_pago_efectivo` WRITE;
/*!40000 ALTER TABLE `tbl_pago_efectivo` DISABLE KEYS */;
INSERT INTO `tbl_pago_efectivo` VALUES (21,'12','');
/*!40000 ALTER TABLE `tbl_pago_efectivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pago_tarjeta`
--

DROP TABLE IF EXISTS `tbl_pago_tarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_pago_tarjeta` (
  `Fk_Id_Pago` int NOT NULL,
  `Cmp_Nombre_Titular` varchar(50) DEFAULT NULL,
  `Cmp_Numero_Tarjeta` varchar(20) DEFAULT NULL,
  `Cmp_Fecha_Vencimiento` date DEFAULT NULL,
  `Cmp_CVC` int DEFAULT NULL,
  `Cmp_Codigo_Postal` int DEFAULT NULL,
  PRIMARY KEY (`Fk_Id_Pago`),
  CONSTRAINT `Tbl_Pago_Tarjeta_ibfk_1` FOREIGN KEY (`Fk_Id_Pago`) REFERENCES `tbl_pago` (`Pk_Id_Pago`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pago_tarjeta`
--

LOCK TABLES `tbl_pago_tarjeta` WRITE;
/*!40000 ALTER TABLE `tbl_pago_tarjeta` DISABLE KEYS */;
INSERT INTO `tbl_pago_tarjeta` VALUES (1,'pedro ibanez','1234567891234','2028-02-01',342,1057),(9,'Pedro Ibañez','652552552','2028-08-01',123,1057),(18,'edwin','1234567891012','2029-08-01',800,1057),(23,'PEDRO','48488787449494','2027-09-01',489,1057),(24,'Marcos Antil','1234567891123','2028-09-01',616,1057),(28,'PEDRO IBAÑEZ','65210551255133','2028-09-01',123,1057);
/*!40000 ALTER TABLE `tbl_pago_tarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pago_transferencia`
--

DROP TABLE IF EXISTS `tbl_pago_transferencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_pago_transferencia` (
  `Fk_Id_Pago` int NOT NULL,
  `Cmp_Numero_Transferencia` varchar(30) DEFAULT NULL,
  `Cmp_Banco_Origen` varchar(50) DEFAULT NULL,
  `Cmp_Cuenta_Origen` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Fk_Id_Pago`),
  CONSTRAINT `Tbl_Pago_Transferencia_ibfk_1` FOREIGN KEY (`Fk_Id_Pago`) REFERENCES `tbl_pago` (`Pk_Id_Pago`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pago_transferencia`
--

LOCK TABLES `tbl_pago_transferencia` WRITE;
/*!40000 ALTER TABLE `tbl_pago_transferencia` DISABLE KEYS */;
INSERT INTO `tbl_pago_transferencia` VALUES (16,'abc','bi','123');
/*!40000 ALTER TABLE `tbl_pago_transferencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pedidos_menu`
--

DROP TABLE IF EXISTS `tbl_pedidos_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_pedidos_menu` (
  `Pk_Id_Pedido_Menu` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Reserva_Salon` int DEFAULT NULL,
  `Fk_Id_Menu` int DEFAULT NULL,
  `Cmp_Cantidad_Platillos` int DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Pedido_Menu`),
  KEY `Fk_Id_Reserva_Salon` (`Fk_Id_Reserva_Salon`),
  KEY `Fk_Id_Menu` (`Fk_Id_Menu`),
  CONSTRAINT `Tbl_Pedidos_Menu_ibfk_1` FOREIGN KEY (`Fk_Id_Reserva_Salon`) REFERENCES `tbl_reservas_salones` (`Pk_Id_Reserva_Salon`),
  CONSTRAINT `Tbl_Pedidos_Menu_ibfk_2` FOREIGN KEY (`Fk_Id_Menu`) REFERENCES `tbl_menu` (`Pk_Id_Menu`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pedidos_menu`
--

LOCK TABLES `tbl_pedidos_menu` WRITE;
/*!40000 ALTER TABLE `tbl_pedidos_menu` DISABLE KEYS */;
INSERT INTO `tbl_pedidos_menu` VALUES (5,25,3,25),(6,26,5,25),(7,27,1,15),(8,28,7,22),(9,29,1,20),(11,31,3,20),(12,32,1,100);
/*!40000 ALTER TABLE `tbl_pedidos_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_perfil`
--

DROP TABLE IF EXISTS `tbl_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_perfil` (
  `Pk_Id_Perfil` int NOT NULL AUTO_INCREMENT,
  `Cmp_Puesto_Perfil` varchar(50) DEFAULT NULL,
  `Cmp_Descripcion_Perfil` varchar(50) DEFAULT NULL,
  `Cmp_Estado_Perfil` bit(1) NOT NULL,
  `Cmp_Tipo_Perfil` int DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_perfil`
--

LOCK TABLES `tbl_perfil` WRITE;
/*!40000 ALTER TABLE `tbl_perfil` DISABLE KEYS */;
INSERT INTO `tbl_perfil` VALUES (1,'Administrador','Perfil con todos los permisos',_binary '',1),(2,'Contador','Cuenta que más a ti',_binary '\0',1),(4,'Asesor de Publicidad','Testea Código',_binary '',1),(5,'puesto','Hola',_binary '\0',1),(7,'Asesor de Publicidad','Mira publicidad',_binary '',1),(10,'Operdores','Perfil digitadores',_binary '',1),(11,'proveedor','provee',_binary '',0),(12,'Probador','Persona que prueba codigo',_binary '',1),(16,'Dentista prefesional','Ver dientes y enfermedades de la boca',_binary '',0),(18,'Navegador','aaa',_binary '\0',1),(20,'PruebaNav','abcd',_binary '\0',0),(22,'Pruebadef','pufa',_binary '',1),(26,'puesto','Puestea',_binary '',1),(31,'Dentista prefesional','Mira publicidad',_binary '',1),(32,'Navegador','Persona que prueba codigo',_binary '',1),(33,'tester','provee',_binary '',1),(34,'puesto','Puestea',_binary '',1),(35,'puesto','Mira publicidad',_binary '',1),(36,'Asesor de Publicidad','Puestea',_binary '',1),(38,'GTA6','GTA6',_binary '',1),(39,'PerfilBitacora','aaaa',_binary '',1),(41,'trabajador','1',_binary '',1),(42,'Perfil','Descripcion',_binary '\0',1),(43,'Chapeador','Chapea',_binary '',1),(44,'Chapeador','Chapea',_binary '\0',1);
/*!40000 ALTER TABLE `tbl_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_periodoscontables`
--

DROP TABLE IF EXISTS `tbl_periodoscontables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_periodoscontables` (
  `Pk_Id_Periodo` int NOT NULL AUTO_INCREMENT,
  `Cmp_Anio` int NOT NULL,
  `Cmp_Mes` tinyint DEFAULT NULL,
  `Cmp_FechaInicio` date NOT NULL,
  `Cmp_FechaFin` date NOT NULL,
  `Cmp_Estado` tinyint(1) NOT NULL DEFAULT '1',
  `Cmp_ModoActualizacion` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Pk_Id_Periodo`),
  UNIQUE KEY `Uk_Periodo` (`Cmp_Anio`,`Cmp_Mes`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_periodoscontables`
--

LOCK TABLES `tbl_periodoscontables` WRITE;
/*!40000 ALTER TABLE `tbl_periodoscontables` DISABLE KEYS */;
INSERT INTO `tbl_periodoscontables` VALUES (1,2025,7,'2025-07-01','2025-07-31',0,0),(2,2025,8,'2025-08-01','2025-08-31',0,1),(3,2025,9,'2025-09-01','2025-09-30',0,0),(4,2025,10,'2025-10-01','2025-10-31',0,1),(5,2025,11,'2025-11-01','2025-11-30',1,0);
/*!40000 ALTER TABLE `tbl_periodoscontables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_permiso_perfil_aplicacion`
--

DROP TABLE IF EXISTS `tbl_permiso_perfil_aplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_permiso_perfil_aplicacion` (
  `Fk_Id_Perfil` int NOT NULL,
  `Fk_Id_Modulo` int NOT NULL,
  `Fk_Id_Aplicacion` int NOT NULL,
  `Cmp_Ingresar_Permisos_Aplicacion_Perfil` bit(1) DEFAULT NULL,
  `Cmp_Consultar_Permisos_Aplicacion_Perfil` bit(1) DEFAULT NULL,
  `Cmp_Modificar_Permisos_Aplicacion_Perfil` bit(1) DEFAULT NULL,
  `Cmp_Eliminar_Permisos_Aplicacion_Perfil` bit(1) DEFAULT NULL,
  `Cmp_Imprimir_Permisos_Aplicacion_Perfil` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Fk_Id_Perfil`,`Fk_Id_Modulo`,`Fk_Id_Aplicacion`),
  KEY `Fk_PermisoPerfil_ModuloAplicacion` (`Fk_Id_Modulo`,`Fk_Id_Aplicacion`),
  CONSTRAINT `Fk_PermisoPerfil` FOREIGN KEY (`Fk_Id_Perfil`) REFERENCES `tbl_perfil` (`Pk_Id_Perfil`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `Fk_PermisoPerfil_ModuloAplicacion` FOREIGN KEY (`Fk_Id_Modulo`, `Fk_Id_Aplicacion`) REFERENCES `tbl_asignacion_modulo_aplicacion` (`Fk_Id_Modulo`, `Fk_Id_Aplicacion`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permiso_perfil_aplicacion`
--

LOCK TABLES `tbl_permiso_perfil_aplicacion` WRITE;
/*!40000 ALTER TABLE `tbl_permiso_perfil_aplicacion` DISABLE KEYS */;
INSERT INTO `tbl_permiso_perfil_aplicacion` VALUES (1,1,10,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(1,2,1,_binary '',_binary '',_binary '',_binary '',_binary ''),(1,2,5,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(1,4,301,_binary '',_binary '',_binary '',_binary '',_binary ''),(1,4,306,_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0'),(1,4,309,_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0'),(4,4,303,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(4,4,304,_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '\0'),(4,4,305,_binary '\0',_binary '',_binary '\0',_binary '',_binary '\0'),(4,4,306,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(4,4,309,_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0'),(4,9,9,_binary '',_binary '',_binary '',_binary '',_binary ''),(7,4,301,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(7,4,304,_binary '\0',_binary '',_binary '',_binary '',_binary ''),(7,96,100,_binary '',_binary '',_binary '',_binary '\0',_binary ''),(10,1,310,_binary '',_binary '',_binary '\0',_binary '\0',_binary ''),(10,3,3,_binary '',_binary '',_binary '\0',_binary '\0',_binary ''),(10,4,301,_binary '\0',_binary '\0',_binary '',_binary '',_binary ''),(10,4,305,_binary '',_binary '',_binary '\0',_binary '\0',_binary '\0'),(11,1,10,_binary '',_binary '',_binary '',_binary '\0',_binary '\0'),(11,10,865,_binary '',_binary '\0',_binary '',_binary '',_binary ''),(11,96,100,_binary '',_binary '',_binary '',_binary '\0',_binary ''),(12,4,303,_binary '',_binary '\0',_binary '',_binary '\0',_binary '\0'),(12,4,306,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(12,96,100,_binary '',_binary '',_binary '',_binary '\0',_binary '\0'),(12,435,483,_binary '',_binary '',_binary '',_binary '\0',_binary '\0'),(16,543,424,_binary '',_binary '',_binary '',_binary '\0',_binary '\0'),(22,4,301,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(22,4,302,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(22,4,303,_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '\0'),(22,4,304,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(22,4,305,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(22,4,306,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(22,4,307,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(22,4,308,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(22,4,309,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(38,1,10,_binary '',_binary '',_binary '\0',_binary '\0',_binary '\0');
/*!40000 ALTER TABLE `tbl_permiso_perfil_aplicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_permiso_usuario_aplicacion`
--

DROP TABLE IF EXISTS `tbl_permiso_usuario_aplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_permiso_usuario_aplicacion` (
  `Fk_Id_Usuario` int NOT NULL,
  `Fk_Id_Modulo` int NOT NULL,
  `Fk_Id_Aplicacion` int NOT NULL,
  `Cmp_Ingresar_Permiso_Aplicacion_Usuario` bit(1) DEFAULT NULL,
  `Cmp_Consultar_Permiso_Aplicacion_Usuario` bit(1) DEFAULT NULL,
  `Cmp_Modificar_Permiso_Aplicacion_Usuario` bit(1) DEFAULT NULL,
  `Cmp_Eliminar_Permiso_Aplicacion_Usuario` bit(1) DEFAULT NULL,
  `Cmp_Imprimir_Permiso_Aplicacion_Usuario` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Fk_Id_Usuario`,`Fk_Id_Modulo`,`Fk_Id_Aplicacion`),
  KEY `Fk_Permiso_Modulo_Aplicacion` (`Fk_Id_Modulo`,`Fk_Id_Aplicacion`),
  CONSTRAINT `Fk_Permiso_Modulo_Aplicacion` FOREIGN KEY (`Fk_Id_Modulo`, `Fk_Id_Aplicacion`) REFERENCES `tbl_asignacion_modulo_aplicacion` (`Fk_Id_Modulo`, `Fk_Id_Aplicacion`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `Fk_Permiso_Usuario` FOREIGN KEY (`Fk_Id_Usuario`) REFERENCES `tbl_usuario` (`Pk_Id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permiso_usuario_aplicacion`
--

LOCK TABLES `tbl_permiso_usuario_aplicacion` WRITE;
/*!40000 ALTER TABLE `tbl_permiso_usuario_aplicacion` DISABLE KEYS */;
INSERT INTO `tbl_permiso_usuario_aplicacion` VALUES (1,1,10,_binary '',_binary '',_binary '\0',_binary '\0',_binary '\0'),(1,2,1,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(1,2,5,_binary '\0',_binary '',_binary '\0',_binary '\0',_binary ''),(2,1,10,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(2,4,305,_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0'),(4,2,5,_binary '',_binary '',_binary '',_binary '',_binary ''),(4,4,301,_binary '',_binary '',_binary '',_binary '',_binary ''),(4,4,302,_binary '',_binary '',_binary '',_binary '',_binary ''),(4,4,303,_binary '',_binary '\0',_binary '',_binary '\0',_binary '\0'),(4,4,304,_binary '',_binary '',_binary '\0',_binary '\0',_binary '\0'),(4,4,305,_binary '',_binary '',_binary '',_binary '',_binary ''),(4,4,306,_binary '',_binary '',_binary '',_binary '',_binary ''),(4,4,307,_binary '',_binary '',_binary '',_binary '',_binary ''),(4,4,308,_binary '',_binary '',_binary '',_binary '',_binary ''),(4,6,3042,_binary '',_binary '\0',_binary '',_binary '',_binary ''),(4,6,3043,_binary '',_binary '\0',_binary '',_binary '',_binary ''),(4,6,3044,_binary '',_binary '\0',_binary '',_binary '',_binary ''),(4,6,3045,_binary '',_binary '\0',_binary '',_binary '',_binary ''),(4,6,3046,_binary '',_binary '\0',_binary '',_binary '',_binary ''),(4,6,3401,_binary '',_binary '',_binary '',_binary '',_binary ''),(4,6,3402,_binary '',_binary '',_binary '',_binary '',_binary ''),(4,6,3403,_binary '',_binary '',_binary '',_binary '',_binary ''),(4,6,3404,_binary '',_binary '',_binary '',_binary '',_binary ''),(4,6,3405,_binary '',_binary '',_binary '',_binary '',_binary ''),(4,6,3412,_binary '',_binary '',_binary '',_binary '',_binary ''),(5,3,3,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(5,6,3402,_binary '',_binary '',_binary '',_binary '',_binary '\0'),(9,1,2,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(9,96,100,_binary '',_binary '',_binary '\0',_binary '',_binary '\0'),(12,4,301,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(12,4,302,_binary '',_binary '',_binary '',_binary '',_binary ''),(12,4,303,_binary '',_binary '',_binary '',_binary '',_binary ''),(12,4,304,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(12,4,305,_binary '',_binary '',_binary '',_binary '',_binary ''),(12,4,306,_binary '',_binary '',_binary '',_binary '',_binary ''),(12,4,307,_binary '',_binary '',_binary '',_binary '',_binary ''),(12,4,308,_binary '',_binary '',_binary '',_binary '',_binary ''),(15,1,10,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(15,4,301,_binary '',_binary '',_binary '',_binary '',_binary ''),(15,4,303,_binary '\0',_binary '',_binary '\0',_binary '\0',_binary ''),(15,4,304,_binary '\0',_binary '',_binary '\0',_binary '\0',_binary ''),(15,4,306,_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0'),(15,4,307,_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0'),(15,4,308,_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0'),(15,6,3404,_binary '',_binary '\0',_binary '',_binary '',_binary ''),(19,1,10,_binary '',_binary '',_binary '',_binary '\0',_binary ''),(21,1,10,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(21,2,5,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(22,2,1,_binary '',_binary '',_binary '',_binary '\0',_binary '\0'),(22,4,303,_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0'),(23,4,22,_binary '',_binary '',_binary '',_binary '',_binary ''),(23,4,301,_binary '',_binary '',_binary '',_binary '',_binary ''),(23,4,302,_binary '',_binary '',_binary '',_binary '',_binary ''),(23,4,303,_binary '\0',_binary '',_binary '',_binary '',_binary ''),(23,4,304,_binary '',_binary '',_binary '',_binary '',_binary ''),(23,4,305,_binary '',_binary '',_binary '',_binary '',_binary ''),(23,4,306,_binary '',_binary '',_binary '',_binary '',_binary ''),(23,4,307,_binary '',_binary '',_binary '',_binary '',_binary ''),(23,4,308,_binary '',_binary '',_binary '',_binary '',_binary ''),(23,4,309,_binary '',_binary '',_binary '',_binary '',_binary ''),(24,3,3,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(25,2,1,_binary '\0',_binary '',_binary '\0',_binary '\0',_binary ''),(31,4,301,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(31,4,304,_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0'),(32,3,3,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(35,4,301,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(35,4,302,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(35,4,306,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(36,4,301,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(36,4,302,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(36,4,303,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(36,4,304,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(36,4,305,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(36,4,306,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(36,4,307,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(36,4,308,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(37,4,305,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(40,4,303,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(42,4,301,_binary '',_binary '',_binary '',_binary '\0',_binary '\0'),(42,4,303,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(43,4,309,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(44,4,304,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(44,4,308,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(46,4,302,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(47,4,301,_binary '',_binary '',_binary '\0',_binary '\0',_binary '\0'),(49,4,303,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(49,4,306,_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0'),(49,4,307,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(49,4,308,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(51,4,303,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(51,4,306,_binary '\0',_binary '',_binary '',_binary '',_binary ''),(51,4,307,_binary '\0',_binary '',_binary '',_binary '',_binary ''),(51,4,308,_binary '\0',_binary '',_binary '',_binary '',_binary ''),(52,4,304,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(53,543,424,_binary '',_binary '',_binary '',_binary '\0',_binary ''),(54,3,3,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(54,4,301,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(54,4,302,_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0'),(54,4,303,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(54,4,305,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(55,4,303,_binary '',_binary '\0',_binary '',_binary '\0',_binary '\0'),(56,4,303,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(56,4,304,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(56,4,308,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(57,4,301,_binary '',_binary '',_binary '',_binary '',_binary ''),(57,4,303,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(57,4,304,_binary '',_binary '',_binary '\0',_binary '\0',_binary '\0'),(57,4,305,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(57,4,307,_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0'),(57,4,308,_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0'),(57,4,309,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(58,4,301,_binary '',_binary '',_binary '',_binary '',_binary ''),(58,4,302,_binary '',_binary '',_binary '',_binary '',_binary ''),(58,4,303,_binary '',_binary '',_binary '',_binary '',_binary ''),(58,4,304,_binary '',_binary '',_binary '',_binary '',_binary ''),(58,4,305,_binary '',_binary '',_binary '',_binary '',_binary ''),(62,4,301,_binary '',_binary '',_binary '',_binary '',_binary ''),(62,4,302,_binary '\0',_binary '',_binary '\0',_binary '',_binary '\0'),(62,4,303,_binary '\0',_binary '',_binary '',_binary '\0',_binary '\0'),(62,4,304,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(62,4,305,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(62,4,306,_binary '',_binary '',_binary '',_binary '',_binary ''),(64,6,3042,_binary '',_binary '',_binary '',_binary '',_binary ''),(64,6,3043,_binary '',_binary '',_binary '',_binary '',_binary ''),(64,6,3044,_binary '',_binary '',_binary '',_binary '',_binary ''),(64,6,3045,_binary '',_binary '',_binary '',_binary '',_binary ''),(64,6,3046,_binary '',_binary '',_binary '',_binary '',_binary ''),(64,6,3401,_binary '',_binary '',_binary '',_binary '',_binary ''),(64,6,3402,_binary '',_binary '',_binary '',_binary '',_binary ''),(64,6,3403,_binary '',_binary '',_binary '',_binary '',_binary ''),(64,6,3404,_binary '',_binary '',_binary '',_binary '',_binary ''),(64,6,3405,_binary '',_binary '',_binary '',_binary '',_binary ''),(65,6,3402,_binary '',_binary '',_binary '',_binary '',_binary ''),(66,6,3402,_binary '',_binary '',_binary '',_binary '',_binary ''),(67,6,3402,_binary '',_binary '',_binary '',_binary '',_binary '');
/*!40000 ALTER TABLE `tbl_permiso_usuario_aplicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_producto`
--

DROP TABLE IF EXISTS `tbl_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_producto` (
  `Cmp_Id_Producto` int NOT NULL AUTO_INCREMENT,
  `Cmp_Codigo_Producto` varchar(20) NOT NULL,
  `Cmp_Nombre_Producto` varchar(100) NOT NULL,
  `Cmp_Marca` varchar(50) DEFAULT NULL,
  `Cmp_Descripcion` varchar(255) DEFAULT NULL,
  `Cmp_Fecha_Vencimiento` date DEFAULT NULL,
  `Cmp_Id_Categoria_Producto` int NOT NULL,
  `Cmp_Id_Unidad_Base` int NOT NULL,
  `Cmp_Activo` bit(1) NOT NULL DEFAULT b'1',
  `Cmp_PrecioUnitario` decimal(14,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`Cmp_Id_Producto`),
  UNIQUE KEY `Cmp_Codigo_Producto` (`Cmp_Codigo_Producto`),
  KEY `Cmp_Id_Categoria_Producto` (`Cmp_Id_Categoria_Producto`),
  KEY `Cmp_Id_Unidad_Base` (`Cmp_Id_Unidad_Base`),
  CONSTRAINT `Tbl_Producto_ibfk_1` FOREIGN KEY (`Cmp_Id_Categoria_Producto`) REFERENCES `tbl_categoria_producto` (`Cmp_Id_Categoria_Producto`),
  CONSTRAINT `Tbl_Producto_ibfk_2` FOREIGN KEY (`Cmp_Id_Unidad_Base`) REFERENCES `tbl_unidad_medida` (`Cmp_Id_Unidad_Medida`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producto`
--

LOCK TABLES `tbl_producto` WRITE;
/*!40000 ALTER TABLE `tbl_producto` DISABLE KEYS */;
INSERT INTO `tbl_producto` VALUES (1,'PRD001','Pechuga de pollo','San Fernando','Pechuga de pollo fresca sin piel','2025-12-15',1,1,_binary '',18.50),(2,'PRD002','Aceite de oliva','Carbonell','Aceite de oliva virgen extra 1L','2026-05-10',2,2,_binary '',25.90),(3,'PRD003','Sal','Marina','Sal fina para cocina','2028-01-01',3,3,_binary '',2.50),(4,'PRD004','Pimienta negra','McCormick','Pimienta molida negra','2027-08-20',3,3,_binary '',6.00),(5,'PRD005','Ajo','Local','Cabezas de ajo frescas','2025-12-30',4,1,_binary '',4.20),(6,'PRD006','Limón','Local','Limón fresco de chacra','2025-11-25',5,4,_binary '',1.20),(7,'PRD007','Hierbas finas','Knorr','Mezcla seca de hierbas aromáticas','2026-09-15',3,5,_binary '',8.50),(8,'PRD008','Mantequilla','Gloria','Mantequilla sin sal 200g','2025-12-10',2,3,_binary '',9.80),(9,'PRD009','Tomate','Local','Tomate fresco para ensaladas','2025-11-20',4,1,_binary '',3.50),(10,'PRD010','Perejil','Local','Perejil fresco en paquete','2025-11-18',4,5,_binary '',2.80);
/*!40000 ALTER TABLE `tbl_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_promociones`
--

DROP TABLE IF EXISTS `tbl_promociones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_promociones` (
  `Pk_Id_Promociones` int NOT NULL AUTO_INCREMENT,
  `Cmp_Nombre_Promocion` varchar(50) NOT NULL,
  `Cmp_Descripcion` varchar(50) DEFAULT NULL,
  `Cmp_Porcentaje_Descuento` decimal(10,2) NOT NULL,
  `Cmp_Fecha_Inicio` date DEFAULT NULL,
  `Cmp_Fecha_Final` date DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Promociones`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_promociones`
--

LOCK TABLES `tbl_promociones` WRITE;
/*!40000 ALTER TABLE `tbl_promociones` DISABLE KEYS */;
INSERT INTO `tbl_promociones` VALUES (1,'Navideña','Promocion Navideña',25.00,'2025-11-01','2025-11-07'),(2,'Semana santa','semana de prmocion',50.00,'2025-03-23','2025-04-02');
/*!40000 ALTER TABLE `tbl_promociones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_puntos_huesped`
--

DROP TABLE IF EXISTS `tbl_puntos_huesped`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_puntos_huesped` (
  `Pk_Id_Puntos_Huesped` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Huesped` int NOT NULL,
  `Cmp_Puntos_Acumulados` int DEFAULT '0',
  `Cmp_Puntos_Obtenidos` int DEFAULT '0',
  `Cmp_Puntos_Canjeados` int DEFAULT '0',
  `Cmp_Fecha_Ultima_Actualizacion` date DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Puntos_Huesped`),
  UNIQUE KEY `uq_huesped` (`Fk_Id_Huesped`),
  CONSTRAINT `Tbl_Puntos_Huesped_ibfk_1` FOREIGN KEY (`Fk_Id_Huesped`) REFERENCES `tbl_huesped` (`Pk_Id_Huesped`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_puntos_huesped`
--

LOCK TABLES `tbl_puntos_huesped` WRITE;
/*!40000 ALTER TABLE `tbl_puntos_huesped` DISABLE KEYS */;
INSERT INTO `tbl_puntos_huesped` VALUES (1,3,30,30,15,'2025-11-14'),(2,4,150,90,0,'2025-11-14'),(5,5,30,45,0,'2025-11-13'),(7,8,60,30,0,'2025-11-13'),(10,9,60,30,0,'2025-11-13'),(14,10,30,15,0,'2025-11-13'),(15,1,30,15,0,'2025-11-14'),(18,11,30,15,0,'2025-11-14');
/*!40000 ALTER TABLE `tbl_puntos_huesped` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_receta`
--

DROP TABLE IF EXISTS `tbl_receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_receta` (
  `Pk_Id_Receta` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Menu` int DEFAULT NULL,
  `Fk_Id_Materia_Prima` int DEFAULT NULL,
  `Cmp_Cantidad` decimal(10,2) NOT NULL,
  `Cmp_Unidad_Medida` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Receta`),
  KEY `Fk_Id_Menu` (`Fk_Id_Menu`),
  KEY `Fk_Id_Materia_Prima` (`Fk_Id_Materia_Prima`),
  CONSTRAINT `Tbl_Receta_ibfk_1` FOREIGN KEY (`Fk_Id_Menu`) REFERENCES `tbl_menu` (`Pk_Id_Menu`),
  CONSTRAINT `Tbl_Receta_ibfk_2` FOREIGN KEY (`Fk_Id_Materia_Prima`) REFERENCES `tbl_materia_prima` (`Pk_Id_Materia_Prima`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_receta`
--

LOCK TABLES `tbl_receta` WRITE;
/*!40000 ALTER TABLE `tbl_receta` DISABLE KEYS */;
INSERT INTO `tbl_receta` VALUES (1,2,1,200.00,'gramos'),(2,2,2,10.00,'ml'),(3,2,3,2.00,'gramos'),(4,2,4,1.00,'gramos'),(5,2,6,0.50,'unidad'),(6,2,7,5.00,'gramos'),(8,3,8,2.00,'kilos'),(9,3,9,5.00,'lb'),(10,1,10,5.00,'lb');
/*!40000 ALTER TABLE `tbl_receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reportes`
--

DROP TABLE IF EXISTS `tbl_reportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_reportes` (
  `Pk_Id_Reporte` int NOT NULL,
  `Cmp_Titulo_Reporte` varchar(50) DEFAULT NULL,
  `Cmp_Ruta_Reporte` varchar(200) DEFAULT NULL,
  `Cmp_Fecha_Reporte` date DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reportes`
--

LOCK TABLES `tbl_reportes` WRITE;
/*!40000 ALTER TABLE `tbl_reportes` DISABLE KEYS */;
INSERT INTO `tbl_reportes` VALUES (1,'Reporte final','C:\\Users\\lopez\\OneDrive\\Escritorio\\navegador\\asis2k25p2\\codigo\\componentes\\reporteador\\Base de Datos y Reporte Generado\\ReporteEmpleadosHSC.rpt','2025-01-01'),(2,'Reporte_Prueba','C:\\Users\\lopez\\OneDrive\\Escritorio\\navegador\\asis2k25p2\\codigo\\componentes\\reporteador\\Base de Datos y Reporte Generado\\ReporteEmpleadosHSC.rpt','2025-01-01');
/*!40000 ALTER TABLE `tbl_reportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reserva`
--

DROP TABLE IF EXISTS `tbl_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_reserva` (
  `Pk_Id_Reserva` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Huesped` int NOT NULL,
  `Fk_Id_Habitacion` int DEFAULT NULL,
  `Fk_Id_Promociones` int DEFAULT NULL,
  `Fk_Id_Buffet` int DEFAULT NULL,
  `Cmp_Fecha_Reserva` date DEFAULT NULL,
  `Cmp_Fecha_Entrada` date DEFAULT NULL,
  `Cmp_Fecha_Salida` date DEFAULT NULL,
  `Cmp_Num_Huespedes` int DEFAULT NULL,
  `Cmp_Peticiones_Especiales` varchar(255) DEFAULT NULL,
  `Cmp_Estado_Reserva` enum('Pendiente','Confirmada','Cancelada','Finalizada') NOT NULL,
  `Cmp_Total_Reserva` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Reserva`),
  KEY `Fk_Id_Huesped` (`Fk_Id_Huesped`),
  KEY `Fk_Id_Buffet` (`Fk_Id_Buffet`),
  KEY `Fk_Id_Habitacion` (`Fk_Id_Habitacion`),
  KEY `Fk_Id_Promociones` (`Fk_Id_Promociones`),
  CONSTRAINT `Tbl_Reserva_ibfk_1` FOREIGN KEY (`Fk_Id_Huesped`) REFERENCES `tbl_huesped` (`Pk_Id_Huesped`),
  CONSTRAINT `Tbl_Reserva_ibfk_2` FOREIGN KEY (`Fk_Id_Buffet`) REFERENCES `tbl_buffet` (`Pk_Id_Buffet`),
  CONSTRAINT `Tbl_Reserva_ibfk_3` FOREIGN KEY (`Fk_Id_Habitacion`) REFERENCES `tbl_habitaciones` (`PK_ID_Habitaciones`),
  CONSTRAINT `Tbl_Reserva_ibfk_4` FOREIGN KEY (`Fk_Id_Promociones`) REFERENCES `tbl_promociones` (`Pk_Id_Promociones`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reserva`
--

LOCK TABLES `tbl_reserva` WRITE;
/*!40000 ALTER TABLE `tbl_reserva` DISABLE KEYS */;
INSERT INTO `tbl_reserva` VALUES (11,1,1,NULL,NULL,'2025-11-18','2025-11-20','2025-11-23',2,'Sin peticiones','Finalizada',1650.00),(12,3,2,NULL,NULL,'2025-11-10','2025-11-12','2025-11-15',1,'Cerca del ascensor','Finalizada',2850.00),(13,1,1,NULL,NULL,'2025-11-18','2025-11-20','2025-11-23',2,'Sin peticiones','Finalizada',1650.00),(14,3,2,NULL,NULL,'2025-11-10','2025-11-12','2025-11-15',1,'Cerca del ascensor','Finalizada',2850.00),(15,1,1,NULL,NULL,'2025-11-18','2025-11-20','2025-11-23',2,'Sin peticiones','Finalizada',1650.00),(16,3,2,NULL,NULL,'2025-11-10','2025-11-10','2025-11-12',1,'Cerca del ascensor','Finalizada',1900.00),(17,1,2,NULL,NULL,'2025-11-08','2025-11-12','2025-11-18',5,'ninguna','Finalizada',5700.00),(18,4,1,NULL,NULL,'2025-11-18','2025-11-20','2025-11-23',2,'Sin peticiones','Finalizada',1650.00),(19,4,1,NULL,NULL,'2025-11-18','2025-11-20','2025-11-23',2,'Sin peticiones','Finalizada',1650.00),(20,4,1,NULL,NULL,'2025-11-18','2025-11-20','2025-11-23',2,'Sin peticiones','Finalizada',1650.00),(22,3,1,NULL,1,'2025-11-08','2025-11-10','2025-11-15',1,'ninguna peticion','Finalizada',2750.00),(23,3,1,NULL,1,'2025-11-08','2025-11-15','2025-11-20',1,'nada','Finalizada',2750.00),(24,3,3,NULL,1,'2025-11-08','2025-11-08','2025-11-10',3,'ninguna','Finalizada',2500.00),(25,1,1,NULL,NULL,'2025-11-18','2025-11-20','2025-11-23',2,'Sin peticiones','Finalizada',1650.00),(26,3,2,NULL,NULL,'2025-11-10','2025-11-12','2025-11-15',1,'Cerca del ascensor','Finalizada',2850.00),(27,1,1,NULL,NULL,'2025-11-18','2025-11-20','2025-11-23',2,'Sin peticiones','Finalizada',1650.00),(28,3,2,NULL,NULL,'2025-11-10','2025-11-12','2025-11-15',1,'Cerca del ascensor','Pendiente',2850.00),(29,4,1,NULL,1,'2025-11-08','2025-11-08','2025-11-10',1,'','Pendiente',1100.00),(30,4,3,NULL,1,'2025-11-09','2025-11-09','2025-11-15',3,'','Pendiente',7500.00),(31,4,3,NULL,1,'2025-11-09','2025-11-09','2025-11-15',3,'','Finalizada',7500.00),(32,4,3,NULL,1,'2025-11-09','2025-11-09','2025-11-15',3,'','Finalizada',7470.00),(33,4,1,NULL,1,'2025-11-09','2025-11-09','2025-11-15',1,'','Finalizada',3300.00),(34,1,3,NULL,1,'2025-11-09','2025-11-09','2025-11-15',3,'','Pendiente',7500.00),(35,5,3,NULL,1,'2025-11-09','2025-11-09','2025-11-15',3,'','Finalizada',7500.00),(36,5,1,NULL,1,'2025-11-09','2025-11-09','2025-11-12',1,'','Confirmada',1650.00),(37,5,1,NULL,1,'2025-11-09','2025-11-09','2025-11-18',1,'','Pendiente',4920.00),(38,5,1,NULL,1,'2025-11-09','2025-11-18','2025-11-21',1,'','Pendiente',1650.00),(39,8,5,NULL,1,'2025-11-13','2025-11-13','2025-11-17',4,'No tuvo ninguna petición adicional','Finalizada',3800.00),(40,5,2,NULL,1,'2025-11-13','2025-11-20','2025-11-25',2,'nada','Pendiente',4750.00),(41,5,2,NULL,1,'2025-11-13','2025-11-25','2025-11-30',2,'','Finalizada',4750.00),(42,8,4,NULL,1,'2025-11-13','2025-11-01','2025-11-07',4,'No hubieron','Finalizada',4800.00),(43,9,3,NULL,1,'2025-11-13','2025-11-01','2025-11-07',3,'No hubo peticiones','Finalizada',7500.00),(44,9,6,NULL,1,'2025-11-13','2025-11-01','2025-11-07',2,'No hubo peticiones especiales','Finalizada',3300.00),(45,4,6,NULL,1,'2025-11-13','2025-11-12','2025-11-15',2,'','Finalizada',1650.00),(46,4,3,NULL,1,'2025-11-13','2025-11-15','2025-11-17',3,'','Finalizada',2500.00),(47,10,3,NULL,1,'2025-11-13','2025-11-15','2025-11-20',3,'ninguna peticion','Confirmada',6250.00),(48,1,3,NULL,1,'2025-11-14','2025-11-14','2025-11-20',3,'ninguna peticion','Confirmada',7500.00),(49,3,3,NULL,1,'2025-11-14','2025-11-14','2025-11-21',1,'ninguna peticion','Confirmada',8750.00),(50,4,3,NULL,1,'2025-11-14','2025-11-08','2025-11-19',2,'no hay peticiones','Pendiente',13750.00),(51,10,3,NULL,1,'2025-11-14','2025-11-02','2025-11-04',3,'ninguno','Pendiente',2500.00),(52,4,3,NULL,1,'2025-11-14','2025-10-08','2025-10-11',1,'ningun pendientee','Confirmada',3750.00),(53,6,3,NULL,1,'2025-11-14','2025-10-28','2025-10-30',3,'nada','Pendiente',2500.00),(54,11,7,NULL,1,'2025-11-14','2025-11-14','2025-11-16',2,'','Finalizada',1600.00);
/*!40000 ALTER TABLE `tbl_reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reservas_alacarta`
--

DROP TABLE IF EXISTS `tbl_reservas_alacarta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_reservas_alacarta` (
  `PK_Id_Reserva` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Huesped` int DEFAULT NULL,
  `Fk_Id_Habitacion` int DEFAULT NULL,
  `Fk_Id_Salon` int DEFAULT NULL,
  `Cmp_Fecha_Reserva` date DEFAULT NULL,
  `Cmp_Hora_reserva` time DEFAULT NULL,
  `Cmp_Numero_Comensales` int DEFAULT NULL,
  `Cmp_Estado` int DEFAULT NULL,
  PRIMARY KEY (`PK_Id_Reserva`),
  KEY `Fk_Id_Huesped` (`Fk_Id_Huesped`),
  KEY `Fk_Id_Habitacion` (`Fk_Id_Habitacion`),
  KEY `Fk_Id_Salon` (`Fk_Id_Salon`),
  CONSTRAINT `Tbl_Reservas_Alacarta_ibfk_1` FOREIGN KEY (`Fk_Id_Huesped`) REFERENCES `tbl_huesped` (`Pk_Id_Huesped`),
  CONSTRAINT `Tbl_Reservas_Alacarta_ibfk_2` FOREIGN KEY (`Fk_Id_Habitacion`) REFERENCES `tbl_habitaciones` (`PK_ID_Habitaciones`),
  CONSTRAINT `Tbl_Reservas_Alacarta_ibfk_3` FOREIGN KEY (`Fk_Id_Salon`) REFERENCES `tbl_salones` (`Pk_Id_Salon`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reservas_alacarta`
--

LOCK TABLES `tbl_reservas_alacarta` WRITE;
/*!40000 ALTER TABLE `tbl_reservas_alacarta` DISABLE KEYS */;
INSERT INTO `tbl_reservas_alacarta` VALUES (1,1,1,1,'2025-11-21','10:42:01',2,1),(3,5,6,4,'2025-11-13','19:15:20',5,1),(7,4,4,13,'2025-11-14','08:25:11',5,1);
/*!40000 ALTER TABLE `tbl_reservas_alacarta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reservas_salones`
--

DROP TABLE IF EXISTS `tbl_reservas_salones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_reservas_salones` (
  `Pk_Id_Reserva_Salon` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Huesped` int DEFAULT NULL,
  `Fk_Id_Salon` int DEFAULT NULL,
  `Fk_Id_Promociones` int DEFAULT NULL,
  `Cmp_Fecha_Reserva` date DEFAULT NULL,
  `Cmp_Hora_Inicio` time DEFAULT NULL,
  `Cmp_Hora_Fin` time DEFAULT NULL,
  `Cmp_Cantidad_Personas` int DEFAULT NULL,
  `Cmp_Monto_Total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Reserva_Salon`),
  KEY `Fk_Id_Huesped` (`Fk_Id_Huesped`),
  KEY `Fk_Id_Salon` (`Fk_Id_Salon`),
  KEY `Fk_Id_Promociones` (`Fk_Id_Promociones`),
  CONSTRAINT `Tbl_Reservas_Salones_ibfk_1` FOREIGN KEY (`Fk_Id_Huesped`) REFERENCES `tbl_huesped` (`Pk_Id_Huesped`),
  CONSTRAINT `Tbl_Reservas_Salones_ibfk_2` FOREIGN KEY (`Fk_Id_Salon`) REFERENCES `tbl_salones` (`Pk_Id_Salon`),
  CONSTRAINT `Tbl_Reservas_Salones_ibfk_3` FOREIGN KEY (`Fk_Id_Promociones`) REFERENCES `tbl_promociones` (`Pk_Id_Promociones`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reservas_salones`
--

LOCK TABLES `tbl_reservas_salones` WRITE;
/*!40000 ALTER TABLE `tbl_reservas_salones` DISABLE KEYS */;
INSERT INTO `tbl_reservas_salones` VALUES (25,1,1,NULL,'2025-12-25','10:00:00','13:00:00',25,600.00),(26,6,2,NULL,'2025-12-26','16:15:00','21:15:00',25,1500.00),(27,4,3,NULL,'2025-11-27','08:00:00','13:00:00',15,800.00),(28,10,4,NULL,'2025-12-06','13:00:00','15:00:00',22,1000.00),(29,9,5,NULL,'2025-12-03','21:00:00','23:00:00',20,650.00),(31,7,12,NULL,'2025-12-02','19:11:16','19:11:16',20,560.00),(32,11,13,NULL,'2025-11-16','19:11:16','19:11:16',100,1200.00);
/*!40000 ALTER TABLE `tbl_reservas_salones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_room_service`
--

DROP TABLE IF EXISTS `tbl_room_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_room_service` (
  `Pk_Id_Room` int NOT NULL AUTO_INCREMENT,
  `FK_Id_Huesped` int DEFAULT NULL,
  `Fk_Id_Habitacion` int DEFAULT NULL,
  `Cmp_Fecha_Orden` datetime DEFAULT NULL,
  `Cmp_Estado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Room`),
  KEY `FK_Id_Huesped` (`FK_Id_Huesped`),
  KEY `Fk_Id_Habitacion` (`Fk_Id_Habitacion`),
  CONSTRAINT `Tbl_Room_Service_ibfk_1` FOREIGN KEY (`FK_Id_Huesped`) REFERENCES `tbl_huesped` (`Pk_Id_Huesped`),
  CONSTRAINT `Tbl_Room_Service_ibfk_2` FOREIGN KEY (`Fk_Id_Habitacion`) REFERENCES `tbl_habitaciones` (`PK_ID_Habitaciones`),
  CONSTRAINT `CHK_Estado_Room_Service` CHECK ((`Cmp_Estado` in (_utf8mb4'Entregado',_utf8mb4'No entregado')))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_room_service`
--

LOCK TABLES `tbl_room_service` WRITE;
/*!40000 ALTER TABLE `tbl_room_service` DISABLE KEYS */;
INSERT INTO `tbl_room_service` VALUES (12,1,1,'2025-11-14 07:46:22','No entregado'),(14,3,3,'2025-11-14 07:58:57','Entregado'),(16,4,4,'2025-11-14 08:23:58','Entregado');
/*!40000 ALTER TABLE `tbl_room_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_room_service_detalle`
--

DROP TABLE IF EXISTS `tbl_room_service_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_room_service_detalle` (
  `Pk_Id_Detalle` int NOT NULL AUTO_INCREMENT,
  `FK_Id_Room` int DEFAULT NULL,
  `FK_Id_Menu` int DEFAULT NULL,
  `Cmp_Cantidad` int DEFAULT NULL,
  `Cmp_Precio_Unitario` decimal(10,2) DEFAULT NULL,
  `Cmp_Subtotal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Detalle`),
  KEY `FK_Id_Room` (`FK_Id_Room`),
  KEY `FK_Id_Menu` (`FK_Id_Menu`),
  CONSTRAINT `Tbl_Room_Service_Detalle_ibfk_1` FOREIGN KEY (`FK_Id_Room`) REFERENCES `tbl_room_service` (`Pk_Id_Room`),
  CONSTRAINT `Tbl_Room_Service_Detalle_ibfk_2` FOREIGN KEY (`FK_Id_Menu`) REFERENCES `tbl_menu` (`Pk_Id_Menu`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_room_service_detalle`
--

LOCK TABLES `tbl_room_service_detalle` WRITE;
/*!40000 ALTER TABLE `tbl_room_service_detalle` DISABLE KEYS */;
INSERT INTO `tbl_room_service_detalle` VALUES (4,12,1,1,20.00,20.00),(5,12,6,2,40.00,80.00),(6,14,7,5,20.00,100.00),(7,16,1,2,20.00,40.00);
/*!40000 ALTER TABLE `tbl_room_service_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_salario_empleado`
--

DROP TABLE IF EXISTS `tbl_salario_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_salario_empleado` (
  `Pk_Id_Salario` int NOT NULL,
  `Fk_Id_Empleado` int DEFAULT NULL,
  `Cmp_Monto_Salario_Empleado` float DEFAULT NULL,
  `Cmp_Fecha_Inicio_Salario_Empleado` datetime DEFAULT NULL,
  `Cmp_Fecha_Fin_Salario_Empleado` datetime DEFAULT NULL,
  `Cmp_Estado_Salario_Empleado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Salario`),
  KEY `Fk_Salario_Empleado` (`Fk_Id_Empleado`),
  CONSTRAINT `Fk_Salario_Empleado` FOREIGN KEY (`Fk_Id_Empleado`) REFERENCES `tbl_empleado` (`Pk_Id_Empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_salario_empleado`
--

LOCK TABLES `tbl_salario_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_salario_empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_salario_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_salones`
--

DROP TABLE IF EXISTS `tbl_salones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_salones` (
  `Pk_Id_Salon` int NOT NULL AUTO_INCREMENT,
  `Cmp_Nombre_Salon` varchar(50) NOT NULL,
  `Cmp_Ubicacion` varchar(50) DEFAULT NULL,
  `Cmp_Capacidad` int DEFAULT NULL,
  `Cmp_Disponibilidad` tinyint(1) NOT NULL,
  PRIMARY KEY (`Pk_Id_Salon`),
  CONSTRAINT `Tbl_Salones_chk_1` CHECK ((`Cmp_Disponibilidad` in (0,1)))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_salones`
--

LOCK TABLES `tbl_salones` WRITE;
/*!40000 ALTER TABLE `tbl_salones` DISABLE KEYS */;
INSERT INTO `tbl_salones` VALUES (1,'Esmetalda','Planta Alta',25,1),(2,'Salon Estrella','Norte',25,1),(3,'Zafiro','Anexo Norte',20,1),(4,'Diamantes','Planta Alta',25,1),(5,'Perla','Jardin Exterior',20,1),(6,'Salon las petunias','Central',25,0),(9,'Rubi','Planta Baja',15,1),(12,'Central','Planta alta',25,1),(13,'VIP','Planta alta',100,1);
/*!40000 ALTER TABLE `tbl_salones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_servicio_adicional`
--

DROP TABLE IF EXISTS `tbl_servicio_adicional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_servicio_adicional` (
  `Pk_Id_Servicio` int NOT NULL AUTO_INCREMENT,
  `Pk_Id_Reserva` int DEFAULT NULL,
  `Cmp_Tipo_Servicio` varchar(75) DEFAULT NULL,
  `Cmp_Descripcion` varchar(100) DEFAULT NULL,
  `Cmp_Costo` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_servicio_adicional`
--

LOCK TABLES `tbl_servicio_adicional` WRITE;
/*!40000 ALTER TABLE `tbl_servicio_adicional` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_servicio_adicional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_servicios_habitacion`
--

DROP TABLE IF EXISTS `tbl_servicios_habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_servicios_habitacion` (
  `PK_ID_Servicio_habitacion` int NOT NULL AUTO_INCREMENT,
  `Cmp_Nombre_Servicio` varchar(50) NOT NULL,
  PRIMARY KEY (`PK_ID_Servicio_habitacion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_servicios_habitacion`
--

LOCK TABLES `tbl_servicios_habitacion` WRITE;
/*!40000 ALTER TABLE `tbl_servicios_habitacion` DISABLE KEYS */;
INSERT INTO `tbl_servicios_habitacion` VALUES (1,'TV'),(2,'Aire acondicionado'),(3,'Congelador'),(4,'Ducha');
/*!40000 ALTER TABLE `tbl_servicios_habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tienda`
--

DROP TABLE IF EXISTS `tbl_tienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tienda` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  `precio` decimal(10,2) NOT NULL,
  `stock` int DEFAULT '0',
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tienda`
--

LOCK TABLES `tbl_tienda` WRITE;
/*!40000 ALTER TABLE `tbl_tienda` DISABLE KEYS */;
INSERT INTO `tbl_tienda` VALUES (1,'Carlo','Chetos con fresa',500.00,50,'2025-11-24 00:00:00');
/*!40000 ALTER TABLE `tbl_tienda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_habitacion`
--

DROP TABLE IF EXISTS `tbl_tipo_habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipo_habitacion` (
  `Pk_ID_Tipo_Habitaciones` int NOT NULL AUTO_INCREMENT,
  `Cmp_Tipo_Habitacion` varchar(50) NOT NULL,
  `Cmp_Descripcion_Tipo_Habitacion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Pk_ID_Tipo_Habitaciones`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_habitacion`
--

LOCK TABLES `tbl_tipo_habitacion` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_habitacion` DISABLE KEYS */;
INSERT INTO `tbl_tipo_habitacion` VALUES (1,'Estándar Doble','Habitación cómoda con dos camas, baño privado y TV.'),(2,'Suite Deluxe','Suite amplia con vista al volcán, baño con jacuzzi y minibar.'),(3,'Familiar','Habitación grande para 4 personas, incluye área de estar.'),(4,'Ejecutiva','Habitación de lujo para viajeros de negocios, escritorio y minibar.'),(5,'simple','cuarto simple'),(6,'Estándar Doble','Habitación cómoda con dos camas, baño privado y TV.'),(7,'Suite Deluxe','Suite amplia con vista al volcán, baño con jacuzzi y minibar.'),(8,'Familiar','Habitación grande para 4 personas, incluye área de estar.'),(9,'Ejecutiva','Habitación de lujo para viajeros de negocios, escritorio y minibar.');
/*!40000 ALTER TABLE `tbl_tipo_habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_menu`
--

DROP TABLE IF EXISTS `tbl_tipo_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipo_menu` (
  `Pk_Id_Tipo_Menu` int NOT NULL AUTO_INCREMENT,
  `Cmp_Tipo_Menu` varchar(50) NOT NULL,
  PRIMARY KEY (`Pk_Id_Tipo_Menu`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_menu`
--

LOCK TABLES `tbl_tipo_menu` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_menu` DISABLE KEYS */;
INSERT INTO `tbl_tipo_menu` VALUES (1,'Room Service'),(2,'Salones');
/*!40000 ALTER TABLE `tbl_tipo_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_token_restaurarcontrasena`
--

DROP TABLE IF EXISTS `tbl_token_restaurarcontrasena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_token_restaurarcontrasena` (
  `Pk_Id_Token` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Usuario` int DEFAULT NULL,
  `Cmp_Token` varchar(50) DEFAULT NULL,
  `Cmp_Fecha_Creacion_Restaurar_Contrasenea` datetime DEFAULT NULL,
  `Cmp_Expiracion_Restaurar_Contrasenea` datetime DEFAULT NULL,
  `Cmp_Utilizado_Restaurar_Contrasenea` bit(1) DEFAULT NULL,
  `Cmp_Fecha_Uso_Restaurar_Contrasenea` datetime DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Token`),
  KEY `Fk_Token_Usuario` (`Fk_Id_Usuario`),
  CONSTRAINT `Fk_Token_Usuario` FOREIGN KEY (`Fk_Id_Usuario`) REFERENCES `tbl_usuario` (`Pk_Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_token_restaurarcontrasena`
--

LOCK TABLES `tbl_token_restaurarcontrasena` WRITE;
/*!40000 ALTER TABLE `tbl_token_restaurarcontrasena` DISABLE KEYS */;
INSERT INTO `tbl_token_restaurarcontrasena` VALUES (1,2,'C43C63DA','2025-09-21 18:24:01','2025-09-21 18:29:01',_binary '','2025-09-21 18:24:38'),(2,1,'901DA0A1','2025-09-21 18:31:36','2025-09-21 18:36:36',_binary '','2025-09-21 18:32:15'),(3,1,'990DD530','2025-09-22 10:05:46','2025-09-22 10:10:46',_binary '\0',NULL),(4,1,'39C03B58','2025-09-24 20:53:40','2025-09-24 20:58:40',_binary '','2025-09-24 20:54:05'),(5,1,'21BE635F','2025-09-25 08:36:46','2025-09-25 08:41:46',_binary '','2025-09-25 08:37:06'),(6,7,'28F08413','2025-09-26 19:21:51','2025-09-26 19:26:51',_binary '\0',NULL),(7,24,'314418EF','2025-09-27 10:09:06','2025-09-27 10:14:06',_binary '','2025-09-27 10:09:27'),(8,7,'C30808F1','2025-09-27 12:22:20','2025-09-27 12:27:20',_binary '','2025-09-27 12:22:29'),(9,7,'B1AE042A','2025-09-27 12:22:53','2025-09-27 12:27:53',_binary '','2025-09-27 12:23:00'),(10,7,'183E762C','2025-09-27 12:30:45','2025-09-27 12:35:45',_binary '','2025-09-27 12:31:30'),(11,7,'AB7B8C02','2025-09-27 12:34:27','2025-09-27 12:39:27',_binary '','2025-09-27 12:34:54'),(12,7,'76A7D51E','2025-09-27 17:50:00','2025-09-27 17:55:00',_binary '\0',NULL),(13,7,'F8C4776A','2025-09-27 23:49:38','2025-09-27 23:54:38',_binary '','2025-09-27 23:49:52'),(14,1,'DE59E51C','2025-10-06 22:27:35','2025-10-06 22:32:35',_binary '','2025-10-06 22:27:56'),(15,29,'C577F481','2025-10-08 13:30:21','2025-10-08 13:35:21',_binary '','2025-10-08 13:31:09'),(16,12,'F7A08D82','2025-10-12 08:03:14','2025-10-12 08:08:14',_binary '','2025-10-12 08:03:29'),(17,12,'B1B0EC64','2025-10-12 08:05:58','2025-10-12 08:10:58',_binary '','2025-10-12 08:06:12'),(18,7,'A8806F00','2025-10-12 14:48:07','2025-10-12 14:53:07',_binary '\0',NULL),(19,7,'A02EE0D6','2025-10-12 14:57:40','2025-10-12 15:02:40',_binary '','2025-10-12 14:58:16'),(20,47,'C319527A','2025-10-13 17:23:42','2025-10-13 17:28:42',_binary '','2025-10-13 17:24:22'),(21,53,'18AE161D','2025-10-14 18:31:41','2025-10-14 18:36:41',_binary '','2025-10-14 18:32:04'),(22,2,'F1E15FAE','2025-10-18 11:49:09','2025-10-18 11:54:09',_binary '','2025-10-18 11:50:16'),(23,4,'B07EF449','2025-10-18 12:07:34','2025-10-18 12:12:34',_binary '','2025-10-18 12:08:27'),(24,4,'0C76A696','2025-10-18 17:08:53','2025-10-18 17:13:53',_binary '','2025-10-18 17:09:11'),(25,2,'9BAAF4CB','2025-10-21 13:44:20','2025-10-21 13:49:20',_binary '','2025-10-21 13:44:51'),(26,7,'46B0AC97','2025-10-25 14:48:38','2025-10-25 14:53:38',_binary '','2025-10-25 14:48:59');
/*!40000 ALTER TABLE `tbl_token_restaurarcontrasena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_unidad_medida`
--

DROP TABLE IF EXISTS `tbl_unidad_medida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_unidad_medida` (
  `Cmp_Id_Unidad_Medida` int NOT NULL AUTO_INCREMENT,
  `Cmp_Nombre_Unidad` varchar(50) NOT NULL,
  PRIMARY KEY (`Cmp_Id_Unidad_Medida`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_unidad_medida`
--

LOCK TABLES `tbl_unidad_medida` WRITE;
/*!40000 ALTER TABLE `tbl_unidad_medida` DISABLE KEYS */;
INSERT INTO `tbl_unidad_medida` VALUES (1,'Kilogramo'),(2,'Litro'),(3,'Gramo'),(4,'Unidad'),(5,'Paquete');
/*!40000 ALTER TABLE `tbl_unidad_medida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuario`
--

DROP TABLE IF EXISTS `tbl_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usuario` (
  `Pk_Id_Usuario` int NOT NULL AUTO_INCREMENT,
  `Fk_Id_Empleado` int DEFAULT NULL,
  `Cmp_Nombre_Usuario` varchar(50) DEFAULT NULL,
  `Cmp_Contrasena_Usuario` varchar(65) DEFAULT NULL,
  `Cmp_Intentos_Fallidos_Usuario` int DEFAULT NULL,
  `Cmp_Estado_Usuario` bit(1) DEFAULT NULL,
  `Cmp_FechaCreacion_Usuario` datetime DEFAULT NULL,
  `Cmp_Ultimo_Cambio_Contrasenea` datetime DEFAULT NULL,
  `Cmp_Pidio_Cambio_Contrasenea` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Usuario`),
  KEY `Fk_Usuario_Empleado` (`Fk_Id_Empleado`),
  CONSTRAINT `Fk_Usuario_Empleado` FOREIGN KEY (`Fk_Id_Empleado`) REFERENCES `tbl_empleado` (`Pk_Id_Empleado`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario`
--

LOCK TABLES `tbl_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_usuario` DISABLE KEYS */;
INSERT INTO `tbl_usuario` VALUES (1,1,'ricardo','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5',0,_binary '','2025-09-21 23:01:04','2025-10-06 22:27:56',_binary '\0'),(2,1,'Cesar','578bfc33d127e864cf010d2fdda8c66c018757829b7e349653760ce5e36c59c6',0,_binary '','2025-09-22 00:17:20','2025-10-21 13:44:50',_binary '\0'),(4,2,'brandon','45297c633d331e6ac35169ebaaf75bc7fafd206ebb59ba4efd80566936e46eb0',0,_binary '','2025-09-21 20:49:54','2025-10-18 17:09:11',_binary '\0'),(5,1,'carlo','91a73fd806ab2c005c13b4dc19130a884e909dea3f72d46e30266fe1a1f588d8',0,_binary '','2025-09-22 08:56:31','2025-09-22 08:56:31',_binary '\0'),(6,2,'conesultas','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',0,_binary '','2025-09-22 18:31:34','2025-09-22 18:31:34',_binary '\0'),(7,2,'ruben','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',0,_binary '','2025-09-22 18:37:21','2025-10-25 14:48:59',_binary '\0'),(8,2,'rhm','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',0,_binary '','2025-09-22 18:52:45','2025-09-22 18:52:45',_binary '\0'),(9,2,'Juan','ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad',0,_binary '','2025-09-22 20:59:48','2025-09-22 20:59:48',_binary '\0'),(10,1,'prueba','655e786674d9d3e77bc05ed1de37b4b6bc89f788829f9f3c679e7687b410c89b',0,_binary '','2025-09-23 07:42:45','2025-09-23 07:42:45',_binary '\0'),(11,1,'armando','d74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1',0,_binary '','2025-09-23 22:56:07','2025-09-23 22:56:07',_binary '\0'),(12,11,'administradorCesar','4813494d137e1631bba301d5acab6e7bb7aa74ce1185d456565ef51d737677b2',0,_binary '','2025-10-12 08:04:12','2025-10-12 08:06:12',_binary '\0'),(13,1,'manolo','b2c56341cc2b9f8bf898bd7528dd39e641b51c4fbd51f241b46ad70872dd1b99',0,_binary '','2025-09-24 01:08:13','2025-09-24 01:08:13',_binary '\0'),(14,2,'aa','4fc82b26aecb47d2868c4efbe3581732a3e7cbcc6c2efb32062c08170a05eeb8',0,_binary '','2025-09-24 18:44:59','2025-09-24 18:44:59',_binary '\0'),(15,2,'jeffer','f0d588a225e6e6ba0501a3f787230abf579f6db2dd55be0fa3450f8acd54e6f3',0,_binary '','2025-09-24 21:58:01','2025-09-24 21:58:01',_binary '\0'),(16,2,'Ernesto','4813494d137e1631bba301d5acab6e7bb7aa74ce1185d456565ef51d737677b2',0,_binary '','2025-09-25 07:30:08','2025-09-25 07:30:08',_binary '\0'),(17,1,'esduardo','c0bc1e08f9743b2d50d5f1607503bf4e849af0e729fca896515bea955d70a33e',0,_binary '','2025-09-25 07:58:15','2025-09-25 07:58:15',_binary '\0'),(18,1,'ricardo','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',0,_binary '','2025-09-25 08:36:11','2025-09-25 08:36:11',_binary '\0'),(19,1,'aron','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5',0,_binary '','2025-09-25 10:30:21','2025-09-25 10:30:21',_binary '\0'),(20,2,'pedro','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5',0,_binary '','2025-09-25 10:37:20','2025-09-25 10:37:20',_binary '\0'),(21,2,'juan','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',0,_binary '','2025-09-25 15:36:06','2025-09-25 15:36:06',_binary '\0'),(22,3,'pruebas','655e786674d9d3e77bc05ed1de37b4b6bc89f788829f9f3c679e7687b410c89b',0,_binary '','2025-09-26 20:38:57','2025-09-26 20:38:57',_binary '\0'),(23,3,'admin','240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9',0,_binary '','2025-09-26 20:45:53','2025-09-26 20:45:53',_binary '\0'),(24,4,'Kenph','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855',0,_binary '','2025-09-27 09:10:23','2025-09-27 10:09:27',_binary '\0'),(25,4,'Kenph','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',0,_binary '','2025-09-27 09:15:22','2025-09-27 09:15:22',_binary '\0'),(26,4,'@123','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',0,_binary '','2025-09-27 09:19:55','2025-09-27 09:19:55',_binary '\0'),(27,4,'Kenph','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',0,_binary '','2025-09-27 09:42:35','2025-09-27 09:42:35',_binary '\0'),(28,4,'Kenph','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',0,_binary '','2025-09-27 09:42:57','2025-09-27 09:42:57',_binary '\0'),(29,8,'Juan Perez','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',0,_binary '','2025-09-27 10:08:42','2025-10-08 13:32:02',_binary '\0'),(30,3,'select * from Tbl_empleados;','ed02457b5c41d964dbd2f2a609d63fe1bb7528dbe55e1abf5b52c249cd735797',0,_binary '','2025-09-27 10:51:53','2025-09-27 10:51:53',_binary '\0'),(31,1,'jorge','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',0,_binary '','2025-10-07 08:16:42','2025-10-07 08:16:42',_binary '\0'),(32,10,'esquuu','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5',0,_binary '','2025-10-07 09:23:11','2025-10-07 09:23:11',_binary '\0'),(33,10,'aesquut','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5',0,_binary '','2025-10-07 09:39:40','2025-10-07 09:39:40',_binary '\0'),(34,9,'ersSam','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5',0,_binary '','2025-10-07 09:41:47','2025-10-07 09:41:47',_binary '\0'),(35,2,'pancho','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',0,_binary '','2025-10-07 23:44:41','2025-10-07 23:44:41',_binary '\0'),(36,1,'adminruben','bf59d6a4564f9f49964ef377f398e35c7da2413e9d792c97dfdbbc9687ce8abc',0,_binary '','2025-10-08 05:48:27','2025-10-08 07:05:26',_binary '\0'),(37,1,'espe','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',0,_binary '','2025-10-08 07:24:45','2025-10-08 07:24:45',_binary '\0'),(38,8,'sebastian','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5',0,_binary '','2025-10-09 16:11:30','2025-10-09 16:11:30',_binary '\0'),(39,11,'cesarPractica','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',0,_binary '','2025-10-10 07:55:58','2025-10-10 07:55:58',_binary '\0'),(40,11,'cesarError','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',0,_binary '','2025-10-10 07:57:10','2025-10-10 08:01:48',_binary '\0'),(41,11,'cesarCorrecto','ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad',0,_binary '','2025-10-10 08:14:49','2025-10-10 08:14:49',_binary '\0'),(42,12,'raul','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',0,_binary '','2025-10-11 22:42:22','2025-10-11 22:42:22',_binary '\0'),(43,11,'administradorCesas','4813494d137e1631bba301d5acab6e7bb7aa74ce1185d456565ef51d737677b2',0,_binary '','2025-10-12 08:04:53','2025-10-12 08:04:53',_binary '\0'),(44,3,'alexander','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',0,_binary '','2025-10-12 14:17:24','2025-10-12 14:17:24',_binary '\0'),(45,3,'rebeca','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',0,_binary '','2025-10-12 14:53:21','2025-10-12 14:53:21',_binary '\0'),(46,8,'kkk','b3a8e0e1f9ab1bfe3a36f231f676f78bb30a519d2b21e6c530c0eee8ebb4a5d0',0,_binary '','2025-10-12 15:08:16','2025-10-12 15:08:16',_binary '\0'),(47,13,'pruebaKenph','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',0,_binary '','2025-10-13 16:18:13','2025-10-13 17:25:22',_binary '\0'),(48,14,'pruebaJorge','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',0,_binary '','2025-10-13 16:20:19','2025-10-13 16:20:19',_binary '\0'),(49,400,'marcos','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',0,_binary '','2025-10-13 18:18:35','2025-10-13 18:18:35',_binary '\0'),(50,16,'dkplay','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5',0,_binary '','2025-10-13 20:25:36','2025-10-13 20:25:36',_binary '\0'),(51,900,'mario','6b51d431df5d7f141cbececcf79edf3dd861c3b4069f0b11661a3eefacbba918',0,_binary '','2025-10-14 07:57:31','2025-10-14 07:57:31',_binary '\0'),(52,1,'Mauricio','91a73fd806ab2c005c13b4dc19130a884e909dea3f72d46e30266fe1a1f588d8',0,_binary '','2025-10-14 18:10:25','2025-10-14 18:10:25',_binary '\0'),(53,324,'andres420','edf9cf90718610ee7de53c0dcc250739239044de9ba115bb0ca6026c3e4958a5',0,_binary '','2025-10-14 18:15:23','2025-10-14 18:32:04',_binary '\0'),(54,414,'luis','6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b',0,_binary '','2025-10-14 19:55:45','2025-10-14 19:55:45',_binary '\0'),(55,324,'PruebaNav','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',0,_binary '','2025-10-14 20:24:21','2025-10-14 20:24:21',_binary '\0'),(56,1,'Mauricio1','91a73fd806ab2c005c13b4dc19130a884e909dea3f72d46e30266fe1a1f588d8',0,_binary '','2025-10-15 10:14:47','2025-10-15 10:14:47',_binary '\0'),(57,3,'maria','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',0,_binary '','2025-10-15 13:16:10','2025-10-15 13:16:10',_binary '\0'),(58,901,'Icortez','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0,_binary '','2025-10-18 12:34:28','2025-10-18 12:34:28',_binary '\0'),(59,11,'checha','250fccd5f5f76c7c866647d737ea3af37a8404744a5fc7c2628245194242304d',0,_binary '','2025-10-21 18:51:30','2025-10-21 18:51:30',_binary '\0'),(60,1001,'Ruben1','ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad',0,_binary '','2025-10-21 19:16:31','2025-10-21 19:16:31',_binary '\0'),(61,13,'prueba55','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',0,_binary '','2025-10-22 17:41:46','2025-10-22 17:41:46',_binary '\0'),(62,1001,'Prueba66','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',0,_binary '','2025-10-22 17:50:59','2025-10-22 17:50:59',_binary '\0'),(63,800,'Ángel','9b7af877e7ad4c237a87d38a767e4975ec90b978886e117f1952638a970db4f9',0,_binary '','2025-10-28 18:36:23','2025-10-28 18:36:23',_binary '\0'),(64,1,'hoteleria','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',0,_binary '','2025-11-07 21:59:31','2025-11-07 21:59:31',_binary '\0'),(65,1,'Diego','79f06f8fde333461739f220090a23cb2a79f6d714bee100d0e4b4af249294619',0,_binary '','2025-11-24 00:22:22','2025-11-24 00:22:22',_binary '\0'),(66,1,'Jhin','79f06f8fde333461739f220090a23cb2a79f6d714bee100d0e4b4af249294619',0,_binary '','2025-11-24 12:43:57','2025-11-24 12:43:57',_binary '\0'),(67,1,'usuariofinal','91a73fd806ab2c005c13b4dc19130a884e909dea3f72d46e30266fe1a1f588d8',0,_binary '','2025-11-25 09:38:01','2025-11-25 09:38:01',_binary '\0');
/*!40000 ALTER TABLE `tbl_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuario_perfil`
--

DROP TABLE IF EXISTS `tbl_usuario_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usuario_perfil` (
  `Fk_Id_Usuario` int NOT NULL,
  `Fk_Id_Perfil` int NOT NULL,
  PRIMARY KEY (`Fk_Id_Usuario`,`Fk_Id_Perfil`),
  KEY `Fk_UsuarioPerfil_Perfil` (`Fk_Id_Perfil`),
  CONSTRAINT `Fk_UsuarioPerfil_Perfil` FOREIGN KEY (`Fk_Id_Perfil`) REFERENCES `tbl_perfil` (`Pk_Id_Perfil`),
  CONSTRAINT `Fk_UsuarioPerfil_Usuario` FOREIGN KEY (`Fk_Id_Usuario`) REFERENCES `tbl_usuario` (`Pk_Id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario_perfil`
--

LOCK TABLES `tbl_usuario_perfil` WRITE;
/*!40000 ALTER TABLE `tbl_usuario_perfil` DISABLE KEYS */;
INSERT INTO `tbl_usuario_perfil` VALUES (1,1),(4,1),(5,1),(9,1),(10,1),(12,1),(22,1),(51,1),(58,1),(9,2),(11,2),(4,4),(8,4),(9,4),(12,4),(15,4),(20,4),(52,4),(9,5),(12,7),(40,10),(41,10),(44,10),(14,12),(35,12),(47,12),(48,12),(61,12),(26,16),(53,16),(56,22),(57,22);
/*!40000 ALTER TABLE `tbl_usuario_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_listado_cierres`
--

DROP TABLE IF EXISTS `vw_listado_cierres`;
/*!50001 DROP VIEW IF EXISTS `vw_listado_cierres`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_listado_cierres` AS SELECT 
 1 AS `ID_Cierre`,
 1 AS `Fecha_Cierre`,
 1 AS `Descripcion`,
 1 AS `Ingresos`,
 1 AS `Egresos`,
 1 AS `Saldo_Final`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'bd_prueba'
--

--
-- Dumping routines for database 'bd_prueba'
--

--
-- Final view structure for view `vw_listado_cierres`
--

/*!50001 DROP VIEW IF EXISTS `vw_listado_cierres`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_listado_cierres` AS select `cd`.`Pk_Id_Cierre` AS `ID_Cierre`,cast(`cd`.`Cmp_Fecha_Corte` as date) AS `Fecha_Cierre`,`cd`.`Cmp_Descripcion` AS `Descripcion`,`cd`.`Cmp_Total_Ingresos` AS `Ingresos`,`cd`.`Cmp_Total_Egresos` AS `Egresos`,`cd`.`Cmp_Saldo_Final` AS `Saldo_Final` from `tbl_cierre_diario` `cd` order by `cd`.`Cmp_Fecha_Corte` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-25 12:41:37

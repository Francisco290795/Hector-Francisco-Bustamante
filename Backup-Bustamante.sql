CREATE DATABASE  IF NOT EXISTS `ttc` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_es_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ttc`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ttc
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
-- Temporary view structure for view `cant_ventas_por_empleado`
--

DROP TABLE IF EXISTS `cant_ventas_por_empleado`;
/*!50001 DROP VIEW IF EXISTS `cant_ventas_por_empleado`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cant_ventas_por_empleado` AS SELECT 
 1 AS `Empleado`,
 1 AS `Ventas_Realizadas`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `Id_categoria` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_es_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`Id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_es_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Frenos'),(2,'Amortiguadores'),(3,'Aros'),(4,'Cadenas'),(5,'Asientos'),(6,'Cascos'),(7,'Balancines'),(8,'Carburadores'),(9,'Bujias');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `detalle_productos`
--

DROP TABLE IF EXISTS `detalle_productos`;
/*!50001 DROP VIEW IF EXISTS `detalle_productos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `detalle_productos` AS SELECT 
 1 AS `descripcion`,
 1 AS `marca`,
 1 AS `Categoria`,
 1 AS `Proveedor`,
 1 AS `Telefono`,
 1 AS `mail`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `empleadoconmasventas`
--

DROP TABLE IF EXISTS `empleadoconmasventas`;
/*!50001 DROP VIEW IF EXISTS `empleadoconmasventas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `empleadoconmasventas` AS SELECT 
 1 AS `Empleado`,
 1 AS `Ventas_realizadas`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `Id_empleado` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_es_0900_ai_ci DEFAULT NULL,
  `Direccion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_es_0900_ai_ci DEFAULT NULL,
  `Telefono` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_es_0900_ai_ci DEFAULT NULL,
  `Mail` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_es_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`Id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_es_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Jose Gonzalez','Chacabuco','3814825896','jose@gmail.com'),(2,'Lucas Ramirez','Mitre 260','3814789582','lura@outlook.com'),(3,'Fernando Paez','Bolivar 682','3814569878','ferpa@gmail.com'),(4,'Jose Sosa','Sargento Cabral 52','3814659848','josesosa@gmail.com'),(5,'Mauro Jaluf','Salta 9874','3813548963','maurolj@gmail.com'),(6,'Pablo Cano','Sarmiento 5449','3813284859','pabo@gmail.com'),(7,'Gian Camoglio','Roca 51','381848989','lucas24@gmail.com'),(8,'Mauricio Frias','Jujuy 986','3815698956','fgs24@gmail.com'),(9,'Cristian Gutierrez','Utinger 26','3812659845','CrisF@gmail.com'),(10,'Enzo Teruel','Monteagudo 987','3813598475','enzo@gmail.com'),(11,'Javier Carrera','Peru 587','38147878965','javi_14@gmail.com'),(12,'Andres Carrizo','Alberdi 9865','3814745882','andy_cero@hoymail.com');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventos` (
  `ideventos` int NOT NULL AUTO_INCREMENT,
  `tabla` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_es_0900_ai_ci DEFAULT NULL,
  `accion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_es_0900_ai_ci DEFAULT NULL,
  `mensaje` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_es_0900_ai_ci DEFAULT NULL,
  `usuario` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_es_0900_ai_ci DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`ideventos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_es_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `fechaconmasventas`
--

DROP TABLE IF EXISTS `fechaconmasventas`;
/*!50001 DROP VIEW IF EXISTS `fechaconmasventas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fechaconmasventas` AS SELECT 
 1 AS `fecha`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `Id_producto` int NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_es_0900_ai_ci DEFAULT NULL,
  `Marca` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_es_0900_ai_ci DEFAULT NULL,
  `Precio` decimal(7,0) DEFAULT NULL,
  `cantidadp` int DEFAULT NULL,
  `Id_proveedor` int NOT NULL,
  `Id_categoria` int NOT NULL,
  PRIMARY KEY (`Id_producto`),
  KEY `Id_proveedor` (`Id_proveedor`),
  KEY `Id_categoria` (`Id_categoria`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`Id_proveedor`) REFERENCES `proveedores` (`Id_proveedor`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`Id_categoria`) REFERENCES `categorias` (`Id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_es_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'GUANTES','Yamaha',3000,6,1,1),(2,'AMORTIGUADOR PAR ','Honda',3400,4,2,3),(3,'ARO FARO AX 100 2 2.00','Vector',2640,5,5,2),(4,'ASIENTO GN 1 ','Bajaj',3650,10,1,4),(5,'BANDA DE FRENOS (NIKKI)','Motomel',2000,15,4,2),(6,'ARANDELA ','Rouser',1550,19,3,5),(7,'ACEITE ULTRALUB 10W','Yamaha',1200,12,5,4);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `Id_proveedor` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_es_0900_ai_ci DEFAULT NULL,
  `Direccion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_es_0900_ai_ci DEFAULT NULL,
  `Telefono` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_es_0900_ai_ci DEFAULT NULL,
  `Mail` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_es_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`Id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_es_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Jose Sad','Chacabuco','3814598789','joseS@gmail.com'),(2,'Gabriel Luna','Mendoza 85','3814789582','lunaga24@gmail.com'),(3,'Nicolas Carrizo','Las Piedras 588','3813654143','nicocarrizo@hotmail.com'),(4,'Guadalupe Nuñez','Mitre 260','3815648215','lguada24@gmail.com'),(5,'Gabriela Barboza','Av colon 454','3813545698','gabibar@gmail.com'),(6,'Ruben Avila','Rivadavia','38147654','elcraken@gmail.com'),(7,'Maximiliano Aguirre','Bolivia 1569','3814789654','maxi93@gmail.com'),(8,'Santiago Peralta','Benjamin Matienzo','3814569852','santi@gmail.com'),(9,'Florencia Perez','Adolfo de la vega 56','38147854654','flopy@gmail.com'),(10,'Leo Alderete','Don Bosco 569','3814789582','leoal@gmail.com');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `total_ventas_por_dia`
--

DROP TABLE IF EXISTS `total_ventas_por_dia`;
/*!50001 DROP VIEW IF EXISTS `total_ventas_por_dia`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_ventas_por_dia` AS SELECT 
 1 AS `fecha`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `Id_venta` int NOT NULL AUTO_INCREMENT,
  `Fecha` datetime DEFAULT NULL,
  `Total` decimal(7,0) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `Id_producto` int DEFAULT NULL,
  `Id_empleado` int DEFAULT NULL,
  PRIMARY KEY (`Id_venta`),
  KEY `Id_producto` (`Id_producto`),
  KEY `Id_empleado` (`Id_empleado`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`Id_producto`) REFERENCES `productos` (`Id_producto`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`Id_empleado`) REFERENCES `empleados` (`Id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_es_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'2022-07-25 00:00:00',3000,3,2,3),(2,'2022-04-25 00:00:00',5655,2,5,2),(3,'2022-08-06 00:00:00',4520,5,2,3),(4,'2022-01-24 00:00:00',2500,1,3,5),(5,'2022-07-03 00:00:00',3050,3,4,4),(6,'2022-05-14 00:00:00',2560,4,1,5),(7,'2022-03-17 00:00:00',4520,3,3,9),(8,'2022-05-25 00:00:00',5075,1,3,1),(9,'2022-05-25 00:00:00',3350,6,3,3),(10,'2022-05-25 00:00:00',5000,4,3,6),(11,'2022-09-28 00:00:00',6200,3,2,5),(12,'2022-09-25 00:00:00',1450,3,2,5),(13,'2022-09-25 00:00:00',3700,6,5,4),(14,'2022-10-04 00:00:00',2550,6,5,4),(15,'2022-10-04 00:00:00',5550,6,5,4);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ventasdiaactual`
--

DROP TABLE IF EXISTS `ventasdiaactual`;
/*!50001 DROP VIEW IF EXISTS `ventasdiaactual`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventasdiaactual` AS SELECT 
 1 AS `NroVenta`,
 1 AS `Producto`,
 1 AS `Marca`,
 1 AS `Total`,
 1 AS `Empleado`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `cant_ventas_por_empleado`
--

/*!50001 DROP VIEW IF EXISTS `cant_ventas_por_empleado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cant_ventas_por_empleado` AS select `e`.`Nombre` AS `Empleado`,count(`v`.`Id_empleado`) AS `Ventas_Realizadas` from (`ventas` `v` join `empleados` `e` on((`e`.`Id_empleado` = `v`.`Id_empleado`))) group by `v`.`Id_empleado` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `detalle_productos`
--

/*!50001 DROP VIEW IF EXISTS `detalle_productos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `detalle_productos` AS select `a`.`Descripcion` AS `descripcion`,`a`.`Marca` AS `marca`,`b`.`Nombre` AS `Categoria`,`c`.`Nombre` AS `Proveedor`,`c`.`Telefono` AS `Telefono`,`c`.`Mail` AS `mail` from ((`productos` `a` join `categorias` `b` on((`b`.`Id_categoria` = `a`.`Id_categoria`))) join `proveedores` `c` on((`c`.`Id_proveedor` = `a`.`Id_proveedor`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `empleadoconmasventas`
--

/*!50001 DROP VIEW IF EXISTS `empleadoconmasventas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `empleadoconmasventas` AS select `cant_ventas_por_empleado`.`Empleado` AS `Empleado`,`cant_ventas_por_empleado`.`Ventas_Realizadas` AS `Ventas_realizadas` from `cant_ventas_por_empleado` where (`cant_ventas_por_empleado`.`Ventas_Realizadas` = (select max(`cant_ventas_por_empleado`.`Ventas_Realizadas`) from `cant_ventas_por_empleado`)) order by `cant_ventas_por_empleado`.`Ventas_Realizadas` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fechaconmasventas`
--

/*!50001 DROP VIEW IF EXISTS `fechaconmasventas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fechaconmasventas` AS select `total_ventas_por_dia`.`fecha` AS `fecha`,`total_ventas_por_dia`.`total` AS `total` from `total_ventas_por_dia` where (`total_ventas_por_dia`.`total` = (select max(`total_ventas_por_dia`.`total`) from `total_ventas_por_dia`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_ventas_por_dia`
--

/*!50001 DROP VIEW IF EXISTS `total_ventas_por_dia`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_ventas_por_dia` AS select `ventas`.`Fecha` AS `fecha`,count(`ventas`.`Fecha`) AS `total` from `ventas` group by `ventas`.`Fecha` order by `total` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ventasdiaactual`
--

/*!50001 DROP VIEW IF EXISTS `ventasdiaactual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventasdiaactual` AS select `v`.`Id_venta` AS `NroVenta`,`p`.`Descripcion` AS `Producto`,`p`.`Marca` AS `Marca`,`v`.`Total` AS `Total`,`e`.`Nombre` AS `Empleado` from ((`ventas` `v` join `productos` `p` on((`p`.`Id_producto` = `v`.`Id_producto`))) join `empleados` `e` on((`e`.`Id_empleado` = `v`.`Id_empleado`))) where (`v`.`Fecha` = curdate()) */;
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

-- Dump completed on 2022-10-07  0:23:06

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 04-08-2023 a las 00:34:15
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vehiculos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `automores`
--

DROP TABLE IF EXISTS `automores`;
CREATE TABLE IF NOT EXISTS `automores` (
  `IDvehiculo` varchar(10) NOT NULL,
  `Vehiculo` varchar(10) NOT NULL,
  `Transmision` varchar(50) NOT NULL,
  `Precio` float NOT NULL,
  `modelo` int NOT NULL,
  `IDtipo_vehiculo` int NOT NULL,
  PRIMARY KEY (`IDvehiculo`),
  KEY `IDtipo_vehiculo` (`IDtipo_vehiculo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `IDcliente` varchar(10) NOT NULL,
  `P_Apellido` varchar(10) NOT NULL,
  `S_Apellido` varchar(10) DEFAULT NULL,
  `P_Nombre` varchar(10) NOT NULL,
  `S_Nombre` varchar(10) DEFAULT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Barrio` varchar(50) NOT NULL,
  `Ciudad` varchar(50) NOT NULL,
  `Localidad` varchar(50) NOT NULL,
  `cantidad_hijos` int NOT NULL,
  `eps` tinytext NOT NULL,
  PRIMARY KEY (`IDcliente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

DROP TABLE IF EXISTS `facturas`;
CREATE TABLE IF NOT EXISTS `facturas` (
  `IDfactura` varchar(10) NOT NULL,
  `IDvendedor` int NOT NULL,
  `IDvehiculo` varchar(10) NOT NULL,
  `IDcliente` varchar(10) NOT NULL,
  PRIMARY KEY (`IDfactura`),
  KEY `IDvendedor` (`IDvendedor`),
  KEY `IDvehiculo` (`IDvehiculo`),
  KEY `IDcliente` (`IDcliente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_vehiculo`
--

DROP TABLE IF EXISTS `tipo_vehiculo`;
CREATE TABLE IF NOT EXISTS `tipo_vehiculo` (
  `IDtipo_vehiculo` int NOT NULL,
  `tipo_vehiculo` varchar(20) NOT NULL,
  PRIMARY KEY (`IDtipo_vehiculo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

DROP TABLE IF EXISTS `vendedores`;
CREATE TABLE IF NOT EXISTS `vendedores` (
  `IDvendedor` int NOT NULL AUTO_INCREMENT,
  `P_Apellido` varchar(50) NOT NULL,
  `S_Apellido` varchar(50) DEFAULT NULL,
  `P_Nombre` varchar(50) NOT NULL,
  `S_Nombre` varchar(50) DEFAULT NULL,
  `telefono` varchar(30) NOT NULL,
  `f_nacimiento` date NOT NULL,
  PRIMARY KEY (`IDvendedor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

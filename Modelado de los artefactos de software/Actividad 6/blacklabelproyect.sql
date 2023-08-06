-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 06-08-2023 a las 22:34:23
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
-- Base de datos: `blacklabelproyect`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carritocompras`
--

DROP TABLE IF EXISTS `carritocompras`;
CREATE TABLE IF NOT EXISTS `carritocompras` (
  `Cantidadproductos` int NOT NULL,
  `Totalproductos` int NOT NULL,
  `PrecioProducto` varchar(60) NOT NULL,
  `ID_Producto` int NOT NULL,
  KEY `PrecioProducto` (`PrecioProducto`),
  KEY `ID_Producto` (`ID_Producto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos`
--

DROP TABLE IF EXISTS `catalogos`;
CREATE TABLE IF NOT EXISTS `catalogos` (
  `ID_Catalogo` int NOT NULL AUTO_INCREMENT,
  `Catalogo` varchar(60) NOT NULL,
  PRIMARY KEY (`ID_Catalogo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `ID_Categoria` int NOT NULL AUTO_INCREMENT,
  `Categoria` varchar(60) NOT NULL,
  PRIMARY KEY (`ID_Categoria`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

DROP TABLE IF EXISTS `estados`;
CREATE TABLE IF NOT EXISTS `estados` (
  `ID_Estado` varchar(60) NOT NULL,
  `Estados` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

DROP TABLE IF EXISTS `permisos`;
CREATE TABLE IF NOT EXISTS `permisos` (
  `ID_permiso` int NOT NULL AUTO_INCREMENT,
  `Permiso` varchar(60) NOT NULL,
  `Documento` int NOT NULL,
  `ID_Rol` int NOT NULL,
  PRIMARY KEY (`ID_permiso`),
  KEY `Documento` (`Documento`),
  KEY `ID_Rol` (`ID_Rol`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `ID_Producto` int NOT NULL AUTO_INCREMENT,
  `NombreProducto` varchar(60) NOT NULL,
  `CodigoProducto` int NOT NULL,
  `PrecioProducto` varchar(60) NOT NULL,
  `ID_Estado` varchar(60) NOT NULL,
  `ID_Catalogo` int NOT NULL,
  `Documento` int NOT NULL,
  PRIMARY KEY (`ID_Producto`),
  KEY `ID_Estado` (`ID_Estado`),
  KEY `ID_Catalogo` (`ID_Catalogo`),
  KEY `Documento` (`Documento`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `ID_Rol` int NOT NULL AUTO_INCREMENT,
  `Rol` tinytext NOT NULL,
  PRIMARY KEY (`ID_Rol`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `ID_Usuario` int NOT NULL AUTO_INCREMENT,
  `Documento` int NOT NULL,
  `NombreUsuario` varchar(60) NOT NULL,
  `Contraseña` varchar(30) NOT NULL,
  `Correo` varchar(60) NOT NULL,
  `ID_Estado` varchar(60) NOT NULL,
  `ID_Rol` int NOT NULL,
  `ID_Permiso` int NOT NULL,
  PRIMARY KEY (`ID_Usuario`),
  KEY `ID_Estado` (`ID_Estado`),
  KEY `ID_Rol` (`ID_Rol`),
  KEY `ID_Permiso` (`ID_Permiso`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

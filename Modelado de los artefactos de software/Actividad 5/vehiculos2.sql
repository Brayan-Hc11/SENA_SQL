-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 04-08-2023 a las 05:06:28
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
-- Base de datos: `vehiculos2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `IDcliente` varchar(10) NOT NULL,
  `P_Apellido` varchar(50) NOT NULL,
  `S_Apellido` varchar(50) DEFAULT NULL,
  `P_Nombre` varchar(50) NOT NULL,
  `S_Nombre` varchar(50) DEFAULT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Barrio` varchar(50) NOT NULL,
  `Ciudad` varchar(50) NOT NULL,
  `Zona` varchar(50) NOT NULL,
  `Telefono` varchar(30) NOT NULL,
  PRIMARY KEY (`IDcliente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`IDcliente`, `P_Apellido`, `S_Apellido`, `P_Nombre`, `S_Nombre`, `Direccion`, `Barrio`, `Ciudad`, `Zona`, `Telefono`) VALUES
('CC10223', 'Vega', 'diaz', 'Carla', 'maria', 'kra 19 #  62-18', 'Rosales', 'Bogota d.c', 'Chapinero', '6018882221'),
('CC927663', 'Avendaño', 'Rojas', 'Ana', 'Isabel', 'kra 9 #  2-10', 'sucre', 'Bogota d.c', 'usme', '2223482221');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

DROP TABLE IF EXISTS `vehiculos`;
CREATE TABLE IF NOT EXISTS `vehiculos` (
  `IDvehiculo` varchar(10) NOT NULL,
  `Vehiculo` varchar(10) NOT NULL,
  `Transmision` varchar(70) NOT NULL,
  `Precio` float NOT NULL,
  PRIMARY KEY (`IDvehiculo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`IDvehiculo`, `Vehiculo`, `Transmision`, `Precio`) VALUES
('V01', 'ABC123', 'MANUAL', 63000000),
('V02', 'ABC124', 'AUTOMATICO', 55000000),
('V03', 'ABC125', 'MANUAL', 155000000),
('V04', 'ABC126', 'AUTOMATICA', 8500000);

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `vendedores`
--

INSERT INTO `vendedores` (`IDvendedor`, `P_Apellido`, `S_Apellido`, `P_Nombre`, `S_Nombre`, `telefono`, `f_nacimiento`) VALUES
(1, 'Cano', 'Toro', 'Dana', 'Luz', '3013699900', '2000-05-04'),
(2, 'Dueñas', NULL, 'Carlos', 'Luis', '60122223333', '2002-11-14'),
(3, 'Perez', 'Florez', 'Ana', 'Flor', '3013699900', '2000-05-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE IF NOT EXISTS `ventas` (
  `IDVenta` varchar(10) NOT NULL,
  `IDvendedor` int NOT NULL,
  `IDvehiculo` varchar(10) NOT NULL,
  `IDcliente` varchar(10) NOT NULL,
  PRIMARY KEY (`IDVenta`),
  KEY `IDvendedor` (`IDvendedor`),
  KEY `IDvehiculo` (`IDvehiculo`),
  KEY `IDcliente` (`IDcliente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`IDVenta`, `IDvendedor`, `IDvehiculo`, `IDcliente`) VALUES
('05-230801', 3, 'V01', 'CC1022');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

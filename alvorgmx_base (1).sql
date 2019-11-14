-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 28-10-2019 a las 09:34:41
-- Versión del servidor: 5.7.28
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alvorgmx_base`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrega`
--

CREATE TABLE `entrega` (
  `identrega` int(10) NOT NULL,
  `Nombre_plano` varchar(30) DEFAULT NULL,
  `Persona_Entrega` varchar(40) DEFAULT NULL,
  `Fecha_entrega` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maquinaria`
--

CREATE TABLE `maquinaria` (
  `idmaquinaria` int(10) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `maquinaria`
--

INSERT INTO `maquinaria` (`idmaquinaria`, `Nombre`) VALUES
(2, 'CNC1'),
(3, 'CNC2'),
(4, 'CNC3'),
(5, 'CNC4'),
(6, 'CNC5'),
(7, 'CNC6'),
(8, 'CNC7'),
(9, 'FRESA1'),
(10, 'FRESA2'),
(11, 'FRESA3'),
(12, 'FRESA4'),
(13, 'FRESA5'),
(14, 'TORNO1'),
(15, 'TORNO2'),
(16, 'SOLDADURA'),
(17, 'RECTIFICADO'),
(18, 'PULIDO'),
(19, 'TRATAMIENTO_TERMICO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `idmaterial` int(10) NOT NULL,
  `material` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `material`
--

INSERT INTO `material` (`idmaterial`, `material`) VALUES
(1, 'ACETAL BLANCO'),
(2, 'NYLAMID'),
(3, 'UHMW'),
(4, 'ACERO 4140'),
(5, 'ACERO A36'),
(6, 'ACERO 1045'),
(7, 'LAMINA DE INOXIDABLE'),
(8, 'LAMINA DE INOXIDABLE'),
(9, 'ACETAL NEGRO'),
(10, 'ALUMINIO 6061'),
(11, 'INOXIDABLE 303,304');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `idmensaje` int(10) NOT NULL,
  `mensaje` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paros`
--

CREATE TABLE `paros` (
  `idparos` int(11) NOT NULL,
  `Nombre_plano` varchar(50) NOT NULL,
  `Maquina` varchar(50) NOT NULL,
  `Tipo_paro` varchar(50) NOT NULL,
  `Codigo` varchar(50) NOT NULL,
  `Descripcion` varchar(50) NOT NULL,
  `Fecha` date NOT NULL,
  `Horas_paro` float DEFAULT NULL,
  `T_1` float DEFAULT NULL,
  `T_2` float DEFAULT NULL,
  `Observaciones` varchar(500) DEFAULT NULL,
  `estado` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `piezas`
--

CREATE TABLE `piezas` (
  `idpieza` int(10) NOT NULL,
  `Nombre_plano` varchar(50) NOT NULL,
  `Orden_trabajo` varchar(50) NOT NULL,
  `Tipo_trabajo` varchar(50) NOT NULL,
  `Material` varchar(50) NOT NULL,
  `Fecha_registro` datetime NOT NULL,
  `N_proyecto` varchar(50) NOT NULL,
  `Total_pieza` varchar(50) NOT NULL,
  `Total_procesos` varchar(50) NOT NULL,
  `estado` varchar(1) NOT NULL,
  `Tiempo_pieza` varchar(50) NOT NULL,
  `Fecha_termino` datetime NOT NULL,
  `imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `piezas`
--

INSERT INTO `piezas` (`idpieza`, `Nombre_plano`, `Orden_trabajo`, `Tipo_trabajo`, `Material`, `Fecha_registro`, `N_proyecto`, `Total_pieza`, `Total_procesos`, `estado`, `Tiempo_pieza`, `Fecha_termino`, `imagen`) VALUES
(40, '01.4034', 'CNC3-303-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-16 05:00:00', 'AE-006-007-TIGUAN 7800', '11', '1', '0', '15', '0000-00-00 00:00:00', ''),
(41, '01.4037', 'CNC3-304-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-17 01:00:00', 'AE-006-007-TIGUAN 7800', '14', '1', '0', '12', '0000-00-00 00:00:00', ''),
(42, '01.3002', 'CNC4-402-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-16 07:00:00', 'AE-006-007 TAREK 5800', '8', '1', '0', '8', '0000-00-00 00:00:00', ''),
(43, '01.4006', 'F1-102-SN', 'NUEVO', 'INOXIDABLE 303,304', '2019-10-16 18:30:00', 'AE-006-007-TIGUAN 7800', '4', '1', '0', '5', '0000-00-00 00:00:00', ''),
(44, '01.4005', 'F1-103-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-16 23:30:00', 'AE-006-007-TIGUAN 7800', '2', '1', '0', '3.5', '0000-00-00 00:00:00', ''),
(45, '01.4005', 'F1-104-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-17 03:00:00', 'AE-006-007-TIGUAN 7800', '2', '1', '0', '1.5', '0000-00-00 00:00:00', ''),
(46, '01.4033', 'F1-105-SN', 'NUEVO', 'INOXIDABLE 303,304', '2019-10-17 04:30:00', 'AE-006-007-TIGUAN 7800', '2', '1', '0', '1.5', '0000-00-00 00:00:00', ''),
(47, '01.4001', 'F2-201-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-16 18:30:00', 'AE-006-007-TIGUAN 7800', '4', '1', '0', '3.5', '0000-00-00 00:00:00', ''),
(48, '01.4051', 'F2-202-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-16 22:00:00', 'AE-006-007-TIGUAN 7800', '4', '1', '0', '3.5', '0000-00-00 00:00:00', ''),
(49, '01.4047', 'F2-203-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-17 01:30:00', 'AE-006-007-TIGUAN 7800', '1', '1', '0', '2.5', '0000-00-00 00:00:00', ''),
(50, '01.4038', 'F5-505-SNS', 'NUEVO', 'ALUMINIO 6061', '2019-10-16 18:30:00', 'AE-006-007-TIGUAN 7800', '14', '1', '0', '8', '0000-00-00 00:00:00', ''),
(51, '01.4041', 'F5-506-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-17 02:30:00', 'AE-006-007-TIGUAN 7800', '11', '1', '0', '8', '0000-00-00 00:00:00', ''),
(52, '01.4044', 'F5-507-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-17 18:30:00', 'AE-006-007-TIGUAN 7800', '22', '1', '0', '8', '0000-00-00 00:00:00', ''),
(53, '03.5001', 'F5-508-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-18 02:30:00', 'AE-006-007-TIGUAN 7800', '1', '1', '0', '2', '0000-00-00 00:00:00', ''),
(54, '05.5002', 'F5-509-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-18 04:30:00', 'AE-006-007-TIGUAN 7800', '1', '1', '0', '2', '0000-00-00 00:00:00', ''),
(55, 'STR0068010002', 'CNC1-103-SN', 'URGENCIAS', 'ALUMINIO 6061', '2019-10-12 09:30:00', 'ALV TOOLING', '1', '1', '0', '27', '0000-00-00 00:00:00', ''),
(56, '03.501', 'CNC2-211-SN', 'URGENCIAS', 'ACETAL NEGRO', '2019-10-15 10:00:00', 'AE-012-013-HD', '2', '1', '0', '3', '0000-00-00 00:00:00', ''),
(57, '01.4040', 'CNC2-212-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-15 12:00:00', 'AE-006-007-TIGUAN 7800', '14', '1', '0', '8', '0000-00-00 00:00:00', ''),
(58, '01.4048', 'F3-300-SN', 'URGENCIAS', 'INOXIDABLE 303,304', '2019-10-15 12:00:00', 'AE-023-003-GROMMET', '1', '1', '0', '1.5', '0000-00-00 00:00:00', ''),
(59, '04.300', 'F1-106-SN', 'URGENCIAS', 'ACERO A36', '2019-10-15 15:30:00', 'AE-017-046-FOR IR OVEN ', '1', '1', '0', '2', '0000-00-00 00:00:00', ''),
(60, '03.300', 'F1-107-SN', 'URGENCIAS', 'ACERO A36', '2019-10-15 17:30:00', 'AE-017-046-FOR IR OVEN ', '1', '1', '0', '2', '0000-00-00 00:00:00', ''),
(61, '03.302', 'F2-212-SN', 'URGENCIAS', 'ACERO A36', '2019-10-15 10:30:00', 'AE-017-046-FOR IR OVEN ', '4', '1', '0', '3', '0000-00-00 00:00:00', ''),
(62, '03.301', 'F2-213-SN', 'URGENCIAS', 'ACERO A36', '2019-10-15 11:30:00', 'AE-017-046-FOR IR OVEN ', '2', '1', '0', '1', '0000-00-00 00:00:00', ''),
(63, '02.300', 'F2-214-SN', 'URGENCIAS', 'ACERO A36', '2019-10-15 14:30:00', 'AE-017-046-FOR IR OVEN ', '1', '1', '0', '2', '0000-00-00 00:00:00', ''),
(64, '02.301', 'F5-507-SN', 'URGENCIAS', 'ACERO A36', '2019-10-15 12:30:00', 'AE-017-046-FOR IR OVEN ', '2', '1', '0', '3', '0000-00-00 00:00:00', ''),
(65, '02.302', 'F5-509-SN', 'URGENCIAS', 'ACERO A36', '2019-10-15 11:30:00', 'AE-017-046-FOR IR OVEN ', '1', '1', '0', '2.5', '0000-00-00 00:00:00', ''),
(66, '02.303', 'F5-510-SN', 'URGENCIAS', 'ACERO A36', '2019-10-15 11:30:00', 'AE-017-046-FOR IR OVEN ', '2', '1', '0', '3', '0000-00-00 00:00:00', ''),
(67, '01.5010', 'CNC2-213-SN', 'URGENCIAS', 'ACETAL BLANCO', '2019-10-15 12:30:00', 'AE-006-007-TIGUAN-8120', '1', '1', '0', '1', '0000-00-00 00:00:00', ''),
(68, '01.5009', 'CNC2-214-SN', 'URGENCIAS', 'ACETAL BLANCO', '2019-10-15 12:30:00', 'AE-006-007-TIGUAN-8120', '1', '1', '0', '1', '0000-00-00 00:00:00', ''),
(69, 'STR00680200012', 'CNC5-502-SN', 'URGENCIAS', 'INOXIDABLE 303,304', '2019-10-15 12:00:00', 'ALV TOOLING', '1', '1', '0', '1.5', '0000-00-00 00:00:00', ''),
(70, '02.3003', 'F3-301-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-15 12:00:00', 'AE-026-001-TULIP', '2', '1', '0', '2', '0000-00-00 00:00:00', ''),
(71, '03.3003', 'F3-302-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-15 10:30:00', 'AE-026-001-TULIP', '1', '1', '0', '2.5', '0000-00-00 00:00:00', ''),
(72, '01.507', 'CNC5-503-SN', 'URGENCIAS', 'ACERO 1045', '2019-10-15 10:00:00', 'AE-012-013-HD', '5', '1', '0', '1.5', '0000-00-00 00:00:00', ''),
(73, '01.504', 'CNC5-504-SN', 'URGENCIAS', 'ACERO 1045', '2019-10-15 12:00:00', 'AE-012-013-HD', '5', '1', '0', '1.5', '0000-00-00 00:00:00', ''),
(74, 'STR591000', 'TCNC-100-SN', 'URGENCIAS', 'ACERO 1045', '2019-10-15 13:00:00', 'ALV TOOLING', '1', '1', '0', '3.5', '0000-00-00 00:00:00', ''),
(75, 'STR005910000', 'TCNC-101-SN', 'URGENCIAS', 'ACERO A36', '2019-10-15 15:30:00', 'ALV TOOLING', '1', '1', '0', '1.5', '0000-00-00 00:00:00', ''),
(76, '13.425', 'F3-303-SN', 'URGENCIAS', 'ALUMINIO 6061', '2019-10-15 13:30:00', 'AE-012-013-HD', '1', '1', '0', '0.5', '0000-00-00 00:00:00', ''),
(77, 'STR00681003', 'F3-304-SN', 'URGENCIAS', 'ALUMINIO 6061', '2019-10-15 15:00:00', 'ALV TOOLING', '2', '1', '0', '0.5', '0000-00-00 00:00:00', ''),
(78, 'MIRROR STR00681003', 'F3-305-SN', 'URGENCIAS', 'ALUMINIO 6061', '2019-10-15 15:30:00', 'ALV TOOLING', '2', '1', '0', '0.5', '0000-00-00 00:00:00', ''),
(79, 'STR0068001001', 'F3-306-SN', 'URGENCIAS', 'ALUMINIO 6061', '2019-10-15 16:00:00', 'ALV TOOLING', '2', '1', '0', '0.5', '0000-00-00 00:00:00', ''),
(80, '01.7000', 'SOLD-101-SN', 'URGENCIAS', 'LAMINA DE INOXIDABLE', '2019-10-15 17:30:00', 'AE-017-045-TWIN', '1', '1', '0', '2.5', '0000-00-00 00:00:00', ''),
(82, '-36 ', 'CNC1-104-SN', 'NUEVO', 'ACERO A36', '2019-10-24 17:00:00', 'DEDIENNE', '2', '1', '0', '3', '0000-00-00 00:00:00', ''),
(83, '02.407', 'CNC2-215-SN', 'NUEVO', 'INOXIDABLE 303,304', '2019-10-24 17:00:00', 'SMART', '2', '1', '0', '2', '0000-00-00 00:00:00', ''),
(84, '02.409', 'CNC2-216-SN', 'NUEVO', 'INOXIDABLE 303,304', '2019-10-24 17:00:00', 'SMART', '2', '1', '0', '2', '0000-00-00 00:00:00', ''),
(85, '01.4039', 'CNC3-305-SN', 'URGENCIAS', 'ACETAL NEGRO', '2019-10-22 18:00:00', 'SMART', '14', '1', '1', '22', '0000-00-00 00:00:00', ''),
(86, '02.4007', 'F1-108-SN', 'MAQUINADO', 'INOXIDABLE 303,304', '2019-10-23 15:00:00', 'AE-006-007-TIGUAN-8120', '2', '1', '0', '2.5', '0000-00-00 00:00:00', ''),
(87, '02.4006', 'F1-109-SN', 'NUEVO', 'INOXIDABLE 303,304', '2019-10-23 18:00:00', 'AE-006-007-TIGUAN-8120', '1', '1', '0', '2.5', '0000-00-00 00:00:00', ''),
(88, '01.3001', 'F1-110-SN', 'NUEVO', 'INOXIDABLE 303,304', '2019-10-23 21:30:00', 'AE-024-004-TRUNK PRESS', '1', '1', '1', '2', '0000-00-00 00:00:00', ''),
(89, '01.4005', 'F1-111-SN', 'NUEVO', 'INOXIDABLE 303,304', '2019-10-24 07:30:00', 'AE-024-004-TRUNK PRESS', '2', '1', '1', '2.5', '0000-00-00 00:00:00', ''),
(90, '02.4010', 'F1-112-SN', 'NUEVO', 'INOXIDABLE 303,304', '2019-10-24 09:30:00', 'AE-024-001-C11', '1', '1', '1', '3', '0000-00-00 00:00:00', ''),
(91, '02.4011', 'F1-113-SN', 'NUEVO', 'INOXIDABLE 303,304', '2019-10-24 12:30:00', 'AE-024-004-TRUNK PRESS', '1', '1', '1', '3', '0000-00-00 00:00:00', ''),
(92, '02.4016', 'F1-114-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-25 12:30:00', 'AE-024-004-TRUNK PRESS', '1', '1', '1', '2', '0000-00-00 00:00:00', ''),
(93, '02.4017', 'F1-115-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-25 14:30:00', 'AE-024-004-TRUNK PRESS', '1', '1', '1', '2', '0000-00-00 00:00:00', ''),
(94, '02.4020', 'F1-116-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-25 16:30:00', 'AE-024-004-TRUNK PRESS', '1', '1', '1', '2', '0000-00-00 00:00:00', ''),
(95, '02.4023', 'F1-117-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-25 18:30:00', 'AE-024-004-TRUNK PRESS', '1', '1', '1', '2', '0000-00-00 00:00:00', ''),
(96, 'PORTA PUNZON ', 'CNC2-217-SN', 'NUEVO', 'ACERO 4140', '2019-10-23 19:00:00', 'RASSINI', '1', '1', '0', '3.5', '0000-00-00 00:00:00', ''),
(97, 'PLANCHADOR ', 'CNC1-105-SN', 'NUEVO', 'ACERO 4140', '2019-10-23 19:00:00', 'RASSINI', '1', '1', '1', '12', '0000-00-00 00:00:00', ''),
(98, '02.4043', 'F2-215-SN', 'NUEVO', 'INOXIDABLE 303,304', '2019-10-23 16:00:00', 'AE-024-004-TRUNK PRESS', '1', '1', '0', '3', '0000-00-00 00:00:00', ''),
(99, '02.4044', 'F2-216-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-23 19:00:00', 'AE-024-004-TRUNK PRESS', '3', '1', '0', '8', '0000-00-00 00:00:00', ''),
(100, '02.4045', 'F2-217-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-24 17:00:00', 'AE-024-004-TRUNK PRESS', '1', '1', '1', '2.5', '0000-00-00 00:00:00', ''),
(101, '02.5011', 'F2-218-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-25 13:30:00', 'AE-024-004-TRUNK PRESS', '2', '1', '1', '3.5', '0000-00-00 00:00:00', ''),
(102, '02.5017', 'F2-219-SN', 'NUEVO', 'INOXIDABLE 303,304', '2019-10-25 19:00:00', 'AE-024-004-TRUNK PRESS', '1', '1', '1', '2', '0000-00-00 00:00:00', ''),
(103, '01.4001', 'F2-220-SN', 'NUEVO', 'INOXIDABLE 303,304', '2019-10-26 13:00:00', 'AE-024-004-TRUNK PRESS', '1', '1', '1', '3', '0000-00-00 00:00:00', ''),
(104, '02.4026', 'F5-511-SN', 'NUEVO', 'INOXIDABLE 303,304', '2019-10-23 17:30:00', 'AE-024-004-TRUNK PRESS', '1', '1', '0', '3.5', '0000-00-00 00:00:00', ''),
(105, '02.4028', 'F5-212-SN', 'NUEVO', 'INOXIDABLE 303,304', '2019-10-23 21:30:00', 'AE-024-004-TRUNK PRESS', '1', '1', '0', '2.5', '0000-00-00 00:00:00', ''),
(106, '02.4029', 'F2-513-SN', 'NUEVO', 'INOXIDABLE 303,304', '2019-10-24 08:30:00', 'AE-024-004-TRUNK PRESS', '2', '2', '1', '2.5', '0000-00-00 00:00:00', ''),
(107, '02.4032', 'F5-514-SN', 'NUEVO', 'INOXIDABLE 303,304', '2019-10-24 11:00:00', 'AE-024-004-TRUNK PRESS', '2', '1', '1', '4.5', '0000-00-00 00:00:00', ''),
(108, '02.4033', 'F5-515-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-25 12:30:00', 'AE-024-004-TRUNK PRESS', '1', '1', '1', '1.5', '0000-00-00 00:00:00', ''),
(109, '02.4043', 'F5-516-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-25 14:30:00', 'AE-024-004-TRUNK PRESS', '1', '1', '1', '1.5', '0000-00-00 00:00:00', ''),
(110, '02.4036', 'F5-517-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-25 16:30:00', 'AE-024-004-TRUNK PRESS', '14', '1', '1', '3', '0000-00-00 00:00:00', ''),
(111, '02.4037', 'F5-518-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-26 14:00:00', 'AE-024-004-TRUNK PRESS', '1', '1', '1', '2', '0000-00-00 00:00:00', ''),
(112, 'BMW-103', 'F3-307-SN', 'NUEVO', 'LAMINA DE INOXIDABLE', '2019-10-24 11:30:00', 'BMW', '12', '1', '1', '2', '0000-00-00 00:00:00', ''),
(114, 'MOLDE PALETA', 'CNC1-106-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-24 17:00:00', 'MOLDE PLASTIC', '1', '1', '1', '4', '0000-00-00 00:00:00', ''),
(115, '02.300 ', 'CNC1-107-SN', 'URGENCIAS', 'ALUMINIO 6061', '2019-10-25 06:30:00', 'AE-006-009-A7-RED BLINKER', '1', '1', '1', '5', '0000-00-00 00:00:00', ''),
(116, '01.300', 'CNC1-108-SN', 'URGENCIAS', 'ALUMINIO 6061', '2019-10-25 20:00:00', 'AE-006-009-A7-RED BLINKER', '1', '1', '1', '8', '0000-00-00 00:00:00', ''),
(117, '02.302 ', 'CNC4-403--SN', 'URGENCIAS', 'ALUMINIO 6061', '2019-10-24 17:30:00', 'AE-006-009-A7-RED BLINKER', '1', '1', '1', '5', '0000-00-00 00:00:00', ''),
(118, 'CX430 ', 'CNC2-218-SN', 'URGENCIAS', 'ACETAL NEGRO', '2019-10-24 23:00:00', 'ALV TOOLING', '2', '1', '1', '5', '0000-00-00 00:00:00', ''),
(119, 'CX430 ID7', 'CNC3-306-SN', 'URGENCIAS', 'ACETAL NEGRO', '2019-10-24 19:30:00', 'ALV TOOLING', '1', '1', '1', '3', '0000-00-00 00:00:00', ''),
(120, '01.5002 ', 'CNC3-308-SN', 'NUEVO', 'ACETAL NEGRO', '2019-10-25 10:00:00', 'AE-017-041-NISSAN B02', '1', '1', '1', '1.5', '0000-00-00 00:00:00', ''),
(121, '01.5003', 'CNC3-309-SN', 'NUEVO', 'ACETAL NEGRO', '2019-10-25 12:30:00', 'AE-017-041-NISSAN B02', '1', '1', '1', '2', '0000-00-00 00:00:00', ''),
(122, '01.5004', 'CNC3-310-SN', 'NUEVO', 'ACETAL NEGRO', '2019-10-25 14:00:00', 'AE-017-041-NISSAN B02', '1', '1', '1', '2', '0000-00-00 00:00:00', ''),
(123, '01.5010 ', 'CNC4-404-SN', 'NUEVO', 'ACETAL NEGRO', '2019-10-25 09:00:00', 'AE-017-041-NISSAN B02', '1', '1', '1', '3.5', '0000-00-00 00:00:00', ''),
(124, '01.5012', 'CNC4-405-SN', 'NUEVO', 'ACETAL NEGRO', '2019-10-25 09:00:00', 'AE-017-041-NISSAN B02', '1', '1', '1', '2', '0000-00-00 00:00:00', ''),
(125, '01.3031', 'CNC2-219-SN', 'NUEVO', 'INOXIDABLE 303,304', '2019-10-25 10:00:00', 'AE-017-041-NISSAN B02', '2', '1', '1', '2', '0000-00-00 00:00:00', ''),
(126, '01.3016', 'CNC1-109', 'NUEVO', 'ALUMINIO 6061', '2019-10-26 09:00:00', 'AE-017-041-NISSAN B02', '1', '1', '1', '5', '0000-00-00 00:00:00', ''),
(127, '01.3026', 'CNC1-110-SN', 'NUEVO', 'ALUMINIO 6061', '2019-10-28 06:30:00', 'AE-017-041-NISSAN B02', '1', '1', '1', '5', '0000-00-00 00:00:00', ''),
(128, '01.700', 'CNC2-220-SN', 'NUEVO', 'INOXIDABLE 303,304', '2019-10-25 13:00:00', 'AE-017-041-NISSSAN', '2', '1', '1', '2', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesos`
--

CREATE TABLE `procesos` (
  `idprocesos` int(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Nombre_plano` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `T_estimado` float NOT NULL,
  `T_real` float NOT NULL,
  `T_1` double NOT NULL,
  `T_2` double NOT NULL,
  `Fecha_registro` datetime NOT NULL,
  `Fecha_termino` datetime DEFAULT NULL,
  `Fecha_inicio` datetime DEFAULT NULL,
  `Orden_trabajo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `procesos`
--

INSERT INTO `procesos` (`idprocesos`, `Nombre`, `Nombre_plano`, `estado`, `T_estimado`, `T_real`, `T_1`, `T_2`, `Fecha_registro`, `Fecha_termino`, `Fecha_inicio`, `Orden_trabajo`) VALUES
(1, 'CNC3', '01.4034', '0', 15, 0, 0, 0, '2019-10-14 17:00:00', '2019-10-23 12:11:20', '2019-10-23 12:11:20', NULL),
(2, 'CNC3', '01.4037', '0', 12, 0, 0, 0, '2019-10-15 13:00:00', '2019-10-23 12:11:17', '2019-10-23 12:11:18', NULL),
(3, 'CNC4', '01.3002', '0', 8, 0, 0, 0, '2019-10-14 19:00:00', '2019-10-15 11:39:35', '2019-10-15 11:39:26', NULL),
(4, 'FRESA1', '01.4006', '0', 5, 5, 5, 0, '2019-10-15 06:30:00', '2019-10-23 12:17:09', '0000-00-00 00:00:00', NULL),
(5, 'FRESA1', '01.4005', '0', 3.5, 3.5, 3.5, 0, '2019-10-15 11:30:00', '2019-10-23 12:17:06', '0000-00-00 00:00:00', NULL),
(6, 'FRESA1', '01.4005', '0', 1.5, 1.5, 1.5, 0, '2019-10-15 15:00:00', '2019-10-23 12:17:02', '0000-00-00 00:00:00', NULL),
(7, 'FRESA1', '01.4033', '0', 1.5, 1.5, 1.5, 0, '2019-10-15 16:30:00', '2019-10-23 12:16:55', '0000-00-00 00:00:00', NULL),
(8, 'FRESA2', '01.4001', '0', 3.5, 3.5, 3.5, 0, '2019-10-15 06:30:00', '2019-10-23 12:18:34', '0000-00-00 00:00:00', NULL),
(9, 'FRESA2', '01.4051', '0', 3.5, 3.5, 3.5, 0, '2019-10-15 10:00:00', '2019-10-23 12:18:33', '0000-00-00 00:00:00', NULL),
(10, 'FRESA2', '01.4047', '0', 2.5, 2.5, 0, 2.5, '2019-10-15 13:30:00', '2019-10-23 12:18:30', '0000-00-00 00:00:00', NULL),
(11, 'FRESA5', '01.4038', '0', 8, 19, 12.5, 6.5, '2019-10-15 06:30:00', '2019-10-23 12:24:01', '0000-00-00 00:00:00', NULL),
(12, 'FRESA5', '01.4041', '0', 8, 8, 0, 8, '2019-10-15 14:30:00', '2019-10-23 12:23:57', '0000-00-00 00:00:00', NULL),
(13, 'FRESA5', '01.4044', '0', 8, 8, 8, 0, '2019-10-16 06:30:00', '2019-10-23 12:23:54', '0000-00-00 00:00:00', NULL),
(14, 'FRESA5', '03.5001', '0', 2, 2, 0, 2, '2019-10-16 14:30:00', '2019-10-23 12:23:52', '0000-00-00 00:00:00', NULL),
(15, 'FRESA5', '05.5002', '0', 2, 2, 0, 2, '2019-10-16 16:30:00', '2019-10-23 12:23:50', '0000-00-00 00:00:00', NULL),
(16, 'CNC1', 'STR0068010002', '0', 27, 20.5, 13.5, 7, '2019-10-12 09:30:00', '2019-10-23 12:10:46', '2019-10-23 12:10:48', NULL),
(17, 'CNC2', '03.501', '0', 3, 2.5, 2.5, 0, '2019-10-15 10:00:00', '2019-10-15 18:58:39', '2019-10-15 11:46:54', NULL),
(18, 'CNC2', '01.4040', '0', 8, 2.1, 2.1, 0, '2019-10-15 13:00:00', '2019-10-23 12:10:56', '2019-10-23 12:10:57', NULL),
(19, 'FRESA3', '01.4048', '0', 1.5, 1.5, 1.5, 0, '2019-10-15 12:00:00', '2019-10-23 12:21:11', '0000-00-00 00:00:00', NULL),
(20, 'FRESA2', '04.300', '0', 2, 2.5, 0, 2.5, '2019-10-15 12:30:00', '2019-10-23 12:18:31', '0000-00-00 00:00:00', NULL),
(21, 'FRESA1', '03.300', '0', 2, 2, 0, 2, '2019-10-15 14:30:00', '2019-10-23 12:17:04', '0000-00-00 00:00:00', NULL),
(22, 'FRESA3', '03.302', '0', 3, 3, 0, 3, '2019-10-15 12:30:00', '2019-10-23 12:21:09', '0000-00-00 00:00:00', NULL),
(23, 'FRESA2', '03.301', '0', 1, 3, 1.5, 1.5, '2019-10-15 13:30:00', '2019-10-23 12:18:28', '0000-00-00 00:00:00', NULL),
(24, 'FRESA2', '02.300', '0', 2, 2, 0, 2, '2019-10-15 14:30:00', '2019-10-23 12:18:25', '0000-00-00 00:00:00', NULL),
(25, 'FRESA5', '02.301', '0', 3, 3, 0, 3, '2019-10-15 12:30:00', '2019-10-23 12:24:00', '0000-00-00 00:00:00', NULL),
(26, 'FRESA5', '02.302', '0', 2.5, 2.5, 0, 2.5, '2019-10-15 14:30:00', '2019-10-23 12:23:58', '0000-00-00 00:00:00', NULL),
(27, 'FRESA5', '02.303', '0', 3, 3, 0, 3, '2019-10-15 15:30:00', '2019-10-23 12:23:56', '0000-00-00 00:00:00', NULL),
(28, 'CNC2', '01.5010', '0', 1, 1, 1, 0, '2019-10-15 12:30:00', '2019-10-15 18:58:31', '2019-10-15 14:48:19', NULL),
(29, 'CNC2', '01.5009', '0', 1, 1, 1, 0, '2019-10-15 13:30:00', '2019-10-15 18:58:22', '2019-10-15 11:58:33', NULL),
(30, 'CNC5', 'STR00680200012', '0', 1.5, 0, 0, 0, '2019-10-15 13:00:00', '2019-10-23 12:12:34', '2019-10-23 12:12:35', NULL),
(31, 'FRESA3', '02.3003', '0', 2, 2, 2, 0, '2019-10-15 13:00:00', '2019-10-23 12:21:08', '0000-00-00 00:00:00', NULL),
(32, 'FRESA3', '03.3003', '0', 2.5, 2.5, 0, 2.5, '2019-10-15 14:30:00', '2019-10-23 12:21:04', '0000-00-00 00:00:00', NULL),
(33, 'CNC5', '01.507', '0', 1.5, 3.5, 0.5, 3, '2019-10-15 13:00:00', '2019-10-23 12:12:32', '0000-00-00 00:00:00', NULL),
(34, 'CNC5', '01.504', '0', 1.5, 3.5, 0.5, 3, '2019-10-15 15:00:00', '2019-10-23 12:12:24', '2019-10-23 12:12:25', NULL),
(35, 'CNC7', 'STR591000', '0', 3.5, 0, 0, 0, '2019-10-15 13:00:00', '2019-10-23 12:12:54', '2019-10-23 12:12:54', NULL),
(36, 'CNC7', 'STR005910000', '0', 1.5, 0, 0, 0, '2019-10-15 17:30:00', '2019-10-23 12:12:52', '2019-10-23 12:12:52', NULL),
(37, 'FRESA3', '13.425', '0', 0.5, 0.15, 0.15, 0, '2019-10-15 13:30:00', '2019-10-23 12:21:06', '0000-00-00 00:00:00', NULL),
(38, 'FRESA3', 'STR00681003', '0', 0.5, 1, 0, 1, '2019-10-15 15:00:00', '2019-10-23 12:21:01', '0000-00-00 00:00:00', NULL),
(39, 'FRESA3', 'MIRROR STR00681003', '0', 0.5, 1, 0, 1, '2019-10-15 15:30:00', '2019-10-23 12:21:00', '0000-00-00 00:00:00', NULL),
(40, 'FRESA3', 'STR0068001001', '0', 0.5, 1.5, 0, 1.5, '2019-10-15 16:00:00', '2019-10-23 12:20:58', '0000-00-00 00:00:00', NULL),
(41, 'SOLDADURA', '01.7000', '0', 2.5, 2.5, 0, 2.5, '2019-10-15 17:30:00', '2019-10-23 12:24:51', '2019-10-23 12:24:52', NULL),
(43, 'CNC1', '-36 ', '0', 3, 0, 0, 0, '2019-10-23 16:00:00', '2019-10-24 17:39:47', '2019-10-24 17:39:49', NULL),
(44, 'CNC2', '02.407', '0', 2, 0, 0, 0, '2019-10-23 16:00:00', '2019-10-24 17:37:54', '2019-10-24 17:38:06', NULL),
(45, 'CNC2', '02.409', '0', 2, 0, 0, 0, '2019-10-23 16:00:00', '2019-10-24 17:38:04', '0000-00-00 00:00:00', NULL),
(46, 'CNC3', '01.4039', '1', 22, 0, 0, 0, '2019-10-22 18:00:00', '0000-00-00 00:00:00', '2019-10-25 10:47:38', 'CNC3-305-SN'),
(47, 'FRESA1', '02.4007', '0', 2.5, 5.5, 1, 4.5, '2019-10-23 15:00:00', '2019-10-24 10:30:00', '2019-10-23 17:30:00', NULL),
(48, 'FRESA1', '02.4006', '0', 2.5, 4, 2, 2, '2019-10-23 18:00:00', '2019-10-24 12:30:00', '2019-10-23 14:30:00', NULL),
(49, 'FRESA1', '01.3001', '0', 2, 0, 0, 0, '2019-10-23 21:30:00', '2019-10-25 16:17:18', '0000-00-00 00:00:00', 'F1-110-SN'),
(50, 'FRESA1', '01.4005', '1', 2.5, 0, 0, 0, '2019-10-24 07:30:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'F1-111-SN'),
(51, 'FRESA1', '02.4010', '1', 3, 0, 0, 0, '2019-10-24 09:30:00', '0000-00-00 00:00:00', '2019-10-24 10:00:00', 'F1-112-SN'),
(52, 'FRESA1', '02.4011', '1', 3, 0, 0, 0, '2019-10-24 12:30:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'F1-113-SN'),
(53, 'FRESA2', '02.4016', '1', 2, 0, 0, 0, '2019-10-24 15:30:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'F1-114-SN'),
(54, 'FRESA1', '02.4017', '1', 2, 0, 0, 0, '2019-10-24 17:30:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'F1-115-SN'),
(55, 'FRESA1', '02.4020', '1', 2, 0, 0, 0, '2019-10-24 19:30:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'F1-116-SN'),
(56, 'FRESA1', '02.4023', '1', 2, 0, 0, 0, '2019-10-24 21:30:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'F1-117-SN'),
(57, 'CNC2', 'PORTA PUNZON ', '0', 3.5, 0, 0, 0, '2019-10-23 19:00:00', '2019-10-24 17:37:10', '2019-10-24 17:37:24', NULL),
(58, 'CNC2', 'PLANCHADOR ', '0', 12, 0, 0, 0, '2019-10-23 19:00:00', '2019-10-24 17:37:22', '0000-00-00 00:00:00', 'CNC1-105-SN'),
(59, 'FRESA2', '02.4043', '0', 3, 3.5, 0, 3.5, '2019-10-23 16:00:00', '2019-10-23 22:00:00', '2019-10-23 16:30:00', 'F5-516-SN'),
(60, 'FRESA2', '02.4044', '1', 8, 0, 0, 0, '2019-10-23 19:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'F2-216-SN'),
(61, 'FRESA2', '02.4045', '1', 2.5, 0, 0, 0, '2019-10-24 14:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'F2-217-SN'),
(62, 'FRESA2', '02.5011', '1', 3.5, 0, 0, 0, '2019-10-24 16:30:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'F2-218-SN'),
(63, 'FRESA2', '02.5017', '1', 2, 0, 0, 0, '2019-10-24 22:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'F2-219-SN'),
(64, 'FRESA2', '01.4001', '1', 3, 0, 0, 0, '2019-10-25 08:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'F2-220-SN'),
(65, 'FRESA5', '02.4026', '0', 3.5, 15.5, 10, 5.5, '2019-10-23 17:30:00', '2019-10-23 06:30:00', '2019-10-22 07:00:00', NULL),
(66, 'FRESA5', '02.4028', '0', 2.5, 6, 4, 2, '2019-10-23 21:30:00', '2019-10-24 16:00:00', '2019-10-23 21:00:00', NULL),
(67, 'FRESA5', '02.4029', '1', 2.5, 0, 0, 0, '2019-10-24 08:30:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'F2-513-SN'),
(68, 'FRESA5', '02.4032', '1', 4.5, 0, 0, 0, '2019-10-24 11:00:00', '2019-10-25 08:00:00', '0000-00-00 00:00:00', 'F5-514-SN'),
(69, 'FRESA5', '02.4033', '1', 1.5, 0, 0, 0, '2019-10-24 15:30:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'F5-515-SN'),
(70, 'FRESA5', '02.4043', '1', 1.5, 0, 0, 0, '2019-10-24 17:30:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'F5-516-SN'),
(71, 'FRESA5', '02.4036', '1', 3, 0, 0, 0, '2019-10-24 19:30:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'F5-517-SN'),
(72, 'FRESA5', '02.4037', '1', 2, 0, 0, 0, '2019-10-25 09:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'F5-518-SN'),
(73, 'FRESA3', 'BMW-103', '1', 2, 0, 0, 0, '2019-10-24 11:30:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'F3-307-SN'),
(75, 'CNC2', 'MOLDE PALETA', '1', 4, 0, 0, 0, '2019-10-24 17:00:00', '0000-00-00 00:00:00', '2019-10-24 17:59:27', 'CNC1-106-SN'),
(76, 'CNC1', '02.300 ', '0', 5, 0, 0, 0, '2019-10-24 17:30:00', '2019-10-24 17:40:08', '2019-10-24 17:40:10', 'CNC1-107-SN'),
(77, 'CNC1', '01.300', '1', 8, 0, 0, 0, '2019-10-25 07:00:00', '0000-00-00 00:00:00', '2019-10-24 17:58:36', 'CNC1-108-SN'),
(78, 'CNC4', '02.302', '1', 5, 0, 0, 0, '2019-10-24 17:30:00', '2019-10-24 18:08:45', '2019-10-24 18:08:48', 'CNC4-403--SN'),
(79, 'CNC2', 'CX430 ', '1', 5, 0, 0, 0, '2019-10-24 20:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CNC2-218-SN'),
(80, 'CNC3', 'CX430 ID7', '1', 3, 0, 0, 0, '2019-10-24 19:30:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CNC3-306-SN'),
(81, 'CNC3', '01.5002 ', '1', 1.5, 0, 0, 0, '2019-10-25 10:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CNC3-308-SN'),
(82, 'CNC3', '01.5003', '1', 2, 0, 0, 0, '2019-10-25 12:30:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CNC3-309-SN'),
(83, 'CNC3', '01.5004', '1', 2, 0, 0, 0, '2019-10-25 14:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CNC3-310-SN'),
(84, 'CNC4', '01.5010 ', '1', 3.5, 0, 0, 0, '2019-10-25 09:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CNC4-404-SN'),
(85, 'CNC4', '01.5012', '1', 2, 0, 0, 0, '2019-10-25 09:00:00', '0000-00-00 00:00:00', '2019-10-25 10:46:58', 'CNC4-405-SN'),
(86, 'CNC2', '01.3031', '1', 2, 0, 0, 0, '2019-10-25 10:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CNC2-219-SN'),
(87, 'CNC1', '01.3016', '1', 5, 0, 0, 0, '2019-10-26 09:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CNC1-109'),
(88, 'CNC1', '01.3026', '1', 5, 0, 0, 0, '2019-10-28 06:30:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CNC1-110-SN'),
(89, 'CNC2', '01.700', '1', 2, 0, 0, 0, '2019-10-25 13:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CNC2-220-SN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scrap`
--

CREATE TABLE `scrap` (
  `idscrap` int(10) NOT NULL,
  `Nombre_plano` varchar(50) NOT NULL,
  `Proyecto` varchar(50) NOT NULL,
  `Cantidad` varchar(10) NOT NULL,
  `Horas` float NOT NULL,
  `Operador` varchar(50) NOT NULL,
  `Maquina` varchar(50) NOT NULL,
  `T_1` float NOT NULL,
  `T_2` float DEFAULT NULL,
  `Fecha_registro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `idtipo` int(10) NOT NULL,
  `Tipo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`idtipo`, `Tipo`) VALUES
(1, 'NUEVO'),
(2, 'RETRABAJO'),
(3, 'URGENCIAS'),
(4, 'DISENO'),
(5, 'MAQUINADO'),
(6, 'RETRABAJO INTERNO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_paro`
--

CREATE TABLE `tipo_paro` (
  `idtipoparos` int(10) NOT NULL,
  `Tipo` varchar(30) DEFAULT NULL,
  `Codigo` varchar(50) DEFAULT NULL,
  `Descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_paro`
--

INSERT INTO `tipo_paro` (`idtipoparos`, `Tipo`, `Codigo`, `Descripcion`) VALUES
(1, 'PARO POR MQUINA', 'A1', 'FALLA DE MAQUINA'),
(2, 'PARO POR MQUINA', 'A2', 'PREPARACION DE MAQUINA'),
(3, 'PREPARACION DE MAQUINA', 'A3', 'MANTENIMIENTO DE MAQUINA'),
(4, 'PARO POR MQUINA', 'A4', 'LIMPIEZA'),
(5, 'PARO POR OPERADOR', 'B1', 'MALA PROGRAMACION'),
(6, 'PARO POR OPERADOR', 'B2', 'MAL MONTAJE'),
(7, 'PARO POR OPERADOR', 'B3', 'ROTURA DE HERRAMIENTAS'),
(8, 'PARO POR OPERADOR', 'B4', 'FALTA DE OPERADOR'),
(9, 'PARO POR OPERADOR', 'B5', 'TIEMPO EXCEDIDO'),
(10, 'PARO POR OPERADOR', 'B6', 'PARO POR CAMBIO DE PROGRAMA'),
(11, 'PARO POR OPERADOR', 'B7', 'DESECHO DE PIEZA'),
(12, 'PARO POR FALTA DE MATERIAL', 'C1', 'FALTA DE SOLICITUD DE MATERIAL'),
(13, 'PARO POR FALTA DE MATERIAL', 'C2', 'FALTA POR CORTE DE MATERIAL'),
(14, 'PARO POR FALTA DE MATERIAL', 'C3', 'FALTA DE INVENTARIO INTERNO'),
(15, 'PARO POR FALTA DE MATERIAL', 'C4', 'SURTIMIENTO DE COMPRAS'),
(16, 'PARO POR FALTA DE MATERIAL', 'C5', 'FALTA DE PROGRAMACION'),
(17, 'PARO GENERADO POR EL CLIENTE', 'D1', 'MAL DISEÑO O CAMBIOS AL MISMO'),
(18, 'PARO GENERADO POR EL CLIENTE', 'D2', 'FALTA DE ORDENES DEL CLIENTE'),
(19, 'PARO GENERADO POR EL CLIENTE', 'D3', 'ANALISIS DE PROCESO DE FABRICACION');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuarios` int(10) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Pasw` varchar(50) DEFAULT NULL,
  `acces` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuarios`, `Nombre`, `Pasw`, `acces`) VALUES
(1, 'admin', 'admin', 1),
(2, 'BRENDA', '97132843', 1),
(4, 'ANGEL', '2p8a04', 1),
(5, 'Ramiro', 'programador1', 3),
(6, 'Freddy', 'programador2', 3),
(7, 'Martin', 'programador3', 3),
(8, 'Eddie', 'programador4', 3),
(9, 'Ingrid', 'Arceo9706', 1),
(10, 'Cesar', 'ALV2019S10', 2),
(11, 'Jacques', 'Admin01', 2),
(12, 'Ignacio', 'Admin02', 2),
(13, 'Alfredo', 'conven01', 4),
(14, 'Javier', 'conven02', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `entrega`
--
ALTER TABLE `entrega`
  ADD PRIMARY KEY (`identrega`);

--
-- Indices de la tabla `maquinaria`
--
ALTER TABLE `maquinaria`
  ADD PRIMARY KEY (`idmaquinaria`);

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`idmaterial`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`idmensaje`);

--
-- Indices de la tabla `paros`
--
ALTER TABLE `paros`
  ADD PRIMARY KEY (`idparos`);

--
-- Indices de la tabla `piezas`
--
ALTER TABLE `piezas`
  ADD PRIMARY KEY (`idpieza`);

--
-- Indices de la tabla `procesos`
--
ALTER TABLE `procesos`
  ADD PRIMARY KEY (`idprocesos`);

--
-- Indices de la tabla `scrap`
--
ALTER TABLE `scrap`
  ADD PRIMARY KEY (`idscrap`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`idtipo`);

--
-- Indices de la tabla `tipo_paro`
--
ALTER TABLE `tipo_paro`
  ADD PRIMARY KEY (`idtipoparos`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `entrega`
--
ALTER TABLE `entrega`
  MODIFY `identrega` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `maquinaria`
--
ALTER TABLE `maquinaria`
  MODIFY `idmaquinaria` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
  MODIFY `idmaterial` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `idmensaje` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paros`
--
ALTER TABLE `paros`
  MODIFY `idparos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `piezas`
--
ALTER TABLE `piezas`
  MODIFY `idpieza` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT de la tabla `procesos`
--
ALTER TABLE `procesos`
  MODIFY `idprocesos` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `scrap`
--
ALTER TABLE `scrap`
  MODIFY `idscrap` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `idtipo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipo_paro`
--
ALTER TABLE `tipo_paro`
  MODIFY `idtipoparos` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuarios` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 15-07-2019 a las 08:59:25
-- Versión del servidor: 5.6.44
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
-- Base de datos: `alvorgmx_Ne`
--

DELIMITER $$
--
-- Procedimientos
--
DROP PROCEDURE IF EXISTS `actualizartpreal`$$
$$

DROP PROCEDURE IF EXISTS `actualizar_pieza`$$
$$

DROP PROCEDURE IF EXISTS `buscar_entrega`$$
$$

DROP PROCEDURE IF EXISTS `buscar_pieza`$$
$$

DROP PROCEDURE IF EXISTS `buscar_piezaterminada`$$
$$

DROP PROCEDURE IF EXISTS `cnc1`$$
$$

DROP PROCEDURE IF EXISTS `cnc2`$$
$$

DROP PROCEDURE IF EXISTS `cnc3`$$
$$

DROP PROCEDURE IF EXISTS `cnc4`$$
$$

DROP PROCEDURE IF EXISTS `cnc5`$$
$$

DROP PROCEDURE IF EXISTS `cnc6`$$
$$

DROP PROCEDURE IF EXISTS `eliminar_pieza`$$
$$

DROP PROCEDURE IF EXISTS `eliminar_proceso`$$
$$

DROP PROCEDURE IF EXISTS `fecha_cambio`$$
$$

DROP PROCEDURE IF EXISTS `filtrado`$$
$$

DROP PROCEDURE IF EXISTS `fresa1`$$
$$

DROP PROCEDURE IF EXISTS `fresa2`$$
$$

DROP PROCEDURE IF EXISTS `fresa3`$$
$$

DROP PROCEDURE IF EXISTS `fresa4`$$
$$

DROP PROCEDURE IF EXISTS `fresa5`$$
$$

DROP PROCEDURE IF EXISTS `insertar_entrega`$$
$$

DROP PROCEDURE IF EXISTS `insertar_pieza`$$
$$

DROP PROCEDURE IF EXISTS `insertar_procesos`$$
$$

DROP PROCEDURE IF EXISTS `listar_entrega`$$
$$

DROP PROCEDURE IF EXISTS `listar_pieza`$$
$$

DROP PROCEDURE IF EXISTS `listar_pieza2`$$
$$

DROP PROCEDURE IF EXISTS `Pieza_terminada`$$
$$

DROP PROCEDURE IF EXISTS `pruebafecha`$$
$$

DROP PROCEDURE IF EXISTS `pulido`$$
$$

DROP PROCEDURE IF EXISTS `recorrimiento`$$
$$

DROP PROCEDURE IF EXISTS `Rectificado`$$
$$

DROP PROCEDURE IF EXISTS `soldadura`$$
$$

DROP PROCEDURE IF EXISTS `terminar_pieza`$$
$$

DROP PROCEDURE IF EXISTS `terminar_proceso`$$
$$

DROP PROCEDURE IF EXISTS `torno`$$
$$

DROP PROCEDURE IF EXISTS `torno2`$$
$$

DROP PROCEDURE IF EXISTS `tratamiento_termico`$$
$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maquinaria`
--

DROP TABLE IF EXISTS `maquinaria`;
CREATE TABLE `maquinaria` (
  `idmaquinaria` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `maquinaria`
--

INSERT INTO `maquinaria` (`idmaquinaria`, `nombre`) VALUES
(1, 'CNC1'),
(2, 'CNC2'),
(3, 'CNC3'),
(4, 'FRESA1'),
(5, 'FRESA2'),
(6, 'FRESA3'),
(7, 'TORNO1'),
(8, 'TORNO2'),
(9, 'CNC4'),
(10, 'CNC5'),
(11, 'CNC6'),
(12, 'FRESA4'),
(13, 'FRESA5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

DROP TABLE IF EXISTS `material`;
CREATE TABLE `material` (
  `idmaterial` int(11) NOT NULL,
  `material` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `material`
--

INSERT INTO `material` (`idmaterial`, `material`) VALUES
(1, 'ACETAL NEGRO'),
(2, 'ALUMINIO 6061'),
(3, 'INOXIDABLE 303,304'),
(4, 'ACETAL BLANCO '),
(5, 'ACERO 01'),
(6, 'NYLAMID'),
(7, 'UHMW'),
(8, 'ACERO 4140'),
(9, 'ACERO A36'),
(10, 'ACERO 1045'),
(11, 'ACERO 1018'),
(12, 'LAMINA DE INOXIDABLE'),
(13, 'ACERO 4140T');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pieza`
--

DROP TABLE IF EXISTS `pieza`;
CREATE TABLE `pieza` (
  `idpieza` int(11) NOT NULL,
  `nombre_plano` varchar(50) NOT NULL,
  `orden_trabajo` varchar(50) NOT NULL,
  `tipo_trabajo` varchar(50) NOT NULL,
  `material` varchar(50) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `n_proyecto` varchar(50) NOT NULL,
  `total_piezas` varchar(50) NOT NULL,
  `total_procesos` varchar(50) NOT NULL,
  `turno` varchar(50) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `estado` tinyint(4) DEFAULT '1',
  `tiempo_pieza` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesos`
--

DROP TABLE IF EXISTS `procesos`;
CREATE TABLE `procesos` (
  `idprocesos` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `nombre_plano` varchar(50) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1',
  `t_estimado` varchar(50) NOT NULL,
  `t_real` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

DROP TABLE IF EXISTS `tipo`;
CREATE TABLE `tipo` (
  `idtipo` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`idtipo`, `tipo`) VALUES
(1, 'URGENCIAS'),
(2, 'RETRABAJOS'),
(3, 'DISEÑO'),
(4, 'MAQUINADO'),
(5, 'NUEVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

DROP TABLE IF EXISTS `turno`;
CREATE TABLE `turno` (
  `idturno` int(11) NOT NULL,
  `turno` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`idturno`, `turno`) VALUES
(1, '1'),
(2, '2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `maquinaria`
--
ALTER TABLE `maquinaria`
  ADD PRIMARY KEY (`idmaquinaria`),
  ADD KEY `ix_tmp_autoinc` (`idmaquinaria`);

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`idmaterial`),
  ADD KEY `ix_tmp_autoinc` (`idmaterial`);

--
-- Indices de la tabla `pieza`
--
ALTER TABLE `pieza`
  ADD PRIMARY KEY (`idpieza`),
  ADD KEY `ix_tmp_autoinc` (`idpieza`);

--
-- Indices de la tabla `procesos`
--
ALTER TABLE `procesos`
  ADD PRIMARY KEY (`idprocesos`),
  ADD KEY `ix_tmp_autoinc` (`idprocesos`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`idtipo`),
  ADD KEY `ix_tmp_autoinc` (`idtipo`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`idturno`),
  ADD KEY `ix_tmp_autoinc` (`idturno`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `maquinaria`
--
ALTER TABLE `maquinaria`
  MODIFY `idmaquinaria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
  MODIFY `idmaterial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `pieza`
--
ALTER TABLE `pieza`
  MODIFY `idpieza` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `procesos`
--
ALTER TABLE `procesos`
  MODIFY `idprocesos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `idtipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `idturno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

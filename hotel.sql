-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2018 a las 16:12:20
-- Versión del servidor: 10.1.34-MariaDB
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
-- Base de datos: `hotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargosextras`
--

CREATE TABLE `cargosextras` (
  `id_sobrecargo` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `valor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cargosextras`
--

INSERT INTO `cargosextras` (`id_sobrecargo`, `descripcion`, `valor`) VALUES
(1, 'Licores ', 200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `nit_cliente` varchar(10) NOT NULL,
  `nombre_cliente` varchar(100) DEFAULT NULL,
  `direccion` varchar(300) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`nit_cliente`, `nombre_cliente`, `direccion`, `telefono`) VALUES
('3138470-6', 'Cristian Gerardo Hernandez Barrios', 'Ciudad de Guatemala, 6ta calle zona 13', 50184098);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int(11) NOT NULL,
  `nombre_empleado` varchar(100) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `direccion` varchar(300) DEFAULT NULL,
  `id_hotel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `nombre_empleado`, `estado`, `direccion`, `id_hotel`) VALUES
(1, 'Gerardo Barrios', 'activo', '18 calle, zona 13, Guatemala', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id_factura` int(11) NOT NULL,
  `nit_cliente` varchar(10) NOT NULL,
  `id_reservacion` int(11) NOT NULL,
  `id_sobrecargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id_factura`, `nit_cliente`, `id_reservacion`, `id_sobrecargo`) VALUES
(1, '3138470-6', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

CREATE TABLE `habitaciones` (
  `id_habitacion` int(11) NOT NULL,
  `tipo_habitacion` varchar(50) DEFAULT NULL,
  `descripcion` varchar(300) DEFAULT NULL,
  `capacidad` int(11) DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL,
  `id_hotel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `habitaciones`
--

INSERT INTO `habitaciones` (`id_habitacion`, `tipo_habitacion`, `descripcion`, `capacidad`, `estado`, `id_hotel`) VALUES
(1, 'matrimonial', 'Habitacion con varios cuartos', 5, 'activo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoteles`
--

CREATE TABLE `hoteles` (
  `id_hotel` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `direccion` varchar(300) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `capacidad_habitaciones` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hoteles`
--

INSERT INTO `hoteles` (`id_hotel`, `nombre`, `direccion`, `telefono`, `capacidad_habitaciones`) VALUES
(1, 'Barcelo', 'Zona 10, Ciudad de Guatemala', 22109874, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `llamadas`
--

CREATE TABLE `llamadas` (
  `id_llamada` int(11) NOT NULL,
  `telefono_marcado` int(11) DEFAULT NULL,
  `duracion` int(11) DEFAULT NULL,
  `id_habitacion` int(11) NOT NULL,
  `id_tarifa` int(11) NOT NULL,
  `nit_cliente` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `llamadas`
--

INSERT INTO `llamadas` (`id_llamada`, `telefono_marcado`, `duracion`, `id_habitacion`, `id_tarifa`, `nit_cliente`) VALUES
(1, 0, 0, 1, 1, '3138470-6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservaciones`
--

CREATE TABLE `reservaciones` (
  `id_reservacion` int(11) NOT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `fecha_salida` date DEFAULT NULL,
  `id_habitacion` int(11) NOT NULL,
  `nit_cliente` varchar(10) NOT NULL,
  `id_tarifa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reservaciones`
--

INSERT INTO `reservaciones` (`id_reservacion`, `fecha_ingreso`, `fecha_salida`, `id_habitacion`, `nit_cliente`, `id_tarifa`) VALUES
(1, '2018-10-10', '2018-10-11', 1, '3138470-6', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifas`
--

CREATE TABLE `tarifas` (
  `id_tarifa` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `valor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tarifas`
--

INSERT INTO `tarifas` (`id_tarifa`, `descripcion`, `valor`) VALUES
(1, '10 horas', 200);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargosextras`
--
ALTER TABLE `cargosextras`
  ADD PRIMARY KEY (`id_sobrecargo`),
  ADD UNIQUE KEY `id_sobrecargo_UNIQUE` (`id_sobrecargo`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`nit_cliente`),
  ADD UNIQUE KEY `id_cliente_UNIQUE` (`nit_cliente`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`),
  ADD UNIQUE KEY `id_empleado_UNIQUE` (`id_empleado`),
  ADD KEY `fk_Empleados_Hoteles_idx` (`id_hotel`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id_factura`),
  ADD UNIQUE KEY `id_factura_UNIQUE` (`id_factura`),
  ADD KEY `fk_Facturas_Clientes1_idx` (`nit_cliente`),
  ADD KEY `fk_Facturas_Reservaciones1_idx` (`id_reservacion`),
  ADD KEY `fk_Facturas_CargosExtras1_idx` (`id_sobrecargo`);

--
-- Indices de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`id_habitacion`),
  ADD UNIQUE KEY `id_habitacion_UNIQUE` (`id_habitacion`),
  ADD KEY `fk_Habitaciones_Hoteles1_idx` (`id_hotel`);

--
-- Indices de la tabla `hoteles`
--
ALTER TABLE `hoteles`
  ADD PRIMARY KEY (`id_hotel`),
  ADD UNIQUE KEY `id_hotel_UNIQUE` (`id_hotel`);

--
-- Indices de la tabla `llamadas`
--
ALTER TABLE `llamadas`
  ADD PRIMARY KEY (`id_llamada`),
  ADD UNIQUE KEY `id_llamada_UNIQUE` (`id_llamada`),
  ADD KEY `fk_Llamadas_Habitaciones1_idx` (`id_habitacion`),
  ADD KEY `fk_Llamadas_Tarifas1_idx` (`id_tarifa`),
  ADD KEY `fk_Llamadas_Clientes1_idx` (`nit_cliente`);

--
-- Indices de la tabla `reservaciones`
--
ALTER TABLE `reservaciones`
  ADD PRIMARY KEY (`id_reservacion`),
  ADD UNIQUE KEY `id_reservacion_UNIQUE` (`id_reservacion`),
  ADD KEY `fk_Reservaciones_Habitaciones1_idx` (`id_habitacion`),
  ADD KEY `fk_Reservaciones_Clientes1_idx` (`nit_cliente`),
  ADD KEY `fk_Reservaciones_Tarifas1_idx` (`id_tarifa`);

--
-- Indices de la tabla `tarifas`
--
ALTER TABLE `tarifas`
  ADD PRIMARY KEY (`id_tarifa`),
  ADD UNIQUE KEY `id_tarifa_UNIQUE` (`id_tarifa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargosextras`
--
ALTER TABLE `cargosextras`
  MODIFY `id_sobrecargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  MODIFY `id_habitacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `hoteles`
--
ALTER TABLE `hoteles`
  MODIFY `id_hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `llamadas`
--
ALTER TABLE `llamadas`
  MODIFY `id_llamada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `reservaciones`
--
ALTER TABLE `reservaciones`
  MODIFY `id_reservacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tarifas`
--
ALTER TABLE `tarifas`
  MODIFY `id_tarifa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `fk_Empleados_Hoteles` FOREIGN KEY (`id_hotel`) REFERENCES `hoteles` (`id_hotel`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `fk_Facturas_CargosExtras1` FOREIGN KEY (`id_sobrecargo`) REFERENCES `cargosextras` (`id_sobrecargo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Facturas_Clientes1` FOREIGN KEY (`nit_cliente`) REFERENCES `clientes` (`nit_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Facturas_Reservaciones1` FOREIGN KEY (`id_reservacion`) REFERENCES `reservaciones` (`id_reservacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD CONSTRAINT `fk_Habitaciones_Hoteles1` FOREIGN KEY (`id_hotel`) REFERENCES `hoteles` (`id_hotel`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `llamadas`
--
ALTER TABLE `llamadas`
  ADD CONSTRAINT `fk_Llamadas_Clientes1` FOREIGN KEY (`nit_cliente`) REFERENCES `clientes` (`nit_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Llamadas_Habitaciones1` FOREIGN KEY (`id_habitacion`) REFERENCES `habitaciones` (`id_habitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Llamadas_Tarifas1` FOREIGN KEY (`id_tarifa`) REFERENCES `tarifas` (`id_tarifa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `reservaciones`
--
ALTER TABLE `reservaciones`
  ADD CONSTRAINT `fk_Reservaciones_Clientes1` FOREIGN KEY (`nit_cliente`) REFERENCES `clientes` (`nit_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Reservaciones_Habitaciones1` FOREIGN KEY (`id_habitacion`) REFERENCES `habitaciones` (`id_habitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Reservaciones_Tarifas1` FOREIGN KEY (`id_tarifa`) REFERENCES `tarifas` (`id_tarifa`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

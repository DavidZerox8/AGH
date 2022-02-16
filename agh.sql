-- phpMyAdmin SQL Dump
-- version 4.5.3.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 03-11-2016 a las 07:33:51
-- Versión del servidor: 5.7.10-log
-- Versión de PHP: 5.6.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agh`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `no_cliente` int(11) NOT NULL,
  `empresa` varchar(50) NOT NULL,
  `razonSocial` varchar(50) NOT NULL,
  `rfc` varchar(20) DEFAULT NULL,
  `domicilio` varchar(70) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`no_cliente`, `empresa`, `razonSocial`, `rfc`, `domicilio`, `telefono`, `email`, `status`) VALUES
(12, '', 'null', '', '', '56456', '', 'Activo'),
(21, 'pepsico', 'c.v', 'tyh254fg85', 'D.F cuatemoc 586', '55489632', '52pepsico@gpepsico.com', 'activo'),
(22, 'norma', 'cadcv', 'prf5632148', 'guadalajara 96', '23695845', 'emnorma@norma.com', 'activo'),
(23, 'jarritos', 'c.v', 'mgh56595546', 'D.F dlegacion benito juarez', '55214524', 'lkjfd547@jarritos.com', 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `no_empleado` int(11) NOT NULL,
  `nombre_dept` varchar(30) NOT NULL,
  `apellidoP` varchar(50) NOT NULL,
  `apellidoM` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `genero` varchar(10) DEFAULT NULL,
  `fechaNac` date NOT NULL,
  `gradoEstud` varchar(50) NOT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `direccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`no_empleado`, `nombre_dept`, `apellidoP`, `apellidoM`, `nombre`, `genero`, `fechaNac`, `gradoEstud`, `telefono`, `direccion`) VALUES
(1, '1', 'njnkj', 'jlkjlk', 'fvgfd', 'M', '2016-04-12', '1', '4564566', 'jiofjio'),
(10, 'Ventas', 'Rojas', 'Martinez', 'Raul', 'masculino', '1970-05-22', 'licenciatura', '55163256', 'Atizapan lomas no.125'),
(20, 'EncargadoVentas', 'Rivas', 'Palacios', 'susana', 'femenino', '1980-07-05', 'licenciatura', '165236985', 'Tlalnepantla toltecas no 856'),
(30, 'EncargadoMateriales', 'Lopez', 'Sanchez', 'Manuel', 'masculino', '1980-04-09', 'licenciatura', '55862145', 'Naucalpan de juarez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etiqueta`
--

CREATE TABLE `etiqueta` (
  `no_etiqueta` int(11) NOT NULL,
  `no_maquina` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `ancho` varchar(10) NOT NULL,
  `alto` varchar(10) NOT NULL,
  `acabado` varchar(50) NOT NULL,
  `presentacion` varchar(30) NOT NULL,
  `descripcion` varchar(40) DEFAULT NULL,
  `material` varchar(40) DEFAULT NULL,
  `tipo_trabajo` varchar(30) DEFAULT NULL,
  `cliente` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `etiqueta`
--

INSERT INTO `etiqueta` (`no_etiqueta`, `no_maquina`, `nombre`, `marca`, `ancho`, `alto`, `acabado`, `presentacion`, `descripcion`, `material`, `tipo_trabajo`, `cliente`) VALUES
(1, 1, 'kjk', 'nkjn', '8', '8', '1', 'njk', 'jknj', '1', '1', '1'),
(2, 1, 'kjk', 'nkjn', '8', '8', '1', 'njk', 'jknj', '1', '1', '1'),
(3, 4, 'boop', 'aceite', '6cm', '8cm', 'adherible', 'comida', 'etiqueta aceite', 'papel', 'alta definicion', 'sabrosano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maquina`
--

CREATE TABLE `maquina` (
  `no_maquina` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `micraje` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maquina`
--

INSERT INTO `maquina` (`no_maquina`, `nombre`, `micraje`, `tipo`) VALUES
(1, 'hkhk', 4, 'ProducciÃ³n'),
(2, 'DCM-BIVA', 0, 'flexible'),
(3, 'HP INDIGO', 0, 'stickers'),
(4, 'NILPETER FB-3300', 0, 'adherible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `no_material` int(11) NOT NULL,
  `cantidad` varchar(30) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `presentacion` varchar(30) NOT NULL,
  `unidadMedida` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `material`
--

INSERT INTO `material` (`no_material`, `cantidad`, `descripcion`, `presentacion`, `unidadMedida`) VALUES
(10, '1millar', 'papel para stickers', 'rollo', 'millares'),
(11, '1litro', 'tinta magenta', 'liquida', 'litros'),
(12, '9', 'jok', 'nkmk', 'Kilogramos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidocliente`
--

CREATE TABLE `pedidocliente` (
  `no_pedido_cliente` int(11) NOT NULL,
  `no_cliente` int(11) NOT NULL,
  `no_etiqueta` int(11) NOT NULL,
  `cantidad` varchar(50) NOT NULL,
  `fechaEntrega` date NOT NULL,
  `horaEntrega` time NOT NULL,
  `fechaSolicitud` date DEFAULT NULL,
  `horaSolicitud` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedidocliente`
--

INSERT INTO `pedidocliente` (`no_pedido_cliente`, `no_cliente`, `no_etiqueta`, `cantidad`, `fechaEntrega`, `horaEntrega`, `fechaSolicitud`, `horaSolicitud`) VALUES
(1, 12, 1, '1', '2016-04-23', '00:00:01', '2016-04-23', '00:00:01'),
(300, 21, 1, '500piezas', '2016-12-01', '07:30:00', '2016-11-20', '11:00:00'),
(301, 22, 2, '1000piezas', '2016-05-09', '12:15:00', '2016-04-20', '12:17:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidoproveedor`
--

CREATE TABLE `pedidoproveedor` (
  `no_pedido_proveedor` int(11) NOT NULL,
  `no_proveedor` int(11) NOT NULL,
  `no_material` int(11) NOT NULL,
  `cantidad` varchar(50) NOT NULL,
  `fechaEntrega` date NOT NULL,
  `horaEntrega` time NOT NULL,
  `fechaSolicitud` date NOT NULL,
  `horaSolicitud` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedidoproveedor`
--

INSERT INTO `pedidoproveedor` (`no_pedido_proveedor`, `no_proveedor`, `no_material`, `cantidad`, `fechaEntrega`, `horaEntrega`, `fechaSolicitud`, `horaSolicitud`) VALUES
(1, 1, 12, '8', '2016-04-23', '12:00:00', '2016-04-23', '12:00:00'),
(200, 100, 10, '2millares', '2016-04-12', '04:30:00', '2016-03-20', '12:20:00'),
(201, 101, 11, '2litros', '2016-03-11', '09:30:00', '2016-03-02', '11:10:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `no_proveedor` int(11) NOT NULL,
  `organizacion` varchar(50) NOT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`no_proveedor`, `organizacion`, `direccion`, `telefono`, `email`) VALUES
(1, 'khkjhjkm,', 'jikllkl', '7878979', 'kjihnk'),
(100, 'cristafilm', 'd.f delegacion cuautemoc', '55212365', 'proveedormateria@cistafil.com'),
(101, 'platic', 'queretaro 123 av.principal', '245635896', 'plasticma@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporte`
--

CREATE TABLE `transporte` (
  `no_transporte` int(11) NOT NULL,
  `no_empleado` int(11) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `modelo` int(11) NOT NULL,
  `numSerie` varchar(20) NOT NULL,
  `placas` varchar(10) NOT NULL,
  `diasCircula` varchar(30) NOT NULL,
  `mesVerificacion` varchar(30) NOT NULL,
  `mesTenencia` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `transporte`
--

INSERT INTO `transporte` (`no_transporte`, `no_empleado`, `marca`, `modelo`, `numSerie`, `placas`, `diasCircula`, `mesVerificacion`, `mesTenencia`) VALUES
(1, 1, 'mk', 7889, 'jlklk', 'jkljio', 'kjkjkjlkk', 'null', 'null'),
(500, 10, 'ford', 2009, 'm253', 'lm521', 'martes', 'enero', 'marzo'),
(501, 20, 'wolsvaguent', 2008, 'k564', 'mk542', 'miercoles', 'marzo', 'noviembre'),
(502, 30, 'nissan', 2007, 'u254', 'fg126', 'jueves', 'agosto', 'diciembre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `usuario`, `pass`) VALUES
(1, 'David', 'Martinez', 'David1', 'david');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`no_cliente`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`no_empleado`);

--
-- Indices de la tabla `etiqueta`
--
ALTER TABLE `etiqueta`
  ADD PRIMARY KEY (`no_etiqueta`),
  ADD KEY `no_maquina` (`no_maquina`);

--
-- Indices de la tabla `maquina`
--
ALTER TABLE `maquina`
  ADD PRIMARY KEY (`no_maquina`);

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`no_material`);

--
-- Indices de la tabla `pedidocliente`
--
ALTER TABLE `pedidocliente`
  ADD PRIMARY KEY (`no_pedido_cliente`),
  ADD KEY `no_cliente` (`no_cliente`),
  ADD KEY `no_etiqueta` (`no_etiqueta`);

--
-- Indices de la tabla `pedidoproveedor`
--
ALTER TABLE `pedidoproveedor`
  ADD PRIMARY KEY (`no_pedido_proveedor`),
  ADD KEY `no_proveedor` (`no_proveedor`),
  ADD KEY `no_material` (`no_material`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`no_proveedor`);

--
-- Indices de la tabla `transporte`
--
ALTER TABLE `transporte`
  ADD PRIMARY KEY (`no_transporte`),
  ADD KEY `no_empleado` (`no_empleado`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `etiqueta`
--
ALTER TABLE `etiqueta`
  ADD CONSTRAINT `etiqueta_ibfk_1` FOREIGN KEY (`no_maquina`) REFERENCES `maquina` (`no_maquina`);

--
-- Filtros para la tabla `pedidocliente`
--
ALTER TABLE `pedidocliente`
  ADD CONSTRAINT `pedidocliente_ibfk_1` FOREIGN KEY (`no_cliente`) REFERENCES `cliente` (`no_cliente`),
  ADD CONSTRAINT `pedidocliente_ibfk_2` FOREIGN KEY (`no_etiqueta`) REFERENCES `etiqueta` (`no_etiqueta`);

--
-- Filtros para la tabla `pedidoproveedor`
--
ALTER TABLE `pedidoproveedor`
  ADD CONSTRAINT `pedidoproveedor_ibfk_1` FOREIGN KEY (`no_proveedor`) REFERENCES `proveedor` (`no_proveedor`),
  ADD CONSTRAINT `pedidoproveedor_ibfk_2` FOREIGN KEY (`no_material`) REFERENCES `material` (`no_material`);

--
-- Filtros para la tabla `transporte`
--
ALTER TABLE `transporte`
  ADD CONSTRAINT `transporte_ibfk_1` FOREIGN KEY (`no_empleado`) REFERENCES `empleado` (`no_empleado`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

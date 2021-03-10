-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-03-2021 a las 23:06:14
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empleados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id` int(11) NOT NULL COMMENT 'Identificador del area',
  `nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Nombre del area de la empresa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL COMMENT 'Identificador del empleado',
  `nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Nombre completo del empleado. campo tipo Text. Solo debe permitir letras con o son tilde y espacios.No se admiten caracteres especiales ni numeros.Obligatorio',
  `email` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Correo electronico del empleado. Campo de tipo Text [Email, solo permite una estructura de correo. Obligatorio',
  `sexo` char(1) COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Campo de tipo Radio Button. M para masculino F para feminino. Obligatorio',
  `area_id` int(11) NOT NULL COMMENT 'Area de la empresa a la que pertenece el empleado. Campo tipo Select Obligatorio',
  `boletin` int(11) NOT NULL COMMENT '1 para Recibir boletin. 0 para No recibir boletin. Campo de tipo Checkbox Opcional',
  `descripcion` text COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Se descirbe la experiencia del empleado. Campo de tipo textarea. Obligatorio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_rol`
--

CREATE TABLE `empleado_rol` (
  `empleado_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL COMMENT 'Identificador del rol',
  `nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Nombre del rol'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nombre` (`nombre`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nombre` (`nombre`),
  ADD KEY `nombre_2` (`nombre`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nombre` (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del area';

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del empleado';

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del rol';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

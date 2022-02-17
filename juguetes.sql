-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-02-2022 a las 23:48:42
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `juguetes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `nom_genero` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `nom_genero`) VALUES
(1, 'Femenino'),
(2, 'Masculino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juguetes`
--

CREATE TABLE `juguetes` (
  `ID` int(11) NOT NULL,
  `Genero` int(11) NOT NULL,
  `Nombre_Juguete` text COLLATE utf8_bin NOT NULL,
  `Costo` text COLLATE utf8_bin NOT NULL,
  `Descripcion` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `juguetes`
--

INSERT INTO `juguetes` (`ID`, `Genero`, `Nombre_Juguete`, `Costo`, `Descripcion`) VALUES
(1, 1, 'Juguete niña 1', '500', 'Juguete niña 1, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(2, 1, 'Juguete niña 2', '510', 'Juguete niña 2, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(3, 1, 'Juguete niña 3', '520', 'Juguete niña 3, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(4, 1, 'Juguete niña 4', '530', 'Juguete niña 4, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(5, 1, 'Juguete niña 5', '540', 'Juguete niña 5, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(6, 1, 'Juguete niña 6', '550', 'Juguete niña 6, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(7, 1, 'Juguete niña 7', '560', 'Juguete niña 7, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(8, 1, 'Juguete niña 8', '570', 'Juguete niña 8, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(9, 1, 'Juguete niña 9', '580', 'Juguete niña 9, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(10, 1, 'Juguete niña 10', '590', 'Juguete niña 10, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(11, 1, 'Juguete niña 11', '600', 'Juguete niña 11, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(12, 1, 'Juguete niña 12', '610', 'Juguete niña 12, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(13, 1, 'Juguete niña 13', '620', 'Juguete niña 13, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(14, 1, 'Juguete niña 14', '630', 'Juguete niña 14, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(15, 1, 'Juguete niña 15', '640', 'Juguete niña 15, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(16, 1, 'Juguete niña 16', '650', 'Juguete niña 16, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(17, 1, 'Juguete niña 17', '660', 'Juguete niña 17, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(18, 1, 'Juguete niña 18', '670', 'Juguete niña 18, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(19, 1, 'Juguete niña 19', '680', 'Juguete niña 19, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(20, 1, 'Juguete niña 20', '690', 'Juguete niña 20, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(21, 1, 'Juguete niña 21', '700', 'Juguete niña 21, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(22, 1, 'Juguete niña 22', '710', 'Juguete niña 22, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(23, 1, 'Juguete niña 23', '720', 'Juguete niña 23, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(24, 1, 'Juguete niña 24', '730', 'Juguete niña 24, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(25, 1, 'Juguete niña 25', '740', 'Juguete niña 25, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(26, 2, 'Juguete niño 1', '500', 'Juguete niño 1, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(27, 2, 'Juguete niño 2', '510', 'Juguete niño 2, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(28, 2, 'Juguete niño 3', '520', 'Juguete niño 3, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(29, 2, 'Juguete niño 4', '530', 'Juguete niño 4, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(30, 2, 'Juguete niño 5', '540', 'Juguete niño 5, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(31, 2, 'Juguete niño 6', '550', 'Juguete niño 6, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(32, 2, 'Juguete niño 7', '560', 'Juguete niño 7, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(33, 2, 'Juguete niño 8', '570', 'Juguete niño 8, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(34, 2, 'Juguete niño 9', '580', 'Juguete niño 9, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(35, 2, 'Juguete niño 10', '590', 'Juguete niño 10, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(36, 2, 'Juguete niño 11', '600', 'Juguete niño 11, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(37, 2, 'Juguete niño 12', '610', 'Juguete niño 12, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(38, 2, 'Juguete niño 13', '620', 'Juguete niño 13, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(39, 2, 'Juguete niño 14', '630', 'Juguete niño 14, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(40, 2, 'Juguete niño 15', '640', 'Juguete niño 15, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(41, 2, 'Juguete niño 16', '650', 'Juguete niño 16, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(42, 2, 'Juguete niño 17', '660', 'Juguete niño 17, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(43, 2, 'Juguete niño 18', '670', 'Juguete niño 18, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(44, 2, 'Juguete niño 19', '680', 'Juguete niño 19, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(45, 2, 'Juguete niño 20', '690', 'Juguete niño 20, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(46, 2, 'Juguete niño 21', '700', 'Juguete niño 21, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(47, 2, 'Juguete niño 22', '710', 'Juguete niño 22, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(48, 2, 'Juguete niño 23', '720', 'Juguete niño 23, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(49, 2, 'Juguete niño 24', '730', 'Juguete niño 24, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.'),
(50, 2, 'Juguete niño 25', '740', 'Juguete niño 25, Lorem ipsum dolor sit amet consectetur adipisicing elit, necessitatibus minima quasi.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `juguetes`
--
ALTER TABLE `juguetes`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `juguetes`
--
ALTER TABLE `juguetes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

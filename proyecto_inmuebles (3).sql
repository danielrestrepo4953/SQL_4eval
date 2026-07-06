-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 06-07-2026 a las 03:28:01
-- Versión del servidor: 8.4.7
-- Versión de PHP: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_inmuebles`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristicas`
--

DROP TABLE IF EXISTS `caracteristicas`;
CREATE TABLE IF NOT EXISTS `caracteristicas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `inmueble_id` int NOT NULL,
  `bodega` int DEFAULT '0',
  `estacionamiento` int DEFAULT '0',
  `logia` int DEFAULT '0',
  `cocina_amoblada` int DEFAULT '0',
  `antejardi` int DEFAULT '0',
  `patio_trasero` int DEFAULT '0',
  `piscina` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `inmueble_id` (`inmueble_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `caracteristicas`
--

INSERT INTO `caracteristicas` (`id`, `inmueble_id`, `bodega`, `estacionamiento`, `logia`, `cocina_amoblada`, `antejardi`, `patio_trasero`, `piscina`) VALUES
(27, 23, 0, 0, 0, 0, 1, 0, 0),
(29, 28, 0, 0, 0, 0, 1, 0, 1),
(31, 30, 1, 1, 1, 1, 1, 1, 1),
(32, 31, 1, 0, 0, 0, 0, 0, 0),
(33, 35, 1, 1, 1, 1, 1, 1, 1),
(34, 36, 0, 0, 0, 0, 0, 0, 0),
(35, 37, 1, 0, 1, 1, 1, 1, 1),
(36, 38, 1, 1, 1, 0, 0, 0, 1),
(37, 39, 0, 0, 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `duenos`
--

DROP TABLE IF EXISTS `duenos`;
CREATE TABLE IF NOT EXISTS `duenos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `rut` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `sexo` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_propiedad` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario_id` (`usuario_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `duenos`
--

INSERT INTO `duenos` (`id`, `usuario_id`, `rut`, `fecha_nacimiento`, `sexo`, `numero_propiedad`, `fecha_creacion`) VALUES
(1, 6, '12345678-9', '1996-01-17', 'Masculino', '43211243', '2026-05-17 18:31:33'),
(2, 7, '2233445566-7', '1993-02-20', 'Masculino', '67437391', '2026-05-20 16:24:39'),
(3, 10, '14749877-2', '1998-06-12', 'Masculino', '459-12', '2026-05-21 00:03:28'),
(4, 13, '21965622-K', '1995-05-10', 'Masculino', '458-66', '2026-05-21 15:15:53'),
(5, 18, '14749877-2', '1984-02-02', 'Masculino', '444-44', '2026-05-21 23:34:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestores`
--

DROP TABLE IF EXISTS `gestores`;
CREATE TABLE IF NOT EXISTS `gestores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `rut` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `sexo` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'Pendiente',
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `certificado_antecedentes` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario_id` (`usuario_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `gestores`
--

INSERT INTO `gestores` (`id`, `usuario_id`, `rut`, `fecha_nacimiento`, `sexo`, `estado`, `fecha_creacion`, `certificado_antecedentes`) VALUES
(1, 5, '14749877-4', '2004-01-17', 'Masculino', 'Pendiente', '2026-05-17 18:13:05', NULL),
(2, 8, '24746874-1', '1989-02-07', 'Masculino', 'Pendiente', '2026-05-20 23:30:18', 'archivos/certificados_antecedentes/gestores/certificado_8_1779319818.pdf'),
(3, 9, '21965622-K', '1984-07-14', 'Masculino', 'Pendiente', '2026-05-20 23:57:45', 'archivos/certificados_antecedentes/gestores/certificado_9_1779321465.pdf'),
(4, 16, '14749877-2', '2004-09-15', 'Masculino', 'Pendiente', '2026-05-21 15:38:55', 'archivos/certificados_antecedentes/gestores/certificado_16_1779377935.pdf'),
(5, 17, '21965622-K', '2007-05-26', 'Masculino', 'Pendiente', '2026-05-21 16:45:01', 'archivos/certificados_antecedentes/gestores/certificado_17_1779381901.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

DROP TABLE IF EXISTS `imagenes`;
CREATE TABLE IF NOT EXISTS `imagenes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `inmueble_id` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `ruta` varchar(500) NOT NULL,
  `fecha_carga` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `inmueble_id` (`inmueble_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id`, `inmueble_id`, `nombre`, `ruta`, `fecha_carga`) VALUES
(53, 23, '6a42dfa207ed6_1782767522.jpg', '/img/Viviendas_promocionadas/inmuebles_23/6a42dfa207ed6_1782767522.jpg', '2026-06-29 21:12:02'),
(54, 23, '6a42dfa22923a_1782767522.jpg', '/img/Viviendas_promocionadas/inmuebles_23/6a42dfa22923a_1782767522.jpg', '2026-06-29 21:12:02'),
(57, 24, '6a42e07237d33_1782767730.jpg', '/img/Viviendas_promocionadas/inmuebles_24/6a42e07237d33_1782767730.jpg', '2026-06-29 21:15:30'),
(66, 28, '6a42e6083a439_1782769160.jpg', '/img/Viviendas_promocionadas/inmuebles_28/6a42e6083a439_1782769160.jpg', '2026-06-29 21:39:20'),
(67, 28, '6a42e6084c63c_1782769160.jpg', '/img/Viviendas_promocionadas/inmuebles_28/6a42e6084c63c_1782769160.jpg', '2026-06-29 21:39:20'),
(68, 28, '6a42e60859a47_1782769160.jpg', '/img/Viviendas_promocionadas/inmuebles_28/6a42e60859a47_1782769160.jpg', '2026-06-29 21:39:20'),
(72, 30, '6a435ceec635e_1782799598.jpg', '/img/Viviendas_promocionadas/inmuebles_30/6a435ceec635e_1782799598.jpg', '2026-06-30 06:06:38'),
(74, 31, '6a436051c6517_1782800465.jpg', '/img/Viviendas_promocionadas/inmuebles_31/6a436051c6517_1782800465.jpg', '2026-06-30 06:21:05'),
(75, 32, '6a43661a5e5be_1782801946.jpg', '/img/Viviendas_promocionadas/inmuebles_32/6a43661a5e5be_1782801946.jpg', '2026-06-30 06:45:46'),
(77, 35, '6a4a658c08619_1783260556.jpg', '/img/Viviendas_promocionadas/inmuebles_35/6a4a658c08619_1783260556.jpg', '2026-07-05 14:09:16'),
(78, 35, '6a4a658c13245_1783260556.jpg', '/img/Viviendas_promocionadas/inmuebles_35/6a4a658c13245_1783260556.jpg', '2026-07-05 14:09:16'),
(87, 36, '6a4a78e4acec4_1783265508.jpg', '/img/Viviendas_promocionadas/inmuebles_36/6a4a78e4acec4_1783265508.jpg', '2026-07-05 15:31:48'),
(88, 37, '6a4a79d3932f4_1783265747.jpg', '/img/Viviendas_promocionadas/inmuebles_37/6a4a79d3932f4_1783265747.jpg', '2026-07-05 15:35:47'),
(89, 37, '6a4a79d934686_1783265753.jpg', '/img/Viviendas_promocionadas/inmuebles_37/6a4a79d934686_1783265753.jpg', '2026-07-05 15:35:53'),
(93, 38, 'casa_defecto.jpg', 'img/imagenes_por_defecto/casa_defecto.jpg', '2026-07-05 15:59:37'),
(98, 39, '6a4a9d2c73feb_1783274796.jpg', '/img/Viviendas_promocionadas/inmuebles_39/6a4a9d2c73feb_1783274796.jpg', '2026-07-05 18:06:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmuebles`
--

DROP TABLE IF EXISTS `inmuebles`;
CREATE TABLE IF NOT EXISTS `inmuebles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `dormitorios` int NOT NULL,
  `banos` int NOT NULL,
  `area_terreno` decimal(10,2) NOT NULL,
  `area_construida` decimal(10,2) NOT NULL,
  `precio` bigint NOT NULL,
  `precio_uf` decimal(10,2) DEFAULT '0.00',
  `fecha_publicacion` date NOT NULL,
  `solicitar_visita` tinyint(1) DEFAULT '1',
  `ubicacion` varchar(255) DEFAULT 'No especificada',
  `estado` varchar(20) DEFAULT 'Disponible',
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `titulo` varchar(30) DEFAULT NULL,
  `Comuna` varchar(100) DEFAULT NULL,
  `Provincia` varchar(100) DEFAULT NULL,
  `Sector` varchar(100) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `bodega` int NOT NULL,
  `estacionamiento` int NOT NULL,
  `logia` int NOT NULL,
  `cocina_amoblada` int NOT NULL,
  `antejardin` int NOT NULL,
  `patio_trasero` int NOT NULL,
  `piscina` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inmuebles`
--

INSERT INTO `inmuebles` (`id`, `usuario_id`, `tipo`, `descripcion`, `dormitorios`, `banos`, `area_terreno`, `area_construida`, `precio`, `precio_uf`, `fecha_publicacion`, `solicitar_visita`, `ubicacion`, `estado`, `fecha_creacion`, `fecha_actualizacion`, `titulo`, `Comuna`, `Provincia`, `Sector`, `imagen`, `bodega`, `estacionamiento`, `logia`, `cocina_amoblada`, `antejardin`, `patio_trasero`, `piscina`) VALUES
(23, 6, 'Casa', 'Descripcion de prueba', 4, 1, 300.00, 100.00, 200000000, 5333.33, '2026-06-29', 1, '', 'Disponible', '2026-06-29 21:12:01', '2026-06-29 21:13:17', 'Casa genial', 'La Serena', 'Limari', 'Avenida del mar', '/img/Viviendas_promocionadas/inmuebles_23/6a42dfa207ed6_1782767522.jpg', 0, 0, 0, 0, 0, 0, 0),
(24, 6, 'Terreno', 'Un terreno prado y libre ubicado en el corazon del valle ', 0, 0, 1000.00, 0.00, 300000000, 7351.32, '2026-06-23', 1, '', 'Disponible', '2026-06-29 21:15:29', '2026-06-29 21:15:30', 'Terreno prado  ', 'La Serena', 'Elqui', 'Ovalle', '/img/Viviendas_promocionadas/inmuebles_24/6a42e07237d33_1782767730.jpg', 0, 0, 0, 0, 0, 0, 0),
(28, 6, 'Casa', 'Una casa apacible en el lago ', 4, 2, 500.00, 350.00, 300000000, 8000.00, '2026-06-29', 1, '', 'Disponible', '2026-06-29 21:39:20', '2026-06-29 21:40:33', 'Casa en el lago', 'etc', 'renca', 'etc', '/img/Viviendas_promocionadas/inmuebles_28/6a42e6083a439_1782769160.jpg', 0, 0, 0, 0, 0, 0, 0),
(30, 6, 'Terreno', 'saffsfsd', 4, 2, 100.00, 40.00, 1500000, 36.76, '2026-06-30', 1, '', 'Disponible', '2026-06-30 06:06:38', '2026-06-30 06:06:38', 'sadffdsd', 'asdasdfsaf', 'dsfdad', 'dassdasd', '/img/Viviendas_promocionadas/inmuebles_30/6a435ceec635e_1782799598.jpg', 0, 0, 0, 0, 0, 0, 0),
(31, 6, 'Terreno', 'adsasda', 1, 0, 400.00, 100.00, 10000000, 245.04, '2026-06-01', 1, '', 'Disponible', '2026-06-30 06:21:05', '2026-06-30 06:21:05', 'mmñcx', 'sadad', 'xsdasd', 'assdasd', '/img/Viviendas_promocionadas/inmuebles_31/6a436051c6517_1782800465.jpg', 0, 0, 0, 0, 0, 0, 0),
(32, 0, 'Terreno', 'fesfsfwefwe', 2, 1, 100.00, 50.00, 10000000, 245.04, '2026-06-30', 1, 'No especificada', '', '2026-06-30 06:45:46', '2026-06-30 06:45:46', 'Prueba 2', 'etc', 'mantenimiento', 'Avenida del mar', '/img/Viviendas_promocionadas/inmuebles_32/6a43661a5e5be_1782801946.jpg', 0, 0, 0, 0, 0, 0, 0),
(33, 0, 'Casa', 'Mantenimiento', 0, 0, 0.00, 0.00, 0, 0.00, '2026-06-30', 0, 'No especificada', '', '2026-06-30 14:03:14', '2026-06-30 14:03:14', 'Mantenimiento 2', 'mantenimiento', 'mantenimiento', 'mantenimiento', '', 0, 0, 0, 0, 0, 0, 0),
(35, 35, 'Casa', 'Una casa ficticia', 6, 3, 750.00, 400.00, 500000000, 13333.33, '2026-07-05', 1, 'No especificada', '', '2026-07-05 14:09:15', '2026-07-05 15:08:51', 'Casa Centrica', 'Coquimbo', 'Provincia', 'Centrum Park', '/img/Viviendas_promocionadas/inmuebles_35/6a4a658c08619_1783260556.jpg', 1, 1, 1, 1, 1, 1, 1),
(36, 38, 'Casa', 'Casa de prueba', 1, 1, 100.00, 100.00, 50000000, 1333.33, '2026-07-05', 0, 'No especificada', '', '2026-07-05 15:31:36', '2026-07-05 15:31:52', 'Casa de prueba', 'La Serena', 'Limari', 'Avenida del mar', '/img/Viviendas_promocionadas/inmuebles_36/6a4a78e4acec4_1783265508.jpg', 0, 0, 0, 0, 0, 0, 0),
(37, 35, 'Casa', 'Prueba Prueba Pruebaaaaaa', 2, 1, 100.00, 200.00, 80000000, 2133.33, '2026-07-05', 1, 'No especificada', '', '2026-07-05 15:35:40', '2026-07-05 16:56:37', 'Casa prueba', 'La Serena', 'Provincia', 'Ruta 5', '/img/Viviendas_promocionadas/inmuebles_37/6a4a79d3932f4_1783265747.jpg', 0, 0, 0, 0, 0, 0, 0),
(38, 35, 'Bodega', 'Literally the Alcatraz prison', 99, 99, 700.00, 600.00, 800000000, 21333.33, '2026-07-05', 0, 'No especificada', '', '2026-07-05 15:58:05', '2026-07-05 17:59:31', 'Alcatraz', 'San Francisco', 'Oakland', 'Alcatraz Island', 'img/imagenes_por_defecto/casa_defecto.jpg', 1, 1, 1, 0, 0, 0, 1),
(39, 35, 'Casa', 'Testing testing, attention please', 2, 1, 200.00, 100.00, 50000000, 1333.33, '2026-07-05', 0, 'No especificada', '', '2026-07-05 17:04:05', '2026-07-05 18:06:39', 'Test', 'etc', 'Limari', 'etc', '/img/Viviendas_promocionadas/inmuebles_39/6a4a9d2c73feb_1783274796.jpg', 0, 0, 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmuebles_promocionados`
--

DROP TABLE IF EXISTS `inmuebles_promocionados`;
CREATE TABLE IF NOT EXISTS `inmuebles_promocionados` (
  `id_promotor` int NOT NULL,
  `id_inmueble` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inmuebles_promocionados`
--

INSERT INTO `inmuebles_promocionados` (`id_promotor`, `id_inmueble`) VALUES
(16, 7),
(37, 31),
(37, 35);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contraseña` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_usuario` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `nombre`, `telefono`, `contraseña`, `tipo_usuario`, `fecha_registro`, `estado`) VALUES
(27, 'dueno@test.com', 'Dueno Prueba', '912345678', '$2y$10$sVFKaVIi9YiFussUJi5BAOSi2lehwQV6jBJMchUEtFvQypHELqIuC', 'dueno', '2026-07-01 23:56:51', NULL),
(28, 'juan@ejemplo.com', 'Juan Garcia', '912345679', '$2y$10$sVFKaVIi9YiFussUJi5BAOSi2lehwQV6jBJMchUEtFvQypHELqIuC', 'dueno', '2026-07-01 23:56:51', NULL),
(29, 'maria@ejemplo.com', 'Maria Lopez', '912345680', '$2y$10$sVFKaVIi9YiFussUJi5BAOSi2lehwQV6jBJMchUEtFvQypHELqIuC', 'dueno', '2026-07-01 23:56:51', NULL),
(30, 'gestor@ejemplo.com', 'Gestor Test', '912345681', '$2y$10$sVFKaVIi9YiFussUJi5BAOSi2lehwQV6jBJMchUEtFvQypHELqIuC', 'gestor', '2026-07-01 23:56:51', NULL),
(31, 'prueba@ejemplo.com', 'Prueba', '912345678', '$2y$10$DUCkP7jr8RJYNr.ge9oGSO6534bkZLPIGY46BAgqMPdOD9/.mlapG', 'usuario', '2026-07-02 00:04:22', NULL),
(32, 'react@usuario.com', 'React Usuario', '912345678', '$2y$10$mbQvXdsCf8yNIRLc/XeviOl7Y3wl69KAwHwCdeJEoVC3PxEiimsza', 'usuario', '2026-07-02 00:05:36', NULL),
(36, 'Dueño@React.com', 'Dueño React', '912345678', '$2y$10$SPHHna64J5hpF5CLOn3fvulS/zZ6Vhn/9O5naw2pjZRqFk77T6z1O', 'dueno', '2026-07-02 16:57:27', NULL),
(35, 'usuario@dueño.com', 'React Dueño', '912345678', '$2y$10$7GAkja/hZ2sXC2e6CbiCiezVx2eRsMSY5a3/SdqHsRlRt6h0aKWO2', 'dueno', '2026-07-02 00:40:56', NULL),
(37, 'react@gestor.com', 'React Gestor', '912345678', '$2y$10$hk8S/axfBEPtQQSxJMY4g.5o29Q/.3jZLjbcOaDhTlVG7pkdOKth.', 'gestor', '2026-07-02 17:00:13', NULL),
(38, 'usuario@propiedad.com', 'Propiedad Usuario', '912345678', '$2y$10$ZQxchrzts2/2xHoAxC0kmONIhQPyM.mIAPiu4qWPuxufFUaQGqbNC', 'dueno', '2026-07-05 15:30:44', NULL),
(39, 'usuario@inmobiliaria.com', 'usuario2', '912345678', '$2y$10$OifynBpXNfc9G3hXIEJsD.e8FxWtii1oyJ6stx8PfVBmqkmoKwwTC', 'usuario', '2026-07-05 22:00:48', NULL);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  ADD CONSTRAINT `caracteristicas_ibfk_1` FOREIGN KEY (`inmueble_id`) REFERENCES `inmuebles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD CONSTRAINT `imagenes_ibfk_1` FOREIGN KEY (`inmueble_id`) REFERENCES `inmuebles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

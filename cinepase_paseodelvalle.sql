-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 20-08-2021 a las 18:27:52
-- Versión del servidor: 5.7.35
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cinepase_paseodelvalle`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `birthday`
--

CREATE TABLE `birthday` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(1000) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(800) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `birthday`
--

INSERT INTO `birthday` (`id`, `descripcion`, `url_imagen`) VALUES
(1, '<p><br></p>', 'img/17082021193848844303cumpleanÌƒos.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cines`
--

CREATE TABLE `cines` (
  `id` int(100) NOT NULL,
  `nombre` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `ciudad` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `hora_apertura` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `hora_cierre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `dia_inicio` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `dia_fin` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `dir_map` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `url_imagen` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cines`
--

INSERT INTO `cines` (`id`, `nombre`, `ciudad`, `direccion`, `hora_apertura`, `hora_cierre`, `dia_inicio`, `dia_fin`, `dir_map`, `url_imagen`, `deleted`) VALUES
(22, 'Cine Paseo del Valle Quillota', 'Quillota', 'Bernardo O`Higgins 176, Quillota, RegiÃ³n de ValparaÃ­so', '09:00:00', '22:00:00', 'Lunes', 'Domingo', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d837.6819338688833!2d-71.24792607074903!3d-32.87892237252273!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9689cd9b45b55009%3A0xa1c2d079f790bcab!2sCine+Paseo+del+Valle!5e0!3m2!1ses!2scl!4v1563477192354!5m2!1ses!2scl', 'img/26082019204534102989quillota.png', 0),
(23, 'Cine Paseo del Valle La Calera', 'La Calera', 'La Calera', '09:00:00', '22:00:00', 'Lunes', 'Domingo', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d837.6819338688833!2d-71.24792607074903!3d-32.87892237252273!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9689cd9b45b55009%3A0xa1c2d079f790bcab!2sCine+Paseo+del+Valle!5e0!3m2!1ses!2scl!4v1563477192354!5m2!1ses!2scl', 'img/3107201915425560164726072019145838888888home_web_cines (1).png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegios`
--

CREATE TABLE `colegios` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(800) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(800) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `colegios`
--

INSERT INTO `colegios` (`id`, `descripcion`, `url_imagen`) VALUES
(1, '<h3><strong>COLEGIOS</strong></h3><p>Ven y disfruta de una funciÃ³n especial solo para tu curso o colegio.</p><p>Reserva con 2 dÃ­as de anticipaciÃ³n. Elige tu pelÃ­cula y disfruta con todos tus compaÃ±eros !!!</p><p>Especificaciones y Condiciones:</p><ul><li>MÃ­nimo 10 alumnos por funciÃ³n especial.</li><li>Es obligatoria la presencia de un Profesor durante la actividad.</li><li>No acumulable con otras promociones u ofertas.</li><li>Sujeto a disponibilidad del cine y restricciÃ³n de pelÃ­cula impuesto por distribuidores.</li></ul><p>Llamanos al 33-2472218 / 33-2472219 &nbsp;- cel. +569 94091905 o escribenos al correo cinepaseodelvalle@paseodelvalle.cl</p><p>Horarios: De Lunes a Viernes desde las 10:00 de la maÃ±ana (Excepto festivos)  </p>', 'img/17082021194601687831200x709 colegios.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `confiteria`
--

CREATE TABLE `confiteria` (
  `id` int(11) NOT NULL,
  `nombre_imagen` varchar(300) NOT NULL,
  `path_direccion` varchar(300) NOT NULL,
  `fk_id_cine` int(11) NOT NULL,
  `orden` int(11) DEFAULT NULL,
  `create_at` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `confiteria`
--

INSERT INTO `confiteria` (`id`, `nombre_imagen`, `path_direccion`, `fk_id_cine`, `orden`, `create_at`) VALUES
(18, 'Combo Star Wars', 'img/17082021194528916963combo star wars_confiteria842x475.png', 22, 1, '2021-08-17'),
(17, 'Combo San ValentÃ­n', 'img/1708202119434274946combo star wars_confiteria842x475.png', 22, 2, '2021-08-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas_corporativas`
--

CREATE TABLE `entradas_corporativas` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(800) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(800) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `entradas_corporativas`
--

INSERT INTO `entradas_corporativas` (`id`, `descripcion`, `url_imagen`) VALUES
(1, '<h3><strong>ENTRADAS CORPORATIVAS</strong></h3><p>En Cine Paseo del Valle puedes encontrar entradas al cine corporativas que pueden ser utilizadas como:</p><ul><li>Incentivo de ventas</li><li>Premio para clientes</li><li>Medio promocional generando un valor agregado en los productos.</li></ul><p>Para mayor informaciÃ³n sobre los tipos de entradas disponibles, LlÃ¡manos al 33-2472218 / 33-2472219 &nbsp;- cel. +569 94091905 o escrÃ­benos al correo cinepaseodelvalle@paseodelvalle.cl</p>', 'img/170820211938014854221200x709 entradas corporativas.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `nombre_pelicula` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `director_pelicula` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `reparto_pelicula` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sinopsis_pelicula` varchar(5000) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_inicio_2d` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_fin_2d` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_inicio_3d` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_fin_3d` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `horarios_pelicula_2d` varchar(350) COLLATE utf8_spanish_ci DEFAULT NULL,
  `horarios_pelicula_2d_subtitulada` varchar(350) COLLATE utf8_spanish_ci DEFAULT NULL,
  `horarios_pelicula_3d` varchar(350) COLLATE utf8_spanish_ci DEFAULT NULL,
  `horarios_pelicula_3d_subtitulada` varchar(350) COLLATE utf8_spanish_ci DEFAULT NULL,
  `duracion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `2d` tinyint(1) DEFAULT NULL,
  `3d` tinyint(1) DEFAULT NULL,
  `estreno` tinyint(1) DEFAULT NULL,
  `preventa` tinyint(1) DEFAULT NULL,
  `restriccion` tinyint(1) DEFAULT NULL,
  `fecha_inicio_restriccion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_fin_restriccion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_inicio_preventa` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_fin_preventa` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `horario_preventa` varchar(350) COLLATE utf8_spanish_ci DEFAULT NULL,
  `horario_preventa_subtitulada` varchar(350) COLLATE utf8_spanish_ci DEFAULT NULL,
  `clasificacion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cover` varchar(400) COLLATE utf8_spanish_ci DEFAULT NULL,
  `banner` varchar(400) COLLATE utf8_spanish_ci DEFAULT NULL,
  `proximo_estreno` tinyint(1) DEFAULT NULL,
  `trailer` varchar(400) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mes_estreno` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fk_id_cine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `nombre_pelicula`, `director_pelicula`, `reparto_pelicula`, `sinopsis_pelicula`, `fecha_inicio_2d`, `fecha_fin_2d`, `fecha_inicio_3d`, `fecha_fin_3d`, `horarios_pelicula_2d`, `horarios_pelicula_2d_subtitulada`, `horarios_pelicula_3d`, `horarios_pelicula_3d_subtitulada`, `duracion`, `2d`, `3d`, `estreno`, `preventa`, `restriccion`, `fecha_inicio_restriccion`, `fecha_fin_restriccion`, `fecha_inicio_preventa`, `fecha_fin_preventa`, `horario_preventa`, `horario_preventa_subtitulada`, `clasificacion`, `cover`, `banner`, `proximo_estreno`, `trailer`, `mes_estreno`, `fk_id_cine`) VALUES
(149, 'MulÃ¡n', 'Niki Caro', 'Yifei Liu, Jason Scott Lee', 'Cuando el Emperador de China decreta que un hombre de cada familia debe servir en el EjÃ©rcito Imperial para defender al paÃ­s de los invasores del Norte, Hua MulÃ¡n, la hija mayor de un honrado guerrero, entra en escena para tomar el lugar de su padre que se encuentra enfermo. Encubierta como hombre, con el nombre Hua Jun, debe sortear pruebas a cada paso del camino, utilizar su fuerza interior y aceptar su verdadero potencial. Es un viaje Ã©pico que la transformarÃ¡ en una guerrera honrada y merecedora del respeto de una naciÃ³n agradecidaâ€¦ y de un padre orgulloso.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', NULL, NULL, NULL, 0, 0, '', '', '', '', '[\"\"]', '[\"\"]', 'TE', '../img/12082021212613283953mul_n-807158695-mmed.jpg', 'img/1208202121272678276mulan-banner.jpg', 1, 'https://www.youtube.com/embed/V6IX-D00uaE', '03/26/2020', 22),
(168, 'Aves de Presa', 'Cathy Yan', 'Ewan McGregor,Margot Robbie,Mary Elizabeth Winstead', 'AlejÃ¡ndose del EscuadrÃ³n Suicida y de Joker, la villana de DC Harley Quinn (Margot Robbie se alÃ­a con otras tres superheroÃ­nas para formar el grupo Birds of Prey AdemÃ¡s de Quinn, esta asociaciÃ³n estÃ¡ formada por Black Canary Jurnee Smolett Bell), Huntress (Mary Elizabeth Winstead y Renee Montoya (Rosie Perez Las cuatro heroÃ­nas trabajan juntas para tratar de salvar la vida de una joven, llamada Cassandra Cain (Ella Jay Basco amenazada por un malvado criminal conocido como MÃ¡scara Negra (Ewan McGregor) :::COMPRA TU PREVENTA EN BOLETERIA, 5 NIVEL PASEO DEL VALLE :::', '3/12/2020', '3/18/2020', '1/30/2020', '1/30/2020', '[\"12:20\"]', '[]', '[]', '[]', '109', 1, 0, 0, 0, 0, '1/30/2020', '1/30/2020', '1/30/2020', '2/6/2020', '[]', '[]', '+14', '../img/12082021214214149728poster-aves-de-presa-1576148576.jpeg', 'img/1208202121430417586692141_big.jpg', 0, 'https://www.youtube.com/embed/XJ295T8IEdM', '2/6/2020', 22),
(175, 'SONIC: LA PELICULA', 'Jeff Fowler', 'Jim Carrey, James Marsden', 'Basada en la exitosa franquicia global de videojuegos de Sega, SONIC cuenta la historia del erizo mÃ¡s rÃ¡pido del mundo mientras se acostumbra a su nuevo hogar en la Tierra. En esta comedia de aventuras live action, Sonic y su nuevo mejor amigo Tom (James Marsden) se unen para defender el planeta del malvado genio Dr. Robotnik (Jim Carrey) y sus planes para dominar el mundo. Esta emocionante aventura familiar tambiÃ©n estÃ¡ protagonizada por Tika Sumpter y Ben Schwartz como la voz de Sonic. ', '3/12/2020', '3/18/2020', '2/13/2020', '2/13/2020', '[\"12:30\",\"15:00\",\"17:00\",\"19:00\"]', '[]', '[]', '[]', '100', 1, 0, 0, 0, 0, '2/13/2020', '2/13/2020', '2/13/2020', '2/13/2020', '[]', '[]', 'TE', '../img/12082021214451180985234363940-352-k608525.jpg', 'img/12082021214527541571sonicbanner.jpg', 0, 'https://www.youtube.com/embed/DcL4Nrt2IvE', '2/13/2020', 22),
(187, 'TROLLS 2: WORLD TOUR', 'Walt Dohrn, David P. Smith', 'Animation', 'Trolls 2 World Tour es una nueva aventura que los llevarÃ¡ mucho mÃ¡s allÃ¡ de lo que habÃ­an conocido antes, Poppy y Branch descubren que no son mÃ¡s que una de las seis tribus de Trolls diferentes, repartidas en seis tierras diferentes y dedicadas a seis tipos diferentes de mÃºsica: Funk, Country, Techno, ClÃ¡sica, Pop y Rock. Su mundo estÃ¡ a punto de expandirse y volverse mucho mÃ¡s ruidoso. Miembro de la realeza del rock, la reina Barb, ayudada por su padre, el rey Thrash, desea destruir todos los otros gÃ©neros musicales para que el rock reine supremamente. Con el destino del mundo en peligro, Poppy y Branch, junto con sus amigos â€” Biggie, Chenille, Satin, Cooper y Guy Diamond â€” se dirigen a visitar a las demÃ¡s tribus para unificar a los Trolls en armonÃ­a contra Barb, quien busca eliminarlos.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', NULL, NULL, NULL, 0, 0, '', '', '', '', '[\"\"]', '[\"\"]', 'TE', '../img/12082021214743456851a6f54724-6c8a-427f-a13e-5a7da3168dbb_1.dbd2ca04647d4d3819ffe48ed2eaf0a1.jpeg', 'img/120820212147534251184289eb97-87c1-448b-b722-d73e896a3f8d.__cr0,0,970,300_pt0_sx970_v1___.jpg', 1, 'https://www.youtube.com/embed/rTuzb9oOdaU', '04/02/2020', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promociones`
--

CREATE TABLE `promociones` (
  `id` int(11) NOT NULL,
  `nombre_imagen` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `path_direccion` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fk_id_cine` int(11) NOT NULL,
  `orden` int(11) DEFAULT NULL,
  `create_at` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `promociones`
--

INSERT INTO `promociones` (`id`, `nombre_imagen`, `path_direccion`, `fk_id_cine`, `orden`, `create_at`) VALUES
(59, 'Combos', 'img/17082021194117965471web_1752x1066_combos promo.png', 22, 1, '2021-08-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicidad`
--

CREATE TABLE `publicidad` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(800) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(800) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `publicidad`
--

INSERT INTO `publicidad` (`id`, `descripcion`, `url_imagen`) VALUES
(1, '<h3>PUBLICIDAD EN CINES</h3><p>Ofrecemos una variedad de formatos publicitarios para que las marcas lleguen a su pÃºblico objetivo. Puedes hacer publicidad en pantalla y potenciarlo con branding en salas, butacas, puertas de acceso y faldÃ³n de pantalla. TambiÃ©n puedes incluir acting, sampling o cualquier iniciativa que tu empresa quiera implementar. </p><p>Para mayor informaciÃ³n sobre los tipos de entradas disponibles, Llamanos al 33-2472218 / 33-2472219 &nbsp;- cel. +569 94091905 o escrÃ­benos al correo cinepaseodelvalle@paseodelvalle.cl</p>', 'img/170820211935423699481200x709 cine publicidad.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `orden` int(11) DEFAULT NULL,
  `url_slider` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `enlace` varchar(350) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_at` date NOT NULL,
  `fk_id_cine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `slider`
--

INSERT INTO `slider` (`id`, `nombre`, `orden`, `url_slider`, `tipo`, `enlace`, `create_at`, `fk_id_cine`) VALUES
(1, 'Aves de presa', 1, 'img/170820211924407694771480x400_avesdepresa.png', 'escritorio', '', '2021-08-17', 22),
(2, 'Unidos', 1, 'img/170820211925397914981480x400_unidos.png', 'escritorio', '', '2021-08-17', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slider_promociones`
--

CREATE TABLE `slider_promociones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `url_slider` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `create_at` date NOT NULL,
  `fk_id_cine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `slider_promociones`
--

INSERT INTO `slider_promociones` (`id`, `nombre`, `url_slider`, `tipo`, `create_at`, `fk_id_cine`) VALUES
(1, 'GuasÃ³n', 'img/170820211949046097701480x400_web.png', 'escritorio', '2021-08-17', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `avatar` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `passwd` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `bloqueado` tinyint(1) DEFAULT NULL,
  `can_admin_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `avatar`, `email`, `passwd`, `bloqueado`, `can_admin_user`) VALUES
(6, 'img/16102019185123610382foto.jpg', 'yonatanpizarro21@hotmail.com', '18a9aff7425883fef4711442ca727dbb', 0, 1),
(7, 'img/16102019204806476407cine_paseo (1) (1).png', 'cinepaseodelvalle@paseodelvalle.cl', '26c1e21bb26fb558e64e995eba0012d8', 0, 1),
(8, 'img/16102019204841847367cine_paseo (1) (1).png', 'contacto@paseodelvalle.cl', '4ed9054fd5137ac462f3a54fadd6d992', 0, 0),
(9, 'img/16102019204908631172cine_paseo (1) (1).png', 'marketing@paseodelvalle.cl', '177066339a02fb601398d8fc86ba4883', 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `birthday`
--
ALTER TABLE `birthday`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cines`
--
ALTER TABLE `cines`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `colegios`
--
ALTER TABLE `colegios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `confiteria`
--
ALTER TABLE `confiteria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entradas_corporativas`
--
ALTER TABLE `entradas_corporativas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_cine` (`fk_id_cine`);

--
-- Indices de la tabla `promociones`
--
ALTER TABLE `promociones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `publicidad`
--
ALTER TABLE `publicidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slider_promociones`
--
ALTER TABLE `slider_promociones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `birthday`
--
ALTER TABLE `birthday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cines`
--
ALTER TABLE `cines`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `colegios`
--
ALTER TABLE `colegios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `confiteria`
--
ALTER TABLE `confiteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `entradas_corporativas`
--
ALTER TABLE `entradas_corporativas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT de la tabla `promociones`
--
ALTER TABLE `promociones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `publicidad`
--
ALTER TABLE `publicidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `slider_promociones`
--
ALTER TABLE `slider_promociones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `fk_id_cine` FOREIGN KEY (`fk_id_cine`) REFERENCES `cines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

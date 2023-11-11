-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2023 a las 05:09:25
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `todo_sobre_pelis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resena`
--

CREATE TABLE `resena` (
  `id_resena` int(255) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `contenido` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `resena`
--

INSERT INTO `resena` (`id_resena`, `titulo`, `contenido`) VALUES
(1, 'Titanic: Más Allá de un Romance Épico, un Homenaje a la Resistencia Humana ante las Olas del Destino', 'En el vasto océano de la cinematografía, \"Titanic\" se erige como un monumento imponente que va más allá de la mera historia de amor entre Jack y Rose. Este épico dirigido por James Cameron no es solo un relato romántico ambientado en la trágica noche de 1'),
(2, 'Armagedón: La Épica Carrera Contra el Reloj para Salvar a la Humanidad', 'En el vasto universo cinematográfico, donde las historias se tejen entre mundos imaginarios y realidades alternativas, \"Armagedón\" emerge como una epopeya que desafía las leyes de la física y lleva al espectador a un viaje trepidante más allá de las estre'),
(3, 'Inception: Más Allá del Sueño, Donde la Realidad se Desvanece', 'En el fascinante universo de Inception, Christopher Nolan no solo dirige una película, sino que teje un laberinto cinematográfico que desafía los límites de la mente humana. Con un reparto estelar encabezado por Leonardo DiCaprio, Inception se convierte e'),
(4, 'Interestelar: Un Viaje Épico Más Allá de la Realidad Cinematográfica', 'En un universo saturado de películas espaciales, \"Interestelar\" no solo rompe la barrera del espacio-tiempo, sino que redefine por completo nuestra percepción del cine intergaláctico. Dirigida por Christopher Nolan, esta odisea épica teje el espacio, el t'),
(5, 'Tenet: Un Viaje Invertido a la Mente del Espectador', 'En el vasto universo cinematográfico, algunas películas se destacan por su capacidad para desafiar las convenciones y dejar a los espectadores en un estado de asombro y reflexión. \"Tenet\", la obra maestra de Christopher Nolan, es un viaje cinematográfico ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(255) NOT NULL,
  `names` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `id_person` int(10) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `names`, `lastname`, `id_person`, `alias`, `email`, `pass`) VALUES
(1, 'Ricardo', 'Sandoval', 11111, 'Richie', 'ricardo@gmail.com', '123'),
(2, 'Juliana', 'Wilches', 22222, 'Juli', 'juliana@gmail.com', '456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `resena`
--
ALTER TABLE `resena`
  ADD PRIMARY KEY (`id_resena`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `resena`
--
ALTER TABLE `resena`
  MODIFY `id_resena` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-08-2016 a las 01:33:41
-- Versión del servidor: 5.7.13-0ubuntu0.16.04.2
-- Versión de PHP: 7.0.8-0ubuntu0.16.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `orregoor_dlb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dlb_autores`
--

CREATE TABLE `dlb_autores` (
  `aut_id` int(11) NOT NULL,
  `aut_nombres` varchar(50) NOT NULL,
  `aut_apellidos` varchar(50) NOT NULL,
  `aut_obra` int(11) NOT NULL,
  `aut_institucion` varchar(100) DEFAULT NULL,
  `aut_tipo` tinyint(1) DEFAULT '1',
  `aut_nacio` date DEFAULT NULL,
  `aut_murio` date DEFAULT NULL,
  `aut_bio` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dlb_autores`
--

INSERT INTO `dlb_autores` (`aut_id`, `aut_nombres`, `aut_apellidos`, `aut_obra`, `aut_institucion`, `aut_tipo`, `aut_nacio`, `aut_murio`, `aut_bio`) VALUES
(7, 'Felipe', 'Lagos Suárez', 19, NULL, NULL, NULL, NULL, NULL),
(10, 'Miriam', 'Tijero Rosas', 20, NULL, NULL, NULL, NULL, NULL),
(11, 'Felipe', 'Lagos Suárez', 20, NULL, NULL, NULL, NULL, NULL),
(12, 'Teresa', 'Espinoza', 20, NULL, NULL, NULL, NULL, NULL),
(13, 'Mynor', 'Fernández Morales', 21, NULL, NULL, NULL, NULL, NULL),
(14, 'José Luis', 'Herrera Morillas', 22, NULL, NULL, NULL, NULL, NULL),
(15, 'Héctor Guillermo', 'Alfaro López', 23, NULL, NULL, NULL, NULL, NULL),
(16, 'Jonathan Luiz Carvallo', 'Silva', 24, NULL, NULL, NULL, NULL, NULL),
(17, 'Patricia', 'Hernández Salazar', 25, NULL, NULL, NULL, NULL, NULL),
(18, 'Nadina', 'Yedid', 26, NULL, NULL, NULL, NULL, NULL),
(19, 'N.D.', 'Peiris', 27, NULL, NULL, NULL, NULL, NULL),
(20, 'B.L.', 'Peiris', 27, NULL, NULL, NULL, NULL, NULL),
(21, 'Eva', 'Novotná', 28, NULL, NULL, NULL, NULL, NULL),
(22, 'Alejandro', 'Uribe Tirado', 29, NULL, NULL, NULL, NULL, NULL),
(23, 'Floriselda', 'Cuesta Rodríguez', 30, NULL, NULL, NULL, NULL, NULL),
(24, 'C. David', 'Guerrero Quezada', 30, NULL, NULL, NULL, NULL, NULL),
(25, 'Irima', 'Campillo Torres', 30, NULL, NULL, NULL, NULL, NULL),
(26, 'C. Amed', 'Leyva Mederos', 30, NULL, NULL, NULL, NULL, NULL),
(27, 'Anisley', 'Cano Inclán', 30, NULL, NULL, NULL, NULL, NULL),
(28, 'Encarnación', 'Baena Parejo', 31, NULL, 1, NULL, NULL, NULL),
(29, 'Manuela', 'Ramírez Ponferrada', 31, NULL, 1, NULL, NULL, NULL),
(30, 'Pilar', 'Sánchez Polaina', 31, NULL, 1, NULL, NULL, NULL),
(31, 'Mercedes', 'Camara Aroca', 31, NULL, 1, NULL, NULL, NULL),
(32, 'Lourdes', 'Quiroa Herrera', 32, NULL, 1, NULL, NULL, NULL),
(33, 'Álvaro', 'Quijano Solís', 32, NULL, 1, NULL, NULL, NULL),
(34, 'Guadalupe', 'Vega Díaz', 32, NULL, 1, NULL, NULL, NULL),
(35, 'Carolina', 'Palacios Salinas', 32, NULL, 1, NULL, NULL, NULL),
(36, 'Raya', 'Fidel', 33, NULL, 1, NULL, NULL, NULL),
(37, 'Alessandra Pereira', 'Rodríguez', 34, NULL, 1, NULL, NULL, NULL),
(38, 'Liane Margarida Rockenbach', 'Tarouco', 34, NULL, 1, NULL, NULL, NULL),
(39, 'Marcelo Augusto Rauh', 'Schmitt', 34, NULL, 1, NULL, NULL, NULL),
(40, 'Silvio César', 'Cazella', 34, NULL, 1, NULL, NULL, NULL),
(41, 'Christopher S.', 'Guder', 35, NULL, 1, NULL, NULL, NULL),
(42, 'Alejandro', 'Jiménez León', 36, NULL, 1, NULL, NULL, NULL),
(43, 'María', 'Gutiérrez Vallejo', 36, NULL, 1, NULL, NULL, NULL),
(44, 'Marconi Martins de', 'Laia', 37, NULL, 1, NULL, NULL, NULL),
(45, 'María Alexandra Viegas Cortez da', 'Cunha', 37, NULL, 1, NULL, NULL, NULL),
(46, 'Antonio Roberto Ramos', 'Nogueira', 37, NULL, 1, NULL, NULL, NULL),
(47, 'José Afonso', 'Mazzon', 37, NULL, 1, NULL, NULL, NULL),
(48, 'Vicent', 'Giménez Chornet', 38, NULL, 1, NULL, NULL, NULL),
(49, 'Horacio', 'Cárdenas Zardoní', 39, NULL, 1, NULL, NULL, NULL),
(50, 'Loreto', 'Corredoira y Alfonso', 40, NULL, 1, NULL, NULL, NULL),
(51, '', '', 41, NULL, 1, NULL, NULL, NULL),
(52, '', '', 42, NULL, 1, NULL, NULL, NULL),
(53, 'Ninoska', 'Nuñez Dávila', 43, NULL, 1, NULL, NULL, NULL),
(54, 'Esperanza', 'Montoya de Milian', 43, NULL, 1, NULL, NULL, NULL),
(55, 'Iglesias Evangélicas Bautistas', '', 44, NULL, 1, NULL, NULL, NULL),
(56, 'Dupont Servicios de Seguridad', '', 45, NULL, 1, NULL, NULL, NULL),
(57, 'Miguel Arnaldo', 'Zapata Soto', 46, NULL, 1, NULL, NULL, NULL),
(58, 'Leusemia', '[intérprete]', 47, NULL, 1, NULL, NULL, NULL),
(59, 'Campo de Almas', '', 48, NULL, 1, NULL, NULL, NULL),
(60, 'Rafo', 'Ráez [intérprete]', 49, NULL, 1, NULL, NULL, NULL),
(61, '', '', 50, NULL, 1, NULL, NULL, NULL),
(62, 'Lana', 'Wachowsky', 51, NULL, 1, NULL, NULL, NULL),
(63, 'Andrew Paul', 'Wachowsky', 51, NULL, 1, NULL, NULL, NULL),
(64, 'Juan Carlos', 'Fresnadillo', 52, NULL, 1, NULL, NULL, NULL),
(65, 'Enrique', 'López Lavigne', 52, NULL, 1, NULL, NULL, NULL),
(66, 'Andrew', 'Mcdonald', 52, NULL, 1, NULL, NULL, NULL),
(67, 'Allon', 'Reich', 52, NULL, 1, NULL, NULL, NULL),
(68, 'Capítulo del Real Arco de Escocia Alianza y Firmez', '', 53, NULL, 1, NULL, NULL, NULL),
(69, 'Teissier', '', 54, NULL, 1, NULL, NULL, NULL),
(70, 'Manuel', 'Zanutelli Rosas', 55, NULL, 1, NULL, NULL, NULL),
(71, 'Comisión Especial Multipartidaria de los Actos Con', '', 56, NULL, 1, NULL, NULL, NULL),
(72, 'José', 'Santos Rujel', 57, NULL, 1, NULL, NULL, NULL),
(74, '', '', 59, NULL, 1, NULL, NULL, NULL),
(75, '', '', 60, NULL, 1, NULL, NULL, NULL),
(76, '', '', 61, NULL, 1, NULL, NULL, NULL),
(77, '', '', 62, NULL, 1, NULL, NULL, NULL),
(78, '', '', 63, NULL, 1, NULL, NULL, NULL),
(79, '', '', 64, NULL, 1, NULL, NULL, NULL),
(80, 'Marcos A.', 'Zahire Vargas', 65, NULL, 1, NULL, NULL, NULL),
(81, 'Víctor', 'Fleming', 66, NULL, 1, NULL, NULL, NULL),
(82, 'David O.', 'Selznick', 66, NULL, 1, NULL, NULL, NULL),
(83, 'Luis', 'Barrios', 67, NULL, 1, NULL, NULL, NULL),
(84, 'Inca Cine', '', 67, NULL, 1, NULL, NULL, NULL),
(85, 'Filmocentro Sonido', '', 67, NULL, 1, NULL, NULL, NULL),
(86, '', '', 67, NULL, 1, NULL, NULL, NULL),
(87, 'Alberto', 'Durant', 68, NULL, 1, NULL, NULL, NULL),
(88, 'Agua Dulce Films', '', 68, NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dlb_idiomas`
--

CREATE TABLE `dlb_idiomas` (
  `idi_id` int(11) NOT NULL,
  `idi_cod` varchar(4) NOT NULL,
  `idi_nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dlb_idiomas`
--

INSERT INTO `dlb_idiomas` (`idi_id`, `idi_cod`, `idi_nombre`) VALUES
(1, 'spa', 'Español'),
(2, 'eng', 'Inglés'),
(3, 'fre', 'Francés'),
(4, 'por', 'Portugues');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dlb_obras`
--

CREATE TABLE `dlb_obras` (
  `obr_id` int(11) NOT NULL,
  `obr_titulo` varchar(500) DEFAULT NULL,
  `obr_url` text,
  `obr_subtitulo` varchar(500) DEFAULT NULL,
  `obr_resumen` text,
  `obr_editorial` varchar(300) DEFAULT NULL,
  `obr_ano` year(4) DEFAULT NULL,
  `obr_edicion` varchar(200) DEFAULT NULL,
  `obr_idioma` int(11) NOT NULL,
  `obr_lugar` varchar(3) NOT NULL,
  `obr_fecha` date NOT NULL,
  `obr_titulo_l` varchar(500) DEFAULT NULL,
  `obr_volumen` varchar(100) DEFAULT NULL,
  `obr_serie` varchar(500) DEFAULT NULL,
  `obr_ciudad` varchar(100) DEFAULT NULL,
  `obr_meses` varchar(100) DEFAULT NULL,
  `obr_medio` varchar(100) DEFAULT NULL,
  `obr_nombre_c` varchar(200) DEFAULT NULL,
  `obr_apellido_c` varchar(200) DEFAULT NULL,
  `obr_pagina` varchar(50) DEFAULT NULL,
  `obr_codigo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dlb_obras`
--

INSERT INTO `dlb_obras` (`obr_id`, `obr_titulo`, `obr_url`, `obr_subtitulo`, `obr_resumen`, `obr_editorial`, `obr_ano`, `obr_edicion`, `obr_idioma`, `obr_lugar`, `obr_fecha`, `obr_titulo_l`, `obr_volumen`, `obr_serie`, `obr_ciudad`, `obr_meses`, `obr_medio`, `obr_nombre_c`, `obr_apellido_c`, `obr_pagina`, `obr_codigo`) VALUES
(19, 'Las bibliotecas públicas chilenas en la década del 80', NULL, NULL, 'Analiza la problemática de los diferentes tipos de bibliotecas públicas en Chile desde 1980 a 1988, así como sus colecciones. Concluye que a pesar de la falta de políticas públicas para su desarrollo, estas permitieron la continuidad de la práctica democrática.', 'Ercilla', 2012, NULL, 1, 'CHL', '2015-04-16', 'Una aproximación al devenir histórico de las bibliotecas públicas en Chile', NULL, 'Bibliotecología e historia', 'Santiago de Chile', NULL, NULL, NULL, NULL, '46-52', ''),
(20, 'Las bibliotecas públicas chilenas en la década del ochenta', NULL, NULL, 'Analiza la problemática de los diferentes tipos de bibliotecas públicas en Chile desde 1980 a 1988, así como sus colecciones. Concluye que a pesar de la falta de políticas públicas para su desarrollo, estas permitieron la continuidad de la práctica democrática.', NULL, 2013, NULL, 1, 'CHL', '2015-04-16', 'Revista Histórica Chilena', 'vol. 7, no. 4', NULL, NULL, 'oct.-dic.', NULL, NULL, NULL, '141-157,159-160', ''),
(21, 'Control estratégico de gestión en unidades de información', 'http://revistas.ucr.ac.cr/index.php/eciencias/article/view/12864', NULL, 'propone una metodología para facilitar el control de gestión estratégico de las unidades de información. Plantea utilizar indicadores para evaluar y monitorear su rendimiento.', NULL, 2014, NULL, 1, 'CRI', '2015-04-23', 'E-Ciencias de la Información', 'vol.4, no.1', NULL, NULL, 'ene.-jul.', 'RECURSO ELECTRÓNICO', NULL, NULL, '1-16', ''),
(22, 'La gestión de las colecciones de fondo antiguo en las bibliotecas universitarias :', 'http://bid.ub.edu/30/herrera.htm', 'análisis de los textos normativos', 'Analiza treinta y tres textos que han permitido trazar el estado actual sobre la regulación de los servicios en las bibliotecas universitarias españolas.', NULL, 2013, NULL, 1, 'ESP', '2015-04-23', 'BID: textos universitaris de Biblioteconomía i Documentación', 'no. 30', NULL, NULL, 'juny', 'RECURSOS ELECTRONICOS', NULL, NULL, NULL, ''),
(23, 'La biblioteca como obstáculo epistemológico', NULL, '', 'Reflexiona acerca de la situación de las bibliotecas y como son vistas en la sociedad. Analiza desde la epistemología, como deberian ser para lograr un mayor vínculo de las personas hacia el conocimiento. Concluye en que las bibliotecas deben repensarse para lograr formar una ciencia de la bibliotecología.', 'Universidad nacional Autónoma de México', 2010, NULL, 1, 'MEX', '2015-04-30', 'Estudios Epistemológicos de Bibliotecología', NULL, 'Teoría y métodos', 'México D.F.', '', NULL, NULL, NULL, '1-41', ''),
(24, 'Das concepçoes disciplinares na ciencia da informaçao e/ou de sus configuraçoes epistemológicas :', NULL, 'o desiderato percepcionado de interdisciplinaridade', 'Discute las percepciones disciplinares y sus derivados en las ciencias de la información. Reflexiona con un enfoque epistemológico sobre un diálogo interdisciplinario con especialistas de diversos puntos de vista de ese modo propone principios y teorías de este campo. Concluye que la ciencia de la información tiene diferentes percepciones en función de los saberes en las áreas de las humanidades y ciencias sociales.', NULL, 2013, NULL, 1, 'MEX', '2015-04-30', 'Investigación Bibliotecológica', 'vol.27, no.59', NULL, NULL, 'enero-abril', NULL, NULL, NULL, '67-92', ''),
(25, 'La importancia de la satisfacción del usuario', NULL, '', 'Enfatiza la importancia de los estudios de usuarios para conocer si se satisfacen sus necesidades de información y así cubrir sus expectativas. Aborda el sentido de ser de la bibliotecología y las tendencias metodológicas que la vinculan al estudio y medición de las necesidades de información. Describe diferentes modelos teóricos que permiten un adecuado análisis de la satisfacción de usuarios.', NULL, 2011, NULL, 1, 'ESP', '2015-05-07', 'Documentación de las Ciencias de la información', 'vol.34', NULL, NULL, NULL, NULL, NULL, NULL, '349-368', ''),
(26, 'Introducción a las folksonomías', NULL, 'definición, características y diferencias con los modelos tradicionales de indización', 'Analiza el fenómeno de las folksonomías. Rescata sus diferentes tipos y las compara con los modelos tradicionales de indización. Concluye que las folksonomías ofrecen ciertas ventajas al recuperar información y pueden servir como complemento de la indización con vocabularios contorlados.', NULL, 2013, NULL, 1, 'ARG', '2015-05-07', 'Información, Cultura y Sociedad', 'no.29', NULL, NULL, 'diciembre', NULL, NULL, NULL, '13-26', ''),
(27, 'Use of electronic information resources by postgraduate students', 'http://dx.doi.org/10.4038/jula.v16i1.5197', 'a case study', 'Describe los resultados de un cuestionario, el cual fue realizado para investigar el uso de los recursos electrónicos de información por los estudiantes de postgrado de la Universidad de Peraderiga. Revela que la mayoría de estudiantes de postgrado los usan para escribir informes, que aprendieron a usarlos por sí mismos y por ensayo y error. Encuentra que los usuarios no están con los servicios de información electrónicos, ellos creen que debe dárseles mayor difusión y una mayor implementación en la biblioteca.', NULL, 2012, NULL, 2, 'LKA', '2015-05-14', 'Journal of the University Librarians Association', 'vol.16, no.1', NULL, NULL, '', 'RECURSO ELECTRONICO', NULL, NULL, '46-69', ''),
(28, 'Catalogación de documentos cartográficos en RDA', NULL, NULL, 'Muestra las reglas de catalogación RDA, de las cuales explica su estructura y el cambio que ha supuesto en cuanto a las AACR. Informa sobre los nuevos campos de MARC 21 para los datos editoriales 264 y el campo 3XX. Centra el problema en como aplicarlos a los documentos cartográficos, en los campos destinados a escalas, visualizaciones cartográficas y coordenadas, y la descripción física. Concluye en que las RDA son reglas de catalogación que contribuyen a facilitar el proceso de catalogación debido a su flexibilidad.', NULL, 2014, NULL, 1, 'ESP', '2015-05-14', 'El Profesional de la Información', 'vol.23, no.2', NULL, NULL, 'marzo-abril', NULL, NULL, NULL, '195-203', ''),
(29, 'Presencia, tendencias y aspectos diferenciadores de la formación sobre derechos de autor en la alfabetización informacional en el ámbito universitario', 'http://bid.ub.edu/24/uribe2.htm', NULL, 'Analiza la formación de usuarios respecto al tratamiento de los derechos de autor. Destaca el tema del plagio y una adecuada citación y el manejo bibliográfico, además de los diferentes derechos de autor. Propone que se de mayor cabida a estas capacitaciones para que la información respecto a estos temas sea más integral y amplia e incremente las competencias en alfabetización informacional. ', NULL, 2010, NULL, 1, 'ESP', '2015-05-21', 'BID: textos universitaris de Biblioteconomía i documentació (Barcelona)', 'no.24', NULL, NULL, 'juny', 'RECURSO ELECTRONICO', NULL, NULL, NULL, ''),
(30, 'Diseño de un modelo para la evaluación de la calidad de los servicios en bibliotecas universitarias', NULL, NULL, 'Diseña un modelo de evaluación de servicios de bibliotecas universitarias a través de criterios de evaluación para mejorar de manera continua los niveles de prestación a sus usuarios. Recomienda herramientas para medir los niveles de satisfacción y de calidad que generan estos servicios.', NULL, 2013, NULL, 1, 'CUB', '2015-06-04', 'Revista Cubana de información en Ciencias de la Salud', 'vol.24, no.3', NULL, NULL, NULL, NULL, NULL, NULL, '269-280', ''),
(31, 'Proceso de evaluación, relegación y expurgo en la biblioteca Maimónides de la Universidad de Córdova', NULL, NULL, 'Aborda los procesos que tienen como objetivo conseguir una colección relevante y adaptada a las necesidades de los usuarios. Analiza las características de la colección, su origen, su evolución, el fondo bibliográfico sometido al proceso y las excepciones. Identifica los resultados como instrumento básico de la gestión de la colección; actualización, liberación de espacios, reestructuración y reubicación de los fondos bibliográficos.', NULL, 2011, NULL, 1, 'ESP', '2015-06-04', 'Boletín de la Asociación Andaluza de Bibliotecarios', 'no.102', NULL, NULL, 'julio-diciembre', NULL, NULL, NULL, '8-19', ''),
(32, 'Impacto de la biblioteca académica mexicana en las sociedades del conocimiento', NULL, NULL, 'Explora el valor de la biblioteca académica y su relación con el éxito de las instituciones de educación superior en México. Brinda algunos aspectos sobre su evaluación con énfasis en la alfabetización informacional y en los servicios y recursos electrónicos de información. Hace incapié en los retos que afrontarán las bibliotecas académicas y las decisiones que tomarán en el futuro.', NULL, 2011, NULL, 1, 'ESP', '2015-06-11', 'IBERSID: revista de Sistemas de Información y Documentación', 'vol.5', NULL, NULL, NULL, NULL, NULL, NULL, '51-60', ''),
(33, 'Human information behavior and information retrieval', NULL, 'is collaboration possible?', 'Considera importantes los sistemas de recuperación de la información porque permiten la difusión del conocimiento y la colaboración ente especialistas de la información. Plantea un entorno de interacción interdisciplinar en donde los estudiosos pueden obtener la información que precisan.', 'Massachusetts Institute of Technology', 2012, NULL, 2, 'USA', '2015-06-18', 'Human information interaction: an ecological approach to information behavior', NULL, NULL, 'Massachusetts', NULL, NULL, NULL, NULL, '199-224', ''),
(34, 'A interoperaçao com repositorios digitais', NULL, 'protocolos e exemplos', 'Analiza el momento en el que surge la biblioteca digital con la aparición de las nuevas tecnologías de información en Brasil. Comenta algunas propuestas de sistemas de bibliotecas que se implementaron. Explica los protocolos de comunicación que pueden ser utilizados para la integración de repositorios digitales. Argumenta que estos sistemas de almacenamiento y recuperación de la información son relevantes para incentivar el uso de los repositorios digitales.', NULL, 2011, NULL, 4, 'BRA', '2015-06-18', 'Ciência da Informaçao', 'vol.40, no.3', NULL, NULL, NULL, NULL, NULL, NULL, '349-363', ''),
(35, 'Making the right decisions about assistive technology in your library', NULL, NULL, 'Aborda la implementación de tecnologías adaptadas en las bibliotecas para el usuario con discapacidad visual, así como los softwares más utilizados en las unidades de información.', NULL, 2012, NULL, 2, 'USA', '2015-06-25', 'Library Technology Report', 'vol.48, no7', NULL, NULL, 'october', NULL, NULL, NULL, '14-21', ''),
(36, 'Software libre como alternativa para desarrollar sistemas informáticos basados en la lengua indígena de la población', 'http://udgvirtual.udg.mx/apertura/index.php/apertura3/article/view/132', 'el caso de Open Biblio distribución náhualt', 'Estudia el caso de la aplicación de un software de uso libre en versión del idioma de uno de los pueblos originarios de México. Presenta la metodología y los criterios utilizados en la implementación de los servicios, materiales, software y hardware que serían útiles en dichas comunidades.', NULL, 2010, NULL, 1, 'MEX', '2015-06-25', 'Apertura', 'vol.10', NULL, NULL, 'marzo', 'RECURSO ELECTRONICO', NULL, NULL, NULL, ''),
(37, 'Electronic goverment policies in Brazil', NULL, 'context, ICT management and outcomes', 'Estudia las políticas nacionales de información que se implementaron para originar el gobierno electrónico en Brasil. Analiza esta implementación a partir de entrevistas a políticos brasileños y a empresarios de la informatica. Concluye que una economía de la información a través de las TICs ayudó en una mejora de la administración pública.', NULL, 2011, NULL, 2, 'BRA', '2015-07-02', 'Revista de Administraçao de Empresas', 'vol.51, no.1', NULL, NULL, 'jan.-feb.', NULL, NULL, NULL, '43-57', ''),
(38, 'La reutilización de la informacion en el sector público', 'revistas.ucr.ac.cr/index.php/eciencias/article/view/12863/12472', 'aplicacion en la Unión Europea', 'Trata acerca de la recuperación de la información producida por el sector público en la Unión Europea. Cuestiona si la gestión de la información es la adecuada para que todas las personas puedan utilizarla según sus necesidades. Argumenta que en las tecnologías en línea deberían hacer uso de vocabularios controlados para acceder a a información de las entidades públicas.', NULL, 2014, NULL, 1, 'ESP', '2015-07-02', 'E-Ciencias de la información: revista electrónica semestral', 'vol.4, no.1', NULL, NULL, 'enero-julio', 'RECURSO ELECTRONICO', NULL, NULL, '1-8', ''),
(39, 'Open Access, la urgencia de construir políticas institucionales', NULL, NULL, 'Informa sobre la falta de políticas públicas respecto a la implementación del Open Access siendo una herramienta importante para la producción científica y al libre  y equitativo acceso a la información. Reconoce que a pesar de que existe consenso sobre la importancia de que sea una realidad para el avance de la ciencia y en beneficio de la población, hay recelo respecto al efecto económico de ello.', 'Universidad Nacional Autonoma de México', 2011, NULL, 1, 'MEE', '2015-06-11', 'Acceso abierto a la información en las bibliotecas académicas de América Latina y el Caribe', NULL, 'Sistematización de la información documental', 'México D.F.', NULL, NULL, 'Filiberto Felipe', 'Martínez Arellano', '57-70', ''),
(40, 'La protección de los derechos de autores y editores en las TICs', '', 'medios digitales, multimedia y software', 'Trata acerca de los derechos de autor , sobre los medios digitales, el multimedia y el software. Analiza jurídicamente los medios digitales en soportes móviles, los derehos de los editores, respecto a las obras publicadas en conjunto y la protección del desarrollo en software. Concluye en que la utilización de estos recursos también debe respetar los derechos de los usuarios y ser accesibles para ellos.', 'INFOTEC', 2012, '', 1, 'MEX', '2015-05-21', 'La sociedad de la información en Iberoamérica: estudio multidisciplinar', '', '', 'México D.F.', '', '', 'Wilma', 'Arellano Toledo', '129-147', ''),
(41, 'San Marcos al día', '', 'órgano oficial de la Universidad Nacional Mayor de San Marcos', 'Mensual', 'Oficina General de Imagen Institucional', 2015, 'Nº 293 ', 1, '', '1969-12-31', '', '', '', 'Lima', 'abr.', '', 'Fernando', 'Obregón García', '12 p.: il. col.; 50 cm.', 'REV<br>378.007<br>S'),
(42, 'TV y novelas', '', '', 'Mensual', 'ET Publishing Internacional', 2014, 'Año 36, Nº 7', 1, '', '1969-12-31', '', '', '', 'Florida', 'jul', '', 'Luis Alfonso', 'Borrego', '108 p.: il. col.; 30 cm.', 'REV<br>070.195<br>T'),
(43, 'Soy mamá y mujer', '', '', 'No se menciona el mes.', 'Industria Gráfica Cimagraf', 2013, 'Año 4, Nº 41', 1, '', '1969-12-31', '', '', '', 'Lima', '', '', '', '', '63 págs.: il. col.; 30 cm.', 'REV<br>070.483 47<br>S'),
(44, 'Fragancia musical', '', '', '', 'Seminario Bautista del Perú', 2008, '9na. edición', 1, '', '1969-12-31', '', '', '', '[Arequipa]', '', '', '', '', '[48 p. sin numerar]', 'FOLL<br>782.25<br>S38<br>2008'),
(45, 'Procedimientos y normas de orden y herramientas y equipo', '', '', 'Unidad Tres de STOP para empleados', 'Dupont', 2004, '', 1, '', '1969-12-31', '', '', '', 'Colombia', '', '', '', '', '32 p.: il.; 30cm.', 'FOLL<br>363.11<br>D95<br>2004'),
(46, 'Cuentos co-chinos', '', '', '', 'Ediciones GLZ', 2002, '', 1, '', '1969-12-31', '', '', '', 'Lima', '', '', '', '', '[44 p. sin numerar]; 20 cm.', 'FOLL<br>868.993525<br>Z42<br>2002'),
(47, 'Hospicios', '', 'los últimos ciudadanos de la séptima casa de la obscuridad', 'Grabado en el estudio L25.<br>Rock sinfónico.', 'Grupo Láse Disc', 2005, '', 1, '', '1969-12-31', '', '', '', 'Lima', '', '[grabación sonora]', '', '', '1 disco son. digital; +1 folleto (16 p. il.)', '781.66<br>L53'),
(48, 'De ángeles y demás demonios', '', '', 'Grabado den Villa Rubí (Lima, Perú) y en Circo Beat (Buenos Aires, Argentina).<br>\nProducido por Luis García H.<br>\nRock and roll', 'Hipo Music Colombia', 2004, '', 1, '', '1969-12-31', '', '', '', 'Colombia', '', 'grabación sonora', '', '', '1 disco son. digital', '781.66<br>C24'),
(49, 'Muérete', '', '', 'El disco consta de dos partes.', 'Sony Music Entertainment', 2001, '', 1, '', '1969-12-31', '', '', '', '[s.l.]', '', 'grabación sonora', '', '', '1 disco son. digital; +1 canciones adicionales', '781.61<br>R15'),
(50, 'Ocho apellidos vascos', '', '', 'Comedia.<br>\nIntérpretes: Clara Lago; Dani Ravira; Carmen Machi; Karra Elejalde.', 'Warner Bros.', 2014, '', 1, '', '1969-12-31', '', '', '', 'España', '', 'película', 'Emiliio', ' Martínez', '1 película (128 min.): son. col.', 'DVD<br>971.43617<br>M26'),
(51, 'El destino de Jupiter', '', '', 'Ciencia Ficción<br>\nInterpretes: Channing Tatum; Mila Kunis.<br>', 'Exponential Media', 2012, '', 1, '', '1969-12-31', '', '', '', 'Estados Unidos', '', 'película', '', '', '1 película (c.a. 120 min.): son. col.', 'DVD<br>971.43615<br>W14'),
(52, 'Agárralo como puedas', '', 'de los archivos del ¡escuadrón de policia!', 'Comedia.<br>\nIntérpretes; Leslie Nielsen; Priscila Presley.', 'Twentieth Century Fox', 2007, '', 1, '', '1969-12-31', '', '', '', 'Estados Unidos', '', 'película', '', '', '1 película (100 min.): son. col.', 'BD<br>791.43617<br>F82'),
(53, 'Rituales para los trabajos de maestro de marca, maestro excelente y compañero capitular', '', '', 'Parte del contenido está con abreviaturas masónicas.', 'Imprenta Mariela', 1977, '', 1, '', '1969-12-31', '', '', '', 'Lima', '', '', '', '', '92 p.; 15 cm.', '061.236.6(851.1/06)<br>C25'),
(54, 'Manuel général de maçonnerie', '', '', 'Contiene los siete grados del Rito Francés, los treinta y tres grados del Rito Escocés y los tres grados de la masonería de adopción.', 'Teissier y Cie. Editeurs', 0000, '2da. ed.', 1, '', '1969-12-31', '', '', '', 'París', '', '', '', '', '355 p.: il.; 20 cm.', '061.236.6(035/44)"18"=133.1<br>T32'),
(55, 'Concordia Universal', '', 'cien años de historia de una logia', '', 'Concordia Universal', 1996, '', 1, '', '1969-12-31', '', '', 'Seria Sesquicentenario', 'Callao', '', '', '', '', '204 p.: il. col.; 35 cm.', '061.236.6(851.4)"1849/1949"<br>Z36'),
(56, 'Fernando Belaunde Terry (1912-2012)', '', 'gran exposición fotográfica, vida y obra de Fernando Belaunde Terry', '', 'Congreso de la República', 2012, '', 1, '', '1969-12-31', '', '', '', 'Lima', '', '', '', '', '35 p.: il. col.; 30 cm.', 'FOLL<br>35.84.3(85)+061.4+77<br>C73'),
(57, 'El aprismo frente al marxismo congelado', '', 'análisis crítico de la segunda tesis fundamental del marxismo', '', '[Ediciones de Doctrina Política]', 1980, '', 1, '', '1969-12-31', '', '', '', 'Lima', '', '', '', '', '51 p.: 20 cm.', 'FOLL<br>329(85)*APRA+141.82<br>R7'),
(59, 'Alcalde', '', 'otredad', 'Folleto sobre las pinturas de Alfredo Alcalde expuestas en el Centro Cultural Inca Garcilazo del Ministerio de Relaciones Exteriores entre el 12 de setiembre al 6 de octubre del 2013.', 'Centro Cultural Inca Garcilazo', 2013, '', 1, '', '1969-12-31', '', '', '', 'Lima', '', '', 'Centro Cultural Inca Garcilazo', '', '[32] p.: il. col.; 30 cm.', 'FOLL<br>75-051+061.4(85)<br>C43'),
(60, 'GLONORTE PERÚ', '', 'órgano informativo de la muy respetable Gran Logia del Norte del Perú', 'Mensual?', 'Gran Logia del Norte del Perú', 2008, 'Nº 1', 1, '', '1969-12-31', '', '', '', 'Trujillo', 'nov.', '', 'Francisco', 'Espinoza Orrego', '62 p.: il. col.; 30 cm.', 'REV<br>061.236.6(852.6)*GLNP<br>G'),
(61, 'Plancha Masónica', '', 'órgano de información de la Gran Logia del Norte de Colombia', 'ISSN 0124-7433<br>Trimestral?', 'Gran Logia del Norte de Colombia', 2006, 'Año 7, Nº 27', 1, '', '1969-12-31', '', '', '', 'Barranquilla', 'jun.', '', 'Iván', 'Herrera Michel', '70 p.: il. col.; 30 cm', 'REV<br>061.236.6(861)*GLNC<br>P'),
(62, 'El Fez', '', 'revista oficial del Club Shriner del Perú', 'Semestral', '', 1996, 'Año 2, Nº 2', 1, '', '1969-12-31', '', '', '', 'Lima', 'jul./dic.', '', 'Juan F.', 'Yon', '68 p.: il. col.; 30 cm.', 'REV<br>061.236.6(85)*CSP<br>F'),
(63, 'Hospitales y servicios de salud en la ciudad de los Reyes de Lima durante el vireeinato (1535-1821)', '', '', 'Incluye los nombres y ubicaciones de los hospitales en Lima durante la colonia con sus respectivos años de fundación.', '[a. m.]', 0000, 'no dibujada en escala', 1, '', '1969-12-31', '', '', '', 'Lima', '', 'cartografía', '', '', '1 plano; 42x29.7 cm.', 'MAP<br>351.77(851.1)"1535/1821"<br>H77'),
(64, 'Mapa político del Perú', '', '', '', '', 0000, 'no dibujada en escala', 1, '', '1969-12-31', '', '', '', 'Lima', '', 'cartografía', '', '', '1 mapa: col; 50x35 cm.', 'MAP<br>911.7(851)<br>M24'),
(65, 'Casa unifamiliar', '', '', 'El plano A-1 contiene el 1er. plano.<br>\nEl plano A-2 contiene los 2do. y 3er. pisos.<br>\nLos planos son para la vivienda del Sr. Miguel Armesto Céspedes.', '', 2010, 'Escala 1:50', 1, '', '1969-12-31', '', '', '', 'San Bartolo', '', 'plano', '', '', '2 planos; 42x29.7 cm.', 'MAP<br>728.3(851.1)"2010"<br>Z9'),
(66, 'Lo que el viento se llevó', '', '', 'Drama.<br>\nHecha en 1939.\nIntérpretes: Clark Gable; vivien Leigh; LEslie Howard; Olivia de Havilland.<br>\nGanadora de 10 premios Oscar incluyendo mejor película en 1939.', 'Warner Home Video', 2009, '', 1, '', '1969-12-31', '', '', '', 'EE.UU.', '', 'película', '', '', '1 película (233 min.): son. col.', 'DVD<br>791.43-2(73)<br>L5'),
(67, 'Polvo enamorado', '', '', 'Drama.<br>\nIntérpretes: Gianella Neyra; Paul Vega; Gustavo Bueno; Julián Legaspi; Antonio Aguinagua; Carlos Alcántara; Jorge Chiarella; Yiliana Chang; Javier Delguidice; Joel Ezeta; Roberto Galdós; Ramón García; Gladys Hermosa; Hermelinda Lujen; Norma Martínez.', 'La República', 2013, '', 1, '', '1969-12-31', '', '7', 'Cine Peruano 2', 'Perú', '', 'película', '', '', '1 película (105 min.): son. col.', 'DVD<br>791.43-2(85)<br>P75'),
(68, 'Doble juego', '', '', 'Drama.<br>\nIntérpretes: Fabricio Aguilar; Fernánda Cayo; Mari Pili Barreda; Gianfranco Brero; Carlos Alcántara; Katia Condos; Gianella Neyra; Monserrat Brugué.<br>\nGanadora del Premio del Público en el Festival Internacional de Cine de Santo Domingo.', 'La República', 2013, '', 1, '', '1969-12-31', '', '8', 'Cine Peruano 2', 'Perú', '', 'película', '', '', '1 película (90 min.): son. col.', 'DVD<br>791.43-2(85)<br>D72');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dlb_paises`
--

CREATE TABLE `dlb_paises` (
  `pai_id` int(11) NOT NULL,
  `pai_cod` varchar(6) NOT NULL,
  `pai_nombre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dlb_paises`
--

INSERT INTO `dlb_paises` (`pai_id`, `pai_cod`, `pai_nombre`) VALUES
(1, 'aa', 'Albania'),
(2, 'abc', 'Alberta'),
(3, '-ac', 'Ashmore and Cartier Islands'),
(4, 'ae', 'Algeria'),
(5, 'af', 'Afghanistan'),
(6, 'ag', 'Argentina'),
(7, '-ai', 'Anguilla'),
(8, 'ai', 'Armenia (Republic)'),
(9, '-air', 'Armenian S.S.R.'),
(10, 'aj', 'Azerbaijan'),
(11, '-ajr', 'Azerbaijan S.S.R.'),
(12, 'aku', 'Alaska'),
(13, 'alu', 'Alabama'),
(14, 'am', 'Anguilla'),
(15, 'an', 'Andorra'),
(16, 'ao', 'Angola'),
(17, 'aq', 'Antigua and Barbuda'),
(18, 'aru', 'Arkansas'),
(19, 'as', 'American Samoa'),
(20, 'at', 'Australia'),
(21, 'au', 'Austria'),
(22, 'aw', 'Aruba'),
(23, 'ay', 'Antarctica'),
(24, 'azu', 'Arizona'),
(25, 'ba', 'Bahrain'),
(26, 'bb', 'Barbados'),
(27, 'bcc', 'British Columbia'),
(28, 'bd', 'Burundi'),
(29, 'be', 'Belgium'),
(30, 'bf', 'Bahamas'),
(31, 'bg', 'Bangladesh'),
(32, 'bh', 'Belize'),
(33, 'bi', 'British Indian Ocean Territory'),
(34, 'bl', 'Brazil'),
(35, 'bm', 'Bermuda Islands'),
(36, 'bn', 'Bosnia and Hercegovina'),
(37, 'bo', 'Bolivia'),
(38, 'bp', 'Solomon Islands'),
(39, 'br', 'Burma'),
(40, 'bs', 'Botswana'),
(41, 'bt', 'Bhutan'),
(42, 'bu', 'Bulgaria'),
(43, 'bv', 'Bouvet Island'),
(44, 'bw', 'Belarus'),
(45, '-bwr', 'Byelorussian S.S.R.'),
(46, 'bx', 'Brunei'),
(47, 'cau', 'California'),
(48, 'cb', 'Cambodia'),
(49, 'cc', 'China'),
(50, 'cd', 'Chad'),
(51, 'ce', 'Sri Lanka'),
(52, 'cf', 'Congo (Brazzaville)'),
(53, 'cg', 'Congo (Democratic Republic)'),
(54, 'ch', 'China (Republic : 1949- )'),
(55, 'ci', 'Croatia'),
(56, 'cj', 'Cayman Islands'),
(57, 'ck', 'Colombia'),
(58, 'cl', 'Chile'),
(59, 'cm', 'Cameroon'),
(60, '-cn', 'Canada'),
(61, 'cou', 'Colorado'),
(62, '-cp', 'Canton and Enderbury Islands'),
(63, 'cq', 'Comoros'),
(64, 'cr', 'Costa Rica'),
(65, '-cs', 'Czechoslovakia'),
(66, 'ctu', 'Connecticut'),
(67, 'cu', 'Cuba'),
(68, 'cv', 'Cape Verde'),
(69, 'cw', 'Cook Islands'),
(70, 'cx', 'Central African Republic'),
(71, 'cy', 'Cyprus'),
(72, '-cz', 'Canal Zone'),
(73, 'dcu', 'District of Columbia'),
(74, 'deu', 'Delaware'),
(75, 'dk', 'Denmark'),
(76, 'dm', 'Benin'),
(77, 'dq', 'Dominica'),
(78, 'dr', 'Dominican Republic'),
(79, 'ea', 'Eritrea'),
(80, 'ec', 'Ecuador'),
(81, 'eg', 'Equatorial Guinea'),
(82, 'em', 'East Timor'),
(83, 'enk', 'England'),
(84, 'er', 'Estonia'),
(85, '-err', 'Estonia'),
(86, 'es', 'El Salvador'),
(87, 'et', 'Ethiopia'),
(88, 'fa', 'Faroe Islands'),
(89, 'fg', 'French Guiana'),
(90, 'fi', 'Finland'),
(91, 'fj', 'Fiji'),
(92, 'fk', 'Falkland Islands'),
(93, 'flu', 'Florida'),
(94, 'fm', 'Micronesia (Federated States)'),
(95, 'fp', 'French Polynesia'),
(96, 'fr', 'France'),
(97, 'fs', 'Terres australes et antarctiques françaises'),
(98, 'ft', 'Djibouti'),
(99, 'gau', 'Georgia'),
(100, 'gb', 'Kiribati'),
(101, 'gd', 'Grenada'),
(102, '-ge', 'Germany (East)'),
(103, 'gh', 'Ghana'),
(104, 'gi', 'Gibraltar'),
(105, 'gl', 'Greenland'),
(106, 'gm', 'Gambia'),
(107, '-gn', 'Gilbert and Ellice Islands'),
(108, 'go', 'Gabon'),
(109, 'gp', 'Guadeloupe'),
(110, 'gr', 'Greece'),
(111, 'gs', 'Georgia (Republic)'),
(112, '-gsr', 'Georgian S.S.R.'),
(113, 'gt', 'Guatemala'),
(114, 'gu', 'Guam'),
(115, 'gv', 'Guinea'),
(116, 'gw', 'Germany'),
(117, 'gy', 'Guyana'),
(118, 'gz', 'Gaza Strip'),
(119, 'hiu', 'Hawaii'),
(120, '-hk', 'Hong Kong'),
(121, 'hm', 'Heard and McDonald Islands'),
(122, 'ho', 'Honduras'),
(123, 'ht', 'Haiti'),
(124, 'hu', 'Hungary'),
(125, 'iau', 'Iowa'),
(126, 'ic', 'Iceland'),
(127, 'idu', 'Idaho'),
(128, 'ie', 'Ireland'),
(129, 'ii', 'India'),
(130, 'ilu', 'Illinois'),
(131, 'inu', 'Indiana'),
(132, 'io', 'Indonesia'),
(133, 'iq', 'Iraq'),
(134, 'ir', 'Iran'),
(135, 'is', 'Israel'),
(136, 'it', 'Italy'),
(137, '-iu', 'Israel-Syria Demilitarized Zones'),
(138, 'iv', 'Côte d’Ivoire'),
(139, '-iw', 'Israel-Jordan Demilitarized Zones'),
(140, 'iy', 'Iraq-Saudi Arabia Neutral Zone'),
(141, 'ja', 'Japan'),
(142, 'ji', 'Johnston Atoll'),
(143, 'jm', 'Jamaica'),
(144, '-jn', 'Jan Mayen'),
(145, 'jo', 'Jordan'),
(146, 'ke', 'Kenya'),
(147, 'kg', 'Kyrgyzstan'),
(148, '-kgr', 'Kirghiz S.S.R.'),
(149, 'kn', 'Korea (North)'),
(150, 'ko', 'Korea (South)'),
(151, 'ksu', 'Kansas'),
(152, 'ku', 'Kuwait'),
(153, 'kyu', 'Kentucky'),
(154, 'kz', 'Kazakhstan'),
(155, '-kzr', 'Kazakh S.S.R.'),
(156, 'lau', 'Louisiana'),
(157, 'lb', 'Liberia'),
(158, 'le', 'Lebanon'),
(159, 'lh', 'Liechtenstein'),
(160, 'li', 'Lithuania'),
(161, '-lir', 'Lithuania'),
(162, '-ln', 'Central and Southern Line Islands'),
(163, 'lo', 'Lesotho'),
(164, 'ls', 'Laos'),
(165, 'lu', 'Luxembourg'),
(166, 'lv', 'Latvia'),
(167, '-lvr', 'Latvia'),
(168, 'ly', 'Libya'),
(169, 'mau', 'Massachusetts'),
(170, 'mbc', 'Manitoba'),
(171, 'mc', 'Monaco'),
(172, 'mdu', 'Maryland'),
(173, 'meu', 'Maine'),
(174, 'mf', 'Mauritius'),
(175, 'mg', 'Madagascar'),
(176, '-mh', 'Macao'),
(177, 'miu', 'Michigan'),
(178, 'mj', 'Montserrat'),
(179, 'mk', 'Oman'),
(180, 'ml', 'Mali'),
(181, 'mm', 'Malta'),
(182, 'mnu', 'Minnesota'),
(183, 'mou', 'Missouri'),
(184, 'mp', 'Mongolia'),
(185, 'mq', 'Martinique'),
(186, 'mr', 'Morocco'),
(187, 'msu', 'Mississippi'),
(188, 'mtu', 'Montana'),
(189, 'mu', 'Mauritania'),
(190, 'mv', 'Moldova'),
(191, '-mvr', 'Moldavian S.S.R.'),
(192, 'mw', 'Malawi'),
(193, 'mx', 'Mexico'),
(194, 'my', 'Malaysia'),
(195, 'mz', 'Mozambique'),
(196, 'na', 'Netherlands Antilles'),
(197, 'nbu', 'Nebraska'),
(198, 'ncu', 'North Carolina'),
(199, 'ndu', 'North Dakota'),
(200, 'ne', 'Netherlands'),
(201, 'nfc', 'Newfoundland and Labrador'),
(202, 'ng', 'Niger'),
(203, 'nhu', 'New Hampshire'),
(204, 'nik', 'Northern Ireland'),
(205, 'nju', 'New Jersey'),
(206, 'nkc', 'New Brunswick'),
(207, 'nl', 'New Caledonia'),
(208, '-nm', 'Northern Mariana Islands'),
(209, 'nmu', 'New Mexico'),
(210, 'nn', 'Vanuatu'),
(211, 'no', 'Norway'),
(212, 'np', 'Nepal'),
(213, 'nq', 'Nicaragua'),
(214, 'nr', 'Nigeria'),
(215, 'nsc', 'Nova Scotia'),
(216, 'ntc', 'Northwest Territories'),
(217, 'nu', 'Nauru'),
(218, 'nuc', 'Nunavut'),
(219, 'nvu', 'Nevada'),
(220, 'nw', 'Northern Mariana Islands'),
(221, 'nx', 'Norfolk Island'),
(222, 'nyu', 'New York (State)'),
(223, 'nz', 'New Zealand'),
(224, 'ohu', 'Ohio'),
(225, 'oku', 'Oklahoma'),
(226, 'onc', 'Ontario'),
(227, 'oru', 'Oregon'),
(228, 'ot', 'Mayotte'),
(229, 'pau', 'Pennsylvania'),
(230, 'pc', 'Pitcairn Island'),
(231, 'pe', 'Peru'),
(232, 'pf', 'Paracel Islands'),
(233, 'pg', 'Guinea-Bissau'),
(234, 'ph', 'Philippines'),
(235, 'pic', 'Prince Edward Island'),
(236, 'pk', 'Pakistan'),
(237, 'pl', 'Poland'),
(238, 'pn', 'Panama'),
(239, 'po', 'Portugal'),
(240, 'pp', 'Papua New Guinea'),
(241, 'pr', 'Puerto Rico'),
(242, '-pt', 'Portuguese Timor'),
(243, 'pw', 'Palau'),
(244, 'py', 'Paraguay'),
(245, 'qa', 'Qatar'),
(246, 'quc', 'Québec (Province)'),
(247, 're', 'Réunion'),
(248, 'rh', 'Zimbabwe'),
(249, 'riu', 'Rhode Island'),
(250, 'rm', 'Romania'),
(251, 'ru', 'Russia (Federation)'),
(252, '-rur', 'Russian S.F.S.R.'),
(253, 'rw', 'Rwanda'),
(254, '-ry', 'Ryukyu Islands, Southern'),
(255, 'sa', 'South Africa'),
(256, '-sb', 'Svalbard'),
(257, 'scu', 'South Carolina'),
(258, 'sdu', 'South Dakota'),
(259, 'se', 'Seychelles'),
(260, 'sf', 'Sao Tome and Principe'),
(261, 'sg', 'Senegal'),
(262, 'sh', 'Spanish North Africa'),
(263, 'si', 'Singapore'),
(264, 'sj', 'Sudan'),
(265, '-sk', 'Sikkim'),
(266, 'sl', 'Sierra Leone'),
(267, 'sm', 'San Marino'),
(268, 'snc', 'Saskatchewan'),
(269, 'so', 'Somalia'),
(270, 'sp', 'Spain'),
(271, 'sq', 'Swaziland'),
(272, 'sr', 'Surinam'),
(273, 'ss', 'Western Sahara'),
(274, 'stk', 'Scotland'),
(275, 'su', 'Saudi Arabia'),
(276, '-sv', 'Swan Islands'),
(277, 'sw', 'Sweden'),
(278, 'sx', 'Namibia'),
(279, 'sy', 'Syria'),
(280, 'sz', 'Switzerland'),
(281, 'ta', 'Tajikistan'),
(282, '-tar', 'Tajik S.S.R.'),
(283, 'tc', 'Turks and Caicos Islands'),
(284, 'tg', 'Togo'),
(285, 'th', 'Thailand'),
(286, 'ti', 'Tunisia'),
(287, 'tk', 'Turkmenistan'),
(288, '-tkr', 'Turkmen S.S.R.'),
(289, 'tl', 'Tokelau'),
(290, 'tnu', 'Tennessee'),
(291, 'to', 'Tonga'),
(292, 'tr', 'Trinidad and Tobago'),
(293, 'ts', 'United Arab Emirates'),
(294, '-tt', 'Trust Territory of the Pacific Islands'),
(295, 'tu', 'Turkey'),
(296, 'tv', 'Tuvalu'),
(297, 'txu', 'Texas'),
(298, 'tz', 'Tanzania'),
(299, 'ua', 'Egypt'),
(300, 'uc', 'United States Misc. Caribbean Islands'),
(301, 'ug', 'Uganda'),
(302, '-ui', 'United Kingdom Misc. Islands'),
(303, 'uik', 'United Kingdom Misc. Islands'),
(304, '-uk', 'United Kingdom'),
(305, 'un', 'Ukraine'),
(306, '-unr', 'Ukraine'),
(307, 'up', 'United States Misc. Pacific Islands'),
(308, '-ur', 'Soviet Union'),
(309, '-us', 'United States'),
(310, 'utu', 'Utah'),
(311, 'uv', 'Burkina Faso'),
(312, 'uy', 'Uruguay'),
(313, 'uz', 'Uzbekistan'),
(314, '-uzr', 'Uzbek S.S.R.'),
(315, 'vau', 'Virginia'),
(316, 'vb', 'British Virgin Islands'),
(317, 'vc', 'Vatican City'),
(318, 've', 'Venezuela'),
(319, 'vi', 'Virgin Islands of the United States'),
(320, 'vm', 'Vietnam'),
(321, '-vn', 'Vietnam, North'),
(322, 'vp', 'Various places'),
(323, '-vs', 'Vietnam, South'),
(324, 'vtu', 'Vermont'),
(325, 'wau', 'Washington (State)'),
(326, '-wb', 'West Berlin'),
(327, 'wf', 'Wallis and Futuna'),
(328, 'wiu', 'Wisconsin'),
(329, 'wj', 'West Bank of the Jordan River'),
(330, 'wk', 'Wake Island'),
(331, 'wlk', 'Wales'),
(332, 'ws', 'Samoa'),
(333, 'wvu', 'West Virginia'),
(334, 'wyu', 'Wyoming'),
(335, 'xa', 'Christmas Island (Indian Ocean)'),
(336, 'xb', 'Cocos (Keeling)Islands'),
(337, 'xc', 'Maldives'),
(338, 'xd', 'Saint Kitts-Nevis'),
(339, 'xe', 'Marshall Islands'),
(340, 'xf', 'Midway Islands'),
(341, 'xh', 'Niue'),
(342, '-xi', 'Saint Kitts-Nevis-Anguilla'),
(343, 'xj', 'Saint Helena'),
(344, 'xk', 'Saint Lucia'),
(345, 'xl', 'Saint Pierre and Miquelon'),
(346, 'xm', 'Saint Vincent and the Grenadines'),
(347, 'xn', 'Macedonia'),
(348, 'xo', 'Slovakia'),
(349, 'xp', 'Spratly Island'),
(350, 'xr', 'Czech Republic'),
(351, 'xs', 'South Georgia and the South Sandwich Islands'),
(352, 'xv', 'Slovenia'),
(353, 'xx', 'No place, unknown, or undetermined'),
(354, 'xxc', 'Canada'),
(355, 'xxk', 'United Kingdom'),
(356, '-xxr', 'Soviet Union'),
(357, 'xxu', 'United States'),
(358, 'ye', 'Yemen'),
(359, 'ykc', 'Yukon Territory'),
(360, '-ys', 'Yemen (People’s Democratic Republic)'),
(361, 'yu', 'Serbia and Montenegro'),
(362, 'za', 'Zambia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dlb_tcor`
--

CREATE TABLE `dlb_tcor` (
  `id` int(11) NOT NULL,
  `texto` varchar(200) DEFAULT NULL,
  `obra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dlb_tcor`
--

INSERT INTO `dlb_tcor` (`id`, `texto`, `obra`) VALUES
(60, '', 41),
(61, '', 42),
(62, '', 43),
(63, '', 44),
(64, '', 45),
(65, '', 46),
(66, '', 47),
(67, '', 48),
(68, '', 49),
(69, '', 50),
(70, '', 51),
(71, '', 52),
(72, '', 53),
(73, '', 54),
(74, '', 55),
(75, '', 56),
(76, '', 57),
(78, '', 59),
(79, '', 60),
(80, '', 61),
(81, '', 62),
(82, '', 63),
(83, '', 64),
(84, '', 65),
(85, '', 66),
(86, '', 67),
(87, '', 68);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dlb_tgeo`
--

CREATE TABLE `dlb_tgeo` (
  `id` int(11) NOT NULL,
  `texto` varchar(200) DEFAULT NULL,
  `obra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dlb_tgeo`
--

INSERT INTO `dlb_tgeo` (`id`, `texto`, `obra`) VALUES
(16, 'CHILE', 19),
(18, 'CHILE', 20),
(30, 'MEXICO', 32),
(39, '', 41),
(40, '', 42),
(41, '', 43),
(42, '', 44),
(43, '', 45),
(44, '', 46),
(45, '', 47),
(46, '', 48),
(47, '', 49),
(48, '', 50),
(49, '', 51),
(50, '', 52),
(51, '', 53),
(52, '', 54),
(53, '', 55),
(54, '', 56),
(55, '', 57),
(57, '', 59),
(58, '', 60),
(59, '', 61),
(60, '', 62),
(61, '', 63),
(62, '', 64),
(63, '', 65),
(64, '', 66),
(65, '', 67),
(66, '', 68);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dlb_tper`
--

CREATE TABLE `dlb_tper` (
  `id` int(11) NOT NULL,
  `texto` varchar(200) DEFAULT NULL,
  `obra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dlb_tper`
--

INSERT INTO `dlb_tper` (`id`, `texto`, `obra`) VALUES
(51, '', 41),
(52, '', 42),
(53, '', 43),
(54, '', 44),
(55, '', 45),
(56, '', 46),
(57, '', 47),
(58, '', 48),
(59, '', 49),
(60, '', 50),
(61, '', 51),
(62, '', 52),
(63, '', 53),
(64, '', 54),
(65, '', 55),
(66, '', 56),
(67, '', 57),
(69, '', 59),
(70, '', 60),
(71, '', 61),
(72, '', 62),
(73, '', 63),
(74, '', 64),
(75, '', 65),
(76, '', 66),
(77, '', 67),
(78, '', 68);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dlb_tprop`
--

CREATE TABLE `dlb_tprop` (
  `id` int(11) NOT NULL,
  `texto` varchar(200) DEFAULT NULL,
  `obra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dlb_tprop`
--

INSERT INTO `dlb_tprop` (`id`, `texto`, `obra`) VALUES
(44, 'HISTORIA', 19),
(45, 'BIBLIOTECAS PUBLICAS', 19),
(46, 'ACCESO A LA INFORMACION', 19),
(48, 'HISTORIA', 20),
(49, 'BIBLIOTECAS PUBLICAS', 20),
(50, 'ACCESO A LA INFORMACION', 20),
(51, 'PLANIFICACIÓN ESTRATÉGICA', 21),
(52, 'GESTION DE LA INFORMACION', 21),
(53, 'INDICADORES DE EFICIENCIA', 21),
(54, 'GESTION DE LA INFORMACION', 22),
(55, 'BIBLIOTECAS', 22),
(56, 'COLECCION', 22),
(57, 'TEORÍA DE LA BIBLIOTECOLOGIA', 23),
(58, 'CONOCIMIENTO', 23),
(59, 'CIENCIA BIBLIOTECOLOGICA', 23),
(60, 'CIENCIA DE LA INFORMACION', 24),
(61, 'EPISTEMOLOGIA', 24),
(62, 'TEORIA DE LA BIBLIOTECOLOGIA', 24),
(63, 'CONOCIMIENTO', 24),
(64, 'ESTUDIOS DE USUARIOS', 25),
(65, 'SATISFACCION DEL USUARIO', 25),
(66, 'METODOS DE INVESTIGACION', 25),
(67, 'NECESIDADES DE INFORMACION', 25),
(68, 'INDIZACION SOCIAL', 26),
(69, 'FOLKSONOMIAS', 26),
(70, 'LENGUAJES DE INDIZACION', 26),
(71, 'RECURSOS TECNOLOGICOS', 27),
(72, 'SERVICIOS DE CONSULTA ELECTRONICA', 27),
(73, 'BIBLIOTECAS UNIVERSITARIAS', 27),
(74, 'SERVICIOS DE INFORMACION', 27),
(75, 'REGLAS DE CATALOGACION', 28),
(76, 'RDA', 28),
(77, 'MAPAS', 28),
(78, 'FORMACION DE USUARIOS', 29),
(79, 'DERECHO DE AUTOR', 29),
(80, 'CAPACITACION DE USUARIOS', 29),
(81, 'ALFABETIZACION INFORMACIONAL', 29),
(82, 'BIBLIOTECAS UNIVERSITARIAS', 30),
(83, 'SERVICIOS BIBLIOTECARIOS', 30),
(84, 'CRITERIOS DE EVALUACION', 30),
(85, 'INDICADORES DE CALIDAD', 30),
(86, 'DESCARTE', 31),
(87, 'EVALUACION', 31),
(88, 'BIBLIOTECAS UNIVERSITARIAS', 31),
(89, 'BIBLIOTECAS ACADEMICAS', 32),
(90, 'SOCIEDAD DEL CONOCIMIENTO', 32),
(91, 'RECURSOS DE INFORMACION', 32),
(92, 'FORMACION DE USUARIOS', 32),
(93, 'RECUPERACION DE INFORMACION', 33),
(94, 'CIENTIFICOS DE INFORMACION', 33),
(95, 'COMUNICACION CIENTIFICA', 33),
(96, 'PROTOCOLOS DE COMUNICACIÓN', 34),
(97, 'SISTEMAS DE BIBLIOTECAS', 34),
(98, 'SISTEMAS DE ALMACENAMIENTO Y RECUPERACION DE INFORMACION', 34),
(99, 'REPOSITORIOS DIGITALES', 34),
(100, 'SERVICIOS BIBLIOTECARIOS', 35),
(101, 'CIEGOS', 35),
(102, 'TECNOLOGIA ADAPTADA', 35),
(103, 'PROGRAMAS COMPUTACIONALES DE APLICACION BIBLIOTECARIA', 36),
(104, 'SERVICIOS BIBLIOTECARIOS', 36),
(105, 'BARRERA IDIOMATICA', 36),
(106, 'ECONOMIA DE LA INFORMACION', 37),
(107, 'GESTION DE LA INFORMACION', 37),
(108, 'POLITICAS DE INFORMACION', 37),
(109, 'GESTION DE LA INFORMACION', 38),
(110, 'RECUPERACION DE LA INFORMACION', 38),
(111, 'ACCESO A LA INFORMACION', 38),
(112, 'ACCESSO ABIERTO', 39),
(113, 'POLITICAS DE INFORMACION', 39),
(114, 'DERECHO A LA INFORMACION', 39),
(115, 'ACCESO A LA INFORMACION', 39),
(116, 'DERECHO DE AUTOR', 40),
(117, 'MULTIMEDIOS', 40),
(118, 'TECNOLOGIA DE LA INFORMACION', 40),
(119, 'SOPORTES DE INFORMACION', 40),
(120, '', 41),
(121, '', 42),
(122, '', 43),
(123, '', 44),
(124, '', 45),
(125, '', 46),
(126, '', 47),
(127, '', 48),
(128, '', 49),
(129, '', 50),
(130, '', 51),
(131, '', 52),
(132, '', 53),
(133, '', 54),
(134, '', 55),
(135, '', 56),
(136, '', 57),
(138, '', 59),
(139, '', 60),
(140, '', 61),
(141, '', 62),
(142, '', 63),
(143, '', 64),
(144, '', 65),
(145, '', 66),
(146, '', 67),
(147, '', 68);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dlb_usuarios`
--

CREATE TABLE `dlb_usuarios` (
  `id` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `usu_escuela` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dlb_usuarios`
--

INSERT INTO `dlb_usuarios` (`id`, `tipo`, `username`, `password`, `usu_escuela`) VALUES
(1, 1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 0),
(2, 2, 'lingui', 'f18de85c2fb6b6a49b73f268285bd3d065aedc8e', 1),
(3, 2, 'litera', 'fc6921d153785a7dac3dd77031c2d0ef628348b4', 2),
(6, 2, 'biblio', '0f01a8d8da92cfce1b8bfb0705e96511718407ec', 3),
(7, 2, 'filoso', '1a8b12690a64f8d2c140cafc9fee12af6f7deddb', 4),
(9, 2, 'arte', 'f5ee40a8e847e56ec34c3de92366da266450ffb3', 5),
(10, 2, 'comuni', 'f72ce6dda5303265bd9a0c8f6fb12642848a1109', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dlb_usuarios-datos`
--

CREATE TABLE `dlb_usuarios-datos` (
  `id` int(11) NOT NULL,
  `nombres` varchar(200) NOT NULL,
  `apellidos` varchar(200) NOT NULL,
  `us_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dlb_usuarios-datos`
--

INSERT INTO `dlb_usuarios-datos` (`id`, `nombres`, `apellidos`, `us_id`) VALUES
(1, 'John', 'Orrego', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dlb_autores`
--
ALTER TABLE `dlb_autores`
  ADD PRIMARY KEY (`aut_id`),
  ADD KEY `tipo` (`aut_tipo`),
  ADD KEY `aut_obra` (`aut_obra`);

--
-- Indices de la tabla `dlb_idiomas`
--
ALTER TABLE `dlb_idiomas`
  ADD PRIMARY KEY (`idi_id`);

--
-- Indices de la tabla `dlb_obras`
--
ALTER TABLE `dlb_obras`
  ADD PRIMARY KEY (`obr_id`),
  ADD KEY `idioma` (`obr_idioma`),
  ADD KEY `pais` (`obr_lugar`);

--
-- Indices de la tabla `dlb_paises`
--
ALTER TABLE `dlb_paises`
  ADD PRIMARY KEY (`pai_id`);

--
-- Indices de la tabla `dlb_tcor`
--
ALTER TABLE `dlb_tcor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `obra` (`obra`);

--
-- Indices de la tabla `dlb_tgeo`
--
ALTER TABLE `dlb_tgeo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `obra` (`obra`);

--
-- Indices de la tabla `dlb_tper`
--
ALTER TABLE `dlb_tper`
  ADD PRIMARY KEY (`id`),
  ADD KEY `obra` (`obra`);

--
-- Indices de la tabla `dlb_tprop`
--
ALTER TABLE `dlb_tprop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `obra` (`obra`);

--
-- Indices de la tabla `dlb_usuarios`
--
ALTER TABLE `dlb_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo` (`tipo`),
  ADD KEY `usu_escuela` (`usu_escuela`);

--
-- Indices de la tabla `dlb_usuarios-datos`
--
ALTER TABLE `dlb_usuarios-datos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `us_id` (`us_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dlb_autores`
--
ALTER TABLE `dlb_autores`
  MODIFY `aut_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT de la tabla `dlb_idiomas`
--
ALTER TABLE `dlb_idiomas`
  MODIFY `idi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `dlb_obras`
--
ALTER TABLE `dlb_obras`
  MODIFY `obr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT de la tabla `dlb_paises`
--
ALTER TABLE `dlb_paises`
  MODIFY `pai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;
--
-- AUTO_INCREMENT de la tabla `dlb_tcor`
--
ALTER TABLE `dlb_tcor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT de la tabla `dlb_tgeo`
--
ALTER TABLE `dlb_tgeo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT de la tabla `dlb_tper`
--
ALTER TABLE `dlb_tper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT de la tabla `dlb_tprop`
--
ALTER TABLE `dlb_tprop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT de la tabla `dlb_usuarios`
--
ALTER TABLE `dlb_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `dlb_usuarios-datos`
--
ALTER TABLE `dlb_usuarios-datos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `dlb_autores`
--
ALTER TABLE `dlb_autores`
  ADD CONSTRAINT `dlb_autores_ibfk_1` FOREIGN KEY (`aut_obra`) REFERENCES `dlb_obras` (`obr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `dlb_obras`
--
ALTER TABLE `dlb_obras`
  ADD CONSTRAINT `dlb_obras_ibfk_1` FOREIGN KEY (`obr_idioma`) REFERENCES `dlb_idiomas` (`idi_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `dlb_tcor`
--
ALTER TABLE `dlb_tcor`
  ADD CONSTRAINT `dlb_tcor_ibfk_1` FOREIGN KEY (`obra`) REFERENCES `dlb_obras` (`obr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `dlb_tgeo`
--
ALTER TABLE `dlb_tgeo`
  ADD CONSTRAINT `dlb_tgeo_ibfk_1` FOREIGN KEY (`obra`) REFERENCES `dlb_obras` (`obr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `dlb_tper`
--
ALTER TABLE `dlb_tper`
  ADD CONSTRAINT `dlb_tper_ibfk_1` FOREIGN KEY (`obra`) REFERENCES `dlb_obras` (`obr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `dlb_tprop`
--
ALTER TABLE `dlb_tprop`
  ADD CONSTRAINT `dlb_tprop_ibfk_1` FOREIGN KEY (`obra`) REFERENCES `dlb_obras` (`obr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `dlb_usuarios-datos`
--
ALTER TABLE `dlb_usuarios-datos`
  ADD CONSTRAINT `dlb_usuarios-datos_ibfk_1` FOREIGN KEY (`us_id`) REFERENCES `dlb_usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

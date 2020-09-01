-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2019 a las 10:43:58
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `starwarsbdd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id_evento` int(11) NOT NULL,
  `nombre` varchar(60) COLLATE latin1_spanish_ci NOT NULL,
  `descripcion` varchar(1500) COLLATE latin1_spanish_ci NOT NULL,
  `imgEvento` varchar(60) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id_evento`, `nombre`, `descripcion`, `imgEvento`) VALUES
(1, 'Antigua Republica', 'Se forma la antigua republica en Coruscant, un gobierno galactico que existio miles de años anteriores a las guerras clon. Con la ayuda de la Orden Jedi, la Republica se enfrento en multiples conflictos contra varios oponentes, incluidos los Sith, Mandalorianos y el Imperio Esclavista Zygerriano.<br><br>\r\nSeis mil años antes de comenzar la Guerra entre Imperio y los Rebeldes, una faccion renegada de los Jedi, se separó de la Orden, pensando que practicando e lado oscuro de la Fuerza les daria un poder superior al de los Jedi. Lo que conlleva a crear dos grupos, iniciando los cien años de oscuridad, que trajo como resultado a los que hoy en dia conocemos como los Sith. Los Sith llegaron a construir un santuario oscuro en Coruscant. Aunque finalmente esta facción renegada fue derrotada y exiliada de la antigua republica, pero se reagruparon en el planeta Moraband, sin que los Jedi supiesen nada.<br><br>\r\nLos jedi consiguieron contener la energía oscura del santuario en coruscant, construyendo encima su propio templo, a partir de entonces, la Orden Jedi llegó a asociarse estrechamente con la Antigua Republica.', 'antiguaRepublica'),
(2, 'Guerra Mandaloriana', 'Una serie de conflictos entre los mandalorianos y los Jedi tuvieron lugar, puesto que los mandalorianos no entendían el poder de los Jedi y ambas fuerzas colisionaron. Pronto los mandalorianos comenzaron a diseñar arsenal y armaduras potentes para combatirlos como respuesta, empezando así, a ganar combates contra los Jedi.<br><br>\r\nLos cruzados mandalorianos lucharon contra los Jedi durante sus cruzadas. Los mandalorianos tambien libraron una guerra contra la Antigua Republica y, durante el periodo de su caida, miembros de la Casa Vizsla reclamaron el sable oscuro, un sable de luz unico creado por Tarre Vizsla, el primer mandaloriano alguna vez incluido en la Orden Jedi, del Templo Jedi despues de que el deceso de su creador. Antes del final de la Guerra Mandaloriana-Jedi, los mandalorianos convirtieron Concordia, una luna de su planeta natal de Mandalore, en una base minera.<br><br>\r\nEl gran ultimo esfuerzo entre los Jedi y los señores de la guerra mandalorianos resulto en una gran batalla en Mandalore. Esto causo un cataclismo que chamusco la mayoria de la superficie del planeta en un desierto blanco sin vida terminando el conflicto, los Jedi emergieron victoriosos.\r\n', 'guerraMandalorians'),
(3, 'Regla de dos', 'Debido a la destruccion de los Sith a manos de la Orden Jedi durante la guerra Jedi-Sith, mil anios antes de las Guerras Clon, un humano Señor Oscuro de los sith, llamado Darth Bane, reforma a los Sith de nuevo y crea la Regla de Dos.<br><br>\r\nLa regla de dos establece que solo puede haber dos sith, un maestro y un aprendiz, en cualquier momento. Estos nuevos sith tendrán al misión de formar un complot en secreto para destruir a los jedi por completo. La vida de Bane no duraria mucho ya que mas adelante es derrotado por los Jedi, quienes creyeron de manera erronea que los sith habian sido derrotados con el.<br><br>\r\nLa venganza de Bane contra los jedi se cumplio, en el momento en que todos conocemos por las películas de Star Wars, cuando el Señor Sith Darth Sidious, canciller supremo en secreto y seguidor de la regla de dos, transformo la republica galáctica en el imperio y destruyo a la Orden Jedi.\r\n', 'darthBane'),
(4, 'Republica Galactica', 'La Antigua Republica se reorganiza para crear la Republica Galactica, una republica parlamentaria federal que comprendía miles de mundos esparcidos por toda la galaxia.<br><br>\r\nLa Republica estaba gobernada por un cuerpo legislativo de dos mil senadores, conocido como el Senado Galactico, designado para representar los intereses de sus respectivos mundos natales en el escenario galactico. El congreso fue liderado por el canciller supremo, elegido entre las filas del senado para arbitrar sesiones del congreso y representar a la Republica en su conjunto. Se establece como capital de la republica, el planeta Coruscant, una ecumenopolis planetaria ubicada en los Mundos del Ncleo, donde se encontraba la sede central del Senado.<br><br>\r\nEn la Republica moderna era una epoca de paz en toda la galaxia, el apogeo de su poder, su arte y el comercio florecieron en toda la Republica, sin conflictos aislados, resultando del mandato de la Orden Jedi como guardianes de la paz y la justicia. La Republica se decidio a ver su estandarte extendido desde los mundos centrales hasta los territorios del borde exterior, para extender la paz en toda la galaxia.\r\n', 'reorganizaRepublica'),
(5, 'Sifo-Dyas teme lo peor', 'La Republica Galactica perduraba en años de paz, sin embargo no era consciente de secretos o conflictos que la llevarian al desastre y a su destruccion.<br><br>\r\nOcho años antes de la invasion a naboo por el ejercito separatista, un caballero jedi llamado Sifo-Dyas preve un conflicto a gran escala, pero le acusan de propagador de guerra y lo expulsan del consejo jedi. Sifo-Dyas no contento con la decision del Consejo Jedi, comisiona con los kaminoanoss del planeta kamino para la creacion de un ejercito clon que ayude a la Republica en futuros conflictos.<br><br>\r\nPero por desgracia Sifo-Dyas, antes de que pudiese contactar con la Orden Jedi, fue asesinado por el sindicato Pyke, bajo las ordenes de Lord Tyrannus, antes conocido como Jedi Dooku. Dooku fue seducido por el poder del lado oscuro, convirtiendose asi en uno de los aprendices de Darth Sidious.<br><br>\r\nPor tanto el complot que todos conocemos del protocolo 66, ya venia de mucho antes, cuando Sifo-Dyas llego a ese acuerdo con los kaminoanoss, pues cada uno de esos clones, bajo la influencia Shit, tenian insertados chips de control que activarian, en cualquier momento, lo que conocemos como Orden 66. Fueron creados para acatar ordenes y protocolos.\r\n', 'ejercitoSifoDyas'),
(6, 'Guerras Clon', 'Tras la invasion de naboo por la federacion de comercio, se crean una serie de conflictos que van a desatar las Guerras Clon.<br><br>\r\nLa Orden Jedi en su afan de ayudar a la Republica, sospecha de un conflicto para asesinar a la Reina Amidala, lo que lleva a descubrir al Caballero Jedi Obi-Wan el ejercito clon de kamino que Sifo-Dyas, años atras, habia ordenado crearlo.<br><br>\r\nCon la primera batalla en Geonosis entre el ejercito de la federacion, los clones y los Jedi, da comienzo las guerras Clon, una guerra que duraria 4 años hasta la ejecucion de la orden 66 por parte de Darth Sidous. La ultima guerra antes de que la Republica sea destruida y cambiada por el Imperio Galactico.\r\n', 'guerraClon'),
(7, 'Destruccion de la Republica Galactica', 'Parece que la Republica esta dando grandes pasos en esta guerra y con contadas victorias contra el ejercito droide. Pero nada mas lejos de la realidad, toda esta guerra estaba mas que preparada y planificada por Darth Sidous. Palpatine planifico cada punto paso a paso, incluso dejandose secuestrar por la federacion a manos de grievous, pues sabia perfectamente que los clones seguian sus ordenes, pero no era el momento preciso para ejecutar la orden 66. <br><br> Antes necesitaba un nuevo aprendiz, precisamente Palpatine vio la debilidad de poder que tenia Anakin y empezo a contarle historias sobre los sith y su verdadero poder. Palpatine revelo su identidad a Anakin, que dio el aviso a sus Maestros de la Orden Jedi. <br><br> Palpatine sabia que Anakin ya era vulnerable y podria caer en el lado oscuro de la fuerza sin ninguna dificultad. Mace Windu fue a enfrentarse a Sidous, comenzando un duelo en la oficina del canciller, en la que no parecia que Sidious fuese a ganar, pero desobedeciendo las ordenes que Windu le habia dado a Anakin, este interrumpio el combate. <br><br> Intento convencer a Windu de que debia tener un juicio, que los jedi no actúan de esa manera, pero no entendia que Sidious debia ser destruido. Anakin corto el sable de luz de Windu y este indefenso fue destruido por los rayos de Sidous. A partir de entonces Sidious ejecuta la orden 66 y destruye a los Jedi y la Republica, ganándose un nuevo aprendiz, Darth Vader.', 'ordenTraicion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `ID_Personaje` int(11) NOT NULL,
  `Nombre` varchar(60) COLLATE latin1_spanish_ci NOT NULL,
  `Poder` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `Genero` char(1) COLLATE latin1_spanish_ci NOT NULL,
  `Descripcion` varchar(1000) COLLATE latin1_spanish_ci NOT NULL,
  `personajeImg` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `Planeta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`ID_Personaje`, `Nombre`, `Poder`, `Genero`, `Descripcion`, `personajeImg`, `Planeta`) VALUES
(1, 'ahsoka Tano', 'Luminoso', 'F', 'Ahsoka Tano, apodada por su Maestro como Sabionda, Chulita o Mocosa, fue una Padawan Jedi togruta que, tras las Guerras Clon, ayudó a establecer una red de células rebeldes para combatir al Imperio Galáctico. Tano fue descubierta en su planeta natal Shili por el Maestro Jedi Plo Koon, quien la llevó al Templo Jedi de Coruscant para que fuese entrenada en las artes Jedi.<br><br> Después del estallido de las Guerras Clon, el Gran Maestro Jedi Yoda asignó a la joven Tano como Padawan del Caballero Jedi Anakin Skywalker, a quien se unió durante la Batalla de Christophsis.<br><br> Mientras que Tano estaba ansiosa por probarse a sí misma, Skywalker tenía una reputación de imprudente, y ambos tuvieron un complicado inicio en su relación como maestro y aprendiz.', 'ahsokaTano', 1),
(2, 'ajunta Pall', 'Lado Oscuro', 'M', 'Ajunta Pall fue uno de los antiguos Sith que fundaron el Imperio Sith cuya capital fue Korriban después de los Cien Años de Oscuridad. A su llegada a Korriban, se convirtió en el primer Señor Oscuro de los Sith. Mucho tiempo después de su muerte, su espíritu fue redimido por el Caballero Jedi Revan durante la Guerra Civil Jedi.', 'ajuntaPall', 2),
(3, 'anakin skywalker', 'Lado Luminoso', 'M', 'Humano sensible a la Fuerza que sirvió a la República Galáctica como Caballero Jedi y más tarde al Imperio Galáctico como el Lord Sith Darth Vader.<br><br> Creído de haber sido concebido por la Fuerza, nació de Shmi Skywalker y pasó a residir en el planeta del Borde Exterior Tatooine cuando era niño, donde él y su madre fueron esclavos de la prominente señora del crimen Gardulla la Hutt hasta que pasaron a ser propiedad de un chatarrero local toydariano llamado Watto.<br><br> Un ingeniero prodigioso, Skywalker construyó al droide de protocolo C-3PO usando piezas que había recolectado para ayudar a su madre. Poco después, durante la Crisis de Naboo, fue descubierto por el Maestro Jedi Qui-Gon Jinn y su aprendiz, Obi-Wan Kenobi, quienes lo liberaron de la esclavitud. <br><br> Llevándolo ante la Orden Jedi, Jinn presentó a Skywalker como el Elegido de la Profecía Jedi, destinado a destruir a los Sith y traer el equlibrio.', 'anakin', 3),
(4, 'bastila shan', 'Luminoso', 'F', 'Shan fue una Caballero Jedi que apoyo al consejo cuando los Jedi Revan y Malak se revelaron contra la Orden Jedi. Tras las guerras mandalorianas revan y malak regresaron como Señores Sith con un nuevo imperio Sith. Tras una batalla liderada por Shan, Malak traiciono a su maestro Revan y destruyo su nave cuando fueron separados durante la batalla.\r\nShan ayudo a Revan a levantarse de su estado y lo llevo al enclave Jedi, donde volvio a retomar el lado de la luz y juntos crearon un vinculo con el que intentarian derrotar a Malak.\r\nTras intentar undir el plan de Malak, encontrando la Fragua Estelar, Shan fue capturada por el Señor Sith y atrapada, sucumbio al lado oscuro. Revan logro encontrar la Fragua Estelar y tras combatir a Bastila y hacerle volver al lado bueno, destruyo a Malak y su plan de usar la Fragua Estelar fracaso.', 'bastilaShan', 4),
(5, 'chewbacca', 'Luminoso', 'M', 'Chewbacca fue un legendario Wookie hijo de Attichitcuk, el esposo de Mallatobuck y el padre de Lumpawaroo. Chewbacca trabajo como contrabandista y ayudo a la Orden Jedi durante las guerras Clon.\r\n\r\nAyudo a Yoda a escapar de los clones cuando se ejecuta la orden 66 y tras el auge del imperio galactico, chewbacca se convirtio en el coopiloto de Han Solo, con el que llegaria a tener un vinculo muy fuerte. Era un fuerte enemigo del Imperio Galactico, pues fue uno de los guerreros que vio caer el Imperio y por desgracia quien mas adelante vio fallecer a su compañero Han Solo, a manos de su hijo, el Sith Kylo Ren.', 'chewbacca', 5),
(8, 'darth bane', 'Lado Oscuro', 'M', 'Darth Bane era un humano Señor Oscuro de los Sith y fue el único superviviente de la destrucción de los Sith a manos de la Orden Jedi durante la Guerra Jedi-Sith, mil años antes de las Guerras Clon.<br><br> Para corregir esto, Bane reformó a los Sith y creó la Regla de Dos, ordenando que sólo pudiera haber dos Sith-un Maestro y un aprendiz-en cualquier momento dado.<br><br> Estos nuevos Sith comenzarían un complot para destruir a los Jedi en secreto. Bane fue derrotado más adelante por los Jedi, que creyeron erróneamente que los Sith fueron derrotados con él.<br><br>\r\nLa venganza de Bane contra los Jedi se cumplió durante las Guerras Clon, cuando el Señor Sith Darth Sidious, secretamente Canciller Supremo Palpatine y seguidor de la Regla de Dos, transformó la República Galáctica en el Imperio Galáctico y destruyó la Orden Jedi. Sin embargo, la victoria fue de corta duración, cuando el redimido Caballero Jedi Anakin Skywalker derrotó a los Sith veintitrés años más tarde.', 'darthBane', 16),
(9, 'darth malak', 'Lado Oscuro', 'M', 'Darth Malak fue un humano que reinó como Señor Oscuro Sith durante la Guerra Civil Jedi. Nació en el planeta Quelii en los territorios del Borde Exterior. cuando los mandalonarios atacaron su planeta natal huyó a la Repùblica y entro en la Orden Jedi.<br><br> Conoció a su amigo más cercano, un Jedi llamado Revan, pero no estaban en acuerdo con la Orden, por tanto solo realizaron misiones de exploración en el Borde Exterior.<br><br> Alek tomó el nombre de Malak para evitar una orden de arresto firmada por el Consejo y se convirtio en un militar formidable. Revan y Malak acabaron derrotando a los mandalorianos y persiguieron a los rezagados a regiones desconocidas. <br><br> Sin embargo, se toparon con el Emperador Sith de los remanentes reconstituidos del antiguo imperio Sith, bajo su tutela se convirtieron en lores Sith.<br><br> Darth Malak y Darth Revan fueron enviados a una mision para encontrar la Fragua Estelar, una antigua estación espacial que derrotaría a la Orden Jedi.', 'darthMalak', 6),
(10, 'darth maul', 'Lado Oscuro', 'M', 'Darth Maul fue un zabrak dathomiriano y Lord Sith que vivió durante los últimos años de la República Galáctica. Nacido de la madre Talzin y se crio como hermano de la noche, antes de ser tomado por Darth Sidous como su aprendíz. Durante la invasión a Naboo persiguió a Padme Amidala para asesinarla, como todos sabemos, acabo con la vida del Maestro Qui-Gon Jinn y Maul cayó contra la espada de Obi-Wan.<br><br> Mientras todos creían que Maul pereció en Naboo, pero sobrevivió exiliado en el Borde Exterior. Maul fue localizado por su hermano Savage Opress durante las guerras Clon, quien lo llevo a la madre Talzin, quien le dio unas piernas robóticas y Maul restauró su mente. Maul y su hermano crearon un ejercito conocido como Sombra Colectiva para destruir a Darth Sidious y declararse ambos como los Señores Sith, sin embargo, el asunto no salió bien, pues Sidious acabo con su hermano y tomo a Maul bajo su custodia con la esperanza de usarlo para llegar hasta Talzin.', 'darthMaul', 7),
(11, 'revan', 'Dos lados', 'M', 'Revan fue un caballero Jedi que tras acabar con el ejercito mandaloriano junto a su fiel amigo Malak. Sin embargo ambos calleron en el lado oscuro por sucumbir al poder de un Emperador Sith, que les encomendó la misión de encontrar la Fragua Estelar.<br><br> Revan paso a ser señor Oscuro y Malak su aprendiz, pero tenían diferencia de opiniones y Malak le traicionó destrozando su nave cuando sufrían un ataque de la República. Revan fue rescatado por Bastila y reconvertido al lado luminoso de nuevo y como un jedi redimido fue a por Malak y acabo con su vida.<br><br> Revan y Bastila formaron una familia, al poco tiempo Revan decidió marchar y destruir al emperador Sith que le hizo sucumbir, pero fracasó y Revan desapareció de la galaxia. Su legado quedó en un manuscrito que Darth Bane leyó y usó las enseñanzas de Revan para su filosofía Regla de Dos.', 'darthRevan', 16),
(12, 'darth vader', 'Lado Oscuro', 'M', 'Darth Vader, así fue bautizado Anakin Skywalker por Darth Sidious después de ejecutar la orden 66. Tras asesinar a sangre fría a todos los Jedi, Sidious le ordenó matar a los líderes separatistas y acabar con la federación de comercio. Vader quedó muy malherido sin extremidades tras luchar con su anterior maestro Obi-Wan, por lo que Sidious le puso una armadura de soporte vital y una mascara que le permitiría respirar y así es como se crea un imperio galáctico.<br><br> Sin embargo, Luke Skywalker su hijo consiguió redimir a Vader en la Batalla de Endor, destruyendo la segunda estrella de la muerte, Luke se negó a entrar en el lado oscuro y no quiso matar a su padre. Sidious lanzó sus rayos contra Luke y ante esa situación, Vader abandonó el lado oscuro y se sacrificó para matar al emperador, cumpliendo así la profecía del elegido y haciendo las paces con su hijo, Anakin se convirtió en uno con la fuerza.', 'darthVader', 3),
(13, 'dooku', 'Lado Oscuro', 'M', 'Dooku fue un caballero Jedi que viendo la corrupción del Gobierno, cayó en el lado oscuro y Sidious le acogió como su aprendiz. Dooku y Sidious comenzaron su complot para destruir a los Jedi, pues Dooku estuvo involucrado en la creación de los soldados clon con la plantilla de Jango Fett y el chip inhibidor que contenía el protocolo 66.<br><br> El resultado de esta maquinación trajo consigo las Guerras Clon 22 años antes de la destrucción de la primera estrella de la Muerte. <br><br>Dooku dirigió el ejercito de droides de la confederación, incluso entrenó a sus propios aprendices para derrocar a Sidious y traicionarle, pero la vida de Dooku acabó en la nave separatista Mano Invisible a manos de Anakin, quien decapitó a Dooku bajo la orden de Palpatine.', 'dooku', 8),
(14, 'darth sidious', 'Lado Oscuro', 'M', 'Humano Señor Oscuro de los Sith que sirvió como canciller Supremo y fue el último Señor Oscuro de los Sith reinante bajo la Regla de Dos de Darth Bane. Sidious fue entrenado por su maestro Darth Plagueis a quien asesinó y tomó a Maul como aprendiz. <br><br>Trece años antes de su ascenso imperial, planificó la invasión de naboo utilizando la crisis política como pretexto para ser elegido Senador. Maul fue derrotado y tomo Dooku como aprendiz, provocando una guerra civil galáctica.<br><br> Palpatine creó el Gran Ejèrcito de la República para combatir en las Guerras Clon, evidentemente con la influencia Sith, pues cada clon llevaba el chip con el protocolo para eliminar a los Jedi. Sidious ejecutó la orden 66 y declaró a los Jedi traidores, convirtiendo a Anakin Skywalker en su nuevo aprendiz Vader. Sidious sufrió la destrucción de la primera estrella de la muerte a manos de los rebeldes y convenció a Vader para que trajera a su hijo Luke hasta el, sin embargo, eso fue su perdición.', 'emperadorSidious', 9),
(15, 'general grievous', 'Lado Oscuro', 'R', 'Grievous fue un general cíborg Kaleesh que ostentaba el título de Comandante Supremo del Ejército Droide durante las Guerras Clon. Reclutado por Dooku, dirigió el ejército separatista y se entrenó en el combate con Sables de Luz.<br><br> Grievus desarrolló una rivalidad con Obi-Wan y derrotó a muchos generales Jedi, quedándose como trofeo sus sables de luz. Grievus viajó a Dathomir donde luchó con las hermanas de la Noche y se enfrentó al sith caido Darth Maul, que seguía con su obsesión de matar a Sidious y sustituirle.<br><br> Sin embargo Grievus derrotó a las hermanas de la Noche y Maul disolviendo así su pequeña Sombra Colectiva. Grievus secuestró a Palpatine y lo llevo a la nave de Dooku durante las Guerras Clon, hasta que Anakin y Obi-Wan pudieron rescatarlo.<br><br> Palpatine filtró la ubicación de Grievus en Pau y enviaron a Obi-Wan en su búsqueda, para acabar con su vida. Después de una persecución por la ciudad minera y una pelea en una plataforma de aterrizaje, kenobi uso el', 'grievous', 10),
(16, 'jabba', 'Lado Oscuro', 'M', 'Jabba fue un Gàngster Hutt Señor del Crimen que residía en el planeta Tatooine, controlaba la piratería y la esclavitud que generaba la mayor parte de riqueza del planeta. Durante las guerras Clon, la influencia de Jabba fue buscada por la República y el ejercito droide, cuando Dotta, el hijo de Jabba, fue secuestrado, declaró que daría su apoyo a quién lo rescatase.<br><br> Tras saber que el hijo fue secuestrado por el ejército de la Federación, éste apoyó a la República. Tras las Gueras Clon y con el auge del Imperio, Jabba preservo su base de poder, gracias los negocios entre el imperio y Jabba, lo que les permitía salir airosos de la represión del Imperio.<br><br> Jabba ofreció una recompensa por el contrabandista Han Solo y Bobba Fett se lo entregó, como un regalo de Darth Vader. ESta fue su última decisión, pues cuando los amigos de Han le rescatarón junto con su amigo Luke Skywalker, acabarón juntos con Jabba y los Hutts', 'jabba', 3),
(17, 'jango fett', 'Lado Oscuro', 'M', 'Jango Fett era un cazarrecompensas humano ampliamente considerado como el mejor en la galaxia en los años anteriores a las Guerras Clon. Fett llevaba un conjunto de armadura mandaloriana como cazarrecompensas. Fett fue reclutado por el Lord Sith Darth Tyranus para ser la plantilla genética de los soldados clon para el Gran Ejército de la República. <br><br> A diferencia de Fett, estos soldados carecían de gran parte de su independencia, ya que fueron diseñados para ser completamente leales a la República Galáctica y a su causa. Fett solo tenía una solicitud para los Kaminoanos: un único clon inalterado al que criaría como su propio hijo, Boba Fett.<br><br> Fett realizó intentos de asesinato contra la Senadora Padmé Amidala en nombre del ejército de la Confederación. Cuando Obi-Wan Kenobi llegó a Kamino a investigar, Fett huyó del planeta y se unió al Conde Dooku en Geonosis. La vida de Fett acabó decapitado por el sable de Mace Windu en la batalla de Geonosis. Pero su legado, siguió vi', 'jango', 12),
(19, 'mace windu', 'Lado Luminoso', 'M', 'Gran Maestro humano de la Orden Jedi que se convirtió en un líder electo. Durante las Guerras Clon, Mace Windu sirvió a la Orden y a la República, tanto en el campo de batalla como aconsejando a Palpatine.<br><br> Con el tiempo Windu sospechaba más de Palpatine, por su poder dictatorial y sentía el aumento de poder del lado Oscuro. Efectivamente sus sospechas se hicieron realidad cuando Anakin le informó sobre la identidad de Palpatine. <br><br> Mace Windu pretendía juzgar a Sidious por sus crímenes contra la República y su afán de entablar una Guerra Civil para reinar sobre todo. Sabiendo el poder que tenía y como convencería a los jueces, Mace Windu decidió ejecutarle ahí mismo, pero Anakin le interrumpió y tras un cruce de palabras, éste no contento con la decisión, tiro su sable de luz y permitió que Sidious lo asesinara.', 'maceWindu', 13),
(20, 'maestro yoda', 'Lado Luminoso', 'M', 'Yoda fue un Gran Maestro Jedi que impartió sus enseñanzas en la Orden Jedi. Durante las Guerras Clon se convirtió en uno de los Generales Jedi más importantes.<br><br> Tras una de las batallas, Qui-Gon, asesinado por el mismo Maul, se le apareció en conciencia y le explicó que era posible mantener la consciencia tras la muerte.<br><br> Yoda emprendió un viaje espiritual, donde se sometió a una serie de pruebas y le fue concedido ese antiguo poder. Durante la batalla de Kashyyk y tras la ejecución de la Orden 66, Yoda logró escapar hacia Coruscant y luchar contra Sidious,<br><br> Tras el combate se vió obligado a huír y junto con Obi-Wan, ser unos de los Jedis exiliados. Tras esto, Yoda y Obi-Wan escondieron en secreto a Leia y Luke, los hijos de Vader, quienes en un futuro, llevarían la victoria contra el imperio, pues ambos eran uno con la fuerza, pero solo Luke siguió sus caminos, ya que Yoda decidió instruirle.', 'maestroYoda', 16),
(21, 'maz kanata', 'Lado Luminoso', 'F', 'Maz Kanata fue una mujer pirata que ha vivido por más de mil años. 30 años tras la destrucción de la primera estrella de la muerte, era propietaria de un castillo que era sede de viajeros, contrabandistas y otras gentes.<br><br> De una forma misteriosa obtuvo el sable de luz azul anteriormente propiedad de Anakin Skywalker y Luke Skywalker. Kanata era habilidosa en el uso de la Fuerza, siendo capaz de derribar el techo de su castillo para derrotar a los enemigos y podía sentir \"el potencial de la Fuerza\" en otros.<br><br> Cuando Han Solo visitó Takodana junto con Rey y Finn, afirmó que Kanata había mantenido su castillo \"en el negocio\" durante mil años. Ella se unió a la resistencia después de la destrucción de su castillo a manos de la Primera Orden. Ella estaba encariñada con el wookiee Chewbacca, a quien describió en tono de broma como su \"novio\".', 'mazKanata', 14),
(22, 'obi-wan kenobi', 'Lado Luminoso', 'M', 'Obi-Wan Kenobi fue uno de los Caballeros Jedi más influyente en la historia de Star Wars. Desde que comenzó como padawan de Qui-Gon y tras la muerte de su Maestro, se convirtió en Maestro de Anakin. Enseño las artes Jedi al pequeño Anakin hasta que se convirtió en Caballero Jedi y a Obi-Wan le concedieron el título de Maestro.<br><br> Tras las guerras clon Obi-Wan tuvo que combatir a Anakin, cuando sucumbiò al lado oscuro y se convirtió en Darth Vader. Desde entonces Obi-Wan vivió exiliado tras las sombras en Tatooine, donde protegería al hijo secreto de Vader, Luke.<br><br> Cuando cumplió la edad suficiente, Luke llegó hasta kenobi a través de un pequeño droide llamado R2D2 que traía un mensaje de Leia Organna, pidiendo ayuda en la lucha contra el Imperio. A partir de entonces Obi-Wan le entrenó en los caminos de la fuerza. Tras una misión de rescate en la estrella de la muerte, Obi-Wan fue destruido por Darh Vader, su antiguo alumno durante la República Galáctica.', 'obiWan', 15),
(23, 'padme amidala', 'Lado Luminoso', 'F', 'Padme Amidala fue una política durante la República Galáctica , elegida Reina de Naboo, cuando solo tenía 14 años. Tuvo que lidiar contra la confederación y su ejercito de droides cuando invadieron Naboo. <br><br> Desde entonces ya sentía algo especial con el pequeño Anakin. Leia luchó en la batalla de Geonosis que desatarón las Guerras Clon, a partir de entonces se convirtió en una miembro destacada del Comité Leal que intentó lograr la paz entre la República y el ejército Separatista. Se enamoró y casó en secreto con Anakin y antes del final de la Guerra Clon, estaba embarazada de gemelos, sin embargo y para su pesar, Anakin sucumbió al lado oscuro. <br><br> Amidala le pidió que abandonase el lado oscuro, Vader desquiciado creyó que le había traicionado y la atacó. Gracias a Obi-Wan, Padme pudo dar a luz a Leia y Luke, antes de morir. Sus últimas palabras fueron, aun existe el bien en Anakin Skywalker. Palabras que se harían realidad caundo Luke llevaría a Vader al camino de la luz.', 'padmeAmidala', 9),
(25, 'shaa', 'Lado Oscuro', 'F', 'Shaa fue una mujer Sith que utilizaba dos sables de luz rojos. Después de escuchar que un escultor sensible a la fuerza llamado Momin que había sido encarcelado pos su gente, fue a liberarlo y lo convirtió en su aprendiz. Shaa murió poco tiempo después asesinada por su aprendiz.', 'shaa', 16),
(27, 'tarre viszla', 'Lado Luminoso', 'M', 'Tarre Vizsla fue un humano que fue el primer Mandaloriano en ser incluido en la Orden Jedi. Según la leyenda, creó el sable oscuro, un sable de luz único de color negro y aplanado que sería el símbolo del Mand\'alor—único líder del pueblo Mandaloriano. Después del paso de Vizsla, el sable fue guardado en el Templo Jedi hasta que fue robado por miembros de la Casa Vizsla durante la caída de la Antigua República en el 1.032 ABY.', 'tarreViszla', 16),
(31, 'lord momin', 'Lado Oscuro', 'M', 'Momin fue un antiguo Lord Sith y escultor. A diferencia de otros Sith, él aspiraba a hacer su legado a través de sus creaciones. Sus ideas lo apresaron hasta que un Sith llamado Shaa fue a rescatarlo. Los demás Sith, sin embargo, consideraban su herético y suprimido camino su historia.<br><br> Para el tiempo de la Era del Imperio, todos sus trabajos se creían perdidos. Darth Sidious, el gobernante del Imperio Galáctico, poseía una nave que contenía numerosos artefactos Sith. Korin Pers, una experta en antiguedades, le dijo a Lando Calrissian que creía que los artefactos fueron creados por Lord Momin.', 'lordMomin', 16),
(37, 'rur', 'Lado Luminoso', 'M', 'Jedi humano sensible con la fuerza que dirigió el Ordu Aspectu, un grupo de Jedis que buscaban la inmortalidad.', 'rur', 16),
(39, 'sifo-dyas', 'Lado Luminoso', 'M', 'Maestro Jedi que encargó la creación de los Clones en Kamino. Este Jedi recivió el poder de previsión y se ganó un asiento en el Alto Consejo Jedi antes de la invasión de Naboo. Sifo-Dyas previó una próxima guerra que devastaría toda la galaxia, sin embargo sus compañeros Jedi rechazaron sus ideas y lo expulsaron del consejo. <br><br> Sifo-Dyas siguió su camino y contacto con los kaminoanos, sin saber que cayó en la vista de los Sith, que se dispusierón a asumir el proyecto de clonación. Durante la invasión de Naboo  Sifo-Dyas fue mandado por el canciller Valorum para negociaciones clandestinas con el Sindicato Pyke. Sin embargo, el Lord Sith Darth Tyranus contrató a los Pykes para atacar la lanzadera T-6 de Sifo-Dyas, y derribaron su nave estelar sobre la luna de Oba Diah.', 'sifoDyas', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pjseventos`
--

CREATE TABLE `pjseventos` (
  `personaje` int(11) NOT NULL,
  `evento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `pjseventos`
--

INSERT INTO `pjseventos` (`personaje`, `evento`) VALUES
(1, 6),
(1, 7),
(2, 1),
(3, 4),
(3, 6),
(4, 2),
(5, 4),
(5, 6),
(8, 2),
(8, 3),
(9, 2),
(10, 4),
(10, 6),
(11, 2),
(11, 3),
(12, 7),
(13, 5),
(13, 6),
(14, 3),
(14, 5),
(14, 6),
(14, 7),
(15, 6),
(16, 4),
(16, 6),
(17, 5),
(17, 6),
(19, 6),
(19, 7),
(20, 6),
(20, 7),
(21, 4),
(22, 4),
(22, 6),
(22, 7),
(23, 4),
(23, 6),
(23, 7),
(25, 1),
(27, 2),
(31, 1),
(37, 1),
(39, 4),
(39, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planetas`
--

CREATE TABLE `planetas` (
  `ID_Planeta` int(11) NOT NULL,
  `Nombre` varchar(80) COLLATE latin1_spanish_ci NOT NULL,
  `Habitantes` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `Descripcion` varchar(250) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `planetas`
--

INSERT INTO `planetas` (`ID_Planeta`, `Nombre`, `Habitantes`, `Descripcion`) VALUES
(1, 'Shili', 'Togrutas', 'Planeta del Sistema Shili y coordenadas L-8\r\ncon un terreno de praderas coloridas.'),
(2, 'Korriban', 'tuk\'atas', 'Planeta que se encuentra en el espacio Sith en el borde exterior. Tiene un clima frio y seco, tiene un terreno de desiertos montañosos.'),
(3, 'Tatooine', 'Jawas, Incursores Tusken', 'Un Planeta desertico del sector Akanis en el borde exterior.'),
(4, 'Talravin', 'Humanos', 'Uno de los mundos del Nucleo.'),
(5, 'Kashyyyk', 'Wookies', 'Un planeta abundante en Bosque con un clima Temperado del Sector Mytaranor en el Borde Medio del espacio.'),
(6, 'Quelii', 'Humanos', 'Planeta situado en el sector Quelii del Borde exterior.'),
(7, 'Dathomir', 'Dathomirianos', 'Planeta del sector Quelii en el Borde Medio con una atmosfera respirable. El terreno esta formado por montanas, bosques y pantanos.'),
(8, 'Serenno', 'Humanos', 'Planeta del Borde Exterior cuyo terreno esta formado por bosques, montañas y llanuras.'),
(9, 'Naboo', 'Ancianos, Gungans', 'Planeta del sector Chommell, cuyo terreno esta formado por colinas, pantanos, llanuras, ciudades y montañas.'),
(10, 'Kalee', 'Kaleesh', 'Desconocido.'),
(11, 'Nal Hutta', 'Hutt', 'Planeta del Borde Exterior con un clima calido, cuyo terreno son pantanos.'),
(12, 'Concord Dawn', 'Humanos', 'Planeta del Borde Exterior en el sector Mandalore.'),
(13, 'Haruun Kal', 'Humanos', 'Planeta en el Borde Medio, cuyo terreno son volcanes, montañas, junglas y mesetas. Atmosfera respirable con gases venenosos y un clima calido.'),
(14, 'Takodana', 'Desconocida', 'Planeta del Borde Medio.'),
(15, 'Stewjon', 'Desconocido.', 'Desconocido.'),
(16, 'Desconocido.', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_Usuario` int(11) NOT NULL,
  `Nombre` varchar(60) COLLATE latin1_spanish_ci NOT NULL,
  `Email` varchar(60) COLLATE latin1_spanish_ci NOT NULL,
  `Pass` varchar(20) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID_Usuario`, `Nombre`, `Email`, `Pass`) VALUES
(1, 'Joshua', 'jox@gmail.com', '12345'),
(2, 'Alejandro', 'alex@gmail.com', '12345');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id_evento`);

--
-- Indices de la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`ID_Personaje`),
  ADD KEY `Planeta` (`Planeta`);

--
-- Indices de la tabla `pjseventos`
--
ALTER TABLE `pjseventos`
  ADD KEY `personaje` (`personaje`,`evento`),
  ADD KEY `evento` (`evento`);

--
-- Indices de la tabla `planetas`
--
ALTER TABLE `planetas`
  ADD PRIMARY KEY (`ID_Planeta`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `personajes`
--
ALTER TABLE `personajes`
  MODIFY `ID_Personaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `planetas`
--
ALTER TABLE `planetas`
  MODIFY `ID_Planeta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD CONSTRAINT `personajes_ibfk_1` FOREIGN KEY (`Planeta`) REFERENCES `planetas` (`ID_Planeta`);

--
-- Filtros para la tabla `pjseventos`
--
ALTER TABLE `pjseventos`
  ADD CONSTRAINT `pjseventos_ibfk_1` FOREIGN KEY (`evento`) REFERENCES `eventos` (`id_evento`),
  ADD CONSTRAINT `pjseventos_ibfk_2` FOREIGN KEY (`personaje`) REFERENCES `personajes` (`ID_Personaje`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

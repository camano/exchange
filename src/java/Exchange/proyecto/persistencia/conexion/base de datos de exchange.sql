/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.30-MariaDB : Database - exchange
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`exchange` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `exchange`;

/*Table structure for table `acuerdo_cita` */

DROP TABLE IF EXISTS `acuerdo_cita`;

CREATE TABLE `acuerdo_cita` (
  `idacuerdo_cita` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time(6) NOT NULL,
  `lugar` varchar(150) NOT NULL,
  `confirmacion` varchar(50) NOT NULL,
  `calificacion` varchar(150) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `comentario` varchar(100) NOT NULL,
  `solicitud_intercambio_idsolicitud_intercambio` int(11) NOT NULL,
  PRIMARY KEY (`idacuerdo_cita`),
  KEY `fk_acuerdo_cita_solicitud_intercambio1_idx` (`solicitud_intercambio_idsolicitud_intercambio`),
  CONSTRAINT `fk_acuerdo_cita_solicitud_intercambio1` FOREIGN KEY (`solicitud_intercambio_idsolicitud_intercambio`) REFERENCES `solicitud_intercambio` (`idsolicitud_intercambio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `acuerdo_cita` */

/*Table structure for table `busqueda` */

DROP TABLE IF EXISTS `busqueda`;

CREATE TABLE `busqueda` (
  `idbusqueda` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(50) NOT NULL,
  `palabra_clave` varchar(150) NOT NULL,
  `precio` varchar(50) NOT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  PRIMARY KEY (`idbusqueda`),
  KEY `fk_busqueda_usuario1_idx` (`usuario_idusuario`),
  CONSTRAINT `fk_busqueda_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `busqueda` */

/*Table structure for table `categoria` */

DROP TABLE IF EXISTS `categoria`;

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(150) NOT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `categoria` */

insert  into `categoria`(`idcategoria`,`categoria`) values (1,'Tecnologia'),(2,'vehiculos'),(5,'Video juegos'),(6,'Deportes'),(7,'Hogar'),(8,'Joyeria'),(9,'Maquinaria'),(10,'Ropa'),(11,'Muebles');

/*Table structure for table `ciudad` */

DROP TABLE IF EXISTS `ciudad`;

CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL AUTO_INCREMENT,
  `ciudad` varchar(100) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `departamento_id_departamento` int(11) NOT NULL,
  PRIMARY KEY (`id_ciudad`),
  KEY `fk_ciudad_departamento1_idx` (`departamento_id_departamento`),
  CONSTRAINT `fk_ciudad_departamento1` FOREIGN KEY (`departamento_id_departamento`) REFERENCES `departamento` (`id_departamento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=99774 DEFAULT CHARSET=utf8;

/*Data for the table `ciudad` */

insert  into `ciudad`(`id_ciudad`,`ciudad`,`direccion`,`departamento_id_departamento`) values (1,'Bogota','',1),(5001,'MEDELLIN ','',5),(5002,'ABEJORRAL ','',5),(5004,'ABRIAQUI ','',5),(5021,'ALEJANDRIA ','',5),(5030,'AMAGA ','',5),(5031,'AMALFI ','',5),(5034,'ANDES ','',5),(5036,'ANGELOPOLIS ','',5),(5038,'ANGOSTURA ','',5),(5040,'ANORI ','',5),(5042,'SANTAFE DE ANTIOQUIA ','',5),(5044,'ANZA ','',5),(5045,'APARTADO ','',5),(5051,'ARBOLETES ','',5),(5055,'ARGELIA ','',5),(5059,'ARMENIA ','',5),(5079,'BARBOSA ','',5),(5086,'BELMIRA ','',5),(5088,'BELLO ','',5),(5091,'BETANIA ','',5),(5093,'BETULIA ','',5),(5101,'CIUDAD BOLIVAR ','',5),(5107,'BRICEÑO ','',5),(5113,'BURITICA ','',5),(5120,'CACERES ','',5),(5125,'CAICEDO ','',5),(5129,'CALDAS ','',5),(5134,'CAMPAMENTO ','',5),(5138,'CAÑASGORDAS ','',5),(5142,'CARACOLI ','',5),(5145,'CARAMANTA ','',5),(5147,'CAREPA ','',5),(5148,'EL CARMEN DE VIBORAL ','',5),(5150,'CAROLINA ','',5),(5154,'CAUCASIA ','',5),(5172,'CHIGORODO ','',5),(5190,'CISNEROS ','',5),(5197,'COCORNA ','',5),(5206,'CONCEPCION ','',5),(5209,'CONCORDIA ','',5),(5212,'COPACABANA ','',5),(5234,'DABEIBA ','',5),(5237,'DON MATIAS ','',5),(5240,'EBEJICO ','',5),(5250,'EL BAGRE ','',5),(5264,'ENTRERRIOS ','',5),(5266,'ENVIGADO ','',5),(5282,'FREDONIA ','',5),(5284,'FRONTINO ','',5),(5306,'GIRALDO ','',5),(5308,'GIRARDOTA ','',5),(5310,'GOMEZ PLATA ','',5),(5313,'GRANADA ','',5),(5315,'GUADALUPE ','',5),(5318,'GUARNE ','',5),(5321,'GUATAPE ','',5),(5347,'HELICONIA ','',5),(5353,'HISPANIA ','',5),(5360,'ITAGUI ','',5),(5361,'ITUANGO ','',5),(5364,'JARDIN ','',5),(5368,'JERICO ','',5),(5376,'LA CEJA ','',5),(5380,'LA ESTRELLA ','',5),(5390,'LA PINTADA ','',5),(5400,'LA UNION ','',5),(5411,'LIBORINA ','',5),(5425,'MACEO ','',5),(5440,'MARINILLA ','',5),(5467,'MONTEBELLO ','',5),(5475,'MURINDO ','',5),(5480,'MUTATA ','',5),(5483,'NARIÑO ','',5),(5490,'NECOCLI ','',5),(5495,'NECHI ','',5),(5501,'OLAYA ','',5),(5541,'PEÐOL ','',5),(5543,'PEQUE ','',5),(5576,'PUEBLORRICO ','',5),(5579,'PUERTO BERRIO ','',5),(5585,'PUERTO NARE ','',5),(5591,'PUERTO TRIUNFO ','',5),(5604,'REMEDIOS ','',5),(5607,'RETIRO ','',5),(5615,'RIONEGRO ','',5),(5628,'SABANALARGA ','',5),(5631,'SABANETA ','',5),(5642,'SALGAR ','',5),(5647,'SAN ANDRES DE CUERQUIA ','',5),(5649,'SAN CARLOS ','',5),(5652,'SAN FRANCISCO ','',5),(5656,'SAN JERONIMO ','',5),(5658,'SAN JOSE DE LA MONTAÑA ','',5),(5659,'SAN JUAN DE URABA ','',5),(5660,'SAN LUIS ','',5),(5664,'SAN PEDRO ','',5),(5665,'SAN PEDRO DE URABA ','',5),(5667,'SAN RAFAEL ','',5),(5670,'SAN ROQUE ','',5),(5674,'SAN VICENTE ','',5),(5679,'SANTA BARBARA ','',5),(5686,'SANTA ROSA DE OSOS ','',5),(5690,'SANTO DOMINGO ','',5),(5697,'EL SANTUARIO ','',5),(5736,'SEGOVIA ','',5),(5756,'SONSON ','',5),(5761,'SOPETRAN ','',5),(5789,'TAMESIS ','',5),(5790,'TARAZA ','',5),(5792,'TARSO ','',5),(5809,'TITIRIBI ','',5),(5819,'TOLEDO ','',5),(5837,'TURBO ','',5),(5842,'URAMITA ','',5),(5847,'URRAO ','',5),(5854,'VALDIVIA ','',5),(5856,'VALPARAISO ','',5),(5858,'VEGACHI ','',5),(5861,'VENECIA ','',5),(5873,'VIGIA DEL FUERTE ','',5),(5885,'YALI ','',5),(5887,'YARUMAL ','',5),(5890,'YOLOMBO ','',5),(5893,'YONDO ','',5),(5895,'ZARAGOZA ','',5),(8001,'BARRANQUILLA ','',8),(8078,'BARANOA ','',8),(8137,'CAMPO DE LA CRUZ ','',8),(8141,'CANDELARIA ','',8),(8296,'GALAPA ','',8),(8372,'JUAN DE ACOSTA ','',8),(8421,'LURUACO ','',8),(8433,'MALAMBO ','',8),(8436,'MANATI ','',8),(8520,'PALMAR DE VARELA ','',8),(8549,'PIOJO ','',8),(8558,'POLONUEVO ','',8),(8560,'PONEDERA ','',8),(8573,'PUERTO COLOMBIA ','',8),(8606,'REPELON ','',8),(8634,'SABANAGRANDE ','',8),(8638,'SABANALARGA ','',8),(8675,'SANTA LUCIA ','',8),(8685,'SANTO TOMAS ','',8),(8758,'SOLEDAD ','',8),(8770,'SUAN ','',8),(8832,'TUBARA ','',8),(8849,'USIACURI ','',8),(11001,'BOGOTA, D.C. ','',11),(13001,'CARTAGENA ','',13),(13006,'ACHI ','',13),(13030,'ALTOS DEL ROSARIO ','',13),(13042,'ARENAL ','',13),(13052,'ARJONA ','',13),(13062,'ARROYOHONDO ','',13),(13074,'BARRANCO DE LOBA ','',13),(13140,'CALAMAR ','',13),(13160,'CANTAGALLO ','',13),(13188,'CICUCO ','',13),(13212,'CORDOBA ','',13),(13222,'CLEMENCIA ','',13),(13244,'EL CARMEN DE BOLIVAR ','',13),(13248,'EL GUAMO ','',13),(13268,'EL PEÑON ','',13),(13300,'HATILLO DE LOBA ','',13),(13430,'MAGANGUE ','',13),(13433,'MAHATES ','',13),(13440,'MARGARITA ','',13),(13442,'MARIA LA BAJA ','',13),(13458,'MONTECRISTO ','',13),(13468,'MOMPOS ','',13),(13473,'MORALES ','',13),(13490,'NOROSI ','',13),(13549,'PINILLOS ','',13),(13580,'REGIDOR ','',13),(13600,'RIO VIEJO ','',13),(13620,'SAN CRISTOBAL ','',13),(13647,'SAN ESTANISLAO ','',13),(13650,'SAN FERNANDO ','',13),(13654,'SAN JACINTO ','',13),(13655,'SAN JACINTO DEL CAUCA ','',13),(13657,'SAN JUAN NEPOMUCENO ','',13),(13667,'SAN MARTIN DE LOBA ','',13),(13670,'SAN PABLO ','',13),(13673,'SANTA CATALINA ','',13),(13683,'SANTA ROSA ','',13),(13688,'SANTA ROSA DEL SUR ','',13),(13744,'SIMITI ','',13),(13760,'SOPLAVIENTO ','',13),(13780,'TALAIGUA NUEVO ','',13),(13810,'TIQUISIO ','',13),(13836,'TURBACO ','',13),(13838,'TURBANA ','',13),(13873,'VILLANUEVA ','',13),(13894,'ZAMBRANO ','',13),(15001,'TUNJA ','',15),(15022,'ALMEIDA ','',15),(15047,'AQUITANIA ','',15),(15051,'ARCABUCO ','',15),(15087,'BELEN ','',15),(15090,'BERBEO ','',15),(15092,'BETEITIVA ','',15),(15097,'BOAVITA ','',15),(15104,'BOYACA ','',15),(15106,'BRICEÑO ','',15),(15109,'BUENAVISTA ','',15),(15114,'BUSBANZA ','',15),(15131,'CALDAS ','',15),(15135,'CAMPOHERMOSO ','',15),(15162,'CERINZA ','',15),(15172,'CHINAVITA ','',15),(15176,'CHIQUINQUIRA ','',15),(15180,'CHISCAS ','',15),(15183,'CHITA ','',15),(15185,'CHITARAQUE ','',15),(15187,'CHIVATA ','',15),(15189,'CIENEGA ','',15),(15204,'COMBITA ','',15),(15212,'COPER ','',15),(15215,'CORRALES ','',15),(15218,'COVARACHIA ','',15),(15223,'CUBARA ','',15),(15224,'CUCAITA ','',15),(15226,'CUITIVA ','',15),(15232,'CHIQUIZA ','',15),(15236,'CHIVOR ','',15),(15238,'DUITAMA ','',15),(15244,'EL COCUY ','',15),(15248,'EL ESPINO ','',15),(15272,'FIRAVITOBA ','',15),(15276,'FLORESTA ','',15),(15293,'GACHANTIVA ','',15),(15296,'GAMEZA ','',15),(15299,'GARAGOA ','',15),(15317,'GUACAMAYAS ','',15),(15322,'GUATEQUE ','',15),(15325,'GUAYATA ','',15),(15332,'GsICAN ','',15),(15362,'IZA ','',15),(15367,'JENESANO ','',15),(15368,'JERICO ','',15),(15377,'LABRANZAGRANDE ','',15),(15380,'LA CAPILLA ','',15),(15401,'LA VICTORIA ','',15),(15403,'LA UVITA ','',15),(15407,'VILLA DE LEYVA ','',15),(15425,'MACANAL ','',15),(15442,'MARIPI ','',15),(15455,'MIRAFLORES ','',15),(15464,'MONGUA ','',15),(15466,'MONGUI ','',15),(15469,'MONIQUIRA ','',15),(15476,'MOTAVITA ','',15),(15480,'MUZO ','',15),(15491,'NOBSA ','',15),(15494,'NUEVO COLON ','',15),(15500,'OICATA ','',15),(15507,'OTANCHE ','',15),(15511,'PACHAVITA ','',15),(15514,'PAEZ ','',15),(15516,'PAIPA ','',15),(15518,'PAJARITO ','',15),(15522,'PANQUEBA ','',15),(15531,'PAUNA ','',15),(15533,'PAYA ','',15),(15537,'PAZ DE RIO ','',15),(15542,'PESCA ','',15),(15550,'PISBA ','',15),(15572,'PUERTO BOYACA ','',15),(15580,'QUIPAMA ','',15),(15599,'RAMIRIQUI ','',15),(15600,'RAQUIRA ','',15),(15621,'RONDON ','',15),(15632,'SABOYA ','',15),(15638,'SACHICA ','',15),(15646,'SAMACA ','',15),(15660,'SAN EDUARDO ','',15),(15664,'SAN JOSE DE PARE ','',15),(15667,'SAN LUIS DE GACENO ','',15),(15673,'SAN MATEO ','',15),(15676,'SAN MIGUEL DE SEMA ','',15),(15681,'SAN PABLO DE BORBUR ','',15),(15686,'SANTANA ','',15),(15690,'SANTA MARIA ','',15),(15693,'SANTA ROSA DE VITERBO ','',15),(15696,'SANTA SOFIA ','',15),(15720,'SATIVANORTE ','',15),(15723,'SATIVASUR ','',15),(15740,'SIACHOQUE ','',15),(15753,'SOATA ','',15),(15755,'SOCOTA ','',15),(15757,'SOCHA ','',15),(15759,'SOGAMOSO ','',15),(15761,'SOMONDOCO ','',15),(15762,'SORA ','',15),(15763,'SOTAQUIRA ','',15),(15764,'SORACA ','',15),(15774,'SUSACON ','',15),(15776,'SUTAMARCHAN ','',15),(15778,'SUTATENZA ','',15),(15790,'TASCO ','',15),(15798,'TENZA ','',15),(15804,'TIBANA ','',15),(15806,'TIBASOSA ','',15),(15808,'TINJACA ','',15),(15810,'TIPACOQUE ','',15),(15814,'TOCA ','',15),(15816,'TOGsI ','',15),(15820,'TOPAGA ','',15),(15822,'TOTA ','',15),(15832,'TUNUNGUA ','',15),(15835,'TURMEQUE ','',15),(15837,'TUTA ','',15),(15839,'TUTAZA ','',15),(15842,'UMBITA ','',15),(15861,'VENTAQUEMADA ','',15),(15879,'VIRACACHA ','',15),(15897,'ZETAQUIRA ','',15),(17001,'MANIZALES ','',17),(17013,'AGUADAS ','',17),(17042,'ANSERMA ','',17),(17050,'ARANZAZU ','',17),(17088,'BELALCAZAR ','',17),(17174,'CHINCHINA ','',17),(17272,'FILADELFIA ','',17),(17380,'LA DORADA ','',17),(17388,'LA MERCED ','',17),(17433,'MANZANARES ','',17),(17442,'MARMATO ','',17),(17444,'MARQUETALIA ','',17),(17446,'MARULANDA ','',17),(17486,'NEIRA ','',17),(17495,'NORCASIA ','',17),(17513,'PACORA ','',17),(17524,'PALESTINA ','',17),(17541,'PENSILVANIA ','',17),(17614,'RIOSUCIO ','',17),(17616,'RISARALDA ','',17),(17653,'SALAMINA ','',17),(17662,'SAMANA ','',17),(17665,'SAN JOSE ','',17),(17777,'SUPIA ','',17),(17867,'VICTORIA ','',17),(17873,'VILLAMARIA ','',17),(17877,'VITERBO ','',17),(18001,'FLORENCIA ','',18),(18029,'ALBANIA ','',18),(18094,'BELEN DE LOS ANDAQUIES ','',18),(18150,'CARTAGENA DEL CHAIRA ','',18),(18205,'CURILLO ','',18),(18247,'EL DONCELLO ','',18),(18256,'EL PAUJIL ','',18),(18410,'LA MONTAÑITA ','',18),(18460,'MILAN ','',18),(18479,'MORELIA ','',18),(18592,'PUERTO RICO ','',18),(18610,'SAN JOSE DEL FRAGUA ','',18),(18753,'SAN VICENTE DEL CAGUAN ','',18),(18756,'SOLANO ','',18),(18785,'SOLITA ','',18),(18860,'VALPARAISO ','',18),(19001,'POPAYAN ','',19),(19022,'ALMAGUER ','',19),(19050,'ARGELIA ','',19),(19075,'BALBOA ','',19),(19100,'BOLIVAR ','',19),(19110,'BUENOS AIRES ','',19),(19130,'CAJIBIO ','',19),(19137,'CALDONO ','',19),(19142,'CALOTO ','',19),(19212,'CORINTO ','',19),(19256,'EL TAMBO ','',19),(19290,'FLORENCIA ','',19),(19300,'GUACHENE ','',19),(19318,'GUAPI ','',19),(19355,'INZA ','',19),(19364,'JAMBALO ','',19),(19392,'LA SIERRA ','',19),(19397,'LA VEGA ','',19),(19418,'LOPEZ ','',19),(19450,'MERCADERES ','',19),(19455,'MIRANDA ','',19),(19473,'MORALES ','',19),(19513,'PADILLA ','',19),(19517,'PAEZ ','',19),(19532,'PATIA ','',19),(19533,'PIAMONTE ','',19),(19548,'PIENDAMO ','',19),(19573,'PUERTO TEJADA ','',19),(19585,'PURACE ','',19),(19622,'ROSAS ','',19),(19693,'SAN SEBASTIAN ','',19),(19698,'SANTANDER DE QUILICHAO ','',19),(19701,'SANTA ROSA ','',19),(19743,'SILVIA ','',19),(19760,'SOTARA ','',19),(19780,'SUAREZ ','',19),(19785,'SUCRE ','',19),(19807,'TIMBIO ','',19),(19809,'TIMBIQUI ','',19),(19821,'TORIBIO ','',19),(19824,'TOTORO ','',19),(19845,'VILLA RICA ','',19),(20001,'VALLEDUPAR ','',20),(20011,'AGUACHICA ','',20),(20013,'AGUSTIN CODAZZI ','',20),(20032,'ASTREA ','',20),(20045,'BECERRIL ','',20),(20060,'BOSCONIA ','',20),(20175,'CHIMICHAGUA ','',20),(20178,'CHIRIGUANA ','',20),(20228,'CURUMANI ','',20),(20238,'EL COPEY ','',20),(20250,'EL PASO ','',20),(20295,'GAMARRA ','',20),(20310,'GONZALEZ ','',20),(20383,'LA GLORIA ','',20),(20400,'LA JAGUA DE IBIRICO ','',20),(20443,'MANAURE ','',20),(20517,'PAILITAS ','',20),(20550,'PELAYA ','',20),(20570,'PUEBLO BELLO ','',20),(20614,'RIO DE ORO ','',20),(20621,'LA PAZ ','',20),(20710,'SAN ALBERTO ','',20),(20750,'SAN DIEGO ','',20),(20770,'SAN MARTIN ','',20),(20787,'TAMALAMEQUE ','',20),(23001,'MONTERIA ','',23),(23068,'AYAPEL ','',23),(23079,'BUENAVISTA ','',23),(23090,'CANALETE ','',23),(23162,'CERETE ','',23),(23168,'CHIMA ','',23),(23182,'CHINU ','',23),(23189,'CIENAGA DE ORO ','',23),(23300,'COTORRA ','',23),(23350,'LA APARTADA ','',23),(23417,'LORICA ','',23),(23419,'LOS CORDOBAS ','',23),(23464,'MOMIL ','',23),(23466,'MONTELIBANO ','',23),(23500,'MOÑITOS ','',23),(23555,'PLANETA RICA ','',23),(23570,'PUEBLO NUEVO ','',23),(23574,'PUERTO ESCONDIDO ','',23),(23580,'PUERTO LIBERTADOR ','',23),(23586,'PURISIMA ','',23),(23660,'SAHAGUN ','',23),(23670,'SAN ANDRES SOTAVENTO ','',23),(23672,'SAN ANTERO ','',23),(23675,'SAN BERNARDO DEL VIENTO ','',23),(23678,'SAN CARLOS ','',23),(23686,'SAN PELAYO ','',23),(23807,'TIERRALTA ','',23),(23855,'VALENCIA ','',23),(25001,'AGUA DE DIOS ','',25),(25019,'ALBAN ','',25),(25035,'ANAPOIMA ','',25),(25040,'ANOLAIMA ','',25),(25053,'ARBELAEZ ','',25),(25086,'BELTRAN ','',25),(25095,'BITUIMA ','',25),(25099,'BOJACA ','',25),(25120,'CABRERA ','',25),(25123,'CACHIPAY ','',25),(25126,'CAJICA ','',25),(25148,'CAPARRAPI ','',25),(25151,'CAQUEZA ','',25),(25154,'CARMEN DE CARUPA ','',25),(25168,'CHAGUANI ','',25),(25175,'CHIA ','',25),(25178,'CHIPAQUE ','',25),(25181,'CHOACHI ','',25),(25183,'CHOCONTA ','',25),(25200,'COGUA ','',25),(25214,'COTA ','',25),(25224,'CUCUNUBA ','',25),(25245,'EL COLEGIO ','',25),(25258,'EL PEÑON ','',25),(25260,'EL ROSAL ','',25),(25269,'FACATATIVA ','',25),(25279,'FOMEQUE ','',25),(25281,'FOSCA ','',25),(25286,'FUNZA ','',25),(25288,'FUQUENE ','',25),(25290,'FUSAGASUGA ','',25),(25293,'GACHALA ','',25),(25295,'GACHANCIPA ','',25),(25297,'GACHETA ','',25),(25299,'GAMA ','',25),(25307,'GIRARDOT ','',25),(25312,'GRANADA ','',25),(25317,'GUACHETA ','',25),(25320,'GUADUAS ','',25),(25322,'GUASCA ','',25),(25324,'GUATAQUI ','',25),(25326,'GUATAVITA ','',25),(25328,'GUAYABAL DE SIQUIMA ','',25),(25335,'GUAYABETAL ','',25),(25339,'GUTIERREZ ','',25),(25368,'JERUSALEN ','',25),(25372,'JUNIN ','',25),(25377,'LA CALERA ','',25),(25386,'LA MESA ','',25),(25394,'LA PALMA ','',25),(25398,'LA PEÑA ','',25),(25402,'LA VEGA ','',25),(25407,'LENGUAZAQUE ','',25),(25426,'MACHETA ','',25),(25430,'MADRID ','',25),(25436,'MANTA ','',25),(25438,'MEDINA ','',25),(25473,'MOSQUERA ','',25),(25483,'NARIÑO ','',25),(25486,'NEMOCON ','',25),(25488,'NILO ','',25),(25489,'NIMAIMA ','',25),(25491,'NOCAIMA ','',25),(25506,'VENECIA ','',25),(25513,'PACHO ','',25),(25518,'PAIME ','',25),(25524,'PANDI ','',25),(25530,'PARATEBUENO ','',25),(25535,'PASCA ','',25),(25572,'PUERTO SALGAR ','',25),(25580,'PULI ','',25),(25592,'QUEBRADANEGRA ','',25),(25594,'QUETAME ','',25),(25596,'QUIPILE ','',25),(25599,'APULO ','',25),(25612,'RICAURTE ','',25),(25645,'SAN ANTONIO DEL TEQUENDAMA ','',25),(25649,'SAN BERNARDO ','',25),(25653,'SAN CAYETANO ','',25),(25658,'SAN FRANCISCO ','',25),(25662,'SAN JUAN DE RIO SECO ','',25),(25718,'SASAIMA ','',25),(25736,'SESQUILE ','',25),(25740,'SIBATE ','',25),(25743,'SILVANIA ','',25),(25745,'SIMIJACA ','',25),(25754,'SOACHA ','',25),(25758,'SOPO ','',25),(25769,'SUBACHOQUE ','',25),(25772,'SUESCA ','',25),(25777,'SUPATA ','',25),(25779,'SUSA ','',25),(25781,'SUTATAUSA ','',25),(25785,'TABIO ','',25),(25793,'TAUSA ','',25),(25797,'TENA ','',25),(25799,'TENJO ','',25),(25805,'TIBACUY ','',25),(25807,'TIBIRITA ','',25),(25815,'TOCAIMA ','',25),(25817,'TOCANCIPA ','',25),(25823,'TOPAIPI ','',25),(25839,'UBALA ','',25),(25841,'UBAQUE ','',25),(25843,'VILLA DE SAN DIEGO DE UBATE ','',25),(25845,'UNE ','',25),(25851,'UTICA ','',25),(25862,'VERGARA ','',25),(25867,'VIANI ','',25),(25871,'VILLAGOMEZ ','',25),(25873,'VILLAPINZON ','',25),(25875,'VILLETA ','',25),(25878,'VIOTA ','',25),(25885,'YACOPI ','',25),(25898,'ZIPACON ','',25),(25899,'ZIPAQUIRA ','',25),(27001,'QUIBDO ','',27),(27006,'ACANDI ','',27),(27025,'ALTO BAUDO ','',27),(27050,'ATRATO ','',27),(27073,'BAGADO ','',27),(27075,'BAHIA SOLANO ','',27),(27077,'BAJO BAUDO ','',27),(27099,'BOJAYA ','',27),(27135,'EL CANTON DEL SAN PABLO ','',27),(27150,'CARMEN DEL DARIEN ','',27),(27160,'CERTEGUI ','',27),(27205,'CONDOTO ','',27),(27245,'EL CARMEN DE ATRATO ','',27),(27250,'EL LITORAL DEL SAN JUAN ','',27),(27361,'ISTMINA ','',27),(27372,'JURADO ','',27),(27413,'LLORO ','',27),(27425,'MEDIO ATRATO ','',27),(27430,'MEDIO BAUDO ','',27),(27450,'MEDIO SAN JUAN ','',27),(27491,'NOVITA ','',27),(27495,'NUQUI ','',27),(27580,'RIO IRO ','',27),(27600,'RIO QUITO ','',27),(27615,'RIOSUCIO ','',27),(27660,'SAN JOSE DEL PALMAR ','',27),(27745,'SIPI ','',27),(27787,'TADO ','',27),(27800,'UNGUIA ','',27),(27810,'UNION PANAMERICANA ','',27),(41001,'NEIVA ','',41),(41006,'ACEVEDO ','',41),(41013,'AGRADO ','',41),(41016,'AIPE ','',41),(41020,'ALGECIRAS ','',41),(41026,'ALTAMIRA ','',41),(41078,'BARAYA ','',41),(41132,'CAMPOALEGRE ','',41),(41206,'COLOMBIA ','',41),(41244,'ELIAS ','',41),(41298,'GARZON ','',41),(41306,'GIGANTE ','',41),(41319,'GUADALUPE ','',41),(41349,'HOBO ','',41),(41357,'IQUIRA ','',41),(41359,'ISNOS ','',41),(41378,'LA ARGENTINA ','',41),(41396,'LA PLATA ','',41),(41483,'NATAGA ','',41),(41503,'OPORAPA ','',41),(41518,'PAICOL ','',41),(41524,'PALERMO ','',41),(41530,'PALESTINA ','',41),(41548,'PITAL ','',41),(41551,'PITALITO ','',41),(41615,'RIVERA ','',41),(41660,'SALADOBLANCO ','',41),(41668,'SAN AGUSTIN ','',41),(41676,'SANTA MARIA ','',41),(41770,'SUAZA ','',41),(41791,'TARQUI ','',41),(41797,'TESALIA ','',41),(41799,'TELLO ','',41),(41801,'TERUEL ','',41),(41807,'TIMANA ','',41),(41872,'VILLAVIEJA ','',41),(41885,'YAGUARA ','',41),(44001,'RIOHACHA ','',44),(44035,'ALBANIA ','',44),(44078,'BARRANCAS ','',44),(44090,'DIBULLA ','',44),(44098,'DISTRACCION ','',44),(44110,'EL MOLINO ','',44),(44279,'FONSECA ','',44),(44378,'HATONUEVO ','',44),(44420,'LA JAGUA DEL PILAR ','',44),(44430,'MAICAO ','',44),(44560,'MANAURE ','',44),(44650,'SAN JUAN DEL CESAR ','',44),(44847,'URIBIA ','',44),(44855,'URUMITA ','',44),(44874,'VILLANUEVA ','',44),(47001,'SANTA MARTA ','',47),(47030,'ALGARROBO ','',47),(47053,'ARACATACA ','',47),(47058,'ARIGUANI ','',47),(47161,'CERRO SAN ANTONIO ','',47),(47170,'CHIBOLO ','',47),(47189,'CIENAGA ','',47),(47205,'CONCORDIA ','',47),(47245,'EL BANCO ','',47),(47258,'EL PIÑON ','',47),(47268,'EL RETEN ','',47),(47288,'FUNDACION ','',47),(47318,'GUAMAL ','',47),(47460,'NUEVA GRANADA ','',47),(47541,'PEDRAZA ','',47),(47545,'PIJIÑO DEL CARMEN ','',47),(47551,'PIVIJAY ','',47),(47555,'PLATO ','',47),(47570,'PUEBLOVIEJO ','',47),(47605,'REMOLINO ','',47),(47660,'SABANAS DE SAN ANGEL ','',47),(47675,'SALAMINA ','',47),(47692,'SAN SEBASTIAN DE BUENAVISTA ','',47),(47703,'SAN ZENON ','',47),(47707,'SANTA ANA ','',47),(47720,'SANTA BARBARA DE PINTO ','',47),(47745,'SITIONUEVO ','',47),(47798,'TENERIFE ','',47),(47960,'ZAPAYAN ','',47),(47980,'ZONA BANANERA ','',47),(50001,'VILLAVICENCIO ','',50),(50006,'ACACIAS ','',50),(50110,'BARRANCA DE UPIA ','',50),(50124,'CABUYARO ','',50),(50150,'CASTILLA LA NUEVA ','',50),(50223,'CUBARRAL ','',50),(50226,'CUMARAL ','',50),(50245,'EL CALVARIO ','',50),(50251,'EL CASTILLO ','',50),(50270,'EL DORADO ','',50),(50287,'FUENTE DE ORO ','',50),(50313,'GRANADA ','',50),(50318,'GUAMAL ','',50),(50325,'MAPIRIPAN ','',50),(50330,'MESETAS ','',50),(50350,'LA MACARENA ','',50),(50370,'URIBE ','',50),(50400,'LEJANIAS ','',50),(50450,'PUERTO CONCORDIA ','',50),(50568,'PUERTO GAITAN ','',50),(50573,'PUERTO LOPEZ ','',50),(50577,'PUERTO LLERAS ','',50),(50590,'PUERTO RICO ','',50),(50606,'RESTREPO ','',50),(50680,'SAN CARLOS DE GUAROA ','',50),(50683,'SAN JUAN DE ARAMA ','',50),(50686,'SAN JUANITO ','',50),(50689,'SAN MARTIN ','',50),(50711,'VISTAHERMOSA ','',50),(52001,'PASTO ','',52),(52019,'ALBAN ','',52),(52022,'ALDANA ','',52),(52036,'ANCUYA ','',52),(52051,'ARBOLEDA ','',52),(52079,'BARBACOAS ','',52),(52083,'BELEN ','',52),(52110,'BUESACO ','',52),(52203,'COLON ','',52),(52207,'CONSACA ','',52),(52210,'CONTADERO ','',52),(52215,'CORDOBA ','',52),(52224,'CUASPUD ','',52),(52227,'CUMBAL ','',52),(52233,'CUMBITARA ','',52),(52240,'CHACHAGsI ','',52),(52250,'EL CHARCO ','',52),(52254,'EL PEÑOL ','',52),(52256,'EL ROSARIO ','',52),(52258,'EL TABLON DE GOMEZ ','',52),(52260,'EL TAMBO ','',52),(52287,'FUNES ','',52),(52317,'GUACHUCAL ','',52),(52320,'GUAITARILLA ','',52),(52323,'GUALMATAN ','',52),(52352,'ILES ','',52),(52354,'IMUES ','',52),(52356,'IPIALES ','',52),(52378,'LA CRUZ ','',52),(52381,'LA FLORIDA ','',52),(52385,'LA LLANADA ','',52),(52390,'LA TOLA ','',52),(52399,'LA UNION ','',52),(52405,'LEIVA ','',52),(52411,'LINARES ','',52),(52418,'LOS ANDES ','',52),(52427,'MAGsI ','',52),(52435,'MALLAMA ','',52),(52473,'MOSQUERA ','',52),(52480,'NARIÑO ','',52),(52490,'OLAYA HERRERA ','',52),(52506,'OSPINA ','',52),(52520,'FRANCISCO PIZARRO ','',52),(52540,'POLICARPA ','',52),(52560,'POTOSI ','',52),(52565,'PROVIDENCIA ','',52),(52573,'PUERRES ','',52),(52585,'PUPIALES ','',52),(52612,'RICAURTE ','',52),(52621,'ROBERTO PAYAN ','',52),(52678,'SAMANIEGO ','',52),(52683,'SANDONA ','',52),(52685,'SAN BERNARDO ','',52),(52687,'SAN LORENZO ','',52),(52693,'SAN PABLO ','',52),(52694,'SAN PEDRO DE CARTAGO ','',52),(52696,'SANTA BARBARA ','',52),(52699,'SANTACRUZ ','',52),(52720,'SAPUYES ','',52),(52786,'TAMINANGO ','',52),(52788,'TANGUA ','',52),(52835,'SAN ANDRES DE TUMACO ','',52),(52838,'TUQUERRES ','',52),(52885,'YACUANQUER ','',52),(54001,'CUCUTA ','',54),(54003,'ABREGO ','',54),(54051,'ARBOLEDAS ','',54),(54099,'BOCHALEMA ','',54),(54109,'BUCARASICA ','',54),(54125,'CACOTA ','',54),(54128,'CACHIRA ','',54),(54172,'CHINACOTA ','',54),(54174,'CHITAGA ','',54),(54206,'CONVENCION ','',54),(54223,'CUCUTILLA ','',54),(54239,'DURANIA ','',54),(54245,'EL CARMEN ','',54),(54250,'EL TARRA ','',54),(54261,'EL ZULIA ','',54),(54313,'GRAMALOTE ','',54),(54344,'HACARI ','',54),(54347,'HERRAN ','',54),(54377,'LABATECA ','',54),(54385,'LA ESPERANZA ','',54),(54398,'LA PLAYA ','',54),(54405,'LOS PATIOS ','',54),(54418,'LOURDES ','',54),(54480,'MUTISCUA ','',54),(54498,'OCAÑA ','',54),(54518,'PAMPLONA ','',54),(54520,'PAMPLONITA ','',54),(54553,'PUERTO SANTANDER ','',54),(54599,'RAGONVALIA ','',54),(54660,'SALAZAR ','',54),(54670,'SAN CALIXTO ','',54),(54673,'SAN CAYETANO ','',54),(54680,'SANTIAGO ','',54),(54720,'SARDINATA ','',54),(54743,'SILOS ','',54),(54800,'TEORAMA ','',54),(54810,'TIBU ','',54),(54820,'TOLEDO ','',54),(54871,'VILLA CARO ','',54),(54874,'VILLA DEL ROSARIO ','',54),(63001,'ARMENIA ','',63),(63111,'BUENAVISTA ','',63),(63130,'CALARCA ','',63),(63190,'CIRCASIA ','',63),(63212,'CORDOBA ','',63),(63272,'FILANDIA ','',63),(63302,'GENOVA ','',63),(63401,'LA TEBAIDA ','',63),(63470,'MONTENEGRO ','',63),(63548,'PIJAO ','',63),(63594,'QUIMBAYA ','',63),(63690,'SALENTO ','',63),(66001,'PEREIRA ','',66),(66045,'APIA ','',66),(66075,'BALBOA ','',66),(66088,'BELEN DE UMBRIA ','',66),(66170,'DOSQUEBRADAS ','',66),(66318,'GUATICA ','',66),(66383,'LA CELIA ','',66),(66400,'LA VIRGINIA ','',66),(66440,'MARSELLA ','',66),(66456,'MISTRATO ','',66),(66572,'PUEBLO RICO ','',66),(66594,'QUINCHIA ','',66),(66682,'SANTA ROSA DE CABAL ','',66),(66687,'SANTUARIO ','',66),(68001,'BUCARAMANGA ','',68),(68013,'AGUADA ','',68),(68020,'ALBANIA ','',68),(68051,'ARATOCA ','',68),(68077,'BARBOSA ','',68),(68079,'BARICHARA ','',68),(68081,'BARRANCABERMEJA ','',68),(68092,'BETULIA ','',68),(68101,'BOLIVAR ','',68),(68121,'CABRERA ','',68),(68132,'CALIFORNIA ','',68),(68147,'CAPITANEJO ','',68),(68152,'CARCASI ','',68),(68160,'CEPITA ','',68),(68162,'CERRITO ','',68),(68167,'CHARALA ','',68),(68169,'CHARTA ','',68),(68176,'CHIMA ','',68),(68179,'CHIPATA ','',68),(68190,'CIMITARRA ','',68),(68207,'CONCEPCION ','',68),(68209,'CONFINES ','',68),(68211,'CONTRATACION ','',68),(68217,'COROMORO ','',68),(68229,'CURITI ','',68),(68235,'EL CARMEN DE CHUCURI ','',68),(68245,'EL GUACAMAYO ','',68),(68250,'EL PEÑON ','',68),(68255,'EL PLAYON ','',68),(68264,'ENCINO ','',68),(68266,'ENCISO ','',68),(68271,'FLORIAN ','',68),(68276,'FLORIDABLANCA ','',68),(68296,'GALAN ','',68),(68298,'GAMBITA ','',68),(68307,'GIRON ','',68),(68318,'GUACA ','',68),(68320,'GUADALUPE ','',68),(68322,'GUAPOTA ','',68),(68324,'GUAVATA ','',68),(68327,'GsEPSA ','',68),(68344,'HATO ','',68),(68368,'JESUS MARIA ','',68),(68370,'JORDAN ','',68),(68377,'LA BELLEZA ','',68),(68385,'LANDAZURI ','',68),(68397,'LA PAZ ','',68),(68406,'LEBRIJA ','',68),(68418,'LOS SANTOS ','',68),(68425,'MACARAVITA ','',68),(68432,'MALAGA ','',68),(68444,'MATANZA ','',68),(68464,'MOGOTES ','',68),(68468,'MOLAGAVITA ','',68),(68498,'OCAMONTE ','',68),(68500,'OIBA ','',68),(68502,'ONZAGA ','',68),(68522,'PALMAR ','',68),(68524,'PALMAS DEL SOCORRO ','',68),(68533,'PARAMO ','',68),(68547,'PIEDECUESTA ','',68),(68549,'PINCHOTE ','',68),(68572,'PUENTE NACIONAL ','',68),(68573,'PUERTO PARRA ','',68),(68575,'PUERTO WILCHES ','',68),(68615,'RIONEGRO ','',68),(68655,'SABANA DE TORRES ','',68),(68669,'SAN ANDRES ','',68),(68673,'SAN BENITO ','',68),(68679,'SAN GIL ','',68),(68682,'SAN JOAQUIN ','',68),(68684,'SAN JOSE DE MIRANDA ','',68),(68686,'SAN MIGUEL ','',68),(68689,'SAN VICENTE DE CHUCURI ','',68),(68705,'SANTA BARBARA ','',68),(68720,'SANTA HELENA DEL OPON ','',68),(68745,'SIMACOTA ','',68),(68755,'SOCORRO ','',68),(68770,'SUAITA ','',68),(68773,'SUCRE ','',68),(68780,'SURATA ','',68),(68820,'TONA ','',68),(68855,'VALLE DE SAN JOSE ','',68),(68861,'VELEZ ','',68),(68867,'VETAS ','',68),(68872,'VILLANUEVA ','',68),(68895,'ZAPATOCA ','',68),(70001,'SINCELEJO ','',70),(70110,'BUENAVISTA ','',70),(70124,'CAIMITO ','',70),(70204,'COLOSO ','',70),(70215,'COROZAL ','',70),(70221,'COVEÑAS ','',70),(70230,'CHALAN ','',70),(70233,'EL ROBLE ','',70),(70235,'GALERAS ','',70),(70265,'GUARANDA ','',70),(70400,'LA UNION ','',70),(70418,'LOS PALMITOS ','',70),(70429,'MAJAGUAL ','',70),(70473,'MORROA ','',70),(70508,'OVEJAS ','',70),(70523,'PALMITO ','',70),(70670,'SAMPUES ','',70),(70678,'SAN BENITO ABAD ','',70),(70702,'SAN JUAN DE BETULIA ','',70),(70708,'SAN MARCOS ','',70),(70713,'SAN ONOFRE ','',70),(70717,'SAN PEDRO ','',70),(70742,'SAN LUIS DE SINCE ','',70),(70771,'SUCRE ','',70),(70820,'SANTIAGO DE TOLU ','',70),(70823,'TOLU VIEJO ','',70),(73001,'IBAGUE ','',73),(73024,'ALPUJARRA ','',73),(73026,'ALVARADO ','',73),(73030,'AMBALEMA ','',73),(73043,'ANZOATEGUI ','',73),(73055,'ARMERO ','',73),(73067,'ATACO ','',73),(73124,'CAJAMARCA ','',73),(73148,'CARMEN DE APICALA ','',73),(73152,'CASABIANCA ','',73),(73168,'CHAPARRAL ','',73),(73200,'COELLO ','',73),(73217,'COYAIMA ','',73),(73226,'CUNDAY ','',73),(73236,'DOLORES ','',73),(73268,'ESPINAL ','',73),(73270,'FALAN ','',73),(73275,'FLANDES ','',73),(73283,'FRESNO ','',73),(73319,'GUAMO ','',73),(73347,'HERVEO ','',73),(73349,'HONDA ','',73),(73352,'ICONONZO ','',73),(73408,'LERIDA ','',73),(73411,'LIBANO ','',73),(73443,'MARIQUITA ','',73),(73449,'MELGAR ','',73),(73461,'MURILLO ','',73),(73483,'NATAGAIMA ','',73),(73504,'ORTEGA ','',73),(73520,'PALOCABILDO ','',73),(73547,'PIEDRAS ','',73),(73555,'PLANADAS ','',73),(73563,'PRADO ','',73),(73585,'PURIFICACION ','',73),(73616,'RIOBLANCO ','',73),(73622,'RONCESVALLES ','',73),(73624,'ROVIRA ','',73),(73671,'SALDAÑA ','',73),(73675,'SAN ANTONIO ','',73),(73678,'SAN LUIS ','',73),(73686,'SANTA ISABEL ','',73),(73770,'SUAREZ ','',73),(73854,'VALLE DE SAN JUAN ','',73),(73861,'VENADILLO ','',73),(73870,'VILLAHERMOSA ','',73),(73873,'VILLARRICA ','',73),(76001,'CALI ','',76),(76020,'ALCALA ','',76),(76036,'ANDALUCIA ','',76),(76041,'ANSERMANUEVO ','',76),(76054,'ARGELIA ','',76),(76100,'BOLIVAR ','',76),(76109,'BUENAVENTURA ','',76),(76111,'GUADALAJARA DE BUGA ','',76),(76113,'BUGALAGRANDE ','',76),(76122,'CAICEDONIA ','',76),(76126,'CALIMA ','',76),(76130,'CANDELARIA ','',76),(76147,'CARTAGO ','',76),(76233,'DAGUA ','',76),(76243,'EL AGUILA ','',76),(76246,'EL CAIRO ','',76),(76248,'EL CERRITO ','',76),(76250,'EL DOVIO ','',76),(76275,'FLORIDA ','',76),(76306,'GINEBRA ','',76),(76318,'GUACARI ','',76),(76364,'JAMUNDI ','',76),(76377,'LA CUMBRE ','',76),(76400,'LA UNION ','',76),(76403,'LA VICTORIA ','',76),(76497,'OBANDO ','',76),(76520,'PALMIRA ','',76),(76563,'PRADERA ','',76),(76606,'RESTREPO ','',76),(76616,'RIOFRIO ','',76),(76622,'ROLDANILLO ','',76),(76670,'SAN PEDRO ','',76),(76736,'SEVILLA ','',76),(76823,'TORO ','',76),(76828,'TRUJILLO ','',76),(76834,'TULUA ','',76),(76845,'ULLOA ','',76),(76863,'VERSALLES ','',76),(76869,'VIJES ','',76),(76890,'YOTOCO ','',76),(76892,'YUMBO ','',76),(76895,'ZARZAL ','',76),(81001,'ARAUCA ','',81),(81065,'ARAUQUITA ','',81),(81220,'CRAVO NORTE ','',81),(81300,'FORTUL ','',81),(81591,'PUERTO RONDON ','',81),(81736,'SARAVENA ','',81),(81794,'TAME ','',81),(85001,'YOPAL ','',85),(85010,'AGUAZUL ','',85),(85015,'CHAMEZA ','',85),(85125,'HATO COROZAL ','',85),(85136,'LA SALINA ','',85),(85139,'MANI ','',85),(85162,'MONTERREY ','',85),(85225,'NUNCHIA ','',85),(85230,'OROCUE ','',85),(85250,'PAZ DE ARIPORO ','',85),(85263,'PORE ','',85),(85279,'RECETOR ','',85),(85300,'SABANALARGA ','',85),(85315,'SACAMA ','',85),(85325,'SAN LUIS DE PALENQUE ','',85),(85400,'TAMARA ','',85),(85410,'TAURAMENA ','',85),(85430,'TRINIDAD ','',85),(85440,'VILLANUEVA ','',85),(86001,'MOCOA ','',86),(86219,'COLON ','',86),(86320,'ORITO ','',86),(86568,'PUERTO ASIS ','',86),(86569,'PUERTO CAICEDO ','',86),(86571,'PUERTO GUZMAN ','',86),(86573,'LEGUIZAMO ','',86),(86749,'SIBUNDOY ','',86),(86755,'SAN FRANCISCO ','',86),(86757,'SAN MIGUEL ','',86),(86760,'SANTIAGO ','',86),(86865,'VALLE DEL GUAMUEZ ','',86),(86885,'VILLAGARZON ','',86),(88001,'SAN ANDRES ','',88),(88564,'PROVIDENCIA ','',88),(91001,'LETICIA ','',91),(91263,'EL ENCANTO ','',91),(91405,'LA CHORRERA ','',91),(91407,'LA PEDRERA ','',91),(91430,'LA VICTORIA ','',91),(91460,'MIRITI - PARANA ','',91),(91530,'PUERTO ALEGRIA ','',91),(91536,'PUERTO ARICA ','',91),(91540,'PUERTO NARIÑO ','',91),(91669,'PUERTO SANTANDER ','',91),(91798,'TARAPACA ','',91),(94001,'INIRIDA ','',94),(94343,'BARRANCO MINAS ','',94),(94663,'MAPIRIPANA ','',94),(94883,'SAN FELIPE ','',94),(94884,'PUERTO COLOMBIA ','',94),(94885,'LA GUADALUPE ','',94),(94886,'CACAHUAL ','',94),(94887,'PANA PANA ','',94),(94888,'MORICHAL ','',94),(95001,'SAN JOSE DEL GUAVIARE ','',95),(95015,'CALAMAR ','',95),(95025,'EL RETORNO ','',95),(95200,'MIRAFLORES ','',95),(97001,'MITU ','',97),(97161,'CARURU ','',97),(97511,'PACOA ','',97),(97666,'TARAIRA ','',97),(97777,'PAPUNAUA ','',97),(97889,'YAVARATE ','',97),(99001,'PUERTO CARREÑO ','',99),(99524,'LA PRIMAVERA ','',99),(99624,'SANTA ROSALIA ','',99),(99773,'CUMARIBO ','',99);

/*Table structure for table `comentarios` */

DROP TABLE IF EXISTS `comentarios`;

CREATE TABLE `comentarios` (
  `idcomentario` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(200) DEFAULT NULL,
  `idusuario_id` int(11) DEFAULT NULL,
  `idproducto_id` int(100) DEFAULT NULL,
  PRIMARY KEY (`idcomentario`),
  KEY `FKcomenta` (`idusuario_id`),
  KEY `idproducto_id` (`idproducto_id`),
  CONSTRAINT `FKcomenta` FOREIGN KEY (`idusuario_id`) REFERENCES `usuario` (`idusuario`),
  CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`idproducto_id`) REFERENCES `producto` (`idproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `comentarios` */

insert  into `comentarios`(`idcomentario`,`comentario`,`idusuario_id`,`idproducto_id`) values (1,'tiene color rojo		\r\n                                ',24,52);

/*Table structure for table `departamento` */

DROP TABLE IF EXISTS `departamento`;

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

/*Data for the table `departamento` */

insert  into `departamento`(`id_departamento`,`nombre`) values (1,''),(5,'ANTIOQUIA'),(8,'ATLANTICO'),(11,'BOGOTA'),(13,'BOLIVAR'),(15,'BOYACA'),(17,'CALDAS'),(18,'CAQUETA'),(19,'CAUCA'),(20,'CESAR'),(23,'CORDOBA'),(25,'CUNDINAMARCA'),(27,'CHOCO'),(41,'HUILA'),(44,'LA GUAJIRA'),(47,'MAGDALENA'),(50,'META'),(52,'NARIÑO'),(54,'N. DE SANTANDER'),(63,'QUINDIO'),(66,'RISARALDA'),(68,'SANTANDER'),(70,'SUCRE'),(73,'TOLIMA'),(76,'VALLE DEL CAUCA'),(81,'ARAUCA'),(85,'CASANARE'),(86,'PUTUMAYO'),(88,'SAN ANDRES'),(91,'AMAZONAS'),(94,'GUAINIA'),(95,'GUAVIARE'),(97,'VAUPES'),(99,'VICHADA');

/*Table structure for table `interesados` */

DROP TABLE IF EXISTS `interesados`;

CREATE TABLE `interesados` (
  `idinteresados` int(11) NOT NULL AUTO_INCREMENT,
  `idproducto_id` int(100) DEFAULT NULL,
  `idusuario_id` int(100) NOT NULL,
  PRIMARY KEY (`idinteresados`),
  KEY `idproducto_id` (`idproducto_id`),
  KEY `idusuario_id` (`idusuario_id`),
  CONSTRAINT `interesados_ibfk_1` FOREIGN KEY (`idusuario_id`) REFERENCES `usuario` (`idusuario`),
  CONSTRAINT `interesados_ibfk_2` FOREIGN KEY (`idproducto_id`) REFERENCES `producto` (`idproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `interesados` */

insert  into `interesados`(`idinteresados`,`idproducto_id`,`idusuario_id`) values (10,50,25),(11,50,24),(12,48,24),(15,74,25),(17,74,26),(18,73,26);

/*Table structure for table `pregunta` */

DROP TABLE IF EXISTS `pregunta`;

CREATE TABLE `pregunta` (
  `idpregunta` int(11) NOT NULL AUTO_INCREMENT,
  `respuesta` varchar(190) NOT NULL,
  PRIMARY KEY (`idpregunta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pregunta` */

/*Table structure for table `producto` */

DROP TABLE IF EXISTS `producto`;

CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) DEFAULT NULL,
  `cantidad` varchar(50) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `precio_estimado` varchar(50) DEFAULT NULL,
  `marca` varchar(150) DEFAULT NULL,
  `certificado` varchar(50) DEFAULT NULL,
  `tiempo_uso` varchar(100) DEFAULT '',
  `usuario_idusuario` int(11) NOT NULL,
  `categoria_idcategoria` int(11) NOT NULL,
  `tiempo_publicacion_idtiempo_publicacion` int(11) DEFAULT NULL,
  `imagen_1` longblob,
  `imagen1` varchar(150) NOT NULL,
  `imagen2` varchar(150) DEFAULT NULL,
  `imagen3` varchar(150) DEFAULT NULL,
  `imagen4` varchar(150) DEFAULT NULL,
  `imagen5` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idproducto`),
  KEY `fk_producto_usuario1_idx` (`usuario_idusuario`),
  KEY `fk_producto_categoria1_idx` (`categoria_idcategoria`),
  KEY `fk_producto_tiempo_publicacion1_idx` (`tiempo_publicacion_idtiempo_publicacion`),
  CONSTRAINT `fk_producto_categoria1` FOREIGN KEY (`categoria_idcategoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_tiempo_publicacion1` FOREIGN KEY (`tiempo_publicacion_idtiempo_publicacion`) REFERENCES `tiempo_publicacion` (`idtiempo_publicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

/*Data for the table `producto` */

insert  into `producto`(`idproducto`,`nombre`,`cantidad`,`descripcion`,`precio_estimado`,`marca`,`certificado`,`tiempo_uso`,`usuario_idusuario`,`categoria_idcategoria`,`tiempo_publicacion_idtiempo_publicacion`,`imagen_1`,`imagen1`,`imagen2`,`imagen3`,`imagen4`,`imagen5`) values (48,'celular ','1','celular robado hace unos minutos quien lo quiera deje sus ofertas','50.000','samsung',NULL,'',25,1,NULL,NULL,'img/productos/Ã­ndice.jpg','img/productos/t1.jpg','img/productos/celular-kanji-fon-liberado-dual-sim-avellaneda-d_nq_np_868398-mla29747250711_032019-f.jpg',NULL,NULL),(50,'tenis ','10','Talla 34 en buen estado','30.000','nike',NULL,'',25,10,NULL,NULL,'img/productos/t1.jpg','img/productos/t2.jpg','img/productos/t3.jpg',NULL,NULL),(52,'zapatos','4','nuevos','300000','addias',NULL,'',27,10,NULL,NULL,'img/productos/t1.jpg','img/productos/t4.jpg','img/productos/t5.jpg',NULL,NULL),(73,'prueba','Seleccione una opcion','prueba','prueba','prueba',NULL,'',24,1,NULL,NULL,'img/productos/t5.jpg','img/productos/c4.jpg','img/productos/t1.jpg',NULL,NULL),(74,'camisa roja','3','lacoste de la calle','5000','lacoste',NULL,'',24,10,NULL,NULL,'img/productos/c2.jpg','img/productos/c3.jpg','img/productos/c4.jpg',NULL,NULL),(75,'CELULAR ','1','es un celular recien comprado pÃ©ro no me gusta la pantalla ','300000','Xiaomi',NULL,'',26,1,NULL,NULL,'img/productos/celular-kanji-fon-liberado-dual-sim-avellaneda-d_nq_np_868398-mla29747250711_032019-f.jpg','img/productos/Ã­ndice.jpg','img/productos/t1.jpg',NULL,NULL),(76,'camisas','3','son camisas de color rojo','7000','koaj',NULL,'',26,10,NULL,NULL,'img/productos/c1.jpg','img/productos/c2.jpg','img/productos/c3.jpg',NULL,NULL);

/*Table structure for table `rol` */

DROP TABLE IF EXISTS `rol`;

CREATE TABLE `rol` (
  `idrol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(150) NOT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  PRIMARY KEY (`idrol`),
  KEY `fk_rol_usuario_idx` (`usuario_idusuario`),
  CONSTRAINT `fk_rol_usuario` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rol` */

/*Table structure for table `solicitud_intercambio` */

DROP TABLE IF EXISTS `solicitud_intercambio`;

CREATE TABLE `solicitud_intercambio` (
  `idsolicitud_intercambio` int(11) NOT NULL AUTO_INCREMENT,
  `oferta` varchar(150) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `notificacion` varchar(150) DEFAULT NULL,
  `producto_idproducto` int(11) NOT NULL,
  `idinteresados_id` int(100) NOT NULL,
  PRIMARY KEY (`idsolicitud_intercambio`),
  KEY `fk_solicitud_intercambio_producto1_idx` (`producto_idproducto`),
  KEY `idinteresados_id` (`idinteresados_id`),
  CONSTRAINT `fk_solicitud_intercambio_producto1` FOREIGN KEY (`producto_idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `solicitud_intercambio_ibfk_1` FOREIGN KEY (`idinteresados_id`) REFERENCES `interesados` (`idinteresados`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `solicitud_intercambio` */

insert  into `solicitud_intercambio`(`idsolicitud_intercambio`,`oferta`,`estado`,`notificacion`,`producto_idproducto`,`idinteresados_id`) values (1,NULL,NULL,NULL,50,15),(2,NULL,NULL,NULL,48,15),(3,NULL,NULL,NULL,50,15),(4,NULL,NULL,NULL,75,18);

/*Table structure for table `solicitud_intercambio_has_pregunta` */

DROP TABLE IF EXISTS `solicitud_intercambio_has_pregunta`;

CREATE TABLE `solicitud_intercambio_has_pregunta` (
  `solicitud_intercambio_idsolicitud_intercambio` int(11) NOT NULL,
  `pregunta_idpregunta` int(11) NOT NULL,
  PRIMARY KEY (`solicitud_intercambio_idsolicitud_intercambio`,`pregunta_idpregunta`),
  KEY `fk_solicitud_intercambio_has_pregunta_pregunta1_idx` (`pregunta_idpregunta`),
  KEY `fk_solicitud_intercambio_has_pregunta_solicitud_intercambio_idx` (`solicitud_intercambio_idsolicitud_intercambio`),
  CONSTRAINT `fk_solicitud_intercambio_has_pregunta_pregunta1` FOREIGN KEY (`pregunta_idpregunta`) REFERENCES `pregunta` (`idpregunta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_solicitud_intercambio_has_pregunta_solicitud_intercambio1` FOREIGN KEY (`solicitud_intercambio_idsolicitud_intercambio`) REFERENCES `solicitud_intercambio` (`idsolicitud_intercambio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `solicitud_intercambio_has_pregunta` */

/*Table structure for table `tiempo_publicacion` */

DROP TABLE IF EXISTS `tiempo_publicacion`;

CREATE TABLE `tiempo_publicacion` (
  `idtiempo_publicacion` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(150) NOT NULL,
  PRIMARY KEY (`idtiempo_publicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tiempo_publicacion` */

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(150) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `password` varchar(45) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `ciudad_id_ciudad` int(11) NOT NULL,
  `perfil` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idusuario`),
  UNIQUE KEY `correo` (`correo`),
  KEY `fk_usuario_ciudad1_idx` (`ciudad_id_ciudad`),
  CONSTRAINT `fk_usuario_ciudad1` FOREIGN KEY (`ciudad_id_ciudad`) REFERENCES `ciudad` (`id_ciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

/*Data for the table `usuario` */

insert  into `usuario`(`idusuario`,`usuario`,`telefono`,`correo`,`password`,`genero`,`ciudad_id_ciudad`,`perfil`) values (24,'Jonathan','3132170129','camanojhonatan@gmail.com','99800b85d3383e3a2fb45eb7d0066a4879a9dad0','Masculino',5001,NULL),(25,'Pruebas','23459800','pruebas','99800b85d3383e3a2fb45eb7d0066a4879a9dad0','Masculino',1,NULL),(26,'Johan ','3209975356','johan@gmail.com','40bd001563085fc35165329ea1ff5c5ecbdbbeef','Masculino',5055,NULL),(27,'jorge ivan','3212353332','jisedano','7c4a8d09ca3762af61e59520943dc26494f8941b','Masculino',5042,NULL),(28,'samuel','313389890','samuelalejandro@gmail.com','99800b85d3383e3a2fb45eb7d0066a4879a9dad0','Masculino',5042,NULL);

/* Procedure structure for procedure `detallesproducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `detallesproducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `detallesproducto`(in id int )
begin
select * from `vista_detallesproducto` where idproducto=id;
end */$$
DELIMITER ;

/*Table structure for table `consultarinteresados` */

DROP TABLE IF EXISTS `consultarinteresados`;

/*!50001 DROP VIEW IF EXISTS `consultarinteresados` */;
/*!50001 DROP TABLE IF EXISTS `consultarinteresados` */;

/*!50001 CREATE TABLE  `consultarinteresados`(
 `idinteresados` int(11) ,
 `idproducto_id` int(100) ,
 `idusuario_id` int(100) 
)*/;

/*Table structure for table `vista_detallesproducto` */

DROP TABLE IF EXISTS `vista_detallesproducto`;

/*!50001 DROP VIEW IF EXISTS `vista_detallesproducto` */;
/*!50001 DROP TABLE IF EXISTS `vista_detallesproducto` */;

/*!50001 CREATE TABLE  `vista_detallesproducto`(
 `idproducto` int(11) ,
 `nombre` varchar(150) ,
 `cantidad` varchar(50) ,
 `descripcion` varchar(150) ,
 `precio_estimado` varchar(50) ,
 `marca` varchar(150) ,
 `certificado` varchar(50) ,
 `tiempo_uso` varchar(100) ,
 `usuario_idusuario` int(11) ,
 `categoria_idcategoria` int(11) ,
 `tiempo_publicacion_idtiempo_publicacion` int(11) ,
 `imagen_1` longblob ,
 `imagen1` varchar(150) ,
 `imagen2` varchar(150) ,
 `imagen3` varchar(150) ,
 `imagen4` varchar(150) ,
 `imagen5` varchar(150) ,
 `idusuario` int(11) ,
 `usuario` varchar(150) ,
 `telefono` varchar(100) ,
 `correo` varchar(150) ,
 `password` varchar(45) ,
 `genero` varchar(50) ,
 `ciudad_id_ciudad` int(11) ,
 `perfil` varchar(150) ,
 `idcategoria` int(11) ,
 `categoria` varchar(150) ,
 `id_ciudad` int(11) ,
 `ciudad` varchar(100) ,
 `direccion` varchar(150) ,
 `departamento_id_departamento` int(11) 
)*/;

/*View structure for view consultarinteresados */

/*!50001 DROP TABLE IF EXISTS `consultarinteresados` */;
/*!50001 DROP VIEW IF EXISTS `consultarinteresados` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `consultarinteresados` AS (select `interesados`.`idinteresados` AS `idinteresados`,`interesados`.`idproducto_id` AS `idproducto_id`,`interesados`.`idusuario_id` AS `idusuario_id` from `interesados`) */;

/*View structure for view vista_detallesproducto */

/*!50001 DROP TABLE IF EXISTS `vista_detallesproducto` */;
/*!50001 DROP VIEW IF EXISTS `vista_detallesproducto` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_detallesproducto` AS select `producto`.`idproducto` AS `idproducto`,`producto`.`nombre` AS `nombre`,`producto`.`cantidad` AS `cantidad`,`producto`.`descripcion` AS `descripcion`,`producto`.`precio_estimado` AS `precio_estimado`,`producto`.`marca` AS `marca`,`producto`.`certificado` AS `certificado`,`producto`.`tiempo_uso` AS `tiempo_uso`,`producto`.`usuario_idusuario` AS `usuario_idusuario`,`producto`.`categoria_idcategoria` AS `categoria_idcategoria`,`producto`.`tiempo_publicacion_idtiempo_publicacion` AS `tiempo_publicacion_idtiempo_publicacion`,`producto`.`imagen_1` AS `imagen_1`,`producto`.`imagen1` AS `imagen1`,`producto`.`imagen2` AS `imagen2`,`producto`.`imagen3` AS `imagen3`,`producto`.`imagen4` AS `imagen4`,`producto`.`imagen5` AS `imagen5`,`usuario`.`idusuario` AS `idusuario`,`usuario`.`usuario` AS `usuario`,`usuario`.`telefono` AS `telefono`,`usuario`.`correo` AS `correo`,`usuario`.`password` AS `password`,`usuario`.`genero` AS `genero`,`usuario`.`ciudad_id_ciudad` AS `ciudad_id_ciudad`,`usuario`.`perfil` AS `perfil`,`categoria`.`idcategoria` AS `idcategoria`,`categoria`.`categoria` AS `categoria`,`ciudad`.`id_ciudad` AS `id_ciudad`,`ciudad`.`ciudad` AS `ciudad`,`ciudad`.`direccion` AS `direccion`,`ciudad`.`departamento_id_departamento` AS `departamento_id_departamento` from (((`producto` join `usuario` on((`producto`.`usuario_idusuario` = `usuario`.`idusuario`))) join `categoria` on((`producto`.`categoria_idcategoria` = `categoria`.`idcategoria`))) join `ciudad` on((`usuario`.`ciudad_id_ciudad` = `ciudad`.`id_ciudad`))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

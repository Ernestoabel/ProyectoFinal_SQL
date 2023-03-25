/*Backup del esquema panialera_renacer con: 

Tablas de registros:articulo,
					red_social,
					usuario,
                    consulta,
                    publicacion,
                    facturacion,
                    publicacion_2022,
                    publicacion_2023,
                    
Tablas de vistas: 	vista_simple_articulos,
					vista_usuarios_comentarios,
                    vista_publicaciones_ordenadas_por_visitas,
                    vista_publicacion_vistas_mayor_al_promedio,
                    vista_nombres_usuarios
                    vista_ventas_(dia de la semana).
                    
Tablas triggers:tabla_stock_modificado,
				tabla_stock_antes_modificado,
                log_tabla_articulo,
                log_tabla_consulta,
                log_tabla_publicacion.
*/


-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: panialera_renacer
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articulo`
--

DROP TABLE IF EXISTS `articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulo` (
  `id_articulo` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(51) DEFAULT NULL,
  `id_rubro` int NOT NULL,
  `costo` decimal(18,2) DEFAULT NULL,
  `precioVenta` decimal(18,2) DEFAULT NULL,
  `IVA` tinyint DEFAULT '21',
  `precioFinal` decimal(18,2) DEFAULT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`id_articulo`),
  KEY `id_rubro` (`id_rubro`),
  CONSTRAINT `articulo_ibfk_1` FOREIGN KEY (`id_rubro`) REFERENCES `rubro` (`id_rubro`)
) ENGINE=InnoDB AUTO_INCREMENT=1052 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo`
--

LOCK TABLES `articulo` WRITE;
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
INSERT INTO `articulo` VALUES (1001,'Mamadera',2,3560.00,4984.00,21,6728.40,25),(1002,'adipiscing lorem',3,9609.00,13260.42,21,16045.11,199),(1003,'massa',3,4603.00,6398.17,21,7741.79,145),(1004,'sapien arcu',2,14023.00,17388.52,21,18988.70,44),(1005,'elementum',3,3127.00,3877.48,21,4234.30,36),(1006,'diam neque',4,8376.00,10470.00,21,12668.70,198),(1007,'ipsum',4,10516.00,13145.00,21,15905.45,144),(1008,'nullam',2,4485.00,5426.85,21,6566.49,153),(1009,'consectetuer',5,11522.00,15324.26,21,16734.47,80),(1010,'eu pede',4,8378.00,10975.18,21,13279.97,46),(1011,'nunc purus',1,6995.00,9443.25,21,11426.33,147),(1012,'tempor',1,1921.00,2535.72,21,3068.22,178),(1013,'nullam',1,7881.00,9772.44,21,11824.65,25),(1014,'etiam',2,8503.00,10373.66,21,11328.29,173),(1015,'tincidunt',2,4488.00,5475.36,21,6625.19,15),(1016,'vitae',2,10384.00,13291.52,21,16082.74,129),(1017,'faucibus',4,10998.00,14187.42,21,15493.02,91),(1018,'vestibulum',5,8020.00,10907.20,21,13197.71,59),(1019,'vivamus metus',4,5679.00,7382.70,21,8062.10,65),(1020,'eget eleifend',2,10689.00,13468.14,21,14707.55,66),(1021,'amet nulla',3,6904.00,8699.04,21,10525.84,211),(1022,'condimentum id',1,2770.00,3684.10,21,4457.76,136),(1023,'donec',4,11647.00,14558.75,21,15898.53,212),(1024,'sed',5,11817.00,14416.74,21,15743.45,163),(1025,'at',2,8358.00,10113.18,21,11043.85,43),(1026,'neque aenean',1,4045.00,4975.35,21,6020.17,87),(1027,'interdum',5,13883.00,16937.26,21,20494.08,142),(1028,'phasellus',3,13786.00,17921.80,21,19571.05,114),(1029,'in imperdiet',4,6638.00,8031.98,21,9718.70,114),(1030,'lacus curabitur',2,5340.00,6942.00,21,8399.82,136),(1031,'integer',5,12199.00,16834.62,21,20369.89,74),(1032,'nibh in',2,13870.00,19279.30,21,21053.47,199),(1033,'neque sapien',4,3152.00,3908.48,21,4268.16,209),(1034,'mattis pulvinar',5,2224.00,2957.92,21,3579.08,76),(1035,'nulla eget',4,11722.00,15824.70,21,17280.98,43),(1036,'praesent id',4,14864.00,18134.08,21,21942.24,18),(1037,'a',5,8332.00,10581.64,21,12803.78,175),(1038,'at velit',5,7202.00,9074.52,21,9909.60,194),(1039,'sagittis',2,8060.00,10075.00,21,12190.75,120),(1040,'vestibulum sit',3,11257.00,14746.67,21,16103.74,130),(1041,'magna',2,4549.00,6050.17,21,6606.94,90),(1042,'justo',5,11759.00,15521.88,21,18781.47,25),(1043,'amet',1,2925.00,4007.25,21,4848.77,206),(1044,'ultrices posuere',4,13495.00,18488.15,21,22370.66,238),(1045,'adipiscing',4,5337.00,7311.69,21,7984.54,140),(1046,'posuere felis',4,8599.00,11694.64,21,12770.83,119),(1047,'ut massa',1,8098.00,10851.32,21,13130.10,68),(1048,'vestibulum',3,8192.00,11223.04,21,12255.85,196),(1049,'tortor',3,8677.00,10585.94,21,12808.99,178),(1050,'aliquet massa',2,1850.00,2442.00,21,2666.73,107),(1051,'lobortis',5,5869.00,7688.39,21,9302.95,115);
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consulta` (
  `id_usuario` int DEFAULT NULL,
  `id_publicacion` int DEFAULT NULL,
  `nombreUsuario` varchar(51) DEFAULT NULL,
  `consulta` varchar(500) DEFAULT NULL,
  `positiva` tinyint DEFAULT NULL,
  KEY `id_usuario` (`id_usuario`),
  KEY `id_publicacion` (`id_publicacion`),
  CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`id_publicacion`) REFERENCES `publicacion` (`id_publicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturacion`
--

DROP TABLE IF EXISTS `facturacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturacion` (
  `id_articulo` int NOT NULL,
  `id_usuario` int NOT NULL,
  `numero` int NOT NULL AUTO_INCREMENT,
  `CUIT` bigint NOT NULL,
  `razonSocial` varchar(151) DEFAULT NULL,
  `domicilioFiscal` varchar(151) DEFAULT NULL,
  `tipo` char(1) NOT NULL,
  `cantidad` int NOT NULL,
  `importe` int NOT NULL,
  PRIMARY KEY (`numero`),
  KEY `id_articulo` (`id_articulo`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `facturacion_ibfk_1` FOREIGN KEY (`id_articulo`) REFERENCES `articulo` (`id_articulo`),
  CONSTRAINT `facturacion_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=100203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturacion`
--

LOCK TABLES `facturacion` WRITE;
/*!40000 ALTER TABLE `facturacion` DISABLE KEYS */;
INSERT INTO `facturacion` VALUES (1006,10051,100001,8342064182,'metus vitae ipsum','ipsum','A',2,25337),(1006,10051,100002,8342064182,'metus vitae ipsum','ipsum','A',2,25337),(1038,10077,100003,4984923326,'erat curabitur gravida','curabitur','A',5,54901),(1024,10097,100004,9576008379,'aenean lectus','at','A',3,52333),(1030,10015,100005,4101242003,'sollicitudin','neque','A',4,33599),(1048,10074,100006,6365046820,'orci luctus','lobortis','A',2,27160),(1001,10070,100007,1092081097,'leo','in','A',3,18092),(1005,10056,100008,8798113178,'cras in','posuere','A',4,18767),(1011,10003,100009,7677670911,'platea','cubilia','A',1,11426),(1002,10100,100010,2510138715,'quam a odio','massa','A',5,80226),(1005,10058,100011,5732273107,'magna','suscipit','A',1,4692),(1037,10062,100012,5052183496,'volutpat dui maecenas','rhoncus','A',4,51215),(1047,10093,100013,7643086613,'ut massa','quisque','A',2,26260),(1017,10056,100014,4040981278,'pharetra','congue','A',1,17167),(1001,10045,100015,6269623146,'donec','eleifend','A',1,6031),(1037,10082,100016,5545813349,'elit sodales','massa','A',4,51215),(1032,10028,100017,5388096815,'penatibus','ligula','A',3,69984),(1038,10035,100018,2328174515,'eget eleifend','elementum','A',3,32941),(1021,10055,100019,5510556579,'amet','in','A',1,10526),(1003,10037,100020,2798303559,'est lacinia nisi','tempus','A',1,7742),(1021,10022,100021,2080814036,'eu tincidunt in','imperdiet','A',3,31578),(1040,10014,100022,9287452229,'lectus in quam','in','A',2,35687),(1041,10007,100023,523647158,'sem sed','donec','A',1,7321),(1041,10030,100024,2852104636,'amet sem','tempus','A',2,14641),(1011,10012,100025,1449203973,'dui','in','A',4,45705),(1005,10086,100026,7845981036,'fermentum donec ut','dui','A',2,9384),(1017,10095,100027,287932575,'magna','vitae','A',1,17167),(1001,10071,100028,1849786623,'quisque arcu libero','elit','A',2,12061),(1018,10093,100029,4858368831,'faucibus orci luctus','imperdiet','A',4,52791),(1037,10054,100030,8410357291,'sed tristique','donec','A',5,64019),(1009,10078,100031,8173700990,'posuere nonummy integer','in','A',1,18542),(1004,10041,100032,6442910989,'eget nunc','amet','A',5,105201),(1010,10085,100033,1637627300,'proin','pellentesque','A',2,26560),(1034,10073,100034,5983426699,'fusce','quam','A',4,14316),(1006,10016,100035,5826421347,'ridiculus','congue','A',1,12669),(1023,10016,100036,8116196448,'tellus','nullam','A',2,35232),(1047,10036,100037,7104843728,'nec condimentum','ultrices','A',2,26260),(1040,10087,100038,5917740607,'ut rhoncus','nunc','A',2,35687),(1022,10042,100039,8817989126,'habitasse platea dictumst','accumsan','A',3,13373),(1038,10007,100040,6842285682,'libero','vulputate','A',4,43921),(1023,10080,100041,6461832181,'morbi vel lectus','leo','A',1,17616),(1044,10043,100042,5266990546,'elit','sed','A',1,22371),(1031,10071,100043,9108430780,'augue a suscipit','fusce','A',1,20370),(1033,10002,100044,865673446,'vestibulum ac est','amet','A',4,18917),(1040,10060,100045,5717331959,'ut massa','suscipit','A',1,17843),(1014,10018,100046,6049031150,'lectus in','in','A',3,37656),(1021,10047,100047,848248244,'augue luctus','elit','A',4,42103),(1049,10042,100048,3656279993,'dui nec','porta','A',4,51236),(1045,10007,100049,3957460611,'aliquet','congue','A',5,44236),(1042,10071,100050,4195332478,'dui','ligula','A',4,75126),(1033,10004,100051,5223768280,'aliquam quis','lorem','A',4,18917),(1043,10067,100052,4213674754,'nulla','orci','A',1,4849),(1035,10025,100053,3099784311,'semper','duis','A',4,76592),(1031,10011,100054,8144383605,'libero','orci','A',2,40740),(1009,10010,100055,3459455489,'morbi','ac','A',5,92712),(1022,10043,100056,2747754448,'ultrices phasellus','dictumst','A',2,8916),(1039,10023,100057,2173880667,'sollicitudin ut suscipit','ipsum','A',5,60954),(1033,10066,100058,8968248648,'mauris ullamcorper','congue','A',1,4729),(1014,10053,100059,1519672691,'diam neque vestibulum','orci','A',5,62761),(1023,10028,100060,4062863626,'commodo vulputate','a','A',1,17616),(1034,10044,100061,5969045292,'ut massa quis','donec','A',4,14316),(1031,10007,100062,7276269574,'morbi vel','volutpat','A',5,101849),(1038,10076,100063,7549135568,'a libero nam','iaculis','A',5,54901),(1029,10031,100064,9701973631,'curabitur convallis duis','nunc','A',4,38875),(1005,10064,100065,3673408518,'luctus','aenean','A',2,9384),(1049,10018,100066,2448556237,'dapibus at diam','lacus','A',1,12809),(1026,10079,100067,3297915528,'libero convallis eget','vivamus','A',3,18061),(1039,10031,100068,3394457695,'dui proin','ut','A',5,60954),(1034,10081,100069,90290992,'nibh in','bibendum','A',1,3579),(1046,10090,100070,922063737,'quam','curabitur','A',5,70753),(1033,10060,100071,731215826,'nulla tellus','dictumst','A',4,18917),(1032,10094,100072,7714287837,'sit amet sem','neque','A',1,23328),(1051,10017,100073,6658804702,'molestie sed','in','A',2,18606),(1044,10094,100074,7093472117,'aliquam convallis','sed','A',5,111853),(1007,10001,100075,7691309120,'orci luctus','dictumst','A',3,47716),(1020,10076,100076,6298336788,'ut','parturient','A',3,48889),(1045,10013,100077,7552979046,'lobortis','laoreet','A',2,17694),(1003,10043,100078,6131391556,'ultrices enim lorem','mauris','A',1,7742),(1003,10004,100079,8344732379,'purus phasellus in','augue','A',3,23225),(1015,10092,100080,4612347862,'tortor eu','nec','A',3,19876),(1035,10052,100081,2266052519,'sapien varius ut','vel','A',5,95739),(1047,10088,100082,9404637335,'nulla','suspendisse','A',2,26260),(1004,10015,100083,5251681720,'eget','odio','A',5,105201),(1001,10029,100084,9311413631,'vestibulum','lorem','A',2,12061),(1045,10028,100085,6214761350,'venenatis tristique','dolor','A',3,26541),(1046,10058,100086,308879856,'lacinia nisi','congue','A',3,42452),(1041,10035,100087,9956216429,'in','est','A',1,7321),(1021,10098,100088,5596237027,'sodales sed','arcu','A',5,52629),(1044,10082,100089,4239383129,'tortor','etiam','A',2,44741),(1026,10021,100090,7124509610,'ut','convallis','A',1,6020),(1008,10029,100091,5267647101,'sit amet','enim','A',4,26266),(1012,10065,100092,9965992150,'vulputate nonummy','sit','A',5,15341),(1005,10057,100093,488790735,'in sagittis','amet','A',2,9384),(1020,10026,100094,5186065641,'enim','hac','A',5,81482),(1039,10059,100095,5692382814,'quam a','elit','A',5,60954),(1048,10003,100096,1470100584,'purus','ridiculus','A',1,13580),(1006,10042,100097,5780667519,'etiam','enim','A',3,38006),(1017,10051,100098,1401042937,'quis justo maecenas','vivamus','A',2,34334),(1023,10020,100099,1499028288,'at','donec','A',3,52848),(1010,10064,100100,1178586421,'dolor','nam','A',1,13280),(1047,10046,100101,3534932501,'quam nec dui','eget','A',4,52520),(1014,10066,100102,2682153704,'non','rutrum','A',3,37656),(1004,10068,100103,9515447593,'sed','mauris','A',3,63120),(1014,10043,100104,6667318920,'luctus tincidunt','eget','A',2,25104),(1003,10022,100105,8375074349,'ut','magna','A',4,30967),(1030,10091,100106,1182852599,'sit amet','vitae','A',2,16800),(1029,10008,100107,7128416633,'convallis','justo','A',4,38875),(1001,10020,100108,2055849859,'duis ac nibh','tempor','A',5,30153),(1018,10035,100109,6380394346,'non mauris','in','A',2,26395),(1045,10060,100110,8863793271,'pharetra magna ac','mus','A',5,44236),(1042,10068,100111,6863977230,'platea dictumst','non','A',2,37563),(1015,10011,100112,6090527300,'viverra pede','felis','A',2,13250),(1007,10084,100113,7041701859,'dapibus nulla suscipit','penatibus','A',5,79527),(1029,10073,100114,5440638938,'felis fusce posuere','nisl','A',5,48594),(1037,10072,100115,6258388760,'ligula in lacus','purus','A',2,25608),(1011,10001,100116,2335349619,'enim blandit mi','auctor','A',2,22853),(1029,10012,100117,9900573021,'in imperdiet et','mauris','A',4,38875),(1029,10032,100118,6632304834,'posuere cubilia','turpis','A',3,29156),(1040,10043,100119,44552025,'lobortis sapien sapien','sapien','A',2,35687),(1030,10062,100120,8670244403,'porttitor','id','A',4,33599),(1018,10003,100121,6276367680,'dapibus','nulla','A',5,65989),(1046,10062,100122,8834567854,'duis','lobortis','A',3,42452),(1030,10052,100123,7822645358,'magnis','eget','A',1,8400),(1041,10052,100124,31443761,'ipsum','integer','A',4,29283),(1017,10097,100125,2823316663,'ac tellus','luctus','A',5,85834),(1005,10086,100126,6879813755,'nibh ligula nec','sed','A',1,4692),(1030,10057,100127,1609199006,'nullam','turpis','A',5,41999),(1013,10051,100128,2975002203,'orci mauris lacinia','justo','A',4,47299),(1018,10061,100129,1968406204,'in felis','suspendisse','A',5,65989),(1036,10095,100130,7002914030,'lorem quisque ut','fermentum','A',2,43884),(1011,10069,100131,2008741117,'consequat metus','morbi','A',2,22853),(1012,10030,100132,6963435499,'consequat varius','ante','A',4,12273),(1029,10029,100133,7067927811,'nec nisi','nibh','A',4,38875),(1046,10062,100134,3829723296,'ultrices mattis odio','vestibulum','A',2,28301),(1005,10083,100135,9097492432,'cras pellentesque volutpat','erat','A',4,18767),(1045,10041,100136,2950313485,'turpis donec','vehicula','A',1,8847),(1030,10020,100137,5634357586,'mattis egestas metus','tristique','A',4,33599),(1024,10062,100138,8555707617,'habitasse','placerat','A',4,69777),(1028,10020,100139,1349671436,'lorem quisque ut','nunc','A',1,21685),(1022,10083,100140,6063858849,'justo','lectus','A',4,17831),(1031,10050,100141,8797211745,'convallis nulla','in','A',5,101849),(1009,10060,100142,3663713474,'aliquet massa','aenean','A',1,18542),(1019,10018,100143,5465304685,'sed sagittis nam','faucibus','A',1,8933),(1014,10089,100144,4583428448,'id nulla','justo','A',2,25104),(1031,10034,100145,2493750918,'congue','lorem','A',2,40740),(1048,10070,100146,1784060496,'elit','ac','A',3,40740),(1025,10032,100147,8745160422,'ligula sit amet','hendrerit','A',1,12237),(1025,10015,100148,8607119427,'massa id nisl','ullamcorper','A',5,61185),(1003,10099,100149,3725675562,'pretium quis','diam','A',4,30967),(1038,10033,100150,6958207327,'et magnis dis','pellentesque','A',4,43921),(1002,10020,100151,9435872697,'id justo sit','purus','A',2,32090),(1029,10040,100152,295204575,'maecenas','a','A',4,38875),(1049,10012,100153,3991543397,'in imperdiet et','enim','A',1,12809),(1045,10083,100154,6080063972,'dictumst etiam faucibus','ultrices','A',4,35389),(1035,10084,100155,3356086405,'ipsum integer','tellus','A',1,19148),(1013,10074,100156,7586509654,'lacinia','ut','A',5,59123),(1010,10002,100157,1108964788,'mollis molestie lorem','faucibus','A',1,13280),(1005,10041,100158,9833288057,'magnis dis parturient','luctus','A',5,23459),(1027,10024,100159,6290551000,'nisi','habitasse','A',4,81976),(1039,10033,100160,405291124,'congue elementum','risus','A',5,60954),(1038,10057,100161,9936747542,'non mattis pulvinar','ultrices','A',5,54901),(1029,10066,100162,7385358373,'volutpat quam pede','consectetuer','A',5,48594),(1044,10050,100163,4521819281,'fringilla rhoncus mauris','convallis','A',4,89483),(1010,10021,100164,5170281188,'interdum mauris','non','A',1,13280),(1002,10014,100165,866081747,'varius integer','lacus','A',5,80226),(1028,10008,100166,8015596874,'venenatis non sodales','integer','A',3,65056),(1005,10050,100167,5981229454,'curae mauris','elementum','A',2,9384),(1028,10068,100168,8747451580,'aliquam lacus morbi','eu','A',2,43371),(1019,10085,100169,2675032050,'ultrices','integer','A',2,17866),(1050,10014,100170,8663748396,'faucibus','purus','A',3,8864),(1026,10055,100171,3686692929,'mattis egestas','vulputate','A',3,18061),(1042,10078,100172,1857794362,'mauris ullamcorper purus','pretium','A',5,93907),(1049,10016,100173,8259248352,'nec','vulputate','A',5,64045),(1051,10072,100174,4336466750,'vulputate justo in','vitae','A',2,18606),(1048,10060,100175,1428498265,'vel augue vestibulum','at','A',3,40740),(1039,10074,100176,1846497132,'luctus','cubilia','A',5,60954),(1020,10056,100177,3226046004,'placerat ante nulla','nulla','A',2,32593),(1006,10035,100178,7938153850,'nibh','tempor','A',4,50675),(1019,10059,100179,7328595647,'vehicula consequat','quis','A',3,26799),(1034,10050,100180,1016709978,'mauris viverra diam','aliquet','A',1,3579),(1009,10047,100181,762836679,'mi in porttitor','consectetuer','A',2,37085),(1051,10038,100182,389464015,'mauris vulputate','sodales','A',3,27909),(1028,10071,100183,5561527355,'tellus nisi eu','sit','A',4,86742),(1018,10054,100184,6989921390,'faucibus accumsan','posuere','A',2,26395),(1037,10010,100185,9972335143,'volutpat quam pede','diam','A',2,25608),(1018,10099,100186,2005607274,'velit eu est','nisl','A',1,13198),(1030,10060,100187,8781336950,'nunc nisl','eget','A',2,16800),(1010,10059,100188,8825159188,'posuere cubilia','consequat','A',3,39840),(1031,10012,100189,9847149003,'sollicitudin','orci','A',5,101849),(1025,10043,100190,534807399,'amet eleifend','justo','A',4,48948),(1009,10022,100191,7852558747,'rhoncus sed','libero','A',4,74169),(1013,10095,100192,8147318707,'dui nec nisi','vitae','A',3,35474),(1029,10047,100193,953835340,'pede malesuada','sapien','A',4,38875),(1013,10084,100194,4620748048,'ridiculus mus vivamus','ut','A',2,23649),(1012,10023,100195,8279650539,'nam ultrices','proin','A',5,15341),(1028,10008,100196,1042619174,'at lorem','at','A',2,43371),(1033,10036,100197,6410058799,'pellentesque eget','vulputate','A',3,14188),(1001,10076,100198,4107390330,'diam nam','nisl','A',1,6031),(1049,10091,100199,4744683320,'ipsum dolor','quis','A',1,12809),(1010,10036,100200,7030841638,'ligula suspendisse ornare','orci','A',5,66400),(1038,10057,100201,3129958576,'tortor id','a','A',4,43921),(1015,10089,100202,2700233271,'vestibulum aliquet','augue','A',1,6625);
/*!40000 ALTER TABLE `facturacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_tabla_articulo`
--

DROP TABLE IF EXISTS `log_tabla_articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_tabla_articulo` (
  `tsActualiza` timestamp NULL DEFAULT NULL,
  `esquema` varchar(51) DEFAULT NULL,
  `operacion` varchar(6) DEFAULT NULL,
  `registro` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_tabla_articulo`
--

LOCK TABLES `log_tabla_articulo` WRITE;
/*!40000 ALTER TABLE `log_tabla_articulo` DISABLE KEYS */;
INSERT INTO `log_tabla_articulo` VALUES ('2023-03-23 00:13:59','panialera_renacer','update',1),('2023-03-23 22:51:44','panialera_renacer','update',1),('2023-03-23 22:52:09','panialera_renacer','update',1),('2023-03-23 22:52:09','panialera_renacer','update',1),('2023-03-23 22:52:09','panialera_renacer','update',1),('2023-03-23 22:52:09','panialera_renacer','update',1),('2023-03-23 22:52:09','panialera_renacer','update',1),('2023-03-23 22:52:09','panialera_renacer','update',1),('2023-03-23 22:52:09','panialera_renacer','update',1),('2023-03-23 22:52:09','panialera_renacer','update',1),('2023-03-23 22:52:09','panialera_renacer','update',1),('2023-03-23 22:52:09','panialera_renacer','update',1),('2023-03-23 22:52:09','panialera_renacer','update',1),('2023-03-23 22:52:09','panialera_renacer','update',1),('2023-03-23 22:52:09','panialera_renacer','update',1),('2023-03-23 22:52:09','panialera_renacer','update',1),('2023-03-23 22:52:09','panialera_renacer','update',1),('2023-03-23 22:52:09','panialera_renacer','update',1),('2023-03-23 22:52:09','panialera_renacer','update',1),('2023-03-23 22:52:09','panialera_renacer','update',1),('2023-03-23 22:52:09','panialera_renacer','update',1),('2023-03-23 22:52:09','panialera_renacer','update',1),('2023-03-23 22:52:09','panialera_renacer','update',1),('2023-03-23 23:41:12','panialera_renacer','update',1),('2023-03-23 23:41:12','panialera_renacer','update',1),('2023-03-23 23:41:12','panialera_renacer','update',1),('2023-03-23 23:41:12','panialera_renacer','update',1),('2023-03-23 23:41:12','panialera_renacer','update',1),('2023-03-23 23:41:12','panialera_renacer','update',1),('2023-03-23 23:41:12','panialera_renacer','update',1),('2023-03-23 23:41:12','panialera_renacer','update',1),('2023-03-23 23:41:12','panialera_renacer','update',1),('2023-03-23 23:41:12','panialera_renacer','update',1),('2023-03-23 23:41:12','panialera_renacer','update',1),('2023-03-23 23:41:12','panialera_renacer','update',1),('2023-03-23 23:41:12','panialera_renacer','update',1),('2023-03-23 23:41:12','panialera_renacer','update',1),('2023-03-23 23:41:12','panialera_renacer','update',1),('2023-03-23 23:41:12','panialera_renacer','update',1),('2023-03-23 23:41:12','panialera_renacer','update',1),('2023-03-23 23:41:12','panialera_renacer','update',1),('2023-03-23 23:41:12','panialera_renacer','update',1),('2023-03-23 23:41:12','panialera_renacer','update',1),('2023-03-23 23:41:12','panialera_renacer','update',1),('2023-03-24 01:42:51','panialera_renacer','update',1),('2023-03-24 01:52:47','panialera_renacer','update',1);
/*!40000 ALTER TABLE `log_tabla_articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_tabla_consulta`
--

DROP TABLE IF EXISTS `log_tabla_consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_tabla_consulta` (
  `tsActualiza` timestamp NULL DEFAULT NULL,
  `esquema` varchar(51) DEFAULT NULL,
  `operacion` varchar(6) DEFAULT NULL,
  `registro` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_tabla_consulta`
--

LOCK TABLES `log_tabla_consulta` WRITE;
/*!40000 ALTER TABLE `log_tabla_consulta` DISABLE KEYS */;
INSERT INTO `log_tabla_consulta` VALUES ('2023-03-23 19:54:10','panialera_renacer','insert',1),('2023-03-23 19:54:10','panialera_renacer','insert',1),('2023-03-23 19:54:10','panialera_renacer','insert',1),('2023-03-23 19:54:10','panialera_renacer','insert',1),('2023-03-23 19:54:10','panialera_renacer','insert',1),('2023-03-23 19:54:10','panialera_renacer','insert',1),('2023-03-23 19:54:10','panialera_renacer','insert',1),('2023-03-23 19:54:10','panialera_renacer','insert',1),('2023-03-23 19:54:10','panialera_renacer','insert',1),('2023-03-23 19:54:10','panialera_renacer','insert',1),('2023-03-23 19:54:10','panialera_renacer','insert',1),('2023-03-23 19:54:10','panialera_renacer','insert',1),('2023-03-23 19:54:11','panialera_renacer','insert',1),('2023-03-23 19:54:11','panialera_renacer','insert',1),('2023-03-23 19:54:11','panialera_renacer','insert',1),('2023-03-23 19:54:11','panialera_renacer','insert',1),('2023-03-23 19:54:11','panialera_renacer','insert',1),('2023-03-23 19:54:11','panialera_renacer','insert',1),('2023-03-23 19:54:11','panialera_renacer','insert',1),('2023-03-23 19:54:11','panialera_renacer','insert',1),('2023-03-23 19:54:11','panialera_renacer','insert',1),('2023-03-23 19:54:11','panialera_renacer','insert',1),('2023-03-23 19:54:11','panialera_renacer','insert',1),('2023-03-23 19:54:11','panialera_renacer','insert',1),('2023-03-23 19:54:11','panialera_renacer','insert',1),('2023-03-23 19:54:12','panialera_renacer','insert',1),('2023-03-23 19:54:12','panialera_renacer','insert',1),('2023-03-23 19:54:12','panialera_renacer','insert',1),('2023-03-23 19:54:12','panialera_renacer','insert',1),('2023-03-23 19:54:12','panialera_renacer','insert',1),('2023-03-23 19:54:12','panialera_renacer','insert',1),('2023-03-23 19:54:12','panialera_renacer','insert',1),('2023-03-23 19:54:12','panialera_renacer','insert',1),('2023-03-23 19:54:12','panialera_renacer','insert',1),('2023-03-23 19:54:12','panialera_renacer','insert',1),('2023-03-23 19:54:12','panialera_renacer','insert',1),('2023-03-23 19:54:12','panialera_renacer','insert',1),('2023-03-23 19:54:12','panialera_renacer','insert',1),('2023-03-23 19:54:12','panialera_renacer','insert',1),('2023-03-23 19:54:12','panialera_renacer','insert',1),('2023-03-23 19:54:12','panialera_renacer','insert',1),('2023-03-23 19:54:13','panialera_renacer','insert',1),('2023-03-23 19:54:13','panialera_renacer','insert',1),('2023-03-23 19:54:13','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:43','panialera_renacer','insert',1),('2023-03-23 19:56:44','panialera_renacer','insert',1),('2023-03-23 19:56:44','panialera_renacer','insert',1),('2023-03-23 19:56:44','panialera_renacer','insert',1),('2023-03-23 19:56:44','panialera_renacer','insert',1),('2023-03-23 19:56:44','panialera_renacer','insert',1),('2023-03-23 19:56:44','panialera_renacer','insert',1),('2023-03-23 19:56:44','panialera_renacer','insert',1),('2023-03-23 19:56:44','panialera_renacer','insert',1),('2023-03-23 19:56:44','panialera_renacer','insert',1),('2023-03-23 19:56:44','panialera_renacer','insert',1),('2023-03-23 19:56:44','panialera_renacer','insert',1),('2023-03-23 19:56:44','panialera_renacer','insert',1),('2023-03-23 19:56:44','panialera_renacer','insert',1),('2023-03-23 19:56:44','panialera_renacer','insert',1),('2023-03-23 19:56:44','panialera_renacer','insert',1),('2023-03-23 19:56:44','panialera_renacer','insert',1),('2023-03-23 19:56:44','panialera_renacer','insert',1),('2023-03-23 19:56:44','panialera_renacer','insert',1),('2023-03-23 19:56:44','panialera_renacer','insert',1),('2023-03-23 19:57:47','panialera_renacer','insert',1),('2023-03-23 19:57:47','panialera_renacer','insert',1),('2023-03-23 19:57:47','panialera_renacer','insert',1),('2023-03-23 19:57:47','panialera_renacer','insert',1),('2023-03-23 19:57:47','panialera_renacer','insert',1),('2023-03-23 19:57:47','panialera_renacer','insert',1),('2023-03-23 19:57:47','panialera_renacer','insert',1),('2023-03-23 19:57:47','panialera_renacer','insert',1),('2023-03-23 19:57:47','panialera_renacer','insert',1),('2023-03-23 19:57:47','panialera_renacer','insert',1),('2023-03-23 19:57:47','panialera_renacer','insert',1),('2023-03-23 19:57:47','panialera_renacer','insert',1),('2023-03-23 19:57:47','panialera_renacer','insert',1),('2023-03-23 19:57:47','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 19:57:48','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:31','panialera_renacer','insert',1),('2023-03-23 20:01:32','panialera_renacer','insert',1),('2023-03-23 20:01:32','panialera_renacer','insert',1),('2023-03-23 20:01:32','panialera_renacer','insert',1),('2023-03-23 20:01:32','panialera_renacer','insert',1),('2023-03-23 20:01:32','panialera_renacer','insert',1),('2023-03-23 20:01:32','panialera_renacer','insert',1),('2023-03-23 20:01:32','panialera_renacer','insert',1),('2023-03-23 20:01:32','panialera_renacer','insert',1),('2023-03-23 20:01:32','panialera_renacer','insert',1),('2023-03-23 20:01:32','panialera_renacer','insert',1),('2023-03-23 20:01:32','panialera_renacer','insert',1),('2023-03-23 20:01:32','panialera_renacer','insert',1),('2023-03-23 20:01:32','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:33','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:34','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:35','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:36','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:37','panialera_renacer','insert',1),('2023-03-23 20:01:38','panialera_renacer','insert',1),('2023-03-23 20:01:38','panialera_renacer','insert',1),('2023-03-23 20:01:38','panialera_renacer','insert',1),('2023-03-23 20:01:38','panialera_renacer','insert',1),('2023-03-23 20:01:38','panialera_renacer','insert',1),('2023-03-23 20:01:38','panialera_renacer','insert',1),('2023-03-23 20:01:38','panialera_renacer','insert',1),('2023-03-23 20:01:38','panialera_renacer','insert',1),('2023-03-23 20:01:38','panialera_renacer','insert',1),('2023-03-23 20:01:39','panialera_renacer','insert',1),('2023-03-23 20:01:39','panialera_renacer','insert',1),('2023-03-23 20:01:39','panialera_renacer','insert',1),('2023-03-23 20:01:39','panialera_renacer','insert',1),('2023-03-23 20:01:39','panialera_renacer','insert',1),('2023-03-23 20:01:39','panialera_renacer','insert',1),('2023-03-23 20:01:39','panialera_renacer','insert',1),('2023-03-23 20:01:39','panialera_renacer','insert',1),('2023-03-23 20:01:39','panialera_renacer','insert',1),('2023-03-23 20:01:39','panialera_renacer','insert',1),('2023-03-23 20:01:39','panialera_renacer','insert',1),('2023-03-23 20:01:39','panialera_renacer','insert',1),('2023-03-23 20:01:39','panialera_renacer','insert',1),('2023-03-23 20:01:39','panialera_renacer','insert',1),('2023-03-23 20:01:39','panialera_renacer','insert',1),('2023-03-23 20:01:39','panialera_renacer','insert',1),('2023-03-23 20:01:39','panialera_renacer','insert',1),('2023-03-23 20:01:39','panialera_renacer','insert',1),('2023-03-23 20:01:39','panialera_renacer','insert',1),('2023-03-23 20:01:39','panialera_renacer','insert',1),('2023-03-23 20:01:39','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:40','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:41','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:42','panialera_renacer','insert',1),('2023-03-23 20:01:43','panialera_renacer','insert',1),('2023-03-23 20:01:43','panialera_renacer','insert',1),('2023-03-23 20:01:43','panialera_renacer','insert',1),('2023-03-23 20:01:43','panialera_renacer','insert',1),('2023-03-23 20:01:43','panialera_renacer','insert',1),('2023-03-23 20:01:43','panialera_renacer','insert',1),('2023-03-23 20:01:43','panialera_renacer','insert',1),('2023-03-23 20:01:43','panialera_renacer','insert',1),('2023-03-23 20:01:43','panialera_renacer','insert',1),('2023-03-23 20:01:43','panialera_renacer','insert',1),('2023-03-23 20:01:43','panialera_renacer','insert',1),('2023-03-23 20:01:43','panialera_renacer','insert',1),('2023-03-23 20:01:43','panialera_renacer','insert',1),('2023-03-23 20:01:43','panialera_renacer','insert',1),('2023-03-23 20:01:43','panialera_renacer','insert',1),('2023-03-23 20:01:43','panialera_renacer','insert',1),('2023-03-23 20:01:43','panialera_renacer','insert',1),('2023-03-23 20:01:43','panialera_renacer','insert',1),('2023-03-23 20:01:44','panialera_renacer','insert',1),('2023-03-23 20:01:44','panialera_renacer','insert',1),('2023-03-23 20:01:44','panialera_renacer','insert',1),('2023-03-23 20:01:44','panialera_renacer','insert',1),('2023-03-23 20:01:44','panialera_renacer','insert',1),('2023-03-23 20:01:44','panialera_renacer','insert',1),('2023-03-23 20:01:44','panialera_renacer','insert',1),('2023-03-23 20:01:44','panialera_renacer','insert',1),('2023-03-23 20:01:44','panialera_renacer','insert',1),('2023-03-23 20:01:44','panialera_renacer','insert',1),('2023-03-23 20:04:13','panialera_renacer','insert',1),('2023-03-23 20:04:13','panialera_renacer','insert',1),('2023-03-23 20:04:13','panialera_renacer','insert',1),('2023-03-23 20:04:13','panialera_renacer','insert',1),('2023-03-23 20:04:13','panialera_renacer','insert',1),('2023-03-23 20:04:13','panialera_renacer','insert',1),('2023-03-23 20:04:13','panialera_renacer','insert',1),('2023-03-23 20:04:14','panialera_renacer','insert',1),('2023-03-23 20:04:14','panialera_renacer','insert',1),('2023-03-23 20:04:14','panialera_renacer','insert',1),('2023-03-23 20:04:14','panialera_renacer','insert',1),('2023-03-23 20:04:14','panialera_renacer','insert',1),('2023-03-23 20:04:14','panialera_renacer','insert',1),('2023-03-23 20:04:14','panialera_renacer','insert',1),('2023-03-23 20:04:15','panialera_renacer','insert',1),('2023-03-23 20:04:15','panialera_renacer','insert',1),('2023-03-23 20:04:15','panialera_renacer','insert',1),('2023-03-23 20:04:15','panialera_renacer','insert',1),('2023-03-23 20:04:15','panialera_renacer','insert',1),('2023-03-23 20:04:15','panialera_renacer','insert',1),('2023-03-23 20:04:15','panialera_renacer','insert',1),('2023-03-23 20:04:15','panialera_renacer','insert',1),('2023-03-23 20:04:15','panialera_renacer','insert',1),('2023-03-23 20:04:15','panialera_renacer','insert',1),('2023-03-23 20:04:15','panialera_renacer','insert',1),('2023-03-23 20:04:16','panialera_renacer','insert',1),('2023-03-23 20:04:16','panialera_renacer','insert',1),('2023-03-23 20:04:16','panialera_renacer','insert',1),('2023-03-23 20:04:16','panialera_renacer','insert',1),('2023-03-23 20:04:16','panialera_renacer','insert',1),('2023-03-23 20:04:16','panialera_renacer','insert',1),('2023-03-23 20:04:16','panialera_renacer','insert',1),('2023-03-23 20:04:16','panialera_renacer','insert',1),('2023-03-23 20:04:16','panialera_renacer','insert',1),('2023-03-23 20:04:16','panialera_renacer','insert',1),('2023-03-23 20:04:16','panialera_renacer','insert',1),('2023-03-23 20:04:16','panialera_renacer','insert',1),('2023-03-23 20:04:16','panialera_renacer','insert',1),('2023-03-23 20:04:16','panialera_renacer','insert',1),('2023-03-23 20:04:16','panialera_renacer','insert',1),('2023-03-23 20:04:16','panialera_renacer','insert',1),('2023-03-23 20:04:16','panialera_renacer','insert',1),('2023-03-23 20:04:16','panialera_renacer','insert',1),('2023-03-23 20:04:17','panialera_renacer','insert',1),('2023-03-23 20:04:17','panialera_renacer','insert',1),('2023-03-23 20:04:17','panialera_renacer','insert',1),('2023-03-23 20:04:17','panialera_renacer','insert',1),('2023-03-23 20:04:17','panialera_renacer','insert',1),('2023-03-23 20:04:17','panialera_renacer','insert',1),('2023-03-23 20:04:17','panialera_renacer','insert',1),('2023-03-23 20:04:17','panialera_renacer','insert',1),('2023-03-23 20:04:17','panialera_renacer','insert',1),('2023-03-23 20:04:17','panialera_renacer','insert',1),('2023-03-23 20:04:17','panialera_renacer','insert',1),('2023-03-23 20:04:17','panialera_renacer','insert',1),('2023-03-23 20:04:17','panialera_renacer','insert',1),('2023-03-23 20:04:17','panialera_renacer','insert',1),('2023-03-23 20:04:17','panialera_renacer','insert',1),('2023-03-23 20:04:17','panialera_renacer','insert',1),('2023-03-23 20:04:17','panialera_renacer','insert',1),('2023-03-23 20:04:17','panialera_renacer','insert',1),('2023-03-23 20:04:17','panialera_renacer','insert',1),('2023-03-23 20:04:18','panialera_renacer','insert',1),('2023-03-23 20:04:18','panialera_renacer','insert',1),('2023-03-23 20:04:18','panialera_renacer','insert',1),('2023-03-23 20:04:18','panialera_renacer','insert',1),('2023-03-23 20:04:18','panialera_renacer','insert',1),('2023-03-23 20:04:18','panialera_renacer','insert',1),('2023-03-23 20:04:18','panialera_renacer','insert',1),('2023-03-23 20:04:18','panialera_renacer','insert',1),('2023-03-23 20:04:18','panialera_renacer','insert',1),('2023-03-23 20:04:18','panialera_renacer','insert',1),('2023-03-23 20:04:18','panialera_renacer','insert',1),('2023-03-23 20:04:18','panialera_renacer','insert',1),('2023-03-23 20:04:18','panialera_renacer','insert',1),('2023-03-23 20:04:18','panialera_renacer','insert',1),('2023-03-23 20:04:18','panialera_renacer','insert',1),('2023-03-23 20:04:18','panialera_renacer','insert',1),('2023-03-23 20:04:18','panialera_renacer','insert',1),('2023-03-23 20:04:18','panialera_renacer','insert',1),('2023-03-23 20:04:18','panialera_renacer','insert',1),('2023-03-23 20:04:18','panialera_renacer','insert',1),('2023-03-23 20:04:18','panialera_renacer','insert',1),('2023-03-23 20:04:19','panialera_renacer','insert',1),('2023-03-23 20:04:19','panialera_renacer','insert',1),('2023-03-23 20:04:19','panialera_renacer','insert',1),('2023-03-23 20:04:19','panialera_renacer','insert',1),('2023-03-23 20:04:19','panialera_renacer','insert',1),('2023-03-23 20:04:19','panialera_renacer','insert',1),('2023-03-23 20:04:19','panialera_renacer','insert',1),('2023-03-23 20:04:19','panialera_renacer','insert',1),('2023-03-23 20:04:19','panialera_renacer','insert',1),('2023-03-23 20:04:19','panialera_renacer','insert',1),('2023-03-23 20:04:19','panialera_renacer','insert',1),('2023-03-23 20:04:19','panialera_renacer','insert',1),('2023-03-23 20:04:19','panialera_renacer','insert',1),('2023-03-23 20:04:19','panialera_renacer','insert',1),('2023-03-23 20:04:19','panialera_renacer','insert',1),('2023-03-23 20:04:19','panialera_renacer','insert',1),('2023-03-23 20:04:19','panialera_renacer','insert',1),('2023-03-23 20:04:19','panialera_renacer','insert',1),('2023-03-23 20:04:19','panialera_renacer','insert',1),('2023-03-23 20:04:19','panialera_renacer','insert',1),('2023-03-23 20:04:19','panialera_renacer','insert',1),('2023-03-23 20:04:20','panialera_renacer','insert',1),('2023-03-23 20:04:20','panialera_renacer','insert',1),('2023-03-23 20:04:20','panialera_renacer','insert',1),('2023-03-23 20:04:20','panialera_renacer','insert',1),('2023-03-23 20:04:20','panialera_renacer','insert',1),('2023-03-23 20:04:20','panialera_renacer','insert',1),('2023-03-23 20:04:20','panialera_renacer','insert',1),('2023-03-23 20:04:20','panialera_renacer','insert',1),('2023-03-23 20:04:20','panialera_renacer','insert',1),('2023-03-23 20:04:20','panialera_renacer','insert',1),('2023-03-23 20:04:20','panialera_renacer','insert',1),('2023-03-23 20:04:20','panialera_renacer','insert',1),('2023-03-23 20:04:20','panialera_renacer','insert',1),('2023-03-23 20:04:20','panialera_renacer','insert',1),('2023-03-23 20:04:20','panialera_renacer','insert',1),('2023-03-23 20:04:20','panialera_renacer','insert',1),('2023-03-23 20:04:20','panialera_renacer','insert',1),('2023-03-23 20:04:20','panialera_renacer','insert',1),('2023-03-23 20:04:20','panialera_renacer','insert',1),('2023-03-23 20:04:20','panialera_renacer','insert',1),('2023-03-23 20:04:20','panialera_renacer','insert',1),('2023-03-23 20:04:20','panialera_renacer','insert',1),('2023-03-23 20:04:21','panialera_renacer','insert',1),('2023-03-23 20:04:21','panialera_renacer','insert',1),('2023-03-23 20:04:21','panialera_renacer','insert',1),('2023-03-23 20:04:21','panialera_renacer','insert',1),('2023-03-23 20:04:21','panialera_renacer','insert',1),('2023-03-23 20:04:21','panialera_renacer','insert',1),('2023-03-23 20:04:21','panialera_renacer','insert',1),('2023-03-23 20:04:21','panialera_renacer','insert',1),('2023-03-23 20:04:21','panialera_renacer','insert',1),('2023-03-23 20:04:21','panialera_renacer','insert',1),('2023-03-23 20:04:21','panialera_renacer','insert',1),('2023-03-23 20:04:21','panialera_renacer','insert',1),('2023-03-23 20:04:21','panialera_renacer','insert',1),('2023-03-23 20:04:21','panialera_renacer','insert',1),('2023-03-23 20:04:21','panialera_renacer','insert',1),('2023-03-23 20:04:21','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:22','panialera_renacer','insert',1),('2023-03-23 20:04:23','panialera_renacer','insert',1),('2023-03-23 20:04:23','panialera_renacer','insert',1),('2023-03-23 20:04:23','panialera_renacer','insert',1),('2023-03-23 20:04:23','panialera_renacer','insert',1),('2023-03-23 20:04:23','panialera_renacer','insert',1),('2023-03-23 20:04:23','panialera_renacer','insert',1),('2023-03-23 20:04:23','panialera_renacer','insert',1),('2023-03-23 20:04:23','panialera_renacer','insert',1),('2023-03-23 20:04:23','panialera_renacer','insert',1),('2023-03-23 20:04:23','panialera_renacer','insert',1),('2023-03-23 20:04:23','panialera_renacer','insert',1),('2023-03-23 20:04:23','panialera_renacer','insert',1),('2023-03-23 20:04:23','panialera_renacer','insert',1),('2023-03-23 20:04:23','panialera_renacer','insert',1),('2023-03-23 20:04:23','panialera_renacer','insert',1),('2023-03-23 20:04:23','panialera_renacer','insert',1),('2023-03-23 20:04:23','panialera_renacer','insert',1),('2023-03-23 20:04:23','panialera_renacer','insert',1),('2023-03-23 20:04:23','panialera_renacer','insert',1),('2023-03-23 20:04:23','panialera_renacer','insert',1),('2023-03-23 20:04:24','panialera_renacer','insert',1),('2023-03-23 20:04:24','panialera_renacer','insert',1),('2023-03-23 20:04:24','panialera_renacer','insert',1),('2023-03-23 20:04:24','panialera_renacer','insert',1),('2023-03-23 20:04:24','panialera_renacer','insert',1),('2023-03-23 20:04:24','panialera_renacer','insert',1),('2023-03-23 20:04:24','panialera_renacer','insert',1),('2023-03-23 20:04:24','panialera_renacer','insert',1),('2023-03-23 20:04:24','panialera_renacer','insert',1),('2023-03-23 20:04:25','panialera_renacer','insert',1),('2023-03-23 20:04:25','panialera_renacer','insert',1),('2023-03-23 20:04:25','panialera_renacer','insert',1),('2023-03-23 20:04:25','panialera_renacer','insert',1),('2023-03-23 20:04:25','panialera_renacer','insert',1),('2023-03-23 20:04:25','panialera_renacer','insert',1),('2023-03-23 20:04:25','panialera_renacer','insert',1),('2023-03-23 20:04:26','panialera_renacer','insert',1),('2023-03-23 20:04:26','panialera_renacer','insert',1),('2023-03-23 20:04:26','panialera_renacer','insert',1),('2023-03-23 20:04:26','panialera_renacer','insert',1),('2023-03-23 20:04:26','panialera_renacer','insert',1),('2023-03-23 20:04:26','panialera_renacer','insert',1),('2023-03-23 20:04:26','panialera_renacer','insert',1),('2023-03-23 20:04:27','panialera_renacer','insert',1),('2023-03-23 20:04:27','panialera_renacer','insert',1),('2023-03-23 20:04:27','panialera_renacer','insert',1),('2023-03-23 20:04:27','panialera_renacer','insert',1),('2023-03-23 20:04:27','panialera_renacer','insert',1),('2023-03-23 20:04:27','panialera_renacer','insert',1),('2023-03-23 20:04:27','panialera_renacer','insert',1),('2023-03-23 20:04:27','panialera_renacer','insert',1),('2023-03-23 20:04:27','panialera_renacer','insert',1),('2023-03-23 20:04:28','panialera_renacer','insert',1),('2023-03-23 20:04:28','panialera_renacer','insert',1),('2023-03-23 20:04:28','panialera_renacer','insert',1),('2023-03-23 20:04:28','panialera_renacer','insert',1),('2023-03-23 20:04:28','panialera_renacer','insert',1),('2023-03-23 20:04:28','panialera_renacer','insert',1),('2023-03-23 20:04:28','panialera_renacer','insert',1),('2023-03-23 20:04:28','panialera_renacer','insert',1),('2023-03-23 20:04:28','panialera_renacer','insert',1),('2023-03-23 20:04:28','panialera_renacer','insert',1),('2023-03-23 20:04:28','panialera_renacer','insert',1),('2023-03-23 20:04:28','panialera_renacer','insert',1),('2023-03-23 20:04:29','panialera_renacer','insert',1),('2023-03-23 20:04:29','panialera_renacer','insert',1),('2023-03-23 20:04:29','panialera_renacer','insert',1),('2023-03-23 20:04:29','panialera_renacer','insert',1),('2023-03-23 20:04:29','panialera_renacer','insert',1),('2023-03-23 20:04:29','panialera_renacer','insert',1),('2023-03-23 20:04:29','panialera_renacer','insert',1),('2023-03-23 20:04:29','panialera_renacer','insert',1),('2023-03-23 20:04:29','panialera_renacer','insert',1),('2023-03-23 20:04:29','panialera_renacer','insert',1),('2023-03-23 20:04:29','panialera_renacer','insert',1),('2023-03-23 20:04:29','panialera_renacer','insert',1),('2023-03-23 20:04:29','panialera_renacer','insert',1),('2023-03-23 20:04:29','panialera_renacer','insert',1),('2023-03-23 20:04:29','panialera_renacer','insert',1),('2023-03-23 20:04:29','panialera_renacer','insert',1),('2023-03-23 20:04:29','panialera_renacer','insert',1),('2023-03-23 20:04:29','panialera_renacer','insert',1),('2023-03-23 20:04:29','panialera_renacer','insert',1),('2023-03-23 20:04:29','panialera_renacer','insert',1),('2023-03-23 20:04:29','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:30','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:31','panialera_renacer','insert',1),('2023-03-23 20:04:32','panialera_renacer','insert',1),('2023-03-23 20:04:32','panialera_renacer','insert',1),('2023-03-23 20:04:32','panialera_renacer','insert',1),('2023-03-23 20:04:32','panialera_renacer','insert',1),('2023-03-23 20:04:32','panialera_renacer','insert',1),('2023-03-23 20:04:32','panialera_renacer','insert',1),('2023-03-23 20:04:32','panialera_renacer','insert',1),('2023-03-23 20:04:32','panialera_renacer','insert',1),('2023-03-23 20:04:32','panialera_renacer','insert',1),('2023-03-23 20:04:32','panialera_renacer','insert',1),('2023-03-23 20:04:32','panialera_renacer','insert',1),('2023-03-23 20:04:32','panialera_renacer','insert',1),('2023-03-23 20:04:32','panialera_renacer','insert',1),('2023-03-23 20:04:32','panialera_renacer','insert',1),('2023-03-23 20:04:32','panialera_renacer','insert',1),('2023-03-23 20:04:32','panialera_renacer','insert',1),('2023-03-23 20:04:32','panialera_renacer','insert',1),('2023-03-23 20:04:32','panialera_renacer','insert',1),('2023-03-23 20:04:32','panialera_renacer','insert',1),('2023-03-23 20:04:32','panialera_renacer','insert',1),('2023-03-23 20:04:32','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:33','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:34','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:35','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:36','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:37','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:38','panialera_renacer','insert',1),('2023-03-23 20:04:39','panialera_renacer','insert',1),('2023-03-23 20:04:39','panialera_renacer','insert',1),('2023-03-23 20:04:39','panialera_renacer','insert',1),('2023-03-23 20:04:39','panialera_renacer','insert',1);
/*!40000 ALTER TABLE `log_tabla_consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_tabla_publicacion`
--

DROP TABLE IF EXISTS `log_tabla_publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_tabla_publicacion` (
  `tsActualiza` timestamp NULL DEFAULT NULL,
  `esquema` varchar(51) DEFAULT NULL,
  `operacion` varchar(6) DEFAULT NULL,
  `registro` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_tabla_publicacion`
--

LOCK TABLES `log_tabla_publicacion` WRITE;
/*!40000 ALTER TABLE `log_tabla_publicacion` DISABLE KEYS */;
INSERT INTO `log_tabla_publicacion` VALUES ('2023-03-25 16:57:22','panialera_renacer','insert',1),('2023-03-25 17:00:34','panialera_renacer','insert',1),('2023-03-25 17:00:34','panialera_renacer','insert',1),('2023-03-25 17:00:34','panialera_renacer','insert',1),('2023-03-25 17:00:34','panialera_renacer','insert',1),('2023-03-25 17:00:34','panialera_renacer','insert',1),('2023-03-25 17:00:34','panialera_renacer','insert',1),('2023-03-25 17:00:34','panialera_renacer','insert',1),('2023-03-25 17:00:34','panialera_renacer','insert',1),('2023-03-25 17:00:35','panialera_renacer','insert',1),('2023-03-25 17:00:35','panialera_renacer','insert',1),('2023-03-25 17:00:35','panialera_renacer','insert',1),('2023-03-25 17:00:35','panialera_renacer','insert',1),('2023-03-25 17:00:35','panialera_renacer','insert',1),('2023-03-25 17:00:35','panialera_renacer','insert',1),('2023-03-25 17:00:35','panialera_renacer','insert',1),('2023-03-25 17:00:35','panialera_renacer','insert',1),('2023-03-25 17:00:35','panialera_renacer','insert',1),('2023-03-25 17:00:35','panialera_renacer','insert',1),('2023-03-25 17:00:35','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:36','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:37','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:38','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:00:39','panialera_renacer','insert',1),('2023-03-25 17:03:08','panialera_renacer','insert',1),('2023-03-25 17:03:08','panialera_renacer','insert',1),('2023-03-25 17:03:08','panialera_renacer','insert',1),('2023-03-25 17:03:08','panialera_renacer','insert',1),('2023-03-25 17:03:08','panialera_renacer','insert',1),('2023-03-25 17:03:08','panialera_renacer','insert',1),('2023-03-25 17:03:08','panialera_renacer','insert',1),('2023-03-25 17:03:08','panialera_renacer','insert',1),('2023-03-25 17:03:08','panialera_renacer','insert',1),('2023-03-25 17:03:08','panialera_renacer','insert',1),('2023-03-25 17:03:08','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:09','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:10','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:11','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:03:12','panialera_renacer','insert',1),('2023-03-25 17:05:13','panialera_renacer','insert',1),('2023-03-25 17:05:13','panialera_renacer','insert',1),('2023-03-25 17:05:13','panialera_renacer','insert',1),('2023-03-25 17:05:13','panialera_renacer','insert',1),('2023-03-25 17:05:13','panialera_renacer','insert',1),('2023-03-25 17:05:13','panialera_renacer','insert',1),('2023-03-25 17:05:13','panialera_renacer','insert',1),('2023-03-25 17:05:13','panialera_renacer','insert',1),('2023-03-25 17:05:13','panialera_renacer','insert',1),('2023-03-25 17:05:13','panialera_renacer','insert',1),('2023-03-25 17:05:13','panialera_renacer','insert',1),('2023-03-25 17:05:13','panialera_renacer','insert',1),('2023-03-25 17:05:13','panialera_renacer','insert',1),('2023-03-25 17:05:14','panialera_renacer','insert',1),('2023-03-25 17:05:14','panialera_renacer','insert',1),('2023-03-25 17:05:14','panialera_renacer','insert',1),('2023-03-25 17:05:14','panialera_renacer','insert',1),('2023-03-25 17:05:14','panialera_renacer','insert',1),('2023-03-25 17:05:14','panialera_renacer','insert',1),('2023-03-25 17:05:14','panialera_renacer','insert',1),('2023-03-25 17:05:14','panialera_renacer','insert',1),('2023-03-25 17:05:14','panialera_renacer','insert',1),('2023-03-25 17:05:14','panialera_renacer','insert',1),('2023-03-25 17:05:14','panialera_renacer','insert',1),('2023-03-25 17:05:14','panialera_renacer','insert',1),('2023-03-25 17:05:14','panialera_renacer','insert',1),('2023-03-25 17:05:14','panialera_renacer','insert',1),('2023-03-25 17:05:14','panialera_renacer','insert',1),('2023-03-25 17:05:14','panialera_renacer','insert',1),('2023-03-25 17:05:14','panialera_renacer','insert',1),('2023-03-25 17:05:14','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:15','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:16','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:17','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1),('2023-03-25 17:05:18','panialera_renacer','insert',1);
/*!40000 ALTER TABLE `log_tabla_publicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacion`
--

DROP TABLE IF EXISTS `publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicacion` (
  `id_publicacion` int NOT NULL AUTO_INCREMENT,
  `id_articulo` int NOT NULL,
  `id_rubro` int NOT NULL,
  `id_redSocial` int NOT NULL,
  `fecha` date NOT NULL,
  `visitas` int NOT NULL,
  `cantidadVentas` int NOT NULL,
  PRIMARY KEY (`id_publicacion`),
  KEY `id_articulo` (`id_articulo`),
  KEY `id_rubro` (`id_rubro`),
  KEY `id_redSocial` (`id_redSocial`),
  CONSTRAINT `publicacion_ibfk_1` FOREIGN KEY (`id_articulo`) REFERENCES `articulo` (`id_articulo`),
  CONSTRAINT `publicacion_ibfk_2` FOREIGN KEY (`id_rubro`) REFERENCES `rubro` (`id_rubro`),
  CONSTRAINT `publicacion_ibfk_3` FOREIGN KEY (`id_redSocial`) REFERENCES `red_social` (`id_redSocial`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion`
--

LOCK TABLES `publicacion` WRITE;
/*!40000 ALTER TABLE `publicacion` DISABLE KEYS */;
INSERT INTO `publicacion` VALUES (101,1026,3,4,'2022-11-27',164,9),(102,1051,2,2,'2023-02-16',1196,9),(103,1010,1,1,'2022-08-12',427,7),(104,1033,3,3,'2023-02-19',54,24),(105,1019,1,2,'2023-02-07',1861,14),(106,1007,4,4,'2022-12-18',375,19),(107,1007,1,4,'2022-12-23',676,17),(108,1020,1,4,'2023-02-18',258,14),(109,1040,5,2,'2022-03-02',940,19),(110,1026,3,4,'2022-05-31',410,8),(111,1014,1,4,'2022-01-22',1080,7),(112,1036,4,4,'2022-09-30',998,15),(113,1001,4,3,'2022-05-16',774,24),(114,1008,2,3,'2022-02-20',379,21),(115,1032,2,4,'2023-01-01',2258,20),(116,1036,1,1,'2022-01-31',1568,1),(117,1020,5,2,'2022-11-18',2382,10),(118,1050,4,4,'2022-07-28',2174,14),(119,1048,3,4,'2022-08-07',2224,4),(120,1028,2,1,'2023-03-18',2295,18),(121,1012,5,3,'2022-03-05',910,22),(122,1004,2,4,'2022-01-20',1279,0),(123,1006,4,3,'2022-11-05',1699,18),(124,1024,2,1,'2023-01-13',2384,6),(125,1015,1,2,'2022-03-30',639,11),(126,1045,4,4,'2023-03-08',502,15),(127,1043,5,1,'2022-10-18',289,6),(128,1042,5,4,'2022-02-01',206,6),(129,1001,3,1,'2022-03-01',650,10),(130,1033,4,2,'2023-01-04',237,13),(131,1004,3,2,'2022-12-07',38,9),(132,1030,1,4,'2022-07-19',3,16),(133,1018,1,3,'2022-12-20',93,13),(134,1049,4,4,'2022-05-24',1852,4),(135,1041,2,1,'2022-12-20',1130,21),(136,1034,1,4,'2022-11-02',1921,5),(137,1019,2,4,'2023-01-09',2333,20),(138,1045,2,3,'2022-11-12',2061,18),(139,1040,2,1,'2022-09-27',853,23),(140,1035,4,2,'2022-11-25',1522,5),(141,1033,3,1,'2022-12-14',1822,3),(142,1023,1,4,'2022-09-21',2288,13),(143,1048,3,1,'2022-12-27',485,4),(144,1004,1,3,'2022-07-28',50,23),(145,1028,3,1,'2023-01-27',1930,21),(146,1021,2,1,'2022-05-28',752,7),(147,1042,4,2,'2022-07-12',1264,14),(148,1017,2,3,'2022-05-12',1408,1),(149,1050,2,3,'2022-12-13',1242,19),(150,1009,2,3,'2022-01-19',2206,8),(151,1024,2,2,'2022-08-08',1639,15),(152,1014,1,3,'2022-05-15',2037,17),(153,1031,1,4,'2022-12-07',1698,16),(154,1030,1,2,'2022-05-01',885,9),(155,1040,1,4,'2023-03-06',2141,16),(156,1027,3,2,'2023-02-10',214,0),(157,1051,4,1,'2022-04-15',1290,4),(158,1029,2,1,'2022-08-01',1306,19),(159,1033,3,4,'2022-03-17',1616,18),(160,1046,2,3,'2022-04-08',2002,25),(161,1029,3,3,'2022-10-16',1357,22),(162,1034,2,1,'2022-10-10',1505,18),(163,1051,2,2,'2022-06-09',1997,0),(164,1038,1,2,'2022-09-20',2078,12),(165,1021,5,2,'2022-10-15',1257,15),(166,1007,2,1,'2022-03-21',158,23),(167,1003,1,2,'2022-08-11',1090,16),(168,1009,1,4,'2022-07-17',957,19),(169,1028,1,3,'2023-02-20',2229,8),(170,1032,4,1,'2023-03-06',2263,5),(171,1026,4,3,'2022-09-18',1108,2),(172,1038,3,2,'2022-12-24',1000,13),(173,1018,1,2,'2023-01-15',1848,18),(174,1028,1,2,'2022-01-14',1077,1),(175,1018,3,3,'2022-11-29',167,13),(176,1041,2,2,'2022-10-03',1573,21),(177,1003,1,4,'2022-08-08',446,22),(178,1006,2,1,'2023-01-30',33,21),(179,1002,5,1,'2022-01-31',1916,21),(180,1002,3,2,'2022-03-07',341,12),(181,1033,2,3,'2022-11-19',2352,23),(182,1048,4,3,'2022-01-31',920,13),(183,1005,2,4,'2023-03-12',1951,20),(184,1017,1,3,'2022-09-12',276,17),(185,1007,3,3,'2022-12-18',1390,18),(186,1034,1,1,'2022-05-04',1864,14),(187,1032,5,4,'2022-03-05',795,0),(188,1017,1,2,'2022-04-10',2456,0),(189,1041,3,3,'2022-06-27',88,9),(190,1014,3,1,'2022-03-30',1185,20),(191,1021,5,2,'2022-10-20',667,4),(192,1022,2,4,'2022-03-02',1993,25),(193,1044,3,3,'2022-07-25',1326,22),(194,1043,4,4,'2022-11-08',761,17),(195,1041,1,4,'2022-07-07',385,2),(196,1023,2,3,'2022-09-09',372,9),(197,1028,3,4,'2023-02-10',459,19),(198,1014,5,1,'2022-12-04',2362,3),(199,1002,5,3,'2022-05-19',1599,9),(200,1030,3,4,'2022-09-14',1380,5),(201,1041,1,4,'2022-05-24',2478,10),(202,1033,5,4,'2022-07-10',1020,10),(203,1022,5,3,'2022-02-18',1607,11),(204,1023,2,3,'2022-10-01',2425,14),(205,1009,3,2,'2022-11-18',803,16),(206,1037,5,4,'2023-03-14',1013,25),(207,1033,2,4,'2022-12-20',2214,10),(208,1010,2,1,'2023-01-29',1208,13),(209,1010,1,3,'2023-01-06',1623,21),(210,1026,5,3,'2022-08-22',851,12),(211,1011,1,3,'2023-02-11',561,2),(212,1024,1,3,'2022-05-20',2216,1),(213,1041,1,4,'2022-07-11',219,18),(214,1004,4,2,'2023-03-02',2059,8),(215,1026,3,3,'2022-02-20',1609,12),(216,1002,3,1,'2023-03-11',1534,20),(217,1041,3,2,'2022-07-30',356,15),(218,1015,4,1,'2022-06-25',1447,15),(219,1005,5,2,'2022-02-11',2258,23),(220,1015,3,3,'2023-01-12',749,9),(221,1036,2,2,'2022-03-05',1318,16),(222,1021,5,4,'2022-08-18',171,25),(223,1008,1,3,'2022-09-12',1497,25),(224,1024,1,1,'2022-12-22',333,22),(225,1046,1,2,'2022-08-15',300,12),(226,1043,4,1,'2022-08-14',1775,17),(227,1029,4,4,'2022-05-10',972,6),(228,1036,4,3,'2022-07-11',283,18),(229,1031,4,1,'2023-01-19',1224,24),(230,1035,2,1,'2022-12-03',2195,14),(231,1021,2,2,'2022-09-25',63,10),(232,1048,3,4,'2023-03-14',382,16),(233,1045,3,3,'2022-05-15',1328,12),(234,1028,4,1,'2022-10-11',403,5),(235,1035,4,1,'2022-08-15',2291,16),(236,1039,2,1,'2022-03-31',1710,11),(237,1038,1,2,'2022-10-31',552,9),(238,1029,2,3,'2022-11-02',1070,13),(239,1041,3,4,'2022-12-06',1976,15),(240,1034,3,2,'2022-08-18',1900,6),(241,1016,4,1,'2022-07-15',1347,13),(242,1041,2,4,'2023-02-20',1866,17),(243,1045,5,4,'2022-11-24',2188,14),(244,1029,3,4,'2022-11-26',1640,14),(245,1025,1,1,'2022-09-10',2325,7),(246,1025,2,2,'2022-08-12',72,22),(247,1006,5,4,'2023-02-03',1348,13),(248,1027,2,2,'2022-08-19',1868,3),(249,1033,2,3,'2022-09-07',2454,12),(250,1012,2,2,'2022-09-30',101,15),(251,1012,2,2,'2022-09-30',101,15);
/*!40000 ALTER TABLE `publicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacion_2022`
--

DROP TABLE IF EXISTS `publicacion_2022`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicacion_2022` (
  `id_publicacion` int NOT NULL AUTO_INCREMENT,
  `id_articulo` int NOT NULL,
  `id_rubro` int NOT NULL,
  `id_redSocial` int NOT NULL,
  `fecha` date NOT NULL,
  `visitas` int NOT NULL,
  `cantidadVentas` int NOT NULL,
  PRIMARY KEY (`id_publicacion`),
  KEY `id_articulo` (`id_articulo`),
  KEY `id_rubro` (`id_rubro`),
  KEY `id_redSocial` (`id_redSocial`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion_2022`
--

LOCK TABLES `publicacion_2022` WRITE;
/*!40000 ALTER TABLE `publicacion_2022` DISABLE KEYS */;
INSERT INTO `publicacion_2022` VALUES (101,1026,3,4,'2022-11-27',164,9),(102,1010,1,1,'2022-08-12',427,7),(103,1007,4,4,'2022-12-18',375,19),(104,1007,1,4,'2022-12-23',676,17),(105,1040,5,2,'2022-03-02',940,19),(106,1026,3,4,'2022-05-31',410,8),(107,1014,1,4,'2022-01-22',1080,7),(108,1036,4,4,'2022-09-30',998,15),(109,1001,4,3,'2022-05-16',774,24),(110,1008,2,3,'2022-02-20',379,21),(111,1036,1,1,'2022-01-31',1568,1),(112,1020,5,2,'2022-11-18',2382,10),(113,1050,4,4,'2022-07-28',2174,14),(114,1048,3,4,'2022-08-07',2224,4),(115,1012,5,3,'2022-03-05',910,22),(116,1004,2,4,'2022-01-20',1279,0),(117,1006,4,3,'2022-11-05',1699,18),(118,1015,1,2,'2022-03-30',639,11),(119,1043,5,1,'2022-10-18',289,6),(120,1042,5,4,'2022-02-01',206,6),(121,1001,3,1,'2022-03-01',650,10),(122,1004,3,2,'2022-12-07',38,9),(123,1030,1,4,'2022-07-19',3,16),(124,1018,1,3,'2022-12-20',93,13),(125,1049,4,4,'2022-05-24',1852,4),(126,1041,2,1,'2022-12-20',1130,21),(127,1034,1,4,'2022-11-02',1921,5),(128,1045,2,3,'2022-11-12',2061,18),(129,1040,2,1,'2022-09-27',853,23),(130,1035,4,2,'2022-11-25',1522,5),(131,1033,3,1,'2022-12-14',1822,3),(132,1023,1,4,'2022-09-21',2288,13),(133,1048,3,1,'2022-12-27',485,4),(134,1004,1,3,'2022-07-28',50,23),(135,1021,2,1,'2022-05-28',752,7),(136,1042,4,2,'2022-07-12',1264,14),(137,1017,2,3,'2022-05-12',1408,1),(138,1050,2,3,'2022-12-13',1242,19),(139,1009,2,3,'2022-01-19',2206,8),(140,1024,2,2,'2022-08-08',1639,15),(141,1014,1,3,'2022-05-15',2037,17),(142,1031,1,4,'2022-12-07',1698,16),(143,1030,1,2,'2022-05-01',885,9),(144,1051,4,1,'2022-04-15',1290,4),(145,1029,2,1,'2022-08-01',1306,19),(146,1033,3,4,'2022-03-17',1616,18),(147,1046,2,3,'2022-04-08',2002,25),(148,1029,3,3,'2022-10-16',1357,22),(149,1034,2,1,'2022-10-10',1505,18),(150,1051,2,2,'2022-06-09',1997,0),(151,1038,1,2,'2022-09-20',2078,12),(152,1021,5,2,'2022-10-15',1257,15),(153,1007,2,1,'2022-03-21',158,23),(154,1003,1,2,'2022-08-11',1090,16),(155,1009,1,4,'2022-07-17',957,19),(156,1026,4,3,'2022-09-18',1108,2),(157,1038,3,2,'2022-12-24',1000,13),(158,1028,1,2,'2022-01-14',1077,1),(159,1018,3,3,'2022-11-29',167,13),(160,1041,2,2,'2022-10-03',1573,21),(161,1003,1,4,'2022-08-08',446,22),(162,1002,5,1,'2022-01-31',1916,21),(163,1002,3,2,'2022-03-07',341,12),(164,1033,2,3,'2022-11-19',2352,23),(165,1048,4,3,'2022-01-31',920,13),(166,1017,1,3,'2022-09-12',276,17),(167,1007,3,3,'2022-12-18',1390,18),(168,1034,1,1,'2022-05-04',1864,14),(169,1032,5,4,'2022-03-05',795,0),(170,1017,1,2,'2022-04-10',2456,0),(171,1041,3,3,'2022-06-27',88,9),(172,1014,3,1,'2022-03-30',1185,20),(173,1021,5,2,'2022-10-20',667,4),(174,1022,2,4,'2022-03-02',1993,25),(175,1044,3,3,'2022-07-25',1326,22),(176,1043,4,4,'2022-11-08',761,17),(177,1041,1,4,'2022-07-07',385,2),(178,1023,2,3,'2022-09-09',372,9),(179,1014,5,1,'2022-12-04',2362,3),(180,1002,5,3,'2022-05-19',1599,9),(181,1030,3,4,'2022-09-14',1380,5),(182,1041,1,4,'2022-05-24',2478,10),(183,1033,5,4,'2022-07-10',1020,10),(184,1022,5,3,'2022-02-18',1607,11),(185,1023,2,3,'2022-10-01',2425,14),(186,1009,3,2,'2022-11-18',803,16),(187,1033,2,4,'2022-12-20',2214,10),(188,1026,5,3,'2022-08-22',851,12),(189,1024,1,3,'2022-05-20',2216,1),(190,1041,1,4,'2022-07-11',219,18),(191,1026,3,3,'2022-02-20',1609,12),(192,1041,3,2,'2022-07-30',356,15),(193,1015,4,1,'2022-06-25',1447,15),(194,1005,5,2,'2022-02-11',2258,23),(195,1036,2,2,'2022-03-05',1318,16),(196,1021,5,4,'2022-08-18',171,25),(197,1008,1,3,'2022-09-12',1497,25),(198,1024,1,1,'2022-12-22',333,22),(199,1046,1,2,'2022-08-15',300,12),(200,1043,4,1,'2022-08-14',1775,17),(201,1029,4,4,'2022-05-10',972,6),(202,1036,4,3,'2022-07-11',283,18),(203,1035,2,1,'2022-12-03',2195,14),(204,1021,2,2,'2022-09-25',63,10),(205,1045,3,3,'2022-05-15',1328,12),(206,1028,4,1,'2022-10-11',403,5),(207,1035,4,1,'2022-08-15',2291,16),(208,1039,2,1,'2022-03-31',1710,11),(209,1038,1,2,'2022-10-31',552,9),(210,1029,2,3,'2022-11-02',1070,13),(211,1041,3,4,'2022-12-06',1976,15),(212,1034,3,2,'2022-08-18',1900,6),(213,1016,4,1,'2022-07-15',1347,13),(214,1045,5,4,'2022-11-24',2188,14),(215,1029,3,4,'2022-11-26',1640,14),(216,1025,1,1,'2022-09-10',2325,7),(217,1025,2,2,'2022-08-12',72,22),(218,1027,2,2,'2022-08-19',1868,3),(219,1033,2,3,'2022-09-07',2454,12),(220,1012,2,2,'2022-09-30',101,15),(221,1012,2,2,'2022-09-30',101,15);
/*!40000 ALTER TABLE `publicacion_2022` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacion_2023`
--

DROP TABLE IF EXISTS `publicacion_2023`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicacion_2023` (
  `id_publicacion` int NOT NULL AUTO_INCREMENT,
  `id_articulo` int NOT NULL,
  `id_rubro` int NOT NULL,
  `id_redSocial` int NOT NULL,
  `fecha` date NOT NULL,
  `visitas` int NOT NULL,
  `cantidadVentas` int NOT NULL,
  PRIMARY KEY (`id_publicacion`),
  KEY `id_articulo` (`id_articulo`),
  KEY `id_rubro` (`id_rubro`),
  KEY `id_redSocial` (`id_redSocial`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion_2023`
--

LOCK TABLES `publicacion_2023` WRITE;
/*!40000 ALTER TABLE `publicacion_2023` DISABLE KEYS */;
INSERT INTO `publicacion_2023` VALUES (101,1051,2,2,'2023-02-16',1196,9),(102,1033,3,3,'2023-02-19',54,24),(103,1019,1,2,'2023-02-07',1861,14),(104,1020,1,4,'2023-02-18',258,14),(105,1032,2,4,'2023-01-01',2258,20),(106,1028,2,1,'2023-03-18',2295,18),(107,1024,2,1,'2023-01-13',2384,6),(108,1045,4,4,'2023-03-08',502,15),(109,1033,4,2,'2023-01-04',237,13),(110,1019,2,4,'2023-01-09',2333,20),(111,1028,3,1,'2023-01-27',1930,21),(112,1040,1,4,'2023-03-06',2141,16),(113,1027,3,2,'2023-02-10',214,0),(114,1028,1,3,'2023-02-20',2229,8),(115,1032,4,1,'2023-03-06',2263,5),(116,1018,1,2,'2023-01-15',1848,18),(117,1006,2,1,'2023-01-30',33,21),(118,1005,2,4,'2023-03-12',1951,20),(119,1028,3,4,'2023-02-10',459,19),(120,1037,5,4,'2023-03-14',1013,25),(121,1010,2,1,'2023-01-29',1208,13),(122,1010,1,3,'2023-01-06',1623,21),(123,1011,1,3,'2023-02-11',561,2),(124,1004,4,2,'2023-03-02',2059,8),(125,1002,3,1,'2023-03-11',1534,20),(126,1015,3,3,'2023-01-12',749,9),(127,1031,4,1,'2023-01-19',1224,24),(128,1048,3,4,'2023-03-14',382,16),(129,1041,2,4,'2023-02-20',1866,17),(130,1006,5,4,'2023-02-03',1348,13);
/*!40000 ALTER TABLE `publicacion_2023` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `red_social`
--

DROP TABLE IF EXISTS `red_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `red_social` (
  `id_redSocial` int NOT NULL AUTO_INCREMENT,
  `redSocial` varchar(51) DEFAULT NULL,
  PRIMARY KEY (`id_redSocial`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `red_social`
--

LOCK TABLES `red_social` WRITE;
/*!40000 ALTER TABLE `red_social` DISABLE KEYS */;
INSERT INTO `red_social` VALUES (1,'Faceboock'),(2,'Instagram'),(3,'TikTok'),(4,'Pinterest');
/*!40000 ALTER TABLE `red_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubro`
--

DROP TABLE IF EXISTS `rubro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rubro` (
  `id_rubro` int NOT NULL AUTO_INCREMENT,
  `rubro` varchar(51) DEFAULT NULL,
  PRIMARY KEY (`id_rubro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubro`
--

LOCK TABLES `rubro` WRITE;
/*!40000 ALTER TABLE `rubro` DISABLE KEYS */;
INSERT INTO `rubro` VALUES (1,'Pañales'),(2,'Accesorios'),(3,'Textil'),(4,'Perfumeria'),(5,'Moviles');
/*!40000 ALTER TABLE `rubro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabla_stock_antes_modificado`
--

DROP TABLE IF EXISTS `tabla_stock_antes_modificado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabla_stock_antes_modificado` (
  `id_articulo` int NOT NULL,
  `stock` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_stock_antes_modificado`
--

LOCK TABLES `tabla_stock_antes_modificado` WRITE;
/*!40000 ALTER TABLE `tabla_stock_antes_modificado` DISABLE KEYS */;
INSERT INTO `tabla_stock_antes_modificado` VALUES (1001,13),(1032,199),(1020,66),(1050,107),(1048,196),(1028,114),(1024,163),(1019,65),(1045,140),(1023,212),(1009,80),(1014,173),(1040,130),(1046,119),(1038,194),(1033,209),(1017,91),(1041,90),(1004,44),(1005,129),(1035,43),(1025,43),(1032,199),(1020,66),(1050,107),(1048,196),(1028,114),(1024,163),(1019,65),(1045,140),(1023,212),(1009,80),(1014,173),(1040,130),(1046,119),(1038,194),(1033,209),(1017,91),(1041,90),(1004,44),(1005,129),(1035,43),(1025,43),(1001,13),(1005,129);
/*!40000 ALTER TABLE `tabla_stock_antes_modificado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabla_stock_modificado`
--

DROP TABLE IF EXISTS `tabla_stock_modificado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabla_stock_modificado` (
  `id_articulo` int NOT NULL,
  `stock` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_stock_modificado`
--

LOCK TABLES `tabla_stock_modificado` WRITE;
/*!40000 ALTER TABLE `tabla_stock_modificado` DISABLE KEYS */;
INSERT INTO `tabla_stock_modificado` VALUES (1001,13),(1032,199),(1020,66),(1050,107),(1048,196),(1028,114),(1024,163),(1019,65),(1045,140),(1023,212),(1009,80),(1014,173),(1040,130),(1046,119),(1038,194),(1033,209),(1017,91),(1041,90),(1004,44),(1005,129),(1035,43),(1025,43),(1032,199),(1020,66),(1050,107),(1048,196),(1028,114),(1024,163),(1019,65),(1045,140),(1023,212),(1009,80),(1014,173),(1040,130),(1046,119),(1038,194),(1033,209),(1017,91),(1041,90),(1004,44),(1005,129),(1035,43),(1025,43),(1001,25),(1005,36);
/*!40000 ALTER TABLE `tabla_stock_modificado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(51) DEFAULT NULL,
  `apellido` varchar(51) DEFAULT NULL,
  `telefono` bigint NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (10001,'Angie','Toolan',1497963341),(10002,'Dud','Hymer',6919832375),(10003,'Dacia','Drane',4599036218),(10004,'Brenda','Gofton',9391766602),(10005,'Lazar','Faulds',8113649096),(10006,'Jorgan','Cawker',8042352348),(10007,'Gertie','de Lloyd',1828709304),(10008,'Jeremiah','Kempston',7932411952),(10009,'Sascha','Rumgay',2151251097),(10010,'Thatcher','Mongin',3219560010),(10011,'Luce','Hinken',7974062045),(10012,'Sinclare','Room',2235814227),(10013,'Starla','Adenot',4453637013),(10014,'Emmalee','Jasper',3427580736),(10015,'Cinnamon','Fleischmann',7673010074),(10016,'Jilly','Keysall',4962017276),(10017,'Allis','Dacey',3967369272),(10018,'Wendel','Marshal',9595979489),(10019,'Ramsay','Cruikshank',2184956127),(10020,'Mohandas','Peasegod',1036170747),(10021,'Matilda','Rymell',2251716539),(10022,'Ramsey','Kellar',8842952976),(10023,'Anton','Birchenhead',1971186277),(10024,'Adelle','Tink',5874450689),(10025,'Jobina','Merigon',2052179767),(10026,'Jere','Ducker',6163477173),(10027,'Cornelia','Peltzer',5521168677),(10028,'Grayce','Franzoli',7362835882),(10029,'Eunice','Dugood',1651634439),(10030,'Frank','Herrema',7822046091),(10031,'Florencia','Mowsdale',3554927851),(10032,'Quinta','Archbold',6056307547),(10033,'Moss','Monck',1748259315),(10034,'Herminia','Suggett',7621251056),(10035,'Oralla','Elliot',4855251004),(10036,'Harlen','Burford',7269969369),(10037,'Ortensia','Agnolo',7183288101),(10038,'Ardath','Vanacci',9624552632),(10039,'Billy','Blofield',3196303631),(10040,'Thomasine','McGrath',5149857105),(10041,'Walther','Dunstan',9072309896),(10042,'Elijah','Cheake',7535538937),(10043,'Roselia','Aven',5946251967),(10044,'Minor','Holstein',1284764968),(10045,'Eberhard','Sciusscietto',6995778093),(10046,'Carma','Simonitto',1805366271),(10047,'Janel','Folker',4767985125),(10048,'Charis','Soulsby',6379738122),(10049,'Stevana','MacArd',8626481458),(10050,'Clim','Burdus',8606965726),(10051,'Seumas','Pomfrey',3379748079),(10052,'Marlon','Thurske',5277099632),(10053,'Melisenda','Heisler',4391513411),(10054,'Cori','Siuda',3169492897),(10055,'Hanson','McCowen',8917545293),(10056,'Lori','Galero',7549605348),(10057,'Vassily','Payton',8835858578),(10058,'Rubia','Daenen',6484227303),(10059,'Holmes','Brimicombe',1157026669),(10060,'Mahala','Dornin',2378857202),(10061,'Velma','Buzza',6568366738),(10062,'Alic','Christmas',7958417718),(10063,'Ingelbert','Lurner',2854937275),(10064,'Marin','Jantzen',1922347179),(10065,'Kathe','Sedgmond',9743504676),(10066,'Gretna','Jendrusch',6579806208),(10067,'Lammond','Pointing',1338372315),(10068,'Shelli','Borchardt',2719564462),(10069,'Lorelle','Cowpe',9304680901),(10070,'Julio','Mordan',6406796530),(10071,'Lorettalorna','Sinson',1042908441),(10072,'Matti','Baggot',9998014300),(10073,'Ardelle','Feely',7868775485),(10074,'Laryssa','Barosch',9163200988),(10075,'Birdie','Colegrove',2665906526),(10076,'Mabelle','Cadamy',2218703183),(10077,'Nathalia','Oddboy',3331863460),(10078,'Siana','Hainge',2214630731),(10079,'Margit','Stammler',8901068073),(10080,'Gaspard','Robertz',5026559653),(10081,'Mandy','Johananov',2122997766),(10082,'Alexis','Pringer',2826446202),(10083,'Leo','Harome',2105502267),(10084,'Marie-jeanne','Bunn',4134397486),(10085,'Olag','Monument',8284109855),(10086,'Zacharie','Vowels',4671545052),(10087,'Farlee','Deyes',1225160681),(10088,'Dana','Collyear',9418447592),(10089,'Lezley','Jerams',6305148102),(10090,'Nestor','Jodlkowski',2509052273),(10091,'Perla','Woodburn',4061364854),(10092,'Laraine','Darwin',4186229725),(10093,'Georgeanna','Gooday',1494748636),(10094,'Lexy','Bwy',2572354578),(10095,'Svend','Fernez',2856028506),(10096,'Hobard','Reihm',5901789780),(10097,'Kellyann','Piff',5187830712),(10098,'Shena','Mager',3642431384),(10099,'Arny','Pynn',7479334013),(10100,'Hermina','Adacot',3758715368);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_nombres_usuarios`
--

DROP TABLE IF EXISTS `vista_nombres_usuarios`;
/*!50001 DROP VIEW IF EXISTS `vista_nombres_usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_nombres_usuarios` AS SELECT 
 1 AS `id_usuario`,
 1 AS `nombreCompleto`,
 1 AS `telefono`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_publicacion_vistas_mayor_al_promedio`
--

DROP TABLE IF EXISTS `vista_publicacion_vistas_mayor_al_promedio`;
/*!50001 DROP VIEW IF EXISTS `vista_publicacion_vistas_mayor_al_promedio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_publicacion_vistas_mayor_al_promedio` AS SELECT 
 1 AS `id_publicacion`,
 1 AS `id_articulo`,
 1 AS `rubro`,
 1 AS `fecha`,
 1 AS `Domingo`,
 1 AS `visitas`,
 1 AS `Ventas del dia`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_publicaciones_ordenadas_por_visitas`
--

DROP TABLE IF EXISTS `vista_publicaciones_ordenadas_por_visitas`;
/*!50001 DROP VIEW IF EXISTS `vista_publicaciones_ordenadas_por_visitas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_publicaciones_ordenadas_por_visitas` AS SELECT 
 1 AS `id_publicacion`,
 1 AS `id_articulo`,
 1 AS `id_redSocial`,
 1 AS `fecha`,
 1 AS `visitas`,
 1 AS `cantidadVentas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_simple_articulos`
--

DROP TABLE IF EXISTS `vista_simple_articulos`;
/*!50001 DROP VIEW IF EXISTS `vista_simple_articulos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_simple_articulos` AS SELECT 
 1 AS `id_articulo`,
 1 AS `costo`,
 1 AS `precioFinal`,
 1 AS `stock`,
 1 AS `visitas`,
 1 AS `redSocial`,
 1 AS `fecha`,
 1 AS `Cantidad de ventas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_usuarios_comentarios`
--

DROP TABLE IF EXISTS `vista_usuarios_comentarios`;
/*!50001 DROP VIEW IF EXISTS `vista_usuarios_comentarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_usuarios_comentarios` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `telefono`,
 1 AS `nombreUsuario`,
 1 AS `fecha`,
 1 AS `consulta`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_ventas_domingos`
--

DROP TABLE IF EXISTS `vista_ventas_domingos`;
/*!50001 DROP VIEW IF EXISTS `vista_ventas_domingos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_ventas_domingos` AS SELECT 
 1 AS `id_publicacion`,
 1 AS `id_articulo`,
 1 AS `rubro`,
 1 AS `fecha`,
 1 AS `Domingo`,
 1 AS `Ventas del dia`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_ventas_jueves`
--

DROP TABLE IF EXISTS `vista_ventas_jueves`;
/*!50001 DROP VIEW IF EXISTS `vista_ventas_jueves`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_ventas_jueves` AS SELECT 
 1 AS `id_publicacion`,
 1 AS `id_articulo`,
 1 AS `rubro`,
 1 AS `fecha`,
 1 AS `Jueves`,
 1 AS `Ventas del dia`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_ventas_lunes`
--

DROP TABLE IF EXISTS `vista_ventas_lunes`;
/*!50001 DROP VIEW IF EXISTS `vista_ventas_lunes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_ventas_lunes` AS SELECT 
 1 AS `id_publicacion`,
 1 AS `id_articulo`,
 1 AS `rubro`,
 1 AS `fecha`,
 1 AS `Lunes`,
 1 AS `Ventas del dia`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_ventas_martes`
--

DROP TABLE IF EXISTS `vista_ventas_martes`;
/*!50001 DROP VIEW IF EXISTS `vista_ventas_martes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_ventas_martes` AS SELECT 
 1 AS `id_publicacion`,
 1 AS `id_articulo`,
 1 AS `rubro`,
 1 AS `fecha`,
 1 AS `Martes`,
 1 AS `Ventas del dia`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_ventas_miercoles`
--

DROP TABLE IF EXISTS `vista_ventas_miercoles`;
/*!50001 DROP VIEW IF EXISTS `vista_ventas_miercoles`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_ventas_miercoles` AS SELECT 
 1 AS `id_publicacion`,
 1 AS `id_articulo`,
 1 AS `rubro`,
 1 AS `fecha`,
 1 AS `Miercoles`,
 1 AS `Ventas del dia`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_ventas_sabados`
--

DROP TABLE IF EXISTS `vista_ventas_sabados`;
/*!50001 DROP VIEW IF EXISTS `vista_ventas_sabados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_ventas_sabados` AS SELECT 
 1 AS `id_publicacion`,
 1 AS `id_articulo`,
 1 AS `rubro`,
 1 AS `fecha`,
 1 AS `Sabado`,
 1 AS `Ventas del dia`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_ventas_viernes`
--

DROP TABLE IF EXISTS `vista_ventas_viernes`;
/*!50001 DROP VIEW IF EXISTS `vista_ventas_viernes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_ventas_viernes` AS SELECT 
 1 AS `id_publicacion`,
 1 AS `id_articulo`,
 1 AS `rubro`,
 1 AS `fecha`,
 1 AS `Viernes`,
 1 AS `Ventas del dia`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_nombres_usuarios`
--

/*!50001 DROP VIEW IF EXISTS `vista_nombres_usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_nombres_usuarios` AS select `usuario`.`id_usuario` AS `id_usuario`,concat(`usuario`.`nombre`,' ',`usuario`.`apellido`) AS `nombreCompleto`,`usuario`.`telefono` AS `telefono` from `usuario` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_publicacion_vistas_mayor_al_promedio`
--

/*!50001 DROP VIEW IF EXISTS `vista_publicacion_vistas_mayor_al_promedio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_publicacion_vistas_mayor_al_promedio` AS select `publicacion`.`id_publicacion` AS `id_publicacion`,`publicacion`.`id_articulo` AS `id_articulo`,`rubro`.`rubro` AS `rubro`,`publicacion`.`fecha` AS `fecha`,dayofweek(`publicacion`.`fecha`) AS `Domingo`,`publicacion`.`visitas` AS `visitas`,if((`publicacion`.`cantidadVentas` >= 1),`publicacion`.`cantidadVentas`,'No hubo ventas') AS `Ventas del dia` from (`publicacion` join `rubro` on((`publicacion`.`id_rubro` = `rubro`.`id_rubro`))) where (`publicacion`.`visitas` > (select avg(`publicacion`.`visitas`) from `publicacion`)) order by `publicacion`.`fecha` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_publicaciones_ordenadas_por_visitas`
--

/*!50001 DROP VIEW IF EXISTS `vista_publicaciones_ordenadas_por_visitas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_publicaciones_ordenadas_por_visitas` AS select `publicacion`.`id_publicacion` AS `id_publicacion`,`publicacion`.`id_articulo` AS `id_articulo`,`publicacion`.`id_redSocial` AS `id_redSocial`,`publicacion`.`fecha` AS `fecha`,`publicacion`.`visitas` AS `visitas`,`publicacion`.`cantidadVentas` AS `cantidadVentas` from `publicacion` order by `publicacion`.`visitas` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_simple_articulos`
--

/*!50001 DROP VIEW IF EXISTS `vista_simple_articulos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_simple_articulos` AS select `articulo`.`id_articulo` AS `id_articulo`,`articulo`.`costo` AS `costo`,`articulo`.`precioFinal` AS `precioFinal`,`articulo`.`stock` AS `stock`,`publicacion`.`visitas` AS `visitas`,`red_social`.`redSocial` AS `redSocial`,`publicacion`.`fecha` AS `fecha`,if((`publicacion`.`cantidadVentas` >= 1),`publicacion`.`cantidadVentas`,'No hubo ventas') AS `Cantidad de ventas` from ((`articulo` join `publicacion` on((`articulo`.`id_articulo` = `publicacion`.`id_articulo`))) join `red_social` on((`publicacion`.`id_redSocial` = `red_social`.`id_redSocial`))) order by `publicacion`.`fecha` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_usuarios_comentarios`
--

/*!50001 DROP VIEW IF EXISTS `vista_usuarios_comentarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_usuarios_comentarios` AS select `usuario`.`nombre` AS `nombre`,`usuario`.`apellido` AS `apellido`,`usuario`.`telefono` AS `telefono`,`consulta`.`nombreUsuario` AS `nombreUsuario`,`publicacion`.`fecha` AS `fecha`,`consulta`.`consulta` AS `consulta` from ((`consulta` join `usuario` on((`consulta`.`id_usuario` = `usuario`.`id_usuario`))) join `publicacion` on((`consulta`.`id_publicacion` = `publicacion`.`id_publicacion`))) where (`consulta`.`positiva` <> 1) order by `usuario`.`apellido`,`publicacion`.`fecha` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_ventas_domingos`
--

/*!50001 DROP VIEW IF EXISTS `vista_ventas_domingos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_ventas_domingos` AS select `publicacion`.`id_publicacion` AS `id_publicacion`,`publicacion`.`id_articulo` AS `id_articulo`,`rubro`.`rubro` AS `rubro`,`publicacion`.`fecha` AS `fecha`,dayofweek(`publicacion`.`fecha`) AS `Domingo`,if((`publicacion`.`cantidadVentas` >= 1),`publicacion`.`cantidadVentas`,'No hubo ventas') AS `Ventas del dia` from (`publicacion` join `rubro` on((`publicacion`.`id_rubro` = `rubro`.`id_rubro`))) where (dayofweek(`publicacion`.`fecha`) = 1) order by `publicacion`.`fecha` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_ventas_jueves`
--

/*!50001 DROP VIEW IF EXISTS `vista_ventas_jueves`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_ventas_jueves` AS select `publicacion`.`id_publicacion` AS `id_publicacion`,`publicacion`.`id_articulo` AS `id_articulo`,`rubro`.`rubro` AS `rubro`,`publicacion`.`fecha` AS `fecha`,dayofweek(`publicacion`.`fecha`) AS `Jueves`,if((`publicacion`.`cantidadVentas` >= 1),`publicacion`.`cantidadVentas`,'No hubo ventas') AS `Ventas del dia` from (`publicacion` join `rubro` on((`publicacion`.`id_rubro` = `rubro`.`id_rubro`))) where (dayofweek(`publicacion`.`fecha`) = 5) order by `publicacion`.`fecha` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_ventas_lunes`
--

/*!50001 DROP VIEW IF EXISTS `vista_ventas_lunes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_ventas_lunes` AS select `publicacion`.`id_publicacion` AS `id_publicacion`,`publicacion`.`id_articulo` AS `id_articulo`,`rubro`.`rubro` AS `rubro`,`publicacion`.`fecha` AS `fecha`,dayofweek(`publicacion`.`fecha`) AS `Lunes`,if((`publicacion`.`cantidadVentas` >= 1),`publicacion`.`cantidadVentas`,'No hubo ventas') AS `Ventas del dia` from (`publicacion` join `rubro` on((`publicacion`.`id_rubro` = `rubro`.`id_rubro`))) where (dayofweek(`publicacion`.`fecha`) = 2) order by `publicacion`.`fecha` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_ventas_martes`
--

/*!50001 DROP VIEW IF EXISTS `vista_ventas_martes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_ventas_martes` AS select `publicacion`.`id_publicacion` AS `id_publicacion`,`publicacion`.`id_articulo` AS `id_articulo`,`rubro`.`rubro` AS `rubro`,`publicacion`.`fecha` AS `fecha`,dayofweek(`publicacion`.`fecha`) AS `Martes`,if((`publicacion`.`cantidadVentas` >= 1),`publicacion`.`cantidadVentas`,'No hubo ventas') AS `Ventas del dia` from (`publicacion` join `rubro` on((`publicacion`.`id_rubro` = `rubro`.`id_rubro`))) where (dayofweek(`publicacion`.`fecha`) = 3) order by `publicacion`.`fecha` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_ventas_miercoles`
--

/*!50001 DROP VIEW IF EXISTS `vista_ventas_miercoles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_ventas_miercoles` AS select `publicacion`.`id_publicacion` AS `id_publicacion`,`publicacion`.`id_articulo` AS `id_articulo`,`rubro`.`rubro` AS `rubro`,`publicacion`.`fecha` AS `fecha`,dayofweek(`publicacion`.`fecha`) AS `Miercoles`,if((`publicacion`.`cantidadVentas` >= 1),`publicacion`.`cantidadVentas`,'No hubo ventas') AS `Ventas del dia` from (`publicacion` join `rubro` on((`publicacion`.`id_rubro` = `rubro`.`id_rubro`))) where (dayofweek(`publicacion`.`fecha`) = 4) order by `publicacion`.`fecha` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_ventas_sabados`
--

/*!50001 DROP VIEW IF EXISTS `vista_ventas_sabados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_ventas_sabados` AS select `publicacion`.`id_publicacion` AS `id_publicacion`,`publicacion`.`id_articulo` AS `id_articulo`,`rubro`.`rubro` AS `rubro`,`publicacion`.`fecha` AS `fecha`,dayofweek(`publicacion`.`fecha`) AS `Sabado`,if((`publicacion`.`cantidadVentas` >= 1),`publicacion`.`cantidadVentas`,'No hubo ventas') AS `Ventas del dia` from (`publicacion` join `rubro` on((`publicacion`.`id_rubro` = `rubro`.`id_rubro`))) where (dayofweek(`publicacion`.`fecha`) = 7) order by `publicacion`.`fecha` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_ventas_viernes`
--

/*!50001 DROP VIEW IF EXISTS `vista_ventas_viernes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_ventas_viernes` AS select `publicacion`.`id_publicacion` AS `id_publicacion`,`publicacion`.`id_articulo` AS `id_articulo`,`rubro`.`rubro` AS `rubro`,`publicacion`.`fecha` AS `fecha`,dayofweek(`publicacion`.`fecha`) AS `Viernes`,if((`publicacion`.`cantidadVentas` >= 1),`publicacion`.`cantidadVentas`,'No hubo ventas') AS `Ventas del dia` from (`publicacion` join `rubro` on((`publicacion`.`id_rubro` = `rubro`.`id_rubro`))) where (dayofweek(`publicacion`.`fecha`) = 6) order by `publicacion`.`fecha` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-25 19:03:49

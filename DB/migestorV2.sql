/*
 Navicat Premium Data Transfer

 Source Server         : migestor2
 Source Server Type    : MySQL
 Source Server Version : 50645
 Source Host           : 3.226.190.129:3306
 Source Schema         : migestor

 Target Server Type    : MySQL
 Target Server Version : 50645
 File Encoding         : 65001

 Date: 24/10/2019 10:27:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cat_documentos_old
-- ----------------------------
DROP TABLE IF EXISTS `cat_documentos_old`;
CREATE TABLE `cat_documentos_old`  (
  `idDocumento` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `clave` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `bandera` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idDocumento`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cat_documentos_old
-- ----------------------------
INSERT INTO `cat_documentos_old` VALUES (1, 'REGLAS PARA CONDUCIRSE EN LA MEDIACIÓN', 'IS', 1, b'0');
INSERT INTO `cat_documentos_old` VALUES (2, 'ACEPTACIÓN DEL SERVICIO DE MEDIACIÓN', 'IS', 2, b'0');
INSERT INTO `cat_documentos_old` VALUES (3, 'MANIFESTACIÓN DE LA LIBRE VOLUNTAD DEL INVITADO', 'I', 3, b'1');
INSERT INTO `cat_documentos_old` VALUES (4, 'CONVENIO DE CONFIDENCIALIDAD', 'IS', 4, b'1');
INSERT INTO `cat_documentos_old` VALUES (5, 'TARJETA INFORMATIVA <br> PRINCIPIOS DE LA MEDIACIÓN', 'IS', 5, b'1');
INSERT INTO `cat_documentos_old` VALUES (6, 'CONVENIO DE HONORARIOS', 'IS', 6, b'0');
INSERT INTO `cat_documentos_old` VALUES (7, 'AVISO DE PRIVACIDAD INTEGRAL <br> MEDIACIÓN DIGITAL', 'IS', 7, b'0');
INSERT INTO `cat_documentos_old` VALUES (8, 'MANIFESTACIÓN DE LA LIBRE VOLUNTAD DEL SOLICITANTE', 'S', 3, b'1');

-- ----------------------------
-- Table structure for cat_entidadesFederativas
-- ----------------------------
DROP TABLE IF EXISTS `cat_entidadesFederativas`;
CREATE TABLE `cat_entidadesFederativas`  (
  `idEntidadFederativa` int(11) NOT NULL AUTO_INCREMENT,
  `nombreEntidadFederativa` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `siglaEntidadFederativa` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`idEntidadFederativa`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cat_entidadesFederativas
-- ----------------------------
INSERT INTO `cat_entidadesFederativas` VALUES (1, 'Aguascalientes', 'AGU');
INSERT INTO `cat_entidadesFederativas` VALUES (2, 'Baja California', 'BC');
INSERT INTO `cat_entidadesFederativas` VALUES (3, 'Baja California Sur', 'BCS');
INSERT INTO `cat_entidadesFederativas` VALUES (4, 'Campeche', 'CAM');
INSERT INTO `cat_entidadesFederativas` VALUES (5, 'Chiapas', 'CHP');
INSERT INTO `cat_entidadesFederativas` VALUES (6, 'Chihuahua', 'CHH');
INSERT INTO `cat_entidadesFederativas` VALUES (7, 'Coahuila', 'COA');
INSERT INTO `cat_entidadesFederativas` VALUES (8, 'Colima', 'COL');
INSERT INTO `cat_entidadesFederativas` VALUES (9, 'Ciudad de México', 'CMX?');
INSERT INTO `cat_entidadesFederativas` VALUES (10, 'Durango', 'DUR');
INSERT INTO `cat_entidadesFederativas` VALUES (11, 'Guanajuato', 'GUA');
INSERT INTO `cat_entidadesFederativas` VALUES (12, 'Guerrero', 'GRO');
INSERT INTO `cat_entidadesFederativas` VALUES (13, 'Hidalgo', 'HID');
INSERT INTO `cat_entidadesFederativas` VALUES (14, 'Jalisco', 'JAL');
INSERT INTO `cat_entidadesFederativas` VALUES (15, 'Estado de México', 'MEX');
INSERT INTO `cat_entidadesFederativas` VALUES (16, 'Michoacá', 'MIC');
INSERT INTO `cat_entidadesFederativas` VALUES (17, 'Morelos', 'MOR');
INSERT INTO `cat_entidadesFederativas` VALUES (18, 'Nayarit', 'NAY');
INSERT INTO `cat_entidadesFederativas` VALUES (19, 'Nuevo Leó', 'NLE');
INSERT INTO `cat_entidadesFederativas` VALUES (20, 'Oaxaca', 'OAX');
INSERT INTO `cat_entidadesFederativas` VALUES (21, 'Puebla', 'PUE');
INSERT INTO `cat_entidadesFederativas` VALUES (22, 'Querétaro', 'QUE');
INSERT INTO `cat_entidadesFederativas` VALUES (23, 'Quintana Roo', 'ROO');
INSERT INTO `cat_entidadesFederativas` VALUES (24, 'San Luis Potosí', 'SLP');
INSERT INTO `cat_entidadesFederativas` VALUES (25, 'Sinaloa', 'SI');
INSERT INTO `cat_entidadesFederativas` VALUES (26, 'Sonora', 'SO');
INSERT INTO `cat_entidadesFederativas` VALUES (27, 'Tabasco', 'TAB');
INSERT INTO `cat_entidadesFederativas` VALUES (28, 'Tamaulipas', 'TAM');
INSERT INTO `cat_entidadesFederativas` VALUES (29, 'Tlaxcala', 'TLA');
INSERT INTO `cat_entidadesFederativas` VALUES (30, 'Veracruz', 'VER');
INSERT INTO `cat_entidadesFederativas` VALUES (31, 'Yucatán', 'YUC');
INSERT INTO `cat_entidadesFederativas` VALUES (32, 'Zacatecas', 'ZAC');

-- ----------------------------
-- Table structure for cat_especialidad
-- ----------------------------
DROP TABLE IF EXISTS `cat_especialidad`;
CREATE TABLE `cat_especialidad`  (
  `idEspecialidad` int(255) NOT NULL AUTO_INCREMENT,
  `nombreEspecialidad` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `activa` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idEspecialidad`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cat_especialidad
-- ----------------------------
INSERT INTO `cat_especialidad` VALUES (1, 'Familiar', b'1');
INSERT INTO `cat_especialidad` VALUES (2, 'Mercantil', b'1');
INSERT INTO `cat_especialidad` VALUES (3, 'Civil', b'1');

-- ----------------------------
-- Table structure for cat_estado_mediacion
-- ----------------------------
DROP TABLE IF EXISTS `cat_estado_mediacion`;
CREATE TABLE `cat_estado_mediacion`  (
  `idEstadoMediacion` int(255) NOT NULL AUTO_INCREMENT,
  `nombreEstado` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `activa` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idEstadoMediacion`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cat_estado_mediacion
-- ----------------------------
INSERT INTO `cat_estado_mediacion` VALUES (1, 'Mediacion preventiva', b'1');
INSERT INTO `cat_estado_mediacion` VALUES (2, 'Mediacion', b'1');

-- ----------------------------
-- Table structure for cat_estadoscivil_old
-- ----------------------------
DROP TABLE IF EXISTS `cat_estadoscivil_old`;
CREATE TABLE `cat_estadoscivil_old`  (
  `idEstadoCivil` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `descripcion` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`idEstadoCivil`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cat_estadoscivil_old
-- ----------------------------
INSERT INTO `cat_estadoscivil_old` VALUES (1, 'Soltero', 'Soltero');
INSERT INTO `cat_estadoscivil_old` VALUES (2, 'Casado', 'Casado');

-- ----------------------------
-- Table structure for cat_evento
-- ----------------------------
DROP TABLE IF EXISTS `cat_evento`;
CREATE TABLE `cat_evento`  (
  `idEvento` int(255) NOT NULL AUTO_INCREMENT,
  `nombreEvento` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `activa` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idEvento`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cat_evento
-- ----------------------------
INSERT INTO `cat_evento` VALUES (1, 'Crea Mediacion', b'1');
INSERT INTO `cat_evento` VALUES (2, 'Agenda Cita', b'1');
INSERT INTO `cat_evento` VALUES (3, 'Realiza Cita', b'1');
INSERT INTO `cat_evento` VALUES (4, 'Modifica Cita', b'1');
INSERT INTO `cat_evento` VALUES (5, 'Cancela Cita', b'1');
INSERT INTO `cat_evento` VALUES (6, 'Agenda VideoLlamada', b'1');
INSERT INTO `cat_evento` VALUES (7, 'Realiza VideoLlamada', b'1');
INSERT INTO `cat_evento` VALUES (8, 'Modifica VideoLlamada', b'1');
INSERT INTO `cat_evento` VALUES (9, 'Cancela VideoLlamada', b'1');
INSERT INTO `cat_evento` VALUES (10, 'Cambia Tipo de Mediacion', b'1');
INSERT INTO `cat_evento` VALUES (11, 'Cambia Descripcion de Mediacion', b'1');
INSERT INTO `cat_evento` VALUES (12, 'Sube Documento', b'1');
INSERT INTO `cat_evento` VALUES (13, 'Envia Documento a Boveda', b'1');
INSERT INTO `cat_evento` VALUES (14, 'Comparte Documento en Boveda', b'1');
INSERT INTO `cat_evento` VALUES (15, 'Descarga Documento en Boveda', b'1');
INSERT INTO `cat_evento` VALUES (16, 'Elimina Documento en Boveda', b'1');
INSERT INTO `cat_evento` VALUES (17, 'Finaliza Mediacion', b'1');
INSERT INTO `cat_evento` VALUES (18, 'Modifica Perfil', b'1');
INSERT INTO `cat_evento` VALUES (19, 'Revisa Notificacion', b'1');
INSERT INTO `cat_evento` VALUES (20, 'Crea Cliente', b'1');
INSERT INTO `cat_evento` VALUES (21, 'Actualiza Mediación', b'1');
INSERT INTO `cat_evento` VALUES (22, 'Elimina cita/videoLlamada', b'1');
INSERT INTO `cat_evento` VALUES (23, 'Elimina documento en file system', b'1');

-- ----------------------------
-- Table structure for cat_faseMediacion
-- ----------------------------
DROP TABLE IF EXISTS `cat_faseMediacion`;
CREATE TABLE `cat_faseMediacion`  (
  `idCatFasesMediacion` int(255) NOT NULL AUTO_INCREMENT,
  `nombreFase` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `activa` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idCatFasesMediacion`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cat_faseMediacion
-- ----------------------------
INSERT INTO `cat_faseMediacion` VALUES (1, 'Activa', b'1');
INSERT INTO `cat_faseMediacion` VALUES (2, 'Pendiente', b'1');
INSERT INTO `cat_faseMediacion` VALUES (3, 'Terminada', b'1');
INSERT INTO `cat_faseMediacion` VALUES (4, 'Convenio', b'1');
INSERT INTO `cat_faseMediacion` VALUES (5, 'Abandonada', b'1');

-- ----------------------------
-- Table structure for cat_modulos_old
-- ----------------------------
DROP TABLE IF EXISTS `cat_modulos_old`;
CREATE TABLE `cat_modulos_old`  (
  `idModulo` int(11) NOT NULL AUTO_INCREMENT,
  `nombreModulo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idModulo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cat_modulos_old
-- ----------------------------
INSERT INTO `cat_modulos_old` VALUES (1, 'Dashboard', 1);
INSERT INTO `cat_modulos_old` VALUES (2, 'Agenda', 1);
INSERT INTO `cat_modulos_old` VALUES (3, 'Gestor de documentos', 1);
INSERT INTO `cat_modulos_old` VALUES (4, 'Videoconferencia', 1);
INSERT INTO `cat_modulos_old` VALUES (5, 'Avisos', 1);
INSERT INTO `cat_modulos_old` VALUES (6, 'bóveda documental', 1);

-- ----------------------------
-- Table structure for cat_municipio
-- ----------------------------
DROP TABLE IF EXISTS `cat_municipio`;
CREATE TABLE `cat_municipio`  (
  `idMunicipio` int(11) NOT NULL AUTO_INCREMENT,
  `claveMunicipio` int(11) DEFAULT NULL,
  `nombre` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `siglaMunicipio` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idEstado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idMunicipio`) USING BTREE,
  INDEX `idEstado`(`idEstado`) USING BTREE,
  CONSTRAINT `cat_municipio_ibfk_1` FOREIGN KEY (`idEstado`) REFERENCES `cat_entidadesFederativas` (`idEntidadFederativa`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2468 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cat_municipio
-- ----------------------------
INSERT INTO `cat_municipio` VALUES (1, 1, 'Aguascalientes', '', 1);
INSERT INTO `cat_municipio` VALUES (2, 2, 'San Francisco de los Romo', '', 1);
INSERT INTO `cat_municipio` VALUES (3, 3, 'El Llano', '', 1);
INSERT INTO `cat_municipio` VALUES (4, 4, 'Rincón de Romos', '', 1);
INSERT INTO `cat_municipio` VALUES (5, 5, 'Cosío', '', 1);
INSERT INTO `cat_municipio` VALUES (6, 6, 'San José de Gracia', '', 1);
INSERT INTO `cat_municipio` VALUES (7, 7, 'Tepezalá', '', 1);
INSERT INTO `cat_municipio` VALUES (8, 8, 'Pabellón de Arteaga', '', 1);
INSERT INTO `cat_municipio` VALUES (9, 9, 'Asientos', '', 1);
INSERT INTO `cat_municipio` VALUES (10, 10, 'Calvillo', '', 1);
INSERT INTO `cat_municipio` VALUES (11, 11, 'Jesús María', '', 1);
INSERT INTO `cat_municipio` VALUES (12, 12, 'Mexicali', '', 2);
INSERT INTO `cat_municipio` VALUES (13, 13, 'Tecate', '', 2);
INSERT INTO `cat_municipio` VALUES (14, 14, 'Tijuana', '', 2);
INSERT INTO `cat_municipio` VALUES (15, 15, 'Playas de Rosarito', '', 2);
INSERT INTO `cat_municipio` VALUES (16, 16, 'Ensenada', '', 2);
INSERT INTO `cat_municipio` VALUES (17, 17, 'La Paz', '', 3);
INSERT INTO `cat_municipio` VALUES (18, 18, 'Los Cabos', '', 3);
INSERT INTO `cat_municipio` VALUES (19, 19, 'Comondú', '', 3);
INSERT INTO `cat_municipio` VALUES (20, 20, 'Loreto', '', 3);
INSERT INTO `cat_municipio` VALUES (21, 21, 'Mulegé', '', 3);
INSERT INTO `cat_municipio` VALUES (22, 22, 'Carme', '', 4);
INSERT INTO `cat_municipio` VALUES (23, 23, 'Palizada', '', 4);
INSERT INTO `cat_municipio` VALUES (24, 24, 'Candelaria', '', 4);
INSERT INTO `cat_municipio` VALUES (25, 25, 'Escárcega', '', 4);
INSERT INTO `cat_municipio` VALUES (26, 26, 'Champotó', '', 4);
INSERT INTO `cat_municipio` VALUES (27, 27, 'Campeche', '', 4);
INSERT INTO `cat_municipio` VALUES (28, 28, 'Calakmul', '', 4);
INSERT INTO `cat_municipio` VALUES (29, 29, 'Hopelché', '', 4);
INSERT INTO `cat_municipio` VALUES (30, 30, 'Tenabo', '', 4);
INSERT INTO `cat_municipio` VALUES (31, 31, 'Hecelchaká', '', 4);
INSERT INTO `cat_municipio` VALUES (32, 32, 'Calkiní', '', 4);
INSERT INTO `cat_municipio` VALUES (33, 33, 'Tuxtla Gutiérrez', '', 5);
INSERT INTO `cat_municipio` VALUES (34, 34, 'San Fernando', '', 5);
INSERT INTO `cat_municipio` VALUES (35, 35, 'Berriozábal', '', 5);
INSERT INTO `cat_municipio` VALUES (36, 36, 'Ocozocoautla de Espinosa', '', 5);
INSERT INTO `cat_municipio` VALUES (37, 37, 'Suchiapa', '', 5);
INSERT INTO `cat_municipio` VALUES (38, 38, 'Chiapa de Corzo', '', 5);
INSERT INTO `cat_municipio` VALUES (39, 39, 'Osumacinta', '', 5);
INSERT INTO `cat_municipio` VALUES (40, 40, 'San Cristóbal de las Casas', '', 5);
INSERT INTO `cat_municipio` VALUES (41, 41, 'Chamula', '', 5);
INSERT INTO `cat_municipio` VALUES (42, 42, 'Ixtapa', '', 5);
INSERT INTO `cat_municipio` VALUES (43, 43, 'Zinacantá', '', 5);
INSERT INTO `cat_municipio` VALUES (44, 44, 'Acala', '', 5);
INSERT INTO `cat_municipio` VALUES (45, 45, 'Emiliano Zapata', '', 5);
INSERT INTO `cat_municipio` VALUES (46, 46, 'Chiapilla', '', 5);
INSERT INTO `cat_municipio` VALUES (47, 47, 'San Lucas', '', 5);
INSERT INTO `cat_municipio` VALUES (48, 48, 'Teopisca', '', 5);
INSERT INTO `cat_municipio` VALUES (49, 49, 'Amatenango del Valle', '', 5);
INSERT INTO `cat_municipio` VALUES (50, 50, 'Chanal', '', 5);
INSERT INTO `cat_municipio` VALUES (51, 51, 'Oxchuc', '', 5);
INSERT INTO `cat_municipio` VALUES (52, 52, 'Huixtá', '', 5);
INSERT INTO `cat_municipio` VALUES (53, 53, 'Tenejapa', '', 5);
INSERT INTO `cat_municipio` VALUES (54, 54, 'Mitontic', '', 5);
INSERT INTO `cat_municipio` VALUES (55, 55, 'Reforma', '', 5);
INSERT INTO `cat_municipio` VALUES (56, 56, 'Juárez', '', 5);
INSERT INTO `cat_municipio` VALUES (57, 57, 'Pichucalco', '', 5);
INSERT INTO `cat_municipio` VALUES (58, 58, 'Sunuapa', '', 5);
INSERT INTO `cat_municipio` VALUES (59, 59, 'Ostuacá', '', 5);
INSERT INTO `cat_municipio` VALUES (60, 60, 'Francisco Leó', '', 5);
INSERT INTO `cat_municipio` VALUES (61, 61, 'Ixtacomitá', '', 5);
INSERT INTO `cat_municipio` VALUES (62, 62, 'Ixtapangajoya', '', 5);
INSERT INTO `cat_municipio` VALUES (63, 63, 'Mezcalapa', '', 5);
INSERT INTO `cat_municipio` VALUES (64, 64, 'Tecpatá', '', 5);
INSERT INTO `cat_municipio` VALUES (65, 65, 'Copainalá', '', 5);
INSERT INTO `cat_municipio` VALUES (66, 66, 'Chicoasé', '', 5);
INSERT INTO `cat_municipio` VALUES (67, 67, 'Coapilla', '', 5);
INSERT INTO `cat_municipio` VALUES (68, 68, 'Pantepec', '', 5);
INSERT INTO `cat_municipio` VALUES (69, 69, 'Tapalapa', '', 5);
INSERT INTO `cat_municipio` VALUES (70, 70, 'Ocotepec', '', 5);
INSERT INTO `cat_municipio` VALUES (71, 71, 'Chapultenango', '', 5);
INSERT INTO `cat_municipio` VALUES (72, 72, 'Amatá', '', 5);
INSERT INTO `cat_municipio` VALUES (73, 73, 'Huitiupá', '', 5);
INSERT INTO `cat_municipio` VALUES (74, 74, 'Ixhuatá', '', 5);
INSERT INTO `cat_municipio` VALUES (75, 75, 'Tapilula', '', 5);
INSERT INTO `cat_municipio` VALUES (76, 76, 'Rayó', '', 5);
INSERT INTO `cat_municipio` VALUES (77, 77, 'Pueblo Nuevo Solistahuacá', '', 5);
INSERT INTO `cat_municipio` VALUES (78, 78, 'Rincón Chamula San Pedro', '', 5);
INSERT INTO `cat_municipio` VALUES (79, 79, 'Jitotol', '', 5);
INSERT INTO `cat_municipio` VALUES (80, 80, 'Bochil', '', 5);
INSERT INTO `cat_municipio` VALUES (81, 81, 'Soyaló', '', 5);
INSERT INTO `cat_municipio` VALUES (82, 82, 'San Juan Cancuc', '', 5);
INSERT INTO `cat_municipio` VALUES (83, 83, 'Sabanilla', '', 5);
INSERT INTO `cat_municipio` VALUES (84, 84, 'Simojovel', '', 5);
INSERT INTO `cat_municipio` VALUES (85, 85, 'San Andrés Duraznal', '', 5);
INSERT INTO `cat_municipio` VALUES (86, 86, 'El Bosque', '', 5);
INSERT INTO `cat_municipio` VALUES (87, 87, 'Chalchihuitá', '', 5);
INSERT INTO `cat_municipio` VALUES (88, 88, 'Larráinzar', '', 5);
INSERT INTO `cat_municipio` VALUES (89, 89, 'Santiago el Pinar', '', 5);
INSERT INTO `cat_municipio` VALUES (90, 90, 'Chenalhó', '', 5);
INSERT INTO `cat_municipio` VALUES (91, 91, 'Aldama', '', 5);
INSERT INTO `cat_municipio` VALUES (92, 92, 'Pantelhó', '', 5);
INSERT INTO `cat_municipio` VALUES (93, 93, 'Sitalá', '', 5);
INSERT INTO `cat_municipio` VALUES (94, 94, 'Salto de Agua', '', 5);
INSERT INTO `cat_municipio` VALUES (95, 95, 'Tila', '', 5);
INSERT INTO `cat_municipio` VALUES (96, 96, 'Tumbalá', '', 5);
INSERT INTO `cat_municipio` VALUES (97, 97, 'Yajaló', '', 5);
INSERT INTO `cat_municipio` VALUES (98, 98, 'Ocosingo', '', 5);
INSERT INTO `cat_municipio` VALUES (99, 99, 'Chiló', '', 5);
INSERT INTO `cat_municipio` VALUES (100, 100, 'Benemérito de las Américas', '', 5);
INSERT INTO `cat_municipio` VALUES (101, 101, 'Marqués de Comillas', '', 5);
INSERT INTO `cat_municipio` VALUES (102, 102, 'Palenque', '', 5);
INSERT INTO `cat_municipio` VALUES (103, 103, 'La Libertad', '', 5);
INSERT INTO `cat_municipio` VALUES (104, 104, 'Catazajá', '', 5);
INSERT INTO `cat_municipio` VALUES (105, 105, 'Comitán de Domínguez', '', 5);
INSERT INTO `cat_municipio` VALUES (106, 106, 'Tzimol', '', 5);
INSERT INTO `cat_municipio` VALUES (107, 107, 'Chicomuselo', '', 5);
INSERT INTO `cat_municipio` VALUES (108, 108, 'Bella Vista', '', 5);
INSERT INTO `cat_municipio` VALUES (109, 109, 'Frontera Comalapa', '', 5);
INSERT INTO `cat_municipio` VALUES (110, 110, 'La Trinitaria', '', 5);
INSERT INTO `cat_municipio` VALUES (111, 111, 'La Independencia', '', 5);
INSERT INTO `cat_municipio` VALUES (112, 112, 'Maravilla Tenejapa', '', 5);
INSERT INTO `cat_municipio` VALUES (113, 113, 'Las Margaritas', '', 5);
INSERT INTO `cat_municipio` VALUES (114, 114, 'Altamirano', '', 5);
INSERT INTO `cat_municipio` VALUES (115, 115, 'Venustiano Carranza', '', 5);
INSERT INTO `cat_municipio` VALUES (116, 116, 'Totolapa', '', 5);
INSERT INTO `cat_municipio` VALUES (117, 117, 'Nicolás Ruíz', '', 5);
INSERT INTO `cat_municipio` VALUES (118, 118, 'Las Rosas', '', 5);
INSERT INTO `cat_municipio` VALUES (119, 119, 'La Concordia', '', 5);
INSERT INTO `cat_municipio` VALUES (120, 120, 'Angel Albino Corzo', '', 5);
INSERT INTO `cat_municipio` VALUES (121, 121, 'Montecristo de Guerrero', '', 5);
INSERT INTO `cat_municipio` VALUES (122, 122, 'Socoltenango', '', 5);
INSERT INTO `cat_municipio` VALUES (123, 123, 'Cintalapa', '', 5);
INSERT INTO `cat_municipio` VALUES (124, 124, 'Jiquipilas', '', 5);
INSERT INTO `cat_municipio` VALUES (125, 125, 'Arriaga', '', 5);
INSERT INTO `cat_municipio` VALUES (126, 126, 'Villaflores', '', 5);
INSERT INTO `cat_municipio` VALUES (127, 127, 'Tonalá', '', 5);
INSERT INTO `cat_municipio` VALUES (128, 128, 'Villa Corzo', '', 5);
INSERT INTO `cat_municipio` VALUES (129, 129, 'El Parral', '', 5);
INSERT INTO `cat_municipio` VALUES (130, 130, 'Pijijiapa', '', 5);
INSERT INTO `cat_municipio` VALUES (131, 131, 'Mapastepec', '', 5);
INSERT INTO `cat_municipio` VALUES (132, 132, 'Acapetahua', '', 5);
INSERT INTO `cat_municipio` VALUES (133, 133, 'Acacoyagua', '', 5);
INSERT INTO `cat_municipio` VALUES (134, 134, 'Escuintla', '', 5);
INSERT INTO `cat_municipio` VALUES (135, 135, 'Villa Comaltitlá', '', 5);
INSERT INTO `cat_municipio` VALUES (136, 136, 'Huixtla', '', 5);
INSERT INTO `cat_municipio` VALUES (137, 137, 'Mazatá', '', 5);
INSERT INTO `cat_municipio` VALUES (138, 138, 'Huehuetá', '', 5);
INSERT INTO `cat_municipio` VALUES (139, 139, 'Tuzantá', '', 5);
INSERT INTO `cat_municipio` VALUES (140, 140, 'Tapachula', '', 5);
INSERT INTO `cat_municipio` VALUES (141, 141, 'Suchiate', '', 5);
INSERT INTO `cat_municipio` VALUES (142, 142, 'Frontera Hidalgo', '', 5);
INSERT INTO `cat_municipio` VALUES (143, 143, 'Metapa', '', 5);
INSERT INTO `cat_municipio` VALUES (144, 144, 'Tuxtla Chico', '', 5);
INSERT INTO `cat_municipio` VALUES (145, 145, 'Unión Juárez', '', 5);
INSERT INTO `cat_municipio` VALUES (146, 146, 'Cacahoatá', '', 5);
INSERT INTO `cat_municipio` VALUES (147, 147, 'Motozintla', '', 5);
INSERT INTO `cat_municipio` VALUES (148, 148, 'Mazapa de Madero', '', 5);
INSERT INTO `cat_municipio` VALUES (149, 149, 'Amatenango de la Frontera', '', 5);
INSERT INTO `cat_municipio` VALUES (150, 150, 'Bejucal de Ocampo', '', 5);
INSERT INTO `cat_municipio` VALUES (151, 151, 'La Grandeza', '', 5);
INSERT INTO `cat_municipio` VALUES (152, 152, 'El Porvenir', '', 5);
INSERT INTO `cat_municipio` VALUES (153, 153, 'Capitán Luis Ángel Vidal', '', 5);
INSERT INTO `cat_municipio` VALUES (154, 154, 'Siltepec', '', 5);
INSERT INTO `cat_municipio` VALUES (155, 155, 'Cuauhtémoc', '', 6);
INSERT INTO `cat_municipio` VALUES (156, 156, 'Chihuahua', '', 6);
INSERT INTO `cat_municipio` VALUES (157, 157, 'Riva Palacio', '', 6);
INSERT INTO `cat_municipio` VALUES (158, 158, 'Aquiles Serdá', '', 6);
INSERT INTO `cat_municipio` VALUES (159, 159, 'Bachíniva', '', 6);
INSERT INTO `cat_municipio` VALUES (160, 160, 'Guerrero', '', 6);
INSERT INTO `cat_municipio` VALUES (161, 161, 'Nuevo Casas Grandes', '', 6);
INSERT INTO `cat_municipio` VALUES (162, 162, 'Ascensió', '', 6);
INSERT INTO `cat_municipio` VALUES (163, 163, 'Janos', '', 6);
INSERT INTO `cat_municipio` VALUES (164, 164, 'Casas Grandes', '', 6);
INSERT INTO `cat_municipio` VALUES (165, 165, 'Galeana', '', 6);
INSERT INTO `cat_municipio` VALUES (166, 166, 'Buenaventura', '', 6);
INSERT INTO `cat_municipio` VALUES (167, 167, 'Gómez Farías', '', 6);
INSERT INTO `cat_municipio` VALUES (168, 168, 'Ignacio Zaragoza', '', 6);
INSERT INTO `cat_municipio` VALUES (169, 169, 'Madera', '', 6);
INSERT INTO `cat_municipio` VALUES (170, 170, 'Namiquipa', '', 6);
INSERT INTO `cat_municipio` VALUES (171, 171, 'Temósachic', '', 6);
INSERT INTO `cat_municipio` VALUES (172, 172, 'Matachí', '', 6);
INSERT INTO `cat_municipio` VALUES (173, 173, 'Guadalupe', '', 6);
INSERT INTO `cat_municipio` VALUES (174, 174, 'Praxedis G. Guerrero', '', 6);
INSERT INTO `cat_municipio` VALUES (175, 175, 'Ahumada', '', 6);
INSERT INTO `cat_municipio` VALUES (176, 176, 'Coyame del Sotol', '', 6);
INSERT INTO `cat_municipio` VALUES (177, 177, 'Ojinaga', '', 6);
INSERT INTO `cat_municipio` VALUES (178, 178, 'Aldama', '', 6);
INSERT INTO `cat_municipio` VALUES (179, 179, 'Julimes', '', 6);
INSERT INTO `cat_municipio` VALUES (180, 180, 'Manuel Benavides', '', 6);
INSERT INTO `cat_municipio` VALUES (181, 181, 'Delicias', '', 6);
INSERT INTO `cat_municipio` VALUES (182, 182, 'Rosales', '', 6);
INSERT INTO `cat_municipio` VALUES (183, 183, 'Meoqui', '', 6);
INSERT INTO `cat_municipio` VALUES (184, 184, 'Dr. Belisario Domínguez', '', 6);
INSERT INTO `cat_municipio` VALUES (185, 185, 'Satevó', '', 6);
INSERT INTO `cat_municipio` VALUES (186, 186, 'San Francisco de Borja', '', 6);
INSERT INTO `cat_municipio` VALUES (187, 187, 'Nonoava', '', 6);
INSERT INTO `cat_municipio` VALUES (188, 188, 'Guachochi', '', 6);
INSERT INTO `cat_municipio` VALUES (189, 189, 'Bocoyna', '', 6);
INSERT INTO `cat_municipio` VALUES (190, 190, 'Cusihuiriachi', '', 6);
INSERT INTO `cat_municipio` VALUES (191, 191, 'Gran Morelos', '', 6);
INSERT INTO `cat_municipio` VALUES (192, 192, 'Santa Isabel', '', 6);
INSERT INTO `cat_municipio` VALUES (193, 193, 'Carichí', '', 6);
INSERT INTO `cat_municipio` VALUES (194, 194, 'Uruachi', '', 6);
INSERT INTO `cat_municipio` VALUES (195, 195, 'Ocampo', '', 6);
INSERT INTO `cat_municipio` VALUES (196, 196, 'Moris', '', 6);
INSERT INTO `cat_municipio` VALUES (197, 197, 'Chínipas', '', 6);
INSERT INTO `cat_municipio` VALUES (198, 198, 'Maguarichi', '', 6);
INSERT INTO `cat_municipio` VALUES (199, 199, 'Guazapares', '', 6);
INSERT INTO `cat_municipio` VALUES (200, 200, 'Batopilas de Manuel Gómez Morí', '', 6);
INSERT INTO `cat_municipio` VALUES (201, 201, 'Urique', '', 6);
INSERT INTO `cat_municipio` VALUES (202, 202, 'Morelos', '', 6);
INSERT INTO `cat_municipio` VALUES (203, 203, 'Guadalupe y Calvo', '', 6);
INSERT INTO `cat_municipio` VALUES (204, 204, 'San Francisco del Oro', '', 6);
INSERT INTO `cat_municipio` VALUES (205, 205, 'Rosario', '', 6);
INSERT INTO `cat_municipio` VALUES (206, 206, 'Huejotitá', '', 6);
INSERT INTO `cat_municipio` VALUES (207, 207, 'El Tule', '', 6);
INSERT INTO `cat_municipio` VALUES (208, 208, 'Balleza', '', 6);
INSERT INTO `cat_municipio` VALUES (209, 209, 'Santa Bárbara', '', 6);
INSERT INTO `cat_municipio` VALUES (210, 210, 'Camargo', '', 6);
INSERT INTO `cat_municipio` VALUES (211, 211, 'Saucillo', '', 6);
INSERT INTO `cat_municipio` VALUES (212, 212, 'Valle de Zaragoza', '', 6);
INSERT INTO `cat_municipio` VALUES (213, 213, 'La Cruz', '', 6);
INSERT INTO `cat_municipio` VALUES (214, 214, 'San Francisco de Conchos', '', 6);
INSERT INTO `cat_municipio` VALUES (215, 215, 'Camargo', '', 6);
INSERT INTO `cat_municipio` VALUES (216, 216, 'Hidalgo del Parral', '', 6);
INSERT INTO `cat_municipio` VALUES (217, 217, 'Allende', '', 6);
INSERT INTO `cat_municipio` VALUES (218, 218, 'López', '', 6);
INSERT INTO `cat_municipio` VALUES (219, 219, 'Matamoros', '', 6);
INSERT INTO `cat_municipio` VALUES (220, 220, 'Jiménez', '', 6);
INSERT INTO `cat_municipio` VALUES (221, 221, 'Coronado', '', 6);
INSERT INTO `cat_municipio` VALUES (222, 222, 'Saltillo', '', 7);
INSERT INTO `cat_municipio` VALUES (223, 223, 'Arteaga', '', 7);
INSERT INTO `cat_municipio` VALUES (224, 224, 'Juárez', '', 7);
INSERT INTO `cat_municipio` VALUES (225, 225, 'Progreso', '', 7);
INSERT INTO `cat_municipio` VALUES (226, 226, 'Escobedo', '', 7);
INSERT INTO `cat_municipio` VALUES (227, 227, 'San Buenaventura', '', 7);
INSERT INTO `cat_municipio` VALUES (228, 228, 'Abasolo', '', 7);
INSERT INTO `cat_municipio` VALUES (229, 229, 'Candela', '', 7);
INSERT INTO `cat_municipio` VALUES (230, 230, 'Monclova', '', 7);
INSERT INTO `cat_municipio` VALUES (231, 231, 'Frontera', '', 7);
INSERT INTO `cat_municipio` VALUES (232, 232, 'Castaños', '', 7);
INSERT INTO `cat_municipio` VALUES (233, 233, 'Ramos Arizpe', '', 7);
INSERT INTO `cat_municipio` VALUES (234, 234, 'General Cepeda', '', 7);
INSERT INTO `cat_municipio` VALUES (235, 235, 'Piedras Negras', '', 7);
INSERT INTO `cat_municipio` VALUES (236, 236, 'Nava', '', 7);
INSERT INTO `cat_municipio` VALUES (237, 237, 'Acuña', '', 7);
INSERT INTO `cat_municipio` VALUES (238, 238, 'Múzquiz', '', 7);
INSERT INTO `cat_municipio` VALUES (239, 239, 'Jiménez', '', 7);
INSERT INTO `cat_municipio` VALUES (240, 240, 'Zaragoza', '', 7);
INSERT INTO `cat_municipio` VALUES (241, 241, 'Morelos', '', 7);
INSERT INTO `cat_municipio` VALUES (242, 242, 'Allende', '', 7);
INSERT INTO `cat_municipio` VALUES (243, 243, 'Villa Unió', '', 7);
INSERT INTO `cat_municipio` VALUES (244, 244, 'Guerrero', '', 7);
INSERT INTO `cat_municipio` VALUES (245, 245, 'Hidalgo', '', 7);
INSERT INTO `cat_municipio` VALUES (246, 246, 'San Juan de Sabinas', '', 7);
INSERT INTO `cat_municipio` VALUES (247, 247, 'Sabinas', '', 7);
INSERT INTO `cat_municipio` VALUES (248, 248, 'Torreó', '', 7);
INSERT INTO `cat_municipio` VALUES (249, 249, 'Matamoros', '', 7);
INSERT INTO `cat_municipio` VALUES (250, 250, 'Viesca', '', 7);
INSERT INTO `cat_municipio` VALUES (251, 251, 'Ocampo', '', 7);
INSERT INTO `cat_municipio` VALUES (252, 252, 'Nadadores', '', 7);
INSERT INTO `cat_municipio` VALUES (253, 253, 'Sierra Mojada', '', 7);
INSERT INTO `cat_municipio` VALUES (254, 254, 'Cuatro Ciénegas', '', 7);
INSERT INTO `cat_municipio` VALUES (255, 255, 'Lamadrid', '', 7);
INSERT INTO `cat_municipio` VALUES (256, 256, 'Sacramento', '', 7);
INSERT INTO `cat_municipio` VALUES (257, 257, 'San Pedro', '', 7);
INSERT INTO `cat_municipio` VALUES (258, 258, 'Francisco I. Madero', '', 7);
INSERT INTO `cat_municipio` VALUES (259, 259, 'Parras', '', 7);
INSERT INTO `cat_municipio` VALUES (260, 260, 'Tecomá', '', 8);
INSERT INTO `cat_municipio` VALUES (261, 261, 'Manzanillo', '', 8);
INSERT INTO `cat_municipio` VALUES (262, 262, 'Armería', '', 8);
INSERT INTO `cat_municipio` VALUES (263, 263, 'Coquimatlá', '', 8);
INSERT INTO `cat_municipio` VALUES (264, 264, 'Comala', '', 8);
INSERT INTO `cat_municipio` VALUES (265, 265, 'Cuauhtémoc', '', 8);
INSERT INTO `cat_municipio` VALUES (266, 266, 'Colima', '', 8);
INSERT INTO `cat_municipio` VALUES (267, 267, 'Ixtlahuacá', '', 8);
INSERT INTO `cat_municipio` VALUES (268, 268, 'Minatitlá', '', 8);
INSERT INTO `cat_municipio` VALUES (269, 269, 'Villa de Álvarez', '', 8);
INSERT INTO `cat_municipio` VALUES (270, 270, 'Álvaro Obregó', '', 9);
INSERT INTO `cat_municipio` VALUES (271, 271, 'Azcapotzalco', '', 9);
INSERT INTO `cat_municipio` VALUES (272, 272, 'Benito Juárez', '', 9);
INSERT INTO `cat_municipio` VALUES (273, 273, 'Coyoacá', '', 9);
INSERT INTO `cat_municipio` VALUES (274, 274, 'Cuajimalpa de Morelos', '', 9);
INSERT INTO `cat_municipio` VALUES (275, 275, 'Cuauhtémoc', '', 9);
INSERT INTO `cat_municipio` VALUES (276, 276, 'Gustavo A. Madero', '', 9);
INSERT INTO `cat_municipio` VALUES (277, 277, 'Iztacalco', '', 9);
INSERT INTO `cat_municipio` VALUES (278, 278, 'Iztapalapa', '', 9);
INSERT INTO `cat_municipio` VALUES (279, 279, 'La Magdalena Contreras', '', 9);
INSERT INTO `cat_municipio` VALUES (280, 280, 'Miguel Hidalgo', '', 9);
INSERT INTO `cat_municipio` VALUES (281, 281, 'Milpa Alta', '', 9);
INSERT INTO `cat_municipio` VALUES (282, 282, 'Tláhuac', '', 9);
INSERT INTO `cat_municipio` VALUES (283, 283, 'Tlalpa', '', 9);
INSERT INTO `cat_municipio` VALUES (284, 284, 'Venustiano Carranza', '', 9);
INSERT INTO `cat_municipio` VALUES (285, 285, 'Xochimilco', '', 9);
INSERT INTO `cat_municipio` VALUES (286, 286, 'Durango', '', 10);
INSERT INTO `cat_municipio` VALUES (287, 287, 'Canatlá', '', 10);
INSERT INTO `cat_municipio` VALUES (288, 288, 'Nuevo Ideal', '', 10);
INSERT INTO `cat_municipio` VALUES (289, 289, 'Coneto de Comonfort', '', 10);
INSERT INTO `cat_municipio` VALUES (290, 290, 'San Juan del Río', '', 10);
INSERT INTO `cat_municipio` VALUES (291, 291, 'Canelas', '', 10);
INSERT INTO `cat_municipio` VALUES (292, 292, 'Topia', '', 10);
INSERT INTO `cat_municipio` VALUES (293, 293, 'Tamazula', '', 10);
INSERT INTO `cat_municipio` VALUES (294, 294, 'Santiago Papasquiaro', '', 10);
INSERT INTO `cat_municipio` VALUES (295, 295, 'Otáez', '', 10);
INSERT INTO `cat_municipio` VALUES (296, 296, 'San Dimas', '', 10);
INSERT INTO `cat_municipio` VALUES (297, 297, 'Guadalupe Victoria', '', 10);
INSERT INTO `cat_municipio` VALUES (298, 298, 'Peñón Blanco', '', 10);
INSERT INTO `cat_municipio` VALUES (299, 299, 'Pánuco de Coronado', '', 10);
INSERT INTO `cat_municipio` VALUES (300, 300, 'Poanas', '', 10);
INSERT INTO `cat_municipio` VALUES (301, 301, 'Nombre de Dios', '', 10);
INSERT INTO `cat_municipio` VALUES (302, 302, 'Vicente Guerrero', '', 10);
INSERT INTO `cat_municipio` VALUES (303, 303, 'Súchil', '', 10);
INSERT INTO `cat_municipio` VALUES (304, 304, 'Pueblo Nuevo', '', 10);
INSERT INTO `cat_municipio` VALUES (305, 305, 'Mezquital', '', 10);
INSERT INTO `cat_municipio` VALUES (306, 306, 'Gómez Palacio', '', 10);
INSERT INTO `cat_municipio` VALUES (307, 307, 'Lerdo', '', 10);
INSERT INTO `cat_municipio` VALUES (308, 308, 'Mapimí', '', 10);
INSERT INTO `cat_municipio` VALUES (309, 309, 'Tlahualilo', '', 10);
INSERT INTO `cat_municipio` VALUES (310, 310, 'Hidalgo', '', 10);
INSERT INTO `cat_municipio` VALUES (311, 311, 'Ocampo', '', 10);
INSERT INTO `cat_municipio` VALUES (312, 312, 'Guanaceví', '', 10);
INSERT INTO `cat_municipio` VALUES (313, 313, 'San Bernardo', '', 10);
INSERT INTO `cat_municipio` VALUES (314, 314, 'Indé', '', 10);
INSERT INTO `cat_municipio` VALUES (315, 315, 'San Pedro del Gallo', '', 10);
INSERT INTO `cat_municipio` VALUES (316, 316, 'Tepehuanes', '', 10);
INSERT INTO `cat_municipio` VALUES (317, 317, 'El Oro', '', 10);
INSERT INTO `cat_municipio` VALUES (318, 318, 'Nazas', '', 10);
INSERT INTO `cat_municipio` VALUES (319, 319, 'San Luis del Cordero', '', 10);
INSERT INTO `cat_municipio` VALUES (320, 320, 'Rodeo', '', 10);
INSERT INTO `cat_municipio` VALUES (321, 321, 'Cuencamé', '', 10);
INSERT INTO `cat_municipio` VALUES (322, 322, 'Santa Clara', '', 10);
INSERT INTO `cat_municipio` VALUES (323, 323, 'San Juan de Guadalupe', '', 10);
INSERT INTO `cat_municipio` VALUES (324, 324, 'General Simón Bolívar', '', 10);
INSERT INTO `cat_municipio` VALUES (325, 325, 'Guanajuato', '', 11);
INSERT INTO `cat_municipio` VALUES (326, 326, 'Silao de la Victoria', '', 11);
INSERT INTO `cat_municipio` VALUES (327, 327, 'Romita', '', 11);
INSERT INTO `cat_municipio` VALUES (328, 328, 'San Francisco del Rincó', '', 11);
INSERT INTO `cat_municipio` VALUES (329, 329, 'Purísima del Rincó', '', 11);
INSERT INTO `cat_municipio` VALUES (330, 330, 'Manuel Doblado', '', 11);
INSERT INTO `cat_municipio` VALUES (331, 331, 'Irapuato', '', 11);
INSERT INTO `cat_municipio` VALUES (332, 332, 'Salamanca', '', 11);
INSERT INTO `cat_municipio` VALUES (333, 333, 'Pueblo Nuevo', '', 11);
INSERT INTO `cat_municipio` VALUES (334, 334, 'Pénjamo', '', 11);
INSERT INTO `cat_municipio` VALUES (335, 335, 'Cuerámaro', '', 11);
INSERT INTO `cat_municipio` VALUES (336, 336, 'Abasolo', '', 11);
INSERT INTO `cat_municipio` VALUES (337, 337, 'Huanímaro', '', 11);
INSERT INTO `cat_municipio` VALUES (338, 338, 'Leó', '', 11);
INSERT INTO `cat_municipio` VALUES (339, 339, 'San Felipe', '', 11);
INSERT INTO `cat_municipio` VALUES (340, 340, 'Ocampo', '', 11);
INSERT INTO `cat_municipio` VALUES (341, 341, 'San Miguel de Allende', '', 11);
INSERT INTO `cat_municipio` VALUES (342, 342, 'Dolores Hidalgo Cuna de la Independencia Nacional', '', 11);
INSERT INTO `cat_municipio` VALUES (343, 343, 'San Diego de la Unió', '', 11);
INSERT INTO `cat_municipio` VALUES (344, 344, 'San Luis de la Paz', '', 11);
INSERT INTO `cat_municipio` VALUES (345, 345, 'Victoria', '', 11);
INSERT INTO `cat_municipio` VALUES (346, 346, 'Xichú', '', 11);
INSERT INTO `cat_municipio` VALUES (347, 347, 'Atarjea', '', 11);
INSERT INTO `cat_municipio` VALUES (348, 348, 'Santa Catarina', '', 11);
INSERT INTO `cat_municipio` VALUES (349, 349, 'Doctor Mora', '', 11);
INSERT INTO `cat_municipio` VALUES (350, 350, 'Tierra Blanca', '', 11);
INSERT INTO `cat_municipio` VALUES (351, 351, 'San José Iturbide', '', 11);
INSERT INTO `cat_municipio` VALUES (352, 352, 'Celaya', '', 11);
INSERT INTO `cat_municipio` VALUES (353, 353, 'Apaseo el Grande', '', 11);
INSERT INTO `cat_municipio` VALUES (354, 354, 'Comonfort', '', 11);
INSERT INTO `cat_municipio` VALUES (355, 355, 'Santa Cruz de Juventino Rosas', '', 11);
INSERT INTO `cat_municipio` VALUES (356, 356, 'Villagrá', '', 11);
INSERT INTO `cat_municipio` VALUES (357, 357, 'Cortazar', '', 11);
INSERT INTO `cat_municipio` VALUES (358, 358, 'Valle de Santiago', '', 11);
INSERT INTO `cat_municipio` VALUES (359, 359, 'Jaral del Progreso', '', 11);
INSERT INTO `cat_municipio` VALUES (360, 360, 'Apaseo el Alto', '', 11);
INSERT INTO `cat_municipio` VALUES (361, 361, 'Jerécuaro', '', 11);
INSERT INTO `cat_municipio` VALUES (362, 362, 'Coroneo', '', 11);
INSERT INTO `cat_municipio` VALUES (363, 363, 'Acámbaro', '', 11);
INSERT INTO `cat_municipio` VALUES (364, 364, 'Tarimoro', '', 11);
INSERT INTO `cat_municipio` VALUES (365, 365, 'Tarandacuao', '', 11);
INSERT INTO `cat_municipio` VALUES (366, 366, 'Moroleó', '', 11);
INSERT INTO `cat_municipio` VALUES (367, 367, 'Salvatierra', '', 11);
INSERT INTO `cat_municipio` VALUES (368, 368, 'Yuriria', '', 11);
INSERT INTO `cat_municipio` VALUES (369, 369, 'Santiago Maravatío', '', 11);
INSERT INTO `cat_municipio` VALUES (370, 370, 'Uriangato', '', 11);
INSERT INTO `cat_municipio` VALUES (371, 371, 'Chilpancingo de los Bravo', '', 12);
INSERT INTO `cat_municipio` VALUES (372, 372, 'General Heliodoro Castillo', '', 12);
INSERT INTO `cat_municipio` VALUES (373, 373, 'Leonardo Bravo', '', 12);
INSERT INTO `cat_municipio` VALUES (374, 374, 'Tixtla de Guerrero', '', 12);
INSERT INTO `cat_municipio` VALUES (375, 375, 'Ayutla de los Libres', '', 12);
INSERT INTO `cat_municipio` VALUES (376, 376, 'Mochitlá', '', 12);
INSERT INTO `cat_municipio` VALUES (377, 377, 'Quechultenango', '', 12);
INSERT INTO `cat_municipio` VALUES (378, 378, 'Tecoanapa', '', 12);
INSERT INTO `cat_municipio` VALUES (379, 379, 'Acapulco de Juárez', '', 12);
INSERT INTO `cat_municipio` VALUES (380, 380, 'Juan R. Escudero', '', 12);
INSERT INTO `cat_municipio` VALUES (381, 381, 'San Marcos', '', 12);
INSERT INTO `cat_municipio` VALUES (382, 382, 'Iguala de la Independencia', '', 12);
INSERT INTO `cat_municipio` VALUES (383, 383, 'Huitzuco de los Figueroa', '', 12);
INSERT INTO `cat_municipio` VALUES (384, 384, 'Tepecoacuilco de Trujano', '', 12);
INSERT INTO `cat_municipio` VALUES (385, 385, 'Eduardo Neri', '', 12);
INSERT INTO `cat_municipio` VALUES (386, 386, 'Taxco de Alarcó', '', 12);
INSERT INTO `cat_municipio` VALUES (387, 387, 'Buenavista de Cuéllar', '', 12);
INSERT INTO `cat_municipio` VALUES (388, 388, 'Tetipac', '', 12);
INSERT INTO `cat_municipio` VALUES (389, 389, 'Pilcaya', '', 12);
INSERT INTO `cat_municipio` VALUES (390, 390, 'Teloloapa', '', 12);
INSERT INTO `cat_municipio` VALUES (391, 391, 'Ixcateopan de Cuauhtémoc', '', 12);
INSERT INTO `cat_municipio` VALUES (392, 392, 'Pedro Ascencio Alquisiras', '', 12);
INSERT INTO `cat_municipio` VALUES (393, 393, 'General Canuto A. Neri', '', 12);
INSERT INTO `cat_municipio` VALUES (394, 394, 'Arcelia', '', 12);
INSERT INTO `cat_municipio` VALUES (395, 395, 'Apaxtla', '', 12);
INSERT INTO `cat_municipio` VALUES (396, 396, 'Cuetzala del Progreso', '', 12);
INSERT INTO `cat_municipio` VALUES (397, 397, 'Cocula', '', 12);
INSERT INTO `cat_municipio` VALUES (398, 398, 'Tlapehuala', '', 12);
INSERT INTO `cat_municipio` VALUES (399, 399, 'Cutzamala de Pinzó', '', 12);
INSERT INTO `cat_municipio` VALUES (400, 400, 'Pungarabato', '', 12);
INSERT INTO `cat_municipio` VALUES (401, 401, 'Tlalchapa', '', 12);
INSERT INTO `cat_municipio` VALUES (402, 402, 'Coyuca de Catalá', '', 12);
INSERT INTO `cat_municipio` VALUES (403, 403, 'Ajuchitlán del Progreso', '', 12);
INSERT INTO `cat_municipio` VALUES (404, 404, 'Zirándaro', '', 12);
INSERT INTO `cat_municipio` VALUES (405, 405, 'San Miguel Totolapa', '', 12);
INSERT INTO `cat_municipio` VALUES (406, 406, 'La Unión de Isidoro Montes de Oca', '', 12);
INSERT INTO `cat_municipio` VALUES (407, 407, 'Petatlá', '', 12);
INSERT INTO `cat_municipio` VALUES (408, 408, 'Coahuayutla de José María Izazaga', '', 12);
INSERT INTO `cat_municipio` VALUES (409, 409, 'Zihuatanejo de Azueta', '', 12);
INSERT INTO `cat_municipio` VALUES (410, 410, 'Técpan de Galeana', '', 12);
INSERT INTO `cat_municipio` VALUES (411, 411, 'Atoyac de Álvarez', '', 12);
INSERT INTO `cat_municipio` VALUES (412, 412, 'Benito Juárez', '', 12);
INSERT INTO `cat_municipio` VALUES (413, 413, 'Coyuca de Benítez', '', 12);
INSERT INTO `cat_municipio` VALUES (414, 414, 'Olinalá', '', 12);
INSERT INTO `cat_municipio` VALUES (415, 415, 'Atenango del Río', '', 12);
INSERT INTO `cat_municipio` VALUES (416, 416, 'Copalillo', '', 12);
INSERT INTO `cat_municipio` VALUES (417, 417, 'Cualác', '', 12);
INSERT INTO `cat_municipio` VALUES (418, 418, 'Chilapa de Álvarez', '', 12);
INSERT INTO `cat_municipio` VALUES (419, 419, 'José Joaquín de Herrera', '', 12);
INSERT INTO `cat_municipio` VALUES (420, 420, 'Ahuacuotzingo', '', 12);
INSERT INTO `cat_municipio` VALUES (421, 421, 'Zitlala', '', 12);
INSERT INTO `cat_municipio` VALUES (422, 422, 'Mártir de Cuilapa', '', 12);
INSERT INTO `cat_municipio` VALUES (423, 423, 'Huamuxtitlá', '', 12);
INSERT INTO `cat_municipio` VALUES (424, 424, 'Xochihuehuetlá', '', 12);
INSERT INTO `cat_municipio` VALUES (425, 425, 'Alpoyeca', '', 12);
INSERT INTO `cat_municipio` VALUES (426, 426, 'Tlapa de Comonfort', '', 12);
INSERT INTO `cat_municipio` VALUES (427, 427, 'Tlalixtaquilla de Maldonado', '', 12);
INSERT INTO `cat_municipio` VALUES (428, 428, 'Xalpatláhuac', '', 12);
INSERT INTO `cat_municipio` VALUES (429, 429, 'Zapotitlán Tablas', '', 12);
INSERT INTO `cat_municipio` VALUES (430, 430, 'Acatepec', '', 12);
INSERT INTO `cat_municipio` VALUES (431, 431, 'Atlixtac', '', 12);
INSERT INTO `cat_municipio` VALUES (432, 432, 'Copanatoyac', '', 12);
INSERT INTO `cat_municipio` VALUES (433, 433, 'Malinaltepec', '', 12);
INSERT INTO `cat_municipio` VALUES (434, 434, 'Iliatenco', '', 12);
INSERT INTO `cat_municipio` VALUES (435, 435, 'Tlacoapa', '', 12);
INSERT INTO `cat_municipio` VALUES (436, 436, 'Atlamajalcingo del Monte', '', 12);
INSERT INTO `cat_municipio` VALUES (437, 437, 'San Luis Acatlá', '', 12);
INSERT INTO `cat_municipio` VALUES (438, 438, 'Metlatónoc', '', 12);
INSERT INTO `cat_municipio` VALUES (439, 439, 'Cochoapa el Grande', '', 12);
INSERT INTO `cat_municipio` VALUES (440, 440, 'Alcozauca de Guerrero', '', 12);
INSERT INTO `cat_municipio` VALUES (441, 441, 'Ometepec', '', 12);
INSERT INTO `cat_municipio` VALUES (442, 442, 'Tlacoachistlahuaca', '', 12);
INSERT INTO `cat_municipio` VALUES (443, 443, 'Xochistlahuaca', '', 12);
INSERT INTO `cat_municipio` VALUES (444, 444, 'Florencio Villarreal', '', 12);
INSERT INTO `cat_municipio` VALUES (445, 445, 'Cuautepec', '', 12);
INSERT INTO `cat_municipio` VALUES (446, 446, 'Copala', '', 12);
INSERT INTO `cat_municipio` VALUES (447, 447, 'Azoyú', '', 12);
INSERT INTO `cat_municipio` VALUES (448, 448, 'Juchitá', '', 12);
INSERT INTO `cat_municipio` VALUES (449, 449, 'Marquelia', '', 12);
INSERT INTO `cat_municipio` VALUES (450, 450, 'Cuajinicuilapa', '', 12);
INSERT INTO `cat_municipio` VALUES (451, 451, 'Igualapa', '', 12);
INSERT INTO `cat_municipio` VALUES (452, 452, 'Pachuca de Soto', '', 13);
INSERT INTO `cat_municipio` VALUES (453, 453, 'Mineral del Chico', '', 13);
INSERT INTO `cat_municipio` VALUES (454, 454, 'Mineral del Monte', '', 13);
INSERT INTO `cat_municipio` VALUES (455, 455, 'Ajacuba', '', 13);
INSERT INTO `cat_municipio` VALUES (456, 456, 'San Agustín Tlaxiaca', '', 13);
INSERT INTO `cat_municipio` VALUES (457, 457, 'Mineral de la Reforma', '', 13);
INSERT INTO `cat_municipio` VALUES (458, 458, 'Zapotlán de Juárez', '', 13);
INSERT INTO `cat_municipio` VALUES (459, 459, 'Jacala de Ledezma', '', 13);
INSERT INTO `cat_municipio` VALUES (460, 460, 'Pisaflores', '', 13);
INSERT INTO `cat_municipio` VALUES (461, 461, 'Pacula', '', 13);
INSERT INTO `cat_municipio` VALUES (462, 462, 'La Misió', '', 13);
INSERT INTO `cat_municipio` VALUES (463, 463, 'Chapulhuacá', '', 13);
INSERT INTO `cat_municipio` VALUES (464, 464, 'Ixmiquilpa', '', 13);
INSERT INTO `cat_municipio` VALUES (465, 465, 'Zimapá', '', 13);
INSERT INTO `cat_municipio` VALUES (466, 466, 'Nicolás Flores', '', 13);
INSERT INTO `cat_municipio` VALUES (467, 467, 'Cardonal', '', 13);
INSERT INTO `cat_municipio` VALUES (468, 468, 'Tasquillo', '', 13);
INSERT INTO `cat_municipio` VALUES (469, 469, 'Alfajayuca', '', 13);
INSERT INTO `cat_municipio` VALUES (470, 470, 'Huichapa', '', 13);
INSERT INTO `cat_municipio` VALUES (471, 471, 'Tecozautla', '', 13);
INSERT INTO `cat_municipio` VALUES (472, 472, 'Nopala de Villagrá', '', 13);
INSERT INTO `cat_municipio` VALUES (473, 473, 'Actopa', '', 13);
INSERT INTO `cat_municipio` VALUES (474, 474, 'Santiago de Anaya', '', 13);
INSERT INTO `cat_municipio` VALUES (475, 475, 'San Salvador', '', 13);
INSERT INTO `cat_municipio` VALUES (476, 476, 'Francisco I. Madero', '', 13);
INSERT INTO `cat_municipio` VALUES (477, 477, 'El Arenal', '', 13);
INSERT INTO `cat_municipio` VALUES (478, 478, 'Mixquiahuala de Juárez', '', 13);
INSERT INTO `cat_municipio` VALUES (479, 479, 'Progreso de Obregó', '', 13);
INSERT INTO `cat_municipio` VALUES (480, 480, 'Chilcuautla', '', 13);
INSERT INTO `cat_municipio` VALUES (481, 481, 'Tezontepec de Aldama', '', 13);
INSERT INTO `cat_municipio` VALUES (482, 482, 'Tlahuelilpa', '', 13);
INSERT INTO `cat_municipio` VALUES (483, 483, 'Tula de Allende', '', 13);
INSERT INTO `cat_municipio` VALUES (484, 484, 'Tepeji del Río de Ocampo', '', 13);
INSERT INTO `cat_municipio` VALUES (485, 485, 'Chapantongo', '', 13);
INSERT INTO `cat_municipio` VALUES (486, 486, 'Tepetitlá', '', 13);
INSERT INTO `cat_municipio` VALUES (487, 487, 'Tetepango', '', 13);
INSERT INTO `cat_municipio` VALUES (488, 488, 'Tlaxcoapa', '', 13);
INSERT INTO `cat_municipio` VALUES (489, 489, 'Atitalaquia', '', 13);
INSERT INTO `cat_municipio` VALUES (490, 490, 'Atotonilco de Tula', '', 13);
INSERT INTO `cat_municipio` VALUES (491, 491, 'Huejutla de Reyes', '', 13);
INSERT INTO `cat_municipio` VALUES (492, 492, 'San Felipe Orizatlá', '', 13);
INSERT INTO `cat_municipio` VALUES (493, 493, 'Jaltocá', '', 13);
INSERT INTO `cat_municipio` VALUES (494, 494, 'Huautla', '', 13);
INSERT INTO `cat_municipio` VALUES (495, 495, 'Atlapexco', '', 13);
INSERT INTO `cat_municipio` VALUES (496, 496, 'Huazalingo', '', 13);
INSERT INTO `cat_municipio` VALUES (497, 497, 'Yahualica', '', 13);
INSERT INTO `cat_municipio` VALUES (498, 498, 'Xochiatipa', '', 13);
INSERT INTO `cat_municipio` VALUES (499, 499, 'Molango de Escamilla', '', 13);
INSERT INTO `cat_municipio` VALUES (500, 500, 'Tepehuacán de Guerrero', '', 13);
INSERT INTO `cat_municipio` VALUES (501, 501, 'Lolotla', '', 13);
INSERT INTO `cat_municipio` VALUES (502, 502, 'Tlanchinol', '', 13);
INSERT INTO `cat_municipio` VALUES (503, 503, 'Tlahuiltepa', '', 13);
INSERT INTO `cat_municipio` VALUES (504, 504, 'Juárez Hidalgo', '', 13);
INSERT INTO `cat_municipio` VALUES (505, 505, 'Zacualtipán de Ángeles', '', 13);
INSERT INTO `cat_municipio` VALUES (506, 506, 'Calnali', '', 13);
INSERT INTO `cat_municipio` VALUES (507, 507, 'Xochicoatlá', '', 13);
INSERT INTO `cat_municipio` VALUES (508, 508, 'Tianguistengo', '', 13);
INSERT INTO `cat_municipio` VALUES (509, 509, 'Atotonilco el Grande', '', 13);
INSERT INTO `cat_municipio` VALUES (510, 510, 'Eloxochitlá', '', 13);
INSERT INTO `cat_municipio` VALUES (511, 511, 'Metztitlá', '', 13);
INSERT INTO `cat_municipio` VALUES (512, 512, 'San Agustín Metzquititlá', '', 13);
INSERT INTO `cat_municipio` VALUES (513, 513, 'Metepec', '', 13);
INSERT INTO `cat_municipio` VALUES (514, 514, 'Huehuetla', '', 13);
INSERT INTO `cat_municipio` VALUES (515, 515, 'San Bartolo Tutotepec', '', 13);
INSERT INTO `cat_municipio` VALUES (516, 516, 'Agua Blanca de Iturbide', '', 13);
INSERT INTO `cat_municipio` VALUES (517, 517, 'Tenango de Doria', '', 13);
INSERT INTO `cat_municipio` VALUES (518, 518, 'Huasca de Ocampo', '', 13);
INSERT INTO `cat_municipio` VALUES (519, 519, 'Acatlá', '', 13);
INSERT INTO `cat_municipio` VALUES (520, 520, 'Omitlán de Juárez', '', 13);
INSERT INTO `cat_municipio` VALUES (521, 521, 'Epazoyuca', '', 13);
INSERT INTO `cat_municipio` VALUES (522, 522, 'Tulancingo de Bravo', '', 13);
INSERT INTO `cat_municipio` VALUES (523, 523, 'Acaxochitlá', '', 13);
INSERT INTO `cat_municipio` VALUES (524, 524, 'Cuautepec de Hinojosa', '', 13);
INSERT INTO `cat_municipio` VALUES (525, 525, 'Santiago Tulantepec de Lugo Guerrero', '', 13);
INSERT INTO `cat_municipio` VALUES (526, 526, 'Singuiluca', '', 13);
INSERT INTO `cat_municipio` VALUES (527, 527, 'Tizayuca', '', 13);
INSERT INTO `cat_municipio` VALUES (528, 528, 'Zempoala', '', 13);
INSERT INTO `cat_municipio` VALUES (529, 529, 'Tolcayuca', '', 13);
INSERT INTO `cat_municipio` VALUES (530, 530, 'Villa de Tezontepec', '', 13);
INSERT INTO `cat_municipio` VALUES (531, 531, 'Apa', '', 13);
INSERT INTO `cat_municipio` VALUES (532, 532, 'Tlanalapa', '', 13);
INSERT INTO `cat_municipio` VALUES (533, 533, 'Almoloya', '', 13);
INSERT INTO `cat_municipio` VALUES (534, 534, 'Emiliano Zapata', '', 13);
INSERT INTO `cat_municipio` VALUES (535, 535, 'Tepeapulco', '', 13);
INSERT INTO `cat_municipio` VALUES (536, 536, 'Guadalajara', '', 14);
INSERT INTO `cat_municipio` VALUES (537, 537, 'Zapopa', '', 14);
INSERT INTO `cat_municipio` VALUES (538, 538, 'San Cristóbal de la Barranca', '', 14);
INSERT INTO `cat_municipio` VALUES (539, 539, 'Ixtlahuacán del Río', '', 14);
INSERT INTO `cat_municipio` VALUES (540, 540, 'Tala', '', 14);
INSERT INTO `cat_municipio` VALUES (541, 541, 'El Arenal', '', 14);
INSERT INTO `cat_municipio` VALUES (542, 542, 'Amatitá', '', 14);
INSERT INTO `cat_municipio` VALUES (543, 543, 'Tonalá', '', 14);
INSERT INTO `cat_municipio` VALUES (544, 544, 'Zapotlanejo', '', 14);
INSERT INTO `cat_municipio` VALUES (545, 545, 'Acatic', '', 14);
INSERT INTO `cat_municipio` VALUES (546, 546, 'Cuquío', '', 14);
INSERT INTO `cat_municipio` VALUES (547, 547, 'San Pedro Tlaquepaque', '', 14);
INSERT INTO `cat_municipio` VALUES (548, 548, 'Tlajomulco de Zúñiga', '', 14);
INSERT INTO `cat_municipio` VALUES (549, 549, 'El Salto', '', 14);
INSERT INTO `cat_municipio` VALUES (550, 550, 'Acatlán de Juárez', '', 14);
INSERT INTO `cat_municipio` VALUES (551, 551, 'Villa Corona', '', 14);
INSERT INTO `cat_municipio` VALUES (552, 552, 'Zacoalco de Torres', '', 14);
INSERT INTO `cat_municipio` VALUES (553, 553, 'Atemajac de Brizuela', '', 14);
INSERT INTO `cat_municipio` VALUES (554, 554, 'Jocotepec', '', 14);
INSERT INTO `cat_municipio` VALUES (555, 555, 'Ixtlahuacán de los Membrillos', '', 14);
INSERT INTO `cat_municipio` VALUES (556, 556, 'Juanacatlá', '', 14);
INSERT INTO `cat_municipio` VALUES (557, 557, 'Chapala', '', 14);
INSERT INTO `cat_municipio` VALUES (558, 558, 'Poncitlá', '', 14);
INSERT INTO `cat_municipio` VALUES (559, 559, 'Zapotlán del Rey', '', 14);
INSERT INTO `cat_municipio` VALUES (560, 560, 'Huejuquilla el Alto', '', 14);
INSERT INTO `cat_municipio` VALUES (561, 561, 'Mezquitic', '', 14);
INSERT INTO `cat_municipio` VALUES (562, 562, 'Villa Guerrero', '', 14);
INSERT INTO `cat_municipio` VALUES (563, 563, 'Bolaños', '', 14);
INSERT INTO `cat_municipio` VALUES (564, 564, 'Totatiche', '', 14);
INSERT INTO `cat_municipio` VALUES (565, 565, 'Colotlá', '', 14);
INSERT INTO `cat_municipio` VALUES (566, 566, 'Santa María de los Ángeles', '', 14);
INSERT INTO `cat_municipio` VALUES (567, 567, 'Huejúcar', '', 14);
INSERT INTO `cat_municipio` VALUES (568, 568, 'Chimaltitá', '', 14);
INSERT INTO `cat_municipio` VALUES (569, 569, 'San Martín de Bolaños', '', 14);
INSERT INTO `cat_municipio` VALUES (570, 570, 'Tequila', '', 14);
INSERT INTO `cat_municipio` VALUES (571, 571, 'Hostotipaquillo', '', 14);
INSERT INTO `cat_municipio` VALUES (572, 572, 'Magdalena', '', 14);
INSERT INTO `cat_municipio` VALUES (573, 573, 'Etzatlá', '', 14);
INSERT INTO `cat_municipio` VALUES (574, 574, 'San Marcos', '', 14);
INSERT INTO `cat_municipio` VALUES (575, 575, 'San Juanito de Escobedo', '', 14);
INSERT INTO `cat_municipio` VALUES (576, 576, 'Ameca', '', 14);
INSERT INTO `cat_municipio` VALUES (577, 577, 'Ahualulco de Mercado', '', 14);
INSERT INTO `cat_municipio` VALUES (578, 578, 'Teuchitlá', '', 14);
INSERT INTO `cat_municipio` VALUES (579, 579, 'San Martín Hidalgo', '', 14);
INSERT INTO `cat_municipio` VALUES (580, 580, 'Guachinango', '', 14);
INSERT INTO `cat_municipio` VALUES (581, 581, 'Mixtlá', '', 14);
INSERT INTO `cat_municipio` VALUES (582, 582, 'Mascota', '', 14);
INSERT INTO `cat_municipio` VALUES (583, 583, 'San Sebastián del Oeste', '', 14);
INSERT INTO `cat_municipio` VALUES (584, 584, 'San Juan de los Lagos', '', 14);
INSERT INTO `cat_municipio` VALUES (585, 585, 'Jalostotitlá', '', 14);
INSERT INTO `cat_municipio` VALUES (586, 586, 'San Miguel el Alto', '', 14);
INSERT INTO `cat_municipio` VALUES (587, 587, 'San Juliá', '', 14);
INSERT INTO `cat_municipio` VALUES (588, 588, 'Arandas', '', 14);
INSERT INTO `cat_municipio` VALUES (589, 589, 'San Ignacio Cerro Gordo', '', 14);
INSERT INTO `cat_municipio` VALUES (590, 590, 'Teocaltiche', '', 14);
INSERT INTO `cat_municipio` VALUES (591, 591, 'Villa Hidalgo', '', 14);
INSERT INTO `cat_municipio` VALUES (592, 592, 'Encarnación de Díaz', '', 14);
INSERT INTO `cat_municipio` VALUES (593, 593, 'Yahualica de González Gallo', '', 14);
INSERT INTO `cat_municipio` VALUES (594, 594, 'Mexticacá', '', 14);
INSERT INTO `cat_municipio` VALUES (595, 595, 'Cañadas de Obregó', '', 14);
INSERT INTO `cat_municipio` VALUES (596, 596, 'Valle de Guadalupe', '', 14);
INSERT INTO `cat_municipio` VALUES (597, 597, 'Lagos de Moreno', '', 14);
INSERT INTO `cat_municipio` VALUES (598, 598, 'Ojuelos de Jalisco', '', 14);
INSERT INTO `cat_municipio` VALUES (599, 599, 'Unión de San Antonio', '', 14);
INSERT INTO `cat_municipio` VALUES (600, 600, 'San Diego de Alejandría', '', 14);
INSERT INTO `cat_municipio` VALUES (601, 601, 'Tepatitlán de Morelos', '', 14);
INSERT INTO `cat_municipio` VALUES (602, 602, 'Tototlá', '', 14);
INSERT INTO `cat_municipio` VALUES (603, 603, 'Atotonilco el Alto', '', 14);
INSERT INTO `cat_municipio` VALUES (604, 604, 'Ocotlá', '', 14);
INSERT INTO `cat_municipio` VALUES (605, 605, 'Jamay', '', 14);
INSERT INTO `cat_municipio` VALUES (606, 606, 'La Barca', '', 14);
INSERT INTO `cat_municipio` VALUES (607, 607, 'Ayotlá', '', 14);
INSERT INTO `cat_municipio` VALUES (608, 608, 'Jesús María', '', 14);
INSERT INTO `cat_municipio` VALUES (609, 609, 'Degollado', '', 14);
INSERT INTO `cat_municipio` VALUES (610, 610, 'Unión de Tula', '', 14);
INSERT INTO `cat_municipio` VALUES (611, 611, 'Ayutla', '', 14);
INSERT INTO `cat_municipio` VALUES (612, 612, 'Atenguillo', '', 14);
INSERT INTO `cat_municipio` VALUES (613, 613, 'Cuautla', '', 14);
INSERT INTO `cat_municipio` VALUES (614, 614, 'Atengo', '', 14);
INSERT INTO `cat_municipio` VALUES (615, 615, 'Talpa de Allende', '', 14);
INSERT INTO `cat_municipio` VALUES (616, 616, 'Puerto Vallarta', '', 14);
INSERT INTO `cat_municipio` VALUES (617, 617, 'Cabo Corrientes', '', 14);
INSERT INTO `cat_municipio` VALUES (618, 618, 'Tomatlá', '', 14);
INSERT INTO `cat_municipio` VALUES (619, 619, 'Cocula', '', 14);
INSERT INTO `cat_municipio` VALUES (620, 620, 'Tecolotlá', '', 14);
INSERT INTO `cat_municipio` VALUES (621, 621, 'Tenamaxtlá', '', 14);
INSERT INTO `cat_municipio` VALUES (622, 622, 'Juchitlá', '', 14);
INSERT INTO `cat_municipio` VALUES (623, 623, 'Chiquilistlá', '', 14);
INSERT INTO `cat_municipio` VALUES (624, 624, 'Ejutla', '', 14);
INSERT INTO `cat_municipio` VALUES (625, 625, 'El Limó', '', 14);
INSERT INTO `cat_municipio` VALUES (626, 626, 'El Grullo', '', 14);
INSERT INTO `cat_municipio` VALUES (627, 627, 'Tonaya', '', 14);
INSERT INTO `cat_municipio` VALUES (628, 628, 'Tuxcacuesco', '', 14);
INSERT INTO `cat_municipio` VALUES (629, 629, 'Villa Purificació', '', 14);
INSERT INTO `cat_municipio` VALUES (630, 630, 'La Huerta', '', 14);
INSERT INTO `cat_municipio` VALUES (631, 631, 'Autlán de Navarro', '', 14);
INSERT INTO `cat_municipio` VALUES (632, 632, 'Casimiro Castillo', '', 14);
INSERT INTO `cat_municipio` VALUES (633, 633, 'Cuautitlán de García Barragá', '', 14);
INSERT INTO `cat_municipio` VALUES (634, 634, 'Cihuatlá', '', 14);
INSERT INTO `cat_municipio` VALUES (635, 635, 'Zapotlán el Grande', '', 14);
INSERT INTO `cat_municipio` VALUES (636, 636, 'Gómez Farías', '', 14);
INSERT INTO `cat_municipio` VALUES (637, 637, 'Concepción de Buenos Aires', '', 14);
INSERT INTO `cat_municipio` VALUES (638, 638, 'Atoyac', '', 14);
INSERT INTO `cat_municipio` VALUES (639, 639, 'Techaluta de Montenegro', '', 14);
INSERT INTO `cat_municipio` VALUES (640, 640, 'Teocuitatlán de Corona', '', 14);
INSERT INTO `cat_municipio` VALUES (641, 641, 'Sayula', '', 14);
INSERT INTO `cat_municipio` VALUES (642, 642, 'Tapalpa', '', 14);
INSERT INTO `cat_municipio` VALUES (643, 643, 'Amacueca', '', 14);
INSERT INTO `cat_municipio` VALUES (644, 644, 'Tizapán el Alto', '', 14);
INSERT INTO `cat_municipio` VALUES (645, 645, 'Tuxcueca', '', 14);
INSERT INTO `cat_municipio` VALUES (646, 646, 'La Manzanilla de la Paz', '', 14);
INSERT INTO `cat_municipio` VALUES (647, 647, 'Mazamitla', '', 14);
INSERT INTO `cat_municipio` VALUES (648, 648, 'Valle de Juárez', '', 14);
INSERT INTO `cat_municipio` VALUES (649, 649, 'Quitupa', '', 14);
INSERT INTO `cat_municipio` VALUES (650, 650, 'Zapotiltic', '', 14);
INSERT INTO `cat_municipio` VALUES (651, 651, 'Tamazula de Gordiano', '', 14);
INSERT INTO `cat_municipio` VALUES (652, 652, 'San Gabriel', '', 14);
INSERT INTO `cat_municipio` VALUES (653, 653, 'Tolimá', '', 14);
INSERT INTO `cat_municipio` VALUES (654, 654, 'Zapotitlán de Vadillo', '', 14);
INSERT INTO `cat_municipio` VALUES (655, 655, 'Tuxpa', '', 14);
INSERT INTO `cat_municipio` VALUES (656, 656, 'Tonila', '', 14);
INSERT INTO `cat_municipio` VALUES (657, 657, 'Pihuamo', '', 14);
INSERT INTO `cat_municipio` VALUES (658, 658, 'Tecalitlá', '', 14);
INSERT INTO `cat_municipio` VALUES (659, 659, 'Jilotlán de los Dolores', '', 14);
INSERT INTO `cat_municipio` VALUES (660, 660, 'Santa María del Oro', '', 14);
INSERT INTO `cat_municipio` VALUES (661, 661, 'Toluca', '', 15);
INSERT INTO `cat_municipio` VALUES (662, 662, 'Acambay de Ruíz Castañeda', '', 15);
INSERT INTO `cat_municipio` VALUES (663, 663, 'Aculco', '', 15);
INSERT INTO `cat_municipio` VALUES (664, 664, 'Temascalcingo', '', 15);
INSERT INTO `cat_municipio` VALUES (665, 665, 'Atlacomulco', '', 15);
INSERT INTO `cat_municipio` VALUES (666, 666, 'Timilpa', '', 15);
INSERT INTO `cat_municipio` VALUES (667, 667, 'Morelos', '', 15);
INSERT INTO `cat_municipio` VALUES (668, 668, 'El Oro', '', 15);
INSERT INTO `cat_municipio` VALUES (669, 669, 'San Felipe del Progreso', '', 15);
INSERT INTO `cat_municipio` VALUES (670, 670, 'San José del Rincó', '', 15);
INSERT INTO `cat_municipio` VALUES (671, 671, 'Jocotitlá', '', 15);
INSERT INTO `cat_municipio` VALUES (672, 672, 'Ixtlahuaca', '', 15);
INSERT INTO `cat_municipio` VALUES (673, 673, 'Jiquipilco', '', 15);
INSERT INTO `cat_municipio` VALUES (674, 674, 'Temoaya', '', 15);
INSERT INTO `cat_municipio` VALUES (675, 675, 'Almoloya de Juárez', '', 15);
INSERT INTO `cat_municipio` VALUES (676, 676, 'Villa Victoria', '', 15);
INSERT INTO `cat_municipio` VALUES (677, 677, 'Villa de Allende', '', 15);
INSERT INTO `cat_municipio` VALUES (678, 678, 'Donato Guerra', '', 15);
INSERT INTO `cat_municipio` VALUES (679, 679, 'Ixtapan del Oro', '', 15);
INSERT INTO `cat_municipio` VALUES (680, 680, 'Santo Tomás', '', 15);
INSERT INTO `cat_municipio` VALUES (681, 681, 'Otzoloapa', '', 15);
INSERT INTO `cat_municipio` VALUES (682, 682, 'Zacazonapa', '', 15);
INSERT INTO `cat_municipio` VALUES (683, 683, 'Valle de Bravo', '', 15);
INSERT INTO `cat_municipio` VALUES (684, 684, 'Amanalco', '', 15);
INSERT INTO `cat_municipio` VALUES (685, 685, 'Temascaltepec', '', 15);
INSERT INTO `cat_municipio` VALUES (686, 686, 'Zinacantepec', '', 15);
INSERT INTO `cat_municipio` VALUES (687, 687, 'Tejupilco', '', 15);
INSERT INTO `cat_municipio` VALUES (688, 688, 'Luvianos', '', 15);
INSERT INTO `cat_municipio` VALUES (689, 689, 'San Simón de Guerrero', '', 15);
INSERT INTO `cat_municipio` VALUES (690, 690, 'Amatepec', '', 15);
INSERT INTO `cat_municipio` VALUES (691, 691, 'Tlatlaya', '', 15);
INSERT INTO `cat_municipio` VALUES (692, 692, 'Sultepec', '', 15);
INSERT INTO `cat_municipio` VALUES (693, 693, 'Texcaltitlá', '', 15);
INSERT INTO `cat_municipio` VALUES (694, 694, 'Coatepec Harinas', '', 15);
INSERT INTO `cat_municipio` VALUES (695, 695, 'Villa Guerrero', '', 15);
INSERT INTO `cat_municipio` VALUES (696, 696, 'Zacualpa', '', 15);
INSERT INTO `cat_municipio` VALUES (697, 697, 'Almoloya de Alquisiras', '', 15);
INSERT INTO `cat_municipio` VALUES (698, 698, 'Ixtapan de la Sal', '', 15);
INSERT INTO `cat_municipio` VALUES (699, 699, 'Tonatico', '', 15);
INSERT INTO `cat_municipio` VALUES (700, 700, 'Zumpahuacá', '', 15);
INSERT INTO `cat_municipio` VALUES (701, 701, 'Lerma', '', 15);
INSERT INTO `cat_municipio` VALUES (702, 702, 'Xonacatlá', '', 15);
INSERT INTO `cat_municipio` VALUES (703, 703, 'Otzolotepec', '', 15);
INSERT INTO `cat_municipio` VALUES (704, 704, 'San Mateo Atenco', '', 15);
INSERT INTO `cat_municipio` VALUES (705, 705, 'Metepec', '', 15);
INSERT INTO `cat_municipio` VALUES (706, 706, 'Mexicaltzingo', '', 15);
INSERT INTO `cat_municipio` VALUES (707, 707, 'Calimaya', '', 15);
INSERT INTO `cat_municipio` VALUES (708, 708, 'Chapultepec', '', 15);
INSERT INTO `cat_municipio` VALUES (709, 709, 'San Antonio la Isla', '', 15);
INSERT INTO `cat_municipio` VALUES (710, 710, 'Tenango del Valle', '', 15);
INSERT INTO `cat_municipio` VALUES (711, 711, 'Rayó', '', 15);
INSERT INTO `cat_municipio` VALUES (712, 712, 'Joquicingo', '', 15);
INSERT INTO `cat_municipio` VALUES (713, 713, 'Tenancingo', '', 15);
INSERT INTO `cat_municipio` VALUES (714, 714, 'Malinalco', '', 15);
INSERT INTO `cat_municipio` VALUES (715, 715, 'Ocuila', '', 15);
INSERT INTO `cat_municipio` VALUES (716, 716, 'Atizapá', '', 15);
INSERT INTO `cat_municipio` VALUES (717, 717, 'Almoloya del Río', '', 15);
INSERT INTO `cat_municipio` VALUES (718, 718, 'Texcalyacac', '', 15);
INSERT INTO `cat_municipio` VALUES (719, 719, 'Tianguistenco', '', 15);
INSERT INTO `cat_municipio` VALUES (720, 720, 'Xalatlaco', '', 15);
INSERT INTO `cat_municipio` VALUES (721, 721, 'Capulhuac', '', 15);
INSERT INTO `cat_municipio` VALUES (722, 722, 'Ocoyoacac', '', 15);
INSERT INTO `cat_municipio` VALUES (723, 723, 'Huixquiluca', '', 15);
INSERT INTO `cat_municipio` VALUES (724, 724, 'Atizapán de Zaragoza', '', 15);
INSERT INTO `cat_municipio` VALUES (725, 725, 'Naucalpan de Juárez', '', 15);
INSERT INTO `cat_municipio` VALUES (726, 726, 'Tlalnepantla de Baz', '', 15);
INSERT INTO `cat_municipio` VALUES (727, 727, 'Polotitlá', '', 15);
INSERT INTO `cat_municipio` VALUES (728, 728, 'Jilotepec', '', 15);
INSERT INTO `cat_municipio` VALUES (729, 729, 'Soyaniquilpan de Juárez', '', 15);
INSERT INTO `cat_municipio` VALUES (730, 730, 'Villa del Carbó', '', 15);
INSERT INTO `cat_municipio` VALUES (731, 731, 'Chapa de Mota', '', 15);
INSERT INTO `cat_municipio` VALUES (732, 732, 'Nicolás Romero', '', 15);
INSERT INTO `cat_municipio` VALUES (733, 733, 'Isidro Fabela', '', 15);
INSERT INTO `cat_municipio` VALUES (734, 734, 'Nicolás Romero', '', 15);
INSERT INTO `cat_municipio` VALUES (735, 735, 'Jilotzingo', '', 15);
INSERT INTO `cat_municipio` VALUES (736, 736, 'Tepotzotlá', '', 15);
INSERT INTO `cat_municipio` VALUES (737, 737, 'Coyotepec', '', 15);
INSERT INTO `cat_municipio` VALUES (738, 738, 'Huehuetoca', '', 15);
INSERT INTO `cat_municipio` VALUES (739, 739, 'Cuautitlán Izcalli', '', 15);
INSERT INTO `cat_municipio` VALUES (740, 740, 'Teoloyuca', '', 15);
INSERT INTO `cat_municipio` VALUES (741, 741, 'Cuautitlá', '', 15);
INSERT INTO `cat_municipio` VALUES (742, 742, 'Melchor Ocampo', '', 15);
INSERT INTO `cat_municipio` VALUES (743, 743, 'Tultitlá', '', 15);
INSERT INTO `cat_municipio` VALUES (744, 744, 'Tultepec', '', 15);
INSERT INTO `cat_municipio` VALUES (745, 745, 'Ecatepec de Morelos', '', 15);
INSERT INTO `cat_municipio` VALUES (746, 746, 'Zumpango', '', 15);
INSERT INTO `cat_municipio` VALUES (747, 747, 'Tequixquiac', '', 15);
INSERT INTO `cat_municipio` VALUES (748, 748, 'Apaxco', '', 15);
INSERT INTO `cat_municipio` VALUES (749, 749, 'Hueypoxtla', '', 15);
INSERT INTO `cat_municipio` VALUES (750, 750, 'Coacalco de Berriozábal', '', 15);
INSERT INTO `cat_municipio` VALUES (751, 751, 'Tecámac', '', 15);
INSERT INTO `cat_municipio` VALUES (752, 752, 'Jaltenco', '', 15);
INSERT INTO `cat_municipio` VALUES (753, 753, 'Tonanitla', '', 15);
INSERT INTO `cat_municipio` VALUES (754, 754, 'Nextlalpa', '', 15);
INSERT INTO `cat_municipio` VALUES (755, 755, 'Teotihuacá', '', 15);
INSERT INTO `cat_municipio` VALUES (756, 756, 'San Martín de las Pirámides', '', 15);
INSERT INTO `cat_municipio` VALUES (757, 757, 'Acolma', '', 15);
INSERT INTO `cat_municipio` VALUES (758, 758, 'Otumba', '', 15);
INSERT INTO `cat_municipio` VALUES (759, 759, 'Axapusco', '', 15);
INSERT INTO `cat_municipio` VALUES (760, 760, 'Nopaltepec', '', 15);
INSERT INTO `cat_municipio` VALUES (761, 761, 'Temascalapa', '', 15);
INSERT INTO `cat_municipio` VALUES (762, 762, 'Tezoyuca', '', 15);
INSERT INTO `cat_municipio` VALUES (763, 763, 'Chiautla', '', 15);
INSERT INTO `cat_municipio` VALUES (764, 764, 'Papalotla', '', 15);
INSERT INTO `cat_municipio` VALUES (765, 765, 'Tepetlaoxtoc', '', 15);
INSERT INTO `cat_municipio` VALUES (766, 766, 'Texcoco', '', 15);
INSERT INTO `cat_municipio` VALUES (767, 767, 'Chiconcuac', '', 15);
INSERT INTO `cat_municipio` VALUES (768, 768, 'Atenco', '', 15);
INSERT INTO `cat_municipio` VALUES (769, 769, 'Chimalhuacá', '', 15);
INSERT INTO `cat_municipio` VALUES (770, 770, 'Chicoloapa', '', 15);
INSERT INTO `cat_municipio` VALUES (771, 771, 'La Paz', '', 15);
INSERT INTO `cat_municipio` VALUES (772, 772, 'Ixtapaluca', '', 15);
INSERT INTO `cat_municipio` VALUES (773, 773, 'Valle de Chalco Solidaridad', '', 15);
INSERT INTO `cat_municipio` VALUES (774, 774, 'Chalco', '', 15);
INSERT INTO `cat_municipio` VALUES (775, 775, 'Temamatla', '', 15);
INSERT INTO `cat_municipio` VALUES (776, 776, 'Cocotitlá', '', 15);
INSERT INTO `cat_municipio` VALUES (777, 777, 'Tlalmanalco', '', 15);
INSERT INTO `cat_municipio` VALUES (778, 778, 'Ayapango', '', 15);
INSERT INTO `cat_municipio` VALUES (779, 779, 'Tenango del Aire', '', 15);
INSERT INTO `cat_municipio` VALUES (780, 780, 'Ozumba', '', 15);
INSERT INTO `cat_municipio` VALUES (781, 781, 'Juchitepec', '', 15);
INSERT INTO `cat_municipio` VALUES (782, 782, 'Tepetlixpa', '', 15);
INSERT INTO `cat_municipio` VALUES (783, 783, 'Amecameca', '', 15);
INSERT INTO `cat_municipio` VALUES (784, 784, 'Atlautla', '', 15);
INSERT INTO `cat_municipio` VALUES (785, 785, 'Ecatzingo', '', 15);
INSERT INTO `cat_municipio` VALUES (786, 786, 'Nezahualcóyotl', '', 15);
INSERT INTO `cat_municipio` VALUES (787, 787, 'Morelia', '', 16);
INSERT INTO `cat_municipio` VALUES (788, 788, 'Huaniqueo', '', 16);
INSERT INTO `cat_municipio` VALUES (789, 789, 'Coeneo', '', 16);
INSERT INTO `cat_municipio` VALUES (790, 790, 'Quiroga', '', 16);
INSERT INTO `cat_municipio` VALUES (791, 791, 'Tzintzuntza', '', 16);
INSERT INTO `cat_municipio` VALUES (792, 792, 'Lagunillas', '', 16);
INSERT INTO `cat_municipio` VALUES (793, 793, 'Acuitzio', '', 16);
INSERT INTO `cat_municipio` VALUES (794, 794, 'Madero', '', 16);
INSERT INTO `cat_municipio` VALUES (795, 795, 'Puruándiro', '', 16);
INSERT INTO `cat_municipio` VALUES (796, 796, 'José Sixto Verduzco', '', 16);
INSERT INTO `cat_municipio` VALUES (797, 797, 'Angamacutiro', '', 16);
INSERT INTO `cat_municipio` VALUES (798, 798, 'Panindícuaro', '', 16);
INSERT INTO `cat_municipio` VALUES (799, 799, 'Zacapu', '', 16);
INSERT INTO `cat_municipio` VALUES (800, 800, 'Tlazazalca', '', 16);
INSERT INTO `cat_municipio` VALUES (801, 801, 'Purépero', '', 16);
INSERT INTO `cat_municipio` VALUES (802, 802, 'Jiménez', '', 16);
INSERT INTO `cat_municipio` VALUES (803, 803, 'Morelos', '', 16);
INSERT INTO `cat_municipio` VALUES (804, 804, 'Huandacareo', '', 16);
INSERT INTO `cat_municipio` VALUES (805, 805, 'Cuitzeo', '', 16);
INSERT INTO `cat_municipio` VALUES (806, 806, 'Chucándiro', '', 16);
INSERT INTO `cat_municipio` VALUES (807, 807, 'Copándaro', '', 16);
INSERT INTO `cat_municipio` VALUES (808, 808, 'Tarímbaro', '', 16);
INSERT INTO `cat_municipio` VALUES (809, 809, 'Santa Ana Maya', '', 16);
INSERT INTO `cat_municipio` VALUES (810, 810, 'Álvaro Obregó', '', 16);
INSERT INTO `cat_municipio` VALUES (811, 811, 'Zinapécuaro', '', 16);
INSERT INTO `cat_municipio` VALUES (812, 812, 'Indaparapeo', '', 16);
INSERT INTO `cat_municipio` VALUES (813, 813, 'Queréndaro', '', 16);
INSERT INTO `cat_municipio` VALUES (814, 814, 'Sahuayo', '', 16);
INSERT INTO `cat_municipio` VALUES (815, 815, 'Briseñas', '', 16);
INSERT INTO `cat_municipio` VALUES (816, 816, 'Cojumatlán de Régules', '', 16);
INSERT INTO `cat_municipio` VALUES (817, 817, 'Venustiano Carranza', '', 16);
INSERT INTO `cat_municipio` VALUES (818, 818, 'Pajacuará', '', 16);
INSERT INTO `cat_municipio` VALUES (819, 819, 'Vista Hermosa', '', 16);
INSERT INTO `cat_municipio` VALUES (820, 820, 'Tanhuato', '', 16);
INSERT INTO `cat_municipio` VALUES (821, 821, 'Yurécuaro', '', 16);
INSERT INTO `cat_municipio` VALUES (822, 822, 'Ixtlá', '', 16);
INSERT INTO `cat_municipio` VALUES (823, 823, 'La Piedad', '', 16);
INSERT INTO `cat_municipio` VALUES (824, 824, 'Numará', '', 16);
INSERT INTO `cat_municipio` VALUES (825, 825, 'Churintzio', '', 16);
INSERT INTO `cat_municipio` VALUES (826, 826, 'Zináparo', '', 16);
INSERT INTO `cat_municipio` VALUES (827, 827, 'Penjamillo', '', 16);
INSERT INTO `cat_municipio` VALUES (828, 828, 'Marcos Castellanos', '', 16);
INSERT INTO `cat_municipio` VALUES (829, 829, 'Jiquilpa', '', 16);
INSERT INTO `cat_municipio` VALUES (830, 830, 'Villamar', '', 16);
INSERT INTO `cat_municipio` VALUES (831, 831, 'Chavinda', '', 16);
INSERT INTO `cat_municipio` VALUES (832, 832, 'Zamora', '', 16);
INSERT INTO `cat_municipio` VALUES (833, 833, 'Ecuandureo', '', 16);
INSERT INTO `cat_municipio` VALUES (834, 834, 'Tangancícuaro', '', 16);
INSERT INTO `cat_municipio` VALUES (835, 835, 'Chilchota', '', 16);
INSERT INTO `cat_municipio` VALUES (836, 836, 'Jacona', '', 16);
INSERT INTO `cat_municipio` VALUES (837, 837, 'Tangamandapio', '', 16);
INSERT INTO `cat_municipio` VALUES (838, 838, 'Cotija', '', 16);
INSERT INTO `cat_municipio` VALUES (839, 839, 'Tocumbo', '', 16);
INSERT INTO `cat_municipio` VALUES (840, 840, 'Tingüindí', '', 16);
INSERT INTO `cat_municipio` VALUES (841, 841, 'Uruapa', '', 16);
INSERT INTO `cat_municipio` VALUES (842, 842, 'Charapa', '', 16);
INSERT INTO `cat_municipio` VALUES (843, 843, 'Paracho', '', 16);
INSERT INTO `cat_municipio` VALUES (844, 844, 'Cherá', '', 16);
INSERT INTO `cat_municipio` VALUES (845, 845, 'Nahuatze', '', 16);
INSERT INTO `cat_municipio` VALUES (846, 846, 'Tingambato', '', 16);
INSERT INTO `cat_municipio` VALUES (847, 847, 'Los Reyes', '', 16);
INSERT INTO `cat_municipio` VALUES (848, 848, 'Peribá', '', 16);
INSERT INTO `cat_municipio` VALUES (849, 849, 'Tancítaro', '', 16);
INSERT INTO `cat_municipio` VALUES (850, 850, 'Nuevo Parangaricutiro', '', 16);
INSERT INTO `cat_municipio` VALUES (851, 851, 'Buenavista', '', 16);
INSERT INTO `cat_municipio` VALUES (852, 852, 'Tepalcatepec', '', 16);
INSERT INTO `cat_municipio` VALUES (853, 853, 'Aguililla', '', 16);
INSERT INTO `cat_municipio` VALUES (854, 854, 'Apatzingá', '', 16);
INSERT INTO `cat_municipio` VALUES (855, 855, 'Parácuaro', '', 16);
INSERT INTO `cat_municipio` VALUES (856, 856, 'Coahuayana', '', 16);
INSERT INTO `cat_municipio` VALUES (857, 857, 'Chinicuila', '', 16);
INSERT INTO `cat_municipio` VALUES (858, 858, 'Coalcomán de Vázquez Pallares', '', 16);
INSERT INTO `cat_municipio` VALUES (859, 859, 'Aquila', '', 16);
INSERT INTO `cat_municipio` VALUES (860, 860, 'Tumbiscatío', '', 16);
INSERT INTO `cat_municipio` VALUES (861, 861, 'Arteaga', '', 16);
INSERT INTO `cat_municipio` VALUES (862, 862, 'Lázaro Cárdenas', '', 16);
INSERT INTO `cat_municipio` VALUES (863, 863, 'Epitacio Huerta', '', 16);
INSERT INTO `cat_municipio` VALUES (864, 864, 'Contepec', '', 16);
INSERT INTO `cat_municipio` VALUES (865, 865, 'Tlalpujahua', '', 16);
INSERT INTO `cat_municipio` VALUES (866, 866, 'Hidalgo', '', 16);
INSERT INTO `cat_municipio` VALUES (867, 867, 'Maravatío', '', 16);
INSERT INTO `cat_municipio` VALUES (868, 868, 'Irimbo', '', 16);
INSERT INTO `cat_municipio` VALUES (869, 869, 'Senguio', '', 16);
INSERT INTO `cat_municipio` VALUES (870, 870, 'Charo', '', 16);
INSERT INTO `cat_municipio` VALUES (871, 871, 'Tzitzio', '', 16);
INSERT INTO `cat_municipio` VALUES (872, 872, 'Tiquicheo de Nicolás Romero', '', 16);
INSERT INTO `cat_municipio` VALUES (873, 873, 'Aporo', '', 16);
INSERT INTO `cat_municipio` VALUES (874, 874, 'Angangueo', '', 16);
INSERT INTO `cat_municipio` VALUES (875, 875, 'Tuxpa', '', 16);
INSERT INTO `cat_municipio` VALUES (876, 876, 'Ocampo', '', 16);
INSERT INTO `cat_municipio` VALUES (877, 877, 'Jungapeo', '', 16);
INSERT INTO `cat_municipio` VALUES (878, 878, 'Zitácuaro', '', 16);
INSERT INTO `cat_municipio` VALUES (879, 879, 'Tuzantla', '', 16);
INSERT INTO `cat_municipio` VALUES (880, 880, 'Juárez', '', 16);
INSERT INTO `cat_municipio` VALUES (881, 881, 'Susupuato', '', 16);
INSERT INTO `cat_municipio` VALUES (882, 882, 'Pátzcuaro', '', 16);
INSERT INTO `cat_municipio` VALUES (883, 883, 'Erongarícuaro', '', 16);
INSERT INTO `cat_municipio` VALUES (884, 884, 'Huiramba', '', 16);
INSERT INTO `cat_municipio` VALUES (885, 885, 'Tacámbaro', '', 16);
INSERT INTO `cat_municipio` VALUES (886, 886, 'Turicato', '', 16);
INSERT INTO `cat_municipio` VALUES (887, 887, 'Ziracuaretiro', '', 16);
INSERT INTO `cat_municipio` VALUES (888, 888, 'Tareta', '', 16);
INSERT INTO `cat_municipio` VALUES (889, 889, 'Gabriel Zamora', '', 16);
INSERT INTO `cat_municipio` VALUES (890, 890, 'Nuevo Urecho', '', 16);
INSERT INTO `cat_municipio` VALUES (891, 891, 'Múgica', '', 16);
INSERT INTO `cat_municipio` VALUES (892, 892, 'Salvador Escalante', '', 16);
INSERT INTO `cat_municipio` VALUES (893, 893, 'Ario', '', 16);
INSERT INTO `cat_municipio` VALUES (894, 894, 'La Huacana', '', 16);
INSERT INTO `cat_municipio` VALUES (895, 895, 'Churumuco', '', 16);
INSERT INTO `cat_municipio` VALUES (896, 896, 'Nocupétaro', '', 16);
INSERT INTO `cat_municipio` VALUES (897, 897, 'Carácuaro', '', 16);
INSERT INTO `cat_municipio` VALUES (898, 898, 'Huetamo', '', 16);
INSERT INTO `cat_municipio` VALUES (899, 899, 'San Lucas', '', 16);
INSERT INTO `cat_municipio` VALUES (900, 900, 'Cuernavaca', '', 17);
INSERT INTO `cat_municipio` VALUES (901, 901, 'Huitzilac', '', 17);
INSERT INTO `cat_municipio` VALUES (902, 902, 'Tepoztlá', '', 17);
INSERT INTO `cat_municipio` VALUES (903, 903, 'Tlalnepantla', '', 17);
INSERT INTO `cat_municipio` VALUES (904, 904, 'Tlayacapa', '', 17);
INSERT INTO `cat_municipio` VALUES (905, 905, 'Jiutepec', '', 17);
INSERT INTO `cat_municipio` VALUES (906, 906, 'Temixco', '', 17);
INSERT INTO `cat_municipio` VALUES (907, 907, 'Miacatlá', '', 17);
INSERT INTO `cat_municipio` VALUES (908, 908, 'Coatlán del Río', '', 17);
INSERT INTO `cat_municipio` VALUES (909, 909, 'Tetecala', '', 17);
INSERT INTO `cat_municipio` VALUES (910, 910, 'Mazatepec', '', 17);
INSERT INTO `cat_municipio` VALUES (911, 911, 'Amacuzac', '', 17);
INSERT INTO `cat_municipio` VALUES (912, 912, 'Puente de Ixtla', '', 17);
INSERT INTO `cat_municipio` VALUES (913, 913, 'Ayala', '', 17);
INSERT INTO `cat_municipio` VALUES (914, 914, 'Yautepec', '', 17);
INSERT INTO `cat_municipio` VALUES (915, 915, 'Cuautla', '', 17);
INSERT INTO `cat_municipio` VALUES (916, 916, 'Emiliano Zapata', '', 17);
INSERT INTO `cat_municipio` VALUES (917, 917, 'Tlaltizapán de Zapata', '', 17);
INSERT INTO `cat_municipio` VALUES (918, 918, 'Zacatepec', '', 17);
INSERT INTO `cat_municipio` VALUES (919, 919, 'Xochitepec', '', 17);
INSERT INTO `cat_municipio` VALUES (920, 920, 'Tetela del Volcá', '', 17);
INSERT INTO `cat_municipio` VALUES (921, 921, 'Yecapixtla', '', 17);
INSERT INTO `cat_municipio` VALUES (922, 922, 'Totolapa', '', 17);
INSERT INTO `cat_municipio` VALUES (923, 923, 'Atlatlahuca', '', 17);
INSERT INTO `cat_municipio` VALUES (924, 924, 'Ocuituco', '', 17);
INSERT INTO `cat_municipio` VALUES (925, 925, 'Temoac', '', 17);
INSERT INTO `cat_municipio` VALUES (926, 926, 'Zacualpan de Amilpas', '', 17);
INSERT INTO `cat_municipio` VALUES (927, 927, 'Jojutla', '', 17);
INSERT INTO `cat_municipio` VALUES (928, 928, 'Tepalcingo', '', 17);
INSERT INTO `cat_municipio` VALUES (929, 929, 'Jonacatepec de Leandro Valle', '', 17);
INSERT INTO `cat_municipio` VALUES (930, 930, 'Axochiapa', '', 17);
INSERT INTO `cat_municipio` VALUES (931, 931, 'Jantetelco', '', 17);
INSERT INTO `cat_municipio` VALUES (932, 932, 'Tlaquiltenango', '', 17);
INSERT INTO `cat_municipio` VALUES (933, 933, 'Tepic', '', 18);
INSERT INTO `cat_municipio` VALUES (934, 934, 'Tuxpa', '', 18);
INSERT INTO `cat_municipio` VALUES (935, 935, 'Santiago Ixcuintla', '', 18);
INSERT INTO `cat_municipio` VALUES (936, 936, 'Acaponeta', '', 18);
INSERT INTO `cat_municipio` VALUES (937, 937, 'Tecuala', '', 18);
INSERT INTO `cat_municipio` VALUES (938, 938, 'Huajicori', '', 18);
INSERT INTO `cat_municipio` VALUES (939, 939, 'Del Nayar', '', 18);
INSERT INTO `cat_municipio` VALUES (940, 940, 'La Yesca', '', 18);
INSERT INTO `cat_municipio` VALUES (941, 941, 'Ruíz', '', 18);
INSERT INTO `cat_municipio` VALUES (942, 942, 'Rosamorada', '', 18);
INSERT INTO `cat_municipio` VALUES (943, 943, 'Compostela', '', 18);
INSERT INTO `cat_municipio` VALUES (944, 944, 'Bahía de Banderas', '', 18);
INSERT INTO `cat_municipio` VALUES (945, 945, 'San Blas', '', 18);
INSERT INTO `cat_municipio` VALUES (946, 946, 'Xalisco', '', 18);
INSERT INTO `cat_municipio` VALUES (947, 947, 'San Pedro Lagunillas', '', 18);
INSERT INTO `cat_municipio` VALUES (948, 948, 'Santa María del Oro', '', 18);
INSERT INTO `cat_municipio` VALUES (949, 949, 'Jala', '', 18);
INSERT INTO `cat_municipio` VALUES (950, 950, 'Ahuacatlá', '', 18);
INSERT INTO `cat_municipio` VALUES (951, 951, 'Ixtlán del Río', '', 18);
INSERT INTO `cat_municipio` VALUES (952, 952, 'Amatlán de Cañas', '', 18);
INSERT INTO `cat_municipio` VALUES (953, 953, 'Monterrey', '', 19);
INSERT INTO `cat_municipio` VALUES (954, 954, 'Anáhuac', '', 19);
INSERT INTO `cat_municipio` VALUES (955, 955, 'Lampazos de Naranjo', '', 19);
INSERT INTO `cat_municipio` VALUES (956, 956, 'Mina', '', 19);
INSERT INTO `cat_municipio` VALUES (957, 957, 'Bustamante', '', 19);
INSERT INTO `cat_municipio` VALUES (958, 958, 'Sabinas Hidalgo', '', 19);
INSERT INTO `cat_municipio` VALUES (959, 959, 'Villaldama', '', 19);
INSERT INTO `cat_municipio` VALUES (960, 960, 'Vallecillo', '', 19);
INSERT INTO `cat_municipio` VALUES (961, 961, 'Parás', '', 19);
INSERT INTO `cat_municipio` VALUES (962, 962, 'Salinas Victoria', '', 19);
INSERT INTO `cat_municipio` VALUES (963, 963, 'Ciénega de Flores', '', 19);
INSERT INTO `cat_municipio` VALUES (964, 964, 'Hidalgo', '', 19);
INSERT INTO `cat_municipio` VALUES (965, 965, 'Abasolo', '', 19);
INSERT INTO `cat_municipio` VALUES (966, 966, 'Higueras', '', 19);
INSERT INTO `cat_municipio` VALUES (967, 967, 'General Zuazua', '', 19);
INSERT INTO `cat_municipio` VALUES (968, 968, 'Agualeguas', '', 19);
INSERT INTO `cat_municipio` VALUES (969, 969, 'General Treviño', '', 19);
INSERT INTO `cat_municipio` VALUES (970, 970, 'Cerralvo', '', 19);
INSERT INTO `cat_municipio` VALUES (971, 971, 'Melchor Ocampo', '', 19);
INSERT INTO `cat_municipio` VALUES (972, 972, 'García', '', 19);
INSERT INTO `cat_municipio` VALUES (973, 973, 'General Escobedo', '', 19);
INSERT INTO `cat_municipio` VALUES (974, 974, 'Santa Catarina', '', 19);
INSERT INTO `cat_municipio` VALUES (975, 975, 'San Pedro Garza García', '', 19);
INSERT INTO `cat_municipio` VALUES (976, 976, 'San Nicolás de los Garza', '', 19);
INSERT INTO `cat_municipio` VALUES (977, 977, 'El Carme', '', 19);
INSERT INTO `cat_municipio` VALUES (978, 978, 'Apodaca', '', 19);
INSERT INTO `cat_municipio` VALUES (979, 979, 'Pesquería', '', 19);
INSERT INTO `cat_municipio` VALUES (980, 980, 'Marí', '', 19);
INSERT INTO `cat_municipio` VALUES (981, 981, 'Doctor González', '', 19);
INSERT INTO `cat_municipio` VALUES (982, 982, 'Los Ramones', '', 19);
INSERT INTO `cat_municipio` VALUES (983, 983, 'Los Herreras', '', 19);
INSERT INTO `cat_municipio` VALUES (984, 984, 'Los Aldamas', '', 19);
INSERT INTO `cat_municipio` VALUES (985, 985, 'Doctor Coss', '', 19);
INSERT INTO `cat_municipio` VALUES (986, 986, 'General Bravo', '', 19);
INSERT INTO `cat_municipio` VALUES (987, 987, 'China', '', 19);
INSERT INTO `cat_municipio` VALUES (988, 988, 'Guadalupe', '', 19);
INSERT INTO `cat_municipio` VALUES (989, 989, 'Juárez', '', 19);
INSERT INTO `cat_municipio` VALUES (990, 990, 'Santiago', '', 19);
INSERT INTO `cat_municipio` VALUES (991, 991, 'Allende', '', 19);
INSERT INTO `cat_municipio` VALUES (992, 992, 'General Terá', '', 19);
INSERT INTO `cat_municipio` VALUES (993, 993, 'Cadereyta Jiménez', '', 19);
INSERT INTO `cat_municipio` VALUES (994, 994, 'Montemorelos', '', 19);
INSERT INTO `cat_municipio` VALUES (995, 995, 'Rayones', '', 19);
INSERT INTO `cat_municipio` VALUES (996, 996, 'Linares', '', 19);
INSERT INTO `cat_municipio` VALUES (997, 997, 'Iturbide', '', 19);
INSERT INTO `cat_municipio` VALUES (998, 998, 'Galeana', '', 19);
INSERT INTO `cat_municipio` VALUES (999, 999, 'Hualahuises', '', 19);
INSERT INTO `cat_municipio` VALUES (1000, 1000, 'Doctor Arroyo', '', 19);
INSERT INTO `cat_municipio` VALUES (1001, 1001, 'Aramberri', '', 19);
INSERT INTO `cat_municipio` VALUES (1002, 1002, 'General Zaragoza', '', 19);
INSERT INTO `cat_municipio` VALUES (1003, 1003, 'Mier y Noriega', '', 19);
INSERT INTO `cat_municipio` VALUES (1004, 1004, 'Oaxaca de Juárez', '', 20);
INSERT INTO `cat_municipio` VALUES (1005, 1005, 'Villa de Etla', '', 20);
INSERT INTO `cat_municipio` VALUES (1006, 1006, 'San Juan Bautista Atatlahuca', '', 20);
INSERT INTO `cat_municipio` VALUES (1007, 1007, 'San Jerónimo Sosola', '', 20);
INSERT INTO `cat_municipio` VALUES (1008, 1008, 'San Juan Bautista Jayacatlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1009, 1009, 'San Francisco Telixtlahuaca', '', 20);
INSERT INTO `cat_municipio` VALUES (1010, 1010, 'Santiago Tenango', '', 20);
INSERT INTO `cat_municipio` VALUES (1011, 1011, 'San Pablo Huitzo', '', 20);
INSERT INTO `cat_municipio` VALUES (1012, 1012, 'San Juan del Estado', '', 20);
INSERT INTO `cat_municipio` VALUES (1013, 1013, 'Magdalena Apasco', '', 20);
INSERT INTO `cat_municipio` VALUES (1014, 1014, 'Santiago Suchilquitongo', '', 20);
INSERT INTO `cat_municipio` VALUES (1015, 1015, 'San Juan Bautista Guelache', '', 20);
INSERT INTO `cat_municipio` VALUES (1016, 1016, 'Reyes Etla', '', 20);
INSERT INTO `cat_municipio` VALUES (1017, 1017, 'Nazareno Etla', '', 20);
INSERT INTO `cat_municipio` VALUES (1018, 1018, 'San Andrés Zautla', '', 20);
INSERT INTO `cat_municipio` VALUES (1019, 1019, 'San Agustín Etla', '', 20);
INSERT INTO `cat_municipio` VALUES (1020, 1020, 'Soledad Etla', '', 20);
INSERT INTO `cat_municipio` VALUES (1021, 1021, 'Santo Tomás Mazaltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1022, 1022, 'Guadalupe Etla', '', 20);
INSERT INTO `cat_municipio` VALUES (1023, 1023, 'San Pablo Etla', '', 20);
INSERT INTO `cat_municipio` VALUES (1024, 1024, 'San Felipe Tejalápam', '', 20);
INSERT INTO `cat_municipio` VALUES (1025, 1025, 'San Lorenzo Cacaotepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1026, 1026, 'Santa María Peñoles', '', 20);
INSERT INTO `cat_municipio` VALUES (1027, 1027, 'Santiago Tlazoyaltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1028, 1028, 'Tlalixtac de Cabrera', '', 20);
INSERT INTO `cat_municipio` VALUES (1029, 1029, 'San Jacinto Amilpas', '', 20);
INSERT INTO `cat_municipio` VALUES (1030, 1030, 'San Andrés Huayápam', '', 20);
INSERT INTO `cat_municipio` VALUES (1031, 1031, 'San Agustín Yatareni', '', 20);
INSERT INTO `cat_municipio` VALUES (1032, 1032, 'Santo Domingo Tomaltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1033, 1033, 'Santa María del Tule', '', 20);
INSERT INTO `cat_municipio` VALUES (1034, 1034, 'San Juan Bautista Tuxtepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1035, 1035, 'Loma Bonita', '', 20);
INSERT INTO `cat_municipio` VALUES (1036, 1036, 'San José Independencia', '', 20);
INSERT INTO `cat_municipio` VALUES (1037, 1037, 'Cosolapa', '', 20);
INSERT INTO `cat_municipio` VALUES (1038, 1038, 'Acatlán de Pérez Figueroa', '', 20);
INSERT INTO `cat_municipio` VALUES (1039, 1039, 'San Miguel Soyaltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1040, 1040, 'Ayotzintepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1041, 1041, 'San Juan Bautista Tuxtepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1042, 1042, 'San Pedro Ixcatlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1043, 1043, 'San José Chiltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1044, 1044, 'San Felipe Jalapa de Díaz', '', 20);
INSERT INTO `cat_municipio` VALUES (1045, 1045, 'Santa María Jacatepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1046, 1046, 'San Lucas Ojitlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1047, 1047, 'San Juan Bautista Valle Nacional', '', 20);
INSERT INTO `cat_municipio` VALUES (1048, 1048, 'San Felipe Usila', '', 20);
INSERT INTO `cat_municipio` VALUES (1049, 1049, 'Huautla de Jiménez', '', 20);
INSERT INTO `cat_municipio` VALUES (1050, 1050, 'Santa María Chilchotla', '', 20);
INSERT INTO `cat_municipio` VALUES (1051, 1051, 'Santa Ana Ateixtlahuaca', '', 20);
INSERT INTO `cat_municipio` VALUES (1052, 1052, 'San Lorenzo Cuaunecuiltitla', '', 20);
INSERT INTO `cat_municipio` VALUES (1053, 1053, 'San Francisco Huehuetlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1054, 1054, 'San Pedro Ocopetatillo', '', 20);
INSERT INTO `cat_municipio` VALUES (1055, 1055, 'Santa Cruz Acatepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1056, 1056, 'Eloxochitlán de Flores Magó', '', 20);
INSERT INTO `cat_municipio` VALUES (1057, 1057, 'Santiago Texcalcingo', '', 20);
INSERT INTO `cat_municipio` VALUES (1058, 1058, 'Teotitlán de Flores Magó', '', 20);
INSERT INTO `cat_municipio` VALUES (1059, 1059, 'Santa María Teopoxco', '', 20);
INSERT INTO `cat_municipio` VALUES (1060, 1060, 'San Martín Toxpala', '', 20);
INSERT INTO `cat_municipio` VALUES (1061, 1061, 'San Jerónimo Tecóatl', '', 20);
INSERT INTO `cat_municipio` VALUES (1062, 1062, 'Santa María la Asunció', '', 20);
INSERT INTO `cat_municipio` VALUES (1063, 1063, 'Huautepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1064, 1064, 'San Juan Coatzóspam', '', 20);
INSERT INTO `cat_municipio` VALUES (1065, 1065, 'San Lucas Zoquiápam', '', 20);
INSERT INTO `cat_municipio` VALUES (1066, 1066, 'San Antonio Nanahuatípam', '', 20);
INSERT INTO `cat_municipio` VALUES (1067, 1067, 'San José Tenango', '', 20);
INSERT INTO `cat_municipio` VALUES (1068, 1068, 'San Mateo Yoloxochitlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1069, 1069, 'San Bartolomé Ayautla', '', 20);
INSERT INTO `cat_municipio` VALUES (1070, 1070, 'Mazatlán Villa de Flores', '', 20);
INSERT INTO `cat_municipio` VALUES (1071, 1071, 'San Juan de los Cués', '', 20);
INSERT INTO `cat_municipio` VALUES (1072, 1072, 'Santa María Tecomavaca', '', 20);
INSERT INTO `cat_municipio` VALUES (1073, 1073, 'Santa María Ixcatlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1074, 1074, 'San Juan Bautista Cuicatlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1075, 1075, 'Cuyamecalco Villa de Zaragoza', '', 20);
INSERT INTO `cat_municipio` VALUES (1076, 1076, 'Santa Ana Cuauhtémoc', '', 20);
INSERT INTO `cat_municipio` VALUES (1077, 1077, 'Chiquihuitlán de Benito Juárez', '', 20);
INSERT INTO `cat_municipio` VALUES (1078, 1078, 'San Pedro Teutila', '', 20);
INSERT INTO `cat_municipio` VALUES (1079, 1079, 'San Miguel Santa Flor', '', 20);
INSERT INTO `cat_municipio` VALUES (1080, 1080, 'Santa María Tlalixtac', '', 20);
INSERT INTO `cat_municipio` VALUES (1081, 1081, 'San Andrés Teotilálpam', '', 20);
INSERT INTO `cat_municipio` VALUES (1082, 1082, 'San Francisco Chapulapa', '', 20);
INSERT INTO `cat_municipio` VALUES (1083, 1083, 'Concepción Pápalo', '', 20);
INSERT INTO `cat_municipio` VALUES (1084, 1084, 'Santos Reyes Pápalo', '', 20);
INSERT INTO `cat_municipio` VALUES (1085, 1085, 'San Juan Bautista Tlacoatzintepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1086, 1086, 'Santa María Pápalo', '', 20);
INSERT INTO `cat_municipio` VALUES (1087, 1087, 'San Juan Tepeuxila', '', 20);
INSERT INTO `cat_municipio` VALUES (1088, 1088, 'San Pedro Sochiápam', '', 20);
INSERT INTO `cat_municipio` VALUES (1089, 1089, 'Valerio Trujano', '', 20);
INSERT INTO `cat_municipio` VALUES (1090, 1090, 'San Pedro Jocotipac', '', 20);
INSERT INTO `cat_municipio` VALUES (1091, 1091, 'Santa María Texcatitlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1092, 1092, 'San Pedro Jaltepetongo', '', 20);
INSERT INTO `cat_municipio` VALUES (1093, 1093, 'Santiago Nacaltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1094, 1094, 'Natividad', '', 20);
INSERT INTO `cat_municipio` VALUES (1095, 1095, 'San Juan Quiotepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1096, 1096, 'San Pedro Yólox', '', 20);
INSERT INTO `cat_municipio` VALUES (1097, 1097, 'Santiago Comaltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1098, 1098, 'Abejones', '', 20);
INSERT INTO `cat_municipio` VALUES (1099, 1099, 'San Pablo Macuiltianguis', '', 20);
INSERT INTO `cat_municipio` VALUES (1100, 1100, 'Ixtlán de Juárez', '', 20);
INSERT INTO `cat_municipio` VALUES (1101, 1101, 'San Juan Atepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1102, 1102, 'San Pedro Yaneri', '', 20);
INSERT INTO `cat_municipio` VALUES (1103, 1103, 'San Miguel Aloápam', '', 20);
INSERT INTO `cat_municipio` VALUES (1104, 1104, 'Teococuilco de Marcos Pérez', '', 20);
INSERT INTO `cat_municipio` VALUES (1105, 1105, 'Santa Ana Yareni', '', 20);
INSERT INTO `cat_municipio` VALUES (1106, 1106, 'San Juan Evangelista Analco', '', 20);
INSERT INTO `cat_municipio` VALUES (1107, 1107, 'Santa María Jaltianguis', '', 20);
INSERT INTO `cat_municipio` VALUES (1108, 1108, 'San Miguel del Río', '', 20);
INSERT INTO `cat_municipio` VALUES (1109, 1109, 'San Juan Chicomezúchil', '', 20);
INSERT INTO `cat_municipio` VALUES (1110, 1110, 'Capulálpam de Méndez', '', 20);
INSERT INTO `cat_municipio` VALUES (1111, 1111, 'Nuevo Zoquiápam', '', 20);
INSERT INTO `cat_municipio` VALUES (1112, 1112, 'Santiago Xiacuí', '', 20);
INSERT INTO `cat_municipio` VALUES (1113, 1113, 'Guelatao de Juárez', '', 20);
INSERT INTO `cat_municipio` VALUES (1114, 1114, 'Santa Catarina Ixtepeji', '', 20);
INSERT INTO `cat_municipio` VALUES (1115, 1115, 'San Miguel Yotao', '', 20);
INSERT INTO `cat_municipio` VALUES (1116, 1116, 'Santa Catarina Lachatao', '', 20);
INSERT INTO `cat_municipio` VALUES (1117, 1117, 'San Miguel Amatlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1118, 1118, 'Santa María Yavesía', '', 20);
INSERT INTO `cat_municipio` VALUES (1119, 1119, 'Santiago Laxopa', '', 20);
INSERT INTO `cat_municipio` VALUES (1120, 1120, 'San Ildefonso Villa Alta', '', 20);
INSERT INTO `cat_municipio` VALUES (1121, 1121, 'Santiago Camotlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1122, 1122, 'San Juan Yaeé', '', 20);
INSERT INTO `cat_municipio` VALUES (1123, 1123, 'Santiago Lalopa', '', 20);
INSERT INTO `cat_municipio` VALUES (1124, 1124, 'San Juan Yatzona', '', 20);
INSERT INTO `cat_municipio` VALUES (1125, 1125, 'Villa Talea de Castro', '', 20);
INSERT INTO `cat_municipio` VALUES (1126, 1126, 'Tanetze de Zaragoza', '', 20);
INSERT INTO `cat_municipio` VALUES (1127, 1127, 'San Juan Juquila Vijanos', '', 20);
INSERT INTO `cat_municipio` VALUES (1128, 1128, 'San Cristóbal Lachirioag', '', 20);
INSERT INTO `cat_municipio` VALUES (1129, 1129, 'Santa María Temaxcalapa', '', 20);
INSERT INTO `cat_municipio` VALUES (1130, 1130, 'Santo Domingo Roayaga', '', 20);
INSERT INTO `cat_municipio` VALUES (1131, 1131, 'Santa María Yalina', '', 20);
INSERT INTO `cat_municipio` VALUES (1132, 1132, 'San Andrés Solaga', '', 20);
INSERT INTO `cat_municipio` VALUES (1133, 1133, 'San Juan Tabaá', '', 20);
INSERT INTO `cat_municipio` VALUES (1134, 1134, 'San Melchor Betaza', '', 20);
INSERT INTO `cat_municipio` VALUES (1135, 1135, 'San Andrés Yaá', '', 20);
INSERT INTO `cat_municipio` VALUES (1136, 1136, 'San Bartolomé Zoogocho', '', 20);
INSERT INTO `cat_municipio` VALUES (1137, 1137, 'San Baltazar Yatzachi el Bajo', '', 20);
INSERT INTO `cat_municipio` VALUES (1138, 1138, 'Santiago Zoochila', '', 20);
INSERT INTO `cat_municipio` VALUES (1139, 1139, 'Villa Hidalgo', '', 20);
INSERT INTO `cat_municipio` VALUES (1140, 1140, 'San Francisco Cajonos', '', 20);
INSERT INTO `cat_municipio` VALUES (1141, 1141, 'San Mateo Cajonos', '', 20);
INSERT INTO `cat_municipio` VALUES (1142, 1142, 'San Pedro Cajonos', '', 20);
INSERT INTO `cat_municipio` VALUES (1143, 1143, 'Santo Domingo Xagacía', '', 20);
INSERT INTO `cat_municipio` VALUES (1144, 1144, 'San Pablo Yaganiza', '', 20);
INSERT INTO `cat_municipio` VALUES (1145, 1145, 'Santiago Choápam', '', 20);
INSERT INTO `cat_municipio` VALUES (1146, 1146, 'Santiago Jocotepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1147, 1147, 'San Juan Lalana', '', 20);
INSERT INTO `cat_municipio` VALUES (1148, 1148, 'Santiago Yaveo', '', 20);
INSERT INTO `cat_municipio` VALUES (1149, 1149, 'San Juan Petlapa', '', 20);
INSERT INTO `cat_municipio` VALUES (1150, 1150, 'San Juan Comaltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1151, 1151, 'Heroica Ciudad de Huajuapan de Leó', '', 20);
INSERT INTO `cat_municipio` VALUES (1152, 1152, 'Santiago Chazumba', '', 20);
INSERT INTO `cat_municipio` VALUES (1153, 1153, 'Cosoltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1154, 1154, 'San Pedro y San Pablo Tequixtepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1155, 1155, 'San Juan Bautista Suchitepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1156, 1156, 'Santa Catarina Zapoquila', '', 20);
INSERT INTO `cat_municipio` VALUES (1157, 1157, 'Santiago Miltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1158, 1158, 'San Jerónimo Silacayoapilla', '', 20);
INSERT INTO `cat_municipio` VALUES (1159, 1159, 'Zapotitlán Palmas', '', 20);
INSERT INTO `cat_municipio` VALUES (1160, 1160, 'San Andrés Dinicuiti', '', 20);
INSERT INTO `cat_municipio` VALUES (1161, 1161, 'Santiago Cacaloxtepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1162, 1162, 'Asunción Cuyotepeji', '', 20);
INSERT INTO `cat_municipio` VALUES (1163, 1163, 'Santa María Camotlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1164, 1164, 'Santiago Huajolotitlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1165, 1165, 'Santiago Tamazola', '', 20);
INSERT INTO `cat_municipio` VALUES (1166, 1166, 'San Juan Cieneguilla', '', 20);
INSERT INTO `cat_municipio` VALUES (1167, 1167, 'Zapotitlán Lagunas', '', 20);
INSERT INTO `cat_municipio` VALUES (1168, 1168, 'San Juan Ihualtepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1169, 1169, 'San Nicolás Hidalgo', '', 20);
INSERT INTO `cat_municipio` VALUES (1170, 1170, 'Guadalupe de Ramírez', '', 20);
INSERT INTO `cat_municipio` VALUES (1171, 1171, 'San Andrés Tepetlapa', '', 20);
INSERT INTO `cat_municipio` VALUES (1172, 1172, 'San Miguel Ahuehuetitlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1173, 1173, 'San Mateo Nejápam', '', 20);
INSERT INTO `cat_municipio` VALUES (1174, 1174, 'San Juan Bautista Tlachichilco', '', 20);
INSERT INTO `cat_municipio` VALUES (1175, 1175, 'Tezoatlán de Segura y Luna', '', 20);
INSERT INTO `cat_municipio` VALUES (1176, 1176, 'Fresnillo de Trujano', '', 20);
INSERT INTO `cat_municipio` VALUES (1177, 1177, 'Santiago Ayuquililla', '', 20);
INSERT INTO `cat_municipio` VALUES (1178, 1178, 'San José Ayuquila', '', 20);
INSERT INTO `cat_municipio` VALUES (1179, 1179, 'San Martín Zacatepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1180, 1180, 'San Miguel Amatitlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1181, 1181, 'Mariscala de Juárez', '', 20);
INSERT INTO `cat_municipio` VALUES (1182, 1182, 'Santa Cruz Tacache de Mina', '', 20);
INSERT INTO `cat_municipio` VALUES (1183, 1183, 'San Simón Zahuatlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1184, 1184, 'San Marcos Arteaga', '', 20);
INSERT INTO `cat_municipio` VALUES (1185, 1185, 'San Jorge Nuchita', '', 20);
INSERT INTO `cat_municipio` VALUES (1186, 1186, 'Santos Reyes Yucuná', '', 20);
INSERT INTO `cat_municipio` VALUES (1187, 1187, 'Santo Domingo Tonalá', '', 20);
INSERT INTO `cat_municipio` VALUES (1188, 1188, 'Santo Domingo Yodohino', '', 20);
INSERT INTO `cat_municipio` VALUES (1189, 1189, 'San Juan Bautista Coixtlahuaca', '', 20);
INSERT INTO `cat_municipio` VALUES (1190, 1190, 'Tepelmeme Villa de Morelos', '', 20);
INSERT INTO `cat_municipio` VALUES (1191, 1191, 'Concepción Buenavista', '', 20);
INSERT INTO `cat_municipio` VALUES (1192, 1192, 'Santiago Ihuitlán Plumas', '', 20);
INSERT INTO `cat_municipio` VALUES (1193, 1193, 'Tlacotepec Plumas', '', 20);
INSERT INTO `cat_municipio` VALUES (1194, 1194, 'San Francisco Teopa', '', 20);
INSERT INTO `cat_municipio` VALUES (1195, 1195, 'Santa Magdalena Jicotlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1196, 1196, 'San Mateo Tlapiltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1197, 1197, 'San Miguel Tequixtepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1198, 1198, 'San Miguel Tulancingo', '', 20);
INSERT INTO `cat_municipio` VALUES (1199, 1199, 'Santiago Tepetlapa', '', 20);
INSERT INTO `cat_municipio` VALUES (1200, 1200, 'San Cristóbal Suchixtlahuaca', '', 20);
INSERT INTO `cat_municipio` VALUES (1201, 1201, 'Santa María Nativitas', '', 20);
INSERT INTO `cat_municipio` VALUES (1202, 1202, 'Silacayoápam', '', 20);
INSERT INTO `cat_municipio` VALUES (1203, 1203, 'Santiago Yucuyachi', '', 20);
INSERT INTO `cat_municipio` VALUES (1204, 1204, 'San Lorenzo Victoria', '', 20);
INSERT INTO `cat_municipio` VALUES (1205, 1205, 'San Agustín Atenango', '', 20);
INSERT INTO `cat_municipio` VALUES (1206, 1206, 'Calihualá', '', 20);
INSERT INTO `cat_municipio` VALUES (1207, 1207, 'Santa Cruz de Bravo', '', 20);
INSERT INTO `cat_municipio` VALUES (1208, 1208, 'Ixpantepec Nieves', '', 20);
INSERT INTO `cat_municipio` VALUES (1209, 1209, 'San Francisco Tlapancingo', '', 20);
INSERT INTO `cat_municipio` VALUES (1210, 1210, 'Santiago del Río', '', 20);
INSERT INTO `cat_municipio` VALUES (1211, 1211, 'San Pedro y San Pablo Teposcolula', '', 20);
INSERT INTO `cat_municipio` VALUES (1212, 1212, 'La Trinidad Vista Hermosa', '', 20);
INSERT INTO `cat_municipio` VALUES (1213, 1213, 'Villa de Tamazulápam del Progreso', '', 20);
INSERT INTO `cat_municipio` VALUES (1214, 1214, 'San Pedro Nopala', '', 20);
INSERT INTO `cat_municipio` VALUES (1215, 1215, 'Teotongo', '', 20);
INSERT INTO `cat_municipio` VALUES (1216, 1216, 'San Antonio Acutla', '', 20);
INSERT INTO `cat_municipio` VALUES (1217, 1217, 'Villa Tejúpam de la Unió', '', 20);
INSERT INTO `cat_municipio` VALUES (1218, 1218, 'Santo Domingo Tonaltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1219, 1219, 'Villa de Chilapa de Díaz', '', 20);
INSERT INTO `cat_municipio` VALUES (1220, 1220, 'San Antonino Monte Verde', '', 20);
INSERT INTO `cat_municipio` VALUES (1221, 1221, 'San Andrés Lagunas', '', 20);
INSERT INTO `cat_municipio` VALUES (1222, 1222, 'San Pedro Yucunama', '', 20);
INSERT INTO `cat_municipio` VALUES (1223, 1223, 'San Juan Teposcolula', '', 20);
INSERT INTO `cat_municipio` VALUES (1224, 1224, 'San Bartolo Soyaltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1225, 1225, 'Santiago Yolomécatl', '', 20);
INSERT INTO `cat_municipio` VALUES (1226, 1226, 'San Sebastián Nicananduta', '', 20);
INSERT INTO `cat_municipio` VALUES (1227, 1227, 'Santo Domingo Tlatayápam', '', 20);
INSERT INTO `cat_municipio` VALUES (1228, 1228, 'Santa María Nduayaco', '', 20);
INSERT INTO `cat_municipio` VALUES (1229, 1229, 'San Vicente Nuñú', '', 20);
INSERT INTO `cat_municipio` VALUES (1230, 1230, 'San Pedro Topiltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1231, 1231, 'Santiago Nejapilla', '', 20);
INSERT INTO `cat_municipio` VALUES (1232, 1232, 'Asunción Nochixtlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1233, 1233, 'San Miguel Huautla', '', 20);
INSERT INTO `cat_municipio` VALUES (1234, 1234, 'San Miguel Chicahua', '', 20);
INSERT INTO `cat_municipio` VALUES (1235, 1235, 'Santa María Apazco', '', 20);
INSERT INTO `cat_municipio` VALUES (1236, 1236, 'Santiago Apoala', '', 20);
INSERT INTO `cat_municipio` VALUES (1237, 1237, 'Santa María Chachoápam', '', 20);
INSERT INTO `cat_municipio` VALUES (1238, 1238, 'San Pedro Coxcaltepec Cántaros', '', 20);
INSERT INTO `cat_municipio` VALUES (1239, 1239, 'Santiago Huauclilla', '', 20);
INSERT INTO `cat_municipio` VALUES (1240, 1240, 'Santo Domingo Yanhuitlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1241, 1241, 'San Andrés Sinaxtla', '', 20);
INSERT INTO `cat_municipio` VALUES (1242, 1242, 'San Juan Yucuita', '', 20);
INSERT INTO `cat_municipio` VALUES (1243, 1243, 'San Juan Sayultepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1244, 1244, 'Santiago Tillo', '', 20);
INSERT INTO `cat_municipio` VALUES (1245, 1245, 'San Francisco Chindúa', '', 20);
INSERT INTO `cat_municipio` VALUES (1246, 1246, 'San Mateo Etlatongo', '', 20);
INSERT INTO `cat_municipio` VALUES (1247, 1247, 'Santa Inés de Zaragoza', '', 20);
INSERT INTO `cat_municipio` VALUES (1248, 1248, 'Santiago Juxtlahuaca', '', 20);
INSERT INTO `cat_municipio` VALUES (1249, 1249, 'San Miguel Tlacotepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1250, 1250, 'San Sebastián Tecomaxtlahuaca', '', 20);
INSERT INTO `cat_municipio` VALUES (1251, 1251, 'Santos Reyes Tepejillo', '', 20);
INSERT INTO `cat_municipio` VALUES (1252, 1252, 'San Juan Mixtepec -Dto. 08 -', '', 20);
INSERT INTO `cat_municipio` VALUES (1253, 1253, 'San Martín Peras', '', 20);
INSERT INTO `cat_municipio` VALUES (1254, 1254, 'Coicoyán de las Flores', '', 20);
INSERT INTO `cat_municipio` VALUES (1255, 1255, 'Heroica Ciudad de Tlaxiaco', '', 20);
INSERT INTO `cat_municipio` VALUES (1256, 1256, 'San Juan Ñumí', '', 20);
INSERT INTO `cat_municipio` VALUES (1257, 1257, 'San Pedro Mártir Yucuxaco', '', 20);
INSERT INTO `cat_municipio` VALUES (1258, 1258, 'San Martín Huamelúlpam', '', 20);
INSERT INTO `cat_municipio` VALUES (1259, 1259, 'Santa Cruz Tayata', '', 20);
INSERT INTO `cat_municipio` VALUES (1260, 1260, 'Santiago Nundiche', '', 20);
INSERT INTO `cat_municipio` VALUES (1261, 1261, 'Santa María del Rosario', '', 20);
INSERT INTO `cat_municipio` VALUES (1262, 1262, 'San Juan Achiutla', '', 20);
INSERT INTO `cat_municipio` VALUES (1263, 1263, 'Santa Catarina Tayata', '', 20);
INSERT INTO `cat_municipio` VALUES (1264, 1264, 'San Cristóbal Amoltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1265, 1265, 'San Miguel Achiutla', '', 20);
INSERT INTO `cat_municipio` VALUES (1266, 1266, 'San Martín Itunyoso', '', 20);
INSERT INTO `cat_municipio` VALUES (1267, 1267, 'Magdalena Peñasco', '', 20);
INSERT INTO `cat_municipio` VALUES (1268, 1268, 'San Bartolomé Yucuañe', '', 20);
INSERT INTO `cat_municipio` VALUES (1269, 1269, 'Santa Cruz Nundaco', '', 20);
INSERT INTO `cat_municipio` VALUES (1270, 1270, 'San Agustín Tlacotepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1271, 1271, 'Santo Tomás Ocotepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1272, 1272, 'San Antonio Sinicahua', '', 20);
INSERT INTO `cat_municipio` VALUES (1273, 1273, 'San Mateo Peñasco', '', 20);
INSERT INTO `cat_municipio` VALUES (1274, 1274, 'Santa María Tataltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1275, 1275, 'San Pedro Molinos', '', 20);
INSERT INTO `cat_municipio` VALUES (1276, 1276, 'Santa María Yosoyúa', '', 20);
INSERT INTO `cat_municipio` VALUES (1277, 1277, 'San Juan Teita', '', 20);
INSERT INTO `cat_municipio` VALUES (1278, 1278, 'Magdalena Jaltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1279, 1279, 'Magdalena Yodocono de Porfirio Díaz', '', 20);
INSERT INTO `cat_municipio` VALUES (1280, 1280, 'San Miguel Tecomatlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1281, 1281, 'Magdalena Zahuatlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1282, 1282, 'San Francisco Nuxaño', '', 20);
INSERT INTO `cat_municipio` VALUES (1283, 1283, 'San Pedro Tidaá', '', 20);
INSERT INTO `cat_municipio` VALUES (1284, 1284, 'San Francisco Jaltepetongo', '', 20);
INSERT INTO `cat_municipio` VALUES (1285, 1285, 'Santiago Tilantongo', '', 20);
INSERT INTO `cat_municipio` VALUES (1286, 1286, 'San Juan Diuxi', '', 20);
INSERT INTO `cat_municipio` VALUES (1287, 1287, 'San Andrés Nuxiño', '', 20);
INSERT INTO `cat_municipio` VALUES (1288, 1288, 'San Juan Tamazola', '', 20);
INSERT INTO `cat_municipio` VALUES (1289, 1289, 'Santo Domingo Nuxaá', '', 20);
INSERT INTO `cat_municipio` VALUES (1290, 1290, 'Yutanduchi de Guerrero', '', 20);
INSERT INTO `cat_municipio` VALUES (1291, 1291, 'San Pedro Teozacoalco', '', 20);
INSERT INTO `cat_municipio` VALUES (1292, 1292, 'San Miguel Piedras', '', 20);
INSERT INTO `cat_municipio` VALUES (1293, 1293, 'San Mateo Sindihui', '', 20);
INSERT INTO `cat_municipio` VALUES (1294, 1294, 'Heroica Ciudad de Juchitán de Zaragoza', '', 20);
INSERT INTO `cat_municipio` VALUES (1295, 1295, 'Ciudad Ixtepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1296, 1296, 'El Espinal', '', 20);
INSERT INTO `cat_municipio` VALUES (1297, 1297, 'Santo Domingo Ingenio', '', 20);
INSERT INTO `cat_municipio` VALUES (1298, 1298, 'Santa María Xadani', '', 20);
INSERT INTO `cat_municipio` VALUES (1299, 1299, 'Santiago Niltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1300, 1300, 'San Dionisio del Mar', '', 20);
INSERT INTO `cat_municipio` VALUES (1301, 1301, 'Asunción Ixtaltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1302, 1302, 'San Francisco del Mar', '', 20);
INSERT INTO `cat_municipio` VALUES (1303, 1303, 'Unión Hidalgo', '', 20);
INSERT INTO `cat_municipio` VALUES (1304, 1304, 'San Miguel Chimalapa', '', 20);
INSERT INTO `cat_municipio` VALUES (1305, 1305, 'Santo Domingo Zanatepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1306, 1306, 'Reforma de Pineda', '', 20);
INSERT INTO `cat_municipio` VALUES (1307, 1307, 'San Francisco Ixhuatá', '', 20);
INSERT INTO `cat_municipio` VALUES (1308, 1308, 'San Pedro Tapanatepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1309, 1309, 'Chahuites', '', 20);
INSERT INTO `cat_municipio` VALUES (1310, 1310, 'Santiago Zacatepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1311, 1311, 'Santo Domingo Tepuxtepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1312, 1312, 'San Juan Cotzocó', '', 20);
INSERT INTO `cat_municipio` VALUES (1313, 1313, 'San Juan Mazatlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1314, 1314, 'Totontepec Villa de Morelos', '', 20);
INSERT INTO `cat_municipio` VALUES (1315, 1315, 'Mixistlán de la Reforma', '', 20);
INSERT INTO `cat_municipio` VALUES (1316, 1316, 'Santa María Tlahuitoltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1317, 1317, 'Santa María Alotepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1318, 1318, 'Santiago Atitlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1319, 1319, 'Tamazulápam del Espíritu Santo', '', 20);
INSERT INTO `cat_municipio` VALUES (1320, 1320, 'San Pedro y San Pablo Ayutla', '', 20);
INSERT INTO `cat_municipio` VALUES (1321, 1321, 'Santa María Tepantlali', '', 20);
INSERT INTO `cat_municipio` VALUES (1322, 1322, 'San Miguel Quetzaltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1323, 1323, 'Asunción Cacalotepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1324, 1324, 'San Pedro Ocotepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1325, 1325, 'San Lucas Camotlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1326, 1326, 'Santiago Ixcuintepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1327, 1327, 'Matías Romero Avendaño', '', 20);
INSERT INTO `cat_municipio` VALUES (1328, 1328, 'San Juan Guichicovi', '', 20);
INSERT INTO `cat_municipio` VALUES (1329, 1329, 'Santo Domingo Petapa', '', 20);
INSERT INTO `cat_municipio` VALUES (1330, 1330, 'Santa María Chimalapa', '', 20);
INSERT INTO `cat_municipio` VALUES (1331, 1331, 'Santa María Petapa', '', 20);
INSERT INTO `cat_municipio` VALUES (1332, 1332, 'El Barrio de la Soledad', '', 20);
INSERT INTO `cat_municipio` VALUES (1333, 1333, 'Tlacolula de Matamoros', '', 20);
INSERT INTO `cat_municipio` VALUES (1334, 1334, 'San Sebastián Abasolo', '', 20);
INSERT INTO `cat_municipio` VALUES (1335, 1335, 'Villa Díaz Ordaz', '', 20);
INSERT INTO `cat_municipio` VALUES (1336, 1336, 'Santa María Guelacé', '', 20);
INSERT INTO `cat_municipio` VALUES (1337, 1337, 'Teotitlán del Valle', '', 20);
INSERT INTO `cat_municipio` VALUES (1338, 1338, 'San Francisco Lachigoló', '', 20);
INSERT INTO `cat_municipio` VALUES (1339, 1339, 'San Sebastián Teitipac', '', 20);
INSERT INTO `cat_municipio` VALUES (1340, 1340, 'Santa Ana del Valle', '', 20);
INSERT INTO `cat_municipio` VALUES (1341, 1341, 'San Pablo Villa de Mitla', '', 20);
INSERT INTO `cat_municipio` VALUES (1342, 1342, 'Santiago Matatlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1343, 1343, 'Santo Domingo Albarradas', '', 20);
INSERT INTO `cat_municipio` VALUES (1344, 1344, 'Rojas de Cuauhtémoc', '', 20);
INSERT INTO `cat_municipio` VALUES (1345, 1345, 'San Juan Teitipac', '', 20);
INSERT INTO `cat_municipio` VALUES (1346, 1346, 'Santa Cruz Papalutla', '', 20);
INSERT INTO `cat_municipio` VALUES (1347, 1347, 'Magdalena Teitipac', '', 20);
INSERT INTO `cat_municipio` VALUES (1348, 1348, 'San Jerónimo Tlacochahuaya', '', 20);
INSERT INTO `cat_municipio` VALUES (1349, 1349, 'San Juan Guelavía', '', 20);
INSERT INTO `cat_municipio` VALUES (1350, 1350, 'San Lucas Quiaviní', '', 20);
INSERT INTO `cat_municipio` VALUES (1351, 1351, 'San Juan del Río', '', 20);
INSERT INTO `cat_municipio` VALUES (1352, 1352, 'San Bartolomé Quialana', '', 20);
INSERT INTO `cat_municipio` VALUES (1353, 1353, 'San Lorenzo Albarradas', '', 20);
INSERT INTO `cat_municipio` VALUES (1354, 1354, 'San Pedro Totolápam', '', 20);
INSERT INTO `cat_municipio` VALUES (1355, 1355, 'San Pedro Quiatoni', '', 20);
INSERT INTO `cat_municipio` VALUES (1356, 1356, 'Santa María Zoquitlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1357, 1357, 'San Dionisio Ocotepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1358, 1358, 'San Carlos Yautepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1359, 1359, 'San Juan Juquila Mixes', '', 20);
INSERT INTO `cat_municipio` VALUES (1360, 1360, 'Nejapa de Madero', '', 20);
INSERT INTO `cat_municipio` VALUES (1361, 1361, 'Santa Ana Tavela', '', 20);
INSERT INTO `cat_municipio` VALUES (1362, 1362, 'San Juan Lajarcia', '', 20);
INSERT INTO `cat_municipio` VALUES (1363, 1363, 'San Bartolo Yautepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1364, 1364, 'Santa María Ecatepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1365, 1365, 'Asunción Tlacolulita', '', 20);
INSERT INTO `cat_municipio` VALUES (1366, 1366, 'San Pedro Mártir Quiechapa', '', 20);
INSERT INTO `cat_municipio` VALUES (1367, 1367, 'Santa María Quiegolani', '', 20);
INSERT INTO `cat_municipio` VALUES (1368, 1368, 'Santa Catarina Quioquitani', '', 20);
INSERT INTO `cat_municipio` VALUES (1369, 1369, 'Santa Catalina Quierí', '', 20);
INSERT INTO `cat_municipio` VALUES (1370, 1370, 'Salina Cruz', '', 20);
INSERT INTO `cat_municipio` VALUES (1371, 1371, 'Santiago Lachiguiri', '', 20);
INSERT INTO `cat_municipio` VALUES (1372, 1372, 'Santa María Jalapa del Marqués', '', 20);
INSERT INTO `cat_municipio` VALUES (1373, 1373, 'Santa María Totolapilla', '', 20);
INSERT INTO `cat_municipio` VALUES (1374, 1374, 'Santiago Laollaga', '', 20);
INSERT INTO `cat_municipio` VALUES (1375, 1375, 'Guevea de Humboldt', '', 20);
INSERT INTO `cat_municipio` VALUES (1376, 1376, 'Santo Domingo Chihuitá', '', 20);
INSERT INTO `cat_municipio` VALUES (1377, 1377, 'Santa María Guienagati', '', 20);
INSERT INTO `cat_municipio` VALUES (1378, 1378, 'Magdalena Tequisistlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1379, 1379, 'Magdalena Tlacotepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1380, 1380, 'San Pedro Comitancillo', '', 20);
INSERT INTO `cat_municipio` VALUES (1381, 1381, 'Santa María Mixtequilla', '', 20);
INSERT INTO `cat_municipio` VALUES (1382, 1382, 'Santo Domingo Tehuantepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1383, 1383, 'San Pedro Huamelula', '', 20);
INSERT INTO `cat_municipio` VALUES (1384, 1384, 'San Pedro Huilotepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1385, 1385, 'San Mateo del Mar', '', 20);
INSERT INTO `cat_municipio` VALUES (1386, 1386, 'San Blas Atempa', '', 20);
INSERT INTO `cat_municipio` VALUES (1387, 1387, 'Santiago Astata', '', 20);
INSERT INTO `cat_municipio` VALUES (1388, 1388, 'San Miguel Tenango', '', 20);
INSERT INTO `cat_municipio` VALUES (1389, 1389, 'Miahuatlán de Porfirio Díaz', '', 20);
INSERT INTO `cat_municipio` VALUES (1390, 1390, 'San Nicolás', '', 20);
INSERT INTO `cat_municipio` VALUES (1391, 1391, 'San Simón Almolongas', '', 20);
INSERT INTO `cat_municipio` VALUES (1392, 1392, 'San Luis Amatlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1393, 1393, 'San José Lachiguiri', '', 20);
INSERT INTO `cat_municipio` VALUES (1394, 1394, 'Sitio de Xitlapehua', '', 20);
INSERT INTO `cat_municipio` VALUES (1395, 1395, 'San Francisco Logueche', '', 20);
INSERT INTO `cat_municipio` VALUES (1396, 1396, 'Santa Ana', '', 20);
INSERT INTO `cat_municipio` VALUES (1397, 1397, 'Santa Cruz Xitla', '', 20);
INSERT INTO `cat_municipio` VALUES (1398, 1398, 'Monjas', '', 20);
INSERT INTO `cat_municipio` VALUES (1399, 1399, 'San Ildefonso Amatlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1400, 1400, 'Santa Catarina Cuixtla', '', 20);
INSERT INTO `cat_municipio` VALUES (1401, 1401, 'San José del Peñasco', '', 20);
INSERT INTO `cat_municipio` VALUES (1402, 1402, 'San Cristóbal Amatlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1403, 1403, 'San Juan Mixtepec -Dto. 26 -', '', 20);
INSERT INTO `cat_municipio` VALUES (1404, 1404, 'San Pedro Mixtepec -Dto. 26 -', '', 20);
INSERT INTO `cat_municipio` VALUES (1405, 1405, 'Santa Lucía Miahuatlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1406, 1406, 'San Jerónimo Coatlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1407, 1407, 'San Sebastián Coatlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1408, 1408, 'San Pablo Coatlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1409, 1409, 'San Mateo Río Hondo', '', 20);
INSERT INTO `cat_municipio` VALUES (1410, 1410, 'Santo Tomás Tamazulapa', '', 20);
INSERT INTO `cat_municipio` VALUES (1411, 1411, 'San Andrés Paxtlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1412, 1412, 'Santa María Ozolotepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1413, 1413, 'San Miguel Coatlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1414, 1414, 'San Sebastián Río Hondo', '', 20);
INSERT INTO `cat_municipio` VALUES (1415, 1415, 'San Miguel Suchixtepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1416, 1416, 'Santo Domingo Ozolotepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1417, 1417, 'San Francisco Ozolotepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1418, 1418, 'Santiago Xanica', '', 20);
INSERT INTO `cat_municipio` VALUES (1419, 1419, 'San Marcial Ozolotepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1420, 1420, 'San Juan Ozolotepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1421, 1421, 'San Pedro Pochutla', '', 20);
INSERT INTO `cat_municipio` VALUES (1422, 1422, 'Santo Domingo de Morelos', '', 20);
INSERT INTO `cat_municipio` VALUES (1423, 1423, 'Santa Catarina Loxicha', '', 20);
INSERT INTO `cat_municipio` VALUES (1424, 1424, 'San Agustín Loxicha', '', 20);
INSERT INTO `cat_municipio` VALUES (1425, 1425, 'San Baltazar Loxicha', '', 20);
INSERT INTO `cat_municipio` VALUES (1426, 1426, 'Santa María Colotepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1427, 1427, 'San Bartolomé Loxicha', '', 20);
INSERT INTO `cat_municipio` VALUES (1428, 1428, 'Santa María Tonameca', '', 20);
INSERT INTO `cat_municipio` VALUES (1429, 1429, 'Candelaria Loxicha', '', 20);
INSERT INTO `cat_municipio` VALUES (1430, 1430, 'Pluma Hidalgo', '', 20);
INSERT INTO `cat_municipio` VALUES (1431, 1431, 'San Pedro el Alto', '', 20);
INSERT INTO `cat_municipio` VALUES (1432, 1432, 'San Mateo Piñas', '', 20);
INSERT INTO `cat_municipio` VALUES (1433, 1433, 'Santa María Huatulco', '', 20);
INSERT INTO `cat_municipio` VALUES (1434, 1434, 'San Miguel del Puerto', '', 20);
INSERT INTO `cat_municipio` VALUES (1435, 1435, 'Putla Villa de Guerrero', '', 20);
INSERT INTO `cat_municipio` VALUES (1436, 1436, 'Constancia del Rosario', '', 20);
INSERT INTO `cat_municipio` VALUES (1437, 1437, 'Mesones Hidalgo', '', 20);
INSERT INTO `cat_municipio` VALUES (1438, 1438, 'Santa María Zacatepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1439, 1439, 'San Pedro Amuzgos', '', 20);
INSERT INTO `cat_municipio` VALUES (1440, 1440, 'La Reforma', '', 20);
INSERT INTO `cat_municipio` VALUES (1441, 1441, 'Santa María Ipalapa', '', 20);
INSERT INTO `cat_municipio` VALUES (1442, 1442, 'Chalcatongo de Hidalgo', '', 20);
INSERT INTO `cat_municipio` VALUES (1443, 1443, 'Santa María Yucuhiti', '', 20);
INSERT INTO `cat_municipio` VALUES (1444, 1444, 'San Esteban Atatlahuca', '', 20);
INSERT INTO `cat_municipio` VALUES (1445, 1445, 'Santa Catarina Ticuá', '', 20);
INSERT INTO `cat_municipio` VALUES (1446, 1446, 'Santiago Nuyoó', '', 20);
INSERT INTO `cat_municipio` VALUES (1447, 1447, 'Santa Catarina Yosonotú', '', 20);
INSERT INTO `cat_municipio` VALUES (1448, 1448, 'San Miguel el Grande', '', 20);
INSERT INTO `cat_municipio` VALUES (1449, 1449, 'Santo Domingo Ixcatlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1450, 1450, 'San Pablo Tijaltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1451, 1451, 'Santa Cruz Tacahua', '', 20);
INSERT INTO `cat_municipio` VALUES (1452, 1452, 'Santa Lucía Monteverde', '', 20);
INSERT INTO `cat_municipio` VALUES (1453, 1453, 'San Andrés Cabecera Nueva', '', 20);
INSERT INTO `cat_municipio` VALUES (1454, 1454, 'Santa María Yolotepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1455, 1455, 'Santiago Yosondúa', '', 20);
INSERT INTO `cat_municipio` VALUES (1456, 1456, 'Santa Cruz Itundujia', '', 20);
INSERT INTO `cat_municipio` VALUES (1457, 1457, 'Zimatlán de Álvarez', '', 20);
INSERT INTO `cat_municipio` VALUES (1458, 1458, 'San Bernardo Mixtepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1459, 1459, 'Santa Cruz Mixtepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1460, 1460, 'San Miguel Mixtepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1461, 1461, 'Santa María Atzompa', '', 20);
INSERT INTO `cat_municipio` VALUES (1462, 1462, 'San Andrés Ixtlahuaca', '', 20);
INSERT INTO `cat_municipio` VALUES (1463, 1463, 'Santa Cruz Amilpas', '', 20);
INSERT INTO `cat_municipio` VALUES (1464, 1464, 'Santa Cruz Xoxocotlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1465, 1465, 'Santa Lucía del Camino', '', 20);
INSERT INTO `cat_municipio` VALUES (1466, 1466, 'San Pedro Ixtlahuaca', '', 20);
INSERT INTO `cat_municipio` VALUES (1467, 1467, 'San Antonio de la Cal', '', 20);
INSERT INTO `cat_municipio` VALUES (1468, 1468, 'San Agustín de las Juntas', '', 20);
INSERT INTO `cat_municipio` VALUES (1469, 1469, 'San Pablo Huixtepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1470, 1470, 'Ánimas Trujano', '', 20);
INSERT INTO `cat_municipio` VALUES (1471, 1471, 'San Jacinto Tlacotepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1472, 1472, 'San Raymundo Jalpa', '', 20);
INSERT INTO `cat_municipio` VALUES (1473, 1473, 'Trinidad Zaachila', '', 20);
INSERT INTO `cat_municipio` VALUES (1474, 1474, 'Santa María Coyotepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1475, 1475, 'San Bartolo Coyotepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1476, 1476, 'Santa Inés Yatzeche', '', 20);
INSERT INTO `cat_municipio` VALUES (1477, 1477, 'Ciénega de Zimatlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1478, 1478, 'San Antonio Huitepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1479, 1479, 'Villa de Zaachila', '', 20);
INSERT INTO `cat_municipio` VALUES (1480, 1480, 'San Sebastián Tutla', '', 20);
INSERT INTO `cat_municipio` VALUES (1481, 1481, 'San Miguel Peras', '', 20);
INSERT INTO `cat_municipio` VALUES (1482, 1482, 'San Pablo Cuatro Venados', '', 20);
INSERT INTO `cat_municipio` VALUES (1483, 1483, 'Santa Inés del Monte', '', 20);
INSERT INTO `cat_municipio` VALUES (1484, 1484, 'Santa Gertrudis', '', 20);
INSERT INTO `cat_municipio` VALUES (1485, 1485, 'San Antonino el Alto', '', 20);
INSERT INTO `cat_municipio` VALUES (1486, 1486, 'Magdalena Mixtepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1487, 1487, 'Santa Catarina Quiané', '', 20);
INSERT INTO `cat_municipio` VALUES (1488, 1488, 'Ayoquezco de Aldama', '', 20);
INSERT INTO `cat_municipio` VALUES (1489, 1489, 'Santa Ana Tlapacoya', '', 20);
INSERT INTO `cat_municipio` VALUES (1490, 1490, 'Santa Cruz Zenzontepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1491, 1491, 'San Francisco Cahuacuá', '', 20);
INSERT INTO `cat_municipio` VALUES (1492, 1492, 'San Mateo Yucutindoo', '', 20);
INSERT INTO `cat_municipio` VALUES (1493, 1493, 'Santiago Textitlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1494, 1494, 'Santiago Amoltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1495, 1495, 'Santa María Zaniza', '', 20);
INSERT INTO `cat_municipio` VALUES (1496, 1496, 'Santo Domingo Teojomulco', '', 20);
INSERT INTO `cat_municipio` VALUES (1497, 1497, 'Cuilápam de Guerrero', '', 20);
INSERT INTO `cat_municipio` VALUES (1498, 1498, 'Villa Sola de Vega', '', 20);
INSERT INTO `cat_municipio` VALUES (1499, 1499, 'Santa María Lachixío', '', 20);
INSERT INTO `cat_municipio` VALUES (1500, 1500, 'San Vicente Lachixío', '', 20);
INSERT INTO `cat_municipio` VALUES (1501, 1501, 'San Lorenzo Texmelúca', '', 20);
INSERT INTO `cat_municipio` VALUES (1502, 1502, 'Santa María Sola', '', 20);
INSERT INTO `cat_municipio` VALUES (1503, 1503, 'San Francisco Sola', '', 20);
INSERT INTO `cat_municipio` VALUES (1504, 1504, 'San Ildefonso Sola', '', 20);
INSERT INTO `cat_municipio` VALUES (1505, 1505, 'Santiago Minas', '', 20);
INSERT INTO `cat_municipio` VALUES (1506, 1506, 'Heroica Ciudad de Ejutla de Crespo', '', 20);
INSERT INTO `cat_municipio` VALUES (1507, 1507, 'San Martín Tilcajete', '', 20);
INSERT INTO `cat_municipio` VALUES (1508, 1508, 'Santo Tomás Jalieza', '', 20);
INSERT INTO `cat_municipio` VALUES (1509, 1509, 'San Juan Chilateca', '', 20);
INSERT INTO `cat_municipio` VALUES (1510, 1510, 'Ocotlán de Morelos', '', 20);
INSERT INTO `cat_municipio` VALUES (1511, 1511, 'Santa Ana Zegache', '', 20);
INSERT INTO `cat_municipio` VALUES (1512, 1512, 'Santiago Apóstol', '', 20);
INSERT INTO `cat_municipio` VALUES (1513, 1513, 'San Antonino Castillo Velasco', '', 20);
INSERT INTO `cat_municipio` VALUES (1514, 1514, 'Asunción Ocotlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1515, 1515, 'San Pedro Mártir', '', 20);
INSERT INTO `cat_municipio` VALUES (1516, 1516, 'San Dionisio Ocotlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1517, 1517, 'Magdalena Ocotlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1518, 1518, 'San Miguel Tilquiápam', '', 20);
INSERT INTO `cat_municipio` VALUES (1519, 1519, 'Santa Catarina Minas', '', 20);
INSERT INTO `cat_municipio` VALUES (1520, 1520, 'San Baltazar Chichicápam', '', 20);
INSERT INTO `cat_municipio` VALUES (1521, 1521, 'San Pedro Apóstol', '', 20);
INSERT INTO `cat_municipio` VALUES (1522, 1522, 'Santa Lucía Ocotlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1523, 1523, 'San Jerónimo Taviche', '', 20);
INSERT INTO `cat_municipio` VALUES (1524, 1524, 'San Andrés Zabache', '', 20);
INSERT INTO `cat_municipio` VALUES (1525, 1525, 'San José del Progreso', '', 20);
INSERT INTO `cat_municipio` VALUES (1526, 1526, 'Yaxe', '', 20);
INSERT INTO `cat_municipio` VALUES (1527, 1527, 'San Pedro Taviche', '', 20);
INSERT INTO `cat_municipio` VALUES (1528, 1528, 'San Martín de los Cansecos', '', 20);
INSERT INTO `cat_municipio` VALUES (1529, 1529, 'San Martín Lachilá', '', 20);
INSERT INTO `cat_municipio` VALUES (1530, 1530, 'La Pe', '', 20);
INSERT INTO `cat_municipio` VALUES (1531, 1531, 'La Compañía', '', 20);
INSERT INTO `cat_municipio` VALUES (1532, 1532, 'Coatecas Altas', '', 20);
INSERT INTO `cat_municipio` VALUES (1533, 1533, 'San Juan Lachigalla', '', 20);
INSERT INTO `cat_municipio` VALUES (1534, 1534, 'San Agustín Amatengo', '', 20);
INSERT INTO `cat_municipio` VALUES (1535, 1535, 'Taniche', '', 20);
INSERT INTO `cat_municipio` VALUES (1536, 1536, 'San Miguel Ejutla', '', 20);
INSERT INTO `cat_municipio` VALUES (1537, 1537, 'Yogana', '', 20);
INSERT INTO `cat_municipio` VALUES (1538, 1538, 'San Vicente Coatlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1539, 1539, 'Santiago Pinotepa Nacional', '', 20);
INSERT INTO `cat_municipio` VALUES (1540, 1540, 'San Juan Cacahuatepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1541, 1541, 'San Juan Bautista Lo de Soto', '', 20);
INSERT INTO `cat_municipio` VALUES (1542, 1542, 'Mártires de Tacubaya', '', 20);
INSERT INTO `cat_municipio` VALUES (1543, 1543, 'San Sebastián Ixcapa', '', 20);
INSERT INTO `cat_municipio` VALUES (1544, 1544, 'San Antonio Tepetlapa', '', 20);
INSERT INTO `cat_municipio` VALUES (1545, 1545, 'Santa María Cortijo', '', 20);
INSERT INTO `cat_municipio` VALUES (1546, 1546, 'Santiago Llano Grande', '', 20);
INSERT INTO `cat_municipio` VALUES (1547, 1547, 'San Miguel Tlacamama', '', 20);
INSERT INTO `cat_municipio` VALUES (1548, 1548, 'Santiago Tapextla', '', 20);
INSERT INTO `cat_municipio` VALUES (1549, 1549, 'San José Estancia Grande', '', 20);
INSERT INTO `cat_municipio` VALUES (1550, 1550, 'Santo Domingo Armenta', '', 20);
INSERT INTO `cat_municipio` VALUES (1551, 1551, 'Santiago Jamiltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1552, 1552, 'San Pedro Atoyac', '', 20);
INSERT INTO `cat_municipio` VALUES (1553, 1553, 'San Juan Colorado', '', 20);
INSERT INTO `cat_municipio` VALUES (1554, 1554, 'Santiago Ixtayutla', '', 20);
INSERT INTO `cat_municipio` VALUES (1555, 1555, 'San Pedro Jicayá', '', 20);
INSERT INTO `cat_municipio` VALUES (1556, 1556, 'Pinotepa de Don Luis', '', 20);
INSERT INTO `cat_municipio` VALUES (1557, 1557, 'San Lorenzo', '', 20);
INSERT INTO `cat_municipio` VALUES (1558, 1558, 'San Agustín Chayuco', '', 20);
INSERT INTO `cat_municipio` VALUES (1559, 1559, 'San Andrés Huaxpaltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1560, 1560, 'Santa Catarina Mechoacá', '', 20);
INSERT INTO `cat_municipio` VALUES (1561, 1561, 'Santiago Tetepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1562, 1562, 'Santa María Huazolotitlá', '', 20);
INSERT INTO `cat_municipio` VALUES (1563, 1563, 'Villa de Tututepec de Melchor Ocampo', '', 20);
INSERT INTO `cat_municipio` VALUES (1564, 1564, 'Tataltepec de Valdés', '', 20);
INSERT INTO `cat_municipio` VALUES (1565, 1565, 'San Juan Quiahije', '', 20);
INSERT INTO `cat_municipio` VALUES (1566, 1566, 'San Miguel Panixtlahuaca', '', 20);
INSERT INTO `cat_municipio` VALUES (1567, 1567, 'Santa Catarina Juquila', '', 20);
INSERT INTO `cat_municipio` VALUES (1568, 1568, 'San Pedro Juchatengo', '', 20);
INSERT INTO `cat_municipio` VALUES (1569, 1569, 'Santiago Yaitepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1570, 1570, 'San Juan Lachao', '', 20);
INSERT INTO `cat_municipio` VALUES (1571, 1571, 'Santa María Temaxcaltepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1572, 1572, 'Santos Reyes Nopala', '', 20);
INSERT INTO `cat_municipio` VALUES (1573, 1573, 'San Gabriel Mixtepec', '', 20);
INSERT INTO `cat_municipio` VALUES (1574, 1574, 'San Pedro Mixtepec -Dto. 22 -', '', 20);
INSERT INTO `cat_municipio` VALUES (1575, 1575, 'Puebla', '', 21);
INSERT INTO `cat_municipio` VALUES (1576, 1576, 'Tlaltenango', '', 21);
INSERT INTO `cat_municipio` VALUES (1577, 1577, 'San Miguel Xoxtla', '', 21);
INSERT INTO `cat_municipio` VALUES (1578, 1578, 'Juan C. Bonilla', '', 21);
INSERT INTO `cat_municipio` VALUES (1579, 1579, 'Coronango', '', 21);
INSERT INTO `cat_municipio` VALUES (1580, 1580, 'Cuautlancingo', '', 21);
INSERT INTO `cat_municipio` VALUES (1581, 1581, 'San Pedro Cholula', '', 21);
INSERT INTO `cat_municipio` VALUES (1582, 1582, 'San Andrés Cholula', '', 21);
INSERT INTO `cat_municipio` VALUES (1583, 1583, 'Ocoyuca', '', 21);
INSERT INTO `cat_municipio` VALUES (1584, 1584, 'Amozoc', '', 21);
INSERT INTO `cat_municipio` VALUES (1585, 1585, 'Francisco Z. Mena', '', 21);
INSERT INTO `cat_municipio` VALUES (1586, 1586, 'Pantepec', '', 21);
INSERT INTO `cat_municipio` VALUES (1587, 1587, 'Venustiano Carranza', '', 21);
INSERT INTO `cat_municipio` VALUES (1588, 1588, 'Jalpa', '', 21);
INSERT INTO `cat_municipio` VALUES (1589, 1589, 'Tlaxco', '', 21);
INSERT INTO `cat_municipio` VALUES (1590, 1590, 'Tlacuilotepec', '', 21);
INSERT INTO `cat_municipio` VALUES (1591, 1591, 'Xicotepec', '', 21);
INSERT INTO `cat_municipio` VALUES (1592, 1592, 'Pahuatlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1593, 1593, 'Honey', '', 21);
INSERT INTO `cat_municipio` VALUES (1594, 1594, 'Naupa', '', 21);
INSERT INTO `cat_municipio` VALUES (1595, 1595, 'Huauchinango', '', 21);
INSERT INTO `cat_municipio` VALUES (1596, 1596, 'Ahuazotepec', '', 21);
INSERT INTO `cat_municipio` VALUES (1597, 1597, 'Juan Galindo', '', 21);
INSERT INTO `cat_municipio` VALUES (1598, 1598, 'Tlaola', '', 21);
INSERT INTO `cat_municipio` VALUES (1599, 1599, 'Zihuateutla', '', 21);
INSERT INTO `cat_municipio` VALUES (1600, 1600, 'Jopala', '', 21);
INSERT INTO `cat_municipio` VALUES (1601, 1601, 'Tlapacoya', '', 21);
INSERT INTO `cat_municipio` VALUES (1602, 1602, 'Chignahuapa', '', 21);
INSERT INTO `cat_municipio` VALUES (1603, 1603, 'Zacatlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1604, 1604, 'Chiconcuautla', '', 21);
INSERT INTO `cat_municipio` VALUES (1605, 1605, 'Ahuacatlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1606, 1606, 'Tepetzintla', '', 21);
INSERT INTO `cat_municipio` VALUES (1607, 1607, 'San Felipe Tepatlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1608, 1608, 'Amixtlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1609, 1609, 'Tepango de Rodríguez', '', 21);
INSERT INTO `cat_municipio` VALUES (1610, 1610, 'Zongozotla', '', 21);
INSERT INTO `cat_municipio` VALUES (1611, 1611, 'Hermenegildo Galeana', '', 21);
INSERT INTO `cat_municipio` VALUES (1612, 1612, 'Olintla', '', 21);
INSERT INTO `cat_municipio` VALUES (1613, 1613, 'Coatepec', '', 21);
INSERT INTO `cat_municipio` VALUES (1614, 1614, 'Camocuautla', '', 21);
INSERT INTO `cat_municipio` VALUES (1615, 1615, 'Hueytlalpa', '', 21);
INSERT INTO `cat_municipio` VALUES (1616, 1616, 'Zapotitlán de Méndez', '', 21);
INSERT INTO `cat_municipio` VALUES (1617, 1617, 'Huitzilan de Serdá', '', 21);
INSERT INTO `cat_municipio` VALUES (1618, 1618, 'Xochitlán de Vicente Suárez', '', 21);
INSERT INTO `cat_municipio` VALUES (1619, 1619, 'Huehuetla', '', 21);
INSERT INTO `cat_municipio` VALUES (1620, 1620, 'Ixtepec', '', 21);
INSERT INTO `cat_municipio` VALUES (1621, 1621, 'Atlequizaya', '', 21);
INSERT INTO `cat_municipio` VALUES (1622, 1622, 'Tenampulco', '', 21);
INSERT INTO `cat_municipio` VALUES (1623, 1623, 'Tuzamapan de Galeana', '', 21);
INSERT INTO `cat_municipio` VALUES (1624, 1624, 'Caxhuaca', '', 21);
INSERT INTO `cat_municipio` VALUES (1625, 1625, 'Jonotla', '', 21);
INSERT INTO `cat_municipio` VALUES (1626, 1626, 'Zoquiapa', '', 21);
INSERT INTO `cat_municipio` VALUES (1627, 1627, 'Nauzontla', '', 21);
INSERT INTO `cat_municipio` VALUES (1628, 1628, 'Cuetzalan del Progreso', '', 21);
INSERT INTO `cat_municipio` VALUES (1629, 1629, 'Ayotoxco de Guerrero', '', 21);
INSERT INTO `cat_municipio` VALUES (1630, 1630, 'Hueytamalco', '', 21);
INSERT INTO `cat_municipio` VALUES (1631, 1631, 'Acateno', '', 21);
INSERT INTO `cat_municipio` VALUES (1632, 1632, 'Cuautempa', '', 21);
INSERT INTO `cat_municipio` VALUES (1633, 1633, 'Aquixtla', '', 21);
INSERT INTO `cat_municipio` VALUES (1634, 1634, 'Tetela de Ocampo', '', 21);
INSERT INTO `cat_municipio` VALUES (1635, 1635, 'Xochiapulco', '', 21);
INSERT INTO `cat_municipio` VALUES (1636, 1636, 'Zacapoaxtla', '', 21);
INSERT INTO `cat_municipio` VALUES (1637, 1637, 'Zaragoza', '', 21);
INSERT INTO `cat_municipio` VALUES (1638, 1638, 'Ixtacamaxtitlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1639, 1639, 'Zautla', '', 21);
INSERT INTO `cat_municipio` VALUES (1640, 1640, 'Ocotepec', '', 21);
INSERT INTO `cat_municipio` VALUES (1641, 1641, 'Libres', '', 21);
INSERT INTO `cat_municipio` VALUES (1642, 1642, 'Teziutlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1643, 1643, 'Tlatlauquitepec', '', 21);
INSERT INTO `cat_municipio` VALUES (1644, 1644, 'Yaonáhuac', '', 21);
INSERT INTO `cat_municipio` VALUES (1645, 1645, 'Hueyapa', '', 21);
INSERT INTO `cat_municipio` VALUES (1646, 1646, 'Teteles de Avila Castillo', '', 21);
INSERT INTO `cat_municipio` VALUES (1647, 1647, 'Atempa', '', 21);
INSERT INTO `cat_municipio` VALUES (1648, 1648, 'Chignautla', '', 21);
INSERT INTO `cat_municipio` VALUES (1649, 1649, 'Xiutetelco', '', 21);
INSERT INTO `cat_municipio` VALUES (1650, 1650, 'Cuyoaco', '', 21);
INSERT INTO `cat_municipio` VALUES (1651, 1651, 'Tepeyahualco', '', 21);
INSERT INTO `cat_municipio` VALUES (1652, 1652, 'San Martín Texmeluca', '', 21);
INSERT INTO `cat_municipio` VALUES (1653, 1653, 'Tlahuapa', '', 21);
INSERT INTO `cat_municipio` VALUES (1654, 1654, 'San Matías Tlalancaleca', '', 21);
INSERT INTO `cat_municipio` VALUES (1655, 1655, 'San Salvador el Verde', '', 21);
INSERT INTO `cat_municipio` VALUES (1656, 1656, 'San Felipe Teotlalcingo', '', 21);
INSERT INTO `cat_municipio` VALUES (1657, 1657, 'Chiautzingo', '', 21);
INSERT INTO `cat_municipio` VALUES (1658, 1658, 'Huejotzingo', '', 21);
INSERT INTO `cat_municipio` VALUES (1659, 1659, 'Domingo Arenas', '', 21);
INSERT INTO `cat_municipio` VALUES (1660, 1660, 'Calpa', '', 21);
INSERT INTO `cat_municipio` VALUES (1661, 1661, 'San Nicolás de los Ranchos', '', 21);
INSERT INTO `cat_municipio` VALUES (1662, 1662, 'Atlixco', '', 21);
INSERT INTO `cat_municipio` VALUES (1663, 1663, 'Nealtica', '', 21);
INSERT INTO `cat_municipio` VALUES (1664, 1664, 'San Jerónimo Tecuanipa', '', 21);
INSERT INTO `cat_municipio` VALUES (1665, 1665, 'San Gregorio Atzompa', '', 21);
INSERT INTO `cat_municipio` VALUES (1666, 1666, 'Tochimilco', '', 21);
INSERT INTO `cat_municipio` VALUES (1667, 1667, 'Tianguismanalco', '', 21);
INSERT INTO `cat_municipio` VALUES (1668, 1668, 'Santa Isabel Cholula', '', 21);
INSERT INTO `cat_municipio` VALUES (1669, 1669, 'Huaquechula', '', 21);
INSERT INTO `cat_municipio` VALUES (1670, 1670, 'San Diego la Mesa Tochimiltzingo', '', 21);
INSERT INTO `cat_municipio` VALUES (1671, 1671, 'Tepeojuma', '', 21);
INSERT INTO `cat_municipio` VALUES (1672, 1672, 'Izúcar de Matamoros', '', 21);
INSERT INTO `cat_municipio` VALUES (1673, 1673, 'Atzitzihuacá', '', 21);
INSERT INTO `cat_municipio` VALUES (1674, 1674, 'Acteopa', '', 21);
INSERT INTO `cat_municipio` VALUES (1675, 1675, 'Cohueca', '', 21);
INSERT INTO `cat_municipio` VALUES (1676, 1676, 'Tepemaxalco', '', 21);
INSERT INTO `cat_municipio` VALUES (1677, 1677, 'Tlapanalá', '', 21);
INSERT INTO `cat_municipio` VALUES (1678, 1678, 'Tepexco', '', 21);
INSERT INTO `cat_municipio` VALUES (1679, 1679, 'Tilapa', '', 21);
INSERT INTO `cat_municipio` VALUES (1680, 1680, 'Chietla', '', 21);
INSERT INTO `cat_municipio` VALUES (1681, 1681, 'Atzala', '', 21);
INSERT INTO `cat_municipio` VALUES (1682, 1682, 'Teopantlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1683, 1683, 'San Martín Totoltepec', '', 21);
INSERT INTO `cat_municipio` VALUES (1684, 1684, 'Xochiltepec', '', 21);
INSERT INTO `cat_municipio` VALUES (1685, 1685, 'Epatlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1686, 1686, 'Ahuatlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1687, 1687, 'Coatzingo', '', 21);
INSERT INTO `cat_municipio` VALUES (1688, 1688, 'Santa Catarina Tlaltempa', '', 21);
INSERT INTO `cat_municipio` VALUES (1689, 1689, 'Chigmecatitlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1690, 1690, 'Zacapala', '', 21);
INSERT INTO `cat_municipio` VALUES (1691, 1691, 'Tepexi de Rodríguez', '', 21);
INSERT INTO `cat_municipio` VALUES (1692, 1692, 'Teotlalco', '', 21);
INSERT INTO `cat_municipio` VALUES (1693, 1693, 'Jolalpa', '', 21);
INSERT INTO `cat_municipio` VALUES (1694, 1694, 'Huehuetlán el Chico', '', 21);
INSERT INTO `cat_municipio` VALUES (1695, 1695, 'Chiautla', '', 21);
INSERT INTO `cat_municipio` VALUES (1696, 1696, 'Cohetzala', '', 21);
INSERT INTO `cat_municipio` VALUES (1697, 1697, 'Xicotlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1698, 1698, 'Chila de la Sal', '', 21);
INSERT INTO `cat_municipio` VALUES (1699, 1699, 'Ixcamilpa de Guerrero', '', 21);
INSERT INTO `cat_municipio` VALUES (1700, 1700, 'Albino Zertuche', '', 21);
INSERT INTO `cat_municipio` VALUES (1701, 1701, 'Tulcingo', '', 21);
INSERT INTO `cat_municipio` VALUES (1702, 1702, 'Tehuitzingo', '', 21);
INSERT INTO `cat_municipio` VALUES (1703, 1703, 'Cuayuca de Andrade', '', 21);
INSERT INTO `cat_municipio` VALUES (1704, 1704, 'Santa Inés Ahuatempa', '', 21);
INSERT INTO `cat_municipio` VALUES (1705, 1705, 'Axutla', '', 21);
INSERT INTO `cat_municipio` VALUES (1706, 1706, 'Chinantla', '', 21);
INSERT INTO `cat_municipio` VALUES (1707, 1707, 'Ahuehuetitla', '', 21);
INSERT INTO `cat_municipio` VALUES (1708, 1708, 'San Pablo Anicano', '', 21);
INSERT INTO `cat_municipio` VALUES (1709, 1709, 'Tecomatlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1710, 1710, 'Piaxtla', '', 21);
INSERT INTO `cat_municipio` VALUES (1711, 1711, 'Guadalupe', '', 21);
INSERT INTO `cat_municipio` VALUES (1712, 1712, 'Ixcaquixtla', '', 21);
INSERT INTO `cat_municipio` VALUES (1713, 1713, 'Coyotepec', '', 21);
INSERT INTO `cat_municipio` VALUES (1714, 1714, 'Xayacatlán de Bravo', '', 21);
INSERT INTO `cat_municipio` VALUES (1715, 1715, 'Totoltepec de Guerrero', '', 21);
INSERT INTO `cat_municipio` VALUES (1716, 1716, 'Acatlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1717, 1717, 'San Jerónimo Xayacatlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1718, 1718, 'San Pedro Yeloixtlahuaca', '', 21);
INSERT INTO `cat_municipio` VALUES (1719, 1719, 'Petlalcingo', '', 21);
INSERT INTO `cat_municipio` VALUES (1720, 1720, 'San Miguel Ixitlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1721, 1721, 'Chila', '', 21);
INSERT INTO `cat_municipio` VALUES (1722, 1722, 'Rafael Lara Grajales', '', 21);
INSERT INTO `cat_municipio` VALUES (1723, 1723, 'San José Chiapa', '', 21);
INSERT INTO `cat_municipio` VALUES (1724, 1724, 'Oriental', '', 21);
INSERT INTO `cat_municipio` VALUES (1725, 1725, 'San Nicolás Buenos Aires', '', 21);
INSERT INTO `cat_municipio` VALUES (1726, 1726, 'Guadalupe Victoria', '', 21);
INSERT INTO `cat_municipio` VALUES (1727, 1727, 'Tlachichuca', '', 21);
INSERT INTO `cat_municipio` VALUES (1728, 1728, 'Lafragua', '', 21);
INSERT INTO `cat_municipio` VALUES (1729, 1729, 'Chilchotla', '', 21);
INSERT INTO `cat_municipio` VALUES (1730, 1730, 'Quimixtlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1731, 1731, 'Chichiquila', '', 21);
INSERT INTO `cat_municipio` VALUES (1732, 1732, 'Tepatlaxco de Hidalgo', '', 21);
INSERT INTO `cat_municipio` VALUES (1733, 1733, 'Acajete', '', 21);
INSERT INTO `cat_municipio` VALUES (1734, 1734, 'Nopaluca', '', 21);
INSERT INTO `cat_municipio` VALUES (1735, 1735, 'Mazapiltepec de Juárez', '', 21);
INSERT INTO `cat_municipio` VALUES (1736, 1736, 'Soltepec', '', 21);
INSERT INTO `cat_municipio` VALUES (1737, 1737, 'Acatzingo', '', 21);
INSERT INTO `cat_municipio` VALUES (1738, 1738, 'San Salvador el Seco', '', 21);
INSERT INTO `cat_municipio` VALUES (1739, 1739, 'General Felipe Ángeles', '', 21);
INSERT INTO `cat_municipio` VALUES (1740, 1740, 'Aljojuca', '', 21);
INSERT INTO `cat_municipio` VALUES (1741, 1741, 'San Juan Atenco', '', 21);
INSERT INTO `cat_municipio` VALUES (1742, 1742, 'Tepeaca', '', 21);
INSERT INTO `cat_municipio` VALUES (1743, 1743, 'Cuautinchá', '', 21);
INSERT INTO `cat_municipio` VALUES (1744, 1744, 'Tecali de Herrera', '', 21);
INSERT INTO `cat_municipio` VALUES (1745, 1745, 'Mixtla', '', 21);
INSERT INTO `cat_municipio` VALUES (1746, 1746, 'Santo Tomás Hueyotlipa', '', 21);
INSERT INTO `cat_municipio` VALUES (1747, 1747, 'Tzicatlacoya', '', 21);
INSERT INTO `cat_municipio` VALUES (1748, 1748, 'Huehuetlán el Grande', '', 21);
INSERT INTO `cat_municipio` VALUES (1749, 1749, 'La Magdalena Tlatlauquitepec', '', 21);
INSERT INTO `cat_municipio` VALUES (1750, 1750, 'San Juan Atzompa', '', 21);
INSERT INTO `cat_municipio` VALUES (1751, 1751, 'Huatlatlauca', '', 21);
INSERT INTO `cat_municipio` VALUES (1752, 1752, 'Los Reyes de Juárez', '', 21);
INSERT INTO `cat_municipio` VALUES (1753, 1753, 'Cuapiaxtla de Madero', '', 21);
INSERT INTO `cat_municipio` VALUES (1754, 1754, 'San Salvador Huixcolotla', '', 21);
INSERT INTO `cat_municipio` VALUES (1755, 1755, 'Quecholac', '', 21);
INSERT INTO `cat_municipio` VALUES (1756, 1756, 'Tecamachalco', '', 21);
INSERT INTO `cat_municipio` VALUES (1757, 1757, 'Palmar de Bravo', '', 21);
INSERT INTO `cat_municipio` VALUES (1758, 1758, 'Chalchicomula de Sesma', '', 21);
INSERT INTO `cat_municipio` VALUES (1759, 1759, 'Atzitzintla', '', 21);
INSERT INTO `cat_municipio` VALUES (1760, 1760, 'Esperanza', '', 21);
INSERT INTO `cat_municipio` VALUES (1761, 1761, 'Cañada Morelos', '', 21);
INSERT INTO `cat_municipio` VALUES (1762, 1762, 'Tlanepantla', '', 21);
INSERT INTO `cat_municipio` VALUES (1763, 1763, 'Tochtepec', '', 21);
INSERT INTO `cat_municipio` VALUES (1764, 1764, 'Atoyatempa', '', 21);
INSERT INTO `cat_municipio` VALUES (1765, 1765, 'Tepeyahualco de Cuauhtémoc', '', 21);
INSERT INTO `cat_municipio` VALUES (1766, 1766, 'Huitziltepec', '', 21);
INSERT INTO `cat_municipio` VALUES (1767, 1767, 'Molcaxac', '', 21);
INSERT INTO `cat_municipio` VALUES (1768, 1768, 'Xochitlán Todos Santos', '', 21);
INSERT INTO `cat_municipio` VALUES (1769, 1769, 'Yehualtepec', '', 21);
INSERT INTO `cat_municipio` VALUES (1770, 1770, 'Tlacotepec de Benito Juárez', '', 21);
INSERT INTO `cat_municipio` VALUES (1771, 1771, 'Juan N. Méndez', '', 21);
INSERT INTO `cat_municipio` VALUES (1772, 1772, 'Tehuacá', '', 21);
INSERT INTO `cat_municipio` VALUES (1773, 1773, 'Tepanco de López', '', 21);
INSERT INTO `cat_municipio` VALUES (1774, 1774, 'Chapulco', '', 21);
INSERT INTO `cat_municipio` VALUES (1775, 1775, 'Santiago Miahuatlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1776, 1776, 'Nicolás Bravo', '', 21);
INSERT INTO `cat_municipio` VALUES (1777, 1777, 'Atexcal', '', 21);
INSERT INTO `cat_municipio` VALUES (1778, 1778, 'San Antonio Cañada', '', 21);
INSERT INTO `cat_municipio` VALUES (1779, 1779, 'Zapotitlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1780, 1780, 'San Gabriel Chilac', '', 21);
INSERT INTO `cat_municipio` VALUES (1781, 1781, 'Caltepec', '', 21);
INSERT INTO `cat_municipio` VALUES (1782, 1782, 'Vicente Guerrero', '', 21);
INSERT INTO `cat_municipio` VALUES (1783, 1783, 'Ajalpa', '', 21);
INSERT INTO `cat_municipio` VALUES (1784, 1784, 'Eloxochitlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1785, 1785, 'Zoquitlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1786, 1786, 'San Sebastián Tlacotepec', '', 21);
INSERT INTO `cat_municipio` VALUES (1787, 1787, 'Altepexi', '', 21);
INSERT INTO `cat_municipio` VALUES (1788, 1788, 'Zinacatepec', '', 21);
INSERT INTO `cat_municipio` VALUES (1789, 1789, 'San José Miahuatlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1790, 1790, 'Coxcatlá', '', 21);
INSERT INTO `cat_municipio` VALUES (1791, 1791, 'Coyomeapa', '', 21);
INSERT INTO `cat_municipio` VALUES (1792, 1792, 'Querétaro', '', 22);
INSERT INTO `cat_municipio` VALUES (1793, 1793, 'El Marqués', '', 22);
INSERT INTO `cat_municipio` VALUES (1794, 1794, 'Coló', '', 22);
INSERT INTO `cat_municipio` VALUES (1795, 1795, 'Pinal de Amoles', '', 22);
INSERT INTO `cat_municipio` VALUES (1796, 1796, 'Jalpan de Serra', '', 22);
INSERT INTO `cat_municipio` VALUES (1797, 1797, 'Landa de Matamoros', '', 22);
INSERT INTO `cat_municipio` VALUES (1798, 1798, 'Arroyo Seco', '', 22);
INSERT INTO `cat_municipio` VALUES (1799, 1799, 'Peñamiller', '', 22);
INSERT INTO `cat_municipio` VALUES (1800, 1800, 'Cadereyta de Montes', '', 22);
INSERT INTO `cat_municipio` VALUES (1801, 1801, 'San Joaquí', '', 22);
INSERT INTO `cat_municipio` VALUES (1802, 1802, 'Tolimá', '', 22);
INSERT INTO `cat_municipio` VALUES (1803, 1803, 'Ezequiel Montes', '', 22);
INSERT INTO `cat_municipio` VALUES (1804, 1804, 'Pedro Escobedo', '', 22);
INSERT INTO `cat_municipio` VALUES (1805, 1805, 'Tequisquiapa', '', 22);
INSERT INTO `cat_municipio` VALUES (1806, 1806, 'San Juan del Río', '', 22);
INSERT INTO `cat_municipio` VALUES (1807, 1807, 'Amealco de Bonfil', '', 22);
INSERT INTO `cat_municipio` VALUES (1808, 1808, 'Corregidora', '', 22);
INSERT INTO `cat_municipio` VALUES (1809, 1809, 'Huimilpa', '', 22);
INSERT INTO `cat_municipio` VALUES (1810, 1810, 'Othón P. Blanco', '', 23);
INSERT INTO `cat_municipio` VALUES (1811, 1811, 'Felipe Carrillo Puerto', '', 23);
INSERT INTO `cat_municipio` VALUES (1812, 1812, 'Lázaro Cárdenas', '', 23);
INSERT INTO `cat_municipio` VALUES (1813, 1813, 'Isla Mujeres', '', 23);
INSERT INTO `cat_municipio` VALUES (1814, 1814, 'Benito Juárez', '', 23);
INSERT INTO `cat_municipio` VALUES (1815, 1815, 'Puerto Morelos', '', 23);
INSERT INTO `cat_municipio` VALUES (1816, 1816, 'Cozumel', '', 23);
INSERT INTO `cat_municipio` VALUES (1817, 1817, 'Solidaridad', '', 23);
INSERT INTO `cat_municipio` VALUES (1818, 1818, 'Tulum', '', 23);
INSERT INTO `cat_municipio` VALUES (1819, 1819, 'José María Morelos', '', 23);
INSERT INTO `cat_municipio` VALUES (1820, 1820, 'Bacalar', '', 23);
INSERT INTO `cat_municipio` VALUES (1821, 1821, 'San Luis Potosí', '', 24);
INSERT INTO `cat_municipio` VALUES (1822, 1822, 'Soledad de Graciano Sánchez', '', 24);
INSERT INTO `cat_municipio` VALUES (1823, 1823, 'Cerro de San Pedro', '', 24);
INSERT INTO `cat_municipio` VALUES (1824, 1824, 'Ahualulco', '', 24);
INSERT INTO `cat_municipio` VALUES (1825, 1825, 'Mexquitic de Carmona', '', 24);
INSERT INTO `cat_municipio` VALUES (1826, 1826, 'Villa de Arriaga', '', 24);
INSERT INTO `cat_municipio` VALUES (1827, 1827, 'Vanegas', '', 24);
INSERT INTO `cat_municipio` VALUES (1828, 1828, 'Cedral', '', 24);
INSERT INTO `cat_municipio` VALUES (1829, 1829, 'Catorce', '', 24);
INSERT INTO `cat_municipio` VALUES (1830, 1830, 'Charcas', '', 24);
INSERT INTO `cat_municipio` VALUES (1831, 1831, 'Salinas', '', 24);
INSERT INTO `cat_municipio` VALUES (1832, 1832, 'Santo Domingo', '', 24);
INSERT INTO `cat_municipio` VALUES (1833, 1833, 'Villa de Ramos', '', 24);
INSERT INTO `cat_municipio` VALUES (1834, 1834, 'Matehuala', '', 24);
INSERT INTO `cat_municipio` VALUES (1835, 1835, 'Villa de la Paz', '', 24);
INSERT INTO `cat_municipio` VALUES (1836, 1836, 'Villa de Guadalupe', '', 24);
INSERT INTO `cat_municipio` VALUES (1837, 1837, 'Guadalcázar', '', 24);
INSERT INTO `cat_municipio` VALUES (1838, 1838, 'Moctezuma', '', 24);
INSERT INTO `cat_municipio` VALUES (1839, 1839, 'Venado', '', 24);
INSERT INTO `cat_municipio` VALUES (1840, 1840, 'Villa de Arista', '', 24);
INSERT INTO `cat_municipio` VALUES (1841, 1841, 'Villa Hidalgo', '', 24);
INSERT INTO `cat_municipio` VALUES (1842, 1842, 'Armadillo de los Infante', '', 24);
INSERT INTO `cat_municipio` VALUES (1843, 1843, 'Ciudad Valles', '', 24);
INSERT INTO `cat_municipio` VALUES (1844, 1844, 'Ebano', '', 24);
INSERT INTO `cat_municipio` VALUES (1845, 1845, 'Tamuí', '', 24);
INSERT INTO `cat_municipio` VALUES (1846, 1846, 'El Naranjo', '', 24);
INSERT INTO `cat_municipio` VALUES (1847, 1847, 'Ciudad del Maíz', '', 24);
INSERT INTO `cat_municipio` VALUES (1848, 1848, 'Alaquines', '', 24);
INSERT INTO `cat_municipio` VALUES (1849, 1849, 'Cárdenas', '', 24);
INSERT INTO `cat_municipio` VALUES (1850, 1850, 'Cerritos', '', 24);
INSERT INTO `cat_municipio` VALUES (1851, 1851, 'Villa Juárez', '', 24);
INSERT INTO `cat_municipio` VALUES (1852, 1852, 'San Nicolás Tolentino', '', 24);
INSERT INTO `cat_municipio` VALUES (1853, 1853, 'Villa de Reyes', '', 24);
INSERT INTO `cat_municipio` VALUES (1854, 1854, 'Zaragoza', '', 24);
INSERT INTO `cat_municipio` VALUES (1855, 1855, 'Santa María del Río', '', 24);
INSERT INTO `cat_municipio` VALUES (1856, 1856, 'Tierra Nueva', '', 24);
INSERT INTO `cat_municipio` VALUES (1857, 1857, 'Rioverde', '', 24);
INSERT INTO `cat_municipio` VALUES (1858, 1858, 'Ciudad Fernández', '', 24);
INSERT INTO `cat_municipio` VALUES (1859, 1859, 'San Ciro de Acosta', '', 24);
INSERT INTO `cat_municipio` VALUES (1860, 1860, 'Tamasopo', '', 24);
INSERT INTO `cat_municipio` VALUES (1861, 1861, 'Rayó', '', 24);
INSERT INTO `cat_municipio` VALUES (1862, 1862, 'Aquismó', '', 24);
INSERT INTO `cat_municipio` VALUES (1863, 1863, 'Lagunillas', '', 24);
INSERT INTO `cat_municipio` VALUES (1864, 1864, 'Santa Catarina', '', 24);
INSERT INTO `cat_municipio` VALUES (1865, 1865, 'Tancanhuitz', '', 24);
INSERT INTO `cat_municipio` VALUES (1866, 1866, 'Tanlajás', '', 24);
INSERT INTO `cat_municipio` VALUES (1867, 1867, 'San Vicente Tancuayalab', '', 24);
INSERT INTO `cat_municipio` VALUES (1868, 1868, 'San Antonio', '', 24);
INSERT INTO `cat_municipio` VALUES (1869, 1869, 'Tanquián de Escobedo', '', 24);
INSERT INTO `cat_municipio` VALUES (1870, 1870, 'Tampamolón Corona', '', 24);
INSERT INTO `cat_municipio` VALUES (1871, 1871, 'Coxcatlá', '', 24);
INSERT INTO `cat_municipio` VALUES (1872, 1872, 'Huehuetlá', '', 24);
INSERT INTO `cat_municipio` VALUES (1873, 1873, 'Xilitla', '', 24);
INSERT INTO `cat_municipio` VALUES (1874, 1874, 'Axtla de Terrazas', '', 24);
INSERT INTO `cat_municipio` VALUES (1875, 1875, 'Tampacá', '', 24);
INSERT INTO `cat_municipio` VALUES (1876, 1876, 'San Martín Chalchicuautla', '', 24);
INSERT INTO `cat_municipio` VALUES (1877, 1877, 'Tamazunchale', '', 24);
INSERT INTO `cat_municipio` VALUES (1878, 1878, 'Matlapa', '', 24);
INSERT INTO `cat_municipio` VALUES (1879, 1879, 'Culiacá', '', 25);
INSERT INTO `cat_municipio` VALUES (1880, 1880, 'Navolato', '', 25);
INSERT INTO `cat_municipio` VALUES (1881, 1881, 'Badiraguato', '', 25);
INSERT INTO `cat_municipio` VALUES (1882, 1882, 'Cosalá', '', 25);
INSERT INTO `cat_municipio` VALUES (1883, 1883, 'Mocorito', '', 25);
INSERT INTO `cat_municipio` VALUES (1884, 1884, 'Guasave', '', 25);
INSERT INTO `cat_municipio` VALUES (1885, 1885, 'Ahome', '', 25);
INSERT INTO `cat_municipio` VALUES (1886, 1886, 'Salvador Alvarado', '', 25);
INSERT INTO `cat_municipio` VALUES (1887, 1887, 'Angostura', '', 25);
INSERT INTO `cat_municipio` VALUES (1888, 1888, 'Choix', '', 25);
INSERT INTO `cat_municipio` VALUES (1889, 1889, 'El Fuerte', '', 25);
INSERT INTO `cat_municipio` VALUES (1890, 1890, 'Sinaloa', '', 25);
INSERT INTO `cat_municipio` VALUES (1891, 1891, 'Mazatlá', '', 25);
INSERT INTO `cat_municipio` VALUES (1892, 1892, 'Escuinapa', '', 25);
INSERT INTO `cat_municipio` VALUES (1893, 1893, 'Concordia', '', 25);
INSERT INTO `cat_municipio` VALUES (1894, 1894, 'Elota', '', 25);
INSERT INTO `cat_municipio` VALUES (1895, 1895, 'Rosario', '', 25);
INSERT INTO `cat_municipio` VALUES (1896, 1896, 'San Ignacio', '', 25);
INSERT INTO `cat_municipio` VALUES (1897, 1897, 'Hermosillo', '', 26);
INSERT INTO `cat_municipio` VALUES (1898, 1898, 'San Miguel de Horcasitas', '', 26);
INSERT INTO `cat_municipio` VALUES (1899, 1899, 'Carbó', '', 26);
INSERT INTO `cat_municipio` VALUES (1900, 1900, 'San Luis Río Colorado', '', 26);
INSERT INTO `cat_municipio` VALUES (1901, 1901, 'Puerto Peñasco', '', 26);
INSERT INTO `cat_municipio` VALUES (1902, 1902, 'General Plutarco Elías Calles', '', 26);
INSERT INTO `cat_municipio` VALUES (1903, 1903, 'Caborca', '', 26);
INSERT INTO `cat_municipio` VALUES (1904, 1904, 'Altar', '', 26);
INSERT INTO `cat_municipio` VALUES (1905, 1905, 'Tubutama', '', 26);
INSERT INTO `cat_municipio` VALUES (1906, 1906, 'Atil', '', 26);
INSERT INTO `cat_municipio` VALUES (1907, 1907, 'Oquitoa', '', 26);
INSERT INTO `cat_municipio` VALUES (1908, 1908, 'Sáric', '', 26);
INSERT INTO `cat_municipio` VALUES (1909, 1909, 'Benjamín Hill', '', 26);
INSERT INTO `cat_municipio` VALUES (1910, 1910, 'Trincheras', '', 26);
INSERT INTO `cat_municipio` VALUES (1911, 1911, 'Pitiquito', '', 26);
INSERT INTO `cat_municipio` VALUES (1912, 1912, 'Nogales', '', 26);
INSERT INTO `cat_municipio` VALUES (1913, 1913, 'Imuris', '', 26);
INSERT INTO `cat_municipio` VALUES (1914, 1914, 'Santa Cruz', '', 26);
INSERT INTO `cat_municipio` VALUES (1915, 1915, 'Magdalena', '', 26);
INSERT INTO `cat_municipio` VALUES (1916, 1916, 'Naco', '', 26);
INSERT INTO `cat_municipio` VALUES (1917, 1917, 'Agua Prieta', '', 26);
INSERT INTO `cat_municipio` VALUES (1918, 1918, 'Fronteras', '', 26);
INSERT INTO `cat_municipio` VALUES (1919, 1919, 'Nacozari de García', '', 26);
INSERT INTO `cat_municipio` VALUES (1920, 1920, 'Bavispe', '', 26);
INSERT INTO `cat_municipio` VALUES (1921, 1921, 'Bacerac', '', 26);
INSERT INTO `cat_municipio` VALUES (1922, 1922, 'Huachinera', '', 26);
INSERT INTO `cat_municipio` VALUES (1923, 1923, 'Nácori Chico', '', 26);
INSERT INTO `cat_municipio` VALUES (1924, 1924, 'Granados', '', 26);
INSERT INTO `cat_municipio` VALUES (1925, 1925, 'Bacadéhuachi', '', 26);
INSERT INTO `cat_municipio` VALUES (1926, 1926, 'Cumpas', '', 26);
INSERT INTO `cat_municipio` VALUES (1927, 1927, 'Huásabas', '', 26);
INSERT INTO `cat_municipio` VALUES (1928, 1928, 'Moctezuma', '', 26);
INSERT INTO `cat_municipio` VALUES (1929, 1929, 'Villa Hidalgo', '', 26);
INSERT INTO `cat_municipio` VALUES (1930, 1930, 'Santa Ana', '', 26);
INSERT INTO `cat_municipio` VALUES (1931, 1931, 'Cananea', '', 26);
INSERT INTO `cat_municipio` VALUES (1932, 1932, 'Arizpe', '', 26);
INSERT INTO `cat_municipio` VALUES (1933, 1933, 'Cucurpe', '', 26);
INSERT INTO `cat_municipio` VALUES (1934, 1934, 'Bacoachi', '', 26);
INSERT INTO `cat_municipio` VALUES (1935, 1935, 'San Pedro de la Cueva', '', 26);
INSERT INTO `cat_municipio` VALUES (1936, 1936, 'Divisaderos', '', 26);
INSERT INTO `cat_municipio` VALUES (1937, 1937, 'Tepache', '', 26);
INSERT INTO `cat_municipio` VALUES (1938, 1938, 'Villa Pesqueira', '', 26);
INSERT INTO `cat_municipio` VALUES (1939, 1939, 'Opodepe', '', 26);
INSERT INTO `cat_municipio` VALUES (1940, 1940, 'Huépac', '', 26);
INSERT INTO `cat_municipio` VALUES (1941, 1941, 'Banámichi', '', 26);
INSERT INTO `cat_municipio` VALUES (1942, 1942, 'Ures', '', 26);
INSERT INTO `cat_municipio` VALUES (1943, 1943, 'Aconchi', '', 26);
INSERT INTO `cat_municipio` VALUES (1944, 1944, 'Baviácora', '', 26);
INSERT INTO `cat_municipio` VALUES (1945, 1945, 'San Felipe de Jesús', '', 26);
INSERT INTO `cat_municipio` VALUES (1946, 1946, 'Rayó', '', 26);
INSERT INTO `cat_municipio` VALUES (1947, 1947, 'Cajeme', '', 26);
INSERT INTO `cat_municipio` VALUES (1948, 1948, 'Navojoa', '', 26);
INSERT INTO `cat_municipio` VALUES (1949, 1949, 'Huatabampo', '', 26);
INSERT INTO `cat_municipio` VALUES (1950, 1950, 'Bácum', '', 26);
INSERT INTO `cat_municipio` VALUES (1951, 1951, 'Etchojoa', '', 26);
INSERT INTO `cat_municipio` VALUES (1952, 1952, 'Benito Juárez', '', 26);
INSERT INTO `cat_municipio` VALUES (1953, 1953, 'Empalme', '', 26);
INSERT INTO `cat_municipio` VALUES (1954, 1954, 'Guaymas', '', 26);
INSERT INTO `cat_municipio` VALUES (1955, 1955, 'San Ignacio Río Muerto', '', 26);
INSERT INTO `cat_municipio` VALUES (1956, 1956, 'La Colorada', '', 26);
INSERT INTO `cat_municipio` VALUES (1957, 1957, 'Mazatá', '', 26);
INSERT INTO `cat_municipio` VALUES (1958, 1958, 'Suaqui Grande', '', 26);
INSERT INTO `cat_municipio` VALUES (1959, 1959, 'Sahuaripa', '', 26);
INSERT INTO `cat_municipio` VALUES (1960, 1960, 'San Javier', '', 26);
INSERT INTO `cat_municipio` VALUES (1961, 1961, 'Soyopa', '', 26);
INSERT INTO `cat_municipio` VALUES (1962, 1962, 'Bacanora', '', 26);
INSERT INTO `cat_municipio` VALUES (1963, 1963, 'Arivechi', '', 26);
INSERT INTO `cat_municipio` VALUES (1964, 1964, 'Rosario', '', 26);
INSERT INTO `cat_municipio` VALUES (1965, 1965, 'Quiriego', '', 26);
INSERT INTO `cat_municipio` VALUES (1966, 1966, 'Onavas', '', 26);
INSERT INTO `cat_municipio` VALUES (1967, 1967, 'Alamos', '', 26);
INSERT INTO `cat_municipio` VALUES (1968, 1968, 'Yécora', '', 26);
INSERT INTO `cat_municipio` VALUES (1969, 1969, 'Centro', '', 27);
INSERT INTO `cat_municipio` VALUES (1970, 1970, 'Jalpa de Méndez', '', 27);
INSERT INTO `cat_municipio` VALUES (1971, 1971, 'Nacajuca', '', 27);
INSERT INTO `cat_municipio` VALUES (1972, 1972, 'Comalcalco', '', 27);
INSERT INTO `cat_municipio` VALUES (1973, 1973, 'Huimanguillo', '', 27);
INSERT INTO `cat_municipio` VALUES (1974, 1974, 'Cárdenas', '', 27);
INSERT INTO `cat_municipio` VALUES (1975, 1975, 'Paraíso', '', 27);
INSERT INTO `cat_municipio` VALUES (1976, 1976, 'Cunduacá', '', 27);
INSERT INTO `cat_municipio` VALUES (1977, 1977, 'Macuspana', '', 27);
INSERT INTO `cat_municipio` VALUES (1978, 1978, 'Centla', '', 27);
INSERT INTO `cat_municipio` VALUES (1979, 1979, 'Jonuta', '', 27);
INSERT INTO `cat_municipio` VALUES (1980, 1980, 'Teapa', '', 27);
INSERT INTO `cat_municipio` VALUES (1981, 1981, 'Jalapa', '', 27);
INSERT INTO `cat_municipio` VALUES (1982, 1982, 'Tacotalpa', '', 27);
INSERT INTO `cat_municipio` VALUES (1983, 1983, 'Tenosique', '', 27);
INSERT INTO `cat_municipio` VALUES (1984, 1984, 'Balancá', '', 27);
INSERT INTO `cat_municipio` VALUES (1985, 1985, 'Emiliano Zapata', '', 27);
INSERT INTO `cat_municipio` VALUES (1986, 1986, 'Victoria', '', 28);
INSERT INTO `cat_municipio` VALUES (1987, 1987, 'Llera', '', 28);
INSERT INTO `cat_municipio` VALUES (1988, 1988, 'Güémez', '', 28);
INSERT INTO `cat_municipio` VALUES (1989, 1989, 'Casas', '', 28);
INSERT INTO `cat_municipio` VALUES (1990, 1990, 'Matamoros', '', 28);
INSERT INTO `cat_municipio` VALUES (1991, 1991, 'Valle Hermoso', '', 28);
INSERT INTO `cat_municipio` VALUES (1992, 1992, 'San Fernando', '', 28);
INSERT INTO `cat_municipio` VALUES (1993, 1993, 'Cruillas', '', 28);
INSERT INTO `cat_municipio` VALUES (1994, 1994, 'San Nicolás', '', 28);
INSERT INTO `cat_municipio` VALUES (1995, 1995, 'Soto la Marina', '', 28);
INSERT INTO `cat_municipio` VALUES (1996, 1996, 'Jiménez', '', 28);
INSERT INTO `cat_municipio` VALUES (1997, 1997, 'San Carlos', '', 28);
INSERT INTO `cat_municipio` VALUES (1998, 1998, 'Abasolo', '', 28);
INSERT INTO `cat_municipio` VALUES (1999, 1999, 'Padilla', '', 28);
INSERT INTO `cat_municipio` VALUES (2000, 2000, 'Hidalgo', '', 28);
INSERT INTO `cat_municipio` VALUES (2001, 2001, 'Mainero', '', 28);
INSERT INTO `cat_municipio` VALUES (2002, 2002, 'Villagrá', '', 28);
INSERT INTO `cat_municipio` VALUES (2003, 2003, 'Tula', '', 28);
INSERT INTO `cat_municipio` VALUES (2004, 2004, 'Jaumave', '', 28);
INSERT INTO `cat_municipio` VALUES (2005, 2005, 'Miquihuana', '', 28);
INSERT INTO `cat_municipio` VALUES (2006, 2006, 'Bustamante', '', 28);
INSERT INTO `cat_municipio` VALUES (2007, 2007, 'Palmillas', '', 28);
INSERT INTO `cat_municipio` VALUES (2008, 2008, 'Ocampo', '', 28);
INSERT INTO `cat_municipio` VALUES (2009, 2009, 'Nuevo Laredo', '', 28);
INSERT INTO `cat_municipio` VALUES (2010, 2010, 'Miguel Alemá', '', 28);
INSERT INTO `cat_municipio` VALUES (2011, 2011, 'Guerrero', '', 28);
INSERT INTO `cat_municipio` VALUES (2012, 2012, 'Mier', '', 28);
INSERT INTO `cat_municipio` VALUES (2013, 2013, 'Gustavo Díaz Ordaz', '', 28);
INSERT INTO `cat_municipio` VALUES (2014, 2014, 'Camargo', '', 28);
INSERT INTO `cat_municipio` VALUES (2015, 2015, 'Reynosa', '', 28);
INSERT INTO `cat_municipio` VALUES (2016, 2016, 'Río Bravo', '', 28);
INSERT INTO `cat_municipio` VALUES (2017, 2017, 'Méndez', '', 28);
INSERT INTO `cat_municipio` VALUES (2018, 2018, 'Burgos', '', 28);
INSERT INTO `cat_municipio` VALUES (2019, 2019, 'Tampico', '', 28);
INSERT INTO `cat_municipio` VALUES (2020, 2020, 'Ciudad Madero', '', 28);
INSERT INTO `cat_municipio` VALUES (2021, 2021, 'Altamira', '', 28);
INSERT INTO `cat_municipio` VALUES (2022, 2022, 'Aldama', '', 28);
INSERT INTO `cat_municipio` VALUES (2023, 2023, 'González', '', 28);
INSERT INTO `cat_municipio` VALUES (2024, 2024, 'Xicoténcatl', '', 28);
INSERT INTO `cat_municipio` VALUES (2025, 2025, 'Gómez Farías', '', 28);
INSERT INTO `cat_municipio` VALUES (2026, 2026, 'El Mante', '', 28);
INSERT INTO `cat_municipio` VALUES (2027, 2027, 'Antiguo Morelos', '', 28);
INSERT INTO `cat_municipio` VALUES (2028, 2028, 'Nuevo Morelos', '', 28);
INSERT INTO `cat_municipio` VALUES (2029, 2029, 'Tlaxcala', '', 28);
INSERT INTO `cat_municipio` VALUES (2030, 2030, 'Ixtacuixtla de Mariano Matamoros', '', 29);
INSERT INTO `cat_municipio` VALUES (2031, 2031, 'Santa Ana Nopaluca', '', 29);
INSERT INTO `cat_municipio` VALUES (2032, 2032, 'Panotla', '', 29);
INSERT INTO `cat_municipio` VALUES (2033, 2033, 'Totolac', '', 29);
INSERT INTO `cat_municipio` VALUES (2034, 2034, 'Tepeyanco', '', 29);
INSERT INTO `cat_municipio` VALUES (2035, 2035, 'Santa Isabel Xiloxoxtla', '', 29);
INSERT INTO `cat_municipio` VALUES (2036, 2036, 'San Juan Huactzinco', '', 29);
INSERT INTO `cat_municipio` VALUES (2037, 2037, 'Calpulalpa', '', 29);
INSERT INTO `cat_municipio` VALUES (2038, 2038, 'Sanctórum de Lázaro Cárdenas', '', 29);
INSERT INTO `cat_municipio` VALUES (2039, 2039, 'Benito Juárez', '', 29);
INSERT INTO `cat_municipio` VALUES (2040, 2040, 'Hueyotlipa', '', 29);
INSERT INTO `cat_municipio` VALUES (2041, 2041, 'Tlaxco', '', 29);
INSERT INTO `cat_municipio` VALUES (2042, 2042, 'Nanacamilpa de Mariano Arista', '', 29);
INSERT INTO `cat_municipio` VALUES (2043, 2043, 'Españita', '', 29);
INSERT INTO `cat_municipio` VALUES (2044, 2044, 'Apizaco', '', 29);
INSERT INTO `cat_municipio` VALUES (2045, 2045, 'Atlangatepec', '', 29);
INSERT INTO `cat_municipio` VALUES (2046, 2046, 'Muñoz de Domingo Arenas', '', 29);
INSERT INTO `cat_municipio` VALUES (2047, 2047, 'Tetla de la Solidaridad', '', 29);
INSERT INTO `cat_municipio` VALUES (2048, 2048, 'Xaltoca', '', 29);
INSERT INTO `cat_municipio` VALUES (2049, 2049, 'San Lucas Tecopilco', '', 29);
INSERT INTO `cat_municipio` VALUES (2050, 2050, 'Yauhquemehca', '', 29);
INSERT INTO `cat_municipio` VALUES (2051, 2051, 'Xaloztoc', '', 29);
INSERT INTO `cat_municipio` VALUES (2052, 2052, 'Tocatlá', '', 29);
INSERT INTO `cat_municipio` VALUES (2053, 2053, 'Tzompantepec', '', 29);
INSERT INTO `cat_municipio` VALUES (2054, 2054, 'San José Teacalco', '', 29);
INSERT INTO `cat_municipio` VALUES (2055, 2055, 'Huamantla', '', 29);
INSERT INTO `cat_municipio` VALUES (2056, 2056, 'Terrenate', '', 29);
INSERT INTO `cat_municipio` VALUES (2057, 2057, 'Lázaro Cárdenas', '', 29);
INSERT INTO `cat_municipio` VALUES (2058, 2058, 'Emiliano Zapata', '', 29);
INSERT INTO `cat_municipio` VALUES (2059, 2059, 'Atltzayanca', '', 29);
INSERT INTO `cat_municipio` VALUES (2060, 2060, 'Cuapiaxtla', '', 29);
INSERT INTO `cat_municipio` VALUES (2061, 2061, 'El Carmen Tequexquitla', '', 29);
INSERT INTO `cat_municipio` VALUES (2062, 2062, 'Ixtenco', '', 29);
INSERT INTO `cat_municipio` VALUES (2063, 2063, 'Ziltlaltépec de Trinidad Sánchez Santos', '', 29);
INSERT INTO `cat_municipio` VALUES (2064, 2064, 'Apetatitlán de Antonio Carvajal', '', 29);
INSERT INTO `cat_municipio` VALUES (2065, 2065, 'Amaxac de Guerrero', '', 29);
INSERT INTO `cat_municipio` VALUES (2066, 2066, 'Santa Cruz Tlaxcala', '', 29);
INSERT INTO `cat_municipio` VALUES (2067, 2067, 'Cuaxomulco', '', 29);
INSERT INTO `cat_municipio` VALUES (2068, 2068, 'Contla de Juan Cuamatzi', '', 29);
INSERT INTO `cat_municipio` VALUES (2069, 2069, 'Tepetitla de Lardizábal', '', 29);
INSERT INTO `cat_municipio` VALUES (2070, 2070, 'Natívitas', '', 29);
INSERT INTO `cat_municipio` VALUES (2071, 2071, 'Santa Apolonia Teacalco', '', 29);
INSERT INTO `cat_municipio` VALUES (2072, 2072, 'Tetlatlahuca', '', 29);
INSERT INTO `cat_municipio` VALUES (2073, 2073, 'San Damián Texóloc', '', 29);
INSERT INTO `cat_municipio` VALUES (2074, 2074, 'San Jerónimo Zacualpa', '', 29);
INSERT INTO `cat_municipio` VALUES (2075, 2075, 'Zacatelco', '', 29);
INSERT INTO `cat_municipio` VALUES (2076, 2076, 'San Lorenzo Axocomanitla', '', 29);
INSERT INTO `cat_municipio` VALUES (2077, 2077, 'Santa Catarina Ayometla', '', 29);
INSERT INTO `cat_municipio` VALUES (2078, 2078, 'Xicohtzinco', '', 29);
INSERT INTO `cat_municipio` VALUES (2079, 2079, 'Papalotla de Xicohténcatl', '', 29);
INSERT INTO `cat_municipio` VALUES (2080, 2080, 'Chiautempa', '', 29);
INSERT INTO `cat_municipio` VALUES (2081, 2081, 'La Magdalena Tlaltelulco', '', 29);
INSERT INTO `cat_municipio` VALUES (2082, 2082, 'San Francisco Tetlanohca', '', 29);
INSERT INTO `cat_municipio` VALUES (2083, 2083, 'Teolocholco', '', 29);
INSERT INTO `cat_municipio` VALUES (2084, 2084, 'Acuamanala de Miguel Hidalgo', '', 29);
INSERT INTO `cat_municipio` VALUES (2085, 2085, 'Santa Cruz Quilehtla', '', 29);
INSERT INTO `cat_municipio` VALUES (2086, 2086, 'Mazatecochco de José María Morelos', '', 29);
INSERT INTO `cat_municipio` VALUES (2087, 2087, 'Tenancingo', '', 29);
INSERT INTO `cat_municipio` VALUES (2088, 2088, 'San Pablo del Monte', '', 29);
INSERT INTO `cat_municipio` VALUES (2089, 2089, 'Xalapa', '', 30);
INSERT INTO `cat_municipio` VALUES (2090, 2090, 'Tlalnelhuayoca', '', 30);
INSERT INTO `cat_municipio` VALUES (2091, 2091, 'Xico', '', 30);
INSERT INTO `cat_municipio` VALUES (2092, 2092, 'Ixhuacán de los Reyes', '', 30);
INSERT INTO `cat_municipio` VALUES (2093, 2093, 'Ayahualulco', '', 30);
INSERT INTO `cat_municipio` VALUES (2094, 2094, 'Perote', '', 30);
INSERT INTO `cat_municipio` VALUES (2095, 2095, 'Banderilla', '', 30);
INSERT INTO `cat_municipio` VALUES (2096, 2096, 'Rafael Lucio', '', 30);
INSERT INTO `cat_municipio` VALUES (2097, 2097, 'Acajete', '', 30);
INSERT INTO `cat_municipio` VALUES (2098, 2098, 'Las Vigas de Ramírez', '', 30);
INSERT INTO `cat_municipio` VALUES (2099, 2099, 'Villa Aldama', '', 30);
INSERT INTO `cat_municipio` VALUES (2100, 2100, 'Tlacolula', '', 30);
INSERT INTO `cat_municipio` VALUES (2101, 2101, 'Tonayá', '', 30);
INSERT INTO `cat_municipio` VALUES (2102, 2102, 'Coacoatzintla', '', 30);
INSERT INTO `cat_municipio` VALUES (2103, 2103, 'Jilotepec', '', 30);
INSERT INTO `cat_municipio` VALUES (2104, 2104, 'Naolinco', '', 30);
INSERT INTO `cat_municipio` VALUES (2105, 2105, 'Miahuatlá', '', 30);
INSERT INTO `cat_municipio` VALUES (2106, 2106, 'Acatlá', '', 30);
INSERT INTO `cat_municipio` VALUES (2107, 2107, 'Tepetlá', '', 30);
INSERT INTO `cat_municipio` VALUES (2108, 2108, 'Juchique de Ferrer', '', 30);
INSERT INTO `cat_municipio` VALUES (2109, 2109, 'Alto Lucero de Gutiérrez Barrios', '', 30);
INSERT INTO `cat_municipio` VALUES (2110, 2110, 'Actopa', '', 30);
INSERT INTO `cat_municipio` VALUES (2111, 2111, 'Coatepec', '', 30);
INSERT INTO `cat_municipio` VALUES (2112, 2112, 'Teocelo', '', 30);
INSERT INTO `cat_municipio` VALUES (2113, 2113, 'Cosautlán de Carvajal', '', 30);
INSERT INTO `cat_municipio` VALUES (2114, 2114, 'Emiliano Zapata', '', 30);
INSERT INTO `cat_municipio` VALUES (2115, 2115, 'Apazapa', '', 30);
INSERT INTO `cat_municipio` VALUES (2116, 2116, 'Puente Nacional', '', 30);
INSERT INTO `cat_municipio` VALUES (2117, 2117, 'Ursulo Galvá', '', 30);
INSERT INTO `cat_municipio` VALUES (2118, 2118, 'Paso de Ovejas', '', 30);
INSERT INTO `cat_municipio` VALUES (2119, 2119, 'La Antigua', '', 30);
INSERT INTO `cat_municipio` VALUES (2120, 2120, 'Veracruz', '', 30);
INSERT INTO `cat_municipio` VALUES (2121, 2121, 'Pánuco', '', 30);
INSERT INTO `cat_municipio` VALUES (2122, 2122, 'Pueblo Viejo', '', 30);
INSERT INTO `cat_municipio` VALUES (2123, 2123, 'Tampico Alto', '', 30);
INSERT INTO `cat_municipio` VALUES (2124, 2124, 'Tempoal', '', 30);
INSERT INTO `cat_municipio` VALUES (2125, 2125, 'Ozuluama de Mascareñas', '', 30);
INSERT INTO `cat_municipio` VALUES (2126, 2126, 'Tantoyuca', '', 30);
INSERT INTO `cat_municipio` VALUES (2127, 2127, 'Platón Sánchez', '', 30);
INSERT INTO `cat_municipio` VALUES (2128, 2128, 'Chiconamel', '', 30);
INSERT INTO `cat_municipio` VALUES (2129, 2129, 'Chalma', '', 30);
INSERT INTO `cat_municipio` VALUES (2130, 2130, 'Chontla', '', 30);
INSERT INTO `cat_municipio` VALUES (2131, 2131, 'Citlaltépetl', '', 30);
INSERT INTO `cat_municipio` VALUES (2132, 2132, 'Ixcatepec', '', 30);
INSERT INTO `cat_municipio` VALUES (2133, 2133, 'Naranjos Amatlá', '', 30);
INSERT INTO `cat_municipio` VALUES (2134, 2134, 'El Higo', '', 30);
INSERT INTO `cat_municipio` VALUES (2135, 2135, 'Chinampa de Gorostiza', '', 30);
INSERT INTO `cat_municipio` VALUES (2136, 2136, 'Tantima', '', 30);
INSERT INTO `cat_municipio` VALUES (2137, 2137, 'Tamalí', '', 30);
INSERT INTO `cat_municipio` VALUES (2138, 2138, 'Cerro Azul', '', 30);
INSERT INTO `cat_municipio` VALUES (2139, 2139, 'Tepetzintla', '', 30);
INSERT INTO `cat_municipio` VALUES (2140, 2140, 'Tancoco', '', 30);
INSERT INTO `cat_municipio` VALUES (2141, 2141, 'Tamiahua', '', 30);
INSERT INTO `cat_municipio` VALUES (2142, 2142, 'Huayacocotla', '', 30);
INSERT INTO `cat_municipio` VALUES (2143, 2143, 'Ilamatlá', '', 30);
INSERT INTO `cat_municipio` VALUES (2144, 2144, 'Zontecomatlán de López y Fuentes', '', 30);
INSERT INTO `cat_municipio` VALUES (2145, 2145, 'Texcatepec', '', 30);
INSERT INTO `cat_municipio` VALUES (2146, 2146, 'Zacualpa', '', 30);
INSERT INTO `cat_municipio` VALUES (2147, 2147, 'Benito Juárez', '', 30);
INSERT INTO `cat_municipio` VALUES (2148, 2148, 'Tlachichilco', '', 30);
INSERT INTO `cat_municipio` VALUES (2149, 2149, 'Ixhuatlán de Madero', '', 30);
INSERT INTO `cat_municipio` VALUES (2150, 2150, 'Chicontepec', '', 30);
INSERT INTO `cat_municipio` VALUES (2151, 2151, 'Álamo Temapache', '', 30);
INSERT INTO `cat_municipio` VALUES (2152, 2152, 'Tuxpa', '', 30);
INSERT INTO `cat_municipio` VALUES (2153, 2153, 'Tihuatlá', '', 30);
INSERT INTO `cat_municipio` VALUES (2154, 2154, 'Castillo de Teayo', '', 30);
INSERT INTO `cat_municipio` VALUES (2155, 2155, 'Cazones de Herrera', '', 30);
INSERT INTO `cat_municipio` VALUES (2156, 2156, 'Zozocolco de Hidalgo', '', 30);
INSERT INTO `cat_municipio` VALUES (2157, 2157, 'Chumatlá', '', 30);
INSERT INTO `cat_municipio` VALUES (2158, 2158, 'Coxquihui', '', 30);
INSERT INTO `cat_municipio` VALUES (2159, 2159, 'Mecatlá', '', 30);
INSERT INTO `cat_municipio` VALUES (2160, 2160, 'Filomeno Mata', '', 30);
INSERT INTO `cat_municipio` VALUES (2161, 2161, 'Coahuitlá', '', 30);
INSERT INTO `cat_municipio` VALUES (2162, 2162, 'Coyutla', '', 30);
INSERT INTO `cat_municipio` VALUES (2163, 2163, 'Coatzintla', '', 30);
INSERT INTO `cat_municipio` VALUES (2164, 2164, 'Espinal', '', 30);
INSERT INTO `cat_municipio` VALUES (2165, 2165, 'Poza Rica de Hidalgo', '', 30);
INSERT INTO `cat_municipio` VALUES (2166, 2166, 'Papantla', '', 30);
INSERT INTO `cat_municipio` VALUES (2167, 2167, 'Gutiérrez Zamora', '', 30);
INSERT INTO `cat_municipio` VALUES (2168, 2168, 'Tecolutla', '', 30);
INSERT INTO `cat_municipio` VALUES (2169, 2169, 'Martínez de la Torre', '', 30);
INSERT INTO `cat_municipio` VALUES (2170, 2170, 'San Rafael', '', 30);
INSERT INTO `cat_municipio` VALUES (2171, 2171, 'Tlapacoya', '', 30);
INSERT INTO `cat_municipio` VALUES (2172, 2172, 'Jalacingo', '', 30);
INSERT INTO `cat_municipio` VALUES (2173, 2173, 'Atzala', '', 30);
INSERT INTO `cat_municipio` VALUES (2174, 2174, 'Altotonga', '', 30);
INSERT INTO `cat_municipio` VALUES (2175, 2175, 'Las Minas', '', 30);
INSERT INTO `cat_municipio` VALUES (2176, 2176, 'Tatatila', '', 30);
INSERT INTO `cat_municipio` VALUES (2177, 2177, 'Tenochtitlá', '', 30);
INSERT INTO `cat_municipio` VALUES (2178, 2178, 'Nautla', '', 30);
INSERT INTO `cat_municipio` VALUES (2179, 2179, 'Misantla', '', 30);
INSERT INTO `cat_municipio` VALUES (2180, 2180, 'Landero y Coss', '', 30);
INSERT INTO `cat_municipio` VALUES (2181, 2181, 'Chiconquiaco', '', 30);
INSERT INTO `cat_municipio` VALUES (2182, 2182, 'Yecuatla', '', 30);
INSERT INTO `cat_municipio` VALUES (2183, 2183, 'Colipa', '', 30);
INSERT INTO `cat_municipio` VALUES (2184, 2184, 'Vega de Alatorre', '', 30);
INSERT INTO `cat_municipio` VALUES (2185, 2185, 'Jalcomulco', '', 30);
INSERT INTO `cat_municipio` VALUES (2186, 2186, 'Tlaltetela', '', 30);
INSERT INTO `cat_municipio` VALUES (2187, 2187, 'Tenampa', '', 30);
INSERT INTO `cat_municipio` VALUES (2188, 2188, 'Totutla', '', 30);
INSERT INTO `cat_municipio` VALUES (2189, 2189, 'Sochiapa', '', 30);
INSERT INTO `cat_municipio` VALUES (2190, 2190, 'Tlacotepec de Mejía', '', 30);
INSERT INTO `cat_municipio` VALUES (2191, 2191, 'Huatusco', '', 30);
INSERT INTO `cat_municipio` VALUES (2192, 2192, 'Calcahualco', '', 30);
INSERT INTO `cat_municipio` VALUES (2193, 2193, 'Alpatláhuac', '', 30);
INSERT INTO `cat_municipio` VALUES (2194, 2194, 'Coscomatepec', '', 30);
INSERT INTO `cat_municipio` VALUES (2195, 2195, 'La Perla', '', 30);
INSERT INTO `cat_municipio` VALUES (2196, 2196, 'Chocamá', '', 30);
INSERT INTO `cat_municipio` VALUES (2197, 2197, 'Tomatlá', '', 30);
INSERT INTO `cat_municipio` VALUES (2198, 2198, 'Ixhuatlán del Café', '', 30);
INSERT INTO `cat_municipio` VALUES (2199, 2199, 'Tepatlaxco', '', 30);
INSERT INTO `cat_municipio` VALUES (2200, 2200, 'Comapa', '', 30);
INSERT INTO `cat_municipio` VALUES (2201, 2201, 'Zentla', '', 30);
INSERT INTO `cat_municipio` VALUES (2202, 2202, 'Camarón de Tejeda', '', 30);
INSERT INTO `cat_municipio` VALUES (2203, 2203, 'Soledad de Doblado', '', 30);
INSERT INTO `cat_municipio` VALUES (2204, 2204, 'Manlio Fabio Altamirano', '', 30);
INSERT INTO `cat_municipio` VALUES (2205, 2205, 'Jamapa', '', 30);
INSERT INTO `cat_municipio` VALUES (2206, 2206, 'Medellín de Bravo', '', 30);
INSERT INTO `cat_municipio` VALUES (2207, 2207, 'Boca del Río', '', 30);
INSERT INTO `cat_municipio` VALUES (2208, 2208, 'Orizaba', '', 30);
INSERT INTO `cat_municipio` VALUES (2209, 2209, 'Rafael Delgado', '', 30);
INSERT INTO `cat_municipio` VALUES (2210, 2210, 'Mariano Escobedo', '', 30);
INSERT INTO `cat_municipio` VALUES (2211, 2211, 'Ixhuatlancillo', '', 30);
INSERT INTO `cat_municipio` VALUES (2212, 2212, 'Atzaca', '', 30);
INSERT INTO `cat_municipio` VALUES (2213, 2213, 'Ixtaczoquitlá', '', 30);
INSERT INTO `cat_municipio` VALUES (2214, 2214, 'Fortí', '', 30);
INSERT INTO `cat_municipio` VALUES (2215, 2215, 'Córdoba', '', 30);
INSERT INTO `cat_municipio` VALUES (2216, 2216, 'Maltrata', '', 30);
INSERT INTO `cat_municipio` VALUES (2217, 2217, 'Nogales', '', 30);
INSERT INTO `cat_municipio` VALUES (2218, 2218, 'Río Blanco', '', 30);
INSERT INTO `cat_municipio` VALUES (2219, 2219, 'Camerino Z. Mendoza', '', 30);
INSERT INTO `cat_municipio` VALUES (2220, 2220, 'Aquila', '', 30);
INSERT INTO `cat_municipio` VALUES (2221, 2221, 'Acultzingo', '', 30);
INSERT INTO `cat_municipio` VALUES (2222, 2222, 'Soledad Atzompa', '', 30);
INSERT INTO `cat_municipio` VALUES (2223, 2223, 'Huiloapan de Cuauhtémoc', '', 30);
INSERT INTO `cat_municipio` VALUES (2224, 2224, 'Tlaquilpa', '', 30);
INSERT INTO `cat_municipio` VALUES (2225, 2225, 'Astacinga', '', 30);
INSERT INTO `cat_municipio` VALUES (2226, 2226, 'Xoxocotla', '', 30);
INSERT INTO `cat_municipio` VALUES (2227, 2227, 'Atlahuilco', '', 30);
INSERT INTO `cat_municipio` VALUES (2228, 2228, 'Tequila', '', 30);
INSERT INTO `cat_municipio` VALUES (2229, 2229, 'San Andrés Tenejapa', '', 30);
INSERT INTO `cat_municipio` VALUES (2230, 2230, 'Tlilapa', '', 30);
INSERT INTO `cat_municipio` VALUES (2231, 2231, 'Magdalena', '', 30);
INSERT INTO `cat_municipio` VALUES (2232, 2232, 'Naranjal', '', 30);
INSERT INTO `cat_municipio` VALUES (2233, 2233, 'Coetzala', '', 30);
INSERT INTO `cat_municipio` VALUES (2234, 2234, 'Omealca', '', 30);
INSERT INTO `cat_municipio` VALUES (2235, 2235, 'Cuitláhuac', '', 30);
INSERT INTO `cat_municipio` VALUES (2236, 2236, 'Cuichapa', '', 30);
INSERT INTO `cat_municipio` VALUES (2237, 2237, 'Yanga', '', 30);
INSERT INTO `cat_municipio` VALUES (2238, 2238, 'Amatlán de los Reyes', '', 30);
INSERT INTO `cat_municipio` VALUES (2239, 2239, 'Atoyac', '', 30);
INSERT INTO `cat_municipio` VALUES (2240, 2240, 'Paso del Macho', '', 30);
INSERT INTO `cat_municipio` VALUES (2241, 2241, 'Carrillo Puerto', '', 30);
INSERT INTO `cat_municipio` VALUES (2242, 2242, 'Cotaxtla', '', 30);
INSERT INTO `cat_municipio` VALUES (2243, 2243, 'Zongolica', '', 30);
INSERT INTO `cat_municipio` VALUES (2244, 2244, 'Tehuipango', '', 30);
INSERT INTO `cat_municipio` VALUES (2245, 2245, 'Mixtla de Altamirano', '', 30);
INSERT INTO `cat_municipio` VALUES (2246, 2246, 'Los Reyes', '', 30);
INSERT INTO `cat_municipio` VALUES (2247, 2247, 'Texhuacá', '', 30);
INSERT INTO `cat_municipio` VALUES (2248, 2248, 'Tezonapa', '', 30);
INSERT INTO `cat_municipio` VALUES (2249, 2249, 'Tierra Blanca', '', 30);
INSERT INTO `cat_municipio` VALUES (2250, 2250, 'Tlalixcoya', '', 30);
INSERT INTO `cat_municipio` VALUES (2251, 2251, 'Ignacio de la Llave', '', 30);
INSERT INTO `cat_municipio` VALUES (2252, 2252, 'Alvarado', '', 30);
INSERT INTO `cat_municipio` VALUES (2253, 2253, 'Lerdo de Tejada', '', 30);
INSERT INTO `cat_municipio` VALUES (2254, 2254, 'Tres Valles', '', 30);
INSERT INTO `cat_municipio` VALUES (2255, 2255, 'Carlos A. Carrillo', '', 30);
INSERT INTO `cat_municipio` VALUES (2256, 2256, 'Tres Valles', '', 30);
INSERT INTO `cat_municipio` VALUES (2257, 2257, 'Cosamaloapan de Carpio', '', 30);
INSERT INTO `cat_municipio` VALUES (2258, 2258, 'Ixmatlahuaca', '', 30);
INSERT INTO `cat_municipio` VALUES (2259, 2259, 'Acula', '', 30);
INSERT INTO `cat_municipio` VALUES (2260, 2260, 'Amatitlá', '', 30);
INSERT INTO `cat_municipio` VALUES (2261, 2261, 'Tlacotalpa', '', 30);
INSERT INTO `cat_municipio` VALUES (2262, 2262, 'Saltabarranca', '', 30);
INSERT INTO `cat_municipio` VALUES (2263, 2263, 'Otatitlá', '', 30);
INSERT INTO `cat_municipio` VALUES (2264, 2264, 'Tlacojalpa', '', 30);
INSERT INTO `cat_municipio` VALUES (2265, 2265, 'Tuxtilla', '', 30);
INSERT INTO `cat_municipio` VALUES (2266, 2266, 'Chacaltianguis', '', 30);
INSERT INTO `cat_municipio` VALUES (2267, 2267, 'José Azueta', '', 30);
INSERT INTO `cat_municipio` VALUES (2268, 2268, 'Playa Vicente', '', 30);
INSERT INTO `cat_municipio` VALUES (2269, 2269, 'Santiago Sochiapa', '', 30);
INSERT INTO `cat_municipio` VALUES (2270, 2270, 'Isla', '', 30);
INSERT INTO `cat_municipio` VALUES (2271, 2271, 'Juan Rodríguez Clara', '', 30);
INSERT INTO `cat_municipio` VALUES (2272, 2272, 'San Andrés Tuxtla', '', 30);
INSERT INTO `cat_municipio` VALUES (2273, 2273, 'Santiago Tuxtla', '', 30);
INSERT INTO `cat_municipio` VALUES (2274, 2274, 'Angel R. Cabada', '', 30);
INSERT INTO `cat_municipio` VALUES (2275, 2275, 'Hueyapan de Ocampo', '', 30);
INSERT INTO `cat_municipio` VALUES (2276, 2276, 'Catemaco', '', 30);
INSERT INTO `cat_municipio` VALUES (2277, 2277, 'Soteapa', '', 30);
INSERT INTO `cat_municipio` VALUES (2278, 2278, 'Mecayapa', '', 30);
INSERT INTO `cat_municipio` VALUES (2279, 2279, 'Tatahuicapan de Juárez', '', 30);
INSERT INTO `cat_municipio` VALUES (2280, 2280, 'Pajapa', '', 30);
INSERT INTO `cat_municipio` VALUES (2281, 2281, 'Chinameca', '', 30);
INSERT INTO `cat_municipio` VALUES (2282, 2282, 'Acayuca', '', 30);
INSERT INTO `cat_municipio` VALUES (2283, 2283, 'San Juan Evangelista', '', 30);
INSERT INTO `cat_municipio` VALUES (2284, 2284, 'Sayula de Alemá', '', 30);
INSERT INTO `cat_municipio` VALUES (2285, 2285, 'Oluta', '', 30);
INSERT INTO `cat_municipio` VALUES (2286, 2286, 'Soconusco', '', 30);
INSERT INTO `cat_municipio` VALUES (2287, 2287, 'Texistepec', '', 30);
INSERT INTO `cat_municipio` VALUES (2288, 2288, 'Jáltipa', '', 30);
INSERT INTO `cat_municipio` VALUES (2289, 2289, 'Zaragoza', '', 30);
INSERT INTO `cat_municipio` VALUES (2290, 2290, 'Oteapa', '', 30);
INSERT INTO `cat_municipio` VALUES (2291, 2291, 'Cosoleacaque', '', 30);
INSERT INTO `cat_municipio` VALUES (2292, 2292, 'Nanchital de Lázaro Cárdenas del Río', '', 30);
INSERT INTO `cat_municipio` VALUES (2293, 2293, 'Ixhuatlán del Sureste', '', 30);
INSERT INTO `cat_municipio` VALUES (2294, 2294, 'Moloacá', '', 30);
INSERT INTO `cat_municipio` VALUES (2295, 2295, 'Coatzacoalcos', '', 30);
INSERT INTO `cat_municipio` VALUES (2296, 2296, 'Agua Dulce', '', 30);
INSERT INTO `cat_municipio` VALUES (2297, 2297, 'Coatzacoalcos', '', 30);
INSERT INTO `cat_municipio` VALUES (2298, 2298, 'Agua Dulce', '', 30);
INSERT INTO `cat_municipio` VALUES (2299, 2299, 'Minatitlá', '', 30);
INSERT INTO `cat_municipio` VALUES (2300, 2300, 'Hidalgotitlá', '', 30);
INSERT INTO `cat_municipio` VALUES (2301, 2301, 'Jesús Carranza', '', 30);
INSERT INTO `cat_municipio` VALUES (2302, 2302, 'Las Choapas', '', 30);
INSERT INTO `cat_municipio` VALUES (2303, 2303, 'Uxpanapa', '', 30);
INSERT INTO `cat_municipio` VALUES (2304, 2304, 'Mérida', '', 31);
INSERT INTO `cat_municipio` VALUES (2305, 2305, 'Progreso', '', 31);
INSERT INTO `cat_municipio` VALUES (2306, 2306, 'Chicxulub Pueblo', '', 31);
INSERT INTO `cat_municipio` VALUES (2307, 2307, 'Ixil', '', 31);
INSERT INTO `cat_municipio` VALUES (2308, 2308, 'Conkal', '', 31);
INSERT INTO `cat_municipio` VALUES (2309, 2309, 'Yaxkukul', '', 31);
INSERT INTO `cat_municipio` VALUES (2310, 2310, 'Hunucmá', '', 31);
INSERT INTO `cat_municipio` VALUES (2311, 2311, 'Ucú', '', 31);
INSERT INTO `cat_municipio` VALUES (2312, 2312, 'Kinchil', '', 31);
INSERT INTO `cat_municipio` VALUES (2313, 2313, 'Tetiz', '', 31);
INSERT INTO `cat_municipio` VALUES (2314, 2314, 'Celestú', '', 31);
INSERT INTO `cat_municipio` VALUES (2315, 2315, 'Kanasí', '', 31);
INSERT INTO `cat_municipio` VALUES (2316, 2316, 'Timucuy', '', 31);
INSERT INTO `cat_municipio` VALUES (2317, 2317, 'Acanceh', '', 31);
INSERT INTO `cat_municipio` VALUES (2318, 2318, 'Tixpéhual', '', 31);
INSERT INTO `cat_municipio` VALUES (2319, 2319, 'Umá', '', 31);
INSERT INTO `cat_municipio` VALUES (2320, 2320, 'Telchac Pueblo', '', 31);
INSERT INTO `cat_municipio` VALUES (2321, 2321, 'Dzemul', '', 31);
INSERT INTO `cat_municipio` VALUES (2322, 2322, 'Telchac Puerto', '', 31);
INSERT INTO `cat_municipio` VALUES (2323, 2323, 'Cansahcab', '', 31);
INSERT INTO `cat_municipio` VALUES (2324, 2324, 'Sinanché', '', 31);
INSERT INTO `cat_municipio` VALUES (2325, 2325, 'Yobaí', '', 31);
INSERT INTO `cat_municipio` VALUES (2326, 2326, 'Motul', '', 31);
INSERT INTO `cat_municipio` VALUES (2327, 2327, 'Baca', '', 31);
INSERT INTO `cat_municipio` VALUES (2328, 2328, 'Mocochá', '', 31);
INSERT INTO `cat_municipio` VALUES (2329, 2329, 'Muxupip', '', 31);
INSERT INTO `cat_municipio` VALUES (2330, 2330, 'Cacalché', '', 31);
INSERT INTO `cat_municipio` VALUES (2331, 2331, 'Bokobá', '', 31);
INSERT INTO `cat_municipio` VALUES (2332, 2332, 'Tixkokob', '', 31);
INSERT INTO `cat_municipio` VALUES (2333, 2333, 'Hoctú', '', 31);
INSERT INTO `cat_municipio` VALUES (2334, 2334, 'Tahmek', '', 31);
INSERT INTO `cat_municipio` VALUES (2335, 2335, 'Dzidzantú', '', 31);
INSERT INTO `cat_municipio` VALUES (2336, 2336, 'Temax', '', 31);
INSERT INTO `cat_municipio` VALUES (2337, 2337, 'Tekantó', '', 31);
INSERT INTO `cat_municipio` VALUES (2338, 2338, 'Teya', '', 31);
INSERT INTO `cat_municipio` VALUES (2339, 2339, 'Suma', '', 31);
INSERT INTO `cat_municipio` VALUES (2340, 2340, 'Tepaká', '', 31);
INSERT INTO `cat_municipio` VALUES (2341, 2341, 'Tekal de Venegas', '', 31);
INSERT INTO `cat_municipio` VALUES (2342, 2342, 'Izamal', '', 31);
INSERT INTO `cat_municipio` VALUES (2343, 2343, 'Hocabá', '', 31);
INSERT INTO `cat_municipio` VALUES (2344, 2344, 'Xocchel', '', 31);
INSERT INTO `cat_municipio` VALUES (2345, 2345, 'Seyé', '', 31);
INSERT INTO `cat_municipio` VALUES (2346, 2346, 'Cuzamá', '', 31);
INSERT INTO `cat_municipio` VALUES (2347, 2347, 'Homú', '', 31);
INSERT INTO `cat_municipio` VALUES (2348, 2348, 'Sanahcat', '', 31);
INSERT INTO `cat_municipio` VALUES (2349, 2349, 'Huhí', '', 31);
INSERT INTO `cat_municipio` VALUES (2350, 2350, 'Dzilam González', '', 31);
INSERT INTO `cat_municipio` VALUES (2351, 2351, 'Dzilam de Bravo', '', 31);
INSERT INTO `cat_municipio` VALUES (2352, 2352, 'Panabá', '', 31);
INSERT INTO `cat_municipio` VALUES (2353, 2353, 'San Felipe', '', 31);
INSERT INTO `cat_municipio` VALUES (2354, 2354, 'Buctzotz', '', 31);
INSERT INTO `cat_municipio` VALUES (2355, 2355, 'Sucilá', '', 31);
INSERT INTO `cat_municipio` VALUES (2356, 2356, 'Cenotillo', '', 31);
INSERT INTO `cat_municipio` VALUES (2357, 2357, 'Dzoncauich', '', 31);
INSERT INTO `cat_municipio` VALUES (2358, 2358, 'Tunkás', '', 31);
INSERT INTO `cat_municipio` VALUES (2359, 2359, 'Quintana Roo', '', 31);
INSERT INTO `cat_municipio` VALUES (2360, 2360, 'Dzitás', '', 31);
INSERT INTO `cat_municipio` VALUES (2361, 2361, 'Kantunil', '', 31);
INSERT INTO `cat_municipio` VALUES (2362, 2362, 'Sudzal', '', 31);
INSERT INTO `cat_municipio` VALUES (2363, 2363, 'Tekit', '', 31);
INSERT INTO `cat_municipio` VALUES (2364, 2364, 'Sotuta', '', 31);
INSERT INTO `cat_municipio` VALUES (2365, 2365, 'Tizimí', '', 31);
INSERT INTO `cat_municipio` VALUES (2366, 2366, 'Río Lagartos', '', 31);
INSERT INTO `cat_municipio` VALUES (2367, 2367, 'Espita', '', 31);
INSERT INTO `cat_municipio` VALUES (2368, 2368, 'Temozó', '', 31);
INSERT INTO `cat_municipio` VALUES (2369, 2369, 'Calotmul', '', 31);
INSERT INTO `cat_municipio` VALUES (2370, 2370, 'Tinum', '', 31);
INSERT INTO `cat_municipio` VALUES (2371, 2371, 'Chankom', '', 31);
INSERT INTO `cat_municipio` VALUES (2372, 2372, 'Chichimilá', '', 31);
INSERT INTO `cat_municipio` VALUES (2373, 2373, 'Tixcacalcupul', '', 31);
INSERT INTO `cat_municipio` VALUES (2374, 2374, 'Kaua', '', 31);
INSERT INTO `cat_municipio` VALUES (2375, 2375, 'Cuncunul', '', 31);
INSERT INTO `cat_municipio` VALUES (2376, 2376, 'Tekom', '', 31);
INSERT INTO `cat_municipio` VALUES (2377, 2377, 'Chemax', '', 31);
INSERT INTO `cat_municipio` VALUES (2378, 2378, 'Valladolid', '', 31);
INSERT INTO `cat_municipio` VALUES (2379, 2379, 'Uayma', '', 31);
INSERT INTO `cat_municipio` VALUES (2380, 2380, 'Maxcanú', '', 31);
INSERT INTO `cat_municipio` VALUES (2381, 2381, 'Samahil', '', 31);
INSERT INTO `cat_municipio` VALUES (2382, 2382, 'Opiché', '', 31);
INSERT INTO `cat_municipio` VALUES (2383, 2383, 'Chocholá', '', 31);
INSERT INTO `cat_municipio` VALUES (2384, 2384, 'Kopomá', '', 31);
INSERT INTO `cat_municipio` VALUES (2385, 2385, 'Tecoh', '', 31);
INSERT INTO `cat_municipio` VALUES (2386, 2386, 'Abalá', '', 31);
INSERT INTO `cat_municipio` VALUES (2387, 2387, 'Halachó', '', 31);
INSERT INTO `cat_municipio` VALUES (2388, 2388, 'Muna', '', 31);
INSERT INTO `cat_municipio` VALUES (2389, 2389, 'Sacalum', '', 31);
INSERT INTO `cat_municipio` VALUES (2390, 2390, 'Maní', '', 31);
INSERT INTO `cat_municipio` VALUES (2391, 2391, 'Dzá', '', 31);
INSERT INTO `cat_municipio` VALUES (2392, 2392, 'Chapab', '', 31);
INSERT INTO `cat_municipio` VALUES (2393, 2393, 'Ticul', '', 31);
INSERT INTO `cat_municipio` VALUES (2394, 2394, 'Oxkutzcab', '', 31);
INSERT INTO `cat_municipio` VALUES (2395, 2395, 'Santa Elena', '', 31);
INSERT INTO `cat_municipio` VALUES (2396, 2396, 'Mama', '', 31);
INSERT INTO `cat_municipio` VALUES (2397, 2397, 'Chumayel', '', 31);
INSERT INTO `cat_municipio` VALUES (2398, 2398, 'Mayapá', '', 31);
INSERT INTO `cat_municipio` VALUES (2399, 2399, 'Teabo', '', 31);
INSERT INTO `cat_municipio` VALUES (2400, 2400, 'Cantamayec', '', 31);
INSERT INTO `cat_municipio` VALUES (2401, 2401, 'Yaxcabá', '', 31);
INSERT INTO `cat_municipio` VALUES (2402, 2402, 'Peto', '', 31);
INSERT INTO `cat_municipio` VALUES (2403, 2403, 'Chikindzonot', '', 31);
INSERT INTO `cat_municipio` VALUES (2404, 2404, 'Tahdziú', '', 31);
INSERT INTO `cat_municipio` VALUES (2405, 2405, 'Tixmehuac', '', 31);
INSERT INTO `cat_municipio` VALUES (2406, 2406, 'Chacsinkí', '', 31);
INSERT INTO `cat_municipio` VALUES (2407, 2407, 'Tzucacab', '', 31);
INSERT INTO `cat_municipio` VALUES (2408, 2408, 'Tekax', '', 31);
INSERT INTO `cat_municipio` VALUES (2409, 2409, 'Akil', '', 31);
INSERT INTO `cat_municipio` VALUES (2410, 2410, 'Zacatecas', '', 32);
INSERT INTO `cat_municipio` VALUES (2411, 2411, 'Morelos', '', 32);
INSERT INTO `cat_municipio` VALUES (2412, 2412, 'Vetagrande', '', 32);
INSERT INTO `cat_municipio` VALUES (2413, 2413, 'Concepción del Oro', '', 32);
INSERT INTO `cat_municipio` VALUES (2414, 2414, 'Melchor Ocampo', '', 32);
INSERT INTO `cat_municipio` VALUES (2415, 2415, 'Mazapil', '', 32);
INSERT INTO `cat_municipio` VALUES (2416, 2416, 'El Salvador', '', 32);
INSERT INTO `cat_municipio` VALUES (2417, 2417, 'Juan Aldama', '', 32);
INSERT INTO `cat_municipio` VALUES (2418, 2418, 'Miguel Auza', '', 32);
INSERT INTO `cat_municipio` VALUES (2419, 2419, 'General Francisco R. Murguía', '', 32);
INSERT INTO `cat_municipio` VALUES (2420, 2420, 'Río Grande', '', 32);
INSERT INTO `cat_municipio` VALUES (2421, 2421, 'Villa de Cos', '', 32);
INSERT INTO `cat_municipio` VALUES (2422, 2422, 'Cañitas de Felipe Pescador', '', 32);
INSERT INTO `cat_municipio` VALUES (2423, 2423, 'Calera', '', 32);
INSERT INTO `cat_municipio` VALUES (2424, 2424, 'Pánuco', '', 32);
INSERT INTO `cat_municipio` VALUES (2425, 2425, 'General Enrique Estrada', '', 32);
INSERT INTO `cat_municipio` VALUES (2426, 2426, 'Guadalupe', '', 32);
INSERT INTO `cat_municipio` VALUES (2427, 2427, 'Trancoso', '', 32);
INSERT INTO `cat_municipio` VALUES (2428, 2428, 'Genaro Codina', '', 32);
INSERT INTO `cat_municipio` VALUES (2429, 2429, 'Cuauhtémoc', '', 32);
INSERT INTO `cat_municipio` VALUES (2430, 2430, 'Ojocaliente', '', 32);
INSERT INTO `cat_municipio` VALUES (2431, 2431, 'General Pánfilo Natera', '', 32);
INSERT INTO `cat_municipio` VALUES (2432, 2432, 'Luis Moya', '', 32);
INSERT INTO `cat_municipio` VALUES (2433, 2433, 'Loreto', '', 32);
INSERT INTO `cat_municipio` VALUES (2434, 2434, 'Villa González Ortega', '', 32);
INSERT INTO `cat_municipio` VALUES (2435, 2435, 'Noria de Ángeles', '', 32);
INSERT INTO `cat_municipio` VALUES (2436, 2436, 'Villa García', '', 32);
INSERT INTO `cat_municipio` VALUES (2437, 2437, 'Pinos', '', 32);
INSERT INTO `cat_municipio` VALUES (2438, 2438, 'Villa Hidalgo', '', 32);
INSERT INTO `cat_municipio` VALUES (2439, 2439, 'Fresnillo', '', 32);
INSERT INTO `cat_municipio` VALUES (2440, 2440, 'Sombrerete', '', 32);
INSERT INTO `cat_municipio` VALUES (2441, 2441, 'Sain Alto', '', 32);
INSERT INTO `cat_municipio` VALUES (2442, 2442, 'Valparaíso', '', 32);
INSERT INTO `cat_municipio` VALUES (2443, 2443, 'Chalchihuites', '', 32);
INSERT INTO `cat_municipio` VALUES (2444, 2444, 'Jiménez del Teul', '', 32);
INSERT INTO `cat_municipio` VALUES (2445, 2445, 'Jerez', '', 32);
INSERT INTO `cat_municipio` VALUES (2446, 2446, 'Monte Escobedo', '', 32);
INSERT INTO `cat_municipio` VALUES (2447, 2447, 'Susticacá', '', 32);
INSERT INTO `cat_municipio` VALUES (2448, 2448, 'Villanueva', '', 32);
INSERT INTO `cat_municipio` VALUES (2449, 2449, 'Tepetongo', '', 32);
INSERT INTO `cat_municipio` VALUES (2450, 2450, 'El Plateado de Joaquín Amaro', '', 32);
INSERT INTO `cat_municipio` VALUES (2451, 2451, 'Jalpa', '', 32);
INSERT INTO `cat_municipio` VALUES (2452, 2452, 'Tabasco', '', 32);
INSERT INTO `cat_municipio` VALUES (2453, 2453, 'Huanusco', '', 32);
INSERT INTO `cat_municipio` VALUES (2454, 2454, 'Tlaltenango de Sánchez Romá', '', 32);
INSERT INTO `cat_municipio` VALUES (2455, 2455, 'Momax', '', 32);
INSERT INTO `cat_municipio` VALUES (2456, 2456, 'Atolinga', '', 32);
INSERT INTO `cat_municipio` VALUES (2457, 2457, 'Tepechitlá', '', 32);
INSERT INTO `cat_municipio` VALUES (2458, 2458, 'Benito Juárez', '', 32);
INSERT INTO `cat_municipio` VALUES (2459, 2459, 'Teúl de González Ortega', '', 32);
INSERT INTO `cat_municipio` VALUES (2460, 2460, 'Santa María de la Paz', '', 32);
INSERT INTO `cat_municipio` VALUES (2461, 2461, 'Trinidad García de la Cadena', '', 32);
INSERT INTO `cat_municipio` VALUES (2462, 2462, 'Mezquital del Oro', '', 32);
INSERT INTO `cat_municipio` VALUES (2463, 2463, 'Nochistlán de Mejía', '', 32);
INSERT INTO `cat_municipio` VALUES (2464, 2464, 'Apulco', '', 32);
INSERT INTO `cat_municipio` VALUES (2465, 2465, 'Apozol', '', 32);
INSERT INTO `cat_municipio` VALUES (2466, 2466, 'Juchipila', '', 32);
INSERT INTO `cat_municipio` VALUES (2467, 2467, 'Moyahua de Estrada', '', 32);

-- ----------------------------
-- Table structure for cat_perfil
-- ----------------------------
DROP TABLE IF EXISTS `cat_perfil`;
CREATE TABLE `cat_perfil`  (
  `idPerfil` int(11) NOT NULL AUTO_INCREMENT,
  `clave` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `perfil` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `descripcionPerfil` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`idPerfil`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cat_perfil
-- ----------------------------
INSERT INTO `cat_perfil` VALUES (1, 'U01', 'Mediador', 'Usuario mediador');
INSERT INTO `cat_perfil` VALUES (2, 'U02', 'Solicitante', 'Usuario que ha solicitado la mediación');
INSERT INTO `cat_perfil` VALUES (3, 'U03', 'Invitado', 'Usuario contra el que se ha solicitado la mediación');

-- ----------------------------
-- Table structure for cat_resEvento
-- ----------------------------
DROP TABLE IF EXISTS `cat_resEvento`;
CREATE TABLE `cat_resEvento`  (
  `idResultadoEvento` int(255) NOT NULL AUTO_INCREMENT,
  `nombreResultado` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `descripcion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`idResultadoEvento`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cat_resEvento
-- ----------------------------
INSERT INTO `cat_resEvento` VALUES (1, 'Exito', 'El evento se registro exitosamente');
INSERT INTO `cat_resEvento` VALUES (2, 'Error', 'Existio algun problema con la operacion');
INSERT INTO `cat_resEvento` VALUES (3, 'Sin informacion', 'No se pudo realizar la operacion');

-- ----------------------------
-- Table structure for cat_reuniones
-- ----------------------------
DROP TABLE IF EXISTS `cat_reuniones`;
CREATE TABLE `cat_reuniones`  (
  `idReunion` int(255) NOT NULL AUTO_INCREMENT,
  `nombreReunion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `activa` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idReunion`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cat_reuniones
-- ----------------------------
INSERT INTO `cat_reuniones` VALUES (1, 'Cita', b'1');
INSERT INTO `cat_reuniones` VALUES (2, 'VideoLlamada', b'1');

-- ----------------------------
-- Table structure for cat_tiposArchivos
-- ----------------------------
DROP TABLE IF EXISTS `cat_tiposArchivos`;
CREATE TABLE `cat_tiposArchivos`  (
  `idTipoArchivo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`idTipoArchivo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cat_tiposArchivos
-- ----------------------------
INSERT INTO `cat_tiposArchivos` VALUES (1, 'INE');
INSERT INTO `cat_tiposArchivos` VALUES (2, 'Cartilla Militar');
INSERT INTO `cat_tiposArchivos` VALUES (3, 'Pasaporte');
INSERT INTO `cat_tiposArchivos` VALUES (4, 'Acta de Matrimonio');
INSERT INTO `cat_tiposArchivos` VALUES (5, 'Convenio de Mediacion');
INSERT INTO `cat_tiposArchivos` VALUES (6, 'Comprobante de Domicilio');
INSERT INTO `cat_tiposArchivos` VALUES (7, 'Acta de nacimiento de los menores de edad');
INSERT INTO `cat_tiposArchivos` VALUES (8, 'Comprobantes de pago');
INSERT INTO `cat_tiposArchivos` VALUES (9, 'Título y operaciones de crédito');
INSERT INTO `cat_tiposArchivos` VALUES (10, 'Anexo F');
INSERT INTO `cat_tiposArchivos` VALUES (11, 'Otros');
INSERT INTO `cat_tiposArchivos` VALUES (12, 'Documentos de la Mediacion Solicitante');
INSERT INTO `cat_tiposArchivos` VALUES (13, 'Documentos de la Mediacion Invitado');
INSERT INTO `cat_tiposArchivos` VALUES (14, 'Compendio de la mediación');

-- ----------------------------
-- Table structure for cat_tiposcasos_old
-- ----------------------------
DROP TABLE IF EXISTS `cat_tiposcasos_old`;
CREATE TABLE `cat_tiposcasos_old`  (
  `idCaso` int(11) NOT NULL AUTO_INCREMENT,
  `caso` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`idCaso`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cat_tiposcasos_old
-- ----------------------------
INSERT INTO `cat_tiposcasos_old` VALUES (1, 'Mercántil.', 'Mediación Mercántil');
INSERT INTO `cat_tiposcasos_old` VALUES (2, 'Migrantes.', 'Mediación para Migrantes');

-- ----------------------------
-- Table structure for cat_tiposmediadores_old
-- ----------------------------
DROP TABLE IF EXISTS `cat_tiposmediadores_old`;
CREATE TABLE `cat_tiposmediadores_old`  (
  `idTipoMediador` int(11) NOT NULL AUTO_INCREMENT,
  `tipoMediacion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`idTipoMediador`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cat_tiposmediadores_old
-- ----------------------------
INSERT INTO `cat_tiposmediadores_old` VALUES (1, 'Principal', 'Lider de la mediación');
INSERT INTO `cat_tiposmediadores_old` VALUES (2, 'Secundario', 'Segundo en la mediación');

-- ----------------------------
-- Table structure for tb_archivo
-- ----------------------------
DROP TABLE IF EXISTS `tb_archivo`;
CREATE TABLE `tb_archivo`  (
  `idArchivo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idTipoArchivo` int(11) DEFAULT NULL,
  `activa` bit(1) DEFAULT NULL,
  `hashArchivo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `hashed_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`idArchivo`) USING BTREE,
  INDEX `idTipoArchivo`(`idTipoArchivo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;


-- ----------------------------
-- Table structure for tb_archivosMediacion
-- ----------------------------
DROP TABLE IF EXISTS `tb_archivosMediacion`;
CREATE TABLE `tb_archivosMediacion`  (
  `idArchivosMediacion` int(11) NOT NULL AUTO_INCREMENT,
  `idArchivo` int(11) DEFAULT NULL,
  `idMediacion` int(11) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `activa` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idArchivosMediacion`) USING BTREE,
  INDEX `idUsuario`(`idUsuario`) USING BTREE,
  INDEX `idArchivo`(`idArchivo`) USING BTREE,
  INDEX `idMediacion`(`idMediacion`) USING BTREE,
  CONSTRAINT `tb_archivosMediacion_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `tb_usuario` (`idUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_archivosMediacion_ibfk_2` FOREIGN KEY (`idArchivo`) REFERENCES `tb_archivo` (`idArchivo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_archivosMediacion_ibfk_3` FOREIGN KEY (`idMediacion`) REFERENCES `tb_mediacion` (`idMediacion`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;


-- ----------------------------
-- Table structure for tb_citas_old
-- ----------------------------
DROP TABLE IF EXISTS `tb_citas_old`;
CREATE TABLE `tb_citas_old`  (
  `idCita` int(11) NOT NULL AUTO_INCREMENT,
  `idMediador` int(11) DEFAULT NULL,
  `idSolicitante` int(11) DEFAULT NULL,
  `idInvitado` int(11) DEFAULT NULL,
  `fecha1` datetime(0) DEFAULT NULL,
  `idTramite` int(11) DEFAULT NULL,
  `presencial` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idCita`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_cliente
-- ----------------------------
DROP TABLE IF EXISTS `tb_cliente`;
CREATE TABLE `tb_cliente`  (
  `idUsuarioCliente` int(255) NOT NULL AUTO_INCREMENT,
  `nombreCliente` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `abreviaturaCliente` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `idUsuario` int(255) DEFAULT NULL,
  `activa` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idUsuarioCliente`) USING BTREE,
  INDEX `idUsuario`(`idUsuario`) USING BTREE,
  CONSTRAINT `tb_cliente_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `tb_usuario` (`idUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_cliente
-- ----------------------------
INSERT INTO `tb_cliente` VALUES (1, 'Bancomer', 'BBVA', 1, b'1');
INSERT INTO `tb_cliente` VALUES (2, 'AmericanExpress', 'AMEX', 1, b'1');
INSERT INTO `tb_cliente` VALUES (3, 'City', 'CITY', 1, b'1');
INSERT INTO `tb_cliente` VALUES (4, 'Banorte', 'BANO', 1, b'1');
INSERT INTO `tb_cliente` VALUES (5, 'Centro de Justicia Quintana Roo', 'CJQR', 1, b'1');
INSERT INTO `tb_cliente` VALUES (6, 'Axeleratum', 'AXEL', 1, b'1');
INSERT INTO `tb_cliente` VALUES (7, 'Linio', 'LINI', 1, b'1');

-- ----------------------------
-- Table structure for tb_comentario
-- ----------------------------
DROP TABLE IF EXISTS `tb_comentario`;
CREATE TABLE `tb_comentario`  (
  `idComentario` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `tipo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idMediacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`idComentario`) USING BTREE,
  INDEX `idMediacion`(`idMediacion`) USING BTREE,
  CONSTRAINT `tb_comentario_ibfk_1` FOREIGN KEY (`idMediacion`) REFERENCES `tb_mediacion` (`idMediacion`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_domicilio
-- ----------------------------
DROP TABLE IF EXISTS `tb_domicilio`;
CREATE TABLE `tb_domicilio`  (
  `idDomicilio` int(11) NOT NULL AUTO_INCREMENT,
  `nombreVialidad` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `numeroExterior` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `numeroInterior` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `codigoPostal` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idMunicipio` int(11) DEFAULT NULL,
  `referencia1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `referencia2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`idDomicilio`) USING BTREE,
  INDEX `idMunicipio`(`idMunicipio`) USING BTREE,
  CONSTRAINT `tb_domicilio_ibfk_1` FOREIGN KEY (`idMunicipio`) REFERENCES `cat_municipio` (`idMunicipio`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_domicilio
-- ----------------------------
INSERT INTO `tb_domicilio` VALUES (1, 'Prados de Jacaranda', '51', NULL, '57179', 786, 'Frente al mercado de prados', NULL);
INSERT INTO `tb_domicilio` VALUES (2, 'Insurgentes sur', '1', NULL, '39000', 272, 'Vive en el gamesmart', NULL);

-- ----------------------------
-- Table structure for tb_eventoMediacion
-- ----------------------------
DROP TABLE IF EXISTS `tb_eventoMediacion`;
CREATE TABLE `tb_eventoMediacion`  (
  `idEventosMediacion` int(255) NOT NULL AUTO_INCREMENT,
  `idEvento` int(255) DEFAULT NULL,
  `idMediacion` int(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `idResultadoEvento` int(255) DEFAULT NULL,
  `mensaje` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`idEventosMediacion`) USING BTREE,
  INDEX `idMediacion`(`idMediacion`) USING BTREE,
  INDEX `idEvento`(`idEvento`) USING BTREE,
  INDEX `idResultadoEvento`(`idResultadoEvento`) USING BTREE,
  CONSTRAINT `tb_eventoMediacion_ibfk_2` FOREIGN KEY (`idMediacion`) REFERENCES `tb_mediacion` (`idMediacion`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_eventoMediacion_ibfk_3` FOREIGN KEY (`idEvento`) REFERENCES `cat_evento` (`idEvento`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_eventoMediacion_ibfk_4` FOREIGN KEY (`idResultadoEvento`) REFERENCES `cat_resEvento` (`idResultadoEvento`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;


-- ----------------------------
-- Table structure for tb_mediacion
-- ----------------------------
DROP TABLE IF EXISTS `tb_mediacion`;
CREATE TABLE `tb_mediacion`  (
  `idMediacion` int(255) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(255) DEFAULT NULL,
  `nombreTramite` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `folio` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `idCliente` int(255) DEFAULT NULL,
  `idEspecialidad` int(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `activa` bit(1) DEFAULT NULL,
  `idEstadoMediacion` int(255) DEFAULT NULL,
  `descripcion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `idFaseMediacion` int(255) DEFAULT NULL,
  PRIMARY KEY (`idMediacion`) USING BTREE,
  INDEX `idTipoCaso`(`idEspecialidad`) USING BTREE,
  INDEX `idUsuario`(`idUsuario`) USING BTREE,
  INDEX `idEstadoMediacion`(`idEstadoMediacion`) USING BTREE,
  INDEX `idCliente`(`idCliente`) USING BTREE,
  INDEX `idFaseMediacion`(`idFaseMediacion`) USING BTREE,
  CONSTRAINT `tb_mediacion_ibfk_1` FOREIGN KEY (`idEspecialidad`) REFERENCES `cat_especialidad` (`idEspecialidad`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_mediacion_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `tb_usuario` (`idUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_mediacion_ibfk_3` FOREIGN KEY (`idEstadoMediacion`) REFERENCES `cat_estado_mediacion` (`idEstadoMediacion`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_mediacion_ibfk_4` FOREIGN KEY (`idCliente`) REFERENCES `tb_cliente` (`idUsuarioCliente`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_mediacion_ibfk_5` FOREIGN KEY (`idFaseMediacion`) REFERENCES `cat_faseMediacion` (`idCatFasesMediacion`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_mediaciones_old
-- ----------------------------
DROP TABLE IF EXISTS `tb_mediaciones_old`;
CREATE TABLE `tb_mediaciones_old`  (
  `idMediacion` int(255) NOT NULL AUTO_INCREMENT,
  `nombreMediación` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `folio` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `idCliente` int(255) DEFAULT NULL,
  `descripcion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `idTipoCaso` int(255) DEFAULT NULL,
  `idEstadoMediacion` int(255) DEFAULT NULL,
  `activa` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idMediacion`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_persona
-- ----------------------------
DROP TABLE IF EXISTS `tb_persona`;
CREATE TABLE `tb_persona`  (
  `idPersona` int(255) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `apellidoPat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `apellidoMat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `curp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `RFC` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `telefono` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `foto` binary(255) DEFAULT NULL,
  `idDireccion` int(255) DEFAULT NULL,
  `numeroFePublica` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `fechaRegistro` datetime(6) DEFAULT NULL,
  `vigenciaSello` datetime(6) DEFAULT NULL,
  `archivoSello` binary(255) DEFAULT NULL,
  `activa` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idPersona`) USING BTREE,
  INDEX `idDireccion`(`idDireccion`) USING BTREE,
  CONSTRAINT `tb_persona_ibfk_1` FOREIGN KEY (`idDireccion`) REFERENCES `tb_domicilio` (`idDomicilio`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_persona
-- ----------------------------
INSERT INTO `tb_persona` VALUES (1, 'Juan Carlos', 'Guerrero', 'Carmona', 'GUCJ860312UD5', 'GUCJ860312UD5RFC', '57990513', NULL, 1, '13123123', '2019-09-24 20:57:58.000000', '2019-09-24 20:57:58.000000', NULL, b'1');
INSERT INTO `tb_persona` VALUES (2, 'Miguel', 'Lopez', 'bernal', 'MIGUELOPOKE234', 'MIGUELOPEXPOK2332RFC', '58999', NULL, 2, '1312321321323', '2019-09-26 18:15:16.000000', '2019-09-26 18:15:16.000000', NULL, b'1');

-- ----------------------------
-- Table structure for tb_reunionMediacion
-- ----------------------------
DROP TABLE IF EXISTS `tb_reunionMediacion`;
CREATE TABLE `tb_reunionMediacion`  (
  `idreunionMediacion` int(255) NOT NULL AUTO_INCREMENT,
  `idTipoReunion` int(255) DEFAULT NULL,
  `idMediacion` int(255) DEFAULT NULL,
  `horaInicio` datetime(6) DEFAULT NULL,
  `horaFin` datetime(6) DEFAULT NULL,
  `descripcion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `activa` bit(1) DEFAULT NULL,
  `linkVideoLlamada` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`idreunionMediacion`) USING BTREE,
  INDEX `idTipoReunion`(`idTipoReunion`) USING BTREE,
  INDEX `idMediacion`(`idMediacion`) USING BTREE,
  CONSTRAINT `tb_reunionMediacion_ibfk_1` FOREIGN KEY (`idTipoReunion`) REFERENCES `cat_reuniones` (`idReunion`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_reunionMediacion_ibfk_2` FOREIGN KEY (`idMediacion`) REFERENCES `tb_mediacion` (`idMediacion`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;


-- ----------------------------
-- Table structure for tb_usuario
-- ----------------------------
DROP TABLE IF EXISTS `tb_usuario`;
CREATE TABLE `tb_usuario`  (
  `idUsuario` int(255) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `clave` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idPersona` int(255) DEFAULT NULL,
  `token` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `activa` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idPerfil` int(255) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`) USING BTREE,
  INDEX `idPersona`(`idPersona`) USING BTREE,
  INDEX `idPerfil`(`idPerfil`) USING BTREE,
  CONSTRAINT `tb_usuario_ibfk_1` FOREIGN KEY (`idPersona`) REFERENCES `tb_persona` (`idPersona`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_usuario
-- ----------------------------
INSERT INTO `tb_usuario` VALUES (1, 'jcgc1203@gmail.com', '67ac62c7ee3f44db45457668c90483a4', 1, '5bc7786739f74093b277d31a', '1', 1);
INSERT INTO `tb_usuario` VALUES (2, 'miguel@axeleratum.com', '67ac62c7ee3f44db45457668c90483a4', 2, '', '1', 1);

-- ----------------------------
-- Table structure for tb_usuario_especialidad
-- ----------------------------
DROP TABLE IF EXISTS `tb_usuario_especialidad`;
CREATE TABLE `tb_usuario_especialidad`  (
  `idUsuarioEspecialidad` int(255) NOT NULL AUTO_INCREMENT,
  `idEspecialidad` int(255) DEFAULT NULL,
  `idUsuario` int(255) DEFAULT NULL,
  `activa` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idUsuarioEspecialidad`) USING BTREE,
  INDEX `idUsuario`(`idUsuario`) USING BTREE,
  INDEX `idEspecialidad`(`idEspecialidad`) USING BTREE,
  CONSTRAINT `tb_usuario_especialidad_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `tb_usuario` (`idUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_usuario_especialidad_ibfk_2` FOREIGN KEY (`idEspecialidad`) REFERENCES `cat_especialidad` (`idEspecialidad`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_usuariosPerfil
-- ----------------------------
DROP TABLE IF EXISTS `tb_usuariosPerfil`;
CREATE TABLE `tb_usuariosPerfil`  (
  `idUsuarioPerfil` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) DEFAULT NULL,
  `idPerfil` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUsuarioPerfil`) USING BTREE,
  INDEX `idPerfil`(`idPerfil`) USING BTREE,
  INDEX `idUsuario`(`idUsuario`) USING BTREE,
  CONSTRAINT `tb_usuariosPerfil_ibfk_1` FOREIGN KEY (`idPerfil`) REFERENCES `cat_perfil` (`idPerfil`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_usuariosPerfil_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `tb_usuario` (`idUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_usuariosPerfil
-- ----------------------------
INSERT INTO `tb_usuariosPerfil` VALUES (1, 1, 2);

SET FOREIGN_KEY_CHECKS = 1;

/*
 Navicat Premium Data Transfer

 Source Server         : cars
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : cars

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 18/07/2018 23:48:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `car_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `car_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `car_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `car_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `car_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `factory_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `carbase_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `car_has` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`car_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('027468A6A404436D83F5ECAA72CD9683', 'Audi S5_2017 _S5_3.0T_Coupe', '63.58', 'null', 'Medium car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('0307363DBE4B4C108C0D380AF18CA54C', 'Audi S5_2017 _S5_3.0T_Coupe', '63.58', 'null', 'Medium car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('048BAC0AA4F94BD7818C06127C889BC9', 'Audi Q5 (import)_2013 _45_TFSI_quattro_sports', '58.8', 'Volcano red _DF4A44', 'Medium SUV', '35E4EA', 'E02F1F631A', '0');
INSERT INTO `car` VALUES ('0604237015F2446C99EB2309E1EB7139', 'Audi A6L_2018 _30 anniversary year type _35_TFSI_ sport type', '44.5', 'White gold _B7AB92', 'Medium and large car', '8AE529', '075585A92C', '0');
INSERT INTO `car` VALUES ('06332F408A7343C98BF9FA03EA67D4A1', 'Audi Q7_2018 models_45_TFSI_Technical', '78.78', 'Ink blue _3C4457', 'Medium and large SUV', '35E4EA', 'E02F1F631A', '0');
INSERT INTO `car` VALUES ('06F38AA77EBF4957AF4E97121B761DA8', 'Audi TTS_2017 _TTS_Roadster_2.0TFSI_quattro', '64.9', 'Volcano red _DF4A44', 'Sports car', '35E4EA', '075585A92C', '0');
INSERT INTO `car` VALUES ('0747334A782C4129B294B80F6D2FCAAC', 'Audi TTS_2017 _TTS_Coupe_2.0TFSI_quattro', '61.18', 'Papaya Yellow_F1CE3B', 'Sports car', '35E4EA', '075585A92C', '0');
INSERT INTO `car` VALUES ('07BA357654F04A0DB8D47C9B386367CE', 'Audi TT_2017 _TT_Roadster_45_TFSI_quattro', '54.48', 'Legendary black _000000', 'Sports car', '35E4EA', '075585A92C', '0');
INSERT INTO `car` VALUES ('08581144990344368CE6F1A48FDF912D', 'Audi TT_2017 _TT_Roadster_45_TFSI', '51.98', 'Tango Red _D2180C', 'Sports car', '35E4EA', '075585A92C', '0');
INSERT INTO `car` VALUES ('09A6FBD7AA454DF99AD46187E5FF3BAB', 'Audi TT_2017 _TT_Coupe_45_TFSI_quattro', '50.8', 'Nano _8E8E90', 'Sports car', '35E4EA', '075585A92C', '0');
INSERT INTO `car` VALUES ('0B380DF0DF0B410F959207F52B1B0916', 'Audi TT_2017 _TT_Coupe_45_TFSI', '48.28', 'Monsoon ash _6C6D6F', 'Sports car', '35E4EA', '075585A92C', '0');
INSERT INTO `car` VALUES ('0CE1238E564048F7888BEE0AB3F25025', 'Audi TT_2017 _TT_Coupe_40_TFSI', '46.45', 'Foil silver _CAD1D7', 'Sports car', '35E4EA', '075585A92C', '0');
INSERT INTO `car` VALUES ('0E43B08F76404FC9992A588B07CCA85F', 'Audi Q7 new energy _2017 _45_e-tron', '87.5', 'Argus Brown_4A4A44', 'Medium and large SUV', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('0ED48A35D5044819A2AB52B903B1ABAA', 'Audi Q7 new energy _2017 _45_e-tron', '87.5', 'Foil silver _CAD1D7', 'Medium and large SUV', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('0F006292A5A24E70A3C5636329EA193C', 'Audi Q7 new energy _2017 _45_e-tron', '87.5', 'Ink black_231816', 'Medium and large SUV', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('0FD8E5873B054ADE83BE9D117FD5DEFB', 'Audi Q7_2018 models _45_TFSI_ distinguished type', '97.4', 'Graphite ash_5D5D8D', 'Medium and large SUV', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('10D39D4A585345F28D257FA18D0A1729', 'Audi Q7_2018 models _45_TFSI_ distinguished type', '97.4', 'Graphite ash_5D5D8D', 'Medium and large SUV', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('1564590789AD49B8909B7DF760B42CF2', 'Audi Q7_2018 models _45_TFSI_ distinguished type', '97.4', 'Ink blue _3C4457', 'Medium and large SUV', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('16D5243D24D546E485E97A9CA32016C6', 'Audi Q7_2018 models _45_TFSI_S_line sports', '84.5', 'Foil silver _CAD1D7', 'Medium and large SUV', '35E4EA', 'A83B33D9C1', '0');
INSERT INTO `car` VALUES ('17FC53D0922D451591D520ECED2955D9', 'Audi Q7_2018 models _45_TFSI_S_line sports', '84.5', 'Foil silver _CAD1D7', 'Medium and large SUV', '35E4EA', 'A83B33D9C1', '0');
INSERT INTO `car` VALUES ('1A1AA6EA732545BDAE4C739534FE70CD', 'Audi Q7_2018 models _45_TFSI_S_line sports', '84.5', 'Glacier white _FFFFFF', 'Medium and large SUV', '35E4EA', 'A83B33D9C1', '0');
INSERT INTO `car` VALUES ('1A30D6324030409B8AB57618FE37BA26', 'Audi A3_2018 _30 anniversary year type _Sportback_35_TFSI_ aggressive type', '19.05', 'Kanas Green_A5B2A8', 'Compact car', '8AE529', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('1A3266AB0F024955A9C427628769E136', 'Audi Q7_2018 models _45_TFSI_S_line sports', '84.5', 'Argus Brown_4A4A44', 'Medium and large SUV', '35E4EA', 'A83B33D9C1', '0');
INSERT INTO `car` VALUES ('1BF97E73A9974A798F574D8C9C4D8891', 'Audi Q7_2018 models_45_TFSI_Technical', '78.78', 'Ink blue _3C4457', 'Medium and large SUV', '35E4EA', 'E02F1F631A', '0');
INSERT INTO `car` VALUES ('1C6AB2A6FD8F4D018D4E95889B0316EA', 'Audi Q7_2018 models _40_TFSI_S_line sports', '73.28', 'Ink black_231816', 'Medium and large SUV', '35E4EA', 'E02F1F631A', '0');
INSERT INTO `car` VALUES ('1F7F5B3EAF0E4ABEA822EA689B7F1FF0', 'Audi Q7_2018 models _40_TFSI_ comfortable type', '69.98', 'Carrara White_F6F6F6', 'Medium and large SUV', '35E4EA', 'E02F1F631A', '0');
INSERT INTO `car` VALUES ('20229076BA7D4EE6BC5F0D1FB1C9A8C9', 'Audi Q7_2018 models _40_TFSI_ comfortable type', '69.98', 'Foil silver _CAD1D7', 'Medium and large SUV', '35E4EA', 'E02F1F631A', '0');
INSERT INTO `car` VALUES ('2224918FB2B34ED6BADF0B3A41BB9322', 'Audi Q7_2018 models _40_TFSI_ comfortable type', '69.98', 'Glacier white _FFFFFF', 'Medium and large SUV', '35E4EA', 'E02F1F631A', '0');
INSERT INTO `car` VALUES ('2A4867637C264680897292F32489B1F9', 'Audi SQ5_2017 _SQ5_3.0TFSI_quattro', '66.8', 'Glacier white _FFFFFF', 'Medium SUV', '35E4EA', 'E02F1F631A', '0');
INSERT INTO `car` VALUES ('2CB3521070524D1F8839947424391A00', 'Audi Q5 (import)_2013 _40_TFSI_hybrid', '60.8', 'Glacier white _FFFFFF', 'Medium SUV', '35E4EA', 'E02F1F631A', '0');
INSERT INTO `car` VALUES ('2CD126D3C6BF4E6084F8CFAC932A239E', 'Audi Q5 (import)_2013 _45_TFSI_quattro_ off-road type', '61.8', 'White gold _AEA898', 'Medium SUV', '35E4EA', 'E02F1F631A', '0');
INSERT INTO `car` VALUES ('2D881278C4674E37A4BC1E9B979B5B24', 'Audi Q5 (import)_2013 _45_TFSI_quattro_sports', '58.8', 'Phantom black _020202', 'Medium SUV', '35E4EA', 'E02F1F631A', '0');
INSERT INTO `car` VALUES ('2E29F01CB59646FD822B5938582CFD31', 'Audi Q5 (import)_2013 _45_TFSI_quattro_sports', '58.8', 'Polar silver _B9BEC2', 'Medium SUV', '35E4EA', 'E02F1F631A', '0');
INSERT INTO `car` VALUES ('2E4370679E044BEC81BD1D87C7C9149B', 'Audi Q5 (import)_2013 _45_TFSI_quattro_sports', '58.8', 'Volcano red _DF4A44', 'Medium SUV', '35E4EA', 'E02F1F631A', '0');
INSERT INTO `car` VALUES ('2E4DF55FA863416B96D48F518DA544CD', 'Audi A8_2017 _A8L_60_TFSI_quattro luxury', '184.8', 'Foil silver _CAD1D7', 'Large car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('2E5D53E760D3431EB086E64B3E54E045', 'Audi A8_2017 _A8L_60_TFSI_quattro luxury', '184.8', 'White gold _AEA898', 'Large car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('2E677F56561843AB91F5E29A762F4877', 'Audi A8_2017 _A8L_60_TFSI_quattro luxury', '184.8', 'Argus Brown_4A4A44', 'Large car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('2F38C6B6E269408C9389DFC151AFDEE9', 'Audi A8_2017 _A8L_50_TFSI_quattro distinguished type', '138.2', 'White_F7F6F1', 'Large car', '35E4EA', '075585A92C', '0');
INSERT INTO `car` VALUES ('2FAE94854F3B4B57AF4B1D8DF34D4687', 'Audi A8_2017 _A8L_50_TFSI_quattro City Honor Collector\'s Edition', '118.88', 'Havana Black_1C1A17', 'Large car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('331DFA5E44AF4A2684961E6CD440433D', 'Audi A8_2017 _A8L_50_TFSI_quattro luxury', '118.8', 'White_F7F6F1', 'Large car', '35E4EA', '075585A92C', '0');
INSERT INTO `car` VALUES ('333268A2315D405098FDE3A9EA304326', 'Audi A8_2017 _A8L_45_TFSI_quattro leading elite collector\'s edition', '102.88', 'Havana Black_1C1A17', 'Large car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('359E63EF9DF444F2829001378C2D9539', 'Audi S6_2018 _S6_4.0TFSI', '92.8', 'Holy State Blue_0A2289', 'Medium and large car', '35E4EA', '075585A92C', '0');
INSERT INTO `car` VALUES ('35FB2B5EB0F547CB8F776E8DCFC265DF', 'Audi A6 (import)_2018 models _3.0T_allroad_quattro', '55.98', 'Glacier white _FFFFFF', 'Medium and large car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('37261EE0A3F14914B204E07838047031', 'Audi A6 (import)_2017 _2.0T_Avant_Sport_ sporty', '46.58', 'Havana Black_1C1A17', 'Medium and large car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('376A6539F7D346549FDFE574BD9B983E', 'Audi A6 (import)_2017 _2.0T_Avant_Sport_ sporty', '46.58', 'Dakota ash _615652', 'Medium and large car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('37D103971F474471A84D068066F74A2D', 'Audi A6 (import)_2017 _2.0T_Avant_Sport_ sporty', '46.58', 'Glacier white _FFFFFF', 'Medium and large car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('3A1C420BA0DF4E1EB34A0DFD75509B36', 'Audi A6 (import)_2017 _2.0T_Avant_Sport_ sporty', '46.58', 'Misos Black_000000', 'Medium and large car', '35E4EA', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('3DCC0C72D1C44090BBDAA47B583CC738', 'Audi A6 (import)_2017 _1.8T_Avant_ stylish', '42.98', 'Glacier white _FFFFFF', 'Medium and large car', '35E4EA', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('3E18A402D3AD4D538AB72C55A90CB4E2', 'Audi A6 (import)_2017 _1.8T_Avant_ stylish', '42.98', 'Misos Black_000000', 'Medium and large car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('3F2F5E44A5874D8989F390FAAA5FE308', 'Audi S5_2017 _S5_3.0T_Cabriolet', '71.4', 'null', 'Medium car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('3F6DA8EFF4304016B982CB626014C39D', 'Audi S5_2017 _S5_3.0T_Cabriolet', '71.4', 'null', 'Medium car', '35E4EA', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('40FA49B17DA84A4D8F2EB73949CC740E', 'Audi S5_2017 _S5_3.0T_Coupe', '63.58', 'null', 'Medium car', '35E4EA', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('41386CDD97BC4D9D846D8E399FEC860C', 'Audi S5_2017 _S5_3.0T_Coupe', '63.58', 'null', 'Medium car', '35E4EA', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('419A9487BE0E4C00893CA90CB967E2D5', 'Audi S5_2017 _S5_3.0T_Coupe', '63.58', 'null', 'Medium car', '35E4EA', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('441D0AD132FC4FCBBC0BB1F9FE349429', 'Audi S5_2017 _S5_3.0T_Sportback', '63.58', 'null', 'Medium car', '35E4EA', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('4481A3C506984D2C8596B99997F19F76', 'Audi S5_2017 _S5_3.0T_Sportback', '63.58', 'null', 'Medium car', '35E4EA', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('45259D74B99D4B92AA910528502EE701', 'Audi S4_2018 _S4_3.0TFSI', '46.98', 'Glacier white _FFFFFF', 'Medium car', '35E4EA', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('4757EB5DD97644829A98490BA31C46E3', 'Audi S4_2018 _S4_3.0TFSI', '46.98', 'Misano Red_CD002B', 'Medium car', '35E4EA', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('47F44F4AF9AE44B6A6BA065EC4244710', 'Audi S4_2018 _S4_3.0TFSI', '46.98', 'Navarra blue_082086', 'Medium car', '35E4EA', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('4929F8372A544E16ACD74F34B31C1DE8', 'Audi A5_2017 _Cabriolet_45_TFSI_quattro_Sports', '56.38', 'Gotland Green _2A4336', 'Medium car', '35E4EA', 'A83B33D9C1', '0');
INSERT INTO `car` VALUES ('499DC25611FB48AC8C2C07546F64E242', 'Audi A3_2018 _30 anniversary year type _Sportback_35_TFSI_ aggressive type', '19.05', 'Glacier White_F6F6F6', 'Compact car', '8AE529', 'E02F1F631A', '0');
INSERT INTO `car` VALUES ('4A64212672664AD39AABE89E64362A3F', 'Audi A5_2017 _Cabriolet_45_TFSI_quattro_Sports', '56.38', 'Monsoon ash _6C6D6F', 'Medium car', '35E4EA', 'A83B33D9C1', '0');
INSERT INTO `car` VALUES ('4B99EA1A5EF14BB3BB58559800C4DE9A', 'Audi A5_2017 _Cabriolet_45_TFSI_quattro_Sports', '56.38', 'Glacier white _FFFFFF', 'Medium car', '35E4EA', 'A83B33D9C1', '0');
INSERT INTO `car` VALUES ('4BFF03CD2941422F8AB2C2B49A6C3137', 'Audi S3_2017 _remodel _S3_2.0T_Limousine', '37.15', 'Monsoon ash _6C6D6F', 'Compact car', '35E4EA', 'A83B33D9C1', '0');
INSERT INTO `car` VALUES ('4C0B5727B1714C75B2F461FC63F51061', 'Audi A3_2018 _30 anniversary year type _Sportback_35_TFSI_ aggressive type', '19.05', 'Kanas Green_A5B2A8', 'Compact car', '8AE529', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('4CEE21723AF744FC8A7BFFD639242CFD', 'Audi S3_2017 _remodel _S3_2.0T_Limousine', '37.15', 'Foil silver _CAD1D7', 'Compact car', '35E4EA', 'A83B33D9C1', '0');
INSERT INTO `car` VALUES ('4D922C6272F847B0BFEDA31379556812', 'Audi A3 new energy (import)_2017 _Sportback_e-tron_ comfortable', '39.98', 'Foil silver _CAD1D7', 'Compact car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('4EC453A1F4614085895A5A896B9E9810', 'Audi A3 new energy (import)_2017 _Sportback_e-tron_ comfortable', '39.98', 'Dakota ash _615652', 'Compact car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('509AD101D9034245B28080D01AD506CC', 'Audi A3 new energy (import)_2017 _Sportback_e-tron_ comfortable', '39.98', 'Legendary black _000000', 'Compact car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('50A8CE5D97C34F66BD725A1818DB449D', 'Audi A3 (import)_2017 _Cabriolet_40_TFSI', '34.35', 'Sohu Brown _46382F', 'Compact car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('5108F840E68C457C815A0CCDB296260A', 'Audi A3 (import)_2017 _Cabriolet_40_TFSI', '34.35', 'Solanum red_430723', 'Compact car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('52492BD38A9E4FB4867C27DD2A1D291B', 'Audi A3 (import)_2017 _Cabriolet_40_TFSI', '34.35', 'Glacier white _FFFFFF', 'Compact car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('543FD9BBBF4C440DBB7C37D576AB1088', 'Audi A1_2016 models _30_TFSI_Sportback_S_Line sports version', '21.85', 'Amalfi White_F4F3E1', 'Small car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('558FE4FDF30E4631AAC234744AF1AC22', 'Audi A1_2016 models _30_TFSI_Sportback_S_Line sports version', '21.85', 'Phantom black _020202', 'Small car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('56300778FD7541B8978DA8EBEF0734BC', 'Audi A1_2016 models _30_TFSI_Sportback_S_Line sports version', '21.85', 'Phantom black _020203', 'Small car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('5724082D762241E5BC3606ED0BE3201E', 'Audi A1_2016 models _30_TFSI_Sportback_S_Line sports version', '21.85', 'Glacier white _FFFFFF', 'Small car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('57500CB7B9714C2182A3A098C59BFA64', 'Audi A1_2016 _30_TFSI_Sportback_Design Fashion Edition', '18.98', 'Amalfi White_F4F3E1', 'Small car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('5823558C5F914E118E906BC6488D2929', 'Audi A1_2016 _30_TFSI_Sportback_Design Fashion Edition', '18.98', 'Phantom black _020202', 'Small car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('591D09DED3B04737AECA2710F6F57A44', 'Audi A1_2016 _30_TFSI_Sportback_Design Fashion Edition', '18.98', 'Amalfi White_F4F3E1', 'Small car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('5C9E6C2CDA914116AC3CD0CA019CB0AA', 'Audi A1_2018 _30_TFSI_Limited Collector\'s Edition', '21.85', 'Sepang Blue _2465A9', 'Small car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('5FFCB2DF916945389C2D58123D963A7C', 'Audi A1_2018 _30_TFSI_Limited Collector\'s Edition', '21.85', 'Sepang Blue _2465A9', 'Small car', '35E4EA', 'A4D11825E3', '0');
INSERT INTO `car` VALUES ('604209D689EE4235B0926DBB0CEE2331', 'Audi A1_2018 _30_TFSI_Limited Collector\'s Edition', '21.85', 'Sepang Blue _2465A9', 'Small car', '35E4EA', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('61F5631FD36840CC9402E9D3D4DCE4D9', 'Audi S7_2018 _4.0_TFSI_quattro', '126.1', 'Sepang Blue _2465A9', 'Medium and large car', '35E4EA', 'A83B33D9C1', '1');
INSERT INTO `car` VALUES ('6239EB93434D4461B86A88815B4EAC65', 'Audi S7_2018 _4.0_TFSI_quattro', '126.1', 'Misano Red_CD002B', 'Medium and large car', '35E4EA', 'A83B33D9C1', '1');
INSERT INTO `car` VALUES ('645C27BECCAE423AB2F8AE429D13C046', 'Audi S7_2018 _4.0_TFSI_quattro', '126.1', 'Tianyun ash_2F3032', 'Medium and large car', '35E4EA', 'A83B33D9C1', '1');
INSERT INTO `car` VALUES ('65111FF8BE5943379251F44180AA6B78', 'Audi S7_2018 _4.0_TFSI_quattro', '126.1', 'Misano Red_CD002B', 'Medium and large car', '35E4EA', 'A83B33D9C1', '1');
INSERT INTO `car` VALUES ('656846C3C86F4044902F7D135E52C7BE', 'Audi S7_2018 _4.0_TFSI_quattro', '126.1', 'Sepang Blue _2465A9', 'Medium and large car', '35E4EA', 'A83B33D9C1', '1');
INSERT INTO `car` VALUES ('658E9CA24BAB4BECA0BD65015DC3C225', 'Audi TT_RS_2017 _TT_RS_2.5T_Coupe', '78.78', 'Null', 'Sports car', '166B71', 'A83B33D9C1', '1');
INSERT INTO `car` VALUES ('67045BBC263F4DFF884DF45BFC39F987', 'Audi R8_2016 _V10_Coupe_Performance', '235.48', 'Sprint red _DC020C', 'Sports car', '166B71', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('67B8CB6700254907B417B013BEA022F3', 'Audi R8_2017 _V10_Spyder', '218.8', 'Tango Red_D2181C', 'Sports car', '166B71', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('6859EC8CF91C42AEAF6C6922970BE5BF', 'Audi R8_2017 _V10_Coupe', '199.98', 'Misos Black_000000', 'Sports car', '166B71', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('6941AFE3DDE747ED9984B9E44006B82D', 'Audi RS_7_2016 _RS_7_4.0T_Sportback_performance', '176.2', 'Misos Black_000000', 'Medium and large car', '166B71', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('6C4DACE706D64173AA9AF10EBFA6C89A', 'Audi RS_7_2016 _RS_7_4.0T_Sportback_performance', '176.2', 'Camouflage green _383C33', 'Medium and large car', '166B71', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('6D04A057C5874B16BA2231D3BA7EFF72', 'Audi RS_7_2016 _RS_7_4.0T_Sportback', '157.7', 'Tianyun ash _666668', 'Medium and large car', '166B71', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('6F78F6F6CE044964A1AD29500AA05648', 'Audi RS_7_2016 _RS_7_4.0T_Sportback', '157.7', 'Nado Grey_8E8E90', 'Medium and large car', '166B71', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('718FEA18077D4877A96313C5382749AD', 'Audi RS_7_2016 _RS_7_4.0T_Sportback', '157.7', 'Misano Red_E12828', 'Medium and large car', '166B71', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('72D3D79027804793AB30286A4B39615E', 'Audi RS_6_2016 _RS_6_4.0T_Avant', '139.1', 'Misano Red_E12828', 'Medium and large car', '166B71', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('735212F7EC8F4E1F8CFC4D652468AA0B', 'Audi RS_6_2016 _RS_6_4.0T_Avant', '139.1', 'Foil silver _CAD1D7', 'Medium and large car', '166B71', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('7DAC4538AD53408187622599E508FB76', 'Audi Q3_2018 _30 anniversary year type _40_TFSI_quattro_ full-time four-wheel drive sport', '34.07', 'Sea blue_3F6383', 'Compact SUV', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('804D44CFD53E4CC784A2501A1EBCA2CD', 'Audi Q3_2018 _30 anniversary year type _40_TFSI_quattro_ full-time four-wheel drive sport', '34.07', 'Platinum rice _8A7244', 'Compact SUV', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('815EBC16978A48D3AA498F5B7F153E2E', 'Audi Q3_2018 _30 anniversary year type _35_TFSI_ sport type', '30.87', 'Bullfighter red _39090A', 'Compact SUV', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('81DFBC023BA1421DA9F7A200E700C8EF', 'Audi Q3_2018 _30 anniversary year type _35_TFSI_ sport type', '30.87', 'Dakota ash_64544E', 'Compact SUV', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('89DCE278D0EB49A1B7C333F5F516540E', 'Audi Q3_2018 _30 anniversary year type _35_TFSI_ stylish', '28.56', 'Legendary black _101010', 'Compact SUV', '8AE529', 'A83B33D9C1', '1');
INSERT INTO `car` VALUES ('8ABD78DE6A014AC587941D43FB19EE65', 'Audi Q3_2018 _30 anniversary year type _35_TFSI_ stylish', '28.56', 'Quicksand gold_B67630', 'Compact SUV', '8AE529', 'A83B33D9C1', '1');
INSERT INTO `car` VALUES ('8CED5D1484C54C929F471D33203E4461', 'Audi Q3_2018 _30 anniversary year type _35_TFSI_ stylish', '28.56', 'Sea blue_3F6383', 'Compact SUV', '8AE529', 'A83B33D9C1', '1');
INSERT INTO `car` VALUES ('8ED5522E2D5C442CB0042FDCB45D7B61', 'Audi Q3_2018 _30 anniversary year type _30_TFSI_ fashion type', '28.87', 'Quicksand gold_B67630', 'Compact SUV', '8AE529', 'A83B33D9C1', '1');
INSERT INTO `car` VALUES ('8F6EF84A9E924910B29D69CB869666FC', 'Audi Q3_2018 _30 anniversary year type _30_TFSI_ fashion type', '28.87', 'Phantom Black _070A01', 'Compact SUV', '8AE529', 'A83B33D9C1', '1');
INSERT INTO `car` VALUES ('8F8B667E80BD468CB6D8744158B0FE4D', 'Audi Q3_2018 _30 anniversary year type _30_TFSI_ fashion type', '28.87', 'Phantom Black _070A01', 'Compact SUV', '8AE529', 'A83B33D9C1', '1');
INSERT INTO `car` VALUES ('8FF02D24C9674C8785C62CDDBFFA908B', 'Audi Q3_2018 _30 anniversary year type _30_TFSI_ stylish', '26.56', 'Quicksand gold_B67630', 'Compact SUV', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('907655B54C5B4D56B8249222EFF58560', 'Audi Q3_2018 _30 anniversary year type _30_TFSI_ stylish', '26.56', 'Quicksand gold_B67630', 'Compact SUV', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('920026C033864FFC899157C3BD917537', 'Audi Q3_2018 _30 anniversary year type _30_TFSI_ standard type', '24.69', 'Phantom Black _070A01', 'Compact SUV', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('92A2C6CAE7CC4C149F2283A010A47312', 'Audi Q3_2018 _30 anniversary year type _30_TFSI_ standard type', '24.69', 'Sea blue_3F6383', 'Compact SUV', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('92C7F4B3EB6443FB9E6E58BCA54C9800', 'Audi Q3_2018 _30 anniversary year type _30_TFSI_ standard type', '24.69', 'Sea blue_3F6383', 'Compact SUV', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('93007F86695E4B31B1BCE9A51AE1D6AB', 'Audi Q3_2018 _30 anniversary year type _30_TFSI_ standard type', '24.69', 'Sea blue_3F6383', 'Compact SUV', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('93C68ADD23D449C39107E95E165D05B0', 'Audi A6L new energy _2018 models _40_e-tron', '45.48', 'Null', 'Medium and large car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('93C9E7D656064C50BA5E2CA2F6F1861D', 'Audi A6L new energy _2018 models _40_e-tron', '45.48', 'Null', 'Medium and large car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('96CE73FCD0E543459ED3DA33126877C3', 'Audi A6L new energy _2018 models _40_e-tron', '45.48', 'Null', 'Medium and large car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('9714000018434E7DB46625D9B8FFC3AF', 'Audi A6L_2018 _30 anniversary year type _50_TFSI_quattro_ exclusive type', '69.48', 'Bullfighter red _39090A', 'Medium and large car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('9B26014AFFBF45C8A2984E57FBAACBE5', 'Audi A6L_2018 _30 anniversary year type _50_TFSI_quattro_ exclusive type', '69.48', 'Bullfighter red _39090A', 'Medium and large car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('9B74E72BA2C849588634F7423C17EF60', 'Audi A6L_2018 _30 anniversary year type _35_TFSI_ sport type', '44.5', 'Argus brown_393736', 'Medium and large car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('9D3E12C194E94E078E48C0E9F546B4E9', 'Audi A3_2018 _30 anniversary year type _Sportback_35_TFSI_ aggressive type', '19.05', 'Kanas Green_A5B2A8', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('9DD6F16A3FD7492BACA1DC6916A5237C', 'Audi A6L_2018 _30 anniversary year type _35_TFSI_ sport type', '44.5', 'Legendary black _101010', 'Medium and large car', '8AE529', '075585A92C', '1');
INSERT INTO `car` VALUES ('9DE757DC1A58455D937F8DAAD0775F9A', 'Audi A6L_2018 _30 anniversary year type _35_TFSI_ sport type', '44.5', 'Legendary black _101010', 'Medium and large car', '8AE529', '075585A92C', '1');
INSERT INTO `car` VALUES ('9E68DC97039C49AB82C9D16CED569C5B', 'Audi A6L_2018 _30 anniversary year type _35_TFSI_ sport type', '44.5', 'White gold _B7AB92', 'Medium and large car', '8AE529', '075585A92C', '1');
INSERT INTO `car` VALUES ('9F845CB5107346A093BBCAF7BED63A93', 'Audi A6L_2018 _30 anniversary year type _35_TFSI_ sport type', '44.5', 'White gold _B7AB92', 'Medium and large car', '8AE529', '075585A92C', '1');
INSERT INTO `car` VALUES ('9FD5170539B545FAADBB7EFCB8A2E41C', 'Audi A6L_2018 _30 anniversary year _35_TFSI_ stylish', '41.78', 'Legendary black _101010', 'Medium and large car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('A13D1DD9E59942C186404B3DCDA4D602', 'Audi A6L_2018 _30 anniversary year _35_TFSI_ stylish', '41.78', 'Bullfighter red _39090A', 'Medium and large car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('A1A550F20C114A1F88537D52A9FA7162', 'Audi A6L_2018 _30 anniversary year _35_TFSI_ stylish', '41.78', 'Legendary black _101010', 'Medium and large car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('A1CA50EBB0374934832812A706C24B9C', 'Audi A6L_2018 _30 anniversary year _35_TFSI_ stylish', '41.78', 'white_F7F6F2', 'Medium and large car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('A3C0E11FBEF1495EA34D3CDF646D4E9F', 'Audi A6L_2018 _30 anniversary year type _TFSI_ aggressive type', '40.28', 'Foil silver _D2D2D4', 'Medium and large car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('A3FB35706561494286ADFAA3753D1CDB', 'Audi A6L_2018 _30 anniversary year type _TFSI_ aggressive type', '40.28', 'Foil silver _D2D2D4', 'Medium and large car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('A4143CA5B9FD4782B033C13C6A2FCAE3', 'Audi A6L_2018 _30 anniversary year type _TFSI_ aggressive type', '40.28', 'Tango Red _89030A', 'Medium and large car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('A427B2003C094B30ABC0F2A5D1DB4F4D', 'Audi A6L_2018 _30 anniversary year type _TFSI_ aggressive type', '40.28', 'Tango Red _89030A', 'Medium and large car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('A69A6079038048B19105A51D941ED150', 'Audi A6L_2018 _30 anniversary year type _TFSI_ aggressive type', '40.28', 'Glacier blue _296EA3', 'Medium and large car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('A78BEE240143437FBA4C80AE56CE84EB', 'Audi A4L_2018 _30 anniversary year type _40_TFSI_ aggressive type', '30.7', 'White gold _B7AB92', 'Medium car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('A84C35AE8B5C4F7BB9DF6BD962852AE0', 'Audi A4L_2018 _30 anniversary year type _40_TFSI_ aggressive type', '30.7', 'White gold _B7AB92', 'Medium car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('A85744715C55417DAC391A7249018F70', 'Audi A4L_2018 _30 anniversary year type _40_TFSI_ aggressive type', '30.7', 'Argus brown_393736', 'Medium car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('A9A84C551C4A4FB2A575D269BE76B6BE', 'Audi A4L_2018 _30 anniversary year type _40_TFSI_ aggressive type', '30.7', 'Bullfighter red _39090A', 'Medium car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('AACF9F233DEF4069B2A0C8A3FFBB6B24', 'Audi A4L_2018 _30 anniversary year type _30_TFSI_ aggressive type', '29', 'Argus brown_393736', 'Medium car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('AB2E86D0FB1E48FA81AD51FFE26D74F9', 'Audi A4L_2018 _30 anniversary year type _30_TFSI_ aggressive type', '29', 'Argus brown_393736', 'Medium car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('AC5EA12E383D4658B53E4AFA34CDB98D', 'Audi A4L_2018 _30 anniversary year type _30_TFSI_ aggressive type', '29', 'Monsoon ash _374A4A', 'Medium car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('ACA52A96C2BB47E19A25FBE14EE3A7FD', 'Audi A3_2018 _30 anniversary year type _Limousine_40_TFSI_ sport type', '25.62', 'Monsoon ash _374A4A', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('AD7E88845A9E4BD28E48707331A8295C', 'Audi A3_2018 _30 anniversary year type _Limousine_40_TFSI_ sport type', '25.62', 'Monsoon ash _374A4A', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('AE8B4322AF9A41108EB3D4006BD51835', 'Audi A3_2018 _30 anniversary year type _Limousine_40_TFSI_ sport type', '25.62', 'White whale brown _482807', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('AEA6DCF83C3B4517ACC34786DC9F797D', 'Audi A3_2018 _30 anniversary year type _Limousine_40_TFSI_ sport type', '25.62', 'White whale brown _482807', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('AFA5E08E8A064B65B23B010214B090E1', 'Audi A3_2018 _30 anniversary year type _Limousine_40_TFSI_ sport type', '25.62', 'White whale brown _482807', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('AFD1BE4DB8B64609A7519DD463816113', 'Audi A3_2018 _30 anniversary year type _Limousine_40_TFSI_ fashion type', '25.62', 'White whale brown _482807', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('B1886F0C025F4F0DA47A3BD58EB3BB24', 'Audi A3_2018 _30 anniversary year type _Limousine_40_TFSI_ fashion type', '25.62', 'Samoan Orange_D37208', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('B56F352F70124CEC929BE4CB89A2BEE1', 'Audi A3_2018 _30 anniversary year type _Limousine_40_TFSI_ fashion type', '25.62', 'Samoan Orange_D37207', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('B62A56AAAC354F279152B0B6B4377F55', 'Audi A3_2018 _30 anniversary year type _Limousine_40_TFSI_ fashion type', '25.62', 'Magic black _000000', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('B95DAF8DB5924BC38E7200F664CE56E4', 'Audi A3_2018 _30 anniversary year type _Limousine_40_TFSI_ fashion type', '25.62', 'Sea blue_3F6383', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('B9E1340AC55D456186DE8BA95FC6C2D3', 'Audi A3_2018 _30 anniversary year _Limousine_35_TFSI_ sporty', '23.97', 'Sea blue_3F6383', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('B9E767B4FE104C04B19B7D10A0B151D2', 'Audi A3_2018 _30 anniversary year _Limousine_35_TFSI_ sporty', '23.97', 'Sea blue_3F6383', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('BA2B93DC3A5647269746A9EC30F3BB14', 'Audi A3_2018 _30 anniversary year _Limousine_35_TFSI_ sporty', '23.97', 'Sea blue_3F6383', 'Compact car', '8AE529', 'E02F1F631A', '1');
INSERT INTO `car` VALUES ('BBF87213F4C449FEA035DF9B9E18AD92', 'Audi A3_2018 _30 anniversary year _Limousine_35_TFSI_ sporty', '23.97', 'Foil silver _D2D2D4', 'Compact car', '8AE529', 'E02F1F631A', '1');
INSERT INTO `car` VALUES ('BCEFAF768AED4347B3513174075775D5', 'Audi A3_2018 _30 anniversary year type', '23.97', 'Foil silver _D2D2D4', 'Compact car', '8AE529', 'E02F1F631A', '1');
INSERT INTO `car` VALUES ('C0081BE1A63745F096994F245C162B23', 'Audi A3_2018 _30 anniversary year type _Limousine_35_TFSI_ fashion type', '23.97', 'Foil silver _D2D2D4', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('C0189E35BDC04005816091802AD1C873', 'Audi A3_2018 _30 anniversary year type _Limousine_35_TFSI_ fashion type', '23.97', 'Foil silver _D2D2D4', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('C131A254F7D94A78897B21DCD9DD4358', 'Audi A3_2018 _30 anniversary year type _Limousine_35_TFSI_ fashion type', '23.97', 'Monsoon ash _374A4A', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('C47B269ABDE94F42901A8ADB6C14E58B', 'Audi A3_2018 _30 anniversary year type _Limousine_35_TFSI_ fashion type', '23.97', 'Monsoon ash _374A4A', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('C65C00031D614F84B483DE490459D152', 'Audi A3_2018 _30 anniversary year _Limousine_35_TFSI_ stylish', '21.98', 'Monsoon ash _374A4A', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('C7E18693CF414C11854E89CBC25191D7', 'Audi A3_2018 _30 anniversary year _Limousine_35_TFSI_ stylish', '21.98', 'Monsoon ash _374A4A', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('CBE340BF9E6E40A38B1A3BCCAA9D215C', 'Audi A3_2018 _30 anniversary year _Limousine_35_TFSI_ stylish', '21.98', 'Samoan Orange_D37211', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('CBEFAD88E28E4960AD484A9273C7304E', 'Audi A3_2018 _30 anniversary year _Limousine_35_TFSI_ stylish', '21.98', 'Samoan Orange_D37210', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('CDA01F1B8EF641318004D6DC150DBC95', 'Audi A3_2018 _30 anniversary year type _Limousine_35_TFSI_ aggressive type', '19.65', 'Monsoon ash _374A4A', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('CEDDA1340863433B9A5BBB33F91821FA', 'Audi A3_2018 _30 anniversary year type _Limousine_35_TFSI_ aggressive type', '19.65', 'Monsoon ash _374A4A', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('CF9FDBDE7BD644F485E72BC529220171', 'Audi A3_2018 _30 anniversary year type _Limousine_35_TFSI_ aggressive type', '19.65', 'Monsoon ash _374A4A', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('CFDE191E3E27434393E503971B9AB341', 'Audi A3_2018 _30 anniversary year type _Limousine_35_TFSI_ aggressive type', '19.65', 'Monsoon ash _374A4A', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('D0A6A63AFFCD4FE4AEC8EA1EA6D7D2A0', 'Audi A3_2018 _30 anniversary year type _Limousine_35_TFSI_ aggressive type', '19.65', 'Glacier White_F6F6F6', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('D15C96335B95484BAF04F3F333C6372B', 'Audi A3_2018 _30 anniversary year type _Limousine_35_TFSI_ aggressive type', '19.65', 'Glacier White_F6F6F6', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('D26017A4AE984EE6914991B349D5FE9F', 'Audi A3_2018 _30 anniversary year _Sportback_40_TFSI_ sporty', '25.07', 'Magic black _000000', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('D3F11EE5180942309DC2267F4FFB610C', 'Audi A3_2018 _30 anniversary year _Sportback_40_TFSI_ sporty', '25.07', 'Samoan Orange_D37208', 'Compact car', '8AE529', 'E02F1F631A', '1');
INSERT INTO `car` VALUES ('D46645434E4D474B8FB28A1D48C34BEF', 'Audi A3_2018 _30 anniversary year _Sportback_40_TFSI_ sporty', '25.07', 'Samoan Orange_D37207', 'Compact car', '8AE529', 'E02F1F631A', '1');
INSERT INTO `car` VALUES ('D53FF2D3F3FE4399B1487DFF26D2A84C', 'Audi A3_2018 _30 anniversary year _Sportback_40_TFSI_ sporty', '25.07', 'Magic black _000000', 'Compact car', '8AE529', 'E02F1F631A', '1');
INSERT INTO `car` VALUES ('D5ECAE83A74646579A4C343926AE416F', 'Audi A3_2018 _30 anniversary year _Sportback_40_TFSI_ sporty', '25.07', 'Sea blue_3F6383', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('D902B531B96A407F9C1669CBB0AFEA3A', 'Audi A3_2018 _30 anniversary year type _Sportback_35_TFSI_ aggressive type', '19.05', 'Glacier White_F6F6F6', 'Compact car', '8AE529', 'E02F1F631A', '1');
INSERT INTO `car` VALUES ('D9C2C2A8E50245B09CE5ACDEC21C77AB', 'Audi A3_2018 _30 anniversary year _Sportback_40_TFSI_ fashion', '25.07', 'Sea blue_3F6383', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('DD2BB3FEBFA6473094B0889B4CEC42F4', 'Audi A3_2018 _30 anniversary year _Sportback_40_TFSI_ fashion', '25.07', 'Sea blue_3F6383', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('E6124A7423424144BB56E71715FD065F', 'Audi A3_2018 _30 anniversary year _Sportback_40_TFSI_ fashion', '25.07', 'Sea blue_3F6383', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('E802A6ADC6604D07A74C35431ADB8121', 'Audi A3_2018 _30 anniversary year _Sportback_40_TFSI_ fashion', '25.07', 'Sea blue_3F6383', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('E8A8B94503DB478FB41903A615F12E52', 'Audi A3_2018 _30 anniversary year _Sportback_40_TFSI_ fashion', '25.07', 'Sea blue_3F6383', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('E8AA7029F6B540F98281169DA72574C1', 'Audi A3_2018 _30 anniversary year _Sportback_40_TFSI_ fashion', '25.07', 'White gold _B7AB92', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('E98BE579EEBA43BD86102E485B75906F', 'Audi A3_2018 _30 anniversary year _Sportback_35_TFSI_ sporty', '23.37', 'Foil silver _D2D2D4', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('EAFC2E91407641CD838EB0B395ECE129', 'Audi A3_2018 _30 anniversary year _Sportback_35_TFSI_ sporty', '23.37', 'Foil silver _D2D2D4', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('EBA001D605F1493E98E8EAE1A8FE590E', 'Audi A3_2018 _30 anniversary year _Sportback_35_TFSI_ sporty', '23.37', 'Foil silver _D2D2D4', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('EC93B01890F542C58E74D1C0098A167C', 'Audi A3_2018 _30 anniversary year _Sportback_35_TFSI_ sporty', '23.37', 'Sea blue_3F6383', 'Compact car', '8AE529', '075585A92C', '1');
INSERT INTO `car` VALUES ('ECFAC54F8409486DB466BCC248257D29', 'Audi A3_2018 _30 anniversary year _Sportback_35_TFSI_ sporty', '23.37', 'Sea blue_3F6383', 'Compact car', '8AE529', '075585A92C', '1');
INSERT INTO `car` VALUES ('ED4374BE5F9A4CF799AF481B03FBCEB0', 'Audi A3_2018 _30 anniversary year _Sportback_35_TFSI_ sporty', '23.37', 'Sea blue_3F6383', 'Compact car', '8AE529', '075585A92C', '1');
INSERT INTO `car` VALUES ('EF3CF37F8E4F4A399CE92E4D77703B79', 'Audi A3_2018 _30 anniversary year _Sportback_35_TFSI_ fashion', '23.37', 'Glacier White_F6F6F6', 'Compact car', '8AE529', '075585A92C', '1');
INSERT INTO `car` VALUES ('F12EB706B18144FF875B92E43B58402A', 'Audi A3_2018 _30 anniversary year _Sportback_35_TFSI_ fashion', '23.37', 'Glacier White_F6F6F6', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('F14CBF3475894716AFE42C0F64123F0F', 'Audi A3_2018 _30 anniversary year _Sportback_35_TFSI_ fashion', '23.37', 'Glacier White_F6F6F6', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('F1B153D7DAC94473B2ED524D1901C1CC', 'Audi A3_2018 _30 anniversary year _Sportback_35_TFSI_ fashion', '23.37', 'Glacier White_F6F6F6', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('F25441FB448C44D099EA890534DA867E', 'Audi A3_2018 _30 anniversary year _Sportback_35_TFSI_ fashion', '23.37', 'Magic black _000000', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('F37B24B0F007471CBA7F810593D47D23', 'Audi A3_2018 _30 anniversary year _Sportback_35_TFSI_ fashion', '23.37', 'Magic black _000000', 'Compact car', '8AE529', 'E02F1F631A', '1');
INSERT INTO `car` VALUES ('F4B89F7D2C7C4D31A051D4A53495673F', 'Audi A3_2018 _30 anniversary year _Sportback_35_TFSI_ fashion', '23.37', 'Magic black _000000', 'Compact car', '8AE529', 'E02F1F631A', '1');
INSERT INTO `car` VALUES ('F647F938CAB64F97B09711FB267B1893', 'Audi A3_2018 _30 anniversary year _Sportback_35_TFSI_ fashion', '23.37', 'Magic black _000000', 'Compact car', '8AE529', 'E02F1F631A', '1');
INSERT INTO `car` VALUES ('F6D771627FFD48928C8291E05ED2FB27', 'Audi A3_2018 _30 anniversary year _Sportback_35_TFSI_ stylish', '21.38', 'Sea blue_3F6383', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('F813058779454392A115F5807A09C336', 'Audi A3_2018 _30 anniversary year _Sportback_35_TFSI_ stylish', '21.38', 'Sea blue_3F6383', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('F99801B8415D416683FFACC7BAE81694', 'Audi A3_2018 _30 anniversary year _Sportback_35_TFSI_ stylish', '21.38', 'Sea blue_3F6383', 'Compact car', '8AE529', 'A4D11825E3', '1');
INSERT INTO `car` VALUES ('FACBFB8003A8496FBB13C5B0A459DBE3', 'Audi A3_2018 _30 anniversary year _Sportback_35_TFSI_ stylish', '21.38', 'Sea blue_3F6383', 'Compact car', '8AE529', '075585A92C', '1');
INSERT INTO `car` VALUES ('FB4E6B59AC914DB8B4A536DC73D7C0BD', 'Audi A3_2018 _30 anniversary year _Sportback_35_TFSI_ stylish', '21.38', 'Sea blue_3F6383', 'Compact car', '8AE529', '075585A92C', '1');
INSERT INTO `car` VALUES ('FC91FDDB05984D978CAD09412E232D0B', 'Audi A3_2018 _30 anniversary year _Sportback_35_TFSI_ stylish', '21.38', 'Sea blue_3F6383', 'Compact car', '8AE529', '075585A92C', '1');
INSERT INTO `car` VALUES ('FDFED6A4EC5C43F7AAA73110BB369957', 'Audi A3_2018 _30 anniversary year type _Sportback_35_TFSI_ aggressive type', '19.05', 'White gold _B7AB92', 'Compact car', '8AE529', '075585A92C', '1');
INSERT INTO `car` VALUES ('FE8FAA7F4F784D8A9A6F7154F5D4EFC0', 'Audi A3_2018 _30 anniversary year type _Sportback_35_TFSI_ aggressive type', '19.05', 'Sepang Blue _2465A9', 'Compact car', '8AE529', 'E02F1F631A', '1');

SET FOREIGN_KEY_CHECKS = 1;

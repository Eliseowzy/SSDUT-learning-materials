﻿/*
SQLyog Ultimate v8.32 
MySQL - 5.1.32-community-log : Database - goods
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`4s_shop` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `4s_shop`;

/*Table structure for table `t_admin` */


DROP TABLE IF EXISTS `manager`;
/*如果有 先删表再重新建立*/


CREATE TABLE `manager` (
  `manager_id` char(10) NOT NULL,
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`manager_id`)
); 
#ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*Data for the table `t_admin` */
/*
insert  into `manager`(`manager_id`,`password`) values ('m1','123');
insert  into `manager`(`manager_id`,`password`) values ('m2','123');
insert  into `manager`(`manager_id`,`password`) values ('m3','123');*/
/*Table structure for table `t_book` */

DROP TABLE IF EXISTS `car`;

create table `car` (
`car_id` char(32) NOT NULL,
`car_name` varchar(30),
`car_price` varchar(30),
`car_color` varchar(10),
`car_type` varchar(10),
`factory_id` varchar(10),
`carbase_id` varchar(16),
`car_has` varchar(1),
CONSTRAINT `FK_car_factory` FOREIGN KEY(`factory_id`) REFERENCES `factory`(factory_id),
CONSTRAINT `FK_car_carbase` FOREIGN KEY(`carbase_id`) REFERENCES `carbase`(carbase_id)

);
#ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;


/*Data for the table `car` */


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


/*Table structure for table `factory` */

DROP TABLE IF EXISTS `factory`;

create table `factory`(
`factory_id` char(6) NOT NULL,
`factory_name` varchar(10),
`factory_city` varchar(10),

PRIMARY KEY (`factory_id`)
)ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `factory` */
insert into `factory`(`factory_id`,`factory_name`,`factory_city`)values('35E4EA','Audi (import)','Ingolstadt');
insert into `factory`(`factory_id`,`factory_name`,`factory_city`)values('8AE529','FAW - Volkswagen Audi','Changchun');
insert into `factory`(`factory_id`,`factory_name`,`factory_city`)values('166B71','Audi Sport','Changchun');
/*Table structure for table `factory` */

DROP TABLE IF EXISTS `carbase`;

create table `carbase`(
`carbase_id` char(10) NOT NULL,
`carbase_city` varchar(10),

PRIMARY KEY (`carbase_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

/*Data for the table `carbase` */
insert into`carbase`(`carbase_id`,`carbase_city`)values('A4D11825E3','Dalian');
insert into`carbase`(`carbase_id`,`carbase_city`)values('075585A92C','Beijing');
insert into`carbase`(`carbase_id`,`carbase_city`)values('E02F1F631A','Shenyang');
insert into`carbase`(`carbase_id`,`carbase_city`)values('A83B33D9C1','Changchun');




/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

create table `customer`(
`customer_id` char(16) NOT NULL,
`customer_name` varchar(10) DEFAULT NULL,
`customer_vip` varchar(1), 
`customer_IdCard` varchar(25),
`customer_tel` varchar (11),
PRIMARY KEY(`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*Data for the table `costomer` */
INSERT INTO `customer` VALUES ('00464FC39DB3BAA6', 'Uriah Raphael', '1', '230623000000000000 ', '15300568069');
INSERT INTO `customer` VALUES ('010A4049A285303E', 'Chasel Michelson', '0', '130626000000000000 ', '15902947783');
INSERT INTO `customer` VALUES ('04504F40A71CD0E8', 'Hunter Oscar', '0', '320321000000000000 ', '13505675988');
INSERT INTO `customer` VALUES ('07214D18BB594EBC', 'Hulda Winifred', '1', '440785000000000000 ', '13907261954');
INSERT INTO `customer` VALUES ('07F745908A094CE3', 'Scott Wilhelmina', '0', '511402000000000000 ', '13502038459');
INSERT INTO `customer` VALUES ('0B294261A5EA44D3', 'Bing Lucas', '1', '440500000000000000 ', '15504005756');
INSERT INTO `customer` VALUES ('0DA04FFBA5423A4A', 'Wanda Jennings', '1', '511325000000000000 ', '15908221486');
INSERT INTO `customer` VALUES ('0E5944E285EDDE2D', 'Geraldine Fowler', '1', '451102000000000000 ', '13300924892');
INSERT INTO `customer` VALUES ('12CF46FBA5577CE0', 'Rudolf North', '1', '350125000000000000 ', '15706593865');
INSERT INTO `customer` VALUES ('1660462D9EB4B954', 'Rupert Louisa', '1', '330104000000000000 ', '13808250006');
INSERT INTO `customer` VALUES ('1B7D4869B99192A0', 'Nora Wyld(e)', '1', '220203000000000000 ', '15506305688');
INSERT INTO `customer` VALUES ('1CD541A9BB4EE196', 'Josephine Smedley', '1', '530500000000000000 ', '13605392364');
INSERT INTO `customer` VALUES ('1D774680B01C1ECA', 'Elmer Bryce', '0', '451027000000000000 ', '15008861138');
INSERT INTO `customer` VALUES ('1E84438A83FC319B', 'Elliot Katte', '1', '420200000000000000 ', '13608320901');
INSERT INTO `customer` VALUES ('22A8422E8708F738', 'Tracy Black', '1', '370923000000000000 ', '13806978216');
INSERT INTO `customer` VALUES ('22B143C6A1DBECE2', 'Atwood Woolley', '1', '222404000000000000 ', '13207252654');
INSERT INTO `customer` VALUES ('23DC4850B474428D', 'Judy Samuel', '1', '450000000000000000 ', '13506554957');
INSERT INTO `customer` VALUES ('24734EF599499848', 'George Rhys', '1', '341125000000000000 ', '15007201983');
INSERT INTO `customer` VALUES ('2AAF4F2785C00383', 'Sheila Jerome', '1', '620621000000000000 ', '15108416919');
INSERT INTO `customer` VALUES ('2C1B4D739EB224F3', 'Natalie Abraham', '0', '510304000000000000 ', '13100103401');
INSERT INTO `customer` VALUES ('2F1F438ABE4D592A', 'Nathaniel Motley', '1', '450126000000000000 ', '15907620212');
INSERT INTO `customer` VALUES ('2F884CB5A0E0F823', 'Ryan Joan', '0', '420500000000000000 ', '13305182449');
INSERT INTO `customer` VALUES ('32394E39BBBD0D79', 'Frank Bruce', '0', '411324000000000000 ', '13406638874');
INSERT INTO `customer` VALUES ('32574A1B86FA61F7', 'Olga Sharp', '1', '654323000000000000 ', '13707553443');
INSERT INTO `customer` VALUES ('351642C0AAADF511', 'Steward Kelvin', '1', '532501000000000000 ', '13108818735');
INSERT INTO `customer` VALUES ('382343FE8503558B', 'Gregary Steinbeck', '1', '370681000000000000 ', '15906974971');
INSERT INTO `customer` VALUES ('38F54B69872F8430', 'Tyrone London', '1', '500234000000000000 ', '13307251071');
INSERT INTO `customer` VALUES ('398F451190E87FF5', 'Joyce Kennedy', '1', '330322000000000000 ', '13504060013');
INSERT INTO `customer` VALUES ('3C7744FDAFCF58A3', 'Angelo DuBois', '1', '360000000000000000 ', '13702088040');
INSERT INTO `customer` VALUES ('45124D2E9EBB3247', 'Yvonne Eden', '1', '330100000000000000 ', '13600077152');
INSERT INTO `customer` VALUES ('469D4ACC89C5166C', 'Trista Occam', '1', '622921000000000000 ', '15608741143');
INSERT INTO `customer` VALUES ('51AF4C4AB19932C7', 'Lynn Attlee', '1', '310109000000000000 ', '15206015745');
INSERT INTO `customer` VALUES ('52F340CBA4739DFD', 'Neil Hardy', '0', '130529000000000000 ', '13008350023');
INSERT INTO `customer` VALUES ('5B0E4C7FB5865E1E', 'Norton Dalton', '0', '370113000000000000 ', '13300526552');
INSERT INTO `customer` VALUES ('62044F17A046E4D7', 'Matt Paul', '1', '321203000000000000 ', '15702374636');
INSERT INTO `customer` VALUES ('62F645A8A4468DA6', 'Walter Margery', '1', '630104000000000000 ', '15108652139');
INSERT INTO `customer` VALUES ('67AF435392ECF3A6', 'Mike Sophy', '1', '440825000000000000 ', '15908785163');
INSERT INTO `customer` VALUES ('725F45EC9A5BF690', 'Beryl Johnston(e)', '0', '542427000000000000 ', '13108734263');
INSERT INTO `customer` VALUES ('754F46A6A5E59AF8', 'Salome Twain', '1', '140624000000000000 ', '15602028686');
INSERT INTO `customer` VALUES ('80E9487D8AAADBC5', 'Vita Nixon', '0', '120106000000000000 ', '13708485541');
INSERT INTO `customer` VALUES ('832342B8B99E8F48', 'Marjorie Walpole', '1', '211403000000000000 ', '15203577216');
INSERT INTO `customer` VALUES ('84934D4791E79B24', 'Aries Jonathan', '1', '350784000000000000 ', '13400392168');
INSERT INTO `customer` VALUES ('85C34948BCEDDA54', 'Aldrich Grantham', '0', '360803000000000000 ', '15008402038');
INSERT INTO `customer` VALUES ('895844EE8C24029F', 'Pag Sandy', '0', '61072620080124768X', '13406092938');
INSERT INTO `customer` VALUES ('898F4BFBB0EA12AC', 'Bard Maurice', '0', '320205000000000000 ', '15005511956');
INSERT INTO `customer` VALUES ('8D484E69A055A1A6', 'Adelaide Chamberlain', '1', '542123000000000000 ', '15105828100');
INSERT INTO `customer` VALUES ('905B433199104922', 'Janet Nancy', '1', '440222000000000000 ', '13401925809');
INSERT INTO `customer` VALUES ('92CF4FCD9A3C21B2', 'Blair Max', '0', '141130000000000000 ', '13508701295');
INSERT INTO `customer` VALUES ('9341471DAD633B50', 'Fitch Tommy', '1', '450221000000000000 ', '15701361865');
INSERT INTO `customer` VALUES ('94CC4A02B84978A7', 'Adam Frederick', '1', '652101000000000000 ', '15104259012');
INSERT INTO `customer` VALUES ('94DC490098E289A7', 'Phoebe Fanny', '1', '420525000000000000 ', '15202528962');
INSERT INTO `customer` VALUES ('9639494E811CA18B', 'Sid Simpson', '0', '623000000000000000 ', '13103775668');
INSERT INTO `customer` VALUES ('9B8443D59AAD2F2B', 'Fay Childe', '1', '340322000000000000 ', '13806138513');
INSERT INTO `customer` VALUES ('9E354113879B6500', 'Jo Hornby', '1', '230183000000000000 ', '13702259055');
INSERT INTO `customer` VALUES ('A0E74B81BB1CB8FE', 'Lydia Thodore', '1', '370983000000000000 ', '13506324685');
INSERT INTO `customer` VALUES ('A1444F51A47821F5', 'Rachel Walker', '1', '610103000000000000 ', '15203078806');
INSERT INTO `customer` VALUES ('A953446E811BDC36', 'Louis Ellis', '1', '130430000000000000 ', '15900813393');
INSERT INTO `customer` VALUES ('AC0B4C5EA436304C', 'Ella Hodge', '1', '131003000000000000 ', '13805061938');
INSERT INTO `customer` VALUES ('AE564250A6B82042', 'Ed Kell(e)y', '1', '440903000000000000 ', '13805716436');
INSERT INTO `customer` VALUES ('AF7E428B91052709', 'Wayne Hart', '1', '34182119880914019X', '13208680827');
INSERT INTO `customer` VALUES ('B34840A3BB6C674D', 'Prima Stevenson', '1', '350627000000000000 ', '15100088008');
INSERT INTO `customer` VALUES ('B46943E7A4CCEDEB', 'Catherine Hudson', '0', '440703000000000000 ', '13205591396');
INSERT INTO `customer` VALUES ('B66645AC9290FC92', 'Susanna Thorndike', '1', '420822000000000000 ', '15508006496');
INSERT INTO `customer` VALUES ('B7694C0B87600A96', 'Bella Carrie', '1', '450302000000000000 ', '13308431408');
INSERT INTO `customer` VALUES ('C11B46789706D7C2', 'Bruno Reed', '0', '610331000000000000 ', '15301206696');
INSERT INTO `customer` VALUES ('C678444DA174C138', 'Conrad Thackeray', '1', '411424000000000000 ', '13200557350');
INSERT INTO `customer` VALUES ('CA6249099516C247', 'Elva Church', '0', '622901000000000000 ', '15700077848');
INSERT INTO `customer` VALUES ('CB4A4381B346AD61', 'Ivan Vincent', '1', '44530219890820767X', '13306195857');
INSERT INTO `customer` VALUES ('D56949EB89A605C1', 'Dora Robbins', '1', '140881000000000000 ', '13503152904');
INSERT INTO `customer` VALUES ('D71E422196392FBE', 'Alice Gray', '0', '320705000000000000 ', '13901532816');
INSERT INTO `customer` VALUES ('D92442BBA9A1ABC5', 'Cornelius Walter', '1', '530622000000000000 ', '13302672452');
INSERT INTO `customer` VALUES ('D9EF4313A5BC991F', 'Eleanore Crichton', '0', '542400000000000000 ', '13306332736');
INSERT INTO `customer` VALUES ('DBC14714A0116BA6', 'Bernie Vaughan', '0', '51333119950521208X', '13002417890');
INSERT INTO `customer` VALUES ('E2E449898CF960EA', 'Zachary Jordan', '1', '420704000000000000 ', '13803982683');
INSERT INTO `customer` VALUES ('E68B4C7E81C73C9C', 'Gemma Lindberg(h)', '0', '522727000000000000 ', '15208184622');
INSERT INTO `customer` VALUES ('EC24421BAFACEA72', 'Baldwin Lincoln', '1', '522301000000000000 ', '15104248957');
INSERT INTO `customer` VALUES ('F1BF494F9B2A42B6', 'Michell Sassoon', '0', '440115000000000000 ', '13306765435');
INSERT INTO `customer` VALUES ('F71A43199BA04984', 'Tiffany More', '0', '650201000000000000 ', '13008021127');
INSERT INTO `customer` VALUES ('FEBF4CE48E070BB7', 'Angela Billy', '0', '441423000000000000 ', '15104183598');

/*Table structure for table `list` */

DROP TABLE IF EXISTS `list`;

CREATE TABLE `list` (
    `list_id` varchar(32),
     `customer_id` varchar(32),
    `car_id` varchar(32),
    `list_date` varchar(10),
    `list_price` varchar(32 ),
    `list_type` varchar(1)
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

/*Data for the table `list` */

INSERT INTO `list` VALUES ('0097E6B035004A4AACE19A8C80E584A3', '1CD541A9BB4EE196', '67B8CB6700254907B417B013BEA022F3', '2009.09.14 11:07:04', '218.8', 0);
INSERT INTO `list` VALUES ('01C1E9808B884594844525828BBFE670', 'A0E74B81BB1CB8FE', '2E4DF55FA863416B96D48F518DA544CD', '2003.03.13 11:31:11', '184.8', 1);
INSERT INTO `list` VALUES ('0434C3D3535C4993A0D0AF71DA9DDD36', '832342B8B99E8F48', 'D15C96335B95484BAF04F3F333C6372B', '2010.04.30 06:57:57', '19.65', 1);
INSERT INTO `list` VALUES ('060AB559C0904163B0419228561E874D', '832342B8B99E8F48', 'D15C96335B95484BAF04F3F333C6372B', '2011.07.19 11:32:19', '19.65', 1);
INSERT INTO `list` VALUES ('08A034B4F7BE42B7B94488BE88D28F5E', '832342B8B99E8F48', '4BFF03CD2941422F8AB2C2B49A6C3137', '2008.01.22 17:40:18', '37.15', 1);
INSERT INTO `list` VALUES ('09502BF952AC4DD491AFF631D9257168', '94CC4A02B84978A7', '20229076BA7D4EE6BC5F0D1FB1C9A8C9', '2003.04.09 01:06:22', '69.98', 1);
INSERT INTO `list` VALUES ('09A5FFF34B74494CA2972542212D7952', '62044F17A046E4D7', '333268A2315D405098FDE3A9EA304326', '2013.02.11 01:51:38', '102.88', 1);
INSERT INTO `list` VALUES ('0C604F4489DC45E9B6D1572077851EE1', 'C678444DA174C138', '72D3D79027804793AB30286A4B39615E', '2009.05.20 19:02:52', '139.1', 1);
INSERT INTO `list` VALUES ('0D1D4D544AAB4888BDCB72BCD13960BA', '45124D2E9EBB3247', '67045BBC263F4DFF884DF45BFC39F987', '2012.01.15 04:18:28', '235.48', 1);
INSERT INTO `list` VALUES ('0D7443DE11394E1788F34365B57F4F37', '24734EF599499848', '52492BD38A9E4FB4867C27DD2A1D291B', '2006.12.07 06:18:48', '34.35', 1);
INSERT INTO `list` VALUES ('0D927DFDB0494E0FB4E4B63657145C4A', '38F54B69872F8430', '65111FF8BE5943379251F44180AA6B78', '2009.04.07 14:45:13', '126.1', 1);
INSERT INTO `list` VALUES ('0D941F96CEE148D085232F58DBC8CCE3', '1660462D9EB4B954', '72D3D79027804793AB30286A4B39615E', '2013.01.11 21:56:40', '139.1', 1);
INSERT INTO `list` VALUES ('0F1CD99D89C3490C8C269C6C06214685', '32574A1B86FA61F7', '72D3D79027804793AB30286A4B39615E', '2017.03.30 18:24:31', '139.1', 1);
INSERT INTO `list` VALUES ('0F4992E43361407784DB278CB73B4DBA', 'EC24421BAFACEA72', '2E4DF55FA863416B96D48F518DA544CD', '2006.08.01 13:42:41', '184.8', 0);
INSERT INTO `list` VALUES ('104CEFC59CE94FE8AD2DC57DF1FE910E', '45124D2E9EBB3247', '67B8CB6700254907B417B013BEA022F3', '2013.09.09 23:59:40', '218.8', 1);
INSERT INTO `list` VALUES ('105FDEDFC9D44AD981386EB84D5CBA97', 'B7694C0B87600A96', '331DFA5E44AF4A2684961E6CD440433D', '2006.06.05 04:49:57', '118.8', 1);
INSERT INTO `list` VALUES ('10717D786EB34075AF04925DD76FC793', 'A953446E811BDC36', '52492BD38A9E4FB4867C27DD2A1D291B', '2010.05.12 11:28:02', '34.35', 1);
INSERT INTO `list` VALUES ('12352F8254474E0B883A69748C04C503', '351642C0AAADF511', 'A84C35AE8B5C4F7BB9DF6BD962852AE0', '2006.03.25 12:37:45', '30.7', 0);
INSERT INTO `list` VALUES ('1316CDDCE9EB4601A15E7143B5E87D2E', 'A953446E811BDC36', '50A8CE5D97C34F66BD725A1818DB449D', '2017.04.30 14:47:06', '34.35', 1);
INSERT INTO `list` VALUES ('132333F1736B4F3EA458B35C03EBDC87', '84934D4791E79B24', '3E18A402D3AD4D538AB72C55A90CB4E2', '2013.03.13 03:04:07', '42.98', 1);
INSERT INTO `list` VALUES ('16C6AA59893B4A0EB6AD8F5A299DD2C3', 'AF7E428B91052709', '67045BBC263F4DFF884DF45BFC39F987', '2017.09.19 16:55:23', '235.48', 1);
INSERT INTO `list` VALUES ('170D6ED0AB7C4172861D548B314660FD', '832342B8B99E8F48', 'D15C96335B95484BAF04F3F333C6372B', '2014.02.28 06:28:02', '19.65', 1);
INSERT INTO `list` VALUES ('17EDF8BE013448BBA19AC74D8612C752', 'A0E74B81BB1CB8FE', '67045BBC263F4DFF884DF45BFC39F987', '2016.08.25 18:28:32', '235.48', 1);
INSERT INTO `list` VALUES ('183C678F85D741FE84272D9E113D7002', '62044F17A046E4D7', '6F78F6F6CE044964A1AD29500AA05648', '2002.12.23 00:34:02', '157.7', 0);
INSERT INTO `list` VALUES ('18E856FAA76847D4959DBD44AA18F34D', '62044F17A046E4D7', '67B8CB6700254907B417B013BEA022F3', '2003.01.18 09:30:28', '218.8', 0);
INSERT INTO `list` VALUES ('1A9D0613507E4B3FBDC141E37555733E', '00464FC39DB3BAA6', '048BAC0AA4F94BD7818C06127C889BC9', '2010.08.17 08:28:56', '58.8', 1);
INSERT INTO `list` VALUES ('1ABA4B64588447CEB0472B3B142879D4', 'D92442BBA9A1ABC5', '0FD8E5873B054ADE83BE9D117FD5DEFB', '2012.07.07 05:54:05', '97.4', 1);
INSERT INTO `list` VALUES ('1B2D588272894485BC7A0E482467901A', 'B46943E7A4CCEDEB', '656846C3C86F4044902F7D135E52C7BE', '2002.09.08 19:55:00', '126.1', 1);
INSERT INTO `list` VALUES ('1BC5174614BE4299A51150D2F7C539C1', '351642C0AAADF511', '81DFBC023BA1421DA9F7A200E700C8EF', '2010.03.27 14:26:10', '30.87', 1);
INSERT INTO `list` VALUES ('1E1641B92390482A89FE75CFACC84934', '84934D4791E79B24', '3E18A402D3AD4D538AB72C55A90CB4E2', '2012.05.23 03:24:28', '42.98', 1);
INSERT INTO `list` VALUES ('1E7FCE439CED4D17B41A020122BA1B46', 'D92442BBA9A1ABC5', '10D39D4A585345F28D257FA18D0A1729', '2006.03.01 17:41:51', '97.4', 1);
INSERT INTO `list` VALUES ('1F6C5D2CDA0145E5AD68A1A61225A1AD', 'A953446E811BDC36', '7DAC4538AD53408187622599E508FB76', '2015.10.07 14:36:01', '34.07', 1);
INSERT INTO `list` VALUES ('22FF6E3ED12F408A8C32795ACC663557', '9341471DAD633B50', '2F38C6B6E269408C9389DFC151AFDEE9', '2006.01.20 10:02:05', '138.2', 1);
INSERT INTO `list` VALUES ('2628780CD7F9431AA36D9E56D0FEC852', 'D9EF4313A5BC991F', '331DFA5E44AF4A2684961E6CD440433D', '2014.01.09 18:22:58', '118.8', 1);
INSERT INTO `list` VALUES ('266F7D5F28184A8883A4FA36AF3BE4F3', '51AF4C4AB19932C7', '0E43B08F76404FC9992A588B07CCA85F', '2003.02.06 12:44:54', '87.5', 1);
INSERT INTO `list` VALUES ('28201DCD3FB24208AAB5AC4C87B7D8FF', '0E5944E285EDDE2D', '2E29F01CB59646FD822B5938582CFD31', '2013.09.10 13:51:37', '58.8', 0);
INSERT INTO `list` VALUES ('2A287805D56B49E7AD982CB625DE5D2B', '1B7D4869B99192A0', '65111FF8BE5943379251F44180AA6B78', '2006.12.02 07:32:57', '126.1', 1);
INSERT INTO `list` VALUES ('2A2FF97C6C294095BF08E0CCCD7DB3E6', '2F884CB5A0E0F823', '4BFF03CD2941422F8AB2C2B49A6C3137', '2008.05.22 11:57:11', '37.15', 0);
INSERT INTO `list` VALUES ('2CAD76EDFB664EAE913825AABE5F133C', '00464FC39DB3BAA6', '0307363DBE4B4C108C0D380AF18CA54C', '2006.05.22 15:42:37', '63.58', 1);
INSERT INTO `list` VALUES ('2D1492D6415D4082A0A25548CA11DF4A', '12CF46FBA5577CE0', '67B8CB6700254907B417B013BEA022F3', '2005.07.04 15:51:30', '218.8', 1);
INSERT INTO `list` VALUES ('2D525175DF1E4FE8B39ED80F5DB63909', '84934D4791E79B24', 'D3F11EE5180942309DC2267F4FFB610C', '2018.08.01 18:35:16', '25.07', 1);
INSERT INTO `list` VALUES ('2E8C0B3760E74C1D8B7A817DFCE14698', '23DC4850B474428D', '2E4DF55FA863416B96D48F518DA544CD', '2012.03.01 02:33:09', '184.8', 1);
INSERT INTO `list` VALUES ('2F143A89ECE343D9948CAC63D93174A5', '832342B8B99E8F48', '4BFF03CD2941422F8AB2C2B49A6C3137', '2006.01.20 10:02:05', '37.15', 1);
INSERT INTO `list` VALUES ('2FD04E7B6EE345FE81A3F3D70F6E826C', '00464FC39DB3BAA6', '0FD8E5873B054ADE83BE9D117FD5DEFB', '2011.08.18 06:34:10', '97.4', 1);
INSERT INTO `list` VALUES ('2FE215D7BE74499BB0FCD67E15A16BB4', '469D4ACC89C5166C', '06332F408A7343C98BF9FA03EA67D4A1', '2017.05.28 08:47:24', '78.78', 1);
INSERT INTO `list` VALUES ('314F7FA4F27B48C08AD885A00BC38411', '94CC4A02B84978A7', '67045BBC263F4DFF884DF45BFC39F987', '2008.01.22 17:40:18', '235.48', 1);
INSERT INTO `list` VALUES ('338E9086FD064C84B130D44D214EA1AC', 'E2E449898CF960EA', '0E43B08F76404FC9992A588B07CCA85F', '2005.09.15 06:35:12', '87.5', 1);
INSERT INTO `list` VALUES ('3396D5ECDFB144A680184E9F0611C294', '84934D4791E79B24', 'D9C2C2A8E50245B09CE5ACDEC21C77AB', '2010.09.29 00:23:37', '25.07', 1);
INSERT INTO `list` VALUES ('3505A418C92844F583A0A40F408B0707', 'EC24421BAFACEA72', '735212F7EC8F4E1F8CFC4D652468AA0B', '2003.03.16 23:06:32', '139.1', 1);
INSERT INTO `list` VALUES ('36939FC006664660B0A75AA396E5D98F', '2C1B4D739EB224F3', '9FD5170539B545FAADBB7EFCB8A2E41C', '2008.01.29 00:32:46', '41.78', 1);
INSERT INTO `list` VALUES ('3730450A1797460F82E0AA130949C060', 'D92442BBA9A1ABC5', '10D39D4A585345F28D257FA18D0A1729', '2007.12.21 18:14:41', '97.4', 1);
INSERT INTO `list` VALUES ('398C08D6AF9445AA971CC703C8632C9E', '00464FC39DB3BAA6', '027468A6A404436D83F5ECAA72CD9683', '2017.01.24 14:47:21', '63.58', 1);
INSERT INTO `list` VALUES ('39BFCC1511194E57BE73DC2A089CB67D', 'AC0B4C5EA436304C', '67045BBC263F4DFF884DF45BFC39F987', '2014.05.26 08:21:30', '235.48', 1);
INSERT INTO `list` VALUES ('3B25CE8A258B49D490428DA8561DDC0C', 'D56949EB89A605C1', 'A69A6079038048B19105A51D941ED150', '2005.04.03 17:59:21', '40.28', 1);
INSERT INTO `list` VALUES ('3D3A603CA0C34801A8D930CEC265DA77', '04504F40A71CD0E8', '20229076BA7D4EE6BC5F0D1FB1C9A8C9', '2004.09.11 23:09:55', '69.98', 1);
INSERT INTO `list` VALUES ('3E8B238B4B55411DA575BEC2160E0995', '94CC4A02B84978A7', '9B26014AFFBF45C8A2984E57FBAACBE5', '2004.05.13 15:45:43', '69.48', 1);
INSERT INTO `list` VALUES ('3F6E6678D0A9421AA50C37C10196AAC8', 'CB4A4381B346AD61', 'A3C0E11FBEF1495EA34D3CDF646D4E9F', '2008.01.13 14:00:18', '40.28', 1);
INSERT INTO `list` VALUES ('40678E59D1B74C3891E71D6D77BED56C', 'C678444DA174C138', '6F78F6F6CE044964A1AD29500AA05648', '2006.01.09 19:10:26', '157.7', 1);
INSERT INTO `list` VALUES ('406F079E8EC044F5B634B4FB448C9455', 'D56949EB89A605C1', 'A4143CA5B9FD4782B033C13C6A2FCAE3', '2005.11.22 09:14:49', '40.28', 1);
INSERT INTO `list` VALUES ('41F69022B1DA41079783B65CCDECBEE7', '351642C0AAADF511', 'A78BEE240143437FBA4C80AE56CE84EB', '2008.02.21 13:58:12', '30.7', 1);
INSERT INTO `list` VALUES ('42A703E073C6468FA8199CC94DC275A4', '84934D4791E79B24', '3DCC0C72D1C44090BBDAA47B583CC738', '2017.02.01 22:36:03', '42.98', 0);
INSERT INTO `list` VALUES ('43106B90E46C41C0BFA8BA2841FAC9BF', '0DA04FFBA5423A4A', '61F5631FD36840CC9402E9D3D4DCE4D9', '2008.02.21 13:58:12', '126.1', 0);
INSERT INTO `list` VALUES ('43884401601E42A08E8965B75E1170BE', '832342B8B99E8F48', 'D15C96335B95484BAF04F3F333C6372B', '2016.05.02 05:34:43', '19.65', 1);
INSERT INTO `list` VALUES ('450C7B3608604387837ABDB6E5D8176B', '51AF4C4AB19932C7', '67045BBC263F4DFF884DF45BFC39F987', '2003.06.15 03:13:38', '235.48', 0);
INSERT INTO `list` VALUES ('4587CB0FB9F344E4BDC47B9B2EC65D49', 'CA6249099516C247', '333268A2315D405098FDE3A9EA304326', '2008.08.15 09:06:41', '102.88', 1);
INSERT INTO `list` VALUES ('4590FAF73A48418398345F43CB44D6AC', 'D92442BBA9A1ABC5', '1564590789AD49B8909B7DF760B42CF2', '2010.02.15 21:35:53', '97.4', 1);
INSERT INTO `list` VALUES ('468A1848475643F6972B6FA2AB4EFCB2', '84934D4791E79B24', '3DCC0C72D1C44090BBDAA47B583CC738', '2003.09.17 04:23:33', '42.98', 1);
INSERT INTO `list` VALUES ('46B8EA982A9D4895ACA3CF22D63BBD44', '22B143C6A1DBECE2', '333268A2315D405098FDE3A9EA304326', '2016.08.05 19:44:38', '102.88', 1);
INSERT INTO `list` VALUES ('47A179C0BDDE4FA198C9B2FAB448A4A5', '84934D4791E79B24', 'E6124A7423424144BB56E71715FD065F', '2013.03.13 11:46:52', '25.07', 1);
INSERT INTO `list` VALUES ('48E1309DB1284F1784C7C20A3AD18E33', 'CB4A4381B346AD61', 'A1CA50EBB0374934832812A706C24B9C', '2004.08.18 17:39:32', '41.78', 1);
INSERT INTO `list` VALUES ('4912B5FFA358456CB71758DF6FCFBDFD', '0B294261A5EA44D3', '333268A2315D405098FDE3A9EA304326', '2013.04.05 00:17:34', '102.88', 1);
INSERT INTO `list` VALUES ('49BD3E94761B414C95719D808DE73F93', '2F1F438ABE4D592A', '72D3D79027804793AB30286A4B39615E', '2004.09.11 23:09:55', '139.1', 1);
INSERT INTO `list` VALUES ('4D780618DC4B4AC69702A1DAA87ECDCB', 'D56949EB89A605C1', 'A3FB35706561494286ADFAA3753D1CDB', '2014.03.12 12:22:04', '40.28', 1);
INSERT INTO `list` VALUES ('4DD21AC633F4499BA7E81275D75D6D43', '07214D18BB594EBC', '67045BBC263F4DFF884DF45BFC39F987', '2008.05.22 11:57:11', '235.48', 1);
INSERT INTO `list` VALUES ('4EE9BFDB1EF74A85B904B29A93A2BFF7', 'C11B46789706D7C2', '1F7F5B3EAF0E4ABEA822EA689B7F1FF0', '2015.11.03 02:06:00', '69.98', 1);
INSERT INTO `list` VALUES ('50210F4EAD084B2FB365F69E8DE32E65', 'CB4A4381B346AD61', 'A3C0E11FBEF1495EA34D3CDF646D4E9F', '2005.02.13 05:02:42', '40.28', 1);
INSERT INTO `list` VALUES ('5080DA7985AA474585FC54F2F14AF761', '0E5944E285EDDE2D', '6941AFE3DDE747ED9984B9E44006B82D', '2014.04.19 17:53:57', '176.2', 1);
INSERT INTO `list` VALUES ('50ABF29854C44686B7050740836B52E4', '0B294261A5EA44D3', '67045BBC263F4DFF884DF45BFC39F987', '2017.03.30 18:24:31', '235.48', 1);
INSERT INTO `list` VALUES ('5175D0C49D044BF19F18C22D8586923B', '832342B8B99E8F48', '4BFF03CD2941422F8AB2C2B49A6C3137', '2003.06.05 01:01:00', '37.15', 1);
INSERT INTO `list` VALUES ('5202E4C858B74FF4950A0C0B79844523', '94CC4A02B84978A7', '3F6DA8EFF4304016B982CB626014C39D', '2006.10.28 20:16:05', '71.4', 1);
INSERT INTO `list` VALUES ('54B27A1B79BF4679800FD5516D128063', 'E2E449898CF960EA', '0FD8E5873B054ADE83BE9D117FD5DEFB', '2005.11.30 12:15:30', '97.4', 1);
INSERT INTO `list` VALUES ('54E9660D518A4FD59718EED7DFBAE85C', '84934D4791E79B24', 'E802A6ADC6604D07A74C35431ADB8121', '2006.07.03 07:05:41', '25.07', 1);
INSERT INTO `list` VALUES ('56BAB8B5FB104FCFA98F9EECF7535BC6', '9E354113879B6500', '6D04A057C5874B16BA2231D3BA7EFF72', '2013.08.31 07:24:29', '157.7', 1);
INSERT INTO `list` VALUES ('57DC756285A0408BA4CC5DF03EE22353', 'AE564250A6B82042', '72D3D79027804793AB30286A4B39615E', '2006.02.17 05:53:55', '139.1', 1);
INSERT INTO `list` VALUES ('5AA849D8284E46058E94FA058C14AE56', '12CF46FBA5577CE0', '333268A2315D405098FDE3A9EA304326', '2006.03.07 14:04:39', '102.88', 1);
INSERT INTO `list` VALUES ('5BA290A5B94B460695142C525E129B64', 'F1BF494F9B2A42B6', '735212F7EC8F4E1F8CFC4D652468AA0B', '2002.09.30 09:58:26', '139.1', 1);
INSERT INTO `list` VALUES ('5BCC52B2DE8F4FC5B6BB5EB0FC2F2E92', '22A8422E8708F738', '6859EC8CF91C42AEAF6C6922970BE5BF', '2016.11.11 19:09:59', '199.98', 1);
INSERT INTO `list` VALUES ('5CFDA21B4EE549F9AEC45EB583E50B92', '94CC4A02B84978A7', '9714000018434E7DB46625D9B8FFC3AF', '2009.07.24 00:54:15', '69.48', 1);
INSERT INTO `list` VALUES ('5D2F239A6817478DA6F50507CC405C71', '24734EF599499848', '09A6FBD7AA454DF99AD46187E5FF3BAB', '2013.07.14 08:21:55', '50.8', 1);
INSERT INTO `list` VALUES ('5FA939D7F9B64FFDA79B8BB2D9586B8B', 'CB4A4381B346AD61', '3E18A402D3AD4D538AB72C55A90CB4E2', '2011.09.15 15:44:11', '42.98', 0);
INSERT INTO `list` VALUES ('60758F98725846D9B2970BCFB5A7F024', '94CC4A02B84978A7', '1F7F5B3EAF0E4ABEA822EA689B7F1FF0', '2012.05.23 03:24:28', '69.98', 1);
INSERT INTO `list` VALUES ('607F619838DE4CBA87BA17B410E9C214', 'A953446E811BDC36', '5108F840E68C457C815A0CCDB296260A', '2005.02.26 14:05:19', '34.35', 1);
INSERT INTO `list` VALUES ('616C0529E24E4AA1AC66AEF486B8F9EC', 'D56949EB89A605C1', '4EC453A1F4614085895A5A896B9E9810', '2002.12.13 04:46:17', '39.98', 1);
INSERT INTO `list` VALUES ('618FEB607E3A4F5497EF2CD2AAA33FFB', '67AF435392ECF3A6', '6F78F6F6CE044964A1AD29500AA05648', '2004.08.13 17:28:56', '157.7', 1);
INSERT INTO `list` VALUES ('6293C10820DD4FC7A1C5A05C5676903D', '32394E39BBBD0D79', '027468A6A404436D83F5ECAA72CD9683', '2003.01.20 15:21:33', '63.58', 1);
INSERT INTO `list` VALUES ('62D7D51C9B0E49B9A7B927E2C59D979E', '010A4049A285303E', '333268A2315D405098FDE3A9EA304326', '2002.08.17 13:35:51', '102.88', 1);
INSERT INTO `list` VALUES ('66409187EA2C461B9CA30C8F2F5EAAC8', 'CB4A4381B346AD61', 'A1CA50EBB0374934832812A706C24B9C', '2005.04.14 23:40:39', '41.78', 1);
INSERT INTO `list` VALUES ('66ED5B2742A64EB88D159AA1F99D5A8F', 'E2E449898CF960EA', '359E63EF9DF444F2829001378C2D9539', '2008.04.08 22:32:48', '92.8', 1);
INSERT INTO `list` VALUES ('6A785915889C46208F4282B104B47BFE', '52F340CBA4739DFD', '6D04A057C5874B16BA2231D3BA7EFF72', '2015.04.18 19:54:30', '157.7', 1);
INSERT INTO `list` VALUES ('6AEB582A383D42C293780A19D046D155', '832342B8B99E8F48', 'D15C96335B95484BAF04F3F333C6372B', '2006.07.03 07:05:41', '19.65', 1);
INSERT INTO `list` VALUES ('6AF74A4CF2D7447C86BF65CCEC6132D0', 'EC24421BAFACEA72', '72D3D79027804793AB30286A4B39615E', '2010.06.15 13:17:06', '139.1', 1);
INSERT INTO `list` VALUES ('6BCA5086465A40D987C4F166037073E3', '351642C0AAADF511', 'A85744715C55417DAC391A7249018F70', '2013.01.31 04:14:45', '30.7', 1);
INSERT INTO `list` VALUES ('6C8DCA07D4D64198A1BDBF1DE6F79F35', '22B143C6A1DBECE2', '67045BBC263F4DFF884DF45BFC39F987', '2013.04.27 06:49:28', '235.48', 1);
INSERT INTO `list` VALUES ('6DAC6DECA665429082C49EE12AA2CF0B', '24734EF599499848', '6859EC8CF91C42AEAF6C6922970BE5BF', '2010.10.04 22:13:22', '199.98', 1);
INSERT INTO `list` VALUES ('736A49B40D07478AB64E112729E4CE0B', 'C11B46789706D7C2', '658E9CA24BAB4BECA0BD65015DC3C225', '2018.08.27 16:03:23', '78.78', 1);
INSERT INTO `list` VALUES ('74672335CF934C9FA1EEDC104C74F72E', 'E68B4C7E81C73C9C', '6D04A057C5874B16BA2231D3BA7EFF72', '2014.12.18 02:26:15', '157.7', 1);
INSERT INTO `list` VALUES ('7505AF0CFC0A485B8C605573CD0ADD6B', 'FEBF4CE48E070BB7', '07BA357654F04A0DB8D47C9B386367CE', '2008.12.03 00:48:50', '54.48', 1);
INSERT INTO `list` VALUES ('769BAD16741E4108A66116B879EC444B', 'D92442BBA9A1ABC5', '1564590789AD49B8909B7DF760B42CF2', '2018.01.01 05:16:29', '97.4', 1);
INSERT INTO `list` VALUES ('777C28CB3AEA47F6AE8681F94FD34DD5', '398F451190E87FF5', '718FEA18077D4877A96313C5382749AD', '2002.08.19 21:53:01', '157.7', 1);
INSERT INTO `list` VALUES ('79DC2D21D1D14E7BAE27D8AD8246E78F', '07214D18BB594EBC', '2CB3521070524D1F8839947424391A00', '2015.02.03 06:56:37', '60.8', 0);
INSERT INTO `list` VALUES ('7C111AA89EA64768A0FCF609E1280163', '0DA04FFBA5423A4A', '67045BBC263F4DFF884DF45BFC39F987', '2012.02.10 07:18:48', '235.48', 1);
INSERT INTO `list` VALUES ('7D4B0948986E467B9581AF6FAEC7267C', '2F884CB5A0E0F823', '4CEE21723AF744FC8A7BFFD639242CFD', '2015.02.03 06:56:37', '37.15', 1);
INSERT INTO `list` VALUES ('7E91562AC492401C9C036B4369548082', 'B34840A3BB6C674D', '6C4DACE706D64173AA9AF10EBFA6C89A', '2015.08.01 23:01:57', '176.2', 1);
INSERT INTO `list` VALUES ('808633B46FC840349A5CCFBD2811C156', 'B66645AC9290FC92', '67B8CB6700254907B417B013BEA022F3', '2002.11.01 09:20:44', '218.8', 1);
INSERT INTO `list` VALUES ('81585F475BC0432292B70A1F2CA3AB59', 'A953446E811BDC36', '50A8CE5D97C34F66BD725A1818DB449D', '2008.02.13 06:17:20', '34.35', 1);
INSERT INTO `list` VALUES ('8176488190EE44199D429DD94D16D3E8', '84934D4791E79B24', 'D53FF2D3F3FE4399B1487DFF26D2A84C', '2017.05.18 16:18:28', '25.07', 1);
INSERT INTO `list` VALUES ('81801A30AB134ACDB662E34C99CA1FBE', '07F745908A094CE3', '6239EB93434D4461B86A88815B4EAC65', '2003.01.20 15:21:33', '126.1', 1);
INSERT INTO `list` VALUES ('83F3D3A904E14DE2A1931B3FCBF11E27', 'CB4A4381B346AD61', 'A1A550F20C114A1F88537D52A9FA7162', '2016.01.24 23:05:08', '41.78', 1);
INSERT INTO `list` VALUES ('85B26D89CB194D538D3A4F92D62B8856', 'E2E449898CF960EA', '1564590789AD49B8909B7DF760B42CF2', '2006.03.28 05:49:32', '97.4', 1);
INSERT INTO `list` VALUES ('8616AC5505F44545A373FC971AB19673', 'A953446E811BDC36', '5108F840E68C457C815A0CCDB296260A', '2018.06.22 13:12:35', '34.35', 1);
INSERT INTO `list` VALUES ('86FBC7E8010245E6BF2493FACCA96B16', '22B143C6A1DBECE2', '6239EB93434D4461B86A88815B4EAC65', '2005.05.31 17:58:08', '126.1', 1);
INSERT INTO `list` VALUES ('87BA70C08BCB4E9F82C844FEEB15D23A', 'D56949EB89A605C1', 'A1CA50EBB0374934832812A706C24B9C', '2005.04.17 02:17:48', '41.78', 1);
INSERT INTO `list` VALUES ('88328325258E450CAEFA215279848217', '0E5944E285EDDE2D', '4A64212672664AD39AABE89E64362A3F', '2009.02.12 07:09:05', '56.38', 0);
INSERT INTO `list` VALUES ('8971B86090FC4E058BD8A45C330F6FFE', 'AC0B4C5EA436304C', '6859EC8CF91C42AEAF6C6922970BE5BF', '2014.04.28 14:27:05', '199.98', 1);
INSERT INTO `list` VALUES ('8979A77E9E824AF698D2348B18804E4E', '2AAF4F2785C00383', '67B8CB6700254907B417B013BEA022F3', '2010.11.10 07:47:36', '218.8', 1);
INSERT INTO `list` VALUES ('8986C083780E432087913C89F92CA9F0', '351642C0AAADF511', '4BFF03CD2941422F8AB2C2B49A6C3137', '2015.09.29 18:19:52', '37.15', 1);
INSERT INTO `list` VALUES ('89E0D808430843549A771AB0778F6885', '84934D4791E79B24', 'D46645434E4D474B8FB28A1D48C34BEF', '2003.05.25 02:47:11', '25.07', 1);
INSERT INTO `list` VALUES ('8BB94C172BEF4B3FA8B029E72285F56D', '1660462D9EB4B954', '0FD8E5873B054ADE83BE9D117FD5DEFB', '2010.08.04 02:56:46', '97.4', 1);
INSERT INTO `list` VALUES ('8D42525C79E84A499AA87F74EAAEB353', 'F71A43199BA04984', '4481A3C506984D2C8596B99997F19F76', '2013.03.01 10:17:32', '63.58', 1);
INSERT INTO `list` VALUES ('8EA10EA913614E9A99C2553B9DEA7B96', 'C678444DA174C138', '6D04A057C5874B16BA2231D3BA7EFF72', '2011.08.18 11:31:42', '157.7', 1);
INSERT INTO `list` VALUES ('9022B607FC5541E9ADAE01C2A7344A5A', '382343FE8503558B', '4B99EA1A5EF14BB3BB58559800C4DE9A', '2012.09.17 18:54:01', '56.38', 1);
INSERT INTO `list` VALUES ('910BDECEE78A479BA84E4A9BFAD19A57', 'A953446E811BDC36', '52492BD38A9E4FB4867C27DD2A1D291B', '2008.10.13 13:13:29', '34.35', 1);
INSERT INTO `list` VALUES ('92867023D0B9478387415BA735F08CDF', '84934D4791E79B24', '3E18A402D3AD4D538AB72C55A90CB4E2', '2008.05.13 01:52:18', '42.98', 1);
INSERT INTO `list` VALUES ('92C7EA9B814F4CC8A1D155886DF30B27', '62F645A8A4468DA6', '72D3D79027804793AB30286A4B39615E', '2017.09.12 07:41:29', '139.1', 1);
INSERT INTO `list` VALUES ('92E698B5A97F49ECB2D6F22B8BC25993', '754F46A6A5E59AF8', '2E4DF55FA863416B96D48F518DA544CD', '2015.09.15 12:00:30', '184.8', 1);
INSERT INTO `list` VALUES ('93221F74D8554AA0AB73528B1E06827A', '832342B8B99E8F48', '4BFF03CD2941422F8AB2C2B49A6C3137', '2015.09.09 17:23:14', '37.15', 1);
INSERT INTO `list` VALUES ('934F7EB66CC346D6914D8B3F03AE0012', '94DC490098E289A7', '67045BBC263F4DFF884DF45BFC39F987', '2010.04.08 19:41:29', '235.48', 0);
INSERT INTO `list` VALUES ('945DA58BEDD84FD7AEB18CD083F76E45', '00464FC39DB3BAA6', '10D39D4A585345F28D257FA18D0A1729', '2016.03.06 11:36:00', '97.4', 1);
INSERT INTO `list` VALUES ('954C3F3189C84162967A42C55C86437E', 'A953446E811BDC36', '52492BD38A9E4FB4867C27DD2A1D291B', '2003.02.08 15:15:45', '34.35', 1);
INSERT INTO `list` VALUES ('9752797716E64B2FB5BDA5BA87FE4BE9', 'E2E449898CF960EA', '10D39D4A585345F28D257FA18D0A1729', '2003.06.17 12:56:42', '97.4', 1);
INSERT INTO `list` VALUES ('9775AB6BC33D4E99AC95C5AD94C9060E', '351642C0AAADF511', 'A78BEE240143437FBA4C80AE56CE84EB', '2017.12.08 11:47:45', '30.7', 1);
INSERT INTO `list` VALUES ('97BC140EEA0445FD9F97D8D01AB81FE9', '905B433199104922', '6D04A057C5874B16BA2231D3BA7EFF72', '2004.12.27 11:24:42', '157.7', 1);
INSERT INTO `list` VALUES ('97FF321C19C543F6927FF9292A8E32AF', '351642C0AAADF511', 'A9A84C551C4A4FB2A575D269BE76B6BE', '2009.03.12 05:45:53', '30.7', 1);
INSERT INTO `list` VALUES ('9A4EEF6877094A6A81C9C08FC0136D00', '38F54B69872F8430', '331DFA5E44AF4A2684961E6CD440433D', '2016.04.14 06:15:18', '118.8', 1);
INSERT INTO `list` VALUES ('9A9BA30F0BE643989CA81D1591A5A511', '8D484E69A055A1A6', '67B8CB6700254907B417B013BEA022F3', '2016.09.26 06:37:40', '218.8', 1);
INSERT INTO `list` VALUES ('9E26D1F306E44D9B89FBBFC5847AF15C', '84934D4791E79B24', 'DD2BB3FEBFA6473094B0889B4CEC42F4', '2011.11.23 21:34:59', '25.07', 1);
INSERT INTO `list` VALUES ('9FB2DD77A3EA4B9E937A053D416EAF5D', '832342B8B99E8F48', 'D15C96335B95484BAF04F3F333C6372B', '2008.10.17 13:54:30', '19.65', 1);
INSERT INTO `list` VALUES ('A06CBFAB457A40E68BE28718E47F8DCC', '832342B8B99E8F48', '4BFF03CD2941422F8AB2C2B49A6C3137', '2015.12.02 13:11:45', '37.15', 1);
INSERT INTO `list` VALUES ('A29C9E77087C47939F5B99C70EF64709', 'CB4A4381B346AD61', '9FD5170539B545FAADBB7EFCB8A2E41C', '2015.06.09 19:14:02', '41.78', 1);
INSERT INTO `list` VALUES ('A368F3B155CF45DB866671580C7FB887', 'A953446E811BDC36', '5108F840E68C457C815A0CCDB296260A', '2006.09.05 05:23:55', '34.35', 0);
INSERT INTO `list` VALUES ('A3EFF87B7BBA4C65B51A799C0179A017', '9B8443D59AAD2F2B', '67045BBC263F4DFF884DF45BFC39F987', '2005.02.01 22:42:18', '235.48', 1);
INSERT INTO `list` VALUES ('A7D6665D12D140FDBD933D174E7AF4C5', '84934D4791E79B24', 'D5ECAE83A74646579A4C343926AE416F', '2007.10.29 15:34:51', '25.07', 1);
INSERT INTO `list` VALUES ('A8CC20AEB4C74F32B12982DF7F06C952', 'D56949EB89A605C1', 'A427B2003C094B30ABC0F2A5D1DB4F4D', '2002.11.27 04:55:22', '40.28', 1);
INSERT INTO `list` VALUES ('A8DCA2DE43814A2AB0886DD80658D811', '2AAF4F2785C00383', '2F38C6B6E269408C9389DFC151AFDEE9', '2016.09.03 05:57:03', '138.2', 1);
INSERT INTO `list` VALUES ('AB16EE7C2B4A4BA9B322F25704382070', '351642C0AAADF511', 'A9A84C551C4A4FB2A575D269BE76B6BE', '2011.02.23 21:42:18', '30.7', 1);
INSERT INTO `list` VALUES ('AC50F1B25978437E9D47EFB4553725B9', 'AE564250A6B82042', '6C4DACE706D64173AA9AF10EBFA6C89A', '2006.05.25 10:51:31', '176.2', 1);
INSERT INTO `list` VALUES ('AC57B2E5FC8646DBAC1A2D4096838766', '832342B8B99E8F48', 'D15C96335B95484BAF04F3F333C6372B', '2004.05.11 10:12:28', '19.65', 0);
INSERT INTO `list` VALUES ('ADEC073FEA3848139DE2BFD76C93A64D', '84934D4791E79B24', '3DCC0C72D1C44090BBDAA47B583CC738', '2006.10.28 20:16:05', '42.98', 1);
INSERT INTO `list` VALUES ('AFFB2E4B2091463C9495795DAF3F1DFC', '905B433199104922', '2FAE94854F3B4B57AF4B1D8DF34D4687', '2015.12.02 13:11:45', '118.88', 1);
INSERT INTO `list` VALUES ('B01DEBB45AF142658706C2B7DED737AA', '1E84438A83FC319B', '67B8CB6700254907B417B013BEA022F3', '2014.04.12 20:40:53', '218.8', 1);
INSERT INTO `list` VALUES ('B4721AE7D0644DD697D80E36DD87CB89', '469D4ACC89C5166C', '67B8CB6700254907B417B013BEA022F3', '2004.02.19 20:44:06', '218.8', 1);
INSERT INTO `list` VALUES ('B5105D9484F749EC8170F2E18199BFCD', 'CB4A4381B346AD61', 'A3FB35706561494286ADFAA3753D1CDB', '2012.12.01 18:09:57', '40.28', 1);
INSERT INTO `list` VALUES ('B536C900C9FE4E98BE654213B24C667D', 'CB4A4381B346AD61', 'A1A550F20C114A1F88537D52A9FA7162', '2013.05.28 07:06:45', '41.78', 1);
INSERT INTO `list` VALUES ('B6D506636F3C40658E7CF40DCABCC2B3', '832342B8B99E8F48', 'D15C96335B95484BAF04F3F333C6372B', '2006.08.29 12:00:29', '19.65', 1);
INSERT INTO `list` VALUES ('B7E0E39277B84612A4AEE26A5F4EF9E4', 'D56949EB89A605C1', 'A3C0E11FBEF1495EA34D3CDF646D4E9F', '2018.04.21 03:24:24', '40.28', 1);
INSERT INTO `list` VALUES ('B8AFB5EFE5BB4A72885CBE7A769CF05E', '24734EF599499848', '07BA357654F04A0DB8D47C9B386367CE', '2017.04.07 21:22:58', '54.48', 1);
INSERT INTO `list` VALUES ('BA7329CC2A574DE3A94F91B91B18BEA8', '24734EF599499848', '93C68ADD23D449C39107E95E165D05B0', '2004.01.06 22:08:51', '45.48', 1);
INSERT INTO `list` VALUES ('BAEB795A631D4FC0B1C81FD32E5381AC', '351642C0AAADF511', '81DFBC023BA1421DA9F7A200E700C8EF', '2012.02.10 07:18:48', '30.87', 1);
INSERT INTO `list` VALUES ('BB88B7CB0ED04F378A7E21D938CC5248', '832342B8B99E8F48', 'D15C96335B95484BAF04F3F333C6372B', '2016.09.26 06:37:40', '19.65', 1);
INSERT INTO `list` VALUES ('BBF82035BBF24000A13D119C692B2DD9', '9341471DAD633B50', '6239EB93434D4461B86A88815B4EAC65', '2009.08.16 22:19:18', '126.1', 0);
INSERT INTO `list` VALUES ('BCA2DA1798E04001B74E26F187C2288F', '80E9487D8AAADBC5', 'FE8FAA7F4F784D8A9A6F7154F5D4EFC0', '2003.06.25 16:12:46', '19.05', 1);
INSERT INTO `list` VALUES ('BD9083920FA84C6C9FE81E90A7EBC1E1', '62F645A8A4468DA6', '72D3D79027804793AB30286A4B39615E', '2010.07.18 19:20:38', '139.1', 1);
INSERT INTO `list` VALUES ('BEE87E486BAF45359A8F67944A88CC5C', 'CB4A4381B346AD61', 'A13D1DD9E59942C186404B3DCDA4D602', '2011.07.31 12:23:05', '41.78', 1);
INSERT INTO `list` VALUES ('BF1519D3A782466A8DAD68C28304C0A8', '832342B8B99E8F48', 'D15C96335B95484BAF04F3F333C6372B', '2004.12.27 11:24:42', '19.65', 1);
INSERT INTO `list` VALUES ('BF370D68B95A43B3BA05CF08ED74BD82', '84934D4791E79B24', 'E8A8B94503DB478FB41903A615F12E52', '2004.05.11 10:12:28', '25.07', 1);
INSERT INTO `list` VALUES ('C015EF04A4524190B277343FD53744BC', 'B7694C0B87600A96', '2FAE94854F3B4B57AF4B1D8DF34D4687', '2013.02.06 10:54:06', '118.88', 1);
INSERT INTO `list` VALUES ('C0D0AA1D214F49F088FF79F509694FC0', '351642C0AAADF511', 'A84C35AE8B5C4F7BB9DF6BD962852AE0', '2010.11.10 07:47:36', '30.7', 1);
INSERT INTO `list` VALUES ('C1EBF0E4270845C3939FE768C17D5EC4', '398F451190E87FF5', '656846C3C86F4044902F7D135E52C7BE', '2009.02.01 00:47:38', '126.1', 1);
INSERT INTO `list` VALUES ('C2BC27F3FF104DAA879ECE593776B08F', '9639494E811CA18B', '06F38AA77EBF4957AF4E97121B761DA8', '2015.08.28 05:54:44', '64.9', 1);
INSERT INTO `list` VALUES ('C4A1EFF670C545E7937E677D41951577', 'A953446E811BDC36', '50A8CE5D97C34F66BD725A1818DB449D', '2012.12.16 11:22:39', '34.35', 1);
INSERT INTO `list` VALUES ('C54F1187AD454AE9AEEFBA70B74F1DA5', '94CC4A02B84978A7', '2224918FB2B34ED6BADF0B3A41BB9322', '2017.10.31 00:45:02', '69.98', 1);
INSERT INTO `list` VALUES ('C5823B25F68E48DD8CFD4A052FD96B6E', '905B433199104922', '6F78F6F6CE044964A1AD29500AA05648', '2016.05.02 05:34:43', '157.7', 1);
INSERT INTO `list` VALUES ('C6F37A60244243AA8C4B0C163FCDC361', '3C7744FDAFCF58A3', '67045BBC263F4DFF884DF45BFC39F987', '2018.01.06 04:28:14', '235.48', 1);
INSERT INTO `list` VALUES ('C8052F2076A44651A8B55C7D57CC8F5D', '898F4BFBB0EA12AC', '4B99EA1A5EF14BB3BB58559800C4DE9A', '2008.10.17 13:54:30', '56.38', 1);
INSERT INTO `list` VALUES ('C9017D0D89B7475AA09C6F3DB03ABFDA', '382343FE8503558B', '67045BBC263F4DFF884DF45BFC39F987', '2002.10.07 14:50:16', '235.48', 1);
INSERT INTO `list` VALUES ('CA44190318AC4C6DA88AE201F107EE15', '5B0E4C7FB5865E1E', '3F6DA8EFF4304016B982CB626014C39D', '2015.07.17 09:39:02', '71.4', 0);
INSERT INTO `list` VALUES ('CB37E9AC0E624C0CA27F80E6894AB168', '832342B8B99E8F48', 'D15C96335B95484BAF04F3F333C6372B', '2007.08.08 02:43:28', '19.65', 1);
INSERT INTO `list` VALUES ('CD17341C57324EB78FD5836955FA989A', '0E5944E285EDDE2D', '2E677F56561843AB91F5E29A762F4877', '2006.02.25 05:20:11', '184.8', 0);
INSERT INTO `list` VALUES ('D0A8FB94DD864473AEDF291134EEBC10', 'DBC14714A0116BA6', '2CD126D3C6BF4E6084F8CFAC932A239E', '2006.08.27 23:44:29', '61.8', 1);
INSERT INTO `list` VALUES ('D19F11AED0E24A8B80AD0C5F115C8370', '832342B8B99E8F48', '4BFF03CD2941422F8AB2C2B49A6C3137', '2009.08.16 22:19:18', '37.15', 1);
INSERT INTO `list` VALUES ('D4448A6B66934E3EA5DECE87DE071968', '22A8422E8708F738', '2E677F56561843AB91F5E29A762F4877', '2003.01.16 07:20:20', '184.8', 1);
INSERT INTO `list` VALUES ('D7BFB5A3F9C6420CA37F4C872C0DE0DB', '1CD541A9BB4EE196', '72D3D79027804793AB30286A4B39615E', '2013.02.07 02:02:22', '139.1', 1);
INSERT INTO `list` VALUES ('D8350C0DF6AE45E7B57FAE5FDB7017F1', '2F1F438ABE4D592A', '72D3D79027804793AB30286A4B39615E', '2004.02.22 14:13:14', '139.1', 1);
INSERT INTO `list` VALUES ('D9E8744F2A9E4EC2ABCEAA90DD6E8F01', '85C34948BCEDDA54', '72D3D79027804793AB30286A4B39615E', '2011.07.19 11:32:19', '139.1', 1);
INSERT INTO `list` VALUES ('DE7C807793514D408D45CA6D5C8E7EBD', '24734EF599499848', '658E9CA24BAB4BECA0BD65015DC3C225', '2012.07.02 04:48:20', '78.78', 1);
INSERT INTO `list` VALUES ('DF35F036FCC341FABFFE391EBED73318', 'CB4A4381B346AD61', '3DCC0C72D1C44090BBDAA47B583CC738', '2013.12.07 12:07:49', '42.98', 1);
INSERT INTO `list` VALUES ('E0D6C82226534D42A534E3D062647B08', 'AE564250A6B82042', '735212F7EC8F4E1F8CFC4D652468AA0B', '2016.03.15 15:37:55', '139.1', 1);
INSERT INTO `list` VALUES ('E0F13080872A44DD95CC9C3A92EDB73F', '1B7D4869B99192A0', '72D3D79027804793AB30286A4B39615E', '2010.10.18 15:56:25', '139.1', 1);
INSERT INTO `list` VALUES ('E441E817116548F3BCE88A87950EC347', '895844EE8C24029F', 'A13D1DD9E59942C186404B3DCDA4D602', '2010.04.30 06:57:57', '41.78', 1);
INSERT INTO `list` VALUES ('E4DAC76D28194F648B81C7A6FFBF81BE', '725F45EC9A5BF690', '359E63EF9DF444F2829001378C2D9539', '2004.01.29 07:13:59', '92.8', 1);
INSERT INTO `list` VALUES ('E532A94EF5AF4DCE8B009D14807C7AFF', 'DBC14714A0116BA6', '4481A3C506984D2C8596B99997F19F76', '2010.05.04 16:48:08', '63.58', 1);
INSERT INTO `list` VALUES ('E55439B0A2364643A8BE830231162569', 'D71E422196392FBE', '4BFF03CD2941422F8AB2C2B49A6C3137', '2007.06.22 12:27:03', '37.15', 1);
INSERT INTO `list` VALUES ('E5BF7C93B8E84E05A03613C61F8CF960', 'D56949EB89A605C1', '4D922C6272F847B0BFEDA31379556812', '2006.01.13 01:56:42', '39.98', 1);
INSERT INTO `list` VALUES ('E78E161770DA4BA6BCF6A22477B2801B', '67AF435392ECF3A6', '6C4DACE706D64173AA9AF10EBFA6C89A', '2012.12.27 07:31:56', '176.2', 1);
INSERT INTO `list` VALUES ('E8E09ADD1C004A3082ECC4070C337B7D', '38F54B69872F8430', '2FAE94854F3B4B57AF4B1D8DF34D4687', '2013.08.15 10:17:38', '118.88', 1);
INSERT INTO `list` VALUES ('EA59E52339D2457988F1803BB4591E6D', 'D56949EB89A605C1', '4D922C6272F847B0BFEDA31379556812', '2009.12.30 02:16:16', '39.98', 1);
INSERT INTO `list` VALUES ('EBC54690805B4CDAB65873449ABA5CAB', '905B433199104922', '718FEA18077D4877A96313C5382749AD', '2015.09.09 17:23:14', '157.7', 1);
INSERT INTO `list` VALUES ('EC52960D94714C7E936FFB3907B2E381', '38F54B69872F8430', '333268A2315D405098FDE3A9EA304326', '2005.03.06 17:21:33', '102.88', 1);
INSERT INTO `list` VALUES ('F11CC9E1057141CC9F6B56D864FCAFB0', 'A1444F51A47821F5', '67045BBC263F4DFF884DF45BFC39F987', '2009.04.05 03:38:21', '235.48', 1);
INSERT INTO `list` VALUES ('F2D5684A0C9E44A3AF6649B971D64A34', '8D484E69A055A1A6', '6D04A057C5874B16BA2231D3BA7EFF72', '2006.08.29 12:00:29', '157.7', 1);
INSERT INTO `list` VALUES ('F41C40CB3875401D9DDF22A7F4D12132', '9E354113879B6500', '6D04A057C5874B16BA2231D3BA7EFF72', '2004.07.04 12:54:42', '157.7', 1);
INSERT INTO `list` VALUES ('F4E0A8CC9E284ED687A60FF4FF53AD02', '1D774680B01C1ECA', '6C4DACE706D64173AA9AF10EBFA6C89A', '2009.07.04 07:39:04', '176.2', 1);
INSERT INTO `list` VALUES ('F5622BFD1574456F963745A3DC1F2517', '9341471DAD633B50', '61F5631FD36840CC9402E9D3D4DCE4D9', '2003.06.05 01:01:00', '126.1', 1);
INSERT INTO `list` VALUES ('F6E09CD8D6444A8FA76E75844996B17B', '32574A1B86FA61F7', '72D3D79027804793AB30286A4B39615E', '2013.04.05 00:17:34', '139.1', 1);
INSERT INTO `list` VALUES ('F8833F73F1CC4B3B9C456E67FAD0333A', '94CC4A02B84978A7', '2E677F56561843AB91F5E29A762F4877', '2015.05.28 11:19:04', '184.8', 1);
INSERT INTO `list` VALUES ('FE2F6080DC7D4D0B8A5C778E22C93295', '832342B8B99E8F48', '4BFF03CD2941422F8AB2C2B49A6C3137', '2015.05.28 11:19:04', '37.15', 1);


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

select*from carbase;
select*from factory;
select*from car;



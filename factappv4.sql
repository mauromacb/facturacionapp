/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : factapp

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 26/07/2022 00:26:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categorias
-- ----------------------------
DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categorias
-- ----------------------------
INSERT INTO `categorias` VALUES (1, 'Categoria de prueba', NULL, NULL);
INSERT INTO `categorias` VALUES (2, 'Categoria SY', NULL, NULL);
INSERT INTO `categorias` VALUES (3, 'Categoria A1', NULL, NULL);
INSERT INTO `categorias` VALUES (4, 'Categoria De', NULL, NULL);
INSERT INTO `categorias` VALUES (5, 'Categoria A2', NULL, NULL);
INSERT INTO `categorias` VALUES (6, 'Categoria aw', NULL, NULL);
INSERT INTO `categorias` VALUES (7, 'Categoria fk', NULL, NULL);
INSERT INTO `categorias` VALUES (8, 'Categoria 7H', NULL, NULL);
INSERT INTO `categorias` VALUES (9, 'Categoria ip', NULL, NULL);
INSERT INTO `categorias` VALUES (10, 'Categoria 8D', NULL, NULL);
INSERT INTO `categorias` VALUES (11, 'Categoria 3O', NULL, NULL);
INSERT INTO `categorias` VALUES (12, 'Categoria ZW', NULL, NULL);
INSERT INTO `categorias` VALUES (13, 'Categoria z0', NULL, NULL);
INSERT INTO `categorias` VALUES (14, 'Categoria ir', NULL, NULL);
INSERT INTO `categorias` VALUES (15, 'Categoria er', NULL, NULL);
INSERT INTO `categorias` VALUES (16, 'Categoria 7a', NULL, NULL);
INSERT INTO `categorias` VALUES (17, 'Categoria IW', NULL, NULL);
INSERT INTO `categorias` VALUES (18, 'Categoria Kw', NULL, NULL);
INSERT INTO `categorias` VALUES (19, 'Categoria vO', NULL, NULL);
INSERT INTO `categorias` VALUES (20, 'Categoria kP', NULL, NULL);
INSERT INTO `categorias` VALUES (21, 'Categoria uk.', NULL, '2022-07-18 20:14:08');

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `identificacion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombres` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 203 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES (1, '5866294695573', 'Cliente  6X5yFvR6XM 1aYe4ve02O', 'correo@ ZFWlvzgq94.com', 'nU0WgT1y66', 'Direccion  6l6CtRxb4e IUSRb44Rum', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (2, '3115640324600', 'Cliente  XJ7OXF4QYx ps8GawRVCW', 'correo@ SonTNsAh4n.com', '7aSEmp3qkW', 'Direccion  SKUEcmHxwA dh6TZaFUJe', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (3, '4811519328024', 'Cliente  4kkKuwfQ7M Y6UHvv7tSw', 'correo@ nehVosXTNP.com', 'KTzlyOT0s6', 'Direccion  fVNLfgdkmq zRgdZOgTMF', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (4, '6776148282056', 'Cliente  SSlBxRueNS iHDDNRbz5u', 'correo@ lRbVj2t5OH.com', 'HiAy7h7k3U', 'Direccion  wmMUVwnovC 8cgsIK2ZcI', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (5, '1516754049317', 'Cliente  NbNWmwiKOT cVjcgDiWSu', 'correo@ JaSiDBYzrt.com', 'n8LWiLjLv1', 'Direccion  eMZYBkCc51 RJzQcId6Rs', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (6, '9799488684101', 'Cliente  o6ETyymAMo jCTacQ7v3F', 'correo@ 1owCxUkVLN.com', '2KKVyjI7LY', 'Direccion  erWYXsvdw9 wyIY93aJDF', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (7, '1887029265173', 'Cliente  RE9s03v01q N8jcU3yO6i', 'correo@ pkMo9cIHdD.com', '2VYInNAqKB', 'Direccion  zPL3VNnT4X OVAQwbeuL7', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (8, '4804663038453', 'Cliente  WAAw2p7QwN YXCffllzOh', 'correo@ mnAbQfiGxW.com', 'qR8h9lJv82', 'Direccion  5TALxjTMp3 JgAhDvrxwf', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (9, '1499205657666', 'Cliente  PcSd4V5lG4 PWB2Q8klCi', 'correo@ uI3BCLry4b.com', 'dtLp7woL2v', 'Direccion  kMUibUOX3a P7iwWJjvNI', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (10, '3861276026685', 'Cliente  KOTuqyWps3 xg9dzGWHGZ', 'correo@ kTyHaRlpPM.com', 'gSy01CRTuB', 'Direccion  6y8ViaTdKq tY8WNBtmUR', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (11, '2460789602957', 'Cliente  nYuO1XRQ0p tWHHTZJuup', 'correo@ KaGzCdNHh3.com', 'XLAbnLYCep', 'Direccion  gaWCHW8Lsi GcP7P8rm9j', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (12, '4162554797733', 'Cliente  AaMxcV9De2 OmQlM3w5wZ', 'correo@ 1gACddFsdb.com', 'mYipwkpx2n', 'Direccion  nh1ViCYCKU 7mCckmbjjg', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (13, '2519085598906', 'Cliente  aywNeF7gRd 7KjBw2bOXE', 'correo@ frQnwD3LEW.com', 'EdUNP2fIjf', 'Direccion  iO1PWvhdLv 8LOAwmMrKP', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (14, '7580627046715', 'Cliente  5cpanfYi61 hnxHoSaB92', 'correo@ 5xsJdAi1fy.com', 'xGo65zfeMl', 'Direccion  k0iCBkXl7w YHngT4aiFB', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (15, '7579494659388', 'Cliente  OkyyyAw4tz 6RpKly87l8', 'correo@ QRDt0nlbDN.com', 'vrBIvtu1cK', 'Direccion  CTWlb2DoMr 5qvQ3GivSs', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (16, '9608818815368', 'Cliente  9WAZcnnaDK eOVmIWglM1', 'correo@ rqfEx05BBF.com', 'dYeIt83pvV', 'Direccion  KT0joDtsJ9 AAJTw4KxJo', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (17, '9676828396583', 'Cliente  KWDDLkOfem tWucPgmF9w', 'correo@ 8BUF5napCW.com', 'Ad7oF2cJji', 'Direccion  JywpIfKhxJ fYbsUFDOuj', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (18, '7758148362667', 'Cliente  iv6AowzcLQ 9OCWCUxcr2', 'correo@ gFAzbvWDQR.com', 'x6Ae8HPhTg', 'Direccion  UIPfmlCMa1 LePeOsUUoX', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (19, '2414628042379', 'Cliente  056QkyuraT UntedbODID', 'correo@ 6AjEnU9B5T.com', 'JQqWES4iKP', 'Direccion  arKC4YUaoO cmBHCyudQN', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (20, '7956338603459', 'Cliente  nPVpdo6h8g sg1e1SA5gc', 'correo@ Q0Zpc6VETk.com', 'NgHqP1lvlJ', 'Direccion  zZspl79fof fRZS5zbrcs', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (21, '8916164513453', 'Cliente  tCDMbhq7Ec nn6uwqJy73', 'correo@ fDFdmiGC2e.com', '9kvrsEQVpy', 'Direccion  TddrUDzgwH Dp0zy6Y1cO', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (22, '1619064815049', 'Cliente  BdsFTsDWWP 7epVWOvcsW', 'correo@ osZ6W91zMo.com', '1JKKxC1yZJ', 'Direccion  iUol8gIDqY K7WQyBVSYe', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (23, '3520978709785', 'Cliente  epReAGhA9l zt3UMaHad4', 'correo@ FTShLKo6cN.com', 'UZCUsRE8JX', 'Direccion  DEP2iDYXAA IQvCAh4pNs', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (24, '4447125025870', 'Cliente  BX07y4exiQ bxsYoEe5Zi', 'correo@ s6wZsD8t3F.com', 'aY5abGpbiR', 'Direccion  ZAlfzRwdeY jPFfOtLgcH', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (25, '4985998720067', 'Cliente  h1c24VfvcC lYmBve205S', 'correo@ SVbCQ1sJjl.com', 'ojhM9MHSEf', 'Direccion  NDiN3In7ZZ 32FwzeZNg7', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (26, '1651959829394', 'Cliente  oyIDbzuZGE 7AazBJ00DO', 'correo@ JS1IW2eUVC.com', 'dT5pMQhIcG', 'Direccion  xYT1Sh1pVN INtyo1Z2QY', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (27, '1576350080517', 'Cliente  qZ5n8cN4sH BPxgblXveF', 'correo@ nPEV48R7KX.com', 'IDDV3mdBkl', 'Direccion  2UYIQDEEgE NMITIUYjYA', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (28, '7704828138494', 'Cliente  xLglmsm2Fa QzNBeQzWu6', 'correo@ b11ueKUoFF.com', 'aLNy8SgfY8', 'Direccion  sTZxoUUKu6 ilOJ3e2qX2', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (29, '5033372690693', 'Cliente  S5ug5GqaJ0 hohZCYRgAe', 'correo@ eU6k8E2rZH.com', 'js2HZxWCeI', 'Direccion  Z0UlPjpDV2 KZYJXbeFSB', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (30, '4229408792278', 'Cliente  Aca3LUQFSY 7fOBXSlhCR', 'correo@ n8I3cvnf9T.com', 'T8NgfSIIfF', 'Direccion  ixdKk9PfiY 79aoA93LBQ', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (31, '1685325883136', 'Cliente  rY3rOVgyZb wwznaScDA4', 'correo@ 8taleiPROi.com', 'Gf6pzESdtN', 'Direccion  6JYl1uawk2 6XsDx9LQFu', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (32, '6410223572666', 'Cliente  4vfTDDPiDq uIuMpQgnzf', 'correo@ 1Jg6yP2z9k.com', 'gPufeIGX4W', 'Direccion  SioaYroaNK GFxdA3p6d9', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (33, '8143674157872', 'Cliente  nhWFRN2E3E t4Z55rDQCm', 'correo@ 4Wvqk21O6X.com', 'GMuXqcm9JM', 'Direccion  1hlOGj1uhW vWSWS5JeLb', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (34, '9468173775926', 'Cliente  PDKpw4rbjW YWOKZ26KTA', 'correo@ wE0ffjj7VF.com', 'bI0Id1KOFD', 'Direccion  lCvPMMtQCR gng27ocBiU', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (35, '1272409056538', 'Cliente  D61PJ314gu nvQNtsvCpI', 'correo@ u7i6WWuob6.com', '8A9R6d3LD7', 'Direccion  uZJMYwjhIt f9rUSVj0QO', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (36, '7357765343959', 'Cliente  7oFO9KJic8 j24hDRGROR', 'correo@ BjlcikEZ08.com', 'TJbFhBrtdH', 'Direccion  0qOSm811Sx 9ZDLkF1n8i', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (37, '9865122459850', 'Cliente  4nD6PwAyfd dmfjUvUoub', 'correo@ 3DxrLZOSGy.com', 'PXmVZH82w2', 'Direccion  DRe7VbfTFv tN1enAPA7b', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (38, '7726996527080', 'Cliente  CQecM5RNO3 lLP3eOIIYr', 'correo@ a4k0CNO9US.com', 'KPe9WwbRUf', 'Direccion  fyFfL2tqEs KcwlU1jTtF', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (39, '3019727207728', 'Cliente  xetEeHBXPf 05MoCcniJV', 'correo@ MhuzYbSCQR.com', 'StA9dSXeX1', 'Direccion  XlieQdWBjJ VocxTqGuq7', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (40, '2904010259923', 'Cliente  Mc7Cz3tEsu yua6mVHckH', 'correo@ 9nqPOcmVgR.com', '1onvn35RNu', 'Direccion  qqfTzM7UeT mZbs3YSSWz', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (41, '6582263752069', 'Cliente  3yfy4qyddm RkXpaRNOt6', 'correo@ MpA6VROesI.com', 'rpYDcjCHbE', 'Direccion  cvpAbLTFjP nTOrvQ338l', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (42, '9192781067306', 'Cliente  6P8mrpGAAB oIDXXcyIj6', 'correo@ v1HeJlZVYA.com', 'sZ7kuE94nu', 'Direccion  TOX5cYupDG UBQnKU1iMM', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (43, '7373506699640', 'Cliente  CphTcjlNMc qIWNAdSEqn', 'correo@ QmkaqK84F9.com', '35mpWN5rUl', 'Direccion  BBWrQCd6A3 UoYUz3uzk6', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (44, '2476877262315', 'Cliente  kTn6Wb7Dln P8NkiIoY1U', 'correo@ W6HywlnScV.com', 'jjAFdNmNHc', 'Direccion  xBXPLiofpt Jz93t5RQ5X', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (45, '6791118895674', 'Cliente  2BmAcvAc0K PKzmoRp4JU', 'correo@ 93x8StNbe4.com', 'qJaKZH0uYZ', 'Direccion  Sq8FpghP2P 85OhUod9Fp', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (46, '4350255865917', 'Cliente  ep4wBDEuTr YWjEFAyuBb', 'correo@ 5ozkJjpVTV.com', '7nGHfwDH6S', 'Direccion  egINdLz0IE Gt0IHC3zsJ', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (47, '9990672087480', 'Cliente  gQjGgxwejg dn3XIVM8jz', 'correo@ pZN0DVdP8d.com', 'Px8BBIsC4Y', 'Direccion  3Ufj3Rjhom cm7jb1v0v3', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (48, '3349929164138', 'Cliente  tmuKaVlTMb Xdsful44Bh', 'correo@ W50qmAyMCR.com', '5eGos81V47', 'Direccion  RrkqDvHjrV ibutkQDxV6', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (49, '9464916388230', 'Cliente  jtCIssSUNI LXp9U3RnhU', 'correo@ NK07c14LOM.com', 'iP9aVxtSW9', 'Direccion  U1BbodxWUo tBpOZ8OU5t', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (50, '2423922372060', 'Cliente  hwbgV0FIL9 XUIyZbALZl', 'correo@ H5DObooSB7.com', '5w0eW1itCq', 'Direccion  PVVNs8KHHz dBlPNhNSOf', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (51, '8991114225014', 'Cliente  m5UDRGjnwb TUQfpwF4s2', 'correo@ JiY70xX01l.com', 'wmiKFzz6zZ', 'Direccion  K8OfDUm9t6 mdY00jxxRn', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (52, '4784254457387', 'Cliente  iggdbOBjim L1jZ0xcwbn', 'correo@ lEGP52CVbD.com', 'WVZJsms1Yq', 'Direccion  BcmX3KbwdY 1ySwG1PoYQ', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (53, '3503016730683', 'Cliente  J3FU0a4moF 5SWBODas8y', 'correo@ KoK8QbZuUn.com', 'dqmz1CnH6q', 'Direccion  x8sjb2MC9J KgOtH6VUFL', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (54, '6259515087384', 'Cliente  McNOgDgXKH VFM2n7xpBa', 'correo@ tlqpbKtmq4.com', 'gnoMb15nlR', 'Direccion  7tFlTuDwjf XVFzsAmvzS', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (55, '6174937197286', 'Cliente  kSPQJgnDpF RGfgXOeylI', 'correo@ mHbYdyQcnA.com', 'C6gH4Hy0SU', 'Direccion  z8GixzhhDq Wb1Bg5rgWn', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (56, '8442757769946', 'Cliente  VcZSJ7Dr4m 3Qpe7p2z9M', 'correo@ STUfcvcSZL.com', '8Rydus8Tw7', 'Direccion  kBXaX8VJYs 0ku00H5CLP', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (57, '5225222001661', 'Cliente  s11pRF2ywn 8faruA65AD', 'correo@ JRfR1iLCUW.com', 'gYuNSisuM7', 'Direccion  v2lJU8p5pk x2waUZQBBu', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (58, '2184183892525', 'Cliente  vPu3oWLEfv wKABIJ8SiS', 'correo@ 4ToENBokzA.com', 'fLWBB35c19', 'Direccion  ExliRAREtU s3jcYwwhrx', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (59, '9195388729197', 'Cliente  FbJTkxkg3j THYiPdJyxE', 'correo@ A4LTVkM4DH.com', 'Jz9zH9B50G', 'Direccion  2yTPQzw7Xb Kgg4W8eRvw', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (60, '6639207555611', 'Cliente  8zbQQEnqyz NCdTFT2fBA', 'correo@ qPo5P2ZOOx.com', '40kNTbr6jG', 'Direccion  onyiMUAp29 ZnKcWqaAl1', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (61, '2126533031749', 'Cliente  zr968wT7QZ lOHZaoxofZ', 'correo@ sA4wlubmh0.com', 'DZZb7bfMgk', 'Direccion  YrXuGsCdNa fj2muOvW9n', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (62, '9228915847833', 'Cliente  fl4H4n1qIL cdmKqSLVom', 'correo@ XkjOEUHJfW.com', 'DofSQesnGW', 'Direccion  h6UQXGtt3g 5WLvEUXMxj', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (63, '3282463220805', 'Cliente  d32FVreTHR RS5PlAPONV', 'correo@ U6bojGbI6d.com', 'dlS4DdSr3u', 'Direccion  0Hfr12AqZp kPspHsz08B', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (64, '6668044424118', 'Cliente  4EdSft4Q6g YaL1eKrcpy', 'correo@ lUelMTKcUj.com', 'VATmhK2MNe', 'Direccion  s8AZRWQoBt m63EcH4Jyt', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (65, '3172233303346', 'Cliente  3rRj4DNgth KYHstjkcoE', 'correo@ Y9g9YsROuZ.com', 'puwkEXHmfm', 'Direccion  iohA5utCaa MwBJHTHL74', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (66, '9815308420757', 'Cliente  EDEIGUSmfk mDC2jIYHw4', 'correo@ FCl8MHRmQv.com', 'VALD0B34vt', 'Direccion  qTpKL1pdI5 rQSWqVUKNy', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (67, '6429227956620', 'Cliente  GB5mXFIEJA qXqmML2KOA', 'correo@ Ennl8ME5w5.com', 'hfqDRtRf5X', 'Direccion  9WMEBS0Z3V 4shFnIhL4t', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (68, '4858939497710', 'Cliente  qlImgFacae mXzIlbDwSi', 'correo@ vKmlEGIWHG.com', 'Zc4dvwvcJi', 'Direccion  CsSp9dy99O sIxA32SFpU', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (69, '6911621198844', 'Cliente  NY369lBPxd Eppasfek53', 'correo@ TwkUJIaz9j.com', 'IirqSlHdHH', 'Direccion  uVekYU4eLy vap56pDlIm', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (70, '6142871610228', 'Cliente  aphT0M6U7l ewaauvzPfx', 'correo@ lSDj4JmEQ4.com', 'ojgrMEa88N', 'Direccion  aqeUN29562 ilHSfJYreZ', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (71, '3182174744269', 'Cliente  A4vK0Cpt1x 2kF53GPqgF', 'correo@ nHGmfHox5V.com', 'ZsQErAy2Km', 'Direccion  ITdJDlw9N8 p9yUkmmhDI', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (72, '3293471363197', 'Cliente  qVD3ZalbY9 aAyv7EbWeJ', 'correo@ ADF3NYVPM4.com', '1PhnVB6NLw', 'Direccion  g74wvOmOcm 3aHtPZ36Mf', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (73, '5056404722191', 'Cliente  DTAehjD58U e9iz0b2tPs', 'correo@ sY3C8sTmmj.com', 'CFx2ZdcMPX', 'Direccion  nMHfGNjfF3 OKr2SDpQpF', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (74, '8402193761352', 'Cliente  wGifr3sfCW wrU86Itmgx', 'correo@ CeC8nkKZxl.com', 'CkYYZC0hwX', 'Direccion  FhECLrVlf2 CWStFg9SqG', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (75, '7862524809957', 'Cliente  00n20oV37Y fwCBlStlBb', 'correo@ V8AnGGWRqt.com', 'eW089HghZ4', 'Direccion  845twB24BX EOOJNRh2X3', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (76, '4347812292605', 'Cliente  iVnAEt6NTK AAISBf0FE3', 'correo@ 72Disj19Mt.com', 'OZUKi0Bnaf', 'Direccion  kTEgYy1SPi VlmhdQQtQo', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (77, '6316674813750', 'Cliente  7QgBDL5aPo ywMDrlTJfD', 'correo@ wxNl35TbYo.com', 'cDaAEKfsN4', 'Direccion  xwMtSF6Qiz vV4Kp6Zeq5', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (78, '6687211515395', 'Cliente  FgbMMzZ1F3 hCRt09htZc', 'correo@ X2EzmunLEg.com', 'SMSKlDRRnw', 'Direccion  Ou8xEfKhcR ccmX9hh95F', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (79, '7136817834755', 'Cliente  MTJw9wZhbk Q0DCjEwRTi', 'correo@ ngkx22EA91.com', 'Hb9T9vJ9Di', 'Direccion  TQdwGly0vP usYKFwSwwr', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (80, '1382403055871', 'Cliente  2SwyBC2T1n IpDyFq48Ze', 'correo@ reRkR7W8zN.com', 'wx34TiB6U8', 'Direccion  Gpx5bB1EDA eb95okLIMU', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (81, '2721092641222', 'Cliente  GHjLZN4wrE s6VwM90gOs', 'correo@ PvTud7Mjn5.com', 'PIANoIRunw', 'Direccion  m5E1m5lCRl zHTIktXL7L', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (82, '4288964393597', 'Cliente  bJDPRQyDqF CV6P6nNpZJ', 'correo@ bcWpVBKlyq.com', 'dVKVGdQ28j', 'Direccion  BrJYqJMlhg LmvWNRqA32', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (83, '8789791548612', 'Cliente  iJ49K4MShv JM6QdqFxKD', 'correo@ mc4Lx83yCl.com', 'GCiaUwofTA', 'Direccion  IEUrNmHyfe FsyKpnVQL0', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (84, '9386297625031', 'Cliente  aSepa3MTag 5gAY1VNGLX', 'correo@ ISCtexvC0s.com', 'ivsZP9Y15N', 'Direccion  E6iTD3VzPR yIuzYQoBhN', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (85, '9413576844869', 'Cliente  rQJ5IH90qW vCOfjWMe0u', 'correo@ XVGN9biX25.com', 'TcQ6AhgWfs', 'Direccion  DWYl4QZepD WIumFb1yQf', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (86, '2721596410485', 'Cliente  UcW3BNYIji N9IGfX2x0x', 'correo@ JER8HMSFjx.com', 'WzffD7bmvV', 'Direccion  o8nJD1rui2 Jxz1CNYOub', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (87, '4192174776778', 'Cliente  KIHEK5cVv2 6JEBeXFHJv', 'correo@ vfFRdaQGkh.com', 'Fm3KTOAkxb', 'Direccion  HS5WiCN7LR vrk3Ikectd', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (88, '9619971545747', 'Cliente  gjsUTqVwjv nQ5kC6fR5h', 'correo@ Co3gyrJQOH.com', 'HzagU2YDSv', 'Direccion  GGjZt5s0Fr jbuyqP5Fgv', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (89, '1993066828646', 'Cliente  sOiL7ck0aF SbXPwq3vN7', 'correo@ 7LAP3LI62Q.com', 'xUFX0CEK0H', 'Direccion  LT7Pyh9dWX tHAcixCQrv', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (90, '4282280233770', 'Cliente  YbucH1skLn XAsxJo0ppm', 'correo@ xevu6T5wHq.com', '2SRaFxfb0t', 'Direccion  kQxQ0mSuZ6 p3lk7adDvJ', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (91, '4817580796429', 'Cliente  vHKEuFTkhS KtZwB6KQpH', 'correo@ YUBizSUlOT.com', 'O0SFRifI5Y', 'Direccion  A9UHDWLLL8 lK2nVomxD0', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (92, '6198650386568', 'Cliente  JnEYwaDHsj IvLWLCxmYl', 'correo@ wvFcykWKak.com', 'EI0ABvd5ax', 'Direccion  DhJZfMFX6C FsLVVzbqzV', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (93, '5481589030819', 'Cliente  fBLd1MlRSD STpXINjDi5', 'correo@ 26T6Fpb5qf.com', 'lvzQfE7iF8', 'Direccion  GedjJ65Ph9 YOMOaltKXW', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (94, '9142150952187', 'Cliente  5CQLwMRull mBc04BrW5J', 'correo@ b602pX0HxH.com', 'mee5xwKY00', 'Direccion  exPEcYHD5l IyaVV6Vzak', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (95, '5166464932635', 'Cliente  037rbUEV0Y UxP3xoVRWm', 'correo@ h4H5kpJ4cI.com', '1CPXUlAIxj', 'Direccion  RJqBU5foEY Q0bmpnXRjl', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (96, '8732963038096', 'Cliente  OBSeCfKXJ7 DPp35pGWOh', 'correo@ XNzSPZMsJF.com', 'N7YvZx1RE8', 'Direccion  hSy8yMb8jw Xq2iKmWDq0', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (97, '6077473108531', 'Cliente  NbM5utesBg 5ndG4HfUlB', 'correo@ NHCUCjK3ex.com', 'gvJzsfYWcA', 'Direccion  68rmXski4e RoqsZAvgkB', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (98, '8546300109046', 'Cliente  OmkI8bkFVB SX79FNhJDH', 'correo@ J3BLhYipxD.com', 'mYDPlbA7cx', 'Direccion  ZXOxQk9GAP USwUOvLl7t', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (99, '6994800369666', 'Cliente  KChUPoekV4 kLoQhzeb22', 'correo@ GGFTdZ2ruW.com', 'GGu3r9LwZn', 'Direccion  RegStGlwYm f0pZaYqmuB', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (100, '4128520947007', 'Cliente  RL6GQouz5r ncFLkwupda', 'correo@ Lvcy3wngSk.com', 'vgmarDXUbX', 'Direccion  1pLG0amcis Os6rkb28AD', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (101, '1240002255682', 'Cliente  LR5HGexA3M 2yk3qkOm7D', 'correo@ oHibdx9Qc8.com', 'azB07hnePs', 'Direccion  NqPvTEdjhd 60o3nKFXzl', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (102, '3130726058577', 'Cliente  n8PzQBuHel ObTEbcZuXm', 'correo@ pMiLX7eMBM.com', 'AlTCxEQHgS', 'Direccion  q5bzQa135Q SiduRAECtO', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (103, '7389183725640', 'Cliente  iFAFmGlzTm vyoWAprRTl', 'correo@ cuZGvdANQb.com', 'ViyHBubC0p', 'Direccion  HRlWlN7Heb ssIwA3OY7X', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (104, '6323896297786', 'Cliente  1PC83UCM6i bIak0A946y', 'correo@ j9u94WGEIS.com', 'KuMKoTSLGW', 'Direccion  ZOMcsFovGr 2W2l7z1bnj', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (105, '6531179317674', 'Cliente  uCIs7tCbLl tAw1UKEHB8', 'correo@ kXb0lqbBfk.com', 'nYt8AE59vf', 'Direccion  lplC3JBGmS MFmreUMnC1', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (106, '4891519708580', 'Cliente  NznHjPIDwI DxGrG8xAAv', 'correo@ MhKDGV4Xor.com', 'w6DgmJHqpN', 'Direccion  3bGiLY2cPH ZrbNnjSsXH', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (107, '3272773247841', 'Cliente  mT25XjxbLr 1fxbj2Fu6w', 'correo@ TiZspqxAYV.com', 'HkI8ry5qag', 'Direccion  fhBfTFv9P6 M1kUgamf64', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (108, '6437633325745', 'Cliente  XtbwHjW1XN hcjK9UuZ1L', 'correo@ y8a17uOm3s.com', 'z5QMhNQmZk', 'Direccion  B6MI91HZXf XK54mId3sY', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (109, '8629228933861', 'Cliente  MepjEOY7Iq nAcivxSAEF', 'correo@ ZDf8z04t2o.com', 'K7zLYg7NL6', 'Direccion  2NaiwwsF6f HCQ5pkIyOK', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (110, '2431718709294', 'Cliente  PT4Qsrvylm 7tngJOVE7M', 'correo@ agkgj8dY15.com', 'zgfkcNcUlc', 'Direccion  M6YO36m2bI e0JPC17Rsr', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (111, '4479165264613', 'Cliente  Kx1hhUe45q FjfGbv8YAn', 'correo@ 9KGv3Lfhhp.com', 'GrV7KMaIfv', 'Direccion  VCOaRzysSa qIB8eXsSPA', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (112, '6327520060238', 'Cliente  oD2pLos5yr dgltlyt0FC', 'correo@ VxykmQgNd7.com', 'SeBZM1lAlx', 'Direccion  4GTmnfuEXR wuz5cV5cr7', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (113, '4962581407337', 'Cliente  YM6H8hVWno n6ExtCEYLI', 'correo@ LlfiPBTJTF.com', 'ebs8AMLCyT', 'Direccion  iSk0l1Ymx5 30Gog2J6TC', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (114, '8779141392301', 'Cliente  6ZfVek0aGG HGO325DPPc', 'correo@ uqfgV0NAd6.com', 'sI7za0U6yl', 'Direccion  jB2KwHoY6i wSHHyvS0fO', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (115, '6676970332373', 'Cliente  eu3rUhTzGD 4VXLboL9fQ', 'correo@ PwLZ1xUsGT.com', '10XDkwh5Cw', 'Direccion  RFRgx9otEg Vv4rzXcpbG', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (116, '8395612921015', 'Cliente  N3K2SUUcd4 TGGZ3DiIuE', 'correo@ nUCfCsrQWs.com', 'tXcAnvzjBh', 'Direccion  uNgBsuOiPZ XNbEBx62NM', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (117, '3247381179722', 'Cliente  JsYPtthR6g lkuvF5ChZ5', 'correo@ 0njhfhGbh9.com', 's8ELNmCR5y', 'Direccion  Fo8sBPxtK5 l7bi4gSfWX', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (118, '5442501454082', 'Cliente  PiDCfaS9Z8 rSR3SahzIL', 'correo@ M6bGpZNtIy.com', 'jRQhA8u8tN', 'Direccion  BdfilWaNX8 p6a1zhQ1GI', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (119, '4572352449734', 'Cliente  NKuTazSEt7 AdUUzzekuT', 'correo@ mgs5ZldBVz.com', 'zpQHs3dc2q', 'Direccion  zK3DOnLbL4 l2VIc0XyK5', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (120, '8662865483191', 'Cliente  7KbXR48XBY vaIuhxS4Uo', 'correo@ FlOwCV4hux.com', 'A4O0dLY0N3', 'Direccion  DPvLvaNlwe 1bDl8F700Q', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (121, '6404345916502', 'Cliente  tWdhSJXB5w ZcJbJmPB16', 'correo@ wuqgKqHpMY.com', '2RBxP77JUN', 'Direccion  3zkNceDRmI fAkc2FJnCF', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (122, '9797481759507', 'Cliente  iTqoMmvUlw GWgbAHn6Bu', 'correo@ aC9R2vD5Jj.com', '9u8F2wVVom', 'Direccion  mbG80F1xh7 KkqieRFuCq', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (123, '5174062686675', 'Cliente  9H29BhK6Qi sy58zdDwV3', 'correo@ YtDcjWZQiT.com', 'lRrVAqBi5C', 'Direccion  ND88Bgya8F XM5B2GPV0M', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (124, '3092622747520', 'Cliente  5w6MY3ZkNj S7BKK2k3gm', 'correo@ IUvAyLzKS0.com', 'h5PAEZxLZg', 'Direccion  6JvWBztcR9 SW0qErMnwI', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (125, '5112022542665', 'Cliente  zULDZHWp5j LsaRR8q86s', 'correo@ AEr6Lsr7yK.com', 'aXQj25eBRU', 'Direccion  Cz7TMcOEWV w1SEYmUToV', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (126, '8221021638718', 'Cliente  3ihonRSIXt Utw3EE9dA5', 'correo@ ImUj0hFrGS.com', 'rWzwD5gIYh', 'Direccion  L2hFM2Mb3S H0Tqu7N4bw', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (127, '4130457486134', 'Cliente  bh8lwGLQQk OK8NEQdPcx', 'correo@ 1f2TXkxk8N.com', '4y9b3vREQe', 'Direccion  Rm0YurFvpK vSCokASn2K', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (128, '1418930330558', 'Cliente  QmcSjrALsD zvm1A3nw09', 'correo@ OhELIV8seP.com', '2AUQ1ev2W5', 'Direccion  DftTHcBDAe vsNAS55ajb', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (129, '4432014669228', 'Cliente  KGgNXuFbpt V09wxQinBJ', 'correo@ xSVot9zhiD.com', 'o9DmwEceD1', 'Direccion  VRGlfU0MnV sfvqAFVViM', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (130, '3169895108416', 'Cliente  1jneAlFfN5 E5Dc12XOk8', 'correo@ rtvWccH6Xa.com', 'FwcSqS2UsX', 'Direccion  7S8nNsH0is RYNILHhkNV', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (131, '7597444375577', 'Cliente  iqyjnLKXFv 73X5dBurlo', 'correo@ BJ4eDvtKgl.com', 'wh4SesxXV9', 'Direccion  WUTPgCpiBZ ubjp65CpKa', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (132, '5098528181134', 'Cliente  wa6H4JULF6 1unofS9mek', 'correo@ tWwIw8daMM.com', 'GqTDQCcp3N', 'Direccion  NebRr0Q9Lz Weg3XKnXYZ', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (133, '4597931177762', 'Cliente  4WTBl6pvih Ockvu3b66T', 'correo@ DiPECgDmj0.com', 'X5TE7NvWlN', 'Direccion  DhWDvwQZdi rSOnv6Xr7v', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (134, '7546077016225', 'Cliente  OhHtH4RGNN IdJkDYCnDg', 'correo@ eCcGWY9olY.com', 'SrQwsiytu6', 'Direccion  bTR5m5rsWn TU21I4YIBC', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (135, '8218732427563', 'Cliente  On0yKYovCO bHztCX0WEx', 'correo@ 16iBbX17tg.com', 'dRhtWEnQmL', 'Direccion  QzqaRUvhV6 bjrVmGrxBJ', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (136, '8288716469837', 'Cliente  AitrYoGIHX sLofdgiOZw', 'correo@ 46eJUGNPAk.com', 'zO0YxgfX6o', 'Direccion  RFAFkRdfDS CKA1TI5HmO', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (137, '3131572332336', 'Cliente  t0ORq898qx 7OebGZpMq5', 'correo@ ZM4a3IIeVe.com', 'tNCIs527a0', 'Direccion  JfghBY7S0K tosXXuplGg', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (138, '7466192906882', 'Cliente  kg5BziWkO7 BsKsZ7fFns', 'correo@ wPsP7QOEjs.com', 'rSUGxa26gf', 'Direccion  ydLXcloYP9 H2Ap8RS8jo', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (139, '9117264840029', 'Cliente  SqhjoAGPX0 o6mZIE83nM', 'correo@ tg9w2ULKjI.com', 'Gr4urmQeMo', 'Direccion  EhZ3SIYd0H 1zS7a5Y1ty', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (140, '2525263737588', 'Cliente  9DNVdp25qv 9pDe2Z67qj', 'correo@ zN2jcD8f0O.com', 'MnCOg4mbwv', 'Direccion  X3vkQ5zQAn rDZdwHRKbS', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (141, '7535347133874', 'Cliente  2vx6dqmUSs 13M9ANjiDa', 'correo@ 3FahKwk2Dz.com', 'tpbBqckjbH', 'Direccion  0Mq4zRPbPM zAM17LUcNd', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (142, '4548525928672', 'Cliente  HjEbHiO0ir H37xD1mGFa', 'correo@ oXRXjbeXFJ.com', 'jWIbsdA59N', 'Direccion  XhixNEZ3EC xlKdzlOfm0', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (143, '4639120533651', 'Cliente  5BqFGoj08I 5ibm3YUD0j', 'correo@ grmskH4jit.com', 'k3e6wTyTlm', 'Direccion  GEsNUabz6T vonb7pZhqa', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (144, '1273537011217', 'Cliente  c9SRfh2tAl oqRsLtre4t', 'correo@ 30xnykuhgh.com', 'uQQM0ntB8M', 'Direccion  R73UNgtISO srj63VI1al', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (145, '3425689534823', 'Cliente  5g11hbuL0F iwjRo3cUSl', 'correo@ RBkkd2rGVN.com', 'jjMiKung1u', 'Direccion  WItsYwiMEA LUA80WO6jv', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (146, '9587947679758', 'Cliente  3fdrapPVfy PQtC55Y5gD', 'correo@ uz3T04ssQo.com', 'C05JtHbkP3', 'Direccion  bSb4zRiPQr sXyIzm5Wri', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (147, '8973514646968', 'Cliente  K3Vry3V93J YtaMj48gl3', 'correo@ SuFMb9GKvc.com', '3nSKpkXJgZ', 'Direccion  iNCf4b3CJ5 ppW73JMwe2', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (148, '3162971867230', 'Cliente  XURikKo5UB vu3ufNddfZ', 'correo@ fTSGQUHttz.com', 'LI733BkbF7', 'Direccion  HnAHlTk7Z3 SvyzRZv4my', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (149, '4583484843536', 'Cliente  G4YgP8iGbz 8M9V85BKUV', 'correo@ OYm02ySoIG.com', 'AkGCOBCUTI', 'Direccion  VZjsgPTes4 JpI8XlNjdk', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (150, '1843654656959', 'Cliente  wty95876hR ojIR2ZUDaI', 'correo@ Qwg9HO50eZ.com', '2P8RB0tulB', 'Direccion  h2UJPryaQG 1aN3Rao9iS', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (151, '1148090120493', 'Cliente  2tdV3pa5rF zBJDdzU5vi', 'correo@ aUnL0ghK86.com', '9HDnwX1GhL', 'Direccion  KDncDUkNnt hT8LxHkc7D', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (152, '6775213445190', 'Cliente  Z49ltbC25p kjDViw7S3Z', 'correo@ X6AEvurPYt.com', 'Qh0oR7hxjg', 'Direccion  8nMcRizAmk nUdYdbQqiV', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (153, '6342846218348', 'Cliente  uqiNE9hgiC StyWRZMM1D', 'correo@ rurlJQ3Yvh.com', 'coREOrLdyV', 'Direccion  1ce7gx3vA8 XkysJLocs8', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (154, '9413415910403', 'Cliente  6pCaXWiGVc yv0Qe2wGYk', 'correo@ VVQ6vitVUs.com', 'VEyTl7A7f7', 'Direccion  YWYvGGW45z ijQM5E7IB2', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (155, '4190549925980', 'Cliente  ClXVcB9Ovv zRB9oewmtm', 'correo@ 9xsZe6n7j1.com', '5RsveT0aKH', 'Direccion  UrF82na8I1 DfaaqNakzH', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (156, '6052818946652', 'Cliente  PnvYxkCVTF 3XKPvoR9Lf', 'correo@ H3044WQorS.com', 'wXXeAeUUeu', 'Direccion  QJVl9fBtmo wJalpdeKxN', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (157, '6818865983917', 'Cliente  2vn9ekd6rV 1cIvWJDjKc', 'correo@ Nqs0GfNFRT.com', 'wAP6U0S0vn', 'Direccion  YmIutTbsCY p6BBfbYHlL', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (158, '2290351326644', 'Cliente  2obY8n0y1M 0YWa0SLmKg', 'correo@ eJcYHe7UDk.com', 'clpspLhkyr', 'Direccion  Ogx52e78gb KxmdH7Vldx', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (159, '2936202393631', 'Cliente  2Z0MolY8pR CchWywmGBD', 'correo@ hAEmL2JJ3X.com', 'pzHe05CEP2', 'Direccion  qFj8ak98Fx 8yTItw5ycM', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (160, '7954945173137', 'Cliente  03kla1nWw6 SgQxi43L6x', 'correo@ giUW8WFpqW.com', 'yXPWqZz81Q', 'Direccion  gGLTv5kRaX 76gyBEvLqN', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (161, '8501616858713', 'Cliente  22dfKvIaeg f584rbIwsv', 'correo@ ZNxJtoIQ4k.com', 'Ay2ricUKrP', 'Direccion  TXZ961O7ri TtnVW4fApv', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (162, '5900231194418', 'Cliente  5htBIAMmCr v6P5o9IiZw', 'correo@ y94wsySM7C.com', 'vRF3Arzlua', 'Direccion  cZ6USoeWnO LjO2WjT2hh', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (163, '5843648190801', 'Cliente  BCbKw3WeyH O9VN61w6co', 'correo@ ZPJ3bE34Ei.com', 'Nw3iph15zP', 'Direccion  Ss2e7ThL73 MXQSEUxhVy', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (164, '8771188070434', 'Cliente  9cUivhTBs8 SJbf5TiwoD', 'correo@ Dxkh3K08a9.com', 'q5a3K6EfnS', 'Direccion  UCHGbFzmeg f9t6OuP0Qf', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (165, '9110180367380', 'Cliente  GiGr3kMyLw ajYleT0GLy', 'correo@ vecFz4iTsF.com', 'alQonqFQak', 'Direccion  A71bAZfxH3 5pDgbbzC4i', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (166, '8274961816131', 'Cliente  cfKKYW4lOg cNZSst5hl7', 'correo@ oFNbGLSFbI.com', 'q89ozeswqK', 'Direccion  oWrtH6CTmS GiXWV9W5B8', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (167, '2175484954154', 'Cliente  ti1SO21l6z BukwHEiJ9i', 'correo@ GrxyC3PTJA.com', 'UMAN0iX2JK', 'Direccion  a4hKg39anY V6TcLDvvAa', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (168, '5755713490101', 'Cliente  82ZK0b1Uwj RK2GGyHFnQ', 'correo@ RHbIdGB3ew.com', 'ePclnSPAiZ', 'Direccion  iofZZQpgB6 Ey5HJuForj', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (169, '8620432872258', 'Cliente  r3zR75WoaC U0yEqeTZ3e', 'correo@ r7c3evbPyY.com', 'FGDrRlGfOX', 'Direccion  tZhdj1mw69 spxzCySNeN', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (170, '3922547790053', 'Cliente  ANMZyXj0N6 RQkN0c3GQy', 'correo@ tv4xr2i0TG.com', 'KSoeMPqScc', 'Direccion  0mftky92O8 I1xfujCGHh', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (171, '1652726585812', 'Cliente  Kxs76nfS19 pck7nmmt7v', 'correo@ UmoJuocCwF.com', 'OgBfGQYozS', 'Direccion  AoUlCJeKcC WVpCwx2dC7', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (172, '2869637630067', 'Cliente  FFx66NJt69 39x1Pfm3YY', 'correo@ fqDoJIKSik.com', 'BvKufPlAqB', 'Direccion  hl3nSiejA4 7dwV7QHNlA', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (173, '9281128949629', 'Cliente  nc8LVKbtkE 691U2uCRbM', 'correo@ tu9AicayDg.com', 'LXdTr7SOm0', 'Direccion  cq6aZJbKOD lF0Wgud1yZ', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (174, '2495358154740', 'Cliente  kLjBUnkL3J u0vVH2PRCL', 'correo@ ZxktUSyfqT.com', 'K0d6jyRBxd', 'Direccion  5qZE34iwek wrjlwkAUzD', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (175, '4502038119402', 'Cliente  20SxG2r71v sk3zwU8Egx', 'correo@ opyLDhcnmB.com', 'awDQnWc8xG', 'Direccion  8nOPFpqaZ4 A1hqujl3av', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (176, '8474705814271', 'Cliente  XXJsZIa6WD FryTA0ZHYk', 'correo@ D1gEOlRyOo.com', 'TcamigcT2e', 'Direccion  340yTVYsLg N8nUBT0UV4', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (177, '1976456758549', 'Cliente  28CGvUDUEo KdwgYRYZrr', 'correo@ CEmquuj4NZ.com', 'E7uvgzddkz', 'Direccion  OYlvUysvgY a0C0YPUsf6', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (178, '3908676484643', 'Cliente  Q81vbXpgU8 CYiufreZlU', 'correo@ k6Spg7qHF6.com', 'Png67jRajp', 'Direccion  xj3BD3Jm6M ArIcm2BVkA', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (179, '4584687242160', 'Cliente  idowXMob1W APynHwrO3x', 'correo@ pGLuxUAGMI.com', 'oLgvTz0Wqo', 'Direccion  G6I8TshYS0 YykEHo512m', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (180, '8536086075537', 'Cliente  KwNey4Bsz4 HdJDePLWrh', 'correo@ MUxKjlT44u.com', 'vw8JJAarV5', 'Direccion  H3j22c9WBF Iw0CmB352f', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (181, '9262712498966', 'Cliente  HYeI6iEJA9 NDxp2zMW2l', 'correo@ oU4Hoh0aud.com', 'crgF9s4HfA', 'Direccion  blTn1FBhJr SmfQ2UQtvA', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (182, '2737859187364', 'Cliente  rzWIa0ueEu TUaeNVKxLG', 'correo@ 2OVHWxbox2.com', '7jKu58ANH6', 'Direccion  NDLE27TjJD QEXVcWlgbx', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (183, '4005258988011', 'Cliente  XWPtpvPEhb t5EsOMoysg', 'correo@ ik6xzqFPL2.com', 'ukKn9dJFB4', 'Direccion  rG4uQ5ppqq wepg0k5AJ8', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (184, '7149777858448', 'Cliente  yvQ50b9Mid 09m0tk2tQz', 'correo@ DTxHMIvoFl.com', 'abejNPs42f', 'Direccion  ik4EU0D74H mK3pglfNTT', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (185, '2996222361155', 'Cliente  ExkJVxxAkk GMIUyjN6EA', 'correo@ kHrD6lbELG.com', 'EfCMMo1hrT', 'Direccion  SIFbEhUCQP bT5ajGUqbE', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (186, '7026899788603', 'Cliente  3DztOg3hu5 W70ahW55uX', 'correo@ SCMpRPwIYU.com', '5bdW6kSHA0', 'Direccion  GawsmTErZr 55AA1StoGY', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (187, '9649807133063', 'Cliente  jTHWwHABs5 6jtfpA4u0p', 'correo@ QfEmx9FvHN.com', 'NGHWTp7g9H', 'Direccion  Gga001KiWw SZcqNbdTM1', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (188, '7783950721050', 'Cliente  qRKvcD3anT 7oDmL4pstL', 'correo@ bTiZIvpmSZ.com', 'tTmLAHLDZf', 'Direccion  HbzkDGjFzL 6LeijaFLGr', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (189, '1743953631446', 'Cliente  LaU9hayeFQ ms5RzZBtd1', 'correo@ JDC9FAZG2u.com', 'q0Rwp2zmOO', 'Direccion  Es84U1IM3Z CofK2qcvvv', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (190, '2753553630029', 'Cliente  hjXaH80QIi rxLz2nO63E', 'correo@ vC3HsTWKKu.com', '5p71JRrpUD', 'Direccion  iMqUophBSt y5EUo360xu', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (191, '1292909230101', 'Cliente  DuHRetbCmQ RdKIQHgun6', 'correo@ w58GIjS45w.com', 'ick4XsosU0', 'Direccion  Fophf6wp8v CxME5W400r', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (192, '6721480645556', 'Cliente  a5T9kcZcSE elJV9sV0Hr', 'correo@ FdyAZhGmry.com', 'jFnzS0D570', 'Direccion  D5jMIDkNsK ql3MzdYtWo', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (193, '4863449887561', 'Cliente  XgSgr4SlZe cyP4DGrUNv', 'correo@ xPzYnlY1Mj.com', '9NWZQpU3s3', 'Direccion  Q2wnB3l8NU NEPXzesddP', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (194, '9351969567640', 'Cliente  ZIWLUBBmq0 MiwqLYJg0V', 'correo@ 3uwb9hM3dG.com', '03CIQPZpZo', 'Direccion  URS5W3EofK ZNOLqM7Xdg', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (195, '3310999285994', 'Cliente  Gf2FOc9pD4 HNOFFbAvf7', 'correo@ ZsT7hjjd66.com', 'ASKVrhT4WJ', 'Direccion  166ednuCgy 6EuZjwunhm', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (196, '1590170356139', 'Cliente  9XPS7UR7JM 0GgBNNIW9z', 'correo@ hCYC8vMjZH.com', 'mYSXM1o8mH', 'Direccion  EYpJcrCOen SWV9IyR8mn', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (197, '7234918664315', 'Cliente  GnRlxYAf6E woKdkI404I', 'correo@ Yozof3G3A0.com', 'GV2YDd5wOU', 'Direccion  FZ7ZmnA4vR Z3jIrQ5MGq', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (198, '1654176318594', 'Cliente  GwPJWNM0wd zaX3WCpTmt', 'correo@ 2rO143G0lj.com', 'iQ1ZngizCh', 'Direccion  rsEwdd6OZB fWNeGuAYPX', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (199, '5052275248168', 'Cliente  pdI3KvGjpa MK1uia7rAC', 'correo@ 46IXKJfUvR.com', 'X2KhPkdYuh', 'Direccion  zXYVjkY94g FSuAtUYCqc', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (200, '4392510173060', 'Cliente  FUQET0q7RK lq9rhktHNI', 'correo@ 9fED2z5hs2.com', 'tI4e9pYKhq', 'Direccion  DQL160eZCh h3Z5LuNy5C', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (201, '3237317963945', 'Cliente  okB9JP28kO tM9BGqOFN9', 'correo@ V6O8kVrW40.com', '7brob0n6Qi', 'Direccion  8abv4YxswH SZPTQabI5R', 'Ruc', NULL, NULL);
INSERT INTO `clientes` VALUES (202, '1717911122', 'MAURICIO CONDOR', 'mauricio.macb@hotmail.com', '0995555555', 'DIRECCION QUITO ECUADOR', 'Cédula', '2022-07-26 00:05:38', NULL);

-- ----------------------------
-- Table structure for cms_apicustom
-- ----------------------------
DROP TABLE IF EXISTS `cms_apicustom`;
CREATE TABLE `cms_apicustom`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `permalink` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tabel` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `aksi` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kolom` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `orderby` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sub_query_1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sql_where` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nama` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `keterangan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parameter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `method_type` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `responses` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_apicustom
-- ----------------------------

-- ----------------------------
-- Table structure for cms_apikey
-- ----------------------------
DROP TABLE IF EXISTS `cms_apikey`;
CREATE TABLE `cms_apikey`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hit` int(11) NULL DEFAULT NULL,
  `status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_apikey
-- ----------------------------

-- ----------------------------
-- Table structure for cms_dashboard
-- ----------------------------
DROP TABLE IF EXISTS `cms_dashboard`;
CREATE TABLE `cms_dashboard`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_dashboard
-- ----------------------------

-- ----------------------------
-- Table structure for cms_email_queues
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_queues`;
CREATE TABLE `cms_email_queues`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `send_at` datetime(0) NULL DEFAULT NULL,
  `email_recipient` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_from_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_from_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_cc_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `email_attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `is_sent` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_email_queues
-- ----------------------------

-- ----------------------------
-- Table structure for cms_email_templates
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_templates`;
CREATE TABLE `cms_email_templates`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `from_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `from_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cc_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_email_templates
-- ----------------------------
INSERT INTO `cms_email_templates` VALUES (1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@admin.com', NULL, '2022-07-05 19:50:58', NULL);

-- ----------------------------
-- Table structure for cms_logs
-- ----------------------------
DROP TABLE IF EXISTS `cms_logs`;
CREATE TABLE `cms_logs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `useragent` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id_cms_users` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_logs
-- ----------------------------
INSERT INTO `cms_logs` VALUES (1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://localhost:8000/admin/productos/add-save', 'Añadir nueva información  en Productos', '', 1, '2022-07-05 20:25:33', NULL);
INSERT INTO `cms_logs` VALUES (2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://localhost:8000/admin/clientes/add-save', 'Añadir nueva información  en Clientes', '', 1, '2022-07-05 21:19:33', NULL);
INSERT INTO `cms_logs` VALUES (3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://localhost:8000/admin/settings/add-save', 'Añadir nueva información  en Ajustes', '', 1, '2022-07-05 21:31:27', NULL);
INSERT INTO `cms_logs` VALUES (4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://localhost:8000/admin/settings/delete/17', 'Eliminar información  en Ajustes', '', 1, '2022-07-05 21:31:43', NULL);
INSERT INTO `cms_logs` VALUES (5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://localhost:8000/admin/clientes/add-save', 'Add New Data  at Clientes', '', 1, '2022-07-05 21:44:28', NULL);
INSERT INTO `cms_logs` VALUES (6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-07 22:12:34', NULL);
INSERT INTO `cms_logs` VALUES (7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-08 21:30:48', NULL);
INSERT INTO `cms_logs` VALUES (8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-11 09:57:54', NULL);
INSERT INTO `cms_logs` VALUES (9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-14 22:30:01', NULL);
INSERT INTO `cms_logs` VALUES (10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-16 09:32:06', NULL);
INSERT INTO `cms_logs` VALUES (11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-16 12:12:45', NULL);
INSERT INTO `cms_logs` VALUES (12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-16 12:24:23', NULL);
INSERT INTO `cms_logs` VALUES (13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-16 23:26:14', NULL);
INSERT INTO `cms_logs` VALUES (14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-17 10:41:06', NULL);
INSERT INTO `cms_logs` VALUES (15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-17 11:43:38', NULL);
INSERT INTO `cms_logs` VALUES (16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-17 12:30:40', NULL);
INSERT INTO `cms_logs` VALUES (17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-17 13:17:18', NULL);
INSERT INTO `cms_logs` VALUES (18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-17 13:44:32', NULL);
INSERT INTO `cms_logs` VALUES (19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-17 16:44:14', NULL);
INSERT INTO `cms_logs` VALUES (20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-17 20:12:34', NULL);
INSERT INTO `cms_logs` VALUES (21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-17 21:40:17', NULL);
INSERT INTO `cms_logs` VALUES (22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-18 20:01:13', NULL);
INSERT INTO `cms_logs` VALUES (23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/productos/edit-save/3', 'Actualizar información  en Productos', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nombre</td><td>Producto de prueba3</td><td>Producto de prueba3.</td></tr></tbody></table>', 1, '2022-07-18 20:13:44', NULL);
INSERT INTO `cms_logs` VALUES (24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/categorias/edit-save/21', 'Actualizar información  en Categorias', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nombre</td><td>Categoria uk</td><td>Categoria uk.</td></tr></tbody></table>', 1, '2022-07-18 20:14:08', NULL);
INSERT INTO `cms_logs` VALUES (25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/clientes/edit-save/102757', 'Actualizar información  en Clientes', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nombres</td><td>Cliente  0Y9oSFOV5E zrOlgu1r1l</td><td>Cliente  0Y9oSFOV5E zrOlgu1r1la</td></tr><tr><td>correo</td><td>correo@ USAMI0ZOiJ.7EW</td><td>correo@dsadsa.com</td></tr></tbody></table>', 1, '2022-07-18 20:14:51', NULL);
INSERT INTO `cms_logs` VALUES (26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/empresas/edit-save/1', 'Actualizar información  en Empresa', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nombre</td><td>Nombre Empresa</td><td>Nombre Empresa.</td></tr></tbody></table>', 1, '2022-07-18 20:15:08', NULL);
INSERT INTO `cms_logs` VALUES (27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/productos/edit-save/2', 'Actualizar información  en Productos', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>codigo</td><td>00000002</td><td>.00000002</td></tr></tbody></table>', 1, '2022-07-18 20:17:10', NULL);
INSERT INTO `cms_logs` VALUES (28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/16', 'Eliminar información Parámetro Iva en Generador de Módulos', '', 1, '2022-07-18 20:33:33', NULL);
INSERT INTO `cms_logs` VALUES (29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de vendedor@admin.com desde la Dirección IP 127.0.0.1', '', 2, '2022-07-18 20:36:17', NULL);
INSERT INTO `cms_logs` VALUES (30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'vendedor@admin.com se desconectó', '', 2, '2022-07-18 20:52:21', NULL);
INSERT INTO `cms_logs` VALUES (31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-18 20:52:28', NULL);
INSERT INTO `cms_logs` VALUES (32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@admin.com se desconectó', '', 1, '2022-07-18 20:52:38', NULL);
INSERT INTO `cms_logs` VALUES (33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-18 20:53:30', NULL);
INSERT INTO `cms_logs` VALUES (34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@admin.com se desconectó', '', 1, '2022-07-18 20:53:46', NULL);
INSERT INTO `cms_logs` VALUES (35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de vendedor@admin.com desde la Dirección IP 127.0.0.1', '', 2, '2022-07-18 20:53:51', NULL);
INSERT INTO `cms_logs` VALUES (36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'vendedor@admin.com se desconectó', '', 2, '2022-07-18 20:54:11', NULL);
INSERT INTO `cms_logs` VALUES (37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de vendedor@admin.com desde la Dirección IP 127.0.0.1', '', 2, '2022-07-18 20:54:32', NULL);
INSERT INTO `cms_logs` VALUES (38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'vendedor@admin.com se desconectó', '', 2, '2022-07-18 20:56:31', NULL);
INSERT INTO `cms_logs` VALUES (39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-18 20:56:37', NULL);
INSERT INTO `cms_logs` VALUES (40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/9', 'Actualizar información Empresa en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>7</td><td></td></tr></tbody></table>', 1, '2022-07-18 20:57:36', NULL);
INSERT INTO `cms_logs` VALUES (41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@admin.com se desconectó', '', 1, '2022-07-18 20:57:42', NULL);
INSERT INTO `cms_logs` VALUES (42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de vendedor@admin.com desde la Dirección IP 127.0.0.1', '', 2, '2022-07-18 20:57:54', NULL);
INSERT INTO `cms_logs` VALUES (43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'vendedor@admin.com se desconectó', '', 2, '2022-07-18 20:58:09', NULL);
INSERT INTO `cms_logs` VALUES (44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-18 20:58:13', NULL);
INSERT INTO `cms_logs` VALUES (45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@admin.com se desconectó', '', 1, '2022-07-18 21:00:26', NULL);
INSERT INTO `cms_logs` VALUES (46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-18 21:00:29', NULL);
INSERT INTO `cms_logs` VALUES (47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@admin.com se desconectó', '', 1, '2022-07-18 21:00:43', NULL);
INSERT INTO `cms_logs` VALUES (48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de vendedor@admin.com desde la Dirección IP 127.0.0.1', '', 2, '2022-07-18 21:00:52', NULL);
INSERT INTO `cms_logs` VALUES (49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/productos', 'Intentar ver :name en Productos', '', 2, '2022-07-18 21:00:58', NULL);
INSERT INTO `cms_logs` VALUES (50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'vendedor@admin.com se desconectó', '', 2, '2022-07-18 21:01:25', NULL);
INSERT INTO `cms_logs` VALUES (51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-18 21:01:28', NULL);
INSERT INTO `cms_logs` VALUES (52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/empresas/edit-save/1', 'Actualizar información  en Empresa', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>telefonos</td><td>+593 2222 222</td><td>09999999</td></tr></tbody></table>', 1, '2022-07-18 23:09:01', NULL);
INSERT INTO `cms_logs` VALUES (53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@admin.com se desconectó', '', 1, '2022-07-18 23:31:37', NULL);
INSERT INTO `cms_logs` VALUES (54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de vendedor@admin.com desde la Dirección IP 127.0.0.1', '', 2, '2022-07-18 23:31:41', NULL);
INSERT INTO `cms_logs` VALUES (55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'vendedor@admin.com se desconectó', '', 2, '2022-07-18 23:31:49', NULL);
INSERT INTO `cms_logs` VALUES (56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-18 23:31:52', NULL);
INSERT INTO `cms_logs` VALUES (57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@admin.com se desconectó', '', 1, '2022-07-18 23:32:57', NULL);
INSERT INTO `cms_logs` VALUES (58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de vendedor@admin.com desde la Dirección IP 127.0.0.1', '', 2, '2022-07-18 23:33:00', NULL);
INSERT INTO `cms_logs` VALUES (59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-21 15:54:10', NULL);
INSERT INTO `cms_logs` VALUES (60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/factureros/edit-save/1', 'Actualizar información  en Facturero', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2022-07-21 20:49:40', NULL);
INSERT INTO `cms_logs` VALUES (61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/factureros/edit-save/1', 'Actualizar información  en Facturero', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>inicio_facturero</td><td>2</td><td>3</td></tr></tbody></table>', 1, '2022-07-21 20:49:48', NULL);
INSERT INTO `cms_logs` VALUES (62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/factureros/edit-save/1', 'Actualizar información  en Facturero', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>inicio_facturero</td><td>3</td><td>4</td></tr></tbody></table>', 1, '2022-07-21 20:51:58', NULL);
INSERT INTO `cms_logs` VALUES (63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@admin.com se desconectó', '', 1, '2022-07-21 20:54:03', NULL);
INSERT INTO `cms_logs` VALUES (64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-21 20:54:58', NULL);
INSERT INTO `cms_logs` VALUES (65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@admin.com se desconectó', '', 1, '2022-07-21 20:55:13', NULL);
INSERT INTO `cms_logs` VALUES (66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-21 20:55:16', NULL);
INSERT INTO `cms_logs` VALUES (67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@admin.com se desconectó', '', 1, '2022-07-21 20:57:44', NULL);
INSERT INTO `cms_logs` VALUES (68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de vendedor@admin.com desde la Dirección IP 127.0.0.1', '', 2, '2022-07-21 20:57:49', NULL);
INSERT INTO `cms_logs` VALUES (69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'vendedor@admin.com se desconectó', '', 2, '2022-07-21 20:58:27', NULL);
INSERT INTO `cms_logs` VALUES (70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-21 20:58:30', NULL);
INSERT INTO `cms_logs` VALUES (71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-21 21:04:44', NULL);
INSERT INTO `cms_logs` VALUES (72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/formas_pagos/edit-save/2', 'Actualizar información  en Formas de pago', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>observaciones</td><td></td><td>cheque</td></tr><tr><td>activo_id</td><td>2</td><td>1</td></tr></tbody></table>', 1, '2022-07-21 21:11:47', NULL);
INSERT INTO `cms_logs` VALUES (73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/formas_pagos/edit-save/7', 'Actualizar información  en Formas de pago', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>observaciones</td><td></td><td>transfer</td></tr></tbody></table>', 1, '2022-07-21 21:12:06', NULL);
INSERT INTO `cms_logs` VALUES (74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/formas_pagos/edit-save/7', 'Actualizar información  en Formas de pago', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>activo_id</td><td>2</td><td>1</td></tr></tbody></table>', 1, '2022-07-21 21:12:13', NULL);
INSERT INTO `cms_logs` VALUES (75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/productos/edit-save/2', 'Actualizar información  en Productos', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>codigo</td><td>.00000002</td><td>00000002</td></tr></tbody></table>', 1, '2022-07-21 22:00:09', NULL);
INSERT INTO `cms_logs` VALUES (76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/factureros/edit-save/1', 'Actualizar información  en Facturero', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>inicio_facturero</td><td>4</td><td>5</td></tr></tbody></table>', 1, '2022-07-21 22:30:19', NULL);
INSERT INTO `cms_logs` VALUES (77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-22 22:29:33', NULL);
INSERT INTO `cms_logs` VALUES (78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-22 23:03:29', NULL);
INSERT INTO `cms_logs` VALUES (79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-25 08:19:57', NULL);
INSERT INTO `cms_logs` VALUES (80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/factureros/edit-save/1', 'Actualizar información  en Facturero', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>inicio_facturero</td><td>5</td><td>6</td></tr></tbody></table>', 1, '2022-07-25 18:42:53', NULL);
INSERT INTO `cms_logs` VALUES (81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/productos/add-save', 'Añadir nueva información  en Productos', '', 1, '2022-07-25 18:50:29', NULL);
INSERT INTO `cms_logs` VALUES (82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/productos/add-save', 'Añadir nueva información  en Productos', '', 1, '2022-07-25 18:50:59', NULL);
INSERT INTO `cms_logs` VALUES (83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/productos/add-save', 'Añadir nueva información  en Productos', '', 1, '2022-07-25 18:51:19', NULL);
INSERT INTO `cms_logs` VALUES (84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/productos/add-save', 'Añadir nueva información  en Productos', '', 1, '2022-07-25 18:51:48', NULL);
INSERT INTO `cms_logs` VALUES (85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/clientes/add-save', 'Añadir nueva información  en Clientes', '', 1, '2022-07-26 00:05:38', NULL);
INSERT INTO `cms_logs` VALUES (86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/factureros/edit-save/1', 'Actualizar información  en Facturero', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>inicio_facturero</td><td>15</td><td>1</td></tr></tbody></table>', 1, '2022-07-26 00:13:51', NULL);
INSERT INTO `cms_logs` VALUES (87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@admin.com se desconectó', '', 1, '2022-07-26 00:20:35', NULL);
INSERT INTO `cms_logs` VALUES (88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1', '', 1, '2022-07-26 00:23:49', NULL);

-- ----------------------------
-- Table structure for cms_menus
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus`;
CREATE TABLE `cms_menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  `sorting` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_menus
-- ----------------------------
INSERT INTO `cms_menus` VALUES (1, 'Categorias', 'Route', 'AdminCategoriasControllerGetIndex', NULL, 'fa fa-glass', 8, 1, 0, 1, 1, '2022-07-03 19:09:39', NULL);
INSERT INTO `cms_menus` VALUES (2, 'Productos', 'Route', 'AdminProductosControllerGetIndex', NULL, 'fa fa-glass', 8, 1, 0, 1, 2, '2022-07-03 19:10:04', NULL);
INSERT INTO `cms_menus` VALUES (3, 'Facturero', 'Route', 'AdminFacturerosControllerGetIndex', NULL, 'fa fa-glass', 7, 1, 0, 1, 2, '2022-07-03 19:25:05', NULL);
INSERT INTO `cms_menus` VALUES (4, 'Formas de pago', 'Route', 'AdminFormasPagosControllerGetIndex', NULL, 'fa fa-glass', 7, 1, 0, 1, 3, '2022-07-03 19:26:53', NULL);
INSERT INTO `cms_menus` VALUES (6, 'Clientes', 'Route', 'AdminClientesControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 4, '2022-07-03 19:32:11', '2022-07-04 21:23:11');
INSERT INTO `cms_menus` VALUES (7, 'Parámetros', 'Module', 'factureros', 'normal', 'fa fa-th', 0, 1, 0, 1, 2, '2022-07-03 19:36:47', NULL);
INSERT INTO `cms_menus` VALUES (8, 'Inventario', 'Module', 'categorias', 'normal', 'fa fa-th-list', 0, 1, 0, 1, 3, '2022-07-03 19:38:00', NULL);
INSERT INTO `cms_menus` VALUES (9, 'Empresa', 'Route', 'AdminEmpresasControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 1, '2022-07-04 20:30:19', '2022-07-18 20:57:36');
INSERT INTO `cms_menus` VALUES (10, 'Factura de venta', 'Route', 'AdminFacturasControllerGetIndex', 'normal', 'fa fa-star', 0, 1, 0, 1, 5, '2022-07-04 20:33:01', '2022-07-04 21:23:44');
INSERT INTO `cms_menus` VALUES (11, 'IVA', 'Route', 'AdminTasasIvaControllerGetIndex', NULL, 'fa fa-glass', 7, 1, 0, 1, 1, '2022-07-18 20:31:07', NULL);

-- ----------------------------
-- Table structure for cms_menus_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus_privileges`;
CREATE TABLE `cms_menus_privileges`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_menus_privileges
-- ----------------------------
INSERT INTO `cms_menus_privileges` VALUES (1, 1, 1);
INSERT INTO `cms_menus_privileges` VALUES (2, 2, 1);
INSERT INTO `cms_menus_privileges` VALUES (3, 3, 1);
INSERT INTO `cms_menus_privileges` VALUES (4, 4, 1);
INSERT INTO `cms_menus_privileges` VALUES (5, 5, 1);
INSERT INTO `cms_menus_privileges` VALUES (7, 7, 1);
INSERT INTO `cms_menus_privileges` VALUES (8, 8, 1);
INSERT INTO `cms_menus_privileges` VALUES (11, 6, 1);
INSERT INTO `cms_menus_privileges` VALUES (12, 6, 2);
INSERT INTO `cms_menus_privileges` VALUES (13, 10, 1);
INSERT INTO `cms_menus_privileges` VALUES (14, 10, 2);
INSERT INTO `cms_menus_privileges` VALUES (15, 11, 1);
INSERT INTO `cms_menus_privileges` VALUES (16, 9, 1);
INSERT INTO `cms_menus_privileges` VALUES (17, 9, 2);

-- ----------------------------
-- Table structure for cms_moduls
-- ----------------------------
DROP TABLE IF EXISTS `cms_moduls`;
CREATE TABLE `cms_moduls`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `table_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `controller` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_moduls
-- ----------------------------
INSERT INTO `cms_moduls` VALUES (1, 'Notificaciones', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2022-07-05 19:50:58', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (2, 'Privilegios', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2022-07-05 19:50:58', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (3, 'Privilegios & Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2022-07-05 19:50:58', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (4, 'Gestión de usuarios', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2022-07-05 19:50:58', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (5, 'Ajustes', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2022-07-05 19:50:58', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (6, 'Generador de Módulos', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2022-07-05 19:50:58', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (7, 'Gestión de Menús', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2022-07-05 19:50:58', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (8, 'Plantillas de Correo', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2022-07-05 19:50:58', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (9, 'Generador de Estadísticas', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2022-07-05 19:50:58', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (10, 'Generador de API', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2022-07-05 19:50:58', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (11, 'Log de Accesos (Usuarios)', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2022-07-05 19:50:58', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (12, 'Categorias', 'fa fa-glass', 'categorias', 'categorias', 'AdminCategoriasController', 0, 0, '2022-07-03 19:09:39', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (13, 'Productos', 'fa fa-glass', 'productos', 'productos', 'AdminProductosController', 0, 0, '2022-07-03 19:10:04', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (14, 'Facturero', 'fa fa-glass', 'factureros', 'factureros', 'AdminFacturerosController', 0, 0, '2022-07-03 19:25:05', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (15, 'Formas de pago', 'fa fa-glass', 'formas_pagos', 'formas_pagos', 'AdminFormasPagosController', 0, 0, '2022-07-03 19:26:53', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (16, 'Parámetro Iva', 'fa fa-glass', 'parametros_ivas', 'parametros_ivas', 'AdminParametrosIvasController', 0, 0, '2022-07-03 19:29:41', NULL, '2022-07-18 20:33:33');
INSERT INTO `cms_moduls` VALUES (17, 'Clientes', 'fa fa-glass', 'clientes', 'clientes', 'AdminClientesController', 0, 0, '2022-07-03 19:32:11', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (18, 'Empresa', 'fa fa-glass', 'empresas', 'empresas', 'AdminEmpresasController', 0, 0, '2022-07-04 20:30:19', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (19, 'Factura de venta', 'fa fa-star', 'facturas', 'facturas', 'AdminFacturasController', 0, 0, '2022-07-04 20:33:01', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (20, 'IVA', 'fa fa-glass', 'tasas_iva', 'tasas_iva', 'AdminTasasIvaController', 0, 0, '2022-07-18 20:31:07', NULL, NULL);

-- ----------------------------
-- Table structure for cms_notifications
-- ----------------------------
DROP TABLE IF EXISTS `cms_notifications`;
CREATE TABLE `cms_notifications`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) NULL DEFAULT NULL,
  `content` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_read` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_notifications
-- ----------------------------

-- ----------------------------
-- Table structure for cms_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges`;
CREATE TABLE `cms_privileges`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_superadmin` tinyint(1) NULL DEFAULT NULL,
  `theme_color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_privileges
-- ----------------------------
INSERT INTO `cms_privileges` VALUES (1, 'Super Administrator', 1, 'skin-black', '2022-07-05 19:50:58', NULL);
INSERT INTO `cms_privileges` VALUES (2, 'Vendedor', 0, 'skin-green', NULL, NULL);

-- ----------------------------
-- Table structure for cms_privileges_roles
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges_roles`;
CREATE TABLE `cms_privileges_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) NULL DEFAULT NULL,
  `is_create` tinyint(1) NULL DEFAULT NULL,
  `is_read` tinyint(1) NULL DEFAULT NULL,
  `is_edit` tinyint(1) NULL DEFAULT NULL,
  `is_delete` tinyint(1) NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  `id_cms_moduls` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_privileges_roles
-- ----------------------------
INSERT INTO `cms_privileges_roles` VALUES (22, 1, 1, 1, 1, 1, 1, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (23, 1, 1, 1, 1, 1, 1, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (24, 1, 1, 1, 1, 1, 1, 18, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (25, 1, 1, 1, 1, 1, 1, 19, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (26, 1, 1, 1, 1, 1, 1, 14, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (27, 1, 1, 1, 1, 1, 1, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (28, 1, 1, 1, 1, 1, 1, 4, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (29, 1, 1, 1, 1, 1, 1, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (30, 1, 1, 1, 1, 1, 1, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (31, 1, 1, 1, 1, 1, 1, 20, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (41, 1, 1, 1, 1, 0, 2, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (42, 1, 0, 0, 0, 0, 2, 18, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (43, 1, 1, 1, 1, 0, 2, 19, NULL, NULL);

-- ----------------------------
-- Table structure for cms_settings
-- ----------------------------
DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE `cms_settings`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `content_input_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dataenum` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `helper` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `group_setting` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_settings
-- ----------------------------
INSERT INTO `cms_settings` VALUES (1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2022-07-05 19:50:58', NULL, 'Estilo de página de registro', 'Login Background Color');
INSERT INTO `cms_settings` VALUES (2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2022-07-05 19:50:58', NULL, 'Estilo de página de registro', 'Login Font Color');
INSERT INTO `cms_settings` VALUES (3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2022-07-05 19:50:58', NULL, 'Estilo de página de registro', 'Login Background Image');
INSERT INTO `cms_settings` VALUES (4, 'email_sender', 'support@admin.com', 'text', NULL, NULL, '2022-07-05 19:50:58', NULL, 'Ajustes de Correo', 'Email Sender');
INSERT INTO `cms_settings` VALUES (5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2022-07-05 19:50:58', NULL, 'Ajustes de Correo', 'Mail Driver');
INSERT INTO `cms_settings` VALUES (6, 'smtp_host', '', 'text', NULL, NULL, '2022-07-05 19:50:58', NULL, 'Ajustes de Correo', 'SMTP Host');
INSERT INTO `cms_settings` VALUES (7, 'smtp_port', '25', 'text', NULL, 'default 25', '2022-07-05 19:50:58', NULL, 'Ajustes de Correo', 'SMTP Port');
INSERT INTO `cms_settings` VALUES (8, 'smtp_username', '', 'text', NULL, NULL, '2022-07-05 19:50:58', NULL, 'Ajustes de Correo', 'SMTP Username');
INSERT INTO `cms_settings` VALUES (9, 'smtp_password', '', 'text', NULL, NULL, '2022-07-05 19:50:58', NULL, 'Ajustes de Correo', 'SMTP Password');
INSERT INTO `cms_settings` VALUES (10, 'appname', 'FactApp', 'text', NULL, NULL, '2022-07-05 19:50:58', NULL, 'Ajustes de Aplicaciones', 'Application Name');
INSERT INTO `cms_settings` VALUES (11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2022-07-05 19:50:58', NULL, 'Ajustes de Aplicaciones', 'Default Paper Print Size');
INSERT INTO `cms_settings` VALUES (12, 'logo', '', 'upload_image', NULL, NULL, '2022-07-05 19:50:58', NULL, 'Ajustes de Aplicaciones', 'Logo');
INSERT INTO `cms_settings` VALUES (13, 'favicon', '', 'upload_image', NULL, NULL, '2022-07-05 19:50:58', NULL, 'Ajustes de Aplicaciones', 'Favicon');
INSERT INTO `cms_settings` VALUES (14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2022-07-05 19:50:58', NULL, 'Ajustes de Aplicaciones', 'API Debug Mode');
INSERT INTO `cms_settings` VALUES (15, 'google_api_key', '', 'text', NULL, NULL, '2022-07-05 19:50:58', NULL, 'Ajustes de Aplicaciones', 'Google API Key');
INSERT INTO `cms_settings` VALUES (16, 'google_fcm_key', '', 'text', NULL, NULL, '2022-07-05 19:50:58', NULL, 'Ajustes de Aplicaciones', 'Google FCM Key');

-- ----------------------------
-- Table structure for cms_statistic_components
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistic_components`;
CREATE TABLE `cms_statistic_components`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) NULL DEFAULT NULL,
  `componentID` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `component_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `area_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sorting` int(11) NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_statistic_components
-- ----------------------------

-- ----------------------------
-- Table structure for cms_statistics
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistics`;
CREATE TABLE `cms_statistics`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for cms_users
-- ----------------------------
DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE `cms_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_users
-- ----------------------------
INSERT INTO `cms_users` VALUES (1, 'Super Admin', NULL, 'admin@admin.com', '$2y$10$6ZQ5qL8Cj7n149Y8ftwpHu88tSvL2isK6bGcxj1MxC1QQUlnOzMri', 1, '2022-07-05 19:50:58', NULL, 'Active');
INSERT INTO `cms_users` VALUES (2, 'Vendedor', 'uploads/1/2022-07/avatar.jpg', 'vendedor@admin.com', '$2y$10$RvBr2Ux5W4VpHFI2lrWET.c8NlTxixCIaLf13ko/D9RrDApBZAcbO', 2, '2022-07-04 21:21:46', NULL, NULL);

-- ----------------------------
-- Table structure for consumidor_final
-- ----------------------------
DROP TABLE IF EXISTS `consumidor_final`;
CREATE TABLE `consumidor_final`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identificacion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nombres` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `correo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telefono` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `direccion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tipo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of consumidor_final
-- ----------------------------
INSERT INTO `consumidor_final` VALUES (1, '999999999', 'CONSUMIDOR FINAL', 'correo@correo.com', '0999999999', 'DIRECCION', 'Ruc', NULL, NULL);

-- ----------------------------
-- Table structure for empresas
-- ----------------------------
DROP TABLE IF EXISTS `empresas`;
CREATE TABLE `empresas`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruc` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefonos` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of empresas
-- ----------------------------
INSERT INTO `empresas` VALUES (1, 'Nombre Empresa.', '1122334455001', '09999999', 'email@email.com', 'Direccion de la empresa', NULL, '2022-07-18 23:09:01');

-- ----------------------------
-- Table structure for estados
-- ----------------------------
DROP TABLE IF EXISTS `estados`;
CREATE TABLE `estados`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of estados
-- ----------------------------
INSERT INTO `estados` VALUES (1, 'Si', NULL, NULL);
INSERT INTO `estados` VALUES (2, 'No', NULL, NULL);

-- ----------------------------
-- Table structure for factura_detalles
-- ----------------------------
DROP TABLE IF EXISTS `factura_detalles`;
CREATE TABLE `factura_detalles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `factura_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `descripcion` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `fecha` datetime(0) NOT NULL DEFAULT '2022-07-16 13:56:13',
  `stock` double NOT NULL DEFAULT 0,
  `tasa_iva_id` int(10) NOT NULL DEFAULT 1,
  `precio_unitario` double NULL DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` double NULL DEFAULT NULL,
  `iva` double NULL DEFAULT NULL,
  `total` double NULL DEFAULT NULL,
  `created_by_id` int(11) NULL DEFAULT NULL,
  `updated_by_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `facturas_detalles_producto_id_foreign`(`producto_id`) USING BTREE,
  INDEX `facturas_detalles_usuario_id_foreign`(`usuario_id`) USING BTREE,
  INDEX `facturas_detalles_comprobante_id_foreign`(`factura_id`) USING BTREE,
  INDEX `facturas_detalles_tasa_iva_id_foreign`(`tasa_iva_id`) USING BTREE,
  INDEX `facturas_detalles_fecha_index`(`fecha`) USING BTREE,
  CONSTRAINT `fk_factura_id` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tasa_iva_id` FOREIGN KEY (`tasa_iva_id`) REFERENCES `tasas_iva` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of factura_detalles
-- ----------------------------
INSERT INTO `factura_detalles` VALUES (1, 3, 1, 28, NULL, '2022-07-26 00:00:00', 0, 1, 22, 1, 22, 2.64, 24.64, NULL, NULL, '2022-07-26 00:19:49', '2022-07-26 00:19:49');
INSERT INTO `factura_detalles` VALUES (2, 5, 1, 28, NULL, '2022-07-26 00:00:00', 0, 1, 56, 1, 56, 6.72, 62.72, NULL, NULL, '2022-07-26 00:19:49', '2022-07-26 00:19:49');

-- ----------------------------
-- Table structure for facturas
-- ----------------------------
DROP TABLE IF EXISTS `facturas`;
CREATE TABLE `facturas`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cliente_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `consumidor_final_id` int(11) NULL DEFAULT NULL,
  `empresa_id` bigint(20) UNSIGNED NOT NULL,
  `secuencial` int(11) NOT NULL,
  `forma_pago_id` bigint(20) UNSIGNED NOT NULL,
  `fecha_emision` date NOT NULL,
  `total_sin_impuestos` double(8, 2) NOT NULL,
  `subtotal_12` double(8, 2) NOT NULL,
  `subtotal_0` double(8, 2) NOT NULL,
  `subtotal_no_iva` double(8, 2) NOT NULL,
  `subtotal_extento_iva` double(8, 2) NOT NULL,
  `total_ice` double(8, 2) NOT NULL,
  `total_iva` double(8, 2) NOT NULL,
  `total_descuento` double(8, 2) NOT NULL,
  `total_propina` double(8, 2) NOT NULL,
  `total_valor` double(8, 2) NOT NULL,
  `observacion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_by_id` int(10) UNSIGNED NOT NULL,
  `updated_by_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `facturas_cliente_id_foreign`(`cliente_id`) USING BTREE,
  INDEX `facturas_empresa_id_foreign`(`empresa_id`) USING BTREE,
  INDEX `facturas_forma_pago_id_foreign`(`forma_pago_id`) USING BTREE,
  INDEX `facturas_consumidor_final`(`consumidor_final_id`) USING BTREE,
  CONSTRAINT `facturas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `facturas_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `facturas_forma_pago_id_foreign` FOREIGN KEY (`forma_pago_id`) REFERENCES `formas_pagos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `facturas_consumidor_final` FOREIGN KEY (`consumidor_final_id`) REFERENCES `consumidor_final` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of facturas
-- ----------------------------
INSERT INTO `facturas` VALUES (28, 202, NULL, 1, 1, 1, '2022-07-26', 0.00, 78.00, 0.00, 0.00, 0.00, 0.00, 9.36, 0.00, 0.00, 87.36, NULL, 1, 1, '2022-07-26 00:19:49', '2022-07-26 00:19:49');

-- ----------------------------
-- Table structure for factureros
-- ----------------------------
DROP TABLE IF EXISTS `factureros`;
CREATE TABLE `factureros`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fecha_inicio` date NOT NULL,
  `fecha_caducidad` date NOT NULL,
  `inicio_facturero` int(11) NOT NULL,
  `fin_facturero` int(11) NOT NULL,
  `autorizacion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `activo_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `factureros_activo_id_foreign`(`activo_id`) USING BTREE,
  CONSTRAINT `factureros_activo_id_foreign` FOREIGN KEY (`activo_id`) REFERENCES `estados` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of factureros
-- ----------------------------
INSERT INTO `factureros` VALUES (1, '2022-01-01', '2022-12-01', 2, 999, '1000001', 1, '2022-07-05 19:33:45', '2022-07-26 00:19:49');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for formas_pagos
-- ----------------------------
DROP TABLE IF EXISTS `formas_pagos`;
CREATE TABLE `formas_pagos`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `codigo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `forma_pago` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `observaciones` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `activo_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `formas_pagos_activo_id_foreign`(`activo_id`) USING BTREE,
  CONSTRAINT `formas_pagos_activo_id_foreign` FOREIGN KEY (`activo_id`) REFERENCES `estados` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of formas_pagos
-- ----------------------------
INSERT INTO `formas_pagos` VALUES (1, '01', 'EFECTIVO', '', 1, '2022-07-05 19:33:45', NULL);
INSERT INTO `formas_pagos` VALUES (2, '02', 'CHEQUE PROPIO', 'cheque', 1, '2022-07-05 19:33:45', '2022-07-21 21:11:47');
INSERT INTO `formas_pagos` VALUES (3, '03', 'CHEQUE CERTIFICADO', '', 2, '2022-07-05 19:33:45', NULL);
INSERT INTO `formas_pagos` VALUES (4, '04', 'CHEQUE DE GERENCIA', '', 2, '2022-07-05 19:33:45', NULL);
INSERT INTO `formas_pagos` VALUES (5, '05', 'CHEQUE DEL EXTERIOR', '', 2, '2022-07-05 19:33:45', NULL);
INSERT INTO `formas_pagos` VALUES (6, '06', 'DÉBITO DE CUENTA', '', 2, '2022-07-05 19:33:45', NULL);
INSERT INTO `formas_pagos` VALUES (7, '07', 'TRANSFERENCIA PROPIO BANCO', 'transfer', 1, '2022-07-05 19:33:45', '2022-07-21 21:12:13');
INSERT INTO `formas_pagos` VALUES (8, '08', 'TRANSFERENCIA OTRO BANCO NACIONAL', '', 2, '2022-07-05 19:33:45', NULL);
INSERT INTO `formas_pagos` VALUES (9, '09', 'TRANSFERENCIA  BANCO EXTERIOR', '', 2, '2022-07-05 19:33:45', NULL);
INSERT INTO `formas_pagos` VALUES (10, '10', 'TARJETA DE CRÉDITO NACIONAL', '', 2, '2022-07-05 19:33:45', NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 334 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (297, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (298, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (299, '2016_08_07_145904_add_table_cms_apicustom', 1);
INSERT INTO `migrations` VALUES (300, '2016_08_07_150834_add_table_cms_dashboard', 1);
INSERT INTO `migrations` VALUES (301, '2016_08_07_151210_add_table_cms_logs', 1);
INSERT INTO `migrations` VALUES (302, '2016_08_07_151211_add_details_cms_logs', 1);
INSERT INTO `migrations` VALUES (303, '2016_08_07_152014_add_table_cms_privileges', 1);
INSERT INTO `migrations` VALUES (304, '2016_08_07_152214_add_table_cms_privileges_roles', 1);
INSERT INTO `migrations` VALUES (305, '2016_08_07_152320_add_table_cms_settings', 1);
INSERT INTO `migrations` VALUES (306, '2016_08_07_152421_add_table_cms_users', 1);
INSERT INTO `migrations` VALUES (307, '2016_08_07_154624_add_table_cms_menus_privileges', 1);
INSERT INTO `migrations` VALUES (308, '2016_08_07_154624_add_table_cms_moduls', 1);
INSERT INTO `migrations` VALUES (309, '2016_08_17_225409_add_status_cms_users', 1);
INSERT INTO `migrations` VALUES (310, '2016_08_20_125418_add_table_cms_notifications', 1);
INSERT INTO `migrations` VALUES (311, '2016_09_04_033706_add_table_cms_email_queues', 1);
INSERT INTO `migrations` VALUES (312, '2016_09_16_035347_add_group_setting', 1);
INSERT INTO `migrations` VALUES (313, '2016_09_16_045425_add_label_setting', 1);
INSERT INTO `migrations` VALUES (314, '2016_09_17_104728_create_nullable_cms_apicustom', 1);
INSERT INTO `migrations` VALUES (315, '2016_10_01_141740_add_method_type_apicustom', 1);
INSERT INTO `migrations` VALUES (316, '2016_10_01_141846_add_parameters_apicustom', 1);
INSERT INTO `migrations` VALUES (317, '2016_10_01_141934_add_responses_apicustom', 1);
INSERT INTO `migrations` VALUES (318, '2016_10_01_144826_add_table_apikey', 1);
INSERT INTO `migrations` VALUES (319, '2016_11_14_141657_create_cms_menus', 1);
INSERT INTO `migrations` VALUES (320, '2016_11_15_132350_create_cms_email_templates', 1);
INSERT INTO `migrations` VALUES (321, '2016_11_15_190410_create_cms_statistics', 1);
INSERT INTO `migrations` VALUES (322, '2016_11_17_102740_create_cms_statistic_components', 1);
INSERT INTO `migrations` VALUES (323, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);
INSERT INTO `migrations` VALUES (324, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (325, '2022_06_13_191545_create_empresas_table', 1);
INSERT INTO `migrations` VALUES (326, '2022_06_14_183453_create_estados_table', 1);
INSERT INTO `migrations` VALUES (327, '2022_06_15_215038_create_categorias_table', 1);
INSERT INTO `migrations` VALUES (328, '2022_06_15_215039_create_productos_table', 1);
INSERT INTO `migrations` VALUES (329, '2022_06_15_220324_create_clientes_table', 1);
INSERT INTO `migrations` VALUES (330, '2022_07_03_112004_create_parametros_ivas_table', 1);
INSERT INTO `migrations` VALUES (331, '2022_07_03_112948_create_formas_pagos_table', 1);
INSERT INTO `migrations` VALUES (332, '2022_07_03_150846_create_factureros_table', 1);
INSERT INTO `migrations` VALUES (333, '2022_07_04_191025_create_facturas_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for productos
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `codigo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `valor` double(8, 2) NOT NULL,
  `categoria_id` bigint(20) UNSIGNED NOT NULL,
  `tasa_iva_id` int(10) NOT NULL,
  `activo_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `productos_categoria_id_foreign`(`categoria_id`) USING BTREE,
  INDEX `productos_activo_id_foreign`(`activo_id`) USING BTREE,
  INDEX `productos_tasa_iva_id_foreign`(`tasa_iva_id`) USING BTREE,
  CONSTRAINT `productos_activo_id_foreign` FOREIGN KEY (`activo_id`) REFERENCES `estados` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `productos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `productos_tasa_iva_id_foreign` FOREIGN KEY (`tasa_iva_id`) REFERENCES `tasas_iva` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productos
-- ----------------------------
INSERT INTO `productos` VALUES (1, '00000001', 'Producto de prueba', 20, 20.00, 15, 1, 1, '2022-07-04 21:09:05', NULL);
INSERT INTO `productos` VALUES (2, '00000002', 'Producto de prueba 2', 200, 20.00, 5, 1, 1, '2022-07-04 21:01:49', '2022-07-21 22:00:09');
INSERT INTO `productos` VALUES (3, '00000003', 'Producto de prueba3.', 432, 22.00, 16, 1, 1, '2022-07-05 20:25:33', '2022-07-18 20:13:44');
INSERT INTO `productos` VALUES (4, '00000004', 'Producto de prueba 4', 300, 50.00, 8, 1, 1, '2022-07-25 18:50:29', NULL);
INSERT INTO `productos` VALUES (5, '00000005', 'Producto de prueba 5', 320, 56.00, 8, 1, 1, '2022-07-25 18:50:59', NULL);
INSERT INTO `productos` VALUES (6, '00000006', 'Producto de prueba 6', 110, 23.00, 8, 1, 1, '2022-07-25 18:51:19', NULL);
INSERT INTO `productos` VALUES (7, '00000007', 'Producto de prueba 7', 230, 60.00, 3, 1, 1, '2022-07-25 18:51:48', NULL);

-- ----------------------------
-- Table structure for tasas_iva
-- ----------------------------
DROP TABLE IF EXISTS `tasas_iva`;
CREATE TABLE `tasas_iva`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tasa` double NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tasas_iva
-- ----------------------------
INSERT INTO `tasas_iva` VALUES (1, 'IVA DOCE', 12, NULL, NULL);
INSERT INTO `tasas_iva` VALUES (2, 'IVA CERO', 0, NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;

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

 Date: 11/07/2022 19:58:47
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
INSERT INTO `categorias` VALUES (21, 'Categoria uk', NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES (1, '1711121314001', 'Cliente de prueba', 'cliente@prueba.com', '0961234567', 'direccion', 'Ruc', '2022-07-05 21:19:33', NULL);
INSERT INTO `clientes` VALUES (2, '17111', 'Cliente de prueba', 'cliente@prueba.com', '0961234567', 'dsa', 'Ruc', '2022-07-05 21:44:28', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_menus
-- ----------------------------
INSERT INTO `cms_menus` VALUES (1, 'Categorias', 'Route', 'AdminCategoriasControllerGetIndex', NULL, 'fa fa-glass', 8, 1, 0, 1, 1, '2022-07-03 19:09:39', NULL);
INSERT INTO `cms_menus` VALUES (2, 'Productos', 'Route', 'AdminProductosControllerGetIndex', NULL, 'fa fa-glass', 8, 1, 0, 1, 2, '2022-07-03 19:10:04', NULL);
INSERT INTO `cms_menus` VALUES (3, 'Facturero', 'Route', 'AdminFacturerosControllerGetIndex', NULL, 'fa fa-glass', 7, 1, 0, 1, 2, '2022-07-03 19:25:05', NULL);
INSERT INTO `cms_menus` VALUES (4, 'Formas de pago', 'Route', 'AdminFormasPagosControllerGetIndex', NULL, 'fa fa-glass', 7, 1, 0, 1, 4, '2022-07-03 19:26:53', NULL);
INSERT INTO `cms_menus` VALUES (5, 'Parámetro Iva', 'Route', 'AdminParametrosIvasControllerGetIndex', NULL, 'fa fa-glass', 7, 1, 0, 1, 3, '2022-07-03 19:29:41', NULL);
INSERT INTO `cms_menus` VALUES (6, 'Clientes', 'Route', 'AdminClientesControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 3, '2022-07-03 19:32:11', '2022-07-04 21:23:11');
INSERT INTO `cms_menus` VALUES (7, 'Parámetros', 'Module', 'factureros', 'normal', 'fa fa-th', 0, 1, 0, 1, 1, '2022-07-03 19:36:47', NULL);
INSERT INTO `cms_menus` VALUES (8, 'Inventario', 'Module', 'categorias', 'normal', 'fa fa-th-list', 0, 1, 0, 1, 2, '2022-07-03 19:38:00', NULL);
INSERT INTO `cms_menus` VALUES (9, 'Empresa', 'Route', 'AdminEmpresasControllerGetIndex', NULL, 'fa fa-glass', 7, 1, 0, 1, 1, '2022-07-04 20:30:19', NULL);
INSERT INTO `cms_menus` VALUES (10, 'Factura de venta', 'Route', 'AdminFacturasControllerGetIndex', 'normal', 'fa fa-star', 0, 1, 0, 1, 4, '2022-07-04 20:33:01', '2022-07-04 21:23:44');

-- ----------------------------
-- Table structure for cms_menus_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus_privileges`;
CREATE TABLE `cms_menus_privileges`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `cms_menus_privileges` VALUES (9, 9, 1);
INSERT INTO `cms_menus_privileges` VALUES (11, 6, 1);
INSERT INTO `cms_menus_privileges` VALUES (12, 6, 2);
INSERT INTO `cms_menus_privileges` VALUES (13, 10, 1);
INSERT INTO `cms_menus_privileges` VALUES (14, 10, 2);

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
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `cms_moduls` VALUES (16, 'Parámetro Iva', 'fa fa-glass', 'parametros_ivas', 'parametros_ivas', 'AdminParametrosIvasController', 0, 0, '2022-07-03 19:29:41', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (17, 'Clientes', 'fa fa-glass', 'clientes', 'clientes', 'AdminClientesController', 0, 0, '2022-07-03 19:32:11', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (18, 'Empresa', 'fa fa-glass', 'empresas', 'empresas', 'AdminEmpresasController', 0, 0, '2022-07-04 20:30:19', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (19, 'Factura de venta', 'fa fa-star', 'facturas', 'facturas', 'AdminFacturasController', 0, 0, '2022-07-04 20:33:01', NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_privileges_roles
-- ----------------------------
INSERT INTO `cms_privileges_roles` VALUES (20, 1, 1, 1, 1, 0, 2, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (21, 1, 1, 1, 1, 0, 2, 19, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (22, 1, 1, 1, 1, 1, 1, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (23, 1, 1, 1, 1, 1, 1, 17, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (24, 1, 1, 1, 1, 1, 1, 18, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (25, 1, 1, 1, 1, 1, 1, 19, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (26, 1, 1, 1, 1, 1, 1, 14, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (27, 1, 1, 1, 1, 1, 1, 15, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (28, 1, 1, 1, 1, 1, 1, 4, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (29, 1, 1, 1, 1, 1, 1, 16, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (30, 1, 1, 1, 1, 1, 1, 13, NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `empresas` VALUES (1, 'Nombre Empresa', '1122334455001', '+593 2222 222', 'email@email.com', 'Direccion de la empresa', NULL, NULL);

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
-- Table structure for facturas
-- ----------------------------
DROP TABLE IF EXISTS `facturas`;
CREATE TABLE `facturas`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cliente_id` bigint(20) UNSIGNED NOT NULL,
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
  `observacion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by_id` int(10) UNSIGNED NOT NULL,
  `updated_by_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `facturas_cliente_id_foreign`(`cliente_id`) USING BTREE,
  INDEX `facturas_empresa_id_foreign`(`empresa_id`) USING BTREE,
  INDEX `facturas_forma_pago_id_foreign`(`forma_pago_id`) USING BTREE,
  CONSTRAINT `facturas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `facturas_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `facturas_forma_pago_id_foreign` FOREIGN KEY (`forma_pago_id`) REFERENCES `formas_pagos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of facturas
-- ----------------------------

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
INSERT INTO `factureros` VALUES (1, '2022-01-01', '2022-12-01', 1, 999, '1000001', 1, '2022-07-05 19:33:45', NULL);

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
INSERT INTO `formas_pagos` VALUES (2, '02', 'CHEQUE PROPIO', '', 2, '2022-07-05 19:33:45', NULL);
INSERT INTO `formas_pagos` VALUES (3, '03', 'CHEQUE CERTIFICADO', '', 2, '2022-07-05 19:33:45', NULL);
INSERT INTO `formas_pagos` VALUES (4, '04', 'CHEQUE DE GERENCIA', '', 2, '2022-07-05 19:33:45', NULL);
INSERT INTO `formas_pagos` VALUES (5, '05', 'CHEQUE DEL EXTERIOR', '', 2, '2022-07-05 19:33:45', NULL);
INSERT INTO `formas_pagos` VALUES (6, '06', 'DÉBITO DE CUENTA', '', 2, '2022-07-05 19:33:45', NULL);
INSERT INTO `formas_pagos` VALUES (7, '07', 'TRANSFERENCIA PROPIO BANCO', '', 2, '2022-07-05 19:33:45', NULL);
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
-- Table structure for parametros_ivas
-- ----------------------------
DROP TABLE IF EXISTS `parametros_ivas`;
CREATE TABLE `parametros_ivas`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `porcentaje` smallint(6) NOT NULL,
  `observaciones` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `principal_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parametros_ivas_principal_id_foreign`(`principal_id`) USING BTREE,
  CONSTRAINT `parametros_ivas_principal_id_foreign` FOREIGN KEY (`principal_id`) REFERENCES `estados` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of parametros_ivas
-- ----------------------------
INSERT INTO `parametros_ivas` VALUES (1, 'Cero %', 0, 'Ninguna', 2, '2022-07-05 19:33:45', NULL);
INSERT INTO `parametros_ivas` VALUES (2, 'Doce %', 12, 'Ninguna', 1, '2022-07-05 19:33:45', NULL);

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
  `activo_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `productos_categoria_id_foreign`(`categoria_id`) USING BTREE,
  INDEX `productos_activo_id_foreign`(`activo_id`) USING BTREE,
  CONSTRAINT `productos_activo_id_foreign` FOREIGN KEY (`activo_id`) REFERENCES `estados` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `productos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productos
-- ----------------------------
INSERT INTO `productos` VALUES (1, '00000001', 'Producto de prueba', 20, 20.00, 15, 1, '2022-07-04 21:09:05', NULL);
INSERT INTO `productos` VALUES (2, '00000002', 'Producto de prueba 2', 200, 20.00, 5, 1, '2022-07-04 21:01:49', NULL);
INSERT INTO `productos` VALUES (3, '00000003', 'Producto de prueba3', 432, 22.00, 16, 1, '2022-07-05 20:25:33', NULL);

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

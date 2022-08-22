-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-08-2022 a las 14:50:28
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `homestead`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cab_inbound_orders`
--

CREATE TABLE `cab_inbound_orders` (
  `id_ciord` int(10) UNSIGNED NOT NULL,
  `ciord_date` date DEFAULT NULL,
  `ciord_export_date` date DEFAULT NULL,
  `ciord_guia_aerea` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ciord_orden_compra` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_warehouse` int(10) UNSIGNED DEFAULT NULL,
  `id_status` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cab_inbound_orders`
--

INSERT INTO `cab_inbound_orders` (`id_ciord`, `ciord_date`, `ciord_export_date`, `ciord_guia_aerea`, `ciord_orden_compra`, `id_warehouse`, `id_status`, `created_at`, `updated_at`) VALUES
(1, '2019-04-20', '2019-04-20', '946-60660003', '224', 1, 3, '2019-05-20 17:13:46', '2019-07-03 21:38:57'),
(2, '2019-05-09', '2019-05-10', '946-60660040', '225', 1, 3, '2019-05-20 17:21:52', '2019-05-20 17:21:52'),
(3, '2019-05-16', '2019-05-16', '946-60660051', '226', 1, 3, '2019-05-16 16:08:37', '2019-05-21 00:52:05'),
(4, '2019-05-20', '2019-05-21', '946-60660084', '227', 1, 3, '2019-05-20 18:56:46', '2019-05-27 04:43:13'),
(5, '2019-05-28', '2019-05-28', '946-60663293', '228', 1, 3, '2019-05-28 16:23:46', '2019-05-31 17:15:20'),
(6, '2019-06-13', '2019-06-13', '946-60660095', '229', 1, 3, '2019-06-13 22:59:53', '2019-06-18 19:27:09'),
(7, '2019-06-27', '2019-06-28', '946-60663374', '230', 1, 3, '2019-06-27 16:38:21', '2019-07-04 21:43:15'),
(8, '2019-07-12', '2019-07-15', '946-60663304', '231', 1, 3, '2019-07-17 12:22:09', '2019-07-19 06:28:22'),
(9, '2019-07-25', '2019-07-25', '946-60665426', '233', 1, 3, '2019-07-25 15:36:07', '2019-07-31 18:35:54'),
(10, '2019-08-02', '2019-08-02', '946-60665430', '234', 1, 3, '2019-08-02 22:11:46', '2019-08-08 15:29:59'),
(11, '2019-08-12', '2019-08-12', '946-60665485', '235', 1, 3, '2019-08-12 18:27:23', '2019-08-15 20:43:37'),
(12, '2019-08-19', '2019-08-22', '946-60665474', '236', 1, 3, '2019-08-19 22:50:49', '2019-08-27 17:56:44'),
(13, '2019-09-06', '2019-09-06', '946-60665511', '237', 1, 3, '2019-09-06 16:16:43', '2019-10-07 21:43:23'),
(14, '2019-09-19', '2019-09-23', '946-60665522', '240', 1, 3, '2019-11-07 19:56:51', '2019-11-07 19:56:51'),
(15, '2019-10-04', '2019-10-07', '946-60665555', '252', 1, 3, '2019-10-04 16:25:18', '2019-10-11 20:53:27'),
(16, '2019-10-29', '2019-10-29', '946-60665614', '253', 1, 3, '2019-10-29 16:58:31', '2019-11-04 08:05:57'),
(17, '2019-11-14', '2019-11-18', '946-60667891', '254', 1, 3, '2019-11-14 22:17:45', '2019-11-26 22:33:59'),
(18, '2019-11-29', '2019-11-29', '946-60667913', '255', 1, 3, '2019-11-29 20:03:04', '2019-12-17 20:20:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cab_sale_inventory`
--

CREATE TABLE `cab_sale_inventory` (
  `id_csale_inventory` int(10) UNSIGNED NOT NULL,
  `csaleinv_date` date NOT NULL,
  `csaleinv_invoice` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `csaleinv_or_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_users` int(10) UNSIGNED NOT NULL,
  `csaleinv_tran_cust` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `csaleinv_transport` int(11) NOT NULL,
  `csaleinv_driver_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `csaleinv_driver_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `csaleinv_date_pick_up` date DEFAULT NULL,
  `csaleinv_date_time` time DEFAULT NULL,
  `csaleinv_date_delivery` date DEFAULT NULL,
  `csaleinv_appointment_selet` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `csaleinv_appointment` time DEFAULT NULL,
  `id_delivery` int(11) DEFAULT NULL,
  `csaleinv_deli_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `csaleinv_deli_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `csaleinv_deli_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `csaleinv_deli_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `csaleinv_chep_pallet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `csaleinv_shrink_wrap` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `csaleinv_palletization` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cab_sale_inventory`
--

INSERT INTO `cab_sale_inventory` (`id_csale_inventory`, `csaleinv_date`, `csaleinv_invoice`, `csaleinv_or_num`, `id_customer`, `id_users`, `csaleinv_tran_cust`, `csaleinv_transport`, `csaleinv_driver_name`, `csaleinv_driver_phone`, `csaleinv_date_pick_up`, `csaleinv_date_time`, `csaleinv_date_delivery`, `csaleinv_appointment_selet`, `csaleinv_appointment`, `id_delivery`, `csaleinv_deli_name`, `csaleinv_deli_phone`, `csaleinv_deli_email`, `csaleinv_deli_address`, `csaleinv_chep_pallet`, `csaleinv_shrink_wrap`, `csaleinv_palletization`, `created_at`, `updated_at`) VALUES
(1, '2019-04-25', '-', '1123', 1, 4, 'cliente', 1, 'Andres Duhau', NULL, '2019-04-25', '13:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, 'on', 'on', 'on', '2019-05-09 18:28:17', '2019-05-09 18:28:17'),
(2, '2019-04-25', '-', '1124', 1, 4, 'cliente', 1, NULL, NULL, '2019-04-25', '11:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-09 18:37:43', '2019-05-09 18:37:43'),
(3, '2019-04-25', '-', '1125', 5, 4, 'cliente', 5, NULL, NULL, '2019-04-25', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-09 18:38:48', '2019-05-09 18:38:48'),
(4, '2019-04-25', '-', '1126', 2, 4, 'cliente', 2, NULL, NULL, '2019-04-25', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-13 12:10:51', '2019-05-13 12:10:51'),
(5, '2019-04-26', '800670', '1127', 3, 4, 'cliente', 3, NULL, NULL, '2019-05-09', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-09 18:50:30', '2019-05-09 18:50:30'),
(6, '2019-04-26', '-', '1128', 2, 4, 'cliente', 2, NULL, NULL, '2019-04-26', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-09 18:40:22', '2019-05-09 18:40:22'),
(7, '2019-04-28', '-', '1129', 1, 4, 'cliente', 1, NULL, NULL, '2019-04-28', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-09 18:41:08', '2019-05-09 18:41:08'),
(8, '2019-05-07', '-', '1131', 1, 4, 'cliente', 1, NULL, NULL, '2019-05-07', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-09 18:42:10', '2019-05-09 18:42:10'),
(9, '2019-05-06', '5661', '1132', 3, 4, 'cliente', 3, NULL, NULL, '2019-05-06', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-09 18:42:53', '2019-05-09 18:42:53'),
(10, '2019-05-06', '5660', '1133', 3, 4, 'cliente', 3, NULL, NULL, '2019-05-06', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-09 18:45:40', '2019-05-09 18:45:40'),
(11, '2019-05-06', '5663', '1134', 3, 4, 'cliente', 3, NULL, NULL, '2019-05-06', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-09 18:46:14', '2019-05-09 18:46:14'),
(12, '2019-05-07', '-', '1135', 1, 4, 'cliente', 1, NULL, NULL, '2019-05-07', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-09 18:46:52', '2019-05-09 18:46:52'),
(13, '2019-05-09', '5692', '1136', 3, 4, 'cliente', 3, NULL, NULL, '2019-05-09', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-09 21:17:29', '2019-05-09 21:17:29'),
(14, '2019-04-29', '5629', '1130', 3, 4, 'cliente', 3, NULL, NULL, '2019-04-29', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-09 18:48:00', '2019-05-09 18:48:00'),
(17, '2019-05-13', '5704', '1137', 3, 4, 'cliente', 3, NULL, NULL, '2019-05-13', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-13 17:57:28', '2019-05-13 17:57:28'),
(18, '2019-05-13', '-', '1138', 9, 4, NULL, 2, 'Debbie Shlesinger', '+(01)(305) 409-2088', '2019-05-13', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-14 19:49:23', '2019-05-14 19:49:23'),
(19, '2019-05-14', '5708', '1139', 3, 4, 'cliente', 3, NULL, NULL, '2019-05-14', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-14 19:50:00', '2019-05-18 01:09:08'),
(20, '2019-05-17', '5737', '1141', 3, 4, 'cliente', 3, NULL, NULL, '2019-05-17', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-17 17:59:53', '2019-05-17 17:59:53'),
(22, '2019-05-20', 'PO 5743', '1143', 3, 4, 'cliente', 3, NULL, NULL, '2019-05-20', '16:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-20 21:58:25', '2019-05-20 21:58:25'),
(23, '2019-05-20', 'PO 108036', '1142', 7, 4, NULL, 1, NULL, NULL, '2019-05-21', '09:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', 'on', '2019-05-21 01:38:19', '2019-05-21 01:38:19'),
(24, '2019-05-21', '-', '1144', 1, 4, NULL, 2, 'Alberto Duhau', '+(01)(954) 899-2206', '2019-05-22', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-21 23:50:20', '2019-05-21 23:50:20'),
(25, '2019-05-22', '-', '1145', 1, 4, 'cliente', 1, NULL, NULL, '2019-05-22', '20:45:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-23 12:45:00', '2019-05-23 12:45:00'),
(26, '2019-05-27', '-', '1146', 6, 4, 'cliente', 6, NULL, NULL, '2019-05-27', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-27 04:47:53', '2019-05-27 04:47:53'),
(28, '2019-05-27', 'IDDBA', '1148', 1, 4, NULL, 3, NULL, NULL, '2019-05-28', '10:00:00', '2019-05-31', 'No', NULL, NULL, 'Orange County Convention Center', NULL, NULL, '9400 Universal Blvd. Orlando, FL 32819', NULL, 'on', 'on', '2019-05-28 07:27:57', '2019-05-28 07:27:57'),
(29, '2019-05-28', 'PO 5784', '1149', 3, 4, 'cliente', 3, NULL, NULL, '2019-05-29', '07:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-29 07:28:18', '2019-05-29 07:28:18'),
(30, '2019-05-28', '-', '1150', 2, 4, 'cliente', 2, NULL, NULL, '2019-05-29', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-29 07:30:06', '2019-05-29 07:30:06'),
(31, '2019-05-31', 'PO 108927', '1153', 7, 4, NULL, 1, NULL, NULL, '2019-05-31', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', 'on', '2019-05-31 17:18:08', '2019-05-31 17:18:08'),
(32, '2019-06-04', 'PO 5812', '1155', 3, 4, 'cliente', 3, NULL, NULL, '2019-06-05', '08:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-05 00:08:03', '2019-06-05 00:08:03'),
(35, '2019-06-13', '-', '1156', 10, 4, 'cliente', 10, NULL, NULL, '2019-06-13', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-18 19:24:56', '2019-06-18 19:24:56'),
(36, '2019-06-18', 'PO D10_109455', '1159', 7, 4, NULL, 1, NULL, NULL, '2019-06-19', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', 'on', '2019-06-18 19:30:03', '2019-06-18 19:30:03'),
(37, '2019-06-18', '-', '1161', 11, 4, 'cliente', 11, NULL, NULL, '2019-06-19', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-18 19:57:20', '2019-06-18 19:57:20'),
(38, '2019-06-19', '-', '1160', 1, 4, 'cliente', 1, NULL, NULL, '2019-06-19', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-18 20:11:43', '2019-06-18 20:11:43'),
(39, '2019-06-18', 'PO 5880', '1162', 3, 4, 'cliente', 3, NULL, NULL, '2019-06-19', '07:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-19 02:51:06', '2019-06-19 02:51:06'),
(46, '2019-06-25', 'PO 5923', '1164', 3, 4, 'cliente', 3, NULL, NULL, '2019-06-26', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-26 15:00:27', '2019-06-26 15:00:27'),
(47, '2019-06-28', 'TBD', '1166', 3, 4, 'cliente', 3, NULL, NULL, '2019-06-28', '10:30:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-28 17:36:07', '2019-06-28 17:36:07'),
(48, '2019-06-28', '-', '1167', 10, 4, 'cliente', 10, NULL, NULL, '2019-07-01', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-06 11:50:22', '2019-08-06 11:50:22'),
(49, '2019-06-28', '-', '1168', 10, 4, 'cliente', 10, NULL, NULL, '2019-07-01', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-06 11:52:35', '2019-08-06 11:52:35'),
(51, '2019-07-03', '-', '1170', 10, 4, 'cliente', 10, NULL, NULL, '2019-07-03', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-06 11:53:28', '2019-08-06 11:53:28'),
(53, '2019-07-03', '-', '1158', 11, 4, 'cliente', 11, NULL, NULL, '2019-07-03', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-03 18:11:09', '2019-07-03 18:11:09'),
(54, '2019-07-03', '-', '1165', 6, 1, 'cliente', 6, NULL, NULL, '2019-07-03', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-04 22:11:46', '2019-07-04 22:11:46'),
(55, '2019-07-03', '-', '1169', 7, 1, NULL, 1, NULL, NULL, '2019-07-07', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', 'on', '2019-07-04 23:24:42', '2019-07-04 23:24:42'),
(56, '2019-07-09', '79450-01', '1172', 13, 4, 'cliente', 13, NULL, NULL, '2019-07-11', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-10 08:04:23', '2019-07-10 08:04:23'),
(57, '2019-07-15', '-', '1174', 1, 4, NULL, 0, NULL, NULL, '2019-07-15', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-06 11:59:13', '2019-08-06 11:59:13'),
(58, '2019-07-18', 'PO D10_111401', '1175', 7, 4, NULL, 1, NULL, NULL, '2019-07-19', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, 'on', 'on', NULL, '2019-07-19 06:31:25', '2019-07-19 06:31:25'),
(59, '2019-07-26', '-', '1176', 6, 4, 'cliente', 6, NULL, NULL, '2019-07-26', '15:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-26 21:46:41', '2019-07-26 21:46:41'),
(60, '2019-07-30', 'D10_111413', '1178', 7, 4, NULL, 1, NULL, NULL, '2019-07-30', '08:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', 'on', '2019-07-31 18:50:28', '2019-07-31 18:50:28'),
(61, '2019-07-30', 'D10_111631', '1180', 7, 4, NULL, 1, NULL, NULL, '2019-07-30', '08:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', 'on', '2019-07-31 18:52:43', '2019-07-31 18:52:43'),
(62, '2019-07-30', 'Samples Harris Teeter', '1182', 7, 4, NULL, 1, NULL, NULL, '2019-07-30', '08:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-31 18:54:27', '2019-07-31 18:54:27'),
(63, '2019-07-31', '-', '1183', 1, 4, 'cliente', 1, NULL, NULL, '2019-07-31', '11:30:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-31 19:00:58', '2019-07-31 19:00:58'),
(64, '2019-07-31', '-', '1184', 6, 4, 'cliente', 6, NULL, NULL, '2019-07-31', '16:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-31 19:05:56', '2019-07-31 19:05:56'),
(65, '2019-08-01', '1105', '1185', 14, 1, 'cliente', 14, NULL, NULL, '2019-08-01', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-06 12:16:01', '2019-08-06 12:16:01'),
(66, '2019-08-01', '-', '1187', 15, 4, 'cliente', 15, NULL, NULL, '2019-08-01', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-01 22:31:00', '2019-08-01 22:31:00'),
(67, '2019-07-08', '-', '1171', 1, 4, 'cliente', 1, NULL, NULL, '2019-07-08', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-05 19:51:22', '2019-08-05 19:51:22'),
(68, '2019-08-05', 'SAMPLES', '1189', 14, 4, 'cliente', 14, NULL, NULL, '2019-08-05', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-05 05:49:36', '2019-08-05 05:49:36'),
(69, '2019-08-05', 'TBD', '1190', 3, 4, 'cliente', 3, NULL, NULL, '2019-08-05', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-05 05:52:40', '2019-08-05 05:52:40'),
(70, '2019-08-06', 'TBD', '1191', 14, 4, 'cliente', 14, NULL, NULL, '2019-08-06', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-06 06:20:31', '2019-08-06 06:20:31'),
(71, '2019-08-08', '-', '1192', 11, 4, 'cliente', 11, NULL, NULL, '2019-08-08', '12:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-08 06:10:20', '2019-08-08 06:10:20'),
(72, '2019-08-08', '1106', '1193', 14, 4, 'cliente', 14, NULL, NULL, '2019-08-08', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-08 06:52:10', '2019-08-08 06:52:10'),
(73, '2019-08-06', 'D10_11632', '1186', 7, 4, NULL, 1, NULL, NULL, '2019-08-07', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', NULL, '2019-08-13 19:24:05', '2019-08-13 19:24:05'),
(74, '2019-08-13', 'Earth Fare', '1194', 1, 4, 'cliente', 1, NULL, NULL, '2019-08-13', '11:30:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-13 19:28:32', '2019-08-13 19:28:32'),
(75, '2019-08-13', 'SAMPLES', '1195', 11, 4, 'cliente', 11, NULL, NULL, '2019-08-14', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-13 19:36:24', '2019-08-13 19:36:24'),
(76, '2019-08-14', '-', '1196', 10, 4, 'cliente', 10, NULL, NULL, '2019-08-14', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-13 22:14:06', '2019-08-13 22:14:06'),
(77, '2019-08-15', 'D10_113065', '1197', 7, 4, NULL, 1, NULL, NULL, '2019-08-16', '08:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-15 20:48:17', '2019-08-15 20:48:17'),
(78, '2019-08-16', '1108', '1198', 14, 4, 'cliente', 14, NULL, NULL, '2019-08-16', '10:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-16 17:18:06', '2019-08-16 17:18:06'),
(79, '2019-08-27', '-', '1201', 14, 4, 'cliente', 14, NULL, NULL, '2019-08-27', '10:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-27 17:45:30', '2019-08-27 17:45:30'),
(80, '2019-08-27', '-', '1200', 6, 4, 'cliente', 6, NULL, NULL, '2019-08-27', '11:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-27 17:59:04', '2019-08-27 17:59:04'),
(81, '2019-08-27', 'D10_113282', '1199', 7, 4, NULL, 1, NULL, NULL, '2019-08-27', '08:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', NULL, '2019-08-27 18:08:04', '2019-08-27 18:08:04'),
(82, '2019-08-28', '-', '1202', 1, 4, 'cliente', 1, NULL, NULL, '2019-08-28', '10:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-28 16:27:52', '2019-08-28 16:27:52'),
(83, '2019-08-28', '-', '1203', 6, 4, 'cliente', 6, NULL, NULL, '2019-08-28', '11:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-28 16:31:59', '2019-08-28 16:31:59'),
(85, '2019-09-04', 'D2-414573', '1205', 7, 4, NULL, 1, NULL, NULL, '2019-09-05', '08:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', NULL, '2019-09-05 03:52:24', '2019-09-05 03:52:24'),
(86, '2019-09-10', '-', '1206', 11, 4, 'cliente', 11, NULL, NULL, '2019-09-11', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-10 22:52:09', '2019-09-10 22:52:09'),
(87, '2019-09-12', '-', '1207', 14, 4, 'cliente', 14, NULL, NULL, '2019-09-12', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-12 22:12:21', '2019-09-12 22:12:21'),
(88, '2019-09-12', '-', '1209', 10, 4, 'cliente', 10, NULL, NULL, '2019-09-13', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-12 22:47:15', '2019-09-12 22:47:15'),
(89, '2019-09-17', '-', '1210', 6, 4, 'cliente', 6, NULL, NULL, '2019-09-17', '12:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-17 15:22:38', '2019-09-17 15:22:59'),
(90, '2019-09-24', '-', '1211', 6, 4, 'cliente', 6, NULL, NULL, '2019-09-24', '10:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-24 17:31:04', '2019-09-24 17:31:04'),
(92, '2019-09-12', 'D10_114127', '1208', 7, 4, NULL, 1, NULL, NULL, '2019-09-13', '11:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', NULL, '2019-10-07 19:13:04', '2019-10-07 19:13:04'),
(93, '2019-10-01', '-', '1212', 10, 4, 'cliente', 10, NULL, NULL, '2019-10-01', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-07 22:00:38', '2019-10-07 22:00:38'),
(94, '2019-10-02', '-', '1213', 1, 4, 'cliente', 1, NULL, NULL, '2019-10-02', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-07 22:20:55', '2019-10-07 22:20:55'),
(95, '2019-10-08', '-', '1214', 6, 4, 'cliente', 6, NULL, NULL, '2019-10-08', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-07 22:24:49', '2019-10-07 22:24:49'),
(96, '2019-10-11', '-', '1216', 14, 4, 'cliente', 14, NULL, NULL, '2019-10-11', '13:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-11 20:01:54', '2019-10-11 20:01:54'),
(97, '2019-10-11', 'D10_115323', '1215', 7, 4, NULL, 1, NULL, NULL, '2019-10-14', '08:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', NULL, '2019-10-11 20:55:23', '2019-10-11 20:55:23'),
(98, '2019-10-31', '-', '1218', 16, 4, 'cliente', 16, NULL, NULL, '2019-10-31', '10:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-28 21:39:35', '2019-10-28 21:39:35'),
(99, '2019-10-28', '-', '1219', 17, 4, 'cliente', 17, NULL, NULL, '2019-10-30', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-29 05:13:00', '2019-10-29 05:13:00'),
(100, '2019-10-30', '-', '1220', 1, 4, 'cliente', 1, NULL, NULL, '2019-10-30', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-31 19:35:14', '2019-10-31 19:35:14'),
(101, '2019-10-31', '-', '1221', 18, 4, 'cliente', 18, NULL, NULL, '2019-10-31', '19:30:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-31 19:40:52', '2019-10-31 19:40:52'),
(102, '2019-10-31', '-', '1222', 19, 4, 'cliente', 19, NULL, NULL, '2019-11-01', '09:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-31 19:46:24', '2019-10-31 19:46:24'),
(105, '2019-11-04', 'PO 116349', '1225', 7, 4, NULL, 1, NULL, NULL, '2019-11-04', '08:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', NULL, '2019-11-04 08:07:19', '2019-11-04 08:07:19'),
(107, '2019-11-01', '-', '1223', 10, 4, 'cliente', 10, NULL, NULL, '2019-11-04', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-07 20:16:01', '2019-11-07 20:16:01'),
(108, '2019-11-01', '-', '1224', 15, 4, 'cliente', 15, NULL, NULL, '2019-11-04', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-07 20:16:18', '2019-11-07 20:16:18'),
(109, '2019-10-31', '-', '1217', 15, 4, 'cliente', 15, NULL, NULL, '2019-11-07', NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-07 20:16:18', '2019-11-07 20:16:18'),
(110, '2019-11-22', 'D10_117236', '1226', 7, 4, NULL, 1, NULL, NULL, '2019-11-22', '08:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', NULL, '2019-11-26 22:36:49', '2019-11-26 22:36:49'),
(111, '2019-12-06', 'D10_118350', '1227', 7, 4, NULL, 1, NULL, NULL, '2019-12-10', '08:00:00', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', NULL, '2019-12-17 17:12:43', '2019-12-17 17:12:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(10) UNSIGNED NOT NULL,
  `cust_company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_tax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cust_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cust_sucursal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_contact_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cust_phone_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cust_email_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cust_contact_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cust_phone_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cust_email_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_status` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `customer`
--

INSERT INTO `customer` (`id_customer`, `cust_company`, `cust_tax`, `cust_address`, `cust_contact`, `cust_sucursal`, `cust_phone`, `cust_email`, `cust_contact_two`, `cust_phone_two`, `cust_email_two`, `cust_contact_three`, `cust_phone_three`, `cust_email_three`, `id_status`, `created_at`, `updated_at`) VALUES
(1, 'Bufalinda USA', NULL, '20200 W. Dixie Highway Suite 604 Aventura, FL 33180', 'Debbie Shlesinger', 'C', '+(01)(786) 505-9513', 'debbie@bufalinda.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-04-26 22:05:26', '2019-04-26 22:05:26'),
(2, 'International Food Promotions', NULL, '16400 NE 17th Ave. #505 North Miami Beach, FL 33162', 'Enzo Perilli', 'C', '+(01)(305) 733-5225', 'foodpromotionsusa@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-04-26 22:05:51', '2019-04-26 22:05:51'),
(3, 'Italian Way', NULL, '2501 W. 80th St. Unit #9 Hialeah, FL 33016', 'Aldo Alcantare', 'C', '+(01)(305) 456-7870', 'aalcantara@italianway.us', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-04-26 22:06:11', '2019-05-10 20:03:31'),
(4, 'Los Andes', NULL, '8450 NW 64 St. Unit 2 Miami, Fl 33166', 'Miguel Rios', 'C', '+(01)(954) 478-9625', 'info@losandesfoods.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-04-26 22:06:33', '2019-04-26 22:06:33'),
(5, 'Spizzico Foods', NULL, '8448 NW 61st Street Miami, FL 33166', 'Fiorenzo Trunzo', 'C', '+(01)(702) 302-3819', 'fiorenzo@spizzicofood.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-04-26 22:06:53', '2019-04-26 22:06:53'),
(6, 'Nobile Foods', NULL, '5340 N.W. 163 Street. Miami, FL 33014', 'Carmine Minichino', 'C', '+(01)(786) 453-3724', 'cm@nobilefoods.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-05-10 20:05:52', '2019-05-10 20:05:52'),
(7, 'Gourmet Foods Intl - Carolina', NULL, '4537 Enterprise Dr. NW Concord, NC 28027', 'Latoya Banks', 'C', '+(01)(404) 688-1315', 'lbanks@gfifoods.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-05-10 20:16:20', '2019-05-20 20:25:52'),
(9, 'Shelbourne Hotel', NULL, '1801 Collins Avenue Miami Beach, FL 33139', NULL, 'C', '+(01)(305) 341-1322', 'dward@meninhospitality.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-05-14 19:49:23', '2019-05-14 19:49:23'),
(10, 'FARM SHARE', NULL, '14125 SW 320th Street. Homestead, FL', 'Jasmine', 'C', '+(01)(305) 246-3276', 'jasmine@farmshare.org', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-18 19:24:56', '2019-06-28 21:59:23'),
(11, 'Bella Food Service', NULL, '785 S. Congress Avenue Delray Beach, Fl 33445', 'Manny Puente', 'C', '+(01)(954) 830-6328', 'manp2009@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-18 19:57:20', '2019-08-13 19:39:45'),
(13, 'Purchase Order of Miami', NULL, '3724 NW 72nd Street Miami, FL 33147', NULL, 'C', '+(01)(305) 696-2190', 'poco3724chef@aol.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-10 08:04:23', '2019-07-10 08:04:23'),
(14, 'Cullen Services LL', NULL, '13116 SW 44th St. Miramar, FL 33027', NULL, 'C', '+(01)(786) 616-0353', 'cullenusa@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-01 18:14:44', '2019-08-01 18:14:44'),
(15, 'Floral Logistics of Miami', NULL, '3400 NW 74th Avenue Unit 1 Miami, FL 33122', NULL, 'C', '+(01)(305) 487-7777', 'produce@floralogistics.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-01 22:31:00', '2019-08-01 22:31:00'),
(16, 'BUFALINDA USA LLC', NULL, '20200 W. Dixie Highway, Suite 604', NULL, 'C', '+(__)(___) ___-____', 'debbie@bufalinda.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-10-28 21:39:35', '2019-10-28 21:39:35'),
(17, 'Louis Fulop', NULL, '20200 W. Dixie Highway Aventura, FL 33180', NULL, 'C', '+(01)(786) 487-4674', 'lfulop@the-beach.net', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-10-29 05:13:00', '2019-10-29 05:13:00'),
(18, 'Ilana Capeluto', NULL, '19737 Turnberry Way', NULL, 'C', '+(01)(561) 350-5349', 'ilanashlesinger@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-10-31 19:40:52', '2019-10-31 19:40:52'),
(19, 'Captiva Co.', NULL, '75 NE 179th St. Miami, FL 33162', NULL, 'C', '+(01)(305) 904-2767', 'dm@captivaco.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-10-31 19:46:24', '2019-10-31 19:46:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_inbound_orders`
--

CREATE TABLE `det_inbound_orders` (
  `id_diord` int(10) UNSIGNED NOT NULL,
  `diord_pallet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diord_item_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diord_lot` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diord_qty` double DEFAULT NULL,
  `diord_expiration_date` date DEFAULT NULL,
  `id_ciord` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `det_inbound_orders`
--

INSERT INTO `det_inbound_orders` (`id_diord`, `diord_pallet`, `diord_item_code`, `diord_lot`, `diord_qty`, `diord_expiration_date`, `id_ciord`, `created_at`, `updated_at`) VALUES
(11, '1', '5', 'CP401169', 24, '2019-06-16', 1, '2019-05-08 17:01:02', '2019-05-08 17:01:02'),
(12, '1', '4', 'BN401169', 14, '2019-06-16', 1, '2019-05-08 17:01:02', '2019-05-08 17:01:02'),
(13, '1', '2', 'LS401169', 40, '2019-06-16', 1, '2019-05-08 17:01:02', '2019-05-08 17:01:02'),
(14, '1', '1', 'BC401169', 18, '2019-06-16', 1, '2019-05-08 17:01:02', '2019-05-08 17:01:02'),
(15, '1', '3', 'CL401169', 24, '2019-06-16', 1, '2019-05-08 17:01:02', '2019-05-08 17:01:02'),
(28, '1', '2', 'LS501199', 120, '2019-07-08', 2, '2019-05-13 16:14:17', '2019-05-13 16:14:17'),
(29, '2', '3', 'CL501199', 108, '2019-07-08', 2, '2019-05-13 16:14:17', '2019-05-13 16:14:17'),
(30, '2', '4', 'BN501199', 6, '2019-07-08', 2, '2019-05-13 16:14:17', '2019-05-13 16:14:17'),
(31, '2', '1', 'BC501199', 6, '2019-07-08', 2, '2019-05-13 16:14:17', '2019-05-13 16:14:17'),
(36, '1', '2', 'LS401209', 120, '2019-07-14', 3, '2019-05-21 12:21:54', '2019-05-21 12:21:54'),
(37, '2', '3', 'CL401209', 120, '2019-07-14', 3, '2019-05-21 12:22:03', '2019-05-21 12:22:03'),
(42, '1', '4', 'BN501209', 30, '2019-07-15', 4, '2019-06-19 17:48:42', '2019-06-19 17:48:42'),
(43, '1', '2', 'LS501209', 30, '2019-07-14', 4, '2019-06-19 17:48:57', '2019-06-19 17:48:57'),
(44, '1', '1', 'BC501209', 30, '2019-07-14', 4, '2019-06-19 17:49:03', '2019-06-19 17:49:03'),
(45, '1', '3', 'CL501209', 30, '2019-07-14', 4, '2019-06-19 17:49:12', '2019-06-19 17:49:12'),
(55, '1', '2', 'LS701219', 58, '2019-07-24', 5, '2019-05-28 18:40:45', '2019-05-28 18:40:45'),
(56, '1', '1', 'BC701219', 6, '2019-07-24', 5, '2019-05-28 18:40:45', '2019-05-28 18:40:45'),
(57, '1', '3', 'CL701219', 56, '2019-07-24', 5, '2019-05-28 18:40:45', '2019-05-28 18:40:45'),
(64, '1', '2', 'LS301249', 57, '2019-08-10', 6, '2019-06-17 17:43:08', '2019-06-17 17:43:08'),
(65, '1', '1', 'BC301249', 5, '2019-08-10', 6, '2019-06-17 17:43:08', '2019-06-17 17:43:08'),
(66, '1', '3', 'CL301249', 58, '2019-08-10', 6, '2019-06-17 17:43:08', '2019-06-17 17:43:08'),
(81, '1', '2', 'LS501269', 24, '2019-08-26', 7, '2019-07-02 23:17:57', '2019-07-02 23:17:57'),
(82, '1', '1', 'BC501269', 24, '2019-08-26', 7, '2019-07-02 23:17:57', '2019-07-02 23:17:57'),
(83, '1', '3', 'CL501269', 24, '2019-08-26', 7, '2019-07-02 23:17:57', '2019-07-02 23:17:57'),
(84, '1', '4', 'BN501269', 24, '2019-08-26', 7, '2019-07-02 23:17:57', '2019-07-02 23:17:57'),
(85, '1', '6', 'FSO501269', 8, '2019-08-26', 7, '2019-07-02 23:17:57', '2019-07-02 23:17:57'),
(86, '2', '2', 'LS501269', 60, '2019-08-26', 7, '2019-07-02 23:17:57', '2019-07-02 23:17:57'),
(87, '2', '3', 'CL501269', 60, '2019-08-26', 7, '2019-07-02 23:17:57', '2019-07-02 23:17:57'),
(88, '1', '2', 'LS201299', 60, '2019-09-13', 8, '2019-07-12 20:15:01', '2019-07-12 20:15:01'),
(89, '1', '3', 'CL201299', 60, '2019-09-13', 8, '2019-07-12 20:15:01', '2019-07-12 20:15:01'),
(99, '1', '2', 'LS301309', 120, '2019-09-21', 9, '2019-07-25 15:41:31', '2019-07-25 15:41:31'),
(100, '2', '2', 'LS301309', 120, '2019-09-21', 9, '2019-07-25 15:41:31', '2019-07-25 15:41:31'),
(101, '3', '3', 'CL301309', 120, '2019-09-21', 9, '2019-07-25 15:41:31', '2019-07-25 15:41:31'),
(102, '4', '3', 'CL301309', 120, '2019-09-21', 9, '2019-07-25 15:41:31', '2019-07-25 15:41:31'),
(103, '5', '3', 'CL301309', 26, '2019-09-21', 9, '2019-07-25 15:41:31', '2019-07-25 15:41:31'),
(104, '5', '2', 'LS301309', 26, '2019-09-21', 9, '2019-07-25 15:41:31', '2019-07-25 15:41:31'),
(105, '5', '1', 'BC301309', 13, '2019-09-21', 9, '2019-07-25 15:41:31', '2019-07-25 15:41:31'),
(106, '5', '4', 'BN301309', 26, '2019-09-21', 9, '2019-07-25 15:41:31', '2019-07-25 15:41:31'),
(107, '5', '6', 'FOV301309', 12, '2019-09-21', 9, '2019-07-25 15:41:31', '2019-07-25 15:41:31'),
(110, '1', '2', 'LS301319', 54, '2019-09-28', 10, '2019-08-02 22:18:01', '2019-08-02 22:18:01'),
(111, '1', '3', 'CL301319', 66, '2019-09-28', 10, '2019-08-02 22:18:01', '2019-08-02 22:18:01'),
(112, '1', '2', 'LS101339', 30, '2019-10-10', 11, '2019-08-12 18:27:23', '2019-08-12 18:27:23'),
(113, '1', '2', 'LS102339', 30, '2019-10-10', 11, '2019-08-12 18:27:23', '2019-08-12 18:27:23'),
(114, '1', '3', 'CL101339', 30, '2019-10-10', 11, '2019-08-12 18:27:23', '2019-08-12 18:27:23'),
(115, '1', '3', 'CL102339', 30, '2019-10-10', 11, '2019-08-12 18:27:23', '2019-08-12 18:27:23'),
(137, '1', '1', 'BC301349', 20, '2019-10-19', 12, '2019-08-23 21:38:38', '2019-08-23 21:38:38'),
(138, '1', '4', 'BN301349', 26, '2019-10-19', 12, '2019-08-23 21:38:38', '2019-08-23 21:38:38'),
(139, '1', '3', 'CL301349', 23, '2019-10-19', 12, '2019-08-23 21:38:38', '2019-08-23 21:38:38'),
(140, '1', '2', 'LS301349', 23, '2019-10-19', 12, '2019-08-23 21:38:38', '2019-08-23 21:38:38'),
(141, '1', '6', 'FOV301349', 12, '2019-10-19', 12, '2019-08-23 21:38:38', '2019-08-23 21:38:38'),
(142, '2', '3', 'CL302349', 60, '2019-10-19', 12, '2019-08-23 21:38:38', '2019-08-23 21:38:38'),
(143, '2', '2', 'LS302349', 60, '2019-10-19', 12, '2019-08-23 21:38:38', '2019-08-23 21:38:38'),
(144, '1', '3', 'CL101379', 60, '2019-11-07', 13, '2019-09-06 16:16:43', '2019-09-06 16:16:43'),
(145, '1', '2', 'LS101379', 60, '2019-11-07', 13, '2019-09-06 16:16:43', '2019-09-06 16:16:43'),
(146, '1', '3', 'CL101399', 27, '2019-11-21', 14, '2019-09-19 18:11:46', '2019-09-19 18:11:46'),
(147, '1', '2', 'LS101399', 28, '2019-11-21', 14, '2019-09-19 18:11:46', '2019-09-19 18:11:46'),
(148, '1', '4', 'BN101399', 27, '2019-11-21', 14, '2019-09-19 18:11:47', '2019-09-19 18:11:47'),
(149, '1', '1', 'BC101399', 22, '2019-11-21', 14, '2019-09-19 18:11:47', '2019-09-19 18:11:47'),
(150, '1', '6', 'FVO101399', 8, '2019-11-21', 14, '2019-09-19 18:11:47', '2019-09-19 18:11:47'),
(151, '1', '3', 'CL101419', 60, '2019-12-05', 15, '2019-10-04 16:25:18', '2019-10-04 16:25:18'),
(152, '1', '2', 'LS101419', 60, '2019-12-05', 15, '2019-10-04 16:25:18', '2019-10-04 16:25:18'),
(153, '1', '3', 'CL101449', 55, '2019-12-26', 16, '2019-10-29 16:58:31', '2019-10-29 16:58:31'),
(154, '1', '2', 'LS101449', 65, '2019-12-26', 16, '2019-10-29 16:58:31', '2019-10-29 16:58:31'),
(155, '1', '3', 'CL101479', 50, '2020-01-16', 17, '2019-11-14 22:17:45', '2019-11-14 22:17:45'),
(156, '1', '2', 'LS101479', 70, '2020-01-16', 17, '2019-11-14 22:17:45', '2019-11-14 22:17:45'),
(157, '1', '3', 'CL101499', 50, '2020-01-30', 18, '2019-11-29 20:03:04', '2019-11-29 20:03:04'),
(158, '1', '2', 'LS101499', 70, '2020-01-30', 18, '2019-11-29 20:03:04', '2019-11-29 20:03:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_sale_inventory`
--

CREATE TABLE `det_sale_inventory` (
  `id_dsale_inventory` int(10) UNSIGNED NOT NULL,
  `id_item` int(10) UNSIGNED NOT NULL,
  `dsaleinv_pallet` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dsaleinv_lot` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dsaleinv_qty` double NOT NULL,
  `id_csale_inventory` int(10) UNSIGNED NOT NULL,
  `id_warehouse` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `det_sale_inventory`
--

INSERT INTO `det_sale_inventory` (`id_dsale_inventory`, `id_item`, `dsaleinv_pallet`, `dsaleinv_lot`, `dsaleinv_qty`, `id_csale_inventory`, `id_warehouse`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'BC401169', 2, 1, 1, '2019-05-09 20:06:49', '2019-05-09 20:06:49'),
(2, 2, '1', 'LS401169', 2, 1, 1, '2019-05-09 20:06:49', '2019-05-09 20:06:49'),
(3, 3, '1', 'CL401169', 2, 1, 1, '2019-05-09 20:06:49', '2019-05-09 20:06:49'),
(4, 4, '1', 'BN401169', 2, 1, 1, '2019-05-09 20:06:50', '2019-05-09 20:06:50'),
(5, 1, '1', 'BC401169', 2, 2, 1, '2019-05-09 20:47:43', '2019-05-09 20:47:43'),
(6, 2, '1', 'LS401169', 2, 2, 1, '2019-05-09 20:47:43', '2019-05-09 20:47:43'),
(7, 3, '1', 'CL401169', 2, 2, 1, '2019-05-09 20:47:43', '2019-05-09 20:47:43'),
(8, 4, '1', 'BN401169', 2, 2, 1, '2019-05-09 20:47:43', '2019-05-09 20:47:43'),
(9, 5, '1', 'CP401169', 2, 2, 1, '2019-05-09 20:47:43', '2019-05-09 20:47:43'),
(10, 2, '1', 'LS401169', 3, 3, 1, '2019-05-09 20:49:36', '2019-05-09 20:49:36'),
(11, 1, '1', 'BC401169', 1, 4, 1, '2019-05-09 20:57:34', '2019-05-09 20:57:34'),
(12, 2, '1', 'LS401169', 2, 5, 1, '2019-05-09 20:59:29', '2019-05-09 20:59:29'),
(13, 4, '1', 'BN401169', 1, 6, 1, '2019-05-09 21:04:25', '2019-05-09 21:04:25'),
(14, 5, '1', 'CP401169', 5, 7, 1, '2019-05-09 21:06:31', '2019-05-09 21:06:31'),
(15, 1, '1', 'BC401169', 1, 8, 1, '2019-05-09 21:08:42', '2019-05-09 21:08:42'),
(16, 2, '1', 'LS401169', 1, 8, 1, '2019-05-09 21:08:42', '2019-05-09 21:08:42'),
(17, 3, '1', 'CL401169', 1, 8, 1, '2019-05-09 21:08:42', '2019-05-09 21:08:42'),
(18, 4, '1', 'BN401169', 1, 8, 1, '2019-05-09 21:08:42', '2019-05-09 21:08:42'),
(19, 5, '1', 'CP401169', 4, 8, 1, '2019-05-09 21:08:42', '2019-05-09 21:08:42'),
(20, 2, '1', 'LS401169', 3, 9, 1, '2019-05-09 21:12:20', '2019-05-09 21:12:20'),
(21, 2, '1', 'LS401169', 2, 10, 1, '2019-05-09 21:14:26', '2019-05-09 21:14:26'),
(22, 1, '1', 'BC401169', 1, 11, 1, '2019-05-09 21:15:38', '2019-05-09 21:15:38'),
(23, 2, '1', 'LS401169', 1, 11, 1, '2019-05-09 21:15:39', '2019-05-09 21:15:39'),
(24, 3, '1', 'CL401169', 1, 11, 1, '2019-05-09 21:15:39', '2019-05-09 21:15:39'),
(25, 4, '1', 'BN401169', 1, 11, 1, '2019-05-09 21:15:39', '2019-05-09 21:15:39'),
(26, 1, '1', 'BC401169', 1, 12, 1, '2019-05-09 21:16:38', '2019-05-09 21:16:38'),
(27, 2, '1', 'LS401169', 1, 12, 1, '2019-05-09 21:16:38', '2019-05-09 21:16:38'),
(28, 3, '1', 'CL401169', 1, 12, 1, '2019-05-09 21:16:38', '2019-05-09 21:16:38'),
(29, 4, '1', 'BN401169', 1, 12, 1, '2019-05-09 21:16:38', '2019-05-09 21:16:38'),
(30, 2, '1', 'LS401169', 2, 13, 1, '2019-05-09 21:17:29', '2019-05-09 21:17:29'),
(31, 2, '1', 'LS401169', 2, 14, 1, '2019-05-09 21:25:16', '2019-05-09 21:25:16'),
(39, 2, '1', 'LS401169', 2, 17, 1, '2019-05-13 17:57:28', '2019-05-13 17:57:28'),
(40, 4, '1', 'BN401169', 4, 18, 1, '2019-05-14 19:49:23', '2019-05-14 19:49:23'),
(41, 2, '1', 'LS401169', 2, 19, 1, '2019-05-14 19:50:00', '2019-05-14 19:50:00'),
(42, 2, '1', 'LS401169', 2, 20, 1, '2019-05-17 17:59:53', '2019-05-17 17:59:53'),
(45, 2, '1', 'LS401169', 2, 22, 1, '2019-05-20 21:58:25', '2019-05-20 21:58:25'),
(46, 2, '1', 'LS401209', 100, 23, 1, '2019-05-21 01:38:19', '2019-05-21 01:38:19'),
(47, 3, '2', 'CL401209', 100, 23, 1, '2019-05-21 01:38:19', '2019-05-21 01:38:19'),
(48, 5, '1', 'CP401169', 4, 24, 1, '2019-05-21 23:50:20', '2019-05-21 23:50:20'),
(49, 1, '1', 'BC401169', 1, 25, 1, '2019-05-23 04:11:39', '2019-05-23 04:11:39'),
(50, 2, '1', 'LS401209', 1, 25, 1, '2019-05-23 04:11:39', '2019-05-23 04:11:39'),
(51, 3, '2', 'CL401209', 1, 25, 1, '2019-05-23 04:11:39', '2019-05-23 04:11:39'),
(52, 4, '1', 'BN401169', 1, 25, 1, '2019-05-23 04:11:39', '2019-05-23 04:11:39'),
(53, 1, '', 'BC501209', 9, 26, 1, '2019-05-27 04:47:53', '2019-05-27 04:47:53'),
(54, 2, '1', 'LS401209', 9, 26, 1, '2019-05-27 04:47:54', '2019-05-27 04:47:54'),
(55, 3, '2', 'CL401209', 9, 26, 1, '2019-05-27 04:47:54', '2019-05-27 04:47:54'),
(56, 4, '1', 'BN501209', 9, 26, 1, '2019-05-27 04:47:54', '2019-05-27 04:47:54'),
(57, 1, '', 'BC501209', 4, 49, 1, '2019-08-05 20:12:06', '2019-08-05 20:12:06'),
(58, 2, '1', 'LS401209', 2, 49, 1, '2019-08-05 20:12:06', '2019-08-05 20:12:06'),
(59, 3, '2', 'CL401209', 1, 49, 1, '2019-08-05 20:12:06', '2019-08-05 20:12:06'),
(60, 4, '1', 'BN501209', 4, 49, 1, '2019-08-05 20:12:45', '2019-08-05 20:12:45'),
(61, 1, '', 'BC501209', 11, 28, 1, '2019-05-28 07:27:57', '2019-05-28 07:27:57'),
(62, 2, '', 'LS501209', 14, 28, 1, '2019-05-28 07:27:57', '2019-05-28 07:27:57'),
(63, 3, '', 'CL501209', 11, 28, 1, '2019-05-28 07:27:57', '2019-05-28 07:27:57'),
(64, 4, '1', 'BN501209', 11, 28, 1, '2019-05-28 07:27:57', '2019-05-28 07:27:57'),
(65, 2, '1', 'LS401209', 2, 29, 1, '2019-05-29 07:28:18', '2019-05-29 07:28:18'),
(66, 4, '1', 'BN501209', 1, 30, 1, '2019-05-29 07:30:06', '2019-05-29 07:30:06'),
(67, 2, '1', 'LS701219', 50, 31, 1, '2019-05-31 17:18:08', '2019-05-31 17:18:08'),
(68, 3, '', 'CL701219', 50, 31, 1, '2019-05-31 17:18:08', '2019-05-31 17:18:08'),
(69, 2, '1', 'LS401209', 2, 32, 1, '2019-06-05 00:08:03', '2019-06-05 00:08:03'),
(74, 2, '1', 'LS701219', 2, 32, 1, '2019-06-20 15:15:29', '2019-06-20 15:15:29'),
(75, 1, '1', 'BC401169', 9, 35, 1, '2019-06-18 19:24:56', '2019-06-18 19:24:56'),
(76, 2, '1', 'LS401169', 11, 35, 1, '2019-06-18 19:24:56', '2019-06-18 19:24:56'),
(77, 3, '1', 'CL401169', 17, 35, 1, '2019-06-18 19:24:56', '2019-06-18 19:24:56'),
(78, 4, '1', 'BN401169', 1, 35, 1, '2019-06-18 19:24:56', '2019-06-18 19:24:56'),
(79, 5, '1', 'CP401169', 7, 35, 1, '2019-06-18 19:24:56', '2019-06-18 19:24:56'),
(80, 2, '1', 'LS301249', 50, 36, 1, '2019-06-18 19:30:03', '2019-06-18 19:30:03'),
(81, 3, '1', 'CL301249', 50, 36, 1, '2019-06-18 19:30:03', '2019-06-18 19:30:03'),
(82, 1, '1', 'BC301249', 1, 37, 1, '2019-06-18 19:57:20', '2019-06-18 19:57:20'),
(83, 2, '1', 'LS301249', 1, 37, 1, '2019-06-18 19:57:20', '2019-06-18 19:57:20'),
(84, 3, '1', 'CL301249', 1, 37, 1, '2019-06-18 19:57:20', '2019-06-18 19:57:20'),
(85, 4, '1', 'BN501209', 1, 37, 1, '2019-06-18 19:57:20', '2019-06-18 19:57:20'),
(86, 1, '1', 'BC301249', 2, 38, 1, '2019-06-19 17:36:46', '2019-06-19 17:36:46'),
(87, 2, '1', 'LS301249', 2, 38, 1, '2019-06-19 17:36:54', '2019-06-19 17:36:54'),
(88, 3, '1', 'CL301249', 2, 38, 1, '2019-06-19 17:37:02', '2019-06-19 17:37:02'),
(89, 2, '1', 'LS701219', 2, 39, 1, '2019-06-19 02:51:07', '2019-06-19 02:51:07'),
(102, 2, '1', 'LS701219', 2, 46, 1, '2019-06-26 15:00:27', '2019-06-26 15:00:27'),
(103, 2, '1', 'LS701219', 2, 47, 1, '2019-06-28 17:36:07', '2019-06-28 17:36:07'),
(104, 1, '2', 'BC501199', 4, 48, 1, '2019-06-28 22:00:28', '2019-06-28 22:00:28'),
(105, 2, '1', 'LS501199', 118, 48, 1, '2019-06-28 22:00:28', '2019-06-28 22:00:28'),
(106, 3, '2', 'CL501199', 105, 48, 1, '2019-06-28 22:00:28', '2019-06-28 22:00:28'),
(107, 4, '2', 'BN501199', 6, 48, 1, '2019-06-28 22:00:28', '2019-06-28 22:00:28'),
(108, 1, '', 'BC501209', 6, 49, 1, '2019-07-08 18:09:14', '2019-07-08 18:09:14'),
(110, 1, '1', 'BC701219', 1, 49, 1, '2019-08-05 20:14:15', '2019-08-05 20:14:15'),
(112, 3, '1', 'CL301249', 1, 49, 1, '2019-08-05 20:14:15', '2019-08-05 20:14:15'),
(114, 1, '1', 'BC701219', 4, 51, 1, '2019-07-03 03:51:48', '2019-07-03 03:51:48'),
(118, 2, '', 'LS501209', 16, 51, 1, '2019-07-08 17:57:59', '2019-07-08 17:57:59'),
(120, 3, '', 'CL501209', 19, 51, 1, '2019-07-08 18:14:48', '2019-07-08 18:14:48'),
(122, 4, '1', 'BN501209', 4, 51, 1, '2019-07-03 03:51:48', '2019-07-03 03:51:48'),
(124, 1, '1', 'BC501269', 2, 53, 1, '2019-07-03 18:11:09', '2019-07-03 18:11:09'),
(125, 2, '1', 'LS501269', 2, 53, 1, '2019-07-03 18:11:09', '2019-07-03 18:11:09'),
(126, 3, '1', 'CL501269', 2, 53, 1, '2019-07-03 18:11:09', '2019-07-03 18:11:09'),
(127, 4, '1', 'BN501269', 2, 53, 1, '2019-07-03 18:11:09', '2019-07-03 18:11:09'),
(129, 2, '1', 'LS501269', 1, 54, 1, '2019-07-04 22:11:46', '2019-07-04 22:11:46'),
(130, 3, '1', 'CL501269', 1, 54, 1, '2019-07-04 22:11:46', '2019-07-04 22:11:46'),
(131, 4, '1', 'BN501269', 2, 54, 1, '2019-07-04 22:11:46', '2019-07-04 22:11:46'),
(132, 6, '1', 'FSO501269', 1, 54, 1, '2019-07-04 22:11:46', '2019-07-04 22:11:46'),
(133, 2, '2', 'LS501269', 60, 55, 1, '2019-07-04 23:24:42', '2019-07-04 23:24:42'),
(134, 3, '2', 'CL501269', 60, 55, 1, '2019-07-04 23:24:42', '2019-07-04 23:24:42'),
(136, 2, '1', 'LS501269', 8, 56, 1, '2019-07-10 08:04:23', '2019-07-31 18:46:05'),
(137, 1, '1', 'BC501269', 1, 57, 1, '2019-07-15 17:18:30', '2019-07-15 17:18:30'),
(138, 2, '1', 'LS301249', 2, 57, 1, '2019-08-05 20:20:42', '2019-08-05 20:20:42'),
(139, 3, '1', 'CL501269', 1, 57, 1, '2019-07-15 17:18:30', '2019-07-15 17:18:30'),
(140, 4, '1', 'BN501269', 2, 57, 1, '2019-07-15 17:18:30', '2019-07-15 17:18:30'),
(141, 2, '1', 'LS201299', 60, 58, 1, '2019-07-19 06:31:25', '2019-07-19 06:31:25'),
(142, 3, '1', 'CL201299', 60, 58, 1, '2019-07-19 06:31:25', '2019-07-19 06:31:25'),
(143, 1, '1', 'BC501269', 1, 59, 1, '2019-07-26 21:46:41', '2019-07-26 21:46:41'),
(144, 2, '1', 'LS301309', 60, 60, 1, '2019-07-31 18:50:28', '2019-07-31 18:50:28'),
(145, 3, '3', 'CL301309', 60, 60, 1, '2019-07-31 18:50:28', '2019-07-31 18:50:28'),
(146, 2, '1', 'LS301309', 60, 61, 1, '2019-07-31 18:52:43', '2019-07-31 18:52:43'),
(147, 2, '2', 'LS301309', 120, 61, 1, '2019-07-31 18:52:43', '2019-07-31 18:52:43'),
(148, 2, '5', 'LS301309', 10, 61, 1, '2019-07-31 18:52:43', '2019-07-31 18:52:43'),
(149, 3, '3', 'CL301309', 60, 61, 1, '2019-07-31 18:52:43', '2019-07-31 18:52:43'),
(150, 3, '4', 'CL301309', 120, 61, 1, '2019-07-31 18:52:43', '2019-07-31 18:52:43'),
(151, 3, '5', 'CL301309', 10, 61, 1, '2019-07-31 18:52:43', '2019-07-31 18:52:43'),
(152, 3, '5', 'CL301309', 10, 62, 1, '2019-07-31 18:54:27', '2019-07-31 18:54:27'),
(153, 1, '5', 'BC301309', 2, 63, 1, '2019-07-31 19:00:58', '2019-07-31 19:00:58'),
(154, 2, '5', 'LS301309', 2, 63, 1, '2019-07-31 19:00:58', '2019-07-31 19:00:58'),
(155, 3, '5', 'CL301309', 2, 63, 1, '2019-07-31 19:00:58', '2019-07-31 19:00:58'),
(156, 4, '5', 'BN301309', 2, 63, 1, '2019-07-31 19:00:58', '2019-07-31 19:00:58'),
(157, 1, '5', 'BC301309', 4, 64, 1, '2019-07-31 19:05:56', '2019-07-31 19:05:56'),
(158, 2, '5', 'LS301309', 1, 64, 1, '2019-07-31 19:05:56', '2019-07-31 19:05:56'),
(159, 3, '5', 'CL301309', 1, 64, 1, '2019-07-31 19:05:56', '2019-07-31 19:05:56'),
(160, 4, '5', 'BN301309', 4, 64, 1, '2019-07-31 19:05:56', '2019-07-31 19:05:56'),
(161, 1, '5', 'BC301309', 1, 65, 1, '2019-08-01 18:14:44', '2019-08-01 18:14:44'),
(162, 3, '5', 'CL301309', 1, 65, 1, '2019-08-01 18:14:44', '2019-08-01 18:14:44'),
(163, 4, '5', 'BN301309', 1, 65, 1, '2019-08-01 18:14:44', '2019-08-01 18:14:44'),
(173, 1, '1', 'BC301249', 2, 66, 1, '2019-08-01 22:31:00', '2019-08-01 22:31:00'),
(174, 3, '1', 'CL301249', 4, 66, 1, '2019-08-01 22:31:00', '2019-08-01 22:31:00'),
(175, 1, '1', 'BC501269', 1, 67, 1, '2019-08-02 19:52:05', '2019-08-02 19:52:05'),
(176, 2, '1', 'LS501269', 1, 67, 1, '2019-08-02 19:52:05', '2019-08-02 19:52:05'),
(177, 3, '1', 'CL501269', 1, 67, 1, '2019-08-02 19:52:05', '2019-08-02 19:52:05'),
(178, 4, '1', 'BN501269', 1, 67, 1, '2019-08-02 19:52:05', '2019-08-02 19:52:05'),
(179, 6, '1', 'FSO501269', 1, 67, 1, '2019-08-02 19:52:05', '2019-08-02 19:52:05'),
(180, 1, '1', 'BC501269', 1, 68, 1, '2019-08-05 05:49:36', '2019-08-05 05:49:36'),
(181, 2, '5', 'LS301309', 1, 68, 1, '2019-08-05 05:49:36', '2019-08-05 05:49:36'),
(182, 3, '5', 'CL301309', 1, 68, 1, '2019-08-05 05:49:36', '2019-08-05 05:49:36'),
(183, 4, '5', 'BN301309', 1, 68, 1, '2019-08-05 05:49:36', '2019-08-05 05:49:36'),
(184, 2, '5', 'LS301309', 2, 69, 1, '2019-08-05 05:52:40', '2019-08-05 05:52:40'),
(185, 3, '2', 'CL401209', 3, 48, 1, '2019-08-05 19:59:40', '2019-08-05 19:59:40'),
(186, 2, '1', 'LS401209', 2, 48, 1, '2019-08-05 20:08:50', '2019-08-05 20:08:50'),
(187, 2, '1', 'LS301249', 2, 49, 1, '2019-08-06 00:27:18', '2019-08-06 00:27:18'),
(188, 3, '1', 'CL501269', 2, 70, 1, '2019-08-06 06:20:31', '2019-08-06 06:20:31'),
(189, 4, '1', 'BN501269', 3, 70, 1, '2019-08-06 06:20:31', '2019-08-06 06:20:31'),
(190, 2, '5', 'LS301309', 1, 65, 1, '2019-08-06 16:18:19', '2019-08-06 16:18:19'),
(191, 2, '5', 'LS301309', 4, 71, 1, '2019-08-08 06:10:20', '2019-08-08 06:10:20'),
(192, 4, '5', 'BN301309', 4, 71, 1, '2019-08-08 06:10:20', '2019-08-08 06:10:20'),
(193, 6, '5', 'FOV301309', 8, 71, 1, '2019-08-08 06:10:20', '2019-08-08 06:10:20'),
(194, 1, '5', 'BC301309', 2, 72, 1, '2019-08-08 06:52:10', '2019-08-08 06:52:10'),
(195, 2, '5', 'LS301309', 1, 72, 1, '2019-08-08 06:52:10', '2019-08-08 06:52:10'),
(196, 3, '5', 'CL301309', 1, 72, 1, '2019-08-08 06:52:10', '2019-08-08 06:52:10'),
(197, 4, '5', 'BN301309', 2, 72, 1, '2019-08-08 06:52:10', '2019-08-08 06:52:10'),
(199, 2, '1', 'LS301319', 50, 73, 1, '2019-08-13 19:24:05', '2019-08-13 19:24:05'),
(200, 3, '1', 'CL301319', 50, 73, 1, '2019-08-13 19:24:05', '2019-08-13 19:24:05'),
(201, 1, '5', 'BC301309', 1, 74, 1, '2019-08-13 19:28:32', '2019-08-13 19:28:32'),
(202, 2, '5', 'LS301309', 1, 74, 1, '2019-08-13 19:28:32', '2019-08-13 19:28:32'),
(203, 3, '1', 'CL301319', 1, 74, 1, '2019-08-13 19:28:32', '2019-08-13 19:28:32'),
(204, 4, '5', 'BN301309', 1, 74, 1, '2019-08-13 19:28:32', '2019-08-13 19:28:32'),
(205, 1, '5', 'BC301309', 1, 75, 1, '2019-08-13 19:36:24', '2019-08-13 19:36:24'),
(206, 2, '5', 'LS301309', 1, 75, 1, '2019-08-13 19:36:24', '2019-08-13 19:36:24'),
(207, 3, '1', 'CL301319', 1, 75, 1, '2019-08-13 19:36:24', '2019-08-13 19:36:24'),
(208, 4, '5', 'BN301309', 1, 75, 1, '2019-08-13 19:36:24', '2019-08-13 19:36:24'),
(209, 6, '5', 'FOV301309', 1, 75, 1, '2019-08-13 19:36:24', '2019-08-13 19:36:24'),
(210, 1, '1', 'BC501269', 18, 76, 1, '2019-08-13 22:14:06', '2019-08-13 22:14:06'),
(211, 2, '1', 'LS501269', 12, 76, 1, '2019-08-13 22:14:06', '2019-08-13 22:14:06'),
(212, 3, '1', 'CL501269', 17, 76, 1, '2019-08-13 22:14:06', '2019-08-13 22:23:08'),
(213, 4, '1', 'BN501269', 14, 76, 1, '2019-08-13 22:14:07', '2019-08-13 22:14:07'),
(214, 6, '1', 'FSO501269', 6, 76, 1, '2019-08-13 22:14:07', '2019-08-13 22:14:07'),
(215, 3, '1', 'CL301319', 1, 72, 1, '2019-08-13 22:20:50', '2019-08-13 22:20:50'),
(216, 2, '1', 'LS101339', 30, 77, 1, '2019-08-15 20:48:17', '2019-08-15 20:48:17'),
(217, 2, '1', 'LS102339', 30, 77, 1, '2019-08-15 20:48:17', '2019-08-15 20:48:17'),
(218, 3, '1', 'CL101339', 30, 77, 1, '2019-08-15 20:48:17', '2019-08-15 20:48:17'),
(219, 3, '1', 'CL102339', 30, 77, 1, '2019-08-15 20:48:17', '2019-08-15 20:48:17'),
(220, 1, '5', 'BC301309', 1, 78, 1, '2019-08-16 17:18:06', '2019-08-16 17:18:06'),
(221, 4, '5', 'BN301309', 2, 78, 1, '2019-08-16 17:18:06', '2019-08-16 17:18:06'),
(222, 3, '1', 'CL301319', 1, 79, 1, '2019-08-27 17:45:30', '2019-08-27 17:45:30'),
(223, 4, '5', 'BN301309', 2, 79, 1, '2019-08-27 17:45:30', '2019-08-27 17:45:30'),
(224, 1, '1', 'BC301349', 1, 80, 1, '2019-08-27 17:59:04', '2019-08-27 17:59:04'),
(225, 2, '1', 'LS301349', 1, 80, 1, '2019-08-27 17:59:04', '2019-08-27 17:59:04'),
(226, 3, '1', 'CL301349', 1, 80, 1, '2019-08-27 17:59:04', '2019-08-27 17:59:04'),
(227, 4, '1', 'BN301349', 1, 80, 1, '2019-08-27 17:59:04', '2019-08-27 17:59:04'),
(228, 2, '1', 'LS301349', 1, 81, 1, '2019-08-27 18:08:04', '2019-08-27 18:08:04'),
(229, 2, '2', 'LS302349', 60, 81, 1, '2019-08-27 18:08:04', '2019-08-27 18:08:04'),
(230, 3, '2', 'CL302349', 60, 81, 1, '2019-08-27 18:08:04', '2019-08-27 18:08:04'),
(231, 2, '1', 'LS301349', 1, 82, 1, '2019-08-28 16:27:52', '2019-08-28 16:27:52'),
(232, 3, '1', 'CL301349', 1, 82, 1, '2019-08-28 16:27:52', '2019-08-28 16:27:52'),
(233, 4, '1', 'BN301349', 1, 82, 1, '2019-08-28 16:27:52', '2019-08-28 16:27:52'),
(234, 6, '5', 'FOV301309', 1, 82, 1, '2019-08-28 16:27:52', '2019-08-28 16:27:52'),
(235, 1, '1', 'BC301349', 1, 82, 1, '2019-08-28 16:28:09', '2019-08-28 16:28:09'),
(236, 1, '1', 'BC301349', 1, 83, 1, '2019-08-28 16:31:59', '2019-08-28 16:31:59'),
(237, 4, '1', 'BN301349', 1, 83, 1, '2019-08-28 16:31:59', '2019-08-28 16:31:59'),
(243, 1, '1', 'BC301349', 10, 85, 1, '2019-09-05 03:52:24', '2019-09-05 03:52:24'),
(244, 2, '1', 'LS301349', 10, 85, 1, '2019-09-05 03:52:24', '2019-09-05 03:52:24'),
(245, 3, '1', 'CL301349', 10, 85, 1, '2019-09-05 03:52:24', '2019-09-05 03:52:24'),
(246, 4, '1', 'BN301349', 10, 85, 1, '2019-09-05 03:52:24', '2019-09-05 03:52:24'),
(247, 2, '1', 'LS301349', 4, 86, 1, '2019-09-10 22:52:09', '2019-09-10 22:52:09'),
(248, 1, '1', 'BC301349', 1, 87, 1, '2019-09-12 22:12:21', '2019-09-12 22:12:21'),
(249, 3, '1', 'CL301349', 1, 87, 1, '2019-09-12 22:12:21', '2019-09-12 22:12:21'),
(250, 4, '1', 'BN301349', 2, 87, 1, '2019-09-12 22:12:21', '2019-09-12 22:12:21'),
(251, 2, '5', 'LS301309', 2, 88, 1, '2019-09-12 22:47:15', '2019-09-12 22:47:15'),
(252, 2, '1', 'LS301319', 4, 88, 1, '2019-09-12 22:47:15', '2019-09-12 22:47:15'),
(253, 3, '1', 'CL301319', 12, 88, 1, '2019-09-12 22:47:15', '2019-09-12 22:47:15'),
(254, 3, '1', 'CL102339', 1, 88, 1, '2019-09-12 22:47:15', '2019-09-12 22:47:15'),
(255, 4, '5', 'BN301309', 6, 88, 1, '2019-09-12 22:47:15', '2019-09-12 22:47:15'),
(256, 6, '5', 'FOV301309', 2, 88, 1, '2019-09-12 22:47:15', '2019-09-12 22:47:15'),
(257, 1, '1', 'BC301349', 3, 89, 1, '2019-09-17 15:22:38', '2019-09-17 15:22:38'),
(258, 4, '1', 'BN301349', 2, 89, 1, '2019-09-17 15:22:38', '2019-09-17 15:22:38'),
(259, 1, '1', 'BC301349', 1, 90, 1, '2019-09-24 17:31:04', '2019-09-24 17:31:04'),
(260, 2, '1', 'LS301349', 1, 90, 1, '2019-09-24 17:31:04', '2019-09-24 17:31:04'),
(261, 3, '1', 'CL301349', 1, 90, 1, '2019-09-24 17:31:04', '2019-09-24 17:31:04'),
(262, 4, '1', 'BN301349', 1, 90, 1, '2019-09-24 17:31:04', '2019-09-24 17:31:04'),
(267, 2, '1', 'LS101379', 60, 92, 1, '2019-10-07 21:47:24', '2019-10-07 21:47:24'),
(268, 3, '1', 'CL101379', 60, 92, 1, '2019-10-07 21:47:24', '2019-10-07 21:47:24'),
(269, 1, '1', 'BC301349', 2, 93, 1, '2019-10-07 22:00:38', '2019-10-07 22:00:38'),
(270, 2, '1', 'LS301349', 4, 93, 1, '2019-10-07 22:00:38', '2019-10-07 22:00:38'),
(271, 3, '1', 'CL301349', 9, 93, 1, '2019-10-07 22:00:38', '2019-10-07 22:00:38'),
(272, 4, '1', 'BN301349', 8, 93, 1, '2019-10-07 22:00:38', '2019-10-07 22:00:38'),
(273, 6, '1', 'FOV301349', 12, 93, 1, '2019-10-07 22:00:38', '2019-10-07 22:00:38'),
(274, 1, '1', 'BC101399', 2, 94, 1, '2019-10-07 22:20:55', '2019-10-07 22:20:55'),
(275, 3, '1', 'CL101399', 3, 94, 1, '2019-10-07 22:20:55', '2019-10-07 22:20:55'),
(276, 4, '1', 'BN101399', 2, 94, 1, '2019-10-07 22:20:55', '2019-10-07 22:20:55'),
(277, 6, '1', 'FVO101399', 1, 94, 1, '2019-10-07 22:20:55', '2019-10-07 22:20:55'),
(278, 2, '1', 'LS101399', 2, 94, 1, '2019-10-07 22:21:34', '2019-10-07 22:21:34'),
(279, 1, '1', 'BC101399', 1, 95, 1, '2019-10-07 22:24:49', '2019-10-07 22:24:49'),
(280, 3, '1', 'CL101399', 1, 95, 1, '2019-10-07 22:24:49', '2019-10-07 22:24:49'),
(281, 4, '1', 'BN101399', 1, 95, 1, '2019-10-07 22:24:49', '2019-10-07 22:24:49'),
(282, 6, '1', 'FVO101399', 1, 95, 1, '2019-10-07 22:24:49', '2019-10-07 22:24:49'),
(283, 3, '1', 'CL101399', 1, 96, 1, '2019-10-11 20:01:54', '2019-10-11 20:01:54'),
(284, 4, '1', 'BN101399', 1, 96, 1, '2019-10-11 20:01:54', '2019-10-11 20:01:54'),
(285, 2, '1', 'LS101419', 60, 97, 1, '2019-10-11 20:55:23', '2019-10-11 20:55:23'),
(286, 3, '1', 'CL101419', 60, 97, 1, '2019-10-11 20:55:23', '2019-10-11 20:55:23'),
(287, 1, '1', 'BC101399', 3, 98, 1, '2019-10-28 21:39:35', '2019-10-28 21:39:35'),
(288, 2, '1', 'LS101399', 3, 98, 1, '2019-10-28 21:39:35', '2019-10-28 21:39:35'),
(289, 3, '1', 'CL101399', 3, 98, 1, '2019-10-28 21:39:35', '2019-10-28 21:39:35'),
(290, 4, '1', 'BN101399', 3, 98, 1, '2019-10-28 21:39:35', '2019-10-28 21:39:35'),
(291, 6, '1', 'FVO101399', 3, 98, 1, '2019-11-04 11:59:14', '2019-11-04 11:59:14'),
(292, 1, '1', 'BC101399', 2, 99, 1, '2019-10-29 05:13:00', '2019-10-29 05:13:00'),
(293, 2, '1', 'LS101399', 2, 99, 1, '2019-10-29 05:13:00', '2019-10-29 05:13:00'),
(294, 3, '1', 'CL101399', 3, 99, 1, '2019-10-29 05:13:00', '2019-10-29 05:13:00'),
(295, 4, '1', 'BN101399', 3, 99, 1, '2019-10-29 05:13:00', '2019-10-29 05:13:00'),
(296, 1, '1', 'BC101399', 1, 100, 1, '2019-10-31 19:35:14', '2019-10-31 19:35:14'),
(297, 2, '1', 'LS101399', 1, 100, 1, '2019-10-31 19:35:14', '2019-10-31 19:35:14'),
(298, 3, '1', 'CL101399', 4, 100, 1, '2019-10-31 19:35:14', '2019-10-31 19:35:14'),
(299, 4, '1', 'BN101399', 3, 100, 1, '2019-10-31 19:35:14', '2019-10-31 19:35:14'),
(300, 1, '1', 'BC101399', 6, 101, 1, '2019-11-04 12:10:21', '2019-11-04 12:10:21'),
(301, 2, '1', 'LS101399', 3, 101, 1, '2019-10-31 19:40:52', '2019-10-31 19:40:52'),
(302, 3, '1', 'CL101399', 7, 101, 1, '2019-10-31 19:40:52', '2019-10-31 19:40:52'),
(303, 4, '1', 'BN101399', 3, 101, 1, '2019-10-31 19:40:52', '2019-10-31 19:40:52'),
(304, 6, '1', 'FVO101399', 1, 101, 1, '2019-10-31 19:40:52', '2019-10-31 19:40:52'),
(305, 1, '1', 'BC101399', 1, 102, 1, '2019-11-07 19:16:32', '2019-11-07 19:16:32'),
(306, 2, '1', 'LS101399', 13, 102, 1, '2019-10-31 19:46:24', '2019-10-31 19:46:24'),
(307, 3, '1', 'CL101399', 1, 102, 1, '2019-11-04 12:03:31', '2019-11-04 12:03:31'),
(308, 4, '1', 'BN101399', 2, 102, 1, '2019-11-07 19:16:43', '2019-11-07 19:16:43'),
(318, 2, '1', 'LS101449', 65, 105, 1, '2019-11-04 08:07:19', '2019-11-04 08:07:19'),
(319, 3, '1', 'CL101449', 55, 105, 1, '2019-11-04 08:07:19', '2019-11-04 08:07:19'),
(322, 1, '1', 'BC101399', 2, 107, 1, '2019-11-07 23:58:59', '2019-11-07 23:58:59'),
(323, 4, '1', 'BN101399', 4, 107, 1, '2019-11-07 23:58:59', '2019-11-07 23:58:59'),
(324, 1, '1', 'BC101399', 1, 108, 1, '2019-11-08 00:11:15', '2019-11-08 00:11:15'),
(325, 2, '1', 'LS101399', 1, 108, 1, '2019-11-08 00:11:15', '2019-11-08 00:11:15'),
(326, 4, '1', 'BN101399', 1, 108, 1, '2019-11-08 00:11:15', '2019-11-08 00:11:15'),
(327, 6, '1', 'FVO101399', 1, 108, 1, '2019-11-08 00:11:15', '2019-11-08 00:11:15'),
(328, 1, '1', 'BC101399', 3, 109, 1, '2019-11-08 00:15:20', '2019-11-08 00:15:20'),
(329, 2, '1', 'LS101399', 3, 109, 1, '2019-11-08 00:15:21', '2019-11-08 00:15:21'),
(330, 3, '1', 'CL101399', 4, 109, 1, '2019-11-08 00:15:21', '2019-11-08 00:15:21'),
(331, 4, '1', 'BN101399', 4, 109, 1, '2019-11-08 00:15:21', '2019-11-08 00:15:21'),
(332, 6, '1', 'FVO101399', 1, 109, 1, '2019-11-08 00:15:21', '2019-11-08 00:15:21'),
(333, 2, '1', 'LS101479', 70, 110, 1, '2019-11-26 22:36:49', '2019-11-26 22:36:49'),
(334, 3, '1', 'CL101479', 50, 110, 1, '2019-11-26 22:36:49', '2019-11-26 22:36:49'),
(335, 2, '1', 'LS101499', 70, 111, 1, '2019-12-17 20:24:10', '2019-12-17 20:24:10'),
(336, 3, '1', 'CL101499', 50, 111, 1, '2019-12-17 20:24:10', '2019-12-17 20:24:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents`
--

CREATE TABLE `documents` (
  `id_doc` int(10) UNSIGNED NOT NULL,
  `doc_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_tabla` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_status` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `documents`
--

INSERT INTO `documents` (`id_doc`, `doc_description`, `doc_tabla`, `id_status`, `created_at`, `updated_at`) VALUES
(1, 'Certificado de Libre Venta', 'Export', 1, '2019-02-25 23:59:11', '2019-02-26 19:53:56'),
(2, 'Permiso de Exportacion', 'Export', 1, '2019-01-18 17:38:55', '2019-02-25 23:58:28'),
(3, 'Factura Caribbean Dairy, S.A', 'Export', 1, '2019-01-25 23:24:18', '2019-02-26 19:54:41'),
(4, 'Packing List', 'Export', 1, '2019-02-26 19:56:12', '2019-02-26 19:56:12'),
(5, 'Certificado de Origen - VENEZUELA', 'Export', 1, '2019-02-26 19:56:41', '2019-05-09 19:21:59'),
(6, 'Guia Aerea', 'Export', 1, '2019-02-26 19:56:50', '2019-02-26 19:56:50'),
(7, 'Cargo Release', 'Airport', 1, '2019-05-20 15:36:06', '2019-05-20 15:36:06'),
(8, 'Delivery Order', 'Airport', 1, '2019-02-13 19:47:00', '2019-02-26 20:05:52'),
(9, 'Signed BOL', 'Sale', 1, '2019-02-12 18:27:20', '2019-02-26 22:32:23'),
(10, 'Warehouse document', 'Warehouse', 1, '2019-04-26 16:47:27', '2019-04-26 16:47:27'),
(11, 'Certificado de Origen - HATO EL OSO', 'Export', 1, '2019-05-09 19:21:19', '2019-05-09 19:21:19'),
(12, 'Airport Cargo Payment', 'Airport', 1, '2019-05-17 18:18:14', '2019-05-20 19:40:13'),
(13, 'FDA HOLD LETTER', 'FDA', 1, '2019-05-20 18:23:06', '2019-05-20 19:18:58'),
(14, 'FDA RELEASE 2', 'FDA', 1, '2019-05-20 18:23:14', '2019-05-20 19:19:28'),
(15, 'Entry Summary', 'Airport', 1, '2019-05-20 19:09:35', '2019-05-20 19:09:35'),
(16, 'Entry Invoice', 'Airport', 1, '2019-05-20 19:10:20', '2019-05-20 19:10:20'),
(17, 'Laboratory analysis', 'Laboratory', 1, '2019-07-23 00:17:48', '2019-07-23 00:17:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doc_inbound_orders`
--

CREATE TABLE `doc_inbound_orders` (
  `id_dociord` int(10) UNSIGNED NOT NULL,
  `dociord_ruta` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dociord_pallet` int(11) DEFAULT NULL,
  `dociord_lot` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_doc` int(10) UNSIGNED DEFAULT NULL,
  `id_ciord` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `doc_inbound_orders`
--

INSERT INTO `doc_inbound_orders` (`id_dociord`, `dociord_ruta`, `dociord_pallet`, `dociord_lot`, `id_doc`, `id_ciord`, `created_at`, `updated_at`) VALUES
(1, '1557320399Certificado de Libre Venta.pdf', NULL, NULL, 1, 1, '2019-05-08 16:59:59', '2019-05-08 16:59:59'),
(2, '1557320399CDIS N149.410.PDF', NULL, NULL, 2, 1, '2019-05-08 16:59:59', '2019-05-08 16:59:59'),
(3, '1557320399Factura Caribbean Dairy 224.pdf', NULL, NULL, 3, 1, '2019-05-08 16:59:59', '2019-05-08 16:59:59'),
(4, '1557320399PackingListBufUSA 224.pdf', NULL, NULL, 4, 1, '2019-05-08 16:59:59', '2019-05-08 16:59:59'),
(5, '1557320399CDO NA26467.pdf', NULL, NULL, 5, 1, '2019-05-08 16:59:59', '2019-05-08 16:59:59'),
(6, '1557320399guiaaerea.pdf', NULL, NULL, 6, 1, '2019-05-08 16:59:59', '2019-05-08 16:59:59'),
(7, '1557413840Certificado de libre venta.pdf', NULL, NULL, 1, 2, '2019-05-09 18:57:20', '2019-05-09 18:57:20'),
(8, '1557413840CDIS N149413.pdf', NULL, NULL, 2, 2, '2019-05-09 18:57:20', '2019-05-09 18:57:20'),
(9, '1557413840Factura Caribbean Dairy 225.pdf', NULL, NULL, 3, 2, '2019-05-09 18:57:20', '2019-05-09 18:57:20'),
(10, '1557413840PackingListBufUSA 225.pdf', NULL, NULL, 4, 2, '2019-05-09 18:57:20', '2019-05-09 18:57:20'),
(11, '1557413840CDO NA26468.pdf', NULL, NULL, 5, 2, '2019-05-09 18:57:20', '2019-05-09 18:57:20'),
(12, '155741557794660660040_CertificadoOrigen_HatoElOso.pdf', NULL, NULL, 11, 2, '2019-05-09 19:26:17', '2019-05-09 19:26:17'),
(13, '1557417098I13_Entry Summary_NL7-0113951-0-3461.pdf', 1, NULL, 7, 1, '2019-05-09 19:51:38', '2019-05-09 19:51:38'),
(14, '1557417098I13_Destination Delivery Order.pdf', 1, NULL, 8, 1, '2019-05-09 19:51:38', '2019-05-09 19:51:38'),
(15, '1557749657guiaaerea (2).pdf', NULL, NULL, 6, 2, '2019-05-13 16:14:17', '2019-05-13 16:14:17'),
(16, '1557935899I14_NL7-0114017-9-3461.pdf', 1, NULL, 7, 2, '2019-05-15 19:58:19', '2019-05-15 19:58:19'),
(18, '1557935899I14_Destination Delivery Order.pdf', 1, NULL, 8, 2, '2019-05-15 19:58:19', '2019-05-15 19:58:19'),
(19, '1557935899I14_Destination Delivery Order.pdf', 2, NULL, 8, 2, '2019-05-15 19:58:19', '2019-05-15 19:58:19'),
(20, '1558008517Certificados.pdf', NULL, NULL, 1, 3, '2019-05-16 16:08:37', '2019-05-16 16:08:37'),
(21, '1558008517CDIS N149414.pdf', NULL, NULL, 2, 3, '2019-05-16 16:08:37', '2019-05-16 16:08:37'),
(22, '1558008517Factura Caribbean Dairy 226.pdf', NULL, NULL, 3, 3, '2019-05-16 16:08:37', '2019-05-16 16:08:37'),
(23, '1558008517PackingListBufUSA 226.pdf', NULL, NULL, 4, 3, '2019-05-16 16:08:37', '2019-05-16 16:08:37'),
(24, '1558008517CDO NA26470.pdf', NULL, NULL, 5, 3, '2019-05-16 16:08:37', '2019-05-16 16:08:37'),
(25, '155800851794660660051_CertificadoOrigen_HatoElOso.pdf', NULL, NULL, 11, 3, '2019-05-16 16:08:37', '2019-05-16 16:08:37'),
(26, '1558363966AWB94660660051.pdf', NULL, NULL, 6, 3, '2019-05-20 18:52:46', '2019-05-20 18:52:46'),
(27, '1558364206Certificados.pdf', NULL, NULL, 1, 4, '2019-05-20 18:56:46', '2019-05-20 18:56:46'),
(28, '1558364206CDIS N149411.pdf', NULL, NULL, 2, 4, '2019-05-20 18:56:46', '2019-05-20 18:56:46'),
(29, '1558364206Factura Caribbean Dairy 227.pdf', NULL, NULL, 3, 4, '2019-05-20 18:56:46', '2019-05-20 18:56:46'),
(30, '1558364206PackingListBufUSA 227 (002).pdf', NULL, NULL, 4, 4, '2019-05-20 18:56:46', '2019-05-20 18:56:46'),
(31, '1558364206CDO NA26529.pdf', NULL, NULL, 5, 4, '2019-05-20 18:56:46', '2019-05-20 18:56:46'),
(32, '155836420694660660084_CertificadoOrigen_HatoElOso.pdf', NULL, NULL, 11, 4, '2019-05-20 18:56:46', '2019-05-20 18:56:46'),
(33, '1558364868I15_NL7-0114034-4-3461.pdf', NULL, NULL, 7, 3, '2019-05-20 19:07:48', '2019-05-20 19:07:48'),
(34, '1558364868Destination Delivery Order-114034.pdf', 2, NULL, 8, 3, '2019-05-20 19:07:48', '2019-05-20 19:07:48'),
(35, '1558364868I15_DHL-PAYMENT -94660660051.pdf', NULL, NULL, 12, 3, '2019-05-20 19:07:48', '2019-05-20 19:07:48'),
(38, '1558367569I14_Invoices (83464).pdf', NULL, NULL, 16, 2, '2019-05-20 19:52:49', '2019-05-20 19:52:49'),
(39, '1558367621I14_NL7-0114017-9-7501.pdf', NULL, NULL, 15, 2, '2019-05-20 19:53:41', '2019-05-20 19:53:41'),
(40, '1558372405I13_DHL-PAYMENT-946-60660003.pdf', NULL, NULL, 12, 1, '2019-05-20 21:13:25', '2019-05-20 21:13:25'),
(41, '1558372405I13_Invoices (83440).pdf', NULL, NULL, 16, 1, '2019-05-20 21:13:25', '2019-05-20 21:13:25'),
(42, '1558382297Destination Delivery Order-114034.pdf', 1, NULL, 8, 3, '2019-05-20 23:58:17', '2019-05-20 23:58:17'),
(43, '1558382297Entry Summary_NL7-0114034-4-7501.pdf', NULL, NULL, 15, 3, '2019-05-20 23:58:17', '2019-05-20 23:58:17'),
(44, '1558382297I15_Invoices (83486).pdf', NULL, NULL, 16, 3, '2019-05-20 23:58:17', '2019-05-20 23:58:17'),
(45, '1558555762guiaaerea.pdf', NULL, NULL, 6, 4, '2019-05-23 00:09:22', '2019-05-23 00:09:22'),
(46, '1558917685NL7-0114043-5-3461.pdf', NULL, NULL, 7, 4, '2019-05-27 04:41:25', '2019-05-27 04:41:25'),
(47, '1558917685Destination Delivery Order-114043.pdf', 1, NULL, 8, 4, '2019-05-27 04:41:25', '2019-05-27 04:41:25'),
(48, '1558917685payment -dhl 946-60660084.pdf', NULL, NULL, 12, 4, '2019-05-27 04:41:25', '2019-05-27 04:41:25'),
(67, '1559046226Certificados.pdf', NULL, NULL, 1, 5, '2019-05-28 16:23:46', '2019-05-28 16:23:46'),
(68, '1559046226CDIS N149412 (002).pdf', NULL, NULL, 2, 5, '2019-05-28 16:23:46', '2019-05-28 16:23:46'),
(69, '1559046226Factura Caribbean Dairy 228 (002).pdf', NULL, NULL, 3, 5, '2019-05-28 16:23:46', '2019-05-28 16:23:46'),
(70, '1559046226CDO NA26530 (002).pdf', NULL, NULL, 5, 5, '2019-05-28 16:23:46', '2019-05-28 16:23:46'),
(71, '155904622694660663293_CertificadoOrigen_HatoElOso (002).pdf', NULL, NULL, 11, 5, '2019-05-28 16:23:46', '2019-05-28 16:23:46'),
(72, '1559046304PackingListBufUSA 228.pdf', NULL, NULL, 4, 5, '2019-05-28 16:25:04', '2019-05-28 16:25:04'),
(73, '1559054445guiaaerea16.pdf', NULL, NULL, 6, 5, '2019-05-28 18:40:45', '2019-05-28 18:40:45'),
(74, '1559308502I17_NL7-0114078-1-3461.pdf', NULL, NULL, 7, 5, '2019-05-31 17:15:02', '2019-05-31 17:15:02'),
(75, '1559308502I17_Destination Delivery Order.pdf', 1, NULL, 8, 5, '2019-05-31 17:15:02', '2019-05-31 17:15:02'),
(76, '1559308502I17_dhl -94660663293.pdf', NULL, NULL, 12, 5, '2019-05-31 17:15:02', '2019-05-31 17:15:02'),
(77, '1560452393PE NME-002359.pdf', NULL, NULL, 2, 6, '2019-06-13 22:59:53', '2019-06-13 22:59:53'),
(78, '1560452393Factura Caribbean Dairy 229.pdf', NULL, NULL, 3, 6, '2019-06-13 22:59:53', '2019-06-13 22:59:53'),
(79, '1560452393PackingListBufUSA 229.pdf', NULL, NULL, 4, 6, '2019-06-13 22:59:53', '2019-06-13 22:59:53'),
(80, '1560452393CDO NA28466.pdf', NULL, NULL, 5, 6, '2019-06-13 22:59:53', '2019-06-13 22:59:53'),
(81, '156045239394660660095 CertificadoOrigen_HatoElOso.pdf', NULL, NULL, 11, 6, '2019-06-13 22:59:53', '2019-06-13 22:59:53'),
(82, '1560452487Certificados.pdf', NULL, NULL, 1, 6, '2019-06-13 23:01:27', '2019-06-13 23:01:27'),
(83, '1560778988guiaaerea.pdf', NULL, NULL, 6, 6, '2019-06-17 17:43:08', '2019-06-17 17:43:08'),
(84, '1560871598I18_NL7-0114140-9-3461.pdf', NULL, NULL, 7, 6, '2019-06-18 19:26:38', '2019-06-18 19:26:38'),
(85, '1560871599I18_Destination Delivery Order.pdf', 1, NULL, 8, 6, '2019-06-18 19:26:39', '2019-06-18 19:26:39'),
(86, '1560871599I18_dhl-946-60660095.pdf', NULL, NULL, 12, 6, '2019-06-18 19:26:39', '2019-06-18 19:26:39'),
(87, '1560968387FDA Release - 9466060040.pdf', NULL, NULL, 14, 2, '2019-06-19 22:19:47', '2019-06-19 22:19:47'),
(88, '1560968548FDA Hold 9466060040.pdf', NULL, NULL, 13, 2, '2019-06-19 22:22:28', '2019-06-19 22:22:28'),
(89, '1561639101Certificados.pdf', NULL, NULL, 1, 7, '2019-06-27 16:38:21', '2019-06-27 16:38:21'),
(90, '1561639101Permiso Exportacion.pdf', NULL, NULL, 2, 7, '2019-06-27 16:38:21', '2019-06-27 16:38:21'),
(91, '1561747217I19_Factura Caribbean Dairy 230.pdf', NULL, NULL, 3, 7, '2019-06-27 16:38:21', '2019-06-28 22:40:17'),
(92, '1561639101PackingListBufUSA 230 (00000002).pdf', NULL, NULL, 4, 7, '2019-06-27 16:38:21', '2019-06-27 16:38:21'),
(93, '1561639101CDO.pdf', NULL, NULL, 5, 7, '2019-06-27 16:38:21', '2019-06-27 16:38:21'),
(94, '1561639101CertificadoOrigen_HatoElOso 946-60663374 (00000002).pdf', NULL, NULL, 11, 7, '2019-06-27 16:38:21', '2019-06-27 16:38:21'),
(95, '1562095077guia aerea.pdf', NULL, NULL, 6, 7, '2019-07-02 23:17:58', '2019-07-02 23:17:58'),
(96, '1562162858I19_NL7-0114192-0-3461.pdf', NULL, NULL, 7, 7, '2019-07-03 18:07:38', '2019-07-03 18:07:38'),
(97, '1562162859I19Destination Delivery Order-114192.pdf', 1, NULL, 8, 7, '2019-07-03 18:07:39', '2019-07-03 18:07:39'),
(98, '1562162859I19Destination Delivery Order-114192.pdf', 2, NULL, 8, 7, '2019-07-03 18:07:39', '2019-07-03 18:07:39'),
(99, '1562162859I19_PAYMENT-946-60663374.pdf', NULL, NULL, 12, 7, '2019-07-03 18:07:39', '2019-07-03 18:07:39'),
(100, '1562285664I13_NL7-0113951-0-7501.pdf', NULL, NULL, 15, 1, '2019-07-05 04:14:24', '2019-07-05 04:14:24'),
(101, '1562285727I14_DHL PAYMENT_AWB 94660660040 BUFALINDA.PDF', NULL, NULL, 12, 2, '2019-07-05 04:15:27', '2019-07-05 04:15:27'),
(102, '1562287564I17_Invoices (83512).pdf', NULL, NULL, 16, 5, '2019-07-05 04:46:04', '2019-07-05 04:46:04'),
(103, '1562287595I17_NL7-0114078-1-7501.pdf', NULL, NULL, 15, 5, '2019-07-05 04:46:35', '2019-07-05 04:46:35'),
(105, '1562287855Invoices (83499)[1].pdf', NULL, NULL, 16, 4, '2019-07-05 04:50:55', '2019-07-05 04:50:55'),
(106, '1562287995I17_NL7-0114078-1-3461.pdf', NULL, NULL, 15, 6, '2019-07-05 04:53:15', '2019-07-05 04:53:15'),
(107, '1562287995I18_Invoices (83554).pdf', NULL, NULL, 16, 6, '2019-07-05 04:53:15', '2019-07-05 04:53:15'),
(112, '1562608297Invoices (83594).pdf', NULL, NULL, 16, 7, '2019-07-08 21:51:37', '2019-07-08 21:51:37'),
(113, '1562610509I16_Entry Summary_NL7-0114043-5-7501.pdf', NULL, NULL, 15, 4, '2019-07-08 22:28:29', '2019-07-08 22:28:29'),
(114, '1562610553I16_Entry Summary_NL7-0114043-5-7501.pdf', NULL, NULL, 15, 7, '2019-07-08 22:29:13', '2019-07-08 22:29:13'),
(115, '1562948101Certificados-20.pdf', NULL, NULL, 1, 8, '2019-07-12 20:15:01', '2019-07-12 20:15:01'),
(116, '1562948101PE NME-002362.pdf', NULL, NULL, 2, 8, '2019-07-12 20:15:01', '2019-07-12 20:15:01'),
(117, '1562948102Factura Caribbean Dairy 231.pdf', NULL, NULL, 3, 8, '2019-07-12 20:15:02', '2019-07-12 20:15:02'),
(118, '1562948102PackingListBufUSA 231.pdf', NULL, NULL, 4, 8, '2019-07-12 20:15:02', '2019-07-12 20:15:02'),
(119, '1562948102CDO NA26812.pdf', NULL, NULL, 5, 8, '2019-07-12 20:15:02', '2019-07-12 20:15:02'),
(120, '156294810294660663304CertificadoOrigen_HatoElOso.pdf', NULL, NULL, 11, 8, '2019-07-12 20:15:02', '2019-07-12 20:15:02'),
(121, '1563503253I20_NL7-0114234-0-3461(1).pdf', NULL, NULL, 7, 8, '2019-07-19 06:27:33', '2019-07-19 06:27:33'),
(122, '1563503253I20_Destination Delivery Order-114234.pdf', 1, NULL, 8, 8, '2019-07-19 06:27:33', '2019-07-19 06:27:33'),
(123, '1563503253I20_DHL-946-60663304.pdf', NULL, NULL, 12, 8, '2019-07-19 06:27:33', '2019-07-19 06:27:33'),
(136, '1563911928CL201299.pdf', NULL, 'CL201299', 17, 8, '2019-07-23 23:58:48', '2019-07-23 23:58:48'),
(137, '1563911928LS201299.pdf', NULL, 'LS201299', 17, 8, '2019-07-23 23:58:48', '2019-07-23 23:58:48'),
(138, '1564058971Certificados233.pdf', NULL, NULL, 1, 9, '2019-07-25 16:49:31', '2019-07-25 16:49:31'),
(139, '1564058971PE-233.pdf', NULL, NULL, 2, 9, '2019-07-25 16:49:31', '2019-07-25 16:49:31'),
(140, '1564058971Factura Caribbean Dairy 233 (00000002).pdf', NULL, NULL, 3, 9, '2019-07-25 16:49:31', '2019-07-25 16:49:31'),
(141, '1564058971PackingListBufUSA 233 (00000002).pdf', NULL, NULL, 4, 9, '2019-07-25 16:49:31', '2019-07-25 16:49:31'),
(142, '1564059778CDO-233.pdf', NULL, NULL, 5, 9, '2019-07-25 17:02:58', '2019-07-25 17:02:58'),
(143, '156405977894660665426CertificadodeOrigen_HatoElOso..pdf', NULL, NULL, 11, 9, '2019-07-25 17:02:58', '2019-07-25 17:02:58'),
(144, '1564060267BC401169.pdf', NULL, 'BC401169', 17, 1, '2019-07-25 17:11:07', '2019-07-25 17:11:07'),
(145, '1564060267CL401169.pdf', NULL, 'CL401169', 17, 1, '2019-07-25 17:11:07', '2019-07-25 17:11:07'),
(146, '1564060370BN401169.pdf', NULL, 'BN401169', 17, 1, '2019-07-25 17:12:50', '2019-07-25 17:12:50'),
(147, '1564060370LS401169.pdf', NULL, 'LS401169', 17, 1, '2019-07-25 17:12:50', '2019-07-25 17:12:50'),
(148, '1564060575CL501199.pdf', NULL, 'CL501199', 17, 2, '2019-07-25 17:16:15', '2019-07-25 17:16:15'),
(149, '1564060575LS501199.pdf', NULL, 'LS501199', 17, 2, '2019-07-25 17:16:15', '2019-07-25 17:16:15'),
(150, '1564060652BC501199.pdf', NULL, 'BC501199', 17, 2, '2019-07-25 17:17:32', '2019-07-25 17:17:32'),
(151, '1564060652BN501199.pdf', NULL, 'BN501199', 17, 2, '2019-07-25 17:17:32', '2019-07-25 17:17:32'),
(152, '1564060797BN501209.pdf', NULL, 'BN501209', 17, 4, '2019-07-25 17:19:57', '2019-07-25 17:19:57'),
(153, '1564060797LS501209.pdf', NULL, 'LS501209', 17, 4, '2019-07-25 17:19:57', '2019-07-25 17:19:57'),
(154, '1564060862BC501209.pdf', NULL, 'BC501209', 17, 4, '2019-07-25 17:21:02', '2019-07-25 17:21:02'),
(155, '1564060862CL501209.pdf', NULL, 'CL501209', 17, 4, '2019-07-25 17:21:02', '2019-07-25 17:21:02'),
(156, '1564061003BC701219.pdf', NULL, 'BC701219', 17, 5, '2019-07-25 17:23:23', '2019-07-25 17:23:23'),
(157, '1564061003CL701219.pdf', NULL, 'CL701219', 17, 5, '2019-07-25 17:23:23', '2019-07-25 17:23:23'),
(158, '1564061003LS701219.pdf', NULL, 'LS701219', 17, 5, '2019-07-25 17:23:23', '2019-07-25 17:23:23'),
(159, '1564061174BC301249.pdf', NULL, 'BC301249', 17, 6, '2019-07-25 17:26:14', '2019-07-25 17:26:14'),
(160, '1564061174CL301249.pdf', NULL, 'CL301249', 17, 6, '2019-07-25 17:26:14', '2019-07-25 17:26:14'),
(161, '1564061174LS301249.pdf', NULL, 'LS301249', 17, 6, '2019-07-25 17:26:14', '2019-07-25 17:26:14'),
(162, '1564061265BC501269.pdf', NULL, 'BC501269', 17, 7, '2019-07-25 17:27:45', '2019-07-25 17:27:45'),
(163, '1564061265LS501269.pdf', NULL, 'LS501269', 17, 7, '2019-07-25 17:27:45', '2019-07-25 17:27:45'),
(164, '1564061312BN501269.pdf', NULL, 'BN501269', 17, 7, '2019-07-25 17:28:32', '2019-07-25 17:28:32'),
(165, '1564061312CL501269.pdf', NULL, 'CL501269', 17, 7, '2019-07-25 17:28:32', '2019-07-25 17:28:32'),
(166, '1564077282guiaaerea233.pdf', NULL, NULL, 6, 9, '2019-07-25 21:54:42', '2019-07-25 21:54:42'),
(167, '1564078998CL401209.pdf', NULL, 'CL401209', 17, 3, '2019-07-25 22:23:18', '2019-07-25 22:23:18'),
(168, '1564078998LS401209.pdf', NULL, 'LS401209', 17, 3, '2019-07-25 22:23:18', '2019-07-25 22:23:18'),
(169, '1564168996FSO501269.pdf', NULL, 'FSO501269', 17, 7, '2019-07-26 23:23:16', '2019-07-26 23:23:16'),
(170, '1564583633I21_NL7-0114272-0-3461.pdf', NULL, NULL, 7, 9, '2019-07-31 18:33:53', '2019-07-31 18:33:53'),
(171, '1564583633I21_Destination Delivery Order.pdf', 1, NULL, 8, 9, '2019-07-31 18:33:53', '2019-07-31 18:33:53'),
(172, '1564583633I21_Destination Delivery Order.pdf', 2, NULL, 8, 9, '2019-07-31 18:33:53', '2019-07-31 18:33:53'),
(173, '1564583633I21_Destination Delivery Order.pdf', 3, NULL, 8, 9, '2019-07-31 18:33:53', '2019-07-31 18:33:53'),
(174, '1564583633I21_Destination Delivery Order.pdf', 4, NULL, 8, 9, '2019-07-31 18:33:53', '2019-07-31 18:33:53'),
(175, '1564583633I21_Destination Delivery Order.pdf', 5, NULL, 8, 9, '2019-07-31 18:33:53', '2019-07-31 18:33:53'),
(176, '1564583633I21_payment-dhl-946 60665426.pdf', NULL, NULL, 12, 9, '2019-07-31 18:33:53', '2019-07-31 18:33:53'),
(177, '1564583633I21_NL7-0114272-0-7501.pdf', NULL, NULL, 15, 9, '2019-07-31 18:33:53', '2019-07-31 18:33:53'),
(178, '1564583633I21_Invoices (83638).pdf', NULL, NULL, 16, 9, '2019-07-31 18:33:53', '2019-07-31 18:33:53'),
(179, '1564763078I20_NL7-0114234-0-7501.pdf', NULL, NULL, 15, 8, '2019-08-02 20:24:38', '2019-08-02 20:24:38'),
(180, '1564763078I20_Invoices (83622).pdf', NULL, NULL, 16, 8, '2019-08-02 20:24:38', '2019-08-02 20:24:38'),
(181, '1564769506Certificados.pdf', NULL, NULL, 1, 10, '2019-08-02 22:11:46', '2019-08-02 22:11:46'),
(182, '1564769589PE NME-002465.pdf', NULL, NULL, 2, 10, '2019-08-02 22:13:09', '2019-08-02 22:13:09'),
(183, '1564769589Factura Caribbean Dairy 234.pdf', NULL, NULL, 3, 10, '2019-08-02 22:13:09', '2019-08-02 22:13:09'),
(184, '1564769682PackingListBufUSA 234.pdf', NULL, NULL, 4, 10, '2019-08-02 22:14:42', '2019-08-02 22:14:42'),
(185, '1564769682CDO NA27074.pdf', NULL, NULL, 5, 10, '2019-08-02 22:14:42', '2019-08-02 22:14:42'),
(186, '156476982294660665430CertificadoOrigen_HatoElOso.pdf', NULL, NULL, 11, 10, '2019-08-02 22:17:02', '2019-08-02 22:17:02'),
(187, '1564770458guia_aerea.pdf', NULL, NULL, 6, 10, '2019-08-02 22:27:38', '2019-08-02 22:27:38'),
(188, '1565263444I22_PAY-DHL- 946-60665430.pdf', NULL, NULL, 12, 10, '2019-08-08 15:24:05', '2019-08-08 15:24:05'),
(189, '1565263518NL7-0114288-6-7501.pdf', NULL, NULL, 15, 10, '2019-08-08 15:25:18', '2019-08-08 15:25:18'),
(190, '1565263631Invoices (83658).pdf', NULL, NULL, 16, 10, '2019-08-08 15:27:11', '2019-08-08 15:27:11'),
(191, '1565263676I22_Destination Delivery Order.pdf', 1, NULL, 8, 10, '2019-08-08 15:27:56', '2019-08-08 15:27:56'),
(192, '1565263712I22_NL7-0114288-6-3461(2).pdf', NULL, NULL, 7, 10, '2019-08-08 15:28:32', '2019-08-08 15:28:32'),
(193, '1565620043PE NME-002480.pdf', NULL, NULL, 2, 11, '2019-08-12 18:27:23', '2019-08-12 18:27:23'),
(194, '1565620043Factura Caribbean Dairy 235.pdf', NULL, NULL, 3, 11, '2019-08-12 18:27:23', '2019-08-12 18:27:23'),
(195, '1565620195PackingListBufUSA 235.pdf', NULL, NULL, 4, 11, '2019-08-12 18:29:55', '2019-08-12 18:29:55'),
(196, '1565620195CDO NA27076.pdf', NULL, NULL, 5, 11, '2019-08-12 18:29:55', '2019-08-12 18:29:55'),
(197, '156562019594660665485CertificadoOrigen_HatoElOso..pdf', NULL, NULL, 11, 11, '2019-08-12 18:29:55', '2019-08-12 18:29:55'),
(198, '1565620502certificados235.pdf', NULL, NULL, 1, 11, '2019-08-12 18:35:02', '2019-08-12 18:35:02'),
(199, '1565786336guiaaerea.pdf', NULL, NULL, 6, 11, '2019-08-14 16:38:56', '2019-08-14 16:38:56'),
(200, '1565887381I23_NL7-0114325-6-3461.pdf', NULL, NULL, 7, 11, '2019-08-15 20:43:01', '2019-08-15 20:43:01'),
(201, '1565887381I23_Destination Delivery Order-114325.pdf', 1, NULL, 8, 11, '2019-08-15 20:43:01', '2019-08-15 20:43:01'),
(202, '1565887381I23_document(5).pdf', NULL, NULL, 12, 11, '2019-08-15 20:43:01', '2019-08-15 20:43:01'),
(203, '1566240967certificados236.pdf', NULL, NULL, 1, 12, '2019-08-19 22:56:07', '2019-08-19 22:56:07'),
(204, '1566240967PE No ME-002481-2.pdf', NULL, NULL, 2, 12, '2019-08-19 22:56:07', '2019-08-19 22:56:07'),
(205, '1566321469Factura Caribbean Dairy 236.pdf', NULL, NULL, 3, 12, '2019-08-19 22:58:12', '2019-08-20 21:17:49'),
(206, '1566321526PackingListBufUSA 236.pdf', NULL, NULL, 4, 12, '2019-08-19 22:58:12', '2019-08-20 21:18:46'),
(207, '156632132994660665474CertificadoOrigen_HatoElOso..pdf', NULL, NULL, 11, 12, '2019-08-19 22:58:12', '2019-08-20 21:15:29'),
(208, '1566241191CDO NA27032-8.pdf', NULL, NULL, 5, 12, '2019-08-19 22:59:51', '2019-08-19 22:59:51'),
(209, '1566489645NL7-0114325-6-7501.pdf', NULL, NULL, 15, 11, '2019-08-22 20:00:45', '2019-08-22 20:00:45'),
(210, '1566489645Invoices (83681).pdf', NULL, NULL, 16, 11, '2019-08-22 20:00:45', '2019-08-22 20:00:45'),
(211, '1566581091BC301309.pdf', NULL, 'BC301309', 17, 9, '2019-08-23 21:24:51', '2019-08-23 21:24:51'),
(212, '1566581091BN301309.pdf', NULL, 'BN301309', 17, 9, '2019-08-23 21:24:51', '2019-08-23 21:24:51'),
(213, '1566581329CL301309.pdf', NULL, 'CL301309', 17, 9, '2019-08-23 21:28:49', '2019-08-23 21:28:49'),
(214, '1566581329FOV301309.pdf', NULL, 'FOV301309', 17, 9, '2019-08-23 21:28:49', '2019-08-23 21:28:49'),
(215, '1566581329LS301309.pdf', NULL, 'LS301309', 17, 9, '2019-08-23 21:28:49', '2019-08-23 21:28:49'),
(216, '1566581550CL301319.pdf', NULL, 'CL301319', 17, 10, '2019-08-23 21:32:30', '2019-08-23 21:32:30'),
(217, '1566581550LS301319.pdf', NULL, 'LS301319', 17, 10, '2019-08-23 21:32:30', '2019-08-23 21:32:30'),
(218, '1566581723CL101339.pdf', NULL, 'CL101339', 17, 11, '2019-08-23 21:35:23', '2019-08-23 21:35:23'),
(219, '1566581723CL102339.pdf', NULL, 'CL102339', 17, 11, '2019-08-23 21:35:23', '2019-08-23 21:35:23'),
(220, '1566581811LS101339.pdf', NULL, 'LS101339', 17, 11, '2019-08-23 21:36:51', '2019-08-23 21:36:51'),
(221, '1566581811LS102339.pdf', NULL, 'LS102339', 17, 11, '2019-08-23 21:36:51', '2019-08-23 21:36:51'),
(222, '1566591044Guia aerea 236.pdf', NULL, NULL, 6, 12, '2019-08-24 00:10:44', '2019-08-24 00:10:44'),
(223, '1566914166NL7-0114350-4-3461(1).pdf', NULL, NULL, 7, 12, '2019-08-27 17:56:06', '2019-08-27 17:56:06'),
(224, '1566914166Destination Delivery Order.pdf', 1, NULL, 8, 12, '2019-08-27 17:56:06', '2019-08-27 17:56:06'),
(225, '1566914166Destination Delivery Order.pdf', 2, NULL, 8, 12, '2019-08-27 17:56:06', '2019-08-27 17:56:06'),
(226, '1566914166PAY-DHL-94660665474.pdf', NULL, NULL, 12, 12, '2019-08-27 17:56:06', '2019-08-27 17:56:06'),
(227, '1567772203CERTIFICADO DE LIBRE VENTA 237.pdf', NULL, NULL, 1, 13, '2019-09-06 16:16:43', '2019-09-06 16:16:43'),
(228, '1567772203PE NME-002484.pdf', NULL, NULL, 2, 13, '2019-09-06 16:16:43', '2019-09-06 16:16:43'),
(229, '1567772203Factura Caribbean Dairy 237.pdf', NULL, NULL, 3, 13, '2019-09-06 16:16:43', '2019-09-06 16:16:43'),
(230, '1567772256PackingListBufUSA 237.pdf', NULL, NULL, 4, 13, '2019-09-06 16:17:36', '2019-09-06 16:17:36'),
(231, '1567772256CDO NA27042.pdf', NULL, NULL, 5, 13, '2019-09-06 16:17:36', '2019-09-06 16:17:36'),
(232, '156777225694660665511CertificadoOrigen_HatoElOso.pdf', NULL, NULL, 11, 13, '2019-09-06 16:17:36', '2019-09-06 16:17:36'),
(233, '1568043323guiaaerea237.pdf', NULL, NULL, 6, 13, '2019-09-09 19:35:23', '2019-09-09 19:35:23'),
(234, '1568389974NL7-0114399-1-3461(1).pdf', NULL, NULL, 7, 13, '2019-09-13 19:52:54', '2019-09-13 19:52:54'),
(235, '1568389974Destination Delivery Order.pdf', 1, NULL, 8, 13, '2019-09-13 19:52:54', '2019-09-13 19:52:54'),
(236, '1568389977NL7-0114399-1-3461(1).pdf', NULL, NULL, 7, 13, '2019-09-13 19:52:57', '2019-09-13 19:52:57'),
(237, '1568389977Destination Delivery Order.pdf', 1, NULL, 8, 13, '2019-09-13 19:52:57', '2019-09-13 19:52:57'),
(238, '1568390055document.pdf', NULL, NULL, 12, 13, '2019-09-13 19:54:15', '2019-09-13 19:54:15'),
(239, '1568390055NL7-0114399-1-7501.pdf', NULL, NULL, 15, 13, '2019-09-13 19:54:15', '2019-09-13 19:54:15'),
(240, '1568390055Invoices (83732).pdf', NULL, NULL, 16, 13, '2019-09-13 19:54:15', '2019-09-13 19:54:15'),
(241, '1568903090Certificados240.pdf', NULL, NULL, 1, 14, '2019-09-19 18:24:50', '2019-09-19 18:24:50'),
(242, '1568903090PE NME-002629 (00000002).pdf', NULL, NULL, 2, 14, '2019-09-19 18:24:50', '2019-09-19 18:24:50'),
(243, '1568903090Factura Caribbean Dairy 240 (00000002).pdf', NULL, NULL, 3, 14, '2019-09-19 18:24:50', '2019-09-19 18:24:50'),
(244, '1568903090PackingListBufUSA 240 (00000003).pdf', NULL, NULL, 4, 14, '2019-09-19 18:24:50', '2019-09-19 18:24:50'),
(245, '1568903151CDO NA27024 (00000002).pdf', NULL, NULL, 5, 14, '2019-09-19 18:25:51', '2019-09-19 18:25:51'),
(246, '156890315194660665522CertificadoOrigen_HatoElOso (00000002).pdf', NULL, NULL, 11, 14, '2019-09-19 18:25:51', '2019-09-19 18:25:51'),
(247, '1569252772out-1.pdf', NULL, NULL, 6, 14, '2019-09-23 19:32:52', '2019-09-23 19:32:52'),
(248, '1570191918certificados27.pdf', NULL, NULL, 1, 15, '2019-10-04 16:25:18', '2019-10-04 16:25:18'),
(249, '1570191918PE NME-002483.pdf', NULL, NULL, 2, 15, '2019-10-04 16:25:18', '2019-10-04 16:25:18'),
(250, '1570191918Factura Caribbean Dairy 252.pdf', NULL, NULL, 3, 15, '2019-10-04 16:25:18', '2019-10-04 16:25:18'),
(251, '1570191987PackingListBufUSA 252.pdf', NULL, NULL, 4, 15, '2019-10-04 16:26:27', '2019-10-04 16:26:27'),
(252, '1570191987CDO NA27034.pdf', NULL, NULL, 5, 15, '2019-10-04 16:26:27', '2019-10-04 16:26:27'),
(253, '157019198794660665555CertificadoOrigen_HatoElOso..pdf', NULL, NULL, 11, 15, '2019-10-04 16:26:27', '2019-10-04 16:26:27'),
(254, '1570464251guiaarea252.pdf', NULL, NULL, 6, 15, '2019-10-07 20:04:11', '2019-10-07 20:04:11'),
(255, '1570470014NL7-0114438-7-3461.pdf', NULL, NULL, 7, 14, '2019-10-07 21:40:14', '2019-10-07 21:40:14'),
(256, '1570470014Destination Delivery Order.pdf', 1, NULL, 8, 14, '2019-10-07 21:40:14', '2019-10-07 21:40:14'),
(257, '1570470014document.pdf', NULL, NULL, 12, 14, '2019-10-07 21:40:14', '2019-10-07 21:40:14'),
(258, '1570470041NL7-0114438-7-7501.pdf', NULL, NULL, 15, 14, '2019-10-07 21:40:41', '2019-10-07 21:40:41'),
(259, '1570470041Invoices (83757).pdf', NULL, NULL, 16, 14, '2019-10-07 21:40:41', '2019-10-07 21:40:41'),
(260, '1570812744NL7-0114462-7-3461(1).pdf', NULL, NULL, 7, 15, '2019-10-11 20:52:24', '2019-10-11 20:52:24'),
(261, '1570812744Destination Delivery Order.pdf', 1, NULL, 8, 15, '2019-10-11 20:52:24', '2019-10-11 20:52:24'),
(262, '1570812744PC3660466receipt.pdf', NULL, NULL, 12, 15, '2019-10-11 20:52:24', '2019-10-11 20:52:24'),
(263, '1570812765NL7-0114462-7-7501.pdf', NULL, NULL, 15, 15, '2019-10-11 20:52:45', '2019-10-11 20:52:45'),
(264, '1570812765Invoices (83790).pdf', NULL, NULL, 16, 15, '2019-10-11 20:52:45', '2019-10-11 20:52:45'),
(265, '1572353911Factura Caribbean Dairy 253.pdf', NULL, NULL, 3, 16, '2019-10-29 16:58:31', '2019-10-29 16:58:31'),
(266, '1572353911PackingListBufUSA 253.pdf', NULL, NULL, 4, 16, '2019-10-29 16:58:31', '2019-10-29 16:58:31'),
(267, '1572354061certificados28.pdf', NULL, NULL, 1, 16, '2019-10-29 17:01:01', '2019-10-29 17:01:01'),
(268, '1572354061PE N ME-002630.pdf', NULL, NULL, 2, 16, '2019-10-29 17:01:01', '2019-10-29 17:01:01'),
(269, '1572354061CDO N A27044.pdf', NULL, NULL, 5, 16, '2019-10-29 17:01:01', '2019-10-29 17:01:01'),
(270, '157235409294660665614CertificadoOrigen_HatoElOso.pdf', NULL, NULL, 11, 16, '2019-10-29 17:01:32', '2019-10-29 17:01:32'),
(271, '1572456186GUIA AEREA 5614.pdf', NULL, NULL, 6, 16, '2019-10-30 21:23:06', '2019-10-30 21:23:06'),
(272, '1572840336NL7-0114538-4-3461.pdf', NULL, NULL, 7, 16, '2019-11-04 08:05:36', '2019-11-04 08:05:36'),
(273, '1572840336Destination Delivery Order.pdf', 1, NULL, 8, 16, '2019-11-04 08:05:36', '2019-11-04 08:05:36'),
(274, '1572840336PC3762984receipt.pdf', NULL, NULL, 12, 16, '2019-11-04 08:05:36', '2019-11-04 08:05:36'),
(275, '1573153598NL7-0114538-4-7501.pdf', NULL, NULL, 15, 16, '2019-11-07 23:06:38', '2019-11-07 23:06:38'),
(276, '1573153598Invoices (83847).pdf', NULL, NULL, 16, 16, '2019-11-07 23:06:38', '2019-11-07 23:06:38'),
(277, '1573755465certificados254.pdf', NULL, NULL, 1, 17, '2019-11-14 22:17:45', '2019-11-14 22:17:45'),
(278, '1573755465PE N ME-002628.pdf', NULL, NULL, 2, 17, '2019-11-14 22:17:45', '2019-11-14 22:17:45'),
(279, '1573755465PackingListBufUSA 254.pdf', NULL, NULL, 4, 17, '2019-11-14 22:17:45', '2019-11-14 22:17:45'),
(280, '1573755465CDO N A27104.pdf', NULL, NULL, 5, 17, '2019-11-14 22:17:45', '2019-11-14 22:17:45'),
(281, '157375546594660667891CertificadoOrigen_HatoElOso.pdf', NULL, NULL, 11, 17, '2019-11-14 22:17:45', '2019-11-14 22:17:45'),
(282, '1573755649Factura Caribbean Dairy 254.pdf', NULL, NULL, 3, 17, '2019-11-14 22:20:49', '2019-11-14 22:20:49'),
(283, '1574090705guiaaerea.pdf', NULL, NULL, 6, 17, '2019-11-18 19:25:05', '2019-11-18 19:25:05'),
(284, '1574793221NL7-0114578-0-3461.pdf', NULL, NULL, 7, 17, '2019-11-26 22:33:42', '2019-11-26 22:33:42'),
(285, '1574793222Destination Delivery Order.pdf', 1, NULL, 8, 17, '2019-11-26 22:33:42', '2019-11-26 22:33:42'),
(286, '1574793222PC3845212receipt.pdf', NULL, NULL, 12, 17, '2019-11-26 22:33:42', '2019-11-26 22:33:42'),
(287, '1574793222NL7-0114578-0-7501.pdf', NULL, NULL, 15, 17, '2019-11-26 22:33:42', '2019-11-26 22:33:42'),
(288, '1574793222Invoices (83883).pdf', NULL, NULL, 16, 17, '2019-11-26 22:33:42', '2019-11-26 22:33:42'),
(289, '1575043384certificado.pdf', NULL, NULL, 1, 18, '2019-11-29 20:03:04', '2019-11-29 20:03:04'),
(290, '1575043384PE N ME-002631.pdf', NULL, NULL, 2, 18, '2019-11-29 20:03:04', '2019-11-29 20:03:04'),
(291, '1575043384Factura Caribbean Dairy 255.pdf', NULL, NULL, 3, 18, '2019-11-29 20:03:04', '2019-11-29 20:03:04'),
(292, '1575043384PackingListBufUSA 255.pdf', NULL, NULL, 4, 18, '2019-11-29 20:03:04', '2019-11-29 20:03:04'),
(293, '1575043384CDO No. A27105.pdf', NULL, NULL, 5, 18, '2019-11-29 20:03:05', '2019-11-29 20:03:05'),
(294, '157504338494660667913CertificadoOrigen_HatoElOso.pdf', NULL, NULL, 11, 18, '2019-11-29 20:03:05', '2019-11-29 20:03:05'),
(295, '1575372538guiaaerea255.pdf', NULL, NULL, 6, 18, '2019-12-03 15:28:59', '2019-12-03 15:28:59'),
(296, '1576599618NL7-0114620-0-3461.pdf', NULL, NULL, 7, 18, '2019-12-17 20:20:18', '2019-12-17 20:20:18'),
(297, '1576599618Destination Delivery Order-114620.pdf', 1, NULL, 8, 18, '2019-12-17 20:20:18', '2019-12-17 20:20:18'),
(298, '1576599618946-60667913-DHL.pdf', NULL, NULL, 12, 18, '2019-12-17 20:20:18', '2019-12-17 20:20:18'),
(299, '1576599618NL7-0114620-0-7501.pdf', NULL, NULL, 15, 18, '2019-12-17 20:20:18', '2019-12-17 20:20:18'),
(300, '1576599618Invoices (83916).pdf', NULL, NULL, 16, 18, '2019-12-17 20:20:18', '2019-12-17 20:20:18'),
(301, '1576599626NL7-0114620-0-3461.pdf', NULL, NULL, 7, 18, '2019-12-17 20:20:26', '2019-12-17 20:20:26'),
(302, '1576599626Destination Delivery Order-114620.pdf', 1, NULL, 8, 18, '2019-12-17 20:20:26', '2019-12-17 20:20:26'),
(303, '1576599626946-60667913-DHL.pdf', NULL, NULL, 12, 18, '2019-12-17 20:20:26', '2019-12-17 20:20:26'),
(304, '1576599626NL7-0114620-0-7501.pdf', NULL, NULL, 15, 18, '2019-12-17 20:20:26', '2019-12-17 20:20:26'),
(305, '1576599626Invoices (83916).pdf', NULL, NULL, 16, 18, '2019-12-17 20:20:26', '2019-12-17 20:20:26'),
(306, '1581533940CL101379.pdf', NULL, 'CL101379', 17, 13, '2020-02-12 22:59:00', '2020-02-12 22:59:00'),
(307, '1581533940LS101379.pdf', NULL, 'LS101379', 17, 13, '2020-02-12 22:59:00', '2020-02-12 22:59:00'),
(308, '1581535379BC301349.pdf', NULL, 'BC301349', 17, 12, '2020-02-12 23:22:59', '2020-02-12 23:22:59'),
(309, '1581535379BN301349.pdf', NULL, 'BN301349', 17, 12, '2020-02-12 23:22:59', '2020-02-12 23:22:59'),
(310, '1581535379CL301349.pdf', NULL, 'CL301349', 17, 12, '2020-02-12 23:22:59', '2020-02-12 23:22:59'),
(311, '1581535379CL302349.pdf', NULL, 'CL302349', 17, 12, '2020-02-12 23:22:59', '2020-02-12 23:22:59'),
(312, '1581535379FOV301349.pdf', NULL, 'FOV301349', 17, 12, '2020-02-12 23:22:59', '2020-02-12 23:22:59'),
(313, '1581535379LS301349.pdf', NULL, 'LS301349', 17, 12, '2020-02-12 23:22:59', '2020-02-12 23:22:59'),
(314, '1581535379LS302349.pdf', NULL, 'LS302349', 17, 12, '2020-02-12 23:22:59', '2020-02-12 23:22:59'),
(315, '1581536404BC101399.pdf', NULL, 'BC101399', 17, 14, '2020-02-12 23:40:04', '2020-02-12 23:40:04'),
(316, '1581536404BN101399.pdf', NULL, 'BN101399', 17, 14, '2020-02-12 23:40:04', '2020-02-12 23:40:04'),
(317, '1581536404CL101399.pdf', NULL, 'CL101399', 17, 14, '2020-02-12 23:40:04', '2020-02-12 23:40:04'),
(318, '1581536404LS101399.pdf', NULL, 'LS101399', 17, 14, '2020-02-12 23:40:04', '2020-02-12 23:40:04'),
(319, '1581536564CL101419.pdf', NULL, 'CL101419', 17, 15, '2020-02-12 23:42:44', '2020-02-12 23:42:44'),
(320, '1581536564LS101419.pdf', NULL, 'LS101419', 17, 15, '2020-02-12 23:42:44', '2020-02-12 23:42:44'),
(321, '1581536686CL101449.pdf', NULL, 'CL101449', 17, 16, '2020-02-12 23:44:46', '2020-02-12 23:44:46'),
(322, '1581536686LS101449.pdf', NULL, 'LS101449', 17, 16, '2020-02-12 23:44:46', '2020-02-12 23:44:46'),
(323, '1581537016CL101449.pdf', NULL, 'CL101499', 17, 18, '2020-02-12 23:50:16', '2020-02-12 23:50:16'),
(324, '1581537016LS101449.pdf', NULL, 'LS101499', 17, 18, '2020-02-12 23:50:16', '2020-02-12 23:50:16'),
(325, '1581537162CL101479.pdf', NULL, 'CL101479', 17, 17, '2020-02-12 23:52:42', '2020-02-12 23:52:42'),
(326, '1581537162LS101479.pdf', NULL, 'LS101479', 17, 17, '2020-02-12 23:52:42', '2020-02-12 23:52:42'),
(327, '1581537321FVO101399.pdf', NULL, 'FVO101399', 17, 14, '2020-02-12 23:55:21', '2020-02-12 23:55:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doc_sale_inventory`
--

CREATE TABLE `doc_sale_inventory` (
  `id_docsinven` int(10) UNSIGNED NOT NULL,
  `docsinven_ruta` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_doc` int(10) UNSIGNED DEFAULT NULL,
  `id_csale_inventory` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `doc_sale_inventory`
--

INSERT INTO `doc_sale_inventory` (`id_docsinven`, `docsinven_ruta`, `id_doc`, `id_csale_inventory`, `created_at`, `updated_at`) VALUES
(4, '15574207591125_MX-M6070_20190425_150806.pdf', 9, 3, '2019-05-09 20:52:39', '2019-05-09 20:52:39'),
(5, '15574210901126_MX-M6070_20190425_151124.pdf', 9, 4, '2019-05-09 20:58:10', '2019-05-09 20:58:10'),
(6, '15574213651127_MX-M6070_20190429_115310.pdf', 9, 5, '2019-05-09 21:02:45', '2019-05-09 21:02:45'),
(7, '15574215231128_MX-M6070_20190426_093218.pdf', 9, 6, '2019-05-09 21:05:23', '2019-05-09 21:05:23'),
(8, '15574216251129_MX-M6070_20190428_154102.pdf', 9, 7, '2019-05-09 21:07:05', '2019-05-09 21:07:05'),
(9, '15574217871131_MX-M6070_20190507_142138.pdf', 9, 8, '2019-05-09 21:09:47', '2019-05-09 21:09:47'),
(10, '15574227461130_MX-M6070_20190430_191632.pdf', 9, 14, '2019-05-09 21:25:46', '2019-05-09 21:25:46'),
(11, '15574229641134_MX-M6070_20190506_164043.pdf', 9, 11, '2019-05-09 21:29:24', '2019-05-09 21:29:24'),
(12, '15574230731135_MX-M6070_20190507_142156.pdf', 9, 12, '2019-05-09 21:31:13', '2019-05-09 21:31:13'),
(13, '15574232261132_1133_MX-M6070_20190506_164019.pdf', 9, 9, '2019-05-09 21:33:46', '2019-05-09 21:33:46'),
(14, '15574232631132_1133_MX-M6070_20190506_164019.pdf', 9, 10, '2019-05-09 21:34:23', '2019-05-09 21:34:23'),
(15, '15574274461123_MX-M6070_20190425_150702.pdf', 9, 1, '2019-05-09 22:44:06', '2019-05-09 22:44:06'),
(16, '15575040251136_MX-M6070_20190509_135639.pdf', 9, 13, '2019-05-10 20:00:25', '2019-05-10 20:00:25'),
(17, '15603585581124_MX-M6070_20190425_151055.pdf', 9, 2, '2019-06-12 20:55:58', '2019-06-12 20:55:58'),
(18, '15603593901146_MX-M6070_20190527_180718.pdf', 9, 26, '2019-06-12 21:09:50', '2019-06-12 21:09:50'),
(19, '15609771951137_MX-M6070_20190513_164709.pdf', 9, 17, '2019-06-20 00:46:35', '2019-06-20 00:46:35'),
(20, '15609771981137_MX-M6070_20190513_164709.pdf', 9, 17, '2019-06-20 00:46:38', '2019-06-20 00:46:38'),
(21, '15609772261138_MX-M6070_20190513_223606.pdf', 9, 18, '2019-06-20 00:47:06', '2019-06-20 00:47:06'),
(22, '15609772651139_MX-M6070_20190514_192226.pdf', 9, 19, '2019-06-20 00:47:45', '2019-06-20 00:47:45'),
(23, '15609772891141_MX-M6070_20190517_212252.pdf', 9, 20, '2019-06-20 00:48:09', '2019-06-20 00:48:09'),
(24, '15609773141143_MX-M6070_20190521_154619.pdf', 9, 22, '2019-06-20 00:48:34', '2019-06-20 00:48:34'),
(25, '15609773381149_MX-M6070_20190529_144959.pdf', 9, 29, '2019-06-20 00:48:58', '2019-06-20 00:48:58'),
(26, '15609773691155_MX-M6070_20190605_140559.pdf', 9, 32, '2019-06-20 00:49:29', '2019-06-20 00:49:29'),
(27, '15609775021156_MX-M6070_20190613_095739.pdf', 9, 35, '2019-06-20 00:51:43', '2019-06-20 00:51:43'),
(28, '15609776331150_MX-M6070_20190529_144929.pdf', 9, 30, '2019-06-20 00:53:53', '2019-06-20 00:53:53'),
(29, '15609776971142_MX-M6070_20190521_154301.pdf', 9, 23, '2019-06-20 00:54:57', '2019-06-20 00:54:57'),
(30, '15609777241153_MX-M6070_20190531_101518.pdf', 9, 31, '2019-06-20 00:55:24', '2019-06-20 00:55:24'),
(31, '15609778601148_MX-M6070_20190529_144757.pdf', 9, 28, '2019-06-20 00:57:40', '2019-06-20 00:57:40'),
(32, '15609778811145_MX-M6070_20190522_195116.pdf', 9, 25, '2019-06-20 00:58:01', '2019-06-20 00:58:01'),
(33, '15609779021144_MX-M6070_20190522_132822.pdf', 9, 24, '2019-06-20 00:58:22', '2019-06-20 00:58:22'),
(34, '15625881251160_MX-M6070_20190620_1438561.pdf', 9, 38, '2019-07-08 16:15:25', '2019-07-08 16:15:25'),
(35, '15625881871159_MX-M6070_20190619_145010.pdf', 9, 36, '2019-07-08 16:16:27', '2019-07-08 16:16:27'),
(36, '15625882551169_MX-M6070_20190703_120956.pdf', 9, 55, '2019-07-08 16:17:35', '2019-07-08 16:17:35'),
(37, '15625882841161_MX-M6070_20190619_144923.pdf', 9, 37, '2019-07-08 16:18:04', '2019-07-08 16:18:04'),
(38, '15625883191162_MX-M6070_20190619_145105.pdf', 9, 39, '2019-07-08 16:18:39', '2019-07-08 16:18:39'),
(39, '15625883461164_MX-M6070_20190626_134452.pdf', 9, 46, '2019-07-08 16:19:06', '2019-07-08 16:19:06'),
(40, '15625883831165_MX-M6070_20190702_175935.pdf', 9, 54, '2019-07-08 16:19:43', '2019-07-08 16:19:43'),
(41, '15646826681184_MX-M6070_20190731_144828.pdf', 9, 64, '2019-08-01 22:04:28', '2019-08-01 22:04:28'),
(42, '15646826901183_MX-M6070_20190731_145100.pdf', 9, 63, '2019-08-01 22:04:50', '2019-08-01 22:04:50'),
(43, '15646827621182_MX-M6070_20190730_141627.pdf', 9, 62, '2019-08-01 22:06:02', '2019-08-01 22:06:02'),
(44, '15646827881180_MX-M6070_20190730_141658.pdf', 9, 61, '2019-08-01 22:06:28', '2019-08-01 22:06:28'),
(45, '15646828111178_MX-M6070_20190730_141609.pdf', 9, 60, '2019-08-01 22:06:51', '2019-08-01 22:06:51'),
(46, '15646828341176_MX-M6070_20190726_221645.pdf', 9, 59, '2019-08-01 22:07:14', '2019-08-01 22:07:14'),
(47, '15646828591175_MX-M6070_20190719_174557.pdf', 9, 58, '2019-08-01 22:07:39', '2019-08-01 22:07:39'),
(48, '15647614721166_MX-M6070_20190628_132953.pdf', 9, 47, '2019-08-02 19:57:52', '2019-08-02 19:57:52'),
(49, '15650922041167_MX-M6070_20190701_131926.pdf', 9, 48, '2019-08-06 15:50:04', '2019-08-06 15:50:04'),
(50, '15650923431168_MX-M6070_20190701_131833.pdf', 9, 49, '2019-08-06 15:52:23', '2019-08-06 15:52:23'),
(51, '15650924941170_MX-M6070_20190715_140631.pdf', 9, 51, '2019-08-06 15:54:54', '2019-08-06 15:54:54'),
(52, '15650926181158_MX-M6070_20190709_154430.pdf', 9, 53, '2019-08-06 15:56:58', '2019-08-06 15:56:58'),
(53, '15650927121172_MX-M6070_20190711_132155.pdf', 9, 56, '2019-08-06 15:58:32', '2019-08-06 15:58:32'),
(54, '15650928111174_MX-M6070_20190715_140842.pdf', 9, 57, '2019-08-06 16:00:11', '2019-08-06 16:00:11'),
(55, '15650928711185_MX-M6070_20190801_142155.pdf', 9, 65, '2019-08-06 12:18:42', '2019-08-06 12:18:42'),
(56, '15650930701171_MX-M6070_20190708_160953.pdf', 9, 67, '2019-08-06 16:04:30', '2019-08-06 16:04:30'),
(57, '15664880551187_MX-M6070_20190809_213505.pdf', 9, 66, '2019-08-22 19:34:15', '2019-08-22 19:34:15'),
(58, '15664881441189_MX-M6070_20190805_150413.pdf', 9, 68, '2019-08-22 19:35:44', '2019-08-22 19:35:44'),
(59, '15664881651191_MX-M6070_20190806_155832.pdf', 9, 70, '2019-08-22 19:36:05', '2019-08-22 19:36:05'),
(60, '15664882191193_MX-M6070_20190808_140328.pdf', 9, 72, '2019-08-22 19:36:59', '2019-08-22 19:36:59'),
(61, '15664882451198_MX-M6070_20190816_205939.pdf', 9, 78, '2019-08-22 19:37:25', '2019-08-22 19:37:25'),
(62, '15664883521190_MX-M6070_20190805_150907.pdf', 9, 69, '2019-08-22 19:39:12', '2019-08-22 19:39:12'),
(63, '15664883931192_MX-M6070_20190808_181845.pdf', 9, 71, '2019-08-22 19:39:53', '2019-08-22 19:39:53'),
(64, '15664884141195_MX-M6070_20190815_181834.pdf', 9, 75, '2019-08-22 19:40:14', '2019-08-22 19:40:14'),
(65, '15664884451186_MX-M6070_20190807_120243.pdf', 9, 73, '2019-08-22 19:40:45', '2019-08-22 19:40:45'),
(66, '15664884641197_MX-M6070_20190816_205356.pdf', 9, 77, '2019-08-22 19:41:04', '2019-08-22 19:41:04'),
(67, '15664884941194_MX-M6070_20190813_185213.pdf', 9, 74, '2019-08-22 19:41:34', '2019-08-22 19:41:34'),
(68, '15664885231196_MX-M6070_20190816_205624.pdf', 9, 76, '2019-08-22 19:42:03', '2019-08-22 19:42:03'),
(69, '15664885361196_MX-M6070_20190816_205624.pdf', 9, 76, '2019-08-22 19:42:16', '2019-08-22 19:42:16'),
(70, '15699462101210_MX-M6070_20190917_154922.pdf', 9, 89, '2019-10-01 20:10:10', '2019-10-01 20:10:10'),
(71, '15699481821211_MX-M6070_20190924_113203.pdf', 9, 90, '2019-10-01 20:43:02', '2019-10-01 20:43:02'),
(72, '15699535241201_MX-M6070_20190827_153300.pdf', 9, 79, '2019-10-01 22:12:04', '2019-10-01 22:12:04'),
(73, '15699543321199_MX-M6070_20190827_153134.pdf', 9, 81, '2019-10-01 22:25:32', '2019-10-01 22:25:32'),
(74, '15699544791202_MX-M6070_20190828_113016[1].pdf', 9, 82, '2019-10-01 22:27:59', '2019-10-01 22:27:59'),
(75, '15699547631205_MX-M6070_20190905_120321.pdf', 9, 85, '2019-10-01 22:32:43', '2019-10-01 22:32:43'),
(76, '15699549471206_MX-M6070_20190911_134213.pdf', 9, 86, '2019-10-01 22:35:47', '2019-10-01 22:35:47'),
(77, '15704695821200_MX-M6070_20190827_153620.pdf', 9, 80, '2019-10-07 21:33:02', '2019-10-07 21:33:02'),
(78, '15704696331203_MX-M6070_20190828_112946.pdf', 9, 83, '2019-10-07 21:33:53', '2019-10-07 21:33:53'),
(79, '15704696891207_MX-M6070_20190913_111117.pdf', 9, 87, '2019-10-07 21:34:49', '2019-10-07 21:34:49'),
(80, '15704697241209_MX-M6070_20190919_120103.pdf', 9, 88, '2019-10-07 21:35:24', '2019-10-07 21:35:24'),
(81, '15704708931208_MX-M6070_20190916_131839.pdf', 9, 92, '2019-10-07 21:54:53', '2019-10-07 21:54:53'),
(82, '15704712931212_MX-M6070_20191001_115117.pdf', 9, 93, '2019-10-07 22:01:33', '2019-10-07 22:01:33'),
(83, '15704725571213_MX-M6070_20191002_113551.pdf', 9, 94, '2019-10-07 22:22:37', '2019-10-07 22:22:37'),
(84, '15725357681215_MX-M6070_20191014_114439.pdf', 9, 97, '2019-10-31 19:29:28', '2019-10-31 19:29:28'),
(85, '15725358011216_MX-M6070_20191011_150946.pdf', 9, 96, '2019-10-31 19:30:01', '2019-10-31 19:30:01'),
(86, '15725359601219_MX-M6070_20191030_150102.pdf', 9, 99, '2019-10-31 19:32:40', '2019-10-31 19:32:40'),
(87, '15725361341220_MX-M6070_20191030_150249.pdf', 9, 100, '2019-10-31 19:35:34', '2019-10-31 19:35:34'),
(88, '15728399641214_MX-M6070_20191009_092720.pdf', 9, 95, '2019-11-04 07:59:24', '2019-11-04 07:59:24'),
(89, '15728400081218_MX-M6070_20191031_160109.pdf', 9, 98, '2019-11-04 08:00:08', '2019-11-04 08:00:08'),
(90, '15728401321221_MX-M6070_20191031_193243.pdf', 9, 101, '2019-11-04 08:02:12', '2019-11-04 08:02:12'),
(91, '15728402521222_MX-M6070_20191101_184308.pdf', 9, 102, '2019-11-04 08:04:12', '2019-11-04 08:04:12'),
(92, '15731536291225_MX-M6070_20191104_124356.pdf', 9, 105, '2019-11-07 23:07:09', '2019-11-07 23:07:09'),
(93, '15731567841223_MX-M6070_20191104_124338.pdf', 9, 107, '2019-11-07 23:59:44', '2019-11-07 23:59:44'),
(94, '15747930971217_MX-M6070_20191016_144747.pdf', 9, 109, '2019-11-26 22:31:37', '2019-11-26 22:31:37'),
(95, '15747931281224_MX-M6070_20191104_124316.pdf', 9, 108, '2019-11-26 22:32:08', '2019-11-26 22:32:08'),
(96, '15747934271226_MX-M6070_20191122_190522.pdf', 9, 110, '2019-11-26 22:37:07', '2019-11-26 22:37:07'),
(97, '1576599917MX-M6070_20191204_183408.pdf', 9, 111, '2019-12-17 20:25:17', '2019-12-17 20:25:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doc_warehouse`
--

CREATE TABLE `doc_warehouse` (
  `id_docwarehouse` int(10) UNSIGNED NOT NULL,
  `docware_ruta` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docware_pallet` int(11) DEFAULT NULL,
  `docware_lot` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docware_inborders` int(11) NOT NULL,
  `id_doc` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `doc_warehouse`
--

INSERT INTO `doc_warehouse` (`id_docwarehouse`, `docware_ruta`, `docware_pallet`, `docware_lot`, `docware_inborders`, `id_doc`, `created_at`, `updated_at`) VALUES
(1, '1557417407I13_ARRIV94660660003_0003.pdf', 1, 'CP401169', 1, 10, '2019-05-09 19:56:47', '2019-05-09 19:56:47'),
(2, '1557417407I13_ARRIV94660660003_0003.pdf', 1, 'BN401169', 1, 10, '2019-05-09 19:56:47', '2019-05-09 19:56:47'),
(3, '1557417407I13_ARRIV94660660003_0003.pdf', 1, 'LS401169', 1, 10, '2019-05-09 19:56:47', '2019-05-09 19:56:47'),
(4, '1557417407I13_ARRIV94660660003_0003.pdf', 1, 'BC401169', 1, 10, '2019-05-09 19:56:47', '2019-05-09 19:56:47'),
(5, '1557417407I13_ARRIV94660660003_0003.pdf', 1, 'CL401169', 1, 10, '2019-05-09 19:56:47', '2019-05-09 19:56:47'),
(120, '1562606619I14_WarehouseDocument.pdf', 1, 'LS501199', 2, 10, '2019-07-08 21:23:39', '2019-07-08 21:23:39'),
(121, '1562606619I14_WarehouseDocument.pdf', 2, 'CL501199', 2, 10, '2019-07-08 21:23:39', '2019-07-08 21:23:39'),
(122, '1562606619I14_WarehouseDocument.pdf', 2, 'BN501199', 2, 10, '2019-07-08 21:23:39', '2019-07-08 21:23:39'),
(123, '1562606619I14_WarehouseDocument.pdf', 2, 'BC501199', 2, 10, '2019-07-08 21:23:39', '2019-07-08 21:23:39'),
(124, '1562606802I15_226_WarehouseDocument.pdf', 1, 'LS401209', 3, 10, '2019-07-08 21:26:42', '2019-07-08 21:26:42'),
(125, '1562606802I15_226_WarehouseDocument.pdf', 2, 'CL401209', 3, 10, '2019-07-08 21:26:42', '2019-07-08 21:26:42'),
(126, '1562607115MX-M6070_20190523_223755.pdf', 1, 'BN501209', 4, 10, '2019-07-08 21:31:55', '2019-07-08 21:31:55'),
(127, '1562607115MX-M6070_20190523_223755.pdf', 1, 'LS501209', 4, 10, '2019-07-08 21:31:55', '2019-07-08 21:31:55'),
(128, '1562607115MX-M6070_20190523_223755.pdf', 1, 'BC501209', 4, 10, '2019-07-08 21:31:55', '2019-07-08 21:31:55'),
(129, '1562607115MX-M6070_20190523_223755.pdf', 1, 'CL501209', 4, 10, '2019-07-08 21:31:55', '2019-07-08 21:31:55'),
(133, '1562607387I18_229_WarehouseDocument .pdf', 1, 'LS301249', 6, 10, '2019-07-08 21:36:28', '2019-07-08 21:36:28'),
(134, '1562607387I18_229_WarehouseDocument .pdf', 1, 'BC301249', 6, 10, '2019-07-08 21:36:28', '2019-07-08 21:36:28'),
(135, '1562607387I18_229_WarehouseDocument .pdf', 1, 'CL301249', 6, 10, '2019-07-08 21:36:28', '2019-07-08 21:36:28'),
(136, '1562607974I17_MX-M6070_20190530_194759.pdf', 1, 'LS701219', 5, 10, '2019-07-08 21:46:14', '2019-07-08 21:46:14'),
(137, '1562607974I17_MX-M6070_20190530_194759.pdf', 1, 'BC701219', 5, 10, '2019-07-08 21:46:14', '2019-07-08 21:46:14'),
(138, '1562607974I17_MX-M6070_20190530_194759.pdf', 1, 'CL701219', 5, 10, '2019-07-08 21:46:14', '2019-07-08 21:46:14'),
(139, '1562608297I19_230_WarehouseDocument.pdf', 1, 'LS501269', 7, 10, '2019-07-08 21:51:37', '2019-07-08 21:51:37'),
(140, '1562608297I19_230_WarehouseDocument.pdf', 1, 'BC501269', 7, 10, '2019-07-08 21:51:37', '2019-07-08 21:51:37'),
(141, '1562608297I19_230_WarehouseDocument.pdf', 1, 'CL501269', 7, 10, '2019-07-08 21:51:37', '2019-07-08 21:51:37'),
(142, '1562608297I19_230_WarehouseDocument.pdf', 1, 'BN501269', 7, 10, '2019-07-08 21:51:37', '2019-07-08 21:51:37'),
(143, '1562608297I19_230_WarehouseDocument.pdf', 1, 'FSO501269', 7, 10, '2019-07-08 21:51:37', '2019-07-08 21:51:37'),
(144, '1562608297I19_230_WarehouseDocument.pdf', 2, 'LS501269', 7, 10, '2019-07-08 21:51:37', '2019-07-08 21:51:37'),
(145, '1562608297I19_230_WarehouseDocument.pdf', 2, 'CL501269', 7, 10, '2019-07-08 21:51:37', '2019-07-08 21:51:37'),
(146, '1563503302I20_WarehouseDoc.pdf', 1, 'LS201299', 8, 10, '2019-07-19 06:28:22', '2019-07-19 06:28:22'),
(147, '1563503302I20_WarehouseDoc.pdf', 1, 'CL201299', 8, 10, '2019-07-19 06:28:22', '2019-07-19 06:28:22'),
(148, '1564583664I21_ARRIV94660665426_5426 (Merged) copy.pdf', 3, 'CL301309', 9, 10, '2019-07-31 18:34:24', '2019-07-31 18:34:24'),
(149, '1564583684I21_ARRIV94660665426_5426 (Merged) copy.pdf', 5, 'CL301309', 9, 10, '2019-07-31 18:34:44', '2019-07-31 18:34:44'),
(150, '1564583684I21_ARRIV94660665426_5426 (Merged) copy.pdf', 5, 'LS301309', 9, 10, '2019-07-31 18:34:44', '2019-07-31 18:34:44'),
(151, '1564583684I21_ARRIV94660665426_5426 (Merged) copy.pdf', 5, 'BC301309', 9, 10, '2019-07-31 18:34:44', '2019-07-31 18:34:44'),
(152, '1564583684I21_ARRIV94660665426_5426 (Merged) copy.pdf', 5, 'BN301309', 9, 10, '2019-07-31 18:34:44', '2019-07-31 18:34:44'),
(153, '1564583684I21_ARRIV94660665426_5426 (Merged) copy.pdf', 5, 'FOV301309', 9, 10, '2019-07-31 18:34:44', '2019-07-31 18:34:44'),
(154, '1564583701I21_ARRIV94660665426_5426 (Merged) copy.pdf', 4, 'CL301309', 9, 10, '2019-07-31 18:35:01', '2019-07-31 18:35:01'),
(155, '1564583723I21_ARRIV94660665426_5426 (Merged) copy.pdf', 1, 'LS301309', 9, 10, '2019-07-31 18:35:23', '2019-07-31 18:35:23'),
(156, '1564583754I21_ARRIV94660665426_5426 (Merged) copy.pdf', 2, 'LS301309', 9, 10, '2019-07-31 18:35:54', '2019-07-31 18:35:54'),
(157, '1566489645MX-M6070_20190815_182141.pdf', 1, 'LS101339', 11, 10, '2019-08-22 20:00:45', '2019-08-22 20:00:45'),
(158, '1566489645MX-M6070_20190815_182141.pdf', 1, 'LS102339', 11, 10, '2019-08-22 20:00:45', '2019-08-22 20:00:45'),
(159, '1566489645MX-M6070_20190815_182141.pdf', 1, 'CL101339', 11, 10, '2019-08-22 20:00:45', '2019-08-22 20:00:45'),
(160, '1566489645MX-M6070_20190815_182141.pdf', 1, 'CL102339', 11, 10, '2019-08-22 20:00:45', '2019-08-22 20:00:45'),
(161, '1566914189ARRIV94660665474_101919 (Merged) copy.pdf', 1, 'BC301349', 12, 10, '2019-08-27 17:56:29', '2019-08-27 17:56:29'),
(162, '1566914189ARRIV94660665474_101919 (Merged) copy.pdf', 1, 'BN301349', 12, 10, '2019-08-27 17:56:29', '2019-08-27 17:56:29'),
(163, '1566914189ARRIV94660665474_101919 (Merged) copy.pdf', 1, 'CL301349', 12, 10, '2019-08-27 17:56:29', '2019-08-27 17:56:29'),
(164, '1566914189ARRIV94660665474_101919 (Merged) copy.pdf', 1, 'LS301349', 12, 10, '2019-08-27 17:56:29', '2019-08-27 17:56:29'),
(165, '1566914189ARRIV94660665474_101919 (Merged) copy.pdf', 1, 'FOV301349', 12, 10, '2019-08-27 17:56:29', '2019-08-27 17:56:29'),
(166, '1566914204ARRIV94660665474_101919 (Merged) copy.pdf', 2, 'CL302349', 12, 10, '2019-08-27 17:56:44', '2019-08-27 17:56:44'),
(167, '1566914204ARRIV94660665474_101919 (Merged) copy.pdf', 2, 'LS302349', 12, 10, '2019-08-27 17:56:44', '2019-08-27 17:56:44'),
(168, '1570470115MX-M6070_20190926_150640.pdf', 1, 'CL101399', 14, 10, '2019-10-07 21:41:55', '2019-10-07 21:41:55'),
(169, '1570470115MX-M6070_20190926_150640.pdf', 1, 'LS101399', 14, 10, '2019-10-07 21:41:55', '2019-10-07 21:41:55'),
(170, '1570470115MX-M6070_20190926_150640.pdf', 1, 'BN101399', 14, 10, '2019-10-07 21:41:55', '2019-10-07 21:41:55'),
(171, '1570470115MX-M6070_20190926_150640.pdf', 1, 'BC101399', 14, 10, '2019-10-07 21:41:55', '2019-10-07 21:41:55'),
(172, '1570470115MX-M6070_20190926_150640.pdf', 1, 'FVO101399', 14, 10, '2019-10-07 21:41:55', '2019-10-07 21:41:55'),
(173, '1570470203MX-M6070_20190912_200311.pdf', 1, 'CL101379', 13, 10, '2019-10-07 21:43:23', '2019-10-07 21:43:23'),
(174, '1570470203MX-M6070_20190912_200311.pdf', 1, 'LS101379', 13, 10, '2019-10-07 21:43:23', '2019-10-07 21:43:23'),
(175, '1570812807MX-M6070_20191010_093923.pdf', 1, 'CL101419', 15, 10, '2019-10-11 20:53:27', '2019-10-11 20:53:27'),
(176, '1570812807MX-M6070_20191010_093923.pdf', 1, 'LS101419', 15, 10, '2019-10-11 20:53:27', '2019-10-11 20:53:27'),
(177, '1573153597ARRIVCRD60665614_5614.pdf', 1, 'CL101449', 16, 10, '2019-11-07 23:06:38', '2019-11-07 23:06:38'),
(178, '1573153597ARRIVCRD60665614_5614.pdf', 1, 'LS101449', 16, 10, '2019-11-07 23:06:38', '2019-11-07 23:06:38'),
(179, '1574793239MX-M6070_20191121_153615.pdf', 1, 'CL101479', 17, 10, '2019-11-26 22:33:59', '2019-11-26 22:33:59'),
(180, '1574793239MX-M6070_20191121_153615.pdf', 1, 'LS101479', 17, 10, '2019-11-26 22:33:59', '2019-11-26 22:33:59'),
(181, '1576599654MX-M6070_20191204_183408.pdf', 1, 'CL101499', 18, 10, '2019-12-17 20:20:55', '2019-12-17 20:20:55'),
(182, '1576599654MX-M6070_20191204_183408.pdf', 1, 'LS101499', 18, 10, '2019-12-17 20:20:55', '2019-12-17 20:20:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory`
--

CREATE TABLE `inventory` (
  `id_inv` int(10) UNSIGNED NOT NULL,
  `inv_date` date NOT NULL,
  `inv_pallet` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inv_inborders` int(11) NOT NULL,
  `inv_lot` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_item` int(10) UNSIGNED NOT NULL,
  `id_status` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inventory`
--

INSERT INTO `inventory` (`id_inv`, `inv_date`, `inv_pallet`, `inv_inborders`, `inv_lot`, `id_item`, `id_status`, `created_at`, `updated_at`) VALUES
(1, '2019-04-20', '1', 1, 'CP401169', 5, 1, '2019-05-09 19:51:38', '2019-05-09 19:51:38'),
(2, '2019-04-20', '1', 1, 'BN401169', 4, 1, '2019-05-09 19:51:38', '2019-05-09 19:51:38'),
(3, '2019-04-20', '1', 1, 'LS401169', 2, 1, '2019-05-09 19:51:38', '2019-05-09 19:51:38'),
(4, '2019-04-20', '1', 1, 'BC401169', 1, 1, '2019-05-09 19:51:38', '2019-05-09 19:51:38'),
(5, '2019-04-20', '1', 1, 'CL401169', 3, 1, '2019-05-09 19:51:38', '2019-05-09 19:51:38'),
(6, '2019-05-09', '1', 2, 'LS501199', 2, 1, '2019-05-15 19:58:19', '2019-05-15 19:58:19'),
(7, '2019-05-09', '2', 2, 'CL501199', 3, 1, '2019-05-15 19:58:19', '2019-05-15 19:58:19'),
(8, '2019-05-09', '2', 2, 'BN501199', 4, 1, '2019-05-15 19:58:19', '2019-05-15 19:58:19'),
(9, '2019-05-09', '2', 2, 'BC501199', 1, 1, '2019-05-15 19:58:19', '2019-05-15 19:58:19'),
(10, '2019-05-16', '1', 3, 'LS401209', 2, 1, '2019-05-20 19:07:48', '2019-05-20 19:07:48'),
(11, '2019-05-16', '2', 3, 'CL401209', 3, 1, '2019-05-20 19:07:48', '2019-05-20 19:07:48'),
(12, '2019-05-20', '1', 4, 'BN501209', 4, 1, '2019-05-27 04:41:25', '2019-05-27 04:41:25'),
(13, '2019-05-20', '1', 4, 'LS501209', 2, 1, '2019-05-27 04:41:25', '2019-05-27 04:41:25'),
(14, '2019-05-20', '1', 4, 'BC501209', 1, 1, '2019-05-27 04:41:25', '2019-05-27 04:41:25'),
(15, '2019-05-20', '1', 4, 'CL501209', 3, 1, '2019-05-27 04:41:25', '2019-05-27 04:41:25'),
(40, '2019-05-28', '1', 5, 'LS701219', 2, 1, '2019-05-31 17:15:02', '2019-05-31 17:15:02'),
(41, '2019-05-28', '1', 5, 'BC701219', 1, 1, '2019-05-31 17:15:02', '2019-05-31 17:15:02'),
(42, '2019-05-28', '1', 5, 'CL701219', 3, 1, '2019-05-31 17:15:02', '2019-05-31 17:15:02'),
(43, '2019-06-13', '1', 6, 'LS301249', 2, 1, '2019-06-18 19:26:38', '2019-06-18 19:26:38'),
(44, '2019-06-13', '1', 6, 'BC301249', 1, 1, '2019-06-18 19:26:39', '2019-06-18 19:26:39'),
(45, '2019-06-13', '1', 6, 'CL301249', 3, 1, '2019-06-18 19:26:39', '2019-06-18 19:26:39'),
(46, '2019-06-27', '1', 7, 'LS501269', 2, 1, '2019-07-03 18:07:38', '2019-07-03 18:07:38'),
(47, '2019-06-27', '1', 7, 'BC501269', 1, 1, '2019-07-03 18:07:38', '2019-07-03 18:07:38'),
(48, '2019-06-27', '1', 7, 'CL501269', 3, 1, '2019-07-03 18:07:38', '2019-07-03 18:07:38'),
(49, '2019-06-27', '1', 7, 'BN501269', 4, 1, '2019-07-03 18:07:39', '2019-07-03 18:07:39'),
(50, '2019-06-27', '1', 7, 'FSO501269', 6, 1, '2019-07-03 18:07:39', '2019-07-03 18:07:39'),
(51, '2019-06-27', '2', 7, 'LS501269', 2, 1, '2019-07-03 18:07:39', '2019-07-03 18:07:39'),
(52, '2019-06-27', '2', 7, 'CL501269', 3, 1, '2019-07-03 18:07:39', '2019-07-03 18:07:39'),
(53, '2019-07-12', '1', 8, 'LS201299', 2, 1, '2019-07-19 06:27:33', '2019-07-19 06:27:33'),
(54, '2019-07-12', '1', 8, 'CL201299', 3, 1, '2019-07-19 06:27:33', '2019-07-19 06:27:33'),
(55, '2019-07-25', '1', 9, 'LS301309', 2, 1, '2019-07-31 18:33:53', '2019-07-31 18:33:53'),
(56, '2019-07-25', '2', 9, 'LS301309', 2, 1, '2019-07-31 18:33:53', '2019-07-31 18:33:53'),
(57, '2019-07-25', '3', 9, 'CL301309', 3, 1, '2019-07-31 18:33:53', '2019-07-31 18:33:53'),
(58, '2019-07-25', '4', 9, 'CL301309', 3, 1, '2019-07-31 18:33:53', '2019-07-31 18:33:53'),
(59, '2019-07-25', '5', 9, 'CL301309', 3, 1, '2019-07-31 18:33:53', '2019-07-31 18:33:53'),
(60, '2019-07-25', '5', 9, 'LS301309', 2, 1, '2019-07-31 18:33:53', '2019-07-31 18:33:53'),
(61, '2019-07-25', '5', 9, 'BC301309', 1, 1, '2019-07-31 18:33:53', '2019-07-31 18:33:53'),
(62, '2019-07-25', '5', 9, 'BN301309', 4, 1, '2019-07-31 18:33:53', '2019-07-31 18:33:53'),
(63, '2019-07-25', '5', 9, 'FOV301309', 6, 1, '2019-07-31 18:33:53', '2019-07-31 18:33:53'),
(64, '2019-08-02', '1', 10, 'LS301319', 2, 1, '2019-08-08 15:28:32', '2019-08-08 15:28:32'),
(65, '2019-08-02', '1', 10, 'CL301319', 3, 1, '2019-08-08 15:28:32', '2019-08-08 15:28:32'),
(66, '2019-08-12', '1', 11, 'LS101339', 2, 1, '2019-08-15 20:43:01', '2019-08-15 20:43:01'),
(67, '2019-08-12', '1', 11, 'LS102339', 2, 1, '2019-08-15 20:43:01', '2019-08-15 20:43:01'),
(68, '2019-08-12', '1', 11, 'CL101339', 3, 1, '2019-08-15 20:43:01', '2019-08-15 20:43:01'),
(69, '2019-08-12', '1', 11, 'CL102339', 3, 1, '2019-08-15 20:43:01', '2019-08-15 20:43:01'),
(70, '2019-08-19', '1', 12, 'BC301349', 1, 1, '2019-08-27 17:56:06', '2019-08-27 17:56:06'),
(71, '2019-08-19', '1', 12, 'BN301349', 4, 1, '2019-08-27 17:56:06', '2019-08-27 17:56:06'),
(72, '2019-08-19', '1', 12, 'CL301349', 3, 1, '2019-08-27 17:56:06', '2019-08-27 17:56:06'),
(73, '2019-08-19', '1', 12, 'LS301349', 2, 1, '2019-08-27 17:56:06', '2019-08-27 17:56:06'),
(74, '2019-08-19', '1', 12, 'FOV301349', 6, 1, '2019-08-27 17:56:06', '2019-08-27 17:56:06'),
(75, '2019-08-19', '2', 12, 'CL302349', 3, 1, '2019-08-27 17:56:06', '2019-08-27 17:56:06'),
(76, '2019-08-19', '2', 12, 'LS302349', 2, 1, '2019-08-27 17:56:06', '2019-08-27 17:56:06'),
(77, '2019-09-06', '1', 13, 'CL101379', 3, 1, '2019-09-13 19:52:54', '2019-09-13 19:52:54'),
(78, '2019-09-06', '1', 13, 'LS101379', 2, 1, '2019-09-13 19:52:54', '2019-09-13 19:52:54'),
(79, '2019-09-19', '1', 14, 'CL101399', 3, 1, '2019-10-07 21:40:14', '2019-10-07 21:40:14'),
(80, '2019-09-19', '1', 14, 'LS101399', 2, 1, '2019-10-07 21:40:14', '2019-10-07 21:40:14'),
(81, '2019-09-19', '1', 14, 'BN101399', 4, 1, '2019-10-07 21:40:14', '2019-10-07 21:40:14'),
(82, '2019-09-19', '1', 14, 'BC101399', 1, 1, '2019-10-07 21:40:14', '2019-10-07 21:40:14'),
(83, '2019-09-19', '1', 14, 'FVO101399', 6, 1, '2019-10-07 21:40:14', '2019-10-07 21:40:14'),
(84, '2019-10-04', '1', 15, 'CL101419', 3, 1, '2019-10-11 20:52:24', '2019-10-11 20:52:24'),
(85, '2019-10-04', '1', 15, 'LS101419', 2, 1, '2019-10-11 20:52:24', '2019-10-11 20:52:24'),
(86, '2019-10-29', '1', 16, 'CL101449', 3, 1, '2019-11-04 08:05:36', '2019-11-04 08:05:36'),
(87, '2019-10-29', '1', 16, 'LS101449', 2, 1, '2019-11-04 08:05:36', '2019-11-04 08:05:36'),
(88, '2019-11-14', '1', 17, 'CL101479', 3, 1, '2019-11-26 22:33:42', '2019-11-26 22:33:42'),
(89, '2019-11-14', '1', 17, 'LS101479', 2, 1, '2019-11-26 22:33:42', '2019-11-26 22:33:42'),
(90, '2019-11-29', '1', 18, 'CL101499', 3, 1, '2019-12-17 20:20:18', '2019-12-17 20:20:18'),
(91, '2019-11-29', '1', 18, 'LS101499', 2, 1, '2019-12-17 20:20:18', '2019-12-17 20:20:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory_location`
--

CREATE TABLE `inventory_location` (
  `id_inventory_location` int(10) UNSIGNED NOT NULL,
  `inv_location_qty` double NOT NULL,
  `id_warehouse` int(10) UNSIGNED NOT NULL,
  `id_inv` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inventory_location`
--

INSERT INTO `inventory_location` (`id_inventory_location`, `inv_location_qty`, `id_warehouse`, `id_inv`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 1, '2019-05-22 17:59:36', '2019-07-03 21:38:57'),
(2, 0, 1, 2, '2019-05-13 12:28:23', '2019-07-03 21:38:57'),
(3, 0, 1, 3, '2019-05-13 14:52:41', '2019-07-03 21:38:57'),
(4, 0, 1, 4, '2019-05-13 12:30:51', '2019-07-03 21:38:57'),
(5, 0, 1, 5, '2019-05-13 14:54:38', '2019-07-03 21:38:57'),
(6, 2, 5, 6, '2019-05-20 17:21:22', '2019-06-28 22:00:28'),
(7, 3, 5, 7, '2019-05-20 16:14:41', '2019-06-28 22:00:28'),
(8, 2, 5, 8, '2019-05-15 19:58:19', '2019-06-28 22:00:28'),
(9, 2, 5, 9, '2019-05-15 19:58:19', '2019-06-28 22:00:28'),
(10, 2, 5, 10, '2019-05-20 20:10:36', '2019-06-19 21:47:17'),
(11, 6, 5, 11, '2019-05-20 20:10:42', '2019-07-03 21:40:23'),
(12, 0, 1, 12, '2019-05-27 04:41:25', '2019-07-03 03:51:48'),
(13, 0, 1, 13, '2019-05-27 04:41:25', '2019-07-03 03:51:48'),
(14, 2, 5, 14, '2019-05-27 04:41:25', '2019-06-28 22:06:11'),
(15, 2, 5, 15, '2019-05-27 04:41:25', '2019-06-28 22:06:11'),
(40, 0, 1, 40, '2019-05-31 17:15:02', '2019-06-28 17:36:07'),
(41, 1, 5, 41, '2019-05-31 17:15:02', '2019-07-03 03:51:48'),
(42, 1, 5, 42, '2019-05-31 17:15:02', '2019-06-19 21:52:53'),
(43, 0, 1, 43, '2019-08-05 20:23:17', '2019-08-06 00:27:18'),
(44, 0, 1, 44, '2019-06-19 17:59:46', '2019-08-01 22:31:00'),
(45, 0, 1, 45, '2019-06-19 18:02:16', '2019-08-01 22:31:00'),
(46, 0, 1, 46, '2019-08-05 20:23:53', '2019-08-13 22:14:07'),
(47, 0, 1, 47, '2019-07-03 18:07:38', '2019-08-13 22:14:07'),
(48, 0, 1, 48, '2019-07-03 18:07:38', '2019-08-13 22:23:08'),
(49, 0, 1, 49, '2019-07-03 18:07:39', '2019-08-13 22:14:07'),
(50, 0, 1, 50, '2019-07-03 18:07:39', '2019-08-13 22:14:07'),
(51, 0, 1, 51, '2019-07-03 18:07:39', '2019-07-04 23:24:42'),
(52, 0, 1, 52, '2019-07-03 18:07:39', '2019-07-04 23:24:42'),
(53, 0, 1, 53, '2019-07-19 06:27:33', '2019-07-19 06:31:25'),
(54, 0, 1, 54, '2019-07-19 06:27:33', '2019-07-19 06:31:25'),
(55, 0, 1, 55, '2019-07-31 18:33:53', '2019-07-31 18:52:43'),
(56, 0, 1, 56, '2019-07-31 18:33:53', '2019-07-31 18:52:43'),
(57, 0, 1, 57, '2019-07-31 18:33:53', '2019-07-31 18:52:43'),
(58, 0, 1, 58, '2019-07-31 18:33:53', '2019-07-31 18:52:43'),
(59, 0, 1, 59, '2019-07-31 18:33:53', '2019-08-08 06:52:10'),
(60, 0, 1, 60, '2019-07-31 18:33:53', '2019-09-12 22:47:15'),
(61, 0, 1, 61, '2019-07-31 18:33:53', '2019-08-28 21:40:48'),
(62, 0, 1, 62, '2019-09-04 19:09:27', '2019-09-12 22:47:15'),
(63, 0, 1, 63, '2019-09-04 19:08:04', '2019-09-12 22:47:15'),
(64, 0, 1, 64, '2019-09-04 19:12:23', '2019-09-12 22:47:15'),
(65, 0, 1, 65, '2019-09-04 19:11:35', '2019-09-12 22:47:15'),
(66, 0, 1, 66, '2019-08-15 20:43:01', '2019-08-15 20:48:17'),
(67, 0, 1, 67, '2019-08-15 20:43:01', '2019-08-15 20:48:17'),
(68, 0, 1, 68, '2019-08-15 20:43:01', '2019-08-15 20:48:17'),
(69, 0, 1, 69, '2019-09-04 19:13:14', '2019-09-12 22:47:15'),
(70, 0, 1, 70, '2019-08-27 17:56:06', '2019-10-07 22:00:38'),
(71, 0, 1, 71, '2019-08-27 17:56:06', '2019-10-07 22:00:38'),
(72, 0, 1, 72, '2019-08-27 17:56:06', '2019-10-07 22:00:38'),
(73, 0, 1, 73, '2019-08-27 17:56:06', '2019-10-07 22:00:38'),
(74, 0, 1, 74, '2019-08-27 17:56:06', '2019-10-07 22:00:38'),
(75, 0, 1, 75, '2019-08-27 17:56:06', '2019-08-27 18:08:04'),
(76, 0, 1, 76, '2019-08-27 17:56:06', '2019-08-27 18:08:04'),
(77, 1, 5, 73, '2019-09-05 23:19:20', '2019-09-05 23:19:20'),
(78, 0, 1, 77, '2019-09-13 19:52:54', '2019-10-07 21:47:24'),
(79, 0, 1, 78, '2019-09-13 19:52:54', '2019-10-07 21:47:24'),
(80, 0, 1, 79, '2019-11-07 20:14:01', '2019-11-08 00:15:21'),
(81, 0, 1, 80, '2019-11-07 20:03:13', '2019-11-08 00:15:21'),
(82, 0, 1, 81, '2019-11-07 19:05:42', '2019-11-08 00:15:21'),
(83, 0, 1, 82, '2019-11-07 19:22:50', '2019-11-08 00:15:21'),
(84, 0, 1, 83, '2019-11-07 20:06:23', '2019-11-08 00:15:21'),
(85, 0, 1, 84, '2019-10-11 20:52:24', '2019-10-11 20:55:23'),
(86, 0, 1, 85, '2019-10-11 20:52:24', '2019-10-11 20:55:23'),
(87, 0, 1, 86, '2019-11-04 08:05:36', '2019-11-04 08:07:19'),
(88, 0, 1, 87, '2019-11-04 08:05:36', '2019-11-04 08:07:19'),
(89, 0, 1, 88, '2019-11-26 22:33:42', '2019-11-26 22:36:49'),
(90, 0, 1, 89, '2019-11-26 22:33:42', '2019-11-26 22:36:49'),
(91, 0, 1, 90, '2019-12-17 20:20:18', '2019-12-17 20:24:10'),
(92, 0, 1, 91, '2019-12-17 20:20:18', '2019-12-17 20:24:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item`
--

CREATE TABLE `item` (
  `id_item` int(10) UNSIGNED NOT NULL,
  `item_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_ruta` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_unit` int(10) UNSIGNED NOT NULL,
  `id_status` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `item`
--

INSERT INTO `item` (`id_item`, `item_code`, `item_name`, `item_ruta`, `id_unit`, `id_status`, `created_at`, `updated_at`) VALUES
(1, '00021', 'Mozzarella di Bufala Bocconcini', '16610562541556302364Mozzarella_di_Bufala_Bocconcini.jpg', 1, 1, '2019-04-26 22:12:44', '2022-08-21 08:30:54'),
(2, '00020', 'Mozzarella di Bufala Large Size', '1556302378Mozzarella_di Bufala_Large_Size.jpg', 3, 1, '2019-04-26 22:12:58', '2019-04-26 22:12:58'),
(3, '00022', 'Mozzarella di Bufala Ciliegine', '1556302401Mozzarella_di_Bufala_Ciliegine.jpg', 2, 1, '2019-04-26 22:13:21', '2019-04-26 22:13:21'),
(4, '00023', 'Buffalo Milk Burrata', '1556302420Buffalo_Milk_Burrata.jpg', 2, 1, '2019-04-26 22:13:40', '2019-04-26 22:13:40'),
(5, '000CP', 'Combo Pack', '1556302432bufalinda_package.jpg', 1, 1, '2019-04-26 22:13:52', '2019-04-26 22:13:52'),
(6, 'FS04', 'Bufalinda Ovaline', '16610562691661056032WhatsApp_icon.png', 4, 1, '2019-06-19 22:46:40', '2022-08-21 08:35:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_status_table', 1),
(2, '2014_10_12_100000_create_users_table', 1),
(3, '2019_01_09_180905_create_password_resets_table', 1),
(4, '2019_01_09_185130_create_transport_table', 1),
(5, '2019_01_14_152425_create_customer_table', 1),
(6, '2019_01_14_161112_create_unit_table', 1),
(7, '2019_01_14_185041_create_item_table', 1),
(8, '2019_01_14_193334_create_warehouse_table', 1),
(9, '2019_01_16_170856_create_documents_table', 1),
(10, '2019_01_16_174403_create_cab_inbound_orders_table', 1),
(11, '2019_01_16_175410_create_det_inbound_orders_table', 1),
(12, '2019_01_16_193515_create_doc_inbound_orders_table', 1),
(13, '2019_01_16_202025_create_inventory_table', 1),
(14, '2019_02_05_190541_create_inventory_location_table', 1),
(15, '2019_02_05_190617_create_cab_sale_inventory_table', 1),
(16, '2019_02_07_201438_create_det_sale_inventory_table', 1),
(17, '2019_02_12_145037_create_doc_sale_inventory_table', 1),
(18, '2019_04_26_141401_create_doc_warehouse_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status`
--

CREATE TABLE `status` (
  `id_status` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tabla` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `status`
--

INSERT INTO `status` (`id_status`, `status`, `tabla`, `created_at`, `updated_at`) VALUES
(1, 'Active', 'General', NULL, '2019-01-17 23:49:07'),
(2, 'Inactive', 'General', '2019-01-17 20:15:37', '2019-01-17 23:49:14'),
(3, 'Released', 'Ordenes', '2019-01-30 23:52:32', '2019-02-04 23:29:12'),
(4, 'Not released', 'Ordenes', '2019-01-30 23:53:13', '2019-01-31 00:24:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transport`
--

CREATE TABLE `transport` (
  `id_transport` int(10) UNSIGNED NOT NULL,
  `trans_company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trans_contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_contact_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trans_phone_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trans_email_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trans_contact_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trans_phone_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trans_email_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_status` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `transport`
--

INSERT INTO `transport` (`id_transport`, `trans_company`, `trans_address`, `trans_contact`, `trans_phone`, `trans_email`, `trans_contact_two`, `trans_phone_two`, `trans_email_two`, `trans_contact_three`, `trans_phone_three`, `trans_email_three`, `id_status`, `created_at`, `updated_at`) VALUES
(1, 'Gourmet Foods Intl - Pompano', '2450 West Copans Rd. Pompano Beach, FL 33069', 'Chris Thomas', '+(01)(954) 969-1120', 'cthomas@gfifoods.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-05-13 17:53:55', '2019-05-21 00:55:51'),
(2, 'Bufalinda USA', NULL, '', '+(01)(786) 505-9513', 'debbie@bufalinda.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-05-14 19:49:23', '2019-05-14 19:49:23'),
(3, 'Transit Air Cargo Inc', NULL, '', '+(01)(800) 247-1600', 'ddeluca@TransitAir.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-05-28 07:27:57', '2019-05-28 07:27:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unit`
--

CREATE TABLE `unit` (
  `id_unit` int(10) UNSIGNED NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_status` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `unit`
--

INSERT INTO `unit` (`id_unit`, `unit`, `id_status`, `created_at`, `updated_at`) VALUES
(1, '6 units', 1, '2019-02-26 23:24:52', '2019-04-17 16:33:03'),
(2, '6 units / 10.5 oz', 1, '2019-04-17 16:33:11', '2019-04-17 16:33:11'),
(3, '6 units / 8.8 oz', 1, '2019-04-17 16:33:18', '2019-04-17 16:33:18'),
(4, '6 / 24 oz', 1, '2019-06-19 22:48:11', '2019-06-19 22:48:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_status` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `position`, `id_status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fabiana Orozco', 'forozco@bufalinda.com', '$2y$10$EaxgGgpCCdHXMfVajwdVcu2j.2V1dHKsXEOf5JrwiJrjKFOtkc72y', '+(58)(222) 222-2222', 'Admin', 2, 'jRZopJucV2te90oiQBFEovM7zDfttOtjofxVT0yACsv1ePOaFZJirYWbfWOa', NULL, '2022-08-19 19:56:27'),
(2, 'Manuel Gonzalez', 'mgonzalez@bufalinda.com', '$2y$10$urHk2bgaga.8/rDhxSORk.rfXUox5XVCMuvBOl4PCoD1BdCJSSl6a', '+(58)(000) 000-0000', 'Admin', 1, 'DvISpMHlhPndga3u2QTaWR3amyCGHs6cnz87uzMz3tr4wz6D5mByvbLJ7dsS', '2019-02-12 17:11:16', '2019-02-12 17:11:16'),
(3, 'Victor Veliz', 'vveliz@bufalinda.com', '$2y$10$rrAJNS4oUAwl2EdAVooxIeGtlFmZUG7hRTcKKzZV0lJ31G.zQ/gX.', '+(58)(000) 000-0000', 'Admin', 1, 'a1BgrPxF7FCaTLTsg0KWc3nbRBPW6lKiP4jzgEfaninz7WZ7dzfwRQ3x1sRa', '2019-02-12 17:11:51', '2019-02-12 17:11:51'),
(4, 'Debbie Shlesinger', 'debbie@bufalinda.com', '$2y$10$owYajmpyiqNqSi289YEoFeb67PL57m7ja1B8pZ8YVwG3DdBS/.j6y', '+(01)(786) 505-9513', 'User', 1, 'xY0DjzrwmYpKwMyO8abfi3b5V1fxb50YuHIunyA0KLAvp7s1cHlN5QKAiO3N', '2019-02-26 22:56:34', '2019-05-09 21:27:44'),
(5, 'Administrador', 'admin@admin.com', '$2y$10$OYtoez7zzI9hVOgiT65ZV.SA5K94Lu2PUmWYI9RzbueYtoqHpyEki', '+(58)(444) 555-5555', 'Admin', 1, 'eCJn4hkZ4sGFxKwauwLcMsLesa13nkABjsQPxYleZm3msZhxWNMjDx1xv0eO', '2022-08-19 22:21:50', '2022-08-19 22:21:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `warehouse`
--

CREATE TABLE `warehouse` (
  `id_warehouse` int(10) UNSIGNED NOT NULL,
  `house_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_person` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_person_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_phone_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_email_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_email_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_status` int(10) UNSIGNED NOT NULL,
  `house_activity` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_act_sale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_act_transfer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_act_entry` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_act_output` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_step` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `warehouse`
--

INSERT INTO `warehouse` (`id_warehouse`, `house_name`, `house_description`, `house_person`, `house_person_two`, `house_phone`, `house_phone_two`, `house_email`, `house_email_two`, `house_email_three`, `house_address`, `id_status`, `house_activity`, `house_act_sale`, `house_act_transfer`, `house_act_entry`, `house_act_output`, `house_step`, `created_at`, `updated_at`) VALUES
(1, 'Bufalinda Warehouse', 'Floral Logistics of Miami, 3400 NW 74th Avenue Unit 1, Miami, FL 33122', 'Yaytell Alvarez', NULL, '+(01)(305) 487-7777', '+(01)(786) 608-6270', 'producecs@floralogistics.us', 'producedisp@floralogistics.us', 'produce@floralogistics.us', 'Floral Logistics of Miami, 3400 NW 74th Avenue Unit 1, Miami, FL 33122', 1, '', 'Sale', 'Transfer', 'Entry', NULL, 0, '2019-02-26 23:22:17', '2019-05-13 18:02:24'),
(2, 'Bufalinda Venezuela', 'Maturin Monagas Venezuela', 'Manuel Gonzalez', NULL, '+(00)(000) 000-0000', NULL, 'bufalindavzl@bufalinda.com', NULL, NULL, 'Maturin Monagas Venezuela', 1, '', NULL, 'Transfer', 'Entry', NULL, 1, '2019-02-26 23:23:16', '2019-02-26 23:23:16'),
(3, 'Transit', 'Transit', 'Transit', NULL, '+(00)(000) 000-0000', NULL, 'transit@transit', NULL, NULL, 'Transit', 1, '', NULL, 'Transfer', NULL, NULL, 2, '2019-02-26 23:23:56', '2019-03-13 17:20:38'),
(4, 'Airport', 'Airport', 'Airport', NULL, '+(00)(000) 000-0000', NULL, 'forozco@bufalinda.com', NULL, NULL, 'Airport', 1, '', 'Sale', 'Transfer', NULL, NULL, 3, '2019-02-26 23:24:30', '2019-03-14 00:28:57'),
(5, 'Bufalinda Discard', 'Bufalinda Discard', 'Bufalinda Discard', NULL, '+(00)(000) 000-0000', NULL, 'discard@discard.com', NULL, NULL, 'Bufalinda Discard', 1, 'Transfer', NULL, NULL, NULL, 'Output', 0, '2019-07-03 21:32:08', '2022-08-21 09:13:55'),
(8, 'DivtechCompany', 'empresa de servicis multiples', 'Luis Mila', NULL, '+(58)(412) 870-3034', NULL, 'divtechcompany@gmail.com', NULL, NULL, 'punta de mata', 1, 'Sale', NULL, NULL, NULL, NULL, 5, '2022-08-21 08:58:27', '2022-08-21 10:00:28');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cab_inbound_orders`
--
ALTER TABLE `cab_inbound_orders`
  ADD PRIMARY KEY (`id_ciord`) USING BTREE,
  ADD KEY `cab_inbound_orders_id_warehouse_foreign` (`id_warehouse`) USING BTREE,
  ADD KEY `cab_inbound_orders_id_status_foreign` (`id_status`) USING BTREE;

--
-- Indices de la tabla `cab_sale_inventory`
--
ALTER TABLE `cab_sale_inventory`
  ADD PRIMARY KEY (`id_csale_inventory`) USING BTREE,
  ADD KEY `cab_sale_inventory_id_customer_foreign` (`id_customer`) USING BTREE,
  ADD KEY `cab_sale_inventory_id_users_foreign` (`id_users`) USING BTREE;

--
-- Indices de la tabla `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`) USING BTREE,
  ADD KEY `customer_id_status_foreign` (`id_status`) USING BTREE;

--
-- Indices de la tabla `det_inbound_orders`
--
ALTER TABLE `det_inbound_orders`
  ADD PRIMARY KEY (`id_diord`) USING BTREE,
  ADD KEY `det_inbound_orders_id_ciord_foreign` (`id_ciord`) USING BTREE;

--
-- Indices de la tabla `det_sale_inventory`
--
ALTER TABLE `det_sale_inventory`
  ADD PRIMARY KEY (`id_dsale_inventory`) USING BTREE,
  ADD KEY `det_sale_inventory_id_item_foreign` (`id_item`) USING BTREE,
  ADD KEY `det_sale_inventory_id_csale_inventory_foreign` (`id_csale_inventory`) USING BTREE,
  ADD KEY `det_sale_inventory_id_warehouse_foreign` (`id_warehouse`) USING BTREE;

--
-- Indices de la tabla `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id_doc`) USING BTREE,
  ADD KEY `documents_id_status_foreign` (`id_status`) USING BTREE;

--
-- Indices de la tabla `doc_inbound_orders`
--
ALTER TABLE `doc_inbound_orders`
  ADD PRIMARY KEY (`id_dociord`) USING BTREE,
  ADD KEY `doc_inbound_orders_id_doc_foreign` (`id_doc`) USING BTREE,
  ADD KEY `doc_inbound_orders_id_ciord_foreign` (`id_ciord`) USING BTREE;

--
-- Indices de la tabla `doc_sale_inventory`
--
ALTER TABLE `doc_sale_inventory`
  ADD PRIMARY KEY (`id_docsinven`) USING BTREE,
  ADD KEY `doc_sale_inventory_id_doc_foreign` (`id_doc`) USING BTREE,
  ADD KEY `doc_sale_inventory_id_csale_inventory_foreign` (`id_csale_inventory`) USING BTREE;

--
-- Indices de la tabla `doc_warehouse`
--
ALTER TABLE `doc_warehouse`
  ADD PRIMARY KEY (`id_docwarehouse`) USING BTREE,
  ADD KEY `doc_warehouse_id_doc_foreign` (`id_doc`) USING BTREE;

--
-- Indices de la tabla `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id_inv`) USING BTREE,
  ADD KEY `inventory_id_item_foreign` (`id_item`) USING BTREE,
  ADD KEY `inventory_id_status_foreign` (`id_status`) USING BTREE;

--
-- Indices de la tabla `inventory_location`
--
ALTER TABLE `inventory_location`
  ADD PRIMARY KEY (`id_inventory_location`) USING BTREE,
  ADD KEY `inventory_location_id_warehouse_foreign` (`id_warehouse`) USING BTREE,
  ADD KEY `inventory_location_id_inv_foreign` (`id_inv`) USING BTREE;

--
-- Indices de la tabla `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id_item`) USING BTREE,
  ADD KEY `item_id_unit_foreign` (`id_unit`) USING BTREE,
  ADD KEY `item_id_status_foreign` (`id_status`) USING BTREE;

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indices de la tabla `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`) USING BTREE;

--
-- Indices de la tabla `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id_transport`) USING BTREE,
  ADD KEY `transport_id_status_foreign` (`id_status`) USING BTREE;

--
-- Indices de la tabla `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id_unit`) USING BTREE,
  ADD KEY `unit_id_status_foreign` (`id_status`) USING BTREE;

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  ADD KEY `users_id_status_foreign` (`id_status`) USING BTREE;

--
-- Indices de la tabla `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`id_warehouse`) USING BTREE,
  ADD KEY `warehouse_id_status_foreign` (`id_status`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cab_inbound_orders`
--
ALTER TABLE `cab_inbound_orders`
  MODIFY `id_ciord` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `cab_sale_inventory`
--
ALTER TABLE `cab_sale_inventory`
  MODIFY `id_csale_inventory` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT de la tabla `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `det_inbound_orders`
--
ALTER TABLE `det_inbound_orders`
  MODIFY `id_diord` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT de la tabla `det_sale_inventory`
--
ALTER TABLE `det_sale_inventory`
  MODIFY `id_dsale_inventory` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT de la tabla `documents`
--
ALTER TABLE `documents`
  MODIFY `id_doc` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `doc_inbound_orders`
--
ALTER TABLE `doc_inbound_orders`
  MODIFY `id_dociord` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;

--
-- AUTO_INCREMENT de la tabla `doc_sale_inventory`
--
ALTER TABLE `doc_sale_inventory`
  MODIFY `id_docsinven` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT de la tabla `doc_warehouse`
--
ALTER TABLE `doc_warehouse`
  MODIFY `id_docwarehouse` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT de la tabla `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id_inv` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `inventory_location`
--
ALTER TABLE `inventory_location`
  MODIFY `id_inventory_location` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `item`
--
ALTER TABLE `item`
  MODIFY `id_item` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `transport`
--
ALTER TABLE `transport`
  MODIFY `id_transport` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `unit`
--
ALTER TABLE `unit`
  MODIFY `id_unit` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `id_warehouse` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cab_inbound_orders`
--
ALTER TABLE `cab_inbound_orders`
  ADD CONSTRAINT `cab_inbound_orders_id_status_foreign` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`),
  ADD CONSTRAINT `cab_inbound_orders_id_warehouse_foreign` FOREIGN KEY (`id_warehouse`) REFERENCES `warehouse` (`id_warehouse`);

--
-- Filtros para la tabla `cab_sale_inventory`
--
ALTER TABLE `cab_sale_inventory`
  ADD CONSTRAINT `cab_sale_inventory_id_customer_foreign` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`),
  ADD CONSTRAINT `cab_sale_inventory_id_users_foreign` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_id_status_foreign` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`);

--
-- Filtros para la tabla `det_inbound_orders`
--
ALTER TABLE `det_inbound_orders`
  ADD CONSTRAINT `det_inbound_orders_id_ciord_foreign` FOREIGN KEY (`id_ciord`) REFERENCES `cab_inbound_orders` (`id_ciord`);

--
-- Filtros para la tabla `det_sale_inventory`
--
ALTER TABLE `det_sale_inventory`
  ADD CONSTRAINT `det_sale_inventory_id_csale_inventory_foreign` FOREIGN KEY (`id_csale_inventory`) REFERENCES `cab_sale_inventory` (`id_csale_inventory`),
  ADD CONSTRAINT `det_sale_inventory_id_item_foreign` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`),
  ADD CONSTRAINT `det_sale_inventory_id_warehouse_foreign` FOREIGN KEY (`id_warehouse`) REFERENCES `warehouse` (`id_warehouse`);

--
-- Filtros para la tabla `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_id_status_foreign` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`);

--
-- Filtros para la tabla `doc_inbound_orders`
--
ALTER TABLE `doc_inbound_orders`
  ADD CONSTRAINT `doc_inbound_orders_id_ciord_foreign` FOREIGN KEY (`id_ciord`) REFERENCES `cab_inbound_orders` (`id_ciord`),
  ADD CONSTRAINT `doc_inbound_orders_id_doc_foreign` FOREIGN KEY (`id_doc`) REFERENCES `documents` (`id_doc`);

--
-- Filtros para la tabla `doc_sale_inventory`
--
ALTER TABLE `doc_sale_inventory`
  ADD CONSTRAINT `doc_sale_inventory_id_csale_inventory_foreign` FOREIGN KEY (`id_csale_inventory`) REFERENCES `cab_sale_inventory` (`id_csale_inventory`),
  ADD CONSTRAINT `doc_sale_inventory_id_doc_foreign` FOREIGN KEY (`id_doc`) REFERENCES `documents` (`id_doc`);

--
-- Filtros para la tabla `doc_warehouse`
--
ALTER TABLE `doc_warehouse`
  ADD CONSTRAINT `doc_warehouse_id_doc_foreign` FOREIGN KEY (`id_doc`) REFERENCES `documents` (`id_doc`);

--
-- Filtros para la tabla `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_id_item_foreign` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`),
  ADD CONSTRAINT `inventory_id_status_foreign` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`);

--
-- Filtros para la tabla `inventory_location`
--
ALTER TABLE `inventory_location`
  ADD CONSTRAINT `inventory_location_id_inv_foreign` FOREIGN KEY (`id_inv`) REFERENCES `inventory` (`id_inv`),
  ADD CONSTRAINT `inventory_location_id_warehouse_foreign` FOREIGN KEY (`id_warehouse`) REFERENCES `warehouse` (`id_warehouse`);

--
-- Filtros para la tabla `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_id_status_foreign` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`),
  ADD CONSTRAINT `item_id_unit_foreign` FOREIGN KEY (`id_unit`) REFERENCES `unit` (`id_unit`);

--
-- Filtros para la tabla `transport`
--
ALTER TABLE `transport`
  ADD CONSTRAINT `transport_id_status_foreign` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`);

--
-- Filtros para la tabla `unit`
--
ALTER TABLE `unit`
  ADD CONSTRAINT `unit_id_status_foreign` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_status_foreign` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`);

--
-- Filtros para la tabla `warehouse`
--
ALTER TABLE `warehouse`
  ADD CONSTRAINT `warehouse_id_status_foreign` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

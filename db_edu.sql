-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2021 at 04:14 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_edu`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Site Administrator'),
(2, 'user', 'Regular User');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 2),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(2, 3),
(2, 9),
(2, 19),
(2, 20),
(2, 21);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'jgyj', NULL, '2020-11-09 04:15:09', 0),
(2, '::1', 'tes@gmail.com', 1, '2020-11-09 04:22:58', 1),
(3, '::1', 'tes@gmail.com', 2, '2020-11-09 04:34:58', 1),
(4, '::1', 'raka', NULL, '2020-11-09 04:37:03', 0),
(5, '::1', 'raka', NULL, '2020-11-09 04:37:09', 0),
(6, '::1', 'tes@gmail.com', 2, '2020-11-09 04:37:17', 1),
(7, '::1', 'tes@gmail.com', 2, '2020-11-09 07:59:17', 1),
(8, '::1', 'tes@gmail.com', 2, '2020-11-09 08:44:18', 1),
(9, '::1', 'tes@gmail.com', 2, '2020-11-09 20:00:43', 1),
(10, '::1', 'tes@gmail.com', 2, '2020-11-09 21:18:47', 1),
(11, '::1', 'tes@gmail.com', 2, '2020-11-09 21:58:16', 1),
(12, '::1', 'tes@gmail.com', 2, '2020-11-09 22:00:12', 1),
(13, '::1', 'tes@gmail.com', 2, '2020-11-09 22:02:22', 1),
(14, '::1', 'tes@gmail.com', 2, '2020-11-10 04:28:51', 1),
(15, '::1', 'tes@gmail.com', 2, '2020-11-10 19:55:41', 1),
(16, '::1', 'tes@gmail.com', 2, '2020-11-12 00:41:52', 1),
(17, '::1', 'tes@gmail.com', 2, '2020-11-12 19:36:53', 1),
(18, '::1', 'tes@gmail.com', 2, '2020-11-13 01:11:03', 1),
(19, '127.0.0.1', 'raka', NULL, '2020-11-26 20:46:06', 0),
(20, '127.0.0.1', 'tes@gmail.com', 2, '2020-11-26 20:46:17', 1),
(21, '127.0.0.1', 'raka', NULL, '2020-11-27 20:58:15', 0),
(22, '127.0.0.1', 'raka', NULL, '2020-11-27 20:58:25', 0),
(23, '127.0.0.1', 'raka', NULL, '2020-11-27 20:58:30', 0),
(24, '127.0.0.1', 'raka', NULL, '2020-11-27 20:58:38', 0),
(25, '127.0.0.1', 'tes@gmail.com', 2, '2020-11-27 20:58:47', 1),
(26, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-01 19:20:03', 1),
(27, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-02 02:06:01', 1),
(28, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-03 02:57:43', 1),
(29, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-04 20:23:37', 1),
(30, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-05 19:40:03', 1),
(31, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-06 03:54:46', 1),
(32, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-06 07:45:39', 1),
(33, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-06 19:12:41', 1),
(34, '127.0.0.1', 'raka', NULL, '2020-12-07 19:44:02', 0),
(35, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-07 19:44:10', 1),
(36, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-09 00:29:53', 1),
(37, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-09 04:00:26', 1),
(38, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-09 07:01:59', 1),
(39, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-09 17:24:19', 1),
(40, '127.0.0.1', 'raka', NULL, '2020-12-10 18:35:28', 0),
(41, '127.0.0.1', 'raka', NULL, '2020-12-10 18:35:37', 0),
(42, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-10 18:35:48', 1),
(43, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-11 05:11:05', 1),
(44, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-11 18:27:56', 1),
(45, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-13 06:38:20', 1),
(46, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-13 19:42:38', 1),
(47, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-14 18:27:33', 1),
(48, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-15 18:21:15', 1),
(49, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-15 23:28:47', 1),
(50, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-23 20:15:53', 1),
(51, '127.0.0.1', 'tes@gmail.com', 2, '2020-12-23 20:43:28', 1),
(52, '127.0.0.1', 'p3.angga@gmail.com ', NULL, '2020-12-23 22:21:12', 0),
(53, '127.0.0.1', 'p3.angga@gmail.com', 2, '2020-12-23 22:21:22', 1),
(54, '127.0.0.1', 'p3.angga@gmail.com ', NULL, '2020-12-23 22:21:36', 0),
(55, '127.0.0.1', 'p3.angga@gmail.com', 2, '2020-12-23 22:22:19', 1),
(56, '127.0.0.1', 'svd', NULL, '2020-12-23 22:22:28', 0),
(57, '127.0.0.1', 'p3.angga@gmail.com', 2, '2020-12-23 23:12:12', 1),
(58, '127.0.0.1', 'm42.angga@yahoo.com', 3, '2020-12-23 23:27:32', 1),
(59, '127.0.0.1', 'p3.angga@gmail.com', 2, '2020-12-24 01:47:47', 1),
(60, '127.0.0.1', 'p3.angga@gmail.com', 2, '2020-12-24 02:01:52', 1),
(61, '127.0.0.1', 'p3.angga@gmail.com', 2, '2020-12-24 03:00:12', 1),
(62, '127.0.0.1', 'm42.angga@yahoo.com', 3, '2020-12-24 04:34:03', 1),
(63, '127.0.0.1', 'p3.angga@gmail.com ', NULL, '2020-12-24 04:36:31', 0),
(64, '127.0.0.1', 'p3.angga@gmail.com', 2, '2020-12-24 04:36:41', 1),
(65, '127.0.0.1', 'p3.angga@gmail.com', 2, '2020-12-25 06:00:20', 1),
(66, '127.0.0.1', 'p3.angga@gmail.com', 2, '2020-12-25 09:18:47', 1),
(67, '127.0.0.1', 'trademefx@gmail.com', 4, '2020-12-25 09:52:08', 1),
(68, '127.0.0.1', 'p3.angga@gmail.com', 2, '2020-12-25 09:56:33', 1),
(69, '127.0.0.1', 'p3.angga@gmail.com', 2, '2020-12-25 18:34:09', 1),
(70, '127.0.0.1', 'm42.angga@yahoo.com', 3, '2020-12-28 00:38:54', 1),
(71, '127.0.0.1', 'm42.angga@yahoo.com', 3, '2020-12-28 00:38:55', 1),
(72, '127.0.0.1', 'raka', NULL, '2021-01-31 22:43:39', 0),
(73, '127.0.0.1', 'raka', NULL, '2021-01-31 22:43:51', 0),
(74, '127.0.0.1', 'raka', NULL, '2021-01-31 22:44:19', 0),
(75, '127.0.0.1', 'raka', NULL, '2021-01-31 22:45:12', 0),
(76, '127.0.0.1', 'raka', NULL, '2021-01-31 22:53:32', 0),
(77, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-01-31 22:56:22', 1),
(78, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-01 01:19:00', 1),
(79, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-01 01:42:01', 1),
(80, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-01 01:48:06', 1),
(81, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-01 02:09:45', 1),
(82, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-01 02:09:53', 1),
(83, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-01 02:59:01', 1),
(84, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-01 02:59:09', 1),
(85, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-01 03:11:10', 1),
(86, '127.0.0.1', 'm42.angga@yahoo.com', 3, '2021-02-01 03:11:35', 1),
(87, '127.0.0.1', 'm42.angga@yahoo.com', 3, '2021-02-01 03:33:49', 1),
(88, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-01 03:34:01', 1),
(89, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-01 22:59:58', 1),
(90, '127.0.0.1', 'tes@gmail.com', 9, '2021-02-03 04:40:04', 1),
(91, '127.0.0.1', 'p3.angga@gmail.com ', NULL, '2021-02-03 04:55:39', 0),
(92, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-03 04:55:49', 1),
(93, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-03 21:09:01', 1),
(94, '127.0.0.1', 'hd@gmail.com', 10, '2021-02-04 06:57:23', 1),
(95, '127.0.0.1', 'p3.angga@gmail.com ', NULL, '2021-02-04 06:58:48', 0),
(96, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-04 06:58:55', 1),
(97, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-04 19:24:18', 1),
(98, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-04 21:34:24', 1),
(99, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-04 21:35:21', 1),
(100, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-05 01:49:32', 1),
(101, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-05 18:36:31', 1),
(102, '127.0.0.1', 'hhh@gmail.com', 11, '2021-02-05 21:25:09', 1),
(103, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-06 01:11:26', 1),
(104, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-06 01:14:25', 1),
(105, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-06 03:48:16', 1),
(106, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-06 04:36:20', 1),
(107, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-06 04:52:54', 1),
(108, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-06 05:27:13', 1),
(109, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-06 20:05:06', 1),
(110, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-07 06:21:15', 1),
(111, '127.0.0.1', 'm42.angga@yahoo.com', NULL, '2021-02-07 07:30:26', 0),
(112, '127.0.0.1', 'm42.angga@yahoo.com', 3, '2021-02-07 07:31:17', 1),
(113, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-07 07:44:13', 1),
(114, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-07 07:44:41', 1),
(115, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-07 19:31:23', 1),
(116, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-08 09:13:56', 1),
(117, '127.0.0.1', 'm42.angga@yahoo.com', 3, '2021-02-08 11:28:33', 1),
(118, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-08 11:38:32', 1),
(119, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-08 11:39:01', 1),
(120, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-08 13:13:24', 1),
(121, '127.0.0.1', 'raka', NULL, '2021-02-08 20:18:34', 0),
(122, '127.0.0.1', 'raka', NULL, '2021-02-08 20:18:41', 0),
(123, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-08 20:18:49', 1),
(124, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-10 01:22:41', 1),
(125, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-10 07:36:08', 1),
(126, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-10 18:40:13', 1),
(127, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-11 19:46:06', 1),
(128, '127.0.0.1', 'raka', NULL, '2021-02-12 09:04:20', 0),
(129, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-12 09:04:31', 1),
(130, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-12 19:05:53', 1),
(131, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-13 23:08:58', 1),
(132, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-14 06:15:19', 1),
(133, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-14 20:19:53', 1),
(134, '127.0.0.1', 'm42.angga@yahoo.com', 3, '2021-02-15 05:27:57', 1),
(135, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-15 05:28:56', 1),
(136, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-15 05:30:02', 1),
(137, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-15 07:50:32', 1),
(138, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-15 09:42:24', 1),
(139, '127.0.0.1', 'm42.angga@yahoo.com', 3, '2021-02-15 09:42:40', 1),
(140, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-15 09:47:35', 1),
(141, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-16 04:05:00', 1),
(142, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-17 04:04:08', 1),
(143, '127.0.0.1', 'p3.angga@gmail.com', 2, '2021-02-17 09:24:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-users', 'Manage All Users'),
(2, 'manage-profile', 'Manage User\'s Profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id_branch` int(11) NOT NULL,
  `nama_branch` varchar(45) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `west_east` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id_branch`, `nama_branch`, `alamat`, `west_east`, `created_at`, `updated_at`) VALUES
(1, 'TC Cipanas', 'Villa Green Apple, Sindanglaya, Cipanas, Cianjur, Jawa Barat', 'West', '2021-02-04 10:05:30', '0000-00-00 00:00:00'),
(2, 'TC Pamulang', 'Ruko Reni Jaya', 'West', '2021-02-04 10:05:30', '0000-00-00 00:00:00'),
(3, 'Cab. Makasar', 'Andi Tondro', 'East', '2021-02-15 09:25:58', '2021-02-15 09:25:58');

-- --------------------------------------------------------

--
-- Table structure for table `closing`
--

CREATE TABLE `closing` (
  `closing_id` int(12) UNSIGNED NOT NULL,
  `slug` varchar(250) NOT NULL,
  `nama_marketing` varchar(50) NOT NULL,
  `cabang_marketing` varchar(50) NOT NULL,
  `status_marketing` varchar(100) NOT NULL,
  `nama_casis` varchar(50) NOT NULL,
  `program` varchar(50) NOT NULL,
  `cabang_casis` varchar(50) NOT NULL,
  `no_telp` int(15) NOT NULL,
  `uang_pendaftaran` int(50) NOT NULL,
  `uang_pangkal` int(50) NOT NULL,
  `uang_pendidikan` int(50) NOT NULL,
  `no_kwitansi` int(6) NOT NULL,
  `kwitansi` varchar(100) NOT NULL,
  `bukti_setor` varchar(100) NOT NULL,
  `tanggal_closing` varchar(10) NOT NULL,
  `sumber_data` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `closing`
--

INSERT INTO `closing` (`closing_id`, `slug`, `nama_marketing`, `cabang_marketing`, `status_marketing`, `nama_casis`, `program`, `cabang_casis`, `no_telp`, `uang_pendaftaran`, `uang_pangkal`, `uang_pendidikan`, `no_kwitansi`, `kwitansi`, `bukti_setor`, `tanggal_closing`, `sumber_data`, `created_at`, `updated_at`) VALUES
(1, '555666', 'frege', 'Cab. Semarang', 'Siswa IDM/Advertiser', 'tyjtyj', 'Cruise Line and Hotel School', 'Cab. Semarang', 567567, 56546, 546546, 456546, 555666, '1612242032_ef8adfc5f18f5f41558f.png', '1612242032_96e46c9b8ff575f379ba.jpeg', '2021-02-01', 'Instagram', '2021-02-01 16:00:32', '2021-02-01 16:00:32'),
(6, '666777', 'fsf', 'Cab. Jakarta Haji Nawi', 'Staff TC/Cabang', 'gsg', 'Flight Attendant', 'Cab. Batam', 87678, 97897, 67967, 5747, 666777, '1612242953_687e842da567fe32f81d.png', '1612242953_37bd94d5b1d118b7348d.jpeg', '2021-01-14', 'Instagram', '2021-02-01 16:15:53', '2021-02-01 16:15:53'),
(7, '547566', 'tyjtyj', 'Cab. Palembang', 'Siswa IDM/Advertiser', 'rthrth', 'Cruise Line and Hotel School', 'Cab. Pamulang', 64575, 75, 757, 5675, 547566, '1612243013_ea4549c5ac70ab43d793.png', '1612243013_764e6bf699e99ed39793.jpeg', '2020-12-31', 'Instagram', '2021-02-01 16:16:53', '2021-02-01 16:16:53');

-- --------------------------------------------------------

--
-- Table structure for table `closing_new`
--

CREATE TABLE `closing_new` (
  `closing_id` int(11) NOT NULL,
  `slug` varchar(11) NOT NULL,
  `uang_pendaftaran` int(11) NOT NULL,
  `uang_pangkal` int(11) NOT NULL,
  `uang_pendidikan` int(11) NOT NULL,
  `no_kwitansi` varchar(11) NOT NULL,
  `kwitansi` varchar(45) NOT NULL,
  `bukti_setor` varchar(45) NOT NULL,
  `tanggal_closing` date NOT NULL,
  `tanggal_belajar` date NOT NULL,
  `sumber_data` varchar(45) NOT NULL,
  `eksekutor` varchar(45) NOT NULL,
  `student_branch` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `id` int(11) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `nis` int(11) NOT NULL,
  `nama_student` varchar(45) NOT NULL,
  `id_program` int(11) NOT NULL,
  `nama_program` varchar(45) NOT NULL,
  `id_branch` int(11) NOT NULL,
  `nama_branch` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `closing_new`
--

INSERT INTO `closing_new` (`closing_id`, `slug`, `uang_pendaftaran`, `uang_pangkal`, `uang_pendidikan`, `no_kwitansi`, `kwitansi`, `bukti_setor`, `tanggal_closing`, `tanggal_belajar`, `sumber_data`, `eksekutor`, `student_branch`, `created_at`, `updated_at`, `id`, `fullname`, `nis`, `nama_student`, `id_program`, `nama_program`, `id_branch`, `nama_branch`) VALUES
(1, '559413', 200000, 3000000, 2000000, '559413', '1613402834_536b301a97837bb88b85.png', '1613402834_75cad5a8da3d64363a51.jpeg', '2021-02-15', '0000-00-00', 'Tik Tok Ads', 'Fireball', 'TC Cipanas', '2021-02-15 09:27:14', '2021-02-15 09:27:14', 2, 'Raka Anggara', 2021020002, 'Mei Mei', 2, 'Flight Attendant', 1, 'TC Cipanas'),
(2, '264557', 200000, 0, 0, '264557', '1613403243_b776d157d942e217d373.png', '1613403243_2ae485374d41a7f625ee.jpeg', '2021-02-15', '0000-00-00', 'Tik Tok Ads', 'Fitri', 'Cab. Makasar', '2021-02-15 09:34:03', '2021-02-15 09:34:03', 2, 'Raka Anggara', 2021020003, 'svberg', 1, 'Airlines Staff', 2, 'TC Pamulang'),
(3, '664123', 200000, 3000000, 2000000, '664123', '1613403333_82373ac3a6a06bb28b22.png', '1613403333_78071925aff3eaef28f5.jpeg', '2021-02-15', '0000-00-00', 'Google Ads', 'Fitri', 'Cab. Makasar', '2021-02-15 09:35:33', '2021-02-15 09:35:33', 2, 'Raka Anggara', 2021020003, 'svberg', 2, 'Flight Attendant', 2, 'TC Pamulang'),
(4, '594985', 200000, 0, 0, '594985', '1613403728_bdd3d1c712bbdaf21b3a.png', '1613403728_e1d977e89634fc0f9375.jpeg', '2021-02-15', '0000-00-00', 'Roadshow', 'rambo', 'Cab. Makasar', '2021-02-15 09:42:08', '2021-02-15 09:42:08', 2, 'Raka Anggara', 2021020001, 'Ijat Hapidin', 1, 'Airlines Staff', 3, 'Cab. Makasar'),
(5, '674866', 0, 3000000, 2000000, '674866', '1613403910_6a601e941ab119285ee1.png', '1613403910_2e74d3dc7832aa02525b.jpeg', '2021-02-15', '0000-00-00', 'Facebook Group/Loker', 'Rona', 'TC Cipanas', '2021-02-15 09:45:10', '2021-02-15 09:45:10', 3, 'Raka Sebagai User', 2021020001, 'Ijat Hapidin', 2, 'Flight Attendant', 1, 'TC Cipanas'),
(6, '958749', 200000, 3000000, 2000000, '958749', '1613403984_e45908a5c30e02b1a06f.png', '1613403984_9e4dff9709b180d97589.jpeg', '2021-02-15', '0000-00-00', 'Google Ads', 'gondrong', 'TC Pamulang', '2021-02-15 09:46:24', '2021-02-15 09:46:24', 3, 'Raka Sebagai User', 2021020002, 'Mei Mei', 1, 'Airlines Staff', 1, 'TC Cipanas'),
(7, '345232', 0, 3000000, 0, '345232', '1613404038_674eb2a351d1b76e7edc.png', '1613404038_c4d327dc2573c0a248a6.jpeg', '2021-02-15', '0000-00-00', 'Roadshow', 'lia', 'TC Cipanas', '2021-02-15 09:47:18', '2021-02-15 09:47:18', 3, 'Raka Sebagai User', 2021020003, 'svberg', 2, 'Flight Attendant', 3, 'Cab. Makasar'),
(8, '3322', 200000, 0, 0, '003322', '1613578058_8ff7fdc263d7c64c6813.png', '1613578058_149db4e5ce0fc8eb8f74.jpeg', '2021-02-17', '2021-03-01', 'Instagram', 'rgrg', 'TC Cipanas', '2021-02-17 10:07:38', '2021-02-17 10:07:38', 2, 'Raka Anggara', 2021020001, 'Ijat Hapidin', 2, 'Flight Attendant', 1, 'TC Cipanas'),
(9, '000001', 200000, 3000000, 2000000, '000001', '1613583117_cb5ed85d7934114b7172.png', '1613583117_1579e9374e3cc6e7337c.jpeg', '2021-02-18', '2021-03-03', 'Google Ads', 'Mila', 'TC Pamulang', '2021-02-17 11:31:57', '2021-02-17 11:31:57', 2, 'Raka Anggara', 2021020002, 'Mei Mei', 1, 'Airlines Staff', 3, 'Cab. Makasar');

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto', 'naruto', 'Masashi Kishimoto', 'Sonen Jump', '1-naruto.jpg', NULL, NULL),
(2, 'boruto', 'boruto', 'Kimoto', 'Gramedia', '2-boruto.jpg', NULL, '2020-10-09 22:29:37'),
(10, 'gerg', 'gerg', 'wegweg', 'wgwe4g', '1603452050_5cb8500b45b6de78c8a4.png', '2020-10-23 02:44:13', '2020-10-23 06:20:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-10-26-092547', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1603794368, 1),
(2, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1604914930, 2),
(3, '2020-11-10-074610', 'App\\Database\\Migrations\\Closing', 'default', 'App', 1605003255, 3);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Vanesa Purnawati', 'Kpg. Suharso No. 206, Blitar 89165, Bali', '1971-04-20 14:34:17', '2020-11-02 04:59:07'),
(2, 'Yunita Mayasari', 'Dk. Pasteur No. 243, Palu 67380, Aceh', '1987-05-03 17:54:34', '2020-11-02 04:59:07'),
(3, 'Sarah Rahayu', 'Gg. Sumpah Pemuda No. 647, Batu 61530, Papua', '1997-03-13 16:36:16', '2020-11-02 04:59:07'),
(4, 'Mila Safitri', 'Jln. Flora No. 451, Tangerang 88216, BaBel', '1987-06-15 09:41:38', '2020-11-02 04:59:07'),
(5, 'Ajiman Budiman', 'Gg. Lumban Tobing No. 295, Bima 86023, Gorontalo', '1993-12-24 21:05:55', '2020-11-02 04:59:07'),
(6, 'Galiono Siregar', 'Jr. Bara Tambar No. 680, Administrasi Jakarta Selatan 72124, KalTim', '2003-12-17 00:38:32', '2020-11-02 04:59:07'),
(7, 'Ida Ilsa Mayasari S.Pt', 'Psr. B.Agam Dlm No. 516, Ambon 60415, JaTim', '1998-04-25 14:52:04', '2020-11-02 04:59:07'),
(8, 'Intan Nurdiyanti S.Sos', 'Ds. Padang No. 462, Depok 21544, Bali', '1982-08-02 05:38:28', '2020-11-02 04:59:07'),
(9, 'Bahuwirya Sitorus', 'Psr. Orang No. 196, Tangerang 37729, DIY', '1987-07-02 03:08:55', '2020-11-02 04:59:07'),
(10, 'Nabila Janet Mulyani S.E.I', 'Jln. Baranang Siang No. 586, Cirebon 74562, SulSel', '1976-04-11 16:49:19', '2020-11-02 04:59:07'),
(11, 'Prasetyo Iswahyudi', 'Gg. Wahidin Sudirohusodo No. 45, Salatiga 95795, Papua', '2011-12-27 19:48:22', '2020-11-02 04:59:07'),
(12, 'Vino Wibisono', 'Ds. Bakhita No. 298, Administrasi Jakarta Pusat 22774, JaBar', '2015-01-23 18:39:00', '2020-11-02 04:59:07'),
(13, 'Tira Lestari', 'Ds. Banal No. 545, Semarang 62940, KalTeng', '1981-07-22 10:32:46', '2020-11-02 04:59:07'),
(14, 'Rusman Danu Mandala', 'Psr. Jakarta No. 149, Batam 12778, JaTim', '1985-10-04 04:17:44', '2020-11-02 04:59:07'),
(15, 'Yunita Hastuti', 'Jln. Fajar No. 287, Bekasi 28912, JaTeng', '2011-10-02 18:52:23', '2020-11-02 04:59:07'),
(16, 'Umar Surya Irawan', 'Dk. Imam No. 338, Malang 10493, Lampung', '1990-02-06 09:38:29', '2020-11-02 04:59:07'),
(17, 'Ulva Ana Palastri S.Sos', 'Jln. Yogyakarta No. 964, Bengkulu 67008, KalTim', '2002-09-11 05:02:48', '2020-11-02 04:59:07'),
(18, 'Ajiman Dabukke', 'Jln. Perintis Kemerdekaan No. 921, Pariaman 97122, Bengkulu', '2005-06-11 17:05:11', '2020-11-02 04:59:07'),
(19, 'Hana Lailasari M.Farm', 'Ds. Katamso No. 358, Pontianak 42418, SulTra', '1972-09-22 09:40:52', '2020-11-02 04:59:07'),
(20, 'Nurul Padmasari', 'Psr. Ronggowarsito No. 328, Administrasi Jakarta Barat 36051, KalSel', '2010-12-02 06:29:12', '2020-11-02 04:59:07'),
(21, 'Laswi Natsir', 'Psr. Bacang No. 725, Ambon 73377, KalTim', '2004-03-19 17:35:30', '2020-11-02 04:59:08'),
(22, 'Nadia Prastuti S.H.', 'Dk. Suryo No. 184, Pasuruan 27883, KalBar', '2006-08-07 21:28:29', '2020-11-02 04:59:08'),
(23, 'Yessi Prastuti', 'Psr. K.H. Wahid Hasyim (Kopo) No. 514, Parepare 93855, KalTim', '2016-08-28 09:03:46', '2020-11-02 04:59:08'),
(24, 'Tiara Wijayanti', 'Psr. Peta No. 249, Gunungsitoli 72650, KalBar', '2002-11-21 06:06:50', '2020-11-02 04:59:08'),
(25, 'Jamalia Riyanti', 'Gg. Ciumbuleuit No. 953, Solok 87412, KepR', '1995-12-16 20:44:27', '2020-11-02 04:59:08'),
(26, 'Puti Pudjiastuti', 'Gg. Siliwangi No. 590, Salatiga 23010, SulSel', '1981-04-30 09:20:14', '2020-11-02 04:59:08'),
(27, 'Anggabaya Hutasoit S.Pt', 'Kpg. Pasteur No. 232, Administrasi Jakarta Utara 73259, KalTeng', '2019-02-11 04:19:09', '2020-11-02 04:59:08'),
(28, 'Prabawa Gilang Irawan', 'Jr. Kusmanto No. 816, Pagar Alam 69652, SulTeng', '1977-08-21 19:02:04', '2020-11-02 04:59:08'),
(29, 'Xanana Rajasa', 'Ds. Bayam No. 474, Balikpapan 38244, SulBar', '2005-05-28 12:52:41', '2020-11-02 04:59:08'),
(30, 'Yulia Hassanah', 'Ki. Dago No. 764, Pagar Alam 31953, Gorontalo', '1975-01-11 19:47:46', '2020-11-02 04:59:08'),
(31, 'Aditya Wijaya', 'Psr. Untung Suropati No. 308, Tarakan 57778, Lampung', '1981-04-22 09:48:40', '2020-11-02 04:59:08'),
(32, 'Halima Maimunah Palastri', 'Jr. Gambang No. 47, Bekasi 92235, Maluku', '2006-08-31 23:27:13', '2020-11-02 04:59:08'),
(33, 'Usyi Hana Yolanda M.TI.', 'Gg. Pasirkoja No. 589, Prabumulih 44008, Lampung', '1999-11-23 06:18:36', '2020-11-02 04:59:08'),
(34, 'Damu Ardianto', 'Gg. Baja No. 69, Tegal 53288, SulSel', '2006-08-18 03:32:08', '2020-11-02 04:59:08'),
(35, 'Alambana Haryanto S.Ked', 'Psr. Laksamana No. 552, Langsa 10223, JaTeng', '1976-05-17 11:35:21', '2020-11-02 04:59:08'),
(36, 'Kamila Humaira Hastuti', 'Ds. Padma No. 635, Cimahi 85059, NTB', '1989-06-09 21:47:46', '2020-11-02 04:59:08'),
(37, 'Hendri Pradipta S.IP', 'Jln. Bah Jaya No. 748, Mojokerto 94140, NTB', '2013-03-10 00:44:41', '2020-11-02 04:59:08'),
(38, 'Yance Kusmawati', 'Dk. Gardujati No. 644, Bekasi 57615, NTB', '2014-04-30 12:58:01', '2020-11-02 04:59:08'),
(39, 'Nyana Ramadan', 'Jln. Baan No. 161, Sibolga 10422, SulUt', '1985-07-04 08:38:10', '2020-11-02 04:59:08'),
(40, 'Zulfa Zulaika', 'Gg. Camar No. 96, Padangsidempuan 39894, MalUt', '2015-12-23 22:33:09', '2020-11-02 04:59:08'),
(41, 'Maimunah Yolanda', 'Gg. Surapati No. 848, Ambon 46945, KalTim', '2010-01-04 16:50:24', '2020-11-02 04:59:08'),
(42, 'Patricia Safitri', 'Psr. Raden Saleh No. 691, Bekasi 21680, PapBar', '1975-04-02 18:25:31', '2020-11-02 04:59:08'),
(43, 'Salman Dalimin Budiman M.Farm', 'Psr. Bahagia No. 635, Tegal 49305, PapBar', '2003-07-10 22:37:56', '2020-11-02 04:59:08'),
(44, 'Catur Kusumo', 'Jln. BKR No. 236, Kendari 20414, SulSel', '1979-03-06 18:08:38', '2020-11-02 04:59:08'),
(45, 'Cahyanto Sihotang', 'Dk. Yohanes No. 793, Tomohon 83873, Aceh', '2000-05-05 19:07:02', '2020-11-02 04:59:08'),
(46, 'Safina Nasyiah', 'Kpg. Sudiarto No. 55, Parepare 45614, SulBar', '2004-05-31 15:38:08', '2020-11-02 04:59:08'),
(47, 'Virman Jumadi Najmudin', 'Ds. Gremet No. 277, Ambon 98671, Maluku', '1974-05-23 16:55:45', '2020-11-02 04:59:08'),
(48, 'Enteng Firgantoro', 'Ki. Kalimalang No. 963, Padangsidempuan 40833, NTT', '1993-01-02 22:02:35', '2020-11-02 04:59:08'),
(49, 'Garan Nasrullah Tampubolon S.Psi', 'Ki. Sutan Syahrir No. 216, Jambi 89606, SumSel', '1991-08-22 08:21:26', '2020-11-02 04:59:08'),
(50, 'Salsabila Puput Oktaviani S.H.', 'Kpg. Soekarno Hatta No. 765, Pekalongan 42050, Papua', '2005-10-19 19:54:09', '2020-11-02 04:59:08'),
(51, 'Embuh Galuh Gunarto', 'Dk. Ir. H. Juanda No. 536, Banjarbaru 68796, DKI', '1994-06-09 13:39:05', '2020-11-02 04:59:08'),
(52, 'Harja Widodo', 'Psr. Wora Wari No. 437, Padang 91863, Papua', '2004-12-01 20:49:05', '2020-11-02 04:59:08'),
(53, 'Tina Hasanah', 'Psr. Imam Bonjol No. 557, Binjai 56532, Papua', '2009-09-27 11:36:07', '2020-11-02 04:59:08'),
(54, 'Zelaya Amelia Halimah S.IP', 'Psr. Bakhita No. 271, Surabaya 78045, Jambi', '2009-03-12 07:59:06', '2020-11-02 04:59:08'),
(55, 'Caturangga Gandi Thamrin', 'Gg. Gajah No. 190, Batam 85250, SumSel', '1977-12-18 11:38:13', '2020-11-02 04:59:08'),
(56, 'Kusuma Daliman Gunarto', 'Psr. Lumban Tobing No. 471, Bima 17911, Gorontalo', '2001-08-07 23:14:12', '2020-11-02 04:59:08'),
(57, 'Mursinin Suwarno', 'Jr. Kalimalang No. 162, Sukabumi 26410, PapBar', '1975-01-09 14:54:27', '2020-11-02 04:59:08'),
(58, 'Sarah Laksita S.Psi', 'Kpg. Tambun No. 401, Manado 28202, SumBar', '1986-03-26 11:44:44', '2020-11-02 04:59:08'),
(59, 'Balapati Haryanto', 'Kpg. Basket No. 182, Yogyakarta 91237, SulTeng', '1979-08-01 17:15:15', '2020-11-02 04:59:08'),
(60, 'Hamima Cinthia Hassanah S.I.Kom', 'Jln. Yoga No. 346, Solok 30691, KalUt', '1981-08-04 11:33:17', '2020-11-02 04:59:09'),
(61, 'Ade Simbolon', 'Gg. Bank Dagang Negara No. 252, Langsa 93554, SulUt', '1987-01-28 09:25:57', '2020-11-02 04:59:09'),
(62, 'Belinda Rahayu', 'Jln. Jend. A. Yani No. 262, Banjarmasin 79526, Lampung', '2003-05-03 21:44:56', '2020-11-02 04:59:09'),
(63, 'Darimin Najmudin', 'Jr. Veteran No. 156, Padang 84490, SulBar', '1973-03-28 13:53:16', '2020-11-02 04:59:09'),
(64, 'Amelia Kiandra Hartati S.Sos', 'Psr. HOS. Cjokroaminoto (Pasirkaliki) No. 481, Singkawang 15094, JaBar', '1979-12-27 00:50:43', '2020-11-02 04:59:09'),
(65, 'Tirta Panji Waluyo', 'Ds. Imam Bonjol No. 450, Madiun 36689, PapBar', '2018-06-25 21:35:06', '2020-11-02 04:59:09'),
(66, 'Jayeng Pangestu', 'Ds. Dipenogoro No. 123, Gunungsitoli 32466, KalBar', '2020-01-13 20:26:35', '2020-11-02 04:59:09'),
(67, 'Dian Vera Aryani S.Kom', 'Gg. Hasanuddin No. 197, Ambon 24355, Aceh', '1996-09-21 22:13:10', '2020-11-02 04:59:09'),
(68, 'Farah Sadina Yolanda S.H.', 'Gg. Baabur Royan No. 141, Pasuruan 86857, SulBar', '1994-07-30 05:24:44', '2020-11-02 04:59:09'),
(69, 'Enteng Asirwanda Ramadan', 'Kpg. Kyai Gede No. 186, Bitung 13340, SulTra', '1982-01-27 15:31:04', '2020-11-02 04:59:09'),
(70, 'Emin Waskita', 'Kpg. Basuki No. 13, Yogyakarta 55034, NTT', '2011-01-12 11:43:02', '2020-11-02 04:59:09'),
(71, 'Faizah Maryati S.Psi', 'Ds. Lembong No. 703, Yogyakarta 60329, Bali', '1995-05-11 21:15:48', '2020-11-02 04:59:09'),
(72, 'Raisa Elisa Laksmiwati S.H.', 'Jr. Asia Afrika No. 304, Pekalongan 35635, BaBel', '1982-11-04 04:39:30', '2020-11-02 04:59:09'),
(73, 'Zamira Wani Rahayu S.Psi', 'Jln. Baranang No. 416, Tual 98549, JaTim', '1976-03-30 00:41:01', '2020-11-02 04:59:09'),
(74, 'Xanana Santoso', 'Ki. Basuki No. 211, Mojokerto 39197, Aceh', '1992-07-12 18:12:45', '2020-11-02 04:59:09'),
(75, 'Unjani Pia Agustina', 'Ki. Bhayangkara No. 807, Jambi 71064, SumBar', '1976-03-22 03:00:41', '2020-11-02 04:59:09'),
(76, 'Juli Nurdiyanti', 'Ds. Dipenogoro No. 341, Pekanbaru 31584, NTT', '1980-05-28 16:37:33', '2020-11-02 04:59:09'),
(77, 'Rosman Simbolon', 'Ds. Sutami No. 534, Pekanbaru 43158, SumUt', '1991-03-06 11:59:38', '2020-11-02 04:59:09'),
(78, 'Liman Mandala', 'Dk. Baranangsiang No. 38, Pangkal Pinang 14948, SulTeng', '1980-03-02 11:58:24', '2020-11-02 04:59:09'),
(79, 'Zulaikha Ratih Permata S.H.', 'Jln. Basoka No. 566, Bandar Lampung 24281, Maluku', '1988-02-11 08:19:13', '2020-11-02 04:59:09'),
(80, 'Samiah Rahayu', 'Gg. Suryo No. 896, Tanjung Pinang 14534, SumSel', '1971-05-09 04:14:09', '2020-11-02 04:59:09'),
(81, 'Cemeti Edward Tampubolon S.IP', 'Jln. Veteran No. 772, Kupang 30805, SumUt', '1999-10-06 05:10:28', '2020-11-02 04:59:09'),
(82, 'Mulyono Pangestu S.Ked', 'Jln. Ir. H. Juanda No. 879, Banjarmasin 75018, NTT', '2004-10-10 06:34:59', '2020-11-02 04:59:09'),
(83, 'Syahrini Astuti', 'Jr. Sam Ratulangi No. 796, Palopo 25108, Aceh', '1988-09-26 22:59:27', '2020-11-02 04:59:09'),
(84, 'Among Simbolon', 'Jr. Baranang No. 876, Banjarmasin 28726, Bali', '1992-10-06 19:33:14', '2020-11-02 04:59:09'),
(85, 'Radit Jailani', 'Ds. Baing No. 587, Lhokseumawe 97095, MalUt', '1973-05-15 01:45:42', '2020-11-02 04:59:09'),
(86, 'Intan Puji Yuliarti', 'Kpg. Ujung No. 970, Palopo 95961, SulUt', '1995-03-13 11:53:28', '2020-11-02 04:59:09'),
(87, 'Ajiono Makara Damanik M.Farm', 'Psr. Mahakam No. 429, Administrasi Jakarta Selatan 56637, SulSel', '1971-12-16 11:35:38', '2020-11-02 04:59:09'),
(88, 'Syahrini Ella Laksmiwati S.Psi', 'Psr. Ketandan No. 734, Ambon 56887, Aceh', '1985-08-29 20:18:01', '2020-11-02 04:59:09'),
(89, 'Dalima Palastri', 'Gg. Gajah Mada No. 549, Padang 57114, JaTeng', '2011-01-13 05:21:11', '2020-11-02 04:59:09'),
(90, 'Jamalia Agustina M.TI.', 'Jr. Ters. Jakarta No. 261, Kediri 80836, JaTeng', '1993-09-13 05:05:28', '2020-11-02 04:59:09'),
(91, 'Tari Hana Rahimah S.Gz', 'Psr. Juanda No. 487, Semarang 62663, Maluku', '1990-02-15 06:54:01', '2020-11-02 04:59:09'),
(92, 'Vanesa Halimah', 'Gg. Pasir Koja No. 86, Banda Aceh 11279, SumUt', '2002-06-22 00:47:52', '2020-11-02 04:59:09'),
(93, 'Mulya Kuswoyo', 'Psr. Ketandan No. 867, Tarakan 99345, Maluku', '2017-11-15 08:50:32', '2020-11-02 04:59:09'),
(94, 'Latif Setiawan', 'Kpg. Yap Tjwan Bing No. 16, Tangerang 32665, SulTra', '2008-10-14 15:29:20', '2020-11-02 04:59:09'),
(95, 'Rahmi Novitasari', 'Jln. Hang No. 970, Jambi 57987, SulTeng', '1980-02-15 02:31:08', '2020-11-02 04:59:09'),
(96, 'Perkasa Wibisono', 'Dk. Thamrin No. 38, Sibolga 47029, KalSel', '2006-09-28 19:46:18', '2020-11-02 04:59:09'),
(97, 'Jumadi Hutapea S.Kom', 'Jr. Gedebage Selatan No. 807, Tarakan 96532, KalSel', '2005-10-21 01:12:50', '2020-11-02 04:59:10'),
(98, 'Opung Wibisono', 'Dk. Dipatiukur No. 937, Bima 43411, JaTeng', '1978-12-11 18:03:53', '2020-11-02 04:59:10'),
(99, 'Harsanto Megantara S.Gz', 'Ki. Raden No. 643, Sungai Penuh 48807, Gorontalo', '1990-11-14 13:05:20', '2020-11-02 04:59:10'),
(100, 'Syahrini Carla Winarsih S.I.Kom', 'Jr. Monginsidi No. 390, Tasikmalaya 68409, Bengkulu', '1991-07-11 03:54:12', '2020-11-02 04:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `id_program` int(11) NOT NULL,
  `nama_program` varchar(45) NOT NULL,
  `lama_pelatihan` int(11) NOT NULL,
  `total_price_east` int(11) NOT NULL,
  `total_price_west` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`id_program`, `nama_program`, `lama_pelatihan`, `total_price_east`, `total_price_west`, `created_at`, `updated_at`) VALUES
(1, 'Airlines Staff', 4, 17000000, 14000000, '2021-02-05 08:29:35', '2021-02-05 08:29:35'),
(2, 'Flight Attendant', 4, 20000000, 17000000, '2021-02-05 08:30:55', '2021-02-05 08:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id_student` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `nama_student` varchar(45) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(45) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `tinggi_badan` int(11) NOT NULL,
  `berat_badan` int(11) NOT NULL,
  `tanggal_daftar` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `id_program` int(11) NOT NULL,
  `id_branch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id_student`, `nis`, `nama_student`, `alamat`, `jenis_kelamin`, `tanggal_lahir`, `no_telp`, `email`, `tinggi_badan`, `berat_badan`, `tanggal_daftar`, `created_at`, `updated_at`, `id_program`, `id_branch`) VALUES
(7, 2021020001, 'Ijat Hapidin', 'Bogor', 'Pria', '2000-06-07', '2147483647', 'hai@gmail.com', 180, 70, '2021-02-02', '2021-02-06 01:30:55', '2021-02-06 01:30:55', 1, 2),
(8, 2021020002, 'Mei Mei', 'Jakarta', 'Wanita', '2013-02-06', '876572422', 'coba@gmail.com', 177, 60, '2021-01-11', '2021-02-06 01:32:35', '2021-02-06 01:32:35', 2, 2),
(9, 2021020003, 'svberg', 'egeg', 'Pria', '2021-02-08', '756546', 'hrth@gmail.com', 345, 46, '2021-02-09', '2021-02-06 23:05:21', '2021-02-06 23:05:21', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `nik` int(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fullname` varchar(500) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `id_branch` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nik`, `email`, `fullname`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`, `id_branch`) VALUES
(2, 2021010001, 'p3.angga@gmail.com', 'Raka Anggara', 'raka', '$2y$10$BopN0Cq.3uEaCftgaVMlEe5ZCi7kTwVERvsHDJw3gmRgE1IHaMIz2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-11-09 04:34:48', '2020-11-09 04:34:48', NULL, 1),
(3, 2012020002, 'm42.angga@yahoo.com', 'Raka Sebagai User', 'panjul', '$2y$10$wKiRBJN/l4uXzBqvi0uP4.omOML.lkjLP09paCULXESoE3TkRYIFa', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-12-23 22:57:17', '2020-12-23 22:57:17', NULL, 1),
(4, 2021020003, 'trademefx@gmail.com', 'Hendro Saptono', 'hendro', '$2y$10$hxr/d3MJ4Ng01qbOHHfR8eKTvp3BFHUk4SW17YQRH0gk9zF0khKIC', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-12-25 09:30:24', '2020-12-25 09:30:24', NULL, 1),
(5, 2021020004, 'ketua.umum@gmail.com', 'Mrs. Yenni Widiarti', 'ketuaumum', '$2y$10$HTiBaHTkEvOMMiwCOSuj4u.VkD7i/KfrKEBYljCp8PBbqIyo4I5Fi', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-12-25 09:32:12', '2020-12-25 09:32:12', NULL, 1),
(6, 2021020005, 'mr.tomo@gmail.com', 'Sutomo', 'tomo', '$2y$10$xFLsRYQi3dDC/llKtS6EpOwF61FKvUJ3yiHdmFHqCxs9W3TGByYQe', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-12-25 09:33:50', '2020-12-25 09:33:50', NULL, 1),
(7, 2021020006, 'ahmad.chalik@gmail.com', 'Ahmad Chalik', 'chalik', '$2y$10$NwpJNa9hX4D7hyhDucTxVOEA/PIRsi5.lZIboALX3EXxVDqCO/.h.', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-12-25 09:35:20', '2020-12-25 09:35:20', NULL, 1),
(8, 2021020007, 'another.account@gmail.com', '', 'other', '$2y$10$jve0G0iJaYqR6LdjDTq6reTnV/VqdWmgeAzzUl11Y.KI8zg.SQJFW', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-12-25 09:37:45', '2020-12-25 09:37:45', NULL, 2),
(9, 2021020008, 'tes@gmail.com', 'Mariana Lopes', 'Lopes', '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-02-03 04:39:49', '2021-02-03 04:39:49', NULL, 2),
(19, 2021020014, 'gerge@gmail.com', 'vgerbh', 'dbdbrt', '$2y$10$oKMz9P2AtQTDVJNjMOIuDOT7D3AyqVmFNEE/Mc1kn1GGho4iaZsyO', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-02-06 04:58:24', '2021-02-06 04:58:24', NULL, 2),
(20, 2021020015, 'grogi@gmail.com', 'brthr', 'rnyty', '$2y$10$vNifrh21T8sFAj9KHJVVh.TM0wqP8BYQr/5EKMpIvDyBQYuXgoGEK', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-02-06 05:17:55', '2021-02-06 05:17:55', NULL, 2),
(21, 2021020016, 'brtb@gmail.com', 'svbtbn', 'tbrt', '$2y$10$c0UwZ4Rq9IlmlX/2XASSzeeV8hnhxsBG3Xj0lIg0Vu0HaTjAGkwOW', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-02-06 05:19:51', '2021-02-06 05:19:51', NULL, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `group_id_user_id` (`group_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id_branch`);

--
-- Indexes for table `closing`
--
ALTER TABLE `closing`
  ADD PRIMARY KEY (`closing_id`);

--
-- Indexes for table `closing_new`
--
ALTER TABLE `closing_new`
  ADD PRIMARY KEY (`closing_id`),
  ADD KEY `id` (`id`,`nis`,`id_program`,`id_branch`);

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id_program`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id_student`),
  ADD UNIQUE KEY `nis` (`nis`),
  ADD KEY `id_branch` (`id_branch`),
  ADD KEY `id_program` (`id_program`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `id_branch` (`id_branch`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id_branch` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `closing`
--
ALTER TABLE `closing`
  MODIFY `closing_id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `closing_new`
--
ALTER TABLE `closing_new`
  MODIFY `closing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `id_program` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id_student` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

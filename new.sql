-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 30, 2025 at 03:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_app`
--

CREATE TABLE `about_app` (
  `id` int(11) NOT NULL,
  `about_app` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `about_app`
--

INSERT INTO `about_app` (`id`, `about_app`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a ', '2025-10-27 09:20:47', '2025-10-27 09:20:47', '2025-10-27 09:20:47'),
(1, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a ', '2025-10-27 09:20:47', '2025-10-27 09:20:47', '2025-10-27 09:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin@gmail.com', '$2y$12$9O42rfF/H.ajYW1ZhTPMVevXGyTkPkTo9GmsjhfDTBx3BeORyrxzq', NULL, '2025-12-23 06:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_key` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `setting_key`, `setting_value`, `created_at`, `updated_at`) VALUES
(1, 'show_fake_users_mobile', '1', '2025-12-19 09:41:44', '2025-12-22 16:04:12');

-- --------------------------------------------------------

--
-- Table structure for table `blocked_users`
--

CREATE TABLE `blocked_users` (
  `id` int(11) NOT NULL,
  `block_by` int(11) DEFAULT NULL,
  `block_to` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `body_types`
--

CREATE TABLE `body_types` (
  `id` int(11) NOT NULL,
  `body_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `body_types`
--

INSERT INTO `body_types` (`id`, `body_type`, `created_at`, `updated_at`) VALUES
(1, 'Slim (Spinkel)', '2025-09-19 13:06:02', NULL),
(2, 'Average (Gennemsnitlig)', '2025-09-19 13:06:02', NULL),
(3, 'Toned (Tonet)', '2025-09-19 13:06:02', NULL),
(4, 'Athletic (Atletisk)', '2025-09-19 13:06:02', NULL),
(5, 'Muscular (Muskuløs)', '2025-09-19 13:06:02', NULL),
(6, 'Curvy (Kurvet)', '2025-09-19 13:06:02', NULL),
(7, 'Plus-size (Plus-size)', '2025-09-19 13:06:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `citys`
--

CREATE TABLE `citys` (
  `id` int(11) NOT NULL,
  `region_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `citys`
--

INSERT INTO `citys` (`id`, `region_id`, `user_id`, `city`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 'Dianalund', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(2, 1, NULL, 'Fakse', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(3, 1, NULL, 'Farum', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(4, 1, NULL, 'Frederikssund', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(5, 1, NULL, 'Frederiksværk', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(6, 1, NULL, 'Gilleleje', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(7, 1, NULL, 'Helsingør', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(8, 1, NULL, 'Hillerød', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(9, 1, NULL, 'Hørsholm', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(10, 1, NULL, 'Kalundborg', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(11, 1, NULL, 'Køge', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(12, 1, NULL, 'Nakskov', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(13, 1, NULL, 'Næstved', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(14, 1, NULL, 'Nykøbing Falster', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(15, 1, NULL, 'Ringsted', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(16, 1, NULL, 'Roskilde', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(17, 1, NULL, 'Rønne', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(18, 1, NULL, 'Skælskør', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(19, 1, NULL, 'Slagelse', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(20, 1, NULL, 'Storkøbenhavn', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(21, 1, NULL, 'Taastrup', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(22, 1, NULL, 'Vordingborg', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(23, 2, NULL, 'Aarup', '2025-09-19 11:02:51', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(24, 2, NULL, 'Assens', '2025-09-19 11:02:51', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(25, 2, NULL, 'Bogense', '2025-09-19 11:02:51', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(26, 2, NULL, 'Faaborg', '2025-09-19 11:02:51', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(27, 2, NULL, 'Kerteminde', '2025-09-19 11:02:51', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(28, 2, NULL, 'Middelfart', '2025-09-19 11:02:51', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(29, 2, NULL, 'Nyborg', '2025-09-19 11:02:51', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(30, 2, NULL, 'Odense', '2025-09-19 11:02:51', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(31, 2, NULL, 'Ringe', '2025-09-19 11:02:51', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(32, 2, NULL, 'Svendborg', '2025-09-19 11:02:51', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(33, 3, NULL, 'Aabenraa', '2025-09-19 11:02:51', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(34, 3, NULL, 'Aars', '2025-09-19 11:02:51', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(35, 3, NULL, 'Aalborg', '2025-09-19 11:02:51', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(36, 3, NULL, 'Aarhus', '2025-09-19 11:02:51', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(37, 3, NULL, 'Brande', '2025-09-19 11:02:51', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(38, 3, NULL, 'Brønderslev', '2025-09-19 11:02:51', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(95, 3, NULL, 'Ebeltoft', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(96, 3, NULL, 'Esbjerg', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(97, 3, NULL, 'Fredericia', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(98, 3, NULL, 'Frederikssund', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(99, 3, NULL, 'Grenå', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(100, 3, NULL, 'Herning', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(101, 3, NULL, 'Kolding', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(102, 3, NULL, 'Nykøbing Mors', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(103, 3, NULL, 'Randers', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(104, 3, NULL, 'Ribe', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(105, 3, NULL, 'Ringkøbing', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(106, 3, NULL, 'Silkeborg', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(107, 3, NULL, 'Skjern', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(108, 3, NULL, 'Sønderborg', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(109, 3, NULL, 'Thisted', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(110, 3, NULL, 'Thyborøn', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(111, 3, NULL, 'Tønder', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(112, 3, NULL, 'Varde', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(113, 3, NULL, 'Vejle', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(114, 3, NULL, 'Viborg', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(115, 3, NULL, 'Vojens', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(116, 4, NULL, 'Helsingborg', '2025-09-19 11:02:48', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(117, 4, NULL, 'Kristianstad', '2025-09-19 11:02:51', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(118, 4, NULL, 'Landskrona', '2025-09-19 11:02:51', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(119, 4, NULL, 'Lund', '2025-09-19 11:02:51', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(120, 1, NULL, 'København', '2025-09-22 13:30:47', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(122, 4, NULL, 'Malmø', '2025-09-26 07:24:05', '2025-12-30 08:34:37', '0000-00-00 00:00:00'),
(124, 5, NULL, 'Tangail', '2025-12-30 02:34:46', '2025-12-30 03:04:00', '2025-12-30 03:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`, `short_name`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'Denmark', 'DK', '2025-10-30 11:39:54', '2025-10-30 11:39:54', '2025-10-30 11:39:54'),
(2, 'Sweden', 'SE', '2025-10-30 11:39:54', '2025-10-30 11:39:54', '2025-10-30 11:39:54'),
(3, 'Bangladesh', 'BD', '2025-12-30 01:59:09', '2025-12-30 07:59:09', '2025-12-30 01:59:09');

-- --------------------------------------------------------

--
-- Table structure for table `country_codes`
--

CREATE TABLE `country_codes` (
  `id` int(11) NOT NULL,
  `country_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `country_codes`
--

INSERT INTO `country_codes` (`id`, `country_code`, `country`, `flag`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, '+45', 'Denmark', 'https://flagcdn.com/w40/dk.png', '2025-09-19 07:58:44', '2025-09-19 07:58:44', '2025-09-19 07:58:44'),
(2, '+46', 'Sweden ', 'https://flagcdn.com/w40/se.png', '2025-09-19 07:58:44', '2025-09-19 07:58:44', '2025-09-19 07:58:44');

-- --------------------------------------------------------

--
-- Table structure for table `device_info`
--

CREATE TABLE `device_info` (
  `id` int(11) NOT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `device_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `device_info`
--

INSERT INTO `device_info` (`id`, `fcm_token`, `user_id`, `device_id`, `device_type`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'f02nKceIBUICtyMyoOg_dw:APA91bG2891eslpS2aAtNFh-ny14P5CtMPg1CylMjxI-EKhh-oKZ5jR-cqIBCWN8wQBEfbHM5frELk9mzTA600acPP1rqo5u-8u6WOV8WMDVf1Rqd0L7d0g', 7, '5FAE7E24-3510-476A-998F-4857C9A18C12', 'ios', '2025-12-04 07:15:59', '2025-12-05 00:35:09', '2025-12-05 00:35:09'),
(2, 'abc', 1, 'CA4BC06D-4B77-47DA-9DF0-30A3130B0AA5', 'ios', '2025-12-04 09:09:35', '2025-12-04 09:15:18', '2025-12-04 09:15:18'),
(3, '3|H1gWdZZMeu10Lj0dD1EZINPAOlYADVhSyLzUpRjU39dd1111', 13, 'CA4BC06D-4B77-47DA-9DF0-30A3130B0AA5', 'ios', '2025-12-04 09:17:06', NULL, '2025-12-04 09:17:06'),
(4, 'f0IS9sk1q0hsgRs5wjhe4k:APA91bHFI30rz-1UOyUWdJOnTDfE6Fwm7r8iwvjPwJX-pOu7KO0qdVwVK3RmFbyGAqZQyQf91tpezInGkAek8gGlJLuf_EeYNjZckiRaHrz8l-hb9-OhXJg', 14, '3A4C4D12-80B9-461F-BF54-C1994B5F1914', 'ios', '2025-12-04 14:13:45', '2025-12-05 06:25:12', '2025-12-05 06:25:12'),
(5, 'fIGT7AJDmkUotpWjqeUNwn:APA91bHhss7f_pzbZsBKZbHBDfPm-9MMZAsqCclcSNZ_B64IZn3hyOKLoQ1vDvoipF0KjRGoMlriLlFn1nJh8N2BIsimCYaIkuIaVtGu-qQhYE-uDH0yTVk', 7, '5FAE7E24-3510-476A-998F-4857C9A18C12', 'ios', '2025-12-05 00:36:09', '2025-12-12 11:48:52', '2025-12-12 11:48:52'),
(6, 'eBgMtXuuTuqg0m4IMWNlhg:APA91bH4ImZJCv5c6iHGcI3_VkZzenszcOpQEoIQs4Lbfz2_qugXRrrgeXCvnUZmIXDcyNbmEos0z1XGa-6h3XU_Im_Y_Ko5f3BaUhIo9jxplUm9xLXWRTQ', 7, 'SKQ1.210908.001', 'android', '2025-12-05 01:32:07', '2025-12-05 06:03:43', '2025-12-05 06:03:43'),
(7, '8|79ScGijsOykMsv2XR4BYgN2qoll5Andw0EjvSgKY50547bd1', 15, 'SKQ1.210908.001', 'android', '2025-12-05 06:04:07', NULL, '2025-12-05 06:04:07'),
(8, 'feTY3a3hT1Sn7Ya8r-1UCr:APA91bFvKgUzZqwLOuGv0h9mi1r4Tm3tjlpWLCvc4ET607yEqQgFF-6WkaqaIQISj4txWoQ1mHbPqjfL9sBVGqYrt9A_Oy-2pBe-pCOUIS8POyL14ka6s_w', 7, 'SKQ1.210908.001', 'android', '2025-12-05 06:09:01', NULL, '2025-12-08 13:54:35'),
(9, 'abc', 1, 'B922357F-E326-4604-A549-17A5F2D9322D', 'ios', '2025-12-05 06:21:57', NULL, '2025-12-05 06:21:57'),
(10, 'f0IS9sk1q0hsgRs5wjhe4k:APA91bHFI30rz-1UOyUWdJOnTDfE6Fwm7r8iwvjPwJX-pOu7KO0qdVwVK3RmFbyGAqZQyQf91tpezInGkAek8gGlJLuf_EeYNjZckiRaHrz8l-hb9-OhXJg', 6, '3A4C4D12-80B9-461F-BF54-C1994B5F1914', 'ios', '2025-12-05 06:25:56', '2025-12-05 06:31:39', '2025-12-05 06:31:39'),
(11, 'f0IS9sk1q0hsgRs5wjhe4k:APA91bHFI30rz-1UOyUWdJOnTDfE6Fwm7r8iwvjPwJX-pOu7KO0qdVwVK3RmFbyGAqZQyQf91tpezInGkAek8gGlJLuf_EeYNjZckiRaHrz8l-hb9-OhXJg', 5, '3A4C4D12-80B9-461F-BF54-C1994B5F1914', 'ios', '2025-12-05 06:31:53', NULL, '2025-12-05 06:31:53'),
(12, 'abc', 1, '0911ECBD-F9F0-4BE5-8717-491233F85305', 'ios', '2025-12-05 08:12:40', NULL, '2025-12-05 08:12:40'),
(13, 'abc', 7, 'BP3A.251105.015', 'android', '2025-12-08 18:51:16', '2025-12-09 17:33:17', '2025-12-09 17:33:17'),
(14, 'abc', 7, '123456', 'android', '2025-12-09 14:55:28', NULL, '2025-12-09 14:55:28'),
(15, 'cutDqtDPTya1JFlUZM6XRX:APA91bHFr0LxNRqoPSvSsza2omJI06ai1CWulYEsgAJeUfQXP87R5bboxZGO3YZ5bPCERcrb8f2Z-6iStqM2VfOTwEqVlowl6dkdj7nENxnpp7Isl7iru8k', 16, 'UKQ1.230924.001', 'android', '2025-12-09 16:27:47', NULL, '2025-12-09 16:31:43'),
(16, 'abc', 1, 'B28BDDBE-B7D1-4FF4-85E2-EAF3E49A7E7D', 'ios', '2025-12-09 16:32:53', '2025-12-09 16:39:37', '2025-12-09 16:39:37'),
(17, 'dLK4fNSSSeKcr-6zDi_ZtW:APA91bE36g2UEWh1ZS1ePbD9UtVtJPrZ6ZUv-i7ozjAMasZOb9Yz7dj1hG2wHc6-nmbZ5MbL447ljvlXco4gYHgh-0urpROmXS1v3rrndwZXTZp8orV-O0s', 16, 'SKQ1.210908.001', 'android', '2025-12-09 16:39:20', NULL, '2025-12-09 16:39:20'),
(18, 'fBATICdLPUkEqmU3106VOX:APA91bELVvQQ1dsjv7U2n9j20YbeziHBfyw-IZ79tf3iR9M4oQEWruvQPhLYn7CRifZscE9Q6pWEHl3TOwLSUR4vEx3kIOxv6CRJ9LOwh3T_o2mtmavY8HA', 1, 'B28BDDBE-B7D1-4FF4-85E2-EAF3E49A7E7D', 'ios', '2025-12-09 16:39:58', '2025-12-09 16:45:37', '2025-12-09 16:45:37'),
(19, 'fBATICdLPUkEqmU3106VOX:APA91bELVvQQ1dsjv7U2n9j20YbeziHBfyw-IZ79tf3iR9M4oQEWruvQPhLYn7CRifZscE9Q6pWEHl3TOwLSUR4vEx3kIOxv6CRJ9LOwh3T_o2mtmavY8HA', 1, 'B28BDDBE-B7D1-4FF4-85E2-EAF3E49A7E7D', 'ios', '2025-12-09 16:46:10', NULL, '2025-12-09 16:46:10'),
(20, 'fIGT7AJDmkUotpWjqeUNwn:APA91bHhss7f_pzbZsBKZbHBDfPm-9MMZAsqCclcSNZ_B64IZn3hyOKLoQ1vDvoipF0KjRGoMlriLlFn1nJh8N2BIsimCYaIkuIaVtGu-qQhYE-uDH0yTVk', 5, '5FAE7E24-3510-476A-998F-4857C9A18C12', 'ios', '2025-12-09 17:30:02', '2025-12-10 17:32:34', '2025-12-10 17:32:34'),
(21, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 6, 'BP3A.251105.015', 'android', '2025-12-09 17:38:51', '2025-12-09 17:39:40', '2025-12-09 17:39:40'),
(22, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 6, 'BP3A.251105.015', 'android', '2025-12-09 17:43:40', '2025-12-09 17:44:27', '2025-12-09 17:44:27'),
(23, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 7, 'BP3A.251105.015', 'android', '2025-12-09 17:44:48', '2025-12-09 17:48:59', '2025-12-09 17:48:59'),
(24, '29|NBT8wF7xIeID3yD5DZCszlAgJISpDcepHKC0FalE046bd18e', 17, 'BP3A.251105.015', 'android', '2025-12-09 17:49:42', '2025-12-09 17:52:13', '2025-12-09 17:52:13'),
(25, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 7, 'BP3A.251105.015', 'android', '2025-12-09 17:52:30', '2025-12-09 17:53:01', '2025-12-09 17:53:01'),
(26, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 7, 'BP3A.251105.015', 'android', '2025-12-09 17:53:17', '2025-12-09 17:53:53', '2025-12-09 17:53:53'),
(27, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 14, 'BP3A.251105.015', 'android', '2025-12-09 17:54:21', '2025-12-09 17:54:43', '2025-12-09 17:54:43'),
(28, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 16, 'BP3A.251105.015', 'android', '2025-12-09 17:55:08', '2025-12-09 17:55:31', '2025-12-09 17:55:31'),
(29, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 9, 'BP3A.251105.015', 'android', '2025-12-09 17:56:15', '2025-12-09 17:57:48', '2025-12-09 17:57:48'),
(30, '35|hEozstyzNr9iUD8lPQGPO3n3FYDaIrpnOUEomjJ21e0bd46b', 18, 'BP3A.251105.015', 'android', '2025-12-09 18:00:23', '2025-12-09 18:03:51', '2025-12-09 18:03:51'),
(31, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 7, 'BP3A.251105.015', 'android', '2025-12-09 18:04:07', '2025-12-09 18:04:38', '2025-12-09 18:04:38'),
(32, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 9, 'BP3A.251105.015', 'android', '2025-12-09 18:04:59', '2025-12-09 18:05:36', '2025-12-09 18:05:36'),
(33, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 14, 'BP3A.251105.015', 'android', '2025-12-09 18:05:56', '2025-12-09 18:06:18', '2025-12-09 18:06:18'),
(34, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 16, 'BP3A.251105.015', 'android', '2025-12-09 18:06:29', '2025-12-09 18:06:54', '2025-12-09 18:06:54'),
(35, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 7, 'BP3A.251105.015', 'android', '2025-12-09 18:07:38', '2025-12-09 18:10:22', '2025-12-09 18:10:22'),
(36, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 17, 'BP3A.251105.015', 'android', '2025-12-09 18:10:36', '2025-12-09 19:00:07', '2025-12-09 19:00:07'),
(37, 'abc', 17, '12345678', 'android', '2025-12-09 18:23:23', NULL, '2025-12-09 18:23:23'),
(38, 'abc', 18, '12345678', 'android', '2025-12-09 18:25:27', NULL, '2025-12-09 18:25:27'),
(39, 'dLK4fNSSSeKcr-6zDi_ZtW:APA91bE36g2UEWh1ZS1ePbD9UtVtJPrZ6ZUv-i7ozjAMasZOb9Yz7dj1hG2wHc6-nmbZ5MbL447ljvlXco4gYHgh-0urpROmXS1v3rrndwZXTZp8orV-O0s', 18, 'SKQ1.210908.001', 'android', '2025-12-09 18:30:35', NULL, '2025-12-09 18:30:35'),
(40, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 7, 'BP3A.251105.015', 'android', '2025-12-09 19:00:19', '2025-12-09 19:00:40', '2025-12-09 19:00:40'),
(41, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 18, 'BP3A.251105.015', 'android', '2025-12-09 19:00:57', '2025-12-09 19:06:11', '2025-12-09 19:06:11'),
(42, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 18, 'BP3A.251105.015', 'android', '2025-12-09 19:06:20', '2025-12-09 19:06:56', '2025-12-09 19:06:56'),
(43, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 18, 'BP3A.251105.015', 'android', '2025-12-09 19:07:26', '2025-12-09 19:12:30', '2025-12-09 19:12:30'),
(44, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 18, 'BP3A.251105.015', 'android', '2025-12-09 19:12:37', '2025-12-09 19:13:50', '2025-12-09 19:13:50'),
(45, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 18, 'BP3A.251105.015', 'android', '2025-12-09 19:15:20', '2025-12-09 19:16:51', '2025-12-09 19:16:51'),
(46, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 7, 'BP3A.251105.015', 'android', '2025-12-09 20:13:53', '2025-12-09 22:37:59', '2025-12-09 22:37:59'),
(47, 'cSl4paGN0UXUuW6nfr8miF:APA91bGmkLAVOlSM4aaA1VUJxX-yCb9EpCtF1AsRKMporfM043YTGaQf9RJXJQBQjVm9voaT66c9P2XrrQItp3r-vdD2NeLPfquH-e21jiej5Yt5CSazzz0', 1, '7061DBCD-5F99-44BF-BE21-A7A5FC446EAD', 'ios', '2025-12-09 21:14:57', '2025-12-09 21:28:19', '2025-12-09 21:28:19'),
(48, '56|yjbrsZSH9nDSPuEboNHXbFyUUaCRZTNOnY2v7Kyp350149c2', 19, '7061DBCD-5F99-44BF-BE21-A7A5FC446EAD', 'ios', '2025-12-09 21:29:18', NULL, '2025-12-09 21:29:18'),
(49, 'cSl4paGN0UXUuW6nfr8miF:APA91bGmkLAVOlSM4aaA1VUJxX-yCb9EpCtF1AsRKMporfM043YTGaQf9RJXJQBQjVm9voaT66c9P2XrrQItp3r-vdD2NeLPfquH-e21jiej5Yt5CSazzz0', 1, '7061DBCD-5F99-44BF-BE21-A7A5FC446EAD', 'ios', '2025-12-10 00:29:40', '2025-12-10 12:28:49', '2025-12-10 12:28:49'),
(50, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 7, 'BP3A.251105.015', 'android', '2025-12-10 01:36:15', '2025-12-10 01:36:59', '2025-12-10 01:36:59'),
(51, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 17, 'BP3A.251105.015', 'android', '2025-12-10 07:44:33', '2025-12-10 10:06:02', '2025-12-10 10:06:02'),
(52, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 17, 'BP3A.251105.015', 'android', '2025-12-10 10:06:10', '2025-12-10 10:29:03', '2025-12-10 10:29:03'),
(53, '61|4IC8ihcRTGo50ZNZRV5XezNtiE64aiBEpkKfYOred81b1515', 20, 'BP3A.251105.015', 'android', '2025-12-10 11:10:12', '2025-12-10 11:59:59', '2025-12-10 11:59:59'),
(54, '62|ikHEDjxk85SDQbSfhUOAQwJMHWIPypdBq58aSANO29c48315', 21, 'BP3A.251105.015', 'android', '2025-12-10 12:01:14', NULL, '2025-12-10 12:01:14'),
(55, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 22, 'BP3A.251105.015', 'android', '2025-12-10 12:07:17', NULL, '2025-12-10 12:37:59'),
(56, '64|iT2CkYien5nHf2PvrCLwGF1ZLIObGBNQIDjyfO1p2f781af1', 23, 'BP3A.251105.015', 'android', '2025-12-10 12:17:39', NULL, '2025-12-10 12:17:39'),
(57, '65|8s70ETTtQjBnDKIj6q4gXo2inANVjDN1hO4MO0rCe31f4161', 24, 'BP3A.251105.015', 'android', '2025-12-10 12:29:34', '2025-12-10 12:32:12', '2025-12-10 12:32:12'),
(58, '66|AOszvxZX1md3EzsPCqfbfOsnDohpUcV4pIdHhMlN0455cf47', 25, '7061DBCD-5F99-44BF-BE21-A7A5FC446EAD', 'ios', '2025-12-10 12:29:41', NULL, '2025-12-10 12:29:41'),
(59, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 24, 'BP3A.251105.015', 'android', '2025-12-10 12:37:01', '2025-12-10 12:37:43', '2025-12-10 12:37:43'),
(60, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 17, 'BP3A.251105.015', 'android', '2025-12-10 12:39:49', '2025-12-10 12:45:16', '2025-12-10 12:45:16'),
(61, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 24, 'BP3A.251105.015', 'android', '2025-12-10 12:45:40', '2025-12-10 12:45:52', '2025-12-10 12:45:52'),
(62, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 24, 'BP3A.251105.015', 'android', '2025-12-10 12:46:51', '2025-12-10 12:46:59', '2025-12-10 12:46:59'),
(63, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 24, 'BP3A.251105.015', 'android', '2025-12-10 12:47:10', '2025-12-10 12:47:52', '2025-12-10 12:47:52'),
(64, '74|CWS9G1xETys9H1od2n8hI56IJL34FuIPmBg1pN16704afe6d', 26, 'BP3A.251105.015', 'android', '2025-12-10 12:49:04', '2025-12-10 12:56:01', '2025-12-10 12:56:01'),
(65, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 26, 'BP3A.251105.015', 'android', '2025-12-10 12:56:06', '2025-12-10 12:57:19', '2025-12-10 12:57:19'),
(66, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 16, 'BP3A.251105.015', 'android', '2025-12-10 13:00:49', '2025-12-10 13:01:29', '2025-12-10 13:01:29'),
(67, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 7, 'BP3A.251105.015', 'android', '2025-12-10 14:00:30', '2025-12-10 14:00:39', '2025-12-10 14:00:39'),
(68, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 7, 'BP3A.251105.015', 'android', '2025-12-10 14:00:57', '2025-12-10 14:02:05', '2025-12-10 14:02:05'),
(69, '79|O2dHWAPMfeZ1dfo5KtzFOJHIp5MxOUJC5MQs9qwUeea91f45', 27, 'BP3A.251105.015', 'android', '2025-12-10 16:11:40', NULL, '2025-12-10 16:11:40'),
(70, 'cSl4paGN0UXUuW6nfr8miF:APA91bGmkLAVOlSM4aaA1VUJxX-yCb9EpCtF1AsRKMporfM043YTGaQf9RJXJQBQjVm9voaT66c9P2XrrQItp3r-vdD2NeLPfquH-e21jiej5Yt5CSazzz0', 1, '7061DBCD-5F99-44BF-BE21-A7A5FC446EAD', 'ios', '2025-12-10 16:51:35', '2025-12-10 18:05:10', '2025-12-10 18:05:10'),
(71, 'fEMtBWSCQs2ZepSJD3TzG3:APA91bFRm6Mm4Q7D6Xph_Nox_JUgGfXY8_DbVUTJPWecM1JKywVbQRn2h_7WXeJt9Lmrn-NKCcCseROUAXzGUe8dFtE-IUGaXb0R_--4ixvYwlb3qO4M_vw', 1, 'TP1A.220624.014', 'android', '2025-12-10 16:59:00', NULL, '2025-12-10 16:59:00'),
(72, '82|g1iB8sswZXAQ1xjav7ChZthzrTr3nOyvMhpKB3pm9a077587', 28, 'BP3A.251105.015', 'android', '2025-12-10 17:12:11', NULL, '2025-12-10 17:12:11'),
(73, '83|s8nif7RoZ1dsYrTJNySqzLK4asZvIAe4chwJ49Cd9f7ec87b', 29, 'BP3A.251105.015', 'android', '2025-12-10 17:25:43', NULL, '2025-12-10 17:25:43'),
(74, '84|Ddw6nAxocu52o3U70kmzOzTFP3o56RVMALifjiKh54f92019', 30, 'BP3A.251105.015', 'android', '2025-12-10 17:29:03', NULL, '2025-12-10 17:29:03'),
(75, '85|dWK9UqFQINknxcOw4qxteq0VEhfvnAAnVGE1xeBUbeafead7', 31, 'BP3A.251105.015', 'android', '2025-12-10 17:34:44', NULL, '2025-12-10 17:34:44'),
(76, '86|A7kh53lvmY5R6ioKuQpa6JFYOzZe09N6KRzPHbTdcf2b2f54', 32, 'BP3A.251105.015', 'android', '2025-12-10 17:40:45', NULL, '2025-12-10 17:40:45'),
(77, '87|EJgpsDj2iD3eMk1AF0DWXG55VZaXIFddTk1IKCQY2e440229', 33, '3A4C4D12-80B9-461F-BF54-C1994B5F1914', 'ios', '2025-12-10 20:08:18', NULL, '2025-12-10 20:08:18'),
(78, '88|yECXjrk4XaAPCE9cH9YKgTGjsAEULBuQznVWD7366338216e', 34, '724999BC-EF20-4D2E-9152-39015C68ABB0', 'ios', '2025-12-10 20:43:35', NULL, '2025-12-10 20:43:35'),
(79, '89|dXqx45bMDfQPruSjeNVSWXNqGG2J5VVlp2WUqxCj54401e9d', 35, 'BP3A.251105.015', 'android', '2025-12-11 11:51:13', NULL, '2025-12-11 11:51:13'),
(80, '93|RHXa6tlcCT2Panmf33bI0MFhx0EnVym2XD2QPeDz7a313727', 36, 'BP3A.251105.015', 'android', '2025-12-11 12:38:27', NULL, '2025-12-11 12:38:27'),
(81, '94|gyeTie7UFu1GyKhAqOaZj1iN4uRPYIINfsnNX8p8a8bcbc01', 37, 'BP3A.251105.015', 'android', '2025-12-11 12:40:10', NULL, '2025-12-11 12:40:10'),
(82, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 7, 'BP3A.251105.015', 'android', '2025-12-11 12:46:02', '2025-12-11 12:47:39', '2025-12-11 12:47:39'),
(83, 'abc', 1, '12345678', 'android', '2025-12-11 12:48:08', NULL, '2025-12-11 12:48:08'),
(84, 'e-x0ZjzIS66ntRmeBpYE-W:APA91bHHz0xEI1N6Y5PorJJFYUJI51x9fk3ttlT8x2MSEsQJKsAAUlZ-Gphp4_gtpm8_gSqG2pUJWadNpY-iHmiLrzYXfkL5b3D3FKoYomSC8BY96FM0pOA', 1, 'BP3A.251105.015', 'android', '2025-12-11 12:49:07', NULL, '2025-12-11 12:49:07'),
(85, '99|HcNEpKQKXOk2F4dZc5gEhHXmwynvYDek5E9Hu1K9724fd202', 38, '37FB1493-4516-44F6-AD89-4161254426B2', 'ios', '2025-12-11 13:02:27', NULL, '2025-12-11 13:02:27'),
(86, 'abc', 1, '86CBF17F-EAA6-446C-9021-7366D882259D', 'ios', '2025-12-11 13:25:09', '2025-12-11 13:34:19', '2025-12-11 13:34:19'),
(87, '101|3Jvm8OHMHmdpkKhUEcys3umStB9QIFiH9rYMwaQp770eb71e', 39, '86CBF17F-EAA6-446C-9021-7366D882259D', 'ios', '2025-12-11 14:05:58', NULL, '2025-12-11 14:05:58'),
(88, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 7, 'BP3A.251105.015', 'android', '2025-12-11 14:24:40', '2025-12-11 14:31:55', '2025-12-11 14:31:55'),
(89, 'epx_2aEKUk6YpejuvhBMA5:APA91bE-46gsolzBu0cqS4LPAXgpDyJndCR6j9jFMsIcn3xdIS2Yid6zyDh1vPkyGKKaMUx4I3zH4v6n1YtUCWvQanYLtxCmz_Czd7hvwNC7gonJUqF0Jb8', 1, '86CBF17F-EAA6-446C-9021-7366D882259D', 'ios', '2025-12-11 14:35:14', '2025-12-11 14:37:42', '2025-12-11 14:37:42'),
(90, '104|kLIbQXIOdhT1MwgiKwpUr2uDQsBjxAAdp0zzaHyJ27ab8586', 40, 'BP3A.251105.015', 'android', '2025-12-11 14:40:53', NULL, '2025-12-11 14:40:53'),
(91, 'epx_2aEKUk6YpejuvhBMA5:APA91bE-46gsolzBu0cqS4LPAXgpDyJndCR6j9jFMsIcn3xdIS2Yid6zyDh1vPkyGKKaMUx4I3zH4v6n1YtUCWvQanYLtxCmz_Czd7hvwNC7gonJUqF0Jb8', 1, '86CBF17F-EAA6-446C-9021-7366D882259D', 'ios', '2025-12-11 14:48:50', '2025-12-11 17:46:02', '2025-12-11 17:46:02'),
(92, '106|77GCoRUsjipia40T8K4U5nIADMGGxKfYRbhWgqkH6959f9f3', 41, 'BP3A.251105.015', 'android', '2025-12-11 14:52:44', NULL, '2025-12-11 14:52:44'),
(93, '107|F21mJ4YiomLQyM0Iz6AIsUN5t6HQ9f4tGXW5msPi2f3b11f1', 42, 'BP3A.251105.015', 'android', '2025-12-11 14:54:09', NULL, '2025-12-11 14:54:09'),
(94, '108|wZnATQCTLxjqXI8qfsYSrH0ETmzWcdXvMgkBFJCZ3ff46524', 43, 'BP3A.251105.015', 'android', '2025-12-11 15:01:19', NULL, '2025-12-11 15:01:19'),
(95, '109|ZNOn9XXIx7PLT67lsT68rEOgMqKisK81bblm2aWs96251738', 44, 'BP3A.251105.015', 'android', '2025-12-11 15:04:13', NULL, '2025-12-11 15:04:13'),
(96, '110|wHYxqg05tnxlxgH0vNWKQuQiKnnXmfKOoPwqhPzQcdca69f7', 45, 'BP3A.251105.015', 'android', '2025-12-11 15:22:27', NULL, '2025-12-11 15:22:27'),
(97, '111|n8YOTc3Q1UoQNGLn5I0OxQvAyiyEtxW4JGifdWIW4b2e24b0', 46, 'BP3A.251105.015', 'android', '2025-12-11 15:24:39', NULL, '2025-12-11 15:24:39'),
(98, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 47, 'BP3A.251105.015', 'android', '2025-12-11 15:56:18', '2025-12-11 16:37:14', '2025-12-11 16:37:14'),
(99, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 7, 'BP3A.251105.015', 'android', '2025-12-11 16:37:36', '2025-12-11 16:38:06', '2025-12-11 16:38:06'),
(100, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 9, 'BP3A.251105.015', 'android', '2025-12-11 16:38:31', '2025-12-11 16:39:28', '2025-12-11 16:39:28'),
(101, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 14, 'BP3A.251105.015', 'android', '2025-12-11 16:39:42', '2025-12-11 16:49:06', '2025-12-11 16:49:06'),
(102, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 16, 'BP3A.251105.015', 'android', '2025-12-11 16:49:20', '2025-12-11 16:49:48', '2025-12-11 16:49:48'),
(103, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 47, 'BP3A.251105.015', 'android', '2025-12-11 16:49:57', '2025-12-11 17:22:22', '2025-12-11 17:22:22'),
(104, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 47, 'BP3A.251105.015', 'android', '2025-12-11 17:22:32', '2025-12-11 17:42:29', '2025-12-11 17:42:29'),
(105, '120|Qj0W5VY2XbPFKtXqoWB161RYk8fXs7N3tcuKcKaNf769d1d4', 48, 'BP3A.251105.015', 'android', '2025-12-11 17:44:46', '2025-12-11 17:51:29', '2025-12-11 17:51:29'),
(106, '121|GchUEJ9G0FsrW8qRkiiSgEiF72NKWKF4q8VwSLmBa21f08cb', 49, '86CBF17F-EAA6-446C-9021-7366D882259D', 'ios', '2025-12-11 17:46:43', NULL, '2025-12-11 17:46:43'),
(107, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 7, 'BP3A.251105.015', 'android', '2025-12-11 17:51:52', '2025-12-11 17:52:11', '2025-12-11 17:52:11'),
(108, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 16, 'BP3A.251105.015', 'android', '2025-12-11 17:52:20', '2025-12-11 17:52:37', '2025-12-11 17:52:37'),
(109, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 14, 'BP3A.251105.015', 'android', '2025-12-11 17:53:32', '2025-12-11 17:55:41', '2025-12-11 17:55:41'),
(110, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 9, 'BP3A.251105.015', 'android', '2025-12-11 17:56:05', '2025-12-11 17:56:50', '2025-12-11 17:56:50'),
(111, 'epx_2aEKUk6YpejuvhBMA5:APA91bE-46gsolzBu0cqS4LPAXgpDyJndCR6j9jFMsIcn3xdIS2Yid6zyDh1vPkyGKKaMUx4I3zH4v6n1YtUCWvQanYLtxCmz_Czd7hvwNC7gonJUqF0Jb8', 1, '86CBF17F-EAA6-446C-9021-7366D882259D', 'ios', '2025-12-11 17:56:36', '2025-12-11 17:58:03', '2025-12-11 17:58:03'),
(112, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 48, 'BP3A.251105.015', 'android', '2025-12-11 17:58:10', '2025-12-11 18:48:41', '2025-12-11 18:48:41'),
(113, 'epx_2aEKUk6YpejuvhBMA5:APA91bE-46gsolzBu0cqS4LPAXgpDyJndCR6j9jFMsIcn3xdIS2Yid6zyDh1vPkyGKKaMUx4I3zH4v6n1YtUCWvQanYLtxCmz_Czd7hvwNC7gonJUqF0Jb8', 1, '86CBF17F-EAA6-446C-9021-7366D882259D', 'ios', '2025-12-11 17:58:23', '2025-12-11 17:58:36', '2025-12-11 17:58:36'),
(114, '129|OoupxB7V40SriuKbd4Pry0I4QR3eAhz4WQlo2vn3043e11df', 50, '86CBF17F-EAA6-446C-9021-7366D882259D', 'ios', '2025-12-11 18:17:03', NULL, '2025-12-11 18:17:03'),
(115, '130|UGjpOgrjlCTd7tZ6pKWEPemRbtoEVji10naxu1do7bb4f9a2', 51, 'BP3A.251105.015', 'android', '2025-12-11 18:56:19', NULL, '2025-12-11 18:56:19'),
(116, 'epx_2aEKUk6YpejuvhBMA5:APA91bE-46gsolzBu0cqS4LPAXgpDyJndCR6j9jFMsIcn3xdIS2Yid6zyDh1vPkyGKKaMUx4I3zH4v6n1YtUCWvQanYLtxCmz_Czd7hvwNC7gonJUqF0Jb8', 52, '86CBF17F-EAA6-446C-9021-7366D882259D', 'ios', '2025-12-11 19:59:22', NULL, '2025-12-11 20:04:00'),
(117, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 53, 'BP3A.251105.015', 'android', '2025-12-11 21:10:47', '2025-12-12 10:28:57', '2025-12-12 10:28:57'),
(118, 'epx_2aEKUk6YpejuvhBMA5:APA91bE-46gsolzBu0cqS4LPAXgpDyJndCR6j9jFMsIcn3xdIS2Yid6zyDh1vPkyGKKaMUx4I3zH4v6n1YtUCWvQanYLtxCmz_Czd7hvwNC7gonJUqF0Jb8', 1, '86CBF17F-EAA6-446C-9021-7366D882259D', 'ios', '2025-12-11 21:52:38', '2025-12-11 23:41:21', '2025-12-11 23:41:21'),
(119, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 7, 'BP3A.251105.015', 'android', '2025-12-12 01:06:53', '2025-12-12 01:08:55', '2025-12-12 01:08:55'),
(120, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 53, 'BP3A.251105.015', 'android', '2025-12-12 10:29:09', '2025-12-12 11:41:27', '2025-12-12 11:41:27'),
(121, '138|ePFCgNbwTmV079GMOVFLxQiZeaHmDmJdaYEorFCH1568eec1', 54, '5FAE7E24-3510-476A-998F-4857C9A18C12', 'ios', '2025-12-12 11:15:44', '2025-12-12 11:45:20', '2025-12-12 11:45:20'),
(122, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 53, 'BP3A.251105.015', 'android', '2025-12-12 11:41:45', '2025-12-12 11:49:50', '2025-12-12 11:49:50'),
(123, '141|nEnKHT0Mgpub8ba8qVaJ4u1wxJPDsKCeKeiZSRKa90c9c6cb', 55, 'BP3A.251105.015', 'android', '2025-12-12 11:52:59', NULL, '2025-12-12 11:52:59'),
(124, '142|ZStLcmbfVlVV4bQqaPCX8sgFcze1xyTgAJnboJSH27bc1e95', 56, 'BP3A.251105.015', 'android', '2025-12-12 11:55:38', '2025-12-12 12:00:33', '2025-12-12 12:00:33'),
(125, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 56, 'BP3A.251105.015', 'android', '2025-12-12 12:00:54', '2025-12-12 12:04:02', '2025-12-12 12:04:02'),
(126, '144|U3U2pWCe2OhWensC6byE4I7GOG3MU7hniJbC8cfIf3bd648f', 57, 'BP3A.251105.015', 'android', '2025-12-12 12:05:10', '2025-12-12 12:11:12', '2025-12-12 12:11:12'),
(127, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 57, 'BP3A.251105.015', 'android', '2025-12-12 12:11:30', '2025-12-12 12:21:43', '2025-12-12 12:21:43'),
(128, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 7, 'BP3A.251105.015', 'android', '2025-12-12 12:21:56', '2025-12-12 12:25:29', '2025-12-12 12:25:29'),
(129, '147|BJ67axFqxV7hdsavJXeK09TOMFHH2k49iOVRvxee0a2e7ba3', 58, 'BP3A.251105.015', 'android', '2025-12-12 12:26:24', '2025-12-12 12:41:24', '2025-12-12 12:41:24'),
(130, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 7, 'BP3A.251105.015', 'android', '2025-12-12 14:02:05', '2025-12-12 14:02:19', '2025-12-12 14:02:19'),
(131, '149|UGYmgFPtpffz5HDuJIA2mOalQMkIg1ASaqSdA9Ivfe28b6ee', 59, 'BP3A.251105.015', 'android', '2025-12-12 14:24:10', '2025-12-12 14:57:15', '2025-12-12 14:57:15'),
(132, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 59, 'BP3A.251105.015', 'android', '2025-12-12 15:00:43', '2025-12-12 15:00:54', '2025-12-12 15:00:54'),
(133, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 59, 'BP3A.251105.015', 'android', '2025-12-12 15:01:23', '2025-12-12 15:05:20', '2025-12-12 15:05:20'),
(134, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 60, 'BP3A.251105.015', 'android', '2025-12-12 15:07:46', '2025-12-12 15:56:47', '2025-12-12 15:56:47'),
(135, 'epx_2aEKUk6YpejuvhBMA5:APA91bE-46gsolzBu0cqS4LPAXgpDyJndCR6j9jFMsIcn3xdIS2Yid6zyDh1vPkyGKKaMUx4I3zH4v6n1YtUCWvQanYLtxCmz_Czd7hvwNC7gonJUqF0Jb8', 61, '86CBF17F-EAA6-446C-9021-7366D882259D', 'ios', '2025-12-12 15:42:18', '2025-12-12 16:45:37', '2025-12-12 16:45:37'),
(136, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 7, 'BP3A.251105.015', 'android', '2025-12-12 15:56:56', '2025-12-12 15:58:37', '2025-12-12 15:58:37'),
(137, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 60, 'BP3A.251105.015', 'android', '2025-12-12 16:08:20', '2025-12-12 16:12:25', '2025-12-12 16:12:25'),
(138, 'epx_2aEKUk6YpejuvhBMA5:APA91bE-46gsolzBu0cqS4LPAXgpDyJndCR6j9jFMsIcn3xdIS2Yid6zyDh1vPkyGKKaMUx4I3zH4v6n1YtUCWvQanYLtxCmz_Czd7hvwNC7gonJUqF0Jb8', 1, '86CBF17F-EAA6-446C-9021-7366D882259D', 'ios', '2025-12-12 16:17:21', '2025-12-12 16:39:49', '2025-12-12 16:39:49'),
(139, '159|dhyFlq2BjZDvsktEQlRrqyomVfkbYeZOAE1xfkpFb9d35bed', 62, '5FAE7E24-3510-476A-998F-4857C9A18C12', 'ios', '2025-12-12 16:41:30', NULL, '2025-12-12 16:41:30'),
(140, 'fIGT7AJDmkUotpWjqeUNwn:APA91bHhss7f_pzbZsBKZbHBDfPm-9MMZAsqCclcSNZ_B64IZn3hyOKLoQ1vDvoipF0KjRGoMlriLlFn1nJh8N2BIsimCYaIkuIaVtGu-qQhYE-uDH0yTVk', 63, '5FAE7E24-3510-476A-998F-4857C9A18C12', 'ios', '2025-12-12 16:43:28', NULL, '2025-12-12 16:47:29'),
(141, 'epx_2aEKUk6YpejuvhBMA5:APA91bE-46gsolzBu0cqS4LPAXgpDyJndCR6j9jFMsIcn3xdIS2Yid6zyDh1vPkyGKKaMUx4I3zH4v6n1YtUCWvQanYLtxCmz_Czd7hvwNC7gonJUqF0Jb8', 1, '86CBF17F-EAA6-446C-9021-7366D882259D', 'ios', '2025-12-12 16:45:57', '2025-12-12 16:47:29', '2025-12-12 16:47:29'),
(142, 'epx_2aEKUk6YpejuvhBMA5:APA91bE-46gsolzBu0cqS4LPAXgpDyJndCR6j9jFMsIcn3xdIS2Yid6zyDh1vPkyGKKaMUx4I3zH4v6n1YtUCWvQanYLtxCmz_Czd7hvwNC7gonJUqF0Jb8', 61, '86CBF17F-EAA6-446C-9021-7366D882259D', 'ios', '2025-12-12 16:47:49', '2025-12-12 16:48:04', '2025-12-12 16:48:04'),
(143, 'epx_2aEKUk6YpejuvhBMA5:APA91bE-46gsolzBu0cqS4LPAXgpDyJndCR6j9jFMsIcn3xdIS2Yid6zyDh1vPkyGKKaMUx4I3zH4v6n1YtUCWvQanYLtxCmz_Czd7hvwNC7gonJUqF0Jb8', 1, '86CBF17F-EAA6-446C-9021-7366D882259D', 'ios', '2025-12-12 16:48:24', '2025-12-12 16:51:06', '2025-12-12 16:51:06'),
(144, 'epx_2aEKUk6YpejuvhBMA5:APA91bE-46gsolzBu0cqS4LPAXgpDyJndCR6j9jFMsIcn3xdIS2Yid6zyDh1vPkyGKKaMUx4I3zH4v6n1YtUCWvQanYLtxCmz_Czd7hvwNC7gonJUqF0Jb8', 61, '86CBF17F-EAA6-446C-9021-7366D882259D', 'ios', '2025-12-12 16:51:26', '2025-12-12 20:12:12', '2025-12-12 20:12:12'),
(145, '166|rH2C3kQacaFXDaSne0Xk1yNcCvMSG81kD08vsiuHe1706b61', 64, '5FAE7E24-3510-476A-998F-4857C9A18C12', 'ios', '2025-12-12 17:01:47', NULL, '2025-12-12 17:01:47'),
(146, '167|YjMZPb1S1gGQB0G1gUdIEuXzTokvvXio1CUE1w2U4cbfddfb', 65, '5FAE7E24-3510-476A-998F-4857C9A18C12', 'ios', '2025-12-12 17:04:43', NULL, '2025-12-12 17:04:43'),
(147, 'dQMUxUdwR0qOTPqPLKlPw1:APA91bGyEeXtiY7jO6YA7v6hmb5PZS1TbyHiqh9SSEHkoWSdn7oe_Joy-9MDEYDgKQFfHNc2qaPwwMURZudryCmovvoJ-Dg6rNhIQm2ztM_7twSQE5UzVuY', 7, 'BP3A.251105.015', 'android', '2025-12-12 17:12:36', '2025-12-12 17:21:58', '2025-12-12 17:21:58'),
(148, '169|7cauJ6uPt84v1xxPlnsbS9P4ps1vbcNfDdsIA0ux9d7921b0', 66, 'BP3A.251105.015', 'android', '2025-12-12 17:23:29', '2025-12-12 17:26:10', '2025-12-12 17:26:10'),
(149, 'drPZm3qLRqKNg5rXSgJDqH:APA91bH-tEiz0mXxYO1_KVP10iBnO8ogyhPy_w0KNRG3ugbhJNjWJ6Kj4BO-qx7YkEq3pxv79Tgiap1bvAhNFlqwizPp2IQJlRHVDIFNEgbl3lg5b-Psh6M', 7, 'BP3A.251105.015', 'android', '2025-12-12 17:26:18', '2025-12-15 12:38:22', '2025-12-15 12:38:22'),
(150, 'abc', 7, '12345678', 'android', '2025-12-12 17:34:17', NULL, '2025-12-12 17:34:17'),
(151, 'f8uXZaAEkkaLhdPSqIiDWV:APA91bE6EDBvD9tTC-jE6pI4BODdYJyXgPbzr2d4mzKr36tbWW0GzC55XPZulTR-hk1yYZxktHzEQvZKQIVuBsQteNjaoEZB13hgyUlvRO0XRmI8cs9qDQE', 7, '5FAE7E24-3510-476A-998F-4857C9A18C12', 'ios', '2025-12-12 17:45:01', NULL, '2025-12-12 17:45:01'),
(152, 'epx_2aEKUk6YpejuvhBMA5:APA91bE-46gsolzBu0cqS4LPAXgpDyJndCR6j9jFMsIcn3xdIS2Yid6zyDh1vPkyGKKaMUx4I3zH4v6n1YtUCWvQanYLtxCmz_Czd7hvwNC7gonJUqF0Jb8', 1, '86CBF17F-EAA6-446C-9021-7366D882259D', 'ios', '2025-12-12 20:38:00', '2025-12-12 23:03:59', '2025-12-12 23:03:59'),
(153, 'epx_2aEKUk6YpejuvhBMA5:APA91bE-46gsolzBu0cqS4LPAXgpDyJndCR6j9jFMsIcn3xdIS2Yid6zyDh1vPkyGKKaMUx4I3zH4v6n1YtUCWvQanYLtxCmz_Czd7hvwNC7gonJUqF0Jb8', 1, '86CBF17F-EAA6-446C-9021-7366D882259D', 'ios', '2025-12-13 14:11:49', NULL, '2025-12-13 14:11:49'),
(154, 'clkzkeVtXUfUm2nUq1zXqJ:APA91bEuRdoQTqqQqCxLisItWEpsUrO_NzdtimYXpk_sn3M5DSipTZKA04UgQ3YG2k46s_ZI-7BpZSOzw6z604cqSs888uenCrZFcrCWU5qvrv5R9f-FUyQ', 7, 'FB6120E1-2D58-466A-9358-D009B5EC9178', 'ios', '2025-12-15 10:12:43', '2025-12-15 11:03:04', '2025-12-15 11:03:04'),
(155, '179|TSSJau0rICHyUqIkvhP8fcZfjmI8ePSQHjGpY2xfdddc3337', 67, 'BP3A.251105.015', 'android', '2025-12-15 10:46:11', NULL, '2025-12-15 10:46:11'),
(156, '180|GKCBLskDjBLb63hY6G5FYdLLepIWeBtjOWrBFU9Cca445b52', 68, 'BP3A.251105.015', 'android', '2025-12-15 10:59:28', NULL, '2025-12-15 10:59:28'),
(157, 'clkzkeVtXUfUm2nUq1zXqJ:APA91bEuRdoQTqqQqCxLisItWEpsUrO_NzdtimYXpk_sn3M5DSipTZKA04UgQ3YG2k46s_ZI-7BpZSOzw6z604cqSs888uenCrZFcrCWU5qvrv5R9f-FUyQ', 68, 'FB6120E1-2D58-466A-9358-D009B5EC9178', 'ios', '2025-12-15 11:04:07', '2025-12-15 11:07:32', '2025-12-15 11:07:32'),
(158, '182|qXooOWxJcrHoXAUxQ0G8AlVFjW06FTCRddemdg3a871b831f', 69, 'FB6120E1-2D58-466A-9358-D009B5EC9178', 'ios', '2025-12-15 11:09:23', NULL, '2025-12-15 11:09:23'),
(159, '183|DF7v6lTr6jKpcWrT4txT1i2O3WjZkWg4hlqwcDHd9b6f794a', 70, 'BP3A.251105.015', 'android', '2025-12-15 11:17:30', '2025-12-15 11:29:11', '2025-12-15 11:29:11'),
(160, 'drPZm3qLRqKNg5rXSgJDqH:APA91bH-tEiz0mXxYO1_KVP10iBnO8ogyhPy_w0KNRG3ugbhJNjWJ6Kj4BO-qx7YkEq3pxv79Tgiap1bvAhNFlqwizPp2IQJlRHVDIFNEgbl3lg5b-Psh6M', 5, 'BP3A.251105.015', 'android', '2025-12-15 11:29:56', '2025-12-15 11:40:02', '2025-12-15 11:40:02'),
(161, 'drPZm3qLRqKNg5rXSgJDqH:APA91bH-tEiz0mXxYO1_KVP10iBnO8ogyhPy_w0KNRG3ugbhJNjWJ6Kj4BO-qx7YkEq3pxv79Tgiap1bvAhNFlqwizPp2IQJlRHVDIFNEgbl3lg5b-Psh6M', 70, 'BP3A.251105.015', 'android', '2025-12-15 11:40:14', '2025-12-15 11:41:02', '2025-12-15 11:41:02'),
(162, 'clkzkeVtXUfUm2nUq1zXqJ:APA91bEuRdoQTqqQqCxLisItWEpsUrO_NzdtimYXpk_sn3M5DSipTZKA04UgQ3YG2k46s_ZI-7BpZSOzw6z604cqSs888uenCrZFcrCWU5qvrv5R9f-FUyQ', 7, 'FB6120E1-2D58-466A-9358-D009B5EC9178', 'ios', '2025-12-15 11:59:56', NULL, '2025-12-15 11:59:56'),
(163, 'drPZm3qLRqKNg5rXSgJDqH:APA91bH-tEiz0mXxYO1_KVP10iBnO8ogyhPy_w0KNRG3ugbhJNjWJ6Kj4BO-qx7YkEq3pxv79Tgiap1bvAhNFlqwizPp2IQJlRHVDIFNEgbl3lg5b-Psh6M', 7, 'BP3A.251105.015', 'android', '2025-12-15 12:52:37', '2025-12-15 13:00:21', '2025-12-15 13:00:21'),
(164, '189|LRRNVWlSLNzFtRCqmdoWY1QtzzzCwAVQqrPixMF4ebb33b00', 71, 'BP3A.251105.015', 'android', '2025-12-15 13:52:00', '2025-12-15 13:58:59', '2025-12-15 13:58:59'),
(165, 'drPZm3qLRqKNg5rXSgJDqH:APA91bH-tEiz0mXxYO1_KVP10iBnO8ogyhPy_w0KNRG3ugbhJNjWJ6Kj4BO-qx7YkEq3pxv79Tgiap1bvAhNFlqwizPp2IQJlRHVDIFNEgbl3lg5b-Psh6M', 71, 'BP3A.251105.015', 'android', '2025-12-15 13:59:39', '2025-12-15 14:39:10', '2025-12-15 14:39:10'),
(166, 'drPZm3qLRqKNg5rXSgJDqH:APA91bH-tEiz0mXxYO1_KVP10iBnO8ogyhPy_w0KNRG3ugbhJNjWJ6Kj4BO-qx7YkEq3pxv79Tgiap1bvAhNFlqwizPp2IQJlRHVDIFNEgbl3lg5b-Psh6M', 7, 'BP3A.251105.015', 'android', '2025-12-15 14:39:19', '2025-12-15 14:43:21', '2025-12-15 14:43:21'),
(167, 'drPZm3qLRqKNg5rXSgJDqH:APA91bH-tEiz0mXxYO1_KVP10iBnO8ogyhPy_w0KNRG3ugbhJNjWJ6Kj4BO-qx7YkEq3pxv79Tgiap1bvAhNFlqwizPp2IQJlRHVDIFNEgbl3lg5b-Psh6M', 71, 'BP3A.251105.015', 'android', '2025-12-15 14:44:12', '2025-12-15 15:06:59', '2025-12-15 15:06:59'),
(168, '198|YKfAEgklpxNnyNMmvkNqXbVKjWXnUO7ap1Xl2JeB59a3e114', 72, 'BP3A.251105.015', 'android', '2025-12-15 15:31:34', NULL, '2025-12-15 15:31:34'),
(169, '199|zJwUND4mzZaUJ9MM2GOb6snKkambOCbbXWZMwDR03d29ec88', 73, '10928DF0-5B70-4B16-9E1F-EFFB1EF433A2', 'ios', '2025-12-15 16:57:34', NULL, '2025-12-15 16:57:34'),
(170, '200|UBfKAvwY9vJ8GpYCzM273tQjv1IkFSSWqZPuCKje4c9042c8', 74, 'BP3A.251105.015', 'android', '2025-12-15 17:33:39', NULL, '2025-12-15 17:33:39'),
(171, '201|LtJhvmd515MwMmzAelYM5h9YlOdROKGenVgwbfxnda839859', 75, '10928DF0-5B70-4B16-9E1F-EFFB1EF433A2', 'ios', '2025-12-15 18:00:22', NULL, '2025-12-15 18:00:22'),
(172, 'f3Vyt4i5Rne8GNi1bb5iU8:APA91bF-KiEsmOGrI7kARRjcGldlKxsgaeTLrCidGcRMxOEs-wqb5ffA_HBSYh8msYjllHhlTV8Fb-iLnaua1M265GpahQG64XERlBg3adpf1oQS3ecrViQ', 76, 'BP3A.251105.015', 'android', '2025-12-15 18:01:25', '2025-12-15 18:18:13', '2025-12-15 18:18:13'),
(173, 'abc', 76, '12345678', 'android', '2025-12-15 18:07:11', NULL, '2025-12-15 18:07:11'),
(174, 'c074EP_nTktsjQu9IZQt9_:APA91bF9L2MyhS5KcOuo8hRvY5kWoG2J0nih-XH_jeplvCPiQ8KTcB8ul_6nWMCoyEH9K9Gkoqx1yO0Tp7uSqM09Ma187ZY_S7Qy00PAErrNshMXHgw3mto', 76, 'E478D9B3-5E7B-4A48-94CB-564A2365BA7E', 'ios', '2025-12-15 18:17:24', NULL, '2025-12-15 18:17:24'),
(175, '206|3KVWZojbs6dn06MSNT094vEHxB9Rsknfi7Y1fbhG2189fcfa', 77, 'BP3A.251105.015', 'android', '2025-12-15 18:21:50', '2025-12-16 14:27:43', '2025-12-16 14:27:43'),
(176, '207|4jUHkhBCVZl9OD1ECutjNLZttuF3ftn947whqmM37db8862f', 78, '10928DF0-5B70-4B16-9E1F-EFFB1EF433A2', 'ios', '2025-12-16 13:07:40', NULL, '2025-12-16 13:07:40'),
(177, '208|C5XnDqnfKdxck0N4MVYflE2Zx2mthCxy54bQAWg2cab1ce0e', 79, 'BP3A.251105.015', 'android', '2025-12-16 15:04:58', NULL, '2025-12-16 15:04:58'),
(178, '209|rl65gbtqudG3qnhDgNhkTakOHOq98SqqSqf3WrMJd8d513f6', 80, 'BP3A.251105.015', 'android', '2025-12-16 15:07:53', NULL, '2025-12-16 15:07:53'),
(179, 'f3Vyt4i5Rne8GNi1bb5iU8:APA91bF-KiEsmOGrI7kARRjcGldlKxsgaeTLrCidGcRMxOEs-wqb5ffA_HBSYh8msYjllHhlTV8Fb-iLnaua1M265GpahQG64XERlBg3adpf1oQS3ecrViQ', 81, 'BP3A.251105.015', 'android', '2025-12-16 15:30:35', '2025-12-16 16:38:28', '2025-12-16 16:38:28'),
(180, 'f3Vyt4i5Rne8GNi1bb5iU8:APA91bF-KiEsmOGrI7kARRjcGldlKxsgaeTLrCidGcRMxOEs-wqb5ffA_HBSYh8msYjllHhlTV8Fb-iLnaua1M265GpahQG64XERlBg3adpf1oQS3ecrViQ', 82, 'BP3A.251105.015', 'android', '2025-12-16 16:39:39', '2025-12-16 19:29:46', '2025-12-16 19:29:46'),
(181, '214|0UmMWuhXi5QjDJImeZrBzSf8cweeBmufzCMMwxgNf43af1f8', 83, 'F741B488-8FED-42FD-B5E1-F6CFC06AEB79', 'ios', '2025-12-16 17:06:36', NULL, '2025-12-16 17:06:36'),
(182, 'f8uXZaAEkkaLhdPSqIiDWV:APA91bE6EDBvD9tTC-jE6pI4BODdYJyXgPbzr2d4mzKr36tbWW0GzC55XPZulTR-hk1yYZxktHzEQvZKQIVuBsQteNjaoEZB13hgyUlvRO0XRmI8cs9qDQE', 82, '5FAE7E24-3510-476A-998F-4857C9A18C12', 'ios', '2025-12-17 12:19:07', '2025-12-17 12:35:48', '2025-12-17 12:35:48'),
(183, 'f8uXZaAEkkaLhdPSqIiDWV:APA91bE6EDBvD9tTC-jE6pI4BODdYJyXgPbzr2d4mzKr36tbWW0GzC55XPZulTR-hk1yYZxktHzEQvZKQIVuBsQteNjaoEZB13hgyUlvRO0XRmI8cs9qDQE', 83, '5FAE7E24-3510-476A-998F-4857C9A18C12', 'ios', '2025-12-17 12:36:09', NULL, '2025-12-17 12:36:09'),
(184, 'f3Vyt4i5Rne8GNi1bb5iU8:APA91bF-KiEsmOGrI7kARRjcGldlKxsgaeTLrCidGcRMxOEs-wqb5ffA_HBSYh8msYjllHhlTV8Fb-iLnaua1M265GpahQG64XERlBg3adpf1oQS3ecrViQ', 82, 'BP3A.251105.015', 'android', '2025-12-22 16:02:20', '2025-12-22 16:27:44', '2025-12-22 16:27:44'),
(185, 'abc', 82, '123456', 'android', '2025-12-22 16:26:27', '2025-12-22 16:27:44', '2025-12-22 16:27:44'),
(186, 'f3Vyt4i5Rne8GNi1bb5iU8:APA91bF-KiEsmOGrI7kARRjcGldlKxsgaeTLrCidGcRMxOEs-wqb5ffA_HBSYh8msYjllHhlTV8Fb-iLnaua1M265GpahQG64XERlBg3adpf1oQS3ecrViQ', 85, 'BP3A.251105.015', 'android', '2025-12-22 16:42:28', '2025-12-22 16:59:12', '2025-12-22 16:59:12'),
(187, 'f3Vyt4i5Rne8GNi1bb5iU8:APA91bF-KiEsmOGrI7kARRjcGldlKxsgaeTLrCidGcRMxOEs-wqb5ffA_HBSYh8msYjllHhlTV8Fb-iLnaua1M265GpahQG64XERlBg3adpf1oQS3ecrViQ', 85, 'BP3A.251105.015', 'android', '2025-12-22 17:38:59', NULL, '2025-12-22 17:38:59'),
(188, 'fxYNUv__AUbCtazxMLLvmb:APA91bFuyutnPoX5N4MeZEJRH7V_3kW-FRkdJNrDmV9jK5iBFXMzEC4Maq3bLZ1Xd245NyUlbzCFxHtgWYfil0-9SSprFFixRbjbBbs-qGFve7zN1SlywqA', 86, '10928DF0-5B70-4B16-9E1F-EFFB1EF433A2', 'ios', '2025-12-22 17:46:42', '2025-12-22 17:54:39', '2025-12-22 17:54:39'),
(189, 'cdM6DeYvQeCSRIfLxXE4do:APA91bFwbjCKnKFFMfNEwWFNTkMoiee4Vh1aMDQOSzPZl1c7TZyZsJ6dUU_su6soplGmPi8MZZucP_RiI8FjVU4S9SsGTv_calULEEVBst0mHiT9xWVaXlw', 86, 'AP3A.240905.015.A2', 'android', '2025-12-22 17:54:58', '2025-12-22 19:09:05', '2025-12-22 19:09:05'),
(190, '225|0wXf2D8GpHHeCxiMte4z2aMytLQxV1DgQc5DW8B36dcb0600', 87, 'AP3A.240905.015.A2', 'android', '2025-12-22 19:10:02', '2025-12-22 19:15:58', '2025-12-22 19:15:58'),
(191, 'cdM6DeYvQeCSRIfLxXE4do:APA91bFwbjCKnKFFMfNEwWFNTkMoiee4Vh1aMDQOSzPZl1c7TZyZsJ6dUU_su6soplGmPi8MZZucP_RiI8FjVU4S9SsGTv_calULEEVBst0mHiT9xWVaXlw', 86, 'AP3A.240905.015.A2', 'android', '2025-12-22 19:16:42', '2025-12-23 09:52:03', '2025-12-23 09:52:03'),
(192, 'cdM6DeYvQeCSRIfLxXE4do:APA91bFwbjCKnKFFMfNEwWFNTkMoiee4Vh1aMDQOSzPZl1c7TZyZsJ6dUU_su6soplGmPi8MZZucP_RiI8FjVU4S9SsGTv_calULEEVBst0mHiT9xWVaXlw', 87, 'AP3A.240905.015.A2', 'android', '2025-12-23 09:52:20', '2025-12-23 09:57:38', '2025-12-23 09:57:38'),
(193, 'cdM6DeYvQeCSRIfLxXE4do:APA91bFwbjCKnKFFMfNEwWFNTkMoiee4Vh1aMDQOSzPZl1c7TZyZsJ6dUU_su6soplGmPi8MZZucP_RiI8FjVU4S9SsGTv_calULEEVBst0mHiT9xWVaXlw', 87, 'AP3A.240905.015.A2', 'android', '2025-12-23 09:57:51', '2025-12-23 09:59:39', '2025-12-23 09:59:39'),
(194, 'cdM6DeYvQeCSRIfLxXE4do:APA91bFwbjCKnKFFMfNEwWFNTkMoiee4Vh1aMDQOSzPZl1c7TZyZsJ6dUU_su6soplGmPi8MZZucP_RiI8FjVU4S9SsGTv_calULEEVBst0mHiT9xWVaXlw', 86, 'AP3A.240905.015.A2', 'android', '2025-12-23 10:00:56', '2025-12-23 10:37:58', '2025-12-23 10:37:58'),
(195, 'enC7hfeCSoeSkUcxvoIR_Q:APA91bEXkRdOUsqTuOM03MJgRWHIKVDLlsH4nDwEC5pUe34VUZ9I3Z8pPbpBIo79ORqH1Q-coXn9nlj0pftVY-e3Hf_29atH7FbqXqb8sRV11J15DGF5Fec', 87, 'TP1A.220624.014', 'android', '2025-12-23 10:07:49', '2025-12-23 10:45:35', '2025-12-23 10:45:35'),
(196, 'enC7hfeCSoeSkUcxvoIR_Q:APA91bEXkRdOUsqTuOM03MJgRWHIKVDLlsH4nDwEC5pUe34VUZ9I3Z8pPbpBIo79ORqH1Q-coXn9nlj0pftVY-e3Hf_29atH7FbqXqb8sRV11J15DGF5Fec', 87, 'TP1A.220624.014', 'android', '2025-12-23 12:58:46', NULL, '2025-12-23 12:58:46'),
(197, 'cdM6DeYvQeCSRIfLxXE4do:APA91bFwbjCKnKFFMfNEwWFNTkMoiee4Vh1aMDQOSzPZl1c7TZyZsJ6dUU_su6soplGmPi8MZZucP_RiI8FjVU4S9SsGTv_calULEEVBst0mHiT9xWVaXlw', 86, 'AP3A.240905.015.A2', 'android', '2025-12-23 13:06:30', '2025-12-23 13:32:45', '2025-12-23 13:32:45'),
(198, 'fRQ5LPZ0TSqfSvtkupUsFd:APA91bFnc30eY8rUADXBOOCkYnNqDqiN6nKjmqVFZhm6cGoiKdVU5TVIIh5nl__t9Gd8-zIyDlQG6LBxGXjUsxrL2FTi2lzllK9ESrC9erPT8HKimynAA7Q', 86, 'AP3A.240905.015.A2', 'android', '2025-12-23 07:01:30', '2025-12-26 07:21:53', '2025-12-26 07:21:53'),
(199, 'fRQ5LPZ0TSqfSvtkupUsFd:APA91bFnc30eY8rUADXBOOCkYnNqDqiN6nKjmqVFZhm6cGoiKdVU5TVIIh5nl__t9Gd8-zIyDlQG6LBxGXjUsxrL2FTi2lzllK9ESrC9erPT8HKimynAA7Q', 86, 'AP3A.240905.015.A2', 'android', '2025-12-26 07:23:15', NULL, '2025-12-26 07:23:15');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fav_user`
--

CREATE TABLE `fav_user` (
  `id` int(11) NOT NULL,
  `fav_by` int(11) DEFAULT NULL,
  `fav_to` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fav_user`
--

INSERT INTO `fav_user` (`id`, `fav_by`, `fav_to`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 5, 7, '2025-12-01 08:19:47', '2025-12-01 08:19:47', '2025-12-01 13:49:47'),
(4, 5, 1, '2025-12-01 08:19:54', '2025-12-01 08:19:54', '2025-12-01 13:49:54'),
(5, 7, 5, '2025-12-03 07:20:03', '2025-12-03 07:20:03', '2025-12-03 12:50:03'),
(7, 7, 10, '2025-12-09 20:14:20', '2025-12-09 20:14:20', '2025-12-09 15:14:20'),
(9, 47, 9, '2025-12-11 17:23:17', '2025-12-11 17:23:17', '2025-12-11 12:23:17'),
(10, 1, 10, '2025-12-12 22:22:23', '2025-12-12 22:22:23', '2025-12-12 17:22:23'),
(11, 86, 78, '2025-12-22 18:04:20', '2025-12-22 18:04:20', '2025-12-22 13:04:20'),
(13, 86, 87, '2025-12-23 10:25:47', '2025-12-23 10:25:47', '2025-12-23 05:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `hear_about_us`
--

CREATE TABLE `hear_about_us` (
  `id` int(11) NOT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hear_about_us`
--

INSERT INTO `hear_about_us` (`id`, `platform`, `created_at`, `deleted_at`) VALUES
(1, 'Google\r\n', '2025-09-08 11:36:43', '2025-09-08 11:36:43'),
(3, 'ChatGpt/Ai', '2025-09-08 11:37:28', '2025-09-08 11:37:28'),
(7, 'Facebook', '2025-09-08 11:38:07', '2025-09-08 11:38:07'),
(10, 'Instagram', '2025-09-08 11:37:51', '2025-09-08 11:37:51'),
(11, 'Event', '2025-09-08 11:38:55', '2025-09-08 11:38:55'),
(12, 'Magazine', '2025-09-08 11:38:39', '2025-09-08 11:38:39'),
(13, 'Family / Friends', '2025-09-08 11:38:58', '2025-09-08 11:38:58'),
(14, 'Other', '2025-09-08 11:38:39', '2025-09-08 11:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `image_rating`
--

CREATE TABLE `image_rating` (
  `id` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `rate_to` int(11) DEFAULT NULL,
  `rate_by` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `image_rating`
--

INSERT INTO `image_rating` (`id`, `image_id`, `rate_to`, `rate_by`, `rating`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 127, 169, 154, 3, '2025-10-29 00:11:28', '2025-10-29 00:13:46', '2025-10-29 05:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `looking_for`
--

CREATE TABLE `looking_for` (
  `id` int(11) NOT NULL,
  `looking_for` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `looking_for`
--

INSERT INTO `looking_for` (`id`, `looking_for`, `created_at`, `deleted_at`) VALUES
(1, 'Serious Relationship', '2025-09-10 06:16:15', '2025-09-10 06:16:15'),
(3, 'Fun & Flirt', '2025-09-10 06:17:20', '2025-09-10 06:17:20'),
(4, 'Sugardating', '2025-09-10 06:17:52', '2025-09-10 06:17:52'),
(5, 'Social Networking', '2025-09-10 06:17:52', '2025-09-10 06:17:52');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2025_12_19_115724_create_about_apps_table', 1),
(9, '2025_12_19_115724_create_admins_table', 2),
(10, '2025_12_19_115724_create_blocked_users_table', 3),
(11, '2025_12_19_115724_create_body_types_table', 4),
(12, '2025_12_19_115724_create_caches_table', 5),
(13, '2025_12_19_115724_create_cache_locks_table', 6),
(14, '2025_12_19_115724_create_citys_table', 7),
(15, '2025_12_19_115724_create_countries_table', 8),
(16, '2025_12_19_115724_create_country_codes_table', 9),
(17, '2025_12_19_115724_create_device_infos_table', 10),
(18, '2025_12_19_115724_create_failed_jobs_table', 11),
(19, '2025_12_19_115724_create_fav_users_table', 12),
(20, '2025_12_19_115724_create_hear_about_uses_table', 13),
(21, '2025_12_19_115724_create_image_ratings_table', 14),
(22, '2025_12_19_115724_create_jobs_table', 15),
(23, '2025_12_19_115724_create_job_batches_table', 16),
(24, '2025_12_19_115724_create_looking_fors_table', 17),
(25, '2025_12_19_115724_create_migrations_table', 18),
(26, '2025_12_19_115724_create_nationalitys_table', 19),
(27, '2025_12_19_115724_create_notifications_table', 20),
(28, '2025_12_19_115724_create_password_reset_tokens_table', 21),
(29, '2025_12_19_115724_create_personal_access_tokens_table', 22),
(30, '2025_12_19_115724_create_privacy_policies_table', 23),
(31, '2025_12_19_115724_create_profiletimers_table', 24),
(32, '2025_12_19_115724_create_rate_user_profiles_table', 25),
(33, '2025_12_19_115724_create_regions_table', 26),
(34, '2025_12_19_115724_create_report_reasons_table', 27),
(35, '2025_12_19_115724_create_report_users_table', 28),
(36, '2025_12_19_115724_create_requests_table', 29),
(37, '2025_12_19_115724_create_seen_statuses_table', 30),
(38, '2025_12_19_115724_create_sessions_table', 31),
(39, '2025_12_19_115724_create_sexual_orientations_table', 32),
(40, '2025_12_19_115724_create_support_requests_table', 33),
(41, '2025_12_19_115724_create_terms_conditions_table', 34),
(42, '2025_12_19_115724_create_users_table', 35),
(43, '2025_12_19_115724_create_user_images_table', 36),
(44, '2025_12_19_115724_create_user_intrests_table', 37),
(45, '2025_12_19_115724_create_user_likes_table', 38),
(46, '2025_12_19_115724_create_user_ratings_table', 39),
(47, '2025_12_19_115724_create_user_statuses_table', 40),
(48, '2025_12_19_115724_create_view_tables_table', 41),
(49, '2025_12_19_115724_create_zodiac__signs_table', 42),
(50, '2025_12_19_115814_create_about_apps_table', 43),
(51, '2025_12_19_115814_create_admins_table', 44),
(52, '2025_12_19_115814_create_blocked_users_table', 45),
(53, '2025_12_19_115814_create_body_types_table', 46),
(54, '2025_12_19_115814_create_caches_table', 47),
(55, '2025_12_19_115814_create_cache_locks_table', 48),
(56, '2025_12_19_115814_create_citys_table', 49),
(57, '2025_12_19_115814_create_countries_table', 50),
(58, '2025_12_19_115814_create_country_codes_table', 51),
(59, '2025_12_19_115814_create_device_infos_table', 52),
(60, '2025_12_19_115814_create_failed_jobs_table', 53),
(61, '2025_12_19_115814_create_fav_users_table', 54),
(62, '2025_12_19_115814_create_hear_about_uses_table', 55),
(63, '2025_12_19_115814_create_image_ratings_table', 56),
(64, '2025_12_19_115814_create_jobs_table', 57),
(65, '2025_12_19_115814_create_job_batches_table', 58),
(66, '2025_12_19_115814_create_looking_fors_table', 59),
(67, '2025_12_19_115814_create_migrations_table', 60),
(68, '2025_12_19_115814_create_nationalitys_table', 61),
(69, '2025_12_19_115814_create_notifications_table', 62),
(70, '2025_12_19_115814_create_password_reset_tokens_table', 63),
(71, '2025_12_19_115814_create_personal_access_tokens_table', 64),
(72, '2025_12_19_115814_create_privacy_policies_table', 65),
(73, '2025_12_19_115814_create_profiletimers_table', 66),
(74, '2025_12_19_115814_create_rate_user_profiles_table', 67),
(75, '2025_12_19_115814_create_regions_table', 68),
(76, '2025_12_19_115814_create_report_reasons_table', 69),
(77, '2025_12_19_115814_create_report_users_table', 70),
(78, '2025_12_19_115814_create_requests_table', 71),
(79, '2025_12_19_115814_create_seen_statuses_table', 72),
(80, '2025_12_19_115814_create_sessions_table', 73),
(81, '2025_12_19_115814_create_sexual_orientations_table', 74),
(82, '2025_12_19_115814_create_support_requests_table', 75),
(83, '2025_12_19_115814_create_terms_conditions_table', 76),
(84, '2025_12_19_115814_create_users_table', 77),
(85, '2025_12_19_115814_create_user_images_table', 78),
(86, '2025_12_19_115814_create_user_intrests_table', 79),
(87, '2025_12_19_115814_create_user_likes_table', 80),
(88, '2025_12_19_115814_create_user_ratings_table', 81),
(89, '2025_12_19_115814_create_user_statuses_table', 82),
(90, '2025_12_19_115814_create_view_tables_table', 83),
(91, '2025_12_19_115814_create_zodiac__signs_table', 84),
(92, '2025_12_19_115853_create_about_apps_table', 85),
(93, '2025_12_19_115853_create_admins_table', 86),
(94, '2025_12_19_115853_create_blocked_users_table', 87),
(95, '2025_12_19_115853_create_body_types_table', 88),
(96, '2025_12_19_115853_create_caches_table', 89),
(97, '2025_12_19_115853_create_cache_locks_table', 90),
(98, '2025_12_19_115853_create_citys_table', 91),
(99, '2025_12_19_115853_create_countries_table', 92),
(100, '2025_12_19_115853_create_country_codes_table', 93),
(101, '2025_12_19_115853_create_device_infos_table', 94),
(102, '2025_12_19_115853_create_failed_jobs_table', 95),
(103, '2025_12_19_115853_create_fav_users_table', 96),
(104, '2025_12_19_115853_create_hear_about_uses_table', 97),
(105, '2025_12_19_115853_create_image_ratings_table', 98),
(106, '2025_12_19_115853_create_jobs_table', 99),
(107, '2025_12_19_115853_create_job_batches_table', 100),
(108, '2025_12_19_115853_create_looking_fors_table', 101),
(109, '2025_12_19_115853_create_migrations_table', 102),
(110, '2025_12_19_115853_create_nationalitys_table', 103),
(111, '2025_12_19_115853_create_notifications_table', 104),
(112, '2025_12_19_115853_create_password_reset_tokens_table', 105),
(113, '2025_12_19_115853_create_personal_access_tokens_table', 106),
(114, '2025_12_19_115853_create_privacy_policies_table', 107),
(115, '2025_12_19_115853_create_profiletimers_table', 108),
(116, '2025_12_19_115853_create_rate_user_profiles_table', 109),
(117, '2025_12_19_115853_create_regions_table', 110),
(118, '2025_12_19_115853_create_report_reasons_table', 111),
(119, '2025_12_19_115853_create_report_users_table', 112),
(120, '2025_12_19_115853_create_requests_table', 113),
(121, '2025_12_19_115853_create_seen_statuses_table', 114),
(122, '2025_12_19_115853_create_sessions_table', 115),
(123, '2025_12_19_115853_create_sexual_orientations_table', 116),
(124, '2025_12_19_115853_create_support_requests_table', 117),
(125, '2025_12_19_115853_create_terms_conditions_table', 118),
(126, '2025_12_19_115853_create_users_table', 119),
(127, '2025_12_19_115853_create_user_images_table', 120),
(128, '2025_12_19_115853_create_user_intrests_table', 121),
(129, '2025_12_19_115853_create_user_likes_table', 122),
(130, '2025_12_19_115853_create_user_ratings_table', 123),
(131, '2025_12_19_115853_create_user_statuses_table', 124),
(132, '2025_12_19_115853_create_view_tables_table', 125),
(133, '2025_12_19_115853_create_zodiac__signs_table', 126),
(134, '2025_12_19_130238_add_deletion_tracking_to_users_table', 127),
(135, '2025_12_19_150345_add_fake_member_fields_to_users_table', 128),
(136, '2025_12_19_150345_create_app_settings_table', 128),
(137, '2025_12_22_103137_create_user_suggestions_table', 129);

-- --------------------------------------------------------

--
-- Table structure for table `nationalitys`
--

CREATE TABLE `nationalitys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nationalitys`
--

INSERT INTO `nationalitys` (`id`, `user_id`, `nationality`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'Albanian', '2025-09-19 09:12:28', '2025-12-30 09:05:13', '2025-09-19 09:12:28'),
(2, NULL, 'American', '2025-09-19 09:12:28', '2025-12-30 09:05:13', '2025-09-19 09:12:28'),
(3, NULL, 'Argentinian', '2025-09-19 09:13:40', '2025-12-30 09:05:13', '2025-09-19 09:13:40'),
(4, NULL, 'Austrian', '2025-09-19 09:16:24', '2025-12-30 09:05:13', '2025-09-19 09:16:24'),
(5, NULL, 'Belgian', '2025-09-19 09:13:40', '2025-12-30 09:05:13', '2025-09-19 09:13:40'),
(6, NULL, 'Bosnian', '2025-09-19 09:13:40', '2025-12-30 09:05:13', '2025-09-19 09:13:40'),
(7, NULL, 'Brazilian', '2025-09-19 09:16:24', '2025-12-30 09:05:13', '2025-09-19 09:16:24'),
(8, NULL, 'Bulgarian', '2025-09-19 09:16:24', '2025-12-30 09:05:13', '2025-09-19 09:16:24'),
(9, NULL, 'Canadian', '2025-09-19 09:16:00', '2025-12-30 09:05:13', '2025-09-19 09:16:00'),
(10, NULL, 'Chinese', '2025-09-19 09:12:28', '2025-12-30 09:05:13', '2025-09-19 09:12:28'),
(11, NULL, 'Croatian', '2025-09-19 09:12:28', '2025-12-30 09:05:13', '2025-09-19 09:12:28'),
(12, NULL, 'Czech', '2025-09-19 09:13:40', '2025-12-30 09:05:13', '2025-09-19 09:13:40'),
(13, NULL, 'Danish', '2025-09-19 09:16:24', '2025-12-30 09:05:13', '2025-09-19 09:16:24'),
(14, NULL, 'Dutch', '2025-09-19 09:13:40', '2025-12-30 09:05:13', '2025-09-19 09:13:40'),
(15, NULL, 'Egyptian', '2025-09-19 09:13:40', '2025-12-30 09:05:13', '2025-09-19 09:13:40'),
(16, NULL, 'English', '2025-09-19 09:16:24', '2025-12-30 09:05:13', '2025-09-19 09:16:24'),
(17, NULL, 'Estonian', '2025-09-19 09:16:24', '2025-12-30 09:05:13', '2025-09-19 09:16:24'),
(18, NULL, 'Finnish', '2025-09-19 09:16:00', '2025-12-30 09:05:13', '2025-09-19 09:16:00'),
(19, NULL, 'French', '2025-09-19 09:12:28', '2025-12-30 09:05:13', '2025-09-19 09:12:28'),
(20, NULL, 'German', '2025-09-19 09:12:28', '2025-12-30 09:05:13', '2025-09-19 09:12:28'),
(21, NULL, 'Greek', '2025-09-19 09:13:40', '2025-12-30 09:05:13', '2025-09-19 09:13:40'),
(22, NULL, 'Hungarian', '2025-09-19 09:16:24', '2025-12-30 09:05:13', '2025-09-19 09:16:24'),
(23, NULL, 'Icelandic', '2025-09-19 09:13:40', '2025-12-30 09:05:13', '2025-09-19 09:13:40'),
(24, NULL, 'Indian', '2025-09-19 09:13:40', '2025-12-30 09:05:13', '2025-09-19 09:13:40'),
(25, NULL, 'Irish', '2025-09-19 09:16:24', '2025-12-30 09:05:13', '2025-09-19 09:16:24'),
(26, NULL, 'Bulgarian', '2025-09-19 09:16:24', '2025-12-30 09:05:13', '2025-09-19 09:16:24'),
(27, NULL, 'Canadian', '2025-09-19 09:16:00', '2025-12-30 09:05:13', '2025-09-19 09:16:00'),
(28, NULL, 'Chinese', '2025-09-19 09:12:28', '2025-12-30 09:05:13', '2025-09-19 09:12:28'),
(29, NULL, 'Croatian', '2025-09-19 09:12:28', '2025-12-30 09:05:13', '2025-09-19 09:12:28'),
(30, NULL, 'Czech', '2025-09-19 09:13:40', '2025-12-30 09:05:13', '2025-09-19 09:13:40'),
(31, NULL, 'Danish', '2025-09-19 09:16:24', '2025-12-30 09:05:13', '2025-09-19 09:16:24'),
(32, NULL, 'Dutch', '2025-09-19 09:13:40', '2025-12-30 09:05:13', '2025-09-19 09:13:40'),
(33, NULL, 'Egyptian', '2025-09-19 09:13:40', '2025-12-30 09:05:13', '2025-09-19 09:13:40'),
(34, NULL, 'English', '2025-09-19 09:16:24', '2025-12-30 09:05:13', '2025-09-19 09:16:24'),
(35, NULL, 'Estonian', '2025-09-19 09:16:24', '2025-12-30 09:05:13', '2025-09-19 09:16:24'),
(36, NULL, 'Canadian', '2025-09-19 09:16:00', '2025-12-30 09:05:13', '2025-09-19 09:16:00'),
(37, NULL, 'Bangaladeshi', '2025-12-30 03:05:17', '2025-12-30 03:05:17', '2025-12-30 09:05:17');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `notification_type` int(11) NOT NULL DEFAULT 0 COMMENT '0:normal, 1:request',
  `seen_status` int(11) DEFAULT 0 COMMENT '1:seen',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `user_id`, `sender_id`, `title`, `body`, `notification_type`, `seen_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(59, 5, 7, 'Private Access Request Accepted', 'Bageshverhas accepted your private access request.', 1, 0, '2025-12-04 05:28:44', '2025-12-04 05:28:44', '2025-12-04 10:58:44'),
(61, 5, 7, 'Private Access Request Accepted', 'Bageshverhas accepted your private access request.', 1, 0, '2025-12-04 05:34:46', '2025-12-04 05:34:46', '2025-12-04 11:04:46'),
(66, 5, 7, 'Private Access Request Accepted', 'Bageshverhas accepted your private access request.', 1, 0, '2025-12-04 05:40:09', '2025-12-04 05:40:09', '2025-12-04 11:10:09'),
(73, 7, 5, 'New Private Access Request ', 'Aly has sent you a private access request.', 1, 0, '2025-12-04 05:54:35', '2025-12-04 05:54:35', '2025-12-04 11:24:35'),
(74, 5, 7, 'Private Access Request Accepted', 'Bageshverhas accepted your private access request.', 1, 0, '2025-12-04 05:54:42', '2025-12-04 05:54:42', '2025-12-04 11:24:42'),
(75, 5, 7, 'User Rated', 'Bageshver has rated your profile with reaction: YES', 1, 0, '2025-12-04 07:03:49', '2025-12-04 07:03:49', '2025-12-04 12:33:49'),
(76, 5, 7, 'User Rated', 'Bageshver has rated your profile with reaction: OK', 1, 0, '2025-12-04 07:16:57', '2025-12-04 07:16:57', '2025-12-04 12:46:57'),
(77, 5, 7, 'New Like Received', 'Bageshver liked your profile.', 0, 0, '2025-12-09 16:48:08', '2025-12-09 16:48:08', '2025-12-09 11:48:08'),
(78, 5, 7, 'New Like Received', 'Bageshver liked your profile.', 0, 0, '2025-12-09 17:26:03', '2025-12-09 17:26:03', '2025-12-09 12:26:03'),
(79, 10, 7, 'New Like Received', 'Bageshver liked your profile.', 0, 0, '2025-12-09 17:26:17', '2025-12-09 17:26:17', '2025-12-09 12:26:17'),
(80, 16, 6, 'User Rated', 'Pathak23 has rated your profile with reaction: YES', 1, 0, '2025-12-09 17:39:30', '2025-12-09 17:39:30', '2025-12-09 12:39:30'),
(81, 17, 7, 'User Rated', 'Bageshver has rated your profile with reaction: YES', 1, 0, '2025-12-09 17:53:38', '2025-12-09 17:53:38', '2025-12-09 12:53:38'),
(82, 17, 14, 'User Rated', 'Rahul has rated your profile with reaction: YES', 1, 0, '2025-12-09 17:54:32', '2025-12-09 17:54:32', '2025-12-09 12:54:32'),
(83, 17, 16, 'User Rated', 'Dileep has rated your profile with reaction: YES', 1, 0, '2025-12-09 17:55:22', '2025-12-09 17:55:22', '2025-12-09 12:55:22'),
(84, 17, 9, 'User Rated', 'Abhishek has rated your profile with reaction: YES', 1, 0, '2025-12-09 17:56:30', '2025-12-09 17:56:30', '2025-12-09 12:56:30'),
(85, 18, 7, 'User Rated', 'Bageshver has rated your profile with reaction: No', 1, 0, '2025-12-09 18:04:19', '2025-12-09 18:04:19', '2025-12-09 13:04:19'),
(86, 18, 9, 'User Rated', 'Abhishek has rated your profile with reaction: No', 1, 0, '2025-12-09 18:05:11', '2025-12-09 18:05:11', '2025-12-09 13:05:11'),
(87, 18, 14, 'User Rated', 'Rahul has rated your profile with reaction: No', 1, 0, '2025-12-09 18:06:08', '2025-12-09 18:06:08', '2025-12-09 13:06:08'),
(88, 18, 16, 'User Rated', 'Dileep has rated your profile with reaction: No', 1, 0, '2025-12-09 18:06:42', '2025-12-09 18:06:42', '2025-12-09 13:06:42'),
(89, 10, 7, 'New Like Received', 'Bageshver liked your profile.', 0, 0, '2025-12-09 20:14:15', '2025-12-09 20:14:15', '2025-12-09 15:14:15'),
(90, 10, 7, 'New Like Received', 'Bageshver liked your profile.', 0, 0, '2025-12-09 20:14:19', '2025-12-09 20:14:19', '2025-12-09 15:14:19'),
(91, 10, 7, 'New Like Received', 'Bageshver liked your profile.', 0, 0, '2025-12-09 22:37:56', '2025-12-09 22:37:56', '2025-12-09 17:37:56'),
(92, 47, 7, 'User Rated', 'Bageshver has rated your profile with reaction: YES', 1, 0, '2025-12-11 16:37:57', '2025-12-11 16:37:57', '2025-12-11 11:37:57'),
(93, 47, 9, 'User Rated', 'Abhishek has rated your profile with reaction: YES', 1, 0, '2025-12-11 16:39:12', '2025-12-11 16:39:12', '2025-12-11 11:39:12'),
(94, 47, 14, 'User Rated', 'Rahul has rated your profile with reaction: YES', 1, 0, '2025-12-11 16:40:08', '2025-12-11 16:40:08', '2025-12-11 11:40:08'),
(95, 47, 16, 'User Rated', 'Dileep has rated your profile with reaction: YES', 1, 0, '2025-12-11 16:49:30', '2025-12-11 16:49:30', '2025-12-11 11:49:30'),
(96, 16, 47, 'New Like Received', 'Lavuu liked your profile.', 0, 0, '2025-12-11 17:22:16', '2025-12-11 17:22:16', '2025-12-11 12:22:16'),
(97, 9, 47, 'New Like Received', 'Lavuu liked your profile.', 0, 0, '2025-12-11 17:23:16', '2025-12-11 17:23:16', '2025-12-11 12:23:16'),
(98, 48, 7, 'User Rated', 'Bageshver has rated your profile with reaction: No', 1, 0, '2025-12-11 17:52:01', '2025-12-11 17:52:01', '2025-12-11 12:52:01'),
(99, 48, 16, 'User Rated', 'Dileep has rated your profile with reaction: No', 1, 0, '2025-12-11 17:52:30', '2025-12-11 17:52:30', '2025-12-11 12:52:30'),
(100, 48, 14, 'User Rated', 'Rahul has rated your profile with reaction: No', 1, 0, '2025-12-11 17:53:45', '2025-12-11 17:53:45', '2025-12-11 12:53:45'),
(101, 48, 9, 'User Rated', 'Abhishek has rated your profile with reaction: No', 1, 0, '2025-12-11 17:56:16', '2025-12-11 17:56:16', '2025-12-11 12:56:16'),
(102, 47, 1, 'User Rated', 'FitnessGuy23 has rated your profile with reaction: OK', 1, 0, '2025-12-11 22:32:36', '2025-12-11 22:32:36', '2025-12-11 17:32:36'),
(103, 47, 7, 'New Like Received', 'Bageshver liked your profile.', 0, 0, '2025-12-12 01:07:12', '2025-12-12 01:07:12', '2025-12-11 20:07:12'),
(104, 47, 7, 'New Like Received', 'Bageshver liked your profile.', 0, 0, '2025-12-12 01:07:27', '2025-12-12 01:07:27', '2025-12-11 20:07:27'),
(105, 14, 53, 'New Like Received', 'Ritu liked your profile.', 0, 0, '2025-12-12 10:31:31', '2025-12-12 10:31:31', '2025-12-12 05:31:31'),
(106, 16, 53, 'New Like Received', 'Ritu246565 liked your profile.', 0, 0, '2025-12-12 10:38:17', '2025-12-12 10:38:17', '2025-12-12 05:38:17'),
(107, 16, 53, 'New Like Received', 'Ritu2456 liked your profile.', 0, 0, '2025-12-12 11:41:05', '2025-12-12 11:41:05', '2025-12-12 06:41:05'),
(108, 60, 7, 'User Rated', 'Bageshver has rated your profile with reaction: YES', 1, 0, '2025-12-12 15:57:46', '2025-12-12 15:57:46', '2025-12-12 10:57:46'),
(109, 61, 1, 'User Rated', 'FitnessGuy23 has rated your profile with reaction: YES', 1, 0, '2025-12-12 16:46:44', '2025-12-12 16:46:44', '2025-12-12 11:46:44'),
(110, 61, 7, 'User Rated', 'Bageshver has rated your profile with reaction: YES', 1, 0, '2025-12-12 17:12:58', '2025-12-12 17:12:58', '2025-12-12 12:12:58'),
(111, 10, 1, 'New Like Received', 'FitnessGuy23 liked your profile.', 0, 0, '2025-12-12 22:22:34', '2025-12-12 22:22:34', '2025-12-12 17:22:34'),
(112, 81, 82, 'New Like Received', 'Kiaaa liked your profile.', 0, 0, '2025-12-22 16:07:28', '2025-12-22 16:07:28', '2025-12-22 11:07:28'),
(113, 81, 82, 'New Like Received', 'Kiaaa liked your profile.', 0, 0, '2025-12-22 16:13:35', '2025-12-22 16:13:35', '2025-12-22 11:13:35'),
(114, 78, 86, 'New Like Received', 'FitnessGuy23 liked your profile.', 0, 0, '2025-12-22 18:03:57', '2025-12-22 18:03:57', '2025-12-22 13:03:57'),
(115, 78, 86, 'New Like Received', 'FitnessGuy23 liked your profile.', 0, 0, '2025-12-22 18:04:07', '2025-12-22 18:04:07', '2025-12-22 13:04:07'),
(116, 85, 0, 'message', 'hello omkar', 0, 0, '2025-12-22 18:10:08', '2025-12-22 18:10:08', '2025-12-22 13:10:08'),
(117, 86, 87, 'New Private Access Request ', 'JD159 has sent you a private access request.', 1, 0, '2025-12-23 09:55:35', '2025-12-23 09:55:35', '2025-12-23 04:55:35'),
(118, 86, 87, 'New Like Received', 'JD159 liked your profile.', 0, 0, '2025-12-23 10:15:20', '2025-12-23 10:15:20', '2025-12-23 05:15:20'),
(119, 87, 86, 'Private Access Request Accepted', 'FitnessGuy235has accepted your private access request.', 1, 0, '2025-12-23 10:23:16', '2025-12-23 10:23:16', '2025-12-23 05:23:16'),
(120, 87, 86, 'New Like Received', 'FitnessGuy235 liked your profile.', 0, 0, '2025-12-23 10:25:46', '2025-12-23 10:25:46', '2025-12-23 05:25:46'),
(121, 86, 87, 'New Like Received', 'JD159 liked your profile.', 0, 0, '2025-12-23 10:26:06', '2025-12-23 10:26:06', '2025-12-23 05:26:06'),
(122, 86, 87, 'New Like Received', 'JD159 liked your profile.', 0, 0, '2025-12-23 10:26:52', '2025-12-23 10:26:52', '2025-12-23 05:26:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\User', 13, 'privee', '50e3c28d0dee84eadb4ff78be01da2a93b7d10501d29851c3f8ba2b63bd39072', '[\"*\"]', '2025-12-04 09:44:49', NULL, '2025-12-04 09:17:06', '2025-12-04 09:44:49'),
(8, 'App\\Models\\User', 15, 'privee', '4ecf51e54a9b746c79f930961539f728d4fdcfb6b04d71fcf074964d449c6df2', '[\"*\"]', '2025-12-05 06:04:13', NULL, '2025-12-05 06:04:07', '2025-12-05 06:04:13'),
(56, 'App\\Models\\User', 19, 'privee', '5eaa7ddec8f0cafa659cc8e8a8580351df65cb0475c36a0943377630ce01139e', '[\"*\"]', '2025-12-09 21:31:05', NULL, '2025-12-09 21:29:18', '2025-12-09 21:31:05'),
(62, 'App\\Models\\User', 21, 'privee', '2ce723b3924dfb24398a75595fa0d6269dfbebf0de5160b0f55a2c65c62f5900', '[\"*\"]', NULL, NULL, '2025-12-10 12:01:14', '2025-12-10 12:01:14'),
(63, 'App\\Models\\User', 22, 'privee', 'd7f326ffe58a5126f8b2413efd725386370c5be539def4692e3c5006ca0e4f6a', '[\"*\"]', NULL, NULL, '2025-12-10 12:07:17', '2025-12-10 12:07:17'),
(64, 'App\\Models\\User', 23, 'privee', 'f5149b921f60c56ee3ed0c96235e6aafe49e97ec858ef987994187ff9a62bb0b', '[\"*\"]', NULL, NULL, '2025-12-10 12:17:39', '2025-12-10 12:17:39'),
(66, 'App\\Models\\User', 25, 'privee', 'adb35b57af947e6dfb001a9cc46f2f93d79b427ac49aa7a0ca9fe9ab3f9ba412', '[\"*\"]', '2025-12-10 12:33:05', NULL, '2025-12-10 12:29:41', '2025-12-10 12:33:05'),
(68, 'App\\Models\\User', 22, 'BP3A.251105.015_token', '38061dfa57b14197de13bf295a32bf9fe8185580acfa8a0d37153004fbb55a1d', '[\"*\"]', '2025-12-10 12:39:10', NULL, '2025-12-10 12:37:59', '2025-12-10 12:39:10'),
(79, 'App\\Models\\User', 27, 'privee', '4b88f48e18cbdcaf2cd5aa8c68b4c7e436830ea69a513a57fcaba9b04d0ad0e2', '[\"*\"]', NULL, NULL, '2025-12-10 16:11:40', '2025-12-10 16:11:40'),
(82, 'App\\Models\\User', 28, 'privee', '9de12dd0342c134c0dbfac43925c32a1e24bb803f5674c8af5164b0a811be84d', '[\"*\"]', NULL, NULL, '2025-12-10 17:12:11', '2025-12-10 17:12:11'),
(83, 'App\\Models\\User', 29, 'privee', 'b716a082a1573dcb8e579d1578e1c84e4f4ace29b02e8484014310945f44d21c', '[\"*\"]', NULL, NULL, '2025-12-10 17:25:43', '2025-12-10 17:25:43'),
(84, 'App\\Models\\User', 30, 'privee', 'a27c28650b83b0798610da5d2a194489abbfc7dee088c222d9ec33fd5a007243', '[\"*\"]', NULL, NULL, '2025-12-10 17:29:03', '2025-12-10 17:29:03'),
(85, 'App\\Models\\User', 31, 'privee', '66742f353a67d7f7ef7b4507565a7b441143b02d940f3653445a7bac563e14f5', '[\"*\"]', NULL, NULL, '2025-12-10 17:34:44', '2025-12-10 17:34:44'),
(86, 'App\\Models\\User', 32, 'privee', '726396bbb361a11e6f2230cfbac15fc63178b891ec89fbafdbd14e7b32d889e1', '[\"*\"]', '2025-12-10 17:49:55', NULL, '2025-12-10 17:40:45', '2025-12-10 17:49:55'),
(87, 'App\\Models\\User', 33, 'privee', 'ecc5c2bc2339d5dd58894edd4004afe013a88082df13f2339d7c26fedd20bfc3', '[\"*\"]', '2025-12-10 20:08:37', NULL, '2025-12-10 20:08:18', '2025-12-10 20:08:37'),
(88, 'App\\Models\\User', 34, 'privee', '8c5628e8ab56a9f206416c430fc93846c8699ce712090ae2e4bce7132f3b7130', '[\"*\"]', '2025-12-10 20:50:18', NULL, '2025-12-10 20:43:35', '2025-12-10 20:50:18'),
(89, 'App\\Models\\User', 35, 'privee', '70aab8cdf30473ed2209f243ed8b7101d08fbbd9943cf01e33f09a1924009212', '[\"*\"]', NULL, NULL, '2025-12-11 11:51:13', '2025-12-11 11:51:13'),
(93, 'App\\Models\\User', 36, 'privee', '7ffb3406fdf32426cdf66109aa086c1bc2bf94a0bde71ae29a3d302efec86a8a', '[\"*\"]', NULL, NULL, '2025-12-11 12:38:27', '2025-12-11 12:38:27'),
(94, 'App\\Models\\User', 37, 'privee', 'eea4f021cdc856acd7942356a5c7387b156cd086fd1b8a64e84e32e4c2330334', '[\"*\"]', NULL, NULL, '2025-12-11 12:40:10', '2025-12-11 12:40:10'),
(99, 'App\\Models\\User', 38, 'privee', '0c83042f3c44bc11e69bca0fd368c6ff13a44f910a428492042868e258cbcad9', '[\"*\"]', '2025-12-11 13:07:54', NULL, '2025-12-11 13:02:27', '2025-12-11 13:07:54'),
(101, 'App\\Models\\User', 39, 'privee', '7ecadd4af26c27e96301cfa5413f99fb57265f63de8b0a1aed7686fead04478e', '[\"*\"]', '2025-12-11 14:06:49', NULL, '2025-12-11 14:05:58', '2025-12-11 14:06:49'),
(104, 'App\\Models\\User', 40, 'privee', 'e3d6a5b8d0072fa047ca10e9ebc781e4ca6e2a42dc1e5b292a075965d4680d8a', '[\"*\"]', '2025-12-11 14:40:56', NULL, '2025-12-11 14:40:53', '2025-12-11 14:40:56'),
(106, 'App\\Models\\User', 41, 'privee', '4fcee9d8ddb02a1fa365b0032963862b318b70026e7c3f08384d4791d7d4b44f', '[\"*\"]', NULL, NULL, '2025-12-11 14:52:44', '2025-12-11 14:52:44'),
(107, 'App\\Models\\User', 42, 'privee', 'ba33a29ac9aeb6a7c7caaba840872ad17483b70412bded113aa553dfe1caccc1', '[\"*\"]', NULL, NULL, '2025-12-11 14:54:09', '2025-12-11 14:54:09'),
(108, 'App\\Models\\User', 43, 'privee', '38aeea47f71066cad1cc6568c2e8b466ae44eb6d28e40316089ffc05c3a6b66a', '[\"*\"]', NULL, NULL, '2025-12-11 15:01:19', '2025-12-11 15:01:19'),
(109, 'App\\Models\\User', 44, 'privee', '22ee1f686f2883144a34d76fcd20fb581c8efe45d2edccb6f6d5cde160b60053', '[\"*\"]', NULL, NULL, '2025-12-11 15:04:13', '2025-12-11 15:04:13'),
(110, 'App\\Models\\User', 45, 'privee', '0f33dd3c3c8604d709e16de9f72b70253034d16b7b8b56514cdc933be6d5b4d2', '[\"*\"]', NULL, NULL, '2025-12-11 15:22:27', '2025-12-11 15:22:27'),
(111, 'App\\Models\\User', 46, 'privee', '640cb500c860dae29232b077859bdf5d5077f6ac6a59852f3e4991c8e34c48ad', '[\"*\"]', NULL, NULL, '2025-12-11 15:24:39', '2025-12-11 15:24:39'),
(121, 'App\\Models\\User', 49, 'privee', '86d245e5f06b321edc4e925f75b410f315ca9b6c31bbd3aaf99a23352ca2cfb1', '[\"*\"]', '2025-12-11 17:51:45', NULL, '2025-12-11 17:46:43', '2025-12-11 17:51:45'),
(129, 'App\\Models\\User', 50, 'privee', '326df9ef24acad4683755ef7a5fdf301ed2e825740eef624ecdd0acc652839c4', '[\"*\"]', '2025-12-11 18:23:21', NULL, '2025-12-11 18:17:03', '2025-12-11 18:23:21'),
(130, 'App\\Models\\User', 51, 'privee', '3776ce69e2882a5d0b0a6f7168b7689d0ec19af85e456338fec2074231d4787d', '[\"*\"]', '2025-12-11 18:56:29', NULL, '2025-12-11 18:56:19', '2025-12-11 18:56:29'),
(131, 'App\\Models\\User', 52, 'privee', '374f253774d520d361cde62c9db21e0286e70fa3402731566fef126fb7f6627e', '[\"*\"]', '2025-12-11 20:02:59', NULL, '2025-12-11 19:59:22', '2025-12-11 20:02:59'),
(132, 'App\\Models\\User', 52, '86CBF17F-EAA6-446C-9021-7366D882259D_token', '19a997cf7f37f1b59c96130842b7fb31387be6aee6273c2db42ab5606572c8e3', '[\"*\"]', '2025-12-11 20:04:12', NULL, '2025-12-11 20:04:00', '2025-12-11 20:04:12'),
(141, 'App\\Models\\User', 55, 'privee', 'f20ed45e7394d047a37feff5f468810a20fb6479862bab0c5a084ff5de613781', '[\"*\"]', NULL, NULL, '2025-12-12 11:52:59', '2025-12-12 11:52:59'),
(159, 'App\\Models\\User', 62, 'privee', '6fedba299dd79522b7fe05346ea3ec07a154fc239e528cbbfa9896671fa2c692', '[\"*\"]', NULL, NULL, '2025-12-12 16:41:30', '2025-12-12 16:41:30'),
(160, 'App\\Models\\User', 63, 'privee', '452bd24d4354526d0294441bade473d872dd74ec15542c2a80ed6e6b0e749fc3', '[\"*\"]', NULL, NULL, '2025-12-12 16:43:28', '2025-12-12 16:43:28'),
(162, 'App\\Models\\User', 63, '5FAE7E24-3510-476A-998F-4857C9A18C12_token', '9b087da10d5200826499958fceefbcb4eb956253d87fe3e399389d96e134b5f8', '[\"*\"]', NULL, NULL, '2025-12-12 16:47:29', '2025-12-12 16:47:29'),
(166, 'App\\Models\\User', 64, 'privee', 'a3f1de95e7578e17b7b93aafdd597975049347b42e58d8f660fed9d4bc65f15f', '[\"*\"]', NULL, NULL, '2025-12-12 17:01:47', '2025-12-12 17:01:47'),
(167, 'App\\Models\\User', 65, 'privee', 'e089d2e714782d0d4d49d278312cf9526db80d64462d88469af06885e3c6595a', '[\"*\"]', NULL, NULL, '2025-12-12 17:04:43', '2025-12-12 17:04:43'),
(176, 'App\\Models\\User', 1, '86CBF17F-EAA6-446C-9021-7366D882259D_token', 'd7af5a9224523cb9a6ecb8c470f0995bdeb047a97671653e5ec2f74551d56ced', '[\"*\"]', '2025-12-15 01:15:52', NULL, '2025-12-13 14:11:49', '2025-12-15 01:15:52'),
(179, 'App\\Models\\User', 67, 'privee', '60c7a86b8c603cd3e7babf08e1ff138766d388dc3cd111899b34ddf62f475b42', '[\"*\"]', '2025-12-15 10:52:23', NULL, '2025-12-15 10:46:11', '2025-12-15 10:52:23'),
(182, 'App\\Models\\User', 69, 'privee', '3e0d45282ce1cd5e14cbca7d82e5413173957f070658551462fea9b53d1a8ad6', '[\"*\"]', NULL, NULL, '2025-12-15 11:09:23', '2025-12-15 11:09:23'),
(194, 'App\\Models\\User', 7, '12345678_token', '5856f030780f7777dc4b2da0ddd90922069d68a2869c2bb8ef38d2c5e6342ca4', '[\"*\"]', NULL, NULL, '2025-12-15 14:52:01', '2025-12-15 14:52:01'),
(195, 'App\\Models\\User', 7, '12345678_token', '1df47454a5b80285e706a80fa82548a6f121d8e677eac62239c9aaf90b0e82ea', '[\"*\"]', NULL, NULL, '2025-12-15 15:09:57', '2025-12-15 15:09:57'),
(196, 'App\\Models\\User', 7, '12345678_token', '216f988bab1d04686457f2967da64101cdc8dcae599c73802051ce4f3bd60e21', '[\"*\"]', NULL, NULL, '2025-12-15 15:10:03', '2025-12-15 15:10:03'),
(197, 'App\\Models\\User', 7, '12345678_token', '9295acf985e6f7ae65d5c10d1fbe2aa2aa53c4f500656f2a2aaba6a7dfe47192', '[\"*\"]', NULL, NULL, '2025-12-15 15:10:24', '2025-12-15 15:10:24'),
(198, 'App\\Models\\User', 72, 'privee', '58a5942e80eb20af214372b3de12f5ed5f010ace056d07b9f42c0eaf3deaaca5', '[\"*\"]', '2025-12-15 17:01:08', NULL, '2025-12-15 15:31:34', '2025-12-15 17:01:08'),
(199, 'App\\Models\\User', 73, 'privee', 'f37b15e756edec742018ac087ff05e14f394656e7e8cdddf644b78fe401b58ee', '[\"*\"]', NULL, NULL, '2025-12-15 16:57:34', '2025-12-15 16:57:34'),
(200, 'App\\Models\\User', 74, 'privee', 'e11cac6b7fc72f646c59bde4aa2896e116904cb782784f8f1d7fe4d2fbf4e252', '[\"*\"]', '2025-12-15 17:46:52', NULL, '2025-12-15 17:33:39', '2025-12-15 17:46:52'),
(201, 'App\\Models\\User', 75, 'privee', '296623c1eb7eaab78b345de8ba5dec7559f633d9439da395fe7f24163fe958b2', '[\"*\"]', '2025-12-15 18:08:44', NULL, '2025-12-15 18:00:22', '2025-12-15 18:08:44'),
(207, 'App\\Models\\User', 78, 'privee', 'ec24c1f6724000b778d6156bf107f5d4af338a3322aee0367156b6ed48c46998', '[\"*\"]', '2025-12-16 13:13:15', NULL, '2025-12-16 13:07:40', '2025-12-16 13:13:15'),
(208, 'App\\Models\\User', 79, 'privee', '725ffce53e478045df60d0f62c4d0730d09584e6220046ac809903ba5a75001f', '[\"*\"]', '2025-12-16 15:05:11', NULL, '2025-12-16 15:04:58', '2025-12-16 15:05:11'),
(209, 'App\\Models\\User', 80, 'privee', 'e4e16ec00ab2b36be4249cf299afc909c2352037fd976822e7a7fec5dd8a1b5c', '[\"*\"]', '2025-12-16 15:28:36', NULL, '2025-12-16 15:07:53', '2025-12-16 15:28:36'),
(214, 'App\\Models\\User', 83, 'privee', '16f5b9a394b9727330c8900101617aae2e93498f5aa7938096549bc6b9bd067a', '[\"*\"]', NULL, NULL, '2025-12-16 17:06:36', '2025-12-16 17:06:36'),
(216, 'App\\Models\\User', 83, '5FAE7E24-3510-476A-998F-4857C9A18C12_token', '5a28174e44d4b032c0f72b0a5aeab40cf5e8b7bcc616879e0e5a0d15b039df85', '[\"*\"]', '2025-12-17 12:37:23', NULL, '2025-12-17 12:36:09', '2025-12-17 12:37:23'),
(221, 'App\\Models\\User', 85, 'BP3A.251105.015_token', 'b3e79efe27f2fd9ca2eedf1aa953f0a1ee07f402a05c7f8778ab8ebf2047955d', '[\"*\"]', '2025-12-22 18:15:27', NULL, '2025-12-22 17:38:59', '2025-12-22 18:15:27'),
(231, 'App\\Models\\User', 87, 'TP1A.220624.014_token', 'c9c1386a4e1e485e7c020cad7139e4d10ae5c532c221b0e38f14ff56544eebff', '[\"*\"]', '2025-12-23 13:01:45', NULL, '2025-12-23 12:58:46', '2025-12-23 13:01:45'),
(236, 'App\\Models\\User', 86, 'AP3A.240905.015.A2_token', '9ec5f5208489396e63e0097e72e7e9ad4dc0ebf33bbfaacd7306c325207aa717', '[\"*\"]', '2025-12-26 07:24:24', NULL, '2025-12-26 07:23:15', '2025-12-26 07:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policy`
--

CREATE TABLE `privacy_policy` (
  `id` int(11) NOT NULL,
  `privacy_policy` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `privacy_policy`
--

INSERT INTO `privacy_policy` (`id`, `privacy_policy`, `created_at`, `updated_at`) VALUES
(1, '<p>1. Minimal Data Collection</p><p>- Only collect the data strictly necessary for the app to function (no default collection of location, contacts, photos, etc.).</p><p><br></p><p>2. Private Profile Visibility</p><p>- User profiles are not publicly visible or searchable by default.</p><p><br></p><p>3. Consent-Based Sharing</p><p>- Any sharing of data (e.g., for analytics, marketing, or third parties) must be opt-in, not automatic.</p><p><br></p><p>4. Limited Data Retention</p><p>- Data is automatically deleted or anonymized after a set period unless the user chooses to keep it.</p><p><br></p><p>5. Notification and Tracking Preferences</p><p>- Push notifications, cookies, or tracking tools are disabled until the user grants explicit permission.</p><p><br></p><p>6. Strong Access Controls</p><p>- Default settings require authentication (e.g., login, biometric, or PIN) to access sensitive areas of the app.</p><p><br></p><p>7. Anonymization Where Possible</p><p>- Use anonymized or pseudonymized identifiers instead of personal data in logs or analytics.</p><div><br></div>', '2025-09-24 01:55:36', '2025-09-24 01:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `profiletimers`
--

CREATE TABLE `profiletimers` (
  `id` int(11) NOT NULL,
  `time` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `profiletimers`
--

INSERT INTO `profiletimers` (`id`, `time`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, '2025-10-28 10:57:00', '2025-12-23 10:24:52', '2025-10-28 10:57:00'),
(1, 0, '2025-10-28 10:57:00', '2025-12-23 10:24:52', '2025-10-28 10:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `rate_user_profile`
--

CREATE TABLE `rate_user_profile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rated_to` int(11) DEFAULT NULL,
  `rating` double(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rate_user_profile`
--

INSERT INTO `rate_user_profile` (`id`, `user_id`, `rated_to`, `rating`, `created_at`, `updated_at`, `deleted_at`) VALUES
(17, 86, 87, 5.00, '2025-12-23 09:43:11', '2025-12-23 09:43:11', NULL),
(18, 87, 86, 4.00, '2025-12-23 10:26:49', '2025-12-23 10:26:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `country_id`, `region`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Sjælland inkl. Øerne', '2025-09-19 10:24:00', '2025-12-30 08:31:21', '2025-09-19 10:24:00'),
(2, 1, 'Fyn', '2025-09-19 10:24:00', '2025-12-30 08:31:21', '2025-09-19 10:24:00'),
(3, 1, 'Jylland', '2025-09-19 10:24:00', '2025-12-30 08:31:21', '2025-09-19 10:24:00'),
(4, 2, 'Skåne (Sweden)', '2025-09-19 10:24:00', '2025-12-30 08:31:21', '2025-09-19 10:24:00'),
(5, 3, 'BD', '2025-12-30 02:31:37', '2025-12-30 02:31:37', '2025-12-30 08:31:37');

-- --------------------------------------------------------

--
-- Table structure for table `report_reason`
--

CREATE TABLE `report_reason` (
  `id` int(11) NOT NULL,
  `report_reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `report_reason`
--

INSERT INTO `report_reason` (`id`, `report_reason`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Fake Profile / Impersonation', '2025-10-15 07:45:57', '2025-10-27 07:45:57', NULL),
(2, 'Harassment or Bullying', '2025-10-27 07:45:57', '2025-10-27 07:45:57', NULL),
(3, 'Inappropriate Photos or Content', '2025-10-27 07:45:57', '2025-10-27 07:45:57', NULL),
(4, 'Catfishing / Misleading Information', '2025-10-27 07:45:57', '2025-10-27 07:45:57', NULL),
(5, 'Requesting Money or Personal Info', '2025-10-27 07:45:57', '2025-10-27 07:45:57', NULL),
(6, 'Unsafe or Threatening Behavior', '2025-10-27 07:45:57', '2025-10-27 07:45:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `report_user`
--

CREATE TABLE `report_user` (
  `id` int(11) NOT NULL,
  `report_by` int(11) DEFAULT NULL,
  `report_to` int(11) DEFAULT NULL,
  `report_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0: New, 1:checked, 2:action taken',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `report_user`
--

INSERT INTO `report_user` (`id`, `report_by`, `report_to`, `report_reason`, `message`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 87, 86, '1', 'Test', 0, '2025-12-23 10:20:07', '2025-12-24 00:20:37', '2025-12-23 05:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `request_to` int(11) DEFAULT NULL,
  `request_from` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `request_to`, `request_from`, `status`, `created_at`, `deleted_at`, `updated_at`) VALUES
(11, 86, 87, 'confirm', '2025-12-23 09:55:35', '2025-12-23 05:23:16', '2025-12-23 10:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `seen_statuses`
--

CREATE TABLE `seen_statuses` (
  `id` int(11) NOT NULL,
  `status_view_by_id` int(11) DEFAULT NULL,
  `status_view_of_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `is_seen` varchar(255) NOT NULL DEFAULT 'unseen',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `seen_statuses`
--

INSERT INTO `seen_statuses` (`id`, `status_view_by_id`, `status_view_of_id`, `status_id`, `is_seen`, `created_at`, `updated_at`, `deleted_at`) VALUES
(24, 86, 87, 6, 'seen', '2025-12-22 19:16:53', '2025-12-22 19:16:53', '2025-12-22 14:16:53'),
(25, 87, 87, 6, 'seen', '2025-12-23 09:52:27', '2025-12-23 09:52:27', '2025-12-23 04:52:27'),
(26, 87, 86, 7, 'seen', '2025-12-23 10:10:48', '2025-12-23 10:10:48', '2025-12-23 05:10:48'),
(27, 86, 87, 6, 'seen', '2025-12-23 10:26:19', '2025-12-23 10:26:19', '2025-12-23 05:26:19'),
(28, 86, 87, 6, 'seen', '2025-12-23 13:08:01', '2025-12-23 13:08:01', '2025-12-23 08:08:01'),
(29, 86, 86, 9, 'seen', '2025-12-26 06:52:25', '2025-12-26 06:52:25', '2025-12-26 12:52:25'),
(30, 86, 86, 8, 'seen', '2025-12-26 06:52:28', '2025-12-26 06:52:28', '2025-12-26 12:52:28'),
(31, 86, 86, 9, 'seen', '2025-12-26 06:56:07', '2025-12-26 06:56:07', '2025-12-26 12:56:07'),
(32, 86, 86, 9, 'seen', '2025-12-26 06:59:13', '2025-12-26 06:59:13', '2025-12-26 12:59:13'),
(33, 86, 86, 9, 'seen', '2025-12-26 07:02:34', '2025-12-26 07:02:34', '2025-12-26 13:02:34'),
(34, 86, 86, 9, 'seen', '2025-12-26 07:03:41', '2025-12-26 07:03:41', '2025-12-26 13:03:41'),
(35, 86, 86, 9, 'seen', '2025-12-26 07:04:10', '2025-12-26 07:04:10', '2025-12-26 13:04:10'),
(36, 86, 86, 9, 'seen', '2025-12-26 07:06:00', '2025-12-26 07:06:00', '2025-12-26 13:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('uxFETrPx9Wdk7W29MLz0ApasagdINk21i2eAP5aw', NULL, '192.168.68.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibkxWQnNuSnpYUnlzS0VCM0hET1dMM3JJdzdlMm1PWEhtdjIwU0hPViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xOTIuMTY4LjY4LjEyNTo3MDAwL2FkbWluL2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1767091906),
('yLYrPdzG3s72jUIbLrNpLi5HguLYgxwR6ec2wbPX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibXFFUHhjUDRvNE4wVDk5eDFJNzRKZUd0YTY4SFZ6bjhSNjE1TVlpdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9uYXRpb25hbGl0aWVzLW1hbmFnZW1lbnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1767096841);

-- --------------------------------------------------------

--
-- Table structure for table `sexual_orientations`
--

CREATE TABLE `sexual_orientations` (
  `id` int(11) NOT NULL,
  `sex_orientation` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sexual_orientations`
--

INSERT INTO `sexual_orientations` (`id`, `sex_orientation`, `created_at`, `deleted_at`) VALUES
(1, 'Heterosexual', '2025-09-19 13:24:45', '2025-09-19 13:24:45'),
(2, 'Homosexual', '2025-09-19 13:24:45', '2025-09-19 13:24:45'),
(3, 'Bisexual', '2025-09-19 13:24:47', '2025-09-19 13:24:47'),
(4, 'Prefer not to say', '2025-09-19 13:24:47', '2025-09-19 13:24:47');

-- --------------------------------------------------------

--
-- Table structure for table `support_request`
--

CREATE TABLE `support_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0:new, 1:checked, 2:action taken',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `support_request`
--

INSERT INTO `support_request` (`id`, `user_id`, `subject`, `message`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 86, 'test', 'this is test', NULL, '2025-12-22 18:58:06', '2025-12-22 18:58:06', NULL),
(2, 86, 'Test', 'This is a test', NULL, '2025-12-26 06:10:29', '2025-12-26 06:10:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `terms_condition`
--

CREATE TABLE `terms_condition` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `terms_condition`
--

INSERT INTO `terms_condition` (`id`, `description`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, '<div class=\"section_title aos-init aos-animate\" data-aos=\"fade-down\" style=\"padding: 0px 12px; margin: 0px; flex-shrink: 0; width: 1344px; max-width: 100%; transform: translateZ(0px); opacity: 1; transition-property: opacity, transform; transition-duration: 1s; transition-timing-function: ease; font-family: CenturyGothic, sans-serif;\"><h5 style=\"padding: 0px; margin-right: 0px; margin-left: 0px; font-weight: 600; color: rgb(33, 37, 41);\">Opdateret: 12. september 2025</h5></div><div class=\"dtat_box\" style=\"padding: 0px 12px; margin: 0px; flex-shrink: 0; width: 1344px; max-width: 100%; font-family: CenturyGothic, sans-serif;\"><div class=\"\" style=\"padding: 0px; margin: 0px;\"><div class=\"section_Data\" style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-left: 0px;\">Disse vilkår og betingelser (”Vilkårene”) regulerer brugen af Privée Club-appen (herefter kaldet ”Appen”), der drives af:</p></div></div></div><div class=\"section_title aos-init aos-animate\" data-aos=\"fade-down\" style=\"padding: 0px 12px; margin: 0px; flex-shrink: 0; width: 1344px; max-width: 100%; transform: translateZ(0px); opacity: 1; transition-property: opacity, transform; transition-duration: 1s; transition-timing-function: ease; font-family: CenturyGothic, sans-serif;\"><h5 style=\"padding: 0px; margin-right: 0px; margin-left: 0px; font-weight: 600; color: rgb(33, 37, 41);\">VIICE Innovation ApS</h5><div class=\"text_infor\" style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-left: 0px;\">Hørsholmgade 10</p><p style=\"padding: 0px; margin-right: 0px; margin-left: 0px;\">2200 København N</p><p style=\"padding: 0px; margin-right: 0px; margin-left: 0px;\">Danmark</p></div><div class=\"Email_section\" style=\"padding: 0px; margin: 0px;\">Email: info@privee.club</div><p class=\"mt-3\" style=\"padding: 0px; margin-right: 0px; margin-left: 0px;\">Ved at oprette en konto, anvende Appen, tilmelde sig vores venteliste eller på anden måde benytte vores tjenester, accepterer du at være bundet af disse Vilkår. Hvis du ikke kan acceptere Vilkårene, skal du undlade at bruge Appen.</p></div><div class=\"ul_section\" style=\"padding: 0px 12px; margin: 0px; flex-shrink: 0; width: 1344px; max-width: 100%; font-family: CenturyGothic, sans-serif;\"><h3 style=\"padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; font-weight: 600; color: rgb(33, 37, 41); font-size: 20px;\">1. Definitioner</h3><ul style=\"padding: 0px 0px 0px 2rem; margin-right: 0px; margin-left: 0px;\"><li style=\"padding: 0px; margin: 0px 0px 11px;\"><span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">”Medlem”:&nbsp;</span>En person, der er godkendt som bruger af Privée Club og har et aktivt medlemskab.</li><li style=\"padding: 0px; margin: 0px 0px 11px;\"><span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">”Ansøger”:</span>En person, der ansøger om medlemskab.</li><li style=\"padding: 0px; margin: 0px 0px 11px;\"><span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">”Profil”:</span>De oplysninger, billeder og indhold, som et medlem uploader i Appen.</li><li style=\"padding: 0px; margin: 0px 0px 11px;\"><span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">”Tjenesten”</span>Den funktionalitet, som Privée Club stiller til rådighed, herunder at oprette profiler, kontakte andre medlemmer og deltage i netværket.</li><li style=\"padding: 0px; margin: 0px 0px 11px;\"><span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">”Bruger”</span>Enhver person, der anvender Appen, uanset om denne er Medlem eller ej.</li></ul></div><div class=\"ul_section\" style=\"padding: 0px 12px; margin: 0px; flex-shrink: 0; width: 1344px; max-width: 100%; font-family: CenturyGothic, sans-serif;\"><h3 style=\"padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; font-weight: 600; color: rgb(33, 37, 41); font-size: 20px;\">2. Adgang og Berettigelse</h3><ul style=\"padding: 0px 0px 0px 2rem; margin-right: 0px; margin-left: 0px;\"><li style=\"padding: 0px; margin: 0px 0px 11px;\">Du skal være&nbsp;<span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">18 år eller ældre&nbsp;</span>for at bruge Appen.</li><li style=\"padding: 0px; margin: 0px 0px 11px;\">Du må ikke have domme relateret til vold, chikane eller lignende adfærd.</li><li style=\"padding: 0px; margin: 0px 0px 11px;\">Du er forpligtet til at informere Privée Club, hvis dine oplysninger ændrer sig.</li></ul></div><div class=\"ul_section\" style=\"padding: 0px 12px; margin: 0px; flex-shrink: 0; width: 1344px; max-width: 100%; font-family: CenturyGothic, sans-serif;\"><h3 style=\"padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; font-weight: 600; color: rgb(33, 37, 41); font-size: 20px;\">3. Aftalens Grundlag</h3><p style=\"padding: 0px; margin-right: 0px; margin-left: 0px;\">Disse Vilkår udgør en juridisk bindende aftale mellem dig og Privée Club. Privée Club kan ændre Vilkårene med passende varsel. Opdaterede Vilkår offentliggøres i Appen.</p></div><div class=\"ul_section\" style=\"padding: 0px 12px; margin: 0px; flex-shrink: 0; width: 1344px; max-width: 100%; font-family: CenturyGothic, sans-serif;\"><h3 style=\"padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; font-weight: 600; color: rgb(33, 37, 41); font-size: 20px;\">4. Pris, Betaling og Fortrydelsesret</h3><ul style=\"padding: 0px 0px 0px 2rem; margin-right: 0px; margin-left: 0px;\"><li style=\"padding: 0px; margin: 0px 0px 11px;\">Oprettelse kan være gratis i en introduktionsperiode. Herefter kan medlemskab være betalt abonnement.</li><li style=\"padding: 0px; margin: 0px 0px 11px;\">Abonnement opkræves via de betalingsmetoder, du vælger i Appen (fx App Store, Google Play eller direkte betaling).</li><li style=\"padding: 0px; margin: 0px 0px 11px;\">Betalinger er som udgangspunkt&nbsp;<span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">ikke-refunderbare,&nbsp;</span>medmindre andet følger af ufravigelig lovgivning.</li><li style=\"padding: 0px; margin: 0px 0px 11px;\">Ifølge forbrugerlovgivningen har du&nbsp;<span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">14 dages fortrydelsesret&nbsp;</span>ved køb af abonnement, medmindre du udtrykkeligt har samtykket til, at tjenesten leveres straks, og du samtidig har accepteret, at fortrydelsesretten dermed bortfalder.</li></ul></div><div class=\"ul_section\" style=\"padding: 0px 12px; margin: 0px; flex-shrink: 0; width: 1344px; max-width: 100%; font-family: CenturyGothic, sans-serif;\"><h3 style=\"padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; font-weight: 600; color: rgb(33, 37, 41); font-size: 20px;\">5. Medlemmets Forpligtelser</h3><p style=\"padding: 0px; margin-right: 0px; margin-left: 0px;\">om medlem forpligter du dig til:</p><ul style=\"padding: 0px 0px 0px 2rem; margin-right: 0px; margin-left: 0px;\"><li style=\"padding: 0px; margin: 0px 0px 11px;\">at give korrekte og opdaterede oplysninger om dig selv</li><li style=\"padding: 0px; margin: 0px 0px 11px;\">ikke at uploade eller dele stødende, truende, hadefuldt, diskriminerende eller pornografisk indhold</li><li style=\"padding: 0px; margin: 0px 0px 11px;\">ikke at misbruge Tjenesten til svindel, spam eller reklame</li><li style=\"padding: 0px; margin: 0px 0px 11px;\">ikke at krænke andres ophavsrettigheder eller varemærker</li><li style=\"padding: 0px; margin: 0px 0px 11px;\">ikke at dele personlige kontaktoplysninger offentligt i profilen</li></ul></div><div class=\"ul_section\" style=\"padding: 0px 12px; margin: 0px; flex-shrink: 0; width: 1344px; max-width: 100%; font-family: CenturyGothic, sans-serif;\"><h3 style=\"padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; font-weight: 600; color: rgb(33, 37, 41); font-size: 20px;\">6. Profil</h3><ul style=\"padding: 0px 0px 0px 2rem; margin-right: 0px; margin-left: 0px;\"><li style=\"padding: 0px; margin: 0px 0px 11px;\">Du er ansvarlig for indholdet af din profil.</li><li style=\"padding: 0px; margin: 0px 0px 11px;\">Privée Club gennemgår ikke systematisk profiler, men kan fjerne eller ændre indhold, der strider mod Vilkårene.</li><li style=\"padding: 0px; margin: 0px 0px 11px;\">Du kan til enhver tid&nbsp;<span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">deaktivere&nbsp;</span>eller anmode om&nbsp;<span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">sletning&nbsp;</span>af din profil (jf. Privatlivspolitikken).</li></ul></div><div class=\"ul_section\" style=\"padding: 0px 12px; margin: 0px; flex-shrink: 0; width: 1344px; max-width: 100%; font-family: CenturyGothic, sans-serif;\"><h3 style=\"padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; font-weight: 600; color: rgb(33, 37, 41); font-size: 20px;\">7. Opsigelse og Ophør</h3><ul style=\"padding: 0px 0px 0px 2rem; margin-right: 0px; margin-left: 0px;\"><li style=\"padding: 0px; margin: 0px 0px 11px;\">Du kan opsige dit medlemskab når som helst via Appen eller ved at kontakte support.</li><li style=\"padding: 0px; margin: 0px 0px 11px;\">Privée Club kan suspendere eller slette din profil uden varsel, hvis du overtræder Vilkårene.</li></ul></div><div class=\"ul_section\" style=\"padding: 0px 12px; margin: 0px; flex-shrink: 0; width: 1344px; max-width: 100%; font-family: CenturyGothic, sans-serif;\"><h3 style=\"padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; font-weight: 600; color: rgb(33, 37, 41); font-size: 20px;\">8. Immaterielle Rettigheder</h3><ul style=\"padding: 0px 0px 0px 2rem; margin-right: 0px; margin-left: 0px;\"><li style=\"padding: 0px; margin: 0px 0px 11px;\">Alle rettigheder til Appen og Tjenesten tilhører Privée Club.</li><li style=\"padding: 0px; margin: 0px 0px 11px;\">Du må ikke kopiere, ændre, distribuere eller udnytte indhold uden forudgående skriftlig tilladelse.</li></ul></div><div class=\"ul_section\" style=\"padding: 0px 12px; margin: 0px; flex-shrink: 0; width: 1344px; max-width: 100%; font-family: CenturyGothic, sans-serif;\"><h3 style=\"padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; font-weight: 600; color: rgb(33, 37, 41); font-size: 20px;\">9. Ansvarsfraskrivelse og Begrænsning</h3><ul style=\"padding: 0px 0px 0px 2rem; margin-right: 0px; margin-left: 0px;\"><li style=\"padding: 0px; margin: 0px 0px 11px;\">Privée Club garanterer ikke, at du finder en partner, eller at profiler er fuldstændigt korrekte.</li><li style=\"padding: 0px; margin: 0px 0px 11px;\">Privée Club er ikke ansvarlig for møder eller relationer, der opstår via Appen – dette sker på eget ansvar.</li><li style=\"padding: 0px; margin: 0px 0px 11px;\">Privée Club er ikke ansvarlig for indirekte tab, følgeskader, tab af data eller force majeure.</li><li style=\"padding: 0px; margin: 0px 0px 11px;\">Ansvar kan aldrig overstige det beløb, du har betalt for medlemskab de seneste 12 måneder.</li></ul></div><div class=\"ul_section\" style=\"padding: 0px 12px; margin: 0px; flex-shrink: 0; width: 1344px; max-width: 100%; font-family: CenturyGothic, sans-serif;\"><h3 style=\"padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; font-weight: 600; color: rgb(33, 37, 41); font-size: 20px;\">10. Indemnitet</h3><p style=\"padding: 0px; margin-right: 0px; margin-left: 0px;\">Du accepterer at holde Privée Club skadesløs for krav, tab eller omkostninger, der skyldes din misligholdelse af Vilkårene eller misbrug af Tjenesten.</p></div><div class=\"ul_section\" style=\"padding: 0px 12px; margin: 0px; flex-shrink: 0; width: 1344px; max-width: 100%; font-family: CenturyGothic, sans-serif;\"><h3 style=\"padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; font-weight: 600; color: rgb(33, 37, 41); font-size: 20px;\">11. Personoplysninger</h3><p style=\"padding: 0px; margin-right: 0px; margin-left: 0px;\">Privée Club behandler dine oplysninger i overensstemmelse med gældende lovgivning og vores&nbsp;<span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">Privatlivs politik&nbsp;</span>, som er en integreret del af disse Vilkår.</p></div><div class=\"ul_section\" style=\"padding: 0px 12px; margin: 0px; flex-shrink: 0; width: 1344px; max-width: 100%; font-family: CenturyGothic, sans-serif;\"><h3 style=\"padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; font-weight: 600; color: rgb(33, 37, 41); font-size: 20px;\">12. Gældende Lov og Værneting</h3><p style=\"padding: 0px; margin-right: 0px; margin-left: 0px;\">Disse Vilkår er underlagt&nbsp;<span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">dansk ret.</span></p><p style=\"padding: 0px; margin-right: 0px; margin-left: 0px;\">Enhver tvist afgøres ved&nbsp;<span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">Københavns Byret,&nbsp;</span>medmindre ufravigelig lovgivning bestemmer andet.</p></div><div class=\"ul_section\" style=\"padding: 0px 12px; margin: 0px; flex-shrink: 0; width: 1344px; max-width: 100%; font-family: CenturyGothic, sans-serif;\"><h3 style=\"padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; font-weight: 600; color: rgb(33, 37, 41); font-size: 20px;\">13. Generelt</h3><ul style=\"padding: 0px 0px 0px 2rem; margin-right: 0px; margin-left: 0px;\"><li style=\"padding: 0px; margin: 0px 0px 11px;\">Disse Vilkår udgør den fulde aftale mellem dig og Privée Club.</li><li style=\"padding: 0px; margin: 0px 0px 11px;\">Hvis en bestemmelse findes ugyldig, påvirker det ikke de øvrige bestemmelser.</li><li style=\"padding: 0px; margin: 0px 0px 11px;\">Tredjeparter har ingen rettigheder under disse Vilkår.</li></ul></div>', '2025-09-24 09:37:38', '2025-09-24 09:37:38', '2025-11-07 06:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_number` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `like_status` int(11) NOT NULL DEFAULT 0,
  `fav_user_status` int(11) NOT NULL DEFAULT 0,
  `gender` varchar(255) DEFAULT NULL,
  `profile_name` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `rejection_email_status` int(11) NOT NULL DEFAULT 0,
  `otp` varchar(255) DEFAULT NULL,
  `otp_expires_at` timestamp NULL DEFAULT NULL,
  `email_verification_otp` varchar(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 = login not allowed,1= login allowed',
  `admin_status` int(11) DEFAULT 0 COMMENT '0 = pending , 1=accept,2= denied',
  `admin_approve_time` timestamp NULL DEFAULT NULL,
  `profile_approval` int(11) NOT NULL DEFAULT 0 COMMENT '0=not approved, 1 = approved ',
  `profie_rating_status` varchar(255) NOT NULL DEFAULT 'OUT',
  `profile_image` varchar(255) DEFAULT NULL COMMENT 'profile image',
  `online_status` varchar(255) DEFAULT NULL COMMENT 'online,offline',
  `dob` date DEFAULT NULL COMMENT 'date of birth',
  `height` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL COMMENT 'in cm',
  `body_type` varchar(255) DEFAULT NULL,
  `hair_color` varchar(255) DEFAULT NULL,
  `eye_color` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `sexual_orientation` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `field_of_work` varchar(255) DEFAULT NULL,
  `relationship_status` varchar(255) DEFAULT NULL,
  `zodiac_sign` varchar(255) DEFAULT NULL,
  `smoking` varchar(255) DEFAULT NULL COMMENT '0 = NO,1 =yes,2=ocassionaly',
  `drinking` varchar(255) DEFAULT NULL COMMENT '0=no,1=yes,2ocassionally',
  `tattoos` varchar(255) DEFAULT NULL COMMENT '0=no,1=yes',
  `piercings` varchar(255) DEFAULT NULL COMMENT '0=no,1=yes',
  `about_me` longtext DEFAULT NULL,
  `about_match` longtext DEFAULT NULL,
  `hear_about_us` int(11) DEFAULT NULL,
  `looking_for` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` enum('admin','user') DEFAULT NULL,
  `deletion_type` varchar(255) DEFAULT NULL,
  `is_fake` tinyint(4) NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `show_on_mobile` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `member_number`, `first_name`, `last_name`, `language`, `like_status`, `fav_user_status`, `gender`, `profile_name`, `country_code`, `mobile_no`, `password`, `email`, `rejection_email_status`, `otp`, `otp_expires_at`, `email_verification_otp`, `status`, `admin_status`, `admin_approve_time`, `profile_approval`, `profie_rating_status`, `profile_image`, `online_status`, `dob`, `height`, `weight`, `body_type`, `hair_color`, `eye_color`, `nationality`, `region`, `city`, `sexual_orientation`, `education`, `field_of_work`, `relationship_status`, `zodiac_sign`, `smoking`, `drinking`, `tattoos`, `piercings`, `about_me`, `about_match`, `hear_about_us`, `looking_for`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `deletion_type`, `is_fake`, `is_active`, `show_on_mobile`) VALUES
(75, '000002', 'Mads', 'Larsen', 'English', 0, 0, 'Male', 'FitnessGuy23', '+45', '30495050', '$2y$12$0EM5QOdUzSkpg.nQcoZ8huOLsIPwucvDjHx1soef9.nXCwZ5KLltO', 'nobultd@gmail.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-15 18:33:36', 1, 'OUT', 'uploads/users/1765803710.jpg', NULL, '1978-10-15', '181', '92', 'Average', 'Brown-grey', 'Brown', 'Heterosexual', 'Sjælland inkl. Øerne', 'København', 'Heterosexual', 'Bachelor', 'Banking', 'Single', 'Cancer', '1', '1', '0', '0', 'Dette er en eksempeltekst, der bruges som pladsholder i design og layout. Formålet er at vise, hvordan tekst vifremstå visuelt, uden at indholdet h', 'Dette er en eksempeltekst, der bruges som pladsholder i design og layout. Formålet er at vise, hvordan tekst vil fremstå visuelt, uden at indholdet har reel betydning. Teksten hjælper med at vurdere', 1, '1,3,5,4', NULL, '2025-12-15 18:00:22', '2025-12-18 22:14:11', NULL, NULL, NULL, 0, 1, 1),
(78, '000005', 'Æø', 'Li', 'English', 1, 1, 'Female', 'GG2', '+45', '30142518', '$2y$12$29swyTdLyHZ2oqSyYK0TR.7tsB.U0.5oQrPv6q0/q33p.djsOg2P6', 'info@billigtpatent.dk', 0, NULL, NULL, NULL, 0, 2, '2025-12-22 18:02:21', 1, 'IN', 'uploads/users/1765872546.jpg', NULL, '2005-08-14', '169', '53', 'Athletic/Fit', 'Black', 'Brown', 'Canadian', 'Fyn', 'Bogense', 'Heterosexual', 'Chemist', 'Analyser', 'Single', 'Taurus', '1', '1', '0', '0', 'Kejdkdbdbdbdbdbdbdbdbdbfbfnnfkfnfnfnfnfngngngngngngkfkfnfnfnfnfnfnfnfnf', 'Bdjdkdbdbdbfnxnxnxnxnxnfngmfnfngngnfkfkfnfngngmfkfnfkfnfkfkfkfngkgnnff', 7, '3,1,4,5', NULL, '2025-12-16 13:07:40', '2025-12-22 18:04:20', NULL, NULL, NULL, 0, 0, 1),
(82, '000007', 'Kiara', 'Advani', 'English', 0, 0, 'Male', 'Kiaaa', '+45', '12345648', '$2y$12$g.GYQ9ajJBG48e2KsUKQXO9vRJ21xahQru7lBRdSgTHO8yXHrD6L6', 'omkar.cloudwapp@gmail.com', 0, NULL, NULL, NULL, 0, 1, '2025-12-16 16:43:11', 1, 'IN', 'uploads/users/1765885209.jpg', 'online', '2007-12-16', '158', '58', 'Average (Gennemsnitlig)', 'Black', 'Grey', 'Argentinian', 'Fyn', 'Faaborg', 'Bisexual', 'Bba', 'Bba', 'Married', 'Cancer', '1', '1', '1', '0', 'Izsjndndd to u want we will get a match in a few days to do with u t t s b a n w ek eye nxbxnx d h', 'Dhdbdhjddh me to do the same thing jsjd ka matalab hai na ki ek e w ek ek', 7, '3', NULL, '2025-12-16 16:39:39', '2025-12-22 16:27:44', '2025-12-22 16:27:44', 'user', 'user_deleted', 0, 0, 1),
(83, '000008', 'Ravi', 'Verma', 'English', 0, 0, 'Female', 'Pavi', '+45', '65468465', '$2y$12$OZkVtAB61prl.N9pvHRvZ.XAEeYjSL9.CWlhebfo9mbsQtFd2yEbS', 'ravi@mailinator.com', 0, NULL, NULL, NULL, 1, 0, NULL, 0, 'OUT', 'uploads/users/1765957004.jpg', 'offline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-16 17:06:36', '2025-12-17 12:37:23', NULL, NULL, NULL, 0, 0, 1),
(84, '000009', 'Sumi', 'Sain', NULL, 0, 0, 'Female', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, NULL, 0, 'OUT', NULL, NULL, '2001-05-14', '145', '58', 'Athletic (Atletisk)', 'Black', 'Black', 'Albanian', 'Jylland', NULL, 'Bisexual', NULL, NULL, NULL, 'Aquarius', NULL, NULL, NULL, NULL, 'this is text', 'this is text', NULL, NULL, NULL, '2025-12-19 09:44:46', '2025-12-30 04:48:53', NULL, NULL, NULL, 1, 1, 1),
(85, '000010', 'Nataasha', 'Sharma', 'English', 0, 0, 'Male', 'Natuu', '+45', '12345567', '$2y$12$KS7oItzO/u7kgjlQbPcWdu03XaQsZRwLRoCgQgDnjVS7r1/osQA6m', 'omkar.cloudwapp@gmail.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-22 18:03:04', 1, 'IN', 'uploads/users/1766403797.jpg', 'offline', '2005-12-22', '185', '58', 'Toned (Tonet)', 'Black', 'Green', 'Albanian', 'Fyn', 'Bogense', 'Homosexual', 'Bba', 'Bba', 'In a relationship', 'Cancer', '1', '1', '1', '1', 'Jdndndjdkxkkdd didjdnndnxjzjJajhzhx me know when will be working working with you in your wish to get the latest newpr in s on hinge', 'Nxbxnx d manje e e wo znxnd d hai ki e wo toh sndndnfmfkfkfkfmf fnf hai to be honest I am a student we', 10, '1,3,4', NULL, '2025-12-22 16:42:27', '2025-12-22 18:15:27', NULL, NULL, NULL, 0, 0, 1),
(86, '000011', 'Marcus', 'Pedersen', 'English', 1, 0, 'Male', 'FitnessGuy23', '+45', '+45 +45 +45 +45 30490505', '$2y$12$ftzib.WJdue8Mh07OuH8xOQD1zPpg9aBxn8xyoXi63M/IQ0wL0yL6', 'nobultd@gmail.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-22 17:52:41', 1, 'IN', '/uploads/users/1766407681.jpg', 'online', '1990-06-15', '181', '120', 'Athletic (Atletisk)', 'Brown', 'Brown', 'Danish', 'Sjælland inkl. Øerne', 'København', 'Heterosexual', 'Banking', 'Development', 'Single', 'Gemini', '0', '0', '0', '0', 'Driven, kind, confident — and building dreams and seeking real chemistry. Driven, kind, confident — and building dreams and seeking real chemistry. Driven, kind, confident — and building dreams and seeking real chemistry and biology 🧫', 'Driven, kind, confident — and building dreams and seeking real chemistry.krnrnr the only one that has to be done', 1, '5', NULL, '2025-12-22 17:46:42', '2025-12-26 07:24:05', NULL, NULL, NULL, 0, 0, 1),
(87, '000012', 'John', 'Doe', 'English', 1, 1, 'Female', 'JD169', '+45', '+45 12345678', '$2y$12$ptgknHx.SAoEMrWNDI0BJO48/lJh8GjjIMDX4g5V.OuEF.GEITBmW', 'teamorfactor@gmail.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-22 19:14:40', 1, 'IN', 'uploads/users/1766412646.jpg', 'online', '2007-12-22', '196', '88', 'Muscular (Muskuløs)', 'blue', 'Blue', 'American', 'Fyn', 'Assens', 'Heterosexual', 'test', 'test', 'Single', 'Aries', '0', '0', '0', '0', 'This is me. And this is I. Here, am i.how are you? Imagine how much is a new season of the.This is me. And this is I. Here, am i.how are you? Imagine how much is a new season of the', 'hello I am interested in the only one that has to be done by the only one that has to be done.......', 14, '1', NULL, '2025-12-22 19:10:02', '2025-12-23 13:00:21', NULL, NULL, NULL, 0, 0, 1),
(88, '000013', 'Anna', 'Jensen', 'Danish', 0, 0, 'Female', 'SunshineDK', '+45', '11223344', '$2y$12$examplehash1', 'anna.jensen@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-30 01:58:11', 1, 'IN', 'uploads/users/fake1.jpg', 'offline', '1995-03-12', '165', '55', 'Slim', 'Blonde', 'Blue', 'Danish', 'Sjælland inkl. Øerne', 'Roskilde', 'Heterosexual', 'Master', 'Marketing', 'Single', 'Pisces', '0', '2', '0', '1', 'Love hiking and coffee. Looking for adventure.', 'Someone fun and active.', 1, '1,3', NULL, '2025-12-01 10:00:00', '2025-12-30 01:58:11', NULL, NULL, NULL, 0, 0, 1),
(89, '000014', 'Lars', 'Petersen', 'English', 0, 0, 'Male', 'BikeLover', '+45', '55667788', '$2y$12$examplehash2', 'lars.p@example.com', 0, NULL, NULL, NULL, 1, 0, NULL, 0, 'OUT', 'uploads/users/fake2.jpg', NULL, '1988-07-22', '178', '82', 'Athletic/Fit', 'Brown', 'Green', 'Danish', 'Jylland', 'Aarhus', 'Heterosexual', 'Bachelor', 'IT', 'Divorced', 'Leo', '1', '1', '1', '0', 'Cycling enthusiast.', 'Fit and outdoorsy partner.', 2, '3,5', NULL, '2025-12-02 11:00:00', '2025-12-28 14:00:00', NULL, NULL, NULL, 0, 0, 1),
(107, '000032', 'Sofia', 'Nielsen', 'Danish', 0, 0, 'Female', 'ArtSoul', '+45', '99887766', '$2y$12$examplehash21', 'sofia.n@example.com', 0, NULL, NULL, NULL, 1, 0, NULL, 0, 'OUT', 'uploads/users/fake21.jpg', 'offline', '1992-11-05', '170', '60', 'Curvy', 'Red', 'Hazel', 'Swedish', 'Sjælland inkl. Øerne', 'København', 'Bisexual', 'PhD', 'Art', 'Single', 'Scorpio', '0', '0', '0', '0', 'Painter and dreamer.', 'Creative mind.', 3, '1,4', NULL, '2025-12-20 12:00:00', '2025-12-29 16:00:00', NULL, NULL, NULL, 0, 0, 1),
(108, '000033', 'Rejected', 'User1', 'English', 0, 0, 'Male', 'BadProfile1', '+45', '11111111', '$2y$12$examplehash22', 'rej1@example.com', 1, NULL, NULL, NULL, 0, 2, '2025-12-15 13:00:00', 0, 'OUT', NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-10 10:00:00', '2025-12-15 13:00:00', NULL, NULL, NULL, 0, 0, 1),
(109, '000034', 'Rejected', 'User2', 'Danish', 0, 0, 'Female', 'BadProfile2', '+45', '22222222', '$2y$12$examplehash23', 'rej2@example.com', 1, NULL, NULL, NULL, 0, 0, '2025-12-16 14:00:00', 0, 'OUT', 'uploads/users/fakebad.jpg', 'offline', '1999-02-02', '160', '50', NULL, 'Black', 'Brown', 'Danish', 'Fyn', NULL, 'Heterosexual', 'High School', 'None', 'Single', 'Aquarius', '1', '1', '1', '1', 'Incomplete profile.', 'N/A', 4, '5', NULL, '2025-12-11 11:00:00', '2025-12-30 04:49:05', NULL, NULL, NULL, 1, 0, 0),
(118, '000043', 'NewApp', 'One', 'English', 0, 0, 'Male', 'App1', '+45', '33333333', '$2y$12$examplehash', 'app1@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-20 15:00:00', 0, 'OUT', 'uploads/users/app1.jpg', NULL, '1990-04-04', '180', '75', 'Average', 'Brown', 'Blue', 'Norwegian', 'Bornholm', 'Rønne', 'Heterosexual', 'Bachelor', 'Engineering', 'Single', 'Aries', '0', '2', '0', '0', 'New here.', 'Looking for love.', 5, '1,2,3', NULL, '2025-12-15 12:00:00', '2025-12-20 15:00:00', NULL, NULL, NULL, 0, 0, 1),
(187, '000112', 'Final', 'User', 'Danish', 1, 1, 'Female', 'ActiveLast', '+45', '99999999', '$2y$12$examplehash100', 'final@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-25 18:00:00', 1, 'IN', 'uploads/users/fake100.jpg', 'online', '1980-12-30', '172', '65', 'Toned', 'Grey', 'Green', 'Danish', 'Jylland', 'Aalborg', 'Heterosexual', 'Master', 'Healthcare', 'Widowed', 'Capricorn', '0', '0', '0', '0', 'Experienced in life, seeking companion.', 'Kind and reliable.', 14, '4,5', NULL, '2025-12-25 10:00:00', '2025-12-30 07:00:00', NULL, NULL, NULL, 0, 0, 1),
(200, '00977', 'Jacob', 'Rasmussen', 'French', 0, 0, 'Male', 'CityExplorer84', '+49', '83270479', '$2y$12$placeholderhash', 'newapp1@example.com', 0, NULL, NULL, NULL, 1, 0, NULL, 0, 'OUT', 'uploads/users/newapp1.jpg', NULL, '1998-10-28', '200', '76', 'Toned', 'Brown-grey', 'Hazel', 'Norwegian', 'Sjælland inkl. Øerne', 'Odense', 'Bisexual', 'PhD', 'Education', 'Divorced', 'Sagittarius', '0', '1', '1', '0', 'Creative soul, painter and dreamer.', 'Enjoy quiet evenings with good book.', NULL, '3', NULL, '2025-12-22 04:00:00', '2025-12-30 02:00:00', NULL, NULL, NULL, 0, 0, 1),
(201, '00647', 'Frederik', 'Olsen', 'English', 0, 0, 'Male', 'BookReader44', '+45', '95794635', '$2y$12$placeholderhash', 'newapp2@example.com', 0, NULL, NULL, NULL, 1, 0, NULL, 0, 'OUT', 'uploads/users/newapp2.jpg', NULL, '1994-09-23', '191', '60', 'Slim', 'Brown', 'Green', 'Norwegian', 'Sjælland inkl. Øerne', 'Bogense', 'Bisexual', 'Bachelor', 'None', 'Single', 'Virgo', '2', '1', '0', '0', 'Food lover, always trying new recipes.', 'Creative soul, painter and dreamer.', NULL, '3', NULL, '2025-12-21 04:00:00', '2025-12-30 02:00:00', NULL, NULL, NULL, 0, 0, 1),
(202, '00891', 'Frederik', 'Jørgensen', 'English', 0, 0, 'Male', 'SweetGirl16', '+47', '53199094', '$2y$12$placeholderhash', 'newapp3@example.com', 0, NULL, NULL, NULL, 1, 0, NULL, 0, 'OUT', 'uploads/users/newapp3.jpg', NULL, '1962-12-21', '181', '54', 'Average', 'Red', 'Blue', 'American', 'Jylland', 'Helsingør', 'Bisexual', 'Master', 'Healthcare', 'Single', 'Leo', '1', '0', '0', '0', 'Fitness enthusiast looking for similar.', 'Food lover, always trying new recipes.', NULL, '1,3,5', NULL, '2025-12-25 04:00:00', '2025-12-30 02:00:00', NULL, NULL, NULL, 0, 0, 1),
(203, '00910', 'Anna', 'Hansen', 'English', 0, 0, 'Female', 'AdventureDK22', '+45', '39637525', '$2y$12$placeholderhash', 'newapp4@example.com', 0, NULL, NULL, NULL, 1, 0, NULL, 0, 'OUT', 'uploads/users/newapp4.jpg', NULL, '1992-07-02', '159', '96', 'Slim', 'Blonde', 'Blue', 'British', 'Bornholm', 'Aalborg', 'Heterosexual', 'Master', 'Art', 'Widowed', 'Aquarius', '0', '1', '1', '1', 'Enjoy quiet evenings with good book.', 'Adventurous spirit seeking partner in crime.', NULL, '4,5', NULL, '2025-12-16 04:00:00', '2025-12-30 02:00:00', NULL, NULL, NULL, 0, 0, 1),
(204, '00892', 'Clara', 'Olsen', 'English', 0, 0, 'Female', 'SweetGirl73', '+46', '16008882', '$2y$12$placeholderhash', 'newapp5@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-23 06:00:00', 0, 'OUT', 'uploads/users/newapp5.jpg', NULL, '1970-01-20', '178', '82', 'Toned', 'Brown', 'Brown', 'German', 'Fyn', 'Odense', 'Bisexual', 'Master', 'Healthcare', 'Divorced', 'Gemini', '1', '0', '0', '1', 'Creative soul, painter and dreamer.', 'Fitness enthusiast looking for similar.', NULL, '3', NULL, '2025-12-19 04:00:00', '2025-12-30 02:00:00', NULL, NULL, NULL, 0, 0, 1),
(205, '00352', 'Emma', 'Petersen', 'English', 0, 0, 'Female', 'TravelBug20', '+45', '68856964', '$2y$12$placeholderhash', 'newapp6@example.com', 0, NULL, NULL, NULL, 1, 0, NULL, 0, 'OUT', 'uploads/users/newapp6.jpg', NULL, '1998-06-12', '161', '75', 'Athletic/Fit', 'Brown-grey', 'Grey', 'Danish', 'Sjælland inkl. Øerne', 'Bogense', 'Bisexual', 'Bachelor', 'IT', 'Single', 'Scorpio', '0', '0', '0', '0', 'Adventurous spirit seeking partner in crime.', 'Love traveling and meeting new people.', NULL, '4,5', NULL, '2025-12-24 04:00:00', '2025-12-30 02:00:00', NULL, NULL, NULL, 0, 0, 1),
(206, '00500', 'Caroline', 'Andersen', 'English', 0, 0, 'Female', 'CoolGuy85', '+45', '61863303', '$2y$12$placeholderhash', 'newapp7@example.com', 0, NULL, NULL, NULL, 1, 0, NULL, 0, 'OUT', 'uploads/users/newapp7.jpg', NULL, '1985-12-05', '162', '102', 'Athletic/Fit', 'Brown-grey', 'Brown', 'British', 'Jylland', 'Assens', 'Heterosexual', 'High School', 'Education', 'Divorced', 'Aquarius', '2', '2', '1', '1', 'Adventurous spirit seeking partner in crime.', 'Love traveling and meeting new people.', NULL, '1,3,5', NULL, '2025-12-17 04:00:00', '2025-12-30 02:00:00', NULL, NULL, NULL, 0, 0, 1),
(207, '00673', 'Ole', 'Petersen', 'English', 0, 0, 'Male', 'SweetGirl27', '+47', '86036032', '$2y$12$placeholderhash', 'newapp8@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-25 06:00:00', 0, 'OUT', 'uploads/users/newapp8.jpg', NULL, '1983-12-18', '194', '55', 'Curvy', 'Black', 'Blue', 'Canadian', 'Bornholm', 'Aalborg', 'Heterosexual', 'Master', 'Education', 'Married', 'Aquarius', '0', '1', '0', '0', 'Enjoy quiet evenings with good book.', 'Fitness enthusiast looking for similar.', NULL, '4,5', NULL, '2025-12-23 04:00:00', '2025-12-30 02:00:00', NULL, NULL, NULL, 0, 0, 1),
(208, '00361', 'Søren', 'Olsen', 'French', 0, 0, 'Male', 'AdventureDK62', '+46', '13463493', '$2y$12$placeholderhash', 'newapp9@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-28 06:00:00', 0, 'OUT', 'uploads/users/newapp9.jpg', NULL, '1968-12-03', '197', '80', 'Slim', 'Blonde', 'Green', 'German', 'Bornholm', 'Rønne', 'Bisexual', 'Master', 'Engineering', 'Married', 'Virgo', '2', '2', '1', '1', 'Creative soul, painter and dreamer.', 'Food lover, always trying new recipes.', NULL, '1', NULL, '2025-12-27 04:00:00', '2025-12-30 02:00:00', NULL, NULL, NULL, 0, 0, 1),
(209, '00758', 'Ida', 'Madsen', 'German', 0, 0, 'Female', 'CityExplorer43', '+45', '28386062', '$2y$12$placeholderhash', 'newapp10@example.com', 0, NULL, NULL, NULL, 1, 0, NULL, 0, 'OUT', 'uploads/users/newapp10.jpg', NULL, '1994-07-12', '171', '59', 'Toned', 'Grey', 'Grey', 'Norwegian', 'Sjælland inkl. Øerne', 'Aalborg', 'Bisexual', 'Bachelor', 'IT', 'In a relationship', 'Leo', '1', '2', '0', '1', 'Fitness enthusiast looking for similar.', 'Fitness enthusiast looking for similar.', NULL, '3,5', NULL, '2025-12-24 04:00:00', '2025-12-30 02:00:00', NULL, NULL, NULL, 0, 0, 1),
(210, '00215', 'Jens', 'Jensen', 'German', 2, 1, 'Male', 'BookReader49', '+46', '93312252', '$2y$12$placeholderhash', 'nonactive1@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-16 09:00:00', 1, 'IN', 'uploads/users/nonactive1.jpg', 'offline', '1969-08-05', '197', '88', 'Average', 'Blonde', 'Brown', 'Norwegian', 'Fyn', 'Faaborg', 'Heterosexual', 'Bachelor', 'None', 'Single', 'Virgo', '2', '2', '0', '0', 'Food lover, always trying new recipes.', 'Enjoy quiet evenings with good book.', NULL, '1,3', NULL, '2025-11-13 06:00:00', '2025-12-14 08:00:00', NULL, NULL, NULL, 0, 0, 1),
(211, '00471', 'Niels', 'Christensen', 'German', 0, 3, 'Male', 'SweetGirl73', '+46', '87800500', '$2y$12$placeholderhash', 'nonactive2@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-20 09:00:00', 1, 'IN', 'uploads/users/nonactive2.jpg', 'offline', '1991-05-17', '195', '84', 'Average', 'Red', 'Brown', 'Norwegian', 'Bornholm', 'Helsingør', 'Homosexual', 'Vocational', 'Banking', 'Single', 'Leo', '0', '1', '1', '0', 'Enjoy quiet evenings with good book.', 'Adventurous spirit seeking partner in crime.', NULL, '4,5', NULL, '2025-11-11 06:00:00', '2025-12-06 08:00:00', NULL, NULL, NULL, 0, 0, 1),
(212, '00391', 'Frederik', 'Petersen', 'Danish', 1, 1, 'Male', 'BookReader50', '+47', '32911075', '$2y$12$placeholderhash', 'nonactive3@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-12 09:00:00', 1, 'IN', 'uploads/users/nonactive3.jpg', 'offline', '1996-05-18', '183', '91', 'Athletic/Fit', 'Red', 'Brown', 'German', 'Bornholm', 'København', 'Heterosexual', 'Bachelor', 'Analyser', 'Divorced', 'Virgo', '1', '1', '1', '0', 'Adventurous spirit seeking partner in crime.', 'Tech geek, love coding and gadgets.', NULL, '1,3,4,5', NULL, '2025-11-12 06:00:00', '2025-12-04 08:00:00', NULL, NULL, NULL, 0, 0, 1),
(213, '00608', 'Jacob', 'Madsen', 'Danish', 1, 3, 'Male', 'CityExplorer79', '+49', '74803324', '$2y$12$placeholderhash', 'nonactive4@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-16 09:00:00', 1, 'IN', 'uploads/users/nonactive4.jpg', 'offline', '1978-05-06', '200', '76', 'Slim', 'Grey', 'Brown', 'Canadian', 'Sjælland inkl. Øerne', 'Odense', 'Bisexual', 'Bachelor', 'Art', 'In a relationship', 'Aries', '0', '1', '0', '0', 'Fitness enthusiast looking for similar.', 'Tech geek, love coding and gadgets.', NULL, '1,3,5', NULL, '2025-11-19 06:00:00', '2025-12-14 08:00:00', NULL, NULL, NULL, 0, 0, 1),
(214, '00881', 'Mads', 'Jørgensen', 'German', 5, 2, 'Male', 'TravelBug83', '+46', '63963213', '$2y$12$placeholderhash', 'nonactive5@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-17 09:00:00', 1, 'IN', 'uploads/users/nonactive5.jpg', 'offline', '1998-12-11', '170', '102', 'Slim', 'Red', 'Grey', 'American', 'Sjælland inkl. Øerne', 'Rønne', 'Heterosexual', 'PhD', 'Engineering', 'Widowed', 'Scorpio', '1', '2', '0', '0', 'Adventurous spirit seeking partner in crime.', 'Creative soul, painter and dreamer.', NULL, '1,3,5', NULL, '2025-11-07 06:00:00', '2025-12-06 08:00:00', NULL, NULL, NULL, 0, 0, 1),
(215, '00699', 'Henrik', 'Christensen', 'German', 5, 3, 'Male', 'TravelBug95', '+46', '73727704', '$2y$12$placeholderhash', 'nonactive6@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-16 09:00:00', 1, 'IN', 'uploads/users/nonactive6.jpg', 'offline', '1963-04-18', '189', '69', 'Curvy', 'Red', 'Green', 'Norwegian', 'Sjælland inkl. Øerne', 'Assens', 'Bisexual', 'PhD', 'Banking', 'Single', 'Sagittarius', '1', '1', '1', '1', 'Creative soul, painter and dreamer.', 'Creative soul, painter and dreamer.', NULL, '1', NULL, '2025-11-05 06:00:00', '2025-12-03 08:00:00', NULL, NULL, NULL, 0, 0, 1),
(216, '00835', 'Martin', 'Nielsen', 'French', 5, 3, 'Male', 'MusicFan11', '+46', '10501468', '$2y$12$placeholderhash', 'nonactive7@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-18 09:00:00', 1, 'IN', 'uploads/users/nonactive7.jpg', 'offline', '1966-02-01', '187', '57', 'Muscular', 'Grey', 'Brown', 'Norwegian', 'Jylland', 'Aalborg', 'Homosexual', 'PhD', 'Healthcare', 'In a relationship', 'Scorpio', '2', '2', '0', '1', 'Adventurous spirit seeking partner in crime.', 'Adventurous spirit seeking partner in crime.', NULL, '3,5', NULL, '2025-11-22 06:00:00', '2025-12-04 08:00:00', NULL, NULL, NULL, 0, 0, 1),
(217, '00435', 'Caroline', 'Rasmussen', 'Danish', 2, 2, 'Female', 'FitnessPro95', '+46', '49861780', '$2y$12$placeholderhash', 'nonactive8@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-11 09:00:00', 1, 'IN', 'uploads/users/nonactive8.jpg', 'offline', '1976-07-01', '169', '58', 'Toned', 'Black', 'Grey', 'American', 'Jylland', 'Aalborg', 'Bisexual', 'PhD', 'None', 'In a relationship', 'Scorpio', '2', '2', '1', '1', 'Creative soul, painter and dreamer.', 'Food lover, always trying new recipes.', NULL, '1,3,4,5', NULL, '2025-11-08 06:00:00', '2025-12-03 08:00:00', NULL, NULL, NULL, 0, 0, 1),
(218, '00866', 'Anders', 'Rasmussen', 'French', 1, 0, 'Male', 'MusicFan88', '+47', '78187639', '$2y$12$placeholderhash', 'nonactive9@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-13 09:00:00', 1, 'IN', 'uploads/users/nonactive9.jpg', 'offline', '2001-05-07', '182', '83', 'Muscular', 'Grey', 'Green', 'Canadian', 'Jylland', 'Helsingør', 'Heterosexual', 'PhD', 'Engineering', 'Married', 'Aquarius', '0', '1', '1', '1', 'Tech geek, love coding and gadgets.', 'Creative soul, painter and dreamer.', NULL, '3', NULL, '2025-11-25 06:00:00', '2025-12-08 08:00:00', NULL, NULL, NULL, 0, 0, 1),
(219, '00520', 'Søren', 'Hansen', 'English', 4, 0, 'Male', 'BookReader75', '+45', '35209795', '$2y$12$placeholderhash', 'nonactive10@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-18 09:00:00', 1, 'IN', 'uploads/users/nonactive10.jpg', 'offline', '1974-03-18', '194', '105', 'Average', 'Red', 'Brown', 'Danish', 'Fyn', 'Helsingør', 'Heterosexual', 'High School', 'Analyser', 'Single', 'Leo', '0', '2', '1', '1', 'Creative soul, painter and dreamer.', 'Tech geek, love coding and gadgets.', NULL, '1,3,4,5', NULL, '2025-11-29 06:00:00', '2025-12-02 08:00:00', NULL, NULL, NULL, 0, 0, 1),
(300, '01001', 'Mathias', 'Kristensen', 'English', 3, 1, 'Male', 'QuietGuy88', '+45', '82736451', '$2y$12$placeholderhash', 'mathias.k@example.com', 0, NULL, NULL, NULL, 0, 1, '2025-10-15 08:30:00', 1, 'IN', 'uploads/users/300.jpg', 'offline', '1990-05-12', '182', '85', 'Athletic/Fit', 'Brown', 'Blue', 'Danish', 'Sjælland inkl. Øerne', 'København', 'Heterosexual', 'Bachelor', 'IT', 'Single', 'Taurus', '0', '2', '0', '0', 'Calm and reflective, enjoy deep conversations and nature walks.', 'Someone kind and understanding who values honesty.', 5, '1,3', NULL, '2025-09-20 04:00:00', '2025-12-15 10:00:00', '2025-12-20 03:45:00', 'user', 'user_deleted', 0, 0, 1),
(301, '01002', 'Laura', 'Nielsen', 'Danish', 1, 2, 'Female', 'BookLover92', '+45', '39482176', '$2y$12$placeholderhash', 'laura.n@example.com', 0, NULL, NULL, NULL, 0, 1, '2025-10-18 05:20:00', 1, 'IN', 'uploads/users/301.jpg', 'offline', '1993-08-25', '168', '62', 'Slim', 'Blonde', 'Green', 'Danish', 'Jylland', 'Aarhus', 'Heterosexual', 'Master', 'Education', 'Single', 'Virgo', '0', '1', '0', '1', 'Passionate reader and coffee enthusiast.', 'A partner who loves books and quiet evenings.', 3, '3,5', NULL, '2025-09-15 06:00:00', '2025-12-10 08:00:00', '2025-12-18 05:30:00', 'user', 'user_deleted', 0, 0, 1),
(302, '01003', 'Emil', 'Pedersen', 'English', 4, 0, 'Male', 'MusicFan76', '+45', '51294738', '$2y$12$placeholderhash', 'emil.p@example.com', 0, NULL, NULL, NULL, 0, 1, '2025-10-20 09:45:00', 1, 'IN', 'uploads/users/302.jpg', 'offline', '1987-03-17', '179', '78', 'Average', 'Black', 'Brown', 'Danish', 'Fyn', 'Odense', 'Heterosexual', 'Vocational', 'Engineering', 'Divorced', 'Pisces', '1', '1', '1', '0', 'Love live music and playing guitar.', 'Someone who enjoys concerts and good vibes.', 8, '1,4', NULL, '2025-09-10 03:00:00', '2025-12-12 07:00:00', '2025-12-22 08:20:00', 'user', 'user_deleted', 0, 0, 1),
(303, '01004', 'Sofie', 'Jensen', 'English', 2, 1, 'Female', 'NatureGirl85', '+45', '68729341', '$2y$12$placeholderhash', 'sofie.j@example.com', 0, NULL, NULL, NULL, 0, 1, '2025-10-22 04:10:00', 1, 'IN', 'uploads/users/303.jpg', 'offline', '1995-11-30', '165', '58', 'Toned', 'Brown', 'Hazel', 'Danish', 'Sjælland inkl. Øerne', 'Roskilde', 'Bisexual', 'Bachelor', 'Marketing', 'Single', 'Sagittarius', '0', '2', '0', '0', 'Hiking and photography are my passions.', 'Adventurous soul to explore with.', 2, '3,5', NULL, '2025-09-25 05:00:00', '2025-12-08 09:00:00', '2025-12-19 04:15:00', 'user', 'user_deleted', 0, 0, 1),
(304, '01005', 'Oliver', 'Andersen', 'Danish', 0, 3, 'Male', 'TechGuy91', '+45', '29384756', '$2y$12$placeholderhash', 'oliver.a@example.com', 0, NULL, NULL, NULL, 0, 1, '2025-10-25 07:00:00', 1, 'IN', 'uploads/users/304.jpg', 'offline', '1989-07-14', '185', '90', 'Muscular', 'Brown-grey', 'Blue', 'Danish', 'Jylland', 'Aalborg', 'Heterosexual', 'Master', 'Development', 'In a relationship', 'Cancer', '0', '1', '1', '1', 'Gamer and coder by night.', 'Someone who gets tech and gaming.', 10, '1,3,5', NULL, '2025-09-18 08:00:00', '2025-12-05 06:00:00', '2025-12-25 10:40:00', 'user', 'user_deleted', 0, 0, 1),
(305, '01006', 'Emma', 'Larsen', 'English', 5, 2, 'Female', 'ArtSoul89', '+45', '74618293', '$2y$12$placeholderhash', 'emma.l@example.com', 0, NULL, NULL, NULL, 0, 1, '2025-10-28 10:20:00', 1, 'IN', 'uploads/users/305.jpg', 'offline', '1991-02-09', '172', '65', 'Curvy', 'Red', 'Green', 'Swedish', 'Bornholm', 'Rønne', 'Heterosexual', 'PhD', 'Art', 'Single', 'Aquarius', '1', '2', '0', '0', 'Painter and dreamer at heart.', 'Creative and open-minded partner.', 7, '4,5', NULL, '2025-09-22 07:00:00', '2025-12-03 05:00:00', '2025-12-21 06:55:00', 'user', 'user_deleted', 0, 0, 1),
(306, '01007', 'Lucas', 'Hansen', 'English', 1, 0, 'Male', 'FitnessDK80', '+45', '38194726', '$2y$12$placeholderhash', 'lucas.h@example.com', 0, NULL, NULL, NULL, 0, 1, '2025-11-01 03:30:00', 1, 'IN', 'uploads/users/306.jpg', 'offline', '1985-12-05', '188', '92', 'Muscular', 'Blonde', 'Blue', 'Danish', 'Fyn', 'Svendborg', 'Heterosexual', 'Bachelor', 'Healthcare', 'Single', 'Sagittarius', '0', '0', '1', '0', 'Gym and healthy living.', 'Fit and motivated companion.', 4, '1,3', NULL, '2025-09-30 04:00:00', '2025-12-01 11:00:00', '2025-12-23 07:10:00', 'user', 'user_deleted', 0, 0, 1),
(307, '01008', 'Isabella', 'Møller', 'Danish', 2, 4, 'Female', 'TravelDreamer', '+45', '49582731', '$2y$12$placeholderhash', 'isabella.m@example.com', 0, NULL, NULL, NULL, 0, 1, '2025-11-05 06:45:00', 1, 'IN', 'uploads/users/307.jpg', 'offline', '1994-04-22', '170', '60', 'Slim', 'Black', 'Brown', 'Danish', 'Sjælland inkl. Øerne', 'Helsingør', 'Bisexual', 'Master', 'Banking', 'Single', 'Taurus', '0', '1', '0', '1', 'Love exploring new countries.', 'Travel buddy with wanderlust.', 9, '3,4,5', NULL, '2025-10-05 05:00:00', '2025-12-07 08:00:00', '2025-12-24 09:20:00', 'user', 'user_deleted', 0, 0, 1),
(308, '01009', 'William', 'Rasmussen', 'English', 3, 1, 'Male', 'CoffeeLover87', '+45', '67291834', '$2y$12$placeholderhash', 'william.r@example.com', 0, NULL, NULL, NULL, 0, 1, '2025-11-10 08:15:00', 1, 'IN', 'uploads/users/308.jpg', 'offline', '1988-09-18', '180', '82', 'Average', 'Brown', 'Hazel', 'Danish', 'Jylland', 'Viborg', 'Heterosexual', 'Bachelor', 'Analyser', 'Divorced', 'Virgo', '1', '2', '0', '0', 'Coffee shops and long talks.', 'Someone to share mornings with.', 6, '1,5', NULL, '2025-10-01 06:00:00', '2025-12-04 04:00:00', '2025-12-26 05:35:00', 'user', 'user_deleted', 0, 0, 1),
(309, '01010', 'Freja', 'Christensen', 'English', 0, 2, 'Female', 'YogaSoul94', '+45', '81937462', '$2y$12$placeholderhash', 'freja.c@example.com', 0, NULL, NULL, NULL, 0, 1, '2025-11-15 05:00:00', 1, 'IN', 'uploads/users/309.jpg', 'offline', '1996-06-27', '167', '57', 'Toned', 'Blonde', 'Blue', 'Danish', 'Sjælland inkl. Øerne', 'Køge', 'Heterosexual', 'Vocational', 'Healthcare', 'Single', 'Cancer', '0', '0', '1', '0', 'Yoga and mindfulness practitioner.', 'Calm and balanced partner.', 1, '3,5', NULL, '2025-10-10 07:00:00', '2025-12-02 10:00:00', '2025-12-27 08:50:00', 'user', 'user_deleted', 0, 0, 1),
(400, '02001', 'Victor', 'Møller', 'English', 0, 0, 'Male', 'AdventureSeeker23', '+45', '51283746', '$2y$12$placeholderhash', 'victor.m@example.com', 0, NULL, NULL, NULL, 1, 0, NULL, 0, 'OUT', 'uploads/users/newapp400.jpg', NULL, '1992-04-15', '183', '82', 'Athletic/Fit', 'Brown', 'Blue', 'Danish', 'Sjælland inkl. Øerne', 'København', 'Heterosexual', 'Bachelor', 'Engineering', 'Single', 'Aries', '0', '1', '1', '0', 'Love outdoor adventures and trying new things.', 'Someone active and fun to explore with.', 3, '1,3,5', NULL, '2025-12-20 08:30:00', '2025-12-28 04:15:00', NULL, NULL, NULL, 0, 0, 1),
(401, '02002', 'Alberte', 'Knudsen', 'Danish', 0, 0, 'Female', 'CoffeeLoverDK', '+45', '73829145', '$2y$12$placeholderhash', 'alberte.k@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-30 03:57:07', 0, 'OUT', 'uploads/users/newapp401.jpg', NULL, '1997-09-08', '169', '60', 'Slim', 'Blonde', 'Green', 'Danish', 'Jylland', 'Aarhus', 'Heterosexual', 'Master', 'Marketing', 'Single', 'Virgo', '0', '2', '0', '1', 'Coffee shops, books, and cozy evenings.', 'Kind and humorous partner for deep talks.', 5, '3,5', NULL, '2025-12-18 05:20:00', '2025-12-30 03:57:07', NULL, NULL, NULL, 0, 0, 1),
(402, '02003', 'Noah', 'Friis', 'English', 0, 0, 'Male', 'MusicLover87', '+45', '29485731', '$2y$12$placeholderhash', 'noah.f@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-22 07:00:00', 0, 'OUT', 'uploads/users/newapp402.jpg', NULL, '1989-11-22', '178', '75', 'Average', 'Black', 'Brown', 'Danish', 'Fyn', 'Odense', 'Bisexual', 'Vocational', 'Healthcare', 'Single', 'Sagittarius', '1', '1', '0', '0', 'Live music and festivals are my thing.', 'Someone to share playlists and concerts with.', 8, '1,4', NULL, '2025-12-15 10:10:00', '2025-12-29 03:30:00', NULL, NULL, NULL, 0, 0, 1),
(403, '02004', 'Clara', 'Thomsen', 'English', 0, 0, 'Female', 'YogaFan24', '+45', '81937462', '$2y$12$placeholderhash', 'clara.t@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-30 01:55:54', 1, 'IN', 'uploads/users/newapp403.jpg', NULL, '1995-06-18', '165', '55', 'Toned', 'Brown', 'Hazel', 'Swedish', 'Sjælland inkl. Øerne', 'Roskilde', 'Heterosexual', 'Bachelor', 'Education', 'Single', 'Gemini', '0', '0', '0', '0', 'Yoga, meditation, and healthy living.', 'Balanced and mindful companion.', 2, '3,5', NULL, '2025-12-23 06:45:00', '2025-12-30 01:55:55', NULL, NULL, NULL, 0, 0, 1),
(404, '02005', 'Philip', 'Berg', 'Danish', 0, 0, 'Male', 'TechGuy95', '+45', '46392018', '$2y$12$placeholderhash', 'philip.b@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-30 03:51:07', 1, 'IN', 'uploads/users/newapp404.jpg', NULL, '1993-02-27', '185', '88', 'Muscular', 'Brown-grey', 'Blue', 'Danish', 'Jylland', 'Aalborg', 'Heterosexual', 'Master', 'IT', 'Single', 'Pisces', '0', '1', '1', '1', 'Coding, gaming, and gadgets.', 'Someone who gets tech and shares interests.', 10, '1,3,5', NULL, '2025-12-19 04:55:00', '2025-12-30 03:51:07', NULL, NULL, NULL, 0, 0, 1),
(600, '04001', 'Kasper', 'Bang', 'English', 0, 0, 'Male', 'MorningCoffee79', '+45', '91827364', '$2y$12$placeholderhash', 'kasper.b@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-30 03:15:00', 0, 'OUT', 'uploads/users/600.jpg', NULL, '1993-02-18', '181', '83', 'Average', 'Brown', 'Blue', 'Danish', 'Sjælland inkl. Øerne', 'København', 'Heterosexual', 'Bachelor', 'Marketing', 'Single', 'Aquarius', '0', '2', '0', '0', 'Early riser, love good coffee and meaningful chats.', 'Someone positive to start the day with.', 5, '1,3,5', NULL, '2025-12-28 08:00:00', '2025-12-30 04:30:00', NULL, NULL, NULL, 0, 0, 1),
(601, '04002', 'Liva', 'Beck', 'Danish', 0, 0, 'Female', 'BeachDreamer88', '+45', '37492018', '$2y$12$placeholderhash', 'liva.b@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-30 05:45:00', 0, 'OUT', 'uploads/users/601.jpg', NULL, '1995-08-22', '168', '59', 'Slim', 'Blonde', 'Green', 'Danish', 'Fyn', 'Odense', 'Heterosexual', 'Master', 'Education', 'Single', 'Virgo', '0', '1', '0', '1', 'Dreaming of sunny beaches and summer vibes.', 'Adventurous partner for travels.', 7, '3,4,5', NULL, '2025-12-29 06:00:00', '2025-12-30 07:00:00', NULL, NULL, NULL, 0, 0, 1),
(602, '04003', 'Malthe', 'Dahl', 'English', 0, 0, 'Male', 'FitnessMorning', '+45', '50618293', '$2y$12$placeholderhash', 'malthe.d@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-29 10:30:00', 0, 'OUT', 'uploads/users/602.jpg', NULL, '1990-11-05', '186', '88', 'Muscular', 'Brown', 'Hazel', 'Danish', 'Jylland', 'Aarhus', 'Heterosexual', 'Bachelor', 'Healthcare', 'Single', 'Scorpio', '0', '0', '1', '0', 'Morning workouts and healthy lifestyle.', 'Fit and motivated companion.', 3, '1,3', NULL, '2025-12-27 04:00:00', '2025-12-30 03:00:00', NULL, NULL, NULL, 0, 0, 1),
(603, '04004', 'Agnes', 'Skov', 'English', 0, 0, 'Female', 'ArtLover2025', '+45', '82937461', '$2y$12$placeholderhash', 'agnes.s@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-30 02:00:00', 0, 'OUT', 'uploads/users/603.jpg', NULL, '1997-04-12', '165', '56', 'Toned', 'Red', 'Blue', 'Danish', 'Sjælland inkl. Øerne', 'Roskilde', 'Bisexual', 'Master', 'Art', 'Single', 'Aries', '1', '2', '0', '0', 'Painting, galleries, and creative expression.', 'Inspiring and artistic soul.', 9, '3,5', NULL, '2025-12-28 05:00:00', '2025-12-30 06:00:00', NULL, NULL, NULL, 0, 0, 1),
(604, '04005', 'Villads', 'Overgaard', 'Danish', 0, 0, 'Male', 'TechToday', '+45', '19283746', '$2y$12$placeholderhash', 'villads.o@example.com', 0, NULL, NULL, NULL, 1, 1, '2025-12-29 14:00:00', 0, 'OUT', 'uploads/users/604.jpg', NULL, '1988-07-30', '183', '82', 'Athletic/Fit', 'Black', 'Brown', 'Danish', 'Jylland', 'Aalborg', 'Heterosexual', 'PhD', 'Development', 'Single', 'Leo', '0', '1', '1', '1', 'Latest tech, startups, and innovation.', 'Ambitious partner with big ideas.', 12, '1,3,5', NULL, '2025-12-26 09:00:00', '2025-12-30 05:30:00', NULL, NULL, NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_images`
--

CREATE TABLE `user_images` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT 0 COMMENT '0= user image image,1=private image,2=galleryimage, 3=best image\r\n',
  `profile_image` varchar(255) NOT NULL,
  `profile_image_approval` int(11) DEFAULT NULL COMMENT '0: not approve yet,\r\n1: approved,\r\n2: rejected',
  `rating` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_images`
--

INSERT INTO `user_images` (`id`, `user_id`, `type`, `profile_image`, `profile_image_approval`, `rating`, `created_at`, `updated_at`) VALUES
(50, 74, 3, 'uploads/public_image/1765802191_694000cf55e17.jpg', 0, NULL, '2025-12-15 17:36:31', '2025-12-15 17:36:31'),
(51, 75, 3, 'uploads/public_image/1765803722_694006caa9b78.jpg', 0, NULL, '2025-12-15 18:02:02', '2025-12-15 18:02:02'),
(52, 76, 3, 'uploads/public_image/1765803757_694006ed33350.jpg', 0, NULL, '2025-12-15 18:02:37', '2025-12-15 18:02:37'),
(53, 77, 3, 'uploads/public_image/1765804966_69400ba603e74.jpg', 0, NULL, '2025-12-15 18:22:46', '2025-12-15 18:22:46'),
(54, 78, 3, 'uploads/public_image/1765872560_694113b0f0f62.jpg', 0, NULL, '2025-12-16 13:09:20', '2025-12-16 13:09:20'),
(55, 80, 3, 'uploads/public_image/1765879775_69412fdfcd875.jpg', 0, NULL, '2025-12-16 15:09:35', '2025-12-16 15:09:35'),
(56, 81, 3, 'uploads/public_image/1765881097_694135094a773.jpg', 0, NULL, '2025-12-16 15:31:37', '2025-12-16 15:31:37'),
(57, 82, 3, 'uploads/public_image/1765885234_6941453203b77.jpg', 0, NULL, '2025-12-16 16:40:34', '2025-12-16 16:40:34'),
(58, 83, 3, 'uploads/public_image/1765957019_69425d9b180c1.jpg', 0, NULL, '2025-12-17 12:36:59', '2025-12-17 12:36:59'),
(59, 84, 0, 'uploads/users/1766157623_69456d37895a5.jpg', 0, NULL, '2025-12-19 09:50:23', '2025-12-19 09:50:23'),
(60, 84, 2, 'uploads/public_image/17661590837133.jpg', 0, NULL, '2025-12-19 10:14:43', '2025-12-19 10:14:43'),
(62, 84, 2, 'uploads/public_image/17661590987999.jpg', 0, NULL, '2025-12-19 10:14:58', '2025-12-19 10:14:58'),
(64, 84, 2, 'uploads/public_image/17661611936077.jpg', 0, NULL, '2025-12-19 10:49:53', '2025-12-19 10:49:53'),
(65, 85, 3, 'uploads/public_image/1766403819_69492eeb15e54.jpg', 0, NULL, '2025-12-22 16:43:39', '2025-12-22 16:43:39'),
(66, 86, 3, 'uploads/public_image/1766407701_69493e1566c06.jpg', 0, NULL, '2025-12-22 17:48:21', '2025-12-22 17:48:21'),
(68, 87, 3, 'uploads/public_image/1766412671_6949517f991af.jpg', 0, NULL, '2025-12-22 19:11:11', '2025-12-22 19:11:11'),
(69, 87, 0, 'uploads/users/1766467802.jpg', 0, NULL, '2025-12-23 10:30:02', '2025-12-23 10:31:10'),
(70, 86, 1, 'uploads/private_image/17664773659587.jpg', 0, NULL, '2025-12-23 13:09:25', '2025-12-23 13:09:25'),
(71, 86, 1, 'uploads/private_image/17667520294297.jpg', 0, NULL, '2025-12-26 06:27:09', '2025-12-26 06:27:09'),
(72, 109, 0, 'uploads/users/1767085678_6953966ecd234.png', 0, NULL, '2025-12-30 03:07:58', '2025-12-30 03:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_intrest`
--

CREATE TABLE `user_intrest` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fav_music` varchar(255) DEFAULT NULL,
  `fav_tv_show` varchar(255) DEFAULT NULL,
  `fav_movie` varchar(255) DEFAULT NULL,
  `fav_book` varchar(255) DEFAULT NULL,
  `fav_sport` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_intrest`
--

INSERT INTO `user_intrest` (`id`, `user_id`, `fav_music`, `fav_tv_show`, `fav_movie`, `fav_book`, `fav_sport`, `other`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 1, 'Pop', 'The Expendables', 'Scarface', 'The Floor', 'Football', 'Travel', '2025-11-28 00:00:00', '2025-11-28 07:50:22', '2025-11-28 13:20:22'),
(2, 2, 'Pop', 'News', 'Lucy', 'Hymn', 'Soccer', NULL, '2025-11-28 00:00:00', '2025-11-28 07:54:12', '2025-11-28 13:24:12'),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-28 00:00:00', '2025-11-28 07:55:36', '2025-11-28 13:25:36'),
(4, 4, 'Disco', 'Østers', 'Æblemarker', 'The Floor 2', 'Tennis', 'Dinning', '2025-11-28 00:00:00', '2025-11-28 07:55:36', '2025-11-28 13:25:36'),
(5, 5, 'Jazz', 'Ellen', 'GI Joe', 'Hymn', 'Soccer', NULL, '2025-11-28 00:00:00', '2025-11-28 07:59:42', '2025-11-28 13:29:42'),
(6, 6, 'Pop', 'Tarak Mehta', 'Whole', 'Destini', 'Football', NULL, '2025-11-28 00:00:00', '2025-11-28 08:03:34', '2025-11-28 13:33:34'),
(7, 7, 'Pop', 'Tarak Mehta', 'Whole', 'Destini', 'Football', NULL, '2025-11-28 00:00:00', '2025-11-28 08:08:34', '2025-11-28 13:38:34'),
(8, 8, 'Pop', 'Tarak Mehta', 'Whole', 'Destini', 'Football', NULL, '2025-11-28 00:00:00', '2025-11-28 08:31:03', '2025-11-28 14:01:03'),
(9, 9, 'Pop', 'Tarak Mehta', 'Whole', 'Destini', 'Football', NULL, '2025-11-28 00:00:00', '2025-11-28 08:34:20', '2025-11-28 14:04:20'),
(10, 10, 'Reggae', 'Ski Factory', 'The Blessings', 'Commodores', 'Badminton', 'Dinning', '2025-11-28 00:00:00', '2025-11-28 11:44:26', '2025-11-28 17:14:26'),
(11, 11, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-01 00:00:00', '2025-12-01 07:02:37', '2025-12-01 12:32:37'),
(12, 12, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-02 00:00:00', '2025-12-02 04:47:31', '2025-12-02 10:17:31'),
(13, 13, 'Disco', 'Muppets', 'The Sancer', 'The Mindgame', 'Golf', 'Dancing', '2025-12-04 00:00:00', '2025-12-04 09:27:07', '2025-12-04 14:57:07'),
(14, 14, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-05 00:00:00', '2025-12-05 06:19:35', '2025-12-05 11:49:35'),
(15, 16, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-09 00:00:00', '2025-12-09 16:31:14', '2025-12-09 11:31:14'),
(16, 17, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-09 00:00:00', '2025-12-09 17:51:36', '2025-12-09 12:51:36'),
(17, 18, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-09 00:00:00', '2025-12-09 18:02:28', '2025-12-09 13:02:28'),
(18, 20, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-10 00:00:00', '2025-12-10 11:13:12', '2025-12-10 06:13:12'),
(19, 24, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-10 00:00:00', '2025-12-10 12:31:11', '2025-12-10 07:31:11'),
(20, 25, 'Disco', 'The Clerk', 'The Pemp', 'Green Door', 'Golf', 'Fishing', '2025-12-10 00:00:00', '2025-12-10 12:32:53', '2025-12-10 07:32:53'),
(21, 26, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-10 00:00:00', '2025-12-10 12:53:40', '2025-12-10 07:53:40'),
(22, 32, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-10 00:00:00', '2025-12-10 17:48:00', '2025-12-10 12:48:00'),
(23, 34, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-10 00:00:00', '2025-12-10 20:46:18', '2025-12-10 15:46:18'),
(24, 34, 'Jazz', 'The Jazz', 'Peanuts', 'The Door', 'Golf', 'Cooking', '2025-12-10 00:00:00', '2025-12-10 20:46:55', '2025-12-10 15:46:55'),
(25, 38, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-11 00:00:00', '2025-12-11 13:07:38', '2025-12-11 08:07:38'),
(26, 47, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-11 00:00:00', '2025-12-11 16:14:08', '2025-12-11 11:14:08'),
(27, 48, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-11 00:00:00', '2025-12-11 17:46:36', '2025-12-11 12:46:36'),
(28, 49, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-11 00:00:00', '2025-12-11 17:48:32', '2025-12-11 12:48:32'),
(29, 50, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-11 00:00:00', '2025-12-11 18:19:13', '2025-12-11 13:19:13'),
(30, 52, 'Modern', 'Queens', 'The Chosen', 'The Maid', 'Football', 'Travel', '2025-12-11 00:00:00', '2025-12-11 20:02:48', '2025-12-11 15:02:48'),
(31, 53, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 00:00:00', '2025-12-12 10:27:35', '2025-12-12 05:27:35'),
(32, 54, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 00:00:00', '2025-12-12 11:18:07', '2025-12-12 06:18:07'),
(33, 56, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 00:00:00', '2025-12-12 11:57:05', '2025-12-12 06:57:05'),
(34, 57, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 00:00:00', '2025-12-12 12:06:46', '2025-12-12 07:06:46'),
(35, 58, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 00:00:00', '2025-12-12 12:27:57', '2025-12-12 07:27:57'),
(36, 59, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 00:00:00', '2025-12-12 14:25:44', '2025-12-12 09:25:44'),
(37, 60, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 00:00:00', '2025-12-12 15:09:40', '2025-12-12 10:09:40'),
(38, 61, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 00:00:00', '2025-12-12 15:44:31', '2025-12-12 10:44:31'),
(39, 66, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 00:00:00', '2025-12-12 17:24:50', '2025-12-12 12:24:50'),
(40, 67, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-15 00:00:00', '2025-12-15 10:48:52', '2025-12-15 05:48:52'),
(41, 68, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-15 00:00:00', '2025-12-15 11:01:10', '2025-12-15 06:01:10'),
(42, 70, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-15 00:00:00', '2025-12-15 11:19:13', '2025-12-15 06:19:13'),
(43, 71, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-15 00:00:00', '2025-12-15 13:55:07', '2025-12-15 08:55:07'),
(44, 74, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-15 00:00:00', '2025-12-15 17:46:00', '2025-12-15 12:46:00'),
(45, 76, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-15 00:00:00', '2025-12-15 18:04:52', '2025-12-15 13:04:52'),
(46, 75, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-15 00:00:00', '2025-12-15 18:08:40', '2025-12-15 13:08:40'),
(47, 77, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-15 00:00:00', '2025-12-15 18:23:46', '2025-12-15 13:23:46'),
(48, 78, 'Jazz', 'The Scout', 'Born in America', 'The Pencil', 'Tennis', 'Travel', '2025-12-16 00:00:00', '2025-12-16 13:13:11', '2025-12-16 08:13:11'),
(49, 80, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-16 00:00:00', '2025-12-16 15:10:56', '2025-12-16 10:10:56'),
(50, 81, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-16 00:00:00', '2025-12-16 15:32:31', '2025-12-16 10:32:31'),
(51, 82, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-16 00:00:00', '2025-12-16 16:41:37', '2025-12-16 11:41:37'),
(52, 85, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-22 00:00:00', '2025-12-22 16:44:55', '2025-12-22 11:44:55'),
(53, 86, 'Disco', 'The Truth', 'Scarface', 'The Green Mile', 'Football', 'Travel', '2025-12-22 00:00:00', '2025-12-22 17:51:57', '2025-12-22 12:51:57'),
(54, 87, 'My test results', 'M and I', 'you guys', 'This is the only way', 'Message from test', 'you guys are you', '2025-12-22 00:00:00', '2025-12-22 19:14:11', '2025-12-22 14:14:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_like`
--

CREATE TABLE `user_like` (
  `id` int(11) NOT NULL,
  `like_by` int(11) DEFAULT NULL,
  `like_to` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_like`
--

INSERT INTO `user_like` (`id`, `like_by`, `like_to`, `created_at`, `deleted_at`, `updated_at`) VALUES
(6, 5, 1, '2025-12-01 08:19:55', '2025-12-01 13:49:55', '2025-12-01 08:19:55'),
(33, 5, 7, '2025-12-04 05:42:24', '2025-12-04 11:12:24', '2025-12-04 05:42:24'),
(41, 47, 9, '2025-12-11 17:23:16', '2025-12-11 12:23:16', '2025-12-11 17:23:16'),
(43, 7, 47, '2025-12-12 01:07:27', '2025-12-11 20:07:27', '2025-12-12 01:07:27'),
(47, 1, 10, '2025-12-12 22:22:34', '2025-12-12 17:22:34', '2025-12-12 22:22:34'),
(51, 86, 78, '2025-12-22 18:04:07', '2025-12-22 13:04:07', '2025-12-22 18:04:07'),
(53, 86, 87, '2025-12-23 10:25:46', '2025-12-23 05:25:46', '2025-12-23 10:25:46'),
(55, 87, 86, '2025-12-23 10:26:52', '2025-12-23 05:26:52', '2025-12-23 10:26:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_rating`
--

CREATE TABLE `user_rating` (
  `id` int(11) NOT NULL,
  `sender_id` varchar(255) DEFAULT NULL,
  `reciever_id` varchar(255) DEFAULT NULL,
  `reaction` varchar(255) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_rating`
--

INSERT INTO `user_rating` (`id`, `sender_id`, `reciever_id`, `reaction`, `points`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', '5', 'YES', 2, '2025-11-28 08:25:50', '2025-11-28 08:25:50', NULL),
(3, '1', '3', 'Maybe', -1, '2025-11-28 09:33:58', '2025-11-28 09:33:58', NULL),
(4, '7', '11', 'No', -2, '2025-12-01 07:22:33', '2025-12-01 07:22:33', NULL),
(6, '7', '5', 'OK', 1, '2025-12-04 07:16:57', '2025-12-04 07:16:57', NULL),
(7, '6', '16', 'YES', 2, '2025-12-09 17:39:30', '2025-12-09 17:39:30', NULL),
(8, '7', '17', 'YES', 2, '2025-12-09 17:53:38', '2025-12-09 17:53:38', NULL),
(9, '14', '17', 'YES', 2, '2025-12-09 17:54:32', '2025-12-09 17:54:32', NULL),
(10, '16', '17', 'YES', 2, '2025-12-09 17:55:22', '2025-12-09 17:55:22', NULL),
(11, '9', '17', 'YES', 2, '2025-12-09 17:56:30', '2025-12-09 17:56:30', NULL),
(12, '7', '18', 'Maybe', -1, '2025-12-09 18:04:19', '2025-12-09 18:04:19', NULL),
(13, '9', '18', 'OK', 1, '2025-12-09 18:05:11', '2025-12-09 18:05:11', NULL),
(14, '14', '18', 'OK', 1, '2025-12-09 18:06:08', '2025-12-09 18:06:08', NULL),
(15, '16', '18', 'No', -2, '2025-12-09 18:06:42', '2025-12-09 18:06:42', NULL),
(16, '7', '47', 'YES', 2, '2025-12-11 16:37:57', '2025-12-11 16:37:57', NULL),
(17, '9', '47', 'YES', 2, '2025-12-11 16:39:12', '2025-12-11 16:39:12', NULL),
(18, '14', '47', 'YES', 2, '2025-12-11 16:40:08', '2025-12-11 16:40:08', NULL),
(19, '16', '47', 'YES', 2, '2025-12-11 16:49:30', '2025-12-11 16:49:30', NULL),
(20, '7', '48', 'No', -2, '2025-12-11 17:52:01', '2025-12-11 17:52:01', NULL),
(21, '16', '48', 'No', -2, '2025-12-11 17:52:30', '2025-12-11 17:52:30', NULL),
(22, '14', '48', 'No', -2, '2025-12-11 17:53:45', '2025-12-11 17:53:45', NULL),
(23, '9', '48', 'No', -2, '2025-12-11 17:56:16', '2025-12-11 17:56:16', NULL),
(24, '1', '47', 'OK', 1, '2025-12-11 22:32:36', '2025-12-11 22:32:36', NULL),
(25, '7', '60', 'YES', 2, '2025-12-12 15:57:46', '2025-12-12 15:57:46', NULL),
(26, '1', '61', 'YES', 2, '2025-12-12 16:46:44', '2025-12-12 16:46:44', NULL),
(27, '7', '61', 'YES', 2, '2025-12-12 17:12:58', '2025-12-12 17:12:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_statuses`
--

CREATE TABLE `user_statuses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL COMMENT 'seen,unseen',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_statuses`
--

INSERT INTO `user_statuses` (`id`, `user_id`, `post`, `image`, `status`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 16, NULL, 'public/uploads/story_image/1765280081.png', 'unseen', '2025-12-09 16:34:41', '2025-12-09 11:34:41', '2025-12-09 16:34:41'),
(2, 16, NULL, 'public/uploads/story_image/1765280165.png', 'unseen', '2025-12-09 16:36:05', '2025-12-09 11:36:05', '2025-12-09 16:36:05'),
(3, 7, NULL, 'public/uploads/story_image/1765280985.png', 'unseen', '2025-12-09 16:49:45', '2025-12-09 11:49:45', '2025-12-09 16:49:45'),
(4, 1, NULL, 'public/uploads/story_image/1765297525.png', 'unseen', '2025-12-09 21:25:25', '2025-12-09 16:25:25', '2025-12-09 21:25:25'),
(5, 1, NULL, 'public/uploads/story_image/1765440106.png', 'unseen', '2025-12-11 13:01:46', '2025-12-11 08:01:46', '2025-12-11 13:01:46'),
(6, 87, NULL, 'public/uploads/story_image/1766412945.png', 'unseen', '2025-12-22 19:15:45', '2025-12-22 14:15:45', '2025-12-22 19:15:45'),
(7, 86, NULL, 'public/uploads/story_image/1766466634.png', 'unseen', '2025-12-23 10:10:34', '2025-12-23 05:10:34', '2025-12-23 10:10:34'),
(8, 86, NULL, 'public/uploads/story_image/1766752148.png', 'unseen', '2025-12-26 06:29:08', '2025-12-26 12:29:08', '2025-12-26 06:29:08'),
(9, 86, NULL, 'public/uploads/story_image/1766753534.png', 'unseen', '2025-12-26 06:52:14', '2025-12-26 12:52:14', '2025-12-26 06:52:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_suggestions`
--

CREATE TABLE `user_suggestions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `view_table`
--

CREATE TABLE `view_table` (
  `id` int(11) NOT NULL,
  `view_id` int(11) DEFAULT NULL COMMENT 'jiske dekhra hai ',
  `viewer_id` int(11) DEFAULT NULL COMMENT 'jo dekhra hai',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `view_table`
--

INSERT INTO `view_table` (`id`, `view_id`, `viewer_id`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 4, 1, '2025-11-28 08:08:31', '2025-11-28 13:38:31', '2025-11-28 08:08:31'),
(2, 2, 1, '2025-11-28 08:10:44', '2025-11-28 13:40:44', '2025-11-28 08:10:44'),
(3, 6, 1, '2025-11-28 08:14:28', '2025-11-28 13:44:28', '2025-11-28 08:14:28'),
(4, 1, 5, '2025-11-28 08:19:00', '2025-11-28 13:49:00', '2025-11-28 08:19:00'),
(5, 5, 1, '2025-11-28 08:25:40', '2025-11-28 13:55:40', '2025-11-28 08:25:40'),
(6, 5, 1, '2025-11-28 08:25:52', '2025-11-28 13:55:52', '2025-11-28 08:25:52'),
(7, 5, 7, '2025-11-28 08:32:58', '2025-11-28 14:02:58', '2025-11-28 08:32:58'),
(8, 5, 7, '2025-11-28 08:33:11', '2025-11-28 14:03:11', '2025-11-28 08:33:11'),
(9, 5, 7, '2025-11-28 08:33:29', '2025-11-28 14:03:29', '2025-11-28 08:33:29'),
(10, 5, 7, '2025-11-28 08:33:39', '2025-11-28 14:03:39', '2025-11-28 08:33:39'),
(11, 5, 7, '2025-11-28 08:34:17', '2025-11-28 14:04:17', '2025-11-28 08:34:17'),
(12, 5, 7, '2025-11-28 08:35:24', '2025-11-28 14:05:24', '2025-11-28 08:35:24'),
(13, 6, 7, '2025-11-28 08:35:50', '2025-11-28 14:05:50', '2025-11-28 08:35:50'),
(14, 2, 7, '2025-11-28 08:36:03', '2025-11-28 14:06:03', '2025-11-28 08:36:03'),
(15, 7, 5, '2025-11-28 08:38:02', '2025-11-28 14:08:02', '2025-11-28 08:38:02'),
(16, 5, 1, '2025-11-28 08:51:37', '2025-11-28 14:21:37', '2025-11-28 08:51:37'),
(17, 1, 5, '2025-11-28 08:51:48', '2025-11-28 14:21:48', '2025-11-28 08:51:48'),
(18, 1, 5, '2025-11-28 08:51:59', '2025-11-28 14:21:59', '2025-11-28 08:51:59'),
(19, 1, 5, '2025-11-28 08:52:12', '2025-11-28 14:22:12', '2025-11-28 08:52:12'),
(20, 1, 5, '2025-11-28 08:52:41', '2025-11-28 14:22:41', '2025-11-28 08:52:41'),
(21, 1, 5, '2025-11-28 08:52:57', '2025-11-28 14:22:57', '2025-11-28 08:52:57'),
(22, 6, 1, '2025-11-28 08:52:57', '2025-11-28 14:22:57', '2025-11-28 08:52:57'),
(23, 1, 2, '2025-11-28 08:53:10', '2025-11-28 14:23:10', '2025-11-28 08:53:10'),
(24, 1, 2, '2025-11-28 08:53:52', '2025-11-28 14:23:52', '2025-11-28 08:53:52'),
(25, 1, 5, '2025-11-28 08:56:08', '2025-11-28 14:26:08', '2025-11-28 08:56:08'),
(26, 1, 5, '2025-11-28 08:56:59', '2025-11-28 14:26:59', '2025-11-28 08:56:59'),
(27, 3, 1, '2025-11-28 09:33:54', '2025-11-28 15:03:54', '2025-11-28 09:33:54'),
(28, 3, 1, '2025-11-28 09:34:00', '2025-11-28 15:04:00', '2025-11-28 09:34:00'),
(29, 5, 1, '2025-11-28 09:34:17', '2025-11-28 15:04:17', '2025-11-28 09:34:17'),
(30, 2, 1, '2025-11-28 09:34:20', '2025-11-28 15:04:20', '2025-11-28 09:34:20'),
(31, 5, 1, '2025-11-28 11:37:48', '2025-11-28 17:07:48', '2025-11-28 11:37:48'),
(32, 1, 10, '2025-11-28 11:47:17', '2025-11-28 17:17:17', '2025-11-28 11:47:17'),
(33, 10, 1, '2025-11-28 11:48:24', '2025-11-28 17:18:24', '2025-11-28 11:48:24'),
(34, 1, 10, '2025-11-28 11:54:43', '2025-11-28 17:24:43', '2025-11-28 11:54:43'),
(35, 7, 10, '2025-11-28 11:55:52', '2025-11-28 17:25:52', '2025-11-28 11:55:52'),
(36, 7, 10, '2025-11-28 11:56:17', '2025-11-28 17:26:17', '2025-11-28 11:56:17'),
(37, 7, 10, '2025-11-28 11:57:33', '2025-11-28 17:27:33', '2025-11-28 11:57:33'),
(38, 7, 10, '2025-11-28 11:57:38', '2025-11-28 17:27:38', '2025-11-28 11:57:38'),
(39, 1, 10, '2025-11-28 13:12:26', '2025-11-28 18:42:26', '2025-11-28 13:12:26'),
(40, 1, 10, '2025-11-28 13:20:51', '2025-11-28 18:50:51', '2025-11-28 13:20:51'),
(41, 10, 1, '2025-11-29 00:44:02', '2025-11-29 06:14:02', '2025-11-29 00:44:02'),
(42, 2, 1, '2025-11-29 00:49:05', '2025-11-29 06:19:05', '2025-11-29 00:49:05'),
(43, 5, 1, '2025-11-29 00:49:10', '2025-11-29 06:19:10', '2025-11-29 00:49:10'),
(44, 5, 1, '2025-11-29 00:53:59', '2025-11-29 06:23:59', '2025-11-29 00:53:59'),
(45, 5, 1, '2025-11-29 00:54:09', '2025-11-29 06:24:09', '2025-11-29 00:54:09'),
(46, 10, 1, '2025-11-29 00:54:59', '2025-11-29 06:24:59', '2025-11-29 00:54:59'),
(47, 5, 1, '2025-11-29 01:12:07', '2025-11-29 06:42:07', '2025-11-29 01:12:07'),
(48, 5, 1, '2025-11-29 02:06:29', '2025-11-29 07:36:29', '2025-11-29 02:06:29'),
(49, 5, 1, '2025-11-29 02:43:31', '2025-11-29 08:13:31', '2025-11-29 02:43:31'),
(50, 5, 1, '2025-11-29 02:53:27', '2025-11-29 08:23:27', '2025-11-29 02:53:27'),
(51, 10, 1, '2025-11-29 03:19:54', '2025-11-29 08:49:54', '2025-11-29 03:19:54'),
(52, 6, 1, '2025-11-29 05:07:19', '2025-11-29 10:37:19', '2025-11-29 05:07:19'),
(53, 5, 1, '2025-11-29 05:17:03', '2025-11-29 10:47:03', '2025-11-29 05:17:03'),
(54, 5, 1, '2025-11-30 03:44:13', '2025-11-30 09:14:13', '2025-11-30 03:44:13'),
(55, 5, 1, '2025-11-30 04:46:44', '2025-11-30 10:16:44', '2025-11-30 04:46:44'),
(56, 10, 1, '2025-11-30 04:46:47', '2025-11-30 10:16:47', '2025-11-30 04:46:47'),
(57, 7, 5, '2025-11-30 23:50:11', '2025-12-01 05:20:11', '2025-11-30 23:50:11'),
(58, 1, 5, '2025-12-01 00:45:53', '2025-12-01 06:15:53', '2025-12-01 00:45:53'),
(59, 1, 5, '2025-12-01 01:02:17', '2025-12-01 06:32:17', '2025-12-01 01:02:17'),
(60, 10, 7, '2025-12-01 01:19:22', '2025-12-01 06:49:22', '2025-12-01 01:19:22'),
(61, 5, 7, '2025-12-01 01:26:59', '2025-12-01 06:56:59', '2025-12-01 01:26:59'),
(62, 7, 5, '2025-12-01 01:31:38', '2025-12-01 07:01:38', '2025-12-01 01:31:38'),
(63, 10, 7, '2025-12-01 01:34:03', '2025-12-01 07:04:03', '2025-12-01 01:34:03'),
(64, 7, 5, '2025-12-01 01:37:39', '2025-12-01 07:07:39', '2025-12-01 01:37:39'),
(65, 1, 5, '2025-12-01 01:50:56', '2025-12-01 07:20:56', '2025-12-01 01:50:56'),
(66, 7, 5, '2025-12-01 01:54:24', '2025-12-01 07:24:24', '2025-12-01 01:54:24'),
(67, 7, 5, '2025-12-01 01:58:13', '2025-12-01 07:28:13', '2025-12-01 01:58:13'),
(68, 7, 5, '2025-12-01 02:03:21', '2025-12-01 07:33:21', '2025-12-01 02:03:21'),
(69, 7, 5, '2025-12-01 02:09:14', '2025-12-01 07:39:14', '2025-12-01 02:09:14'),
(70, 7, 5, '2025-12-01 02:20:54', '2025-12-01 07:50:54', '2025-12-01 02:20:54'),
(71, 7, 5, '2025-12-01 03:21:08', '2025-12-01 08:51:08', '2025-12-01 03:21:08'),
(72, 7, 5, '2025-12-01 03:22:41', '2025-12-01 08:52:41', '2025-12-01 03:22:41'),
(73, 7, 5, '2025-12-01 03:53:42', '2025-12-01 09:23:42', '2025-12-01 03:53:42'),
(74, 7, 5, '2025-12-01 03:58:39', '2025-12-01 09:28:39', '2025-12-01 03:58:39'),
(75, 7, 5, '2025-12-01 04:03:17', '2025-12-01 09:33:17', '2025-12-01 04:03:17'),
(76, 7, 5, '2025-12-01 04:05:13', '2025-12-01 09:35:13', '2025-12-01 04:05:13'),
(77, 7, 5, '2025-12-01 04:19:22', '2025-12-01 09:49:22', '2025-12-01 04:19:22'),
(78, 7, 5, '2025-12-01 04:50:02', '2025-12-01 10:20:02', '2025-12-01 04:50:02'),
(79, 5, 7, '2025-12-01 05:01:18', '2025-12-01 10:31:18', '2025-12-01 05:01:18'),
(80, 10, 7, '2025-12-01 05:01:25', '2025-12-01 10:31:25', '2025-12-01 05:01:25'),
(81, 10, 7, '2025-12-01 05:19:04', '2025-12-01 10:49:04', '2025-12-01 05:19:04'),
(82, 5, 7, '2025-12-01 05:20:06', '2025-12-01 10:50:06', '2025-12-01 05:20:06'),
(83, 5, 7, '2025-12-01 05:23:14', '2025-12-01 10:53:14', '2025-12-01 05:23:14'),
(84, 1, 5, '2025-12-01 05:24:41', '2025-12-01 10:54:41', '2025-12-01 05:24:41'),
(85, 7, 5, '2025-12-01 05:26:50', '2025-12-01 10:56:50', '2025-12-01 05:26:50'),
(86, 5, 7, '2025-12-01 05:30:18', '2025-12-01 11:00:18', '2025-12-01 05:30:18'),
(87, 1, 5, '2025-12-01 05:38:02', '2025-12-01 11:08:02', '2025-12-01 05:38:02'),
(88, 5, 1, '2025-12-01 06:08:38', '2025-12-01 11:38:38', '2025-12-01 06:08:38'),
(89, 5, 7, '2025-12-01 06:27:17', '2025-12-01 11:57:17', '2025-12-01 06:27:17'),
(90, 1, 5, '2025-12-01 06:29:12', '2025-12-01 11:59:12', '2025-12-01 06:29:12'),
(91, 5, 7, '2025-12-01 06:42:57', '2025-12-01 12:12:57', '2025-12-01 06:42:57'),
(92, 7, 11, '2025-12-01 07:06:41', '2025-12-01 12:36:41', '2025-12-01 07:06:41'),
(93, 1, 11, '2025-12-01 07:08:04', '2025-12-01 12:38:04', '2025-12-01 07:08:04'),
(94, 10, 7, '2025-12-01 07:08:15', '2025-12-01 12:38:15', '2025-12-01 07:08:15'),
(95, 11, 7, '2025-12-01 07:08:19', '2025-12-01 12:38:19', '2025-12-01 07:08:19'),
(96, 11, 7, '2025-12-01 07:13:45', '2025-12-01 12:43:45', '2025-12-01 07:13:45'),
(97, 11, 7, '2025-12-01 07:14:55', '2025-12-01 12:44:55', '2025-12-01 07:14:55'),
(98, 5, 7, '2025-12-01 07:15:01', '2025-12-01 12:45:01', '2025-12-01 07:15:01'),
(99, 5, 7, '2025-12-01 07:17:59', '2025-12-01 12:47:59', '2025-12-01 07:17:59'),
(100, 7, 11, '2025-12-01 07:20:02', '2025-12-01 12:50:02', '2025-12-01 07:20:02'),
(101, 1, 11, '2025-12-01 07:20:19', '2025-12-01 12:50:19', '2025-12-01 07:20:19'),
(102, 7, 11, '2025-12-01 07:20:39', '2025-12-01 12:50:39', '2025-12-01 07:20:39'),
(103, 1, 11, '2025-12-01 07:20:44', '2025-12-01 12:50:44', '2025-12-01 07:20:44'),
(104, 5, 7, '2025-12-01 07:20:58', '2025-12-01 12:50:58', '2025-12-01 07:20:58'),
(105, 11, 7, '2025-12-01 07:22:27', '2025-12-01 12:52:27', '2025-12-01 07:22:27'),
(106, 11, 7, '2025-12-01 07:22:35', '2025-12-01 12:52:35', '2025-12-01 07:22:35'),
(107, 7, 11, '2025-12-01 07:23:40', '2025-12-01 12:53:40', '2025-12-01 07:23:40'),
(108, 7, 11, '2025-12-01 07:25:07', '2025-12-01 12:55:07', '2025-12-01 07:25:07'),
(109, 7, 5, '2025-12-01 07:26:25', '2025-12-01 12:56:25', '2025-12-01 07:26:25'),
(110, 5, 7, '2025-12-01 07:38:58', '2025-12-01 13:08:58', '2025-12-01 07:38:58'),
(111, 5, 7, '2025-12-01 07:39:03', '2025-12-01 13:09:03', '2025-12-01 07:39:03'),
(112, 5, 7, '2025-12-01 07:54:56', '2025-12-01 13:24:56', '2025-12-01 07:54:56'),
(113, 5, 7, '2025-12-01 08:07:04', '2025-12-01 13:37:04', '2025-12-01 08:07:04'),
(114, 7, 5, '2025-12-01 08:07:15', '2025-12-01 13:37:15', '2025-12-01 08:07:15'),
(115, 7, 5, '2025-12-01 08:19:46', '2025-12-01 13:49:46', '2025-12-01 08:19:46'),
(116, 1, 5, '2025-12-01 08:19:53', '2025-12-01 13:49:53', '2025-12-01 08:19:53'),
(117, 2, 1, '2025-12-01 10:20:20', '2025-12-01 15:50:20', '2025-12-01 10:20:20'),
(118, 6, 1, '2025-12-01 10:20:29', '2025-12-01 15:50:29', '2025-12-01 10:20:29'),
(119, 10, 1, '2025-12-01 10:20:38', '2025-12-01 15:50:38', '2025-12-01 10:20:38'),
(120, 10, 1, '2025-12-01 10:20:42', '2025-12-01 15:50:42', '2025-12-01 10:20:42'),
(121, 5, 1, '2025-12-01 15:16:22', '2025-12-01 20:46:22', '2025-12-01 15:16:22'),
(122, 11, 1, '2025-12-01 15:16:42', '2025-12-01 20:46:42', '2025-12-01 15:16:42'),
(123, 11, 1, '2025-12-01 15:16:50', '2025-12-01 20:46:50', '2025-12-01 15:16:50'),
(124, 11, 1, '2025-12-01 15:16:59', '2025-12-01 20:46:59', '2025-12-01 15:16:59'),
(125, 11, 1, '2025-12-01 15:17:13', '2025-12-01 20:47:13', '2025-12-01 15:17:13'),
(126, 11, 1, '2025-12-01 15:17:23', '2025-12-01 20:47:23', '2025-12-01 15:17:23'),
(127, 11, 1, '2025-12-01 15:18:07', '2025-12-01 20:48:07', '2025-12-01 15:18:07'),
(128, 5, 1, '2025-12-02 02:44:59', '2025-12-02 08:14:59', '2025-12-02 02:44:59'),
(129, 11, 1, '2025-12-02 03:29:14', '2025-12-02 08:59:14', '2025-12-02 03:29:14'),
(130, 12, 5, '2025-12-02 04:51:42', '2025-12-02 10:21:42', '2025-12-02 04:51:42'),
(131, 12, 5, '2025-12-02 04:53:26', '2025-12-02 10:23:26', '2025-12-02 04:53:26'),
(132, 11, 1, '2025-12-02 05:47:32', '2025-12-02 11:17:32', '2025-12-02 05:47:32'),
(133, 5, 1, '2025-12-02 05:47:41', '2025-12-02 11:17:41', '2025-12-02 05:47:41'),
(134, 11, 1, '2025-12-02 07:36:22', '2025-12-02 13:06:22', '2025-12-02 07:36:22'),
(135, 5, 1, '2025-12-02 13:01:04', '2025-12-02 18:31:04', '2025-12-02 13:01:04'),
(136, 3, 1, '2025-12-02 13:38:26', '2025-12-02 19:08:26', '2025-12-02 13:38:26'),
(137, 11, 1, '2025-12-02 13:38:38', '2025-12-02 19:08:38', '2025-12-02 13:38:38'),
(138, 5, 1, '2025-12-02 15:21:30', '2025-12-02 20:51:30', '2025-12-02 15:21:30'),
(139, 11, 1, '2025-12-03 03:15:00', '2025-12-03 08:45:00', '2025-12-03 03:15:00'),
(140, 1, 5, '2025-12-03 03:35:22', '2025-12-03 09:05:22', '2025-12-03 03:35:22'),
(141, 5, 7, '2025-12-03 06:43:21', '2025-12-03 12:13:21', '2025-12-03 06:43:21'),
(142, 5, 7, '2025-12-03 06:49:04', '2025-12-03 12:19:04', '2025-12-03 06:49:04'),
(143, 5, 1, '2025-12-03 06:52:08', '2025-12-03 12:22:08', '2025-12-03 06:52:08'),
(144, 5, 7, '2025-12-03 07:19:23', '2025-12-03 12:49:23', '2025-12-03 07:19:23'),
(145, 5, 7, '2025-12-03 07:20:13', '2025-12-03 12:50:13', '2025-12-03 07:20:13'),
(146, 5, 7, '2025-12-03 07:21:28', '2025-12-03 12:51:28', '2025-12-03 07:21:28'),
(147, 5, 7, '2025-12-03 07:21:45', '2025-12-03 12:51:45', '2025-12-03 07:21:45'),
(148, 10, 7, '2025-12-03 07:22:41', '2025-12-03 12:52:41', '2025-12-03 07:22:41'),
(149, 10, 7, '2025-12-03 07:23:15', '2025-12-03 12:53:15', '2025-12-03 07:23:15'),
(150, 5, 7, '2025-12-03 07:24:28', '2025-12-03 12:54:28', '2025-12-03 07:24:28'),
(151, 5, 7, '2025-12-03 07:29:32', '2025-12-03 12:59:32', '2025-12-03 07:29:32'),
(152, 7, 5, '2025-12-03 07:37:23', '2025-12-03 13:07:23', '2025-12-03 07:37:23'),
(153, 12, 5, '2025-12-03 07:39:40', '2025-12-03 13:09:40', '2025-12-03 07:39:40'),
(154, 12, 5, '2025-12-03 07:48:46', '2025-12-03 13:18:46', '2025-12-03 07:48:46'),
(155, 7, 5, '2025-12-03 07:58:51', '2025-12-03 13:28:51', '2025-12-03 07:58:51'),
(156, 5, 7, '2025-12-03 08:29:11', '2025-12-03 13:59:11', '2025-12-03 08:29:11'),
(157, 11, 7, '2025-12-03 08:29:59', '2025-12-03 13:59:59', '2025-12-03 08:29:59'),
(158, 10, 7, '2025-12-03 08:30:15', '2025-12-03 14:00:15', '2025-12-03 08:30:15'),
(159, 5, 7, '2025-12-03 23:48:50', '2025-12-04 05:18:50', '2025-12-03 23:48:50'),
(160, 5, 7, '2025-12-03 23:51:51', '2025-12-04 05:21:51', '2025-12-03 23:51:51'),
(161, 5, 7, '2025-12-04 00:37:11', '2025-12-04 06:07:11', '2025-12-04 00:37:11'),
(162, 5, 7, '2025-12-04 00:37:21', '2025-12-04 06:07:21', '2025-12-04 00:37:21'),
(163, 7, 5, '2025-12-04 01:04:47', '2025-12-04 06:34:47', '2025-12-04 01:04:47'),
(164, 5, 7, '2025-12-04 01:18:21', '2025-12-04 06:48:21', '2025-12-04 01:18:21'),
(165, 5, 7, '2025-12-04 01:19:26', '2025-12-04 06:49:26', '2025-12-04 01:19:26'),
(166, 11, 7, '2025-12-04 01:19:35', '2025-12-04 06:49:35', '2025-12-04 01:19:35'),
(167, 7, 5, '2025-12-04 01:23:01', '2025-12-04 06:53:01', '2025-12-04 01:23:01'),
(168, 5, 7, '2025-12-04 01:23:27', '2025-12-04 06:53:27', '2025-12-04 01:23:27'),
(169, 11, 7, '2025-12-04 01:23:35', '2025-12-04 06:53:35', '2025-12-04 01:23:35'),
(170, 10, 7, '2025-12-04 01:23:39', '2025-12-04 06:53:39', '2025-12-04 01:23:39'),
(171, 7, 5, '2025-12-04 01:26:05', '2025-12-04 06:56:05', '2025-12-04 01:26:05'),
(172, 7, 5, '2025-12-04 01:26:30', '2025-12-04 06:56:30', '2025-12-04 01:26:30'),
(173, 7, 5, '2025-12-04 01:27:28', '2025-12-04 06:57:28', '2025-12-04 01:27:28'),
(174, 7, 5, '2025-12-04 01:27:34', '2025-12-04 06:57:34', '2025-12-04 01:27:34'),
(175, 5, 7, '2025-12-04 01:55:06', '2025-12-04 07:25:06', '2025-12-04 01:55:06'),
(176, 7, 5, '2025-12-04 01:55:31', '2025-12-04 07:25:31', '2025-12-04 01:55:31'),
(177, 2, 1, '2025-12-04 02:07:52', '2025-12-04 07:37:52', '2025-12-04 02:07:52'),
(178, 7, 5, '2025-12-04 05:34:34', '2025-12-04 11:04:34', '2025-12-04 05:34:34'),
(179, 7, 5, '2025-12-04 05:34:54', '2025-12-04 11:04:54', '2025-12-04 05:34:54'),
(180, 7, 5, '2025-12-04 05:36:16', '2025-12-04 11:06:16', '2025-12-04 05:36:16'),
(181, 7, 5, '2025-12-04 05:36:19', '2025-12-04 11:06:19', '2025-12-04 05:36:19'),
(182, 7, 5, '2025-12-04 05:39:31', '2025-12-04 11:09:31', '2025-12-04 05:39:31'),
(183, 7, 5, '2025-12-04 05:39:51', '2025-12-04 11:09:51', '2025-12-04 05:39:51'),
(184, 5, 7, '2025-12-04 05:42:56', '2025-12-04 11:12:56', '2025-12-04 05:42:56'),
(185, 7, 5, '2025-12-04 05:54:32', '2025-12-04 11:24:32', '2025-12-04 05:54:32'),
(186, 5, 7, '2025-12-04 05:55:04', '2025-12-04 11:25:04', '2025-12-04 05:55:04'),
(187, 5, 7, '2025-12-04 05:56:13', '2025-12-04 11:26:13', '2025-12-04 05:56:13'),
(188, 5, 7, '2025-12-04 05:57:23', '2025-12-04 11:27:23', '2025-12-04 05:57:23'),
(189, 5, 7, '2025-12-04 06:00:16', '2025-12-04 11:30:16', '2025-12-04 06:00:16'),
(190, 5, 7, '2025-12-04 06:05:16', '2025-12-04 11:35:16', '2025-12-04 06:05:16'),
(191, 5, 7, '2025-12-04 06:05:19', '2025-12-04 11:35:19', '2025-12-04 06:05:19'),
(192, 5, 7, '2025-12-04 06:09:21', '2025-12-04 11:39:21', '2025-12-04 06:09:21'),
(193, 5, 7, '2025-12-04 06:10:22', '2025-12-04 11:40:22', '2025-12-04 06:10:22'),
(194, 5, 7, '2025-12-04 06:12:52', '2025-12-04 11:42:52', '2025-12-04 06:12:52'),
(195, 5, 7, '2025-12-04 06:15:23', '2025-12-04 11:45:23', '2025-12-04 06:15:23'),
(196, 5, 7, '2025-12-04 06:16:14', '2025-12-04 11:46:14', '2025-12-04 06:16:14'),
(197, 5, 7, '2025-12-04 06:16:29', '2025-12-04 11:46:29', '2025-12-04 06:16:29'),
(198, 5, 7, '2025-12-04 06:16:48', '2025-12-04 11:46:48', '2025-12-04 06:16:48'),
(199, 5, 7, '2025-12-04 06:16:50', '2025-12-04 11:46:50', '2025-12-04 06:16:50'),
(200, 5, 7, '2025-12-04 06:20:39', '2025-12-04 11:50:39', '2025-12-04 06:20:39'),
(201, 5, 7, '2025-12-04 06:21:19', '2025-12-04 11:51:19', '2025-12-04 06:21:19'),
(202, 5, 7, '2025-12-04 06:21:22', '2025-12-04 11:51:22', '2025-12-04 06:21:22'),
(203, 5, 7, '2025-12-04 06:25:05', '2025-12-04 11:55:05', '2025-12-04 06:25:05'),
(204, 5, 7, '2025-12-04 06:31:44', '2025-12-04 12:01:44', '2025-12-04 06:31:44'),
(205, 5, 7, '2025-12-04 06:32:20', '2025-12-04 12:02:20', '2025-12-04 06:32:20'),
(206, 5, 7, '2025-12-04 06:33:10', '2025-12-04 12:03:10', '2025-12-04 06:33:10'),
(207, 5, 7, '2025-12-04 06:37:46', '2025-12-04 12:07:46', '2025-12-04 06:37:46'),
(208, 10, 7, '2025-12-04 06:37:49', '2025-12-04 12:07:49', '2025-12-04 06:37:49'),
(209, 10, 7, '2025-12-04 06:44:01', '2025-12-04 12:14:01', '2025-12-04 06:44:01'),
(210, 10, 7, '2025-12-04 06:44:07', '2025-12-04 12:14:07', '2025-12-04 06:44:07'),
(211, 10, 7, '2025-12-04 06:44:10', '2025-12-04 12:14:10', '2025-12-04 06:44:10'),
(212, 10, 7, '2025-12-04 06:45:09', '2025-12-04 12:15:09', '2025-12-04 06:45:09'),
(213, 10, 7, '2025-12-04 06:46:07', '2025-12-04 12:16:07', '2025-12-04 06:46:07'),
(214, 10, 7, '2025-12-04 06:52:51', '2025-12-04 12:22:51', '2025-12-04 06:52:51'),
(215, 10, 7, '2025-12-04 06:53:05', '2025-12-04 12:23:05', '2025-12-04 06:53:05'),
(216, 10, 7, '2025-12-04 06:53:12', '2025-12-04 12:23:12', '2025-12-04 06:53:12'),
(217, 10, 7, '2025-12-04 06:55:32', '2025-12-04 12:25:32', '2025-12-04 06:55:32'),
(218, 10, 7, '2025-12-04 06:55:58', '2025-12-04 12:25:58', '2025-12-04 06:55:58'),
(219, 10, 7, '2025-12-04 06:56:03', '2025-12-04 12:26:03', '2025-12-04 06:56:03'),
(220, 5, 7, '2025-12-04 06:56:08', '2025-12-04 12:26:08', '2025-12-04 06:56:08'),
(221, 5, 7, '2025-12-04 06:56:11', '2025-12-04 12:26:11', '2025-12-04 06:56:11'),
(222, 5, 7, '2025-12-04 07:00:14', '2025-12-04 12:30:14', '2025-12-04 07:00:14'),
(223, 10, 7, '2025-12-04 07:00:19', '2025-12-04 12:30:19', '2025-12-04 07:00:19'),
(224, 10, 7, '2025-12-04 07:01:42', '2025-12-04 12:31:42', '2025-12-04 07:01:42'),
(225, 10, 7, '2025-12-04 07:01:49', '2025-12-04 12:31:49', '2025-12-04 07:01:49'),
(226, 5, 7, '2025-12-04 07:03:44', '2025-12-04 12:33:44', '2025-12-04 07:03:44'),
(227, 5, 7, '2025-12-04 07:03:51', '2025-12-04 12:33:51', '2025-12-04 07:03:51'),
(228, 10, 7, '2025-12-04 07:16:07', '2025-12-04 12:46:07', '2025-12-04 07:16:07'),
(229, 5, 7, '2025-12-04 07:16:20', '2025-12-04 12:46:20', '2025-12-04 07:16:20'),
(230, 3, 7, '2025-12-04 07:16:24', '2025-12-04 12:46:24', '2025-12-04 07:16:24'),
(231, 4, 7, '2025-12-04 07:16:29', '2025-12-04 12:46:29', '2025-12-04 07:16:29'),
(232, 5, 7, '2025-12-04 07:16:49', '2025-12-04 12:46:49', '2025-12-04 07:16:49'),
(233, 5, 7, '2025-12-04 07:16:53', '2025-12-04 12:46:53', '2025-12-04 07:16:53'),
(234, 5, 7, '2025-12-04 07:16:58', '2025-12-04 12:46:58', '2025-12-04 07:16:58'),
(235, 5, 7, '2025-12-04 07:17:07', '2025-12-04 12:47:07', '2025-12-04 07:17:07'),
(236, 5, 7, '2025-12-04 07:17:52', '2025-12-04 12:47:52', '2025-12-04 07:17:52'),
(237, 5, 7, '2025-12-04 07:18:55', '2025-12-04 12:48:55', '2025-12-04 07:18:55'),
(238, 6, 7, '2025-12-04 07:19:00', '2025-12-04 12:49:00', '2025-12-04 07:19:00'),
(239, 6, 7, '2025-12-04 07:19:29', '2025-12-04 12:49:29', '2025-12-04 07:19:29'),
(240, 6, 7, '2025-12-04 07:19:34', '2025-12-04 12:49:34', '2025-12-04 07:19:34'),
(241, 10, 7, '2025-12-04 07:19:41', '2025-12-04 12:49:41', '2025-12-04 07:19:41'),
(242, 10, 7, '2025-12-04 07:19:47', '2025-12-04 12:49:47', '2025-12-04 07:19:47'),
(243, 6, 7, '2025-12-04 07:19:50', '2025-12-04 12:49:50', '2025-12-04 07:19:50'),
(244, 6, 7, '2025-12-04 07:19:51', '2025-12-04 12:49:51', '2025-12-04 07:19:51'),
(245, 10, 7, '2025-12-04 07:19:54', '2025-12-04 12:49:54', '2025-12-04 07:19:54'),
(246, 6, 7, '2025-12-04 07:19:57', '2025-12-04 12:49:57', '2025-12-04 07:19:57'),
(247, 5, 7, '2025-12-04 07:20:01', '2025-12-04 12:50:01', '2025-12-04 07:20:01'),
(248, 5, 7, '2025-12-04 07:22:50', '2025-12-04 12:52:50', '2025-12-04 07:22:50'),
(249, 5, 7, '2025-12-04 07:23:11', '2025-12-04 12:53:11', '2025-12-04 07:23:11'),
(250, 5, 7, '2025-12-04 07:33:24', '2025-12-04 13:03:24', '2025-12-04 07:33:24'),
(251, 5, 7, '2025-12-04 07:35:55', '2025-12-04 13:05:55', '2025-12-04 07:35:55'),
(252, 5, 7, '2025-12-04 07:38:13', '2025-12-04 13:08:13', '2025-12-04 07:38:13'),
(253, 5, 7, '2025-12-04 07:50:03', '2025-12-04 13:20:03', '2025-12-04 07:50:03'),
(254, 5, 7, '2025-12-04 07:50:32', '2025-12-04 13:20:32', '2025-12-04 07:50:32'),
(255, 5, 7, '2025-12-04 07:50:55', '2025-12-04 13:20:55', '2025-12-04 07:50:55'),
(256, 5, 7, '2025-12-04 07:56:15', '2025-12-04 13:26:15', '2025-12-04 07:56:15'),
(257, 6, 7, '2025-12-04 08:35:39', '2025-12-04 14:05:39', '2025-12-04 08:35:39'),
(258, 6, 7, '2025-12-04 08:35:47', '2025-12-04 14:05:47', '2025-12-04 08:35:47'),
(259, 6, 7, '2025-12-04 08:35:50', '2025-12-04 14:05:50', '2025-12-04 08:35:50'),
(260, 10, 7, '2025-12-04 23:53:05', '2025-12-05 05:23:05', '2025-12-04 23:53:05'),
(261, 6, 7, '2025-12-05 06:11:53', '2025-12-05 11:41:53', '2025-12-05 06:11:53'),
(262, 6, 7, '2025-12-05 06:15:39', '2025-12-05 11:45:39', '2025-12-05 06:15:39'),
(263, 10, 7, '2025-12-05 06:15:58', '2025-12-05 11:45:58', '2025-12-05 06:15:58'),
(264, 11, 7, '2025-12-05 06:16:08', '2025-12-05 11:46:08', '2025-12-05 06:16:08'),
(265, 6, 7, '2025-12-05 06:16:29', '2025-12-05 11:46:29', '2025-12-05 06:16:29'),
(266, 6, 14, '2025-12-05 06:20:24', '2025-12-05 11:50:24', '2025-12-05 06:20:24'),
(267, 6, 14, '2025-12-05 06:20:33', '2025-12-05 11:50:33', '2025-12-05 06:20:33'),
(268, 6, 7, '2025-12-05 06:21:29', '2025-12-05 11:51:29', '2025-12-05 06:21:29'),
(269, 6, 7, '2025-12-05 06:21:34', '2025-12-05 11:51:34', '2025-12-05 06:21:34'),
(270, 6, 14, '2025-12-05 06:24:56', '2025-12-05 11:54:56', '2025-12-05 06:24:56'),
(271, 5, 14, '2025-12-05 06:25:05', '2025-12-05 11:55:05', '2025-12-05 06:25:05'),
(272, 1, 6, '2025-12-05 06:26:06', '2025-12-05 11:56:06', '2025-12-05 06:26:06'),
(273, 1, 5, '2025-12-05 06:31:59', '2025-12-05 12:01:59', '2025-12-05 06:31:59'),
(274, 5, 1, '2025-12-05 06:52:46', '2025-12-05 12:22:46', '2025-12-05 06:52:46'),
(275, 5, 1, '2025-12-05 07:31:29', '2025-12-05 13:01:29', '2025-12-05 07:31:29'),
(276, 5, 1, '2025-12-05 08:04:12', '2025-12-05 13:34:12', '2025-12-05 08:04:12'),
(277, 5, 1, '2025-12-05 11:35:22', '2025-12-05 17:05:22', '2025-12-05 11:35:22'),
(278, 5, 1, '2025-12-05 12:41:41', '2025-12-05 18:11:41', '2025-12-05 12:41:41'),
(279, 5, 1, '2025-12-05 14:33:05', '2025-12-05 20:03:05', '2025-12-05 14:33:05'),
(280, 5, 1, '2025-12-05 14:40:24', '2025-12-05 20:10:24', '2025-12-05 14:40:24'),
(281, 6, 1, '2025-12-05 14:40:37', '2025-12-05 20:10:37', '2025-12-05 14:40:37'),
(282, 6, 1, '2025-12-05 14:40:47', '2025-12-05 20:10:47', '2025-12-05 14:40:47'),
(283, 10, 1, '2025-12-05 14:40:52', '2025-12-05 20:10:52', '2025-12-05 14:40:52'),
(284, 6, 1, '2025-12-05 14:40:57', '2025-12-05 20:10:57', '2025-12-05 14:40:57'),
(285, 6, 1, '2025-12-05 14:41:07', '2025-12-05 20:11:07', '2025-12-05 14:41:07'),
(286, 5, 1, '2025-12-05 14:41:14', '2025-12-05 20:11:14', '2025-12-05 14:41:14'),
(287, 5, 7, '2025-12-08 18:51:28', '2025-12-08 13:51:28', '2025-12-08 18:51:28'),
(288, 10, 7, '2025-12-08 18:51:35', '2025-12-08 13:51:35', '2025-12-08 18:51:35'),
(289, 5, 7, '2025-12-08 18:52:33', '2025-12-08 13:52:33', '2025-12-08 18:52:33'),
(290, 6, 16, '2025-12-09 16:34:17', '2025-12-09 11:34:17', '2025-12-09 16:34:17'),
(291, 5, 16, '2025-12-09 16:38:31', '2025-12-09 11:38:31', '2025-12-09 16:38:31'),
(292, 5, 16, '2025-12-09 16:41:51', '2025-12-09 11:41:51', '2025-12-09 16:41:51'),
(293, 6, 16, '2025-12-09 16:45:20', '2025-12-09 11:45:20', '2025-12-09 16:45:20'),
(294, 11, 7, '2025-12-09 16:47:53', '2025-12-09 11:47:53', '2025-12-09 16:47:53'),
(295, 5, 7, '2025-12-09 16:48:02', '2025-12-09 11:48:02', '2025-12-09 16:48:02'),
(296, 5, 7, '2025-12-09 17:18:29', '2025-12-09 12:18:29', '2025-12-09 17:18:29'),
(297, 5, 7, '2025-12-09 17:25:51', '2025-12-09 12:25:51', '2025-12-09 17:25:51'),
(298, 10, 7, '2025-12-09 17:26:10', '2025-12-09 12:26:10', '2025-12-09 17:26:10'),
(299, 16, 6, '2025-12-09 17:39:25', '2025-12-09 12:39:25', '2025-12-09 17:39:25'),
(300, 16, 6, '2025-12-09 17:39:34', '2025-12-09 12:39:34', '2025-12-09 17:39:34'),
(301, 16, 6, '2025-12-09 17:43:53', '2025-12-09 12:43:53', '2025-12-09 17:43:53'),
(302, 16, 6, '2025-12-09 17:43:58', '2025-12-09 12:43:58', '2025-12-09 17:43:58'),
(303, 10, 7, '2025-12-09 17:45:10', '2025-12-09 12:45:10', '2025-12-09 17:45:10'),
(304, 10, 7, '2025-12-09 17:47:20', '2025-12-09 12:47:20', '2025-12-09 17:47:20'),
(305, 6, 7, '2025-12-09 17:48:51', '2025-12-09 12:48:51', '2025-12-09 17:48:51'),
(306, 5, 7, '2025-12-09 17:48:54', '2025-12-09 12:48:54', '2025-12-09 17:48:54'),
(307, 5, 16, '2025-12-09 17:50:07', '2025-12-09 12:50:07', '2025-12-09 17:50:07'),
(308, 17, 7, '2025-12-09 17:53:31', '2025-12-09 12:53:31', '2025-12-09 17:53:31'),
(309, 17, 7, '2025-12-09 17:53:43', '2025-12-09 12:53:43', '2025-12-09 17:53:43'),
(310, 17, 14, '2025-12-09 17:54:27', '2025-12-09 12:54:27', '2025-12-09 17:54:27'),
(311, 17, 14, '2025-12-09 17:54:35', '2025-12-09 12:54:35', '2025-12-09 17:54:35'),
(312, 17, 16, '2025-12-09 17:55:15', '2025-12-09 12:55:15', '2025-12-09 17:55:15'),
(313, 17, 16, '2025-12-09 17:55:26', '2025-12-09 12:55:26', '2025-12-09 17:55:26'),
(314, 17, 9, '2025-12-09 17:56:25', '2025-12-09 12:56:25', '2025-12-09 17:56:25'),
(315, 17, 9, '2025-12-09 17:56:33', '2025-12-09 12:56:33', '2025-12-09 17:56:33'),
(316, 1, 5, '2025-12-09 17:59:19', '2025-12-09 12:59:19', '2025-12-09 17:59:19'),
(317, 1, 5, '2025-12-09 17:59:24', '2025-12-09 12:59:24', '2025-12-09 17:59:24'),
(318, 18, 7, '2025-12-09 18:04:14', '2025-12-09 13:04:14', '2025-12-09 18:04:14'),
(319, 18, 7, '2025-12-09 18:04:23', '2025-12-09 13:04:23', '2025-12-09 18:04:23'),
(320, 18, 9, '2025-12-09 18:05:07', '2025-12-09 13:05:07', '2025-12-09 18:05:07'),
(321, 18, 9, '2025-12-09 18:05:14', '2025-12-09 13:05:14', '2025-12-09 18:05:14'),
(322, 18, 14, '2025-12-09 18:06:04', '2025-12-09 13:06:04', '2025-12-09 18:06:04'),
(323, 18, 14, '2025-12-09 18:06:11', '2025-12-09 13:06:11', '2025-12-09 18:06:11'),
(324, 18, 16, '2025-12-09 18:06:37', '2025-12-09 13:06:37', '2025-12-09 18:06:37'),
(325, 18, 16, '2025-12-09 18:06:45', '2025-12-09 13:06:45', '2025-12-09 18:06:45'),
(326, 17, 7, '2025-12-09 19:00:26', '2025-12-09 14:00:26', '2025-12-09 19:00:26'),
(327, 10, 7, '2025-12-09 20:14:05', '2025-12-09 15:14:05', '2025-12-09 20:14:05'),
(328, 6, 1, '2025-12-09 21:25:52', '2025-12-09 16:25:52', '2025-12-09 21:25:52'),
(329, 6, 1, '2025-12-09 21:26:06', '2025-12-09 16:26:06', '2025-12-09 21:26:06'),
(330, 17, 1, '2025-12-09 21:26:10', '2025-12-09 16:26:10', '2025-12-09 21:26:10'),
(331, 17, 1, '2025-12-09 21:26:20', '2025-12-09 16:26:20', '2025-12-09 21:26:20'),
(332, 5, 7, '2025-12-09 22:00:14', '2025-12-09 17:00:14', '2025-12-09 22:00:14'),
(333, 10, 7, '2025-12-09 22:37:23', '2025-12-09 17:37:23', '2025-12-09 22:37:23'),
(334, 10, 7, '2025-12-09 22:37:54', '2025-12-09 17:37:54', '2025-12-09 22:37:54'),
(335, 6, 1, '2025-12-10 00:31:04', '2025-12-09 19:31:04', '2025-12-10 00:31:04'),
(336, 7, 17, '2025-12-10 07:45:08', '2025-12-10 02:45:08', '2025-12-10 07:45:08'),
(337, 1, 17, '2025-12-10 07:45:54', '2025-12-10 02:45:54', '2025-12-10 07:45:54'),
(338, 16, 17, '2025-12-10 08:37:49', '2025-12-10 03:37:49', '2025-12-10 08:37:49'),
(339, 12, 5, '2025-12-10 14:53:12', '2025-12-10 09:53:12', '2025-12-10 14:53:12'),
(340, 16, 5, '2025-12-10 14:53:33', '2025-12-10 09:53:33', '2025-12-10 14:53:33'),
(341, 14, 5, '2025-12-10 14:54:55', '2025-12-10 09:54:55', '2025-12-10 14:54:55'),
(342, 14, 5, '2025-12-10 14:54:59', '2025-12-10 09:54:59', '2025-12-10 14:54:59'),
(343, 8, 5, '2025-12-10 14:55:07', '2025-12-10 09:55:07', '2025-12-10 14:55:07'),
(344, 9, 5, '2025-12-10 14:55:30', '2025-12-10 09:55:30', '2025-12-10 14:55:30'),
(345, 9, 5, '2025-12-10 14:55:57', '2025-12-10 09:55:57', '2025-12-10 14:55:57'),
(346, 6, 1, '2025-12-10 16:51:43', '2025-12-10 11:51:43', '2025-12-10 16:51:43'),
(347, 6, 1, '2025-12-10 16:52:02', '2025-12-10 11:52:02', '2025-12-10 16:52:02'),
(348, 5, 1, '2025-12-10 16:52:16', '2025-12-10 11:52:16', '2025-12-10 16:52:16'),
(349, 6, 1, '2025-12-10 16:52:22', '2025-12-10 11:52:22', '2025-12-10 16:52:22'),
(350, 6, 1, '2025-12-10 16:53:18', '2025-12-10 11:53:18', '2025-12-10 16:53:18'),
(351, 17, 1, '2025-12-10 16:59:25', '2025-12-10 11:59:25', '2025-12-10 16:59:25'),
(352, 17, 1, '2025-12-10 17:08:34', '2025-12-10 12:08:34', '2025-12-10 17:08:34'),
(353, 6, 1, '2025-12-10 17:08:39', '2025-12-10 12:08:39', '2025-12-10 17:08:39'),
(354, 17, 1, '2025-12-10 17:08:58', '2025-12-10 12:08:58', '2025-12-10 17:08:58'),
(355, 6, 1, '2025-12-10 17:56:01', '2025-12-10 12:56:01', '2025-12-10 17:56:01'),
(356, 17, 7, '2025-12-11 12:46:25', '2025-12-11 07:46:25', '2025-12-11 12:46:25'),
(357, 5, 1, '2025-12-11 13:00:23', '2025-12-11 08:00:23', '2025-12-11 13:00:23'),
(358, 2, 1, '2025-12-11 13:00:47', '2025-12-11 08:00:47', '2025-12-11 13:00:47'),
(359, 6, 7, '2025-12-11 14:28:23', '2025-12-11 09:28:23', '2025-12-11 14:28:23'),
(360, 16, 47, '2025-12-11 16:19:06', '2025-12-11 11:19:06', '2025-12-11 16:19:06'),
(361, 16, 47, '2025-12-11 16:19:23', '2025-12-11 11:19:23', '2025-12-11 16:19:23'),
(362, 16, 47, '2025-12-11 16:19:52', '2025-12-11 11:19:52', '2025-12-11 16:19:52'),
(363, 16, 47, '2025-12-11 16:20:06', '2025-12-11 11:20:06', '2025-12-11 16:20:06'),
(364, 16, 47, '2025-12-11 16:20:14', '2025-12-11 11:20:14', '2025-12-11 16:20:14'),
(365, 9, 47, '2025-12-11 16:20:22', '2025-12-11 11:20:22', '2025-12-11 16:20:22'),
(366, 1, 47, '2025-12-11 16:21:27', '2025-12-11 11:21:27', '2025-12-11 16:21:27'),
(367, 14, 47, '2025-12-11 16:21:39', '2025-12-11 11:21:39', '2025-12-11 16:21:39'),
(368, 9, 47, '2025-12-11 16:21:48', '2025-12-11 11:21:48', '2025-12-11 16:21:48'),
(369, 9, 47, '2025-12-11 16:21:52', '2025-12-11 11:21:52', '2025-12-11 16:21:52'),
(370, 1, 47, '2025-12-11 16:22:27', '2025-12-11 11:22:27', '2025-12-11 16:22:27'),
(371, 1, 47, '2025-12-11 16:22:52', '2025-12-11 11:22:52', '2025-12-11 16:22:52'),
(372, 1, 47, '2025-12-11 16:22:57', '2025-12-11 11:22:57', '2025-12-11 16:22:57'),
(373, 47, 7, '2025-12-11 16:37:51', '2025-12-11 11:37:51', '2025-12-11 16:37:51'),
(374, 47, 7, '2025-12-11 16:38:00', '2025-12-11 11:38:00', '2025-12-11 16:38:00'),
(375, 47, 9, '2025-12-11 16:39:06', '2025-12-11 11:39:06', '2025-12-11 16:39:06'),
(376, 47, 9, '2025-12-11 16:39:14', '2025-12-11 11:39:14', '2025-12-11 16:39:14'),
(377, 47, 9, '2025-12-11 16:39:22', '2025-12-11 11:39:22', '2025-12-11 16:39:22'),
(378, 47, 14, '2025-12-11 16:39:54', '2025-12-11 11:39:54', '2025-12-11 16:39:54'),
(379, 47, 14, '2025-12-11 16:40:10', '2025-12-11 11:40:10', '2025-12-11 16:40:10'),
(380, 47, 1, '2025-12-11 16:46:28', '2025-12-11 11:46:28', '2025-12-11 16:46:28'),
(381, 47, 16, '2025-12-11 16:49:26', '2025-12-11 11:49:26', '2025-12-11 16:49:26'),
(382, 47, 16, '2025-12-11 16:49:32', '2025-12-11 11:49:32', '2025-12-11 16:49:32'),
(383, 9, 47, '2025-12-11 16:51:30', '2025-12-11 11:51:30', '2025-12-11 16:51:30'),
(384, 16, 47, '2025-12-11 17:22:14', '2025-12-11 12:22:14', '2025-12-11 17:22:14'),
(385, 14, 47, '2025-12-11 17:22:46', '2025-12-11 12:22:46', '2025-12-11 17:22:46'),
(386, 16, 47, '2025-12-11 17:23:03', '2025-12-11 12:23:03', '2025-12-11 17:23:03'),
(387, 9, 47, '2025-12-11 17:23:13', '2025-12-11 12:23:13', '2025-12-11 17:23:13'),
(388, 16, 47, '2025-12-11 17:24:22', '2025-12-11 12:24:22', '2025-12-11 17:24:22'),
(389, 16, 48, '2025-12-11 17:47:08', '2025-12-11 12:47:08', '2025-12-11 17:47:08'),
(390, 48, 7, '2025-12-11 17:51:58', '2025-12-11 12:51:58', '2025-12-11 17:51:58'),
(391, 48, 7, '2025-12-11 17:52:05', '2025-12-11 12:52:05', '2025-12-11 17:52:05'),
(392, 48, 16, '2025-12-11 17:52:26', '2025-12-11 12:52:26', '2025-12-11 17:52:26'),
(393, 48, 16, '2025-12-11 17:52:32', '2025-12-11 12:52:32', '2025-12-11 17:52:32'),
(394, 48, 14, '2025-12-11 17:53:38', '2025-12-11 12:53:38', '2025-12-11 17:53:38'),
(395, 48, 14, '2025-12-11 17:53:47', '2025-12-11 12:53:47', '2025-12-11 17:53:47'),
(396, 48, 9, '2025-12-11 17:56:11', '2025-12-11 12:56:11', '2025-12-11 17:56:11'),
(397, 48, 9, '2025-12-11 17:56:18', '2025-12-11 12:56:18', '2025-12-11 17:56:18'),
(398, 16, 48, '2025-12-11 18:48:14', '2025-12-11 13:48:14', '2025-12-11 18:48:14'),
(399, 16, 48, '2025-12-11 18:48:29', '2025-12-11 13:48:29', '2025-12-11 18:48:29'),
(400, 6, 1, '2025-12-11 21:53:22', '2025-12-11 16:53:22', '2025-12-11 21:53:22'),
(401, 47, 1, '2025-12-11 22:30:32', '2025-12-11 17:30:32', '2025-12-11 22:30:32'),
(402, 47, 1, '2025-12-11 22:30:45', '2025-12-11 17:30:45', '2025-12-11 22:30:45'),
(403, 47, 1, '2025-12-11 22:31:13', '2025-12-11 17:31:13', '2025-12-11 22:31:13'),
(404, 47, 1, '2025-12-11 22:32:38', '2025-12-11 17:32:38', '2025-12-11 22:32:38'),
(405, 47, 7, '2025-12-12 01:07:05', '2025-12-11 20:07:05', '2025-12-12 01:07:05'),
(406, 47, 7, '2025-12-12 01:08:39', '2025-12-11 20:08:39', '2025-12-12 01:08:39'),
(407, 14, 53, '2025-12-12 10:31:29', '2025-12-12 05:31:29', '2025-12-12 10:31:29'),
(408, 16, 53, '2025-12-12 10:38:06', '2025-12-12 05:38:06', '2025-12-12 10:38:06'),
(409, 16, 53, '2025-12-12 10:38:15', '2025-12-12 05:38:15', '2025-12-12 10:38:15'),
(410, 53, 54, '2025-12-12 11:19:03', '2025-12-12 06:19:03', '2025-12-12 11:19:03'),
(411, 53, 54, '2025-12-12 11:19:21', '2025-12-12 06:19:21', '2025-12-12 11:19:21'),
(412, 53, 54, '2025-12-12 11:22:01', '2025-12-12 06:22:01', '2025-12-12 11:22:01'),
(413, 53, 54, '2025-12-12 11:23:28', '2025-12-12 06:23:28', '2025-12-12 11:23:28'),
(414, 53, 54, '2025-12-12 11:26:28', '2025-12-12 06:26:28', '2025-12-12 11:26:28'),
(415, 5, 54, '2025-12-12 11:26:36', '2025-12-12 06:26:36', '2025-12-12 11:26:36'),
(416, 53, 54, '2025-12-12 11:26:39', '2025-12-12 06:26:39', '2025-12-12 11:26:39'),
(417, 53, 54, '2025-12-12 11:27:53', '2025-12-12 06:27:53', '2025-12-12 11:27:53'),
(418, 53, 54, '2025-12-12 11:29:55', '2025-12-12 06:29:55', '2025-12-12 11:29:55'),
(419, 53, 54, '2025-12-12 11:30:27', '2025-12-12 06:30:27', '2025-12-12 11:30:27'),
(420, 53, 54, '2025-12-12 11:32:59', '2025-12-12 06:32:59', '2025-12-12 11:32:59'),
(421, 47, 54, '2025-12-12 11:33:03', '2025-12-12 06:33:03', '2025-12-12 11:33:03'),
(422, 53, 54, '2025-12-12 11:33:51', '2025-12-12 06:33:51', '2025-12-12 11:33:51'),
(423, 16, 53, '2025-12-12 11:41:04', '2025-12-12 06:41:04', '2025-12-12 11:41:04'),
(424, 54, 53, '2025-12-12 11:41:14', '2025-12-12 06:41:14', '2025-12-12 11:41:14'),
(425, 54, 53, '2025-12-12 11:41:16', '2025-12-12 06:41:16', '2025-12-12 11:41:16'),
(426, 53, 54, '2025-12-12 11:42:44', '2025-12-12 06:42:44', '2025-12-12 11:42:44'),
(427, 53, 7, '2025-12-12 11:46:16', '2025-12-12 06:46:16', '2025-12-12 11:46:16'),
(428, 16, 56, '2025-12-12 11:58:46', '2025-12-12 06:58:46', '2025-12-12 11:58:46'),
(429, 12, 56, '2025-12-12 12:00:09', '2025-12-12 07:00:09', '2025-12-12 12:00:09'),
(430, 60, 7, '2025-12-12 15:57:42', '2025-12-12 10:57:42', '2025-12-12 15:57:42'),
(431, 60, 7, '2025-12-12 15:57:49', '2025-12-12 10:57:49', '2025-12-12 15:57:49'),
(432, 5, 7, '2025-12-12 15:58:00', '2025-12-12 10:58:00', '2025-12-12 15:58:00'),
(433, 5, 7, '2025-12-12 15:58:07', '2025-12-12 10:58:07', '2025-12-12 15:58:07'),
(434, 5, 7, '2025-12-12 15:58:17', '2025-12-12 10:58:17', '2025-12-12 15:58:17'),
(435, 14, 60, '2025-12-12 16:11:36', '2025-12-12 11:11:36', '2025-12-12 16:11:36'),
(436, 61, 1, '2025-12-12 16:46:05', '2025-12-12 11:46:05', '2025-12-12 16:46:05'),
(437, 61, 1, '2025-12-12 16:46:45', '2025-12-12 11:46:45', '2025-12-12 16:46:45'),
(438, 1, 61, '2025-12-12 16:47:54', '2025-12-12 11:47:54', '2025-12-12 16:47:54'),
(439, 61, 1, '2025-12-12 16:48:37', '2025-12-12 11:48:37', '2025-12-12 16:48:37'),
(440, 61, 1, '2025-12-12 16:49:01', '2025-12-12 11:49:01', '2025-12-12 16:49:01'),
(441, 1, 61, '2025-12-12 16:58:01', '2025-12-12 11:58:01', '2025-12-12 16:58:01'),
(442, 1, 61, '2025-12-12 16:58:42', '2025-12-12 11:58:42', '2025-12-12 16:58:42'),
(443, 61, 7, '2025-12-12 17:12:51', '2025-12-12 12:12:51', '2025-12-12 17:12:51'),
(444, 61, 7, '2025-12-12 17:13:02', '2025-12-12 12:13:02', '2025-12-12 17:13:02'),
(445, 61, 7, '2025-12-12 17:13:23', '2025-12-12 12:13:23', '2025-12-12 17:13:23'),
(446, 61, 7, '2025-12-12 17:13:41', '2025-12-12 12:13:41', '2025-12-12 17:13:41'),
(447, 6, 7, '2025-12-12 17:21:05', '2025-12-12 12:21:05', '2025-12-12 17:21:05'),
(448, 61, 7, '2025-12-12 17:21:28', '2025-12-12 12:21:28', '2025-12-12 17:21:28'),
(449, 61, 7, '2025-12-12 17:21:33', '2025-12-12 12:21:33', '2025-12-12 17:21:33'),
(450, 1, 61, '2025-12-12 17:24:40', '2025-12-12 12:24:40', '2025-12-12 17:24:40'),
(451, 7, 66, '2025-12-12 17:26:01', '2025-12-12 12:26:01', '2025-12-12 17:26:01'),
(452, 66, 7, '2025-12-12 17:26:28', '2025-12-12 12:26:28', '2025-12-12 17:26:28'),
(453, 66, 7, '2025-12-12 17:26:48', '2025-12-12 12:26:48', '2025-12-12 17:26:48'),
(454, 66, 7, '2025-12-12 17:27:19', '2025-12-12 12:27:19', '2025-12-12 17:27:19'),
(455, 66, 7, '2025-12-12 17:27:28', '2025-12-12 12:27:28', '2025-12-12 17:27:28'),
(456, 66, 7, '2025-12-12 17:29:41', '2025-12-12 12:29:41', '2025-12-12 17:29:41'),
(457, 66, 7, '2025-12-12 17:29:49', '2025-12-12 12:29:49', '2025-12-12 17:29:49'),
(458, 66, 7, '2025-12-12 17:30:01', '2025-12-12 12:30:01', '2025-12-12 17:30:01'),
(459, 6, 7, '2025-12-12 17:30:10', '2025-12-12 12:30:10', '2025-12-12 17:30:10'),
(460, 66, 7, '2025-12-12 17:30:24', '2025-12-12 12:30:24', '2025-12-12 17:30:24'),
(461, 10, 7, '2025-12-12 17:30:38', '2025-12-12 12:30:38', '2025-12-12 17:30:38'),
(462, 66, 7, '2025-12-12 17:30:41', '2025-12-12 12:30:41', '2025-12-12 17:30:41'),
(463, 66, 7, '2025-12-12 17:31:30', '2025-12-12 12:31:30', '2025-12-12 17:31:30'),
(464, 5, 7, '2025-12-12 17:32:41', '2025-12-12 12:32:41', '2025-12-12 17:32:41'),
(465, 66, 7, '2025-12-12 17:37:07', '2025-12-12 12:37:07', '2025-12-12 17:37:07'),
(466, 66, 7, '2025-12-12 17:42:24', '2025-12-12 12:42:24', '2025-12-12 17:42:24'),
(467, 66, 7, '2025-12-12 17:45:10', '2025-12-12 12:45:10', '2025-12-12 17:45:10'),
(468, 66, 7, '2025-12-12 17:45:19', '2025-12-12 12:45:19', '2025-12-12 17:45:19'),
(469, 11, 7, '2025-12-12 17:45:26', '2025-12-12 12:45:26', '2025-12-12 17:45:26'),
(470, 5, 7, '2025-12-12 17:46:30', '2025-12-12 12:46:30', '2025-12-12 17:46:30'),
(471, 66, 7, '2025-12-12 17:49:36', '2025-12-12 12:49:36', '2025-12-12 17:49:36'),
(472, 66, 7, '2025-12-12 17:50:36', '2025-12-12 12:50:36', '2025-12-12 17:50:36'),
(473, 66, 7, '2025-12-12 17:51:25', '2025-12-12 12:51:25', '2025-12-12 17:51:25'),
(474, 66, 7, '2025-12-12 17:56:56', '2025-12-12 12:56:56', '2025-12-12 17:56:56'),
(475, 66, 7, '2025-12-12 17:57:27', '2025-12-12 12:57:27', '2025-12-12 17:57:27'),
(476, 66, 7, '2025-12-12 17:57:36', '2025-12-12 12:57:36', '2025-12-12 17:57:36'),
(477, 66, 7, '2025-12-12 17:57:40', '2025-12-12 12:57:40', '2025-12-12 17:57:40'),
(478, 66, 7, '2025-12-12 17:57:53', '2025-12-12 12:57:53', '2025-12-12 17:57:53'),
(479, 5, 7, '2025-12-12 17:58:29', '2025-12-12 12:58:29', '2025-12-12 17:58:29'),
(480, 66, 7, '2025-12-12 17:58:44', '2025-12-12 12:58:44', '2025-12-12 17:58:44'),
(481, 66, 7, '2025-12-12 17:58:55', '2025-12-12 12:58:55', '2025-12-12 17:58:55'),
(482, 66, 7, '2025-12-12 17:59:19', '2025-12-12 12:59:19', '2025-12-12 17:59:19'),
(483, 66, 7, '2025-12-12 17:59:38', '2025-12-12 12:59:38', '2025-12-12 17:59:38'),
(484, 66, 7, '2025-12-12 18:01:03', '2025-12-12 13:01:03', '2025-12-12 18:01:03'),
(485, 66, 7, '2025-12-12 18:01:11', '2025-12-12 13:01:11', '2025-12-12 18:01:11'),
(486, 11, 7, '2025-12-12 18:01:21', '2025-12-12 13:01:21', '2025-12-12 18:01:21'),
(487, 66, 7, '2025-12-12 18:01:44', '2025-12-12 13:01:44', '2025-12-12 18:01:44'),
(488, 11, 7, '2025-12-12 18:01:48', '2025-12-12 13:01:48', '2025-12-12 18:01:48'),
(489, 5, 7, '2025-12-12 18:01:51', '2025-12-12 13:01:51', '2025-12-12 18:01:51'),
(490, 11, 7, '2025-12-12 18:02:05', '2025-12-12 13:02:05', '2025-12-12 18:02:05'),
(491, 66, 7, '2025-12-12 18:02:15', '2025-12-12 13:02:15', '2025-12-12 18:02:15'),
(492, 66, 7, '2025-12-12 18:02:32', '2025-12-12 13:02:32', '2025-12-12 18:02:32'),
(493, 66, 7, '2025-12-12 18:03:38', '2025-12-12 13:03:38', '2025-12-12 18:03:38'),
(494, 66, 7, '2025-12-12 18:04:19', '2025-12-12 13:04:19', '2025-12-12 18:04:19'),
(495, 66, 7, '2025-12-12 18:04:41', '2025-12-12 13:04:41', '2025-12-12 18:04:41'),
(496, 66, 7, '2025-12-12 18:05:23', '2025-12-12 13:05:23', '2025-12-12 18:05:23'),
(497, 66, 7, '2025-12-12 18:06:19', '2025-12-12 13:06:19', '2025-12-12 18:06:19'),
(498, 11, 7, '2025-12-12 18:06:24', '2025-12-12 13:06:24', '2025-12-12 18:06:24'),
(499, 10, 7, '2025-12-12 18:06:30', '2025-12-12 13:06:30', '2025-12-12 18:06:30'),
(500, 11, 7, '2025-12-12 18:11:35', '2025-12-12 13:11:35', '2025-12-12 18:11:35'),
(501, 66, 7, '2025-12-12 18:13:01', '2025-12-12 13:13:01', '2025-12-12 18:13:01'),
(502, 66, 7, '2025-12-12 18:13:54', '2025-12-12 13:13:54', '2025-12-12 18:13:54'),
(503, 66, 7, '2025-12-12 18:14:48', '2025-12-12 13:14:48', '2025-12-12 18:14:48'),
(504, 66, 7, '2025-12-12 18:15:29', '2025-12-12 13:15:29', '2025-12-12 18:15:29'),
(505, 11, 7, '2025-12-12 18:15:56', '2025-12-12 13:15:56', '2025-12-12 18:15:56'),
(506, 66, 7, '2025-12-12 18:16:04', '2025-12-12 13:16:04', '2025-12-12 18:16:04'),
(507, 66, 7, '2025-12-12 18:16:17', '2025-12-12 13:16:17', '2025-12-12 18:16:17'),
(508, 11, 7, '2025-12-12 18:17:05', '2025-12-12 13:17:05', '2025-12-12 18:17:05'),
(509, 66, 7, '2025-12-12 18:29:10', '2025-12-12 13:29:10', '2025-12-12 18:29:10'),
(510, 66, 7, '2025-12-12 18:29:36', '2025-12-12 13:29:36', '2025-12-12 18:29:36'),
(511, 66, 7, '2025-12-12 18:29:53', '2025-12-12 13:29:53', '2025-12-12 18:29:53'),
(512, 66, 7, '2025-12-12 18:30:07', '2025-12-12 13:30:07', '2025-12-12 18:30:07'),
(513, 11, 7, '2025-12-12 18:30:10', '2025-12-12 13:30:10', '2025-12-12 18:30:10'),
(514, 66, 7, '2025-12-12 18:32:15', '2025-12-12 13:32:15', '2025-12-12 18:32:15'),
(515, 11, 7, '2025-12-12 18:32:20', '2025-12-12 13:32:20', '2025-12-12 18:32:20'),
(516, 66, 7, '2025-12-12 18:33:05', '2025-12-12 13:33:05', '2025-12-12 18:33:05'),
(517, 11, 7, '2025-12-12 18:33:10', '2025-12-12 13:33:10', '2025-12-12 18:33:10'),
(518, 66, 7, '2025-12-12 18:33:21', '2025-12-12 13:33:21', '2025-12-12 18:33:21'),
(519, 11, 7, '2025-12-12 18:33:35', '2025-12-12 13:33:35', '2025-12-12 18:33:35'),
(520, 11, 7, '2025-12-12 18:33:40', '2025-12-12 13:33:40', '2025-12-12 18:33:40'),
(521, 10, 7, '2025-12-12 18:33:50', '2025-12-12 13:33:50', '2025-12-12 18:33:50'),
(522, 66, 7, '2025-12-12 18:34:40', '2025-12-12 13:34:40', '2025-12-12 18:34:40'),
(523, 6, 7, '2025-12-12 18:35:04', '2025-12-12 13:35:04', '2025-12-12 18:35:04'),
(524, 66, 7, '2025-12-12 18:35:06', '2025-12-12 13:35:06', '2025-12-12 18:35:06'),
(525, 66, 7, '2025-12-12 18:35:24', '2025-12-12 13:35:24', '2025-12-12 18:35:24'),
(526, 10, 7, '2025-12-12 18:35:28', '2025-12-12 13:35:28', '2025-12-12 18:35:28'),
(527, 10, 7, '2025-12-12 18:35:46', '2025-12-12 13:35:46', '2025-12-12 18:35:46'),
(528, 10, 7, '2025-12-12 18:49:20', '2025-12-12 13:49:20', '2025-12-12 18:49:20'),
(529, 5, 7, '2025-12-12 18:49:24', '2025-12-12 13:49:24', '2025-12-12 18:49:24'),
(530, 66, 7, '2025-12-12 18:49:28', '2025-12-12 13:49:28', '2025-12-12 18:49:28'),
(531, 66, 7, '2025-12-12 18:49:51', '2025-12-12 13:49:51', '2025-12-12 18:49:51'),
(532, 10, 7, '2025-12-12 18:50:33', '2025-12-12 13:50:33', '2025-12-12 18:50:33'),
(533, 66, 7, '2025-12-12 18:50:45', '2025-12-12 13:50:45', '2025-12-12 18:50:45'),
(534, 10, 7, '2025-12-12 18:50:50', '2025-12-12 13:50:50', '2025-12-12 18:50:50'),
(535, 5, 7, '2025-12-12 18:50:56', '2025-12-12 13:50:56', '2025-12-12 18:50:56'),
(536, 66, 7, '2025-12-12 18:51:14', '2025-12-12 13:51:14', '2025-12-12 18:51:14'),
(537, 11, 7, '2025-12-12 18:51:19', '2025-12-12 13:51:19', '2025-12-12 18:51:19'),
(538, 5, 7, '2025-12-12 18:51:23', '2025-12-12 13:51:23', '2025-12-12 18:51:23'),
(539, 66, 7, '2025-12-12 18:52:38', '2025-12-12 13:52:38', '2025-12-12 18:52:38'),
(540, 61, 7, '2025-12-12 18:52:59', '2025-12-12 13:52:59', '2025-12-12 18:52:59'),
(541, 66, 7, '2025-12-12 18:55:03', '2025-12-12 13:55:03', '2025-12-12 18:55:03'),
(542, 11, 7, '2025-12-12 18:55:06', '2025-12-12 13:55:06', '2025-12-12 18:55:06'),
(543, 5, 7, '2025-12-12 18:55:10', '2025-12-12 13:55:10', '2025-12-12 18:55:10'),
(544, 5, 7, '2025-12-12 18:55:16', '2025-12-12 13:55:16', '2025-12-12 18:55:16'),
(545, 10, 7, '2025-12-12 18:55:19', '2025-12-12 13:55:19', '2025-12-12 18:55:19'),
(546, 66, 7, '2025-12-12 18:55:21', '2025-12-12 13:55:21', '2025-12-12 18:55:21'),
(547, 10, 7, '2025-12-12 18:56:01', '2025-12-12 13:56:01', '2025-12-12 18:56:01'),
(548, 6, 7, '2025-12-12 19:08:11', '2025-12-12 14:08:11', '2025-12-12 19:08:11'),
(549, 66, 7, '2025-12-12 19:08:16', '2025-12-12 14:08:16', '2025-12-12 19:08:16'),
(550, 11, 7, '2025-12-12 19:08:20', '2025-12-12 14:08:20', '2025-12-12 19:08:20'),
(551, 10, 7, '2025-12-12 19:09:53', '2025-12-12 14:09:53', '2025-12-12 19:09:53'),
(552, 66, 7, '2025-12-12 19:09:57', '2025-12-12 14:09:57', '2025-12-12 19:09:57'),
(553, 5, 7, '2025-12-12 19:10:03', '2025-12-12 14:10:03', '2025-12-12 19:10:03'),
(554, 6, 7, '2025-12-12 19:10:12', '2025-12-12 14:10:12', '2025-12-12 19:10:12'),
(555, 10, 7, '2025-12-12 19:10:18', '2025-12-12 14:10:18', '2025-12-12 19:10:18'),
(556, 66, 7, '2025-12-12 19:10:22', '2025-12-12 14:10:22', '2025-12-12 19:10:22'),
(557, 11, 7, '2025-12-12 19:10:25', '2025-12-12 14:10:25', '2025-12-12 19:10:25'),
(558, 5, 7, '2025-12-12 19:10:31', '2025-12-12 14:10:31', '2025-12-12 19:10:31'),
(559, 10, 7, '2025-12-12 19:11:00', '2025-12-12 14:11:00', '2025-12-12 19:11:00'),
(560, 6, 7, '2025-12-12 19:11:06', '2025-12-12 14:11:06', '2025-12-12 19:11:06'),
(561, 6, 7, '2025-12-12 19:11:12', '2025-12-12 14:11:12', '2025-12-12 19:11:12'),
(562, 66, 7, '2025-12-12 19:11:18', '2025-12-12 14:11:18', '2025-12-12 19:11:18'),
(563, 66, 7, '2025-12-12 19:11:26', '2025-12-12 14:11:26', '2025-12-12 19:11:26'),
(564, 66, 7, '2025-12-12 19:11:28', '2025-12-12 14:11:28', '2025-12-12 19:11:28'),
(565, 5, 7, '2025-12-12 19:12:01', '2025-12-12 14:12:01', '2025-12-12 19:12:01'),
(566, 7, 61, '2025-12-12 20:01:37', '2025-12-12 15:01:37', '2025-12-12 20:01:37'),
(567, 6, 1, '2025-12-12 21:54:18', '2025-12-12 16:54:18', '2025-12-12 21:54:18'),
(568, 5, 1, '2025-12-12 21:54:23', '2025-12-12 16:54:23', '2025-12-12 21:54:23'),
(569, 6, 1, '2025-12-12 21:54:28', '2025-12-12 16:54:28', '2025-12-12 21:54:28'),
(570, 10, 1, '2025-12-12 22:18:01', '2025-12-12 17:18:01', '2025-12-12 22:18:01'),
(571, 10, 1, '2025-12-12 22:18:09', '2025-12-12 17:18:09', '2025-12-12 22:18:09'),
(572, 10, 1, '2025-12-12 22:19:03', '2025-12-12 17:19:03', '2025-12-12 22:19:03'),
(573, 10, 1, '2025-12-12 22:19:56', '2025-12-12 17:19:56', '2025-12-12 22:19:56'),
(574, 10, 1, '2025-12-12 22:20:32', '2025-12-12 17:20:32', '2025-12-12 22:20:32'),
(575, 6, 1, '2025-12-13 14:12:06', '2025-12-13 09:12:06', '2025-12-13 14:12:06'),
(576, 10, 7, '2025-12-13 21:07:23', '2025-12-13 16:07:23', '2025-12-13 21:07:23'),
(577, 6, 1, '2025-12-13 21:47:45', '2025-12-13 16:47:45', '2025-12-13 21:47:45'),
(578, 5, 1, '2025-12-13 21:49:16', '2025-12-13 16:49:16', '2025-12-13 21:49:16'),
(579, 6, 1, '2025-12-13 21:49:42', '2025-12-13 16:49:42', '2025-12-13 21:49:42'),
(580, 5, 1, '2025-12-13 22:52:15', '2025-12-13 17:52:15', '2025-12-13 22:52:15'),
(581, 66, 7, '2025-12-15 10:08:20', '2025-12-15 05:08:20', '2025-12-15 10:08:20'),
(582, 11, 7, '2025-12-15 10:08:26', '2025-12-15 05:08:26', '2025-12-15 10:08:26'),
(583, 11, 7, '2025-12-15 10:08:30', '2025-12-15 05:08:30', '2025-12-15 10:08:30'),
(584, 66, 7, '2025-12-15 10:12:56', '2025-12-15 05:12:56', '2025-12-15 10:12:56'),
(585, 11, 7, '2025-12-15 10:12:59', '2025-12-15 05:12:59', '2025-12-15 10:12:59'),
(586, 66, 7, '2025-12-15 10:13:05', '2025-12-15 05:13:05', '2025-12-15 10:13:05'),
(587, 11, 7, '2025-12-15 10:13:08', '2025-12-15 05:13:08', '2025-12-15 10:13:08'),
(588, 10, 7, '2025-12-15 10:13:12', '2025-12-15 05:13:12', '2025-12-15 10:13:12'),
(589, 5, 7, '2025-12-15 10:17:27', '2025-12-15 05:17:27', '2025-12-15 10:17:27'),
(590, 66, 7, '2025-12-15 10:17:31', '2025-12-15 05:17:31', '2025-12-15 10:17:31'),
(591, 66, 7, '2025-12-15 10:20:34', '2025-12-15 05:20:34', '2025-12-15 10:20:34'),
(592, 66, 7, '2025-12-15 10:31:19', '2025-12-15 05:31:19', '2025-12-15 10:31:19'),
(593, 66, 7, '2025-12-15 10:35:04', '2025-12-15 05:35:04', '2025-12-15 10:35:04'),
(594, 11, 7, '2025-12-15 10:35:07', '2025-12-15 05:35:07', '2025-12-15 10:35:07'),
(595, 10, 7, '2025-12-15 10:35:09', '2025-12-15 05:35:09', '2025-12-15 10:35:09'),
(596, 6, 7, '2025-12-15 10:35:14', '2025-12-15 05:35:14', '2025-12-15 10:35:14'),
(597, 5, 7, '2025-12-15 10:35:20', '2025-12-15 05:35:20', '2025-12-15 10:35:20'),
(598, 6, 7, '2025-12-15 10:35:23', '2025-12-15 05:35:23', '2025-12-15 10:35:23'),
(599, 5, 7, '2025-12-15 10:35:37', '2025-12-15 05:35:37', '2025-12-15 10:35:37'),
(600, 66, 7, '2025-12-15 10:35:38', '2025-12-15 05:35:38', '2025-12-15 10:35:38'),
(601, 10, 7, '2025-12-15 10:35:42', '2025-12-15 05:35:42', '2025-12-15 10:35:42'),
(602, 66, 7, '2025-12-15 10:35:43', '2025-12-15 05:35:43', '2025-12-15 10:35:43'),
(603, 66, 7, '2025-12-15 10:36:11', '2025-12-15 05:36:11', '2025-12-15 10:36:11'),
(604, 11, 7, '2025-12-15 10:36:17', '2025-12-15 05:36:17', '2025-12-15 10:36:17'),
(605, 10, 7, '2025-12-15 10:36:21', '2025-12-15 05:36:21', '2025-12-15 10:36:21'),
(606, 5, 7, '2025-12-15 10:36:31', '2025-12-15 05:36:31', '2025-12-15 10:36:31'),
(607, 5, 70, '2025-12-15 11:28:50', '2025-12-15 06:28:50', '2025-12-15 11:28:50'),
(608, 16, 5, '2025-12-15 11:30:06', '2025-12-15 06:30:06', '2025-12-15 11:30:06'),
(609, 70, 5, '2025-12-15 11:30:20', '2025-12-15 06:30:20', '2025-12-15 11:30:20'),
(610, 70, 5, '2025-12-15 11:30:28', '2025-12-15 06:30:28', '2025-12-15 11:30:28'),
(611, 16, 5, '2025-12-15 11:30:31', '2025-12-15 06:30:31', '2025-12-15 11:30:31'),
(612, 14, 5, '2025-12-15 11:30:35', '2025-12-15 06:30:35', '2025-12-15 11:30:35'),
(613, 70, 5, '2025-12-15 11:30:39', '2025-12-15 06:30:39', '2025-12-15 11:30:39'),
(614, 70, 5, '2025-12-15 11:30:48', '2025-12-15 06:30:48', '2025-12-15 11:30:48'),
(615, 70, 5, '2025-12-15 11:35:52', '2025-12-15 06:35:52', '2025-12-15 11:35:52'),
(616, 16, 5, '2025-12-15 11:36:06', '2025-12-15 06:36:06', '2025-12-15 11:36:06'),
(617, 70, 5, '2025-12-15 11:36:16', '2025-12-15 06:36:16', '2025-12-15 11:36:16'),
(618, 70, 5, '2025-12-15 11:36:33', '2025-12-15 06:36:33', '2025-12-15 11:36:33'),
(619, 70, 5, '2025-12-15 11:37:00', '2025-12-15 06:37:00', '2025-12-15 11:37:00');
INSERT INTO `view_table` (`id`, `view_id`, `viewer_id`, `created_at`, `deleted_at`, `updated_at`) VALUES
(620, 70, 5, '2025-12-15 11:39:06', '2025-12-15 06:39:06', '2025-12-15 11:39:06'),
(621, 16, 5, '2025-12-15 11:39:54', '2025-12-15 06:39:54', '2025-12-15 11:39:54'),
(622, 10, 70, '2025-12-15 11:40:41', '2025-12-15 06:40:41', '2025-12-15 11:40:41'),
(623, 5, 70, '2025-12-15 11:40:47', '2025-12-15 06:40:47', '2025-12-15 11:40:47'),
(624, 10, 7, '2025-12-15 12:00:19', '2025-12-15 07:00:19', '2025-12-15 12:00:19'),
(625, 6, 7, '2025-12-15 14:27:21', '2025-12-15 09:27:21', '2025-12-15 14:27:21'),
(626, 6, 7, '2025-12-15 14:28:21', '2025-12-15 09:28:21', '2025-12-15 14:28:21'),
(627, 75, 77, '2025-12-15 18:34:42', '2025-12-15 13:34:42', '2025-12-15 18:34:42'),
(628, 75, 77, '2025-12-15 18:34:51', '2025-12-15 13:34:51', '2025-12-15 18:34:51'),
(629, 75, 77, '2025-12-15 18:34:56', '2025-12-15 13:34:56', '2025-12-15 18:34:56'),
(630, 75, 77, '2025-12-15 18:35:03', '2025-12-15 13:35:03', '2025-12-15 18:35:03'),
(631, 75, 77, '2025-12-15 18:42:20', '2025-12-15 13:42:20', '2025-12-15 18:42:20'),
(632, 75, 77, '2025-12-15 19:47:01', '2025-12-15 14:47:01', '2025-12-15 19:47:01'),
(633, 75, 77, '2025-12-16 06:57:26', '2025-12-16 01:57:26', '2025-12-16 06:57:26'),
(634, 75, 77, '2025-12-16 06:57:35', '2025-12-16 01:57:35', '2025-12-16 06:57:35'),
(635, 75, 77, '2025-12-16 12:33:56', '2025-12-16 07:33:56', '2025-12-16 12:33:56'),
(636, 81, 82, '2025-12-22 16:07:21', '2025-12-22 11:07:21', '2025-12-22 16:07:21'),
(637, 81, 82, '2025-12-22 16:07:32', '2025-12-22 11:07:32', '2025-12-22 16:07:32'),
(638, 81, 82, '2025-12-22 16:09:47', '2025-12-22 11:09:47', '2025-12-22 16:09:47'),
(639, 81, 82, '2025-12-22 16:13:33', '2025-12-22 11:13:33', '2025-12-22 16:13:33'),
(640, 81, 82, '2025-12-22 16:13:40', '2025-12-22 11:13:40', '2025-12-22 16:13:40'),
(641, 81, 82, '2025-12-22 16:14:10', '2025-12-22 11:14:10', '2025-12-22 16:14:10'),
(642, 81, 82, '2025-12-22 16:14:38', '2025-12-22 11:14:38', '2025-12-22 16:14:38'),
(643, 81, 82, '2025-12-22 16:14:48', '2025-12-22 11:14:48', '2025-12-22 16:14:48'),
(644, 81, 82, '2025-12-22 16:15:08', '2025-12-22 11:15:08', '2025-12-22 16:15:08'),
(645, 78, 86, '2025-12-22 18:03:44', '2025-12-22 13:03:44', '2025-12-22 18:03:44'),
(646, 78, 86, '2025-12-22 18:04:37', '2025-12-22 13:04:37', '2025-12-22 18:04:37'),
(647, 78, 86, '2025-12-22 18:10:38', '2025-12-22 13:10:38', '2025-12-22 18:10:38'),
(648, 78, 86, '2025-12-22 18:34:59', '2025-12-22 13:34:59', '2025-12-22 18:34:59'),
(649, 78, 86, '2025-12-22 18:46:07', '2025-12-22 13:46:07', '2025-12-22 18:46:07'),
(650, 78, 86, '2025-12-22 18:49:24', '2025-12-22 13:49:24', '2025-12-22 18:49:24'),
(651, 78, 86, '2025-12-22 18:55:45', '2025-12-22 13:55:45', '2025-12-22 18:55:45'),
(652, 78, 86, '2025-12-22 18:55:57', '2025-12-22 13:55:57', '2025-12-22 18:55:57'),
(653, 78, 86, '2025-12-22 18:56:02', '2025-12-22 13:56:02', '2025-12-22 18:56:02'),
(654, 78, 86, '2025-12-22 18:56:06', '2025-12-22 13:56:06', '2025-12-22 18:56:06'),
(655, 78, 86, '2025-12-23 09:42:42', '2025-12-23 04:42:42', '2025-12-23 09:42:42'),
(656, 87, 86, '2025-12-23 09:42:58', '2025-12-23 04:42:58', '2025-12-23 09:42:58'),
(657, 87, 86, '2025-12-23 09:43:12', '2025-12-23 04:43:12', '2025-12-23 09:43:12'),
(658, 78, 86, '2025-12-23 09:43:20', '2025-12-23 04:43:20', '2025-12-23 09:43:20'),
(659, 87, 86, '2025-12-23 09:43:26', '2025-12-23 04:43:26', '2025-12-23 09:43:26'),
(660, 87, 86, '2025-12-23 09:51:35', '2025-12-23 04:51:35', '2025-12-23 09:51:35'),
(661, 86, 87, '2025-12-23 09:54:35', '2025-12-23 04:54:35', '2025-12-23 09:54:35'),
(662, 85, 87, '2025-12-23 09:54:39', '2025-12-23 04:54:39', '2025-12-23 09:54:39'),
(663, 82, 87, '2025-12-23 09:54:43', '2025-12-23 04:54:43', '2025-12-23 09:54:43'),
(664, 82, 87, '2025-12-23 09:54:49', '2025-12-23 04:54:49', '2025-12-23 09:54:49'),
(665, 82, 87, '2025-12-23 09:55:19', '2025-12-23 04:55:19', '2025-12-23 09:55:19'),
(666, 86, 87, '2025-12-23 09:55:29', '2025-12-23 04:55:29', '2025-12-23 09:55:29'),
(667, 86, 87, '2025-12-23 09:55:46', '2025-12-23 04:55:46', '2025-12-23 09:55:46'),
(668, 87, 86, '2025-12-23 10:02:59', '2025-12-23 05:02:59', '2025-12-23 10:02:59'),
(669, 86, 87, '2025-12-23 10:08:25', '2025-12-23 05:08:25', '2025-12-23 10:08:25'),
(670, 86, 87, '2025-12-23 10:15:18', '2025-12-23 05:15:18', '2025-12-23 10:15:18'),
(671, 86, 87, '2025-12-23 10:16:44', '2025-12-23 05:16:44', '2025-12-23 10:16:44'),
(672, 86, 87, '2025-12-23 10:16:54', '2025-12-23 05:16:54', '2025-12-23 10:16:54'),
(673, 86, 87, '2025-12-23 10:18:59', '2025-12-23 05:18:59', '2025-12-23 10:18:59'),
(674, 78, 86, '2025-12-23 10:21:28', '2025-12-23 05:21:28', '2025-12-23 10:21:28'),
(675, 85, 87, '2025-12-23 10:21:39', '2025-12-23 05:21:39', '2025-12-23 10:21:39'),
(676, 86, 87, '2025-12-23 10:22:12', '2025-12-23 05:22:12', '2025-12-23 10:22:12'),
(677, 86, 87, '2025-12-23 10:22:15', '2025-12-23 05:22:15', '2025-12-23 10:22:15'),
(678, 86, 87, '2025-12-23 10:22:24', '2025-12-23 05:22:24', '2025-12-23 10:22:24'),
(679, 86, 87, '2025-12-23 10:22:47', '2025-12-23 05:22:47', '2025-12-23 10:22:47'),
(680, 86, 87, '2025-12-23 10:23:36', '2025-12-23 05:23:36', '2025-12-23 10:23:36'),
(681, 86, 87, '2025-12-23 10:24:59', '2025-12-23 05:24:59', '2025-12-23 10:24:59'),
(682, 86, 87, '2025-12-23 10:25:05', '2025-12-23 05:25:05', '2025-12-23 10:25:05'),
(683, 86, 87, '2025-12-23 10:25:08', '2025-12-23 05:25:08', '2025-12-23 10:25:08'),
(684, 87, 86, '2025-12-23 10:25:39', '2025-12-23 05:25:39', '2025-12-23 10:25:39'),
(685, 87, 86, '2025-12-23 10:25:42', '2025-12-23 05:25:42', '2025-12-23 10:25:42'),
(686, 87, 86, '2025-12-23 10:25:44', '2025-12-23 05:25:44', '2025-12-23 10:25:44'),
(687, 86, 87, '2025-12-23 10:26:50', '2025-12-23 05:26:50', '2025-12-23 10:26:50'),
(688, 86, 87, '2025-12-23 10:26:58', '2025-12-23 05:26:58', '2025-12-23 10:26:58'),
(689, 86, 87, '2025-12-23 13:01:45', '2025-12-23 08:01:45', '2025-12-23 13:01:45'),
(690, 78, 86, '2025-12-23 13:07:48', '2025-12-23 08:07:48', '2025-12-23 13:07:48'),
(691, 87, 86, '2025-12-23 13:08:04', '2025-12-23 08:08:04', '2025-12-23 13:08:04'),
(692, 87, 86, '2025-12-23 13:08:13', '2025-12-23 08:08:13', '2025-12-23 13:08:13'),
(693, 87, 86, '2025-12-26 06:55:40', '2025-12-26 12:55:40', '2025-12-26 06:55:40'),
(694, 87, 86, '2025-12-26 07:15:15', '2025-12-26 13:15:15', '2025-12-26 07:15:15');

-- --------------------------------------------------------

--
-- Table structure for table `zodiac_signs`
--

CREATE TABLE `zodiac_signs` (
  `id` int(11) NOT NULL,
  `Zodiac_Signs` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `zodiac_signs`
--

INSERT INTO `zodiac_signs` (`id`, `Zodiac_Signs`, `created_at`, `deleted_at`) VALUES
(1, 'Aries', '2025-09-19 13:51:31', '2025-09-19 13:51:31'),
(2, 'Taurus', '2025-09-19 13:51:31', '2025-09-19 13:51:31'),
(3, 'Gemini', '2025-09-19 13:51:31', '2025-09-19 13:51:31'),
(4, 'Cancer', '2025-09-19 13:51:31', '2025-09-19 13:51:31'),
(5, 'Leo', '2025-09-19 13:51:31', '2025-09-19 13:51:31'),
(6, 'Virgo', '2025-09-19 13:51:31', '2025-09-19 13:51:31'),
(7, 'Libra', '2025-09-19 13:51:31', '2025-09-19 13:51:31'),
(8, 'Scorpio', '2025-09-19 13:51:31', '2025-09-19 13:51:31'),
(9, 'Sagittarius', '2025-09-19 13:51:31', '2025-09-19 13:51:31'),
(10, 'Capricorn', '2025-09-19 13:51:31', '2025-09-19 13:51:31'),
(11, 'Aquarius', '2025-09-19 13:51:31', '2025-09-19 13:51:31'),
(12, 'Pisces', '2025-09-19 13:51:31', '2025-09-19 13:51:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_settings_setting_key_unique` (`setting_key`);

--
-- Indexes for table `blocked_users`
--
ALTER TABLE `blocked_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `body_types`
--
ALTER TABLE `body_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `citys`
--
ALTER TABLE `citys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_codes`
--
ALTER TABLE `country_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_info`
--
ALTER TABLE `device_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fav_user`
--
ALTER TABLE `fav_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hear_about_us`
--
ALTER TABLE `hear_about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_rating`
--
ALTER TABLE `image_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `looking_for`
--
ALTER TABLE `looking_for`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nationalitys`
--
ALTER TABLE `nationalitys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `privacy_policy`
--
ALTER TABLE `privacy_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate_user_profile`
--
ALTER TABLE `rate_user_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_reason`
--
ALTER TABLE `report_reason`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_user`
--
ALTER TABLE `report_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seen_statuses`
--
ALTER TABLE `seen_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sexual_orientations`
--
ALTER TABLE `sexual_orientations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_request`
--
ALTER TABLE `support_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_condition`
--
ALTER TABLE `terms_condition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_images`
--
ALTER TABLE `user_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_intrest`
--
ALTER TABLE `user_intrest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_like`
--
ALTER TABLE `user_like`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_rating`
--
ALTER TABLE `user_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_statuses`
--
ALTER TABLE `user_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_suggestions`
--
ALTER TABLE `user_suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `view_table`
--
ALTER TABLE `view_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zodiac_signs`
--
ALTER TABLE `zodiac_signs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blocked_users`
--
ALTER TABLE `blocked_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `body_types`
--
ALTER TABLE `body_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `citys`
--
ALTER TABLE `citys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `country_codes`
--
ALTER TABLE `country_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `device_info`
--
ALTER TABLE `device_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fav_user`
--
ALTER TABLE `fav_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `hear_about_us`
--
ALTER TABLE `hear_about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `image_rating`
--
ALTER TABLE `image_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `looking_for`
--
ALTER TABLE `looking_for`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `nationalitys`
--
ALTER TABLE `nationalitys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `privacy_policy`
--
ALTER TABLE `privacy_policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rate_user_profile`
--
ALTER TABLE `rate_user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `report_reason`
--
ALTER TABLE `report_reason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `report_user`
--
ALTER TABLE `report_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `seen_statuses`
--
ALTER TABLE `seen_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `sexual_orientations`
--
ALTER TABLE `sexual_orientations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `support_request`
--
ALTER TABLE `support_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `terms_condition`
--
ALTER TABLE `terms_condition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=605;

--
-- AUTO_INCREMENT for table `user_images`
--
ALTER TABLE `user_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `user_intrest`
--
ALTER TABLE `user_intrest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `user_like`
--
ALTER TABLE `user_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `user_rating`
--
ALTER TABLE `user_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user_statuses`
--
ALTER TABLE `user_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_suggestions`
--
ALTER TABLE `user_suggestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `view_table`
--
ALTER TABLE `view_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=695;

--
-- AUTO_INCREMENT for table `zodiac_signs`
--
ALTER TABLE `zodiac_signs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

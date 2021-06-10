-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 19, 2021 at 08:10 AM
-- Server version: 8.0.21
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `refuel`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `key`, `value`) VALUES
(7, 'date_format', 'l jS F Y (H:i:s)'),
(8, 'language', 'en'),
(17, 'is_human_date_format', '1'),
(18, 'app_name', 'Refuel-Nathi 365'),
(19, 'app_short_description', 'Mobile Fuel Delivery Service'),
(20, 'mail_driver', 'smtp'),
(21, 'mail_host', 'smtp-relay.sendinblue.com'),
(22, 'mail_port', '587'),
(23, 'mail_username', 'shaun@itslearnable.co.za'),
(24, 'mail_password', 'f06sWM8jmc95Rxab'),
(25, 'mail_encryption', 'ssl'),
(26, 'mail_from_address', 'no-reply@tuma.health'),
(27, 'mail_from_name', 'Tuma.Delivery'),
(30, 'timezone', 'America/Montserrat'),
(32, 'theme_contrast', 'light'),
(33, 'theme_color', 'primary'),
(34, 'app_logo', '3593c769-684c-43c1-9083-e1cee5bf5ab1'),
(35, 'nav_color', 'navbar-light bg-dark'),
(38, 'logo_bg_color', 'bg-white'),
(66, 'default_role', 'admin'),
(68, 'facebook_app_id', '518416208939727'),
(69, 'facebook_app_secret', '93649810f78fa9ca0d48972fee2a75cd'),
(71, 'twitter_app_id', 'twitter'),
(72, 'twitter_app_secret', 'twitter 1'),
(74, 'google_app_id', '527129559488-roolg8aq110p8r1q952fqa9tm06gbloe.apps.googleusercontent.com'),
(75, 'google_app_secret', 'FpIi8SLgc69ZWodk-xHaOrxn'),
(77, 'enable_google', '0'),
(78, 'enable_facebook', '0'),
(93, 'enable_stripe', '1'),
(94, 'stripe_key', 'pk_test_HH1sSgd72t69Q3MtqqGb0cHa'),
(95, 'stripe_secret', 'sk_test_S0xoTp5c53cufGMDmnBMfTqp'),
(101, 'custom_field_models.0', 'App\\Models\\User'),
(104, 'default_tax', '10'),
(107, 'default_currency', 'R'),
(108, 'fixed_header', '0'),
(109, 'fixed_footer', '0'),
(110, 'fcm_key', 'AAAAHMZiAQA:APA91bEb71b5sN5jl-w_mmt6vLfgGY5-_CQFxMQsVEfcwO3FAh4-mk1dM6siZwwR3Ls9U0pRDpm96WN1AmrMHQ906GxljILqgU2ZB6Y1TjiLyAiIUETpu7pQFyicER8KLvM9JUiXcfWK'),
(111, 'enable_notifications', '1'),
(112, 'paypal_username', 'sb-z3gdq482047_api1.business.example.com'),
(113, 'paypal_password', 'JV2A7G4SEMLMZ565'),
(114, 'paypal_secret', 'AbMmSXVaig1ExpY3utVS3dcAjx7nAHH0utrZsUN6LYwPgo7wfMzrV5WZ'),
(115, 'enable_paypal', '0'),
(116, 'main_color', '#a68a2f'),
(117, 'main_dark_color', '#a68a2f'),
(118, 'second_color', '#043832'),
(119, 'second_dark_color', '#2c2c2c'),
(120, 'accent_color', '#a68a2f'),
(121, 'accent_dark_color', '#9999aa'),
(122, 'scaffold_dark_color', '#2c2c2c'),
(123, 'scaffold_color', '#fafafa'),
(124, 'google_maps_key', 'AIzaSyCSxharNGnLOvce_MwJGpF6cBMlE-rsYbs'),
(125, 'mobile_language', 'en'),
(126, 'app_version', '1.9.0'),
(127, 'enable_version', '1'),
(128, 'default_currency_id', '8'),
(129, 'default_currency_code', 'RAND'),
(130, 'default_currency_decimal_digits', '2'),
(131, 'default_currency_rounding', '0'),
(132, 'currency_right', '0'),
(157, 'paypal_mode', '0'),
(158, 'paypal_app_id', '0'),
(159, 'distance_unit', 'km'),
(160, 'home_section_1', 'slider'),
(161, 'home_section_2', 'categories'),
(162, 'home_section_3', 'top_markets_heading'),
(163, 'home_section_4', 'top_markets'),
(164, 'home_section_5', 'popular'),
(165, 'home_section_6', 'empty'),
(166, 'home_section_7', 'empty'),
(167, 'home_section_8', 'empty'),
(168, 'home_section_9', 'empty'),
(169, 'home_section_10', 'empty'),
(170, 'home_section_11', 'empty'),
(171, 'home_section_12', 'empty'),
(172, 'enable_twitter', '0'),
(173, 'firebase_api_key', '0'),
(174, 'firebase_auth_domain', '0'),
(175, 'firebase_database_url', '0'),
(176, 'firebase_project_id', '0'),
(177, 'firebase_storage_bucket', '0'),
(178, 'firebase_messaging_sender_id', '0'),
(179, 'firebase_app_id', '0'),
(180, 'firebase_measurement_id', '0');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `quantity` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_fee` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `quantity`, `created_at`, `updated_at`, `delivery_fee`) VALUES
(24, 41, 7, 2, '2021-03-02 19:56:54', '2021-03-04 14:08:33', 14.37),
(26, 2, 8, 1, '2021-03-04 05:50:57', '2021-03-04 05:50:57', 3.5),
(27, 2, 8, 1, '2021-03-04 05:50:58', '2021-03-04 05:50:58', 3.5),
(217, 45, 1, 2, '2021-03-30 09:10:58', '2021-03-30 09:18:10', 0),
(245, 44, 20, 1, '2021-04-14 13:39:07', '2021-04-14 13:39:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart_options`
--

CREATE TABLE `cart_options` (
  `option_id` int UNSIGNED NOT NULL,
  `cart_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(7, 'Petrol', 'Aliquam enim vero a enim. Id voluptas vitae voluptates quisquam voluptatum. Porro itaque quia debitis ex ad voluptas. Placeat est nihil quisquam error est in veniam. Odit molestias cupiditate qui facilis.', '2021-02-24 04:32:44', '2021-02-25 14:33:23'),
(8, 'Diesel', 'Aliquam enim vero a enim. Id voluptas vitae voluptates quisquam voluptatum. Porro itaque quia debitis ex ad voluptas. Placeat est nihil quisquam error est in veniam. Odit molestias cupiditate qui facilis.', '2021-02-24 04:32:44', '2021-02-25 14:33:23'),
(9, 'LPG ', 'Aliquam enim vero a enim. Id voluptas vitae voluptates quisquam voluptatum. Porro itaque quia debitis ex ad voluptas. Placeat est nihil quisquam error est in veniam. Odit molestias cupiditate qui facilis.', '2021-02-24 04:32:44', '2021-02-25 14:33:23'),
(10, 'Jet Fue', 'Aliquam enim vero a enim. Id voluptas vitae voluptates quisquam voluptatum. Porro itaque quia debitis ex ad voluptas. Placeat est nihil quisquam error est in veniam. Odit molestias cupiditate qui facilis.', '2021-02-24 04:32:44', '2021-02-25 14:33:23');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `expires_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `decimal_digits` tinyint UNSIGNED DEFAULT NULL,
  `rounding` tinyint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `decimal_digits`, `rounding`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', '$', 'USD', 2, 0, '2019-10-22 13:50:48', '2019-10-22 13:50:48'),
(2, 'Euro', '€', 'EUR', 2, 0, '2019-10-22 13:51:39', '2019-10-22 13:51:39'),
(3, 'Indian Rupee', 'টকা', 'INR', 2, 0, '2019-10-22 13:52:50', '2019-10-22 13:52:50'),
(4, 'Indonesian Rupiah', 'Rp', 'IDR', 0, 0, '2019-10-22 13:53:22', '2019-10-22 13:53:22'),
(5, 'Brazilian Real', 'R$', 'BRL', 2, 0, '2019-10-22 13:54:00', '2019-10-22 13:54:00'),
(6, 'Cambodian Riel', '៛', 'KHR', 2, 0, '2019-10-22 13:55:51', '2019-10-22 13:55:51'),
(7, 'Vietnamese Dong', '₫', 'VND', 0, 0, '2019-10-22 13:56:26', '2019-10-22 13:56:26'),
(8, 'Rand', 'R', 'RAND', 2, 0, '2019-10-22 13:56:26', '2019-10-22 13:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(56) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `values` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `in_table` tinyint(1) DEFAULT NULL,
  `bootstrap_column` tinyint DEFAULT NULL,
  `order` tinyint DEFAULT NULL,
  `custom_field_model` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `type`, `values`, `disabled`, `required`, `in_table`, `bootstrap_column`, `order`, `custom_field_model`, `created_at`, `updated_at`) VALUES
(4, 'phone', 'text', NULL, 0, 0, 0, 6, 2, 'App\\Models\\User', '2019-09-06 19:30:00', '2019-09-06 19:31:47'),
(5, 'bio', 'textarea', NULL, 0, 0, 0, 6, 1, 'App\\Models\\User', '2019-09-06 19:43:58', '2019-09-06 19:43:58'),
(6, 'address', 'text', NULL, 0, 0, 0, 6, 3, 'App\\Models\\User', '2019-09-06 19:49:22', '2019-09-06 19:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int UNSIGNED NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `view` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `custom_field_id` int UNSIGNED NOT NULL,
  `customizable_type` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customizable_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_field_values`
--

INSERT INTO `custom_field_values` (`id`, `value`, `view`, `custom_field_id`, `customizable_type`, `customizable_id`, `created_at`, `updated_at`) VALUES
(29, '+136 226 5669', '+136 226 5669', 4, 'App\\Models\\User', 2, '2019-09-06 19:52:30', '2019-09-06 19:52:30'),
(30, 'Lobortis mattis aliquam faucibus purus. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Nunc vel risus commodo viverra maecenas accumsan lacus vel.', 'Lobortis mattis aliquam faucibus purus. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Nunc vel risus commodo viverra maecenas accumsan lacus vel.', 5, 'App\\Models\\User', 2, '2019-09-06 19:52:30', '2019-10-16 17:32:35'),
(31, '2911 Corpening Drive South Lyon, MI 48178', '2911 Corpening Drive South Lyon, MI 48178', 6, 'App\\Models\\User', 2, '2019-09-06 19:52:30', '2019-10-16 17:32:35'),
(32, '+27824208001', '+27824208001', 4, 'App\\Models\\User', 1, '2019-09-06 19:53:58', '2021-02-28 12:37:50'),
(33, 'Tuma.Delivery management account.', 'Tuma.Delivery management account.', 5, 'App\\Models\\User', 1, '2019-09-06 19:53:58', '2021-02-28 12:38:31'),
(34, '569 Braxton Street Cortland, IL 60112', '569 Braxton Street Cortland, IL 60112', 6, 'App\\Models\\User', 1, '2019-09-06 19:53:58', '2019-10-16 17:23:53'),
(35, '+1 098-6543-236', '+1 098-6543-236', 4, 'App\\Models\\User', 3, '2019-10-15 15:21:32', '2019-10-17 21:21:43'),
(36, 'Aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Tortor pretium viverra suspendisse', 'Aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Tortor pretium viverra suspendisse', 5, 'App\\Models\\User', 3, '2019-10-15 15:21:32', '2019-10-17 21:21:12'),
(37, '1850 Big Elm Kansas City, MO 64106', '1850 Big Elm Kansas City, MO 64106', 6, 'App\\Models\\User', 3, '2019-10-15 15:21:32', '2019-10-17 21:21:43'),
(38, '+1 248-437-7610', '+1 248-437-7610', 4, 'App\\Models\\User', 4, '2019-10-16 17:31:46', '2019-10-16 17:31:46'),
(39, 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 5, 'App\\Models\\User', 4, '2019-10-16 17:31:46', '2019-10-16 17:31:46'),
(40, '1050 Frosty Lane Sidney, NY 13838', '1050 Frosty Lane Sidney, NY 13838', 6, 'App\\Models\\User', 4, '2019-10-16 17:31:46', '2019-10-16 17:31:46'),
(41, '+136 226 5669', '+136 226 5669', 4, 'App\\Models\\User', 5, '2019-12-15 16:49:44', '2019-12-15 16:49:44'),
(42, '<p>Short Bio</p>', 'Short Bio', 5, 'App\\Models\\User', 5, '2019-12-15 16:49:44', '2019-12-15 16:49:44'),
(43, '4722 Villa Drive', '4722 Villa Drive', 6, 'App\\Models\\User', 5, '2019-12-15 16:49:44', '2019-12-15 16:49:44'),
(44, '+136 955 6525', '+136 955 6525', 4, 'App\\Models\\User', 6, '2020-03-29 15:28:04', '2020-03-29 15:28:04'),
(45, '<p>Short bio for this driver</p>', 'Short bio for this driver', 5, 'App\\Models\\User', 6, '2020-03-29 15:28:05', '2020-03-29 15:28:05'),
(46, '4722 Villa Drive', '4722 Villa Drive', 6, 'App\\Models\\User', 6, '2020-03-29 15:28:05', '2020-03-29 15:28:05'),
(47, '+27824208001', '+27824208001', 4, 'App\\Models\\User', 9, '2021-02-25 11:22:17', '2021-02-25 11:22:17'),
(48, 'nothing', 'nothing', 5, 'App\\Models\\User', 7, '2021-02-25 11:22:17', '2021-02-25 11:22:17'),
(49, '45 green grove harare', '45 green grove harare', 6, 'App\\Models\\User', 7, '2021-02-25 11:22:17', '2021-02-25 11:22:17'),
(50, '0678971105', '0678971105', 4, 'App\\Models\\User', 9, '2021-03-02 11:39:14', '2021-03-02 11:39:14'),
(51, NULL, '', 5, 'App\\Models\\User', 9, '2021-03-02 11:39:14', '2021-03-02 11:39:14'),
(52, '0b Leeuwkop Road', '0b Leeuwkop Road', 6, 'App\\Models\\User', 9, '2021-03-02 11:39:14', '2021-03-02 11:39:14'),
(53, '+447539068869', '+447539068869', 4, 'App\\Models\\User', 8, '2021-03-02 14:38:09', '2021-03-02 14:38:09'),
(54, NULL, '', 5, 'App\\Models\\User', 8, '2021-03-02 14:38:09', '2021-03-02 14:38:09'),
(55, NULL, NULL, 6, 'App\\Models\\User', 8, '2021-03-02 14:38:09', '2021-03-02 14:38:09'),
(56, '+27824208001', '+27824208001', 4, 'App\\Models\\User', 11, '2021-03-21 15:31:28', '2021-03-21 15:31:28'),
(57, 'nothing', 'nothing', 5, 'App\\Models\\User', 11, '2021-03-21 15:31:28', '2021-03-21 15:31:28'),
(58, '8 kikuyu road', '8 kikuyu road', 6, 'App\\Models\\User', 11, '2021-03-21 15:31:28', '2021-03-21 15:31:28'),
(59, '+27824208001', '+27824208001', 4, 'App\\Models\\User', 12, '2021-04-07 08:42:22', '2021-04-07 08:42:22'),
(60, 'nothing', 'nothing', 5, 'App\\Models\\User', 12, '2021-04-07 08:42:22', '2021-04-07 08:42:22'),
(61, '8 kikuyu road', '8 kikuyu road', 6, 'App\\Models\\User', 12, '2021-04-07 08:42:22', '2021-04-07 08:42:22'),
(62, '0678971105', '0678971105', 4, 'App\\Models\\User', 14, '2021-04-08 18:44:24', '2021-04-08 18:44:24'),
(63, 'I love my car', 'I love my car', 5, 'App\\Models\\User', 14, '2021-04-08 18:44:24', '2021-04-08 18:44:24'),
(64, '12 kikuyu road', '12 kikuyu road', 6, 'App\\Models\\User', 14, '2021-04-08 18:44:24', '2021-04-08 18:44:24'),
(65, '+27678971105', '+27678971105', 4, 'App\\Models\\User', 16, '2021-04-14 08:00:37', '2021-04-14 08:00:37'),
(66, '<p>Distributor account</p>', 'Distributor account', 5, 'App\\Models\\User', 16, '2021-04-14 08:00:37', '2021-04-14 08:00:37'),
(67, '0b Leeuwkop Road, Sandton', '0b Leeuwkop Road, Sandton', 6, 'App\\Models\\User', 16, '2021-04-14 08:00:37', '2021-04-14 08:00:37'),
(68, '+27678971105', '+27678971105', 4, 'App\\Models\\User', 17, '2021-04-14 12:25:31', '2021-04-14 12:25:31'),
(69, '<p>Distributor</p>', 'Distributor', 5, 'App\\Models\\User', 17, '2021-04-14 12:25:31', '2021-04-14 12:25:31'),
(70, '0b Leeuwkop Road, Sandton', '0b Leeuwkop Road, Sandton', 6, 'App\\Models\\User', 17, '2021-04-14 12:25:31', '2021-04-14 12:25:31'),
(71, NULL, NULL, 4, 'App\\Models\\User', 19, '2021-04-14 13:17:18', '2021-04-14 13:17:18'),
(72, NULL, '', 5, 'App\\Models\\User', 19, '2021-04-14 13:17:18', '2021-04-14 13:17:18'),
(73, NULL, NULL, 6, 'App\\Models\\User', 19, '2021-04-14 13:17:18', '2021-04-14 13:17:18'),
(74, '0678971105', '0678971105', 4, 'App\\Models\\User', 20, '2021-04-14 13:28:03', '2021-04-14 13:28:03'),
(75, 'Manager at Logistics Group', 'Manager at Logistics Group', 5, 'App\\Models\\User', 20, '2021-04-14 13:28:03', '2021-04-14 13:28:03'),
(76, '8 kikuyu', '8 kikuyu', 6, 'App\\Models\\User', 20, '2021-04-14 13:28:03', '2021-04-14 13:28:03');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` int UNSIGNED NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `description`, `address`, `latitude`, `longitude`, `is_default`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Non eligendi iste quisquam quia.', '4332 Larson Rapid\nBeattybury, NY 23771-4159', '-43.399671', '176.329881', 0, 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(2, 'Natus odit minima quod iure maiores repellendus officiis ut.', '369 Walton Fords Apt. 479\nNew Daphneyland, MT 72091-1294', '-38.763618', '-165.589084', 1, 1, '2021-02-24 04:32:46', '2021-03-11 09:21:27'),
(3, 'Temporibus veritatis at voluptatem perferendis mollitia velit.', '53151 Schmidt Vista Suite 211\nBashirianburgh, VA 81437-8195', '52.559326', '29.709896', 0, 2, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(4, 'Animi et facilis aperiam quo et ipsum voluptatem.', '9616 Zechariah Expressway Suite 556\nNorth Dorthyhaven, NM 90097', '12.157166', '-162.370895', 0, 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(5, 'Sit rerum non est omnis quos.', '2524 Cole Fork\nO\'Reillyhaven, DE 28873', '-4.870868', '-7.993032', 1, 5, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(6, 'Nobis inventore et et voluptatem quasi.', '174 Nakia Streets Apt. 010\nSengerbury, VA 02194', '11.296014', '87.489618', 1, 2, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(7, 'Consequuntur rem molestiae odit non dolor sapiente et.', '186 Casper Rue Suite 284\nMicahstad, AR 68380-8318', '41.176268', '-98.638708', 1, 5, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(8, 'Et ut nihil molestiae nihil incidunt.', '84189 Sonya Point Suite 689\nLueilwitzbury, TN 33193', '73.503179', '-175.401766', 1, 6, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(9, 'Sed est possimus ad nulla et nobis.', '993 Toy Manors Apt. 563\nEast Jennings, LA 40540-4705', '-74.355846', '160.870901', 0, 5, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(10, 'Qui distinctio vitae voluptates adipisci reprehenderit nulla consequatur similique.', '4022 Beahan Heights Apt. 992\nSouth Camilahaven, NH 58812', '-3.787307', '-46.702133', 0, 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(11, 'Assumenda aut sit aut qui esse.', '7560 Blanda Path Apt. 189\nNorth Cassandra, DE 65027-6196', '78.091045', '-7.115244', 1, 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(12, 'Cumque blanditiis necessitatibus rerum repudiandae dolorem in tempora.', '8741 Hackett Mission Suite 377\r\nNew Gusborough,NV 83888', '-17.8048923', '31.1240968', 0, 1, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(13, 'Doloremque facilis odit laudantium dignissimos.', '37816 Eliezer Court\nRosellaborough, FL 06953', '-15.319893', '155.985776', 1, 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(14, 'Sit ab sunt enim in odio illo rerum omnis.', '10250 Elwyn Stravenue\nQuintenberg, DE 99962', '43.651217', '45.563431', 0, 1, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(15, 'Possimus perspiciatis voluptatem non ea exercitationem blanditiis.', '184 Annabelle Course Suite 816\nJakubowskistad, ND 16930-1962', '-67.375206', '-87.577375', 1, 5, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(16, 'Possimus perspiciatis voluptatem non ea exercitationem blanditiis.', 'Stable Road, Harare, Zimbabwe', '-17.786023153456917', '31.083668991923332', 0, 7, '2021-02-25 14:25:28', '2021-02-25 14:25:28'),
(17, NULL, '2 Lee Rd, Harare, Zimbabwe', '-17.804892459044158', '31.12628560513258', 0, 12, '2021-02-26 05:41:18', '2021-04-07 08:50:10'),
(18, NULL, '45 Grove St, New York, NY 10014, USA', '40.73297990167375', '-74.00425929576159', 0, 1, '2021-03-02 11:46:24', '2021-03-02 11:46:24'),
(19, NULL, '81 Greengrove Dr, Harare, Zimbabwe', '-17.818249615245577', '31.132148914039135', 0, 1, '2021-03-02 11:50:35', '2021-03-02 11:50:35'),
(20, NULL, '62 Greendale Ave, Harare, Zimbabwe', '-17.825507291405632', '31.101594865322113', 0, 7, '2021-03-02 19:02:10', '2021-03-02 19:02:10'),
(21, 'Possimus perspiciatis voluptatem non ea exercitationem blanditiis.', '2 Lee Rd, Harare, Zimbabwe', '-17.80589607604786', '31.125842034816742', 0, 1, '2021-03-11 08:58:53', '2021-03-11 08:58:53'),
(22, 'Possimus perspiciatis voluptatem non ea exercitationem blanditiis.', '2 Lee Rd, Harare, Zimbabwe', '-17.80589607604786', '31.125842034816742', 0, 1, '2021-03-11 08:59:56', '2021-03-11 08:59:56'),
(23, 'Possimus perspiciatis voluptatem non ea exercitationem blanditiis.', '2 Lee Rd, Harare, Zimbabwe', '-17.80589607604786', '31.125842034816742', 0, 1, '2021-03-11 09:06:13', '2021-03-11 09:06:13'),
(24, 'Possimus perspiciatis voluptatem non ea exercitationem blanditiis.', '2 Lee Rd, Harare, Zimbabwe', '-17.80589607604786', '31.125842034816742', 0, 1, '2021-03-11 09:07:04', '2021-03-11 09:07:04'),
(25, 'Possimus perspiciatis voluptatem non ea exercitationem blanditiis.', '2 Lee Rd, Harare, Zimbabwe', '-17.80589607604786', '31.125842034816742', 0, 1, '2021-03-11 09:11:46', '2021-03-11 09:11:46'),
(26, 'Possimus perspiciatis voluptatem non ea exercitationem blanditiis.', '2 Lee Rd, Harare, Zimbabwe', '-17.80589607604786', '31.125842034816742', 0, 1, '2021-03-11 09:12:10', '2021-03-11 09:12:10'),
(27, 'Possimus perspiciatis voluptatem non ea exercitationem blanditiis.', '2 Lee Rd, Harare, Zimbabwe', '-17.80589607604786', '31.125842034816742', 0, 1, '2021-03-11 09:13:46', '2021-03-11 09:13:46'),
(28, NULL, '81 Greengrove Dr, Harare, Zimbabwe', '-17.818249615245577', '31.132148914039135', 0, 1, '2021-03-11 09:17:04', '2021-03-11 09:17:04'),
(29, NULL, '81 Greengrove Dr, Harare, Zimbabwe', '-17.818249615245577', '31.132148914039135', 0, 1, '2021-03-11 09:19:03', '2021-03-11 09:19:03'),
(30, NULL, '81 Greengrove Dr, Harare, Zimbabwe', '-17.818249615245577', '31.132148914039135', 0, 1, '2021-03-11 09:21:27', '2021-03-11 09:21:27'),
(31, 'Natus odit minima quod iure maiores repellendus officiis ut.', '369 Walton Fords Apt. 479\nNew Daphneyland, MT 72091-1294', '-38.763618', '-165.589084', 1, 1, '2021-03-11 09:27:26', '2021-03-11 09:27:26'),
(32, 'Possimus perspiciatis voluptatem non ea exercitationem blanditiis.', '2 Lee Rd, Harare, Zimbabwe', '-17.80589607604786', '31.125842034816742', 0, 1, '2021-03-11 09:36:38', '2021-03-11 09:36:38'),
(33, 'Possimus perspiciatis voluptatem non ea exercitationem blanditiis.', '2 Lee Rd, Harare, Zimbabwe', '-17.80589607604786', '31.125842034816742', 0, 1, '2021-03-11 11:57:25', '2021-03-11 11:57:25'),
(34, NULL, '81 Greengrove Dr, Harare, Zimbabwe', '-17.818249615245577', '31.132148914039135', 0, 1, '2021-03-12 07:21:54', '2021-03-12 07:21:54'),
(35, NULL, '2 Lee Road Harare', '-17.8048872', '31.1240915', NULL, 1, '2021-03-17 10:18:00', '2021-03-17 10:18:00'),
(36, NULL, '2 Lee Road Harare', '-17.8048872', '31.1240915', NULL, 1, '2021-03-17 10:37:13', '2021-03-17 10:37:13'),
(37, NULL, '2 Lee Road Harare', '-17.8048872', '31.1240915', NULL, 1, '2021-03-17 10:38:48', '2021-03-17 10:38:48'),
(38, NULL, '2 Lee Road Harare', '-17.8048872', '31.1240915', NULL, 1, '2021-03-17 10:40:21', '2021-03-17 10:40:21'),
(39, NULL, '2 Lee Road Harare', '-17.8048872', '31.1240915', NULL, 1, '2021-03-17 10:40:27', '2021-03-17 10:40:27'),
(40, NULL, '2 Lee Road Harare', '-17.8048872', '31.1240915', NULL, 1, '2021-03-17 10:48:45', '2021-03-17 10:48:45'),
(41, NULL, '2 Lee Road Harare', '-17.8048872', '31.1240915', NULL, 1, '2021-03-17 11:00:24', '2021-03-17 11:00:24'),
(42, NULL, '2 Lee Road Harare', '-17.8048872', '31.1240915', NULL, 1, '2021-03-17 11:01:58', '2021-03-17 11:01:58'),
(43, NULL, '2 Lee Road Harare', '-17.8048872', '31.1240915', NULL, 1, '2021-03-17 11:06:59', '2021-03-17 11:06:59'),
(44, NULL, '2 Lee Road Harare', '-17.8048872', '31.1240915', NULL, 1, '2021-03-17 11:11:10', '2021-03-17 11:11:10'),
(45, NULL, '2 Lee Road Harare', '-17.8048872', '31.1240915', NULL, 1, '2021-03-17 11:11:26', '2021-03-17 11:11:26'),
(46, NULL, '2 Lee Road Harare', '-17.8048872', '31.1240915', NULL, 1, '2021-03-17 11:11:27', '2021-03-17 11:11:27'),
(47, NULL, '2 Lee Road Harare', '-17.8048872', '31.1240915', NULL, 1, '2021-03-17 11:12:51', '2021-03-17 11:12:51'),
(48, NULL, '2 Lee Road Harare', '-17.8048872', '31.1240915', NULL, 1, '2021-03-17 11:14:02', '2021-03-17 11:14:02'),
(49, NULL, '2 Lee Road Harare', '-17.8048872', '31.1240915', 0, 1, '2021-03-17 12:17:50', '2021-03-19 13:23:53'),
(50, NULL, '2 Lee Road Harare', '-17.8048872', '31.1240915', NULL, 1, '2021-03-19 13:23:54', '2021-03-19 13:23:54'),
(51, NULL, '2 Lee Road Harare', '-17.8048872', '31.1240915', NULL, 1, '2021-03-20 07:44:07', '2021-03-20 07:44:07'),
(52, NULL, '8 Kikuyu Rd, Sunninghill, Sandton, 2157, South Africa', '-26.033624165638876', '28.06272078305483', 0, 14, '2021-03-21 05:33:27', '2021-04-08 11:32:53'),
(53, NULL, '721 Leeuwkop Rd, Paulshof, Sandton, 2191, South Africa', '-26.030142777895136', '28.062821701169014', 0, 1, '2021-03-23 05:44:14', '2021-03-23 05:44:14'),
(54, NULL, '3790 S Las Vegas Blvd, Las Vegas, NV 89109, USA', '36.102132104200855', '-115.17442256212234', 0, 1, '2021-03-25 14:55:35', '2021-03-25 14:55:35'),
(55, NULL, 'Shop 54 Airport Junction, Gaborone, Botswana', '-24.628207778354227', '25.92314712703228', 0, 1, '2021-03-26 01:56:54', '2021-03-26 01:56:54'),
(56, NULL, '15 Tambach Road, Sunninghill, Sandton, 2191, South Africa', '-26.030370836658175', '28.06063301861286', 0, 12, '2021-03-26 04:15:25', '2021-04-07 05:38:15'),
(57, NULL, 'Rainbow Rd, Glen Austin AH, Midrand, 1632, South Africa', '-25.981217999995465', '28.16842194646597', 0, 1, '2021-03-26 04:48:58', '2021-03-26 04:48:58'),
(58, NULL, '50 West 4th Street, New York, NY 10012, USA', '40.72951343781935', '-73.99646077305079', 0, 12, '2021-04-07 10:36:54', '2021-04-07 10:36:54'),
(59, NULL, 'Plot 60551, Block 7, Gaborone, Botswana', '-24.658788957390605', '25.91615628451109', 0, 12, '2021-04-07 11:04:27', '2021-04-07 11:04:27'),
(60, NULL, NULL, '0', '0', 0, 14, '2021-04-07 15:45:26', '2021-04-11 23:59:53'),
(61, NULL, '46 Pieter Acroyd Ave, Bassonia, Johannesburg South, 2061, South Africa', '-26.272388200526937', '28.059771358966827', 0, 15, '2021-04-07 15:46:35', '2021-04-09 06:42:22'),
(62, NULL, '569 Rooigras St, Waterkloof Glen, Pretoria, 0010, South Africa', '-25.794158502477366', '28.2840633764863', 0, 14, '2021-04-08 11:30:08', '2021-04-08 11:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `discountables`
--

CREATE TABLE `discountables` (
  `id` int UNSIGNED NOT NULL,
  `coupon_id` int UNSIGNED NOT NULL,
  `discountable_type` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discountable_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint UNSIGNED NOT NULL,
  `discount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `discount`, `created_at`, `updated_at`) VALUES
(1, 5.7, '2021-03-11 11:56:54', '2021-03-04 11:56:54');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `delivery_fee` double(5,2) NOT NULL DEFAULT '0.00',
  `total_orders` int UNSIGNED NOT NULL DEFAULT '0',
  `earning` double(9,2) NOT NULL DEFAULT '0.00',
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `carmodel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `plate` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `carimage` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `user_id`, `delivery_fee`, `total_orders`, `earning`, `available`, `created_at`, `updated_at`, `carmodel`, `plate`, `carimage`) VALUES
(1, 5, 0.00, 0, 0.00, 0, '2021-02-28 12:49:09', '2021-02-28 12:49:09', 'Toyota Corrola', 'ACM 2472', ''),
(2, 6, 0.00, 0, 0.00, 0, '2021-02-28 12:49:09', '2021-02-28 12:49:09', 'Toyota Avensis', 'AFF 1234', '');

-- --------------------------------------------------------

--
-- Table structure for table `drivers_payouts`
--

CREATE TABLE `drivers_payouts` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `method` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(9,2) NOT NULL DEFAULT '0.00',
  `paid_date` datetime DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_locations`
--

CREATE TABLE `driver_locations` (
  `id` int UNSIGNED NOT NULL,
  `driver_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_locations`
--

INSERT INTO `driver_locations` (`id`, `driver_id`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, '6', '-17.807189', '31.128875', '2021-03-02 15:06:07', '2021-03-03 15:06:07'),
(2, '5', '-17.807189', '31.128875', '2021-03-02 15:06:07', '2021-03-03 15:06:07');

-- --------------------------------------------------------

--
-- Table structure for table `driver_markets`
--

CREATE TABLE `driver_markets` (
  `user_id` int UNSIGNED NOT NULL,
  `market_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_markets`
--

INSERT INTO `driver_markets` (`user_id`, `market_id`) VALUES
(5, 1),
(5, 2),
(6, 2),
(6, 3),
(5, 4),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` int UNSIGNED NOT NULL,
  `market_id` int UNSIGNED NOT NULL,
  `total_orders` int UNSIGNED NOT NULL DEFAULT '0',
  `total_earning` double(9,2) NOT NULL DEFAULT '0.00',
  `admin_earning` double(9,2) NOT NULL DEFAULT '0.00',
  `market_earning` double(9,2) NOT NULL DEFAULT '0.00',
  `delivery_fee` double(9,2) NOT NULL DEFAULT '0.00',
  `tax` double(9,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `earnings`
--

INSERT INTO `earnings` (`id`, `market_id`, `total_orders`, `total_earning`, `admin_earning`, `market_earning`, `delivery_fee`, `tax`, `created_at`, `updated_at`) VALUES
(1, 3, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-02-25 14:18:23', '2021-02-25 14:18:23'),
(2, 4, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-02-25 14:20:18', '2021-02-25 14:20:18'),
(3, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-02-25 14:21:05', '2021-02-25 14:21:05'),
(4, 5, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-02-25 14:21:41', '2021-02-25 14:21:41'),
(5, 12, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-12 01:37:17', '2021-04-12 01:37:17');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int UNSIGNED NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `faq_category_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `faq_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Blanditiis impedit sed sed ut inventore cum aut. Sit est qui voluptatum quia est ea.', 'I ever saw in my life!\' Just as she went to school in the pool rippling to the other: the Duchess asked, with another hedgehog, which seemed to quiver all over their heads. She felt very curious.', 2, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(2, 'Earum blanditiis soluta eaque dolor eum. Quisquam numquam veritatis incidunt.', 'Duck. \'Found IT,\' the Mouse was bristling all over, and she thought it must be removed,\' said the Mock Turtle. \'Certainly not!\' said Alice in a sulky tone, as it spoke (it was Bill, I fancy--Who\'s.', 1, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(3, 'A consequatur quia sint et id. Consequuntur aperiam veniam dolor enim.', 'I\'m talking!\' Just then she had never left off quarrelling with the name of the room again, no wonder she felt very lonely and low-spirited. In a little anxiously. \'Yes,\' said Alice, (she had grown.', 2, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(4, 'Qui quia nobis rem qui. Ea autem non facilis deserunt hic aut debitis. Odio et itaque qui aliquam.', 'While the Duchess by this very sudden change, but she had plenty of time as she could. \'No,\' said Alice. \'What IS the same size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the Mock.', 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(5, 'Nemo voluptatum qui ab. Ad ducimus a iste iure. Magni fuga voluptates et maxime.', 'Alice was beginning to write with one finger for the Duchess replied, in a pleased tone. \'Pray don\'t trouble yourself to say whether the blows hurt it or not. So she swallowed one of the ground.', 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(6, 'Est voluptate quidem repellendus quisquam odit. Iure dolorum rem natus quidem ratione.', 'Alice after it, \'Mouse dear! Do come back in a piteous tone. And she opened it, and fortunately was just saying to herself \'This is Bill,\' she gave a little three-legged table, all made of solid.', 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(7, 'Enim quo quia quasi. Quis perferendis et ut quas.', 'While she was now more than that, if you want to go! Let me see: I\'ll give them a new idea to Alice, she went on. Her listeners were perfectly quiet till she was about a foot high: then she.', 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(8, 'Reprehenderit architecto qui quas sit modi. Ut ullam ullam rerum. Et corrupti inventore cum a qui.', 'This question the Dodo said, \'EVERYBODY has won, and all her coaxing. Hardly knowing what she did, she picked up a little different. But if I\'m Mabel, I\'ll stay down here till I\'m somebody.', 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(9, 'Facilis aut tenetur sit dignissimos iste dolor. Dolore qui veritatis corrupti eum quo.', 'Alice. \'Why not?\' said the Mouse to Alice again. \'No, I didn\'t,\' said Alice: \'besides, that\'s not a mile high,\' said Alice. \'And where HAVE my shoulders got to? And oh, I wish you would have made a.', 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(10, 'Voluptates quis quia earum odio illo impedit. Maxime odio quos quam non voluptas mollitia.', 'I will prosecute YOU.--Come, I\'ll take no denial; We must have been ill.\' \'So they were,\' said the Dormouse, who was passing at the White Rabbit as he could go. Alice took up the fan and the little.', 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(11, 'Dolore tempora dolor sint perspiciatis. Magnam hic et eum consequatur. Quis modi quia tempora sint.', 'Rabbit say to itself, \'Oh dear! Oh dear! I\'d nearly forgotten to ask.\' \'It turned into a tree. By the use of a large kitchen, which was full of tears, \'I do wish they WOULD not remember ever having.', 1, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(12, 'Exercitationem et animi sunt rerum voluptatem. Ipsa ullam nostrum et natus.', 'King, and the other two were using it as to size,\' Alice hastily replied; \'only one doesn\'t like changing so often, you know.\' \'Who is it twelve? I--\' \'Oh, don\'t talk about cats or dogs either, if.', 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(13, 'Suscipit possimus cumque minima labore ab. Et commodi ut sed tenetur accusantium.', 'Improve his shining tail, And pour the waters of the well, and noticed that one of the water, and seemed to follow, except a little queer, won\'t you?\' \'Not a bit,\' said the Mock Turtle to the.', 2, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(14, 'Voluptatem saepe et harum ea debitis. Non qui voluptatem voluptates facere error.', 'The Dormouse had closed its eyes were looking up into the roof was thatched with fur. It was so ordered about by mice and rabbits. I almost wish I hadn\'t drunk quite so much!\' Alas! it was very.', 1, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(15, 'Neque incidunt labore provident unde ad distinctio. Incidunt dolorem et nihil impedit.', 'I know THAT well enough; and what does it matter to me whether you\'re a little nervous about it just now.\' \'It\'s the Cheshire Cat: now I shall have some fun now!\' thought Alice. \'I mean what I.', 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(16, 'Nulla et et animi non quis sit temporibus nam. Voluptatem neque ut aut sequi unde.', 'King, \'or I\'ll have you executed.\' The miserable Hatter dropped his teacup and bread-and-butter, and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I.', 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(17, 'Quas placeat sit dolorem quas. Aut sit ea provident possimus ipsa aperiam maxime.', 'King, looking round the neck of the March Hare. \'It was a little timidly: \'but it\'s no use their putting their heads down and cried. \'Come, there\'s no use in knocking,\' said the Duchess, \'as pigs.', 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(18, 'Vero repellendus qui libero quisquam. Debitis qui quod ea delectus saepe.', 'I? Ah, THAT\'S the great hall, with the next witness was the Duchess\'s voice died away, even in the distance, sitting sad and lonely on a summer day: The Knave did so, and giving it something out of.', 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(19, 'Placeat dignissimos et doloremque autem. Accusantium aut aut delectus commodi.', 'Though they were nice grand words to say.) Presently she began shrinking directly. As soon as she came up to the end of the court was a bright brass plate with the strange creatures of her own.', 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(20, 'Quo occaecati sunt rem atque ullam. Ut consequatur est dicta sit. Doloremque fugit impedit iure.', 'That your eye was as steady as ever; Yet you turned a corner, \'Oh my ears and the words have got altered.\' \'It is wrong from beginning to think that there ought! And when I breathe\"!\' \'It IS a.', 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(21, 'Corporis hic amet sunt sunt. Non id est perspiciatis ea.', 'Gryphon. \'They can\'t have anything to say, she simply bowed, and took the watch and looked at Alice. \'It goes on, you know,\' said Alice, as she could, \'If you knew Time as well as she could. The.', 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(22, 'Dolore eligendi ullam amet iure. Est amet sint dolores ea quas error.', 'It\'s high time to be lost, as she tucked her arm affectionately into Alice\'s, and they repeated their arguments to her, one on each side, and opened their eyes and mouths so VERY much out of the.', 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(23, 'Excepturi et maiores sit hic. Aut fuga illo molestias est blanditiis.', 'So she swallowed one of them were animals, and some were birds,) \'I suppose they are the jurors.\' She said the Caterpillar contemptuously. \'Who are YOU?\' said the Gryphon. \'I mean, what makes them.', 2, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(24, 'Possimus rerum commodi dolor. Dolores id quia ipsa rerum. Enim numquam tempora consectetur hic.', 'Alice said to herself, \'Now, what am I to do it?\' \'In my youth,\' said the March Hare will be When they take us up and bawled out, \"He\'s murdering the time! Off with his whiskers!\' For some minutes.', 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(25, 'Id qui dolore ut deleniti. Iste nemo vitae qui qui. Ex harum voluptates optio dolorum in.', 'Gryphon repeated impatiently: \'it begins \"I passed by his garden, and marked, with one eye; but to her that she began looking at the mushroom for a moment to think this a very little! Besides, SHE\'S.', 2, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(26, 'Ad porro laborum maiores non. Explicabo ex tempora aut quam id. Ad blanditiis quasi mollitia.', 'The Mouse only shook its head to hide a smile: some of YOUR adventures.\' \'I could tell you how it was as steady as ever; Yet you finished the guinea-pigs!\' thought Alice. \'I\'m glad I\'ve seen that.', 2, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(27, 'Maxime minus molestiae officia. Ipsam aliquid tenetur sit. Reiciendis iste voluptatem blanditiis.', 'Because he knows it teases.\' CHORUS. (In which the March Hare went \'Sh! sh!\' and the baby was howling so much frightened that she began again: \'Ou est ma chatte?\' which was the Rabbit came up to.', 1, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(28, 'Ut maiores iste aut voluptas. Rem numquam autem sint sit culpa consequatur nihil laborum.', 'Alice angrily. \'It wasn\'t very civil of you to get in?\' asked Alice again, in a louder tone. \'ARE you to leave off this minute!\' She generally gave herself very good advice, (though she very.', 2, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(29, 'Necessitatibus enim similique dolorem dolorem. Consequatur magni eligendi ducimus.', 'The Cat seemed to be afraid of them!\' \'And who are THESE?\' said the Mouse to Alice severely. \'What are you getting on?\' said Alice, as she could, \'If you can\'t be civil, you\'d better leave off,\'.', 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(30, 'Autem placeat quo alias ab nostrum qui. Sint aliquid illum similique ad odio adipisci quis.', 'I wonder if I must, I must,\' the King said to one of the sense, and the shrill voice of the Lizard\'s slate-pencil, and the bright eager eyes were looking over their shoulders, that all the right.', 1, '2021-02-24 04:32:46', '2021-02-24 04:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Products', '2019-08-31 10:31:52', '2019-08-31 10:31:52'),
(2, 'Services', '2019-08-31 10:32:03', '2019-08-31 10:32:03'),
(3, 'Delivery', '2019-08-31 10:32:11', '2019-08-31 10:32:11'),
(4, 'Misc', '2019-08-31 10:32:17', '2019-08-31 10:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 6, 6, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(9, 2, 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(10, 25, 5, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(11, 6, 1, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(13, 30, 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(14, 22, 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(16, 28, 6, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(18, 25, 6, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(19, 26, 1, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(20, 5, 1, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(21, 25, 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(22, 15, 2, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(23, 26, 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(25, 12, 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(27, 25, 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(28, 19, 2, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(30, 22, 1, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(31, 15, 7, '2021-02-25 14:47:22', '2021-02-25 14:47:22'),
(32, 4, 7, '2021-02-26 05:45:37', '2021-02-26 05:45:37'),
(33, 1, 7, '2021-02-26 07:25:46', '2021-02-26 07:25:46'),
(36, 46, 1, '2021-03-21 07:26:01', '2021-03-21 07:26:01'),
(37, 45, 1, '2021-03-25 07:47:30', '2021-03-25 07:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_options`
--

CREATE TABLE `favorite_options` (
  `option_id` int UNSIGNED NOT NULL,
  `favorite_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Grocery', 'Eum similique maiores atque quia explicabo. Dolores quia placeat consequatur id quis perspiciatis. Ducimus sit ducimus officia labore maiores et porro. Est iusto natus nesciunt debitis consequuntur totam. Et illo et autem inventore earum corrupti.', '2020-04-11 13:03:21', '2020-04-11 13:03:21'),
(2, 'Pharmacy', 'Eaque et aut natus. Minima blanditiis ut sunt distinctio ad. Quasi doloremque rerum ex rerum. Molestias similique similique aut rerum delectus blanditiis et. Dolorem et quas nostrum est nobis.', '2020-04-11 13:03:21', '2020-04-11 13:03:21'),
(3, 'Restaurant', 'Est nihil omnis natus ducimus ducimus excepturi quos. Et praesentium in quia veniam. Tempore aut nesciunt consequatur pariatur recusandae. Voluptatem commodi eius quaerat est deleniti impedit. Qui quo harum est sequi incidunt labore eligendi cum.', '2020-04-11 13:03:21', '2020-04-11 13:03:21'),
(4, 'Store', 'Ex nostrum suscipit aut et labore. Ut dolor ut eum eum voluptatem ex. Sapiente in tempora soluta voluptatem. Officia accusantium quae sit. Rerum esse ipsa molestias dolorem et est autem consequatur.', '2020-04-11 13:03:21', '2020-04-11 13:03:21'),
(5, 'Electronics', 'Dolorum earum ut blanditiis blanditiis. Facere quis voluptates assumenda saepe. Ab aspernatur voluptatibus rem doloremque cum impedit. Itaque blanditiis commodi repudiandae asperiores. Modi atque placeat consectetur et aut blanditiis.', '2020-04-11 13:03:21', '2020-04-11 13:03:21'),
(6, 'Furniture', 'Est et iste enim. Quam repudiandae commodi rerum non esse. Et in aut sequi est aspernatur. Facere non modi expedita asperiores. Ipsa laborum saepe deserunt qui consequatur voluptas inventore dolorum.', '2020-04-11 13:03:21', '2020-04-11 13:03:21'),
(7, 'Petroleum', 'Est et iste enim. Quam repudiandae commodi rerum non esse. Et in aut sequi est aspernatur. Facere non modi expedita asperiores. Ipsa laborum saepe deserunt qui consequatur voluptas inventore dolorum.', '2020-04-11 13:03:21', '2020-04-11 13:03:21');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int UNSIGNED NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `market_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `description`, `market_id`, `created_at`, `updated_at`) VALUES
(1, 'Non maxime illum officiis aut maiores.', 8, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(2, 'Nostrum minus voluptatem animi molestiae neque est vel quia.', 6, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(3, 'Voluptas nulla provident tempore magni harum quaerat ea.', 7, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(4, 'Quae in asperiores nihil.', 5, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(5, 'Quas est eos quis amet vel minima assumenda vitae.', 5, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(6, 'Tempora totam velit amet asperiores omnis delectus.', 8, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(7, 'Voluptates ducimus enim distinctio voluptatem.', 2, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(8, 'Suscipit error consequatur dolore.', 6, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(9, 'Veritatis consequatur est ut consequuntur laborum.', 1, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(10, 'Magnam non voluptatibus cupiditate sint.', 7, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(11, 'Necessitatibus ipsam est deleniti mollitia quidem voluptas excepturi.', 8, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(12, 'Quam beatae nisi non tenetur in.', 7, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(13, 'Tempora rem quos totam saepe dolor et.', 3, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(14, 'Et laborum ut culpa sunt non.', 8, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(15, 'Soluta laboriosam et eum nostrum.', 3, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(16, 'Enim natus repudiandae dolore corporis iste reprehenderit.', 6, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(17, 'Enim quo aut nemo enim ipsa nam pariatur.', 5, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(18, 'Ut laboriosam a sint est est quidem.', 9, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(19, 'Tempore sunt incidunt voluptatem ratione aut.', 5, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(20, 'Harum totam non adipisci provident eaque.', 9, '2021-02-24 04:32:45', '2021-02-24 04:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `markets`
--

CREATE TABLE `markets` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `admin_commission` double(8,2) DEFAULT '0.00',
  `delivery_fee` double(8,2) DEFAULT '0.00',
  `delivery_range` double(8,2) DEFAULT '0.00',
  `default_tax` double(8,2) DEFAULT '0.00',
  `closed` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '0',
  `available_for_delivery` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `markets`
--

INSERT INTO `markets` (`id`, `name`, `description`, `address`, `latitude`, `longitude`, `phone`, `mobile`, `information`, `admin_commission`, `delivery_fee`, `delivery_range`, `default_tax`, `closed`, `active`, `available_for_delivery`, `created_at`, `updated_at`) VALUES
(1, 'Grocery Grady, Feest and Gibson', 'Ut natus voluptatum ipsa suscipit animi dolorem. Vitae quia qui quisquam molestias alias similique consequatur. Sit qui tempora maiores nihil error iusto nulla.', '803 DuBuque VistaNew Presleyview, CA 08964-0357', '-17.786433', '31.084170', '(532) 243-2387 x660', '(865) 274-4751', 'Quaerat consequatur veritatis modi et et. Repellat repellat eaque cum qui. Aut voluptatem sed cupiditate et rerum.', 17.28, 8.04, 87.36, 27.21, 0, 1, 1, '2021-02-24 04:32:44', '2021-02-25 14:21:05'),
(2, 'Furniture Schuster, Baumbach and Harvey', 'Eum esse a accusantium sit. Doloremque eum illum iure odio impedit rerum sapiente ipsum. Officia quisquam sed blanditiis omnis consequatur dolorem.', '528 Schneider Crossroad Suite 921\nDedricmouth, DC 25642-3789', '52.015822', '10.977761', '+1-531-804-5834', '210-518-7224 x650', 'Dicta facere neque nihil. Nulla accusantium animi fugiat. Est saepe neque omnis voluptate.', 26.15, 6.34, 36.24, 26.58, 0, 1, 1, '2021-02-24 04:32:44', '2021-02-24 04:32:44'),
(3, 'Market Schumm-Graham', 'Voluptate molestias sed dolores fuga ea consectetur ipsum. Delectus voluptatem fugit veniam incidunt et eligendi quaerat. Fugiat aut reiciendis sed ut.', '5571 Oswaldo Highway Apt. 921Heaneyfurt, ME 40153', '50.383932', '11.422272', '642-985-3241', '1-468-784-7912 x6848', 'Sed nobis dolorum aliquid itaque ut sed illum quisquam. Saepe non eos harum porro. Tempora beatae vel quas totam laborum et.', 22.77, 9.04, 44.51, 22.32, 0, 1, 1, '2021-02-24 04:32:44', '2021-02-25 14:18:23'),
(4, 'Market Cronin, Marks and Gerhold', 'Aliquid quas asperiores ut et et dolor commodi. Officiis qui totam deleniti. Enim aut autem quasi nesciunt possimus sed explicabo omnis.', '32788 Josianne ClubWest Constantinview, TN 28253-7213', '-17.786433', '31.084170', '(539) 924-1467 x07794', '(710) 490-5661', 'Architecto similique qui eveniet quos. Repellat qui dolores rerum delectus. Voluptas corrupti aut explicabo sed harum.', 48.47, 3.50, 26.50, 8.05, 1, 1, 1, '2021-02-24 04:32:44', '2021-02-25 14:20:18'),
(5, 'Tuma Delivery Service Manager', 'Culpa omnis esse debitis quis. Eum perferendis ducimus at expedita aut voluptas. Officiis quo error incidunt non.', '457 Crona Rapid Apt. 192South Laurynmouth, NV 85506', '-17.786433', '31.084170', '(267) 597-8772', '538.296.9872 x7133', 'Mollitia enim eos enim cupiditate nam aliquid voluptatem hic. Necessitatibus voluptatem reprehenderit eveniet sit id minus. Aut sed est sed animi.', 35.69, 2.52, 13.78, 16.63, 0, 1, 1, '2021-02-24 04:32:44', '2021-03-02 11:41:20'),
(6, 'Grocery O\'Connell-Fay', 'Corrupti recusandae ut numquam et harum sed. Et illum accusamus quae qui occaecati. Accusamus in optio consectetur rem eligendi itaque recusandae. Quia reprehenderit repellat aliquid vel.', '88028 Haley Haven Apt. 876\nSouth Allison, ME 63153', '45.543912', '11.12501', '872-885-7840 x0293', '+1.340.885.1562', 'Quidem repellat laudantium officia consequuntur ut doloremque. Sed numquam libero eos sed. Est maiores nam quod dolorem qui dolor.', 32.17, 8.00, 50.74, 27.12, 1, 1, 0, '2021-02-24 04:32:44', '2021-02-24 04:32:44'),
(7, 'Shop Jaskolski-Blick', 'Blanditiis non voluptatem eos aut. Esse et voluptas velit fuga sint. Dolor minus ratione ut vero officiis quis fugit reprehenderit.', '71116 Larkin Alley\nNorth Evangelinestad, HI 11462', '43.610687', '9.901429', '1-591-707-3219 x37452', '1-929-679-0423 x156', 'Ratione velit non occaecati quae. Et voluptas sit aliquam vitae. Est dolorum maiores et nobis.', 26.14, 6.44, 33.11, 8.98, 1, 1, 0, '2021-02-24 04:32:44', '2021-02-24 04:32:44'),
(8, 'Pharmacy Leuschke, Murphy and Schamberger', 'Modi a saepe vitae. In libero voluptatem est ad. Culpa veritatis ea commodi.', '23611 Hosea Glens Apt. 790\nWest Fannie, IL 03597', '54.468164', '7.354553', '+1.751.643.3912', '302.981.0815 x683', 'Eos iste est id sit corrupti et repellendus. Tenetur rem hic quis praesentium id harum sit. Mollitia quam voluptatum nihil et maxime.', 24.42, 5.94, 86.28, 22.60, 0, 1, 0, '2021-02-24 04:32:44', '2021-02-24 04:32:44'),
(9, 'Mall Brown, Littel and McLaughlin', 'Molestias et rerum velit. Et dolor ab est eos. Aliquam est officiis architecto porro aut repudiandae saepe. Enim accusamus et omnis doloremque minus.', '5524 Borer Ramp Apt. 844\nLorainebury, NM 02347-4680', '44.031048', '11.430247', '384.713.4725 x737', '+1 (303) 390-6009', 'Iusto id deleniti dolores fugiat ipsa qui officiis labore. Veritatis mollitia minus temporibus totam molestias consequatur quia illo. Veniam odit quia omnis deserunt incidunt ut ad.', 45.46, 8.61, 89.21, 10.10, 1, 1, 1, '2021-02-24 04:32:44', '2021-02-24 04:32:44'),
(10, 'Pharmacy Parisian-Reilly', 'In omnis exercitationem sit voluptatem aspernatur. Id consequatur inventore laborum illum atque repellat. Pariatur molestiae fugit sed voluptatem consectetur illum nisi.', '10316 Wiegand Dam Apt. 594\nHeathcotehaven, AL 05819-9689', '45.761125', '10.487426', '1-349-472-9149', '365.821.9785 x44092', 'Sint culpa et tenetur error necessitatibus nostrum ratione. Voluptatum nemo amet voluptatem ipsum. Totam facilis autem officia magnam accusamus modi libero autem.', 29.02, 5.63, 98.13, 22.44, 1, 1, 1, '2021-02-24 04:32:44', '2021-02-24 04:32:44'),
(11, 'Subscription Fee', 'In omnis exercitationem sit voluptatem aspernatur. Id consequatur inventore laborum illum atque repellat. Pariatur molestiae fugit sed voluptatem consectetur illum nisi.', '10316 Wiegand Dam Apt. 594\r\nHeathcotehaven, AL 05819-9689', '45.761125', '10.487426', '1-349-472-9149', '365.821.9785 x44092', 'Sint culpa et tenetur error necessitatibus nostrum ratione. Voluptatum nemo amet voluptatem ipsum. Totam facilis autem officia magnam accusamus modi libero autem.', 29.02, 0.00, 98.13, 22.44, 1, 1, 1, '2021-02-24 04:32:44', '2021-02-24 04:32:44'),
(12, 'Sunninghill Market', 'In omnis exercitationem sit voluptatem aspernatur. Id consequatur inventore laborum illum atque repellat. Pariatur molestiae fugit sed voluptatem consectetur illum nisi.', 'Leeuwkop Rd, Paulshof, Sandton, 2157', '-26.031294', '28.063103', '1-349-472-9149', '365.821.9785 x44092', 'Sint culpa et tenetur error necessitatibus nostrum ratione. Voluptatum nemo amet voluptatem ipsum. Totam facilis autem officia magnam accusamus modi libero autem.', 29.02, 0.00, 25.00, 15.00, 0, 1, 1, '2021-02-24 04:32:44', '2021-04-12 01:37:17'),
(13, 'Diesel Market', 'In omnis exercitationem sit voluptatem aspernatur. Id consequatur inventore laborum illum atque repellat. Pariatur molestiae fugit sed voluptatem consectetur illum nisi.', 'Leeuwkop Rd, Paulshof, Sandton, 2157', '-26.031294', ' 28.063103', '1-349-472-9149', '365.821.9785 x44092', 'Sint culpa et tenetur error necessitatibus nostrum ratione. Voluptatum nemo amet voluptatem ipsum. Totam facilis autem officia magnam accusamus modi libero autem.', 29.02, 0.00, 25.13, 22.44, 0, 1, 1, '2021-02-24 04:32:44', '2021-02-24 04:32:44'),
(14, 'Jet Fuel Market', 'In omnis exercitationem sit voluptatem aspernatur. Id consequatur inventore laborum illum atque repellat. Pariatur molestiae fugit sed voluptatem consectetur illum nisi.', 'Leeuwkop Rd, Paulshof, Sandton, 2157', '-26.031294', ' 28.063103', '1-349-472-9149', '365.821.9785 x44092', 'Sint culpa et tenetur error necessitatibus nostrum ratione. Voluptatum nemo amet voluptatem ipsum. Totam facilis autem officia magnam accusamus modi libero autem.', 29.02, 0.00, 25.13, 22.44, 0, 1, 1, '2021-02-24 04:32:44', '2021-02-24 04:32:44'),
(15, 'LPG Market', 'In omnis exercitationem sit voluptatem aspernatur. Id consequatur inventore laborum illum atque repellat. Pariatur molestiae fugit sed voluptatem consectetur illum nisi.', 'Leeuwkop Rd, Paulshof, Sandton, 2157', '-26.016536', '28.1056183', '1-349-472-9149', '365.821.9785 x44092', 'Sint culpa et tenetur error necessitatibus nostrum ratione. Voluptatum nemo amet voluptatem ipsum. Totam facilis autem officia magnam accusamus modi libero autem.', 29.02, 0.00, 50.13, 22.44, 0, 1, 1, '2021-02-24 04:32:44', '2021-02-24 04:32:44');

-- --------------------------------------------------------

--
-- Table structure for table `markets_payouts`
--

CREATE TABLE `markets_payouts` (
  `id` int UNSIGNED NOT NULL,
  `market_id` int UNSIGNED NOT NULL,
  `method` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(9,2) NOT NULL DEFAULT '0.00',
  `paid_date` datetime DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `market_fields`
--

CREATE TABLE `market_fields` (
  `field_id` int UNSIGNED NOT NULL,
  `market_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `market_fields`
--

INSERT INTO `market_fields` (`field_id`, `market_id`) VALUES
(2, 1),
(4, 1),
(2, 2),
(3, 2),
(4, 3),
(6, 5),
(3, 6),
(1, 7),
(2, 7),
(5, 8),
(1, 9),
(5, 10),
(4, 11),
(7, 12),
(7, 13),
(7, 14),
(7, 15);

-- --------------------------------------------------------

--
-- Table structure for table `market_reviews`
--

CREATE TABLE `market_reviews` (
  `id` int UNSIGNED NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rate` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int UNSIGNED NOT NULL,
  `market_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `market_reviews`
--

INSERT INTO `market_reviews` (`id`, `review`, `rate`, `user_id`, `market_id`, `created_at`, `updated_at`) VALUES
(1, 'I\'ll never go THERE again!\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but some crumbs must have got into it), and handed them round as prizes. There was a paper label, with the.', 2, 2, 6, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(2, 'I can\'t remember,\' said the voice. \'Fetch me my gloves this moment!\' Then came a rumbling of little Alice and all dripping wet, cross, and uncomfortable. The first witness was the Duchess\'s voice.', 4, 5, 2, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(3, 'Said the mouse to the heads of the fact. \'I keep them to be done, I wonder?\' As she said these words her foot as far down the chimney close above her: then, saying to her great disappointment it was.', 3, 5, 1, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(4, 'And beat him when he sneezes; For he can EVEN finish, if he thought it must be a footman because he taught us,\' said the King. \'Nearly two miles high,\' added the Dormouse, not choosing to notice.', 3, 5, 4, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(5, 'Caterpillar. Alice folded her hands, and she could do to come down the chimney as she fell past it. \'Well!\' thought Alice to herself, as usual. I wonder what CAN have happened to you? Tell us all.', 4, 3, 3, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(6, 'She carried the pepper-box in her life; it was her dream:-- First, she tried the little glass table. \'Now, I\'ll manage better this time,\' she said aloud. \'I shall sit here,\' he said, turning to the.', 2, 5, 6, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(7, 'The Knave shook his grey locks, \'I kept all my life, never!\' They had a consultation about this, and after a minute or two to think about it, so she felt that she was a little irritated at the.', 5, 3, 6, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(8, 'Gryphon. \'Of course,\' the Gryphon went on in the sea, \'and in that ridiculous fashion.\' And he added looking angrily at the corners: next the ten courtiers; these were ornamented all over with.', 3, 3, 1, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(9, 'HE was.\' \'I never thought about it,\' added the Dormouse. \'Write that down,\' the King hastily said, and went down on one knee. \'I\'m a poor man, your Majesty,\' said the White Rabbit; \'in fact, there\'s.', 2, 5, 5, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(10, 'And then a row of lamps hanging from the change: and Alice joined the procession, wondering very much at this, she was to get hold of anything, but she could do to come out among the bright.', 3, 4, 5, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(11, 'I like\"!\' \'You might just as usual. \'Come, there\'s no use in talking to him,\' the Mock Turtle drew a long hookah, and taking not the right size for ten minutes together!\' \'Can\'t remember WHAT.', 2, 3, 8, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(12, 'Queen jumped up and said, without opening its eyes, for it now, I suppose, by being drowned in my size; and as the Caterpillar contemptuously. \'Who are YOU?\' said the Dodo. Then they both sat silent.', 1, 1, 8, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(13, 'Don\'t be all day about it!\' and he wasn\'t going to turn into a tree. By the time she had brought herself down to them, and all the things being alive; for instance, there\'s the arch I\'ve got to the.', 3, 5, 2, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(14, 'Advice from a bottle marked \'poison,\' it is all the arches are gone from this morning,\' said Alice desperately: \'he\'s perfectly idiotic!\' And she opened it, and then dipped suddenly down, so.', 4, 4, 1, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(15, 'YOUR temper!\' \'Hold your tongue!\' said the Mock Turtle angrily: \'really you are painting those roses?\' Five and Seven said nothing, but looked at it gloomily: then he dipped it into his plate. Alice.', 5, 5, 10, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(16, 'Gryphon. \'Well, I shan\'t grow any more--As it is, I suppose?\' \'Yes,\' said Alice to herself. \'I dare say there may be different,\' said Alice; \'all I know is, it would not allow without knowing how.', 4, 2, 6, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(17, 'Alice sharply, for she was talking. Alice could hear the words:-- \'I speak severely to my boy, I beat him when he finds out who I WAS when I sleep\" is the same when I grow at a king,\' said Alice.', 4, 4, 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(18, 'White Rabbit, with a great deal to come before that!\' \'Call the next question is, what?\' The great question is, Who in the wood, \'is to grow to my right size again; and the pair of gloves and the.', 2, 3, 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(19, 'ARE you doing out here? Run home this moment, I tell you!\' But she did it so VERY wide, but she knew that were of the song. \'What trial is it?\' \'Why,\' said the Cat, \'if you don\'t know of any use.', 3, 2, 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(20, 'Don\'t let me help to undo it!\' \'I shall sit here,\' he said, turning to Alice. \'What sort of a sea of green leaves that lay far below her. \'What CAN all that green stuff be?\' said Alice. \'Off with.', 3, 5, 9, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(21, NULL, 0, 7, 1, '2021-02-25 11:27:35', '2021-02-25 11:27:35'),
(22, NULL, 5, 1, 5, '2021-03-09 15:44:27', '2021-03-09 15:44:27'),
(23, NULL, 0, 1, 12, '2021-03-22 10:18:46', '2021-03-22 10:18:46');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `collection_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int UNSIGNED NOT NULL,
  `manipulations` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 7, 'avatar', 'avatar_default_temp', 'avatar_default_temp.png', 'image/png', 'public', 2011, '[]', '{\"uuid\":\"$2y$10$yyqu7RL0zfJ1ysmcsrQea.4suIxgNe5fGnUq3889E7Y1HOE1BqIoi\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 2, '2021-02-25 11:19:07', '2021-02-25 11:19:07'),
(3, 'App\\Models\\User', 8, 'avatar', 'avatar_default_temp', 'avatar_default_temp.png', 'image/png', 'public', 2011, '[]', '{\"uuid\":\"$2y$10$sCFACfY5z3f2fKYZUo3rM.KDMIAGXV4SEgLzHWFhHtl.WDdvR\\/Orq\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 3, '2021-02-25 12:17:09', '2021-02-25 12:17:09'),
(4, 'App\\Models\\Upload', 2, 'avatar', 'tumadelivery_icon', 'tumadelivery_icon.png', 'image/png', 'public', 36397, '[]', '{\"uuid\":\"87b98f20-5415-4b62-98f2-bb3d00eb8e69\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 4, '2021-02-28 12:37:38', '2021-02-28 12:37:39'),
(6, 'App\\Models\\Upload', 3, 'avatar', 'tumadelivery_blue', 'tumadelivery_blue.png', 'image/png', 'public', 35366, '[]', '{\"uuid\":\"f9bf7826-f650-4bf4-94ea-6bd26b3861b1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 6, '2021-02-28 12:40:06', '2021-02-28 12:40:07'),
(8, 'App\\Models\\Upload', 4, 'avatar', 'tumadelivery_blue', 'tumadelivery_blue.png', 'image/png', 'public', 35366, '[]', '{\"uuid\":\"f9e00fb2-fc5c-4549-ad53-c072b06fb846\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 8, '2021-02-28 12:40:23', '2021-02-28 12:40:24'),
(9, 'App\\Models\\User', 1, 'avatar', 'tumadelivery_blue', 'tumadelivery_blue.png', 'image/png', 'public', 35366, '[]', '{\"uuid\":\"f9e00fb2-fc5c-4549-ad53-c072b06fb846\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 9, '2021-02-28 12:40:28', '2021-02-28 12:40:28'),
(11, 'App\\Models\\Upload', 6, 'avatar', 'tumadelivery_blue', 'tumadelivery_blue.png', 'image/png', 'public', 35366, '[]', '{\"uuid\":\"60167d98-efdb-44c4-9f5e-9f4cb4cc3ee5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 11, '2021-02-28 12:49:27', '2021-02-28 12:49:27'),
(12, 'App\\Models\\User', 1, 'avatar', 'tumadelivery_blue', 'tumadelivery_blue.png', 'image/png', 'public', 35366, '[]', '{\"uuid\":\"60167d98-efdb-44c4-9f5e-9f4cb4cc3ee5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 12, '2021-02-28 12:49:35', '2021-02-28 12:49:35'),
(13, 'App\\Models\\Upload', 7, 'avatar', 'tumadelivery_blue', 'tumadelivery_blue.png', 'image/png', 'public', 35366, '[]', '{\"uuid\":\"7dadc144-eb32-4e03-a66f-2f0370d74b5c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 13, '2021-03-02 11:39:10', '2021-03-02 11:39:10'),
(14, 'App\\Models\\User', 9, 'avatar', 'tumadelivery_blue', 'tumadelivery_blue.png', 'image/png', 'public', 35366, '[]', '{\"uuid\":\"7dadc144-eb32-4e03-a66f-2f0370d74b5c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 14, '2021-03-02 11:39:14', '2021-03-02 11:39:14'),
(15, 'App\\Models\\Upload', 8, 'image', 'tumadelivery_blue', 'tumadelivery_blue.png', 'image/png', 'public', 35366, '[]', '{\"uuid\":\"77cead7a-21e3-4ccb-8e35-d47e79217754\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 15, '2021-03-02 11:41:15', '2021-03-02 11:41:15'),
(16, 'App\\Models\\Market', 5, 'image', 'tumadelivery_blue', 'tumadelivery_blue.png', 'image/png', 'public', 35366, '[]', '{\"uuid\":\"77cead7a-21e3-4ccb-8e35-d47e79217754\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 16, '2021-03-02 11:41:20', '2021-03-02 11:41:20'),
(17, 'App\\Models\\Upload', 9, 'image', 'tumadelivery_blue', 'tumadelivery_blue.png', 'image/png', 'public', 35366, '[]', '{\"uuid\":\"0e2f1733-44fa-465c-943d-89f6d770e212\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 17, '2021-03-02 11:42:50', '2021-03-02 11:42:50'),
(18, 'App\\Models\\Product', 41, 'image', 'tumadelivery_blue', 'tumadelivery_blue.png', 'image/png', 'public', 35366, '[]', '{\"uuid\":\"0e2f1733-44fa-465c-943d-89f6d770e212\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 18, '2021-03-02 11:43:11', '2021-03-02 11:43:11'),
(19, 'App\\Models\\User', 12, 'avatar', 'avatar_default_temp', 'avatar_default_temp.png', 'image/png', 'public', 2011, '[]', '{\"uuid\":\"$2y$10$JDGjakjd4bGZ7TLQINdTAOt5elPiVgoLu3YYbKqS\\/wH6D6DkYwOhu\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 19, '2021-04-07 05:34:38', '2021-04-07 05:34:40'),
(20, 'App\\Models\\User', 13, 'avatar', 'avatar_default_temp', 'avatar_default_temp.png', 'image/png', 'public', 2011, '[]', '{\"uuid\":\"$2y$10$50NaG9lgNlbej5HtK1HkDO3XyOpGPB2Os.wfgEsy6SDTZoFyqEpES\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 20, '2021-04-07 15:44:32', '2021-04-07 15:44:32'),
(21, 'App\\Models\\User', 14, 'avatar', 'avatar_default_temp', 'avatar_default_temp.png', 'image/png', 'public', 2011, '[]', '{\"uuid\":\"$2y$10$Ij9zR.NskkqXZhzTVswwxe5ILpBPpnVk0xFA7ZNTrCCP6tfq1\\/QO6\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 21, '2021-04-08 10:21:46', '2021-04-08 10:21:48'),
(22, 'App\\Models\\User', 15, 'avatar', 'avatar_default_temp', 'avatar_default_temp.png', 'image/png', 'public', 2011, '[]', '{\"uuid\":\"$2y$10$RiGcPE7VKkbhvV5RctXs1uPz8PHRpgkeCkjl7bpLJE1XcSmiRLor.\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 22, '2021-04-09 06:41:53', '2021-04-09 06:41:55'),
(24, 'App\\Models\\Upload', 11, 'app_logo', 'refuel_icon', 'refuel_icon.png', 'image/png', 'public', 6981, '[]', '{\"uuid\":\"3593c769-684c-43c1-9083-e1cee5bf5ab1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 23, '2021-04-12 00:50:53', '2021-04-12 00:50:54'),
(25, 'App\\Models\\Upload', 12, 'documents', 'weldenoutside', 'weldenoutside.png', 'image/png', 'public', 414453, '[]', '{\"uuid\":\"043c4293-120d-410d-96a3-3052812f0ee7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 24, '2021-04-13 18:26:29', '2021-04-13 18:26:30'),
(26, 'App\\Models\\Upload', 13, 'image', 'weldencare', 'weldencare.png', 'image/png', 'public', 50473, '[]', '{\"uuid\":\"38f0c4b4-2c57-427e-beeb-2f3323f1a2b5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 25, '2021-04-13 18:26:42', '2021-04-13 18:26:42'),
(27, 'App\\Models\\Upload', 14, 'documents', 'weldenbg', 'weldenbg.jpg', 'image/jpeg', 'public', 105710, '[]', '{\"uuid\":\"6b9fe56f-ca30-4d6a-a0a6-6a8217df5ac6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 26, '2021-04-13 18:28:43', '2021-04-13 18:28:43'),
(28, 'App\\Models\\Upload', 15, 'documents', 'weldenbg2', 'weldenbg2.png', 'image/png', 'public', 472369, '[]', '{\"uuid\":\"d27462e7-e788-4b4e-9275-c08c9058aa1d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 27, '2021-04-13 18:28:44', '2021-04-13 18:28:44'),
(29, 'App\\Models\\Upload', 16, 'documents', 'welden5', 'welden5.png', 'image/png', 'public', 349083, '[]', '{\"uuid\":\"0d4b0eb1-4cfe-4e6f-9a4a-f688d591fcbc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 28, '2021-04-13 18:28:45', '2021-04-13 18:28:45'),
(30, 'App\\Models\\Upload', 17, 'documents', 'welden4', 'welden4.png', 'image/png', 'public', 414059, '[]', '{\"uuid\":\"0369ef76-699e-4d5c-badf-44621e67f663\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 29, '2021-04-13 18:28:46', '2021-04-13 18:28:46'),
(31, 'App\\Models\\Upload', 18, 'documents', 'weldenbg', 'weldenbg.jpg', 'image/jpeg', 'public', 105710, '[]', '{\"uuid\":\"a67c596d-cb23-4fea-9877-52a7984bd5d5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 30, '2021-04-13 18:29:14', '2021-04-13 18:29:14'),
(32, 'App\\Models\\Upload', 19, 'documents', 'welden5', 'welden5.png', 'image/png', 'public', 349083, '[]', '{\"uuid\":\"3328ea2e-2c96-48a2-9315-8e9d323f5558\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 31, '2021-04-13 18:29:14', '2021-04-13 18:29:14'),
(33, 'App\\Models\\Upload', 20, 'documents', 'welden4', 'welden4.png', 'image/png', 'public', 414059, '[]', '{\"uuid\":\"9931057c-b26b-4306-967a-aa7e032ea5f1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 32, '2021-04-13 18:29:15', '2021-04-13 18:29:15'),
(34, 'App\\Models\\Upload', 21, 'image', 'Screenshot 2021-04-09 at 14.53.54', 'Screenshot-2021-04-09-at-14.53.54.png', 'image/png', 'public', 945665, '[]', '{\"uuid\":\"47d908fa-7c29-4de6-b9ee-a711d0e9c766\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 33, '2021-04-14 07:47:14', '2021-04-14 07:47:14'),
(35, 'App\\Models\\Upload', 22, 'documents', 'Screenshot 2021-02-23 at 16.21.15', 'Screenshot-2021-02-23-at-16.21.15.png', 'image/png', 'public', 160759, '[]', '{\"uuid\":\"6ac9320c-6609-40ab-81fe-82f37a1d689d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 34, '2021-04-14 07:47:21', '2021-04-14 07:47:21'),
(36, 'App\\Models\\Upload', 23, 'documents', 'Screenshot 2021-02-24 at 04.24.09', 'Screenshot-2021-02-24-at-04.24.09.png', 'image/png', 'public', 96748, '[]', '{\"uuid\":\"bc618603-6a5c-4a21-8d69-6abdd8d5743f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 35, '2021-04-14 07:47:39', '2021-04-14 07:47:40'),
(37, 'App\\Models\\Market', 1, 'image', 'Screenshot 2021-04-09 at 14.53.54', 'Screenshot-2021-04-09-at-14.53.54.png', 'image/png', 'public', 945665, '[]', '{\"uuid\":\"47d908fa-7c29-4de6-b9ee-a711d0e9c766\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 36, '2021-04-14 07:47:50', '2021-04-14 07:47:50'),
(38, 'App\\Models\\Upload', 24, 'documents', 'Screenshot 2021-02-24 at 04.24.09', 'Screenshot-2021-02-24-at-04.24.09.png', 'image/png', 'public', 96748, '[]', '{\"uuid\":\"b2609f20-7c4d-483a-855b-a27302f65d4b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 37, '2021-04-14 07:48:45', '2021-04-14 07:48:45'),
(39, 'App\\Models\\Upload', 25, 'documents', 'Screenshot 2021-02-23 at 16.21.15', 'Screenshot-2021-02-23-at-16.21.15.png', 'image/png', 'public', 160759, '[]', '{\"uuid\":\"9b284630-1bc1-4565-9d2a-e799ae79b531\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 38, '2021-04-14 07:48:48', '2021-04-14 07:48:48'),
(40, 'App\\Models\\Upload', 26, 'company_documents', 'Screenshot 2021-02-23 at 16.21.15', 'Screenshot-2021-02-23-at-16.21.15.png', 'image/png', 'public', 160759, '[]', '{\"uuid\":\"a32a3270-de08-4cc3-a2e6-a1370eaf47c2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 39, '2021-04-14 07:50:56', '2021-04-14 07:50:56'),
(41, 'App\\Models\\Upload', 27, 'company_documents', 'Screenshot 2021-02-24 at 04.24.09', 'Screenshot-2021-02-24-at-04.24.09.png', 'image/png', 'public', 96748, '[]', '{\"uuid\":\"b3d516bc-1f49-41a4-8d49-cdac74975523\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 40, '2021-04-14 07:51:06', '2021-04-14 07:51:06'),
(42, 'App\\Models\\User', 20, 'avatar', 'avatar_default_temp', 'avatar_default_temp.png', 'image/png', 'public', 2011, '[]', '{\"uuid\":\"$2y$10$nexMQyblxTMhE8JS14KyYeZnFF.7KJETyziLIwEdPblvQbB2skNKO\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 41, '2021-04-14 13:26:00', '2021-04-14 13:26:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_26_175145_create_permission_tables', 1),
(4, '2018_06_12_140344_create_media_table', 1),
(5, '2018_06_13_035117_create_uploads_table', 1),
(6, '2018_07_17_180731_create_settings_table', 1),
(7, '2018_07_24_211308_create_custom_fields_table', 1),
(8, '2018_07_24_211327_create_custom_field_values_table', 1),
(9, '2019_08_29_213820_create_fields_table', 1),
(10, '2019_08_29_213821_create_markets_table', 1),
(11, '2019_08_29_213822_create_categories_table', 1),
(12, '2019_08_29_213826_create_option_groups_table', 1),
(13, '2019_08_29_213829_create_faq_categories_table', 1),
(14, '2019_08_29_213833_create_order_statuses_table', 1),
(15, '2019_08_29_213837_create_products_table', 1),
(16, '2019_08_29_213838_create_options_table', 1),
(17, '2019_08_29_213842_create_galleries_table', 1),
(18, '2019_08_29_213847_create_product_reviews_table', 1),
(19, '2019_08_29_213921_create_payments_table', 1),
(20, '2019_08_29_213922_create_delivery_addresses_table', 1),
(21, '2019_08_29_213926_create_faqs_table', 1),
(22, '2019_08_29_213940_create_market_reviews_table', 1),
(23, '2019_08_30_152927_create_favorites_table', 1),
(24, '2019_08_31_111104_create_orders_table', 1),
(25, '2019_09_04_153857_create_carts_table', 1),
(26, '2019_09_04_153858_create_favorite_options_table', 1),
(27, '2019_09_04_153859_create_cart_options_table', 1),
(28, '2019_09_04_153958_create_product_orders_table', 1),
(29, '2019_09_04_154957_create_product_order_options_table', 1),
(30, '2019_09_04_163857_create_user_markets_table', 1),
(31, '2019_10_22_144652_create_currencies_table', 1),
(32, '2019_12_14_134302_create_driver_markets_table', 1),
(33, '2020_03_25_094752_create_drivers_table', 1),
(34, '2020_03_25_094802_create_earnings_table', 1),
(35, '2020_03_25_094809_create_drivers_payouts_table', 1),
(36, '2020_03_25_094817_create_markets_payouts_table', 1),
(37, '2020_03_27_094855_create_notifications_table', 1),
(38, '2020_04_11_135804_create_market_fields_table', 1),
(39, '2020_08_23_181022_create_coupons_table', 1),
(40, '2020_08_23_181029_create_discountables_table', 1),
(41, '2020_09_01_192732_create_slides_table', 1),
(42, '2021_02_26_034434_add_verification_to_user', 2),
(43, '2021_03_02_211531_add_delivery_fee_to_carts', 3),
(44, '2021_03_09_100145_create_settings_table', 4),
(45, '2021_03_09_100223_create_order_diver_locations_table', 4),
(46, '2021_03_09_101220_create_driver_locations_table', 4),
(47, '2021_03_20_082807_create_subscriptions_table', 5),
(48, '2021_03_20_131038_create_trucks_table', 6),
(49, '2021_03_20_131457_create_trucklocations_table', 7),
(50, '2021_03_21_074711_create_petrolium_products_table', 8),
(51, '2021_03_21_111938_create_discounts_table', 8),
(52, '2021_03_24_071146_create_vehicles_table', 9),
(53, '2021_03_25_104332_create_subscription_products_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4),
(5, 'App\\Models\\User', 5),
(5, 'App\\Models\\User', 6),
(4, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 9),
(4, 'App\\Models\\User', 10),
(4, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(4, 'App\\Models\\User', 13),
(4, 'App\\Models\\User', 14),
(4, 'App\\Models\\User', 15),
(3, 'App\\Models\\User', 16),
(3, 'App\\Models\\User', 17),
(4, 'App\\Models\\User', 18),
(6, 'App\\Models\\User', 18),
(3, 'App\\Models\\User', 19),
(6, 'App\\Models\\User', 20);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('878eebcb-63f5-4b47-ba20-aa2afee7d1e0', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 3, '{\"order_id\":13}', NULL, '2021-03-05 12:02:51', '2021-03-05 12:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `product_id` int UNSIGNED NOT NULL,
  `option_group_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `description`, `price`, `product_id`, `option_group_id`, `created_at`, `updated_at`) VALUES
(2, '500g', 'Non tenetur explicabo rerum sint.', 39.10, 12, 1, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(3, 'Tomato', 'Et quibusdam optio.', 19.18, 2, 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(4, 'S', 'Corporis est assumenda iste.', 47.66, 5, 2, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(5, 'L', 'Vel vitae reprehenderit esse modi.', 47.93, 6, 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(11, 'S', 'Iste modi qui officiis aperiam quod.', 15.70, 2, 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(14, 'Green', 'Sequi est nisi quia doloribus.', 23.59, 19, 1, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(16, '2L', 'Dolores dolore vero quis optio qui.', 16.66, 30, 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(17, 'L', 'Quis animi sed.', 29.76, 25, 2, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(19, '500g', 'Enim numquam tempore enim eos.', 14.92, 18, 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(20, '1Kg', 'Nulla placeat id deleniti.', 48.91, 25, 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(22, '2L', 'Quia consequatur sapiente eligendi quo.', 47.35, 15, 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(23, '500g', 'Temporibus voluptatibus natus.', 15.30, 18, 2, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(24, '1Kg', 'Esse natus ut beatae.', 12.62, 26, 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(25, 'White', 'Modi officia atque quidem consequuntur.', 44.76, 1, 2, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(26, 'S', 'Et sequi dolor.', 21.05, 30, 1, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(27, '5L', 'Hic sit nihil.', 19.47, 18, 2, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(28, 'White', 'Maiores et excepturi.', 23.69, 2, 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(32, 'XL', 'Aliquid aspernatur ut molestiae totam.', 22.45, 5, 1, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(33, 'S', 'Est sapiente molestiae rerum.', 29.72, 19, 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(34, 'L', 'Nesciunt quidem quisquam in blanditiis praesentium.', 39.89, 30, 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(36, 'Oil', 'Vel sunt id facilis.', 45.14, 4, 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(38, '1Kg', 'Necessitatibus perferendis autem sapiente.', 24.50, 9, 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(39, '2L', 'Excepturi maiores perferendis sit modi dolorem.', 12.41, 6, 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(41, '5L', 'Quia aliquid illum corrupti.', 35.99, 19, 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(45, '5L', 'Sed laborum error soluta.', 38.20, 15, 1, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(47, 'L', 'Commodi ratione praesentium architecto dolore et.', 22.62, 26, 2, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(48, 'Oil', 'Et perferendis qui qui minima.', 26.18, 26, 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(49, 'Green', 'Pariatur at et voluptatem.', 37.64, 12, 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(50, 'S', 'Itaque velit sed dolor.', 34.19, 4, 1, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(52, '500g', 'Possimus magni non doloremque.', 49.78, 30, 2, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(53, 'L', 'Quo earum vel sint.', 14.81, 13, 1, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(54, '500g', 'Autem aliquid eos minus.', 26.38, 19, 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(55, 'White', 'Est nemo sapiente.', 47.33, 9, 1, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(58, 'S', 'Deserunt laboriosam hic asperiores dolor.', 47.86, 28, 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(61, '500g', 'Praesentium tempore rerum voluptates totam velit.', 30.00, 6, 4, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(62, '1Kg', 'Maiores dolore perspiciatis.', 37.55, 5, 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(64, '2L', 'Quos maiores rem aut enim enim.', 25.58, 6, 3, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(65, '1Kg', 'Unde non consequuntur amet.', 29.27, 9, 2, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(67, 'Green', 'Pariatur est quo neque.', 11.86, 25, 1, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(69, 'White', 'Est consequatur consequatur hic.', 16.95, 2, 2, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(70, 'S', 'Laudantium animi tenetur dolore doloremque.', 40.31, 26, 2, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(71, ' Engine Oil 15w 40SL/CI-4  (1L)', 'Sed laborum error soluta.', 38.20, 45, 5, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(72, ' Engine Oil 15w 40SL/CI-4  (5L)', 'Sed laborum error soluta.', 38.20, 45, 5, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(73, ' Engine Oil 15w 40SL/CI-4  (1L)', 'Sed laborum error soluta.', 38.20, 47, 5, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(74, ' Engine Oil 15w 40SL/CI-4  (5L)', 'Sed laborum error soluta.', 38.20, 47, 5, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(75, ' Engine Oil 15w 40SL/CI-4  (20L)', 'Sed laborum error soluta.', 38.20, 45, 5, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(76, ' Engine Oil 15w 40SL/CI-4  (20L)', 'Sed laborum error soluta.', 38.20, 47, 5, '2021-02-24 04:32:46', '2021-02-24 04:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `option_groups`
--

CREATE TABLE `option_groups` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option_groups`
--

INSERT INTO `option_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2019-08-31 08:55:28', '2019-08-31 08:55:28'),
(2, 'Color', '2019-10-09 11:26:28', '2019-10-09 11:26:28'),
(3, 'Parfum', '2019-10-09 11:26:28', '2019-10-09 11:26:28'),
(4, 'Taste', '2019-10-09 11:26:28', '2019-10-09 11:26:28'),
(5, 'Extras', '2019-10-09 11:26:28', '2019-10-09 11:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `order_status_id` int UNSIGNED NOT NULL,
  `tax` double(5,2) DEFAULT '0.00',
  `delivery_fee` double(5,2) DEFAULT '0.00',
  `hint` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `driver_id` int UNSIGNED DEFAULT NULL,
  `delivery_address_id` int UNSIGNED DEFAULT NULL,
  `pick_address_id` int NOT NULL,
  `vehicle_id` int NOT NULL,
  `payment_id` int UNSIGNED DEFAULT NULL,
  `allocated_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suggested_driver_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_status_id`, `tax`, `delivery_fee`, `hint`, `active`, `driver_id`, `delivery_address_id`, `pick_address_id`, `vehicle_id`, `payment_id`, `allocated_time`, `suggested_driver_id`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 27.21, 0.00, NULL, 1, NULL, NULL, 0, 0, 1, NULL, NULL, '2021-02-25 11:24:34', '2021-02-25 11:24:34'),
(2, 7, 1, 27.21, 8.04, NULL, 1, NULL, 17, 0, 0, NULL, NULL, NULL, '2021-02-26 07:11:08', '2021-02-26 07:11:08'),
(3, 7, 1, 27.21, 8.04, NULL, 1, NULL, 17, 0, 0, NULL, NULL, NULL, '2021-02-26 07:39:41', '2021-02-26 07:39:41'),
(4, 7, 1, 27.21, 8.04, NULL, 1, NULL, 17, 0, 0, NULL, NULL, NULL, '2021-02-26 07:43:26', '2021-02-26 07:43:26'),
(5, 7, 1, 27.21, 8.04, NULL, 1, NULL, 17, 0, 0, NULL, NULL, NULL, '2021-02-26 07:43:38', '2021-02-26 07:43:38'),
(6, 7, 1, 27.21, 8.04, NULL, 1, NULL, 17, 0, 0, NULL, NULL, NULL, '2021-02-26 08:01:15', '2021-02-26 08:01:15'),
(7, 7, 1, 27.21, 8.04, NULL, 1, NULL, 17, 0, 0, NULL, NULL, NULL, '2021-02-26 08:03:30', '2021-02-26 08:03:30'),
(8, 7, 1, 27.21, 0.00, NULL, 1, NULL, 17, 0, 0, 2, NULL, NULL, '2021-02-26 09:39:09', '2021-02-26 09:39:09'),
(9, 7, 1, 16.63, 2.52, NULL, 1, NULL, 16, 0, 0, 3, NULL, NULL, '2021-02-26 09:44:44', '2021-02-26 09:44:47'),
(10, 7, 1, 16.63, 2.52, NULL, 1, NULL, 16, 0, 0, 4, NULL, NULL, '2021-02-26 09:58:26', '2021-02-26 09:58:26'),
(11, 7, 1, 16.63, 2.52, NULL, 1, NULL, 16, 0, 0, 5, NULL, NULL, '2021-02-26 10:24:28', '2021-02-26 10:24:28'),
(12, 7, 1, 16.63, 2.52, NULL, 1, NULL, 16, 0, 0, NULL, NULL, NULL, '2021-03-02 11:21:00', '2021-03-02 11:21:00'),
(13, 3, 4, 16.63, 4.59, NULL, 1, NULL, 17, 0, 0, 6, NULL, NULL, '2021-03-05 02:10:49', '2021-03-05 12:02:51'),
(14, 1, 4, 16.63, 4.59, NULL, 1, 6, 19, 12, 0, 7, NULL, NULL, '2021-03-05 14:48:07', '2021-03-05 14:48:10'),
(15, 1, 5, 16.63, 4.59, NULL, 1, 6, 19, 12, 0, 7, NULL, NULL, '2021-03-05 14:48:07', '2021-03-05 14:48:10'),
(16, 1, 5, 16.63, 4.59, NULL, 1, 6, 19, 12, 0, 8, NULL, NULL, '2021-03-10 10:48:03', '2021-03-10 10:48:05'),
(17, 1, 1, 16.63, 4.59, NULL, 1, NULL, 19, 0, 0, 9, NULL, NULL, '2021-03-11 09:07:13', '2021-03-11 09:07:15'),
(18, 1, 1, 16.63, 0.00, NULL, 1, NULL, 19, 19, 0, 10, NULL, NULL, '2021-03-11 09:12:15', '2021-03-11 09:12:16'),
(19, 1, 1, 16.63, 999.99, NULL, 1, NULL, 18, 18, 0, 11, NULL, NULL, '2021-03-11 09:13:50', '2021-03-11 09:13:52'),
(20, 1, 5, 16.63, 999.99, NULL, 1, 6, 30, 21, 0, 12, NULL, NULL, '2021-03-11 09:27:32', '2021-03-11 09:27:33'),
(21, 1, 5, 16.63, 4.59, NULL, 1, 6, 30, 32, 0, 13, NULL, NULL, '2021-03-11 09:36:45', '2021-03-11 09:36:46'),
(22, 1, 4, 16.63, 3.06, NULL, 1, 5, 30, 33, 0, 14, NULL, NULL, '2021-03-11 11:57:29', '2021-03-11 11:57:31'),
(23, 1, 1, 16.63, 4.59, NULL, 1, NULL, 33, 0, 0, 15, NULL, NULL, '2021-03-12 07:21:59', '2021-03-12 07:22:00'),
(24, 1, 1, 16.63, 2.52, NULL, 0, NULL, 34, 36, 0, 16, NULL, NULL, '2021-03-17 10:37:49', '2021-03-17 10:55:55'),
(25, 1, 1, 16.63, 24.00, NULL, 1, NULL, 34, 47, 0, 17, NULL, NULL, '2021-03-17 11:12:57', '2021-03-17 11:12:59'),
(26, 1, 1, 16.63, 2.52, NULL, 1, NULL, 34, 48, 0, 18, NULL, NULL, '2021-03-17 11:14:17', '2021-03-17 11:14:19'),
(27, 1, 1, 16.63, 2.52, NULL, 1, NULL, 34, 49, 0, 19, NULL, NULL, '2021-03-17 12:23:17', '2021-03-17 12:23:19'),
(28, 1, 1, 16.63, 0.00, NULL, 1, NULL, NULL, 0, 0, 20, NULL, NULL, '2021-03-20 09:17:12', '2021-03-20 09:17:14'),
(29, 1, 1, 16.63, 0.00, NULL, 1, NULL, NULL, 0, 0, 21, NULL, NULL, '2021-03-20 09:23:34', '2021-03-20 09:23:36'),
(30, 1, 1, 16.63, 2.52, NULL, 1, NULL, NULL, 0, 0, 22, NULL, NULL, '2021-03-20 09:28:24', '2021-03-20 09:28:24'),
(31, 1, 1, 16.63, 0.00, NULL, 1, NULL, NULL, 0, 0, 23, NULL, NULL, '2021-03-20 09:46:50', '2021-03-20 09:46:52'),
(32, 1, 1, 16.63, 0.00, NULL, 1, NULL, NULL, 0, 0, 24, NULL, NULL, '2021-03-20 09:48:54', '2021-03-20 09:48:56'),
(33, 1, 1, 22.44, 0.00, NULL, 1, NULL, NULL, 0, 0, 25, NULL, NULL, '2021-03-20 11:06:27', '2021-03-20 11:06:28'),
(34, 1, 1, 22.44, 0.00, NULL, 1, NULL, NULL, 0, 0, 26, NULL, NULL, '2021-03-21 07:20:02', '2021-03-21 07:20:03'),
(35, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 27, NULL, NULL, '2021-03-21 08:55:31', '2021-03-21 08:55:32'),
(36, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 28, NULL, NULL, '2021-03-21 08:55:34', '2021-03-21 08:55:36'),
(37, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 29, NULL, NULL, '2021-03-21 09:52:27', '2021-03-21 09:52:29'),
(38, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 30, NULL, NULL, '2021-03-21 09:52:31', '2021-03-21 09:52:33'),
(39, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 31, NULL, NULL, '2021-03-21 09:55:06', '2021-03-21 09:55:07'),
(40, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 32, NULL, NULL, '2021-03-21 09:55:09', '2021-03-21 09:55:11'),
(41, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 33, NULL, NULL, '2021-03-21 11:27:16', '2021-03-21 11:27:18'),
(42, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 34, NULL, NULL, '2021-03-21 11:27:19', '2021-03-21 11:27:21'),
(43, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 35, NULL, NULL, '2021-03-21 11:48:46', '2021-03-21 11:48:48'),
(44, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 36, NULL, NULL, '2021-03-21 11:48:49', '2021-03-21 11:48:51'),
(45, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 37, NULL, NULL, '2021-03-21 12:07:57', '2021-03-21 12:07:59'),
(46, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 38, NULL, NULL, '2021-03-21 12:08:54', '2021-03-21 12:08:56'),
(47, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 39, NULL, NULL, '2021-03-21 12:11:02', '2021-03-21 12:11:04'),
(48, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 40, NULL, NULL, '2021-03-21 12:11:06', '2021-03-21 12:11:08'),
(49, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 41, NULL, NULL, '2021-03-21 12:19:09', '2021-03-21 12:19:11'),
(50, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 42, NULL, NULL, '2021-03-21 12:19:13', '2021-03-21 12:19:14'),
(51, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 43, '1700-1730', NULL, '2021-03-21 12:20:31', '2021-03-21 12:20:33'),
(52, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 44, '1700-1730', NULL, '2021-03-21 12:20:34', '2021-03-21 12:20:36'),
(53, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 45, '1700-1730', NULL, '2021-03-21 12:24:01', '2021-03-21 12:24:03'),
(54, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 46, '1600-1630', NULL, '2021-03-21 12:26:28', '2021-03-21 12:26:30'),
(55, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 47, '1600-1630', NULL, '2021-03-21 12:26:32', '2021-03-21 12:26:33'),
(56, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 48, '1630-1700', NULL, '2021-03-21 12:40:47', '2021-03-21 12:40:49'),
(57, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 49, '1600-1630', NULL, '2021-03-21 15:20:06', '2021-03-21 15:20:08'),
(58, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 50, '1600-1630', NULL, '2021-03-21 15:20:10', '2021-03-21 15:20:12'),
(59, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 51, '1600-1630', NULL, '2021-03-22 10:18:27', '2021-03-22 10:18:29'),
(60, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 52, '1600-1630', NULL, '2021-03-23 03:24:36', '2021-03-23 03:24:39'),
(61, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 0, 0, 53, '1600-1630', NULL, '2021-03-23 03:24:40', '2021-03-23 03:24:42'),
(62, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 52, 0, 54, NULL, NULL, '2021-03-23 05:42:25', '2021-03-23 05:42:27'),
(63, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 52, 0, 55, NULL, NULL, '2021-03-23 05:42:28', '2021-03-23 05:42:30'),
(64, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 52, 0, 56, NULL, NULL, '2021-03-24 13:20:21', '2021-03-24 13:20:23'),
(65, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 52, 0, 57, NULL, NULL, '2021-03-24 13:20:25', '2021-03-24 13:20:27'),
(66, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 52, 0, 58, NULL, NULL, '2021-03-24 13:21:49', '2021-03-24 13:21:51'),
(67, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 52, 0, 59, NULL, NULL, '2021-03-24 13:25:43', '2021-03-24 13:25:44'),
(68, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 52, 0, 60, NULL, NULL, '2021-03-24 13:30:51', '2021-03-24 13:30:53'),
(69, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 52, 0, 61, NULL, NULL, '2021-03-24 13:30:54', '2021-03-24 13:30:56'),
(70, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 52, 0, 62, NULL, NULL, '2021-03-24 13:35:27', '2021-03-24 13:35:29'),
(71, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 52, 6, 63, NULL, NULL, '2021-03-24 13:38:04', '2021-03-24 13:38:06'),
(72, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 52, 6, 64, '1630-1700', NULL, '2021-03-24 13:45:18', '2021-03-24 13:45:20'),
(73, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 52, 7, 65, '1700-1730', NULL, '2021-03-24 13:49:24', '2021-03-24 13:49:26'),
(74, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 52, 7, 66, '1700-1730', NULL, '2021-03-24 13:49:27', '2021-03-24 13:49:29'),
(75, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 52, 7, 67, '1630-1700', NULL, '2021-03-24 13:52:02', '2021-03-24 13:52:04'),
(76, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 52, 7, 68, '1630-1700', NULL, '2021-03-24 13:52:05', '2021-03-24 13:52:07'),
(77, 1, 1, 22.44, 1.00, NULL, 1, NULL, 52, 52, 7, 69, '1600-1630', NULL, '2021-03-24 13:58:44', '2021-03-24 13:58:46'),
(78, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 5, 70, NULL, NULL, '2021-03-24 14:28:25', '2021-03-24 14:28:27'),
(79, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 5, 71, NULL, NULL, '2021-03-24 14:29:20', '2021-03-24 14:29:21'),
(80, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 5, 72, NULL, NULL, '2021-03-24 14:32:47', '2021-03-24 14:32:49'),
(81, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 5, 73, NULL, NULL, '2021-03-24 14:32:51', '2021-03-24 14:32:53'),
(82, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 5, 74, NULL, NULL, '2021-03-24 14:40:38', '2021-03-24 14:40:40'),
(83, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 5, 75, NULL, NULL, '2021-03-24 14:40:42', '2021-03-24 14:40:44'),
(84, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 4, 76, '1600-1630', NULL, '2021-03-25 04:41:22', '2021-03-25 04:41:24'),
(85, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 4, 77, '1600-1630', NULL, '2021-03-25 04:41:26', '2021-03-25 04:41:28'),
(86, 1, 1, 22.44, 0.00, NULL, 1, NULL, NULL, 0, 0, 78, NULL, NULL, '2021-03-25 04:49:17', '2021-03-25 04:49:18'),
(87, 1, 1, 22.44, 0.00, NULL, 1, NULL, NULL, 0, 0, 79, NULL, NULL, '2021-03-25 04:49:20', '2021-03-25 04:49:22'),
(88, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 4, 80, '1700-1730', NULL, '2021-03-25 04:52:07', '2021-03-25 04:52:09'),
(89, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 5, 81, '1600-1630', NULL, '2021-03-25 05:06:12', '2021-03-25 05:06:14'),
(90, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 6, 82, '1700-1730', NULL, '2021-03-25 05:22:52', '2021-03-25 05:22:54'),
(91, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 6, 83, '1700-1730', NULL, '2021-03-25 05:22:56', '2021-03-25 05:22:57'),
(92, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 6, 84, '1630-1700', NULL, '2021-03-25 05:24:48', '2021-03-25 05:24:50'),
(93, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 6, 85, '1630-1700', NULL, '2021-03-25 05:24:51', '2021-03-25 05:24:53'),
(94, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 5, 86, '1630-1700', NULL, '2021-03-25 05:27:31', '2021-03-25 05:27:33'),
(95, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 5, 87, '1630-1700', NULL, '2021-03-25 05:27:35', '2021-03-25 05:27:37'),
(96, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 5, 88, '1630-1700', NULL, '2021-03-25 05:34:46', '2021-03-25 05:34:48'),
(97, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 5, 89, '1630-1700', NULL, '2021-03-25 05:34:49', '2021-03-25 05:34:51'),
(98, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 5, 90, '1630-1700', NULL, '2021-03-25 05:37:32', '2021-03-25 05:37:34'),
(99, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 5, 91, '1630-1700', NULL, '2021-03-25 05:59:08', '2021-03-25 05:59:10'),
(100, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 5, 92, '1630-1700', NULL, '2021-03-25 06:28:57', '2021-03-25 06:28:59'),
(101, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 5, 93, '1600-1630', NULL, '2021-03-25 06:41:35', '2021-03-25 06:41:37'),
(102, 1, 1, 22.44, 0.00, NULL, 1, NULL, NULL, 0, 0, 94, NULL, NULL, '2021-03-25 12:10:24', '2021-03-25 12:10:26'),
(103, 1, 1, 22.44, 0.00, NULL, 1, 1, NULL, 0, 0, 95, NULL, NULL, '2021-03-25 12:10:28', '2021-03-25 12:10:29'),
(104, 1, 1, 22.44, 0.00, NULL, 1, NULL, 57, 57, 4, 96, '30', NULL, '2021-03-26 08:35:09', '2021-03-26 08:35:11'),
(105, 1, 1, 22.44, 0.00, NULL, 1, NULL, 57, 57, 4, 97, '30', NULL, '2021-03-26 08:35:13', '2021-03-26 08:35:14'),
(106, 1, 1, 22.44, 0.00, NULL, 1, NULL, 57, 57, 4, 98, NULL, NULL, '2021-03-26 08:39:17', '2021-03-26 08:39:18'),
(107, 1, 1, 22.44, 0.00, NULL, 1, NULL, 57, 57, 5, 99, NULL, NULL, '2021-03-26 08:40:46', '2021-03-26 08:40:48'),
(108, 1, 1, 22.44, 0.00, NULL, 0, NULL, 57, 57, 4, 100, NULL, NULL, '2021-03-26 08:44:43', '2021-03-26 08:45:18'),
(109, 1, 1, 22.44, 0.00, NULL, 1, NULL, 57, 57, 4, 101, NULL, NULL, '2021-03-26 08:44:46', '2021-03-26 08:44:48'),
(110, 1, 1, 22.44, 0.00, NULL, 1, NULL, 57, 57, 4, 102, NULL, NULL, '2021-03-26 08:48:23', '2021-03-26 08:48:25'),
(111, 1, 1, 22.44, 0.00, NULL, 1, NULL, 57, 57, 5, 103, NULL, NULL, '2021-03-26 08:55:05', '2021-03-26 08:55:07'),
(112, 1, 1, 22.44, 0.00, NULL, 1, NULL, 57, 57, 5, 104, NULL, NULL, '2021-03-26 09:02:32', '2021-03-26 09:02:34'),
(113, 1, 1, 22.44, 0.00, NULL, 1, NULL, 57, 57, 4, 105, NULL, NULL, '2021-03-26 09:17:20', '2021-03-26 09:17:22'),
(114, 1, 1, 22.44, 0.00, NULL, 1, NULL, 57, 57, 4, 106, NULL, NULL, '2021-03-26 09:18:16', '2021-03-26 09:18:18'),
(115, 1, 1, 22.44, 0.00, NULL, 1, NULL, 57, 57, 4, 107, NULL, NULL, '2021-03-26 09:19:16', '2021-03-26 09:19:18'),
(116, 1, 1, 22.44, 0.00, NULL, 1, NULL, 57, 57, 4, 108, NULL, NULL, '2021-03-26 09:22:49', '2021-03-26 09:22:51'),
(117, 1, 1, 22.44, 0.00, NULL, 1, NULL, 57, 57, 4, 109, NULL, NULL, '2021-03-26 09:24:56', '2021-03-26 09:24:58'),
(118, 1, 1, 22.44, 0.00, NULL, 1, NULL, 57, 57, 4, 110, NULL, NULL, '2021-03-26 09:30:46', '2021-03-26 09:30:48'),
(119, 1, 1, 22.44, 0.00, NULL, 1, NULL, 52, 52, 4, 111, NULL, NULL, '2021-03-26 10:08:11', '2021-03-26 10:08:12'),
(120, 1, 1, 22.44, 0.00, NULL, 1, NULL, 57, 52, 5, 112, NULL, NULL, '2021-03-26 11:04:55', '2021-03-26 11:04:57'),
(121, 1, 1, 22.44, 0.00, NULL, 1, NULL, 53, 52, 5, 113, NULL, NULL, '2021-03-26 11:18:50', '2021-03-26 11:18:52'),
(122, 1, 1, 22.44, 0.00, NULL, 1, NULL, 56, 56, 4, 114, '30', NULL, '2021-03-26 11:40:08', '2021-03-26 11:40:09'),
(123, 1, 1, 22.44, 0.00, NULL, 1, NULL, 56, 56, 4, 115, '30', NULL, '2021-03-26 11:48:16', '2021-03-26 11:48:17'),
(124, 1, 1, 22.44, 0.00, NULL, 1, NULL, 56, 56, 4, 116, '30', NULL, '2021-03-26 11:52:35', '2021-03-26 11:52:37'),
(126, 1, 1, 22.44, 0.00, NULL, 1, NULL, 57, 57, 4, 118, '30', NULL, '2021-03-26 13:38:52', '2021-03-26 13:38:54'),
(127, 1, 1, 22.44, 0.00, NULL, 1, NULL, 56, 57, 6, 119, '30', NULL, '2021-03-26 14:12:09', '2021-03-26 14:12:11'),
(128, 1, 1, 22.44, 0.00, NULL, 1, NULL, 56, 56, 4, 120, '30', NULL, '2021-03-30 07:39:24', '2021-03-30 07:39:27'),
(129, 1, 1, 22.44, 0.00, NULL, 1, NULL, 57, 20, 4, NULL, '30', NULL, '2021-03-30 08:21:06', '2021-03-30 08:21:06'),
(130, 1, 1, 22.44, 0.00, NULL, 1, NULL, 56, 57, 9, 121, '30', NULL, '2021-03-30 08:25:36', '2021-03-30 08:25:38'),
(131, 1, 1, 22.44, 0.00, NULL, 1, NULL, 57, 57, 10, NULL, '30', NULL, '2021-03-30 08:38:21', '2021-03-30 08:38:21'),
(132, 1, 1, 22.44, 0.00, NULL, 1, NULL, 56, 57, 9, 122, '30', NULL, '2021-03-30 09:07:45', '2021-03-30 09:07:47'),
(133, 12, 1, 22.44, 0.00, NULL, 1, NULL, 56, 56, 11, 123, '30', NULL, '2021-04-07 09:05:30', '2021-04-07 09:05:32'),
(134, 12, 4, 22.44, 0.00, NULL, 1, 5, 56, 56, 11, 124, '14:43-15:28', NULL, '2021-04-09 10:09:30', '2021-04-07 10:09:32'),
(135, 12, 4, 22.44, 0.00, NULL, 1, 5, 56, 56, 11, 125, '12:15-15:00', NULL, '2021-04-09 10:10:28', '2021-04-07 10:10:30'),
(136, 12, 1, 22.44, 0.00, NULL, 1, 2, 56, 56, 11, 126, '13:20-14:56', NULL, '2021-04-09 11:16:08', '2021-04-07 11:16:10'),
(137, 12, 1, 22.44, 0.00, NULL, 1, 1, 56, 17, 11, 127, '10:16-11:01', NULL, '2021-04-09 12:11:16', '2021-04-07 12:11:18'),
(138, 12, 1, 22.44, 0.00, NULL, 1, 1, 56, 56, 11, 128, '08:38-09:23', NULL, '2021-04-09 12:19:06', '2021-04-07 12:19:08'),
(139, 12, 1, 22.44, 0.00, NULL, 1, 5, 56, 56, 12, 129, '02:05-02:50', NULL, '2021-04-09 09:29:36', '2021-04-08 09:29:38'),
(140, 12, 1, 22.44, 0.00, NULL, 1, 2, 56, 56, 11, 130, '14:56-15:41', NULL, '2021-04-09 07:37:48', '2021-04-09 07:37:50'),
(141, 12, 1, 22.44, 0.00, NULL, 1, NULL, 56, 56, 11, 131, '14:56-15:41', 2, '2021-04-09 09:58:36', '2021-04-09 09:58:38'),
(142, 12, 1, 22.44, 0.00, NULL, 1, NULL, 56, 56, 11, 132, '12:43-13:28', 1, '2021-04-09 10:01:03', '2021-04-09 10:01:04'),
(143, 12, 1, 22.44, 0.00, NULL, 1, NULL, 56, 56, 11, 133, '13:33-14:18', 1, '2021-04-09 11:10:34', '2021-04-09 11:10:36'),
(144, 12, 1, 22.44, 0.00, NULL, 1, NULL, 56, 17, 11, 134, '15:49-16:34', 1, '2021-04-10 10:49:18', '2021-04-10 10:49:20'),
(145, 12, 1, 22.44, 0.00, NULL, 1, NULL, 56, 17, 11, 135, '15:49-16:34', 1, '2021-04-10 10:52:27', '2021-04-10 10:52:29'),
(146, 12, 1, 22.44, 0.00, NULL, 1, NULL, 56, 56, 11, 136, '13:37-14:22', 1, '2021-04-10 11:07:10', '2021-04-10 11:07:12'),
(147, 12, 1, 22.44, 0.00, NULL, 1, NULL, 56, 56, 11, 137, '13:42-14:27', 1, '2021-04-10 11:13:00', '2021-04-10 11:13:01'),
(148, 14, 1, 15.00, 0.00, NULL, 1, NULL, 52, 52, 13, NULL, '07:20-08:05', 1, '2021-04-12 01:58:18', '2021-04-12 01:58:18'),
(149, 14, 1, 15.00, 0.00, NULL, 1, NULL, 52, 52, 13, NULL, '07:20-08:05', 1, '2021-04-12 02:05:11', '2021-04-12 02:05:11'),
(150, 20, 1, 15.00, 0.00, NULL, 1, NULL, 52, 52, 14, NULL, '16:51-17:36', 1, '2021-04-14 13:31:55', '2021-04-14 13:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `order_diver_locations`
--

CREATE TABLE `order_diver_locations` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int UNSIGNED NOT NULL,
  `status` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `can_message` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `status`, `can_message`, `created_at`, `updated_at`) VALUES
(1, 'Order Received', 1, '2019-08-30 14:39:28', '2019-10-15 16:03:14'),
(2, 'Preparing', 0, '2019-10-15 16:03:50', '2019-10-15 16:03:50'),
(3, 'Ready', 0, '2019-10-15 16:04:30', '2019-10-15 16:04:30'),
(4, 'On the Way', 1, '2019-10-15 16:04:13', '2019-10-15 16:04:13'),
(5, 'Delivered', 0, '2019-10-15 16:04:30', '2019-10-15 16:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('magwenzilierance@gmail.com', '$2y$10$Rf714bExuQdwGu3ulWSVZOWaFkgY45LcZCAdy2ohkwGCLJBqeDKdC', '2021-04-07 05:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `price`, `description`, `user_id`, `status`, `method`, `created_at`, `updated_at`) VALUES
(1, 184.15, 'Order not paid yet', 7, 'Waiting for Client', 'Pay on Pickup', '2021-02-25 11:24:34', '2021-02-25 11:24:34'),
(2, 322.26, 'Order not paid yet', 7, 'Waiting for Client', 'Pay on Pickup', '2021-02-26 09:39:09', '2021-02-26 09:39:09'),
(3, 45.36, 'Order paid successfully', 7, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-02-26 09:44:47', '2021-02-26 09:44:47'),
(4, 130.19, 'Order not paid yet', 7, 'Waiting for Client', 'Credit Card', '2021-02-26 09:58:26', '2021-02-26 09:58:26'),
(5, 172.61, 'Order not paid yet', 7, 'Waiting for Client', 'Credit Card', '2021-02-26 10:24:28', '2021-02-26 10:24:28'),
(6, 6.52, 'Order paid successfully', 1, 'Waiting for Client', 'Credit Card (Stripe Gateway)', '2021-03-05 02:10:52', '2021-03-05 12:02:51'),
(7, 6.52, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-05 14:48:10', '2021-03-05 14:48:10'),
(8, 6.52, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-10 10:48:05', '2021-03-10 10:48:05'),
(9, 6.52, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-11 09:07:15', '2021-03-11 09:07:15'),
(10, 1.17, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-11 09:12:16', '2021-03-11 09:12:16'),
(11, 43944.40, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-11 09:13:52', '2021-03-11 09:13:52'),
(12, 47242.74, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-11 09:27:33', '2021-03-11 09:27:33'),
(13, 6.52, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-11 09:36:46', '2021-03-11 09:36:46'),
(14, 4.74, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-11 11:57:31', '2021-03-11 11:57:31'),
(15, 6.52, 'Order not paid yet', 1, 'Waiting for Client', 'Cash on Delivery', '2021-03-12 07:22:00', '2021-03-12 07:22:00'),
(16, 4.11, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-17 10:37:51', '2021-03-17 10:37:51'),
(17, 29.16, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-17 11:12:59', '2021-03-17 11:12:59'),
(18, 4.11, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-17 11:14:19', '2021-03-17 11:14:19'),
(19, 4.11, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-17 12:23:19', '2021-03-17 12:23:19'),
(20, 78.14, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-20 09:17:14', '2021-03-20 09:17:14'),
(21, 78.14, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-20 09:23:35', '2021-03-20 09:23:35'),
(22, 81.08, 'Order not paid yet', 1, 'Waiting for Client', 'Cash on Delivery', '2021-03-20 09:28:24', '2021-03-20 09:28:24'),
(23, 78.14, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-20 09:46:52', '2021-03-20 09:46:52'),
(24, 78.14, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-20 09:48:56', '2021-03-20 09:48:56'),
(25, 82.03, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-20 11:06:28', '2021-03-20 11:06:28'),
(26, 45.79, 'Order not paid yet', 1, 'Waiting for Client', 'Pay on Pickup', '2021-03-21 07:20:03', '2021-03-21 07:20:03'),
(27, 49.47, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 08:55:32', '2021-03-21 08:55:32'),
(28, 49.47, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 08:55:36', '2021-03-21 08:55:36'),
(29, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 09:52:29', '2021-03-21 09:52:29'),
(30, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 09:52:33', '2021-03-21 09:52:33'),
(31, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 09:55:07', '2021-03-21 09:55:07'),
(32, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 09:55:11', '2021-03-21 09:55:11'),
(33, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 11:27:18', '2021-03-21 11:27:18'),
(34, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 11:27:21', '2021-03-21 11:27:21'),
(35, 92.81, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 11:48:48', '2021-03-21 11:48:48'),
(36, 92.81, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 11:48:51', '2021-03-21 11:48:51'),
(37, 69.91, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 12:07:59', '2021-03-21 12:07:59'),
(38, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 12:08:55', '2021-03-21 12:08:55'),
(39, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 12:11:04', '2021-03-21 12:11:04'),
(40, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 12:11:08', '2021-03-21 12:11:08'),
(41, 47.02, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 12:19:11', '2021-03-21 12:19:11'),
(42, 47.02, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 12:19:14', '2021-03-21 12:19:14'),
(43, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 12:20:33', '2021-03-21 12:20:33'),
(44, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 12:20:36', '2021-03-21 12:20:36'),
(45, 47.02, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 12:24:03', '2021-03-21 12:24:03'),
(46, 26.57, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 12:26:30', '2021-03-21 12:26:30'),
(47, 26.57, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 12:26:33', '2021-03-21 12:26:33'),
(48, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 12:40:49', '2021-03-21 12:40:49'),
(49, 92.81, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 15:20:08', '2021-03-21 15:20:08'),
(50, 92.81, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-21 15:20:12', '2021-03-21 15:20:12'),
(51, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-22 10:18:29', '2021-03-22 10:18:29'),
(52, 47.02, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-23 03:24:39', '2021-03-23 03:24:39'),
(53, 47.02, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-23 03:24:42', '2021-03-23 03:24:42'),
(54, 47.02, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-23 05:42:27', '2021-03-23 05:42:27'),
(55, 47.02, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-23 05:42:30', '2021-03-23 05:42:30'),
(56, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-24 13:20:23', '2021-03-24 13:20:23'),
(57, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-24 13:20:27', '2021-03-24 13:20:27'),
(58, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-24 13:21:51', '2021-03-24 13:21:51'),
(59, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-24 13:25:44', '2021-03-24 13:25:44'),
(60, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-24 13:30:53', '2021-03-24 13:30:53'),
(61, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-24 13:30:56', '2021-03-24 13:30:56'),
(62, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-24 13:35:29', '2021-03-24 13:35:29'),
(63, 26.57, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-24 13:38:06', '2021-03-24 13:38:06'),
(64, 47.02, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-24 13:45:20', '2021-03-24 13:45:20'),
(65, 26.57, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-24 13:49:26', '2021-03-24 13:49:26'),
(66, 26.57, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-24 13:49:29', '2021-03-24 13:49:29'),
(67, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-24 13:52:04', '2021-03-24 13:52:04'),
(68, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-24 13:52:07', '2021-03-24 13:52:07'),
(69, 24.12, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-24 13:58:45', '2021-03-24 13:58:45'),
(70, 76.04, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-24 14:28:26', '2021-03-24 14:28:26'),
(71, 25.35, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-24 14:29:21', '2021-03-24 14:29:21'),
(72, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-24 14:32:49', '2021-03-24 14:32:49'),
(73, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-24 14:32:53', '2021-03-24 14:32:53'),
(74, 961.64, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-24 14:40:40', '2021-03-24 14:40:40'),
(75, 961.64, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-24 14:40:44', '2021-03-24 14:40:44'),
(76, 45.79, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-25 04:41:23', '2021-03-25 04:41:23'),
(77, 45.79, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-25 04:41:28', '2021-03-25 04:41:28'),
(78, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-25 04:49:18', '2021-03-25 04:49:18'),
(79, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-25 04:49:22', '2021-03-25 04:49:22'),
(80, 35.14, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-25 04:52:09', '2021-03-25 04:52:09'),
(81, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-25 05:06:13', '2021-03-25 05:06:13'),
(82, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-25 05:22:54', '2021-03-25 05:22:54'),
(83, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-25 05:22:57', '2021-03-25 05:22:57'),
(84, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-25 05:24:50', '2021-03-25 05:24:50'),
(85, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-25 05:24:53', '2021-03-25 05:24:53'),
(86, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-25 05:27:33', '2021-03-25 05:27:33'),
(87, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-25 05:27:36', '2021-03-25 05:27:36'),
(88, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-25 05:34:48', '2021-03-25 05:34:48'),
(89, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-25 05:34:51', '2021-03-25 05:34:51'),
(90, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-25 05:37:34', '2021-03-25 05:37:34'),
(91, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-25 05:59:10', '2021-03-25 05:59:10'),
(92, 35.14, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-25 06:28:59', '2021-03-25 06:28:59'),
(93, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-25 06:41:37', '2021-03-25 06:41:37'),
(94, 82.03, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-25 12:10:26', '2021-03-25 12:10:26'),
(95, 82.03, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-25 12:10:29', '2021-03-25 12:10:29'),
(96, 91.59, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 08:35:11', '2021-03-26 08:35:11'),
(97, 91.59, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 08:35:14', '2021-03-26 08:35:14'),
(98, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 08:39:18', '2021-03-26 08:39:18'),
(99, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 08:40:48', '2021-03-26 08:40:48'),
(100, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 08:44:45', '2021-03-26 08:44:45'),
(101, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 08:44:48', '2021-03-26 08:44:48'),
(102, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 08:48:25', '2021-03-26 08:48:25'),
(103, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 08:55:07', '2021-03-26 08:55:07'),
(104, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 09:02:34', '2021-03-26 09:02:34'),
(105, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 09:17:22', '2021-03-26 09:17:22'),
(106, 50.69, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 09:18:18', '2021-03-26 09:18:18'),
(107, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 09:19:18', '2021-03-26 09:19:18'),
(108, 45.79, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 09:22:51', '2021-03-26 09:22:51'),
(109, 1144.81, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 09:24:58', '2021-03-26 09:24:58'),
(110, 2999.41, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 09:30:48', '2021-03-26 09:30:48'),
(111, 3709.20, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 10:08:12', '2021-03-26 10:08:12'),
(112, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 11:04:57', '2021-03-26 11:04:57'),
(113, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 11:18:52', '2021-03-26 11:18:52'),
(114, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 11:40:09', '2021-03-26 11:40:09'),
(115, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 11:48:17', '2021-03-26 11:48:17'),
(116, 1167.71, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 11:52:37', '2021-03-26 11:52:37'),
(117, 82.03, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 12:33:19', '2021-03-26 12:33:19'),
(118, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 13:38:54', '2021-03-26 13:38:54'),
(119, 22.90, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-26 14:12:11', '2021-03-26 14:12:11'),
(120, 45.79, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-30 07:39:26', '2021-03-30 07:39:26'),
(121, 3327.18, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-30 08:25:38', '2021-03-30 08:25:38'),
(122, 82.03, 'Order paid successfully', 1, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-03-30 09:07:47', '2021-03-30 09:07:47'),
(123, 274.76, 'Order paid successfully', 12, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-04-07 09:05:32', '2021-04-07 09:05:32'),
(124, 68.69, 'Order paid successfully', 12, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-04-07 10:09:32', '2021-04-07 10:09:32'),
(125, 22.90, 'Order paid successfully', 12, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-04-07 10:10:30', '2021-04-07 10:10:30'),
(126, 48.24, 'Order paid successfully', 12, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-04-07 11:16:10', '2021-04-07 11:16:10'),
(127, 22.90, 'Order paid successfully', 12, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-04-07 12:11:18', '2021-04-07 12:11:18'),
(128, 198075.72, 'Order paid successfully', 12, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-04-07 12:19:08', '2021-04-07 12:19:08'),
(129, 45.79, 'Order paid successfully', 12, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-04-08 09:29:38', '2021-04-08 09:29:38'),
(130, 91.59, 'Order paid successfully', 12, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-04-09 07:37:50', '2021-04-09 07:37:50'),
(131, 68.69, 'Order paid successfully', 12, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-04-09 09:58:38', '2021-04-09 09:58:38'),
(132, 22.90, 'Order paid successfully', 12, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-04-09 10:01:04', '2021-04-09 10:01:04'),
(133, 22.90, 'Order paid successfully', 12, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-04-09 11:10:35', '2021-04-09 11:10:35'),
(134, 1053.23, 'Order paid successfully', 12, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-04-10 10:49:20', '2021-04-10 10:49:20'),
(135, 82.03, 'Order paid successfully', 12, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-04-10 10:52:28', '2021-04-10 10:52:28'),
(136, 1305.09, 'Order paid successfully', 12, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-04-10 11:07:12', '2021-04-10 11:07:12'),
(137, 15.92, 'Order paid successfully', 12, 'succeeded', 'Credit Card (Stripe Gateway)', '2021-04-10 11:13:01', '2021-04-10 11:13:01');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'users.profile', 'web', '2020-03-29 12:58:02', '2020-03-29 12:58:02', NULL),
(2, 'dashboard', 'web', '2020-03-29 12:58:02', '2020-03-29 12:58:02', NULL),
(3, 'medias.create', 'web', '2020-03-29 12:58:02', '2020-03-29 12:58:02', NULL),
(4, 'medias.delete', 'web', '2020-03-29 12:58:02', '2020-03-29 12:58:02', NULL),
(5, 'medias', 'web', '2020-03-29 12:58:03', '2020-03-29 12:58:03', NULL),
(6, 'permissions.index', 'web', '2020-03-29 12:58:03', '2020-03-29 12:58:03', NULL),
(7, 'permissions.edit', 'web', '2020-03-29 12:58:03', '2020-03-29 12:58:03', NULL),
(8, 'permissions.update', 'web', '2020-03-29 12:58:03', '2020-03-29 12:58:03', NULL),
(9, 'permissions.destroy', 'web', '2020-03-29 12:58:03', '2020-03-29 12:58:03', NULL),
(10, 'roles.index', 'web', '2020-03-29 12:58:03', '2020-03-29 12:58:03', NULL),
(11, 'roles.edit', 'web', '2020-03-29 12:58:03', '2020-03-29 12:58:03', NULL),
(12, 'roles.update', 'web', '2020-03-29 12:58:03', '2020-03-29 12:58:03', NULL),
(13, 'roles.destroy', 'web', '2020-03-29 12:58:03', '2020-03-29 12:58:03', NULL),
(14, 'customFields.index', 'web', '2020-03-29 12:58:03', '2020-03-29 12:58:03', NULL),
(15, 'customFields.create', 'web', '2020-03-29 12:58:03', '2020-03-29 12:58:03', NULL),
(16, 'customFields.store', 'web', '2020-03-29 12:58:03', '2020-03-29 12:58:03', NULL),
(17, 'customFields.show', 'web', '2020-03-29 12:58:03', '2020-03-29 12:58:03', NULL),
(18, 'customFields.edit', 'web', '2020-03-29 12:58:03', '2020-03-29 12:58:03', NULL),
(19, 'customFields.update', 'web', '2020-03-29 12:58:04', '2020-03-29 12:58:04', NULL),
(20, 'customFields.destroy', 'web', '2020-03-29 12:58:04', '2020-03-29 12:58:04', NULL),
(21, 'users.login-as-user', 'web', '2020-03-29 12:58:04', '2020-03-29 12:58:04', NULL),
(22, 'users.index', 'web', '2020-03-29 12:58:04', '2020-03-29 12:58:04', NULL),
(23, 'users.create', 'web', '2020-03-29 12:58:04', '2020-03-29 12:58:04', NULL),
(24, 'users.store', 'web', '2020-03-29 12:58:04', '2020-03-29 12:58:04', NULL),
(25, 'users.show', 'web', '2020-03-29 12:58:04', '2020-03-29 12:58:04', NULL),
(26, 'users.edit', 'web', '2020-03-29 12:58:04', '2020-03-29 12:58:04', NULL),
(27, 'users.update', 'web', '2020-03-29 12:58:04', '2020-03-29 12:58:04', NULL),
(28, 'users.destroy', 'web', '2020-03-29 12:58:04', '2020-03-29 12:58:04', NULL),
(29, 'app-settings', 'web', '2020-03-29 12:58:04', '2020-03-29 12:58:04', NULL),
(30, 'markets.index', 'web', '2020-03-29 12:58:04', '2020-03-29 12:58:04', NULL),
(31, 'markets.create', 'web', '2020-03-29 12:58:04', '2020-03-29 12:58:04', NULL),
(32, 'markets.store', 'web', '2020-03-29 12:58:04', '2020-03-29 12:58:04', NULL),
(33, 'markets.edit', 'web', '2020-03-29 12:58:04', '2020-03-29 12:58:04', NULL),
(34, 'markets.update', 'web', '2020-03-29 12:58:05', '2020-03-29 12:58:05', NULL),
(35, 'markets.destroy', 'web', '2020-03-29 12:58:05', '2020-03-29 12:58:05', NULL),
(36, 'categories.index', 'web', '2020-03-29 12:58:05', '2020-03-29 12:58:05', NULL),
(37, 'categories.create', 'web', '2020-03-29 12:58:05', '2020-03-29 12:58:05', NULL),
(38, 'categories.store', 'web', '2020-03-29 12:58:05', '2020-03-29 12:58:05', NULL),
(39, 'categories.edit', 'web', '2020-03-29 12:58:05', '2020-03-29 12:58:05', NULL),
(40, 'categories.update', 'web', '2020-03-29 12:58:05', '2020-03-29 12:58:05', NULL),
(41, 'categories.destroy', 'web', '2020-03-29 12:58:05', '2020-03-29 12:58:05', NULL),
(42, 'faqCategories.index', 'web', '2020-03-29 12:58:06', '2020-03-29 12:58:06', NULL),
(43, 'faqCategories.create', 'web', '2020-03-29 12:58:06', '2020-03-29 12:58:06', NULL),
(44, 'faqCategories.store', 'web', '2020-03-29 12:58:06', '2020-03-29 12:58:06', NULL),
(45, 'faqCategories.edit', 'web', '2020-03-29 12:58:06', '2020-03-29 12:58:06', NULL),
(46, 'faqCategories.update', 'web', '2020-03-29 12:58:06', '2020-03-29 12:58:06', NULL),
(47, 'faqCategories.destroy', 'web', '2020-03-29 12:58:06', '2020-03-29 12:58:06', NULL),
(48, 'orderStatuses.index', 'web', '2020-03-29 12:58:06', '2020-03-29 12:58:06', NULL),
(49, 'orderStatuses.show', 'web', '2020-03-29 12:58:06', '2020-03-29 12:58:06', NULL),
(50, 'orderStatuses.edit', 'web', '2020-03-29 12:58:06', '2020-03-29 12:58:06', NULL),
(51, 'orderStatuses.update', 'web', '2020-03-29 12:58:07', '2020-03-29 12:58:07', NULL),
(52, 'products.index', 'web', '2020-03-29 12:58:07', '2020-03-29 12:58:07', NULL),
(53, 'products.create', 'web', '2020-03-29 12:58:07', '2020-03-29 12:58:07', NULL),
(54, 'products.store', 'web', '2020-03-29 12:58:07', '2020-03-29 12:58:07', NULL),
(55, 'products.edit', 'web', '2020-03-29 12:58:07', '2020-03-29 12:58:07', NULL),
(56, 'products.update', 'web', '2020-03-29 12:58:07', '2020-03-29 12:58:07', NULL),
(57, 'products.destroy', 'web', '2020-03-29 12:58:07', '2020-03-29 12:58:07', NULL),
(58, 'galleries.index', 'web', '2020-03-29 12:58:07', '2020-03-29 12:58:07', NULL),
(59, 'galleries.create', 'web', '2020-03-29 12:58:07', '2020-03-29 12:58:07', NULL),
(60, 'galleries.store', 'web', '2020-03-29 12:58:08', '2020-03-29 12:58:08', NULL),
(61, 'galleries.edit', 'web', '2020-03-29 12:58:08', '2020-03-29 12:58:08', NULL),
(62, 'galleries.update', 'web', '2020-03-29 12:58:08', '2020-03-29 12:58:08', NULL),
(63, 'galleries.destroy', 'web', '2020-03-29 12:58:08', '2020-03-29 12:58:08', NULL),
(64, 'productReviews.index', 'web', '2020-03-29 12:58:08', '2020-03-29 12:58:08', NULL),
(65, 'productReviews.create', 'web', '2020-03-29 12:58:08', '2020-03-29 12:58:08', NULL),
(66, 'productReviews.store', 'web', '2020-03-29 12:58:08', '2020-03-29 12:58:08', NULL),
(67, 'productReviews.edit', 'web', '2020-03-29 12:58:08', '2020-03-29 12:58:08', NULL),
(68, 'productReviews.update', 'web', '2020-03-29 12:58:08', '2020-03-29 12:58:08', NULL),
(69, 'productReviews.destroy', 'web', '2020-03-29 12:58:08', '2020-03-29 12:58:08', NULL),
(76, 'options.index', 'web', '2020-03-29 12:58:09', '2020-03-29 12:58:09', NULL),
(77, 'options.create', 'web', '2020-03-29 12:58:09', '2020-03-29 12:58:09', NULL),
(78, 'options.store', 'web', '2020-03-29 12:58:09', '2020-03-29 12:58:09', NULL),
(79, 'options.show', 'web', '2020-03-29 12:58:10', '2020-03-29 12:58:10', NULL),
(80, 'options.edit', 'web', '2020-03-29 12:58:10', '2020-03-29 12:58:10', NULL),
(81, 'options.update', 'web', '2020-03-29 12:58:10', '2020-03-29 12:58:10', NULL),
(82, 'options.destroy', 'web', '2020-03-29 12:58:10', '2020-03-29 12:58:10', NULL),
(83, 'payments.index', 'web', '2020-03-29 12:58:10', '2020-03-29 12:58:10', NULL),
(84, 'payments.show', 'web', '2020-03-29 12:58:10', '2020-03-29 12:58:10', NULL),
(85, 'payments.update', 'web', '2020-03-29 12:58:10', '2020-03-29 12:58:10', NULL),
(86, 'faqs.index', 'web', '2020-03-29 12:58:10', '2020-03-29 12:58:10', NULL),
(87, 'faqs.create', 'web', '2020-03-29 12:58:11', '2020-03-29 12:58:11', NULL),
(88, 'faqs.store', 'web', '2020-03-29 12:58:11', '2020-03-29 12:58:11', NULL),
(89, 'faqs.edit', 'web', '2020-03-29 12:58:11', '2020-03-29 12:58:11', NULL),
(90, 'faqs.update', 'web', '2020-03-29 12:58:11', '2020-03-29 12:58:11', NULL),
(91, 'faqs.destroy', 'web', '2020-03-29 12:58:11', '2020-03-29 12:58:11', NULL),
(92, 'marketReviews.index', 'web', '2020-03-29 12:58:11', '2020-03-29 12:58:11', NULL),
(93, 'marketReviews.create', 'web', '2020-03-29 12:58:11', '2020-03-29 12:58:11', NULL),
(94, 'marketReviews.store', 'web', '2020-03-29 12:58:12', '2020-03-29 12:58:12', NULL),
(95, 'marketReviews.edit', 'web', '2020-03-29 12:58:12', '2020-03-29 12:58:12', NULL),
(96, 'marketReviews.update', 'web', '2020-03-29 12:58:12', '2020-03-29 12:58:12', NULL),
(97, 'marketReviews.destroy', 'web', '2020-03-29 12:58:12', '2020-03-29 12:58:12', NULL),
(98, 'favorites.index', 'web', '2020-03-29 12:58:12', '2020-03-29 12:58:12', NULL),
(99, 'favorites.create', 'web', '2020-03-29 12:58:12', '2020-03-29 12:58:12', NULL),
(100, 'favorites.store', 'web', '2020-03-29 12:58:12', '2020-03-29 12:58:12', NULL),
(101, 'favorites.edit', 'web', '2020-03-29 12:58:12', '2020-03-29 12:58:12', NULL),
(102, 'favorites.update', 'web', '2020-03-29 12:58:12', '2020-03-29 12:58:12', NULL),
(103, 'favorites.destroy', 'web', '2020-03-29 12:58:13', '2020-03-29 12:58:13', NULL),
(104, 'orders.index', 'web', '2020-03-29 12:58:13', '2020-03-29 12:58:13', NULL),
(105, 'orders.create', 'web', '2020-03-29 12:58:13', '2020-03-29 12:58:13', NULL),
(106, 'orders.store', 'web', '2020-03-29 12:58:13', '2020-03-29 12:58:13', NULL),
(107, 'orders.show', 'web', '2020-03-29 12:58:13', '2020-03-29 12:58:13', NULL),
(108, 'orders.edit', 'web', '2020-03-29 12:58:13', '2020-03-29 12:58:13', NULL),
(109, 'orders.update', 'web', '2020-03-29 12:58:13', '2020-03-29 12:58:13', NULL),
(110, 'orders.destroy', 'web', '2020-03-29 12:58:13', '2020-03-29 12:58:13', NULL),
(111, 'notifications.index', 'web', '2020-03-29 12:58:14', '2020-03-29 12:58:14', NULL),
(112, 'notifications.show', 'web', '2020-03-29 12:58:14', '2020-03-29 12:58:14', NULL),
(113, 'notifications.destroy', 'web', '2020-03-29 12:58:14', '2020-03-29 12:58:14', NULL),
(114, 'carts.index', 'web', '2020-03-29 12:58:14', '2020-03-29 12:58:14', NULL),
(115, 'carts.edit', 'web', '2020-03-29 12:58:14', '2020-03-29 12:58:14', NULL),
(116, 'carts.update', 'web', '2020-03-29 12:58:14', '2020-03-29 12:58:14', NULL),
(117, 'carts.destroy', 'web', '2020-03-29 12:58:14', '2020-03-29 12:58:14', NULL),
(118, 'currencies.index', 'web', '2020-03-29 12:58:14', '2020-03-29 12:58:14', NULL),
(119, 'currencies.create', 'web', '2020-03-29 12:58:15', '2020-03-29 12:58:15', NULL),
(120, 'currencies.store', 'web', '2020-03-29 12:58:15', '2020-03-29 12:58:15', NULL),
(121, 'currencies.edit', 'web', '2020-03-29 12:58:15', '2020-03-29 12:58:15', NULL),
(122, 'currencies.update', 'web', '2020-03-29 12:58:15', '2020-03-29 12:58:15', NULL),
(123, 'currencies.destroy', 'web', '2020-03-29 12:58:15', '2020-03-29 12:58:15', NULL),
(124, 'deliveryAddresses.index', 'web', '2020-03-29 12:58:15', '2020-03-29 12:58:15', NULL),
(125, 'deliveryAddresses.create', 'web', '2020-03-29 12:58:15', '2020-03-29 12:58:15', NULL),
(126, 'deliveryAddresses.store', 'web', '2020-03-29 12:58:15', '2020-03-29 12:58:15', NULL),
(127, 'deliveryAddresses.edit', 'web', '2020-03-29 12:58:16', '2020-03-29 12:58:16', NULL),
(128, 'deliveryAddresses.update', 'web', '2020-03-29 12:58:16', '2020-03-29 12:58:16', NULL),
(129, 'deliveryAddresses.destroy', 'web', '2020-03-29 12:58:16', '2020-03-29 12:58:16', NULL),
(130, 'drivers.index', 'web', '2020-03-29 12:58:16', '2020-03-29 12:58:16', NULL),
(131, 'drivers.create', 'web', '2020-03-29 12:58:16', '2020-03-29 12:58:16', NULL),
(132, 'drivers.store', 'web', '2020-03-29 12:58:16', '2020-03-29 12:58:16', NULL),
(133, 'drivers.show', 'web', '2020-03-29 12:58:16', '2020-03-29 12:58:16', NULL),
(134, 'drivers.edit', 'web', '2020-03-29 12:58:16', '2020-03-29 12:58:16', NULL),
(135, 'drivers.update', 'web', '2020-03-29 12:58:16', '2020-03-29 12:58:16', NULL),
(136, 'drivers.destroy', 'web', '2020-03-29 12:58:17', '2020-03-29 12:58:17', NULL),
(137, 'earnings.index', 'web', '2020-03-29 12:58:17', '2020-03-29 12:58:17', NULL),
(138, 'earnings.create', 'web', '2020-03-29 12:58:17', '2020-03-29 12:58:17', NULL),
(139, 'earnings.store', 'web', '2020-03-29 12:58:17', '2020-03-29 12:58:17', NULL),
(140, 'earnings.show', 'web', '2020-03-29 12:58:17', '2020-03-29 12:58:17', NULL),
(141, 'earnings.edit', 'web', '2020-03-29 12:58:17', '2020-03-29 12:58:17', NULL),
(142, 'earnings.update', 'web', '2020-03-29 12:58:17', '2020-03-29 12:58:17', NULL),
(143, 'earnings.destroy', 'web', '2020-03-29 12:58:17', '2020-03-29 12:58:17', NULL),
(144, 'driversPayouts.index', 'web', '2020-03-29 12:58:17', '2020-03-29 12:58:17', NULL),
(145, 'driversPayouts.create', 'web', '2020-03-29 12:58:17', '2020-03-29 12:58:17', NULL),
(146, 'driversPayouts.store', 'web', '2020-03-29 12:58:18', '2020-03-29 12:58:18', NULL),
(147, 'driversPayouts.show', 'web', '2020-03-29 12:58:18', '2020-03-29 12:58:18', NULL),
(148, 'driversPayouts.edit', 'web', '2020-03-29 12:58:18', '2020-03-29 12:58:18', NULL),
(149, 'driversPayouts.update', 'web', '2020-03-29 12:58:18', '2020-03-29 12:58:18', NULL),
(150, 'driversPayouts.destroy', 'web', '2020-03-29 12:58:18', '2020-03-29 12:58:18', NULL),
(151, 'marketsPayouts.index', 'web', '2020-03-29 12:58:18', '2020-03-29 12:58:18', NULL),
(152, 'marketsPayouts.create', 'web', '2020-03-29 12:58:18', '2020-03-29 12:58:18', NULL),
(153, 'marketsPayouts.store', 'web', '2020-03-29 12:58:18', '2020-03-29 12:58:18', NULL),
(154, 'marketsPayouts.show', 'web', '2020-03-29 12:58:18', '2020-03-29 12:58:18', NULL),
(155, 'marketsPayouts.edit', 'web', '2020-03-29 12:58:18', '2020-03-29 12:58:18', NULL),
(156, 'marketsPayouts.update', 'web', '2020-03-29 12:58:19', '2020-03-29 12:58:19', NULL),
(157, 'marketsPayouts.destroy', 'web', '2020-03-29 12:58:19', '2020-03-29 12:58:19', NULL),
(158, 'permissions.create', 'web', '2020-03-29 12:59:15', '2020-03-29 12:59:15', NULL),
(159, 'permissions.store', 'web', '2020-03-29 12:59:15', '2020-03-29 12:59:15', NULL),
(160, 'permissions.show', 'web', '2020-03-29 12:59:15', '2020-03-29 12:59:15', NULL),
(161, 'roles.create', 'web', '2020-03-29 12:59:15', '2020-03-29 12:59:15', NULL),
(162, 'roles.store', 'web', '2020-03-29 12:59:15', '2020-03-29 12:59:15', NULL),
(163, 'roles.show', 'web', '2020-03-29 12:59:16', '2020-03-29 12:59:16', NULL),
(164, 'fields.index', 'web', '2020-04-11 13:04:39', '2020-04-11 13:04:39', NULL),
(165, 'fields.create', 'web', '2020-04-11 13:04:39', '2020-04-11 13:04:39', NULL),
(166, 'fields.store', 'web', '2020-04-11 13:04:39', '2020-04-11 13:04:39', NULL),
(167, 'fields.edit', 'web', '2020-04-11 13:04:39', '2020-04-11 13:04:39', NULL),
(168, 'fields.update', 'web', '2020-04-11 13:04:39', '2020-04-11 13:04:39', NULL),
(169, 'fields.destroy', 'web', '2020-04-11 13:04:40', '2020-04-11 13:04:40', NULL),
(170, 'optionGroups.index', 'web', '2020-04-11 13:04:40', '2020-04-11 13:04:40', NULL),
(171, 'optionGroups.create', 'web', '2020-04-11 13:04:40', '2020-04-11 13:04:40', NULL),
(172, 'optionGroups.store', 'web', '2020-04-11 13:04:40', '2020-04-11 13:04:40', NULL),
(173, 'optionGroups.edit', 'web', '2020-04-11 13:04:40', '2020-04-11 13:04:40', NULL),
(174, 'optionGroups.update', 'web', '2020-04-11 13:04:40', '2020-04-11 13:04:40', NULL),
(175, 'optionGroups.destroy', 'web', '2020-04-11 13:04:40', '2020-04-11 13:04:40', NULL),
(176, 'requestedMarkets.index', 'web', '2020-08-13 12:58:02', '2020-08-13 12:58:02', NULL),
(183, 'coupons.index', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(184, 'coupons.create', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(185, 'coupons.store', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(186, 'coupons.edit', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(187, 'coupons.update', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(188, 'coupons.destroy', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(189, 'slides.index', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(190, 'slides.create', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(191, 'slides.store', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(192, 'slides.edit', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(193, 'slides.update', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(194, 'slides.destroy', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `petrolium_products`
--

CREATE TABLE `petrolium_products` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `discount_price` double(8,2) DEFAULT '0.00',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `capacity` double(9,2) DEFAULT '0.00',
  `package_items_count` double(9,2) DEFAULT '0.00',
  `unit` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `featured` tinyint(1) DEFAULT '0',
  `deliverable` tinyint(1) DEFAULT '1',
  `market_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `discount_price`, `description`, `capacity`, `package_items_count`, `unit`, `featured`, `deliverable`, `market_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Salt', 45.68, 36.19, 'Sunt nesciunt est rerum a illum. Ea rem dolorem corrupti deleniti. Omnis et delectus eveniet atque. Corporis quo est illum molestiae velit veritatis at.', 310.82, 1.00, 'Oz', 1, 0, 1, 1, '2021-02-24 04:32:44', '2021-02-24 04:32:44'),
(2, 'Acarbose', 24.07, 0.00, 'Alias voluptatum voluptatem voluptatum libero doloremque deleniti. Qui ipsam blanditiis dicta quam. Non minus et perspiciatis incidunt sequi adipisci repellendus.', 456.23, 6.00, 'Kg', 1, 0, 4, 5, '2021-02-24 04:32:44', '2021-02-24 04:32:44'),
(4, 'Milk', 46.56, 45.35, 'Enim tenetur numquam assumenda dolorum aut sed sit. Est ipsa ut officiis non et magnam. At odit quo repellat ea. Aut est ea ea et doloribus.', 303.61, 4.00, 'ml', 0, 0, 1, 4, '2021-02-24 04:32:44', '2021-02-24 04:32:44'),
(5, 'Onion', 25.66, 22.41, 'Aut eos quasi et. Omnis blanditiis at dolore quo dolores officiis non. Repellendus exercitationem porro consectetur perspiciatis eum soluta vel.', 358.94, 1.00, 'Kg', 0, 0, 10, 1, '2021-02-24 04:32:44', '2021-02-24 04:32:44'),
(6, 'Salt', 36.37, 0.00, 'Accusantium nulla eos aut. Impedit natus eum nam doloribus quas nobis dolores. Et beatae blanditiis quod laudantium earum rerum. Quia harum aut voluptates repudiandae quis.', 182.33, 2.00, 'm', 1, 1, 5, 4, '2021-02-24 04:32:44', '2021-02-24 04:32:44'),
(9, 'Eggs', 14.64, 9.67, 'Velit delectus asperiores et quo. Aut veniam ipsa aut blanditiis sit eligendi. Ea molestiae blanditiis ullam et sit.', 167.48, 2.00, 'L', 1, 1, 10, 3, '2021-02-24 04:32:44', '2021-02-24 04:32:44'),
(12, 'Cookie', 12.03, 2.03, 'Dolores et iure asperiores eius sint in. Distinctio ducimus voluptatem deleniti voluptas cum. Facilis vero totam itaque omnis quia perferendis.', 211.63, 4.00, 'Oz', 1, 0, 8, 5, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(13, 'Soup', 43.31, 0.00, 'Qui error rerum placeat accusantium eligendi autem iure. Est qui sunt ut eos harum. Cupiditate dolor quisquam fugit officiis vitae excepturi hic. Impedit omnis natus voluptas cumque nulla.', 102.71, 5.00, 'ml', 0, 0, 4, 5, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(15, 'Sugar', 20.38, 0.00, 'Ut maxime sed et sint odit eos accusamus consequatur. Sed itaque repellendus reiciendis eveniet repudiandae iure. Aut delectus similique earum sapiente in atque commodi.', 92.88, 2.00, 'Kg', 0, 0, 2, 4, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(18, 'Cupcake', 18.50, 0.00, 'Repellat minima consequatur voluptates similique quibusdam. Et ut et quia. In rerum libero aliquid et animi. Sint in dolores eius.', 488.62, 4.00, 'ml', 1, 0, 7, 3, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(19, 'Salt', 39.33, 0.00, 'Voluptatem minus eum provident ea et. Voluptatibus qui quae tempore assumenda ad. Sunt nostrum dolorem aut delectus dignissimos recusandae pariatur.', 57.15, 3.00, 'Kg', 0, 0, 4, 4, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(22, 'Eggs', 47.56, 0.00, 'Neque enim facere recusandae est sit. Minima qui autem quia vel ab soluta. Est consequatur tempore aspernatur. A voluptatem eum nobis. Quam quaerat magnam natus sapiente voluptatem expedita eos.', 157.57, 4.00, 'ml', 1, 1, 6, 4, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(25, 'Milk', 43.31, 36.30, 'Aperiam totam enim ut eum. Earum delectus est omnis eligendi sapiente dolorum temporibus. Et natus soluta eaque voluptas deserunt enim vel odit. Illum fugiat occaecati fugit.', 388.00, 5.00, 'm', 0, 0, 1, 5, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(26, 'Onion', 33.34, 0.00, 'Perspiciatis explicabo blanditiis quia in ut ex enim tempore. Architecto laboriosam voluptas distinctio similique. Molestiae excepturi quidem voluptatem autem dolorem.', 255.10, 1.00, 'g', 0, 0, 8, 5, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(27, 'Tuna steak', 13.73, 0.00, 'Explicabo vero et repudiandae deleniti omnis quibusdam occaecati in. Id ad earum minima ex. Nihil omnis enim quasi nesciunt similique tempora ut. Inventore non atque vero ad.', 181.78, 5.00, 'm', 1, 0, 7, 5, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(28, 'Aspirin', 39.43, 34.12, 'Nihil commodi et cum sint porro pariatur sint. Veniam occaecati exercitationem voluptates eos consectetur amet enim modi. Excepturi et explicabo consequatur provident est dolores et.', 82.02, 3.00, 'g', 0, 1, 8, 4, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(30, 'Cookie', 26.76, 0.00, 'Eligendi magni in sed culpa molestias autem. Voluptas repellat aspernatur dolores veritatis blanditiis et numquam qui. Consequuntur omnis sed amet vel.', 168.33, 1.00, 'L', 0, 1, 8, 3, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(31, 'Cheese', 18.00, 0.00, 'Molestias eveniet vitae adipisci. Dolor blanditiis officia repellat illo omnis. Laboriosam eum et vitae quod est.', 100.57, 5.00, 'Kg', 1, 1, 10, 5, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(32, 'Sandwich', 21.76, 17.16, 'Nisi consectetur perferendis temporibus ullam rerum. Ea saepe necessitatibus et non omnis ipsa aut. Explicabo velit odit ex fugit deleniti consequatur.', 317.79, 6.00, 'Oz', 0, 1, 6, 3, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(33, 'Acarbose', 22.47, 0.00, 'Et hic non temporibus neque. Possimus nihil tenetur ea mollitia vel et rem omnis. Ut reiciendis officiis inventore qui. Est tempora qui quo.', 10.92, 3.00, 'g', 0, 0, 2, 1, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(34, 'Cheese', 32.11, 0.00, 'Voluptatum quisquam harum ea qui. Quis officiis ea qui cumque qui. Saepe possimus qui accusantium nihil voluptatem aut.', 233.23, 1.00, 'm', 0, 0, 8, 5, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(35, 'Sandwich', 47.55, 46.33, 'Incidunt deserunt et rerum sit. Vel quis odit vel aspernatur.', 497.18, 3.00, 'Kg', 0, 0, 9, 4, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(36, 'Soup', 20.89, 16.92, 'Nihil doloribus repellendus omnis vero. Illo qui dolor quia voluptate culpa perferendis. Voluptatum beatae et et consectetur labore. Iste consequatur eos similique fugit tenetur sint et quidem.', 365.06, 4.00, 'g', 1, 1, 3, 4, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(37, 'Milk', 21.12, 12.82, 'Provident aspernatur consequuntur voluptatem voluptatem ut error nemo corrupti. Voluptate nostrum et maxime eum eligendi. Ipsam dolores voluptatem excepturi in molestias quae.', 342.15, 6.00, 'Oz', 0, 1, 7, 3, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(39, 'Rice', 31.16, 0.00, 'Aspernatur et et voluptatem ducimus. Odit vel nostrum sit dicta et occaecati. Minus omnis voluptas placeat quia ad harum doloremque.', 16.97, 5.00, 'Oz', 0, 1, 1, 3, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(40, 'Eggs', 10.24, 0.00, 'Omnis inventore consequatur magni adipisci qui ullam dolores. Pariatur itaque ratione nihil repellat earum nisi laborum. Alias quisquam assumenda sint facere.', 373.35, 1.00, 'Oz', 0, 1, 2, 5, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(41, 'Tuma Delivery Parcel Service', 41.00, NULL, '<p>Delivery service</p>', 1.00, 1.00, 'Kg', 0, 1, 5, 1, '2021-03-02 11:43:11', '2021-03-02 11:43:11'),
(43, 'Fuel Delivery', 1.00, 0.00, 'Fuel Delivery service', 1.00, 1.00, 'L', 0, 1, 11, 1, '2021-03-02 11:43:11', '2021-03-02 11:43:11'),
(44, 'annual_subscription', 67.00, 0.00, 'Annual Subscription', 1.00, 1.00, 'L', 0, 0, 11, 1, '2021-03-02 11:43:11', '2021-03-02 11:43:11'),
(45, 'Petrol ULP 95', 18.70, 0.00, 'Petrol 93 % Octane', 1.00, 1.00, 'L', 0, 1, 12, 7, '2021-03-02 11:43:11', '2021-03-02 11:43:11'),
(46, 'Petrol  ULP 93', 20.70, 0.00, 'Petrol 95 % Octane', 1.00, 1.00, 'L', 0, 1, 12, 7, '2021-03-02 11:43:11', '2021-03-02 11:43:11'),
(47, 'Diesel 50PPM', 18.70, 0.00, 'Diesel 50PPM', 1.00, 1.00, 'L', 0, 1, 12, 8, '2021-03-02 11:43:11', '2021-03-02 11:43:11'),
(48, 'Diesel 10PPM', 18.70, 0.00, 'Diesel 10PPM', 1.00, 1.00, 'L', 0, 1, 12, 8, '2021-03-02 11:43:11', '2021-03-02 11:43:11'),
(49, ' Jet A1', 18.70, 0.00, ' Jet A1', 1.00, 1.00, 'L', 0, 1, 12, 10, '2021-03-02 11:43:11', '2021-03-02 11:43:11'),
(50, 'LPG 9KG', 28.70, 0.00, ' Jet A1', 1.00, 1.00, 'KG', 0, 1, 12, 9, '2021-03-02 11:43:11', '2021-03-02 11:43:11'),
(51, 'LPG 10KG', 28.70, 0.00, 'LPG ', 1.00, 1.00, 'KG', 0, 1, 12, 9, '2021-03-02 11:43:11', '2021-03-02 11:43:11'),
(52, 'LPG 19KG', 28.70, 0.00, 'LPG ', 1.00, 1.00, 'KG', 0, 1, 12, 9, '2021-03-02 11:43:11', '2021-03-02 11:43:11'),
(53, 'LPG 48KG', 28.70, 0.00, 'LPG ', 1.00, 1.00, 'KG', 0, 1, 12, 9, '2021-03-02 11:43:11', '2021-03-02 11:43:11');

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` int UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `quantity` int UNSIGNED NOT NULL DEFAULT '0',
  `product_id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_orders`
--

INSERT INTO `product_orders` (`id`, `price`, `quantity`, `product_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 36.19, 4, 1, 1, '2021-02-25 11:24:34', '2021-02-25 11:24:34'),
(2, 45.35, 1, 4, 2, '2021-02-26 07:11:08', '2021-02-26 07:11:08'),
(3, 45.35, 1, 4, 2, '2021-02-26 07:11:08', '2021-02-26 07:11:08'),
(4, 36.19, 1, 1, 2, '2021-02-26 07:11:08', '2021-02-26 07:11:08'),
(5, 36.19, 1, 1, 2, '2021-02-26 07:11:08', '2021-02-26 07:11:08'),
(6, 45.35, 1, 4, 3, '2021-02-26 07:39:41', '2021-02-26 07:39:41'),
(7, 45.35, 1, 4, 3, '2021-02-26 07:39:41', '2021-02-26 07:39:41'),
(8, 36.19, 1, 1, 3, '2021-02-26 07:39:41', '2021-02-26 07:39:41'),
(9, 36.19, 4, 1, 3, '2021-02-26 07:39:41', '2021-02-26 07:39:41'),
(10, 45.35, 1, 4, 4, '2021-02-26 07:43:26', '2021-02-26 07:43:26'),
(11, 45.35, 1, 4, 4, '2021-02-26 07:43:26', '2021-02-26 07:43:26'),
(12, 36.19, 1, 1, 4, '2021-02-26 07:43:26', '2021-02-26 07:43:26'),
(13, 36.19, 4, 1, 4, '2021-02-26 07:43:26', '2021-02-26 07:43:26'),
(14, 45.35, 1, 4, 5, '2021-02-26 07:43:38', '2021-02-26 07:43:38'),
(15, 45.35, 1, 4, 5, '2021-02-26 07:43:38', '2021-02-26 07:43:38'),
(16, 36.19, 1, 1, 5, '2021-02-26 07:43:38', '2021-02-26 07:43:38'),
(17, 36.19, 4, 1, 5, '2021-02-26 07:43:38', '2021-02-26 07:43:38'),
(18, 45.35, 1, 4, 6, '2021-02-26 08:01:16', '2021-02-26 08:01:16'),
(19, 45.35, 1, 4, 6, '2021-02-26 08:01:16', '2021-02-26 08:01:16'),
(20, 36.19, 1, 1, 6, '2021-02-26 08:01:16', '2021-02-26 08:01:16'),
(21, 36.19, 4, 1, 6, '2021-02-26 08:01:16', '2021-02-26 08:01:16'),
(22, 45.35, 1, 4, 7, '2021-02-26 08:03:30', '2021-02-26 08:03:30'),
(23, 45.35, 1, 4, 7, '2021-02-26 08:03:30', '2021-02-26 08:03:30'),
(24, 36.19, 1, 1, 7, '2021-02-26 08:03:30', '2021-02-26 08:03:30'),
(25, 36.19, 4, 1, 7, '2021-02-26 08:03:30', '2021-02-26 08:03:30'),
(26, 36.19, 2, 1, 8, '2021-02-26 09:39:09', '2021-02-26 09:39:09'),
(27, 36.19, 5, 1, 8, '2021-02-26 09:39:09', '2021-02-26 09:39:09'),
(28, 36.37, 1, 6, 9, '2021-02-26 09:44:44', '2021-02-26 09:44:44'),
(29, 36.37, 3, 6, 10, '2021-02-26 09:58:26', '2021-02-26 09:58:26'),
(30, 36.37, 4, 6, 11, '2021-02-26 10:24:28', '2021-02-26 10:24:28'),
(31, 36.37, 5, 6, 12, '2021-03-02 11:21:00', '2021-03-02 11:21:00'),
(32, 1.00, 1, 41, 13, '2021-03-05 02:10:49', '2021-03-05 02:10:49'),
(33, 1.00, 1, 41, 14, '2021-03-05 14:48:07', '2021-03-05 14:48:07'),
(34, 1.00, 1, 41, 15, '2021-03-05 14:48:07', '2021-03-05 14:48:07'),
(35, 1.00, 1, 41, 16, '2021-03-10 10:48:03', '2021-03-10 10:48:03'),
(36, 1.00, 1, 41, 17, '2021-03-11 09:07:13', '2021-03-11 09:07:13'),
(37, 1.00, 1, 41, 18, '2021-03-11 09:12:15', '2021-03-11 09:12:15'),
(38, 1.00, 1, 41, 19, '2021-03-11 09:13:51', '2021-03-11 09:13:51'),
(39, 1.00, 1, 41, 20, '2021-03-11 09:27:32', '2021-03-11 09:27:32'),
(40, 1.00, 1, 41, 21, '2021-03-11 09:36:45', '2021-03-11 09:36:45'),
(41, 1.00, 1, 41, 22, '2021-03-11 11:57:29', '2021-03-11 11:57:29'),
(42, 1.00, 1, 41, 23, '2021-03-12 07:21:59', '2021-03-12 07:21:59'),
(43, 1.00, 1, 43, 24, '2021-03-17 10:37:49', '2021-03-17 10:37:49'),
(44, 1.00, 1, 41, 25, '2021-03-17 11:12:57', '2021-03-17 11:12:57'),
(45, 1.00, 1, 43, 26, '2021-03-17 11:14:17', '2021-03-17 11:14:17'),
(46, 1.00, 1, 43, 27, '2021-03-17 12:23:17', '2021-03-17 12:23:17'),
(53, 18.70, 1, 45, 34, '2021-03-21 07:20:03', '2021-03-21 07:20:03'),
(54, 18.70, 1, 45, 34, '2021-03-21 07:20:03', '2021-03-21 07:20:03'),
(55, 18.70, 1, 45, 35, '2021-03-21 08:55:31', '2021-03-21 08:55:31'),
(56, 20.70, 1, 46, 35, '2021-03-21 08:55:31', '2021-03-21 08:55:31'),
(57, 18.70, 1, 45, 36, '2021-03-21 08:55:34', '2021-03-21 08:55:34'),
(58, 20.70, 1, 46, 36, '2021-03-21 08:55:34', '2021-03-21 08:55:34'),
(59, 18.70, 1, 45, 37, '2021-03-21 09:52:27', '2021-03-21 09:52:28'),
(60, 18.70, 1, 45, 38, '2021-03-21 09:52:31', '2021-03-21 09:52:31'),
(61, 18.70, 1, 45, 39, '2021-03-21 09:55:06', '2021-03-21 09:55:06'),
(62, 18.70, 1, 45, 40, '2021-03-21 09:55:09', '2021-03-21 09:55:09'),
(63, 18.70, 1, 45, 41, '2021-03-21 11:27:16', '2021-03-21 11:27:16'),
(64, 18.70, 1, 45, 42, '2021-03-21 11:27:19', '2021-03-21 11:27:19'),
(65, 18.70, 4, 45, 43, '2021-03-21 11:48:46', '2021-03-21 11:48:46'),
(66, 18.70, 4, 45, 44, '2021-03-21 11:48:49', '2021-03-21 11:48:50'),
(67, 18.70, 3, 45, 45, '2021-03-21 12:07:57', '2021-03-21 12:07:57'),
(68, 18.70, 1, 45, 46, '2021-03-21 12:08:54', '2021-03-21 12:08:54'),
(69, 18.70, 1, 45, 47, '2021-03-21 12:11:02', '2021-03-21 12:11:02'),
(70, 18.70, 1, 45, 48, '2021-03-21 12:11:06', '2021-03-21 12:11:06'),
(71, 18.70, 2, 45, 49, '2021-03-21 12:19:09', '2021-03-21 12:19:09'),
(72, 18.70, 2, 45, 50, '2021-03-21 12:19:13', '2021-03-21 12:19:13'),
(73, 18.70, 1, 45, 51, '2021-03-21 12:20:31', '2021-03-21 12:20:31'),
(74, 18.70, 1, 45, 52, '2021-03-21 12:20:34', '2021-03-21 12:20:34'),
(75, 18.70, 1, 45, 53, '2021-03-21 12:24:01', '2021-03-21 12:24:01'),
(76, 18.70, 1, 45, 53, '2021-03-21 12:24:01', '2021-03-21 12:24:02'),
(77, 20.70, 1, 46, 54, '2021-03-21 12:26:28', '2021-03-21 12:26:28'),
(78, 20.70, 1, 46, 55, '2021-03-21 12:26:32', '2021-03-21 12:26:32'),
(79, 18.70, 1, 47, 56, '2021-03-21 12:40:47', '2021-03-21 12:40:47'),
(80, 18.70, 2, 45, 57, '2021-03-21 15:20:06', '2021-03-21 15:20:06'),
(81, 18.70, 2, 45, 57, '2021-03-21 15:20:06', '2021-03-21 15:20:07'),
(82, 18.70, 2, 45, 58, '2021-03-21 15:20:10', '2021-03-21 15:20:10'),
(83, 18.70, 2, 45, 58, '2021-03-21 15:20:10', '2021-03-21 15:20:10'),
(84, 18.70, 1, 45, 59, '2021-03-22 10:18:27', '2021-03-22 10:18:27'),
(85, 18.70, 2, 45, 60, '2021-03-23 03:24:37', '2021-03-23 03:24:37'),
(86, 18.70, 2, 45, 61, '2021-03-23 03:24:40', '2021-03-23 03:24:40'),
(87, 18.70, 2, 45, 62, '2021-03-23 05:42:25', '2021-03-23 05:42:25'),
(88, 18.70, 2, 45, 63, '2021-03-23 05:42:28', '2021-03-23 05:42:28'),
(89, 18.70, 1, 45, 64, '2021-03-24 13:20:21', '2021-03-24 13:20:21'),
(90, 18.70, 1, 45, 65, '2021-03-24 13:20:25', '2021-03-24 13:20:25'),
(91, 18.70, 1, 47, 66, '2021-03-24 13:21:49', '2021-03-24 13:21:49'),
(92, 18.70, 1, 47, 67, '2021-03-24 13:25:43', '2021-03-24 13:25:43'),
(93, 18.70, 1, 45, 68, '2021-03-24 13:30:51', '2021-03-24 13:30:51'),
(94, 18.70, 1, 45, 69, '2021-03-24 13:30:54', '2021-03-24 13:30:54'),
(95, 18.70, 1, 45, 70, '2021-03-24 13:35:27', '2021-03-24 13:35:27'),
(96, 20.70, 1, 46, 71, '2021-03-24 13:38:04', '2021-03-24 13:38:04'),
(97, 18.70, 1, 48, 72, '2021-03-24 13:45:18', '2021-03-24 13:45:18'),
(98, 18.70, 1, 47, 72, '2021-03-24 13:45:18', '2021-03-24 13:45:18'),
(99, 20.70, 1, 46, 73, '2021-03-24 13:49:24', '2021-03-24 13:49:24'),
(100, 20.70, 1, 46, 74, '2021-03-24 13:49:27', '2021-03-24 13:49:27'),
(101, 18.70, 1, 47, 75, '2021-03-24 13:52:02', '2021-03-24 13:52:02'),
(102, 18.70, 1, 47, 76, '2021-03-24 13:52:05', '2021-03-24 13:52:05'),
(103, 18.70, 1, 48, 77, '2021-03-24 13:58:44', '2021-03-24 13:58:44'),
(104, 20.70, 3, 46, 78, '2021-03-24 14:28:25', '2021-03-24 14:28:25'),
(105, 20.70, 1, 46, 79, '2021-03-24 14:29:20', '2021-03-24 14:29:20'),
(106, 18.70, 1, 47, 80, '2021-03-24 14:32:47', '2021-03-24 14:32:47'),
(107, 18.70, 1, 47, 81, '2021-03-24 14:32:51', '2021-03-24 14:32:51'),
(108, 18.70, 42, 48, 82, '2021-03-24 14:40:38', '2021-03-24 14:40:38'),
(109, 18.70, 42, 48, 83, '2021-03-24 14:40:42', '2021-03-24 14:40:42'),
(110, 18.70, 1, 45, 84, '2021-03-25 04:41:22', '2021-03-25 04:41:22'),
(111, 18.70, 1, 45, 84, '2021-03-25 04:41:22', '2021-03-25 04:41:22'),
(112, 18.70, 1, 45, 85, '2021-03-25 04:41:26', '2021-03-25 04:41:26'),
(113, 18.70, 1, 45, 85, '2021-03-25 04:41:26', '2021-03-25 04:41:26'),
(114, 18.70, 1, 45, 86, '2021-03-25 04:49:17', '2021-03-25 04:49:17'),
(115, 18.70, 1, 45, 87, '2021-03-25 04:49:20', '2021-03-25 04:49:20'),
(116, 28.70, 1, 50, 88, '2021-03-25 04:52:07', '2021-03-25 04:52:07'),
(117, 18.70, 1, 45, 89, '2021-03-25 05:06:12', '2021-03-25 05:06:12'),
(118, 18.70, 1, 45, 90, '2021-03-25 05:22:52', '2021-03-25 05:22:53'),
(119, 18.70, 1, 45, 91, '2021-03-25 05:22:56', '2021-03-25 05:22:56'),
(120, 18.70, 1, 45, 92, '2021-03-25 05:24:48', '2021-03-25 05:24:48'),
(121, 18.70, 1, 45, 93, '2021-03-25 05:24:51', '2021-03-25 05:24:51'),
(122, 18.70, 1, 47, 94, '2021-03-25 05:27:31', '2021-03-25 05:27:31'),
(123, 18.70, 1, 47, 95, '2021-03-25 05:27:35', '2021-03-25 05:27:35'),
(124, 18.70, 1, 47, 96, '2021-03-25 05:34:46', '2021-03-25 05:34:46'),
(125, 18.70, 1, 47, 97, '2021-03-25 05:34:49', '2021-03-25 05:34:49'),
(126, 18.70, 1, 47, 98, '2021-03-25 05:37:32', '2021-03-25 05:37:32'),
(127, 18.70, 1, 45, 99, '2021-03-25 05:59:08', '2021-03-25 05:59:08'),
(128, 28.70, 1, 50, 100, '2021-03-25 06:28:57', '2021-03-25 06:28:57'),
(129, 18.70, 1, 45, 101, '2021-03-25 06:41:35', '2021-03-25 06:41:35'),
(132, 18.70, 2, 47, 104, '2021-03-26 08:35:09', '2021-03-26 08:35:09'),
(133, 18.70, 2, 45, 104, '2021-03-26 08:35:09', '2021-03-26 08:35:09'),
(134, 18.70, 2, 47, 105, '2021-03-26 08:35:13', '2021-03-26 08:35:13'),
(135, 18.70, 2, 45, 105, '2021-03-26 08:35:13', '2021-03-26 08:35:13'),
(136, 18.70, 1, 45, 106, '2021-03-26 08:39:17', '2021-03-26 08:39:17'),
(137, 18.70, 1, 45, 107, '2021-03-26 08:40:46', '2021-03-26 08:40:46'),
(138, 18.70, 1, 45, 108, '2021-03-26 08:44:43', '2021-03-26 08:44:43'),
(139, 18.70, 1, 45, 109, '2021-03-26 08:44:46', '2021-03-26 08:44:46'),
(140, 18.70, 1, 47, 110, '2021-03-26 08:48:23', '2021-03-26 08:48:23'),
(141, 18.70, 1, 45, 111, '2021-03-26 08:55:05', '2021-03-26 08:55:05'),
(142, 18.70, 1, 45, 112, '2021-03-26 09:02:32', '2021-03-26 09:02:32'),
(143, 18.70, 1, 45, 113, '2021-03-26 09:17:20', '2021-03-26 09:17:20'),
(144, 20.70, 2, 46, 114, '2021-03-26 09:18:16', '2021-03-26 09:18:16'),
(145, 18.70, 1, 47, 115, '2021-03-26 09:19:16', '2021-03-26 09:19:16'),
(146, 18.70, 1, 45, 116, '2021-03-26 09:22:49', '2021-03-26 09:22:49'),
(147, 18.70, 1, 47, 116, '2021-03-26 09:22:49', '2021-03-26 09:22:49'),
(148, 18.70, 50, 45, 117, '2021-03-26 09:24:56', '2021-03-26 09:24:56'),
(149, 18.70, 80, 45, 118, '2021-03-26 09:30:46', '2021-03-26 09:30:46'),
(150, 18.70, 51, 47, 118, '2021-03-26 09:30:46', '2021-03-26 09:30:46'),
(151, 18.70, 162, 45, 119, '2021-03-26 10:08:11', '2021-03-26 10:08:11'),
(152, 18.70, 1, 45, 120, '2021-03-26 11:04:55', '2021-03-26 11:04:55'),
(153, 18.70, 1, 45, 121, '2021-03-26 11:18:51', '2021-03-26 11:18:51'),
(154, 18.70, 1, 45, 122, '2021-03-26 11:40:08', '2021-03-26 11:40:08'),
(155, 18.70, 1, 45, 123, '2021-03-26 11:48:16', '2021-03-26 11:48:16'),
(156, 18.70, 51, 45, 124, '2021-03-26 11:52:35', '2021-03-26 11:52:35'),
(158, 18.70, 1, 47, 126, '2021-03-26 13:38:52', '2021-03-26 13:38:52'),
(159, 18.70, 1, 45, 127, '2021-03-26 14:12:09', '2021-03-26 14:12:09'),
(160, 18.70, 2, 45, 128, '2021-03-30 07:39:25', '2021-03-30 07:39:25'),
(161, 18.70, 21, 45, 129, '2021-03-30 08:21:06', '2021-03-30 08:21:06'),
(162, 18.70, 21, 45, 130, '2021-03-30 08:25:37', '2021-03-30 08:25:37'),
(163, 28.70, 81, 50, 130, '2021-03-30 08:25:37', '2021-03-30 08:25:37'),
(164, 18.70, 20, 45, 131, '2021-03-30 08:38:21', '2021-03-30 08:38:22'),
(165, 67.00, 1, 44, 132, '2021-03-30 09:07:45', '2021-03-30 09:07:45'),
(166, 18.70, 12, 45, 133, '2021-04-07 09:05:30', '2021-04-07 09:05:30'),
(167, 18.70, 2, 45, 134, '2021-04-07 10:09:30', '2021-04-07 10:09:30'),
(168, 18.70, 1, 45, 134, '2021-04-07 10:09:30', '2021-04-07 10:09:30'),
(169, 18.70, 1, 45, 135, '2021-04-07 10:10:28', '2021-04-07 10:10:28'),
(170, 18.70, 1, 45, 136, '2021-04-07 11:16:08', '2021-04-07 11:16:08'),
(171, 20.70, 1, 46, 136, '2021-04-07 11:16:08', '2021-04-07 11:16:08'),
(172, 18.70, 1, 45, 137, '2021-04-07 12:11:16', '2021-04-07 12:11:16'),
(173, 18.70, 8651, 45, 138, '2021-04-07 12:19:06', '2021-04-07 12:19:06'),
(174, 18.70, 2, 45, 139, '2021-04-08 09:29:36', '2021-04-08 09:29:36'),
(175, 18.70, 3, 45, 140, '2021-04-09 07:37:48', '2021-04-09 07:37:48'),
(176, 18.70, 1, 47, 140, '2021-04-09 07:37:48', '2021-04-09 07:37:48'),
(177, 18.70, 2, 45, 141, '2021-04-09 09:58:36', '2021-04-09 09:58:36'),
(178, 18.70, 1, 45, 141, '2021-04-09 09:58:36', '2021-04-09 09:58:36'),
(179, 18.70, 1, 45, 142, '2021-04-09 10:01:03', '2021-04-09 10:01:03'),
(180, 18.70, 1, 45, 143, '2021-04-09 11:10:34', '2021-04-09 11:10:34'),
(181, 18.70, 46, 45, 144, '2021-04-10 10:49:18', '2021-04-10 10:49:18'),
(182, 67.00, 1, 44, 145, '2021-04-10 10:52:27', '2021-04-10 10:52:27'),
(183, 18.70, 57, 45, 146, '2021-04-10 11:07:11', '2021-04-10 11:07:11'),
(184, 13.00, 1, 45, 147, '2021-04-10 11:13:00', '2021-04-10 11:13:00'),
(185, 18.70, 23, 45, 148, '2021-04-12 01:58:18', '2021-04-12 01:58:18'),
(186, 18.70, 23, 45, 149, '2021-04-12 02:05:11', '2021-04-12 02:05:11'),
(187, 18.70, 60, 45, 150, '2021-04-14 13:31:56', '2021-04-14 13:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `product_order_options`
--

CREATE TABLE `product_order_options` (
  `product_order_id` int UNSIGNED NOT NULL,
  `option_id` int UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_order_options`
--

INSERT INTO `product_order_options` (`product_order_id`, `option_id`, `price`) VALUES
(3, 36, 0.00),
(5, 25, 0.00),
(7, 36, 0.00),
(9, 25, 0.00),
(11, 36, 0.00),
(13, 25, 0.00),
(15, 36, 0.00),
(17, 25, 0.00),
(19, 36, 0.00),
(21, 25, 0.00),
(23, 36, 0.00),
(25, 25, 0.00),
(53, 71, 0.00),
(53, 72, 0.00),
(59, 71, 0.00),
(60, 71, 0.00),
(65, 71, 0.00),
(66, 71, 0.00),
(76, 71, 0.00),
(76, 72, 0.00),
(79, 73, 0.00),
(81, 71, 0.00),
(81, 72, 0.00),
(83, 71, 0.00),
(83, 72, 0.00),
(84, 71, 0.00),
(84, 72, 0.00),
(110, 71, 0.00),
(110, 72, 0.00),
(110, 75, 0.00),
(112, 71, 0.00),
(112, 72, 0.00),
(112, 75, 0.00),
(118, 71, 0.00),
(118, 72, 0.00),
(119, 71, 0.00),
(119, 72, 0.00),
(120, 71, 0.00),
(120, 72, 0.00),
(121, 71, 0.00),
(121, 72, 0.00),
(122, 73, 0.00),
(122, 74, 0.00),
(123, 73, 0.00),
(123, 74, 0.00),
(124, 73, 0.00),
(124, 74, 0.00),
(125, 73, 0.00),
(125, 74, 0.00),
(127, 71, 0.00),
(127, 72, 0.00),
(127, 75, 0.00),
(147, 73, 0.00),
(147, 74, 0.00),
(156, 71, 0.00),
(156, 72, 0.00),
(156, 75, 0.00),
(164, 71, 0.00),
(164, 72, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int UNSIGNED NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rate` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `review`, `rate`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'I never heard it say to this: so she sat still just as usual. I wonder what Latitude was, or Longitude either, but thought they were filled with tears again as quickly as she picked her way through.', 4, 5, 5, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(2, 'Presently she began again: \'Ou est ma chatte?\' which was a little ledge of rock, and, as she did it at all. However, \'jury-men\' would have this cat removed!\' The Queen turned crimson with fury, and.', 5, 1, 2, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(4, 'I can\'t take more.\' \'You mean you can\'t swim, can you?\' he added, turning to the Dormouse, not choosing to notice this last word with such a pleasant temper, and thought to herself, as she could.', 3, 1, 28, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(5, 'I must be collected at once without waiting for turns, quarrelling all the players, except the King, who had been (Before she had put on your head-- Do you think you might knock, and I don\'t know,\'.', 3, 5, 25, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(7, 'Alice, rather doubtfully, as she couldn\'t answer either question, it didn\'t sound at all like the look of the way--\' \'THAT generally takes some time,\' interrupted the Gryphon. \'--you advance.', 2, 5, 13, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(9, 'March Hare,) \'--it was at in all my limbs very supple By the use of repeating all that stuff,\' the Mock Turtle replied in an offended tone, \'was, that the Gryphon replied very readily: \'but that\'s.', 2, 3, 22, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(10, 'Cat\'s head began fading away the time. Alice had never seen such a very little! Besides, SHE\'S she, and I\'m sure I have to go on. \'And so these three little sisters--they were learning to draw,\' the.', 3, 2, 30, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(11, 'ONE.\' \'One, indeed!\' said the Mock Turtle, and said \'What else had you to leave off this minute!\' She generally gave herself very good advice, (though she very soon came to ME, and told me you had.', 4, 2, 9, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(12, 'Alice, thinking it was as steady as ever; Yet you turned a corner, \'Oh my ears and the executioner ran wildly up and throw us, with the Mouse was speaking, so that her neck kept getting entangled.', 1, 3, 12, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(13, 'SAID was, \'Why is a long breath, and till the puppy\'s bark sounded quite faint in the newspapers, at the proposal. \'Then the Dormouse say?\' one of the house!\' (Which was very likely true.) Down.', 4, 5, 4, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(17, 'Alice, whose thoughts were still running on the shingle--will you come to an end! \'I wonder how many miles I\'ve fallen by this time?\' she said to the door, and tried to speak, but for a moment like.', 2, 2, 19, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(18, 'Alice opened the door and found that her flamingo was gone across to the jury, who instantly made a memorandum of the jury asked. \'That I can\'t understand it myself to begin at HIS time of life. The.', 2, 4, 19, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(19, 'Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said the Dodo had paused as if his heart would break. She pitied him deeply. \'What is his sorrow?\' she asked the Mock.', 4, 5, 26, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(20, 'This question the Dodo managed it.) First it marked out a new idea to Alice, flinging the baby violently up and ran till she had someone to listen to me! When I used to know. Let me see--how IS it.', 5, 4, 9, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(23, 'Alice could see it written down: but I can\'t understand it myself to begin with,\' the Mock Turtle, \'but if they do, why then they\'re a kind of serpent, that\'s all I can say.\' This was not an.', 1, 5, 1, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(24, 'However, she got up very carefully, nibbling first at one end of the words \'EAT ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said the King, \'that only makes the matter with it.', 4, 4, 19, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(25, 'Queen!\' and the Dormouse say?\' one of them bowed low. \'Would you tell me,\' said Alice, who was peeping anxiously into her face. \'Very,\' said Alice: \'allow me to him: She gave me a good thing!\' she.', 5, 2, 26, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(26, 'And he added in an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' And then a row of lodging houses, and behind it was as much as serpents do, you know.\' Alice had been anxiously looking.', 2, 2, 12, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(28, 'ME,\' but nevertheless she uncorked it and put back into the teapot. \'At any rate he might answer questions.--How am I then? Tell me that first, and then, and holding it to speak with. Alice waited a.', 2, 3, 4, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(29, 'And with that she had to kneel down on their throne when they liked, and left foot, so as to prevent its undoing itself,) she carried it out to sea as you go on? It\'s by far the most important piece.', 2, 6, 15, '2021-02-24 04:32:45', '2021-02-24 04:32:45'),
(31, NULL, 0, 7, 1, '2021-02-25 11:27:33', '2021-02-25 11:27:33'),
(32, NULL, 5, 1, 41, '2021-03-09 14:32:05', '2021-03-11 11:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `default` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'admin', 'web', 0, '2018-07-21 14:37:56', '2019-09-07 20:42:01', NULL),
(3, 'Approved Distributor', 'web', 0, '2019-09-07 20:41:38', '2021-04-14 12:23:59', NULL),
(4, 'client', 'web', 0, '2019-09-07 20:41:54', '2021-04-14 13:12:57', NULL),
(5, 'driver', 'web', 0, '2019-12-15 16:50:21', '2019-12-15 16:50:21', NULL),
(6, 'Pending Distributor', 'web', 1, '2021-04-14 12:23:32', '2021-04-14 12:23:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(67, 2),
(68, 2),
(69, 2),
(76, 2),
(77, 2),
(78, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(103, 2),
(104, 2),
(107, 2),
(108, 2),
(109, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(122, 2),
(123, 2),
(124, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(131, 2),
(134, 2),
(135, 2),
(137, 2),
(138, 2),
(144, 2),
(145, 2),
(146, 2),
(148, 2),
(149, 2),
(151, 2),
(152, 2),
(153, 2),
(155, 2),
(156, 2),
(158, 2),
(159, 2),
(160, 2),
(161, 2),
(162, 2),
(163, 2),
(164, 2),
(165, 2),
(166, 2),
(167, 2),
(168, 2),
(169, 2),
(170, 2),
(171, 2),
(172, 2),
(173, 2),
(174, 2),
(175, 2),
(176, 2),
(183, 2),
(184, 2),
(185, 2),
(186, 2),
(187, 2),
(188, 2),
(189, 2),
(190, 2),
(191, 2),
(192, 2),
(193, 2),
(194, 2),
(1, 3),
(3, 3),
(4, 3),
(5, 3),
(27, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(42, 3),
(48, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(67, 3),
(68, 3),
(76, 3),
(77, 3),
(78, 3),
(80, 3),
(81, 3),
(82, 3),
(83, 3),
(86, 3),
(92, 3),
(95, 3),
(96, 3),
(98, 3),
(103, 3),
(104, 3),
(107, 3),
(108, 3),
(109, 3),
(110, 3),
(111, 3),
(113, 3),
(114, 3),
(117, 3),
(130, 3),
(134, 3),
(135, 3),
(137, 3),
(145, 3),
(146, 3),
(151, 3),
(152, 3),
(153, 3),
(164, 3),
(170, 3),
(171, 3),
(172, 3),
(176, 3),
(183, 3),
(186, 3),
(187, 3),
(1, 4),
(3, 4),
(4, 4),
(27, 4),
(30, 4),
(31, 4),
(32, 4),
(52, 4),
(64, 4),
(67, 4),
(68, 4),
(83, 4),
(86, 4),
(92, 4),
(95, 4),
(96, 4),
(98, 4),
(103, 4),
(104, 4),
(107, 4),
(111, 4),
(113, 4),
(114, 4),
(117, 4),
(164, 4),
(176, 4),
(183, 4),
(1, 5),
(3, 5),
(4, 5),
(27, 5),
(30, 5),
(48, 5),
(52, 5),
(64, 5),
(67, 5),
(68, 5),
(83, 5),
(86, 5),
(92, 5),
(95, 5),
(96, 5),
(98, 5),
(103, 5),
(104, 5),
(107, 5),
(111, 5),
(113, 5),
(114, 5),
(117, 5),
(130, 5),
(144, 5),
(145, 5),
(146, 5),
(164, 5),
(176, 5),
(183, 5),
(1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int UNSIGNED NOT NULL,
  `order` int UNSIGNED DEFAULT '0',
  `text` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'start',
  `text_color` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indicator_color` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_fit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'cover',
  `product_id` int UNSIGNED DEFAULT NULL,
  `market_id` int UNSIGNED DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `order`, `text`, `button`, `text_position`, `text_color`, `button_color`, `background_color`, `indicator_color`, `image_fit`, `product_id`, `market_id`, `enabled`, `created_at`, `updated_at`) VALUES
(1, 1, 'Get instant deliveries', 'Order Now!', 'top_start', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', NULL, NULL, 1, '2021-02-24 04:32:46', '2021-02-25 14:41:57'),
(2, 1, 'Tempora facere amet et tempora quia.', 'Get Discount', 'center', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', NULL, NULL, 1, '2021-02-24 04:32:46', '2021-02-24 04:32:46'),
(3, 0, 'Purchase Medication', 'Purchase', 'top_start', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', 5, NULL, 1, '2021-02-24 04:32:46', '2021-02-25 14:41:17'),
(4, 0, 'Send your loved ones food', 'Send!', 'top_start', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', NULL, 4, 1, '2021-02-24 04:32:46', '2021-02-25 14:41:35'),
(5, 1, 'Ut ut ipsa aut.', 'Get Discount', 'start', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', NULL, NULL, 0, '2021-02-24 04:32:46', '2021-02-24 04:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `payment_id` int NOT NULL,
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_products`
--

CREATE TABLE `subscription_products` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trucklocations`
--

CREATE TABLE `trucklocations` (
  `id` bigint UNSIGNED NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `truck_id` int NOT NULL,
  `driver_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trucklocations`
--

INSERT INTO `trucklocations` (`id`, `latitude`, `longitude`, `truck_id`, `driver_id`, `created_at`, `updated_at`) VALUES
(1, -26.0339803, 28.0598995, 1, 1, '2021-03-03 13:20:10', '2021-03-03 13:20:10'),
(2, -26.033977, 28.0607388, 2, 2, '2021-03-03 13:20:10', '2021-03-03 13:20:10'),
(3, -26.031294, 28.063103, 3, 5, '2021-03-03 13:20:10', '2021-03-03 13:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `trucks`
--

CREATE TABLE `trucks` (
  `id` bigint UNSIGNED NOT NULL,
  `capacity` double NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `market_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trucks`
--

INSERT INTO `trucks` (`id`, `capacity`, `name`, `reg_number`, `market_id`, `created_at`, `updated_at`) VALUES
(1, 200, 'Volvo FH750', 'AAF 4534 GP', 12, '2021-03-03 13:17:35', '2021-03-04 13:17:35'),
(2, 200, 'MAN 2012', 'AAF 4534 GP', 12, '2021-03-03 13:17:35', '2021-03-04 13:17:35'),
(3, 200, 'MAN 2016', 'AAF 45364 GP', 12, '2021-03-03 13:17:35', '2021-03-04 13:17:35'),
(4, 200, 'Mercedes Benz Actross 2016', 'AAF 45364 GP', 12, '2021-03-03 13:17:35', '2021-03-04 13:17:35');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `uuid`, `created_at`, `updated_at`) VALUES
(1, 'db4fe0f0-5680-42db-bc4c-da1ad253857f', '2021-02-24 04:39:54', '2021-02-24 04:39:54'),
(2, '87b98f20-5415-4b62-98f2-bb3d00eb8e69', '2021-02-28 12:37:38', '2021-02-28 12:37:38'),
(3, 'f9bf7826-f650-4bf4-94ea-6bd26b3861b1', '2021-02-28 12:40:06', '2021-02-28 12:40:06'),
(4, 'f9e00fb2-fc5c-4549-ad53-c072b06fb846', '2021-02-28 12:40:23', '2021-02-28 12:40:23'),
(5, 'df97b349-1497-4de8-9ef0-b4739d7e64df', '2021-02-28 12:48:18', '2021-02-28 12:48:18'),
(6, '60167d98-efdb-44c4-9f5e-9f4cb4cc3ee5', '2021-02-28 12:49:26', '2021-02-28 12:49:26'),
(7, '7dadc144-eb32-4e03-a66f-2f0370d74b5c', '2021-03-02 11:39:10', '2021-03-02 11:39:10'),
(8, '77cead7a-21e3-4ccb-8e35-d47e79217754', '2021-03-02 11:41:15', '2021-03-02 11:41:15'),
(9, '0e2f1733-44fa-465c-943d-89f6d770e212', '2021-03-02 11:42:50', '2021-03-02 11:42:50'),
(10, '77973327-1fd2-48dd-8319-7ecf8e109895', '2021-04-11 21:48:06', '2021-04-11 21:48:06'),
(11, '3593c769-684c-43c1-9083-e1cee5bf5ab1', '2021-04-12 00:50:53', '2021-04-12 00:50:53'),
(12, '043c4293-120d-410d-96a3-3052812f0ee7', '2021-04-13 18:26:29', '2021-04-13 18:26:29'),
(13, '38f0c4b4-2c57-427e-beeb-2f3323f1a2b5', '2021-04-13 18:26:42', '2021-04-13 18:26:42'),
(14, '6b9fe56f-ca30-4d6a-a0a6-6a8217df5ac6', '2021-04-13 18:28:43', '2021-04-13 18:28:43'),
(15, 'd27462e7-e788-4b4e-9275-c08c9058aa1d', '2021-04-13 18:28:44', '2021-04-13 18:28:44'),
(16, '0d4b0eb1-4cfe-4e6f-9a4a-f688d591fcbc', '2021-04-13 18:28:45', '2021-04-13 18:28:45'),
(17, '0369ef76-699e-4d5c-badf-44621e67f663', '2021-04-13 18:28:46', '2021-04-13 18:28:46'),
(18, 'a67c596d-cb23-4fea-9877-52a7984bd5d5', '2021-04-13 18:29:14', '2021-04-13 18:29:14'),
(19, '3328ea2e-2c96-48a2-9315-8e9d323f5558', '2021-04-13 18:29:14', '2021-04-13 18:29:14'),
(20, '9931057c-b26b-4306-967a-aa7e032ea5f1', '2021-04-13 18:29:15', '2021-04-13 18:29:15'),
(21, '47d908fa-7c29-4de6-b9ee-a711d0e9c766', '2021-04-14 07:47:14', '2021-04-14 07:47:14'),
(22, '6ac9320c-6609-40ab-81fe-82f37a1d689d', '2021-04-14 07:47:21', '2021-04-14 07:47:21'),
(23, 'bc618603-6a5c-4a21-8d69-6abdd8d5743f', '2021-04-14 07:47:39', '2021-04-14 07:47:39'),
(24, 'b2609f20-7c4d-483a-855b-a27302f65d4b', '2021-04-14 07:48:45', '2021-04-14 07:48:45'),
(25, '9b284630-1bc1-4565-9d2a-e799ae79b531', '2021-04-14 07:48:48', '2021-04-14 07:48:48'),
(26, 'a32a3270-de08-4cc3-a2e6-a1370eaf47c2', '2021-04-14 07:50:56', '2021-04-14 07:50:56'),
(27, 'b3d516bc-1f49-41a4-8d49-cdac74975523', '2021-04-14 07:51:06', '2021-04-14 07:51:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` char(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `braintree_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `otp` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `api_token`, `device_token`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `braintree_id`, `paypal_email`, `remember_token`, `created_at`, `updated_at`, `otp`) VALUES
(1, 'Manager', 'admin@tuma.delivery', '$2y$10$YOn/Xq6vfvi9oaixrtW8QuM2W0mawkLLqIxL.IoGqrsqOqbIsfBNu', 'PivvPlsQWxPl1bB5KrbKNBuraJit0PrUZekQUgtLyTRuyBq921atFtoR1HuA', 'cUrZgo__O0qVkxkkeON4jN:APA91bElfqqebxnHUfhArAWskLZuaMFVbiSkHLTKGaGsYOg6cq-926SxitPfVeyqnO9PBaWro7NUKmbddDcf1eyF9SRGRHhavfCtQxosW9-UZWvt9g-G6vchmY08JwZVTuego6PCQF21', NULL, NULL, NULL, NULL, NULL, NULL, 'cohNoxVz40PV6VU9UbNpTanhZ5XaL8BesqVjSrX3QfystgSt6kMHeoWJnxAa', '2018-08-06 20:58:41', '2021-03-30 08:18:48', '6645'),
(2, 'Barbara J. Glanz', 'manager@demo.com', '$2y$10$YOn/Xq6vfvi9oaixrtW8QuM2W0mawkLLqIxL.IoGqrsqOqbIsfBNu', 'tVSfIKRSX2Yn8iAMoUS3HPls84ycS8NAxO2dj2HvePbbr4WHorp4gIFRmFwB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5nysjzVKI4LU92bjRqMUSYdOaIo1EcPC3pIMb6Tcj2KXSUMriGrIQ1iwRdd0', '2018-08-14 15:06:28', '2019-09-25 20:09:35', NULL),
(3, 'Charles W. Abeyta', 'client@demo.com', '$2y$10$EBubVy3wDbqNbHvMQwkj3OTYVitL8QnHvh/zV0ICVOaSbALy5dD0K', 'fXLu7VeYgXDu82SkMxlLPG1mCAXc4EBIx6O5isgYVIKFQiHah0xiOHmzNsBv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'V6PIUfd8JdHT2zkraTlnBcRSINZNjz5Ou7N0WtUGRyaTweoaXKpSfij6UhqC', '2019-10-12 20:31:26', '2020-03-29 15:44:30', NULL),
(4, 'Robert E. Brock', 'client1@demo.com', '$2y$10$pmdnepS1FhZUMqOaFIFnNO0spltJpziz3j13UqyEwShmLhokmuoei', 'Czrsk9rwD0c75NUPkzNXM2WvbxYHKj8p0nG29pjKT0PZaTgMVzuVyv4hOlte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-15 15:55:39', '2020-03-29 15:59:39', NULL),
(5, 'Sanchez Roberto', 'driver@demo.com', '$2y$10$T/jwzYDJfC8c9CdD5PbpuOKvEXlpv4.RR1jMT0PgIMT.fzeGw67JO', 'OuMsmU903WMcMhzAbuSFtxBekZVdXz66afifRo3YRCINi38jkXJ8rpN0FcfS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-15 16:49:44', '2020-03-29 15:22:10', NULL),
(6, 'John Doe', 'driver1@demo.com', '$2y$10$YF0jCx2WCQtfZOq99hR8kuXsAE0KSnu5OYSomRtI9iCVguXDoDqVm', 'zh9mzfNO2iPtIxj6k4Jpj8flaDyOsxmlGRVUZRnJqOGBr8IuDyhb3cGoncvS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-29 15:28:04', '2020-03-29 15:28:04', NULL),
(7, 'Lierance Magwenzi', 'magwenzilierance@gmail.com', '$2y$10$dNdUrdCWMS2.57nvT.Whs.hkGINOqevgxghQasLIMiEDNkYdrT7Re', 'f5INFgRU4S8msr3IqocO8xIEHal7lmKKwSdkmAi68iqKfypcvkj6STtcbi2q', 'cUrZgo__O0qVkxkkeON4jN:APA91bElfqqebxnHUfhArAWskLZuaMFVbiSkHLTKGaGsYOg6cq-926SxitPfVeyqnO9PBaWro7NUKmbddDcf1eyF9SRGRHhavfCtQxosW9-UZWvt9g-G6vchmY08JwZVTuego6PCQF21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-25 11:19:07', '2021-02-26 10:21:22', '2226'),
(8, 'Mirirai Nyoni', 'mirimcroad@gmail.com', '$2y$10$FAqvj3NT.bkbrV03zXCxEeq85MckYpejOj7gg7RwgDq9dz6eK1wxS', 'dfbUnwYyK4aEvQnkT9lP3Zpi4iclTrkkh1Y1r07Gk0d7idiD0pL6WAwl6aSt', 'd_V6mmb09E0hktiCWSGxkz:APA91bE98bS6lbpqfh7JWFoabYJ3V_HMJpqlre1Q534H4agN6S2OTCTXBxmKr-s-ANNznKGexvw2EvJyEkvfem3uLHTS8AOEucAeK29FEfrdqh1vget4Bd9P8IZtx6InR-6KuU_JT568', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-25 12:17:09', '2021-02-25 12:17:09', NULL),
(9, 'Tuma Delivery Service Manager', 'manager@tuma.delivery', '$2y$10$eSnU6sy4HOGpUHCzsmzDVePP3ZZlEC2nZ9tf588kLYjigyC58fBXa', 'Vq6GXRGTif8dOOvzVyDobLeucqdYXQeeYrNRvv7xLCwQHAY30I7ZY8q8Usda', 'eIsJxNHw9kMnu5g9qGvkvK:APA91bHHHfy_c2Fh2l206vPpvPoldMwMsjRNiyIInpmuG7TAw0GZbZB6PhMpfeov7KBm6KPEAZUStMefc6fjDlcw8JWbUxlopJGdS5t0A3l9mu9VWWU9y8lK4Qm1n2oDzLVbPvaRyQB2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-02 11:39:14', '2021-03-11 11:33:28', '5555'),
(10, 'Steve Myers', 'idevelop4mobile@gmail.com', '$2y$10$FykUxowktMGYCd4deWFkG.amIPDiQCJGYhVhRzM3g6GtYajqFZ8.S', '4REBziBD0uuU7hfK5Aqh7AqYXrTUxRByqBO9rNgXY2A85uenVluqWieQkXeA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-05 12:17:19', '2021-03-05 12:17:19', NULL),
(12, 'Lierance Magwenzi', 'lierancemagwenzii@gmail.com', '$2y$10$ab4Wv/6pqH/UGwXMCDTv3.I0cAXtcCuRNQEEQnluEp5kB5gK45U5a', 'rNLfl4PIUe6ZcjpJ4gQDCrEWdFvv1m23LaRUeckrVI5bZAWMhGoLmkGIHpC3', 'cbk81qtQiEWont2IPBNyMx:APA91bHrzpd4PgKNFURoh-GwhcUowUoHYBe1P-ndpzBvPi6iucZJ9HycZNU7zH_DRx61OetiW9Gr5-15CnEtuGKQo1y2Yp6LaLmCOmNiPW-9ncVUlaNMOF-QhYmdNy4E-g95pmh-kbzE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 05:34:38', '2021-04-07 08:42:21', NULL),
(13, 'Dorcas', 'info@kaele.co.za', '$2y$10$kAzgkDzFibVikyOFnS5gzOJ/sF18lESY9guEy76.5Hv0970SuVorG', 'qqYyAxJdsjIMKFS4nScATQXkWXxzXFFWGgWLSLs1Zca746hVcbuOUVi0j126', 'dN3tgg0bLkc4ua_GmM501X:APA91bEwCRLtrDrgeKg-NmY_2j1iMXrhzSKVkRskuvgCwWIU9X10FvUXYtMH4FTsC89J6FhVHIu8F4Pvc-gwn6wWqJvbnidFivczIZp_r8yQIvflbIBuo_sjxgFbX1u44su0MMpSxaha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 15:44:31', '2021-04-09 06:40:55', NULL),
(14, 'Shaun Benjamin', 'shaun@itslearnable.co.za', '$2y$10$ChilmTtdwzqk7O5O3D5gqOmgnYJCvRSbxmWTxfIvR7BDs43UG0x9O', 'VsGB7ubS5gLPwrxySSZfWN7jzyV6vz9FZRdrVskCw8RCclosUKIvvJXtipOJ', 'eKGYyXdpTH6dle_wNlWQxw:APA91bEvQNNkvNLxY-wrgudWjrjFKOEoa_vdfikHArqRHdBzHicz5kSdGggxosvsSDcmUQcnZwCnMMjzECpEmtMwI4keOwRtPXhNPILllQHiElzFBPxUuCoDEjINuNjPaw5Vwn4CEI1G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-08 10:21:46', '2021-04-14 13:23:41', NULL),
(15, 'Dee', 'mdpooe@gmail.com', '$2y$10$PBhRuKA2biQ1EoNTdtGrfeg1sR1xVIG.kRm7Hsq62MFY5BEtEdEHu', 'RyrzZqd7PcaknwarNVfPYAzS6ixOZjOLeMEHquZd1klEui3pLiifDCCu37AJ', 'dN3tgg0bLkc4ua_GmM501X:APA91bEwCRLtrDrgeKg-NmY_2j1iMXrhzSKVkRskuvgCwWIU9X10FvUXYtMH4FTsC89J6FhVHIu8F4Pvc-gwn6wWqJvbnidFivczIZp_r8yQIvflbIBuo_sjxgFbX1u44su0MMpSxaha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-09 06:41:53', '2021-04-09 06:41:53', NULL),
(16, 'Distributor', 'dist@dist.com', '$2y$10$E7qJizK0/R754wtlfmFPReM6rQ6bpgp5Rs5111jZzNbJoFDKfi6WO', 'VdFzM0k1cRVxsLNlGIdTTP5AziyUJiF9YfjoGejDC1f7gAkoWoLO3q2SzT4a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-14 08:00:37', '2021-04-14 08:00:37', NULL),
(17, 'Demo Distributor', 'ap@ap.com', '$2y$10$JH2QH66N71FfflD04asCXuK8pc8crM36qH4ghqynF3O6y28rW7z4m', 'CjaLpa7OOadBRyr1OvjBx3IsL8wZNiAT6k5VnYoj3bcQGEgHbYpibq7oBXFo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-14 12:25:31', '2021-04-14 12:25:31', NULL),
(18, 'Shoriwa Benjamin', 'shauns@itslearnables.co.za', '$2y$10$miNQytMfBwY9TfwdDNoGresggjJq9zyhP6cTXZtsiAXqT4eb8WzR2', 'MDNAgLH923qi5W26SroeeYm2jHOWtjSRrCIQS4oLDC1dEmmVunVxULGy58NI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-14 13:11:46', '2021-04-14 13:11:46', NULL),
(19, 'Dorcas Pooe', 'demo1@demo1.com', '$2y$10$t5dU3Lj039SfnO3.tkdtD.KgCyoUOkGaYvGmPX9a1IxP2oNGU.Wx.', 'gewQkrz1CkvEFk6dUmoDUM6XORqqig94xowEkZ3zT6LJLMlrzCSQNgk8qTSQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-14 13:15:21', '2021-04-14 13:15:21', NULL),
(20, 'Dorcas Pooe', 'dorcas@demo.com', '$2y$10$S7a1fW.1pktwmazUwejndOl0gms.xwuf7Q8urP.hh5HpBIfdwsYpS', '1F82GCrqZnZdjTza4wKV0pNMtBDyT8q811acmF3YVpUDegnA4kHoCsWN1Ass', 'eKGYyXdpTH6dle_wNlWQxw:APA91bEvQNNkvNLxY-wrgudWjrjFKOEoa_vdfikHArqRHdBzHicz5kSdGggxosvsSDcmUQcnZwCnMMjzECpEmtMwI4keOwRtPXhNPILllQHiElzFBPxUuCoDEjINuNjPaw5Vwn4CEI1G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-14 13:26:00', '2021-04-14 13:26:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_markets`
--

CREATE TABLE `user_markets` (
  `user_id` int UNSIGNED NOT NULL,
  `market_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_markets`
--

INSERT INTO `user_markets` (`user_id`, `market_id`) VALUES
(1, 2),
(2, 3),
(2, 4),
(1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint UNSIGNED NOT NULL,
  `model` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `model`, `registration`, `color`, `driver`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'Nissan Navara new 2.5', '123455', 'White', 'Lierance Magwenzi,Umaga', 1, '2021-03-24 06:47:06', '2021-03-24 07:31:32'),
(5, 'Honda HRV 2006', '324567', 'Red', 'Lee', 1, '2021-03-24 06:48:53', '2021-03-24 07:24:35'),
(6, 'kB 250', '5669', 'white', 'john', 1, '2021-03-24 07:46:24', '2021-03-24 07:46:24'),
(9, 'tht', 'gffgfg', 'gggg', 'fggfgffg,gfgfgf', 1, '2021-03-30 07:38:13', '2021-03-30 07:38:13'),
(10, 'Mercedes Benz C320', 'AA 34514 GP', 'Black', 'Dorcas', 1, '2021-03-30 08:36:25', '2021-03-30 08:36:25'),
(11, 'ssdsd', 'dsdsdssd', 'ssdds', 'dssddsdsds', 12, '2021-04-07 08:48:22', '2021-04-07 08:48:22'),
(12, 'dddf', 'fdfdfdfd', 'ffddfdf', 'fddfdffd', 12, '2021-04-07 09:08:28', '2021-04-07 09:08:28'),
(13, 'Volvo', 'AAQ HEBWVW', 'whitw', 'Ray', 14, '2021-04-08 18:45:07', '2021-04-08 18:45:07'),
(14, 'BMW 3 Series', 'AA 45 335 GP', 'Red', 'Dorcas Pooe', 20, '2021-04-14 13:28:57', '2021-04-14 13:28:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_settings_key_index` (`key`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `cart_options`
--
ALTER TABLE `cart_options`
  ADD PRIMARY KEY (`option_id`,`cart_id`),
  ADD KEY `cart_options_cart_id_foreign` (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`);

--
-- Indexes for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `discountables`
--
ALTER TABLE `discountables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discountables_coupon_id_foreign` (`coupon_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drivers_user_id_foreign` (`user_id`);

--
-- Indexes for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drivers_payouts_user_id_foreign` (`user_id`);

--
-- Indexes for table `driver_locations`
--
ALTER TABLE `driver_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_markets`
--
ALTER TABLE `driver_markets`
  ADD PRIMARY KEY (`user_id`,`market_id`),
  ADD KEY `driver_markets_market_id_foreign` (`market_id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `earnings_market_id_foreign` (`market_id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_faq_category_id_foreign` (`faq_category_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_product_id_foreign` (`product_id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`);

--
-- Indexes for table `favorite_options`
--
ALTER TABLE `favorite_options`
  ADD PRIMARY KEY (`option_id`,`favorite_id`),
  ADD KEY `favorite_options_favorite_id_foreign` (`favorite_id`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_market_id_foreign` (`market_id`);

--
-- Indexes for table `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markets_payouts`
--
ALTER TABLE `markets_payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `markets_payouts_market_id_foreign` (`market_id`);

--
-- Indexes for table `market_fields`
--
ALTER TABLE `market_fields`
  ADD PRIMARY KEY (`field_id`,`market_id`),
  ADD KEY `market_fields_market_id_foreign` (`market_id`);

--
-- Indexes for table `market_reviews`
--
ALTER TABLE `market_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `market_reviews_user_id_foreign` (`user_id`),
  ADD KEY `market_reviews_market_id_foreign` (`market_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_product_id_foreign` (`product_id`),
  ADD KEY `options_option_group_id_foreign` (`option_group_id`);

--
-- Indexes for table `option_groups`
--
ALTER TABLE `option_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_order_status_id_foreign` (`order_status_id`),
  ADD KEY `orders_driver_id_foreign` (`driver_id`),
  ADD KEY `orders_delivery_address_id_foreign` (`delivery_address_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `order_diver_locations`
--
ALTER TABLE `order_diver_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `petrolium_products`
--
ALTER TABLE `petrolium_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_market_id_foreign` (`market_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_orders_product_id_foreign` (`product_id`),
  ADD KEY `product_orders_order_id_foreign` (`order_id`);

--
-- Indexes for table `product_order_options`
--
ALTER TABLE `product_order_options`
  ADD PRIMARY KEY (`product_order_id`,`option_id`),
  ADD KEY `product_order_options_option_id_foreign` (`option_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slides_product_id_foreign` (`product_id`),
  ADD KEY `slides_market_id_foreign` (`market_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_products`
--
ALTER TABLE `subscription_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trucklocations`
--
ALTER TABLE `trucklocations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trucks`
--
ALTER TABLE `trucks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `user_markets`
--
ALTER TABLE `user_markets`
  ADD PRIMARY KEY (`user_id`,`market_id`),
  ADD KEY `user_markets_market_id_foreign` (`market_id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `discountables`
--
ALTER TABLE `discountables`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_locations`
--
ALTER TABLE `driver_locations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `markets`
--
ALTER TABLE `markets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `markets_payouts`
--
ALTER TABLE `markets_payouts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `market_reviews`
--
ALTER TABLE `market_reviews`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `option_groups`
--
ALTER TABLE `option_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `order_diver_locations`
--
ALTER TABLE `order_diver_locations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `petrolium_products`
--
ALTER TABLE `petrolium_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_products`
--
ALTER TABLE `subscription_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trucklocations`
--
ALTER TABLE `trucklocations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trucks`
--
ALTER TABLE `trucks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart_options`
--
ALTER TABLE `cart_options`
  ADD CONSTRAINT `cart_options_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD CONSTRAINT `delivery_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `discountables`
--
ALTER TABLE `discountables`
  ADD CONSTRAINT `discountables_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `drivers`
--
ALTER TABLE `drivers`
  ADD CONSTRAINT `drivers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  ADD CONSTRAINT `drivers_payouts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `driver_markets`
--
ALTER TABLE `driver_markets`
  ADD CONSTRAINT `driver_markets_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `driver_markets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `earnings`
--
ALTER TABLE `earnings`
  ADD CONSTRAINT `earnings_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_faq_category_id_foreign` FOREIGN KEY (`faq_category_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorite_options`
--
ALTER TABLE `favorite_options`
  ADD CONSTRAINT `favorite_options_favorite_id_foreign` FOREIGN KEY (`favorite_id`) REFERENCES `favorites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `markets_payouts`
--
ALTER TABLE `markets_payouts`
  ADD CONSTRAINT `markets_payouts_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `market_fields`
--
ALTER TABLE `market_fields`
  ADD CONSTRAINT `market_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `market_fields_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `market_reviews`
--
ALTER TABLE `market_reviews`
  ADD CONSTRAINT `market_reviews_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `market_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_option_group_id_foreign` FOREIGN KEY (`option_group_id`) REFERENCES `option_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_delivery_address_id_foreign` FOREIGN KEY (`delivery_address_id`) REFERENCES `delivery_addresses` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_order_status_id_foreign` FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD CONSTRAINT `product_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_order_options`
--
ALTER TABLE `product_order_options`
  ADD CONSTRAINT `product_order_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_order_options_product_order_id_foreign` FOREIGN KEY (`product_order_id`) REFERENCES `product_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slides`
--
ALTER TABLE `slides`
  ADD CONSTRAINT `slides_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `slides_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `user_markets`
--
ALTER TABLE `user_markets`
  ADD CONSTRAINT `user_markets_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_markets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

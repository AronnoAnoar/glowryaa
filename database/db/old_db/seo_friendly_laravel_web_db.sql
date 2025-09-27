-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 19, 2024 at 12:23 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seo_friendly_laravel_web_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_and_contacts`
--

CREATE TABLE `about_and_contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `about_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_purposes`
--

CREATE TABLE `account_purposes` (
  `id` bigint UNSIGNED NOT NULL,
  `text` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_expense` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `remember_token` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `last_login_time` timestamp NULL DEFAULT NULL,
  `last_logout_time` timestamp NULL DEFAULT NULL,
  `signature` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `image`, `email`, `password`, `remember_token`, `status`, `last_login_time`, `last_logout_time`, `signature`, `created_at`, `updated_at`) VALUES
(83, 'Ponno Khuji', 'images/admin/ceAxN1v31Om41fwcYZYdhY6WexHX3JpRbZTeGhKU.jpg', 'waliul@admin.com', '$2y$10$hIky/E8gja6EgnCBCOlm3uM27Nq0MO7OHPiTrksS42RfJL8Sz.BGa', NULL, 1, '2024-02-19 07:49:22', '2023-12-02 10:20:54', NULL, '2023-04-09 04:31:01', '2024-02-19 13:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Size', 1, '2024-02-17 10:59:36', '2024-02-17 10:59:36'),
(2, 'Color', 1, '2024-02-17 10:59:43', '2024-02-17 10:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `background_and_colors`
--

CREATE TABLE `background_and_colors` (
  `id` bigint UNSIGNED NOT NULL,
  `primary_color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `primary_background_color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `menu_background_color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sub_menu_background_color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `primary_text_color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `menu_text_color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sub_menu_text_color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `background_and_colors`
--

INSERT INTO `background_and_colors` (`id`, `primary_color`, `primary_background_color`, `menu_background_color`, `sub_menu_background_color`, `primary_text_color`, `menu_text_color`, `sub_menu_text_color`, `created_at`, `updated_at`) VALUES
(1, '#2082ac', 'null', 'null', 'null', '#342d2d', 'null', 'null', NULL, '2024-02-17 07:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `balances`
--

CREATE TABLE `balances` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `balances`
--

INSERT INTO `balances` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cash', '2021-12-26 23:03:24', '2021-12-26 23:03:24'),
(2, 'Bank DBBL', '2021-12-26 23:04:09', '2021-12-26 23:04:09'),
(4, 'Bkash Parsonal', '2021-12-26 23:04:42', '2021-12-26 23:04:42'),
(5, 'Nagod Parsonal', '2021-12-26 23:05:08', '2021-12-26 23:05:08'),
(6, 'Bkash(merchant)', '2022-01-15 05:58:33', '2022-01-15 05:58:33'),
(7, 'Bank(SIBL)', '2022-02-06 20:30:48', '2022-02-06 20:30:48'),
(8, 'BRAC BANK', '2022-12-28 07:28:22', '2022-12-28 07:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `balance_transfers`
--

CREATE TABLE `balance_transfers` (
  `id` bigint UNSIGNED NOT NULL,
  `from` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `cost` double(8,2) NOT NULL DEFAULT '0.00',
  `creator_admin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `url_1` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_paid_statements`
--

CREATE TABLE `bill_paid_statements` (
  `id` bigint UNSIGNED NOT NULL,
  `bill_statement_id` int NOT NULL,
  `date` date NOT NULL,
  `comment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_per_months`
--

CREATE TABLE `bill_per_months` (
  `id` bigint UNSIGNED NOT NULL,
  `bill_statement_id` int NOT NULL,
  `date` date NOT NULL,
  `month` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_statements`
--

CREATE TABLE `bill_statements` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL DEFAULT '2',
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `position` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buy_one_get_one_offers`
--

CREATE TABLE `buy_one_get_one_offers` (
  `id` bigint UNSIGNED NOT NULL,
  `product_code` int NOT NULL,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint UNSIGNED NOT NULL,
  `campaign_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `terms_and_condition` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_products`
--

CREATE TABLE `campaign_products` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `campaign_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_sliders`
--

CREATE TABLE `campaign_sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `campaign_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carriers`
--

CREATE TABLE `carriers` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vacency` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint NOT NULL,
  `product_id` int NOT NULL,
  `merchant_id` int DEFAULT NULL,
  `product_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `product_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `product_slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `price` float NOT NULL,
  `quantity` float NOT NULL,
  `attribute_id` int DEFAULT NULL,
  `variant_id` int DEFAULT NULL,
  `size` int NOT NULL DEFAULT '0',
  `color` int DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `user_id` bigint DEFAULT '0',
  `user_ip` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_selected` int NOT NULL,
  `status` int NOT NULL,
  `position` int DEFAULT NULL,
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon_image`, `is_selected`, `status`, `position`, `meta_title`, `meta_description`, `meta_key`, `meta_content`, `created_at`, `updated_at`) VALUES
(1, 'Mens Fashion', 'mens-fashion', 'images/category/qNhryvSMhvfaInhtRc8dvVcuVpB8wLxVd71CbH9e.png', 1, 1, NULL, NULL, NULL, NULL, NULL, '2024-02-17 10:33:08', '2024-02-17 10:33:08'),
(2, 'Women\'s Fashion', 'womens-fashion', 'images/category/xDxMFAOhp7614lcQG0zzpxE5N8EevdIHlwgb3Eys.png', 1, 1, NULL, NULL, NULL, NULL, NULL, '2024-02-17 10:42:53', '2024-02-17 10:42:53'),
(3, 'Kids Zone', 'kids-zone', 'images/category/FathZYXcVlezh7kzajfa0DA5LpNDX6zly5zaD1Ig.png', 1, 1, NULL, NULL, NULL, NULL, NULL, '2024-02-17 10:43:17', '2024-02-17 10:43:17'),
(4, 'Winter Collection', 'winter-collection', 'images/category/Sbzp64lWLksw59mJho5w7TvcC7DF5OMb2HeuBuAp.png', 1, 1, NULL, NULL, NULL, NULL, NULL, '2024-02-17 10:43:35', '2024-02-17 10:43:35');

-- --------------------------------------------------------

--
-- Table structure for table `category_sliders`
--

CREATE TABLE `category_sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int DEFAULT NULL,
  `sub_category_id` int DEFAULT NULL,
  `sub_sub_category_id` int DEFAULT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_charge` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `delivery_charge`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka City', 60, 1, '2020-09-21 20:17:18', '2023-04-02 04:07:52'),
(2, 'Barguna', 120, 1, '2020-09-22 09:25:37', '2020-12-24 01:05:47'),
(3, 'Barisal', 120, 1, '2020-09-22 09:28:14', '2020-12-24 01:05:37'),
(4, 'Bhola', 120, 1, '2020-09-22 09:29:11', '2020-12-24 01:05:28'),
(5, 'Jalokathi', 120, 1, '2020-09-22 09:29:34', '2020-12-24 01:05:18'),
(6, 'Patuakhali', 120, 1, '2020-09-22 09:29:56', '2020-12-24 01:05:02'),
(7, 'Pirojpur', 120, 1, '2020-09-22 09:32:24', '2020-12-24 01:04:50'),
(8, 'Bandorbon', 120, 1, '2020-09-22 09:32:37', '2020-12-24 01:04:42'),
(9, 'Brahmanbaria', 120, 1, '2020-09-22 09:33:21', '2020-12-24 01:04:30'),
(10, 'Chandpur', 120, 1, '2020-09-22 09:53:56', '2020-12-24 01:04:13'),
(11, 'Chattagram', 120, 1, '2020-09-22 09:54:07', '2021-01-12 23:10:58'),
(12, 'Cumilla', 120, 1, '2020-09-22 09:54:23', '2020-12-24 01:03:53'),
(13, 'Cox\'Bazar', 120, 1, '2020-09-22 09:54:36', '2020-12-24 01:03:38'),
(14, 'Feni', 120, 1, '2020-09-22 09:54:43', '2020-12-24 01:03:26'),
(15, 'Khagrachari', 120, 1, '2020-09-22 09:55:16', '2020-12-24 01:03:16'),
(16, 'Lakshmipur', 120, 1, '2020-09-22 09:55:28', '2020-12-24 01:03:04'),
(17, 'Noakhali', 120, 1, '2020-09-22 09:55:44', '2020-12-24 01:02:52'),
(18, 'Rangamati', 120, 1, '2020-09-22 09:55:57', '2020-12-24 01:02:43'),
(19, 'Faridpur', 120, 1, '2020-09-22 09:56:17', '2020-12-24 01:02:32'),
(20, 'Gazipur', 120, 1, '2020-09-22 09:56:28', '2020-12-24 01:02:20'),
(21, 'Gopalgonj', 120, 1, '2020-09-22 09:56:36', '2020-12-24 01:01:58'),
(22, 'Kishorgonj', 120, 1, '2020-09-22 09:57:04', '2020-12-24 01:01:47'),
(23, 'Madaripur', 120, 1, '2020-09-22 09:57:24', '2020-12-24 01:01:39'),
(24, 'Manikgonj', 120, 1, '2020-09-22 09:59:26', '2020-12-24 01:01:27'),
(25, 'Munshigonj', 120, 1, '2020-09-22 09:59:45', '2020-12-24 01:01:20'),
(26, 'Narayangonj', 120, 1, '2020-09-22 10:00:05', '2020-12-24 01:01:14'),
(27, 'Narsingdhi', 120, 1, '2020-09-22 10:00:27', '2020-12-24 00:59:16'),
(28, 'Rajbari', 120, 1, '2020-09-22 10:00:40', '2020-12-24 01:00:59'),
(29, 'Shariatpur', 120, 1, '2020-09-22 10:00:50', '2020-12-24 01:00:51'),
(30, 'Tangail', 120, 1, '2020-09-22 10:01:06', '2020-12-24 01:00:38'),
(31, 'Bagerhat', 120, 1, '2020-09-22 10:01:16', '2020-12-24 01:00:23'),
(32, 'Chuadanga', 120, 1, '2020-09-22 10:01:31', '2020-12-24 01:00:14'),
(33, 'Jessore', 120, 1, '2020-09-22 10:01:49', '2020-12-24 01:00:04'),
(34, 'Jhenaidah', 120, 1, '2020-09-22 10:02:02', '2020-12-24 00:59:52'),
(35, 'Khulna', 120, 1, '2020-09-22 10:02:18', '2020-12-24 00:59:36'),
(36, 'Kushtia', 120, 1, '2020-09-22 10:02:28', '2021-01-12 23:11:18'),
(37, 'Magura', 120, 1, '2020-09-22 10:02:35', '2020-12-24 00:59:00'),
(38, 'Meherpur', 120, 1, '2020-09-22 10:02:52', '2020-12-24 00:58:51'),
(39, 'Narail', 120, 1, '2020-09-22 10:03:03', '2020-12-24 00:58:42'),
(40, 'Satkhira', 120, 1, '2020-09-22 10:03:13', '2020-12-24 00:58:29'),
(41, 'Jamalpur', 120, 1, '2020-09-22 10:03:34', '2020-12-24 00:58:20'),
(42, 'Mymensingh', 120, 1, '2020-09-22 10:03:51', '2020-12-24 00:58:01'),
(43, 'Netrokona', 120, 1, '2020-09-22 10:04:03', '2020-12-24 00:57:48'),
(44, 'Sherpur', 120, 1, '2020-09-22 10:07:38', '2020-12-24 00:57:38'),
(45, 'Bogura', 120, 1, '2020-09-22 10:07:48', '2020-12-24 00:57:30'),
(46, 'Joypurhat', 120, 1, '2020-09-22 10:08:00', '2020-12-24 00:57:18'),
(47, 'Naogaon', 120, 1, '2020-09-22 10:08:18', '2021-01-13 00:40:46'),
(48, 'Natore', 120, 1, '2020-09-22 10:08:25', '2020-12-24 00:56:58'),
(49, 'Chapainawabganj', 120, 1, '2020-09-22 10:08:46', '2020-12-24 00:56:46'),
(50, 'Pabna', 120, 1, '2020-09-22 10:08:54', '2020-12-24 00:56:35'),
(51, 'Rajshahi', 120, 1, '2020-09-22 10:09:01', '2020-12-24 00:56:27'),
(52, 'Sirajgonj', 120, 1, '2020-09-22 10:09:15', '2020-12-24 00:56:05'),
(53, 'Dinajpur', 120, 1, '2020-09-22 10:09:22', '2020-12-24 00:55:49'),
(54, 'Gaibandha', 120, 1, '2020-09-22 10:09:34', '2020-12-24 00:55:38'),
(55, 'Kurigram', 120, 1, '2020-09-22 10:09:49', '2020-12-24 00:55:29'),
(56, 'Lalmonirhat', 120, 1, '2020-09-22 10:09:57', '2020-12-24 00:55:18'),
(57, 'Nilphamari', 120, 1, '2020-09-22 10:10:08', '2020-12-24 00:55:10'),
(58, 'Panchagarh', 120, 1, '2020-09-22 10:10:52', '2020-12-24 00:55:04'),
(59, 'Rangpur', 120, 1, '2020-09-22 10:11:05', '2020-12-24 00:54:58'),
(60, 'Thakurgaon', 120, 1, '2020-09-22 10:11:16', '2020-12-24 00:54:48'),
(61, 'Hobigonj', 120, 1, '2020-09-22 10:11:28', '2020-12-24 00:54:42'),
(62, 'Mowlovibazar', 120, 1, '2020-09-22 10:11:43', '2020-12-24 00:54:37'),
(63, 'Sunamgonj', 120, 1, '2020-09-22 10:12:00', '2020-12-24 00:54:31'),
(64, 'Sylhet', 120, 1, '2020-09-22 10:12:11', '2020-12-24 00:54:09'),
(65, 'Chattagram City', 120, 1, '2020-11-29 16:57:55', '2021-01-13 17:40:48'),
(66, 'Dhaka Suburb', 100, 1, '2020-11-29 16:58:19', '2021-01-13 01:21:45'),
(67, 'Dhaka District', 120, 1, '2021-01-13 01:40:45', '2021-01-13 01:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `combo_products`
--

CREATE TABLE `combo_products` (
  `id` bigint UNSIGNED NOT NULL,
  `combo_product_id` int NOT NULL,
  `general_product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(3, 'আবার কল দিতে হবে', 1, '2020-12-02 07:31:12', '2020-12-02 07:31:12'),
(4, 'অফিসে আসবেন', 1, '2020-12-02 07:31:49', '2020-12-02 07:31:49'),
(5, 'পরে জানাবেন', 1, '2020-12-02 07:32:10', '2020-12-02 07:32:10'),
(7, 'Froud Customer', 1, '2020-12-03 15:04:17', '2023-08-19 04:17:09'),
(8, 'others', 1, '2020-12-03 15:21:45', '2020-12-03 15:21:45'),
(9, 'Product Return', 1, '2020-12-23 17:45:24', '2023-09-04 10:46:42'),
(10, 'Order Confirmed', 1, '2020-12-23 17:46:04', '2020-12-23 17:46:04'),
(11, 'কাস্টমার টাকা দিয়ে জানাবে', 1, '2021-01-23 16:21:28', '2023-08-25 14:03:36'),
(12, 'Call Receive Kore ni', 1, '2021-01-23 16:21:48', '2021-01-23 16:21:48'),
(13, 'Number Busy', 1, '2021-01-23 16:21:54', '2021-01-23 16:21:54'),
(14, 'Phone Off !!', 1, '2021-01-23 16:22:03', '2021-01-23 16:22:03'),
(16, 'DC OK', 1, '2023-03-16 04:48:01', '2023-08-25 13:33:08'),
(17, 'Cancel Order By Customer', 1, '2023-03-16 04:48:37', '2023-03-16 04:48:37'),
(18, 'Cash On Delivery', 1, '2023-03-28 15:06:45', '2023-08-25 13:33:26'),
(19, 'Double order', 1, '2023-04-01 06:41:35', '2023-04-01 06:41:35'),
(20, 'Unrechable', 1, '2023-04-13 06:38:38', '2023-08-25 07:52:35'),
(21, 'Customer doesn\'t pick up the call.', 1, '2023-04-17 09:19:58', '2023-08-18 15:44:46'),
(22, 'Over size', 1, '2023-11-26 19:32:36', '2023-11-26 19:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_assets`
--

CREATE TABLE `company_assets` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `purchase_price` int NOT NULL,
  `present_price` int NOT NULL,
  `quantity` int NOT NULL,
  `amount` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_sale_paids`
--

CREATE TABLE `company_sale_paids` (
  `id` int NOT NULL,
  `company_id` int NOT NULL,
  `date` date NOT NULL,
  `credit_in` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `comment` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `amount` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `discount_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_amount` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `couriers`
--

CREATE TABLE `couriers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `couriers`
--

INSERT INTO `couriers` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'S A Paribahan', 1, '2022-01-04 20:21:51', '2022-01-04 20:21:51'),
(2, 'Sundarban', 1, '2022-01-04 20:22:26', '2022-01-04 20:22:26'),
(3, 'Redx', 0, '2022-01-11 00:19:59', '2023-11-27 08:43:04'),
(4, 'MR Pion', 0, '2022-01-11 00:20:38', '2023-08-17 13:51:31'),
(5, 'A J R Courier', 0, '2022-01-11 00:21:38', '2023-08-17 13:51:18'),
(6, 'Jononi Courier', 0, '2022-01-21 05:33:50', '2023-08-17 13:51:12'),
(7, 'Pathao Courier', 0, '2022-01-21 05:34:09', '2023-11-03 21:57:09'),
(8, 'Bangladesh parcel', 0, '2022-02-23 19:30:41', '2023-08-17 13:51:08'),
(9, 'KCS', 0, '2022-02-23 19:30:52', '2023-08-17 13:51:06'),
(10, 'ahmed parcel', 0, '2022-02-23 19:31:22', '2023-08-17 13:51:04'),
(11, 'Ala Uddin Corier', 0, '2022-03-20 22:56:00', '2023-08-17 13:51:02'),
(13, 'ninja express', 0, '2022-10-02 14:08:25', '2023-08-14 16:36:02'),
(14, 'PICK ME', 0, '2023-05-14 04:32:00', '2023-08-26 06:08:39'),
(15, 'Steadfast Courier', 1, '2023-11-03 21:57:01', '2023-11-03 21:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL COMMENT 'date',
  `purpose` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` int DEFAULT NULL,
  `sale_id` int DEFAULT NULL,
  `credit_in` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` float NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `insert_admin_id` int NOT NULL COMMENT 'store_admin_id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credit_dues`
--

CREATE TABLE `credit_dues` (
  `id` bigint UNSIGNED NOT NULL,
  `credit_id` int NOT NULL,
  `due_amount` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `user_id` int NOT NULL DEFAULT '0',
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `city_id` int DEFAULT NULL,
  `sub_city_id` int DEFAULT NULL,
  `customer_type` int DEFAULT NULL,
  `remember_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `user_id`, `phone`, `password`, `status`, `email`, `image`, `address`, `city_id`, `sub_city_id`, `customer_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Waliul Hasan', 0, '01521584922', '$2y$10$hCOA83i6YIAdQzzui8JvHuLYAbKgy/eQCGrIm8Mi5mfQbsnsii5H6', 1, NULL, NULL, 'dhaka fds', NULL, NULL, 1, NULL, '2024-02-19 11:35:50', '2024-02-19 11:35:50'),
(2, 'Zumanul', 0, '01405507678', '$2y$10$MljlWjTUjGjS56opRQp.F.0pp4K63tyF1AUgGxehZ/laj.iHsmwNq', 1, NULL, NULL, 'dfsfs', NULL, NULL, 1, NULL, '2024-02-19 11:37:51', '2024-02-19 11:37:51');

-- --------------------------------------------------------

--
-- Table structure for table `customer_dues`
--

CREATE TABLE `customer_dues` (
  `id` bigint UNSIGNED NOT NULL,
  `sale_id` int NOT NULL,
  `customer_mobile_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `customer_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `memo_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_due_paids`
--

CREATE TABLE `customer_due_paids` (
  `id` bigint UNSIGNED NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `debits`
--

CREATE TABLE `debits` (
  `id` bigint UNSIGNED NOT NULL,
  `purchase_id` int DEFAULT NULL,
  `date` date NOT NULL COMMENT 'date',
  `purpose` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `debit_from` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `signature` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_expense` int DEFAULT '1',
  `insert_admin_id` int NOT NULL COMMENT 'store_admin_id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_charges`
--

CREATE TABLE `delivery_charges` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_charge` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_charges`
--

INSERT INTO `delivery_charges` (`id`, `name`, `delivery_charge`, `created_at`, `updated_at`) VALUES
(1, 'Inside Dhaka', 60, NULL, '2023-03-02 16:20:02'),
(2, 'Outside Dhaka', 120, NULL, '2023-03-02 16:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `share_value` int NOT NULL,
  `share_qty` int NOT NULL,
  `total_amount` double NOT NULL DEFAULT '0' COMMENT 'total service amount',
  `total_paid_amount` double NOT NULL DEFAULT '0' COMMENT 'all payments paid of service',
  `total_refund_amount` double NOT NULL DEFAULT '0',
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `director_payments`
--

CREATE TABLE `director_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `director_id` bigint UNSIGNED NOT NULL,
  `amount` double DEFAULT NULL,
  `balance_id` bigint UNSIGNED DEFAULT NULL COMMENT 'payment_method_id is the payment_methods table primary id',
  `trx_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Cheque no/bKash, nagad or other paid transaction id',
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `director_refunds`
--

CREATE TABLE `director_refunds` (
  `id` bigint UNSIGNED NOT NULL,
  `director_id` bigint UNSIGNED NOT NULL,
  `amount` double DEFAULT NULL,
  `balance_id` bigint UNSIGNED DEFAULT NULL COMMENT 'payment_method_id is the payment_methods table primary id',
  `trx_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Cheque no/bKash, nagad or other paid transaction id',
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `joining_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `designation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone_office` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `position` int NOT NULL,
  `avator` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `resume` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_salaries`
--

CREATE TABLE `employee_salaries` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` int NOT NULL,
  `amount` int NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `paid` int NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_deals`
--

CREATE TABLE `flash_deals` (
  `id` bigint UNSIGNED NOT NULL,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_stand_out` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fond_transfers`
--

CREATE TABLE `fond_transfers` (
  `id` bigint UNSIGNED NOT NULL,
  `from` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `cost` double(8,2) NOT NULL DEFAULT '0.00',
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `creator_admin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footer_settings`
--

CREATE TABLE `footer_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `facebook_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `twitter_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `youtube_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `linkedin_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `copyright_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_settings`
--

INSERT INTO `footer_settings` (`id`, `facebook_url`, `twitter_url`, `youtube_url`, `linkedin_url`, `copyright_info`, `footer_description`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 'null', 'demo.com @ all right reserved', '<p>Elevate Your Style with <strong>demo.com</strong> - Unleash the latest fashion trends at your fingertips. Discover curated collections, timeless pieces, and exclusive designs that redefine your wardrobe. Embrace the fusion of elegance and innovation. Shop with confidence, shop with Us</p>', NULL, '2024-02-17 07:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_contact_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_contact_number_two` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_contact_number_three` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `wallet_point_value` int NOT NULL DEFAULT '0',
  `invoice_address_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_pixel` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reseller_refer_commission` int NOT NULL DEFAULT '1',
  `facebook_domain_verification` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook_chat_plugin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook_page_iframe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_domain_verification` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_analytics` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `whatsapp_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_api_username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_api_password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_api_sender_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `select_area` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_sub_city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `logo`, `title`, `icon`, `header_email`, `header_contact_number`, `header_contact_number_two`, `header_contact_number_three`, `wallet_point_value`, `invoice_address_details`, `facebook_pixel`, `reseller_refer_commission`, `facebook_domain_verification`, `facebook_chat_plugin`, `facebook_page_iframe`, `google_domain_verification`, `google_analytics`, `whatsapp_number`, `sms_api_username`, `sms_api_password`, `sms_api_sender_id`, `select_area`, `city_sub_city`, `meta_title`, `meta_description`, `meta_key`, `meta_content`, `created_at`, `updated_at`) VALUES
(1, 'images/general_setting/tko6LiIGkpaYHnctH0WZdkktUtoTZqm1lbZ53JtO.png', 'Demo.com', 'images/general_setting/CQ7bSVj7hENzd4yHVv9hVDluehKKQRSUrPF68bcl.png', NULL, '01000000000', '01000000000', '01000000000', 2, '<p>Office:</p><p>Phone:<strong> </strong>01000000000</p>', NULL, 1, NULL, NULL, NULL, NULL, NULL, '+8801000000000', NULL, NULL, NULL, 'no', 'no', 'Meta title', 'Meta description', 'Meta keywords', 'Elevate Your Style with demo.com - Unleash the latest fashion trends at your fingertips. Discover curated collections, timeless pieces, and exclusive designs that redefine your wardrobe. Embrace the fusion of elegance and innovation. Shop with confidence, shop with Us', '2021-01-10 05:29:08', '2024-02-17 10:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `investments`
--

CREATE TABLE `investments` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `investor_id` int NOT NULL,
  `purpose` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investment_returns`
--

CREATE TABLE `investment_returns` (
  `id` bigint UNSIGNED NOT NULL,
  `investor_id` int NOT NULL,
  `date` date NOT NULL,
  `comment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investors`
--

CREATE TABLE `investors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `referance_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profit_margin` int NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investor_profit_paids`
--

CREATE TABLE `investor_profit_paids` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `investor_id` int NOT NULL,
  `amount` double(8,2) NOT NULL,
  `profit_month` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `paid_by` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_applies`
--

CREATE TABLE `job_applies` (
  `id` bigint UNSIGNED NOT NULL,
  `job_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loaners`
--

CREATE TABLE `loaners` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint UNSIGNED NOT NULL,
  `loaner_id` int NOT NULL,
  `purpose` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date` date NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_paids`
--

CREATE TABLE `loan_paids` (
  `id` bigint UNSIGNED NOT NULL,
  `loaner_id` int NOT NULL,
  `amount` double(8,2) NOT NULL,
  `date` date NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `paid_by` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `merchants`
--

CREATE TABLE `merchants` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `company_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint NOT NULL COMMENT '2=deny, 0=pending, 1=approved',
  `remember_token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_cashbooks`
--

CREATE TABLE `merchant_cashbooks` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint UNSIGNED DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `is_discount` int NOT NULL DEFAULT '0' COMMENT '1=Discount Payment,0=Regular Payment',
  `reference` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Reference means trxId sometimes Cheque No',
  `is_income` int NOT NULL DEFAULT '1' COMMENT '1=Income,0=Expense',
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_date` datetime DEFAULT NULL,
  `note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_commission` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL COMMENT 'Record created person id is created_by which is primary id of users table',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_payment_transactions`
--

CREATE TABLE `merchant_payment_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `merchant_id` bigint NOT NULL,
  `payment_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bkash number or bank account number',
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL,
  `status` int NOT NULL DEFAULT '0' COMMENT 'requested for payment',
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_08_13_074443_create_categories_table', 1),
(4, '2020_08_17_060825_create_admins_table', 1),
(5, '2020_08_18_122228_create_sub_categories_table', 2),
(6, '2020_08_19_053842_create_sub_sub_categories_table', 2),
(7, '2020_08_19_081000_create_sliders_table', 2),
(8, '2020_08_19_104901_create_attributes_table', 2),
(9, '2020_08_19_105047_create_variants_table', 2),
(10, '2020_08_23_052431_create_merchants_table', 3),
(11, '2020_08_23_064414_create_couriers_table', 3),
(12, '2020_08_23_064458_create_cities_table', 3),
(13, '2020_08_23_075702_create_comments_table', 3),
(14, '2020_08_23_093241_create_products_table', 3),
(15, '2020_08_23_093326_create_product_images_table', 3),
(16, '2020_08_24_051714_create_product_variants_table', 3),
(17, '2020_08_24_052410_create_product_attributes_table', 3),
(18, '2020_08_25_055640_create_coupons_table', 3),
(19, '2020_08_25_082149_create_product_barcodes_table', 3),
(20, '2020_08_26_111627_create_purchases_table', 3),
(21, '2020_08_29_113350_create_purchaseitems_table', 3),
(29, '2020_09_05_164925_create_orders_table', 5),
(30, '2020_09_05_165048_create_order_items_table', 5),
(31, '2020_09_05_172052_create_customers_table', 5),
(32, '2020_08_31_110050_create_offers_table', 6),
(33, '2014_10_12_000000_create_users_table', 7),
(34, '2020_10_01_083322_create_sales_table', 8),
(35, '2020_10_01_083424_create_sale_items_table', 8),
(38, '2020_10_13_063649_create_companies_table', 9),
(42, '2020_10_15_080411_create_subscribers_table', 10),
(43, '2020_10_15_082430_create_contacts_table', 10),
(44, '2020_10_17_070148_create_resellers_table', 10),
(45, '2020_10_19_071659_create_reseller_order_details_table', 11),
(46, '2020_10_22_081732_create_selling__offers_table', 12),
(47, '2020_10_24_115225_create_carriers_table', 12),
(48, '2020_10_26_100913_create_job_applies_table', 12),
(49, '2020_10_28_094859_create_permission_tables', 13),
(51, '2020_10_28_101402_create_merchants_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(8, 'App\\Models\\Admin', 68),
(9, 'App\\Models\\Admin', 68),
(7, 'App\\Models\\Admin', 68),
(6, 'App\\Models\\Admin', 68),
(5, 'App\\Models\\Admin', 68),
(12, 'App\\Models\\Admin', 68),
(13, 'App\\Models\\Admin', 68),
(29, 'App\\Models\\Admin', 68),
(30, 'App\\Models\\Admin', 68),
(35, 'App\\Models\\Admin', 68),
(5, 'App\\Models\\Admin', 67),
(6, 'App\\Models\\Admin', 67),
(7, 'App\\Models\\Admin', 67),
(8, 'App\\Models\\Admin', 67),
(9, 'App\\Models\\Admin', 67),
(13, 'App\\Models\\Admin', 67),
(12, 'App\\Models\\Admin', 67),
(14, 'App\\Models\\Admin', 67),
(15, 'App\\Models\\Admin', 67),
(27, 'App\\Models\\Admin', 67),
(23, 'App\\Models\\Admin', 67),
(24, 'App\\Models\\Admin', 67),
(30, 'App\\Models\\Admin', 67),
(29, 'App\\Models\\Admin', 67),
(33, 'App\\Models\\Admin', 67),
(40, 'App\\Models\\Admin', 67),
(38, 'App\\Models\\Admin', 67),
(28, 'App\\Models\\Admin', 67),
(1, 'App\\Models\\Admin', 65),
(5, 'App\\Models\\Admin', 65),
(2, 'App\\Models\\Admin', 65),
(6, 'App\\Models\\Admin', 65),
(3, 'App\\Models\\Admin', 65),
(7, 'App\\Models\\Admin', 65),
(4, 'App\\Models\\Admin', 65),
(8, 'App\\Models\\Admin', 65),
(9, 'App\\Models\\Admin', 65),
(13, 'App\\Models\\Admin', 65),
(16, 'App\\Models\\Admin', 65),
(12, 'App\\Models\\Admin', 65),
(11, 'App\\Models\\Admin', 65),
(15, 'App\\Models\\Admin', 65),
(10, 'App\\Models\\Admin', 65),
(14, 'App\\Models\\Admin', 65),
(19, 'App\\Models\\Admin', 65),
(20, 'App\\Models\\Admin', 65),
(21, 'App\\Models\\Admin', 65),
(17, 'App\\Models\\Admin', 65),
(18, 'App\\Models\\Admin', 65),
(22, 'App\\Models\\Admin', 65),
(26, 'App\\Models\\Admin', 65),
(30, 'App\\Models\\Admin', 65),
(32, 'App\\Models\\Admin', 65),
(36, 'App\\Models\\Admin', 65),
(40, 'App\\Models\\Admin', 65),
(31, 'App\\Models\\Admin', 65),
(29, 'App\\Models\\Admin', 65),
(25, 'App\\Models\\Admin', 65),
(24, 'App\\Models\\Admin', 65),
(28, 'App\\Models\\Admin', 65),
(34, 'App\\Models\\Admin', 65),
(38, 'App\\Models\\Admin', 65),
(42, 'App\\Models\\Admin', 65),
(39, 'App\\Models\\Admin', 65),
(41, 'App\\Models\\Admin', 65),
(37, 'App\\Models\\Admin', 65),
(33, 'App\\Models\\Admin', 65),
(27, 'App\\Models\\Admin', 65),
(23, 'App\\Models\\Admin', 65),
(35, 'App\\Models\\Admin', 65),
(43, 'App\\Models\\Admin', 65),
(44, 'App\\Models\\Admin', 65),
(5, 'App\\Models\\Admin', 70),
(6, 'App\\Models\\Admin', 70),
(7, 'App\\Models\\Admin', 70),
(8, 'App\\Models\\Admin', 70),
(9, 'App\\Models\\Admin', 70),
(12, 'App\\Models\\Admin', 70),
(13, 'App\\Models\\Admin', 70),
(14, 'App\\Models\\Admin', 70),
(15, 'App\\Models\\Admin', 70),
(38, 'App\\Models\\Admin', 70),
(44, 'App\\Models\\Admin', 70),
(5, 'App\\Models\\Admin', 72),
(6, 'App\\Models\\Admin', 72),
(7, 'App\\Models\\Admin', 72),
(8, 'App\\Models\\Admin', 72),
(9, 'App\\Models\\Admin', 72),
(13, 'App\\Models\\Admin', 72),
(29, 'App\\Models\\Admin', 72),
(30, 'App\\Models\\Admin', 72),
(38, 'App\\Models\\Admin', 72),
(40, 'App\\Models\\Admin', 72),
(44, 'App\\Models\\Admin', 72),
(5, 'App\\Models\\Admin', 69),
(8, 'App\\Models\\Admin', 69),
(12, 'App\\Models\\Admin', 69),
(7, 'App\\Models\\Admin', 69),
(6, 'App\\Models\\Admin', 69),
(9, 'App\\Models\\Admin', 69),
(13, 'App\\Models\\Admin', 69),
(30, 'App\\Models\\Admin', 69),
(29, 'App\\Models\\Admin', 69),
(40, 'App\\Models\\Admin', 69),
(38, 'App\\Models\\Admin', 69),
(44, 'App\\Models\\Admin', 69),
(39, 'App\\Models\\Admin', 69),
(5, 'App\\Models\\Admin', 71),
(6, 'App\\Models\\Admin', 71),
(7, 'App\\Models\\Admin', 71),
(8, 'App\\Models\\Admin', 71),
(9, 'App\\Models\\Admin', 71),
(10, 'App\\Models\\Admin', 71),
(11, 'App\\Models\\Admin', 71),
(12, 'App\\Models\\Admin', 71),
(13, 'App\\Models\\Admin', 71),
(14, 'App\\Models\\Admin', 71),
(15, 'App\\Models\\Admin', 71),
(24, 'App\\Models\\Admin', 71),
(23, 'App\\Models\\Admin', 71),
(25, 'App\\Models\\Admin', 71),
(26, 'App\\Models\\Admin', 71),
(27, 'App\\Models\\Admin', 71),
(28, 'App\\Models\\Admin', 71),
(29, 'App\\Models\\Admin', 71),
(30, 'App\\Models\\Admin', 71),
(35, 'App\\Models\\Admin', 71),
(38, 'App\\Models\\Admin', 71),
(17, 'App\\Models\\Admin', 71),
(20, 'App\\Models\\Admin', 71),
(40, 'App\\Models\\Admin', 71),
(39, 'App\\Models\\Admin', 71),
(41, 'App\\Models\\Admin', 71),
(44, 'App\\Models\\Admin', 71),
(8, 'App\\Models\\Admin', 73),
(7, 'App\\Models\\Admin', 73),
(6, 'App\\Models\\Admin', 73),
(5, 'App\\Models\\Admin', 73),
(9, 'App\\Models\\Admin', 73),
(12, 'App\\Models\\Admin', 73),
(13, 'App\\Models\\Admin', 73),
(14, 'App\\Models\\Admin', 73),
(15, 'App\\Models\\Admin', 73),
(16, 'App\\Models\\Admin', 73),
(17, 'App\\Models\\Admin', 73),
(20, 'App\\Models\\Admin', 73),
(23, 'App\\Models\\Admin', 73),
(24, 'App\\Models\\Admin', 73),
(27, 'App\\Models\\Admin', 73),
(35, 'App\\Models\\Admin', 73),
(40, 'App\\Models\\Admin', 73),
(39, 'App\\Models\\Admin', 73),
(38, 'App\\Models\\Admin', 73),
(41, 'App\\Models\\Admin', 73),
(44, 'App\\Models\\Admin', 73),
(1, 'App\\Models\\Admin', 75),
(5, 'App\\Models\\Admin', 75),
(9, 'App\\Models\\Admin', 75),
(13, 'App\\Models\\Admin', 75),
(17, 'App\\Models\\Admin', 75),
(21, 'App\\Models\\Admin', 75),
(25, 'App\\Models\\Admin', 75),
(29, 'App\\Models\\Admin', 75),
(33, 'App\\Models\\Admin', 75),
(41, 'App\\Models\\Admin', 75),
(37, 'App\\Models\\Admin', 75),
(38, 'App\\Models\\Admin', 75),
(42, 'App\\Models\\Admin', 75),
(34, 'App\\Models\\Admin', 75),
(30, 'App\\Models\\Admin', 75),
(26, 'App\\Models\\Admin', 75),
(22, 'App\\Models\\Admin', 75),
(18, 'App\\Models\\Admin', 75),
(14, 'App\\Models\\Admin', 75),
(10, 'App\\Models\\Admin', 75),
(6, 'App\\Models\\Admin', 75),
(2, 'App\\Models\\Admin', 75),
(3, 'App\\Models\\Admin', 75),
(7, 'App\\Models\\Admin', 75),
(11, 'App\\Models\\Admin', 75),
(15, 'App\\Models\\Admin', 75),
(19, 'App\\Models\\Admin', 75),
(23, 'App\\Models\\Admin', 75),
(27, 'App\\Models\\Admin', 75),
(31, 'App\\Models\\Admin', 75),
(35, 'App\\Models\\Admin', 75),
(39, 'App\\Models\\Admin', 75),
(43, 'App\\Models\\Admin', 75),
(44, 'App\\Models\\Admin', 75),
(40, 'App\\Models\\Admin', 75),
(36, 'App\\Models\\Admin', 75),
(32, 'App\\Models\\Admin', 75),
(28, 'App\\Models\\Admin', 75),
(24, 'App\\Models\\Admin', 75),
(20, 'App\\Models\\Admin', 75),
(16, 'App\\Models\\Admin', 75),
(12, 'App\\Models\\Admin', 75),
(8, 'App\\Models\\Admin', 75),
(4, 'App\\Models\\Admin', 75),
(5, 'App\\Models\\Admin', 74),
(9, 'App\\Models\\Admin', 74),
(13, 'App\\Models\\Admin', 74),
(17, 'App\\Models\\Admin', 74),
(29, 'App\\Models\\Admin', 74),
(25, 'App\\Models\\Admin', 74),
(33, 'App\\Models\\Admin', 74),
(37, 'App\\Models\\Admin', 74),
(6, 'App\\Models\\Admin', 74),
(10, 'App\\Models\\Admin', 74),
(14, 'App\\Models\\Admin', 74),
(26, 'App\\Models\\Admin', 74),
(30, 'App\\Models\\Admin', 74),
(34, 'App\\Models\\Admin', 74),
(38, 'App\\Models\\Admin', 74),
(7, 'App\\Models\\Admin', 74),
(11, 'App\\Models\\Admin', 74),
(15, 'App\\Models\\Admin', 74),
(23, 'App\\Models\\Admin', 74),
(27, 'App\\Models\\Admin', 74),
(31, 'App\\Models\\Admin', 74),
(35, 'App\\Models\\Admin', 74),
(39, 'App\\Models\\Admin', 74),
(8, 'App\\Models\\Admin', 74),
(12, 'App\\Models\\Admin', 74),
(16, 'App\\Models\\Admin', 74),
(20, 'App\\Models\\Admin', 74),
(24, 'App\\Models\\Admin', 74),
(28, 'App\\Models\\Admin', 74),
(32, 'App\\Models\\Admin', 74),
(40, 'App\\Models\\Admin', 74),
(44, 'App\\Models\\Admin', 74),
(41, 'App\\Models\\Admin', 74),
(43, 'App\\Models\\Admin', 74),
(31, 'App\\Models\\Admin', 62),
(1, 'App\\Models\\Admin', 62),
(5, 'App\\Models\\Admin', 62),
(10, 'App\\Models\\Admin', 62),
(14, 'App\\Models\\Admin', 62),
(19, 'App\\Models\\Admin', 62),
(23, 'App\\Models\\Admin', 62),
(27, 'App\\Models\\Admin', 62),
(33, 'App\\Models\\Admin', 62),
(37, 'App\\Models\\Admin', 62),
(41, 'App\\Models\\Admin', 62),
(42, 'App\\Models\\Admin', 62),
(38, 'App\\Models\\Admin', 62),
(34, 'App\\Models\\Admin', 62),
(28, 'App\\Models\\Admin', 62),
(24, 'App\\Models\\Admin', 62),
(20, 'App\\Models\\Admin', 62),
(15, 'App\\Models\\Admin', 62),
(2, 'App\\Models\\Admin', 62),
(6, 'App\\Models\\Admin', 62),
(11, 'App\\Models\\Admin', 62),
(12, 'App\\Models\\Admin', 62),
(7, 'App\\Models\\Admin', 62),
(3, 'App\\Models\\Admin', 62),
(16, 'App\\Models\\Admin', 62),
(21, 'App\\Models\\Admin', 62),
(25, 'App\\Models\\Admin', 62),
(29, 'App\\Models\\Admin', 62),
(35, 'App\\Models\\Admin', 62),
(39, 'App\\Models\\Admin', 62),
(40, 'App\\Models\\Admin', 62),
(36, 'App\\Models\\Admin', 62),
(32, 'App\\Models\\Admin', 62),
(30, 'App\\Models\\Admin', 62),
(26, 'App\\Models\\Admin', 62),
(22, 'App\\Models\\Admin', 62),
(18, 'App\\Models\\Admin', 62),
(17, 'App\\Models\\Admin', 62),
(13, 'App\\Models\\Admin', 62),
(9, 'App\\Models\\Admin', 62),
(8, 'App\\Models\\Admin', 62),
(4, 'App\\Models\\Admin', 62),
(43, 'App\\Models\\Admin', 62),
(44, 'App\\Models\\Admin', 62),
(1, 'App\\Models\\Admin', 79),
(5, 'App\\Models\\Admin', 79),
(9, 'App\\Models\\Admin', 79),
(13, 'App\\Models\\Admin', 79),
(25, 'App\\Models\\Admin', 79),
(29, 'App\\Models\\Admin', 79),
(33, 'App\\Models\\Admin', 79),
(37, 'App\\Models\\Admin', 79),
(41, 'App\\Models\\Admin', 79),
(42, 'App\\Models\\Admin', 79),
(38, 'App\\Models\\Admin', 79),
(34, 'App\\Models\\Admin', 79),
(30, 'App\\Models\\Admin', 79),
(26, 'App\\Models\\Admin', 79),
(22, 'App\\Models\\Admin', 79),
(18, 'App\\Models\\Admin', 79),
(14, 'App\\Models\\Admin', 79),
(10, 'App\\Models\\Admin', 79),
(6, 'App\\Models\\Admin', 79),
(2, 'App\\Models\\Admin', 79),
(3, 'App\\Models\\Admin', 79),
(7, 'App\\Models\\Admin', 79),
(11, 'App\\Models\\Admin', 79),
(15, 'App\\Models\\Admin', 79),
(19, 'App\\Models\\Admin', 79),
(23, 'App\\Models\\Admin', 79),
(27, 'App\\Models\\Admin', 79),
(31, 'App\\Models\\Admin', 79),
(35, 'App\\Models\\Admin', 79),
(39, 'App\\Models\\Admin', 79),
(43, 'App\\Models\\Admin', 79),
(44, 'App\\Models\\Admin', 79),
(40, 'App\\Models\\Admin', 79),
(36, 'App\\Models\\Admin', 79),
(32, 'App\\Models\\Admin', 79),
(28, 'App\\Models\\Admin', 79),
(24, 'App\\Models\\Admin', 79),
(20, 'App\\Models\\Admin', 79),
(16, 'App\\Models\\Admin', 79),
(12, 'App\\Models\\Admin', 79),
(8, 'App\\Models\\Admin', 79),
(4, 'App\\Models\\Admin', 79),
(17, 'App\\Models\\Admin', 79),
(21, 'App\\Models\\Admin', 79),
(13, 'App\\Models\\Admin', 84),
(9, 'App\\Models\\Admin', 84),
(5, 'App\\Models\\Admin', 84),
(44, 'App\\Models\\Admin', 84),
(40, 'App\\Models\\Admin', 84),
(39, 'App\\Models\\Admin', 84),
(17, 'App\\Models\\Admin', 84),
(25, 'App\\Models\\Admin', 84),
(21, 'App\\Models\\Admin', 84),
(1, 'App\\Models\\Admin', 84),
(29, 'App\\Models\\Admin', 84),
(33, 'App\\Models\\Admin', 84),
(37, 'App\\Models\\Admin', 84),
(41, 'App\\Models\\Admin', 84),
(2, 'App\\Models\\Admin', 84),
(6, 'App\\Models\\Admin', 84),
(10, 'App\\Models\\Admin', 84),
(14, 'App\\Models\\Admin', 84),
(18, 'App\\Models\\Admin', 84),
(22, 'App\\Models\\Admin', 84),
(26, 'App\\Models\\Admin', 84),
(30, 'App\\Models\\Admin', 84),
(34, 'App\\Models\\Admin', 84),
(38, 'App\\Models\\Admin', 84),
(42, 'App\\Models\\Admin', 84),
(43, 'App\\Models\\Admin', 84),
(3, 'App\\Models\\Admin', 84),
(7, 'App\\Models\\Admin', 84),
(11, 'App\\Models\\Admin', 84),
(19, 'App\\Models\\Admin', 84),
(15, 'App\\Models\\Admin', 84),
(23, 'App\\Models\\Admin', 84),
(27, 'App\\Models\\Admin', 84),
(31, 'App\\Models\\Admin', 84),
(35, 'App\\Models\\Admin', 84),
(36, 'App\\Models\\Admin', 84),
(32, 'App\\Models\\Admin', 84),
(28, 'App\\Models\\Admin', 84),
(24, 'App\\Models\\Admin', 84),
(20, 'App\\Models\\Admin', 84),
(16, 'App\\Models\\Admin', 84),
(12, 'App\\Models\\Admin', 84),
(8, 'App\\Models\\Admin', 84),
(4, 'App\\Models\\Admin', 84),
(1, 'App\\Models\\Admin', 85),
(5, 'App\\Models\\Admin', 85),
(9, 'App\\Models\\Admin', 85),
(13, 'App\\Models\\Admin', 85),
(17, 'App\\Models\\Admin', 85),
(21, 'App\\Models\\Admin', 85),
(25, 'App\\Models\\Admin', 85),
(29, 'App\\Models\\Admin', 85),
(33, 'App\\Models\\Admin', 85),
(37, 'App\\Models\\Admin', 85),
(41, 'App\\Models\\Admin', 85),
(6, 'App\\Models\\Admin', 85),
(10, 'App\\Models\\Admin', 85),
(14, 'App\\Models\\Admin', 85),
(18, 'App\\Models\\Admin', 85),
(22, 'App\\Models\\Admin', 85),
(26, 'App\\Models\\Admin', 85),
(30, 'App\\Models\\Admin', 85),
(34, 'App\\Models\\Admin', 85),
(38, 'App\\Models\\Admin', 85),
(42, 'App\\Models\\Admin', 85),
(7, 'App\\Models\\Admin', 85),
(11, 'App\\Models\\Admin', 85),
(15, 'App\\Models\\Admin', 85),
(19, 'App\\Models\\Admin', 85),
(23, 'App\\Models\\Admin', 85),
(27, 'App\\Models\\Admin', 85),
(31, 'App\\Models\\Admin', 85),
(35, 'App\\Models\\Admin', 85),
(39, 'App\\Models\\Admin', 85),
(43, 'App\\Models\\Admin', 85),
(4, 'App\\Models\\Admin', 85),
(8, 'App\\Models\\Admin', 85),
(12, 'App\\Models\\Admin', 85),
(16, 'App\\Models\\Admin', 85),
(20, 'App\\Models\\Admin', 85),
(24, 'App\\Models\\Admin', 85),
(28, 'App\\Models\\Admin', 85),
(32, 'App\\Models\\Admin', 85),
(36, 'App\\Models\\Admin', 85),
(40, 'App\\Models\\Admin', 85),
(44, 'App\\Models\\Admin', 85),
(1, 'App\\Models\\Admin', 86),
(5, 'App\\Models\\Admin', 86),
(9, 'App\\Models\\Admin', 86),
(13, 'App\\Models\\Admin', 86),
(17, 'App\\Models\\Admin', 86),
(21, 'App\\Models\\Admin', 86),
(25, 'App\\Models\\Admin', 86),
(29, 'App\\Models\\Admin', 86),
(33, 'App\\Models\\Admin', 86),
(37, 'App\\Models\\Admin', 86),
(41, 'App\\Models\\Admin', 86),
(6, 'App\\Models\\Admin', 86),
(10, 'App\\Models\\Admin', 86),
(14, 'App\\Models\\Admin', 86),
(18, 'App\\Models\\Admin', 86),
(22, 'App\\Models\\Admin', 86),
(26, 'App\\Models\\Admin', 86),
(30, 'App\\Models\\Admin', 86),
(34, 'App\\Models\\Admin', 86),
(38, 'App\\Models\\Admin', 86),
(42, 'App\\Models\\Admin', 86),
(7, 'App\\Models\\Admin', 86),
(11, 'App\\Models\\Admin', 86),
(15, 'App\\Models\\Admin', 86),
(19, 'App\\Models\\Admin', 86),
(23, 'App\\Models\\Admin', 86),
(27, 'App\\Models\\Admin', 86),
(31, 'App\\Models\\Admin', 86),
(35, 'App\\Models\\Admin', 86),
(39, 'App\\Models\\Admin', 86),
(43, 'App\\Models\\Admin', 86),
(8, 'App\\Models\\Admin', 86),
(12, 'App\\Models\\Admin', 86),
(16, 'App\\Models\\Admin', 86),
(20, 'App\\Models\\Admin', 86),
(24, 'App\\Models\\Admin', 86),
(28, 'App\\Models\\Admin', 86),
(32, 'App\\Models\\Admin', 86),
(36, 'App\\Models\\Admin', 86),
(40, 'App\\Models\\Admin', 86),
(44, 'App\\Models\\Admin', 86),
(1, 'App\\Models\\Admin', 83),
(5, 'App\\Models\\Admin', 83),
(9, 'App\\Models\\Admin', 83),
(13, 'App\\Models\\Admin', 83),
(17, 'App\\Models\\Admin', 83),
(21, 'App\\Models\\Admin', 83),
(25, 'App\\Models\\Admin', 83),
(29, 'App\\Models\\Admin', 83),
(33, 'App\\Models\\Admin', 83),
(37, 'App\\Models\\Admin', 83),
(41, 'App\\Models\\Admin', 83),
(2, 'App\\Models\\Admin', 83),
(6, 'App\\Models\\Admin', 83),
(10, 'App\\Models\\Admin', 83),
(14, 'App\\Models\\Admin', 83),
(18, 'App\\Models\\Admin', 83),
(22, 'App\\Models\\Admin', 83),
(26, 'App\\Models\\Admin', 83),
(30, 'App\\Models\\Admin', 83),
(34, 'App\\Models\\Admin', 83),
(38, 'App\\Models\\Admin', 83),
(42, 'App\\Models\\Admin', 83),
(3, 'App\\Models\\Admin', 83),
(7, 'App\\Models\\Admin', 83),
(11, 'App\\Models\\Admin', 83),
(15, 'App\\Models\\Admin', 83),
(19, 'App\\Models\\Admin', 83),
(23, 'App\\Models\\Admin', 83),
(27, 'App\\Models\\Admin', 83),
(39, 'App\\Models\\Admin', 83),
(35, 'App\\Models\\Admin', 83),
(31, 'App\\Models\\Admin', 83),
(43, 'App\\Models\\Admin', 83),
(4, 'App\\Models\\Admin', 83),
(8, 'App\\Models\\Admin', 83),
(12, 'App\\Models\\Admin', 83),
(16, 'App\\Models\\Admin', 83),
(24, 'App\\Models\\Admin', 83),
(20, 'App\\Models\\Admin', 83),
(28, 'App\\Models\\Admin', 83),
(32, 'App\\Models\\Admin', 83),
(36, 'App\\Models\\Admin', 83),
(40, 'App\\Models\\Admin', 83),
(44, 'App\\Models\\Admin', 83);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 62),
(2, 'App\\Models\\Admin', 62),
(3, 'App\\Models\\Admin', 62),
(4, 'App\\Models\\Admin', 62),
(5, 'App\\Models\\Admin', 62),
(6, 'App\\Models\\Admin', 62),
(7, 'App\\Models\\Admin', 62),
(1, 'App\\Models\\Admin', 65),
(2, 'App\\Models\\Admin', 65),
(3, 'App\\Models\\Admin', 65),
(4, 'App\\Models\\Admin', 65),
(5, 'App\\Models\\Admin', 65),
(6, 'App\\Models\\Admin', 65),
(7, 'App\\Models\\Admin', 65),
(1, 'App\\Models\\Admin', 66),
(2, 'App\\Models\\Admin', 66),
(3, 'App\\Models\\Admin', 66),
(4, 'App\\Models\\Admin', 66),
(5, 'App\\Models\\Admin', 66),
(6, 'App\\Models\\Admin', 66),
(7, 'App\\Models\\Admin', 66),
(5, 'App\\Models\\Admin', 67),
(6, 'App\\Models\\Admin', 67),
(7, 'App\\Models\\Admin', 67),
(4, 'App\\Models\\Admin', 71),
(3, 'App\\Models\\Admin', 74),
(5, 'App\\Models\\Admin', 74),
(6, 'App\\Models\\Admin', 74),
(7, 'App\\Models\\Admin', 74),
(1, 'App\\Models\\Admin', 75),
(2, 'App\\Models\\Admin', 75),
(3, 'App\\Models\\Admin', 75),
(4, 'App\\Models\\Admin', 75),
(5, 'App\\Models\\Admin', 75),
(6, 'App\\Models\\Admin', 75),
(7, 'App\\Models\\Admin', 75),
(1, 'App\\Models\\Admin', 76),
(1, 'App\\Models\\Admin', 77),
(1, 'App\\Models\\Admin', 78),
(1, 'App\\Models\\Admin', 79),
(2, 'App\\Models\\Admin', 79),
(3, 'App\\Models\\Admin', 79),
(4, 'App\\Models\\Admin', 79),
(5, 'App\\Models\\Admin', 79),
(6, 'App\\Models\\Admin', 79),
(7, 'App\\Models\\Admin', 79),
(2, 'App\\Models\\Admin', 80),
(3, 'App\\Models\\Admin', 80),
(2, 'App\\Models\\Admin', 81),
(3, 'App\\Models\\Admin', 81),
(2, 'App\\Models\\Admin', 82),
(3, 'App\\Models\\Admin', 82),
(1, 'App\\Models\\Admin', 83),
(2, 'App\\Models\\Admin', 83),
(3, 'App\\Models\\Admin', 83),
(4, 'App\\Models\\Admin', 83),
(5, 'App\\Models\\Admin', 83),
(6, 'App\\Models\\Admin', 83),
(7, 'App\\Models\\Admin', 83),
(1, 'App\\Models\\Admin', 87),
(2, 'App\\Models\\Admin', 87),
(3, 'App\\Models\\Admin', 87),
(4, 'App\\Models\\Admin', 87),
(5, 'App\\Models\\Admin', 87),
(6, 'App\\Models\\Admin', 87),
(7, 'App\\Models\\Admin', 87);

-- --------------------------------------------------------

--
-- Table structure for table `occasion_products`
--

CREATE TABLE `occasion_products` (
  `id` bigint UNSIGNED NOT NULL,
  `product_code_one` int NOT NULL,
  `product_code_two` int NOT NULL,
  `background_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quote` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_no` int NOT NULL,
  `order_type` int NOT NULL,
  `customer_id` int NOT NULL,
  `customer_phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int DEFAULT NULL,
  `sub_city_id` int DEFAULT NULL,
  `select_area` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `courier_id` int DEFAULT NULL,
  `shipping_cost` int NOT NULL DEFAULT '0',
  `discount` int NOT NULL DEFAULT '0',
  `paid` int NOT NULL DEFAULT '0',
  `paid_by` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `total` float NOT NULL,
  `status` int NOT NULL,
  `print_status` int DEFAULT '0',
  `memo_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_admin_id` int DEFAULT NULL,
  `pending_admin_id` int DEFAULT NULL,
  `pending_date` date DEFAULT NULL,
  `approved_admin_id` int DEFAULT NULL,
  `approved_date` date DEFAULT NULL,
  `packaging_admin_id` int DEFAULT NULL,
  `packaging_date` date DEFAULT NULL,
  `shipment_admin_id` int DEFAULT NULL,
  `shippment_date` date DEFAULT NULL,
  `delivered_admin_id` int DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `cancel_admin_id` int DEFAULT NULL,
  `cancel_date` date DEFAULT NULL,
  `return_admin_id` int DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `reseller_id` int DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `coupon_id` int DEFAULT NULL,
  `coupon_disocunt` float DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_no`, `order_type`, `customer_id`, `customer_phone`, `city_id`, `sub_city_id`, `select_area`, `courier_id`, `shipping_cost`, `discount`, `paid`, `paid_by`, `total`, `status`, `print_status`, `memo_no`, `create_admin_id`, `pending_admin_id`, `pending_date`, `approved_admin_id`, `approved_date`, `packaging_admin_id`, `packaging_date`, `shipment_admin_id`, `shippment_date`, `delivered_admin_id`, `delivery_date`, `cancel_admin_id`, `cancel_date`, `return_admin_id`, `return_date`, `reseller_id`, `comment`, `coupon_id`, `coupon_disocunt`, `note`, `created_at`, `updated_at`) VALUES
(1, 124, 1, 1, '01521584922', NULL, NULL, NULL, NULL, 120, 0, 0, NULL, 550, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-19 11:35:50', '2024-02-19 11:35:50'),
(2, 125, 1, 2, '01405507678', NULL, NULL, NULL, NULL, 120, 0, 0, NULL, 2200, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-19 11:37:51', '2024-02-19 11:37:51');

-- --------------------------------------------------------

--
-- Table structure for table `orders_payment`
--

CREATE TABLE `orders_payment` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `address` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `status` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `order_id` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `transaction_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `currency` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_barcodes`
--

CREATE TABLE `order_barcodes` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int NOT NULL,
  `barcode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_number` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `total` float NOT NULL,
  `size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `price`, `quantity`, `total`, `size`, `color`, `weight`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 550, 1, 550, 'WHITE', NULL, '0', 1, '2024-02-19 11:35:50', '2024-02-19 11:35:50'),
(2, 2, 1, 550, 4, 2200, 'M', NULL, '0', 1, '2024-02-19 11:37:51', '2024-02-19 11:37:51');

-- --------------------------------------------------------

--
-- Table structure for table `order_shipment_and_return_policies`
--

CREATE TABLE `order_shipment_and_return_policies` (
  `id` bigint UNSIGNED NOT NULL,
  `order_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipment_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otp_verifications`
--

CREATE TABLE `otp_verifications` (
  `id` bigint UNSIGNED NOT NULL,
  `mobile_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `details`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'test', '<p>Test page</p>', 1, '2024-02-19 08:08:54', '2024-02-19 08:08:54');

-- --------------------------------------------------------

--
-- Table structure for table `parallax_banners`
--

CREATE TABLE `parallax_banners` (
  `id` bigint UNSIGNED NOT NULL,
  `background_banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int NOT NULL,
  `mobile_no` int NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'View Role', 'admin', '2020-10-29 01:32:38', '2020-10-29 01:32:38'),
(2, 'Add Role', 'admin', '2020-10-29 01:32:38', '2020-10-29 01:32:38'),
(3, 'Delete Role', 'admin', '2020-10-29 01:32:38', '2020-10-29 01:32:38'),
(4, 'Edit Role', 'admin', '2020-10-29 01:32:38', '2020-10-29 01:32:38'),
(5, 'view dashboard', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(6, 'create order', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(7, 'manage Order', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(8, 'create Sale', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(9, 'manage Sale', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(10, 'create purchase', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(11, 'manage purchase', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(12, 'create product', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(13, 'manage product', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(14, 'create category', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(15, 'manage category', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(16, 'Manage accounts', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(17, 'create credit', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(18, 'delete credit', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(19, 'edit credit', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(20, 'create debit', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(21, 'delete debit', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(22, 'edit debit', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(23, 'create attribute', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(24, 'manage attribute', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(25, 'create supplier', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(26, 'manage supplier', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(27, 'create and manage slider', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(28, 'create and manage merchant', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(29, 'create reseller', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(30, 'manage reseller', 'admin', '2020-11-03 04:20:05', '2020-11-03 04:20:05'),
(31, 'manage team', 'admin', '2020-11-03 04:20:05', '2020-11-03 04:20:05'),
(32, 'manage users', 'admin', '2020-11-03 04:20:05', '2020-11-03 04:20:05'),
(33, 'manage customers', 'admin', '2020-11-03 04:20:05', '2020-11-03 04:20:05'),
(34, 'manage reports', 'admin', '2020-11-03 04:20:05', '2020-11-03 04:20:05'),
(35, 'manage basic set up', 'admin', '2020-11-03 04:20:05', '2020-11-03 04:20:05'),
(36, 'manage admin', 'admin', '2020-11-03 04:59:01', '2020-11-03 04:59:01'),
(37, 'manage carieer', 'admin', '2020-11-03 04:59:01', '2020-11-03 04:59:01'),
(38, 'manage wholessale', 'admin', '2020-11-21 13:04:01', '2020-11-21 13:04:01'),
(39, 'Return  Order', 'admin', NULL, NULL),
(40, 'Shipment Order', 'admin', NULL, NULL),
(41, 'Delivered Order', 'admin', NULL, NULL),
(42, 'manage fund transfer', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(43, 'manage company', 'admin', NULL, NULL),
(44, 'Packaging Order', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `print_houses`
--

CREATE TABLE `print_houses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `print_house_payments`
--

CREATE TABLE `print_house_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `print_house_id` int NOT NULL,
  `amount` int NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `paid_by` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `merchant_id` int DEFAULT NULL,
  `category_id` int NOT NULL,
  `sub_category_id` int DEFAULT NULL,
  `sub_sub_category_id` int DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  `product_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_manual_stock` int DEFAULT '0',
  `stock` int NOT NULL DEFAULT '0',
  `sale_price` int NOT NULL,
  `discount` int DEFAULT NULL,
  `price` int NOT NULL,
  `reselling_price` int NOT NULL DEFAULT '0',
  `show_reseller_panel` int NOT NULL DEFAULT '1',
  `status` int NOT NULL DEFAULT '1',
  `product_position` int NOT NULL DEFAULT '0',
  `product_placement` int NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size_chart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `select_home_page` int NOT NULL DEFAULT '1',
  `show_homepage` int NOT NULL DEFAULT '1',
  `expired_date` date DEFAULT NULL,
  `single_checkout` int NOT NULL DEFAULT '1',
  `is_combo` int NOT NULL DEFAULT '0',
  `merchant_commission` int DEFAULT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `video_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_free_delivery` tinyint NOT NULL DEFAULT '0',
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `merchant_id`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `product_code`, `thumbnail_img`, `slug`, `is_manual_stock`, `stock`, `sale_price`, `discount`, `price`, `reselling_price`, `show_reseller_panel`, `status`, `product_position`, `product_placement`, `details`, `size_chart`, `select_home_page`, `show_homepage`, `expired_date`, `single_checkout`, `is_combo`, `merchant_commission`, `short_description`, `video_url`, `is_free_delivery`, `meta_title`, `meta_description`, `meta_key`, `meta_content`, `created_at`, `updated_at`) VALUES
(1, 'Shirts', NULL, 1, 1, NULL, NULL, '1000', 'images/product_thumbnail_img/thumbnail_1708342472_8779.jpg', 'shirts-1000', 1, 0, 550, 200, 750, 0, 1, 1, 0, 0, '<p>test shirt upload</p>', NULL, 1, 1, NULL, 1, 0, NULL, NULL, NULL, 0, 'test meta title', 'test meta description', 'test meta keywords', NULL, '2024-02-19 11:34:31', '2024-02-19 11:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `attribute_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_barcodes`
--

CREATE TABLE `product_barcodes` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `barcode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_barcodes`
--

INSERT INTO `product_barcodes` (`id`, `product_id`, `barcode`, `barcode_number`, `created_at`, `updated_at`) VALUES
(1, 1, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:50px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:58px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:70px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:78px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0\">&nbsp;</div>\r\n</div>\r\n', '1000', '2024-02-19 11:34:32', '2024-02-19 11:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `product_for_prints`
--

CREATE TABLE `product_for_prints` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` int NOT NULL,
  `date` date NOT NULL,
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `cost_per_qty` int NOT NULL,
  `total_cost` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `prefix_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'images/products/product_1708342472_4990.jpg', NULL, '2024-02-19 11:34:32', '2024-02-19 11:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating_stars` int NOT NULL DEFAULT '5',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_stock_transfers`
--

CREATE TABLE `product_stock_transfers` (
  `id` bigint UNSIGNED NOT NULL,
  `from_product_id` int NOT NULL,
  `to_product_id` int NOT NULL,
  `qauntity` int NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint UNSIGNED NOT NULL,
  `price` int DEFAULT NULL,
  `product_id` int NOT NULL,
  `attribute_id` int DEFAULT NULL,
  `variant_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `price`, `product_id`, `attribute_id`, `variant_id`, `created_at`, `updated_at`) VALUES
(1, 550, 1, 1, 1, '2024-02-19 11:34:32', '2024-02-19 11:34:32'),
(2, 550, 1, 1, 2, '2024-02-19 11:34:32', '2024-02-19 11:34:32'),
(3, 550, 1, 2, 7, '2024-02-19 11:34:32', '2024-02-19 11:34:32'),
(4, 550, 1, 2, 8, '2024-02-19 11:34:32', '2024-02-19 11:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `prop_up_banners`
--

CREATE TABLE `prop_up_banners` (
  `id` bigint UNSIGNED NOT NULL,
  `url` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_no` int NOT NULL,
  `supplier_id` int NOT NULL,
  `supplier_invoice_no` int DEFAULT NULL,
  `total` int NOT NULL,
  `paid` int NOT NULL DEFAULT '0',
  `purchase_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `file` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` bigint UNSIGNED NOT NULL,
  `purchase_id` int NOT NULL,
  `product_id` int NOT NULL,
  `price` int NOT NULL,
  `stock` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receieve_printed_products`
--

CREATE TABLE `receieve_printed_products` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` int NOT NULL,
  `date` date NOT NULL,
  `invoice_no` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resellers`
--

CREATE TABLE `resellers` (
  `id` bigint NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `company_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `page_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `username` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `refer_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `phone` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bkash_no` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `commission` int NOT NULL DEFAULT '0' COMMENT 'example 0 % commission',
  `order_return_cost` double NOT NULL DEFAULT '50' COMMENT ' example 50 % of return cost',
  `status` int NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reseller_cashbooks`
--

CREATE TABLE `reseller_cashbooks` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reseller_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint UNSIGNED DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `is_discount` int NOT NULL DEFAULT '0' COMMENT '1=Discount Payment,0=Regular Payment',
  `reference` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Reference means trxId sometimes Cheque No',
  `is_income` int NOT NULL DEFAULT '1' COMMENT '1=Income,0=Expense',
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_date` datetime DEFAULT NULL,
  `note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL COMMENT 'Record created person id is created_by which is primary id of users table',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reseller_order_details`
--

CREATE TABLE `reseller_order_details` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int NOT NULL,
  `reseller_id` int NOT NULL,
  `total_percent` double(8,2) NOT NULL,
  `total_amount` double(8,2) NOT NULL,
  `paid` int DEFAULT NULL,
  `paid_date` date DEFAULT NULL,
  `paid_id` int DEFAULT NULL,
  `advance` double(8,2) NOT NULL DEFAULT '0.00',
  `order_total` double(8,2) NOT NULL,
  `shipping_cost` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reseller_payments`
--

CREATE TABLE `reseller_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `reseller_id` int NOT NULL,
  `paid_amount` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reseller_payment_transactions`
--

CREATE TABLE `reseller_payment_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `reseller_id` bigint NOT NULL,
  `payment_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bkash number or bank account number',
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL,
  `status` int NOT NULL DEFAULT '0' COMMENT 'requested for payment',
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reseller_site_infos`
--

CREATE TABLE `reseller_site_infos` (
  `id` int NOT NULL,
  `logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `video_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `facebook_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `google_map_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `copyright` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reselling_rules`
--

CREATE TABLE `reselling_rules` (
  `id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reselling_services`
--

CREATE TABLE `reselling_services` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reselling_sliders`
--

CREATE TABLE `reselling_sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_caption` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL,
  `position` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super admin', 'admin', '2020-11-07 16:15:48', '2020-11-07 16:15:48'),
(2, 'Admin', 'admin', '2020-11-07 16:20:56', '2020-11-07 16:20:56'),
(3, 'Product and other\'s manager', 'admin', '2020-11-07 16:21:23', '2020-11-07 16:21:23'),
(4, 'Account Manager', 'admin', '2020-11-07 16:21:36', '2020-11-07 16:21:36'),
(5, 'Wholesale Manager', 'admin', '2020-11-21 12:53:25', '2020-11-21 12:53:25'),
(6, 'Reseller Manager', 'admin', '2020-11-29 15:54:58', '2020-11-29 15:54:58'),
(7, 'Only Wholesale Management', 'admin', '2020-12-13 09:21:07', '2020-12-13 09:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(43, 1),
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
(13, 2),
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
(25, 2),
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
(12, 3),
(13, 3),
(27, 3),
(35, 3),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(16, 4),
(17, 4),
(20, 4),
(25, 4),
(26, 4),
(31, 4),
(37, 4),
(38, 4),
(42, 4),
(8, 5),
(9, 5),
(38, 5),
(29, 6),
(30, 6),
(38, 7);

-- --------------------------------------------------------

--
-- Table structure for table `salary_per_months`
--

CREATE TABLE `salary_per_months` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` double(8,2) NOT NULL,
  `employee_id` int NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `month` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint UNSIGNED NOT NULL,
  `sale_type` int NOT NULL,
  `company_id` int DEFAULT NULL COMMENT 'form_company_table',
  `supplier_id` int DEFAULT NULL,
  `paid_by` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mobile_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `invoice_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `total` double(8,2) NOT NULL,
  `paid` double(8,2) NOT NULL,
  `discount` int NOT NULL DEFAULT '0',
  `create_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` bigint UNSIGNED NOT NULL,
  `sale_id` int NOT NULL COMMENT 'from_sales',
  `product_id` int NOT NULL COMMENT 'from_produts',
  `variant_id` int DEFAULT NULL,
  `price` int NOT NULL,
  `qty` int NOT NULL,
  `total` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seasonal_products`
--

CREATE TABLE `seasonal_products` (
  `id` bigint UNSIGNED NOT NULL,
  `product_code_one` int NOT NULL,
  `product_code_two` int NOT NULL,
  `background_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quote` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_caption` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL,
  `position` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `url`, `slider_caption`, `status`, `position`, `created_at`, `updated_at`) VALUES
(1, 'images/slider/mgyIEzIJG8mcTFKwLL6Sny2zEXGci8aLLvumF8wr.jpg', '#', NULL, 1, 1, '2024-02-17 10:31:48', '2024-02-17 10:31:48'),
(2, 'images/slider/0FUmNOyIKaVCHuzuxG7R7hvBpVqmUBVTI5iRnh7t.png', 'https://mohasagorit.solutions/', NULL, 1, 1, '2024-02-19 10:23:16', '2024-02-19 10:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int NOT NULL,
  `status` int NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `discount` int DEFAULT NULL,
  `discount_type` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_homepage` int NOT NULL DEFAULT '1',
  `position` int NOT NULL DEFAULT '9999',
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `slug`, `category_id`, `status`, `image`, `discount`, `discount_type`, `show_homepage`, `position`, `meta_title`, `meta_description`, `meta_key`, `meta_content`, `created_at`, `updated_at`) VALUES
(1, 'Shirts', 'shirts', 1, 1, NULL, NULL, NULL, 1, 9999, NULL, NULL, NULL, NULL, '2024-02-17 10:44:37', '2024-02-17 10:44:37'),
(2, 'Pants', 'pants', 1, 1, NULL, NULL, NULL, 1, 9999, NULL, NULL, NULL, NULL, '2024-02-17 10:44:51', '2024-02-17 10:44:51'),
(3, 'Trousers', 'trousers', 1, 1, NULL, NULL, NULL, 1, 9999, NULL, NULL, NULL, NULL, '2024-02-17 10:45:11', '2024-02-17 10:45:11'),
(4, 'Panjabis', 'panjabis', 1, 1, NULL, NULL, NULL, 1, 9999, NULL, NULL, NULL, NULL, '2024-02-17 10:45:48', '2024-02-17 10:45:48'),
(5, 'Hoodies', 'hoodies', 4, 1, 'images/subCategory/Tez4IEMiWuPz5bEQZxhGxi90dEm3YhjnqzSxp4n5.png', NULL, NULL, 1, 9999, NULL, NULL, NULL, NULL, '2024-02-17 10:46:56', '2024-02-17 10:46:56'),
(6, '3 piece', '3-piece', 2, 1, NULL, NULL, NULL, 1, 9999, NULL, NULL, NULL, NULL, '2024-02-17 10:47:37', '2024-02-17 10:47:37');

-- --------------------------------------------------------

--
-- Table structure for table `sub_cities`
--

CREATE TABLE `sub_cities` (
  `id` bigint UNSIGNED NOT NULL,
  `city_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_cities`
--

INSERT INTO `sub_cities` (`id`, `city_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(3, 63, 'Derai', 1, '2021-01-12 17:16:55', '2021-01-12 17:16:55'),
(4, 64, 'Balaganj', 1, '2021-01-12 17:38:21', '2021-01-12 17:38:21'),
(5, 64, 'Beanibazar', 1, '2021-01-12 17:38:43', '2021-01-12 17:38:43'),
(6, 64, 'Biswanath', 1, '2021-01-12 17:40:09', '2021-01-12 17:40:09'),
(7, 64, 'Companiganj', 1, '2021-01-12 17:41:43', '2021-01-12 17:41:43'),
(8, 64, 'Fenchuganj', 1, '2021-01-12 17:42:00', '2021-01-12 17:42:00'),
(9, 64, 'Golapganj', 1, '2021-01-12 17:42:16', '2021-01-12 17:42:16'),
(10, 64, 'Dakshin Surma Upazila', 1, '2021-01-12 17:44:27', '2021-01-12 17:44:27'),
(11, 64, 'Gowainghat Upazila‎', 1, '2021-01-12 17:45:02', '2021-01-12 17:45:02'),
(12, 64, 'Jaintiapur Upazila‎', 1, '2021-01-12 17:45:19', '2021-01-12 17:45:19'),
(13, 64, 'Kanaighat Upazila‎', 1, '2021-01-12 17:45:36', '2021-01-12 17:45:36'),
(14, 64, 'Osmani Nagar Upazila', 1, '2021-01-12 17:45:50', '2021-01-12 17:45:50'),
(15, 64, 'Zakiganj Upazila', 1, '2021-01-12 17:46:01', '2021-01-12 17:46:01'),
(16, 66, 'Savar', 1, '2021-01-12 17:47:47', '2021-01-13 02:06:38'),
(17, 66, 'Amin bazar', 1, '2021-01-12 17:48:00', '2021-01-13 02:15:42'),
(18, 66, 'Birulia', 1, '2021-01-12 17:48:10', '2021-01-13 02:14:46'),
(19, 66, 'Ashulia', 1, '2021-01-12 17:48:35', '2021-01-13 02:14:30'),
(20, 66, 'Shimulia', 1, '2021-01-12 17:48:45', '2021-01-13 02:14:57'),
(21, 66, 'Kaundia', 1, '2021-01-12 17:48:54', '2021-01-13 02:15:28'),
(22, 64, 'Sylhet Sadar', 1, '2021-01-12 17:49:57', '2021-01-12 17:49:57'),
(23, 63, 'Sunamganj sadar', 1, '2021-01-12 17:50:15', '2021-01-12 17:50:15'),
(24, 63, 'Chhatak Upazila‎', 1, '2021-01-12 17:53:07', '2021-01-12 17:53:07'),
(25, 63, 'Derai Upazila‎', 1, '2021-01-12 17:53:26', '2021-01-12 17:53:26'),
(26, 63, 'Dharampasha Upazila‎', 1, '2021-01-12 17:53:51', '2021-01-12 17:53:51'),
(27, 63, 'Jagannathpur Upazila‎', 1, '2021-01-12 17:55:06', '2021-01-12 17:55:06'),
(28, 62, 'Barlekha Upazila‎', 1, '2021-01-12 17:55:52', '2021-01-12 17:55:52'),
(29, 62, 'Moulvibazar sadar', 1, '2021-01-12 17:56:24', '2021-01-12 17:56:24'),
(30, 62, 'Juri Upazila‎', 1, '2021-01-12 17:56:38', '2021-01-12 17:56:38'),
(31, 62, 'Kamalganj Upazila', 1, '2021-01-12 17:56:51', '2021-01-12 17:56:51'),
(32, 62, 'Kulaura Upazila', 1, '2021-01-12 17:57:02', '2021-01-12 17:57:02'),
(33, 62, 'Rajnagar Upazila‎', 1, '2021-01-12 17:57:19', '2021-01-12 17:57:19'),
(34, 62, 'Srimangal Upazila‎', 1, '2021-01-12 17:57:30', '2021-01-12 17:57:30'),
(35, 61, 'Habiganj sadar', 1, '2021-01-12 17:58:18', '2021-01-12 17:58:18'),
(36, 61, 'Ajmiriganj Upazila', 1, '2021-01-12 17:58:28', '2021-01-12 17:58:28'),
(37, 61, 'Bahubal Upazila', 1, '2021-01-12 17:58:38', '2021-01-12 17:58:38'),
(38, 61, 'Baniachong Upazila', 1, '2021-01-12 17:58:50', '2021-01-12 17:58:50'),
(39, 61, 'Chunarughat Upazila', 1, '2021-01-12 17:59:02', '2021-01-12 17:59:02'),
(40, 61, 'Habiganj Sadar Upazila', 1, '2021-01-12 17:59:13', '2021-01-12 17:59:13'),
(41, 61, 'Lakhai Upazila', 1, '2021-01-12 17:59:23', '2021-01-12 17:59:23'),
(42, 61, 'Madhabpur Upazila', 1, '2021-01-12 17:59:34', '2021-01-12 17:59:34'),
(43, 61, 'Nabiganj Upazila', 1, '2021-01-12 17:59:53', '2021-01-12 17:59:53'),
(44, 60, 'Thakurgaon sadar', 1, '2021-01-12 18:00:49', '2021-01-12 18:00:49'),
(45, 60, 'Baliadangi Upazila', 1, '2021-01-12 18:01:00', '2021-01-12 18:01:00'),
(46, 60, 'Haripur Upazila', 1, '2021-01-12 18:01:12', '2021-01-12 18:01:12'),
(47, 60, 'Pirganj Upazila', 1, '2021-01-12 18:01:33', '2021-01-12 18:01:33'),
(48, 60, 'Ranisankail Upazila', 1, '2021-01-12 18:01:43', '2021-01-12 18:01:43'),
(49, 59, 'Rangpur sadar', 1, '2021-01-12 18:02:30', '2021-01-12 18:02:38'),
(50, 59, 'Badarganj Upazila', 1, '2021-01-12 18:02:53', '2021-01-12 18:02:53'),
(51, 59, 'Gangachara Upazila', 1, '2021-01-12 18:03:04', '2021-01-12 18:03:04'),
(52, 59, 'Kaunia Upazila', 1, '2021-01-12 18:03:16', '2021-01-12 18:03:16'),
(53, 59, 'Mithapukur Upazila', 1, '2021-01-12 18:03:28', '2021-01-12 18:03:28'),
(54, 59, 'Pirgacha Upazila', 1, '2021-01-12 18:03:44', '2021-01-12 18:03:44'),
(55, 59, 'Taraganj Upazila', 1, '2021-01-12 18:04:15', '2021-01-12 18:04:15'),
(56, 58, 'Panchagarh Sadar', 1, '2021-01-12 18:39:41', '2021-01-12 18:39:41'),
(57, 58, 'Atwari Upazila', 1, '2021-01-12 18:39:53', '2021-01-12 18:39:53'),
(58, 58, 'Boda Upazila', 1, '2021-01-12 18:40:04', '2021-01-12 18:40:04'),
(59, 58, 'Debiganj Upazila', 1, '2021-01-12 18:40:20', '2021-01-12 18:40:20'),
(60, 58, 'Tetulia Upazila', 1, '2021-01-12 18:40:32', '2021-01-12 18:40:32'),
(61, 57, 'Nilphamari Sadar Upazila', 1, '2021-01-12 18:40:59', '2021-01-12 18:40:59'),
(62, 57, 'Dimla Upazila', 1, '2021-01-12 18:41:27', '2021-01-12 18:41:27'),
(63, 57, 'Domar Upazila', 1, '2021-01-12 18:45:33', '2021-01-12 18:45:33'),
(64, 57, 'Jaldhaka Upazila', 1, '2021-01-12 18:45:51', '2021-01-12 18:45:51'),
(65, 57, 'Kishoreganj Upazila', 1, '2021-01-12 18:46:00', '2021-01-12 18:46:00'),
(66, 57, 'Saidpur Upazila', 1, '2021-01-12 18:46:12', '2021-01-12 18:46:12'),
(67, 1, 'Adabar Thana', 1, '2021-01-12 18:47:27', '2021-01-12 18:47:27'),
(68, 1, 'Azampur', 1, '2021-01-12 18:52:01', '2021-01-12 18:52:01'),
(69, 1, 'Badda Thana', 1, '2021-01-12 18:52:14', '2021-01-12 18:52:14'),
(70, 1, 'Bangsal', 1, '2021-01-12 18:52:33', '2021-01-12 18:52:33'),
(71, 1, 'Bimanbandar', 1, '2021-01-12 18:52:48', '2021-01-12 18:52:48'),
(72, 1, 'Cantonment', 1, '2021-01-12 18:53:01', '2021-01-12 18:53:01'),
(73, 1, 'Chowkbazar', 1, '2021-01-12 18:53:26', '2021-01-12 18:53:26'),
(74, 1, 'Darus Salam', 1, '2021-01-12 18:53:40', '2021-01-12 18:53:40'),
(75, 1, 'Lalmatia', 1, '2021-01-12 18:53:53', '2021-01-13 01:50:01'),
(76, 1, 'Dhanmondi', 1, '2021-01-12 18:54:07', '2021-01-12 18:54:07'),
(77, 1, 'Gendaria', 1, '2021-01-12 18:54:24', '2021-01-12 18:54:24'),
(78, 1, 'Gulshan-1', 1, '2021-01-12 18:55:25', '2021-01-12 18:55:25'),
(79, 1, 'Gulshan-2', 1, '2021-01-12 18:55:34', '2021-01-12 18:55:34'),
(80, 1, 'Hazaribagh', 1, '2021-01-12 18:56:05', '2021-01-12 18:56:05'),
(81, 1, 'Kadamtali', 1, '2021-01-12 18:57:29', '2021-01-12 18:57:29'),
(82, 1, 'Kafrul', 1, '2021-01-12 18:57:44', '2021-01-12 18:57:44'),
(83, 1, 'Kalabagan', 1, '2021-01-12 18:57:59', '2021-01-12 18:57:59'),
(84, 1, 'Khilgaon', 1, '2021-01-12 18:58:18', '2021-01-12 18:58:18'),
(85, 1, 'Khilkhet', 1, '2021-01-12 18:58:52', '2021-01-12 18:59:13'),
(86, 1, 'Kotwali', 1, '2021-01-12 18:59:32', '2021-01-12 18:59:32'),
(87, 1, 'Lalbagh', 1, '2021-01-12 18:59:50', '2021-01-12 18:59:50'),
(88, 1, 'Mirpur-1', 1, '2021-01-12 19:00:07', '2021-01-12 19:00:07'),
(89, 1, 'Mirpur-2', 1, '2021-01-12 19:00:18', '2021-01-12 19:00:18'),
(90, 1, 'Mirpur-6', 1, '2021-01-12 19:00:28', '2021-01-12 19:00:28'),
(91, 1, 'Mirpur-7', 1, '2021-01-12 19:00:41', '2021-01-12 19:00:41'),
(92, 1, 'Mirpur-10', 1, '2021-01-12 19:00:51', '2021-01-12 19:00:51'),
(93, 1, 'Mirpur-11', 1, '2021-01-12 19:01:02', '2021-01-12 19:01:02'),
(94, 1, 'Mirpur-12', 1, '2021-01-12 19:01:36', '2021-01-12 19:01:36'),
(95, 1, 'Mirpur-13', 1, '2021-01-12 19:01:56', '2021-01-12 19:01:56'),
(96, 1, 'Mirpur-14', 1, '2021-01-12 19:02:06', '2021-01-12 19:02:06'),
(97, 1, 'Mohammadpur', 1, '2021-01-12 19:02:45', '2021-01-12 19:02:45'),
(98, 1, 'Motijheel', 1, '2021-01-12 19:02:54', '2021-01-12 19:02:54'),
(99, 1, 'New Market', 1, '2021-01-12 19:03:06', '2021-01-12 19:03:06'),
(100, 1, 'Pallabi', 1, '2021-01-12 19:03:22', '2021-01-12 19:03:22'),
(101, 1, 'Paltan', 1, '2021-01-12 19:03:35', '2021-01-12 19:03:35'),
(102, 1, 'Panthapath', 1, '2021-01-12 19:03:46', '2021-01-12 19:03:46'),
(103, 1, 'Ramna', 1, '2021-01-12 19:04:08', '2021-01-12 19:04:08'),
(104, 1, 'Rampura', 1, '2021-01-12 19:04:20', '2021-01-12 19:04:20'),
(105, 1, 'Sabujbagh', 1, '2021-01-12 19:04:52', '2021-01-12 19:04:52'),
(106, 1, 'Shah Ali thana Mirpur', 1, '2021-01-12 19:05:10', '2021-01-12 19:05:10'),
(107, 1, 'Shahbagh', 1, '2021-01-12 19:05:20', '2021-01-12 19:05:20'),
(108, 1, 'Sher-e-Bangla Nagar', 1, '2021-01-12 19:07:00', '2021-01-12 19:07:00'),
(109, 1, 'Shyampur', 1, '2021-01-12 19:07:12', '2021-01-12 19:07:12'),
(110, 1, 'Nowabpur', 1, '2021-01-12 19:07:24', '2021-01-13 01:59:45'),
(111, 1, 'Tejgaon Industrial Area', 1, '2021-01-12 19:07:37', '2021-01-12 19:07:37'),
(112, 1, 'Tejgaon', 1, '2021-01-12 19:08:30', '2021-01-12 19:08:30'),
(113, 1, 'Turag Thana', 1, '2021-01-12 19:08:42', '2021-01-12 19:08:42'),
(114, 1, 'Uttar Khan', 1, '2021-01-12 19:08:56', '2021-01-12 19:08:56'),
(115, 1, 'Uttara', 1, '2021-01-12 19:09:18', '2021-01-12 19:09:18'),
(116, 1, 'Vatara Thana', 1, '2021-01-12 19:09:32', '2021-01-12 19:09:32'),
(117, 1, 'Wari', 1, '2021-01-12 19:09:43', '2021-01-12 19:09:43'),
(118, 1, 'Dhaka University', 1, '2021-01-12 19:10:03', '2021-01-12 19:10:03'),
(119, 1, 'Buet', 1, '2021-01-12 19:10:12', '2021-01-12 19:10:12'),
(120, 1, 'Bangladesh Sochibaloy', 1, '2021-01-12 19:10:29', '2021-01-12 19:10:29'),
(121, 1, 'Farmgate', 1, '2021-01-12 19:10:41', '2021-01-12 19:10:41'),
(122, 1, 'Elephant Road', 1, '2021-01-12 19:10:55', '2021-01-12 19:10:55'),
(123, 1, 'Segunbagicha', 1, '2021-01-12 19:11:12', '2021-01-12 19:11:12'),
(124, 1, 'Noya Paltan', 1, '2021-01-12 19:11:22', '2021-01-12 19:11:22'),
(125, 1, 'Purana Paltan', 1, '2021-01-12 19:11:32', '2021-01-12 19:11:32'),
(126, 1, 'Bongabazar', 1, '2021-01-12 19:11:43', '2021-01-12 19:11:43'),
(127, 1, 'Uttara Sector-1', 1, '2021-01-12 19:14:16', '2021-01-12 19:14:16'),
(128, 1, 'Uttara Sector-2', 1, '2021-01-12 19:14:23', '2021-01-12 19:14:23'),
(129, 1, 'Uttara Sector-3', 1, '2021-01-12 19:14:32', '2021-01-12 19:14:32'),
(130, 1, 'Uttara Sector-4', 1, '2021-01-12 19:14:39', '2021-01-12 19:14:39'),
(131, 1, 'Uttara Sector-5', 1, '2021-01-12 19:14:47', '2021-01-12 19:14:47'),
(132, 1, 'Uttara Sector-6', 1, '2021-01-12 19:14:54', '2021-01-12 19:14:54'),
(133, 1, 'Uttara Sector-7', 1, '2021-01-12 19:15:02', '2021-01-12 19:15:02'),
(134, 1, 'Uttara Sector-8', 1, '2021-01-12 19:15:09', '2021-01-12 19:15:09'),
(135, 1, 'Uttara Sector-9', 1, '2021-01-12 19:15:16', '2021-01-12 19:15:16'),
(136, 1, 'Uttara Sector-10', 1, '2021-01-12 19:15:23', '2021-01-12 19:15:23'),
(137, 1, 'Uttara Sector-11', 1, '2021-01-12 19:15:29', '2021-01-12 19:15:29'),
(138, 1, 'Uttara Sector-12', 1, '2021-01-12 19:15:34', '2021-01-12 19:15:34'),
(139, 1, 'Ashkona', 1, '2021-01-12 19:16:13', '2021-01-12 19:16:13'),
(140, 1, 'Jatio Songsod', 1, '2021-01-12 19:17:10', '2021-01-12 19:17:10'),
(141, 1, 'Baridhara', 1, '2021-01-12 19:17:54', '2021-01-12 19:17:54'),
(142, 1, 'Bashundhora R/A', 1, '2021-01-12 19:18:16', '2021-01-12 19:18:16'),
(143, 16, 'Kamalnagar', 1, '2021-01-12 19:18:22', '2021-01-12 19:18:22'),
(144, 16, 'Lakshmipur Sadar', 1, '2021-01-12 19:18:48', '2021-01-12 19:18:48'),
(145, 1, 'Rajarbag', 1, '2021-01-12 19:18:51', '2021-01-12 19:18:51'),
(146, 1, 'Shantinagar', 1, '2021-01-12 19:18:59', '2021-01-12 19:18:59'),
(147, 16, 'Raipur', 1, '2021-01-12 19:19:17', '2021-01-12 19:19:17'),
(148, 1, 'Shahjahanpur', 1, '2021-01-12 19:19:18', '2021-01-12 19:19:18'),
(149, 1, 'Jatrabari', 1, '2021-01-12 19:19:29', '2021-01-12 19:19:29'),
(150, 16, 'Ramgati', 1, '2021-01-12 19:19:32', '2021-01-12 19:19:32'),
(151, 1, 'Sayedabad', 1, '2021-01-12 19:19:39', '2021-01-12 19:19:39'),
(152, 16, 'Ramganj', 1, '2021-01-12 19:19:45', '2021-01-12 19:19:45'),
(153, 1, 'Basabo', 1, '2021-01-12 19:20:00', '2021-01-12 19:20:00'),
(154, 1, 'Malibagh', 1, '2021-01-12 19:20:19', '2021-01-12 19:20:19'),
(155, 1, 'Shantibagh', 1, '2021-01-12 19:20:41', '2021-01-12 19:20:41'),
(156, 1, 'Moghbazar', 1, '2021-01-12 19:20:52', '2021-01-12 19:20:52'),
(157, 1, 'Kawran bazar', 1, '2021-01-12 19:21:02', '2021-01-12 19:21:02'),
(158, 1, 'Zighatola', 1, '2021-01-12 19:21:18', '2021-01-12 19:21:18'),
(159, 12, 'Comilla Sadar', 1, '2021-01-12 19:21:20', '2021-01-12 19:21:20'),
(160, 1, 'Gulisthan', 1, '2021-01-12 19:21:32', '2021-01-12 19:21:32'),
(161, 1, 'Islampur', 1, '2021-01-12 19:21:40', '2021-01-12 19:21:40'),
(162, 1, 'Bonosri', 1, '2021-01-12 19:22:02', '2021-01-12 19:22:02'),
(163, 12, 'Debidwar', 1, '2021-01-12 19:22:10', '2021-01-12 19:22:10'),
(164, 1, 'Aftabnagar', 1, '2021-01-12 19:22:24', '2021-01-12 19:22:24'),
(165, 1, 'Mohakhali', 1, '2021-01-12 19:23:10', '2021-01-12 19:23:10'),
(166, 12, 'Brahmanpara', 1, '2021-01-12 19:23:13', '2021-01-12 19:23:13'),
(167, 1, 'Arambag', 1, '2021-01-12 19:23:21', '2021-01-12 19:23:21'),
(168, 12, 'Barura', 1, '2021-01-12 19:23:35', '2021-01-12 19:23:35'),
(169, 12, 'Chandina', 1, '2021-01-12 19:23:52', '2021-01-12 19:23:52'),
(170, 1, 'Nikunja-1', 1, '2021-01-12 19:23:55', '2021-01-12 19:23:55'),
(171, 1, 'Nikunja-2', 1, '2021-01-12 19:24:02', '2021-01-12 19:24:02'),
(172, 1, 'namapara', 1, '2021-01-12 19:24:13', '2021-01-12 19:24:13'),
(173, 1, 'Easter Housing-Mirpur', 1, '2021-01-12 19:24:43', '2021-01-12 19:24:43'),
(174, 1, 'Duaripara', 1, '2021-01-12 19:24:53', '2021-01-12 19:24:53'),
(175, 1, 'Mirpur Cantonment', 1, '2021-01-12 19:25:12', '2021-01-12 19:25:12'),
(176, 12, 'Chauddagram', 1, '2021-01-12 19:25:35', '2021-01-12 19:25:35'),
(177, 12, 'Daudkandi', 1, '2021-01-12 19:25:47', '2021-01-12 19:25:47'),
(178, 1, 'Rajabazar', 1, '2021-01-12 19:25:52', '2021-01-12 19:25:52'),
(179, 12, 'Homna', 1, '2021-01-12 19:25:58', '2021-01-12 19:25:58'),
(180, 12, 'Laksam', 1, '2021-01-12 19:26:11', '2021-01-12 19:26:11'),
(181, 1, 'Sukrabad', 1, '2021-01-12 19:26:12', '2021-01-12 19:26:12'),
(182, 12, 'Muradnagar', 1, '2021-01-12 19:26:26', '2021-01-12 19:26:26'),
(183, 1, 'Katabon', 1, '2021-01-12 19:26:30', '2021-01-12 19:26:30'),
(184, 1, 'Hatirpool', 1, '2021-01-12 19:26:39', '2021-01-12 19:26:39'),
(185, 12, 'Nangalkot', 1, '2021-01-12 19:26:53', '2021-01-12 19:26:53'),
(186, 12, 'Adarsha Sadar', 1, '2021-01-12 19:27:44', '2021-01-12 19:27:44'),
(187, 12, 'Meghna', 1, '2021-01-12 19:27:57', '2021-01-12 19:27:57'),
(188, 12, 'Monohargonj', 1, '2021-01-12 19:28:15', '2021-01-12 19:28:15'),
(189, 12, 'Sadar south upazila', 1, '2021-01-12 19:28:36', '2021-01-12 19:28:36'),
(190, 12, 'Titas', 1, '2021-01-12 19:28:48', '2021-01-12 19:28:48'),
(191, 12, 'Burichang', 1, '2021-01-12 19:29:06', '2021-01-12 19:29:06'),
(192, 12, 'Lalmai', 1, '2021-01-12 19:29:18', '2021-01-12 19:29:18'),
(193, 1, 'Mogbazar', 1, '2021-01-12 19:30:10', '2021-01-12 19:30:10'),
(194, 14, 'Feni Sadar', 1, '2021-01-12 19:30:16', '2021-01-12 19:30:16'),
(195, 1, 'Chowdhuripara', 1, '2021-01-12 19:30:20', '2021-01-12 19:30:20'),
(196, 14, 'Sonagazi', 1, '2021-01-12 19:30:29', '2021-01-12 19:30:29'),
(197, 1, 'Tejkunipara', 1, '2021-01-12 19:30:38', '2021-01-12 19:30:38'),
(198, 14, 'Fulgazi', 1, '2021-01-12 19:30:46', '2021-01-12 19:30:46'),
(199, 1, 'Mohakhali DOHS', 1, '2021-01-12 19:31:11', '2021-01-12 19:31:11'),
(200, 14, 'Parshuram', 1, '2021-01-12 19:31:15', '2021-01-12 19:31:15'),
(201, 1, 'Mirpur DOHS', 1, '2021-01-12 19:31:27', '2021-01-12 19:31:27'),
(202, 1, 'Baridhara DOHS', 1, '2021-01-12 19:31:36', '2021-01-12 19:31:36'),
(203, 14, 'Daganbhuiyan', 1, '2021-01-12 19:31:59', '2021-01-12 19:31:59'),
(204, 14, 'Feni Pourashava', 1, '2021-01-12 19:32:36', '2021-01-12 19:32:36'),
(205, 1, 'Maniknagor', 1, '2021-01-12 19:32:36', '2021-01-12 19:32:36'),
(206, 9, 'Brahmanbaria Sadar', 1, '2021-01-12 19:34:02', '2021-01-12 19:34:10'),
(207, 9, 'Kasbo', 1, '2021-01-12 19:35:06', '2021-01-12 19:35:06'),
(208, 9, 'Nasirnagar', 1, '2021-01-12 19:35:16', '2021-01-12 19:35:16'),
(209, 9, 'Sarail', 1, '2021-01-12 19:35:35', '2021-01-12 19:35:35'),
(210, 9, 'Ashuganj', 1, '2021-01-12 19:35:46', '2021-01-12 19:35:46'),
(211, 9, 'Akhaura', 1, '2021-01-12 19:36:06', '2021-01-12 19:36:06'),
(212, 9, 'Nabinagar', 1, '2021-01-12 19:36:21', '2021-01-12 19:36:21'),
(213, 9, 'Bancharampur', 1, '2021-01-12 19:36:55', '2021-01-12 19:36:55'),
(214, 9, 'Bijoynagar', 1, '2021-01-12 19:37:12', '2021-01-12 19:37:12'),
(215, 1, 'Golapbag', 1, '2021-01-12 19:37:34', '2021-01-12 19:37:34'),
(216, 1, 'Mugda', 1, '2021-01-12 19:37:55', '2021-01-12 19:37:55'),
(217, 1, 'Tikatuli', 1, '2021-01-12 19:38:08', '2021-01-12 19:38:08'),
(218, 1, 'nakhalpara', 1, '2021-01-12 19:39:16', '2021-01-12 19:39:16'),
(219, 1, 'Niketon', 1, '2021-01-12 19:39:57', '2021-01-12 19:39:57'),
(220, 1, 'Ibrahirpur', 1, '2021-01-12 19:40:19', '2021-01-12 19:40:19'),
(221, 1, 'Shewrapara', 1, '2021-01-12 19:40:37', '2021-01-12 19:40:37'),
(222, 1, 'Kazipara', 1, '2021-01-12 19:40:49', '2021-01-12 19:40:49'),
(223, 1, 'Monipur', 1, '2021-01-12 19:41:07', '2021-01-12 19:41:07'),
(224, 1, 'Ahmed Nagar', 1, '2021-01-12 19:41:36', '2021-01-12 19:41:36'),
(225, 1, 'Manikdi', 1, '2021-01-12 19:42:02', '2021-01-12 19:42:02'),
(226, 1, 'Balughat', 1, '2021-01-12 19:42:15', '2021-01-12 19:42:15'),
(227, 1, 'Kurmitola', 1, '2021-01-12 19:42:33', '2021-01-12 19:42:33'),
(228, 1, 'Azompur-South', 1, '2021-01-12 19:42:57', '2021-01-12 19:42:57'),
(229, 1, 'Azompur-North', 1, '2021-01-12 19:43:06', '2021-01-12 19:43:16'),
(230, 1, 'Mollapara', 1, '2021-01-12 19:43:29', '2021-01-12 19:43:29'),
(231, 1, 'Moddhopara', 1, '2021-01-12 19:43:39', '2021-01-12 19:43:39'),
(232, 1, 'Doyaganj', 1, '2021-01-12 19:44:37', '2021-01-12 19:44:37'),
(233, 1, 'Dhaka Cantonment', 1, '2021-01-12 19:44:46', '2021-01-13 02:01:17'),
(234, 1, 'Narinda', 1, '2021-01-12 19:44:54', '2021-01-12 19:44:54'),
(235, 1, 'TT para', 1, '2021-01-12 19:45:09', '2021-01-12 19:45:09'),
(236, 17, 'Noakhali Sadar', 1, '2021-01-12 19:45:49', '2021-01-12 19:45:49'),
(237, 1, 'Komolapur', 1, '2021-01-12 19:45:57', '2021-01-12 19:45:57'),
(238, 1, 'Baily Road', 1, '2021-01-12 19:46:20', '2021-01-12 19:46:20'),
(239, 2, 'Barguna Sadar', 1, '2021-01-12 19:48:48', '2021-01-12 19:48:48'),
(240, 2, 'Amtali', 1, '2021-01-12 19:49:06', '2021-01-12 19:49:06'),
(241, 2, 'Betagi', 1, '2021-01-12 19:49:24', '2021-01-12 19:49:24'),
(242, 2, 'Bamna', 1, '2021-01-12 19:49:34', '2021-01-12 19:49:34'),
(243, 2, 'Pathorghata', 1, '2021-01-12 19:49:51', '2021-01-12 19:49:51'),
(244, 2, 'Taltali', 1, '2021-01-12 19:50:10', '2021-01-12 19:50:10'),
(245, 3, 'Agailjhara Upazila', 1, '2021-01-12 19:51:42', '2021-01-12 19:51:42'),
(246, 3, 'Barisal Sadar', 1, '2021-01-12 19:51:55', '2021-01-12 19:51:55'),
(247, 3, 'Babuganj Upazila', 1, '2021-01-12 19:52:15', '2021-01-12 19:52:15'),
(248, 3, 'Bakerganj Upazila', 1, '2021-01-12 19:52:27', '2021-01-12 19:52:27'),
(249, 3, 'Banaripara Upazila', 1, '2021-01-12 19:52:39', '2021-01-12 19:52:39'),
(250, 3, 'Gournadi Upazila', 1, '2021-01-12 19:52:52', '2021-01-12 19:52:52'),
(251, 3, 'Hizla Upazila', 1, '2021-01-12 19:53:01', '2021-01-12 19:53:01'),
(252, 3, 'Mehendiganj Upazila', 1, '2021-01-12 19:53:13', '2021-01-12 19:53:13'),
(253, 3, 'Muladi Upazila', 1, '2021-01-12 19:53:31', '2021-01-12 19:53:31'),
(254, 3, 'Wazirpur Upazila', 1, '2021-01-12 19:53:43', '2021-01-12 19:53:43'),
(255, 17, 'Sonaimuri', 1, '2021-01-12 19:54:45', '2021-01-12 19:54:45'),
(256, 4, 'Bhola Sadar', 1, '2021-01-12 19:54:59', '2021-01-12 19:54:59'),
(257, 4, 'Borhanuddin Upazila', 1, '2021-01-12 19:55:10', '2021-01-12 19:55:10'),
(258, 17, 'Chatkhil', 1, '2021-01-12 19:55:17', '2021-01-12 19:55:17'),
(259, 4, 'Char Fasson Upazila', 1, '2021-01-12 19:55:21', '2021-01-12 19:55:21'),
(260, 4, 'Daulatkhan Upazila', 1, '2021-01-12 19:55:32', '2021-01-12 19:55:32'),
(261, 4, 'Lalmohan Upazila', 1, '2021-01-12 19:55:43', '2021-01-12 19:55:43'),
(262, 4, 'Manpura Upazila', 1, '2021-01-12 19:55:55', '2021-01-12 19:55:55'),
(263, 17, 'Senbng', 1, '2021-01-12 19:56:05', '2021-01-12 19:56:05'),
(264, 4, 'Tazumuddin Upazila', 1, '2021-01-12 19:56:06', '2021-01-12 19:56:06'),
(265, 17, 'Kabirhat', 1, '2021-01-12 19:56:45', '2021-01-12 19:56:45'),
(266, 17, 'Subarnachar', 1, '2021-01-12 19:57:36', '2021-01-12 19:57:36'),
(267, 5, 'Jhalokathi Sadar', 1, '2021-01-12 19:57:38', '2021-01-12 19:57:38'),
(268, 5, 'Kathalia', 1, '2021-01-12 19:58:04', '2021-01-12 19:58:04'),
(269, 17, 'Hatia', 1, '2021-01-12 19:58:15', '2021-01-12 19:58:15'),
(270, 5, 'Nalchity', 1, '2021-01-12 19:58:20', '2021-01-12 19:58:20'),
(271, 5, 'Rajapur', 1, '2021-01-12 19:58:36', '2021-01-12 19:58:36'),
(272, 17, 'Begumganj', 1, '2021-01-12 19:58:39', '2021-01-12 19:58:39'),
(273, 6, 'Patuakhali Sadar', 1, '2021-01-12 19:59:26', '2021-01-12 19:59:26'),
(274, 6, 'Bauphal Upazila', 1, '2021-01-12 19:59:38', '2021-01-12 19:59:38'),
(275, 6, 'Dashmina Upazila', 1, '2021-01-12 19:59:51', '2021-01-12 19:59:51'),
(276, 6, 'Dumki Upazila', 1, '2021-01-12 20:00:09', '2021-01-12 20:00:09'),
(277, 6, 'Galachipa Upazila', 1, '2021-01-12 20:00:18', '2021-01-12 20:00:18'),
(278, 6, 'Kalapara Upazila', 1, '2021-01-12 20:00:58', '2021-01-12 20:00:58'),
(279, 6, 'Mirzaganj Upazila', 1, '2021-01-12 20:01:10', '2021-01-12 20:01:10'),
(280, 6, 'Rangabali Upazila', 1, '2021-01-12 20:01:26', '2021-01-12 20:01:26'),
(281, 7, 'Pirojpur Sadar', 1, '2021-01-12 20:02:10', '2021-01-12 20:02:10'),
(282, 7, 'Bhandaria Upazila', 1, '2021-01-12 20:02:22', '2021-01-12 20:02:22'),
(283, 7, 'Indurkani Upazila', 1, '2021-01-12 20:02:36', '2021-01-12 20:02:36'),
(284, 7, 'Kawkhali Upazila', 1, '2021-01-12 20:02:54', '2021-01-12 20:02:54'),
(285, 7, 'Mathbaria Upazila', 1, '2021-01-12 20:03:06', '2021-01-12 20:03:06'),
(286, 7, 'Nazirpur Upazila', 1, '2021-01-12 20:03:19', '2021-01-12 20:03:19'),
(289, 7, 'Nesarabad', 1, '2021-01-12 20:05:49', '2021-01-12 20:05:49'),
(290, 8, 'Ali Kadam Upazila', 1, '2021-01-12 20:07:31', '2021-01-12 20:07:31'),
(291, 8, 'Bandarban Sadar', 1, '2021-01-12 20:07:58', '2021-01-12 20:07:58'),
(292, 10, 'Chandpur Sadar', 1, '2021-01-12 20:09:25', '2021-01-12 20:16:41'),
(293, 8, 'Lama Upazila', 1, '2021-01-12 20:09:41', '2021-01-12 20:09:41'),
(294, 10, 'Kachua', 1, '2021-01-12 20:09:49', '2021-01-12 20:09:49'),
(295, 10, 'Haimchar', 1, '2021-01-12 20:10:12', '2021-01-12 20:10:12'),
(296, 8, 'Naikhongchhari Upazila', 1, '2021-01-12 20:10:42', '2021-01-12 20:10:42'),
(297, 8, 'Rowangchhari Upazila', 1, '2021-01-12 20:11:19', '2021-01-12 20:11:19'),
(298, 8, 'Ruma Upazila', 1, '2021-01-12 20:11:31', '2021-01-12 20:11:31'),
(299, 8, 'Thanchi Upazila', 1, '2021-01-12 20:11:42', '2021-01-12 20:11:42'),
(300, 10, 'Matlab South', 1, '2021-01-12 20:12:30', '2021-01-12 20:12:30'),
(301, 10, 'Hajiganj', 1, '2021-01-12 20:12:58', '2021-01-12 20:12:58'),
(302, 11, 'Akbarshah Thana', 1, '2021-01-12 20:13:26', '2021-01-12 20:13:26'),
(303, 11, 'Bakoliya Thana', 1, '2021-01-12 20:13:38', '2021-01-12 20:13:38'),
(304, 11, 'Bandar Thana', 1, '2021-01-12 20:13:51', '2021-01-12 20:13:51'),
(305, 11, 'Bayazid Thana', 1, '2021-01-12 20:14:02', '2021-01-12 20:14:02'),
(306, 11, 'Bhujpur Thana', 1, '2021-01-12 20:14:13', '2021-01-12 20:14:13'),
(307, 10, 'Matlab North', 1, '2021-01-12 20:14:44', '2021-01-12 20:14:44'),
(308, 11, 'Chandgaon Thana', 1, '2021-01-12 20:14:47', '2021-01-12 20:14:47'),
(309, 11, 'Double Mooring Thana', 1, '2021-01-12 20:14:58', '2021-01-12 20:14:58'),
(310, 11, 'EPZ Thana', 1, '2021-01-12 20:15:10', '2021-01-12 20:15:10'),
(311, 11, 'Halishahar Thana', 1, '2021-01-12 20:15:20', '2021-01-12 20:15:20'),
(312, 10, 'Faridgonj', 1, '2021-01-12 20:15:31', '2021-01-12 20:15:31'),
(313, 11, 'Karnaphuli Upazila', 1, '2021-01-12 20:15:37', '2021-01-12 20:15:37'),
(314, 11, 'Khulshi Thana', 1, '2021-01-12 20:15:48', '2021-01-12 20:15:48'),
(315, 11, 'Kotwali Thana (Chittagong)', 1, '2021-01-12 20:15:58', '2021-01-12 20:15:58'),
(316, 11, 'Pahartali Thana', 1, '2021-01-12 20:16:10', '2021-01-12 20:16:10'),
(317, 11, 'Panchlaish Thana', 1, '2021-01-12 20:16:21', '2021-01-12 20:16:21'),
(318, 11, 'Patenga Thana', 1, '2021-01-12 20:16:31', '2021-01-12 20:16:31'),
(319, 13, 'Chakaria Upazila', 1, '2021-01-12 20:17:26', '2021-01-12 20:17:26'),
(320, 13, 'Cox\'s Bazar Sadar', 1, '2021-01-12 20:17:58', '2021-01-12 20:17:58'),
(321, 13, 'Kutubdia Upazila', 1, '2021-01-12 20:18:14', '2021-01-12 20:18:14'),
(322, 13, 'Moheshkhali Upazila', 1, '2021-01-12 20:18:28', '2021-01-12 20:18:28'),
(323, 13, 'Pekua Upazila', 1, '2021-01-12 20:18:44', '2021-01-12 20:18:44'),
(324, 13, 'Ramu Upazila', 1, '2021-01-12 20:19:03', '2021-01-12 20:19:03'),
(325, 13, 'Teknaf Upazila', 1, '2021-01-12 20:19:26', '2021-01-12 20:19:26'),
(326, 13, 'Ukhia Upazila', 1, '2021-01-12 20:19:38', '2021-01-12 20:19:38'),
(327, 16, 'Raipur Upazila', 1, '2021-01-12 20:21:20', '2021-01-12 20:21:20'),
(328, 16, 'Kamalnagar Upazila', 1, '2021-01-12 20:22:20', '2021-01-12 20:22:20'),
(329, 16, 'Ramganj Upazila', 1, '2021-01-12 20:23:03', '2021-01-12 20:23:03'),
(330, 16, 'Ramgati Upazila', 1, '2021-01-12 20:23:16', '2021-01-12 20:23:16'),
(331, 16, 'Chandraganj Thana', 1, '2021-01-12 20:23:32', '2021-01-12 20:23:32'),
(332, 53, 'Biral Upazila', 1, '2021-01-12 20:25:41', '2021-01-12 20:25:41'),
(333, 53, 'Birampur Upazila', 1, '2021-01-12 20:25:59', '2021-01-12 20:25:59'),
(334, 53, 'Birganj Upazila', 1, '2021-01-12 20:26:17', '2021-01-12 20:26:17'),
(335, 53, 'Bochaganj Upazila', 1, '2021-01-12 20:26:46', '2021-01-12 20:26:46'),
(336, 53, 'Chirirbandar Upazila', 1, '2021-01-12 20:26:59', '2021-01-12 20:26:59'),
(337, 53, 'Dinajpur Sadar Upazila', 1, '2021-01-12 20:27:11', '2021-01-12 20:27:11'),
(338, 53, 'Fulbari Upazila', 1, '2021-01-12 20:27:22', '2021-01-12 20:27:22'),
(339, 53, 'Ghoraghat Upazila', 1, '2021-01-12 20:27:33', '2021-01-12 20:27:33'),
(340, 53, 'Hakimpur Upazila', 1, '2021-01-12 20:27:47', '2021-01-12 20:27:47'),
(341, 53, 'Kaharole Upazila', 1, '2021-01-12 20:27:58', '2021-01-12 20:27:58'),
(342, 53, 'Khansama Upazila', 1, '2021-01-12 20:28:09', '2021-01-12 20:28:09'),
(343, 53, 'Nawabganj Upazila', 1, '2021-01-12 20:28:22', '2021-01-12 20:28:22'),
(344, 53, 'Parbatipur Upazila', 1, '2021-01-12 20:28:36', '2021-01-12 20:28:36'),
(345, 17, 'Companiganj', 1, '2021-01-12 20:33:43', '2021-01-12 20:33:43'),
(346, 55, 'Kurigram Sadar', 1, '2021-01-12 20:38:22', '2021-01-12 20:38:22'),
(347, 55, 'Bhurungamari Upazila', 1, '2021-01-12 20:39:01', '2021-01-12 20:39:01'),
(348, 55, 'Bhurungamari Upazila', 1, '2021-01-12 20:39:42', '2021-01-12 20:39:42'),
(349, 55, 'Char Rajibpur Upazila', 1, '2021-01-12 20:39:57', '2021-01-12 20:39:57'),
(350, 55, 'Chilmari Upazila', 1, '2021-01-12 20:40:23', '2021-01-12 20:40:23'),
(351, 55, 'Nageshwari Upazila', 1, '2021-01-12 20:40:49', '2021-01-12 20:40:49'),
(352, 55, 'Phulbari Upazila', 1, '2021-01-12 20:42:49', '2021-01-12 20:42:49'),
(353, 55, 'Rajarhat Upazila', 1, '2021-01-12 20:43:05', '2021-01-12 20:43:05'),
(354, 55, 'Raomari Upazila', 1, '2021-01-12 20:43:18', '2021-01-12 20:43:18'),
(355, 55, 'Ulipur Upazila', 1, '2021-01-12 20:43:32', '2021-01-12 20:43:32'),
(356, 56, 'Lalmonirhat sadar', 1, '2021-01-12 20:44:09', '2021-01-12 20:44:09'),
(357, 56, 'Aditmari Upazila‎', 1, '2021-01-12 20:44:54', '2021-01-12 20:44:54'),
(358, 56, 'Hatibandha Upazila', 1, '2021-01-12 20:45:08', '2021-01-12 20:45:08'),
(359, 56, 'Kaliganj Upazila', 1, '2021-01-12 20:45:23', '2021-01-12 20:45:23'),
(360, 56, 'Patgram Upazila', 1, '2021-01-12 20:45:37', '2021-01-12 20:45:37'),
(361, 48, 'Natore Sadar', 1, '2021-01-12 20:46:28', '2021-01-12 20:46:28'),
(362, 20, 'Gazipur Sadar', 1, '2021-01-12 20:55:26', '2021-01-12 20:55:26'),
(363, 20, 'Kapasia Upazila‎', 1, '2021-01-12 20:56:15', '2021-01-12 20:56:15'),
(364, 20, 'Kaliakair Upazila', 1, '2021-01-12 20:56:25', '2021-01-12 20:56:25'),
(365, 20, 'Kaliganj Upazila', 1, '2021-01-12 20:56:37', '2021-01-12 20:56:37'),
(366, 20, 'Kapasia Upazila', 1, '2021-01-12 20:56:47', '2021-01-12 20:56:47'),
(367, 20, 'Sreepur Upazila', 1, '2021-01-12 20:56:59', '2021-01-12 20:56:59'),
(368, 27, 'Narsingdi Sadar', 1, '2021-01-12 20:58:06', '2021-01-12 20:58:06'),
(369, 27, 'Belabo Upazila', 1, '2021-01-12 20:58:18', '2021-01-12 20:58:18'),
(370, 27, 'Monohardi Upazila', 1, '2021-01-12 20:58:29', '2021-01-12 20:58:29'),
(371, 27, 'Palash Upazila', 1, '2021-01-12 20:58:42', '2021-01-12 20:58:42'),
(372, 27, 'Raipura Upazila', 1, '2021-01-12 20:58:51', '2021-01-12 20:59:01'),
(373, 27, 'Shibpur Upazila', 1, '2021-01-12 20:59:31', '2021-01-12 20:59:31'),
(374, 51, 'Rajshahi Sadar', 1, '2021-01-12 21:02:03', '2021-01-12 21:02:03'),
(375, 51, 'Bagha Upazila', 1, '2021-01-12 21:02:22', '2021-01-12 21:02:22'),
(376, 51, 'Bagmara Upazila', 1, '2021-01-12 21:02:34', '2021-01-12 21:02:34'),
(377, 51, 'Boalia Thana', 1, '2021-01-12 21:02:45', '2021-01-12 21:02:45'),
(378, 51, 'Charghat Upazila', 1, '2021-01-12 21:02:55', '2021-01-12 21:02:55'),
(379, 51, 'Durgapur Upazila, Rajshahi', 1, '2021-01-12 21:03:09', '2021-01-12 21:03:09'),
(380, 51, 'Godagari Upazila', 1, '2021-01-12 21:03:19', '2021-01-12 21:03:19'),
(381, 51, 'Mohanpur Upazila', 1, '2021-01-12 21:03:29', '2021-01-12 21:03:29'),
(382, 51, 'Paba Upazila', 1, '2021-01-12 21:03:39', '2021-01-12 21:03:39'),
(383, 51, 'Puthia Upazila', 1, '2021-01-12 21:03:51', '2021-01-12 21:03:51'),
(384, 51, 'Shah Makhdum Thana', 1, '2021-01-12 21:04:01', '2021-01-12 21:04:01'),
(385, 51, 'Tanore Upazila', 1, '2021-01-12 21:04:14', '2021-01-12 21:04:14'),
(386, 19, 'Alfadanga Upazila', 1, '2021-01-12 21:04:45', '2021-01-12 21:04:45'),
(387, 19, 'Bhanga Upazila', 1, '2021-01-12 21:04:55', '2021-01-12 21:04:55'),
(388, 19, 'Boalmari Upazila', 1, '2021-01-12 21:05:04', '2021-01-12 21:05:04'),
(389, 19, 'Charbhadrasan Upazila', 1, '2021-01-12 21:05:14', '2021-01-12 21:05:14'),
(390, 19, 'Faridpur Sadar', 1, '2021-01-12 21:05:26', '2021-01-12 21:05:26'),
(391, 19, 'Madhukhali Upazila', 1, '2021-01-12 21:05:36', '2021-01-12 21:05:36'),
(392, 19, 'Nagarkanda Upazila', 1, '2021-01-12 21:05:46', '2021-01-12 21:05:46'),
(393, 19, 'Sadarpur Upazila', 1, '2021-01-12 21:05:54', '2021-01-12 21:05:54'),
(394, 19, 'Saltha Upazila', 1, '2021-01-12 21:06:04', '2021-01-12 21:06:04'),
(395, 45, 'Adamdighi Upazila', 1, '2021-01-12 21:06:55', '2021-01-12 21:06:55'),
(396, 45, 'Bogura Sadar', 1, '2021-01-12 21:07:12', '2021-01-12 21:07:12'),
(397, 45, 'Dhunat Upazila', 1, '2021-01-12 21:07:23', '2021-01-12 21:07:23'),
(398, 45, 'Dhupchanchia Upazila', 1, '2021-01-12 21:07:33', '2021-01-12 21:07:33'),
(399, 45, 'Gabtali Upazila', 1, '2021-01-12 21:07:43', '2021-01-12 21:07:43'),
(400, 45, 'Kahaloo Upazila', 1, '2021-01-12 21:07:54', '2021-01-12 21:07:54'),
(401, 45, 'Nandigram Upazila', 1, '2021-01-12 21:08:04', '2021-01-12 21:08:04'),
(402, 45, 'Sariakandi Upazila', 1, '2021-01-12 21:08:16', '2021-01-12 21:08:16'),
(403, 45, 'Shajahanpur Upazila', 1, '2021-01-12 21:08:26', '2021-01-12 21:08:26'),
(404, 45, 'Sherpur', 1, '2021-01-12 21:08:46', '2021-01-12 21:08:46'),
(405, 45, 'Shibganj Upazila, Bogra', 1, '2021-01-12 21:08:56', '2021-01-12 21:08:56'),
(406, 45, 'Sonatala Upazila', 1, '2021-01-12 21:09:05', '2021-01-12 21:09:05'),
(407, 49, 'Chapainawabganj Sadar', 1, '2021-01-12 21:09:46', '2021-01-12 21:09:46'),
(408, 49, 'Bholahat Upazila', 1, '2021-01-12 21:10:36', '2021-01-12 21:10:36'),
(409, 49, 'Dogachi', 1, '2021-01-12 21:10:49', '2021-01-12 21:10:49'),
(410, 49, 'Gomostapur Upazila', 1, '2021-01-12 21:10:58', '2021-01-12 21:10:58'),
(411, 49, 'Nachol Upazila', 1, '2021-01-12 21:11:08', '2021-01-12 21:11:08'),
(412, 49, 'Shibganj Upazila, Chapai Nawabganj', 1, '2021-01-12 21:11:17', '2021-01-12 21:11:17'),
(413, 9, 'Kasba Upazila', 1, '2021-01-12 21:28:00', '2021-01-12 21:28:00'),
(414, 18, 'Rangamati Sadar', 1, '2021-01-12 21:29:00', '2021-01-12 21:29:00'),
(415, 9, 'Akhaura Upazila', 1, '2021-01-12 21:29:07', '2021-01-12 21:29:07'),
(416, 9, 'Ashuganj Upazila', 1, '2021-01-12 21:29:24', '2021-01-12 21:29:24'),
(417, 18, 'Kaptai', 1, '2021-01-12 21:29:26', '2021-01-12 21:29:26'),
(418, 18, 'Kawkhali', 1, '2021-01-12 21:29:40', '2021-01-12 21:29:40'),
(419, 9, 'Bancharampur Upazila', 1, '2021-01-12 21:30:01', '2021-01-12 21:30:01'),
(420, 18, 'Baghaichari', 1, '2021-01-12 21:30:10', '2021-01-12 21:30:10'),
(421, 9, 'Bijoynagar Upazila', 1, '2021-01-12 21:30:13', '2021-01-12 21:30:13'),
(422, 18, 'Barkal', 1, '2021-01-12 21:30:27', '2021-01-12 21:30:27'),
(423, 9, 'Nasirnagar Upazila', 1, '2021-01-12 21:30:31', '2021-01-12 21:30:31'),
(424, 9, 'Sarail Upazila', 1, '2021-01-12 21:30:41', '2021-01-12 21:30:41'),
(425, 18, 'Langadu', 1, '2021-01-12 21:30:42', '2021-01-12 21:30:42'),
(426, 18, 'Rajasthali', 1, '2021-01-12 21:31:05', '2021-01-12 21:31:05'),
(427, 15, 'Khagrachari Sadar', 1, '2021-01-12 21:31:25', '2021-01-12 21:31:25'),
(428, 18, 'Belaichari', 1, '2021-01-12 21:31:28', '2021-01-12 21:31:28'),
(429, 18, 'Juraichari', 1, '2021-01-12 21:31:45', '2021-01-12 21:31:45'),
(430, 18, 'Naniarchar', 1, '2021-01-12 21:32:02', '2021-01-12 21:32:02'),
(431, 26, 'Narayanganj Sadar', 1, '2021-01-12 21:38:50', '2021-01-12 21:38:50'),
(432, 26, 'Araihajar', 1, '2021-01-12 21:39:18', '2021-01-12 21:39:18'),
(433, 26, 'Bandar', 1, '2021-01-12 21:39:33', '2021-01-12 21:39:33'),
(434, 26, 'Rupganj', 1, '2021-01-12 21:39:52', '2021-01-12 21:39:52'),
(435, 26, 'Sonargaon', 1, '2021-01-12 21:40:09', '2021-01-12 21:40:09'),
(436, 30, 'Tangail Sadar', 1, '2021-01-12 21:41:17', '2021-01-12 21:41:17'),
(437, 30, 'Sakhipur Upazila', 1, '2021-01-12 21:43:26', '2021-01-12 21:43:26'),
(438, 30, 'Basail Upazila', 1, '2021-01-12 21:43:37', '2021-01-12 21:43:37'),
(439, 30, 'Madhupur Upazila', 1, '2021-01-12 21:43:51', '2021-01-12 21:43:51'),
(440, 30, 'Ghatail', 1, '2021-01-12 21:44:07', '2021-01-12 21:44:07'),
(441, 30, 'Kalihati', 1, '2021-01-12 21:44:19', '2021-01-12 21:44:19'),
(442, 30, 'Nagarpur', 1, '2021-01-12 21:44:31', '2021-01-12 21:44:31'),
(443, 30, 'Mirzapur', 1, '2021-01-12 21:44:49', '2021-01-12 21:44:49'),
(444, 30, 'Gopalpur', 1, '2021-01-12 21:45:04', '2021-01-12 21:45:04'),
(445, 30, 'Delduar', 1, '2021-01-12 21:45:23', '2021-01-12 21:45:23'),
(446, 30, 'Bhuapur', 1, '2021-01-12 21:45:34', '2021-01-12 21:45:34'),
(447, 30, 'Dhanbari', 1, '2021-01-12 21:45:45', '2021-01-12 21:45:45'),
(448, 22, 'Kishoreganj Sadar', 1, '2021-01-12 21:48:24', '2021-01-12 21:48:24'),
(449, 22, 'Kuliarchar', 1, '2021-01-12 21:49:01', '2021-01-12 21:49:01'),
(450, 11, 'Sitakunda', 1, '2021-01-12 21:54:19', '2021-01-12 21:54:19'),
(451, 11, 'Satkania', 1, '2021-01-12 22:04:50', '2021-01-12 22:04:50'),
(452, 11, 'Satkania Upazila', 1, '2021-01-12 22:07:08', '2021-01-12 22:07:08'),
(453, 11, 'Sandwip Upazila', 1, '2021-01-12 22:07:22', '2021-01-12 22:07:22'),
(454, 11, 'Raozan Upazila', 1, '2021-01-12 22:07:37', '2021-01-12 22:07:37'),
(455, 11, 'Rangunia Upazila', 1, '2021-01-12 22:07:49', '2021-01-12 22:07:49'),
(456, 11, 'Patiya Upazila', 1, '2021-01-12 22:08:04', '2021-01-12 22:08:04'),
(457, 11, 'Mirsharai Upazila', 1, '2021-01-12 22:08:18', '2021-01-12 22:08:18'),
(458, 11, 'Lohagara Upazila', 1, '2021-01-12 22:08:29', '2021-01-12 22:08:29'),
(459, 11, 'Hathazari Upazila', 1, '2021-01-12 22:08:51', '2021-01-12 22:08:51'),
(460, 11, 'Fatikchhari Upazila', 1, '2021-01-12 22:09:05', '2021-01-12 22:09:05'),
(461, 11, 'Chandanaish Upazila', 1, '2021-01-12 22:09:16', '2021-01-12 22:09:16'),
(462, 11, 'Boalkhali Upazila', 1, '2021-01-12 22:09:27', '2021-01-12 22:09:27'),
(463, 11, 'Banshkhali Upazila', 1, '2021-01-12 22:09:35', '2021-01-12 22:09:35'),
(464, 11, 'Anwara Upazila', 1, '2021-01-12 22:09:48', '2021-01-12 22:09:48'),
(465, 22, 'Hossainpur', 1, '2021-01-12 22:14:57', '2021-01-12 22:14:57'),
(466, 22, 'Pakundia', 1, '2021-01-12 22:15:13', '2021-01-12 22:15:13'),
(467, 22, 'Bajitpur', 1, '2021-01-12 22:15:40', '2021-01-12 22:15:40'),
(468, 22, 'Austagram', 1, '2021-01-12 22:15:54', '2021-01-12 22:15:54'),
(469, 22, 'Karimganj', 1, '2021-01-12 22:16:07', '2021-01-12 22:16:07'),
(470, 22, 'Katiadi', 1, '2021-01-12 22:16:22', '2021-01-12 22:16:22'),
(471, 22, 'Tarail', 1, '2021-01-12 22:16:40', '2021-01-12 22:16:40'),
(472, 22, 'Itna', 1, '2021-01-12 22:16:53', '2021-01-12 22:16:53'),
(473, 22, 'Nikli', 1, '2021-01-12 22:17:10', '2021-01-12 22:17:10'),
(474, 22, 'Mithamain', 1, '2021-01-12 22:17:21', '2021-01-12 22:17:21'),
(475, 22, 'Bhairab', 1, '2021-01-12 22:17:34', '2021-01-12 22:17:34'),
(476, 24, 'Manikganj Sadar', 1, '2021-01-12 22:18:58', '2021-01-12 22:18:58'),
(477, 24, 'Singair', 1, '2021-01-12 22:19:46', '2021-01-12 22:19:46'),
(478, 24, 'Shivalaya', 1, '2021-01-12 22:19:58', '2021-01-12 22:19:58'),
(479, 24, 'Saturia', 1, '2021-01-12 22:20:12', '2021-01-12 22:20:12'),
(480, 24, 'Harirampur', 1, '2021-01-12 22:20:26', '2021-01-12 22:20:26'),
(481, 24, 'Ghior', 1, '2021-01-12 22:20:37', '2021-01-12 22:20:37'),
(482, 24, 'Daulatpur', 1, '2021-01-12 22:20:52', '2021-01-12 22:20:52'),
(483, 23, 'Madaripur Sadar', 1, '2021-01-12 22:22:05', '2021-01-12 22:22:05'),
(484, 23, 'Kalkini', 1, '2021-01-12 22:22:17', '2021-01-12 22:22:17'),
(485, 23, 'Rajoir', 1, '2021-01-12 22:22:39', '2021-01-12 22:22:39'),
(486, 23, 'Shibchar', 1, '2021-01-12 22:22:49', '2021-01-12 22:22:49'),
(487, 25, 'Munshiganj Sadar', 1, '2021-01-12 22:23:38', '2021-01-12 22:23:38'),
(488, 25, 'Lohajang', 1, '2021-01-12 22:23:50', '2021-01-12 22:23:50'),
(489, 25, 'Sreenagar', 1, '2021-01-12 22:24:03', '2021-01-12 22:24:03'),
(490, 25, 'Sirajdikhan', 1, '2021-01-12 22:24:13', '2021-01-12 22:24:13'),
(491, 25, 'Tongibari', 1, '2021-01-12 22:24:27', '2021-01-12 22:24:27'),
(492, 25, 'Gazaria', 1, '2021-01-12 22:24:37', '2021-01-12 22:24:37'),
(493, 28, 'Rajbari Sadar', 1, '2021-01-12 22:25:45', '2021-01-12 22:25:45'),
(494, 28, 'Baliakandi', 1, '2021-01-12 22:25:57', '2021-01-12 22:25:57'),
(495, 28, 'Goalanda', 1, '2021-01-12 22:26:13', '2021-01-12 22:26:13'),
(496, 28, 'Pangsha', 1, '2021-01-12 22:26:25', '2021-01-12 22:26:25'),
(497, 28, 'Kalukhali', 1, '2021-01-12 22:26:36', '2021-01-12 22:26:36'),
(498, 29, 'Shariatpur Sadar', 1, '2021-01-12 22:27:15', '2021-01-12 22:27:15'),
(499, 29, 'Damudya', 1, '2021-01-12 22:27:30', '2021-01-12 22:27:30'),
(500, 29, 'Naria', 1, '2021-01-12 22:27:44', '2021-01-12 22:27:44'),
(501, 29, 'Zanjira', 1, '2021-01-12 22:27:55', '2021-01-12 22:27:55'),
(502, 29, 'Bhedarganj', 1, '2021-01-12 22:28:06', '2021-01-12 22:28:06'),
(503, 29, 'Gosairhat', 1, '2021-01-12 22:28:27', '2021-01-12 22:28:27'),
(504, 29, 'Shakhipur', 1, '2021-01-12 22:28:39', '2021-01-12 22:28:39'),
(505, 41, 'Jamalpur Sadar', 1, '2021-01-12 22:46:42', '2021-01-12 22:46:42'),
(506, 41, 'Dewanganj', 1, '2021-01-12 22:47:04', '2021-01-12 22:47:04'),
(507, 41, 'Baksiganj', 1, '2021-01-12 22:47:19', '2021-01-12 22:47:19'),
(508, 41, 'Madarganj', 1, '2021-01-12 22:47:55', '2021-01-12 22:47:55'),
(509, 41, 'Melandaha', 1, '2021-01-12 22:48:06', '2021-01-12 22:48:06'),
(510, 41, 'Sarishabari', 1, '2021-01-12 22:48:19', '2021-01-12 22:48:19'),
(511, 40, 'Satkhira Sadar', 1, '2021-01-12 22:56:18', '2021-01-12 22:56:18'),
(512, 40, 'Assasuni', 1, '2021-01-12 22:56:29', '2021-01-12 22:56:29'),
(513, 40, 'Debhata', 1, '2021-01-12 22:56:45', '2021-01-12 22:56:45'),
(514, 40, 'Tala', 1, '2021-01-12 22:56:57', '2021-01-12 22:56:57'),
(515, 40, 'Kalaroa', 1, '2021-01-12 22:57:09', '2021-01-12 22:57:09'),
(516, 40, 'Kaliganj', 1, '2021-01-12 22:57:24', '2021-01-12 22:57:24'),
(517, 40, 'Shyamnagar', 1, '2021-01-12 22:57:37', '2021-01-12 22:57:37'),
(518, 33, 'Abhaynagar', 1, '2021-01-12 22:59:00', '2021-01-12 22:59:00'),
(519, 33, 'Bagherpara', 1, '2021-01-12 22:59:14', '2021-01-12 22:59:14'),
(520, 33, 'Chaugachha', 1, '2021-01-12 22:59:25', '2021-01-12 22:59:25'),
(521, 33, 'Jhikargachha', 1, '2021-01-12 22:59:35', '2021-01-12 22:59:35'),
(522, 33, 'Keshabpur', 1, '2021-01-12 22:59:45', '2021-01-12 22:59:45'),
(523, 33, 'Jessore Sadar', 1, '2021-01-12 22:59:55', '2021-01-12 22:59:55'),
(524, 33, 'Manirampur', 1, '2021-01-12 23:00:05', '2021-01-12 23:00:05'),
(525, 33, 'Sharsha', 1, '2021-01-12 23:00:24', '2021-01-12 23:00:24'),
(526, 32, 'Alamdanga', 1, '2021-01-12 23:01:41', '2021-01-12 23:01:41'),
(527, 32, 'Chuadanga Sadar', 1, '2021-01-12 23:01:55', '2021-01-12 23:01:55'),
(528, 32, 'Jibannagar', 1, '2021-01-12 23:02:10', '2021-01-12 23:02:10'),
(529, 32, 'Damurhuda', 1, '2021-01-12 23:02:30', '2021-01-12 23:02:30'),
(530, 32, 'Darsana', 1, '2021-01-12 23:02:46', '2021-01-12 23:02:46'),
(531, 31, 'Bagerhat Sadar', 1, '2021-01-12 23:03:48', '2021-01-12 23:03:48'),
(532, 31, 'Chitalmari', 1, '2021-01-12 23:04:08', '2021-01-12 23:04:08'),
(533, 31, 'Fakirhat', 1, '2021-01-12 23:04:25', '2021-01-12 23:04:25'),
(534, 31, 'Mollahat', 1, '2021-01-12 23:04:56', '2021-01-12 23:04:56'),
(535, 31, 'Kachua Upazila', 1, '2021-01-12 23:05:18', '2021-01-12 23:05:18'),
(536, 31, 'Mongla', 1, '2021-01-12 23:05:35', '2021-01-12 23:05:35'),
(537, 31, 'Morrelganj', 1, '2021-01-12 23:05:53', '2021-01-12 23:05:53'),
(538, 31, 'Rampal', 1, '2021-01-12 23:06:10', '2021-01-12 23:06:10'),
(539, 31, 'Sarankhola', 1, '2021-01-12 23:06:23', '2021-01-12 23:06:23'),
(540, 34, 'Jhenaidah Sadar', 1, '2021-01-12 23:07:52', '2021-01-12 23:07:52'),
(541, 34, 'Maheshpur', 1, '2021-01-12 23:08:05', '2021-01-12 23:08:05'),
(542, 34, 'Kaliganj  Upazila', 1, '2021-01-12 23:08:49', '2021-01-12 23:08:49'),
(543, 34, 'Kotchandpur', 1, '2021-01-12 23:09:00', '2021-01-12 23:09:00'),
(544, 34, 'Shailkupa', 1, '2021-01-12 23:09:15', '2021-01-12 23:09:15'),
(545, 34, 'Harinakunda', 1, '2021-01-12 23:09:26', '2021-01-12 23:09:26'),
(546, 36, 'Bheramara', 1, '2021-01-12 23:12:02', '2021-01-12 23:12:02'),
(547, 36, 'Daulatpur Upazila', 1, '2021-01-12 23:12:27', '2021-01-12 23:12:27'),
(548, 36, 'Khoksa', 1, '2021-01-12 23:12:40', '2021-01-12 23:12:40'),
(549, 36, 'Kumarkhali', 1, '2021-01-12 23:12:51', '2021-01-12 23:12:51'),
(550, 36, 'Kushtia Sadar', 1, '2021-01-12 23:13:06', '2021-01-12 23:13:06'),
(551, 36, 'Mirpur', 1, '2021-01-12 23:13:21', '2021-01-12 23:13:21'),
(552, 47, 'Atrai', 1, '2021-01-13 00:41:25', '2021-01-13 00:41:25'),
(553, 47, 'Badalgachhi', 1, '2021-01-13 00:41:43', '2021-01-13 00:41:43'),
(554, 47, 'Dhamoirhat', 1, '2021-01-13 00:41:58', '2021-01-13 00:41:58'),
(555, 47, 'Manda', 1, '2021-01-13 00:42:13', '2021-01-13 00:42:13'),
(556, 47, 'Mohadevpur', 1, '2021-01-13 00:42:32', '2021-01-13 00:42:32'),
(557, 47, 'Naogaon Sadar', 1, '2021-01-13 00:42:50', '2021-01-13 00:42:50'),
(558, 47, 'Niamatpur', 1, '2021-01-13 00:43:03', '2021-01-13 00:43:03'),
(559, 47, 'Patnitala', 1, '2021-01-13 00:43:18', '2021-01-13 00:43:18'),
(560, 47, 'Porsha', 1, '2021-01-13 00:43:29', '2021-01-13 00:43:29'),
(561, 47, 'Raninagar', 1, '2021-01-13 00:43:43', '2021-01-13 00:43:43'),
(562, 47, 'Sapahar', 1, '2021-01-13 00:43:57', '2021-01-13 00:43:57'),
(563, 46, 'Joypurhat Sadar', 1, '2021-01-13 00:45:10', '2021-01-13 00:45:10'),
(564, 46, 'Akkelpur', 1, '2021-01-13 00:45:24', '2021-01-13 00:45:24'),
(565, 46, 'Kalai', 1, '2021-01-13 00:45:37', '2021-01-13 00:45:37'),
(566, 46, 'Khetlal', 1, '2021-01-13 00:45:48', '2021-01-13 00:45:48'),
(567, 46, 'Panchbibi', 1, '2021-01-13 00:46:04', '2021-01-13 00:46:04'),
(568, 44, 'Jhenaigati', 1, '2021-01-13 00:46:47', '2021-01-13 00:46:47'),
(569, 44, 'Nakla Upazila', 1, '2021-01-13 00:46:58', '2021-01-13 00:46:58'),
(570, 44, 'Nalitabari', 1, '2021-01-13 00:47:11', '2021-01-13 00:47:11'),
(571, 44, 'Sherpur Sadar', 1, '2021-01-13 00:47:25', '2021-01-13 00:47:25'),
(572, 44, 'Sreebardi', 1, '2021-01-13 00:47:37', '2021-01-13 00:47:37'),
(573, 43, 'Atpara', 1, '2021-01-13 00:48:14', '2021-01-13 00:48:14'),
(574, 43, 'Barhatta', 1, '2021-01-13 00:48:26', '2021-01-13 00:48:26'),
(575, 44, 'Durgapur', 1, '2021-01-13 00:48:43', '2021-01-13 00:48:43'),
(576, 44, 'Khaliajuri', 1, '2021-01-13 00:49:01', '2021-01-13 00:49:01'),
(577, 44, 'Kalmakanda', 1, '2021-01-13 00:49:17', '2021-01-13 00:49:17'),
(578, 44, 'Kendua', 1, '2021-01-13 00:49:32', '2021-01-13 00:49:32'),
(579, 44, 'Madan', 1, '2021-01-13 00:49:45', '2021-01-13 00:49:45'),
(580, 44, 'Mohanganj', 1, '2021-01-13 00:49:59', '2021-01-13 00:49:59'),
(581, 44, 'Netrokona Sadar', 1, '2021-01-13 00:50:16', '2021-01-13 00:50:16'),
(582, 44, 'Purbadhala', 1, '2021-01-13 00:50:27', '2021-01-13 00:50:27'),
(583, 48, 'Gurudaspur', 1, '2021-01-13 00:51:44', '2021-01-13 00:51:44'),
(584, 48, 'Baraigram', 1, '2021-01-13 00:52:04', '2021-01-13 00:52:04'),
(585, 48, 'Bagatipara', 1, '2021-01-13 00:52:19', '2021-01-13 00:52:19'),
(586, 48, 'Lalpur', 1, '2021-01-13 00:52:34', '2021-01-13 00:52:34'),
(587, 48, 'Singra', 1, '2021-01-13 00:52:48', '2021-01-13 00:52:48'),
(588, 48, 'Naldanga', 1, '2021-01-13 00:53:06', '2021-01-13 00:53:06'),
(589, 21, 'Gopalganj Sadar', 1, '2021-01-13 00:55:56', '2021-01-13 00:55:56'),
(590, 21, 'Kashiani', 1, '2021-01-13 00:56:06', '2021-01-13 00:56:06'),
(591, 21, 'Kotalipara', 1, '2021-01-13 00:56:19', '2021-01-13 00:56:19'),
(592, 21, 'Muksudpur', 1, '2021-01-13 00:56:39', '2021-01-13 00:56:39'),
(593, 21, 'Tungipara', 1, '2021-01-13 00:56:52', '2021-01-13 00:56:52'),
(594, 35, 'erokhada', 0, '2021-01-13 00:58:56', '2021-01-24 15:08:46'),
(595, 35, 'Sonadanga', 1, '2021-01-13 00:59:09', '2021-01-13 00:59:09'),
(596, 35, 'Rupsa', 1, '2021-01-13 00:59:26', '2021-01-13 00:59:26'),
(597, 35, 'Phultala', 1, '2021-01-13 00:59:37', '2021-01-13 00:59:37'),
(598, 35, 'Paikgachha', 1, '2021-01-13 00:59:52', '2021-01-13 00:59:52'),
(599, 35, 'Koyra', 1, '2021-01-13 01:00:06', '2021-01-13 01:00:06'),
(600, 35, 'Kotwali Upazila', 1, '2021-01-13 01:00:32', '2021-01-13 01:00:32'),
(601, 35, 'Khan Jahan ALi', 1, '2021-01-13 01:00:44', '2021-01-13 01:00:44'),
(602, 35, 'Khalishpur', 1, '2021-01-13 01:01:01', '2021-01-13 01:01:01'),
(603, 35, 'Harintana', 1, '2021-01-13 01:01:19', '2021-01-13 01:01:19'),
(604, 35, 'Dumuria', 1, '2021-01-13 01:01:32', '2021-01-13 01:01:32'),
(605, 35, 'Dighalia', 1, '2021-01-13 01:01:45', '2021-01-13 01:01:45'),
(606, 35, 'Daulatpur  Upazila', 1, '2021-01-13 01:02:12', '2021-01-13 01:02:12'),
(607, 35, 'Dacope', 1, '2021-01-13 01:02:23', '2021-01-13 01:02:23'),
(608, 35, 'Batiaghata', 1, '2021-01-13 01:02:34', '2021-01-13 01:02:34'),
(609, 37, 'Magura Sadar', 1, '2021-01-13 01:03:37', '2021-01-13 01:03:37'),
(610, 37, 'Shalikha', 1, '2021-01-13 01:03:46', '2021-01-13 01:03:46'),
(611, 37, 'Mohammadpur Upazila', 1, '2021-01-13 01:04:00', '2021-01-13 01:04:00'),
(612, 37, 'Sreepur', 1, '2021-01-13 01:04:12', '2021-01-13 01:04:12'),
(613, 38, 'Meherpur Sadar', 1, '2021-01-13 01:04:58', '2021-01-13 01:04:58'),
(614, 38, 'Gangni', 1, '2021-01-13 01:05:15', '2021-01-13 01:05:15'),
(615, 38, 'Mujibnagar', 1, '2021-01-13 01:05:33', '2021-01-13 01:05:33'),
(616, 39, 'Narail Sadar', 1, '2021-01-13 01:06:19', '2021-01-13 01:06:19'),
(617, 39, 'Kalia', 1, '2021-01-13 01:06:35', '2021-01-13 01:06:35'),
(618, 39, 'Lohagara', 1, '2021-01-13 01:06:50', '2021-01-13 01:06:50'),
(619, 42, 'Mymensingh Sadar', 1, '2021-01-13 01:07:57', '2021-01-13 01:07:57'),
(620, 42, 'Bhaluka', 1, '2021-01-13 01:08:11', '2021-01-13 01:08:11'),
(621, 42, 'Trishal', 1, '2021-01-13 01:08:28', '2021-01-13 01:08:28'),
(622, 42, 'Haluaghat', 1, '2021-01-13 01:08:42', '2021-01-13 01:08:42'),
(623, 42, 'Muktagacha', 1, '2021-01-13 01:08:55', '2021-01-13 01:08:55'),
(624, 42, 'Dhobaura', 1, '2021-01-13 01:09:08', '2021-01-13 01:09:08'),
(625, 42, 'Fulbaria', 1, '2021-01-13 01:09:20', '2021-01-13 01:09:20'),
(626, 42, 'Gaffargaon', 1, '2021-01-13 01:09:33', '2021-01-13 01:09:33'),
(627, 42, 'Gauripur', 1, '2021-01-13 01:09:43', '2021-01-13 01:09:43'),
(628, 42, 'Ishwarganj', 1, '2021-01-13 01:09:58', '2021-01-13 01:09:58'),
(629, 42, 'Nandail', 1, '2021-01-13 01:10:10', '2021-01-13 01:10:10'),
(630, 42, 'Phulpur', 1, '2021-01-13 01:10:23', '2021-01-13 01:10:23'),
(631, 42, 'Tara Khanda', 1, '2021-01-13 01:10:34', '2021-01-13 01:10:34'),
(632, 50, 'Pabna Sadar', 1, '2021-01-13 01:13:05', '2021-01-13 01:13:05'),
(633, 50, 'Atgharia', 1, '2021-01-13 01:13:20', '2021-01-13 01:13:20'),
(634, 50, 'Bera', 1, '2021-01-13 01:13:30', '2021-01-13 01:13:30'),
(635, 50, 'Bhangura', 1, '2021-01-13 01:13:43', '2021-01-13 01:13:43'),
(636, 50, 'Chatmohar', 1, '2021-01-13 01:13:59', '2021-01-13 01:13:59'),
(637, 50, 'Faridpur', 1, '2021-01-13 01:14:15', '2021-01-13 01:14:15'),
(638, 50, 'Ishwardi', 1, '2021-01-13 01:14:29', '2021-01-13 01:14:29'),
(639, 50, 'Shathia', 1, '2021-01-13 01:14:43', '2021-01-13 01:14:43'),
(640, 50, 'Sujanagar', 1, '2021-01-13 01:14:54', '2021-01-13 01:14:54'),
(641, 52, 'Sirajganj Sadar', 1, '2021-01-13 01:15:21', '2021-01-13 01:15:21'),
(642, 52, 'Kazipur', 1, '2021-01-13 01:15:52', '2021-01-13 01:15:52'),
(643, 52, 'Ullahpara', 1, '2021-01-13 01:16:02', '2021-01-13 01:16:02'),
(644, 52, 'Shahjadpur', 1, '2021-01-13 01:16:15', '2021-01-13 01:16:15'),
(645, 52, 'Raiganj', 1, '2021-01-13 01:16:30', '2021-01-13 01:16:30'),
(646, 52, 'Kamarkhanda', 1, '2021-01-13 01:16:42', '2021-01-13 01:16:42'),
(647, 52, 'Tarash', 1, '2021-01-13 01:16:59', '2021-01-13 01:16:59'),
(648, 52, 'Belkuchi', 1, '2021-01-13 01:17:11', '2021-01-13 01:17:11'),
(649, 52, 'Chauhali', 1, '2021-01-13 01:17:23', '2021-01-13 01:17:23'),
(650, 54, 'Gaibandha Sadar', 1, '2021-01-13 01:18:10', '2021-01-13 01:18:10'),
(651, 54, 'Fulchhari', 1, '2021-01-13 01:18:24', '2021-01-13 01:18:24'),
(652, 54, 'Gobindaganj', 1, '2021-01-13 01:18:39', '2021-01-13 01:18:39'),
(653, 54, 'Palashbari', 1, '2021-01-13 01:18:51', '2021-01-13 01:18:51'),
(654, 54, 'Sadullapur', 1, '2021-01-13 01:19:03', '2021-01-13 01:19:03'),
(655, 54, 'Sundarganj', 1, '2021-01-13 01:19:19', '2021-01-13 01:19:19'),
(656, 54, 'Saghata', 1, '2021-01-13 01:19:31', '2021-01-13 01:19:31'),
(657, 66, 'Tongi Bazar', 1, '2021-01-13 01:33:49', '2021-01-13 01:33:49'),
(658, 66, 'Keraniganj', 1, '2021-01-13 01:34:03', '2021-01-13 01:54:10'),
(659, 67, 'Dohar', 1, '2021-01-13 01:47:44', '2021-01-13 01:47:44'),
(660, 66, 'Demra', 1, '2021-01-13 01:50:08', '2021-01-13 01:50:08'),
(661, 67, 'Nowabganj', 1, '2021-01-13 01:56:35', '2021-01-13 01:56:35'),
(662, 66, 'Sutrapur', 1, '2021-01-13 02:04:45', '2021-01-13 02:04:45'),
(663, 66, 'Dolaikhal', 1, '2021-01-13 02:05:01', '2021-01-13 02:05:01'),
(664, 66, 'Dolaipar', 1, '2021-01-13 02:05:13', '2021-01-13 02:05:13'),
(665, 66, 'Sonir Akhra', 1, '2021-01-13 02:08:00', '2021-01-13 02:08:00'),
(666, 66, 'Chittagong Road', 1, '2021-01-13 02:08:23', '2021-01-13 02:08:23'),
(667, 66, 'Jurain', 1, '2021-01-13 02:10:24', '2021-01-13 02:10:24'),
(668, 66, 'Postogola', 1, '2021-01-13 02:10:35', '2021-01-13 02:10:35'),
(669, 65, 'Agrabad', 1, '2021-01-13 17:41:39', '2021-01-13 17:41:39'),
(670, 65, 'Nasirabad', 1, '2021-01-13 17:42:28', '2021-01-13 17:42:28'),
(671, 65, 'Halishahar', 1, '2021-01-13 17:45:32', '2021-01-13 17:45:32'),
(672, 65, 'New Market ctg', 1, '2021-01-13 17:49:49', '2021-01-13 17:49:49'),
(673, 67, 'Banani', 1, '2021-01-13 21:54:48', '2021-01-14 00:46:36'),
(674, 11, 'baraiyarhat', 1, '2021-01-14 17:30:30', '2021-01-14 17:30:30'),
(675, 66, 'Kamrangichar', 1, '2021-01-16 17:11:26', '2021-01-16 17:11:26'),
(676, 43, 'Durgapur-', 1, '2021-01-18 22:40:27', '2021-01-18 22:40:27'),
(677, 43, 'Mohongonj', 1, '2021-01-18 22:46:14', '2021-01-18 22:46:14'),
(678, 43, 'Purbadhala.', 1, '2021-01-18 22:46:53', '2021-01-18 22:46:53'),
(679, 43, 'Kalmakanda.', 1, '2021-01-18 22:47:43', '2021-01-18 22:47:43'),
(680, 43, 'Khaliajuri.', 1, '2021-01-18 22:48:46', '2021-01-18 22:48:46'),
(681, 43, 'Madan.', 1, '2021-01-18 22:49:26', '2021-01-18 22:49:26'),
(682, 43, 'Kendua.', 1, '2021-01-18 22:50:04', '2021-01-18 22:50:04'),
(683, 11, 'Patenga', 1, '2021-01-19 21:47:39', '2021-01-19 21:47:39'),
(684, 1, 'Kochukhet', 1, '2021-01-20 16:12:21', '2021-01-20 16:12:21'),
(685, 1, 'Gudaraghat', 1, '2021-01-20 16:12:59', '2021-01-20 16:12:59');
INSERT INTO `sub_cities` (`id`, `city_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(686, 1, 'Agargaon', 1, '2021-01-20 16:14:25', '2021-01-20 16:14:25'),
(687, 1, 'Ibrahimpur', 1, '2021-01-20 16:15:28', '2021-01-20 16:15:28'),
(688, 1, 'Vashantek', 1, '2021-01-20 16:16:36', '2021-01-20 16:16:36'),
(689, 1, 'Matikata', 1, '2021-01-20 16:17:18', '2021-01-20 16:17:18'),
(690, 1, 'Rupnagar Residential Area', 1, '2021-01-20 16:17:40', '2021-01-20 16:17:40'),
(691, 1, 'Rainkhola', 1, '2021-01-20 16:19:21', '2021-01-20 16:19:21'),
(692, 1, 'Mirpur Diabari', 1, '2021-01-20 16:19:41', '2021-01-20 16:19:41'),
(693, 1, 'Mazar Road', 1, '2021-01-20 16:21:51', '2021-01-20 16:21:51'),
(694, 1, 'Shagufta', 1, '2021-01-20 16:23:17', '2021-01-20 16:23:17'),
(695, 1, 'Bawnia', 1, '2021-01-20 16:23:28', '2021-01-20 16:23:28'),
(696, 1, 'Baigertek', 1, '2021-01-20 16:24:25', '2021-01-20 16:24:25'),
(697, 1, 'Madina nagar', 1, '2021-01-20 16:25:29', '2021-01-20 16:25:29'),
(698, 1, 'Dewanpara', 1, '2021-01-20 16:27:13', '2021-01-20 16:27:13'),
(699, 1, 'Mastertek', 1, '2021-01-20 16:27:33', '2021-01-20 16:27:33'),
(700, 1, 'Barontek', 1, '2021-01-20 16:27:52', '2021-01-20 16:27:52'),
(701, 1, 'Goltek', 1, '2021-01-20 16:28:32', '2021-01-20 16:28:32'),
(702, 1, 'Shewra', 1, '2021-01-20 16:28:51', '2021-01-20 16:28:51'),
(703, 1, 'Uttarkhan', 1, '2021-01-20 16:29:10', '2021-01-20 16:29:10'),
(704, 1, 'Dakshinkhan', 1, '2021-01-20 16:29:29', '2021-01-20 16:29:29'),
(705, 1, 'Fayedabad', 1, '2021-01-20 16:29:42', '2021-01-20 16:29:42'),
(706, 1, 'Kuril', 1, '2021-01-20 16:32:08', '2021-01-20 16:32:08'),
(707, 1, 'Nikunja', 1, '2021-01-20 16:32:35', '2021-01-20 16:32:35'),
(708, 1, 'Hajipara', 1, '2021-01-20 16:35:42', '2021-01-20 16:35:42'),
(709, 1, 'Kawla', 1, '2021-01-20 16:35:55', '2021-01-20 16:35:55'),
(710, 1, 'Naddapara', 1, '2021-01-20 16:36:14', '2021-01-20 16:36:14'),
(711, 1, 'Bashundhara R/A', 1, '2021-01-20 16:36:38', '2021-01-20 16:36:38'),
(712, 1, 'Vatara', 1, '2021-01-20 16:36:53', '2021-01-20 16:36:53'),
(713, 1, 'Nadda', 1, '2021-01-20 16:37:05', '2021-01-20 16:37:05'),
(714, 1, 'Notun Bazar', 1, '2021-01-20 16:37:45', '2021-01-20 16:37:45'),
(715, 1, 'Uttor Badda', 1, '2021-01-20 16:38:17', '2021-01-20 16:38:17'),
(716, 1, 'Middle Badda', 1, '2021-01-20 16:38:39', '2021-01-20 16:38:39'),
(717, 1, 'South Badda', 1, '2021-01-20 16:38:49', '2021-01-20 16:38:49'),
(718, 1, 'Merul Badda', 1, '2021-01-20 16:38:59', '2021-01-20 16:38:59'),
(719, 1, 'Banani DOHS', 1, '2021-01-20 16:39:26', '2021-01-20 16:39:26'),
(720, 1, 'South Monipur', 1, '2021-01-20 16:39:53', '2021-01-20 16:39:53'),
(721, 1, 'Shah Ali Bag', 1, '2021-01-20 16:40:06', '2021-01-20 16:40:06'),
(722, 1, 'Aziz Palli', 1, '2021-01-20 16:40:17', '2021-01-20 16:40:17'),
(723, 1, 'Bashtola', 1, '2021-01-20 16:40:40', '2021-01-20 16:40:40'),
(724, 1, 'South Baridhara, DIT Project', 1, '2021-01-20 16:40:51', '2021-01-20 16:40:51'),
(725, 1, 'Bijoy Shoroni', 1, '2021-01-20 16:41:08', '2021-01-20 16:41:08'),
(726, 1, 'Indira Road', 1, '2021-01-20 16:42:51', '2021-01-20 16:42:51'),
(727, 1, 'Razabazar', 1, '2021-01-20 16:43:59', '2021-01-20 16:43:59'),
(728, 1, 'Panthopath', 1, '2021-01-20 16:44:17', '2021-01-20 16:44:17'),
(729, 1, 'Green Road', 1, '2021-01-20 16:45:02', '2021-01-20 16:45:02'),
(730, 1, 'Manik Mia Avenue', 1, '2021-01-20 16:45:18', '2021-01-20 16:45:18'),
(731, 1, 'Asad Avenue', 1, '2021-01-20 16:45:38', '2021-01-20 16:45:38'),
(732, 1, 'West Dhanmondi', 1, '2021-01-20 16:45:51', '2021-01-20 16:45:51'),
(733, 1, 'Shankar', 1, '2021-01-20 16:46:03', '2021-01-20 16:46:03'),
(734, 1, 'Rayer Bazar', 1, '2021-01-20 16:46:15', '2021-01-20 16:46:15'),
(735, 1, 'Tallabag', 1, '2021-01-20 16:46:30', '2021-01-20 16:46:30'),
(736, 1, 'Hazaribag', 1, '2021-01-20 16:46:42', '2021-01-20 16:46:42'),
(737, 1, 'Pilkhana', 1, '2021-01-20 16:47:02', '2021-01-20 16:47:02'),
(738, 1, 'Nawabgonj Puran Dhaka', 1, '2021-01-20 16:47:47', '2021-01-20 16:47:47'),
(739, 1, 'Azimpur', 1, '2021-01-20 16:48:22', '2021-01-20 16:48:22'),
(740, 1, 'Nilkhet', 1, '2021-01-20 16:48:56', '2021-01-20 16:48:56'),
(741, 1, 'Chawkbazar (Dhaka)', 1, '2021-01-20 16:49:23', '2021-01-20 16:49:23'),
(742, 1, 'Naya Bazar', 1, '2021-01-20 16:49:39', '2021-01-20 16:49:39'),
(743, 1, 'Tatibazar', 1, '2021-01-20 16:50:06', '2021-01-20 16:50:06'),
(744, 1, 'Luxmi Bazar', 1, '2021-01-20 16:50:24', '2021-01-20 16:50:24'),
(745, 1, 'Puran Dhaka', 1, '2021-01-20 16:50:36', '2021-01-20 16:50:36'),
(746, 1, 'Siddique Bazar', 1, '2021-01-20 16:51:11', '2021-01-20 16:51:11'),
(747, 1, 'Tikatuly', 1, '2021-01-20 16:51:37', '2021-01-20 16:51:37'),
(748, 1, 'Nawabpur', 1, '2021-01-20 16:52:00', '2021-01-20 16:52:00'),
(749, 1, 'Kaptan Bazar', 1, '2021-01-20 16:52:15', '2021-01-20 16:52:15'),
(750, 1, 'Gulistan', 1, '2021-01-20 16:52:27', '2021-01-20 16:52:27'),
(751, 1, 'Bongo Bazar', 1, '2021-01-20 16:52:47', '2021-01-20 16:52:47'),
(752, 1, 'Chankarpul', 1, '2021-01-20 16:53:00', '2021-01-20 16:53:00'),
(753, 1, 'Palashi', 1, '2021-01-20 17:07:59', '2021-01-20 17:07:59'),
(754, 1, 'Dhakeshwari', 1, '2021-01-20 17:12:52', '2021-01-20 17:12:52'),
(755, 1, 'Kamalapur', 1, '2021-01-20 17:13:05', '2021-01-20 17:13:05'),
(756, 1, 'Dainik Bangla Mor', 1, '2021-01-20 17:13:35', '2021-01-20 17:13:35'),
(757, 1, 'Fakirapul', 1, '2021-01-20 17:13:50', '2021-01-20 17:13:50'),
(758, 1, 'Kakrail', 1, '2021-01-20 17:14:06', '2021-01-20 17:14:06'),
(759, 1, 'Naya Paltan', 1, '2021-01-20 17:14:25', '2021-01-20 17:14:25'),
(760, 1, 'Press Club', 1, '2021-01-20 17:14:57', '2021-01-20 17:14:57'),
(761, 1, 'High Court', 1, '2021-01-20 17:15:20', '2021-01-20 17:15:20'),
(762, 1, 'Dhaka Medical', 1, '2021-01-20 17:15:44', '2021-01-20 17:15:44'),
(763, 1, 'Bongo Bondhu Avenue', 1, '2021-01-20 17:15:58', '2021-01-20 17:15:58'),
(764, 1, 'Kazi Nazrul Islam Avenue', 1, '2021-01-20 17:16:22', '2021-01-20 17:16:22'),
(765, 1, 'Shantibag', 1, '2021-01-20 17:17:23', '2021-01-20 17:17:23'),
(766, 1, 'Minto Road', 1, '2021-01-20 17:18:04', '2021-01-20 17:18:04'),
(767, 1, 'Old Elephant Road', 1, '2021-01-20 17:18:16', '2021-01-20 17:18:16'),
(768, 1, 'Eskaton Garden Road', 1, '2021-01-20 17:18:28', '2021-01-20 17:18:28'),
(769, 1, 'Eskaton', 1, '2021-01-20 17:18:42', '2021-01-20 17:18:42'),
(770, 1, 'Mouchak', 1, '2021-01-20 17:19:01', '2021-01-20 17:19:01'),
(771, 1, 'Malibag', 1, '2021-01-20 17:19:13', '2021-01-20 17:19:13'),
(772, 1, 'Shahbag', 1, '2021-01-20 17:19:33', '2021-01-20 17:19:33'),
(773, 1, 'Bashabo', 1, '2021-01-20 17:20:02', '2021-01-20 17:20:02'),
(774, 1, 'Middle Bashabo', 1, '2021-01-20 17:24:36', '2021-01-20 17:24:36'),
(775, 1, 'Goran', 1, '2021-01-20 17:25:10', '2021-01-20 17:25:10'),
(776, 1, 'Madartek', 1, '2021-01-20 17:25:21', '2021-01-20 17:25:21'),
(777, 1, 'Manik Nagar', 1, '2021-01-20 17:25:33', '2021-01-20 17:25:33'),
(778, 1, 'Banasree', 1, '2021-01-20 17:27:12', '2021-01-20 17:27:12'),
(779, 1, 'Meradia', 1, '2021-01-20 17:27:25', '2021-01-20 17:27:25'),
(780, 1, 'Khilbari Tek', 1, '2021-01-20 17:27:38', '2021-01-20 17:27:38'),
(781, 1, 'Bawaliapara', 1, '2021-01-20 17:27:50', '2021-01-20 17:27:50'),
(782, 1, 'Mughdapara', 1, '2021-01-20 17:28:01', '2021-01-20 17:28:01'),
(783, 1, 'Golapbag (Dhaka)', 1, '2021-01-20 17:28:14', '2021-01-20 17:28:14'),
(784, 1, 'Hatirjheel', 1, '2021-01-20 17:28:58', '2021-01-20 17:28:58'),
(785, 1, 'Banglamotor', 1, '2021-01-20 17:29:08', '2021-01-20 17:29:08'),
(786, 1, 'Paribag', 1, '2021-01-20 17:29:20', '2021-01-20 17:29:20'),
(787, 1, 'Bakshibazar', 1, '2021-01-20 17:29:31', '2021-01-20 17:29:31'),
(788, 1, 'Kathalbagan', 1, '2021-01-20 17:30:02', '2021-01-20 17:30:02'),
(789, 1, 'Malibagh Taltola', 1, '2021-01-20 17:30:14', '2021-01-20 17:30:14'),
(790, 1, 'Central Road', 1, '2021-01-20 17:30:25', '2021-01-20 17:30:25'),
(791, 1, 'Sabujbag', 1, '2021-01-20 17:30:38', '2021-01-20 17:30:38'),
(792, 1, 'Shiddheswari', 1, '2021-01-20 17:30:52', '2021-01-20 17:30:52'),
(793, 1, 'Shegunbagicha', 1, '2021-01-20 17:31:49', '2021-01-20 17:31:49'),
(794, 1, 'Babubazar', 1, '2021-01-20 17:32:09', '2021-01-20 17:32:09'),
(795, 1, 'Islampur(Dhaka)', 1, '2021-01-20 17:32:21', '2021-01-20 17:32:21'),
(796, 1, 'Imamgonj', 1, '2021-01-20 17:32:36', '2021-01-20 17:32:36'),
(797, 1, 'Nayabazar', 1, '2021-01-20 17:32:48', '2021-01-20 17:32:48'),
(798, 1, 'Zigatola', 1, '2021-01-20 17:33:01', '2021-01-20 17:33:01'),
(799, 1, 'Kalshi', 1, '2021-01-20 17:33:26', '2021-01-20 17:33:26'),
(800, 1, 'Dholaipar', 1, '2021-01-20 17:34:00', '2021-01-20 17:34:00'),
(801, 1, 'Monipuripara', 1, '2021-01-20 17:34:12', '2021-01-20 17:34:12'),
(802, 1, 'Bosila', 1, '2021-01-20 17:34:24', '2021-01-20 17:34:24'),
(803, 1, 'Shonir Akhra', 1, '2021-01-20 17:34:36', '2021-01-20 17:34:36'),
(804, 1, 'Bongshal', 1, '2021-01-20 17:34:59', '2021-01-20 17:34:59'),
(805, 1, 'Siddweswari', 1, '2021-01-20 17:35:11', '2021-01-20 17:35:11'),
(806, 1, 'Dokshingaon', 1, '2021-01-20 17:35:29', '2021-01-20 17:35:29'),
(807, 1, 'Joar Shahara', 1, '2021-01-20 17:35:40', '2021-01-20 17:35:40'),
(808, 1, 'Science Lab', 1, '2021-01-20 17:35:54', '2021-01-20 17:35:54'),
(809, 1, 'Sobhanbag', 1, '2021-01-20 17:36:07', '2021-01-20 17:36:07'),
(810, 1, 'ECB Chattar', 1, '2021-01-20 17:36:18', '2021-01-20 17:36:18'),
(811, 1, 'Armanitola', 1, '2021-01-20 17:36:36', '2021-01-20 17:36:36'),
(812, 1, 'Islambag', 1, '2021-01-20 17:36:48', '2021-01-20 17:36:48'),
(813, 1, 'Kamarpara', 1, '2021-01-20 17:37:02', '2021-01-20 17:37:02'),
(814, 1, 'Mitford', 1, '2021-01-20 17:37:13', '2021-01-20 17:37:13'),
(815, 1, 'Shakhari Bazar', 1, '2021-01-20 17:37:26', '2021-01-20 17:37:26'),
(816, 1, 'Katherpol', 1, '2021-01-20 17:37:38', '2021-01-20 17:37:38'),
(817, 1, 'Bangla Bazar', 1, '2021-01-20 17:38:20', '2021-01-20 17:38:20'),
(818, 1, 'Patuatuly', 1, '2021-01-20 17:38:32', '2021-01-20 17:38:32'),
(819, 1, 'Nandipara', 1, '2021-01-20 17:38:49', '2021-01-20 17:38:49'),
(820, 1, 'Nazira Bazar', 1, '2021-01-20 17:39:01', '2021-01-20 17:39:01'),
(821, 1, 'Gopibag', 1, '2021-01-20 17:39:21', '2021-01-20 17:39:21'),
(822, 1, 'Shwamibag', 1, '2021-01-20 17:39:35', '2021-01-20 17:39:35'),
(823, 1, 'Sadarghat (Dhaka)', 1, '2021-01-20 17:40:01', '2021-01-20 17:40:01'),
(824, 1, 'Kaltabazar', 1, '2021-01-20 17:40:13', '2021-01-20 17:40:13'),
(825, 1, 'Gandaria', 1, '2021-01-20 17:40:33', '2021-01-20 17:40:33'),
(826, 1, 'RayerBag', 1, '2021-01-20 17:40:45', '2021-01-20 17:40:45'),
(827, 1, 'Faridabad', 1, '2021-01-20 17:40:57', '2021-01-20 17:40:57'),
(828, 1, 'Matuail', 1, '2021-01-20 17:41:09', '2021-01-20 17:41:09'),
(829, 1, 'Donia', 1, '2021-01-20 17:41:19', '2021-01-20 17:41:19'),
(830, 1, 'Konapara', 1, '2021-01-20 17:41:40', '2021-01-20 17:41:40'),
(831, 1, 'Dhaka Uddyan', 1, '2021-01-20 17:41:55', '2021-01-20 17:41:55'),
(832, 1, 'Shekhertek', 1, '2021-01-20 17:42:07', '2021-01-20 17:42:07'),
(833, 1, 'CWH', 1, '2021-01-20 17:43:15', '2021-01-20 17:43:15'),
(834, 1, 'Mirpur Taltola', 1, '2021-01-20 17:43:28', '2021-01-20 17:43:28'),
(835, 1, 'Manda(Dhaka)', 1, '2021-01-20 17:44:03', '2021-01-20 17:44:03'),
(836, 1, 'Shahjahanpur (Dhaka)', 1, '2021-01-20 17:44:31', '2021-01-20 17:44:31'),
(837, 1, 'Haterrjheel', 1, '2021-01-20 17:44:43', '2021-01-20 17:44:43'),
(838, 1, 'Dhaka uddan', 1, '2021-01-20 17:44:54', '2021-01-20 17:44:54'),
(839, 1, 'Chad Uddan', 1, '2021-01-20 17:45:08', '2021-01-20 17:45:08'),
(840, 1, 'Mohammadia Housing', 1, '2021-01-20 17:45:23', '2021-01-20 17:45:23'),
(841, 1, 'Ring Road', 1, '2021-01-20 17:48:31', '2021-01-20 17:48:31'),
(842, 1, 'Tajmahal Road', 1, '2021-01-20 17:48:46', '2021-01-20 17:48:46'),
(843, 1, 'Nurjahan Road', 1, '2021-01-20 17:49:42', '2021-01-20 17:49:42'),
(844, 1, 'Rajia Sultana Road', 1, '2021-01-20 17:49:52', '2021-01-20 17:49:52'),
(845, 1, 'Goaltek', 1, '2021-01-20 17:50:36', '2021-01-20 17:50:36'),
(846, 1, 'Chalabon', 1, '2021-01-20 17:50:47', '2021-01-20 17:50:47'),
(847, 1, 'Azampur (East)', 1, '2021-01-20 17:51:06', '2021-01-20 17:51:06'),
(848, 1, 'Nalbhog', 1, '2021-01-20 17:51:17', '2021-01-20 17:51:17'),
(849, 1, 'Azampur (West)', 1, '2021-01-20 17:51:30', '2021-01-20 17:51:30'),
(850, 1, 'Phulbaria', 1, '2021-01-20 17:51:41', '2021-01-20 17:51:41'),
(851, 1, 'Bhatuliya', 1, '2021-01-20 17:51:59', '2021-01-20 17:51:59'),
(852, 1, 'Bamnartek', 1, '2021-01-20 17:52:11', '2021-01-20 17:52:11'),
(853, 1, 'Turag', 1, '2021-01-20 17:52:25', '2021-01-20 17:52:25'),
(854, 1, 'Kallanpur', 1, '2021-01-20 17:52:35', '2021-01-20 17:52:35'),
(855, 1, 'Lalkuthi', 1, '2021-01-20 17:52:47', '2021-01-20 17:52:47'),
(856, 1, 'Tolarbag', 1, '2021-01-20 17:53:00', '2021-01-20 17:53:00'),
(857, 1, 'Paikpara', 1, '2021-01-20 17:53:35', '2021-01-20 17:53:35'),
(858, 1, 'Pirerbag', 1, '2021-01-20 17:53:45', '2021-01-20 17:53:45'),
(859, 1, 'Taltola', 1, '2021-01-20 17:54:26', '2021-01-20 17:54:26'),
(860, 1, 'MES Colony', 1, '2021-01-20 17:54:38', '2021-01-20 17:54:38'),
(861, 1, 'Zia Colony', 1, '2021-01-20 17:54:49', '2021-01-20 17:54:49'),
(862, 1, 'Ajiz Market', 1, '2021-01-20 17:55:16', '2021-01-20 17:55:16'),
(863, 1, 'Aga Nagar', 1, '2021-01-20 17:55:28', '2021-01-20 17:55:28'),
(864, 1, 'Kunipara', 1, '2021-01-20 17:55:40', '2021-01-20 17:55:40'),
(865, 1, 'Babli Masjid', 1, '2021-01-20 17:55:54', '2021-01-20 17:55:54'),
(866, 1, 'Kaderabad Housing', 1, '2021-01-20 17:56:06', '2021-01-20 17:56:06'),
(867, 1, 'Boro Bari', 1, '2021-01-20 17:56:24', '2021-01-20 17:56:24'),
(868, 1, 'Board Bazar', 1, '2021-01-20 17:56:37', '2021-01-20 17:56:37'),
(869, 1, 'Kamarjuri', 1, '2021-01-20 17:56:52', '2021-01-20 17:56:52'),
(870, 1, 'Dattapara', 1, '2021-01-20 17:57:05', '2021-01-20 17:57:05'),
(871, 1, 'Ershadnagar', 1, '2021-01-20 17:57:19', '2021-01-20 17:57:19'),
(872, 1, 'Sataish', 1, '2021-01-20 17:57:32', '2021-01-20 17:57:32'),
(873, 1, 'Nurer Chala', 1, '2021-01-20 17:58:01', '2021-01-20 17:58:01'),
(874, 1, 'Bawaila Para', 1, '2021-01-20 17:58:13', '2021-01-20 17:58:13'),
(875, 1, 'Satarkul', 1, '2021-01-20 17:58:25', '2021-01-20 17:58:25'),
(876, 1, 'Khilbar Tek', 1, '2021-01-20 17:58:38', '2021-01-20 17:58:38'),
(877, 1, 'Buddho Mondir', 1, '2021-01-20 17:58:51', '2021-01-20 17:58:51'),
(878, 1, 'Sipahibag', 1, '2021-01-20 17:59:03', '2021-01-20 17:59:03'),
(879, 1, 'Eastern Housing', 1, '2021-01-20 17:59:24', '2021-01-20 17:59:24'),
(880, 1, 'Teskunipara', 1, '2021-01-20 17:59:37', '2021-01-20 17:59:37'),
(881, 1, 'DHAKA TENARI MORE', 1, '2021-01-20 17:59:50', '2021-01-20 17:59:50'),
(882, 1, 'Shahidnagar', 1, '2021-01-20 18:00:03', '2021-01-20 18:00:03'),
(883, 1, 'Jhigatola', 1, '2021-01-20 18:00:19', '2021-01-20 18:00:19'),
(884, 1, 'Polashi', 1, '2021-01-20 18:00:31', '2021-01-20 18:00:31'),
(885, 1, 'Satmoshjid Road', 1, '2021-01-20 18:00:44', '2021-01-20 18:00:44'),
(886, 1, 'Shukrabad', 1, '2021-01-20 18:01:58', '2021-01-20 18:01:58'),
(887, 1, 'BNP Bazar', 1, '2021-01-20 18:02:18', '2021-01-20 18:02:18'),
(888, 1, 'Kalachandpur', 1, '2021-01-20 18:03:10', '2021-01-20 18:03:10'),
(889, 1, 'Jogonnathpur', 1, '2021-01-20 18:03:53', '2021-01-20 18:03:53'),
(890, 1, 'Kuratuli', 1, '2021-01-20 18:04:30', '2021-01-20 18:04:30'),
(891, 1, 'Alatunnessa School Road', 1, '2021-01-20 18:04:46', '2021-01-20 18:04:46'),
(892, 1, 'Purbo Rampura', 1, '2021-01-20 18:04:58', '2021-01-20 18:04:58'),
(893, 1, 'Bou Bazar', 1, '2021-01-20 18:05:41', '2021-01-20 18:05:41'),
(894, 1, 'Chairman Goli', 1, '2021-01-20 18:05:54', '2021-01-20 18:05:54'),
(895, 2, 'Confidence Tower, Jhilpar', 1, '2021-01-20 18:06:09', '2021-01-20 18:06:09'),
(896, 1, 'Fuji Trade Center', 1, '2021-01-20 18:06:22', '2021-01-20 18:06:22'),
(897, 1, 'Khil Barirtek', 1, '2021-01-20 18:06:36', '2021-01-20 18:06:36'),
(898, 1, 'Korail', 1, '2021-01-20 18:06:48', '2021-01-20 18:06:48'),
(899, 1, 'Mahanogor', 1, '2021-01-20 18:07:10', '2021-01-20 18:07:10'),
(900, 1, 'Nimtola', 1, '2021-01-20 18:07:34', '2021-01-20 18:07:34'),
(901, 1, 'Nurerchala', 1, '2021-01-20 18:07:46', '2021-01-20 18:07:46'),
(902, 1, 'Pastola Bazar', 1, '2021-01-20 18:07:58', '2021-01-20 18:07:58'),
(903, 1, 'Poschim Badda', 1, '2021-01-20 18:08:13', '2021-01-20 18:08:13'),
(904, 1, 'Purbo Badda', 1, '2021-01-20 18:08:26', '2021-01-20 18:08:26'),
(905, 1, 'Sat-tola Bazar', 1, '2021-01-20 18:08:37', '2021-01-20 18:08:37'),
(906, 1, 'Shaheenbagh', 1, '2021-01-20 18:08:55', '2021-01-20 18:08:55'),
(907, 1, 'Subastu', 1, '2021-01-20 18:09:06', '2021-01-20 18:09:06'),
(908, 1, 'Satrasta', 1, '2021-01-20 18:09:21', '2021-01-20 18:09:21'),
(909, 1, 'Tekpara Adorsonagor', 1, '2021-01-20 18:09:31', '2021-01-20 18:09:31'),
(910, 1, 'Uttar Badda', 1, '2021-01-20 18:09:42', '2021-01-20 18:09:42'),
(911, 1, 'Wireless', 1, '2021-01-20 18:09:53', '2021-01-20 18:09:53'),
(912, 1, 'Solmaid', 1, '2021-01-20 18:10:05', '2021-01-20 18:10:05'),
(913, 1, '300 Feet', 1, '2021-01-20 18:10:18', '2021-01-20 18:10:18'),
(914, 1, 'Mirhazirbagh', 1, '2021-01-20 18:10:29', '2021-01-20 18:10:29'),
(915, 1, 'Mahut Tuli', 1, '2021-01-20 18:10:39', '2021-01-20 18:10:39'),
(916, 1, 'Alubazar', 1, '2021-01-20 18:10:50', '2021-01-20 18:10:50'),
(917, 1, 'Badam Toli', 1, '2021-01-20 18:11:00', '2021-01-20 18:11:00'),
(918, 1, 'Chamelibag', 1, '2021-01-20 18:11:12', '2021-01-20 18:11:12'),
(919, 1, 'Dholaikhal', 1, '2021-01-20 18:11:24', '2021-01-20 18:11:24'),
(920, 1, 'Doyagonj', 1, '2021-01-20 18:11:32', '2021-01-20 18:11:32'),
(921, 1, 'Farashgong', 1, '2021-01-20 18:11:48', '2021-01-20 18:11:48'),
(922, 1, 'Dholpur', 1, '2021-01-20 18:11:59', '2021-01-20 18:11:59'),
(923, 1, 'Kodomtoli', 1, '2021-01-20 18:12:08', '2021-01-20 18:12:08'),
(924, 1, 'Kotwali (Puran Dhaka)', 1, '2021-01-20 18:12:19', '2021-01-20 18:12:19'),
(925, 1, 'Railway Colony', 1, '2021-01-20 18:12:29', '2021-01-20 18:12:29'),
(926, 1, 'Rajar Dewri', 1, '2021-01-20 18:12:42', '2021-01-20 18:12:42'),
(927, 1, 'Sat rowja', 1, '2021-01-20 18:13:08', '2021-01-20 18:13:08'),
(928, 1, 'Tantibazar', 1, '2021-01-20 18:13:20', '2021-01-20 18:13:20'),
(929, 1, 'Rosulbagh', 1, '2021-01-20 18:13:31', '2021-01-20 18:13:31'),
(930, 1, 'College Gatev', 1, '2021-01-20 18:13:51', '2021-01-20 18:13:51'),
(931, 1, 'Badekomelosshor', 1, '2021-01-20 18:14:04', '2021-01-20 18:14:04'),
(932, 1, 'Rail Station', 1, '2021-01-20 18:14:26', '2021-01-20 18:14:26'),
(933, 1, 'Uttarkhan Mazar', 1, '2021-01-20 18:14:36', '2021-01-20 18:14:36'),
(934, 1, 'Dakshinkhan Bazar', 1, '2021-01-20 18:15:10', '2021-01-20 18:15:10'),
(935, 1, 'Ranavola', 1, '2021-01-20 18:15:43', '2021-01-20 18:15:43'),
(936, 1, 'Joynal Market', 1, '2021-01-20 18:15:55', '2021-01-20 18:15:55'),
(937, 1, 'Johura Market', 1, '2021-01-20 18:16:06', '2021-01-20 18:16:06'),
(938, 1, 'Habib Market', 1, '2021-01-20 18:16:17', '2021-01-20 18:16:17'),
(939, 1, 'BDR Market-House Building', 1, '2021-01-20 18:16:32', '2021-01-20 18:16:32'),
(940, 1, 'BDR Market-Sector 6', 1, '2021-01-20 18:16:44', '2021-01-20 18:16:44'),
(941, 1, 'Moinartek', 1, '2021-01-20 18:16:56', '2021-01-20 18:16:56'),
(942, 1, 'Atipara', 1, '2021-01-20 18:18:16', '2021-01-20 18:18:16'),
(943, 1, 'Kot Bari', 1, '2021-01-20 18:18:34', '2021-01-20 18:18:34'),
(944, 1, 'Abdullahpur', 1, '2021-01-20 18:18:44', '2021-01-20 18:18:44'),
(945, 1, 'Mollartek', 1, '2021-01-20 18:19:02', '2021-01-20 18:19:02'),
(946, 1, 'Gawair', 1, '2021-01-20 18:19:17', '2021-01-20 18:19:17'),
(947, 1, 'Kosaibari', 1, '2021-01-20 18:19:28', '2021-01-20 18:19:28'),
(948, 1, 'Prembagan', 1, '2021-01-20 18:19:40', '2021-01-20 18:19:40'),
(949, 1, 'Kachkura', 1, '2021-01-20 18:19:52', '2021-01-20 18:19:52'),
(950, 1, 'Helal Market', 1, '2021-01-20 18:20:08', '2021-01-20 18:20:08'),
(951, 1, 'Masterpara', 1, '2021-01-20 18:20:23', '2021-01-20 18:20:23'),
(952, 1, 'Munda', 1, '2021-01-20 18:20:34', '2021-01-20 18:20:34'),
(953, 1, 'Namapara-Khilkhet', 1, '2021-01-20 18:20:49', '2021-01-20 18:20:49'),
(954, 1, 'Ahalia-Uttara', 1, '2021-01-20 18:21:01', '2021-01-20 18:21:01'),
(955, 1, 'Ainusbag-Uttara', 1, '2021-01-20 18:21:13', '2021-01-20 18:21:13'),
(956, 1, 'Diabari', 1, '2021-01-20 18:21:25', '2021-01-20 18:21:25'),
(957, 1, 'Habib Market-Uttara', 1, '2021-01-20 18:25:29', '2021-01-20 18:25:29'),
(958, 1, 'Pakuria-Uttara', 1, '2021-01-20 18:26:09', '2021-01-20 18:26:09'),
(959, 1, 'Aftab Nagar', 1, '2021-01-20 18:27:29', '2021-01-20 18:27:29'),
(960, 1, 'Gulbagh', 1, '2021-01-20 18:27:40', '2021-01-20 18:27:40'),
(961, 1, 'Meradiya Bazar', 1, '2021-01-20 18:27:51', '2021-01-20 18:27:51'),
(962, 1, 'Mirbagh', 1, '2021-01-20 18:28:03', '2021-01-20 18:28:03'),
(963, 1, 'Modhubagh', 1, '2021-01-20 18:28:20', '2021-01-20 18:28:20'),
(964, 1, 'Rampura TV center', 1, '2021-01-20 18:28:30', '2021-01-20 18:28:30'),
(965, 1, 'TV gate', 1, '2021-01-20 18:28:48', '2021-01-20 18:28:48'),
(966, 1, 'Ulan road', 1, '2021-01-20 18:28:56', '2021-01-20 18:28:56'),
(967, 1, 'Gudaraghat-Mirpur', 1, '2021-01-20 18:29:08', '2021-01-20 18:29:08'),
(968, 1, 'Namapara-Mirpur', 1, '2021-01-20 18:29:20', '2021-01-20 18:29:20'),
(969, 1, 'Technical', 1, '2021-01-20 18:29:44', '2021-01-20 18:29:44'),
(970, 1, 'Beribadh-Mirpur', 1, '2021-01-20 18:30:02', '2021-01-20 18:30:02'),
(971, 1, 'Buddhijibi Road', 1, '2021-01-20 18:30:13', '2021-01-20 18:30:13'),
(972, 1, 'Rupnagor', 1, '2021-01-20 18:30:37', '2021-01-20 18:30:37'),
(973, 66, 'Savar Cantonment', 1, '2021-01-21 19:56:28', '2021-01-21 19:56:28'),
(974, 66, 'Kalatia', 1, '2021-01-21 19:56:47', '2021-01-21 19:56:47'),
(975, 66, 'Kathuria', 1, '2021-01-21 19:57:15', '2021-01-21 19:57:15'),
(976, 66, 'Goljarbag', 1, '2021-01-21 19:57:30', '2021-01-21 19:57:30'),
(977, 66, 'Nazirabag', 1, '2021-01-21 19:57:45', '2021-01-21 19:57:45'),
(978, 66, 'Nazarganj', 1, '2021-01-21 19:58:09', '2021-01-21 19:58:09'),
(979, 66, 'Zinzira', 1, '2021-01-21 19:58:26', '2021-01-21 19:58:26'),
(980, 66, 'Auchpara', 1, '2021-01-21 19:58:40', '2021-01-21 19:58:40'),
(981, 66, 'Cherag Ali', 1, '2021-01-21 19:58:54', '2021-01-21 19:58:54'),
(982, 66, 'Hasnabad', 1, '2021-01-21 19:59:48', '2021-01-21 19:59:48'),
(983, 66, 'Signboard', 1, '2021-01-21 20:00:01', '2021-01-21 20:00:01'),
(984, 65, 'Bondor (Chittagong)', 1, '2021-01-21 20:05:12', '2021-01-21 20:08:42'),
(985, 14, 'Chagalnaiya', 1, '2021-01-23 18:29:56', '2021-01-23 18:29:56'),
(986, 35, 'Terokhada', 1, '2021-01-24 15:08:26', '2021-01-24 15:08:26'),
(987, 35, 'Khulna sadar', 1, '2021-01-24 15:13:11', '2021-01-24 15:13:11'),
(988, 17, 'Daganbhuiya', 1, '2021-01-24 20:27:02', '2021-01-24 20:27:02'),
(989, 11, 'Kornelhat', 1, '2021-01-31 22:15:34', '2021-01-31 22:15:34'),
(990, 43, 'Sadar', 1, '2021-02-02 20:11:12', '2021-02-02 20:11:12'),
(991, 65, 'Muradpur', 1, '2021-04-10 15:25:15', '2021-04-10 15:25:15'),
(992, 65, 'bahaddarhat', 1, '2021-04-10 15:25:47', '2021-04-10 15:25:47'),
(993, 20, 'Mawna', 1, '2021-06-23 22:41:15', '2021-06-23 22:41:15'),
(994, 33, 'Benapol', 1, '2021-06-28 23:57:21', '2021-06-28 23:57:21'),
(995, 65, 'Kalur Gat', 1, '2021-08-28 07:24:48', '2021-08-28 07:24:48'),
(996, 1, 'shyamoli', 1, '2022-08-01 03:35:38', '2022-08-01 03:35:38'),
(997, 63, 'tahirpur', 1, '2022-08-01 04:11:22', '2022-08-01 04:11:22'),
(998, 67, 'Dhamrai', 1, '2022-08-30 06:24:24', '2022-08-30 06:24:24'),
(999, 1, '60 feet', 1, '2022-09-05 17:00:09', '2022-09-05 17:00:09'),
(1000, 26, 'Siddhirganj', 1, '2022-09-23 14:05:09', '2022-09-23 14:05:09'),
(1001, 65, 'Chakbazar', 1, '2023-01-26 09:12:19', '2023-01-26 09:12:19'),
(1002, 10, 'Shahrasti', 1, '2023-04-05 14:17:44', '2023-04-05 14:17:44'),
(1003, 26, 'Fatulla', 1, '2023-04-05 15:24:42', '2023-04-05 15:24:42'),
(1004, 20, 'Kashempur', 1, '2023-04-05 15:39:20', '2023-04-05 15:39:20'),
(1005, 27, 'Madhabdi', 1, '2023-04-05 16:55:24', '2023-04-05 16:55:24'),
(1006, 1, 'Uttara Sector-18', 1, '2023-04-06 07:37:03', '2023-04-06 07:38:20'),
(1007, 15, 'Dighinala', 1, '2023-04-08 06:06:45', '2023-04-08 06:06:45'),
(1008, 63, 'Dowarabazar', 1, '2023-04-09 16:32:12', '2023-04-09 16:32:12'),
(1009, 17, 'Maijdee', 1, '2023-04-11 15:09:47', '2023-04-11 15:09:47'),
(1010, 64, 'Habiganj', 1, '2023-04-12 15:11:07', '2023-04-12 15:11:07'),
(1011, 20, 'Tongi', 1, '2023-04-13 16:47:53', '2023-04-13 16:47:53'),
(1012, 20, 'joydebpur', 1, '2023-04-16 15:49:09', '2023-04-16 15:49:09'),
(1013, 20, 'konabar', 1, '2023-04-16 16:31:38', '2023-04-16 16:31:38'),
(1014, 63, 'Duara bazar', 1, '2023-04-17 14:19:20', '2023-04-17 14:19:20'),
(1015, 61, 'Shayestaganj', 1, '2023-04-19 04:46:43', '2023-04-19 04:46:43'),
(1016, 17, 'Chowmuhani', 1, '2023-04-28 05:58:10', '2023-04-28 05:58:10'),
(1017, 61, 'Hobiganj sadar', 1, '2023-04-28 10:29:49', '2023-04-28 10:29:49'),
(1018, 51, 'Rajpara', 1, '2023-04-28 11:51:58', '2023-04-28 11:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int NOT NULL,
  `subcategory_id` int NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL,
  `show_homepage` int NOT NULL DEFAULT '1',
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `discount_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `type` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_notes`
--

CREATE TABLE `supplier_notes` (
  `id` bigint UNSIGNED NOT NULL,
  `supplier_id` int NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_payments`
--

CREATE TABLE `supplier_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `supplier_id` int NOT NULL,
  `purchase_id` int DEFAULT NULL,
  `amount` int NOT NULL,
  `date` date NOT NULL,
  `paid_by` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `password` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',
  `address` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `city_id` int DEFAULT NULL,
  `sub_city_id` int DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `token` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `name`, `attribute_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'M', 1, 1, '2024-02-17 10:59:54', '2024-02-17 10:59:54'),
(2, 'L', 1, 1, '2024-02-17 11:00:02', '2024-02-17 11:00:02'),
(3, 'XXL', 1, 1, '2024-02-17 11:00:35', '2024-02-17 11:00:35'),
(4, 'XL', 1, 1, '2024-02-17 11:00:46', '2024-02-17 11:00:46'),
(5, 'BLUE', 2, 1, '2024-02-17 11:01:00', '2024-02-17 11:01:00'),
(6, 'BLACK', 2, 1, '2024-02-17 11:01:09', '2024-02-17 11:01:09'),
(7, 'WHITE', 2, 1, '2024-02-17 11:01:23', '2024-02-17 11:01:23'),
(8, 'GREEN', 2, 1, '2024-02-17 11:02:05', '2024-02-17 11:02:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_and_contacts`
--
ALTER TABLE `about_and_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_purposes`
--
ALTER TABLE `account_purposes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_name_unique` (`name`);

--
-- Indexes for table `background_and_colors`
--
ALTER TABLE `background_and_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balances`
--
ALTER TABLE `balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balance_transfers`
--
ALTER TABLE `balance_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_paid_statements`
--
ALTER TABLE `bill_paid_statements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_per_months`
--
ALTER TABLE `bill_per_months`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_statements`
--
ALTER TABLE `bill_statements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buy_one_get_one_offers`
--
ALTER TABLE `buy_one_get_one_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_products`
--
ALTER TABLE `campaign_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_sliders`
--
ALTER TABLE `campaign_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carriers`
--
ALTER TABLE `carriers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_sliders`
--
ALTER TABLE `category_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `combo_products`
--
ALTER TABLE `combo_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_assets`
--
ALTER TABLE `company_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_sale_paids`
--
ALTER TABLE `company_sale_paids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cupons_code_unique` (`code`);

--
-- Indexes for table `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_dues`
--
ALTER TABLE `credit_dues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_dues`
--
ALTER TABLE `customer_dues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_due_paids`
--
ALTER TABLE `customer_due_paids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `debits`
--
ALTER TABLE `debits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `director_payments`
--
ALTER TABLE `director_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `director_refunds`
--
ALTER TABLE `director_refunds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_salaries`
--
ALTER TABLE `employee_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deals`
--
ALTER TABLE `flash_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fond_transfers`
--
ALTER TABLE `fond_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_settings`
--
ALTER TABLE `footer_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investments`
--
ALTER TABLE `investments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investment_returns`
--
ALTER TABLE `investment_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investors`
--
ALTER TABLE `investors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investor_profit_paids`
--
ALTER TABLE `investor_profit_paids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applies`
--
ALTER TABLE `job_applies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loaners`
--
ALTER TABLE `loaners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_paids`
--
ALTER TABLE `loan_paids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchants`
--
ALTER TABLE `merchants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_name` (`company_name`);

--
-- Indexes for table `merchant_cashbooks`
--
ALTER TABLE `merchant_cashbooks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cashbooks_invoice_no_unique` (`invoice_no`),
  ADD KEY `cashbooks_supplier_id_foreign` (`merchant_id`),
  ADD KEY `cashbooks_order_id_foreign` (`order_id`),
  ADD KEY `cashbooks_payment_method_id_foreign` (`payment_method_id`);

--
-- Indexes for table `merchant_payment_transactions`
--
ALTER TABLE `merchant_payment_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `occasion_products`
--
ALTER TABLE `occasion_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_payment`
--
ALTER TABLE `orders_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_barcodes`
--
ALTER TABLE `order_barcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_shipment_and_return_policies`
--
ALTER TABLE `order_shipment_and_return_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_verifications`
--
ALTER TABLE `otp_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parallax_banners`
--
ALTER TABLE `parallax_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `print_houses`
--
ALTER TABLE `print_houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `print_house_payments`
--
ALTER TABLE `print_house_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_barcodes`
--
ALTER TABLE `product_barcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_for_prints`
--
ALTER TABLE `product_for_prints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_stock_transfers`
--
ALTER TABLE `product_stock_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prop_up_banners`
--
ALTER TABLE `prop_up_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receieve_printed_products`
--
ALTER TABLE `receieve_printed_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resellers`
--
ALTER TABLE `resellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reseller_cashbooks`
--
ALTER TABLE `reseller_cashbooks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cashbooks_invoice_no_unique` (`invoice_no`),
  ADD KEY `cashbooks_supplier_id_foreign` (`reseller_id`),
  ADD KEY `cashbooks_order_id_foreign` (`order_id`),
  ADD KEY `cashbooks_payment_method_id_foreign` (`payment_method_id`);

--
-- Indexes for table `reseller_order_details`
--
ALTER TABLE `reseller_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reseller_payments`
--
ALTER TABLE `reseller_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reseller_payment_transactions`
--
ALTER TABLE `reseller_payment_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reseller_site_infos`
--
ALTER TABLE `reseller_site_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reselling_rules`
--
ALTER TABLE `reselling_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reselling_services`
--
ALTER TABLE `reselling_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reselling_sliders`
--
ALTER TABLE `reselling_sliders`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `salary_per_months`
--
ALTER TABLE `salary_per_months`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seasonal_products`
--
ALTER TABLE `seasonal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_cities`
--
ALTER TABLE `sub_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_notes`
--
ALTER TABLE `supplier_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_payments`
--
ALTER TABLE `supplier_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_and_contacts`
--
ALTER TABLE `about_and_contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_purposes`
--
ALTER TABLE `account_purposes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `background_and_colors`
--
ALTER TABLE `background_and_colors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `balances`
--
ALTER TABLE `balances`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `balance_transfers`
--
ALTER TABLE `balance_transfers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_paid_statements`
--
ALTER TABLE `bill_paid_statements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_per_months`
--
ALTER TABLE `bill_per_months`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_statements`
--
ALTER TABLE `bill_statements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buy_one_get_one_offers`
--
ALTER TABLE `buy_one_get_one_offers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_products`
--
ALTER TABLE `campaign_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_sliders`
--
ALTER TABLE `campaign_sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carriers`
--
ALTER TABLE `carriers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category_sliders`
--
ALTER TABLE `category_sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `combo_products`
--
ALTER TABLE `combo_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_assets`
--
ALTER TABLE `company_assets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_sale_paids`
--
ALTER TABLE `company_sale_paids`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `credits`
--
ALTER TABLE `credits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credit_dues`
--
ALTER TABLE `credit_dues`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_dues`
--
ALTER TABLE `customer_dues`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_due_paids`
--
ALTER TABLE `customer_due_paids`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `debits`
--
ALTER TABLE `debits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `director_payments`
--
ALTER TABLE `director_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `director_refunds`
--
ALTER TABLE `director_refunds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_salaries`
--
ALTER TABLE `employee_salaries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_deals`
--
ALTER TABLE `flash_deals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fond_transfers`
--
ALTER TABLE `fond_transfers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footer_settings`
--
ALTER TABLE `footer_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `investments`
--
ALTER TABLE `investments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investment_returns`
--
ALTER TABLE `investment_returns`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investors`
--
ALTER TABLE `investors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investor_profit_paids`
--
ALTER TABLE `investor_profit_paids`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_applies`
--
ALTER TABLE `job_applies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loaners`
--
ALTER TABLE `loaners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_paids`
--
ALTER TABLE `loan_paids`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchants`
--
ALTER TABLE `merchants`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchant_cashbooks`
--
ALTER TABLE `merchant_cashbooks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchant_payment_transactions`
--
ALTER TABLE `merchant_payment_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `occasion_products`
--
ALTER TABLE `occasion_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders_payment`
--
ALTER TABLE `orders_payment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_barcodes`
--
ALTER TABLE `order_barcodes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_shipment_and_return_policies`
--
ALTER TABLE `order_shipment_and_return_policies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otp_verifications`
--
ALTER TABLE `otp_verifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `parallax_banners`
--
ALTER TABLE `parallax_banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `print_houses`
--
ALTER TABLE `print_houses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `print_house_payments`
--
ALTER TABLE `print_house_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_barcodes`
--
ALTER TABLE `product_barcodes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_for_prints`
--
ALTER TABLE `product_for_prints`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_stock_transfers`
--
ALTER TABLE `product_stock_transfers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `prop_up_banners`
--
ALTER TABLE `prop_up_banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receieve_printed_products`
--
ALTER TABLE `receieve_printed_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resellers`
--
ALTER TABLE `resellers`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reseller_cashbooks`
--
ALTER TABLE `reseller_cashbooks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reseller_order_details`
--
ALTER TABLE `reseller_order_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reseller_payments`
--
ALTER TABLE `reseller_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reseller_payment_transactions`
--
ALTER TABLE `reseller_payment_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reseller_site_infos`
--
ALTER TABLE `reseller_site_infos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reselling_rules`
--
ALTER TABLE `reselling_rules`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reselling_services`
--
ALTER TABLE `reselling_services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reselling_sliders`
--
ALTER TABLE `reselling_sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `salary_per_months`
--
ALTER TABLE `salary_per_months`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seasonal_products`
--
ALTER TABLE `seasonal_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_cities`
--
ALTER TABLE `sub_cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1019;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_notes`
--
ALTER TABLE `supplier_notes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_payments`
--
ALTER TABLE `supplier_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

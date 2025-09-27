-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 06, 2024 at 11:32 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seo_friendly_laravel_main_web_db`
--

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
(83, 'Ponno Khuji', 'images/admin/ceAxN1v31Om41fwcYZYdhY6WexHX3JpRbZTeGhKU.jpg', 'demo@admin.com', '$2y$10$hIky/E8gja6EgnCBCOlm3uM27Nq0MO7OHPiTrksS42RfJL8Sz.BGa', NULL, 1, '2024-06-06 08:09:03', '2023-12-02 10:20:54', NULL, '2023-04-09 04:31:01', '2024-06-06 14:09:03');

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
(1, 'Cash', '2021-12-26 23:03:24', '2024-05-05 08:04:00'),
(2, 'Bank DBBL', '2021-12-26 23:04:09', '2021-12-26 23:04:09'),
(4, 'Bkash Parsonal', '2021-12-26 23:04:42', '2021-12-26 23:04:42'),
(5, 'Nagod Parsonal', '2021-12-26 23:05:08', '2021-12-26 23:05:08'),
(6, 'Bkash(merchant)', '2022-01-15 05:58:33', '2022-01-15 05:58:33'),
(7, 'Bank(SIBL)', '2022-02-06 20:30:48', '2022-02-06 20:30:48'),
(8, 'BRAC BANK', '2022-12-28 07:28:22', '2022-12-28 07:28:22'),
(10, 'Amar Pay', '2024-05-06 05:57:40', '2024-05-06 05:57:40');

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
-- Table structure for table `benefits`
--

CREATE TABLE `benefits` (
  `id` int NOT NULL,
  `landing_page_id` int NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `position` int DEFAULT '0',
  `status` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `benefits`
--

INSERT INTO `benefits` (`id`, `landing_page_id`, `title`, `description`, `position`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'ত্বকের যত্ন', 'শীতকালে প্রাকৃতিক নিয়মেই ত্বক শুষ্ক হয়ে যায়। এই সময় নিয়মিত খেজুর খেলে ত্বককে শুষ্কতার হাত থেকে বাঁচায়। ত্বকের নানা সমস্যা থেকেও খেজুর মুক্তি দেয়। ত্বকের বলি রেখা নিয়ন্ত্রণ করতেও খেজুর সিদ্ধহস্ত।', 0, 1, '2023-11-14 10:47:31', '2023-11-14 10:47:31'),
(3, 1, 'হাঁপানির যম', 'বয়স্ক মানুষের হাঁপানির সমস্যার বেশি ।আবহাওয়া পরিবর্তনের ফলে শীতকালে বহু মানুষ হাঁপানিতে কষ্ট পান। চিকিৎসক এবং আয়ুর্বেদ বিশেষজ্ঞদের মতে, সকালে এবং সন্ধ্যায় এক বা দুইটি করে খেজুর খেলে একদিকে যেমন শরীর গরম থাকে তেমনই হাঁপানি নিয়ন্ত্রণে থাকে।', 0, 1, '2023-11-14 10:47:44', '2023-11-14 10:47:44'),
(4, 1, 'শারীরিক সক্ষমতা বৃদ্ধি', '🦾প্রতিদিন ৩ টা গাছ পাকা সুক্কারি খেজুর​ = ১০ গুন এনার্জি 💑দুর্বল পুরুষ ও নব দম্পতি দের জন্য সুপার বুস্টার 🦵 শীতে শরীরর দুর্বল অনুভুত হয় খেজুর খেলে আনেকটাই বৃদ্ধি পায় ।', 0, 1, '2023-11-14 10:47:58', '2023-11-14 10:47:58'),
(5, 1, 'হার্ট ভালো রাখে', '🛌শীতকালে শরীরের তাপমাত্রা স্বাভাবিক রাখতে সাহায্য করে এই খেজুর। ♥ শীতকালে হৃদপিণ্ড ঠিক ভালো রাখতে নিয়মিত খেজুর খান। হার্ট অ্যাটাকের প্রবণতা কমাতে খেজুর দারুণ কাজ দেয়। আবার কিছু গবেষকের দাবি, খেজুরে উপস্থিত ফাইবার শরীরের কোলেস্টরল নিয়ন্ত্রণ করে এবং হার্টকে সুস্থ রাখে। {সময় নিউজ}', 0, 1, '2023-11-14 10:48:11', '2023-11-14 10:48:11'),
(6, 1, 'ঠান্ডা-কাশি হ্রাস করে', 'বিশেষ করে শীতকালে ঠান্ডা-কাশি কমন একটা রোগ । শিশু থেকে বৃদ্ধ এই শীতে শরীর গরম বা এনার্জেটিক রাখার জন্য প্রয়োজন সঠিক খাবার নির্বাচন করা। এদিক থেকে খেজুর খেজুরে থাকে প্রচুর পরিমাণে ফাইবার, আয়রন, ভিটামিন এবং ম্যাগনেসিয়াম। শরীরকে উষ্ণ রাখতে এই জিনিসগুলো দারুণ উপাদেয়। { সময় নিউজ}', 0, 1, '2023-11-14 10:48:24', '2024-05-29 05:00:02'),
(7, 2, 'বাজারের সেরা ড্রেস কোয়ালিটী পাচ্ছেন', 'বাজারের সেরা ড্রেস কোয়ালিটী পাচ্ছেন বাজারের সেরা ড্রেস কোয়ালিটী পাচ্ছেন বাজারের সেরা ড্রেস কোয়ালিটী পাচ্ছেন বাজারের সেরা ড্রেস কোয়ালিটী পাচ্ছেন বাজারের সেরা ড্রেস কোয়ালিটী পাচ্ছেন', 0, 1, '2023-12-25 15:00:26', '2024-01-10 17:24:52'),
(8, 2, 'বাজারের সেরা ড্রেস কোয়ালিটী পাচ্ছেন', 'অনেক সুন্দর', 0, 1, '2024-01-10 17:24:31', '2024-01-10 17:24:31'),
(9, 3, 'Huge benefits', 'This product has huge benefits for mens fashion', 0, 1, '2024-01-31 11:00:50', '2024-01-31 11:00:50'),
(11, 1, 'কোষ্ঠকাঠিন্যের', '👉🏼 কোষ্ঠকাঠিন্যের সমস্যায় রাতে পানিতে খেজুর ভিজিয়ে রাখুন। পর দিন সকালে খেজুর ভেজানো পানি পান করুন। দূর হবে কোষ্ঠকাঠিন্য। 👉🏼 উন্নত মস্তিষ্কের কার্যকারিতা: সুক্কারি খেজুরে ভিটামিন এবং খনিজ রয়েছে যা মস্তিষ্কের কার্যকারিতার জন্য গুরুত্বপূর্ণ,', 0, 1, '2024-05-29 05:24:06', '2024-05-29 05:24:06');

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
(1, 'Mens Fashion', 'mens-fashion', 'images/category/aJj5nzVpU1EezurTNmPZzhZwYncReVusQmZ1scgA.png', 1, 1, NULL, 'null', 'null', 'null', 'null', '2024-02-17 10:33:08', '2024-05-05 07:44:03'),
(2, 'Women\'s Fashion', 'womens-fashion', 'images/category/3rXWf3BqKkNA0DBSOJWHcmM4Ge1ASTjDKqKf9Spb.png', 1, 1, 2, 'null', 'null', 'null', 'null', '2024-02-17 10:42:53', '2024-05-01 06:14:03'),
(3, 'Kids Zone', 'kids-zone', 'images/category/0clpvjeQyybCEYFyD2EdeyZwIm1mQ8DwMIiewDkH.png', 1, 1, 3, 'null', 'null', 'null', 'null', '2024-02-17 10:43:17', '2024-05-01 06:12:42'),
(4, 'Winter Collection', 'winter-collection', 'images/category/Yr2TKZKXxRgvxxby86Jkmw3LCjRWtHx6D38VXgz6.png', 1, 1, 4, 'null', 'null', 'null', 'null', '2024-02-17 10:43:35', '2024-05-01 06:06:13');

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
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_charge` int NOT NULL DEFAULT '120',
  `status` int NOT NULL DEFAULT '1',
  `pathao_city_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `delivery_charge`, `status`, `pathao_city_id`, `created_at`, `updated_at`) VALUES
(1, 'Bagerhat', 120, 1, 52, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(2, 'Bandarban ', 120, 1, 62, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(3, 'Barguna ', 120, 1, 34, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(4, 'Barisal', 120, 1, 17, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(5, 'B. Baria', 120, 1, 32, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(6, 'Bhola', 120, 1, 53, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(7, 'Bogra', 120, 1, 9, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(8, 'Chandpur', 120, 1, 8, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(9, 'Chapainawabganj', 120, 1, 15, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(10, 'Chittagong', 120, 1, 2, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(11, 'Chuadanga', 120, 1, 61, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(12, 'Cox\'s Bazar', 120, 1, 11, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(13, 'Cumilla', 120, 1, 5, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(14, 'Dhaka', 60, 1, 1, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(15, 'Dinajpur', 120, 1, 35, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(16, 'Faridpur', 120, 1, 18, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(17, 'Feni', 120, 1, 6, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(18, 'Gaibandha', 120, 1, 38, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(19, 'Gazipur', 100, 1, 22, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(20, 'Gopalgonj ', 120, 1, 56, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(21, 'Habiganj', 120, 1, 30, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(22, 'Jamalpur', 120, 1, 41, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(23, 'Jashore', 120, 1, 19, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(24, 'Jhalokathi', 120, 1, 27, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(25, 'Jhenidah', 120, 1, 49, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(26, 'Joypurhat', 120, 1, 48, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(27, 'Khagrachari', 120, 1, 63, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(28, 'Khulna', 120, 1, 20, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(29, 'Kishoreganj', 120, 1, 42, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(30, 'Kurigram ', 120, 1, 55, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(31, 'Kushtia', 120, 1, 28, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(32, 'Lakshmipur', 120, 1, 40, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(33, 'Lalmonirhat ', 120, 1, 57, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(34, 'Madaripur', 120, 1, 43, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(35, 'Magura ', 120, 1, 60, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(36, 'Manikganj', 120, 1, 16, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(37, 'Meherpur', 120, 1, 50, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(38, 'Moulvibazar', 120, 1, 12, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(39, 'Munsiganj', 120, 1, 23, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(40, 'Mymensingh', 120, 1, 26, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(41, 'Naogaon', 120, 1, 46, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(42, 'Narail ', 120, 1, 54, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(43, 'Narayanganj', 100, 1, 21, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(44, 'Narshingdi', 120, 1, 47, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(45, 'Natore', 120, 1, 14, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(46, 'Netrakona', 120, 1, 44, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(47, 'Nilphamari', 120, 1, 39, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(48, 'Noakhali', 120, 1, 7, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(49, 'Pabna', 120, 1, 24, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(50, 'Panchagarh', 120, 1, 37, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(51, 'Patuakhali', 120, 1, 29, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(52, 'Pirojpur', 120, 1, 31, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(53, 'Rajbari ', 120, 1, 58, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(54, 'Rajshahi', 120, 1, 4, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(55, 'Rangamati ', 120, 1, 59, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(56, 'Rangpur', 120, 1, 25, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(57, 'Satkhira', 120, 1, 51, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(58, 'Shariatpur ', 120, 1, 64, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(59, 'Sherpur', 120, 1, 33, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(60, 'Sirajganj', 120, 1, 10, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(61, 'Sunamganj', 120, 1, 45, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(62, 'Sylhet', 120, 1, 3, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(63, 'Tangail', 120, 1, 13, '2024-05-10 12:27:50', '2024-05-10 12:27:50'),
(64, 'Thakurgaon ', 120, 1, 36, '2024-05-10 12:27:50', '2024-05-10 12:27:50');

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

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `start_date`, `expire_date`, `discount_type`, `discount_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test', '2024-05-15', '2024-06-01', 'percentage', 10, 1, '2024-05-18 07:22:36', '2024-05-18 07:23:01');

-- --------------------------------------------------------

--
-- Table structure for table `couriers`
--

CREATE TABLE `couriers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `couriers`
--

INSERT INTO `couriers` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Paperfly', 'paperfly', 0, '2020-09-21 20:09:46', '2023-03-20 13:06:57'),
(2, 'S A Paribahan', 's_a_paribahan', 0, '2020-09-21 20:10:02', '2023-03-20 13:06:52'),
(3, 'Kortoa Courier Service (KCS)', 'kortoa_courier_service', 0, '2020-09-21 20:10:16', '2023-03-20 13:06:47'),
(4, 'Janani Courier', 'janani_courier', 0, '2020-09-21 20:10:31', '2023-03-20 13:06:38'),
(5, 'Mohasagor Express', 'mohasagor_express', 0, '2020-09-21 20:10:43', '2022-10-06 07:52:57'),
(6, 'Mr. Peon', 'mr_peon', 0, '2020-12-02 07:18:07', '2022-10-06 07:51:46'),
(7, 'Pathao', 'pathao', 1, '2020-12-02 13:10:39', '2023-03-20 13:05:53'),
(8, 'SR Courier', 'sr_courier', 0, '2020-12-02 13:10:57', '2023-03-20 13:06:30'),
(9, 'Ahmad Parcel', 'ahmad_parcel', 0, '2020-12-02 13:13:14', '2023-03-20 13:06:27'),
(10, 'Bangladesh Parcel', 'bangladesh_parcel', 0, '2020-12-14 09:43:43', '2023-03-20 13:06:24'),
(11, 'RedX', 'redx', 1, '2020-12-24 19:00:14', '2024-05-27 14:36:38'),
(12, 'Delivery Tiger', 'delivery_tiger', 0, '2021-04-24 20:25:59', '2022-10-06 07:51:37'),
(13, 'Sundarban Courier', 'sundarban_courier', 1, '2022-10-06 07:52:35', '2022-10-06 09:53:16'),
(14, 'steadfast', 'stead_fast', 1, '2023-04-07 05:47:57', '2023-04-07 05:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `courier_apis`
--

CREATE TABLE `courier_apis` (
  `id` bigint UNSIGNED NOT NULL,
  `steadfast_api_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `steadfast_secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pathao_client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pathao_client_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pathao_store_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pathao_client_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pathao_client_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pathao_access_token` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `redx_store_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redx_access_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courier_apis`
--

INSERT INTO `courier_apis` (`id`, `steadfast_api_key`, `steadfast_secret_key`, `pathao_client_id`, `pathao_client_secret`, `pathao_store_id`, `pathao_client_email`, `pathao_client_password`, `pathao_access_token`, `redx_store_id`, `redx_access_token`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '', '', NULL, '', '', '', NULL, NULL, NULL, '2024-06-05 08:49:10');

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
  `status` int NOT NULL DEFAULT '1' COMMENT '1-Active, 0-DeActive, 2-Regular, 3-Vip, 4-Fraud',
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `city_id` int DEFAULT NULL,
  `sub_city_id` int DEFAULT NULL,
  `customer_type` int DEFAULT NULL,
  `total_order` int NOT NULL DEFAULT '0',
  `ip_address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `remember_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `user_id`, `phone`, `password`, `status`, `email`, `image`, `address`, `city_id`, `sub_city_id`, `customer_type`, `total_order`, `ip_address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Waliul Hasan', 0, '01644954478', '$2y$10$NpHDjLUoovgzj8X7CrYuDeegjAtf3WaQYzPej4XTXSEEr27DF6UtO', 3, NULL, NULL, 'sdadsad', NULL, NULL, 1, 3, NULL, NULL, '2024-06-05 12:34:54', '2024-06-06 08:09:28'),
(2, 'Zumon Hossain', 0, '01521584922', '$2y$10$JSQHuFkLo38XKZmRQwW0HOgIa/fqkcl0B9TP9ClbVFNZNy8dIVj3K', 1, NULL, NULL, 'dsaada', NULL, NULL, 1, 1, '127.0.0.1', NULL, '2024-06-05 12:41:55', '2024-06-05 12:41:55');

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
(1, 'images/general_setting/pBzabHsgCn34Yl0AIQCd80B8WYLPQA1kgatPIDq4.png', 'Demo.com', 'images/general_setting/CQ7bSVj7hENzd4yHVv9hVDluehKKQRSUrPF68bcl.png', NULL, '01000000000', '01000000000', '01000000000', 2, '<p>Office:</p><p>Phone:<strong> </strong>01000000000</p>', NULL, 1, NULL, NULL, NULL, NULL, NULL, '+8801000000000', NULL, NULL, NULL, 'no', 'no', 'Meta title', 'Meta description', 'Meta keywords', 'Elevate Your Style with demo.com - Unleash the latest fashion trends at your fingertips. Discover curated collections, timeless pieces, and exclusive designs that redefine your wardrobe. Embrace the fusion of elegance and innovation. Shop with confidence, shop with Us', '2021-01-10 05:29:08', '2024-05-01 06:17:22');

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
-- Table structure for table `landing_pages`
--

CREATE TABLE `landing_pages` (
  `id` int NOT NULL,
  `page_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `page_slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `main_banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `main_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `hotline_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `hotline_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hotline_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `video_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `video_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `video_title_two` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `video_title_three` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `video_url_two` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `video_url_three` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `why_us_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `why_us_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `solution_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `benefit_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `benefit_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `status` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `landing_pages`
--

INSERT INTO `landing_pages` (`id`, `page_name`, `page_slug`, `main_banner`, `main_title`, `hotline_title`, `hotline_phone`, `hotline_image`, `video_title`, `video_url`, `video_title_two`, `video_title_three`, `video_url_two`, `video_url_three`, `why_us_title`, `why_us_description`, `solution_title`, `benefit_title`, `benefit_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'honey', 'honey', 'images/page/ypBH2a8a6dzuOhOn62hKdPD9U3fV2eS7P4kKu2qD.png', 'পুষ্টিগুণ বৃদ্ধি মধুময় বাদাম সেবনে অসংখ্য রোগবালাই থেকে পরিত্রাণ পাওয়া যায়', 'যে কোন প্রয়োজনে কল করুন', '01000000000', 'images/page/lGhzm1sHCQ9JTM12oY0ktRNcWsZRoXc8VzHYoude.png', '[ আখরোট ] কোলস্টেরল , ডায়াবেটি সহ ২০+ সমস্যার জন্য আখরোট কেনো খাবেন ?', 'https://www.youtube.com/embed/OJY6p3JQhDo?si=VR_GTUxlWHb3pG8G', NULL, NULL, NULL, NULL, NULL, '<h2><strong>ফ্রি হোম ডেলিভারি সুবিধা।</strong></h2><h2><strong>১০০% অরিজিনাল মধু ক্যাশব্যাক গ্যারান্টি</strong></h2><h2><strong>প্রোডাক্ট হাতে পেয়ে কোয়ালিটি যাচাই করে পেমেন্ট করার সুবিধা।</strong></h2><h2><strong>আমরা সুন্নত তরিকায় ব্যবসা করি</strong></h2><h2><strong>ফ্রি হেলথ টিপস ।</strong></h2>', 'মধুময় বাদাম খাওয়া ফলে যে সকল সমস্যার সমাধান করবে', 'প্রতিদিন দুই চামচ মধুময় বাদাম আপনার উপকার করবে', 'images/page/PLgrxSi46JYI3fxQdYIm6NUSIIqAklvyIuNjg7nf.png', 1, '2023-11-14 10:39:31', '2024-01-02 07:10:20');

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
  `wfp_admin_id` int DEFAULT NULL,
  `wfp_date` timestamp NULL DEFAULT NULL,
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
  `tracking_id` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redx_delivery_area_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_no`, `order_type`, `customer_id`, `customer_phone`, `city_id`, `sub_city_id`, `select_area`, `courier_id`, `shipping_cost`, `discount`, `paid`, `paid_by`, `total`, `status`, `print_status`, `memo_no`, `create_admin_id`, `pending_admin_id`, `pending_date`, `approved_admin_id`, `approved_date`, `wfp_admin_id`, `wfp_date`, `packaging_admin_id`, `packaging_date`, `shipment_admin_id`, `shippment_date`, `delivered_admin_id`, `delivery_date`, `cancel_admin_id`, `cancel_date`, `return_admin_id`, `return_date`, `reseller_id`, `comment`, `coupon_id`, `coupon_disocunt`, `note`, `tracking_id`, `redx_delivery_area_id`, `created_at`, `updated_at`) VALUES
(1, 124, 1, 1, '01644954478', 13, 447, NULL, NULL, 120, 0, 0, NULL, 700, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-05 12:34:54', '2024-06-05 12:34:54'),
(2, 125, 1, 2, '01521584922', 16, 477, NULL, NULL, 120, 0, 0, NULL, 400, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-05 12:41:55', '2024-06-05 12:41:55'),
(3, 126, 1, 1, '01644954478', NULL, NULL, NULL, NULL, 60, 0, 0, NULL, 200, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-06 06:31:16', '2024-06-06 06:31:16'),
(4, 127, 1, 1, '01644954478', NULL, NULL, NULL, NULL, 60, 0, 0, NULL, 1700, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-06 07:47:16', '2024-06-06 07:47:16'),
(5, 128, 1, 1, '01644954478', NULL, NULL, NULL, NULL, 120, 0, 0, NULL, 400, 6, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 83, '2024-06-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-06 08:08:49', '2024-06-06 08:09:28');

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
(1, 1, 1, 700, 1, 700, 'L', NULL, '0', 1, '2024-06-05 12:34:54', '2024-06-05 12:34:54'),
(2, 2, 3, 400, 1, 400, 'M', NULL, '0', 1, '2024-06-05 12:41:55', '2024-06-05 12:41:55'),
(3, 3, 3, 200, 1, 200, 'L', NULL, '0', 1, '2024-06-06 06:31:16', '2024-06-06 06:31:16'),
(4, 4, 2, 1700, 1, 1700, '44', NULL, '0', 1, '2024-06-06 07:47:16', '2024-06-06 07:47:16'),
(5, 5, 3, 200, 2, 400, 'L', NULL, '0', 1, '2024-06-06 08:08:49', '2024-06-06 08:08:49');

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
(1, 'About us', 'about-us', '<p>About us</p>', 1, '2024-05-23 11:14:29', '2024-05-23 11:14:29');

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
(1, 'Standard Quality Solid Oxford Cotton Shirt', NULL, 1, 1, NULL, NULL, '1000', 'images/product_thumbnail_img/thumbnail_1717576171_9953.jpg', 'standard-quality-solid-oxford-cotton-shirt-1000', 1, 101, 550, 200, 750, 0, 1, 1, 0, 0, '<p><strong>Standard Quality Solid Oxford Cotton Shirt</strong></p><ul><li>Size: M, L, XL.XXL</li><li>M= Length-28\" Chest- 38\",</li><li>L= Length-29\" Chest- 40\",</li><li>XL= Length-30\" Chest- 42\",</li><li>XXL= Length-31\" Chest- 44\",</li><li>Fabrics:Oxford Cotton</li><li>Fashionable &amp; Comfortable</li></ul>', NULL, 1, 1, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-05-22 12:48:49', '2024-06-05 08:29:31'),
(2, '𝐌𝐄𝐍\'𝐒 𝐒𝐓𝐑𝐄𝐓𝐂𝐇 𝐃𝐄𝐍𝐈𝐌 𝐏𝐀𝐍𝐓', NULL, 1, 2, NULL, NULL, 'WAL-4005', 'images/product_thumbnail_img/thumbnail_1717576154_9671.jpg', '1001', 1, 10, 2000, 400, 2400, 0, 1, 1, 0, 0, '<p>𝐌𝐄𝐍\'𝐒 𝐒𝐓𝐑𝐄𝐓𝐂𝐇 𝐃𝐄𝐍𝐈𝐌 𝐏𝐀𝐍𝐓</p><p>𝐌𝐀𝐈𝐍 𝐌𝐀𝐓𝐄𝐑𝐈𝐀𝐋: 𝐈𝐦𝐩𝐨𝐫𝐭𝐞𝐝 𝐂𝐡𝐢𝐧𝐚 𝐊𝐞𝐧𝐝𝐲</p><p>𝐐𝐔𝐀𝐋𝐈𝐓𝐘: 𝐒𝐭𝐫𝐞𝐭𝐜𝐡𝐚𝐛𝐥𝐞, 𝐌𝐚𝐜𝐡𝐢𝐧𝐞 𝐖𝐚𝐬𝐡,</p><p>𝐃𝐨𝐮𝐛𝐥𝐞 𝐍𝐲𝐥𝐨𝐧 𝐓𝐡𝐫𝐞𝐚𝐝 𝐒𝐞𝐰𝐢𝐧𝐠, &nbsp;</p><p>𝐏𝐫𝐞𝐦𝐢𝐮𝐦 𝐋𝐨𝐨𝐤 𝐇𝐨𝐥𝐞𝐛𝐮𝐭𝐭𝐨𝐧 𝐀𝐧𝐝 &nbsp;</p><p>𝐙𝐢𝐩𝐩𝐞𝐫, 𝐄𝐚𝐬𝐢𝐥𝐲 𝐋𝐨𝐧𝐠 𝐓𝐢𝐦𝐞 𝐔𝐬𝐚𝐛𝐥𝐞,</p><p>𝐒𝐭𝐲𝐥𝐢𝐬𝐡 𝐚𝐧𝐝 𝐅𝐚𝐬𝐡𝐢𝐨𝐧𝐚𝐛𝐥𝐞</p><p>𝐖𝐀𝐒𝐇 &amp; 𝐂𝐀𝐑𝐄: 𝐌𝐚𝐜𝐡𝐢𝐧𝐞 𝐖𝐚𝐬𝐡</p><p>𝐖𝐀𝐈𝐒𝐓: 𝐌𝐢𝐝-𝐫𝐢𝐬𝐞</p><p>𝐅𝐈𝐓𝐓𝐈𝐍𝐆𝐒: 𝐒𝐞𝐦𝐢 𝐍𝐚𝐫𝐫𝐨𝐰</p><p>𝐅𝐀𝐁𝐑𝐈𝐂: 𝟗𝟓% 𝐊𝐧𝐢𝐭, 𝟓% 𝐒𝐭𝐫𝐞𝐭𝐜𝐡</p><p>𝐏𝐎𝐂𝐊𝐄𝐓: 𝟐 𝐒𝐢𝐝𝐞 &amp; 𝟐 𝐁𝐚𝐜𝐤 𝐩𝐨𝐜𝐤𝐞𝐭</p><p><strong>Brand: Rookies</strong></p><p>𝐌𝐄𝐀𝐒𝐔𝐑𝐄𝐌𝐄𝐍𝐓𝐒:</p><p>𝐒𝐢𝐳𝐞-𝐖𝐚𝐢𝐬𝐭-𝐋𝐞𝐧𝐠𝐭𝐡-𝐍𝐚𝐫𝐫𝐨𝐰-𝐓𝐡𝐢𝐠𝐡</p><p>𝟐𝟗\" &nbsp; &nbsp; 𝟐𝟗\" &nbsp; &nbsp; &nbsp; 𝟑𝟖\" &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 𝟏𝟏.𝟓\" &nbsp; &nbsp; &nbsp;𝟏𝟗.𝟓\"</p><p>𝟑𝟎\" &nbsp; &nbsp; 𝟑𝟎\" &nbsp; &nbsp; &nbsp; 𝟑𝟖.𝟓\" &nbsp; &nbsp; &nbsp; 𝟏𝟏.𝟓\" &nbsp; &nbsp; &nbsp;𝟏𝟗.𝟓\"</p><p>𝟑𝟏\" &nbsp; &nbsp; 𝟑𝟏\" &nbsp; &nbsp; &nbsp; 𝟑𝟗\" &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 𝟏𝟐\" &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;𝟐𝟎\"</p><p>𝟑𝟐\" &nbsp; &nbsp; 𝟑𝟐\" &nbsp; &nbsp; &nbsp; 𝟑𝟗.𝟓\" &nbsp; &nbsp; &nbsp; 𝟏𝟐.𝟓\" &nbsp; &nbsp; &nbsp;𝟐𝟎.𝟓\"</p><p>𝟑𝟑\" &nbsp; &nbsp; 𝟑𝟑\" &nbsp; &nbsp; &nbsp; 𝟒𝟎\" &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 𝟏𝟑\" &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;𝟐𝟏\"</p><p>𝟑𝟒\" &nbsp; &nbsp; 𝟑𝟒\" &nbsp; &nbsp; &nbsp; 𝟒𝟎.𝟓\" &nbsp; &nbsp; &nbsp; 𝟏𝟑.𝟓\" &nbsp; &nbsp; &nbsp;𝟐𝟏.𝟓\"</p><p>𝟑𝟓\" &nbsp; &nbsp; 𝟑𝟓\" &nbsp; &nbsp; &nbsp; 𝟒𝟏\" &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 𝟏𝟒\" &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;𝟐𝟐\"</p><p>𝟑𝟔\" &nbsp; &nbsp; 𝟑𝟔\" &nbsp; &nbsp; &nbsp; 𝟒𝟏.𝟓\" &nbsp; &nbsp; &nbsp; 𝟏𝟒.𝟓\" &nbsp; &nbsp; &nbsp;𝟐𝟐\"</p>', NULL, 1, 1, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-05-22 13:17:02', '2024-06-05 08:29:14'),
(3, 'Men\'s Polo Shirt', NULL, 1, 1, NULL, NULL, 'hasan-404', 'images/product_thumbnail_img/thumbnail_1717576035_5184.jpg', 'mens-polo-shirt-1002', 1, 0, 500, 200, 700, 0, 1, 1, 0, 0, '<p><strong>Men\'s Polo Shirt&nbsp;</strong></p><p>Fabric:China &nbsp;polo (100% Cotton)</p><p>Size: M, L, XL</p><p>M= Chest- 38, Length- 27</p><p>L= Chest- 40, Length- 28&nbsp;</p><p>XL= Chest- 42, Length- 29</p>', NULL, 1, 1, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-05-23 12:29:18', '2024-06-05 08:27:15');

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
(1, 1, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:50px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:58px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:70px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:78px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0\">&nbsp;</div>\r\n</div>\r\n', '1000', '2024-05-22 12:48:50', '2024-05-22 12:48:50'),
(2, 2, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:52px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:58px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:72px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:80px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0\">&nbsp;</div>\r\n</div>\r\n', '1001', '2024-05-22 13:17:02', '2024-05-22 13:17:02'),
(3, 3, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:52px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:60px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:72px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:80px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0\">&nbsp;</div>\r\n</div>\r\n', '1002', '2024-05-23 12:29:18', '2024-05-23 12:29:18');

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
(4, 3, 'images/products/product_1717576035_1124.jpg', NULL, '2024-06-05 08:27:15', '2024-06-05 08:27:15'),
(7, 2, 'images/products/product_1717576154_3646.jpg', NULL, '2024-06-05 08:29:14', '2024-06-05 08:29:14'),
(8, 1, 'images/products/product_1717576171_8128.jpg', NULL, '2024-06-05 08:29:31', '2024-06-05 08:29:31');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int DEFAULT NULL,
  `landing_page_id` int DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating_stars` int NOT NULL DEFAULT '5',
  `review_source` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(36, 400, 3, 1, 1, '2024-06-05 08:28:58', '2024-06-05 08:28:58'),
(37, 200, 3, 1, 2, '2024-06-05 08:28:58', '2024-06-05 08:28:58'),
(38, 100, 3, 1, 4, '2024-06-05 08:28:58', '2024-06-05 08:28:58'),
(39, 1500, 2, 1, 9, '2024-06-05 08:29:14', '2024-06-05 08:29:14'),
(40, 1600, 2, 1, 10, '2024-06-05 08:29:14', '2024-06-05 08:29:14'),
(41, 1700, 2, 1, 11, '2024-06-05 08:29:14', '2024-06-05 08:29:14'),
(42, 1800, 2, 1, 12, '2024-06-05 08:29:14', '2024-06-05 08:29:14'),
(43, 600, 1, 1, 1, '2024-06-05 08:29:31', '2024-06-05 08:29:31'),
(44, 700, 1, 1, 2, '2024-06-05 08:29:31', '2024-06-05 08:29:31'),
(45, 800, 1, 1, 3, '2024-06-05 08:29:31', '2024-06-05 08:29:31');

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
-- Table structure for table `redx_delivery_areas`
--

CREATE TABLE `redx_delivery_areas` (
  `id` bigint UNSIGNED NOT NULL,
  `district_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_id` int NOT NULL,
  `area_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_id` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `redx_delivery_areas`
--

INSERT INTO `redx_delivery_areas` (`id`, `district_name`, `area_id`, `area_name`, `zone_id`, `status`, `created_at`, `updated_at`) VALUES
(2765, 'Dhaka', 1, 'Salimullah Road(Mohammadpur)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2766, 'Dhaka', 2, 'Dhanmondi - Road 3', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2767, 'Dhaka', 3, 'Gulshan-1 Road-1', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2768, 'Dhaka', 5, 'Kallyanpur(Dhaka)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2769, 'Dhaka', 6, 'Shyamoli(Dhaka)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2770, 'Dhaka', 7, 'Adabor(Mohammadpur)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2771, 'Dhaka', 8, 'Darussalam (Technical-Kallayanpur)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2772, 'Dhaka', 9, 'Gabtoli (Dhaka)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2773, 'Dhaka', 10, 'Pallabi(Mirpur-12)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2774, 'Dhaka', 11, 'Lalmatia(Dhaka)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2775, 'Dhaka', 12, 'Mirpur DOHS(Mirpur-12)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2776, 'Dhaka', 13, 'Kochukhet(Mirpur 14)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2777, 'Dhaka', 14, 'Gudaraghat (Badda Link Road)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2778, 'Dhaka', 17, 'Agargaon(Dhaka)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2779, 'Dhaka', 18, 'Monipur(60-feet)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2780, 'Dhaka', 19, 'Sher-e-Bangla Agricultural University', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2781, 'Dhaka', 20, 'Ibrahimpur(Mirpur 14)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2782, 'Dhaka', 21, 'Kakoli(Banani)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2783, 'Dhaka', 22, 'Balughat Bazar Road(Mirpur)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2784, 'Dhaka', 23, 'North Kafrul(Mirpur)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2785, 'Dhaka', 24, 'Vashantek(Mirpur)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2786, 'Dhaka', 25, 'Manikdi(Vasantek-Mirpur)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2787, 'Dhaka', 26, 'Matikata(Mirpur)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2788, 'Dhaka', 27, 'Bangladesh Army Headquerters(Dhaka Cantonment)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2789, 'Dhaka', 28, 'Rupnagar Residential(Mirpur 7)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2790, 'Dhaka', 29, 'Duaripara-Pallabi(Mirpur 12)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2791, 'Dhaka', 30, 'Dhaka Dental College(Mirpur 14)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2792, 'Dhaka', 31, 'Bagbari (Dhaka)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2793, 'Dhaka', 32, 'Mazar Road (Mirpur)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2794, 'Dhaka', 33, 'Shagufta(Mirpur)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2795, 'Dhaka', 34, 'Bawnia Bazar(Uttara)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2796, 'Dhaka', 35, 'Baigertek-ECB(Mirpur)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2797, 'Dhaka', 36, 'Madina nagar(Mirpur 11)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2798, 'Faridpur', 37, 'Pathorghata(Mathbaria)', 7, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2799, 'Dhaka', 39, 'Chuti Ghor Road (Nikunjo-Khilkhet)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2800, 'Dhaka', 40, 'Mastertek-Manikdi(Mirpur)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2801, 'Dhaka', 41, 'Balughat(Mirpur)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2802, 'Dhaka', 42, 'Barontek-Balughat(Mirpur)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2803, 'Dhaka', 43, 'Golartek(Mirpur)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2804, 'Dhaka', 44, 'Uttar Para (Khilkhet)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2805, 'Dhaka', 45, 'Shewra (Kuril-Dhaka)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2806, 'Dhaka', 46, 'Ainusbag(Dakshinkhan)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2807, 'Dhaka', 47, 'Uttarkhan(Dhaka)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2808, 'Dhaka', 48, 'Dakshinkhan(Dhaka)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2809, 'Dhaka', 49, 'TIC Colony(Uttara Sector-6)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2810, 'Dhaka', 50, 'Askona(Dhaka)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2811, 'Dhaka', 51, 'Tolna (Khikhet)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2812, 'Dhaka', 53, 'Savar', 2, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2813, 'Dhaka', 61, 'Nabinagar, Savar, Dhaka', 2, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2814, 'Gazipur', 63, 'Rail Gate (Tongi Station Road)', 2, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2815, 'Dhaka', 66, 'Moddho Para (Khilkhet)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2816, 'Dhaka', 67, 'Nikunja(Dhaka)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2817, 'Dhaka', 68, 'Moddhopara(Dakshinkhan)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2818, 'Dhaka', 69, 'Hajipara (Rampura)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2819, 'Dhaka', 70, 'Kawla(Dhaka)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2820, 'Dhaka', 71, 'Naddapara (Dakshinkhan)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2821, 'Dhaka', 72, 'Bashundhara R/A (Basundhara)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2822, 'Dhaka', 73, 'Dorji Bari (Khilkhet)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2823, 'Dhaka', 74, 'Nadda (Baridhara)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2824, 'Dhaka', 75, 'Baridhara Diplomatic Zone', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2825, 'Dhaka', 76, 'Baridhara DOHS', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2826, 'Dhaka', 77, 'Notun Bazar (Vatara)', 1, 1, '2024-05-14 10:13:35', '2024-05-14 10:13:35'),
(2827, 'Dhaka', 78, 'Adarsha Nagar (Middle Badda)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2828, 'Dhaka', 79, 'Jhilpar (Shahajadpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2829, 'Dhaka', 80, 'Uttor Badda', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2830, 'Dhaka', 81, 'Middle Badda', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2831, 'Dhaka', 82, 'South Badda', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2832, 'Dhaka', 83, 'Merul Badda', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2833, 'Dhaka', 84, 'Niketon(Gulshan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2834, 'Dhaka', 85, 'Banani Block A', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2835, 'Dhaka', 86, 'Banani DOHS', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2836, 'Dhaka', 87, 'Orion More(Tejgaon)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2837, 'Dhaka', 88, 'Mohakhali DOHS', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2838, 'Dhaka', 89, 'South Monipur(60-feet)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2839, 'Dhaka', 90, 'Shah ali bagh(Mirpur-1)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2840, 'Dhaka', 91, 'GMG More(Tejgaon)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2841, 'Dhaka', 92, 'Bashtola(Natun Bazar)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2842, 'Dhaka', 93, 'DIT Project (Merul Badda)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2843, 'Dhaka', 94, 'Aftabnagar(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2844, 'Dhaka', 95, 'Bijoy Shoroni(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2845, 'Dhaka', 96, 'Farmgate(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2846, 'Dhaka', 97, 'Indira Road(Firmgate)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2847, 'Dhaka', 98, 'Love Road (Tejgoan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2848, 'Dhaka', 99, 'Tejkunipara(Farmgate)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2849, 'Dhaka', 100, 'Razabazar(Farmgate)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2850, 'Dhaka', 101, 'Sukrabad(Dhanmondi)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2851, 'Dhaka', 102, 'Panthopath(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2852, 'Dhaka', 103, 'Kalabagan(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2853, 'Dhaka', 104, 'Green Road(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2854, 'Dhaka', 105, 'Manik Mia Avenue(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2855, 'Dhaka', 106, 'Asad Avenue(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2856, 'Dhaka', 107, 'Jigatola(Dhanmondi)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2857, 'Dhaka', 108, 'Shankar (West Dhanmondi)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2858, 'Dhaka', 109, 'Rayer Bazar(Mohammadpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2859, 'Dhaka', 110, 'Tallabag(Dhanmondi)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2860, 'Dhaka', 111, 'Hazaribag(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2861, 'Dhaka', 112, 'Pilkhana(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2862, 'Dhaka', 113, 'Kellar Mor(Lalbagh-Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2863, 'Dhaka', 114, 'New Market(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2864, 'Dhaka', 115, 'Azimpur(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2865, 'Dhaka', 116, 'Nilkhet(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2866, 'Dhaka', 117, 'Lalbagh(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2867, 'Dhaka', 118, 'Chawkbazar (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2868, 'Dhaka', 119, 'Naya Bazar (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2869, 'Dhaka', 120, 'Tatibazar (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2870, 'Dhaka', 121, 'Luxmi Bazar (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2871, 'Dhaka', 123, 'Tipu Sultan Road(Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2872, 'Dhaka', 124, 'Siddique Bazar (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2873, 'Dhaka', 125, 'Tikatuly (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2874, 'Dhaka', 126, 'Motijheel(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2875, 'Dhaka', 127, 'Nawabpur (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2876, 'Dhaka', 128, 'Kaptan Bazar (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2877, 'Dhaka', 129, 'Gulistan(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2878, 'Dhaka', 130, 'Bongo Bazar(Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2879, 'Dhaka', 131, 'Chankarpul(Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2880, 'Dhaka', 132, 'Palashi(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2881, 'Dhaka', 133, 'Dhakeshwari(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2882, 'Dhaka', 134, 'Kamalapur(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2883, 'Dhaka', 135, 'Wari (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2884, 'Dhaka', 136, 'Narinda (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2885, 'Dhaka', 137, 'Dainik Bangla Mor(Paltan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2886, 'Dhaka', 139, 'Fakirapul (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2887, 'Dhaka', 140, 'Kakrail (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2888, 'Dhaka', 141, 'Naya Paltan (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2889, 'Dhaka', 142, 'Bijoynagar (Paltan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2890, 'Dhaka', 143, 'Press Club (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2891, 'Dhaka', 144, 'High Court (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2892, 'Dhaka', 145, 'Dhaka University', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2893, 'Dhaka', 146, 'Dhaka Medical College', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2894, 'Dhaka', 147, 'Bongo Bondhu Avenue (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2895, 'Dhaka', 148, 'Kazi Nazrul Islam Avenue(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2896, 'Dhaka', 149, 'Kawran Bazar(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2897, 'Dhaka', 150, 'Minto Road (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2898, 'Dhaka', 151, 'Shantinagar (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2899, 'Dhaka', 152, 'Shantibag (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2900, 'Dhaka', 153, 'Baily Road (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2901, 'Dhaka', 154, 'Minto Road(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2902, 'Dhaka', 155, 'BSMMU Hospital-Shahbag(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2903, 'Dhaka', 156, 'Eskaton Garden Road(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2904, 'Dhaka', 157, 'Eskaton(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2905, 'Dhaka', 158, 'Moghbazar(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2906, 'Dhaka', 159, 'Mouchak (Malibagh)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2907, 'Dhaka', 160, 'Malibagh (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2908, 'Dhaka', 161, 'Rampura(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2909, 'Dhaka', 162, 'Shahbag(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2910, 'Dhaka', 163, 'Katabon(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2911, 'Dhaka', 164, 'Hatirpool(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2912, 'Dhaka', 165, 'Bashabo(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2913, 'Dhaka', 166, 'Khilgaon(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2914, 'Dhaka', 167, 'Middle Bashabo(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2915, 'Dhaka', 168, 'Goran(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2916, 'Dhaka', 169, 'Madartek(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2917, 'Dhaka', 170, 'Manik Nagar (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2918, 'Dhaka', 171, 'Shahjahanpur(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2919, 'Dhaka', 172, 'Banasree(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2920, 'Dhaka', 173, 'Meradia(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2921, 'Dhaka', 174, 'Boroitola Bazar (Natun Bazar)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2922, 'Narayanganj', 175, 'Bhulta (Rupganj)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2923, 'Dhaka', 177, 'Mugda (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2924, 'Dhaka', 178, 'Golapbag (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2925, 'Dhaka', 179, 'Jatrabari(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2926, 'Dhaka', 181, 'Hatirjheel Thana (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2927, 'Dhaka', 182, 'Bangla Motor(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2928, 'Dhaka', 183, 'Paribag(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2929, 'Dhaka', 184, 'Bakshibazar (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2930, 'Dhaka', 185, 'Elephant Road(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2931, 'Dhaka', 186, 'Kathalbagan(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2932, 'Dhaka', 187, 'Malibagh Taltola(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2933, 'Dhaka', 188, 'Central Road(Dhanmodi)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2934, 'Dhaka', 189, 'Sabujbag Thana(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2935, 'Dhaka', 190, 'Habibullah Bahar University(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2936, 'Dhaka', 263, 'Dolaikhal (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2937, 'Dhaka', 266, 'Shegunbagicha (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2938, 'Dhaka', 267, 'Rajarbag police lines(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2939, 'Dhaka', 269, 'Babubazar (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2940, 'Dhaka', 270, 'Islampur(Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2941, 'Dhaka', 271, 'Imamgonj (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2942, 'Dhaka', 272, 'Nayabazar  (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2943, 'Dhaka', 273, 'Zigatola(Dhanmodi)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2944, 'Dhaka', 275, 'West Kazipara(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2945, 'Dhaka', 276, 'West Shewrapara(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2946, 'Dhaka', 277, 'Kalshi(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2947, 'Dhaka', 278, 'Demra (Dhaka)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2948, 'Dhaka', 282, 'Ashulia, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2949, 'Dhaka', 283, 'Baipayl, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2950, 'Dhaka', 284, 'Sutrapur (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2951, 'Dhaka', 286, 'Kamrangichar(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2952, 'Dhaka', 288, 'Purana Paltan (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2953, 'Dhaka', 292, 'Shyampur(Jatrabari)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2954, 'Dhaka', 296, 'Dholaipar(Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2955, 'Dhaka', 305, 'Keranigonj(Dhaka)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2956, 'Dhaka', 306, 'Monipuri Para(Farmgate)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2957, 'Dhaka', 309, 'Bosila Bridge(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2958, 'Dhaka', 313, 'Shonir Akhra(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2959, 'Dhaka', 315, 'Mirpur 2 (Dhaka )', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2960, 'Dhaka', 316, 'Bongshal (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2961, 'Dhaka', 319, 'Siddweswari (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2962, 'Dhaka', 323, 'Nakhalpara (Tejgoan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2963, 'Dhaka', 324, 'Sector 18 (Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2964, 'Dhaka', 325, 'Joar Shahara (Kuril)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2965, 'Dhaka', 326, 'Science Lab(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2966, 'Dhaka', 327, 'Sobhanbag(Dhanmondi)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2967, 'Dhaka', 329, 'ECB Chattar(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2968, 'Dhaka', 334, 'Arambag (Motijheel)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2969, 'Dhaka', 346, 'Armanitola (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2970, 'Dhaka', 349, 'Islambag (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2971, 'Dhaka', 352, 'Kamarpara(Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2972, 'Dhaka', 354, 'Mitford (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2973, 'Dhaka', 355, 'Shakhari Bazar (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2974, 'Dhaka', 356, 'Katherpol (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2975, 'Dhaka', 357, 'Bangla Bazar  (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2976, 'Dhaka', 358, 'Patuatuly (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2977, 'Dhaka', 359, 'Dohar(Dhaka)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2978, 'Dhaka', 365, 'Dhamrai', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2979, 'Dhaka', 396, 'Nandipara(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2980, 'Dhaka', 397, 'Nazira Bazar (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2981, 'Dhaka', 403, 'Gopibag Motijheel(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2982, 'Dhaka', 404, 'Shwamibag(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2983, 'Dhaka', 405, 'Sayedabad(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2984, 'Dhaka', 406, 'Sadarghat Dhaka', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2985, 'Dhaka', 407, 'Kaltabazar (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2986, 'Dhaka', 408, 'Jurain(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2987, 'Dhaka', 409, 'Gendaria (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2988, 'Dhaka', 411, 'RayerBag(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2989, 'Dhaka', 412, 'Faridabad (Jatrabari)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2990, 'Dhaka', 413, 'Matuail (Jatrabari)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2991, 'Dhaka', 414, 'Doniya (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2992, 'Dhaka', 415, 'Postogola (Jurain-Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2993, 'Dhaka', 417, 'Konapara (Demra)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2994, 'Dhaka', 418, 'Dhaka Uddyan(Mohammadpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2995, 'Dhaka', 426, 'Shekhertek(Mohammadpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2996, 'Dhaka', 446, 'Mukti Clinic(Nawabganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2997, 'Dhaka', 448, 'CWH', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2998, 'Dhaka', 449, 'Taltola-Agargaon(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(2999, 'Faridpur', 638, 'Alfadanga', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3000, 'Faridpur', 639, 'Bhanga', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3001, 'Faridpur', 640, 'Boalmari', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3002, 'Faridpur', 641, 'Char Bhadrasan', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3003, 'Faridpur', 642, 'Faridpur Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3004, 'Faridpur', 643, 'Madhukhali', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3005, 'Faridpur', 644, 'Nagarkanda', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3006, 'Faridpur', 645, 'Sadarpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3007, 'Faridpur', 646, 'Saltha', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3008, 'Gazipur', 647, 'Kodda Bazar (Tongi)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3009, 'Gazipur', 648, 'Kaliakoir Upazila(Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3010, 'Gazipur', 649, 'Kaliganj(Tongi)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3011, 'Gazipur', 650, 'Kapasia (Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3012, 'Gazipur', 651, 'Sreepur Chowrasta (Mawna)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3013, 'Gopalganj', 652, 'Gopalganj Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3014, 'Gopalganj', 653, 'Kasiani', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3015, 'Gopalganj', 654, 'Kotalipara', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3016, 'Gopalganj', 655, 'Maksudpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3017, 'Gopalganj', 656, 'Tungipara', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3018, 'Jamalpur', 657, 'Nalkura Jhenaigati (Sherpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3019, 'Jamalpur', 658, 'Dewanganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3020, 'Jamalpur', 659, 'Hazrabari (Melandah)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3021, 'Jamalpur', 660, 'Jamalpur Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3022, 'Jamalpur', 661, 'Madarganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3023, 'Jamalpur', 662, 'Melandah', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3024, 'Jamalpur', 663, 'Sharishabari', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3025, 'Kishoreganj', 664, 'Austogram(Kishoreganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3026, 'Kishoreganj', 665, 'Bajitpur(Kishoreganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3027, 'Kishoreganj', 666, 'Bhairab', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3028, 'Kishoreganj', 667, 'Hosainpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3029, 'Kishoreganj', 668, 'Itna', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3030, 'Kishoreganj', 669, 'Karimganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3031, 'Kishoreganj', 670, 'Katiadi', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3032, 'Kishoreganj', 671, 'Kishoreganj Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3033, 'Kishoreganj', 672, 'Kuliarchar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3034, 'Kishoreganj', 673, 'Mithamain', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3035, 'Kishoreganj', 674, 'Nikli', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3036, 'Kishoreganj', 675, 'Pakundia', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3037, 'Kishoreganj', 676, 'Tarail', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3038, 'Madaripur', 677, 'Kalkini', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3039, 'Madaripur', 678, 'Madaripur Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3040, 'Madaripur', 679, 'Rajoir', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3041, 'Madaripur', 680, 'Shibchar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3042, 'Manikganj', 681, 'Daulatpur(Manikganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3043, 'Manikganj', 682, 'Ghior', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3044, 'Manikganj', 683, 'Harirampur (Manikganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3045, 'Manikganj', 684, 'Manikganj Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3046, 'Manikganj', 685, 'Saturia', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3047, 'Manikganj', 686, 'Shibalaya', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3048, 'Manikganj', 687, 'Singair', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3049, 'Munshiganj', 688, 'Gazaria(Munshiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3050, 'Munshiganj', 689, 'Lauhajang(Munshiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3051, 'Munshiganj', 690, 'Katakhali (Munshiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3052, 'Munshiganj', 691, 'Nawabganj Upazila', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3053, 'Munshiganj', 692, 'Sreenagar(Munshiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3054, 'Munshiganj', 693, 'Tangibari(Munshiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3055, 'Mymensingh', 694, 'Valuka', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3056, 'Mymensingh', 695, 'Dhubaura', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3057, 'Mymensingh', 696, 'Fulbaria (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3058, 'Mymensingh', 697, 'Phulpur Upozila(Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3059, 'Mymensingh', 698, 'Goffargaon', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3060, 'Mymensingh', 699, 'Koltapara (Gouripur Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3061, 'Mymensingh', 700, 'Haluaghat', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3062, 'Mymensingh', 701, 'Iswarganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3063, 'Mymensingh', 702, 'Kachari Ghat (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3064, 'Mymensingh', 703, 'Muktagacha', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3065, 'Mymensingh', 704, 'Nandail', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3066, 'Mymensingh', 705, 'Trishal', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3067, 'Narayanganj', 706, 'Araihazar Thana', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3068, 'Narayanganj', 707, 'Bandar (Modonpur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3069, 'Narayanganj', 708, 'Chashara (Narayanganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3070, 'Narayanganj', 709, 'Rupganj Thana', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3071, 'Narayanganj', 710, 'Sonargaon (Narayanganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3072, 'Norshingdi', 711, 'Belabo', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3073, 'Norshingdi', 712, 'Monohardi', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3074, 'Norshingdi', 713, 'Velanogor (Narsingdi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3075, 'Norshingdi', 714, 'Palash', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3076, 'Norshingdi', 715, 'Raipura (Bhairab)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3077, 'Norshingdi', 716, 'Shibpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3078, 'Netrokona', 717, 'Atpara (Netrokona)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3079, 'Netrokona', 718, 'Barhatta (Netrokona)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3080, 'Netrokona', 719, 'Durgapur (Netrokona)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3081, 'Netrokona', 720, 'Kalmakanda( Netrokona)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3082, 'Netrokona', 721, 'Kendua( Netrokona)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3083, 'Netrokona', 722, 'Khaliajuri (Madan)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3084, 'Netrokona', 723, 'Madan (Netrokona)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3085, 'Netrokona', 724, 'Mohangonj (Netrokona)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3086, 'Netrokona', 725, 'Netrokona Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3087, 'Netrokona', 726, 'Purbadhala (Netrokona)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3088, 'Rajbari', 727, 'Baliakandi', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3089, 'Rajbari', 728, 'Goalunda', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3090, 'Rajbari', 729, 'Pangsha', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3091, 'Rajbari', 730, 'Rajbari Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3092, 'Rajbari', 731, 'Kalukhali', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3093, 'Shariatpur', 732, 'Bhedarganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3094, 'Shariatpur', 733, 'Damudiya', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3095, 'Shariatpur', 734, 'Gosairhat', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3096, 'Shariatpur', 735, 'Zajira', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3097, 'Shariatpur', 736, 'Naria', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3098, 'Shariatpur', 737, 'Shariatpur Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3099, 'Sherpur', 738, 'Kakarkandi Nalitabari (Sherpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3100, 'Sherpur', 739, 'Ganapaddi Nakla (Sherpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3101, 'Sherpur', 740, 'Chandrakona Nakla (Sherpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3102, 'Sherpur', 741, 'Kamarer Char (Sheprur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3103, 'Sherpur', 742, 'Kakilakura Sribardi (Sherpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3104, 'Tangail', 743, 'Bashail', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3105, 'Tangail', 744, 'Bhuapur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3106, 'Tangail', 745, 'Delduar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3107, 'Tangail', 746, 'Ghatail(Modhupur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3108, 'Tangail', 747, 'Gopalpur (Tangail)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3109, 'Tangail', 748, 'Kalihati', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3110, 'Tangail', 749, 'Mirzapur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3111, 'Tangail', 750, 'Modhupur (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3112, 'Tangail', 751, 'Nagarpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3113, 'Tangail', 752, 'Shakhipur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3114, 'Tangail', 753, 'Tangail Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3115, 'Tangail', 754, 'Dhanbari(Modhupur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3116, 'Bagerhat', 755, 'Bagerhat Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3117, 'Bagerhat', 756, 'Chitalmari', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3118, 'Bagerhat', 757, 'Fakirhat (Bagerhat)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3119, 'Bagerhat', 758, 'Kachua(Bagerhat)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3120, 'Bagerhat', 759, 'Mollarhat', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3121, 'Bagerhat', 760, 'Mongla', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3122, 'Bagerhat', 761, 'Morelganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3123, 'Bagerhat', 762, 'Rampal', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3124, 'Bagerhat', 763, 'Sarankhola', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3125, 'Chuadanga', 764, 'Alamdanga', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3126, 'Chuadanga', 765, 'Chuadanga Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3127, 'Chuadanga', 766, 'Damurhuda', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3128, 'Chuadanga', 767, 'Jibannagar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3129, 'Jessore', 768, 'Noapara (Jessore)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3130, 'Jessore', 769, 'Bagherpara', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3131, 'Jessore', 770, 'Chowgacha', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3132, 'Jessore', 771, 'Jessore Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3133, 'Jessore', 772, 'Jhikargacha', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3134, 'Jessore', 773, 'Keshabpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3135, 'Jessore', 774, 'Manirampur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3136, 'Jessore', 775, 'Sharsha', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3137, 'Jhenaidah', 776, 'Kotchandpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3138, 'Jhenaidah', 777, 'Harinakunda', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3139, 'Jhenaidah', 778, 'Jhenaidah Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3140, 'Jhenaidah', 779, 'Kaliganj(Jhenaidah)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3141, 'Jhenaidah', 780, 'Moheshpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3142, 'Jhenaidah', 781, 'Shailkupa', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3143, 'Khulna', 782, 'Batiaghata', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3144, 'Khulna', 783, 'Dacope', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3145, 'Khulna', 784, 'Dighalia', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3146, 'Khulna', 785, 'Dumuria', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3147, 'Khulna', 786, 'Phultala', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3148, 'Khulna', 787, 'Koira', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3149, 'Khulna', 788, 'Paikgacha', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3150, 'Khulna', 789, 'Rupsa', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3151, 'Khulna', 790, 'Khalispur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3152, 'Khulna', 791, 'Sonadanga', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3153, 'Khulna', 792, 'Khan jahan ali ', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3154, 'Khulna', 793, 'Doulatpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3155, 'Khulna', 794, 'Terokhada', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3156, 'Kushtia', 795, 'Bheramara', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3157, 'Kushtia', 796, 'Daulatpur (Kushtia)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3158, 'Kushtia', 797, 'Khoksha', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3159, 'Kushtia', 798, 'Kumarkhali', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3160, 'Kushtia', 799, 'Kushtia Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3161, 'Kushtia', 800, 'Mirpur (Kushtia)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3162, 'Magura', 801, 'Magura Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3163, 'Magura', 802, 'Mohammadpur (Magura)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3164, 'Magura', 803, 'Shalikha', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3165, 'Magura', 804, 'Sreepur (Magura)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3166, 'Meherpur', 805, 'Gangni', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3167, 'Meherpur', 806, 'Meherpur Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3168, 'Meherpur', 807, 'Mujibnagar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3169, 'Narail', 808, 'Kalia', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3170, 'Narail', 809, 'Lohagara(Narail)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3171, 'Narail', 810, 'Narail Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3172, 'Satkhira', 811, 'Assasuni', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3173, 'Satkhira', 812, 'Debhata', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3174, 'Satkhira', 813, 'Kaliganj(Shyamnagar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3175, 'Satkhira', 814, 'Kolaroa', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3176, 'Satkhira', 815, 'Satkhira Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3177, 'Satkhira', 816, 'Shyamnagar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3178, 'Satkhira', 817, 'Tala', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3179, 'Bogra', 818, 'Adamdighi (Bogra)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3180, 'Bogra', 819, 'Bogra Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3181, 'Bogra', 820, 'Dhunat (Bogra)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3182, 'Bogra', 821, 'Dupchanchia (Bogra)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3183, 'Bogra', 822, 'Gabtali (Bogra)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3184, 'Bogra', 823, 'Kahaloo', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3185, 'Bogra', 824, 'Nandigram', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3186, 'Bogra', 825, 'Sariakandi', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3187, 'Bogra', 826, 'Sherpur (Bogra)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3188, 'Bogra', 827, 'Shibganj ( Bogra )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3189, 'Bogra', 828, 'Sonatola', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3190, 'Bogra', 829, 'Shajahanpur (Bogura)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3191, 'Chapai Nawabganj', 830, 'Bholahat', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3192, 'Chapai Nawabganj', 831, 'Gomastapur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3193, 'Chapai Nawabganj', 832, 'Nachole', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3194, 'Chapai Nawabganj', 833, 'Nawabganj Sadar (Chapai)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3195, 'Chapai Nawabganj', 834, 'Shibganj (Chapai Nawabganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3196, 'Joypurhat', 835, 'Akkelpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3197, 'Joypurhat', 836, 'Joypurhat Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3198, 'Joypurhat', 837, 'Kalai Upazila(Joypurhat)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3199, 'Joypurhat', 838, 'Khetlal', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3200, 'Joypurhat', 839, 'Panchbibi', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3201, 'Naogaon', 840, 'Atrai', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3202, 'Naogaon', 841, 'Badalgachi', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3203, 'Naogaon', 842, 'Dhamoirhat', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3204, 'Naogaon', 843, 'Proshadpur  (Manda Naogaon)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3205, 'Naogaon', 844, 'Mahadebpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3206, 'Naogaon', 845, 'Moktir More (Naogaon)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3207, 'Naogaon', 846, 'Niamatpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3208, 'Naogaon', 847, 'Nazipur (Patnitala)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3209, 'Naogaon', 848, 'Porsha', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3210, 'Naogaon', 849, 'Raninagar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3211, 'Naogaon', 850, 'Shapahar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3212, 'Natore', 851, 'Baghatipara', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3213, 'Natore', 852, 'Baraigram', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3214, 'Natore', 853, 'Gurudaspur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3215, 'Natore', 854, 'Lalpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3216, 'Natore', 855, 'Natore Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3217, 'Natore', 856, 'Singra (Natore)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3218, 'Pabna', 857, 'Atgharia (Pabna)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3219, 'Pabna', 858, 'Bera (Pabna)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3220, 'Pabna', 859, 'Bhangura (Pabna)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3221, 'Pabna', 860, 'Chatmohar (Pabna)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3222, 'Pabna', 861, 'Faridpur ( Pabna )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3223, 'Pabna', 862, 'Iswardi', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3224, 'Pabna', 863, 'Pabna Sador', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3225, 'Pabna', 864, 'Santhia (Pabna)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3226, 'Pabna', 865, 'Sujanagar (Pabna)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3227, 'Rajshahi', 866, 'Bagha', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3228, 'Rajshahi', 867, 'Bagmara (Rajshahi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3229, 'Rajshahi', 868, 'Charghat', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3230, 'Rajshahi', 869, 'Durgapur(Rajshahi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3231, 'Rajshahi', 870, 'Godagari', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3232, 'Rajshahi', 871, 'Mohanpur (Rajshahi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3233, 'Rajshahi', 872, 'Paba', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3234, 'Rajshahi', 873, 'Putia', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3235, 'Rajshahi', 874, 'Tanore', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3236, 'Rajshahi', 875, 'Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3237, 'Sirajganj', 876, 'Belkuchi', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3238, 'Sirajganj', 877, 'Chowhali', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3239, 'Sirajganj', 878, 'Kamarkhanda', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3240, 'Sirajganj', 879, 'Kazipur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3241, 'Sirajganj', 880, 'Raiganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3242, 'Sirajganj', 881, 'Shahajadpur (Sirajganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3243, 'Sirajganj', 882, 'Sirajganj Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3244, 'Sirajganj', 883, 'Tarash Sirajgonj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3245, 'Sirajganj', 884, 'Ullapara Sirajgonj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3246, 'Habiganj', 885, 'Ajmeriganj (Habiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3247, 'Habiganj', 886, 'Bahubal (Shayestaganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3248, 'Habiganj', 887, 'Baniachong (Habiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3249, 'Habiganj', 888, 'Chunarughat (Habiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3250, 'Habiganj', 889, 'Habiganj Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3251, 'Habiganj', 890, 'Lakhai (Habiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3252, 'Habiganj', 891, 'Madhabpur (Habiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3253, 'Habiganj', 892, 'Nabiganj (Habiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3254, 'Moulvibazar', 893, 'Candgram (Barlekha)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3255, 'Moulvibazar', 894, 'Kamalganj Upazila', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3256, 'Moulvibazar', 895, 'Kulaura', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3257, 'Moulvibazar', 896, 'Kusumbag Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3258, 'Moulvibazar', 897, 'Rajnagar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3259, 'Moulvibazar', 898, 'Sreemangal Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3260, 'Moulvibazar', 899, 'Juri Upazila (Barlekha-Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3261, 'Sunamganj', 900, 'Biswambharpur (Sunamganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3262, 'Sunamganj', 901, 'Chattak', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3263, 'Sunamganj', 902, 'Derai (Sunamganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3264, 'Sunamganj', 903, 'Dharmapasha (Netrokona)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3265, 'Sunamganj', 904, 'Dowarabazar (Chattak-Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3266, 'Sunamganj', 905, 'Jagannathpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3267, 'Sunamganj', 906, 'Jamalganj ( Sunamganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3268, 'Sunamganj', 907, 'Sulla (Sunamganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3269, 'Sunamganj', 908, 'Traffic Point (Sunamganj Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3270, 'Sunamganj', 909, 'Tahirpur-Sunamganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3271, 'Sunamganj', 910, 'South Sunamganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3272, 'Sylhet', 911, 'Balaganj Upazila(Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3273, 'Sylhet', 912, 'Beanibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3274, 'Sylhet', 913, 'Bishwanath Upazila(Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3275, 'Sylhet', 914, 'Companyganj (Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3276, 'Sylhet', 915, 'Fenchuganj (Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3277, 'Sylhet', 916, 'Gowainghat (Jaflong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3278, 'Sylhet', 917, 'Golapganj (Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3279, 'Sylhet', 918, 'Jaintapur ( Jaflong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3280, 'Sylhet', 919, 'Moiyakhali (Zakiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3281, 'Sylhet', 920, 'Kanaighat ( Jaflong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3282, 'Sylhet', 921, 'Amberkhana (Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3283, 'Sylhet', 922, 'South Surma (Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3284, 'Barguna', 923, 'Amtali(Kolapara)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3285, 'Barguna', 924, 'Bamna', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3286, 'Barguna', 925, 'DKP Road (Barguna)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3287, 'Barguna', 926, 'Betagi', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3288, 'Barguna', 927, 'Patharghata (Mathbaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3289, 'Barisal', 928, 'Agailjhara (Gournadi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3290, 'Barisal', 929, 'Babuganj (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3291, 'Barisal', 930, 'Bakerganj (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3292, 'Barisal', 931, 'Banaripara (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3293, 'Barisal', 932, 'Ruptoli Housing (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3294, 'Barisal', 933, 'Gournadi Bondor (Gournadi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36');
INSERT INTO `redx_delivery_areas` (`id`, `district_name`, `area_id`, `area_name`, `zone_id`, `status`, `created_at`, `updated_at`) VALUES
(3295, 'Barisal', 934, 'Hijla Upazila (Barisal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3296, 'Barisal', 935, 'Mehendiganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3297, 'Barisal', 936, 'Muladi', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3298, 'Barisal', 937, 'Wazirpur Upazila(Barisal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3299, 'Bhola', 938, 'Bhola Sadar (Bhola)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3300, 'Bhola', 939, 'Borhanuddin (Bhola)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3301, 'Bhola', 940, 'Charfession (Charfession)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3302, 'Bhola', 941, 'Daulatkhan (Bhola)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3303, 'Bhola', 942, 'Lalmohan(Bhola)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3304, 'Bhola', 943, 'Manpura(Bhola)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3305, 'Bhola', 944, 'Tajumuddin(Bhola)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3306, 'Jhalokathi', 945, 'Jhalokathi Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3307, 'Jhalokathi', 946, 'Kathalia', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3308, 'Jhalokathi', 947, 'Nalchiti', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3309, 'Jhalokathi', 948, 'Rajapur (Jhalokathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3310, 'Patuakhali', 949, 'Bauphal(Dashmina)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3311, 'Patuakhali', 950, 'Dashmina', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3312, 'Patuakhali', 951, 'Dumki', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3313, 'Patuakhali', 952, 'Galachipa(Dashmina)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3314, 'Patuakhali', 953, 'Kalapara (Kolapara)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3315, 'Patuakhali', 954, 'Mirjaganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3316, 'Patuakhali', 955, 'Patuakhali Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3317, 'Perojpur', 956, 'Bhandaria', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3318, 'Perojpur', 957, 'Kaukhali (Pirojpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3319, 'Perojpur', 958, 'Mothbaria', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3320, 'Perojpur', 959, 'Nesarabad (Shawrupkathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3321, 'Perojpur', 960, 'Nazirpur(Pirojpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3322, 'Perojpur', 961, 'Pirojpur Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3323, 'Perojpur', 962, 'Zia Nagar (Indurkani)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3324, 'Bandarban', 963, 'Ali Kadam (Bandarban)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3325, 'Bandarban', 964, 'Bandarban Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3326, 'Bandarban', 965, 'Lama (Bandarban)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3327, 'Bandarban', 966, 'Nakhoyngchari (Bandarban)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3328, 'Bandarban', 967, 'Rowangchhari (Bandarban)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3329, 'Bandarban', 968, 'Ruma (Bandarban)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3330, 'Bandarban', 969, 'Thanchi (Bandarban)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3331, 'Brahmanbaria', 970, 'Akhaura (Brahmanbaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3332, 'Brahmanbaria', 971, 'Ashuganj (Bhairab)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3333, 'Brahmanbaria', 972, 'Bancharampur (Nabinagar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3334, 'Brahmanbaria', 973, 'Paikpara (Brahmanbaria Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3335, 'Brahmanbaria', 974, 'Kosba (Brahmanbaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3336, 'Brahmanbaria', 975, 'Nabinagar (Nabinagar Hub)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3337, 'Brahmanbaria', 976, 'Nasirnagar (Brahmanbaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3338, 'Brahmanbaria', 977, 'Sarail (Brahmanbaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3339, 'Chandpur', 978, 'Chandpur Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3340, 'Chandpur', 979, 'Faridganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3341, 'Chandpur', 980, 'Haimchar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3342, 'Chandpur', 981, 'Hajiganj (Chandpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3343, 'Chandpur', 982, 'Kachua(Chandpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3344, 'Chandpur', 983, 'Matlab (South)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3345, 'Chandpur', 984, 'Matlab (North)(Chengarchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3346, 'Chandpur', 985, 'Shahrasti', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3347, 'Chittagong', 986, 'Anwara (Patiya)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3348, 'Chittagong', 987, 'Bashkhali (Satkania)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3349, 'Chittagong', 988, 'Boalkhali (Patiya)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3350, 'Chittagong', 989, 'Chandanaish (Satkania)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3351, 'Chittagong', 990, 'Fatikchari', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3352, 'Chittagong', 991, 'Hathazari', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3353, 'Chittagong', 992, 'Lohagara (Satkania)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3354, 'Chittagong', 993, 'Mirsarai (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3355, 'Chittagong', 994, 'Patiya (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3356, 'Chittagong', 995, 'Rangunia (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3357, 'Chittagong', 996, 'Raojan (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3358, 'Chittagong', 997, 'Sandwip (Guptachara)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3359, 'Chittagong', 998, 'Satkania', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3360, 'Chittagong', 999, 'Sitakundu (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3361, 'Comilla', 1000, 'Barura - Comilla ', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3362, 'Comilla', 1001, 'Brahmanpara - Comilla', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3363, 'Comilla', 1002, 'Burichang - Comilla', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3364, 'Comilla', 1003, 'Chandina - Comilla', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3365, 'Comilla', 1004, 'Chowddagram (Comilla', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3366, 'Comilla', 1005, 'Comilla Sadar - Comilla', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3367, 'Comilla', 1006, 'Daudkandi', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3368, 'Comilla', 1007, 'Nimshar-Comilla', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3369, 'Comilla', 1008, 'Homna', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3370, 'Comilla', 1009, 'Laksam', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3371, 'Comilla', 1010, 'Meghna (Comilla)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3372, 'Comilla', 1011, 'Muradnagar - Comilla', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3373, 'Comilla', 1012, 'Nangolkot', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3374, 'Comilla', 1013, 'Titas ( Comilla )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3375, 'Comilla', 1014, 'Monoharganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3376, 'Comilla', 1015, 'Comilla Sadar South - Comilla', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3377, 'Cox\'s Bazar', 1016, 'Chakoria (Cox\'s Bazar))', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3378, 'Cox\'s Bazar', 1017, 'Kolatoli (Coxs Bazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3379, 'Cox\'s Bazar', 1018, 'Kutubdia(Cox\'s Bazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3380, 'Cox\'s Bazar', 1019, 'Moheshkhali(Cox\'s Bazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3381, 'Cox\'s Bazar', 1020, 'Pekua (Cox\'s Bazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3382, 'Cox\'s Bazar', 1021, 'Ramu (Coxs Bazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3383, 'Cox\'s Bazar', 1022, 'Teknaf', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3384, 'Cox\'s Bazar', 1023, 'Ukhia (Coxs Bazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3385, 'Feni', 1024, 'Chagalnayya (Feni)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3386, 'Feni', 1025, 'Daganbhuiyan (Feni)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3387, 'Feni', 1026, 'Feni Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3388, 'Feni', 1027, 'Parshuram (Feni)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3389, 'Feni', 1028, 'Fulgazi (Feni)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3390, 'Feni', 1029, 'Sonagazi (Feni)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3391, 'Khagrachari', 1030, 'Dighinala (Khagrachari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3392, 'Khagrachari', 1031, 'Khagrachari Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3393, 'Khagrachari', 1032, 'Laksmichari (Khagrachari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3394, 'Khagrachari', 1033, 'Mohalchari (Khagrachari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3395, 'Khagrachari', 1034, 'Manikchari (Khagrachari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3396, 'Khagrachari', 1035, 'Matiranga (Khagrachari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3397, 'Khagrachari', 1036, 'Panchari (Khagrachari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3398, 'Khagrachari', 1037, 'Ramgor', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3399, 'Laksmipur', 1038, 'Laksmipur Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3400, 'Laksmipur', 1039, 'Ramgati', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3401, 'Laksmipur', 1040, 'Ramganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3402, 'Laksmipur', 1041, 'Raipur (Lakshmipur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3403, 'Laksmipur', 1042, 'Kamalnagar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3404, 'Noakhali', 1043, 'Begumganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3405, 'Noakhali', 1044, 'Chatkhil', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3406, 'Noakhali', 1045, 'Companiganj (Noakhali)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3407, 'Noakhali', 1046, 'Hatiya (Noakhali)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3408, 'Noakhali', 1047, 'Maijdee (Noakhali)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3409, 'Noakhali', 1048, 'Senbag', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3410, 'Noakhali', 1049, 'Sonaimuri', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3411, 'Noakhali', 1050, 'Subarnachar (Noakhali)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3412, 'Noakhali', 1051, 'Kabir Hat (Noakhali)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3413, 'Rangamati', 1052, 'Baghaichari', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3414, 'Rangamati', 1053, 'Barkal (Rangamati)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3415, 'Rangamati', 1054, 'Belaichari (Rangamati)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3416, 'Rangamati', 1055, 'Jurachari (Rangamati)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3417, 'Rangamati', 1056, 'Kaptai', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3418, 'Rangamati', 1057, 'Kawkhali (Rangamati)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3419, 'Rangamati', 1058, 'Langadu (Rangamati)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3420, 'Rangamati', 1059, 'Naniarchar (Rangamati)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3421, 'Rangamati', 1060, 'Rajasthali (Rangamati)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3422, 'Rangamati', 1061, 'Rangamati Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3423, 'Dinajpur', 1062, 'Birampur ( Birampur Hub Dinajpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3424, 'Dinajpur', 1063, 'Birganj ( Dinajpur Hub )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3425, 'Dinajpur', 1064, 'Birol ( Dinajpur Hub )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3426, 'Dinajpur', 1065, 'Bochaganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3427, 'Dinajpur', 1066, 'Chirirbandar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3428, 'Dinajpur', 1067, 'Baluadanga (Dinajpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3429, 'Dinajpur', 1068, 'Phulbari (Birampur Hub Dinajpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3430, 'Dinajpur', 1069, 'Ghoraghat ( Birampur Hub Dinajpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3431, 'Dinajpur', 1070, 'Hakimpur ( Birampur Hub Dinajpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3432, 'Dinajpur', 1071, 'Kaharole', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3433, 'Dinajpur', 1072, 'Khanshama', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3434, 'Dinajpur', 1073, 'Nawabganj ( Birampur Hub Dinajpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3435, 'Dinajpur', 1074, 'Parbatipur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3436, 'Gaibandha', 1075, 'Fulchari', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3437, 'Gaibandha', 1076, 'Gaibandha Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3438, 'Gaibandha', 1077, 'Gobindaganj ( Gaibandha )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3439, 'Gaibandha', 1078, 'Palashbari', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3440, 'Gaibandha', 1079, 'Sadullapur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3441, 'Gaibandha', 1080, 'Shaghatta', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3442, 'Gaibandha', 1081, 'Sundarganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3443, 'Kurigram', 1082, 'Bhurungamari', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3444, 'Kurigram', 1083, 'Chilmary', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3445, 'Kurigram', 1084, 'Fulbari (Kurigram)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3446, 'Kurigram', 1085, 'Kurigram Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3447, 'Kurigram', 1086, 'Nageswari', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3448, 'Kurigram', 1087, 'Rajarhat', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3449, 'Kurigram', 1088, 'Rajibpur (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3450, 'Kurigram', 1089, 'Rowmari', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3451, 'Kurigram', 1090, 'Ulipur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3452, 'Lalmonirhat', 1091, 'Aditmari', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3453, 'Lalmonirhat', 1092, 'Hatibandha (Lalmonirhat)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3454, 'Lalmonirhat', 1093, 'Kaliganj(Lalmonirhat)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3455, 'Lalmonirhat', 1094, 'Lalmonirhat Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3456, 'Lalmonirhat', 1095, 'Patgram', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3457, 'Nilphamari', 1096, 'Dimla', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3458, 'Nilphamari', 1097, 'Domar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3459, 'Nilphamari', 1098, 'Jaldhaka', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3460, 'Nilphamari', 1099, 'Kishoreganj ( Nilphamari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3461, 'Nilphamari', 1100, 'Nilphamari Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3462, 'Nilphamari', 1101, 'Saidpur ( Saidpur Hub Nilphamari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3463, 'Panchagarh', 1102, 'Atwari (Panchagarh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3464, 'Panchagarh', 1103, 'Boda', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3465, 'Panchagarh', 1104, 'Debiganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3466, 'Panchagarh', 1105, 'Panchagarh Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3467, 'Panchagarh', 1106, 'Tetulia', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3468, 'Rangpur', 1107, 'Badarganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3469, 'Rangpur', 1108, 'Gangachara', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3470, 'Rangpur', 1109, 'Kaunia (Rangpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3471, 'Rangpur', 1110, 'Mithapukur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3472, 'Rangpur', 1111, 'Pirgacha', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3473, 'Rangpur', 1112, 'Pirganj(Rangpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3474, 'Rangpur', 1113, 'Rangpur Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3475, 'Rangpur', 1114, 'Taraganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3476, 'Thakurgaon', 1115, 'Baliadangi', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3477, 'Thakurgaon', 1116, 'Haripur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3478, 'Thakurgaon', 1117, 'Pirganj(Thakurgaon)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3479, 'Thakurgaon', 1118, 'Ranishankail', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3480, 'Thakurgaon', 1119, 'Thakurgaon Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3481, 'Khulna', 1120, 'Khulna Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3482, 'Rajshahi', 1121, 'Rajshahi Shadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3483, 'Narayanganj', 1123, 'Siddhirganj (Narayanganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3484, 'Narayanganj', 1124, 'Fatullah (Narayanganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3485, 'Dhaka', 1125, 'Kalatia(Keraniganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3486, 'Chapai Nawabganj', 1126, 'Chapai Nawabganj Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3487, 'Dhaka', 1127, 'Nolam Dhamrai', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3488, 'Dhaka', 1128, 'Manda(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3489, 'Jessore', 1129, 'Benapole', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3490, 'Bandarban', 1130, 'soho area', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3491, 'Dhaka', 1131, 'Zoo Road(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3492, 'Dhaka', 1132, 'Shahjahanpur(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3493, 'Narayanganj', 1133, 'Shanarpar (Narayanganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3494, 'Thakurgaon', 1134, 'Shibganj (Thakurgaon Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3495, 'Chittagong', 1135, 'Khulshi (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3496, 'Chittagong', 1136, 'Barahatia', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3497, 'Dhaka', 1137, 'Haterrjheel(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3498, 'Chittagong', 1138, 'Karnaphuli (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3499, 'Dhaka', 1139, 'Dhaka uddan(Mohammadpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3500, 'Dhaka', 1140, 'Nobodoy(Mohammadpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3501, 'Dhaka', 1141, 'Chad Uddan(Mohammadpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3502, 'Dhaka', 1142, 'Mohammadia Housing(Mohammadpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3503, 'Dhaka', 1143, 'Ring Road(Shymoli)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3504, 'Dhaka', 1144, 'Tajmahal Road(Mohammadpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3505, 'Dhaka', 1145, 'Nurjahan Road(Mohammadpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3506, 'Dhaka', 1146, 'Rajia Sultana Road(Mohammadpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3507, 'Dhaka', 1147, 'Sector 4 (Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3508, 'Dhaka', 1148, 'Adam Ali Market(Mazar Road-Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3509, 'Dhaka', 1149, 'Chalabon(Dakshinkhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3510, 'Dhaka', 1150, 'Mollapara(Dakhinkhan )', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3511, 'Dhaka', 1151, 'East Azampur (Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3512, 'Dhaka', 1152, 'Sector 5 (Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3513, 'Dhaka', 1153, 'Sector 14 (Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3514, 'Dhaka', 1154, 'Sector 3 (Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3515, 'Dhaka', 1155, 'Sector 7 (Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3516, 'Dhaka', 1156, 'Sector 9 (Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3517, 'Dhaka', 1157, 'Sector 11(Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3518, 'Dhaka', 1158, 'Nalbhog(Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3519, 'Dhaka', 1159, 'Middle Azampur (Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3520, 'Dhaka', 1160, 'Turag Model School (Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3521, 'Dhaka', 1161, 'Dhour (Uttara )', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3522, 'Dhaka', 1162, 'Bhatuliya(Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3523, 'Dhaka', 1163, 'Bamnartek(Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3524, 'Dhaka', 1164, 'Turag Thana(Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3525, 'Dhaka', 1165, 'Khalek Filling Station Road(Kallyanpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3526, 'Dhaka', 1166, 'EPZ, Baipayl, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3527, 'Dhaka', 1167, 'Lalkuthi (Mazar road-Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3528, 'Dhaka', 1168, 'Mirpur-1-block-A(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3529, 'Dhaka', 1169, 'Tolarbag(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3530, 'Dhaka', 1170, 'Ahmed Nagar-Paikpara(Mirpur-1)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3531, 'Dhaka', 1171, 'Paikpara (Mirpur-1)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3532, 'Dhaka', 1172, 'Pirerbag-60-feet(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3533, 'Dhaka', 1173, 'Mirpur-1-block-B (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3534, 'Dhaka', 1174, 'Dewanpara -vasantek(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3535, 'Dhaka', 1175, 'Begunbari(Tejgaon)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3536, 'Dhaka', 1176, 'Ajiz Market-ECB Chattar(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3537, 'Dhaka', 1178, 'Aga Nagar(Keraniganj)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3538, 'Dhaka', 1179, 'Kathuria(Keraniganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3539, 'Dhaka', 1180, 'Goljarbag(Keraniganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3540, 'Dhaka', 1181, 'Nazirabag(Keraniganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3541, 'Dhaka', 1182, 'Kaliganj (Keraniganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3542, 'Dhaka', 1183, 'Nazarganj(Keraniganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3543, 'Dhaka', 1184, 'Zinzira(Keraniganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3544, 'Dhaka', 1185, 'Kunipara (Tejgoan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3545, 'Dhaka', 1186, 'Babli Masjid (Tejgoan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3546, 'Dhaka', 1187, 'Kaderabad Housing(Mohammadpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3547, 'Dhaka', 1188, 'Kunia-Tar gach(Tongi)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3548, 'Dhaka', 1189, 'Gacha Bazar ( Boro Bari)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3549, 'Dhaka', 1190, 'Boro Bari (Tongi)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3550, 'Dhaka', 1191, 'Board Bazar (Tongi)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3551, 'Dhaka', 1192, 'Kamarjuri (Gazipur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3552, 'Dhaka', 1193, 'Saifuddin Sarkar Academy Road (Tongi collage Gate)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3553, 'Dhaka', 1194, 'Auchpara (Tongi collage Gate)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3554, 'Dhaka', 1195, 'Cherag Ali (Tongi)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3555, 'Dhaka', 1196, 'Tongi Bus Stand', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3556, 'Dhaka', 1197, 'Ershadnagar-Hossain Market(Tongi)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3557, 'Dhaka', 1198, 'Sataish-Gazipura(Tongi)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3558, 'Dhaka', 1199, 'Apollo Hospital (Bashundhara R/A)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3559, 'Dhaka', 1200, 'Nurerchala(Natun Bazar)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3560, 'Dhaka', 1201, 'Bawaila Para(Khilkhet)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3561, 'Dhaka', 1202, 'Satarkul (Uttor Badda)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3562, 'Dhaka', 1206, '100 Feet Road (Natun Bazar)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3563, 'Dhaka', 1207, 'Buddho Mondir(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3564, 'Dhaka', 1208, 'Sipahibag(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3565, 'Dhaka', 1209, 'TT Para (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3566, 'Dhaka', 1210, 'Eastern Housing (Mohammadpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3567, 'Dhaka', 1211, 'Teskunipara(Farmgate)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3568, 'Dhaka', 1212, 'Tenari More (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3569, 'Dhaka', 1213, 'Shahidnagar (Lalbagh- Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3570, 'Dhaka', 1214, 'Jhigatola(Dhanmondi)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3571, 'Dhaka', 1215, 'Polashi(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3572, 'Dhaka', 1216, 'Satmoshjid Road(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3573, 'Dhaka', 1217, 'Shukrabad(Dhanmondi)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3574, 'Dhaka', 1218, 'BNP Bazar(Agargaon)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3575, 'Dhaka', 1219, 'Kalachandpur(Nadda)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3576, 'Dhaka', 1220, 'Jogonnathpur(Nadda)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3577, 'Dhaka', 1221, 'Kuratoli Bazar(Kuril)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3578, 'Dhaka', 1222, 'Alatunnessa School Road (South Badda)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3579, 'Dhaka', 1223, 'Purbo Rampura(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3580, 'Dhaka', 1224, 'Bou Bazar Korail (Mohakhali)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3581, 'Dhaka', 1225, 'Chairman Bari (Banani)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3582, 'Dhaka', 1226, 'Confidence Tower (Shahajadpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3583, 'Dhaka', 1227, 'Dhelna (Khilkhet)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3584, 'Dhaka', 1228, 'Madani Avenue(100 Feet Road Natun Bazar)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3585, 'Dhaka', 1229, 'Korail (Mohakhali)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3586, 'Dhaka', 1230, 'Mahanogor(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3587, 'Dhaka', 1231, 'Nimtola (Merul Badda)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3588, 'Dhaka', 1232, 'Boat Ghat Road (Natun Bazar)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3589, 'Dhaka', 1233, 'Pastola Bazar (Merul Badda)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3590, 'Dhaka', 1234, 'Poschim Badda', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3591, 'Dhaka', 1235, 'Purbo Badda', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3592, 'Dhaka', 1236, 'Sat-tola Bazar (Mohakhali)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3593, 'Dhaka', 1237, 'Shaheenbagh (Tejgoan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3594, 'Dhaka', 1238, 'Suvastu Nazar Valley (Shahjadpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3595, 'Dhaka', 1239, 'ICDDRB (Mohakhali)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3596, 'Dhaka', 1240, 'Satrasta (Tejgoan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3597, 'Dhaka', 1241, 'Shadinota Sharani (Uttor Badda)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3598, 'Dhaka', 1242, 'North Badda', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3599, 'Dhaka', 1243, 'Wireless gate (Mohakhali)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3600, 'Dhaka', 1244, 'Solmaid(Natun Bazar)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3601, 'Dhaka', 1245, 'Pink City Model Town (Kuril )', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3602, 'Dhaka', 1246, 'Mirhazirbagh(Jatrabari)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3603, 'Narayanganj', 1247, 'Bhuigor (Narayanganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3604, 'Dhaka', 1248, 'Mahut Tuli (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3605, 'Dhaka', 1249, 'Alubazar (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3606, 'Dhaka', 1250, 'Badam Toli (Babubazar)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3607, 'Dhaka', 1251, 'Chamelibag (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3608, 'Dhaka', 1252, 'Dholaikhal (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3609, 'Dhaka', 1253, 'Doyagonj (Jatrabari)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3610, 'Dhaka', 1254, 'Farashgong (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3611, 'Dhaka', 1255, 'Dholpur(Jatrabari)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3612, 'Dhaka', 1256, 'Kodomtoli(Keraniganj)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3613, 'Dhaka', 1257, 'Kotwali Thana (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3614, 'Dhaka', 1258, 'Railway Colony (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3615, 'Dhaka', 1259, 'Rajar Dewri (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3616, 'Dhaka', 1260, 'Hasnabad(Keraniganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3617, 'Dhaka', 1261, 'Sat rowja (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3618, 'Dhaka', 1262, 'Tantibazar (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3619, 'Dhaka', 1263, 'Joy Bangla Road (Tongi)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3620, 'Dhaka', 1264, 'Bonomala (Tongi collage gate)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3621, 'Dhaka', 1265, 'Morkun (Tongi Bus Stand)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3622, 'Dhaka', 1266, 'Bhadam (Cherag Ali )', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3623, 'Dhaka', 1267, 'Cherag Ali (Tongi)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3624, 'Dhaka', 1268, 'Rosulbagh(Mohakhali)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3625, 'Dhaka', 1269, 'Gopalpur (Tongi Station Road)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3626, 'Dhaka', 1270, 'Tongi College Gate', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3627, 'Dhaka', 1271, 'Bottola Road (Board Bazar)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3628, 'Dhaka', 1272, 'Kazibari Road - Gazipura (Tongi)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3629, 'Dhaka', 1273, 'Hossain Market (Tongi)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3630, 'Dhaka', 1274, 'Open University (Tongi)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3631, 'Dhaka', 1275, 'Joydebpur (Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3632, 'Dhaka', 1276, 'Dhirasrom (Joydebpur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3633, 'Dhaka', 1277, 'Dattapara Road (Tongi collage Gate)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3634, 'Dhaka', 1278, 'Badekomelosshor (Board Bazar)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3635, 'Dhaka', 1279, 'Borobari (Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3636, 'Dhaka', 1280, 'Choidana (Singboard-Tongi)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3637, 'Dhaka', 1281, 'Deger Chala (Singboard-Tongi)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3638, 'Dhaka', 1282, 'Sahid Siddque Road (Board Bazar)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3639, 'Dhaka', 1283, 'Hariken (Tongi)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3640, 'Dhaka', 1284, 'Khortuil (Gazipura-Tongi)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3641, 'Dhaka', 1285, 'Majukhan (Tongi Station Road)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3642, 'Dhaka', 1286, 'Milgate (Tongi Station Road)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3643, 'Dhaka', 1287, 'National University ( Board Bazar)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3644, 'Dhaka', 1288, 'Surtaranga (Tongi Collage Gate)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3645, 'Dhaka', 1289, 'Targach (Tongi Boro Bari)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3646, 'Dhaka', 1290, 'Megh Dubi Tongi ( Mirer Bazar)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3647, 'Dhaka', 1291, 'Boro Dewra (Tongi Cherag Ali)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3648, 'Dhaka', 1292, 'Mazar Road Uttarkhan', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3649, 'Dhaka', 1293, 'Sonakhola (Dakshinkhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3650, 'Dhaka', 1294, 'Hajipara(Dakshinkhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3651, 'Dhaka', 1295, 'Ranavola(Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3652, 'Dhaka', 1296, 'Joynal Market(Dakshinkhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3653, 'Dhaka', 1297, 'Haji Camp(Askona)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3654, 'Dhaka', 1298, 'Sarwar Avenue(Dakshinkhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3655, 'Dhaka', 1299, 'BDR Market-House Building(Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3656, 'Dhaka', 1300, 'BDR Market-Sector 6(Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3657, 'Dhaka', 1301, 'Moinartek(Dakshinkhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3658, 'Dhaka', 1302, 'Atipara(Dakshinkhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3659, 'Dhaka', 1303, 'Kotbari (Dakshinkhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3660, 'Dhaka', 1304, 'Dewan City(Dakshinkhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3661, 'Dhaka', 1305, 'Mollartek(Dakshinkhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3662, 'Dhaka', 1306, 'Gawair(Dakshinkhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3663, 'Dhaka', 1307, 'Kosaibari (Dakshinkhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3664, 'Dhaka', 1308, 'Prembagan(Dakshinkhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3665, 'Dhaka', 1309, 'Kachkura(Dakshinkhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3666, 'Dhaka', 1310, 'Helal Market(Dakshinkhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3667, 'Dhaka', 1311, 'Chamur Khan(Dakshinkhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3668, 'Dhaka', 1312, 'Army housing Society(Dakshinkhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3669, 'Dhaka', 1313, 'Ismailkholla(Dakshinkhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3670, 'Dhaka', 1314, 'Masterpara(Dakshinkhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3671, 'Dhaka', 1315, 'Khilgaon C Block (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3672, 'Dhaka', 1316, 'Barua(Dakshinkhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3673, 'Dhaka', 1317, 'Namapara (Khilkhet)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3674, 'Dhaka', 1318, 'Ahalia (Uttara Sector-14)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3675, 'Dhaka', 1319, 'Ainusbag-Dakshinkhan', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3676, 'Dhaka', 1320, 'Diabari (Uttara sector-18)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3677, 'Dhaka', 1321, 'Habib Market (Uttara Sector-5)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3678, 'Dhaka', 1322, 'Pakuria Bazar (Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3679, 'Dhaka', 1323, 'Jahurul Islam Avenue (Aftabnagar)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3680, 'Dhaka', 1324, 'Gulbagh(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3681, 'Dhaka', 1325, 'Meradiya Bazar(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3682, 'Dhaka', 1326, 'Mirbagh(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3683, 'Dhaka', 1327, 'Modhubagh(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3684, 'Dhaka', 1328, 'Rampura TV center(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3685, 'Dhaka', 1329, 'TB gate (Mohakhali)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3686, 'Dhaka', 1330, 'Ulan road(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3687, 'Dhaka', 1331, 'Mirpur 10 Circle(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3688, 'Dhaka', 1332, 'Mirpur-1-block-C (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3689, 'Dhaka', 1333, 'Bazar Road - Manikdi(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3690, 'Dhaka', 1334, 'Police Staff College(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3691, 'Dhaka', 1335, 'Technical (Kallayanpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3692, 'Dhaka', 1336, 'NAM Garden-BRTA (Mirpur-13)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3693, 'Dhaka', 1337, 'Benaroshi Polli(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3694, 'Dhaka', 1338, 'Tamanna Park(Beribadh-Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3695, 'Dhaka', 1339, 'Buddhijibi (Mazar Road-Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3696, 'Dhaka', 1340, 'Hope School Road (Mirpur-13)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3697, 'Dhaka', 1341, 'Buddhist Temple(Mirpur-13)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3698, 'Dhaka', 1342, 'Palasnagor(Mirpur 11)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3699, 'Dhaka', 1343, 'Purobi Bus Stand(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3700, 'Dhaka', 1344, 'Govt Secondary School Road Rupnagor(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3701, 'Dhaka', 1345, 'Senpara Parbata(Mirpur 10)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3702, 'Dhaka', 1346, 'BRTA(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3703, 'Dhaka', 1347, 'South Kafrul (Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3704, 'Dhaka', 1348, 'Niketon Bazar Gate (Niketon)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3705, 'Chittagong', 1349, 'New Market (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3706, 'Chittagong', 1350, 'Agrabad', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3707, 'Chittagong', 1351, 'AK Khan (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3708, 'Chittagong', 1352, 'Al- Amin Baria Madra', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3709, 'Chittagong', 1353, 'Chawkbazar (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3710, 'Chittagong', 1354, 'Amin Jute Mills (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3711, 'Chittagong', 1355, 'Anandabazar (Chittagong))', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3712, 'Chittagong', 1356, 'Anawara Battali', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3713, 'Chittagong', 1357, 'Anawara Paroikora', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3714, 'Chittagong', 1358, 'Bayezid Bostami (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3715, 'Chittagong', 1359, 'Boalkhali Upazila (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3716, 'Chittagong', 1360, 'Boalkhali (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3717, 'Chittagong', 1361, 'Kadurkhal (Boalkhali-CTG)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3718, 'Chittagong', 1362, 'Kanungopara (Boalkhali Upazila-ctg)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3719, 'Chittagong', 1363, 'Boalkhali Sadar(ctg)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3720, 'Chittagong', 1364, 'Sakpura (Boalkhali Upazila-ctg)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3721, 'Chittagong', 1365, 'Saroatoli (Boalkhali Upazila-ctg)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3722, 'Chittagong', 1366, 'Faujdarhat Cadet College (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3723, 'Chittagong', 1367, 'Chandgaon (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3724, 'Chittagong', 1368, 'Chattogram Airport', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3725, 'Chittagong', 1369, 'Seaport of Chittagong', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3726, 'Chittagong', 1370, 'Chittagong Cantonment', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3727, 'Chittagong', 1371, 'Chawkbazar (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3728, 'Chittagong', 1372, 'Chittagong Customs', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3729, 'Chittagong', 1373, 'Chattogram GPO', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3730, 'Chittagong', 1374, 'Chattogram New Market', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3731, 'Chittagong', 1375, 'Oxygen (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3732, 'Chittagong', 1376, 'Chattogram Politechnic Institute', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3733, 'Chittagong', 1377, 'Chattogram Sailors Colony', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3734, 'Chittagong', 1378, 'Colonel Hat (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3735, 'Chittagong', 1379, 'Combined Military Hospital (CMH) (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3736, 'Chittagong', 1380, 'Chittagong Court Buliding', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3737, 'Chittagong', 1381, 'Dakkhin Ghatchak', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3738, 'Chittagong', 1382, 'Halishahar (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3739, 'Chittagong', 1383, 'Double Mooring (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3740, 'Chittagong', 1384, 'East Joara Barma (Chandanaish)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3741, 'Chittagong', 1385, 'East Joara Dohazari', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3742, 'Chittagong', 1386, 'East Joara East Joara (Dohazari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3743, 'Chittagong', 1387, 'East Joara Gachbaria (Chandanaish)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3744, 'Chittagong', 1388, 'Export Processing Zone (Chittagong EPZ)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3745, 'Chittagong', 1389, 'Fakirkill', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3746, 'Chittagong', 1390, 'Fatikchhari Bhandar Sharif', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3747, 'Chittagong', 1391, 'Fatikchhari Harualchhari', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3748, 'Chittagong', 1392, 'Fatikchhari Najirhat', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3749, 'Chittagong', 1393, 'Fatikchhari Nanupur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3750, 'Chittagong', 1394, 'Fatikchhari Narayanhat', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3751, 'Chittagong', 1395, 'Firozshah (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3752, 'Chittagong', 1396, 'GEC Circle (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3753, 'Chittagong', 1397, 'Halishahar (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3754, 'Chittagong', 1398, 'Halishshar (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3755, 'Chittagong', 1399, 'Chittagong University', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3756, 'Chittagong', 1400, 'Hathazari Fatahabad', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3757, 'Chittagong', 1401, 'Hathazari Gorduara', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3758, 'Chittagong', 1402, 'Hathazari Katirhat', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3759, 'Chittagong', 1403, 'Hathazari Madrasa', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3760, 'Chittagong', 1404, 'Hathazari Mirzapur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3761, 'Chittagong', 1405, 'Hathazari Nuralibari', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3762, 'Chittagong', 1406, 'Hathazari Yunus Nagar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3763, 'Sylhet', 1407, 'Jalalabad (Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3764, 'Chittagong', 1408, 'Jaldi Banigram (Bashkhali)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3765, 'Chittagong', 1409, 'Jaldi Gunagari (Bashkhali)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3766, 'Chittagong', 1410, 'Jaldi Khan Bahadur (Bashkhali)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3767, 'Chittagong', 1411, 'Jaldi Sadar (Bashkhali)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3768, 'Chittagong', 1412, 'Jaldia Marine Academy (Patiya)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3769, 'Chittagong', 1413, 'Jaldia Merine Accademy(Ctg)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3770, 'Chittagong', 1414, 'Kadeer Nagar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3771, 'Chittagong', 1415, 'Kaptai Chandraghona', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3772, 'Rangamati', 1416, 'Kaptai Kaptai Project', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3773, 'Rangamati', 1417, 'Kaptai Nuton Bazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3774, 'Rangamati', 1418, 'Kaptai Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3775, 'Chittagong', 1419, 'Kattoli, Chittagong', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3776, 'Chittagong', 1420, 'Khulshi, Chittagong', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3777, 'Chittagong', 1421, 'Lohagara Chunti', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3778, 'Chittagong', 1422, 'Lohagara Padua', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3779, 'Chittagong', 1423, 'Middle Patenga', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3780, 'Chittagong', 1424, 'Mirsharai Abutorab', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3781, 'Chittagong', 1425, 'Mirsharai Azampur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3782, 'Chittagong', 1426, 'Mirsharai Bharawazhat', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3783, 'Chittagong', 1427, 'Mirsharai Darrogahat', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3784, 'Chittagong', 1428, 'Mirsharai Joarganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3785, 'Chittagong', 1429, 'Mirsharai Korerhat', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3786, 'Chittagong', 1430, 'Mirsharai Mohazanhat', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3787, 'Chittagong', 1431, 'Mohora, Chittagong', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3788, 'Chittagong', 1432, 'Muradnagar - Hathazari', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3789, 'Chittagong', 1433, 'Nasirabad, Chittagong', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3790, 'Chittagong', 1434, 'North Halishahar, Chittagong', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3791, 'Chittagong', 1435, 'North Kattali, Chittagong', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3792, 'Chittagong', 1436, 'North Katuli, Chittagong', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3793, 'Chittagong', 1437, 'Noyabazar, Chittagong', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3794, 'Chittagong', 1438, 'Halishahar, Chittagong', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3795, 'Chittagong', 1439, 'Panchlaish, Chittagong', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36');
INSERT INTO `redx_delivery_areas` (`id`, `district_name`, `area_id`, `area_name`, `zone_id`, `status`, `created_at`, `updated_at`) VALUES
(3796, 'Chittagong', 1440, 'Patenga, Chittagong', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3797, 'Chittagong', 1441, 'Patiya Budhpara', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3798, 'Chittagong', 1442, 'Patiya Sadar, Chittagong', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3799, 'Chittagong', 1443, 'Rampur, Chittagong', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3800, 'Chittagong', 1444, 'Rampura TSO', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3801, 'Chittagong', 1445, 'Rangunia Dhamair', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3802, 'Chittagong', 1446, 'Rangunia Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3803, 'Chittagong', 1447, 'Ranir Hat', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3804, 'Chittagong', 1448, 'Raozan B.I.T Post Office', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3805, 'Chittagong', 1449, 'Raozan Beenajuri', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3806, 'Chittagong', 1450, 'Raozan Dewanpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3807, 'Chittagong', 1451, 'Raozan Fatepur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3808, 'Chittagong', 1452, 'Raozan Guzra Noapara', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3809, 'Chittagong', 1453, 'Raozan jagannath Hat', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3810, 'Chittagong', 1454, 'Raozan Kundeshwari', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3811, 'Chittagong', 1455, 'Raozan Mohamuni', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3812, 'Chittagong', 1456, 'Raozan Pouroshobha', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3813, 'Chittagong', 1457, 'Rauzan Gahira', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3814, 'Chittagong', 1458, 'Sadarghat (Chittagong)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3815, 'Chittagong', 1459, 'Sandwip Shiberhat', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3816, 'Chittagong', 1460, 'Sandwip Urirchar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3817, 'Chittagong', 1461, 'Satkania Baitul Ijjat', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3818, 'Chittagong', 1462, 'Satkania Bazalia', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3819, 'Chittagong', 1463, 'Sayad Bari', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3820, 'Chittagong', 1464, 'Sitakunda Barabkunda', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3821, 'Chittagong', 1465, 'Sitakunda Baroidhala', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3822, 'Chittagong', 1466, 'Sitakunda Bawashbaria', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3823, 'Chittagong', 1467, 'Sitakunda Bhatiari', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3824, 'Chittagong', 1468, 'Sitakunda Fouzdarhat', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3825, 'Chittagong', 1469, 'Sitakunda Jafrabad', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3826, 'Chittagong', 1470, 'Sitakunda Kumira', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3827, 'Chittagong', 1471, 'South Halishahar, Chittagong', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3828, 'Chittagong', 1472, 'Uttar Gatchak', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3829, 'Chittagong', 1473, 'Wazedia, Chittagong', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3830, 'Gazipur', 1475, 'Mawna Chowrasta', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3831, 'Gazipur', 1476, ' Bangla Bazar (Mawna)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3832, 'Gazipur', 1477, 'Mirjapur Masterbari(Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3833, 'Gazipur', 1478, 'Vobanipur(Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3834, 'Gazipur', 1479, 'Barmi Sreepur (Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3835, 'Gazipur', 1480, 'Safari Park(Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3836, 'Dhaka', 1481, 'Eastern Housing (Mirpur-12)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3837, 'Comilla', 1482, 'Gouripur (Comilla)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3838, 'Dinajpur', 1483, 'College mor (Dinajpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3839, 'Dinajpur', 1484, 'Boromath (Dinajpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3840, 'Dinajpur', 1485, 'Pulhat', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3841, 'Dinajpur', 1486, 'Newtown (Dinajpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3842, 'Dinajpur', 1487, 'Lilir mor', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3843, 'Dinajpur', 1488, 'Modern mor (Dinajpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3844, 'Sunamganj', 1489, 'Old bustand (Sunamganj Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3845, 'Sunamganj', 1490, 'Kazirpoint (Sunamganj Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3846, 'Sunamganj', 1491, 'Hason Nagar ( Sunamganj Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3847, 'Sunamganj', 1492, 'Moddho Bazar (Sunamganj Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3848, 'Sunamganj', 1493, 'Wazkhali (Sunamganj Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3849, 'Sylhet', 1494, 'Zindabazar(Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3850, 'Sylhet', 1495, 'Pathantula(Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3851, 'Sylhet', 1496, 'Subidbazar(Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3852, 'Sylhet', 1497, 'Akhalia(Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3853, 'Sylhet', 1498, 'Tilaghor(Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3854, 'Sylhet', 1499, 'Shibganj(sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3855, 'Sylhet', 1500, 'Uposhohor(Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3856, 'Sylhet', 1501, 'Kodomtoli (Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3857, 'Sylhet', 1502, 'Sheikhghat (Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3858, 'Sylhet', 1503, 'Majortila(Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3859, 'Sylhet', 1504, 'Subhanighat(Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3860, 'Norshingdi', 1505, 'Madhabdi (Narsingdi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3861, 'Norshingdi', 1506, 'Babur Haat (Narsingdi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3862, 'Norshingdi', 1507, 'Pachdona More (Narsingdi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3863, 'Norshingdi', 1508, 'Shaheprotab More (Narsingdi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3864, 'Norshingdi', 1509, 'West Brammondi (Narsingdi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3865, 'Norshingdi', 1510, 'East Brammondi (Narsingdi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3866, 'Norshingdi', 1511, 'Songita Bazar (Narsingdi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3867, 'Norshingdi', 1512, 'Shatirpara (Narsingdi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3868, 'Norshingdi', 1513, 'Hasnabad Bazar (Narsingdi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3869, 'Habiganj', 1514, 'Rajnogor (Habiganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3870, 'Habiganj', 1515, 'Chowdhury Bazar (Habiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3871, 'Habiganj', 1516, 'Sultanmahmudpur(Habiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3872, 'Habiganj', 1517, 'Gatiabazar(Habiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3873, 'Habiganj', 1518, 'Mahmudabad(Habiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3874, 'Habiganj', 1519, 'Duliakal(Habiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3875, 'Habiganj', 1520, 'Mohonpur (Habiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3876, 'Brahmanbaria', 1521, 'Kawtoly (Brahmanbaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3877, 'Brahmanbaria', 1522, 'T.A Road (Brahmanbaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3878, 'Brahmanbaria', 1523, 'Sarak bazar (Brahmanbaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3879, 'Brahmanbaria', 1524, 'Moddopara (Brahmanbaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3880, 'Brahmanbaria', 1525, 'Birashar (Brahmanbaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3881, 'Brahmanbaria', 1526, 'Medda (Brahmanbaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3882, 'Brahmanbaria', 1527, 'Gatura- Pirbari (Brahmanbaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3883, 'Mymensingh', 1528, 'Chorpara (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3884, 'Mymensingh', 1529, 'Kachijhuli (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3885, 'Mymensingh', 1530, 'College Road (Mymensigh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3886, 'Mymensingh', 1531, 'Akua (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3887, 'Mymensingh', 1532, 'Agriculture University (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3888, 'Mymensingh', 1533, 'Zilla School Mor (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3889, 'Mymensingh', 1534, 'Rohomotpur Bypass (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3890, 'Mymensingh', 1535, 'Mashkanda (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3891, 'Gazipur', 1536, 'Pubail(Tongi)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3892, 'Gazipur', 1537, 'Mirerbazar(Tongi)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3893, 'Gazipur', 1538, 'Ulokhola ( Kaliganj-Tongi)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3894, 'Gazipur', 1539, 'Modhumita (Tongi Station Road)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3895, 'Gazipur', 1540, 'Miraspara (Tongi Bus stand)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3896, 'Gazipur', 1541, 'Pagar - Miraspara ( Tongi Bus Stand)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3897, 'Gazipur', 1542, 'Jinumarket (Tongi Bus Stand)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3898, 'Gazipur', 1543, 'T & T - (Tongi Station Road )', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3899, 'Gazipur', 1544, 'Shilmun (Tongi Station Road)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3900, 'Gazipur', 1545, 'Mudafa (Tongi cherag Ali)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3901, 'Gazipur', 1546, 'Khapara (Hossain Market)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3902, 'Gazipur', 1547, 'Malakerbari (Tongi)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3903, 'Gazipur', 1548, 'Gazipur Bypass', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3904, 'Gazipur', 1549, 'Kodda (Gazipur By Pass Road road)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3905, 'Gazipur', 1550, 'DUET (Joydebpur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3906, 'Gazipur', 1551, 'Shibbari (joydebpur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3907, 'Gazipur', 1552, 'Shimultoli (joydebpur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3908, 'Gazipur', 1553, 'Jorpukur (joydebpur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3909, 'Gazipur', 1554, 'Salna(Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3910, 'Gazipur', 1555, 'Porabari Bazar (Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3911, 'Gazipur', 1556, 'Dhaladia Sreepur(Mawna Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3912, 'Gazipur', 1557, 'Hotapara (Mawan-Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3913, 'Gazipur', 1558, 'Bager bazar (Mawana-Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3914, 'Gazipur', 1559, 'Member Bari(Mawna Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3915, 'Gazipur', 1560, 'Gorgoria Masterbari(Sreepur Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3916, 'Gazipur', 1561, 'Mc Bazar (Mawna)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3917, 'Gazipur', 1562, 'Nayanpur Sreepur (Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3918, 'Gazipur', 1563, 'Konabari (Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3919, 'Gazipur', 1564, 'Mouchak (Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3920, 'Gazipur', 1565, 'Kashimpur Bazar (Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3921, 'Gazipur', 1566, 'Shafipur (Kaliakoir-Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3922, 'Gazipur', 1567, 'Joyna Bazar (Sreepur Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3923, 'Gazipur', 1568, 'Pollibidut (Chondra)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3924, 'Gazipur', 1569, 'Chondra (Kaliakoir)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3925, 'Gazipur', 1570, 'Rajabari Sreepur (Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3926, 'Dhaka', 1571, 'Lucas more(Tejgaon)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3927, 'Dhaka', 1572, 'Nijhum gate (Dhaka Cantonment)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3928, 'Dhaka', 1573, 'Niketon Bazar gate(Mohakhali)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3929, 'Dhaka', 1574, 'South Begunbari(Tejgaon)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3930, 'Dhaka', 1575, 'Mohakhali Bus terminal(Mohakhali)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3931, 'Cox\'s Bazar', 1576, 'Kalur Dokan (Coxs Bazar Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3932, 'Cox\'s Bazar', 1577, 'Alir Jahal Road (Coxs Bazar Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3933, 'Cox\'s Bazar', 1578, 'Barmis Market (Coxs Bazar Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3934, 'Cox\'s Bazar', 1579, 'Bazar Ghata (Coxs Bazar Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3935, 'Cox\'s Bazar', 1580, 'Laldighir Par (Coxs Bazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3936, 'Cox\'s Bazar', 1581, 'Holiday Mor(Coxs Bazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3937, 'Cox\'s Bazar', 1582, 'Laboni Point (Coxs Bazar Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3938, 'Cox\'s Bazar', 1583, 'Sughandha Point (Coxs Bazar Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3939, 'Cox\'s Bazar', 1584, 'Marin Drive Road', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3940, 'Cox\'s Bazar', 1585, 'Sonar Para (Court Bazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3941, 'Cox\'s Bazar', 1586, 'Jilonjha (Coxs Bazar Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3942, 'Cox\'s Bazar', 1587, 'Tarabaniyer chora (Coxs Bazar Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3943, 'Cox\'s Bazar', 1588, 'Romaliyer chora (Coxs Bazar Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3944, 'Cox\'s Bazar', 1589, 'Khurushkul (Coxs Bazar Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3945, 'Cox\'s Bazar', 1590, 'P M Khali (Coxs Bazar Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3946, 'Cox\'s Bazar', 1591, 'Somity Para (Coxs Bazar Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3947, 'Khulna', 1592, 'Amadee Bazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3948, 'Khulna', 1593, 'kopilmuni Bazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3949, 'Dhaka', 1594, 'Arambag (Mirpur 7)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3950, 'Dhaka', 1595, 'Nazimuddin Road (Puran Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3951, 'Dhaka', 1596, 'Nazimuddin Road (Malibag)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3952, 'Dhaka', 1597, 'Kodomtoli Thana (Jatrabari)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3953, 'Dhaka', 1598, 'SDA', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3954, 'Habiganj', 1599, 'Shayestagang Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3955, 'Dhaka', 1600, '60 feet Mor (Mirpur-2 )', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3956, 'Laksmipur', 1601, 'Alexandar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3957, 'Patuakhali', 1602, 'Kuakata', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3958, 'Patuakhali', 1603, 'Subitkhali', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3959, 'Patuakhali', 1604, 'Khepupara (Kolapara)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3960, 'Patuakhali', 1605, 'Payra port(Kolapara)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3961, 'Patuakhali', 1606, 'Baga Bander (Baga Ferrighat)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3962, 'Patuakhali', 1607, 'Kalaiya (Bauphal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3963, 'Patuakhali', 1608, 'Mohipur(kolapara-Patuakhali)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3964, 'Patuakhali', 1609, 'Birpasha (Bauphal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3965, 'Chittagong', 1610, 'Sandwip (Enam Nagar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3966, 'Chittagong', 1611, 'Sandwip (Complex)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3967, 'Chittagong', 1612, 'Sandwip (Kalapaniya)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3968, 'Chittagong', 1613, 'Sandwip (Gasua)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3969, 'Habiganj', 1614, 'Ranigaon (Shayestaganj Hub)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3970, 'Habiganj', 1615, 'Putijuri (Shayestaganj Hub)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3971, 'Pabna', 1616, 'Banwarinagar (Pabna)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3972, 'Pabna', 1617, 'Debottar (Pabna)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3973, 'Pabna', 1618, 'Kashinathpur (Pabna)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3974, 'Pabna', 1619, 'Nakalia (Pabna)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3975, 'Pabna', 1620, 'Pakshi (Pabna)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3976, 'Pabna', 1621, 'Sagarkandi (Pabna)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3977, 'Moulvibazar', 1622, 'Shamshernagar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3978, 'Moulvibazar', 1623, 'Sherpur Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3979, 'Moulvibazar', 1624, 'Baramchal (Kulaura)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3980, 'Moulvibazar', 1625, 'Robir Bazar (Kulaura)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3981, 'Brahmanbaria', 1626, 'Bijoynagor (Brahmanbaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3982, 'Brahmanbaria', 1627, 'Shahbajpur (Brahmanbaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3983, 'Brahmanbaria', 1628, 'Sohilpur (Brahmanbaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3984, 'Brahmanbaria', 1629, 'Chandura (Bijoynagar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3985, 'Brahmanbaria', 1630, 'Singarbil (Bijoynagar)-Brahmanbaria', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3986, 'Brahmanbaria', 1631, 'Awliya Bazar (Bijoynagar)-Brahmanbaria', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3987, 'Brahmanbaria', 1632, 'Poirtola (Brahmanbaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3988, 'Brahmanbaria', 1633, 'Ulchapara (Brahmanbaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3989, 'Brahmanbaria', 1634, 'Bhadugor (Brahmanbaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3990, 'Brahmanbaria', 1635, 'Kumarshil more (Brahmanbaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3991, 'Dhaka', 1636, 'Banasree Block - A (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3992, 'Dhaka', 1637, 'Banasree Block - B (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3993, 'Dhaka', 1638, 'Banasree Block - C (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3994, 'Dhaka', 1639, 'Banasree Block - D (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3995, 'Dhaka', 1640, 'Banasree Block - E (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3996, 'Dhaka', 1641, 'Banasree Block - F (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3997, 'Dhaka', 1642, 'Banasree Block - G (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3998, 'Dhaka', 1643, 'Banasree Block - H (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(3999, 'Dhaka', 1644, 'Banasree Block - I (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4000, 'Dhaka', 1645, 'Banasree Block - J (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4001, 'Dhaka', 1646, 'Banasree Block - K (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4002, 'Dhaka', 1647, 'Banasree Block - L (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4003, 'Dhaka', 1648, 'Banasree Block - M (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4004, 'Dhaka', 1649, 'Banasree Block - N (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4005, 'Dhaka', 1650, 'Sector 1 (Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4006, 'Dhaka', 1651, 'Sector 2 (Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4007, 'Dhaka', 1652, 'Sector  6 (Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4008, 'Dhaka', 1653, 'Sector 8 (Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4009, 'Dhaka', 1654, 'Sector 10 (Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4010, 'Dhaka', 1655, 'Sector 12(Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4011, 'Dhaka', 1656, 'Uttara Sector - 13', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4012, 'Dhaka', 1657, 'Sector 15(Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4013, 'Narayanganj', 1658, 'Signboard (Narayanganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4014, 'Narayanganj', 1659, 'Jalkuri (Narayanganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4015, 'Dhaka', 1660, 'Dhanmondi - Rd 1', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4016, 'Dhaka', 1661, 'Dhanmondi - Rd 2', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4017, 'Dhaka', 1662, 'Dhanmondi - Road 4', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4018, 'Dhaka', 1663, 'Dhanmondi - Road 4A', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4019, 'Dhaka', 1664, 'Dhanmondi - Rd 6', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4020, 'Dhaka', 1665, 'Dhanmondi - Rd 6', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4021, 'Dhaka', 1666, 'Dhanmondi - Rd 3A', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4022, 'Dhaka', 1667, 'Dhanmondi - Rd 6A', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4023, 'Dhaka', 1668, 'Dhanmondi - Rd 8', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4024, 'Dhaka', 1669, 'Dhanmondi - Rd 8A', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4025, 'Dhaka', 1670, 'Dhanmondi - Rd 9', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4026, 'Dhaka', 1671, 'Dhanmondi - Road 9/A', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4027, 'Dhaka', 1672, 'Dhanmondi - Rd 10', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4028, 'Dhaka', 1673, 'Dhanmondi - Rd 12', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4029, 'Dhaka', 1674, 'Dhanmondi - Rd 12A', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4030, 'Dhaka', 1675, 'Dhanmondi - Rd 15', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4031, 'Dhaka', 1676, 'Dhanmondi - Rd 15 A', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4032, 'Dhaka', 1677, 'Dhanmondi - Rd 27', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4033, 'Dhaka', 1678, 'Dhanmondi - Rd 28', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4034, 'Dhaka', 1679, 'Dhanmondi - Rd 29', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4035, 'Narayanganj', 1680, 'Sibu market ( Narayanganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4036, 'Dhaka', 1681, 'Jigatala post office(Dhanmondi)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4037, 'Dhaka', 1682, 'Sadek Khan Road(Mohammadpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4038, 'Dhaka', 1683, 'Sher e Bangla Road(Mohammadpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4039, 'Dhaka', 1684, 'Katasur(Mohammadpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4040, 'Dhaka', 1685, 'Dhanmondi Staff Quarter', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4041, 'Dhaka', 1686, 'Sector 16 (Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4042, 'Dhaka', 1687, 'Sector 17 (Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4043, 'Dhaka', 1688, 'Sector 18 (Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4044, 'Narayanganj', 1689, 'Chittagong Road (Narayanganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4045, 'Dhaka', 1690, 'Arshinagar (Keraniganj)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4046, 'Dhaka', 1691, 'Washpur(Keraniganj)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4047, 'Dhaka', 1692, 'Garden City(Mohammadpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4048, 'Dhaka', 1693, 'Boddhovumi(Mohammadpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4049, 'Dhaka', 1694, 'Mirpur - 6(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4050, 'Dhaka', 1695, 'Mirpur - 7(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4051, 'Dhaka', 1696, 'Mirpur 11(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4052, 'Dhaka', 1697, 'Mirpur  11.5 Bus Stand(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4053, 'Dhaka', 1698, 'Mirpur 12(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4054, 'Dhaka', 1699, 'Mirpur - 13(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4055, 'Dhaka', 1700, 'Mirpur - 15(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4056, 'Dhaka', 1701, 'Mirpur  14 (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4057, 'Moulvibazar', 1702, 'Sarkar Bazar Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4058, 'Moulvibazar', 1703, 'Notun Bridge Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4059, 'Moulvibazar', 1704, 'Tarapasha Bazar - Rajnagar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4060, 'Moulvibazar', 1705, 'Munshibazar - Kamalganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4061, 'Moulvibazar', 1706, 'Munshibazar - Rajnagar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4062, 'Moulvibazar', 1707, 'Tengra Bazar - Rajnagar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4063, 'Moulvibazar', 1708, 'Mukam Bazar Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4064, 'Moulvibazar', 1709, 'Bhukshimail (Kulaura)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4065, 'Moulvibazar', 1710, 'Patanushar - Shamshernagar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4066, 'Moulvibazar', 1711, 'Konokpur (Moulvibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4067, 'Moulvibazar', 1712, 'Adompur Bazar - Kamalganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4068, 'Moulvibazar', 1713, 'Tilagaon Bazar (Kulaura)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4069, 'Moulvibazar', 1714, 'Bhatera - Kulaura', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4070, 'Moulvibazar', 1715, 'Kazir Bazar (Moulvibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4071, 'Munshiganj', 1716, 'Kacari (Munshiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4072, 'Munshiganj', 1717, 'Super Market Mor (Munshiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4073, 'Munshiganj', 1718, 'Munshir Hat (Munshiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4074, 'Munshiganj', 1719, 'Mirkadim (Munshiganj)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4075, 'Munshiganj', 1720, 'Rikabibazar (Munshiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4076, 'Munshiganj', 1721, 'Sipahipara (Munshiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4077, 'Munshiganj', 1722, 'Muktarpur (Munshiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4078, 'Dhaka', 1723, 'Basher pull (Demra)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4079, 'Dhaka', 1724, 'Bamuail (Demra)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4080, 'Dhaka', 1725, 'Sharuliya (Demra)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4081, 'Dhaka', 1726, 'Rani mohol  (Demra)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4082, 'Dhaka', 1727, 'Staffquater  (Demra)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4083, 'Dhaka', 1728, 'Demra bazar  (Demra)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4084, 'Dhaka', 1729, 'Hajinogar  (Demra)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4085, 'Dhaka', 1730, 'Boxnagar  (Demra)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4086, 'Dhaka', 1731, 'Badsha mia road  (Demra)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4087, 'Dhaka', 1732, 'Muslimnagar  (Demra)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4088, 'Dhaka', 1733, 'Nikunja 2 (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4089, 'Gazipur', 1734, 'Vannara (mouchak-Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4090, 'Gazipur', 1735, 'Sardaganj-Kashimpur( Kaliakoir)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4091, 'Gazipur', 1736, 'Sultan Market - Kashimpur ( Kaliakoir)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4092, 'Gazipur', 1737, 'Baroipara (Kaliakoir)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4093, 'Gazipur', 1738, 'Goalbari bazar (Kaliakoir)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4094, 'Gazipur', 1739, 'Hatimara-Kashimpur(Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4095, 'Gazipur', 1740, 'Sultan Market Kashempur (Kaliakoir)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4096, 'Gazipur', 1741, 'Nawjor (Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4097, 'Gazipur', 1742, 'Fulbaria bazar (Kaliakoir)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4098, 'Gazipur', 1743, 'Madhobpur(Kashempur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4099, 'Gazipur', 1744, 'Kabirpur (Kaliakoir)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4100, 'Gazipur', 1745, 'Walton High-Tech(Chondra)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4101, 'Gazipur', 1746, 'Waltion Micro-Tech(Chondra)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4102, 'Gazipur', 1747, 'Mollapara(Kashimpur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4103, 'Gazipur', 1748, 'Jalsukha -Baroipara (Kaliakoir)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4104, 'Gazipur', 1749, 'Joyertek(Ambag Road-Konabari)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4105, 'Comilla', 1750, 'Companyganj (Comilla)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4106, 'Moulvibazar', 1751, 'Langla (Kulaura)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4107, 'Moulvibazar', 1752, 'Prithimpasha (Kulaura)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4108, 'Moulvibazar', 1753, 'Kajaldhara Brahmanbazar (Kulaura)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4109, 'Moulvibazar', 1754, 'Kotarkuna Bazar (Kulaura)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4110, 'Sunamganj', 1756, 'Ecorcoi (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4111, 'Sunamganj', 1757, 'Chilaura (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4112, 'Sunamganj', 1758, 'Raniganj (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4113, 'Sunamganj', 1759, 'Mozidpur (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4114, 'Sunamganj', 1760, 'Kolkoli Bazar (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4115, 'Sunamganj', 1761, 'Shibganj (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4116, 'Sunamganj', 1762, 'Hospital point ((Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4117, 'Sunamganj', 1763, 'Mirpur (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4118, 'Sunamganj', 1764, 'Aralia bazar (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4119, 'Sunamganj', 1765, 'Patli (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4120, 'Sunamganj', 1766, 'Narikeltola (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4121, 'Sunamganj', 1767, 'Narikeltola (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4122, 'Sunamganj', 1768, 'Shriramsi (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4123, 'Sunamganj', 1769, 'Hasan fatemapur (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4124, 'Sunamganj', 1770, 'Kenbari (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4125, 'Sunamganj', 1771, 'Keshobpur (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4126, 'Sunamganj', 1772, 'Kashila (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4127, 'Sunamganj', 1773, 'Harikuna bazar (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4128, 'Sunamganj', 1774, 'Gofurgaon (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4129, 'Sunamganj', 1775, 'Atujan (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4130, 'Sunamganj', 1776, 'Bhober bazar (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4131, 'Sunamganj', 1777, 'Saharpara (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4132, 'Sunamganj', 1778, 'Habibpur (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4133, 'Sunamganj', 1779, 'Eshakuna (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4134, 'Sunamganj', 1780, 'Pirer gaon (Jagannatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4135, 'Moulvibazar', 1781, 'Bhairabgonj Bazar(Sreemangal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4136, 'Moulvibazar', 1782, 'Gobindosree-Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4137, 'Moulvibazar', 1783, 'Magistrate Colony-Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4138, 'Moulvibazar', 1784, 'Tv Hospital Road-Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4139, 'Moulvibazar', 1785, 'Banabithi-Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4140, 'Moulvibazar', 1786, 'Lake Road-Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4141, 'Moulvibazar', 1787, 'Sultanpur-Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4142, 'Moulvibazar', 1788, 'Forest Office Road-Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4143, 'Moulvibazar', 1789, 'Muslim Quarters-Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4144, 'Moulvibazar', 1790, 'Kalimabad-Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4145, 'Moulvibazar', 1791, 'Mostofapur-Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4146, 'Moulvibazar', 1792, 'Baharmodon-Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4147, 'Moulvibazar', 1793, 'Ekatuna-Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4148, 'Moulvibazar', 1794, 'Girjapara-Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4149, 'Moulvibazar', 1795, 'Kalenga-Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4150, 'Moulvibazar', 1796, 'Shah Mostafa Road-Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4151, 'Moulvibazar', 1797, 'Borshijura-Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4152, 'Moulvibazar', 1798, 'Matharkapon-Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4153, 'Moulvibazar', 1799, 'Borhat-Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4154, 'Moulvibazar', 1800, 'Chadnighat-Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4155, 'Moulvibazar', 1801, 'Beriri Par-Moulvibazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4156, 'Sylhet', 1802, 'College Road (Beanibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4157, 'Sylhet', 1803, 'Noyagram & Khasa (Beanibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4158, 'Sylhet', 1804, 'Upazilla point(Beanibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4159, 'Sylhet', 1805, 'Boiragi (Beanibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4160, 'Sylhet', 1806, 'Mathiura (Beanibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4161, 'Sylhet', 1807, 'Supatola (Beanibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4162, 'Sylhet', 1808, 'Jaldup (Beanibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4163, 'Sylhet', 1809, 'Kakordi ( Beanibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4164, 'Sylhet', 1810, 'Dubag (Beanibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4165, 'Sylhet', 1811, 'Sheola (Beanibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4166, 'Sylhet', 1812, 'Charkai (Beanibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4167, 'Sylhet', 1813, 'Ramda (Beanibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4168, 'Sylhet', 1814, 'Barigram (Beanibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4169, 'Sylhet', 1815, 'Masum Bazar (Zakiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4170, 'Sylhet', 1816, 'Eidgah bazar- Beanibazar (Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4171, 'Sylhet', 1817, 'Zakiganj Bazar (Zakiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4172, 'Sylhet', 1818, 'Ratangonj (Zakiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4173, 'Sylhet', 1819, 'Atgram (Zakiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4174, 'Sylhet', 1820, 'Kaligonj (Zakiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4175, 'Sylhet', 1821, 'Sonashar (Zakiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4176, 'Sylhet', 1822, 'Saraker Bazar (Zakiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4177, 'Sylhet', 1823, 'Shahgoli (Zakiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4178, 'Moulvibazar', 1824, 'Dasherbazar (Barlekha)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4179, 'Moulvibazar', 1825, 'Goyaltabazar (Barlekha)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4180, 'Moulvibazar', 1826, 'Borolekha Bazar (Barlekha)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4181, 'Moulvibazar', 1827, 'Taradorom (Barlekha)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4182, 'Moulvibazar', 1828, 'Office Bazar (Barlekha)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4183, 'Moulvibazar', 1829, 'Shahbazpur (Barlekha)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4184, 'Moulvibazar', 1830, 'Kataltoli (Barlekha)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4185, 'Moulvibazar', 1831, 'Rotuli (Barlekha)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4186, 'Moulvibazar', 1832, 'Azimgonj (Barlekha)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4187, 'Moulvibazar', 1833, 'Dokkinbag (Barlekha)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4188, 'Dhaka', 1834, 'Banani Block B', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4189, 'Dhaka', 1835, 'Banani Block C', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4190, 'Dhaka', 1836, 'Banani Block D', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4191, 'Dhaka', 1837, 'Banani Block E', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4192, 'Dhaka', 1838, 'Banani Block F', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4193, 'Dhaka', 1839, 'Banani Block G', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4194, 'Dhaka', 1840, 'Banani Block H', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4195, 'Dhaka', 1841, 'Banani Block I', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4196, 'Dhaka', 1842, 'Banani Block J', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4197, 'Dhaka', 1843, 'Banani Block K', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4198, 'Dhaka', 1844, 'Banani Block L', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4199, 'Dhaka', 1845, 'Baridhara J block', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4200, 'Dhaka', 1846, 'Baridhara K block', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4201, 'Dhaka', 1847, 'Gulshan-1 Road-1', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4202, 'Dhaka', 1848, 'Gulshan-1 Road-3', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4203, 'Dhaka', 1849, 'Gulshan-1 Road-4', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4204, 'Dhaka', 1850, 'Gulshan-1 Road-5', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4205, 'Dhaka', 1851, 'Gulshan-1 Road-6', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4206, 'Dhaka', 1852, 'Gulshan-1 Road-7', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4207, 'Dhaka', 1853, 'Gulshan-1 Road-8', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4208, 'Dhaka', 1854, 'Gulshan-1 Road-9', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4209, 'Dhaka', 1855, 'Gulshan-1 Road-10', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4210, 'Dhaka', 1856, 'Gulshan-1 Road-11', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4211, 'Dhaka', 1857, 'Gulshan-1 Road-12', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4212, 'Dhaka', 1858, 'Gulshan-1 Road-13', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4213, 'Dhaka', 1859, 'Gulshan-1 Road-14', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4214, 'Dhaka', 1860, 'Gulshan-1 Road-15', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4215, 'Dhaka', 1861, 'Gulshan-1 Road-16', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4216, 'Dhaka', 1862, 'Gulshan-1 Road-17', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4217, 'Dhaka', 1863, 'Gulshan-1 Road-18', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4218, 'Dhaka', 1864, 'Gulshan-1 Road-19', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4219, 'Dhaka', 1865, 'Gulshan-1 Road-20', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4220, 'Dhaka', 1866, 'Gulshan-1 Road-21', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4221, 'Dhaka', 1867, 'Gulshan-1 Road-22', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4222, 'Dhaka', 1868, 'Gulshan-1 Road-23', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4223, 'Dhaka', 1869, 'Gulshan-1 Road-24', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4224, 'Dhaka', 1870, 'Gulshan-1 Road-25', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4225, 'Dhaka', 1871, 'Gulshan-1 Road-26', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4226, 'Dhaka', 1872, 'Gulshan-1 Road-27', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4227, 'Dhaka', 1873, 'Gulshan-1 Road-28', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4228, 'Dhaka', 1874, 'Gulshan-1 Road-29', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4229, 'Dhaka', 1875, 'Gulshan-1 Road-30', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4230, 'Dhaka', 1876, 'Gulshan-1 Road-31', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4231, 'Dhaka', 1877, 'Gulshan-1 Road-32', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4232, 'Dhaka', 1878, 'Gulshan-1 Road-123', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4233, 'Dhaka', 1879, 'Gulshan-1 Road-124', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4234, 'Dhaka', 1880, 'Gulshan-1 Road-125', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4235, 'Dhaka', 1881, 'Gulshan-1 Road-126', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4236, 'Dhaka', 1882, 'Gulshan-1 Road-127', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4237, 'Dhaka', 1883, 'Gulshan-1 Road-128', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4238, 'Dhaka', 1884, 'Gulshan-1 Road-129', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4239, 'Dhaka', 1885, 'Gulshan-1 Road-130', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4240, 'Dhaka', 1886, 'Gulshan-1 Road-131', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4241, 'Dhaka', 1887, 'Gulshan-1 Road-132', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4242, 'Dhaka', 1888, 'Gulshan-1 Road-133', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4243, 'Dhaka', 1889, 'Gulshan-1 Road-134', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4244, 'Dhaka', 1890, 'Gulshan-1 Road-135', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4245, 'Dhaka', 1891, 'Gulshan-1 Road-136', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4246, 'Dhaka', 1892, 'Gulshan-1 Road-137', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4247, 'Dhaka', 1893, 'Gulshan-1 Road-138', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4248, 'Dhaka', 1894, 'Gulshan-1 Road-139', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4249, 'Dhaka', 1895, 'Gulshan-1 Road-140', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4250, 'Dhaka', 1896, 'Gulshan-1 Road-141', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4251, 'Dhaka', 1897, 'Gulshan-1 Road-143', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4252, 'Dhaka', 1898, 'Gulshan-1 Road-144', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4253, 'Dhaka', 1899, 'DNCC Market (Gulshan 1)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4254, 'Dhaka', 1900, 'Police plaza (Gulshan 1)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4255, 'Dhaka', 1901, 'Gulshan-1 Road-142', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4256, 'Dhaka', 1902, 'Gulshan-2 Road-33', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4257, 'Dhaka', 1903, 'Gulshan-2 Road-34', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4258, 'Dhaka', 1904, 'Gulshan-2 Road-35', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4259, 'Dhaka', 1905, 'Gulshan-2 Road-36', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4260, 'Dhaka', 1906, 'Gulshan-2 Road-37', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4261, 'Dhaka', 1907, 'Gulshan-2 Road-38', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4262, 'Dhaka', 1908, 'Gulshan-2 Road-39', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4263, 'Dhaka', 1909, 'Gulshan-2 Road-40', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4264, 'Dhaka', 1910, 'Gulshan-2 Road-41', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4265, 'Dhaka', 1911, 'Gulshan-2 Road-42', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4266, 'Dhaka', 1912, 'Gulshan-2 Road-43', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4267, 'Dhaka', 1913, 'Gulshan-2 Road-44', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4268, 'Dhaka', 1914, 'Gulshan-2 Road-45', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4269, 'Dhaka', 1915, 'Gulshan-2 Road-46', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4270, 'Dhaka', 1916, 'Gulshan-2 Road-47', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4271, 'Dhaka', 1917, 'Gulshan-2 Road-48', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4272, 'Dhaka', 1918, 'Gulshan-2 Road-49', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4273, 'Dhaka', 1919, 'Gulshan-2 Road-50', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4274, 'Dhaka', 1920, 'Gulshan-2 Road-51', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4275, 'Dhaka', 1921, 'Gulshan-2 Road-52', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4276, 'Dhaka', 1922, 'Gulshan-2 Road-53', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4277, 'Dhaka', 1923, 'Gulshan-2 Road-54', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4278, 'Dhaka', 1924, 'Gulshan-2 Road-55', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4279, 'Dhaka', 1925, 'Gulshan-2 Road-56', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4280, 'Dhaka', 1926, 'Gulshan-2 Road-57', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4281, 'Dhaka', 1927, 'Gulshan-2 Road-58', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4282, 'Dhaka', 1928, 'Gulshan-2 Road-59', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4283, 'Dhaka', 1929, 'Gulshan-2 Road-60', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4284, 'Dhaka', 1930, 'Gulshan-2 Road-61', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4285, 'Dhaka', 1931, 'Gulshan-2 Road-62', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4286, 'Dhaka', 1932, 'Gulshan-2 Road-63', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4287, 'Dhaka', 1933, 'Gulshan-2 Road-64', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4288, 'Dhaka', 1934, 'Gulshan-2 Road-65', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4289, 'Dhaka', 1935, 'Gulshan-2 Road-66', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4290, 'Dhaka', 1936, 'Gulshan-2 Road-67', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4291, 'Dhaka', 1937, 'Gulshan-2 Road-68', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36');
INSERT INTO `redx_delivery_areas` (`id`, `district_name`, `area_id`, `area_name`, `zone_id`, `status`, `created_at`, `updated_at`) VALUES
(4292, 'Dhaka', 1938, 'Gulshan-2 Road-69', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4293, 'Dhaka', 1939, 'Gulshan-2 Road-70', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4294, 'Dhaka', 1940, 'Gulshan-2 Road-71', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4295, 'Dhaka', 1941, 'Gulshan-2 Road-72', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4296, 'Dhaka', 1942, 'Gulshan-2 Road-73', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4297, 'Dhaka', 1943, 'Gulshan-2 Road-74', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4298, 'Dhaka', 1944, 'Gulshan-2 Road-75', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4299, 'Dhaka', 1945, 'Gulshan-2 Road-76', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4300, 'Dhaka', 1946, 'Gulshan-2 Road-77', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4301, 'Dhaka', 1947, 'Gulshan-2 Road-78', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4302, 'Dhaka', 1948, 'Gulshan-2 Road-79', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4303, 'Dhaka', 1949, 'Gulshan-2 Road-80', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4304, 'Dhaka', 1950, 'Gulshan-2 Road-81', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4305, 'Dhaka', 1951, 'Gulshan-2 Road-82', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4306, 'Dhaka', 1952, 'Gulshan-2 Road-83', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4307, 'Dhaka', 1953, 'Gulshan-2 Road-84', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4308, 'Dhaka', 1954, 'Gulshan-2 Road-85', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4309, 'Dhaka', 1955, 'Gulshan-2 Road-86', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4310, 'Dhaka', 1956, 'Gulshan-2 Road-87', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4311, 'Dhaka', 1957, 'Gulshan-2 Road-88', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4312, 'Dhaka', 1958, 'Gulshan-2 Road-89', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4313, 'Dhaka', 1959, 'Gulshan-2 Road-90', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4314, 'Dhaka', 1960, 'Gulshan-2 Road-91', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4315, 'Dhaka', 1961, 'Gulshan-2 Road-92', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4316, 'Dhaka', 1962, 'Gulshan-2 Road-93', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4317, 'Dhaka', 1963, 'Gulshan-2 Road-94', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4318, 'Dhaka', 1964, 'Gulshan-2 Road-95', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4319, 'Dhaka', 1965, 'Gulshan-2 Road-96', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4320, 'Dhaka', 1966, 'Gulshan-2 Road-97', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4321, 'Dhaka', 1967, 'Gulshan-2 Road-98', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4322, 'Dhaka', 1968, 'Gulshan-2 Road-99', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4323, 'Dhaka', 1969, 'Gulshan-2 Road-100', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4324, 'Dhaka', 1970, 'Gulshan-2 Road-101', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4325, 'Dhaka', 1971, 'Gulshan-2 Road-102', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4326, 'Dhaka', 1972, 'Gulshan-2 Road-103', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4327, 'Dhaka', 1973, 'Gulshan-2 Road-104', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4328, 'Dhaka', 1974, 'Gulshan-2 Road-105', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4329, 'Dhaka', 1975, 'Gulshan-2 Road-106', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4330, 'Dhaka', 1976, 'Gulshan-2 Road-107', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4331, 'Dhaka', 1977, 'Gulshan-2 Road-108', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4332, 'Dhaka', 1978, 'Gulshan-2 Road-109', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4333, 'Dhaka', 1979, 'Gulshan-2 Road-110', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4334, 'Dhaka', 1980, 'Gulshan-2 Road-111', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4335, 'Dhaka', 1981, 'Gulshan-2 Road-112', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4336, 'Dhaka', 1982, 'Gulshan-2 Road-113', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4337, 'Dhaka', 1983, 'Gulshan-2 Road-114', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4338, 'Dhaka', 1984, 'Gulshan-2 Road-115', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4339, 'Dhaka', 1985, 'Gulshan-2 Road-116', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4340, 'Dhaka', 1986, 'Gulshan-2 Road-117', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4341, 'Dhaka', 1987, 'Gulshan-2 Road-118', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4342, 'Dhaka', 1988, 'Gulshan-2 Road-119', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4343, 'Dhaka', 1989, 'Gulshan-2 Road-120', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4344, 'Dhaka', 1990, 'Gulshan-2 Road-121', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4345, 'Dhaka', 1991, 'Gulshan-2 Road-122', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4346, 'Dhaka', 1992, 'DNCC Market (Gulshan 2)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4347, 'Brahmanbaria', 1993, 'Kosba Sadar(B.baria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4348, 'Brahmanbaria', 1994, 'Noyonpur - Kosba(B.Baria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4349, 'Brahmanbaria', 1995, 'Gopinathpur - Kosba(B.Baria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4350, 'Brahmanbaria', 1996, 'Kuti - Kosba(B.baria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4351, 'Brahmanbaria', 1997, 'Chargach - Kosba(B.baria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4352, 'Moulvibazar', 1998, 'Mukambazar-Rajnagar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4353, 'Moulvibazar', 1999, 'Kheyaghat Bazar-Rajnagar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4354, 'Moulvibazar', 2000, 'Kadamhata-Rajnagar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4355, 'Cox\'s Bazar', 2003, 'Aziz Nagar (Chakaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4356, 'Cox\'s Bazar', 2004, 'Harbang (Chakaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4357, 'Cox\'s Bazar', 2005, 'Baraitali (Chakaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4358, 'Cox\'s Bazar', 2006, 'Betua Bazar (Chakaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4359, 'Cox\'s Bazar', 2007, 'Chakaria Moghbazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4360, 'Cox\'s Bazar', 2008, 'Chakaria Grameen Center', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4361, 'Cox\'s Bazar', 2009, 'Chakaria Sobujbag', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4362, 'Cox\'s Bazar', 2010, 'Zigda (Chakaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4363, 'Cox\'s Bazar', 2011, 'Lakkharchar (Chakaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4364, 'Cox\'s Bazar', 2012, 'Kakara (Chakaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4365, 'Cox\'s Bazar', 2013, 'Fasiakhali (Chakaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4366, 'Cox\'s Bazar', 2014, 'Malumghat (Chakaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4367, 'Cox\'s Bazar', 2015, 'Dulahazara (Chakaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4368, 'Cox\'s Bazar', 2016, 'Khutakhali (Chakaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4369, 'Cox\'s Bazar', 2017, 'Palakata (Chakaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4370, 'Cox\'s Bazar', 2018, 'Badarkhali', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4371, 'Cox\'s Bazar', 2019, 'Matarbari(Badarkhali)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4372, 'Cox\'s Bazar', 2020, 'Elishia Bazar (Badarkhali)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4373, 'Cox\'s Bazar', 2021, 'Dorbeshkata (Badarkhali)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4374, 'Cox\'s Bazar', 2022, 'Eidgaon (Coxs Bazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4375, 'Cox\'s Bazar', 2023, 'Coxs Bazar Kutubdiya Para', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4376, 'Cox\'s Bazar', 2024, 'Ramu Cantonment (Coxs Bazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4377, 'Cox\'s Bazar', 2025, 'Garjania Union (Coxs Bazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4378, 'Cox\'s Bazar', 2026, 'Himchari (Court Bazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4379, 'Cox\'s Bazar', 2027, 'Mermaid Beach Resort', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4380, 'Cox\'s Bazar', 2028, 'Inani (Ukhia)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4381, 'Cox\'s Bazar', 2029, 'Coxs Bazar Baharchora', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4382, 'Cox\'s Bazar', 2030, 'Kutupalong (Ukhia)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4383, 'Cox\'s Bazar', 2031, 'Courtbazar (Ukhia)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4384, 'Cox\'s Bazar', 2032, 'Balukhali Bazar (Ukhia)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4385, 'Cox\'s Bazar', 2033, 'Chowfaldandi Bazar (Coxs Bazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4386, 'Cox\'s Bazar', 2034, 'Nhila (Teknaf)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4387, 'Cox\'s Bazar', 2035, 'Whaikhyang (Teknaf)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4388, 'Cox\'s Bazar', 2036, 'Sabrang Bazar (Teknaf)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4389, 'Cox\'s Bazar', 2037, 'Shaplapur (Teknaf)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4390, 'Cox\'s Bazar', 2038, 'Teknaf Baharchora', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4391, 'Cox\'s Bazar', 2039, 'Shahpori Beach', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4392, 'Munshiganj', 2047, 'Bandura(Dohar)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4393, 'Munshiganj', 2048, 'Vaggyakul(Sreenagar)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4394, 'Munshiganj', 2049, 'Baroykhali(Sreenagar)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4395, 'Munshiganj', 2050, 'Galimpur(Nawabganj)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4396, 'Munshiganj', 2051, 'Loskorpur (Sreenagar)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4397, 'Munshiganj', 2052, 'Boxsonagar(Nawabganj)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4398, 'Munshiganj', 2053, 'Joypara(Dohar)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4399, 'Munshiganj', 2054, 'Kartikpur(Dohar)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4400, 'Munshiganj', 2055, 'Shekharnagar(Sreenagar)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4401, 'Munshiganj', 2056, 'Mawa(Louhajang)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4402, 'Munshiganj', 2057, 'Dogachi Contonment(Sreenagar)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4403, 'Munshiganj', 2058, 'Tontor (Sirajdikhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4404, 'Munshiganj', 2059, 'Sirajdikhan (Munshiganj)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4405, 'Munshiganj', 2060, 'Vaggokul(Sreenagar)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4406, 'Munshiganj', 2061, 'Alamin Bazar ( Sreenagar )', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4407, 'Munshiganj', 2062, 'Tin Dokan ( Sreenagar )', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4408, 'Munshiganj', 2063, 'Baghra  ( Sreenagar )', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4409, 'Munshiganj', 2064, 'Damla  ( Sreenagar )', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4410, 'Munshiganj', 2065, 'Baligaon ( Munshiganj )', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4411, 'Munshiganj', 2066, 'Kolma  ( Munshiganj )', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4412, 'Munshiganj', 2067, 'Dohori  ( Munshiganj )', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4413, 'Munshiganj', 2068, 'Rajanagar  ( Munshiganj )', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4414, 'Munshiganj', 2069, 'Nimtola  ( Munshiganj )', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4415, 'Munshiganj', 2070, 'Kusumpur  ( Munshiganj )', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4416, 'Munshiganj', 2071, 'Voberchar  ( Munshiganj )', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4417, 'Munshiganj', 2072, 'Jamaldi  ( Munshiganj )', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4418, 'Munshiganj', 2073, 'Hossaindi  ( Munshiganj )', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4419, 'Munshiganj', 2074, 'Bausia  ( Munshiganj )', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4420, 'Mymensingh', 2075, 'Kacharighat (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4421, 'Mymensingh', 2076, 'Zero Point (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4422, 'Mymensingh', 2077, 'Zila School More (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4423, 'Mymensingh', 2078, 'Panditpara (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4424, 'Mymensingh', 2079, 'Ck Ghos Road (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4425, 'Mymensingh', 2080, 'Notun Bazar (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4426, 'Mymensingh', 2081, 'Town Hall (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4427, 'Mymensingh', 2082, 'kachijhuli (mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4428, 'Mymensingh', 2083, 'Kathgola (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4429, 'Mymensingh', 2084, 'Dholadia (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4430, 'Mymensingh', 2085, 'Rahmatpur Bypass (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4431, 'Mymensingh', 2086, 'Akua', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4432, 'Mymensingh', 2087, 'Akua Bypass (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4433, 'Mymensingh', 2088, 'Bangladesh Bank (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4434, 'Mymensingh', 2089, 'Maskanda (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4435, 'Mymensingh', 2090, 'Churkhai (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4436, 'Mymensingh', 2091, 'Chorpara (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4437, 'Mymensingh', 2092, 'Mymensingh Medical College (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4438, 'Mymensingh', 2093, 'Sarda Ghosh Road (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4439, 'Mymensingh', 2094, 'Mymensingh Sarda Ghos Road', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4440, 'Mymensingh', 2095, 'Noumohol (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4441, 'Mymensingh', 2096, 'Akua Morol Para (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4442, 'Mymensingh', 2097, 'Baundari Road (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4443, 'Mymensingh', 2098, 'Akua Madrasa Quarter (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4444, 'Mymensingh', 2099, 'Durgabari (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4445, 'Mymensingh', 2100, 'Dhobakhola (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4446, 'Mymensingh', 2101, 'Rk Mission Road (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4447, 'Mymensingh', 2102, 'Ganginarpar (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4448, 'Mymensingh', 2103, 'Boro Bazar (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4449, 'Mymensingh', 2104, 'Choto Bazar (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4450, 'Mymensingh', 2105, 'Patgudam (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4451, 'Mymensingh', 2106, 'Purohitpara (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4452, 'Mymensingh', 2107, 'Rallymor (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4453, 'Mymensingh', 2108, 'Cantonment (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4454, 'Mymensingh', 2109, 'Jamtola (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4455, 'Mymensingh', 2110, 'Senbari (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4456, 'Mymensingh', 2111, 'Badekolpa (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4457, 'Mymensingh', 2112, 'Nijkolpa (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4458, 'Mymensingh', 2113, 'Bkb (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4459, 'Mymensingh', 2114, 'Agri University (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4460, 'Mymensingh', 2115, 'Kewatkhali (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4461, 'Mymensingh', 2116, 'Hakkani More (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4462, 'Mymensingh', 2117, 'Foliser More (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4463, 'Mymensingh', 2118, 'Bridge More (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4464, 'Mymensingh', 2119, 'Anondomohon College (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4465, 'Mymensingh', 2120, 'Cbmcb (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4466, 'Mymensingh', 2121, 'Somvugonjo (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4467, 'Mymensingh', 2122, 'Chor Issordia (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4468, 'Mymensingh', 2123, 'Porangonjo (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4469, 'Mymensingh', 2124, 'Joy Bangla Bazar (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4470, 'Mymensingh', 2125, 'China More (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4471, 'Mymensingh', 2126, 'Chor Nilokkhiya (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4472, 'Mymensingh', 2127, 'Amuakanda (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4473, 'Mymensingh', 2128, 'Tarakanda Thana', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4474, 'Mymensingh', 2129, 'Mymensingh Nashirabad Collge', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4475, 'Mymensingh', 2130, 'Mymensingh Akua Morol Para', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4476, 'Mymensingh', 2131, 'Sanai Community Center (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4477, 'Mymensingh', 2132, 'Sorcharpur (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4478, 'Mymensingh', 2133, 'Fire Servicer More (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4479, 'Mymensingh', 2134, 'Mymensingh Sankipara Gohailkandi', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4480, 'Mymensingh', 2135, 'Paikpara (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4481, 'Mymensingh', 2136, 'Sahapur (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4482, 'Mymensingh', 2137, 'Par Tola (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4483, 'Mymensingh', 2138, 'Rohimgonjo (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4484, 'Mymensingh', 2139, 'Baidkandi (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4485, 'Mymensingh', 2140, 'Ram Vodropur (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4486, 'Mymensingh', 2141, 'Mymensingh Joynul Abedin Park', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4487, 'Mymensingh', 2142, 'Kashigonjo (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4488, 'Mymensingh', 2143, 'Fulbaria Bongobondhu Chottor (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4489, 'Mymensingh', 2144, 'Asim Bazar (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4490, 'Mymensingh', 2145, 'Mymensingh Kristopur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4491, 'Mymensingh', 2146, 'Anayetpur (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4492, 'Mymensingh', 2147, 'Mymensingh Susuti Bazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4493, 'Mymensingh', 2148, 'Kaladoho (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4494, 'Mymensingh', 2149, 'Balur Ghat (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4495, 'Mymensingh', 2150, 'Shibgonjo (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4496, 'Mymensingh', 2151, 'Borkabazar (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4497, 'Mymensingh', 2152, 'Mymensingh Bolashpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4498, 'Mymensingh', 2153, 'Doshmile Bazar (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4499, 'Mymensingh', 2154, 'Dapunia Bazar (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4500, 'Mymensingh', 2155, 'Kosaibari (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4501, 'Mymensingh', 2156, 'Barerapool (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4502, 'Mymensingh', 2157, 'Haluaghat Aboni Bekari (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4503, 'Mymensingh', 2158, 'Baghaitola (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4504, 'Mymensingh', 2159, 'Mymensingh Vatikashor', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4505, 'Mymensingh', 2160, 'Mazrakura (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4506, 'Mymensingh', 2161, 'Surzopur Camp (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4507, 'Mymensingh', 2162, 'Mymensingh Akua Don Mor', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4508, 'Mymensingh', 2163, 'Kalapagla (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4509, 'Mymensingh', 2164, 'Hadis Er Mor (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4510, 'Mymensingh', 2165, 'Mekirkanda (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4511, 'Mymensingh', 2166, 'Buraghat (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4512, 'Mymensingh', 2167, 'Dara Bazar (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4513, 'Mymensingh', 2168, 'Durail (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4514, 'Mymensingh', 2169, 'Nagla (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4515, 'Mymensingh', 2170, 'Sakuwai (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4516, 'Mymensingh', 2171, 'Bakshimul Tarakanda (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4517, 'Mymensingh', 2172, 'Balia (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4518, 'Mymensingh', 2173, 'Boula (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4519, 'Mymensingh', 2174, 'Kaichapur (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4520, 'Mymensingh', 2175, 'Biharanga (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4521, 'Mymensingh', 2176, 'Mymensingh Akua Firoz Library Mor', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4522, 'Mymensingh', 2177, 'Salia (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4523, 'Mymensingh', 2178, 'Sutarpara Chowrasta (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4524, 'Mymensingh', 2179, 'Sutiapara (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4525, 'Mymensingh', 2180, 'Guatola (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4526, 'Mymensingh', 2181, 'Mymensingh Tarakanda', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4527, 'Mymensingh', 2182, 'Sutia Nodee Par (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4528, 'Mymensingh', 2183, 'Dhobaura Bus Stand (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4529, 'Mymensingh', 2184, 'Dudnoi (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4530, 'Mymensingh', 2185, 'Kol Sindur (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4531, 'Mymensingh', 2186, 'Charuapara (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4532, 'Mymensingh', 2187, 'Munsir Hat (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4533, 'Mymensingh', 2188, 'Ghosgau (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4534, 'Mymensingh', 2189, 'Baligau (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4535, 'Mymensingh', 2190, 'Tarakanda Purakandholia', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4536, 'Mymensingh', 2191, 'Mymensingh Akua Habun Bapery Mor', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4537, 'Mymensingh', 2192, 'Mymensingh Saleha Market', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4538, 'Mymensingh', 2193, 'Bot Tola (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4539, 'Mymensingh', 2194, 'Mymensingh Sankipara Health Office Goli', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4540, 'Mymensingh', 2195, 'Lengra Bazar (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4541, 'Mymensingh', 2196, 'Mymensingh Bau Vabkir Mor', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4542, 'Mymensingh', 2197, 'Mymensingh Golgonda ,Amin Bazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4543, 'Mymensingh', 2198, 'Jatri Sauni (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4544, 'Mymensingh', 2199, 'TNT Road (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4545, 'Mymensingh', 2200, 'Kalibari Road (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4546, 'Mymensingh', 2201, 'Station Road (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4547, 'Mymensingh', 2202, 'College Road (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4548, 'Mymensingh', 2203, 'Thana Road (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4549, 'Mymensingh', 2204, 'Simultoli (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4550, 'Mymensingh', 2205, 'Mymensingh Tinkona Pukur Par', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4551, 'Mymensingh', 2206, 'Bot Tola Mor (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4552, 'Mymensingh', 2207, 'Mymensingh Harua Bas Stand Iswarganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4553, 'Mymensingh', 2208, 'Mayezbag (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4554, 'Mymensingh', 2209, 'Kanarampur (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4555, 'Mymensingh', 2210, 'Mymensingh Borohit Iswarganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4556, 'Mymensingh', 2211, 'Iswarganj Uchakhila Bazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4557, 'Mymensingh', 2212, 'Uchakhila (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4558, 'Mymensingh', 2213, 'Iswarganj Tarundia', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4559, 'Mymensingh', 2214, 'Varoti Bazar (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4560, 'Mymensingh', 2215, 'Iswarganj Mukrijoddha Market', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4561, 'Mymensingh', 2216, 'Shohagi (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4562, 'Mymensingh', 2217, 'Atharobari (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4563, 'Mymensingh', 2218, 'Muktagcha Biddaganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4564, 'Mymensingh', 2219, 'Mymensingh Engineering College', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4565, 'Mymensingh', 2220, 'Station Road (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4566, 'Mymensingh', 2221, 'Mymensingh Kachijuli Pial Road', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4567, 'Mymensingh', 2222, 'Gohata (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4568, 'Mymensingh', 2223, 'Khalbola Bazar (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4569, 'Mymensingh', 2224, 'Collage Gate (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4570, 'Mymensingh', 2225, 'Mymensingh Goripur Shamganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4571, 'Mymensingh', 2226, 'Dhubaora Kolsindur Bazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4572, 'Mymensingh', 2227, 'Sutiabazar (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4573, 'Mymensingh', 2228, 'Dhubaora Munshir Hat', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4574, 'Mymensingh', 2229, 'Dhubaora Ershad Bazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4575, 'Mymensingh', 2230, 'Dhubaora Amitav Babu Road', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4576, 'Mymensingh', 2231, 'Tarakanda Bazar (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4577, 'Mymensingh', 2232, 'Kudaldhor (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4578, 'Mymensingh', 2233, 'Taltola (Mymensingh)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4579, 'Mymensingh', 2234, 'Tarakanda Boula Bazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4580, 'Mymensingh', 2235, 'Mymensingh Dapunia Bazar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4581, 'Sylhet', 2236, 'Chowhatta-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4582, 'Sylhet', 2237, 'Osmaninagar Upazila(Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4583, 'Sylhet', 2238, 'Tajpur-Osmaninagar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4584, 'Sylhet', 2239, 'Sadipur-Osmaninagar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4585, 'Sylhet', 2240, 'Goalabazar-Osmaninagar(Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4586, 'Sylhet', 2241, 'Rampasha (Bishwanath)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4587, 'Sylhet', 2242, 'Shahi Eidgah-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4588, 'Sylhet', 2243, 'Raynagar-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4589, 'Sylhet', 2244, 'Kajalshah-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4590, 'Sylhet', 2245, 'Mogla Bazar-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4591, 'Sylhet', 2246, 'Maijgaon-Fenchuganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4592, 'Sylhet', 2247, 'Fenchuganj SarKarkhana(BIDC)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4593, 'Sylhet', 2248, 'Shah Paran Bazar-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4594, 'Sylhet', 2249, 'Dorga Gate-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4595, 'Sylhet', 2250, 'Jalalabad Cantonment-Boteshwar Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4596, 'Sylhet', 2251, 'Sylhet Cantonment', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4597, 'Sylhet', 2252, 'Housing State-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4598, 'Sylhet', 2253, 'SUST (Shahjalal University of Science and Technology)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4599, 'Sylhet', 2254, 'Baruth Khana-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4600, 'Sylhet', 2255, 'Kumarpara-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4601, 'Sylhet', 2256, 'Mirza Zungle-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4602, 'Sylhet', 2257, 'Kazitula-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4603, 'Sylhet', 2258, 'Kazir Bazar-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4604, 'Sylhet', 2259, 'Lama Bazar-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4605, 'Sylhet', 2260, 'Modina Market-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4606, 'Sylhet', 2261, 'Bagbari-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4607, 'Sylhet', 2262, 'Mirboxtula-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4608, 'Sylhet', 2263, 'KhadimNagar-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4609, 'Sylhet', 2264, 'Airport Road-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4610, 'Sylhet', 2265, 'Osmani Medical Hospital-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4611, 'Sylhet', 2266, 'Naya Sarak-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4612, 'Sylhet', 2267, 'Alampur-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4613, 'Sylhet', 2268, 'Jail Road-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4614, 'Sylhet', 2269, 'Khadimpara-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4615, 'Sylhet', 2270, 'Mirer Moydan-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4616, 'Sylhet', 2271, 'Rekabi Bazar-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4617, 'Sylhet', 2272, 'Jallarpar-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4618, 'Sylhet', 2273, 'Nayarpool-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4619, 'Sylhet', 2274, 'Mehendibagh-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4620, 'Sylhet', 2275, 'Humayun Rashid Chattar-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4621, 'Sylhet', 2276, 'Rajargoli-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4622, 'Sylhet', 2277, 'Sylhet Biman Bandar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4623, 'Sylhet', 2278, 'Lala Bazar-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4624, 'Sylhet', 2279, 'Bholaganj-Companyganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4625, 'Sylhet', 2280, 'Jaflong-Gowainghat', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4626, 'Sylhet', 2281, 'Dakshin Surma-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4627, 'Sylhet', 2282, 'Chondipul-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4628, 'Sylhet', 2283, 'Purabi R/A- Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4629, 'Sylhet', 2284, 'Boroikandi-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4630, 'Sylhet', 2285, 'Haripur Gas Field-( Jaflong-Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4631, 'Sylhet', 2286, 'Tuker Bazar-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4632, 'Sylhet', 2287, 'Electric Supply-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4633, 'Sylhet', 2288, 'Bhadeshwar-Golapganj Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4634, 'Sylhet', 2289, 'Madani Square-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4635, 'Sylhet', 2290, 'Pathantula-Sylhet', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4636, 'Sunamganj', 2291, 'Badhagaht-Sunamganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4637, 'Sunamganj', 2292, 'Takerghat-Sunamganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4638, 'Sunamganj', 2293, 'Shantiganj-South Sunamganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4639, 'Sunamganj', 2294, 'Pagla bazar-South Sunamganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4640, 'Sunamganj', 2295, 'Lakma-Takerghat Sunamganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4641, 'Sunamganj', 2296, 'Sachna-Jamalganj (Sunamganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4642, 'Gazipur', 2297, 'Porabari Bazar(Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4643, 'Gazipur', 2298, 'Dhaladia (Kapasia)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4644, 'Gazipur', 2299, 'Rajabari -Sreepur Road(Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4645, 'Gazipur', 2300, 'Gorgoria masterbari (Sreepur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4646, 'Gazipur', 2301, 'Barmi Sreepur (Sreepur )', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4647, 'Gazipur', 2302, 'Joina Bazar (Sreepur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4648, 'Gazipur', 2303, 'Kapasia Bazar (Kapasia)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4649, 'Gazipur', 2304, 'Kapasia Tok Noyon (Kapasia)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4650, 'Gazipur', 2305, 'Kapasia Amraid (Kapasia)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4651, 'Gazipur', 2306, 'Rajendrapur Cantonment (Rajendrapur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4652, 'Gazipur', 2307, 'Kashimpur Bus Stop (Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4653, 'Gazipur', 2308, 'Jiter mor -Kashimpur (Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4654, 'Gazipur', 2309, 'Molla market-(Kashimpur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4655, 'Gazipur', 2310, 'Panishel(Kashimpur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4656, 'Gazipur', 2311, 'Sultan Market(Kashimpur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4657, 'Gazipur', 2312, 'Kazi Market(Kashimpur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4658, 'Gazipur', 2313, 'Bagbari (Kashimpur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4659, 'Gazipur', 2314, 'Berenda(Kashimpur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4660, 'Gazipur', 2315, 'Sorabo(Kashimpur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4661, 'Gazipur', 2316, 'Kashimpur Square(Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4662, 'Gazipur', 2317, 'Konabari Bus stand(Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4663, 'Gazipur', 2318, 'Konabari Jail khana(Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4664, 'Gazipur', 2319, 'Konabari Kuddus Nagar(Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4665, 'Gazipur', 2320, 'Konabari collage Gate(Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4666, 'Gazipur', 2321, 'Baimail -Konabari (Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4667, 'Gazipur', 2322, 'Pollibiddut-Konabari(Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4668, 'Gazipur', 2323, 'Mouchak Bazar(Kaliakair)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4669, 'Gazipur', 2324, 'Shofipur Bus Stand (Kaliakair)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4670, 'Gazipur', 2325, 'Bhawal Government College (Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4671, 'Gazipur', 2326, 'Itahata (Chandona Chowrasta)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4672, 'Gazipur', 2327, 'Telipara(Chandona Chowrasta)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4673, 'Gazipur', 2328, 'Great Wall Jame Masjid (Chandona Chowrasta)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4674, 'Gazipur', 2329, 'Paler Math (Gazipur Chowrasta)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4675, 'Gazipur', 2330, 'Police Line (Gazipur Chowrasta)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4676, 'Gazipur', 2331, 'Borsha Hall (Gazipur Chowrasta)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4677, 'Gazipur', 2332, 'kenakata Goli (Gazipur Chowrasta)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4678, 'Gazipur', 2333, 'Dhigir Chala (Gazipur Chowrasta)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4679, 'Gazipur', 2334, 'Najor (Gazipur Chowrasta)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4680, 'Gazipur', 2335, 'Kodda bridge (Gazipur Chowrasta)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4681, 'Gazipur', 2336, 'Bason Thana (Gazipur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4682, 'Gazipur', 2337, 'Polagach Road (Board Bazar)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4683, 'Gazipur', 2338, 'Jajhor (Board Bazar)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4684, 'Gazipur', 2339, 'Gacha Thana (Board Bazar)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4685, 'Gazipur', 2340, 'Mukter Bari Road (Board Bazar)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4686, 'Gazipur', 2341, 'Boro Mosjid Road (Board Bazar)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4687, 'Gazipur', 2342, 'IUT Road (Board Bazar)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4688, 'Gazipur', 2343, 'Gacha Bazar (Boro bari)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4689, 'Gazipur', 2344, 'Colombiya (Gazipur By Pass Road)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4690, 'Gazipur', 2345, 'Mogor Khal (Gazipur By Pass Road)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4691, 'Gazipur', 2346, 'Navanar Mor (Gazipur By Pass Road)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4692, 'Gazipur', 2347, 'Hoque Market (Gazipur By Pass Road)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4693, 'Gazipur', 2348, 'Sattola Garments (Maleker Bari)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4694, 'Gazipur', 2349, 'Bolakar Mor (Maleker Bari)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4695, 'Gazipur', 2350, 'Jogitota ( Joydebpur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4696, 'Gazipur', 2351, 'College gate (Pubail)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4697, 'Gazipur', 2352, 'Badhon (Pubail)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4698, 'Gazipur', 2353, 'Bosuga (Pubail)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4699, 'Gazipur', 2354, 'Bokhtarour ( kaliganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4700, 'Gazipur', 2355, 'Fuldi ( kaliganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4701, 'Gazipur', 2356, 'Dalan bazar ( kaliganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4702, 'Gazipur', 2357, 'Awora khali ( kaliganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4703, 'Gazipur', 2358, 'Sawraid ( kaliganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4704, 'Gazipur', 2359, 'Chowrasta (Tongi)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4705, 'Dhaka', 2360, 'Chunkutia (Keraniganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4706, 'Dhaka', 2361, 'Am Bagicha (Keraniganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4707, 'Dhaka', 2362, 'Zia Nagor (Keraniganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4708, 'Dhaka', 2363, 'Imambari (Keraniganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4709, 'Dhaka', 2364, 'Kodomtoli (Keraniganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4710, 'Dhaka', 2365, 'Najirabag (Keraniganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4711, 'Dhaka', 2366, 'Bondok Para (Keraniganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4712, 'Dhaka', 2367, 'Golam Bazar (Keraniganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4713, 'Dhaka', 2368, 'Par Gendaria (Keraniganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4714, 'Dhaka', 2369, 'Ekuria (Keraniganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4715, 'Dhaka', 2370, 'Kholamora (Keraniganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4716, 'Dhaka', 2371, 'Atibazar (Keraniganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4717, 'Dhaka', 2372, 'Abdullahpur (Keraniganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4718, 'Dhaka', 2373, 'Mirpur-1-block-D (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4719, 'Dhaka', 2374, 'Mirpur-1-block-E (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4720, 'Dhaka', 2375, 'Mirpur-1-block-F (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4721, 'Dhaka', 2376, 'Mirpur-1-block-G (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4722, 'Dhaka', 2377, 'Mirpur-1-block-H (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4723, 'Dhaka', 2378, 'Mirpur-1-block-New - C (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4724, 'Dhaka', 2379, 'Dakkhin Bisil (Mirpur-1)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4725, 'Dhaka', 2380, 'Uttor Bisil (Mirpur-1)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4726, 'Dhaka', 2381, 'kiyangshi chinese (Mirpur-1)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4727, 'Dhaka', 2382, 'Shah Ali Market (Mirpur-1)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4728, 'Dhaka', 2383, 'East Kazipara(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4729, 'Dhaka', 2384, 'Purbo Monipur (Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4730, 'Dhaka', 2385, 'Poschim Monipur (Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4731, 'Dhaka', 2386, 'West Kafrul (Agargaon)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4732, 'Dhaka', 2387, 'Boat Ghat Road (Khilkhet)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4733, 'Dhaka', 2388, 'Lake City Park (Khilkhet)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4734, 'Dhaka', 2389, 'Khapara (Khilkhet)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4735, 'Dhaka', 2390, 'Dumni (Khilkhet)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4736, 'Dhaka', 2391, 'Patira Bazar (Khilkhet)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4737, 'Dhaka', 2392, 'Mostul Check post (Khilkhet)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4738, 'Dhaka', 2393, 'Kurmitoal General Hospital', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4739, 'Dhaka', 2394, 'Soinik Club (Dhaka Cantonment)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4740, 'Dhaka', 2395, 'Arjotpara(Mohakhali)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4741, 'Dhaka', 2396, 'BAF Shaheen College(Dhaka Cantonment)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4742, 'Dhaka', 2397, 'BNS Haji Mohsin(Dhaka Cantonment)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4743, 'Dhaka', 2398, 'BAF Eagle hall(Dhaka Cantonment)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4744, 'Dhaka', 2399, 'Shahid Moinul Road (Dhaka Cantonment)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4745, 'Dhaka', 2400, 'Bangladesh Army headquerters(Dhaka Cantonment)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4746, 'Dhaka', 2401, 'Shaheed Sharani(Dhaka Cantonment)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4747, 'Dhaka', 2402, 'Sena Malancha(Dhaka Cantonment)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4748, 'Dhaka', 2403, 'Adamjee Cantonment College(Dhaka Cantonment)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4749, 'Dhaka', 2404, 'Army officers Club(Dhaka Cantonment)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4750, 'Dhaka', 2405, 'Dhaka Cantonment post office', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4751, 'Dhaka', 2406, 'Kurmitola(Dhaka Cantonment)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4752, 'Dhaka', 2407, 'CMH(Dhaka Cantonment)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4753, 'Dhaka', 2408, 'Shaheed Ramiz Uddin Gate- MES', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4754, 'Dhaka', 2409, 'Shaheed Ramiz Uddin Cantonment College', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4755, 'Dhaka', 2410, 'Kunjolota-MES(Dhaka Cantonment)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4756, 'Dhaka', 2411, 'Armed Forces Medical institute-MES', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4757, 'Dhaka', 2412, 'Staff road officers querters-MES', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4758, 'Dhaka', 2413, 'MES Park(Dhaka Cantonment)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4759, 'Dhaka', 2414, 'Bijoy Keton-MES(Dhaka Cantonment)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4760, 'Dhaka', 2415, 'Nokkhotro-MES(Dhaka Cantonment)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4761, 'Dhaka', 2416, 'Bangladesh University of Professionals(BUP)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4762, 'Dhaka', 2417, 'Mirpur Cantonment Public School & College(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4763, 'Dhaka', 2418, 'MIST(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4764, 'Dhaka', 2419, 'Mirpur Cantonment(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4765, 'Dhaka', 2420, 'House Building(Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4766, 'Dhaka', 2421, 'Hazrat Shahjalal International Airport (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4767, 'Dhaka', 2422, 'International Convension City(Bashundhara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4768, 'Dhaka', 2423, 'Banarupa Abashik(Khilkhet)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4769, 'Dhaka', 2424, 'Sopnopuri Bashundhara R/A', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4770, 'Dhaka', 2425, 'Import Cargo Terminal (Dhaka Airport Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4771, 'Dhaka', 2426, 'Customs House (Dhaka Airport Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4772, 'Dhaka', 2427, 'Rajlokkhi Complex (Uttara)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4773, 'Comilla', 2428, 'Comilla Cantonment', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36');
INSERT INTO `redx_delivery_areas` (`id`, `district_name`, `area_id`, `area_name`, `zone_id`, `status`, `created_at`, `updated_at`) VALUES
(4774, 'Dhaka', 2429, 'Tetuljhora, Hemayetpur, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4775, 'Dhaka', 2430, 'Hemayetpur Bazar, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4776, 'Dhaka', 2431, 'Bongaon Union, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4777, 'Dhaka', 2432, 'Ashulia Thana, Baipayl, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4778, 'Dhaka', 2433, 'Charigram, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4779, 'Dhaka', 2434, 'Polli Biddut, Nabinagar, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4780, 'Dhaka', 2435, 'Norosinhopur, Ashulia, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4781, 'Dhaka', 2436, 'Zirabo Bazar, Ashulia, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4782, 'Dhaka', 2437, 'Savar City Center', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4783, 'Dhaka', 2438, 'Rajasion, Polo Market', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4784, 'Dhaka', 2439, 'Kathgora Bazar, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4785, 'Dhaka', 2440, 'Jamgora, Ashulia, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4786, 'Dhaka', 2441, 'Baipayl Kacha Bazar, Ashulia, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4787, 'Dhaka', 2442, 'Jahangirnagar University, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4788, 'Dhaka', 2443, 'Akran Bazar, Ashulia, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4789, 'Dhaka', 2444, 'Birulia Bridge, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4790, 'Dhaka', 2445, 'Nama Bazar, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4791, 'Dhaka', 2446, 'Jhawchar Bazar, Hemayetpur, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4792, 'Dhaka', 2447, 'Amin Bazar, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4793, 'Dhaka', 2448, 'Bhakurta Bazar, Amin Bazar, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4794, 'Dhaka', 2449, 'Mograkanda, Amin Bazar, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4795, 'Dhaka', 2450, 'Shamlasi Gudaraghat, Amin Bazar, Savar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4796, 'Dhaka', 2451, 'Niribili Dhamrai', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4797, 'Dhaka', 2452, 'Golam Hafiz College Dhamrai', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4798, 'Dhaka', 2453, 'Noyarhat Dhamrai', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4799, 'Dhaka', 2454, 'Dhulivita (Dhamrai)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4800, 'Dhaka', 2455, 'Kalampur (Dhamrai)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4801, 'Dhaka', 2456, 'Bathuli Bustand (Dhamrai)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4802, 'Dhaka', 2457, 'Kushura Bustand (Dhamrai', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4803, 'Dhaka', 2458, 'Baro Baria (Dhamrai)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4804, 'Dhaka', 2459, 'Dhantara Bazar (Dhamrai)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4805, 'Dhaka', 2460, 'Dhamrai Bazar', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4806, 'Dhaka', 2461, 'Gurapir Mazar Dhamrai', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4807, 'Dhaka', 2462, 'Beltola Dhamrai', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4808, 'Dhaka', 2463, 'Dendabor Dhamrai', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4809, 'Dhaka', 2464, 'Anayetpur Dhamrai', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4810, 'Dhaka', 2465, 'Gonoshasthaya Dhamrai', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4811, 'Dhaka', 2466, 'Dhamshona Bazar Dhamrai', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4812, 'Dhaka', 2467, 'Kamalget Dhamrai', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4813, 'Dhaka', 2468, 'Namabazar Dhamrai', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4814, 'Dhaka', 2469, 'Khaicha Bari Dhamrai', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4815, 'Dhaka', 2470, 'Konda Dhamrai', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4816, 'Dhaka', 2471, 'Baipail Dhamrai', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4817, 'Dhaka', 2472, 'Sreepur Dhamrai', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4818, 'Dhaka', 2473, 'Mojarmil Dhamrai', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4819, 'Dhaka', 2474, 'Khorar Chor (Dhamrai)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4820, 'Dhaka', 2475, 'Fudnagar Rupnagar (Dhamrai)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4821, 'Dhaka', 2476, 'Councill Bazar (Dhamrai)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4822, 'Dhaka', 2477, 'Kawalipara (Dhamrai)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4823, 'Dhaka', 2478, 'Chokroborti Dhamrai', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4824, 'Dhaka', 2479, 'Beximco Dhamrai', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4825, 'Dhaka', 2480, 'Bhadail DEPZ Dhamrai', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4826, 'Dhaka', 2481, 'Nobi Textile Kaliakoir', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4827, 'Dhaka', 2482, 'Zirani Kaliakoir', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4828, 'Dhaka', 2483, 'Kobirpur Kaliakoir', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4829, 'Dhaka', 2484, 'Baroipara Kaliakoir', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4830, 'Dhaka', 2485, 'Nondon Park Kaliakoir', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4831, 'Dhaka', 2486, 'Mannan Collage Road (Kaliakoir)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4832, 'Dhaka', 2487, 'Turag Germent (Kaliakoir)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4833, 'Dhaka', 2488, 'Mashi Hata (Kaliakoir)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4834, 'Dhaka', 2489, 'Enargy Pack Germent (Kaliakoir)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4835, 'Dhaka', 2490, 'Bengol (Kaliakoir)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4836, 'Dhaka', 2491, 'Polash Housing (Kaliakoir)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4837, 'Barisal', 2555, 'Guthia (Swarupkathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4838, 'Barisal', 2556, 'Guthia (Narayanpur_Barisal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4839, 'Barisal', 2557, 'Sheikh Hasina Cantonment (Bakerganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4840, 'Barisal', 2558, 'Dopdopia (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4841, 'Barisal', 2559, 'Kamarkhali (Bakerganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4842, 'Barisal', 2560, 'Kaliganj (Bakerganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4843, 'Barisal', 2561, 'Kanki Bazar (Bakerganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4844, 'Barisal', 2562, 'Lakutia Sarak (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4845, 'Barisal', 2563, 'Ranir Hat (Bakerganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4846, 'Barisal', 2564, 'Halta Bazar (Bakerganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4847, 'Barisal', 2565, 'Alekanda Kazipara (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4848, 'Barisal', 2566, 'Palashpur (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4849, 'Barisal', 2567, '30 Godown (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4850, 'Barisal', 2568, 'Barishal Stadium (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4851, 'Barisal', 2569, 'Charmonai (Barisal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4852, 'Barisal', 2570, 'Shaheber Haat (Barisal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4853, 'Barisal', 2571, 'Notun Bazar (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4854, 'Barisal', 2572, 'Nehalganj (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4855, 'Barisal', 2573, 'Zia Sarak (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4856, 'Barisal', 2574, 'Char Amuddi (Bakerganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4857, 'Barisal', 2575, 'Kashipur (Nothullabaad_Barisal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4858, 'Barisal', 2576, 'Padri shibpur (Bakerganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4859, 'Barisal', 2577, 'Peyarpur (Bakerganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4860, 'Barisal', 2578, 'Nalua (Bakerganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4861, 'Barisal', 2579, 'Goma (Bakerganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4862, 'Barisal', 2580, 'Beltola (Barisal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4863, 'Barisal', 2581, 'Char Kauwa (Barisal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4864, 'Barisal', 2582, 'Kalizira (Rupatoli)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4865, 'Barisal', 2583, 'Gasterbine (Rupatoli)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4866, 'Barisal', 2584, 'Barisal University (Kornokathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4867, 'Barisal', 2585, 'Talukder Hat (Barisal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4868, 'Barisal', 2586, 'LaharHat (Barisal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4869, 'Barisal', 2587, 'Madhabpasha (Babuganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4870, 'Barisal', 2588, 'Rahmatpur (Babuganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4871, 'Barisal', 2589, 'Barisal Cadet College (Babuganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4872, 'Barisal', 2590, 'Notun Hat (Babuganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4873, 'Barisal', 2591, 'Kedarpur (Babuganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4874, 'Barisal', 2592, 'Bhuter Dia (Babuganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4875, 'Barisal', 2593, 'Mirganj (Babuganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4876, 'Barisal', 2594, 'Kawnia (Barisal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4877, 'Barisal', 2595, 'Vatikhana (Barisal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4878, 'Barisal', 2596, 'Barisal Airport (Babuganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4879, 'Barisal', 2597, 'Lonch Ghat (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4880, 'Barisal', 2598, 'Sher E Bangla Medical (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4881, 'Barisal', 2599, 'Amtola (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4882, 'Barisal', 2600, 'Bangla Bazar (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4883, 'Barisal', 2601, 'Chowmatha (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4884, 'Barisal', 2602, 'Nobogram Road (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4885, 'Barisal', 2603, 'Nathullabad Kazipara (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4886, 'Barisal', 2604, 'BM College (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4887, 'Barisal', 2605, 'Port Road (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4888, 'Barisal', 2606, 'Bibir Pukur Par (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4889, 'Barisal', 2607, 'Goriar Par (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4890, 'Barisal', 2608, 'Swarupkathi Sadar(Barisal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4891, 'Barisal', 2609, 'Amanotganj (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4892, 'Barisal', 2610, 'Hatem Ali College (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4893, 'Barisal', 2611, 'Govt. Womens College (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4894, 'Barisal', 2612, 'Chowmatha Bottola (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4895, 'Barisal', 2613, 'Niamoti (Bakerganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4896, 'Barisal', 2614, 'Chandmari (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4897, 'Barisal', 2615, 'Shayestabad (Barishal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4898, 'Faridpur', 2616, 'FARIDPUR SADAR (Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4899, 'Faridpur', 2617, 'ALIABAD(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4900, 'Faridpur', 2618, 'AMBIKAPUR(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4901, 'Faridpur', 2619, 'CHAR MADHABDIA(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4902, 'Faridpur', 2620, 'DECREERCHAR(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4903, 'Faridpur', 2621, 'GREDA(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4904, 'Faridpur', 2622, 'ISHAN GOPALPUR(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4905, 'Faridpur', 2623, 'KAIJURI(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4906, 'Faridpur', 2624, 'KANAIPUR(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4907, 'Faridpur', 2625, 'KRISHNANAGAR(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4908, 'Faridpur', 2626, 'MAJCHAR(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4909, 'Faridpur', 2627, 'UTTAR CHANNEL(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4910, 'Faridpur', 2628, 'BHANGA(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4911, 'Faridpur', 2629, 'ALGI(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4912, 'Faridpur', 2630, 'AZIMNAGAR(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4913, 'Faridpur', 2631, 'CHUMORDI(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4914, 'Faridpur', 2632, 'CHANDRA(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4915, 'Faridpur', 2633, 'GHARUA(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4916, 'Faridpur', 2634, 'HAMIRDI(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4917, 'Faridpur', 2635, 'KALAMRIDHA(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4918, 'Faridpur', 2636, 'KAOLIBERA(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4919, 'Faridpur', 2637, 'MANIKDAHA(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4920, 'Faridpur', 2638, 'NASIRABAD(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4921, 'Faridpur', 2639, 'NURULLAGANJ(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4922, 'Faridpur', 2640, 'TUZARPUR(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4923, 'Faridpur', 2641, 'CHAR BHADRASAN(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4924, 'Faridpur', 2642, 'CHAR HARIRAMPUR(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4925, 'Faridpur', 2643, 'CHAR JHAUKANDA(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4926, 'Faridpur', 2644, 'GAZIRTEK(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4927, 'Faridpur', 2645, 'NAGARKANDA(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4928, 'Faridpur', 2646, 'CHAR JASORDI(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4929, 'Faridpur', 2647, 'DANGI(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4930, 'Faridpur', 2648, 'PHULSUTI(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4931, 'Faridpur', 2649, 'KAICHAIL(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4932, 'Faridpur', 2650, 'LASKARDIA(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4933, 'Faridpur', 2651, 'KODALIA SHOHIDNAGAR(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4934, 'Faridpur', 2652, 'PURA PARA(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4935, 'Faridpur', 2653, 'RAMNAGAR(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4936, 'Faridpur', 2654, 'TALMA(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4937, 'Faridpur', 2655, 'SADARPUR(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4938, 'Faridpur', 2656, 'AKTER CHAR(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4939, 'Faridpur', 2657, 'BHASHANCHAR(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4940, 'Faridpur', 2658, 'CHAR BISHNUPUR(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4941, 'Faridpur', 2659, 'CHAR MANAIR(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4942, 'Faridpur', 2660, 'CHAR NASIRPUR(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4943, 'Faridpur', 2661, 'DHEUKHALI(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4944, 'Faridpur', 2662, 'KRISHNAPUR(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4945, 'Faridpur', 2663, 'NARIKELBARIA(Faridpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4946, 'Perojpur', 2664, 'Nazirpur (Pirojpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4947, 'Perojpur', 2665, 'Kawkhali (Pirojpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4948, 'Perojpur', 2666, 'Hularhat (Pirojpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4949, 'Perojpur', 2667, 'Indurkani (Pirojpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4950, 'Perojpur', 2668, 'Bhandaria (Pirojpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4951, 'Barisal', 2669, 'Taltoli (Barguna)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4952, 'Barisal', 2670, 'Alipur (Kolapara)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4953, 'Barisal', 2671, 'Mohipur (Kolapara)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4954, 'Barisal', 2672, 'Khepupara (Kolapara)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4955, 'Barisal', 2673, 'Kuakata (Kolapara)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4956, 'Barisal', 2674, 'Payra port (Kolapara', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4957, 'Barisal', 2675, 'Dhankhali RPCL (Kolapara)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4958, 'Barisal', 2676, 'Amtali (Kolapara)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4959, 'Barisal', 2677, 'Chakamaia Union (Kolapara)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4960, 'Barisal', 2678, 'Kachupatra(Taltoli Upazilla)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4961, 'Barisal', 2679, 'Champapur Unio(Kolapara)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4962, 'Barisal', 2680, 'Baliatoli Union(Kolapara)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4963, 'Barisal', 2681, 'Dalbuganj union (Kolapara)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4964, 'Barisal', 2682, 'lota Chapli Unio(Kolapara)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4965, 'Barisal', 2683, 'Mithagonj Union (Kolapara)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4966, 'Barisal', 2684, 'Dhankhali Union (Kolapara)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4967, 'Barisal', 2685, 'Lalua Union(Kolapara Hub)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4968, 'Shariatpur', 2686, 'Binodpur (Shariatpur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4969, 'Shariatpur', 2687, 'Tulasar (Shariatpur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4970, 'Shariatpur', 2688, 'Palong (Shariatpur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4971, 'Shariatpur', 2689, 'Domshar (Shariatpur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4972, 'Shariatpur', 2690, 'Angaria (Shariatpur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4973, 'Shariatpur', 2691, 'Rudrokor (Shariatpur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4974, 'Shariatpur', 2692, 'Chitoliya (Shariatpur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4975, 'Shariatpur', 2693, 'Chikondi (Shariatpur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4976, 'Shariatpur', 2694, 'Sholpara (Shariatpur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4977, 'Shariatpur', 2695, 'Shakhipur (Shariatpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4978, 'Jhalokathi', 2696, 'Basonda (Jhalokathi Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4979, 'Jhalokathi', 2697, 'Bhoirabpasha (Jhalokathi Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4980, 'Jhalokathi', 2698, 'Binaykathi (Jhalokathi Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4981, 'Jhalokathi', 2699, 'Baukathi (Jhalokathi Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4982, 'Jhalokathi', 2700, 'Gabha Ramchandrapur (Jhalokathi Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4983, 'Jhalokathi', 2701, 'Kewra (Jhalokathi Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4984, 'Jhalokathi', 2702, 'Kirtipasha (Jhalokathi Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4985, 'Jhalokathi', 2703, 'Chottorkanda (Jhalokathi Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4986, 'Jhalokathi', 2704, 'Magar (Jhalokathi Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4987, 'Jhalokathi', 2705, 'Nabogram (Jhalokathi Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4988, 'Jhalokathi', 2706, 'Ponabulia (Jhalokathi Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4989, 'Jhalokathi', 2707, 'Shekherhat (Jhalokathi Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4990, 'Jhalokathi', 2708, 'Amua (Kathalia)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4991, 'Jhalokathi', 2709, 'Awrabunia (Kathalia)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4992, 'Jhalokathi', 2710, 'Kathalia Banai (Kathalia)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4993, 'Jhalokathi', 2711, 'Moricbunia (Kathalia)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4994, 'Jhalokathi', 2712, 'Munshirabad (Kathalia)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4995, 'Jhalokathi', 2713, 'Koikhali (Kathalia)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4996, 'Jhalokathi', 2714, 'Pathikelghata (Kathalia)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4997, 'Jhalokathi', 2715, 'Shoulojalia (Kathalia)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4998, 'Jhalokathi', 2716, 'Dapdapia (Nalchiti)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(4999, 'Jhalokathi', 2717, 'Kulkathi (Nalchiti)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5000, 'Jhalokathi', 2718, 'Hodua (Nalchiti)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5001, 'Jhalokathi', 2719, 'Kushlango (Nalchiti)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5002, 'Jhalokathi', 2720, 'Mollarhat (Nalchiti)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5003, 'Jhalokathi', 2721, 'Bhobanipur (Nalchiti)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5004, 'Jhalokathi', 2722, 'Ponabalia (Nalchiti)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5005, 'Jhalokathi', 2723, 'Taltola (Nalchiti)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5006, 'Jhalokathi', 2724, 'Nachonmahal (Nalchiti)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5007, 'Jhalokathi', 2725, 'Ranapasha (Nalchiti)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5008, 'Jhalokathi', 2726, 'Shubidpur (Nalchiti)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5009, 'Jhalokathi', 2727, 'Siddhakathi (Nalchiti)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5010, 'Jhalokathi', 2728, 'Boroiya (Rajapur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5011, 'Jhalokathi', 2729, 'Galua (Rajapur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5012, 'Jhalokathi', 2730, 'Palot (Rajapur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5013, 'Jhalokathi', 2731, 'Pingri (Rajapur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5014, 'Jhalokathi', 2732, 'Mothbari (Rajapur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5015, 'Jhalokathi', 2733, 'Natun Hat (Rajapur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5016, 'Jhalokathi', 2734, 'Shuktagor (Rajapur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5017, 'Jhalokathi', 2735, 'Sturia (Rajapur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5018, 'Rajbari', 2736, 'Mijanpur(Rajbari Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5019, 'Rajbari', 2737, 'Borat((Rajbari Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5020, 'Rajbari', 2738, 'Chandoni(Rajbari Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5021, 'Rajbari', 2739, 'Khangong(Rajbari Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5022, 'Rajbari', 2740, 'Baniboho(Rajbari sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5023, 'Rajbari', 2741, 'Dadshi(Rajbari Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5024, 'Rajbari', 2742, 'Mulghor(Rajbari Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5025, 'Rajbari', 2743, 'Bosontopur(Rajbari Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5026, 'Rajbari', 2744, 'Khankhanapur(Rajbari Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5027, 'Rajbari', 2745, 'Alipur(Rajbari Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5028, 'Rajbari', 2746, 'Ramkantopur(Rajbari Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5029, 'Rajbari', 2747, 'Pachuria(Rajbari Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5030, 'Rajbari', 2748, 'Sultanpur(Rajbari Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5031, 'Rajbari', 2749, 'Sahidohabpur(Rajbari Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5032, 'Rajbari', 2750, 'Doulodia(Goalondo Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5033, 'Rajbari', 2751, 'Debgram(Goalondo Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5034, 'Rajbari', 2752, 'Ujanchor(Goalondo Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5035, 'Rajbari', 2753, 'Sotovakla(Goalondo Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5036, 'Rajbari', 2754, 'Bahadurpur(Pangsha Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5037, 'Rajbari', 2755, 'Habashpur((Pangsha Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5038, 'Rajbari', 2756, 'Joshai(Pangsha Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5039, 'Rajbari', 2757, 'Babupara(Pangsha Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5040, 'Rajbari', 2758, 'Mourat(Pangsha Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5041, 'Rajbari', 2759, 'Patta(Pangsha Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5042, 'Rajbari', 2760, 'Sorisha(Pangsha Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5043, 'Rajbari', 2761, 'Kolimohor(Pangsha Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5044, 'Rajbari', 2762, 'Kosbamajail(Pangsha Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5045, 'Rajbari', 2763, 'Maspara(Pangsha Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5046, 'Rajbari', 2764, 'Islampur(Baliakandi Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5047, 'Rajbari', 2765, 'Bohorpur(Baliakandi Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5048, 'Rajbari', 2766, 'Nobabpur(Baliakandi Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5049, 'Rajbari', 2767, 'Narua(Baliakandi Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5050, 'Rajbari', 2768, 'Baliakandi(Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5051, 'Rajbari', 2769, 'Jongol(Baliakandi Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5052, 'Rajbari', 2770, 'Jamalpur(Baliakandi Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5053, 'Rajbari', 2771, 'Rotondia(Kalukhali Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5054, 'Rajbari', 2772, 'Kalikapur(Kalukhali Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5055, 'Rajbari', 2773, 'Boalia(Kalukhali Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5056, 'Rajbari', 2774, 'Majbari(Kalukhali Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5057, 'Rajbari', 2775, 'Modapur(Kalukhali Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5058, 'Rajbari', 2776, 'Shawrael(Kalukhali Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5059, 'Rajbari', 2777, 'Mrigi(Kalukhali Rajbari)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5060, 'Madaripur', 2778, 'Vadroshan (Shichar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5061, 'Madaripur', 2779, 'Chanderchar (Shibchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5062, 'Madaripur', 2780, 'Shomvuk (Shibchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5063, 'Madaripur', 2781, 'Sheikhpur (Shibchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5064, 'Madaripur', 2782, 'Boiratola (Shibchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5065, 'Madaripur', 2783, 'Hossainer Hat (Shibchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5066, 'Madaripur', 2784, 'Baghmara(Shibchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5067, 'Madaripur', 2785, 'Sirail (Shibchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5068, 'Madaripur', 2786, 'Uthrail (Shibchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5069, 'Madaripur', 2787, 'Dattopara (Shibchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5070, 'Madaripur', 2788, 'Surjonagar (Shibchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5071, 'Madaripur', 2789, 'Khaser hat (Shibchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5072, 'Madaripur', 2790, 'Minara (Shibchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5073, 'Madaripur', 2791, 'Maler Hat (Shibchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5074, 'Madaripur', 2792, 'Nasirer Mor (Panch-Char)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5075, 'Madaripur', 2793, 'Bahadurpur ( Panch-char)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5076, 'Madaripur', 2794, 'Bakhorkandi (Shibchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5077, 'Madaripur', 2795, 'Kawrakandi (Shibchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5078, 'Madaripur', 2796, 'Kathalbari (Shibchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5079, 'Madaripur', 2797, 'Naodoba (Shibchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5080, 'Madaripur', 2798, 'Shimana (Shibchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5081, 'Madaripur', 2799, 'Kutubpur (Shibchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5082, 'Madaripur', 2800, 'Munshirbazar (Shibchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5083, 'Madaripur', 2801, 'Kadirpur (Shibchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5084, 'Madaripur', 2802, '2nd Nadirpar (Shibchar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5085, 'Madaripur', 2803, 'Lakshmipur (Kalkini)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5086, 'Madaripur', 2804, 'Khaser Hat (Kalkini)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5087, 'Madaripur', 2805, 'Miyar Hat ( Kalkini)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5088, 'Madaripur', 2806, 'Mollar Hat (Kalkini)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5089, 'Madaripur', 2807, 'Ramjanpur (Kalkini)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5090, 'Madaripur', 2808, 'Shahebrampur ( Kalkini)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5091, 'Madaripur', 2809, 'Faishatola (Kalkini)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5092, 'Madaripur', 2810, 'Madra (Kalkini)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5093, 'Madaripur', 2811, 'Vurghata (Kalkini)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5094, 'Madaripur', 2812, 'Bhanga Bridge (Kalkini)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5095, 'Madaripur', 2813, 'Nabogram (Kalkini)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5096, 'Madaripur', 2814, 'Dasar (Kalkini)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5097, 'Madaripur', 2815, 'Ghosher Hat Chowrasta (Kalkini)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5098, 'Madaripur', 2816, 'Gagonpur (kalkini)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5099, 'Madaripur', 2817, 'Pathuriyarpar (Kalkini)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5100, 'Madaripur', 2818, 'Gopalpur (Kalkini)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5101, 'Madaripur', 2819, 'Kalabari (Rajoir)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5102, 'Madaripur', 2820, 'Kalagachiya (Rajoir)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5103, 'Madaripur', 2821, 'Ammgram Bridge (Rajoir)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5104, 'Madaripur', 2822, 'Lokkhonda (Rajoir)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5105, 'Madaripur', 2823, 'Rajoir Bus Stand', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5106, 'Madaripur', 2824, 'Yousufpur (Rajoir)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5107, 'Madaripur', 2825, 'Shakharpar (Rajoir)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5108, 'Madaripur', 2826, 'Tekerhat (Rajoir)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5109, 'Madaripur', 2827, 'Kadambari (Rajoir)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5110, 'Madaripur', 2828, 'Chagolchira (Rajoir)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5111, 'Madaripur', 2829, 'Fullbari (Rajoir)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5112, 'Madaripur', 2830, 'Pantapara (Rajoir)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5113, 'Madaripur', 2831, 'Nilokkhi (Rajoir)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5114, 'Madaripur', 2832, 'Kabirajpur (Rajoir)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5115, 'Madaripur', 2833, 'Khospur tekerhat (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5116, 'Madaripur', 2834, 'Angulkata Hat (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5117, 'Madaripur', 2835, 'Mohisherchar Ferighat (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5118, 'Madaripur', 2836, 'Kulpoddi Chowrsta (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5119, 'Madaripur', 2837, 'Mostofapur (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5120, 'Madaripur', 2838, 'Ghatokchar (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5121, 'Madaripur', 2839, 'Adompur (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5122, 'Madaripur', 2840, 'Shirkhara (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5123, 'Madaripur', 2841, 'Sreenadi (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5124, 'Madaripur', 2842, 'Mithapur (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5125, 'Madaripur', 2843, 'Habiganj (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5126, 'Madaripur', 2844, 'Kalirbazar (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5127, 'Madaripur', 2845, 'Charnachna (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5128, 'Madaripur', 2846, 'Kalikapur (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5129, 'Madaripur', 2847, 'Banglabazar (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5130, 'Madaripur', 2848, 'Housedi (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5131, 'Madaripur', 2849, 'Bolsha (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5132, 'Madaripur', 2850, 'Awaz (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5133, 'Madaripur', 2851, 'Charmuguriya (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5134, 'Madaripur', 2852, 'Hazrapur (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5135, 'Madaripur', 2853, 'Khagdi (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5136, 'Madaripur', 2854, 'Notun Bus Stand (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5137, 'Madaripur', 2855, 'Puran Bazar (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5138, 'Madaripur', 2856, 'Khagchora (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5139, 'Madaripur', 2857, 'Madaripur Launch Ghat (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5140, 'Madaripur', 2858, 'Madaripur Sadar Thana (Madaripur Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5141, 'Barisal', 2859, 'Satla (Wazirpur Gournadi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5142, 'Barisal', 2860, 'Harta (Wazirpur Gournadi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5143, 'Barisal', 2861, 'Jolla (Wazirpur Gournadi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5144, 'Barisal', 2862, 'Otra (Wazirpur Gournadi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5145, 'Barisal', 2863, 'Sholok (Wazirpur Gournadi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5146, 'Barisal', 2864, 'Borakotha (Wazirpur Gournadi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5147, 'Barisal', 2865, 'Bamrail (Wazirpur Gournadi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5148, 'Barisal', 2866, 'Shikerpur (Wazirpur Gournadi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5149, 'Barisal', 2867, 'Torki (Khanjapur Gournadi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5150, 'Barisal', 2868, 'Chadshi (Gournadi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5151, 'Barisal', 2869, 'Mahilara (Gournadi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5152, 'Barisal', 2870, 'Nolchira (Gournadi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5153, 'Barisal', 2871, 'Batajor (Gournadi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5154, 'Barisal', 2872, 'Shorikal (Gournadi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5155, 'Barisal', 2873, 'Rajihar (Agailjhara Gournadi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5156, 'Barisal', 2874, 'Bakal (Agailjhara Gournadi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5157, 'Barisal', 2875, 'Bagdha (Agailjhara Gournadi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5158, 'Barisal', 2876, 'Goila (Agailjhara Gournadi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5159, 'Barisal', 2877, 'Rotnopur (Agailjhara Gournadi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5160, 'Bhola', 2878, 'Tazumuddin Bazar (Bhola)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5161, 'Bhola', 2879, 'Khaser Hat (Tajumuddin)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5162, 'Bhola', 2880, 'Choto Dawri (Tazumuddin-Bhola)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5163, 'Bhola', 2881, 'Dakshin Khaser Hat Bazar (Tazumuddin-Bhola)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5164, 'Bhola', 2882, 'Dasherhat (Tazumuddin)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5165, 'Bhola', 2883, 'Kalirhat (Tazumuddin)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5166, 'Bhola', 2884, 'Kazi Kandi Bazaar (Tazumuddin)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5167, 'Bhola', 2885, 'Anand Bazar (Tazumuddin)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5168, 'Bhola', 2886, 'Tazumuddin Bazar(Bhola)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5169, 'Bhola', 2887, 'Molla Pukurpar (Tazumuddin)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5170, 'Bhola', 2888, 'Muci bari Kona (Tazumuddin)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5171, 'Bhola', 2889, 'Maniram Bazar (Kunjer Hat)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5172, 'Bhola', 2890, 'Lebukata Bazar (Kunjer Hat)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5173, 'Bhola', 2891, 'Kunjer Hat Bazar (Bhola)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5174, 'Bhola', 2892, 'Makkar Pol (Kunjer Hat)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5175, 'Bhola', 2893, 'Kunjer Hat(Bhola)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5176, 'Bhola', 2894, 'Baidyer Pol (Kunjer Hat)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5177, 'Bhola', 2895, 'Dalalbazar (Kunjer Hat)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5178, 'Bhola', 2896, 'Fakirhat (Kunjer Hat-Bhola)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5179, 'Bhola', 2897, 'Laldigir par (Borhanuddin)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5180, 'Bhola', 2898, 'Borhanganj (Borhanuddin)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5181, 'Bhola', 2899, 'Gas field (Borhanuddin)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5182, 'Bhola', 2900, 'Udaipur Rastar Matha (Borhanuddin)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5183, 'Bhola', 2901, 'Daulatkhan Rastar Matha (Borhanuddin)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5184, 'Bhola', 2902, 'Naya Miarhat (Borhanuddin)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5185, 'Bhola', 2903, 'Hakimuddin (Borhanuddin)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5186, 'Bhola', 2904, 'Khas Mahal (Borhanuddin)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5187, 'Bhola', 2905, 'Abulbazar (Borhanuddin)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5188, 'Bhola', 2906, 'Miya Barir Darja (Borhanuddin)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5189, 'Bhola', 2907, 'Powerplant (Borhanuddin)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5190, 'Bhola', 2908, 'Mizirbazar (Borhanuddin)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5191, 'Bhola', 2909, 'Kaciya chowmohani (Borhanuddin)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5192, 'Bhola', 2910, 'Golpar Hajir Hat (Borhanuddin)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5193, 'Bhola', 2911, 'Deula Santirhat (Borhanuddin)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5194, 'Bhola', 2912, 'Lalmohon (Charfession)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5195, 'Bhola', 2913, 'Hazirhat (Manpura-Bhola)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5196, 'Bhola', 2914, 'Hazirhat (Dularhat)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5197, 'Bhola', 2915, 'Dakkhin Aicha (Charfession)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5198, 'Bhola', 2916, 'Ahmedpur (Charfession)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5199, 'Bhola', 2917, 'Shoshivushon (Charfession)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5200, 'Bhola', 2918, 'Dularhat (Charfession)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5201, 'Bhola', 2919, 'Jonota Bazar (Manpura)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5202, 'Bhola', 2920, 'Hazirhat (Charfession )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5203, 'Bhola', 2921, 'Hazirhat Dularhat (Charfession )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5204, 'Bhola', 2922, 'Boro Dawri (Lalmohan)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5205, 'Bhola', 2923, 'Mongol Shikdar (Lalmohon)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5206, 'Bhola', 2924, 'Raichad (Lalmohon)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5207, 'Bhola', 2925, 'Loadharing (Lalmohon)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5208, 'Bhola', 2926, 'Sona miar Bazar(Lalmohan)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5209, 'Bhola', 2927, 'Kattar Hat (Lalmohon)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5210, 'Bhola', 2928, 'Ghosher Hat (Charfession)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5211, 'Barguna', 2929, 'Badarkhali (Barguna Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5212, 'Barguna', 2930, 'Gauri Channa (Barguna Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5213, 'Barguna', 2931, 'FulJhuri (Barguna Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5214, 'Barguna', 2932, 'Keorabunya (Barguna Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5215, 'Barguna', 2933, 'Ayala Patakata (Barguna Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5216, 'Barguna', 2934, 'Burir Char (Barguna Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5217, 'Barguna', 2935, 'Dhalua (Barguna Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5218, 'Barguna', 2936, 'M Baliatali (Barguna Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5219, 'Barguna', 2937, 'Naltona (Barguna Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5220, 'Barguna', 2938, 'Purakata (Barguna Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5221, 'Barguna', 2939, 'Bamna(Mathbaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5222, 'Barguna', 2940, 'Douyatola (Bamna)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5223, 'Barguna', 2941, 'Bukabunia (Bamna)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5224, 'Barguna', 2942, 'Raihanpur (Patharghata)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5225, 'Barguna', 2943, 'Nacnapara (Patharghata)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5226, 'Barguna', 2944, 'Charduani (Patharghata)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5227, 'Barguna', 2945, 'Kalmegha (Patharghata)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5228, 'Barguna', 2946, 'Kakchira (Patharghata)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5229, 'Barguna', 2947, 'Kathaltoli (Patharghata-Barguna)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5230, 'Barguna', 2948, 'Bibichini (Betagi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5231, 'Barguna', 2949, 'Hosnabad (Betagi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5232, 'Barguna', 2950, 'Mokamia (Batagi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5233, 'Barguna', 2951, 'Buramojumdar - Kauniya (Betagi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5234, 'Barguna', 2952, 'Kajirabad (Betagi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5235, 'Barguna', 2953, 'Sorishamuri (Betagi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5236, 'Narayanganj', 2954, 'Modonpur Sadar (Modonpur)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5237, 'Narayanganj', 2955, 'Kachpur (Modonpur Narayanganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5238, 'Narayanganj', 2956, 'Nabiganj (Bandar Narayanganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5239, 'Narayanganj', 2957, 'Modonganj (Bandar Naraynaganj)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5240, 'Narayanganj', 2958, 'Morgapara (Sonargaon)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5241, 'Narayanganj', 2959, 'Baiddar Bazar (Sonargaon)', 2, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5242, 'Sylhet', 2960, 'Kandi gram (bishwanath)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5243, 'Sylhet', 2961, 'miajaner gaon (bishwanath)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5244, 'Sylhet', 2962, 'Motuk kuna (bishwanath)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5245, 'Sylhet', 2963, 'Doshpaika (bishwanath)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5246, 'Sylhet', 2964, 'Kade pur (bishwanath)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5247, 'Sylhet', 2965, 'Ramdhana  (bishwanath)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5248, 'Sylhet', 2966, 'Boiragi bazar (bishwanath)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5249, 'Sylhet', 2967, 'Noya bondor bazar (bishwanath)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5250, 'Sylhet', 2968, 'Khazanchi (bishwanath)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5251, 'Sylhet', 2969, 'Miro gaon (bishwanath)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5252, 'Sylhet', 2970, 'Rajnogor (Bishwanath)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5253, 'Sylhet', 2971, 'Ponaulla Bazar (Kamalbazar Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5254, 'Sylhet', 2972, 'Kurua Bazar (Osmaninagar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5255, 'Sylhet', 2973, 'Doyamir (Osmaninagar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5256, 'Sylhet', 2974, 'Boaljur(Osmaninagar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5257, 'Sylhet', 2975, 'Burunga( Osmaninagar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5258, 'Sylhet', 2976, 'Golmukhafon (Osmaninagar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5259, 'Sylhet', 2977, 'Hajipur(Osmaninagar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5260, 'Sylhet', 2978, 'Umor pur (Goalabazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36');
INSERT INTO `redx_delivery_areas` (`id`, `district_name`, `area_id`, `area_name`, `zone_id`, `status`, `created_at`, `updated_at`) VALUES
(5261, 'Sylhet', 2979, 'Khadimpur (Goalabazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5262, 'Sylhet', 2980, 'Gourinath (Balaganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5263, 'Sylhet', 2981, 'Murar Bazar Gohorpur (Balaganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5264, 'Sylhet', 2982, 'Kamal bazar (Dakshin Surma)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5265, 'Sylhet', 2983, 'Najir bazar (Osmaninagar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5266, 'Sylhet', 2984, 'Begumpur (goalabazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5267, 'Sylhet', 2985, 'Rashidpur (bishwanath)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5268, 'Comilla', 2986, 'Bagmara', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5269, 'Comilla', 2987, 'Lalmai', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5270, 'Comilla', 2988, 'Jalam', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5271, 'Comilla', 2989, 'Barura Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5272, 'Comilla', 2990, 'Aganagar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5273, 'Comilla', 2991, 'Vobanipur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5274, 'Comilla', 2992, 'Uttar Shilmuri', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5275, 'Comilla', 2993, 'Dakshin Shilmuri', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5276, 'Comilla', 2994, 'Chondimura', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5277, 'Comilla', 2995, 'Galimpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5278, 'Comilla', 2996, 'Shilmuri', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5279, 'Comilla', 2997, 'Poyalghacha', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5280, 'Comilla', 2998, 'Adda', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5281, 'Comilla', 2999, 'Uttar Khosbash', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5282, 'Comilla', 3000, 'Dakkhin Khoshbash', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5283, 'Comilla', 3001, 'Rammohon', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5284, 'Comilla', 3002, 'Dewora', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5285, 'Comilla', 3003, 'Chitokda', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5286, 'Comilla', 3004, 'Madhaiya (Cumilla)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5287, 'Noakhali', 3005, 'Nijumdip (Hatiya)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5288, 'Sherpur', 3006, 'Gurduar Nakla', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5289, 'Sherpur', 3007, 'Pathakata Nakla', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5290, 'Sherpur', 3008, 'Nunni Nalitabari', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5291, 'Sherpur', 3009, 'Dhanshail Jhenaigati', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5292, 'Jamalpur', 3010, 'Battajore Bakshiganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5293, 'Jamalpur', 3011, 'Nilakshmia Bakshiganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5294, 'Jamalpur', 3012, 'Shadhur Para Bakshiganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5295, 'Jamalpur', 3013, 'Dhanua Bakshiganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5296, 'Sherpur', 3014, 'Garjaripa Srebardi', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5297, 'Sherpur', 3015, 'Bhelua Sribardi', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5298, 'Sherpur', 3016, 'Kurikahania Sribardi', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5299, 'Sherpur', 3017, 'Ghazir Khamar Sheprur Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5300, 'Sherpur', 3018, 'Bajitkhila  Sheprur Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5301, 'Sherpur', 3019, 'Bhatsala Sheprur Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5302, 'Sherpur', 3020, 'Pakuria Sheprur Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5303, 'Netrokona', 3021, 'Teligati  Atpara', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5304, 'Netrokona', 3022, 'Duaz Atpara', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5305, 'Netrokona', 3023, 'Baniajan Atpara', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5306, 'Netrokona', 3024, 'Asma Barhatta', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5307, 'Netrokona', 3025, 'Thakurakona Barhatta', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5308, 'Netrokona', 3026, 'Singhar Bangla Barhatta', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5309, 'Netrokona', 3027, 'Baushi Barhatta', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5310, 'Netrokona', 3028, 'Barhatta Sadar  Barhatta', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5311, 'Netrokona', 3029, 'Fakira Bazar Barhatta', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5312, 'Netrokona', 3030, 'Jaria Durgapur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5313, 'Netrokona', 3031, 'Janjail Durghapur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5314, 'Netrokona', 3032, 'Krisnochor Bazar Durgapur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5315, 'Netrokona', 3033, 'Birishiri Durgapur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5316, 'Netrokona', 3034, 'Utrail Durgapur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5317, 'Netrokona', 3035, 'Chandighar Durgapur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5318, 'Netrokona', 3036, 'Kailati Kalmakanda', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5319, 'Netrokona', 3037, 'Nazirpur Kalmakanda', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5320, 'Netrokona', 3038, 'Lengura Kalmakanda', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5321, 'Netrokona', 3039, 'Kalmakanda Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5322, 'Netrokona', 3040, 'Ganda Kendua', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5323, 'Netrokona', 3041, 'Chirang Kendua', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5324, 'Netrokona', 3042, 'Madanpur Kendua', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5325, 'Netrokona', 3043, 'Noapara Kendua', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5326, 'Netrokona', 3044, 'Mashka Kendua', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5327, 'Netrokona', 3045, 'Muzaffarpur Kendua', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5328, 'Netrokona', 3046, 'Sandikona Kendau', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5329, 'Netrokona', 3047, 'Kendua Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5330, 'Netrokona', 3048, 'Kaitail Madan', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5331, 'Netrokona', 3049, 'Maghan Madan', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5332, 'Netrokona', 3050, 'Madan Centar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5333, 'Netrokona', 3051, 'Birampur Mohangonj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5334, 'Netrokona', 3052, 'Maghan Siadhar Mohangonj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5335, 'Netrokona', 3053, 'Mohangonj Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5336, 'Netrokona', 3054, 'Agia Purbadhala', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5337, 'Netrokona', 3055, 'Khalishapur Purbadhala', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5338, 'Netrokona', 3056, 'Hogla Purbadhala', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5339, 'Netrokona', 3057, 'Purbadhala Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5340, 'Netrokona', 3058, 'Shemgonj Purbadhala', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5341, 'Sunamganj', 3059, 'Paikurati Dharmapasha', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5342, 'Sunamganj', 3060, 'Selborash Dharmapasha', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5343, 'Sunamganj', 3061, 'Dharmapasha Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5344, 'Netrokona', 3062, 'Challishav Netrokona', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5345, 'Netrokona', 3063, 'Dakshin Bishiura Netrokona', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5346, 'Netrokona', 3064, 'Medni Netrokona', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5347, 'Netrokona', 3065, 'Netrokona Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5348, 'Tangail', 3066, 'Sagordighi(Modhupur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5349, 'Tangail', 3067, 'Garo Bazar(Modhupur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5350, 'Tangail', 3068, 'Hamidpur(Modhupur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5351, 'Tangail', 3069, 'Kadomtoli(Modhupur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5352, 'Tangail', 3070, 'Jhorka(Modhupur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5353, 'Tangail', 3071, 'Kakraid(Modhupur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5354, 'Tangail', 3072, 'Dhalapara(Modhupur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5355, 'Tangail', 3073, 'Ghatail Senanibash(Modhupur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5356, 'Mymensingh', 3074, 'Morlicbari Bazar ( Valuka )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5357, 'Mymensingh', 3075, 'Batajor Bazar ( Valuka )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5358, 'Mymensingh', 3076, 'Angargara Bazar ( Valuka )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5359, 'Mymensingh', 3077, 'Mastarbari ( Valuka )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5360, 'Mymensingh', 3078, 'Sridstore Bazar ( Valuka )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5361, 'Mymensingh', 3079, 'Shantiganz ( Gafargaon )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5362, 'Mymensingh', 3080, 'Rasulpur ( Gafargaon )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5363, 'Mymensingh', 3081, 'Maoshakhali ( Pagla )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5364, 'Mymensingh', 3082, 'Eschooler Bazar ( Pagla )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5365, 'Mymensingh', 3083, 'Bord Bazar ( Pagla )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5366, 'Mymensingh', 3084, 'Goespur ( Pagla )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5367, 'Mymensingh', 3085, 'Bagar Bazar ( Valuka )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5368, 'Mymensingh', 3086, 'Utura ( Valuka )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5369, 'Mymensingh', 3087, 'Nizuri ( Valuka )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5370, 'Mymensingh', 3088, 'Purabari ( Trishal )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5371, 'Mymensingh', 3089, 'Trishal Sadar', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5372, 'Mymensingh', 3090, 'Balipara ( Trishal )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5373, 'Mymensingh', 3091, 'Kalir Bazar ( Trishal )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5374, 'Mymensingh', 3092, 'Vora Doba ( Trishal )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5375, 'Mymensingh', 3093, 'Bailor ( Trishal )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5376, 'Mymensingh', 3094, 'Horirampur ( Trishal )', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5377, 'Habiganj', 3095, 'Asampara (Shayestagnj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5378, 'Habiganj', 3096, 'Noapara (Madhabpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5379, 'Habiganj', 3097, 'Montola (Madhabpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5380, 'Habiganj', 3098, 'Mirpurbazar (Shayestaganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5381, 'Habiganj', 3099, 'Olipur (Shayestaganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5382, 'Habiganj', 3100, 'Markuli (Nabiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5383, 'Habiganj', 3101, 'Kadirganj (Nabiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5384, 'Moulvibazar', 3102, 'Ashidron (Sreemangal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5385, 'Moulvibazar', 3103, 'Bhunabir  (Sreemangal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5386, 'Moulvibazar', 3104, 'Kalapur (Sreemangal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5387, 'Moulvibazar', 3105, 'Kalighat (Sreemangal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5388, 'Moulvibazar', 3106, 'Mirzapur (Sreemangal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5389, 'Moulvibazar', 3107, 'Rajghat (Sreemangal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5390, 'Moulvibazar', 3108, 'Satgaon (Sreemangal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5391, 'Moulvibazar', 3109, 'Sindurkhan (Sreemangal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5392, 'Moulvibazar', 3110, 'Madhabpur (Kamalganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5393, 'Moulvibazar', 3111, 'Ali Nagar (Kamalganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5394, 'Moulvibazar', 3112, 'Bhanugach (Kamalganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5395, 'Moulvibazar', 3113, 'Islampur (Kamalganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5396, 'Moulvibazar', 3114, 'Akhailkura (Moulvibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5397, 'Moulvibazar', 3115, 'Amtail (Moulvibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5398, 'Moulvibazar', 3116, 'Giasnagar (Moulvibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5399, 'Moulvibazar', 3117, 'Kamalpur (Moulvibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5400, 'Moulvibazar', 3118, 'Khalilpur (Moulvibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5401, 'Moulvibazar', 3119, 'Manumukh (Moulvibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5402, 'Moulvibazar', 3120, 'Mostafapur (Moulvibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5403, 'Moulvibazar', 3121, 'Nazirabad (Moulvibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5404, 'Moulvibazar', 3122, 'Kagabala (Moulvibazar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5405, 'Patuakhali', 3123, 'Labukhali (Dumki)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5406, 'Patuakhali', 3124, 'Badarpur (Patuakhali Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5407, 'Patuakhali', 3125, 'Boro Bighai (Patuakhali Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5408, 'Patuakhali', 3126, 'Choto Bighai (Patuakhali Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5409, 'Patuakhali', 3127, 'Itbaria (Patuakhali Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5410, 'Patuakhali', 3128, 'Jainkathi (Patuakhali Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5411, 'Patuakhali', 3129, 'Kalikapur (Patuakhali Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5412, 'Patuakhali', 3130, 'Laukathi (Patuakhali Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5413, 'Patuakhali', 3131, 'Lohalia (Patuakhali Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5414, 'Patuakhali', 3132, 'Madarbunia (Patuakhali Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5415, 'Patuakhali', 3133, 'Marichbunia (Patuakhali Sadar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5416, 'Patuakhali', 3134, 'Badura Bazar(Auliapur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5417, 'Patuakhali', 3135, 'Sheikh Hasina cantonment (Lebukhali, Patuakhali)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5418, 'Patuakhali', 3136, 'Adabaria (Bauphal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5419, 'Patuakhali', 3137, 'Daspara (Bauphal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5420, 'Patuakhali', 3138, 'Dhulia (Bauphal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5421, 'Patuakhali', 3139, 'Kanchi Para (Bauphal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5422, 'Patuakhali', 3140, 'Kalisuri (Bauphal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5423, 'Patuakhali', 3141, 'Kanakdia (Bauphal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5424, 'Patuakhali', 3142, 'Keshabpur (Bauphal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5425, 'Patuakhali', 3143, 'Nowmala (Bauphal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5426, 'Patuakhali', 3144, 'Nazirpur (Bauphal)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5427, 'Patuakhali', 3145, 'Bahrampur (Dashmina)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5428, 'Patuakhali', 3146, 'Banshbaria (Dashmina)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5429, 'Patuakhali', 3147, 'Rangopaldi (Dashmina)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5430, 'Patuakhali', 3148, 'Amkhola (Galachipa)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5431, 'Patuakhali', 3149, 'Chalitabunia (Galachipa)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5432, 'Patuakhali', 3150, 'Char Kajal (Galachipa)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5433, 'Patuakhali', 3151, 'Chiknikandi (Galachipa)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5434, 'Patuakhali', 3152, 'Golkhali (Galachipa)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5435, 'Patuakhali', 3153, 'Panpatty (Galachipa)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5436, 'Patuakhali', 3154, 'Char Bishwas (Galachipa)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5437, 'Patuakhali', 3155, 'Char Montaj (Galachipa)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5438, 'Patuakhali', 3156, 'Gazalia (Galachipa)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5439, 'Patuakhali', 3157, 'Rangabali (Dashmina)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5440, 'Perojpur', 3158, 'Swarupkathi', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5441, 'Perojpur', 3159, 'Inderhat (Swarupkathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5442, 'Perojpur', 3160, 'Miarhat (Swarupkathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5443, 'Perojpur', 3161, 'Dubi Bazar (Swarupkathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5444, 'Perojpur', 3162, 'Sangitkathi (Swarupkathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5445, 'Perojpur', 3163, 'Kuriana (Swarupkathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5446, 'Perojpur', 3164, 'Mahmudkathi (Swarupkathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5447, 'Perojpur', 3165, 'Korfa (Swarupkathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5448, 'Perojpur', 3166, 'Sohagdol (Swarupkathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5449, 'Perojpur', 3167, 'Alkir hat (Swarupkathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5450, 'Perojpur', 3168, 'Balihari (Swarupkathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5451, 'Perojpur', 3169, 'Nanduhar (Swarupkathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5452, 'Perojpur', 3170, 'Kaurikhara  (swarupkathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5453, 'Perojpur', 3171, 'Jalabari (Swarupkathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5454, 'Perojpur', 3172, 'Hogla Betka (Swarupkathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5455, 'Perojpur', 3173, 'Ekota bajar (Swarupkathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5456, 'Perojpur', 3174, 'Uribuniya (Swarupkathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5457, 'Perojpur', 3175, 'Batnatola (Swarupkathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5458, 'Perojpur', 3176, 'Doihari (Swarupkathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5459, 'Perojpur', 3177, 'Sutiakathi (Swarupkathi)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5460, 'Brahmanbaria', 3178, 'Harashpur (Bijoynagar)-Brahmanbaria', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5461, 'Brahmanbaria', 3179, 'Champaknagar (Bijoynagar)-Brahmanbaria', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5462, 'Brahmanbaria', 3180, 'Mugra Bazar (Akhaura)-Brahmanbaria', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5463, 'Brahmanbaria', 3181, 'Gazibazar (Bijoynagar)-Brahmanbaria', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5464, 'Brahmanbaria', 3182, 'Azampur (Akhaura)-Brahmanbaria', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5465, 'Brahmanbaria', 3183, 'Durgapur (Akhaura)-Brahmanbaria', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5466, 'Brahmanbaria', 3184, 'Moniondho (Akhaura)-Brahmanbaria', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5467, 'Brahmanbaria', 3185, 'Amtoli Bazar (Bijoynagar)-Brahmanbaria', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5468, 'Brahmanbaria', 3186, 'Islampur(Bijoynagar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5469, 'Brahmanbaria', 3187, 'KalibariÂ  (Bijoynagar)-Brahmanbaria', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5470, 'Brahmanbaria', 3188, 'BishnupurÂ  (Bijoynagar)-Brahmanbaria', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5471, 'Brahmanbaria', 3189, 'PottonÂ  (Bijoynagar)-Brahmanbaria', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5472, 'Brahmanbaria', 3190, 'Debagram (Akhaura)-Brahmanbaria', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5473, 'Brahmanbaria', 3191, 'Paharpur (Bijoy nagar-Brahmanbaria)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5474, 'Comilla', 3192, 'Debidwar (Comilla)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5475, 'Comilla', 3193, 'Eliotganj-Cumilla', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5476, 'Dhaka', 3194, 'New Paltan (Azimpur-Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5477, 'Dhaka', 3195, 'West Barua(Khilkhet)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5478, 'Dhaka', 3196, 'South Barua(Khilkhet)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5479, 'Dhaka', 3197, 'South Barua Residential Area(Khilkhet)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5480, 'Dhaka', 3198, 'Rainkhola Bazar(Mirpur)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5481, 'Dhaka', 3199, 'Dhaka Commerce College(Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5482, 'Dhaka', 3200, 'Mugda Medical College)Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5483, 'Dhaka', 3201, 'River View (Keraniganj)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5484, 'Dhaka', 3202, 'Telghat (Keraniganj)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5485, 'Dhaka', 3203, 'Ghatarchar(Keraniganj)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5486, 'Dhaka', 3204, 'Beraid (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5487, 'Dhaka', 3205, 'Dhaka International university (100-Feet-Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5488, 'Dhaka', 3206, 'United International University(100-feet-Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5489, 'Dhaka', 3207, 'Mogardia (Dhaka)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5490, 'Sirajganj', 3208, 'Enayetpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5491, 'Munshiganj', 3209, 'Singpara Bazar (Sirajdikhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5492, 'Munshiganj', 3210, 'Ichhapura Bazar (Sirajdikhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5493, 'Munshiganj', 3211, 'Baluchar (Sirajdikhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5494, 'Munshiganj', 3212, 'Holdia Bazar (Louhajang)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5495, 'Munshiganj', 3213, 'Haridia (Louhajang)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5496, 'Munshiganj', 3214, 'Malkhanagar (Sirajdikhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5497, 'Munshiganj', 3215, 'Kuchiamora (Sirajdikhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5498, 'Munshiganj', 3216, 'Kola(Sirajdikhan)', 1, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5499, 'Sunamganj', 3217, 'Anwarpur-Tahirpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5500, 'Sunamganj', 3218, 'Balijuri-Tahirpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5501, 'Sunamganj', 3219, 'Shaktiarkhola-Biswambharpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5502, 'Sunamganj', 3220, 'Polash-Biswambharpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5503, 'Sunamganj', 3221, 'Dhanpur-Biswambharpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5504, 'Sunamganj', 3222, 'Mathurkandi-Biswambharpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5505, 'Sunamganj', 3223, 'Chenakandi-Biswambharpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5506, 'Sunamganj', 3224, 'Binnakuli-Biswambharpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5507, 'Sunamganj', 3225, 'Laurerghar-Biswambharpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5508, 'Sunamganj', 3226, 'Borsora-Tahirpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5509, 'Sunamganj', 3227, 'Chragaon-Tahirpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5510, 'Sunamganj', 3228, 'Sreepur-Tahirpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5511, 'Sunamganj', 3229, 'Baliaghat-Tahirpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5512, 'Sunamganj', 3230, 'Bagli-Tahirpur', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5513, 'Jamalpur', 3231, 'Islampur Dewanganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5514, 'Jamalpur', 3232, 'Katharbill Dewanganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5515, 'Jamalpur', 3233, 'Taratia Dewanganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5516, 'Jamalpur', 3234, 'Sanandabari Dewanganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5517, 'Jamalpur', 3235, 'Kawniarchar Dewanganj', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5518, 'Habiganj', 3236, 'Jagadishpur & Teliapara (Madhabpur)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5519, 'Brahmanbaria', 3237, 'Budunti (Bijoynagar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5520, 'Brahmanbaria', 3238, 'Chor Islampur (Bijoynagar)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5521, 'Habiganj', 3239, 'Inathganj (Nabiganj)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5522, 'Comilla', 3240, 'Mia Bazar -Chowddagram', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5523, 'Sylhet', 3241, 'Lamakazi Bishwanath(Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5524, 'Sylhet', 3242, 'Leading University (Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5525, 'Sylhet', 3243, 'Kumargaon Bus Stand(Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5526, 'Sylhet', 3244, 'Technical Road(Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5527, 'Sylhet', 3245, 'Temukhi Point(Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36'),
(5528, 'Sylhet', 3246, 'Jalalpur Bazar (Dakshin Surma Sylhet)', 7, 1, '2024-05-14 10:13:36', '2024-05-14 10:13:36');

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
-- Table structure for table `reseller_wallet_recharges`
--

CREATE TABLE `reseller_wallet_recharges` (
  `id` int NOT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `reseller_id` int NOT NULL,
  `account_no` varchar(50) DEFAULT NULL COMMENT 'reseller payment account number',
  `payment_transaction_id` varchar(50) DEFAULT NULL COMMENT 'payment transaction id',
  `payment_method` varchar(50) DEFAULT NULL,
  `amount` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0 = pending, 1 = success, 2 = cancel ',
  `comment` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
(1, 'images/slider/gtUL3vHngd6N0UFiRN8AwYbBRG5WTSidp6u9aZYG.jpg', '#', NULL, 1, 1, '2024-02-17 10:31:48', '2024-05-01 06:17:55'),
(2, 'images/slider/kKNlR1lRqZPXxanJcvnQFSd2wxCE48LYSJ8V75JE.jpg', '#', NULL, 1, 1, '2024-02-19 10:23:16', '2024-05-01 06:17:48');

-- --------------------------------------------------------

--
-- Table structure for table `solutions`
--

CREATE TABLE `solutions` (
  `id` int NOT NULL,
  `landing_page_id` int NOT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `solutions`
--

INSERT INTO `solutions` (`id`, `landing_page_id`, `icon`, `title`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, 'fa-solid fa-check', 'বার্ধক্য প্রতিরোধ করে।', 1, '2023-11-14 10:49:06', '2023-11-14 10:49:06'),
(4, 1, 'fa-solid fa-check', 'অন্ত্রের ব্যাকটেরিয়া ধ্বংস, গুরুত্বপূর্ণ অঙ্গ পরিষ্কার করতে, হৃদয় ও লিভার সুস্থ রাখতে সকালে খেজুর খাওয়া উচিত', 1, '2023-11-14 10:49:15', '2024-01-09 06:54:45'),
(5, 1, 'fa-solid fa-check', 'সন্তান উৎপাদনে ক্ষমতাও বাড়ায়', 1, '2023-11-14 10:49:31', '2023-11-14 10:49:31'),
(6, 1, 'fa-solid fa-check', 'নিয়মিত খেজুর খেলে পুরুষের শুক্রাণুর সংখ্যা বৃদ্ধি পায়', 1, '2023-11-14 10:49:41', '2023-11-14 10:49:41'),
(7, 1, 'fa-solid fa-check', '৩/৪ টি খেজুর খেয়ে শীতে শরীর রাখুন উষ্ণ', 1, '2023-11-14 10:49:53', '2023-11-14 10:49:53'),
(8, 2, 'বাজারের সেরা ড্রেস কোয়ালিটী পাচ্ছেন', 'বাজারের সেরা ড্রেস কোয়ালিটী পাচ্ছেন', 1, '2023-12-25 15:00:43', '2024-01-10 17:19:59'),
(9, 3, 'fa-brands fa-youtube', 'Massive solutions', 1, '2024-01-31 11:01:55', '2024-01-31 11:01:55'),
(10, 3, 'fa-solid fa-thumbs-up', 'dsa', 1, '2024-01-31 11:13:42', '2024-01-31 11:14:09'),
(11, 1, 'fa-solid fa-check', 'গ্যাস্ট্রোএন্টেরাইটিসের সাথে যুক্ত ডায়রিয়া থেকে মুক্তি দিতে সাহায্য করতে পারে।', 1, '2024-05-29 05:26:00', '2024-05-29 05:26:00'),
(12, 1, 'fa-solid fa-check', 'কাঁচা চিনির চেয়ে রক্তে শর্করার মাত্রার জন্য খুবই ভাল', 1, '2024-05-29 05:29:16', '2024-05-29 05:30:11');

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
  `status` tinyint NOT NULL DEFAULT '1',
  `pathao_zone_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_cities`
--

INSERT INTO `sub_cities` (`id`, `city_id`, `name`, `status`, `pathao_zone_id`, `created_at`, `updated_at`) VALUES
(1, 14, '60 feet', 1, 298, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(2, 14, 'Abdullahpur Uttara', 1, 1070, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(3, 14, 'Abul Hotel', 1, 1066, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(4, 14, 'Adabor', 1, 52, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(5, 14, 'Adarsha Nagar - Kutubpur', 1, 1094, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(6, 14, 'Aftab Nagar', 1, 300, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(7, 14, 'Agargaon', 1, 17, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(8, 14, 'Agargaon-Taltola', 1, 1108, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(9, 14, 'Amin Bazar', 1, 1465, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(10, 14, 'Arambag', 1, 317, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(11, 14, 'Ashkona', 1, 965, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(12, 14, 'Ashulia Bazar', 1, 1538, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(13, 14, 'Ati Bazar', 1, 1078, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(14, 14, 'azampur (Uttara)', 1, 1041, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(15, 14, 'Azimpur (Lalbag)', 1, 55, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(16, 14, 'Badda', 1, 30, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(17, 14, 'Baily Road', 1, 312, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(18, 14, 'Baipail', 1, 1476, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(19, 14, 'Bakshi Bazar', 1, 274, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(20, 14, 'Bakurta', 1, 1466, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(21, 14, 'Balughat', 1, 292, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(22, 14, 'Banani', 1, 1, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(23, 14, 'Banani DOHS', 1, 181, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(24, 14, 'Banasree (Block A-G)', 1, 24, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(25, 14, 'Banasree (Block H-J)', 1, 1058, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(26, 14, 'Bangla bazar', 1, 40, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(27, 14, 'Bangshal', 1, 250, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(28, 14, 'Bank Colony, Savar', 1, 1531, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(29, 14, 'Baridhara Diplomatic Zone', 1, 958, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(30, 14, 'Baridhara DOHS', 1, 959, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(31, 14, 'Baridhara J Block', 1, 960, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(32, 14, 'Baroipara', 1, 1477, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(33, 14, 'Bashabo', 1, 303, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(34, 14, 'Bashundhara', 1, 6, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(35, 14, 'Bawnia', 1, 176, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(36, 14, 'Begunbari', 1, 1138, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(37, 14, 'Benaroshi Polli', 1, 1132, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(38, 14, 'Benaroshi polli Blok A', 1, 1169, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(39, 14, 'Benaroshi polli Blok B,C', 1, 1170, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(40, 14, 'Benaroshi polli Blok D', 1, 1171, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(41, 14, 'Beraid', 1, 981, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(42, 14, 'Bibir Bagicha', 1, 1554, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(43, 14, 'Block A,B, Mirpur 6', 1, 1167, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(44, 14, 'Block A, C, Mirpur 11', 1, 1154, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(45, 14, 'Block B, D, Mirpur 11', 1, 1155, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(46, 14, 'Block D,E , Mirpur 6', 1, 1166, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(47, 14, 'Block-E, Mirpur 12', 1, 1165, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(48, 14, 'Borobag', 1, 1503, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(49, 14, 'Boro Moghbazar', 1, 964, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(50, 14, 'Bosila', 1, 1499, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(51, 14, 'Bulk Merchant', 1, 1168, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(52, 14, 'Central Road', 1, 972, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(53, 14, 'Chakraborty', 1, 1478, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(54, 14, 'Charabag, Ashulia', 1, 1539, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(55, 14, 'ChawkBazar (Dhaka)', 1, 630, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(56, 14, 'Dakshinkhan', 1, 15, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(57, 14, 'Darussalam', 1, 287, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(58, 14, 'Demra', 1, 245, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(59, 14, 'Deogao, Savar', 1, 1533, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(60, 14, 'Dhaka cantonment', 1, 342, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(61, 14, 'Dhaka Medical', 1, 1056, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(62, 14, 'Dhaka Uddyan', 1, 1501, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(63, 14, 'Dhaka University', 1, 200, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(64, 14, 'Dhamrai , Savar', 1, 1016, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(65, 14, 'Dhanmondi', 1, 62, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(66, 14, 'Dholaipar', 1, 1552, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(67, 14, 'Dholpur', 1, 979, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(68, 14, 'Dhonia', 1, 264, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(69, 14, 'Diabari', 1, 1045, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(70, 14, 'DIT Road', 1, 966, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(71, 14, 'Dohar', 1, 1075, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(72, 14, 'ECB', 1, 23, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(73, 14, 'Elephant Road', 1, 967, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(74, 14, 'EPZ', 1, 1479, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(75, 14, 'Equria Thana', 1, 1079, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(76, 14, 'Eskaton', 1, 311, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(77, 14, 'Estern Housing', 1, 1149, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(78, 14, 'Extension Pallabi', 1, 1131, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(79, 14, 'Faidabad', 1, 13, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(80, 14, 'Faridabad', 1, 978, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(81, 14, 'Farmgate', 1, 46, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(82, 14, 'Fulbariya', 1, 1469, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(83, 14, 'Gandaria', 1, 42, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(84, 14, 'Ganda, Savar', 1, 1537, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(85, 14, 'Giridhara Abashik', 1, 1097, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(86, 14, 'Gobindopur', 1, 1541, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(87, 14, 'Gopibagh', 1, 254, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(88, 14, 'Goran', 1, 308, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(89, 14, 'Gulbagh', 1, 1062, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(90, 14, 'Gulisthan', 1, 35, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(91, 14, 'Gulshan 1', 1, 4, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(92, 14, 'Gulshan-2', 1, 5, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(93, 14, 'Hatirpool', 1, 213, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(94, 14, 'Hazaribagh', 1, 56, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(95, 14, 'Hemayetpur', 1, 1467, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(96, 14, 'house building', 1, 1043, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(97, 14, 'Ibrahimpur', 1, 1035, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(98, 14, 'Islampur', 1, 257, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(99, 14, 'Islampur (Dhamrai)', 1, 243, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(100, 14, 'Jahangirnagar, Savar', 1, 1520, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(101, 14, 'Jamgora', 1, 1473, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(102, 14, 'Jhauchor', 1, 1054, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(103, 14, 'Jigatola', 1, 61, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(104, 14, 'Joardar Lane', 1, 1063, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(105, 14, 'Journalist Residential Area', 1, 1150, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(106, 14, 'Jurain', 1, 977, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(107, 14, 'Kadamtoli', 1, 980, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(108, 14, 'Kalabagan', 1, 63, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(109, 14, 'kalachadpur', 1, 1491, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(110, 14, 'Kallyanpur', 1, 64, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(111, 14, 'Kamalapur', 1, 252, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(112, 14, 'kamranggirchar', 1, 655, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(113, 14, 'Katashur', 1, 1556, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(114, 14, 'Katghora, Savar', 1, 1536, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(115, 14, 'Kathalbagan', 1, 59, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(116, 14, 'Kawla', 1, 16, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(117, 14, 'Kawran Bazar', 1, 58, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(118, 14, 'Kazipara', 1, 286, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(119, 14, 'Keraniganj', 1, 66, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(120, 14, 'Keraniganj Model Thana', 1, 1077, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(121, 14, 'Khilgaon', 1, 29, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(122, 14, 'Khilkhet', 1, 178, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(123, 14, 'Kotwali (Dhaka)', 1, 239, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(124, 14, 'Kuril', 1, 177, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(125, 14, 'Kutubkhali', 1, 1551, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(126, 14, 'Lakshmibazar', 1, 260, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(127, 14, 'Lalbag', 1, 57, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(128, 14, 'Lalkuthi', 1, 1036, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(129, 14, 'Lalmatia', 1, 1498, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(130, 14, 'LaxmiBazar', 1, 1540, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(131, 14, 'london market', 1, 1102, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(132, 14, 'lost', 1, 1140, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(133, 14, 'Love Road, Mirpur-2', 1, 1157, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(134, 14, 'Malibagh  Baganbari', 1, 1065, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(135, 14, 'Malibagh College Road', 1, 1060, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(136, 14, 'Malibagh Lane', 1, 1061, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(137, 14, 'Malibagh Pabna Colony', 1, 1064, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(138, 14, 'Manda', 1, 971, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(139, 14, 'Manikdi', 1, 337, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(140, 14, 'Manik Nagar', 1, 251, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(141, 14, 'Masjid Market, Mirpur 2', 1, 1158, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(142, 14, 'Matikata', 1, 291, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(143, 14, 'Matuail', 1, 255, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(144, 14, 'Mazar road', 1, 1134, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(145, 14, 'Middle Rosulbag', 1, 1099, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(146, 14, 'Mirhazirbag', 1, 1553, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(147, 14, 'Mirpur 1', 1, 171, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(148, 14, 'Mirpur 10', 1, 19, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(149, 14, 'Mirpur 11', 1, 20, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(150, 14, 'Mirpur 11 Lalmatia', 1, 1156, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(151, 14, 'Mirpur 12', 1, 280, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(152, 14, 'Mirpur 12 Block A,C', 1, 1163, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(153, 14, 'Mirpur 12 Block-Dhak, B', 1, 1164, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(154, 14, 'Mirpur 12 Block Ta', 1, 1176, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(155, 14, 'Mirpur 13', 1, 717, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(156, 14, 'Mirpur 14', 1, 21, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(157, 14, 'Mirpur 1 Market Area', 1, 1151, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(158, 14, 'Mirpur 2', 1, 22, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(159, 14, 'Mirpur 6', 1, 283, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(160, 14, 'Mirpur 6 (Block C)', 1, 1172, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(161, 14, 'Mirpur 7', 1, 475, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(162, 14, 'Mirpur Cantonment', 1, 1159, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(163, 14, 'Mirpur Cantonment (Ave new 3 )', 1, 1174, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(164, 14, 'Mirpur DOHS', 1, 281, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(165, 14, 'Mirpur DOHS (Ave new 2)', 1, 1173, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(166, 14, 'Mirpur DOHS (Ave New 9)', 1, 1175, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(167, 14, 'Mirpur-Rupnagar', 1, 1161, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(168, 14, 'Modhubag', 1, 315, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(169, 14, 'Mogbazar', 1, 32, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(170, 14, 'Mohakhali', 1, 2, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(171, 14, 'Mohakhali DOHS', 1, 11, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(172, 14, 'Mohammadpur', 1, 50, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(173, 14, 'Monipur', 1, 233, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(174, 14, 'Monumia Market', 1, 1101, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(175, 14, 'Motijheel', 1, 34, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(176, 14, 'Mugda', 1, 307, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(177, 14, 'mukti nagar', 1, 1096, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(178, 14, 'Nadda', 1, 182, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(179, 14, 'Nakhalpara', 1, 10, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(180, 14, 'Nakhal para', 1, 1074, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(181, 14, 'narayanpur - keshobpur', 1, 1095, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(182, 14, 'Narinda', 1, 266, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(183, 14, 'Nawabganj (Dhaka)', 1, 627, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(184, 14, 'Nawabganj (Dohar)', 1, 1076, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(185, 14, 'Nawabpur', 1, 259, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(186, 14, 'Naya Bazar', 1, 41, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(187, 14, 'Nayanagar', 1, 1139, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(188, 14, 'Nazim Uddin Road', 1, 205, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(189, 14, 'Nazira Bazar', 1, 36, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(190, 14, 'New Elephant Road', 1, 60, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(191, 14, 'New Market', 1, 201, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(192, 14, 'new paltan azimpur', 1, 1055, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(193, 14, 'Niketan', 1, 9, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(194, 14, 'Nikunja', 1, 8, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(195, 14, 'Nikunja 2', 1, 961, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(196, 14, 'Nilkhet', 1, 210, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(197, 14, 'Nimaikishori', 1, 1092, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(198, 14, 'Nischintapur', 1, 1470, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(199, 14, 'Nobinagar', 1, 1482, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(200, 14, 'Nobodoy', 1, 1500, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(201, 14, 'Norosinhopur', 1, 1471, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(202, 14, 'North Badda', 1, 1557, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(203, 14, 'North Sanarpar', 1, 1113, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(204, 14, 'Notun Bazar', 1, 179, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(205, 14, 'Noyarhat', 1, 1484, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(206, 14, 'Noyatola road', 1, 1067, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(207, 14, 'On-demand  transfer', 1, 1009, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(208, 14, 'Paikpara', 1, 18, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(209, 14, 'Pakiza, Savar', 1, 1534, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(210, 14, 'Pallabi', 1, 975, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(211, 14, 'Pallabi Residential area', 1, 1160, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(212, 14, 'Palli Bidyut', 1, 1481, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(213, 14, 'Paltan', 1, 33, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(214, 14, 'Panthapath', 1, 750, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(215, 14, 'Pirerbagh', 1, 973, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(216, 14, 'Polashbari', 1, 1480, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(217, 14, 'Radio Colony, Savar', 1, 1530, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(218, 14, 'Rajashon, Savar', 1, 1535, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(219, 14, 'rajlakkhi market', 1, 1042, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(220, 14, 'Rampura', 1, 28, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(221, 14, 'Rayerbag', 1, 244, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(222, 14, 'Rayer Bazar', 1, 1071, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(223, 14, 'Razarbag Police line', 1, 1137, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(224, 14, 'Rohitpur', 1, 1543, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(225, 14, 'Rupnagar', 1, 974, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(226, 14, 'Sadarghat (Dhaka)', 1, 258, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(227, 14, 'Sarkar Market', 1, 1472, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(228, 14, 'Savar', 1, 65, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(229, 14, 'Savar-Nabinagar', 1, 1046, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(230, 14, 'Saydabad', 1, 39, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(231, 14, 'Senpara', 1, 173, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(232, 14, 'Senpara Parbata', 1, 1502, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(233, 14, 'Shagufta Block-D', 1, 1162, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(234, 14, 'Shah Ali Bag', 1, 1135, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(235, 14, 'Shahbag', 1, 199, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(236, 14, 'Shahid Faruk Road', 1, 1550, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(237, 14, 'Shahid Nagar', 1, 957, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(238, 14, 'Shahjadpur', 1, 180, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(239, 14, 'Shajahanpur', 1, 318, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(240, 14, 'shampur', 1, 976, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(241, 14, 'Shanir Akhra', 1, 38, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(242, 14, 'shankar', 1, 1072, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(243, 14, 'Shantinagar', 1, 26, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(244, 14, 'Shegunbagicha', 1, 302, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(245, 14, 'Sheikhdi', 1, 1542, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(246, 14, 'Sheikh Rasel Park', 1, 1152, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(247, 14, 'Sher-e Bangla Nagar', 1, 1037, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(248, 14, 'Sher-E-Bangla National Cricket Stadium', 1, 1133, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(249, 14, 'Shewrapara', 1, 174, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(250, 14, 'Shiddeshwari', 1, 306, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(251, 14, 'Shimrail', 1, 1100, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(252, 14, 'Shimultola Jamgora', 1, 1474, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(253, 14, 'Shimultola, Savar', 1, 1532, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(254, 14, 'Shishu Mela', 1, 1128, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(255, 14, 'Shobujbag', 1, 304, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(256, 14, 'Shonalibagh', 1, 31, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(257, 14, 'Shonir Akhra', 1, 1069, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(258, 14, 'Shukrabad', 1, 1555, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(259, 14, 'Shyamoli', 1, 198, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(260, 14, 'Singar Road', 1, 1468, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(261, 14, 'Solmaid', 1, 1492, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(262, 14, 'South Badda', 1, 1558, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(263, 14, 'South Banasree', 1, 963, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(264, 14, 'South kafrul', 1, 1111, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(265, 14, 'Sreepur-Baipail', 1, 1487, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(266, 14, 'Sutrapur', 1, 661, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(267, 14, 'Technical', 1, 1136, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(268, 14, 'Tejgaon', 1, 3, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(269, 14, 'Tejkunipara', 1, 1559, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(270, 14, 'Tenari Savar', 1, 1485, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(271, 14, 'Tolarbag', 1, 282, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(272, 14, 'Turag', 1, 327, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(273, 14, 'Unick Bus Stand', 1, 1475, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(274, 14, 'Uttara Sector 1', 1, 12, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(275, 14, 'Uttara Sector 10', 1, 941, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(276, 14, 'Uttara Sector 11', 1, 942, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(277, 14, 'Uttara Sector 12', 1, 943, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(278, 14, 'Uttara Sector 13', 1, 944, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(279, 14, 'Uttara Sector 14', 1, 945, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(280, 14, 'Uttara Sector 15', 1, 1000, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(281, 14, 'Uttara Sector 16', 1, 1001, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(282, 14, 'Uttara Sector 17', 1, 1002, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(283, 14, 'Uttara Sector 18', 1, 1003, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(284, 14, 'Uttara Sector 3', 1, 935, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(285, 14, 'Uttara Sector 4', 1, 936, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(286, 14, 'Uttara Sector 5', 1, 937, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(287, 14, 'Uttara sector 6', 1, 938, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(288, 14, 'Uttara Sector 7', 1, 939, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(289, 14, 'Uttara Sector 8', 1, 946, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(290, 14, 'Uttara Sector 9', 1, 940, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(291, 14, 'UttarKhan', 1, 14, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(292, 14, 'Vadail', 1, 1483, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(293, 14, 'Wari', 1, 37, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(294, 14, 'West Agargaon', 1, 1109, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(295, 14, 'West Kafrul', 1, 1112, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(296, 14, 'Zirani', 1, 1486, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(297, 14, 'Zoo Road', 1, 1153, '2024-05-30 06:36:39', '2024-05-30 06:36:39'),
(298, 1, 'Bagerhat Sadar', 1, 156, '2024-05-30 06:38:48', '2024-05-30 06:38:48'),
(299, 1, 'Chitalmari', 1, 594, '2024-05-30 06:38:48', '2024-05-30 06:38:48'),
(300, 1, 'Dacope', 1, 989, '2024-05-30 06:38:48', '2024-05-30 06:38:48'),
(301, 1, 'Fakirhat', 1, 595, '2024-05-30 06:38:48', '2024-05-30 06:38:48'),
(302, 1, 'Kachua', 1, 596, '2024-05-30 06:38:48', '2024-05-30 06:38:48'),
(303, 1, 'Mollahat', 1, 593, '2024-05-30 06:38:48', '2024-05-30 06:38:48'),
(304, 1, 'Mongla', 1, 868, '2024-05-30 06:38:48', '2024-05-30 06:38:48'),
(305, 1, 'Morelganj', 1, 597, '2024-05-30 06:38:48', '2024-05-30 06:38:48'),
(306, 1, 'Rampal', 1, 598, '2024-05-30 06:38:48', '2024-05-30 06:38:48'),
(307, 1, 'Rayenda', 1, 599, '2024-05-30 06:38:48', '2024-05-30 06:38:48'),
(308, 1, 'Sarankhola', 1, 984, '2024-05-30 06:38:48', '2024-05-30 06:38:48'),
(309, 2, 'Alikadam', 1, 714, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(310, 2, 'Bandarban Sadar', 1, 166, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(311, 2, 'Kalaghata', 1, 692, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(312, 2, 'Lama', 1, 696, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(313, 2, 'Naikhong', 1, 1008, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(314, 2, 'Roanchhari', 1, 693, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(315, 2, 'Thanchi', 1, 695, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(316, 3, 'Amtali', 1, 931, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(317, 3, 'Bamna', 1, 933, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(318, 3, 'Barguna Sadar', 1, 135, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(319, 3, 'Betagi', 1, 932, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(320, 3, 'Patharghata', 1, 934, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(321, 3, 'Taltoli', 1, 930, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(322, 4, 'Agailzhara', 1, 911, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(323, 4, 'Babuganj', 1, 916, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(324, 4, 'Bakergonj', 1, 915, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(325, 4, 'Banaripara', 1, 914, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(326, 4, 'Barisal Bandor Thana', 1, 1014, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(327, 4, 'Barisal Sadar', 1, 113, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(328, 4, 'Gauronodi', 1, 910, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(329, 4, 'Hizla', 1, 912, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(330, 4, 'Kotowali', 1, 909, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(331, 4, 'Mahendiganj', 1, 607, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(332, 4, 'Muladi', 1, 913, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(333, 4, 'Wazirpur Powrosova', 1, 917, '2024-05-30 06:38:49', '2024-05-30 06:38:49'),
(334, 5, 'Akhaura', 1, 546, '2024-05-30 06:38:50', '2024-05-30 06:38:50'),
(335, 5, 'Asugonj', 1, 728, '2024-05-30 06:38:50', '2024-05-30 06:38:50'),
(336, 5, 'Banchharampur', 1, 133, '2024-05-30 06:38:50', '2024-05-30 06:38:50'),
(337, 5, 'Bijoynagar', 1, 748, '2024-05-30 06:38:50', '2024-05-30 06:38:50'),
(338, 5, 'Brahamanbaria Sadar', 1, 547, '2024-05-30 06:38:50', '2024-05-30 06:38:50'),
(339, 5, 'Kasba', 1, 548, '2024-05-30 06:38:50', '2024-05-30 06:38:50'),
(340, 5, 'Nabinagar', 1, 549, '2024-05-30 06:38:50', '2024-05-30 06:38:50'),
(341, 5, 'Nasirnagar', 1, 551, '2024-05-30 06:38:50', '2024-05-30 06:38:50'),
(342, 5, 'Sarail', 1, 550, '2024-05-30 06:38:50', '2024-05-30 06:38:50'),
(343, 6, 'Bhola Sadar', 1, 157, '2024-05-30 06:38:50', '2024-05-30 06:38:50'),
(344, 6, 'Burhanuddin', 1, 900, '2024-05-30 06:38:50', '2024-05-30 06:38:50'),
(345, 6, 'Char fashion', 1, 903, '2024-05-30 06:38:50', '2024-05-30 06:38:50'),
(346, 6, 'Dokkhin aicha', 1, 904, '2024-05-30 06:38:50', '2024-05-30 06:38:50'),
(347, 6, 'Doulatkhan', 1, 899, '2024-05-30 06:38:50', '2024-05-30 06:38:50'),
(348, 6, 'Lalmohon', 1, 901, '2024-05-30 06:38:50', '2024-05-30 06:38:50'),
(349, 6, 'Tazumuddin', 1, 902, '2024-05-30 06:38:50', '2024-05-30 06:38:50'),
(350, 7, 'Adamdighi', 1, 753, '2024-05-30 06:38:51', '2024-05-30 06:38:51'),
(351, 7, 'Bogra - Gabtoli', 1, 480, '2024-05-30 06:38:51', '2024-05-30 06:38:51'),
(352, 7, 'Bogra Sadar', 1, 104, '2024-05-30 06:38:51', '2024-05-30 06:38:51'),
(353, 7, 'Dhunat', 1, 756, '2024-05-30 06:38:51', '2024-05-30 06:38:51'),
(354, 7, 'Dupchachia', 1, 719, '2024-05-30 06:38:51', '2024-05-30 06:38:51'),
(355, 7, 'Kahalu', 1, 479, '2024-05-30 06:38:51', '2024-05-30 06:38:51'),
(356, 7, 'Nandigram', 1, 754, '2024-05-30 06:38:51', '2024-05-30 06:38:51'),
(357, 7, 'Sariakandi', 1, 752, '2024-05-30 06:38:51', '2024-05-30 06:38:51'),
(358, 7, 'Shahjahanpur', 1, 1488, '2024-05-30 06:38:51', '2024-05-30 06:38:51'),
(359, 7, 'Shajahanpur-Bogra', 1, 751, '2024-05-30 06:38:51', '2024-05-30 06:38:51'),
(360, 7, 'Shantaher', 1, 757, '2024-05-30 06:38:51', '2024-05-30 06:38:51'),
(361, 7, 'Sherpur', 1, 478, '2024-05-30 06:38:51', '2024-05-30 06:38:51'),
(362, 7, 'Shibganj', 1, 481, '2024-05-30 06:38:51', '2024-05-30 06:38:51'),
(363, 7, 'Sonatola', 1, 755, '2024-05-30 06:38:51', '2024-05-30 06:38:51'),
(364, 8, 'Chandpur Sadar', 1, 102, '2024-05-30 06:38:51', '2024-05-30 06:38:51'),
(365, 8, 'Faridganj', 1, 563, '2024-05-30 06:38:51', '2024-05-30 06:38:51'),
(366, 8, 'Hayemchar', 1, 565, '2024-05-30 06:38:51', '2024-05-30 06:38:51'),
(367, 8, 'Haziganj', 1, 564, '2024-05-30 06:38:51', '2024-05-30 06:38:51'),
(368, 8, 'Kachua', 1, 566, '2024-05-30 06:38:51', '2024-05-30 06:38:51'),
(369, 8, 'Matlab', 1, 667, '2024-05-30 06:38:51', '2024-05-30 06:38:51'),
(370, 8, 'Matlab-Uttar', 1, 749, '2024-05-30 06:38:51', '2024-05-30 06:38:51'),
(371, 8, 'Shahrasti', 1, 567, '2024-05-30 06:38:51', '2024-05-30 06:38:51'),
(372, 9, 'Bholahat', 1, 558, '2024-05-30 06:38:52', '2024-05-30 06:38:52'),
(373, 9, 'Chapainawabganj Sadar', 1, 111, '2024-05-30 06:38:52', '2024-05-30 06:38:52'),
(374, 9, 'Gomastapur', 1, 508, '2024-05-30 06:38:52', '2024-05-30 06:38:52'),
(375, 9, 'Nachole', 1, 559, '2024-05-30 06:38:52', '2024-05-30 06:38:52'),
(376, 9, 'Shibganj', 1, 509, '2024-05-30 06:38:52', '2024-05-30 06:38:52'),
(377, 10, 'Akbarsha', 1, 78, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(378, 10, 'Anawara', 1, 434, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(379, 10, 'Andarkilla', 1, 69, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(380, 10, 'Anowara', 1, 453, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(381, 10, 'Bakoliya thana', 1, 83, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(382, 10, 'Bashkhali', 1, 459, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(383, 10, 'Bayazid', 1, 80, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(384, 10, 'Boalkhali', 1, 681, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(385, 10, 'Bondor', 1, 1027, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(386, 10, 'Chandanaish', 1, 1015, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(387, 10, 'Chandgaon', 1, 375, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(388, 10, 'Chawkbazar (Chattogram)', 1, 79, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(389, 10, 'CTG - Lohagara', 1, 460, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(390, 10, 'Dohajari', 1, 1032, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(391, 10, 'Double mooring', 1, 86, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(392, 10, 'East Joara', 1, 400, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(393, 10, 'Enayet bazar', 1, 405, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(394, 10, 'EPZ', 1, 73, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(395, 10, 'Fatikchhari', 1, 417, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(396, 10, 'Halishahar', 1, 75, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(397, 10, 'Hathazari', 1, 81, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(398, 10, 'Karnophuli', 1, 993, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(399, 10, 'Keranihat', 1, 716, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(400, 10, 'Khulshi', 1, 84, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(401, 10, 'Kotowali Chittagong', 1, 364, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(402, 10, 'Kotwali (Chattogram)', 1, 987, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(403, 10, 'Mirsharai', 1, 87, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(404, 10, 'Nasirabad', 1, 685, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(405, 10, 'Nazirhat', 1, 703, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(406, 10, 'New Market CTG', 1, 72, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(407, 10, 'Pahartali', 1, 986, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(408, 10, 'Panchlaish ctg', 1, 333, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(409, 10, 'Patia', 1, 457, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(410, 10, 'Rangunia', 1, 378, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(411, 10, 'Raozan', 1, 68, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(412, 10, 'Sadarghat (Chattogram)', 1, 365, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(413, 10, 'Sandwip', 1, 705, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(414, 10, 'Satkaniya', 1, 371, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(415, 10, 'Sitakunda', 1, 420, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(416, 10, 'Vatiary', 1, 1026, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(417, 10, 'Zorarganj', 1, 730, '2024-05-30 06:38:53', '2024-05-30 06:38:53'),
(418, 11, 'Alamdanga', 1, 647, '2024-05-30 06:38:54', '2024-05-30 06:38:54'),
(419, 11, 'Chuadanga Sadar', 1, 165, '2024-05-30 06:38:54', '2024-05-30 06:38:54'),
(420, 11, 'Damurhuda', 1, 591, '2024-05-30 06:38:54', '2024-05-30 06:38:54'),
(421, 11, 'Darshana', 1, 968, '2024-05-30 06:38:54', '2024-05-30 06:38:54'),
(422, 11, 'Doulatganj', 1, 592, '2024-05-30 06:38:54', '2024-05-30 06:38:54'),
(423, 11, 'Jiban nagar', 1, 646, '2024-05-30 06:38:54', '2024-05-30 06:38:54'),
(424, 12, 'Chakaria', 1, 107, '2024-05-30 06:38:55', '2024-05-30 06:38:55'),
(425, 12, 'Cox\'s bazar Sadar', 1, 106, '2024-05-30 06:38:55', '2024-05-30 06:38:55'),
(426, 12, 'Eidgah', 1, 898, '2024-05-30 06:38:55', '2024-05-30 06:38:55'),
(427, 12, 'Kutubdia', 1, 638, '2024-05-30 06:38:55', '2024-05-30 06:38:55'),
(428, 12, 'Moheshkhali', 1, 896, '2024-05-30 06:38:55', '2024-05-30 06:38:55'),
(429, 12, 'Pakua', 1, 560, '2024-05-30 06:38:55', '2024-05-30 06:38:55'),
(430, 12, 'Ramu', 1, 561, '2024-05-30 06:38:55', '2024-05-30 06:38:55'),
(431, 12, 'Teknaf', 1, 897, '2024-05-30 06:38:55', '2024-05-30 06:38:55'),
(432, 12, 'Ukhia', 1, 562, '2024-05-30 06:38:55', '2024-05-30 06:38:55'),
(433, 13, 'Barura', 1, 534, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(434, 13, 'Batakandi', 1, 738, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(435, 13, 'B.Para', 1, 91, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(436, 13, 'Burichang', 1, 92, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(437, 13, 'Chandina', 1, 98, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(438, 13, 'Chauddagram', 1, 97, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(439, 13, 'Chayfullakandi', 1, 1497, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(440, 13, 'Comilla Companigonj', 1, 732, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(441, 13, 'Cumilla Cantonment', 1, 741, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(442, 13, 'Cumilla Sadar', 1, 93, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(443, 13, 'Cumilla Sadar Dakkhin ', 1, 734, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(444, 13, 'Daudkandi', 1, 545, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(445, 13, 'Delivery Cumilla City A', 1, 1528, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(446, 13, 'Delivery Cumilla City B', 1, 1529, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(447, 13, 'Devidwar', 1, 99, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(448, 13, 'Eliotgonj', 1, 736, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(449, 13, 'Farry Ghat', 1, 1496, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(450, 13, 'Gouripur', 1, 737, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(451, 13, 'Homna', 1, 96, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(452, 13, 'Kotbari', 1, 731, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(453, 13, 'Laksam', 1, 94, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(454, 13, 'Lalmai', 1, 735, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(455, 13, 'Meghna ', 1, 740, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(456, 13, 'Mia-Bazar', 1, 552, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(457, 13, 'Monohorgonj', 1, 733, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(458, 13, 'Muddafarganj', 1, 103, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(459, 13, 'Muradnagar', 1, 553, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(460, 13, 'Nangolkot', 1, 95, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(461, 13, 'Ruposhdi', 1, 1494, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(462, 13, 'Sonarampur', 1, 1495, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(463, 13, 'Titash', 1, 739, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(464, 15, 'Biral', 1, 582, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(465, 15, 'Birampur', 1, 817, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(466, 15, 'Birganj', 1, 811, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(467, 15, 'Bochaganj', 1, 814, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(468, 15, 'Chirirbandar', 1, 810, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(469, 15, 'Dinajpur Sadar', 1, 136, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(470, 15, 'Fulbari', 1, 816, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(471, 15, 'Ghoraghat', 1, 819, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(472, 15, 'Hakimpur (Hili)', 1, 820, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(473, 15, 'Kaharol', 1, 812, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(474, 15, 'Khanshama', 1, 813, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(475, 15, 'Nawabganj Dinajpur', 1, 818, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(476, 15, 'Parbatipur', 1, 815, '2024-05-30 06:38:56', '2024-05-30 06:38:56'),
(477, 16, 'Alfadanga', 1, 922, '2024-05-30 06:38:57', '2024-05-30 06:38:57'),
(478, 16, 'Bhanga', 1, 923, '2024-05-30 06:38:57', '2024-05-30 06:38:57'),
(479, 16, 'Boalmari', 1, 924, '2024-05-30 06:38:57', '2024-05-30 06:38:57'),
(480, 16, 'Charbhadrashan', 1, 925, '2024-05-30 06:38:57', '2024-05-30 06:38:57'),
(481, 16, 'Faridpur Sadar', 1, 114, '2024-05-30 06:38:57', '2024-05-30 06:38:57'),
(482, 16, 'Madukhali', 1, 926, '2024-05-30 06:38:57', '2024-05-30 06:38:57'),
(483, 16, 'Nagarkanda', 1, 927, '2024-05-30 06:38:57', '2024-05-30 06:38:57'),
(484, 16, 'Sadarpur', 1, 928, '2024-05-30 06:38:57', '2024-05-30 06:38:57'),
(485, 16, 'Saltha', 1, 929, '2024-05-30 06:38:57', '2024-05-30 06:38:57'),
(486, 17, 'Chhagalnaiya', 1, 568, '2024-05-30 06:38:57', '2024-05-30 06:38:57'),
(487, 17, 'Daganbhuiyan', 1, 569, '2024-05-30 06:38:57', '2024-05-30 06:38:57'),
(488, 17, 'Feni Sadar', 1, 100, '2024-05-30 06:38:57', '2024-05-30 06:38:57'),
(489, 17, 'Ful-Gazi', 1, 746, '2024-05-30 06:38:57', '2024-05-30 06:38:57'),
(490, 17, 'Pashuram', 1, 572, '2024-05-30 06:38:57', '2024-05-30 06:38:57'),
(491, 17, 'Sonagazi', 1, 573, '2024-05-30 06:38:57', '2024-05-30 06:38:57'),
(492, 18, 'Fulchhari', 1, 781, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(493, 18, 'Gaibandha Sadar', 1, 139, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(494, 18, 'Gobindaganj', 1, 645, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(495, 18, 'Palashbari', 1, 644, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(496, 18, 'Sadulllahpur', 1, 782, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(497, 18, 'Saghata', 1, 783, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(498, 18, 'Sundarganj', 1, 784, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(499, 19, 'Ambagh', 1, 1714, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(500, 19, 'Amraid', 1, 1184, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(501, 19, 'Aral', 1, 1182, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(502, 19, 'Arikhola', 1, 1719, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(503, 19, 'Bason', 1, 863, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(504, 19, 'Bhawal Mirzapur', 1, 1178, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(505, 19, 'Board Bazar', 1, 862, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(506, 19, 'Bonmala', 1, 1722, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(507, 19, 'Borobari', 1, 861, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(508, 19, 'Chalar Bazar', 1, 1183, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(509, 19, 'Chondra', 1, 1710, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(510, 19, 'College gate', 1, 859, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(511, 19, 'Dolan Bazar', 1, 1718, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(512, 19, 'Gacha', 1, 990, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(513, 19, 'Gazipura', 1, 860, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(514, 19, 'Gazipur Chowrasta', 1, 123, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(515, 19, 'Hotapara', 1, 866, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(516, 19, 'Jamalpur Kaliganj', 1, 1720, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(517, 19, 'Jorun', 1, 1713, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(518, 19, 'Joydebpur', 1, 864, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(519, 19, 'Kaliakair', 1, 724, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(520, 19, 'Kaliganj', 1, 715, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(521, 19, 'Kapashiya', 1, 865, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(522, 19, 'Kapasia', 1, 1181, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(523, 19, 'Kashimpur', 1, 1048, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(524, 19, 'Konabari', 1, 1068, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(525, 19, 'Majukhan', 1, 1547, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(526, 19, 'Mawna', 1, 867, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(527, 19, 'Mirer Bazar', 1, 1549, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(528, 19, 'Mowchak', 1, 1047, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(529, 19, 'Pollibiddut', 1, 1711, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(530, 19, 'Porabari', 1, 1177, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(531, 19, 'PRAN RFL Gate', 1, 1717, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(532, 19, 'Pubail', 1, 1546, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(533, 19, 'Raja Bari Sreepur', 1, 1716, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(534, 19, 'Rajendrapur Bangla Bazar', 1, 1179, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(535, 19, 'Rajendrapur Cantonment', 1, 1180, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(536, 19, 'Raniganj', 1, 1715, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(537, 19, 'Shafipur', 1, 1712, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(538, 19, 'Shimultoli', 1, 1544, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(539, 19, 'Sreepur', 1, 529, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(540, 19, 'Station Road Tongi', 1, 1721, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(541, 19, 'Toke', 1, 1185, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(542, 19, 'Tongi', 1, 517, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(543, 19, 'Tongi Cherag Ali', 1, 858, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(544, 19, 'Ulukhola', 1, 1548, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(545, 20, 'Gopalganj Sadar', 1, 160, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(546, 20, 'Kashiani', 1, 918, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(547, 20, 'Kotalipara', 1, 919, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(548, 20, 'Muksudpur', 1, 920, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(549, 20, 'Tungipara', 1, 921, '2024-05-30 06:38:58', '2024-05-30 06:38:58'),
(550, 21, 'Azmireeganj', 1, 684, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(551, 21, 'Bahubal', 1, 725, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(552, 21, 'Baniachong', 1, 842, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(553, 21, 'Chunarughat', 1, 843, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(554, 21, 'Habiganj Sadar', 1, 131, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(555, 21, 'Lakhai', 1, 844, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(556, 21, 'Madhabpur', 1, 726, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(557, 21, 'Nabiganj', 1, 727, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(558, 21, 'Shaistaganj', 1, 1490, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(559, 22, 'Bakshiganj', 1, 871, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(560, 22, 'Dewangonj', 1, 519, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(561, 22, 'Islampur (Jamalpur)', 1, 649, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(562, 22, 'Jamalpur Sadar', 1, 143, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(563, 22, 'Madarganj', 1, 532, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(564, 22, 'Melandaha', 1, 531, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(565, 22, 'Sarishabari', 1, 533, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(566, 23, 'Bagharpara', 1, 600, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(567, 23, 'Benapole', 1, 116, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(568, 23, 'Chaugachha', 1, 601, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(569, 23, 'Jessore Sadar', 1, 115, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(570, 23, 'Jhikargachha', 1, 602, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(571, 23, 'Keshabpur', 1, 603, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(572, 23, 'Monirampur', 1, 604, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(573, 23, 'Obhoynagar', 1, 605, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(574, 23, 'Sarsa', 1, 606, '2024-05-30 06:38:59', '2024-05-30 06:38:59'),
(575, 24, 'Jhalokathi Sadar', 1, 128, '2024-05-30 06:39:00', '2024-05-30 06:39:00'),
(576, 24, 'Kathalia', 1, 583, '2024-05-30 06:39:00', '2024-05-30 06:39:00'),
(577, 24, 'Nalchhiti', 1, 609, '2024-05-30 06:39:00', '2024-05-30 06:39:00'),
(578, 24, 'Rajapur', 1, 608, '2024-05-30 06:39:00', '2024-05-30 06:39:00'),
(579, 25, 'Harinakundu', 1, 465, '2024-05-30 06:39:00', '2024-05-30 06:39:00'),
(580, 25, 'Jhenaidah sadar', 1, 153, '2024-05-30 06:39:00', '2024-05-30 06:39:00'),
(581, 25, 'Kaligonj', 1, 466, '2024-05-30 06:39:00', '2024-05-30 06:39:00'),
(582, 25, 'Kotchandpur', 1, 467, '2024-05-30 06:39:00', '2024-05-30 06:39:00'),
(583, 25, 'Maheshpur', 1, 468, '2024-05-30 06:39:00', '2024-05-30 06:39:00'),
(584, 25, 'Shailakupa', 1, 469, '2024-05-30 06:39:00', '2024-05-30 06:39:00'),
(585, 26, 'Akkelpur', 1, 787, '2024-05-30 06:39:00', '2024-05-30 06:39:00'),
(586, 26, 'Joypurhat Sadar', 1, 152, '2024-05-30 06:39:00', '2024-05-30 06:39:00'),
(587, 26, 'Kalai', 1, 785, '2024-05-30 06:39:00', '2024-05-30 06:39:00'),
(588, 26, 'Khetlal', 1, 786, '2024-05-30 06:39:00', '2024-05-30 06:39:00'),
(589, 26, 'Panchbibi', 1, 687, '2024-05-30 06:39:00', '2024-05-30 06:39:00'),
(590, 27, 'Bagaichari', 1, 1142, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(591, 27, 'Dighinala', 1, 709, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(592, 27, 'Guimara', 1, 888, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(593, 27, 'Khagrachari Sadar', 1, 167, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(594, 27, 'Lakkhichhari', 1, 890, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(595, 27, 'Langodu', 1, 1143, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(596, 27, 'Mahalchhari', 1, 997, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(597, 27, 'Maischori', 1, 893, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(598, 27, 'Manikchhari', 1, 891, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(599, 27, 'Matiranga', 1, 892, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(600, 27, 'Mohalchori', 1, 894, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(601, 27, 'Panchhari', 1, 895, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(602, 27, 'Ramgar', 1, 889, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(603, 28, 'Batiaghata', 1, 515, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(604, 28, 'Boyra', 1, 824, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(605, 28, 'Chandkhali', 1, 1028, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(606, 28, 'Daulatpur-Khulna ', 1, 827, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(607, 28, 'Digholia', 1, 514, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(608, 28, 'Dumuria', 1, 516, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(609, 28, 'Fultola', 1, 826, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(610, 28, 'Khalishpur', 1, 825, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(611, 28, 'Khulna Sadar', 1, 117, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(612, 28, 'Kopilmuni', 1, 1006, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(613, 28, 'Koyra', 1, 1005, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(614, 28, 'Paikgachha Upozila', 1, 970, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(615, 28, 'Rupsha', 1, 822, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(616, 28, 'Shiromoni', 1, 1545, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(617, 28, 'Sonadanga', 1, 823, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(618, 28, 'Tala Upozilla', 1, 969, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(619, 28, 'Terokhada', 1, 992, '2024-05-30 06:39:01', '2024-05-30 06:39:01'),
(620, 29, 'Astagram', 1, 996, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(621, 29, 'Bajitpur', 1, 881, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(622, 29, 'Bhairab', 1, 720, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(623, 29, 'Hossainpur', 1, 882, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(624, 29, 'Itna', 1, 995, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(625, 29, 'Karimganj', 1, 883, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(626, 29, 'Katiadi Upozila', 1, 1144, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(627, 29, 'Kishoreganj Sadar', 1, 144, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(628, 29, 'Kuliarchar', 1, 884, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(629, 29, 'Mithamoin', 1, 994, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(630, 29, 'Nikli', 1, 887, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(631, 29, 'Pakundia', 1, 885, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(632, 29, 'Tarial', 1, 886, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(633, 30, 'Bhurungamari', 1, 788, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(634, 30, 'Char Rajibpur', 1, 795, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(635, 30, 'Chilmari', 1, 792, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(636, 30, 'Kurigram Sadar', 1, 159, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(637, 30, 'Nagesshari', 1, 793, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(638, 30, 'Phulbari', 1, 789, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(639, 30, 'Rajarhat', 1, 790, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(640, 30, 'Rawmari', 1, 794, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(641, 30, 'Ulipur', 1, 791, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(642, 31, 'Bheramara', 1, 636, '2024-05-30 06:39:02', '2024-05-30 06:39:02');
INSERT INTO `sub_cities` (`id`, `city_id`, `name`, `status`, `pathao_zone_id`, `created_at`, `updated_at`) VALUES
(643, 31, 'Daulatpur-Kushtia', 1, 829, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(644, 31, 'Islamic University', 1, 828, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(645, 31, 'Khoksha', 1, 637, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(646, 31, 'Kumarkhali', 1, 634, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(647, 31, 'Kushtia-Mirpur', 1, 635, '2024-05-30 06:39:02', '2024-05-30 06:39:02'),
(648, 31, 'Kushtia Sadar', 1, 129, '2024-05-30 06:39:03', '2024-05-30 06:39:03'),
(649, 32, 'Chandraganj', 1, 1526, '2024-05-30 06:39:03', '2024-05-30 06:39:03'),
(650, 32, 'kamalnagar', 1, 1527, '2024-05-30 06:39:03', '2024-05-30 06:39:03'),
(651, 32, 'Komalnagar', 1, 530, '2024-05-30 06:39:03', '2024-05-30 06:39:03'),
(652, 32, 'Lakshimpur Sadar', 1, 142, '2024-05-30 06:39:03', '2024-05-30 06:39:03'),
(653, 32, 'Raipur', 1, 575, '2024-05-30 06:39:03', '2024-05-30 06:39:03'),
(654, 32, 'Ramganj', 1, 574, '2024-05-30 06:39:03', '2024-05-30 06:39:03'),
(655, 32, 'Ramgoti', 1, 747, '2024-05-30 06:39:03', '2024-05-30 06:39:03'),
(656, 33, 'Aditmari', 1, 802, '2024-05-30 06:39:03', '2024-05-30 06:39:03'),
(657, 33, 'Hatibandha', 1, 804, '2024-05-30 06:39:03', '2024-05-30 06:39:03'),
(658, 33, 'Kaliganj - Lalmonirhat', 1, 803, '2024-05-30 06:39:03', '2024-05-30 06:39:03'),
(659, 33, 'Lalmonirhat Sadar', 1, 161, '2024-05-30 06:39:03', '2024-05-30 06:39:03'),
(660, 33, 'Patgram', 1, 805, '2024-05-30 06:39:03', '2024-05-30 06:39:03'),
(661, 34, 'Dasar Thana', 1, 870, '2024-05-30 06:39:03', '2024-05-30 06:39:03'),
(662, 34, 'Kalkini Thana', 1, 869, '2024-05-30 06:39:03', '2024-05-30 06:39:03'),
(663, 34, 'Kodombari', 1, 1521, '2024-05-30 06:39:03', '2024-05-30 06:39:03'),
(664, 34, 'Madaripur Sadar', 1, 145, '2024-05-30 06:39:03', '2024-05-30 06:39:03'),
(665, 34, 'Rajoir thana', 1, 146, '2024-05-30 06:39:03', '2024-05-30 06:39:03'),
(666, 34, 'Shibchar', 1, 718, '2024-05-30 06:39:03', '2024-05-30 06:39:03'),
(667, 34, 'Takerhat Sadar', 1, 1522, '2024-05-30 06:39:03', '2024-05-30 06:39:03'),
(668, 35, 'Magura Sadar', 1, 164, '2024-05-30 06:39:04', '2024-05-30 06:39:04'),
(669, 35, 'Mohammadpur-Magura', 1, 463, '2024-05-30 06:39:04', '2024-05-30 06:39:04'),
(670, 35, 'Shalikha', 1, 956, '2024-05-30 06:39:04', '2024-05-30 06:39:04'),
(671, 35, 'Sreepur (Magura)', 1, 464, '2024-05-30 06:39:04', '2024-05-30 06:39:04'),
(672, 36, 'ANGAR PARA', 1, 1196, '2024-05-30 06:39:04', '2024-05-30 06:39:04'),
(673, 36, 'Daulatpur - Manikganj', 1, 856, '2024-05-30 06:39:04', '2024-05-30 06:39:04'),
(674, 36, 'DAULATPUR-Manikganj', 1, 1194, '2024-05-30 06:39:04', '2024-05-30 06:39:04'),
(675, 36, 'Ghior', 1, 1193, '2024-05-30 06:39:04', '2024-05-30 06:39:04'),
(676, 36, 'Ghior Thana', 1, 854, '2024-05-30 06:39:04', '2024-05-30 06:39:04'),
(677, 36, 'Harirampur', 1, 853, '2024-05-30 06:39:04', '2024-05-30 06:39:04'),
(678, 36, 'Manikganj Sadar', 1, 112, '2024-05-30 06:39:04', '2024-05-30 06:39:04'),
(679, 36, 'Saturia', 1, 857, '2024-05-30 06:39:04', '2024-05-30 06:39:04'),
(680, 36, 'SHIBALAYA', 1, 1195, '2024-05-30 06:39:04', '2024-05-30 06:39:04'),
(681, 36, 'Shivalaya', 1, 855, '2024-05-30 06:39:04', '2024-05-30 06:39:04'),
(682, 36, 'Singair', 1, 852, '2024-05-30 06:39:04', '2024-05-30 06:39:04'),
(683, 37, 'Gangni', 1, 610, '2024-05-30 06:39:04', '2024-05-30 06:39:04'),
(684, 37, 'Meherpur Sadar', 1, 154, '2024-05-30 06:39:04', '2024-05-30 06:39:04'),
(685, 37, 'Mujibnagar', 1, 830, '2024-05-30 06:39:04', '2024-05-30 06:39:04'),
(686, 38, 'Baralekha', 1, 676, '2024-05-30 06:39:05', '2024-05-30 06:39:05'),
(687, 38, 'Juri', 1, 678, '2024-05-30 06:39:05', '2024-05-30 06:39:05'),
(688, 38, 'Kamalganj', 1, 679, '2024-05-30 06:39:05', '2024-05-30 06:39:05'),
(689, 38, 'Kulaura', 1, 680, '2024-05-30 06:39:05', '2024-05-30 06:39:05'),
(690, 38, 'Mouluvibazar Sadar', 1, 108, '2024-05-30 06:39:05', '2024-05-30 06:39:05'),
(691, 38, 'Rajnagar', 1, 677, '2024-05-30 06:39:05', '2024-05-30 06:39:05'),
(692, 38, 'Sreemangal', 1, 624, '2024-05-30 06:39:05', '2024-05-30 06:39:05'),
(693, 39, 'Gazaria', 1, 821, '2024-05-30 06:39:05', '2024-05-30 06:39:05'),
(694, 39, 'Lohajong', 1, 710, '2024-05-30 06:39:05', '2024-05-30 06:39:05'),
(695, 39, 'Munshiganj Sadar', 1, 124, '2024-05-30 06:39:05', '2024-05-30 06:39:05'),
(696, 39, 'Pakhir mor', 1, 1506, '2024-05-30 06:39:05', '2024-05-30 06:39:05'),
(697, 39, 'Rosulpur', 1, 1116, '2024-05-30 06:39:05', '2024-05-30 06:39:05'),
(698, 39, 'Sirajdikhan', 1, 711, '2024-05-30 06:39:05', '2024-05-30 06:39:05'),
(699, 39, 'Sreenagar', 1, 712, '2024-05-30 06:39:05', '2024-05-30 06:39:05'),
(700, 39, 'Tongibari', 1, 713, '2024-05-30 06:39:05', '2024-05-30 06:39:05'),
(701, 39, 'Vabarchar', 1, 1115, '2024-05-30 06:39:05', '2024-05-30 06:39:05'),
(702, 40, 'Bhaluka', 1, 850, '2024-05-30 06:39:06', '2024-05-30 06:39:06'),
(703, 40, 'Dhobaura', 1, 847, '2024-05-30 06:39:06', '2024-05-30 06:39:06'),
(704, 40, 'Fulbaria', 1, 511, '2024-05-30 06:39:06', '2024-05-30 06:39:06'),
(705, 40, 'Gafargaon', 1, 845, '2024-05-30 06:39:06', '2024-05-30 06:39:06'),
(706, 40, 'Gauripur', 1, 846, '2024-05-30 06:39:06', '2024-05-30 06:39:06'),
(707, 40, 'Haluaghat', 1, 851, '2024-05-30 06:39:06', '2024-05-30 06:39:06'),
(708, 40, 'Ishwarganj', 1, 513, '2024-05-30 06:39:06', '2024-05-30 06:39:06'),
(709, 40, 'Muktagachha', 1, 512, '2024-05-30 06:39:06', '2024-05-30 06:39:06'),
(710, 40, 'Mymensingh Sadar', 1, 127, '2024-05-30 06:39:06', '2024-05-30 06:39:06'),
(711, 40, 'Nandail', 1, 848, '2024-05-30 06:39:06', '2024-05-30 06:39:06'),
(712, 40, 'Pagla', 1, 1038, '2024-05-30 06:39:06', '2024-05-30 06:39:06'),
(713, 40, 'Phulpur', 1, 849, '2024-05-30 06:39:06', '2024-05-30 06:39:06'),
(714, 40, 'Shomvugonj', 1, 1489, '2024-05-30 06:39:06', '2024-05-30 06:39:06'),
(715, 40, 'Tarakanda', 1, 1049, '2024-05-30 06:39:06', '2024-05-30 06:39:06'),
(716, 40, 'Trishal', 1, 510, '2024-05-30 06:39:06', '2024-05-30 06:39:06'),
(717, 41, 'Atrai', 1, 584, '2024-05-30 06:39:07', '2024-05-30 06:39:07'),
(718, 41, 'Bodolgaci', 1, 766, '2024-05-30 06:39:07', '2024-05-30 06:39:07'),
(719, 41, 'Dhamairhat', 1, 765, '2024-05-30 06:39:07', '2024-05-30 06:39:07'),
(720, 41, 'Manda (Naogaon)', 1, 759, '2024-05-30 06:39:07', '2024-05-30 06:39:07'),
(721, 41, 'Mohadebpur', 1, 761, '2024-05-30 06:39:07', '2024-05-30 06:39:07'),
(722, 41, 'Naogaon  Sadar', 1, 150, '2024-05-30 06:39:07', '2024-05-30 06:39:07'),
(723, 41, 'Niyamatpur', 1, 760, '2024-05-30 06:39:07', '2024-05-30 06:39:07'),
(724, 41, 'Porsha', 1, 764, '2024-05-30 06:39:07', '2024-05-30 06:39:07'),
(725, 41, 'Potnitola', 1, 762, '2024-05-30 06:39:07', '2024-05-30 06:39:07'),
(726, 41, 'Raninagaor', 1, 758, '2024-05-30 06:39:07', '2024-05-30 06:39:07'),
(727, 41, 'Sapaher', 1, 763, '2024-05-30 06:39:07', '2024-05-30 06:39:07'),
(728, 42, 'Kalia', 1, 706, '2024-05-30 06:39:07', '2024-05-30 06:39:07'),
(729, 42, 'Narail - Lohagara', 1, 707, '2024-05-30 06:39:07', '2024-05-30 06:39:07'),
(730, 42, 'Narail Sadar', 1, 158, '2024-05-30 06:39:07', '2024-05-30 06:39:07'),
(731, 42, 'Terokhada', 1, 982, '2024-05-30 06:39:07', '2024-05-30 06:39:07'),
(732, 43, '2 no gate', 1, 1025, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(733, 43, 'Adomji', 1, 1513, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(734, 43, 'amlapara', 1, 1085, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(735, 43, 'ananda bazar', 1, 1052, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(736, 43, 'Araihazar', 1, 721, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(737, 43, 'Araihazar Sador', 1, 1460, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(738, 43, 'Atlapur', 1, 1569, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(739, 43, 'baburail', 1, 1088, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(740, 43, 'Baidder Bazar', 1, 1010, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(741, 43, 'Bandar', 1, 648, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(742, 43, 'Bandar Amin/ Rupali', 1, 1508, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(743, 43, 'Bandar Shabdi', 1, 1507, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(744, 43, 'Banti-Bazar', 1, 1566, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(745, 43, 'Bausia', 1, 1114, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(746, 43, 'Bb road', 1, 1084, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(747, 43, 'Beldi-Daudpur', 1, 1145, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(748, 43, 'Bhuighor', 1, 1127, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(749, 43, 'Bhulta/Gawsia', 1, 723, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(750, 43, 'Bisic', 1, 1189, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(751, 43, 'Boktaboli', 1, 1191, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(752, 43, 'Borabo', 1, 1562, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(753, 43, 'Chanpara-Nawra', 1, 1568, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(754, 43, 'Chashra', 1, 1120, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(755, 43, 'Chowdhuri bari', 1, 1504, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(756, 43, 'Chowdhuri bari- Siddhirganj', 1, 1516, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(757, 43, 'Delpara', 1, 1124, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(758, 43, 'Deobhog', 1, 1505, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(759, 43, 'Don Chamber', 1, 121, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(760, 43, 'Ekrampur', 1, 1083, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(761, 43, 'Epz', 1, 1126, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(762, 43, 'Fatullah Bazar', 1, 1511, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(763, 43, 'Fatullah Rail station ', 1, 1517, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(764, 43, 'Gopaldi', 1, 1464, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(765, 43, 'Isdair', 1, 1192, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(766, 43, 'Ispahani Bandar', 1, 1082, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(767, 43, 'Jahangir Road', 1, 1570, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(768, 43, 'Jalkuri', 1, 1017, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(769, 43, 'Kachpur', 1, 1033, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(770, 43, 'kaikartek', 1, 1051, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(771, 43, 'Kanchan', 1, 1560, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(772, 43, 'kanchpur', 1, 1050, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(773, 43, 'Kashipur', 1, 1089, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(774, 43, 'Khaira', 1, 1463, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(775, 43, 'Khanpur', 1, 1123, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(776, 43, 'Lokkhon khola', 1, 1509, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(777, 43, 'Madanganj', 1, 1080, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(778, 43, 'Madanpur', 1, 1004, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(779, 43, 'Mahmudpur', 1, 1186, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(780, 43, 'Majdair', 1, 1118, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(781, 43, 'Masdair', 1, 1020, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(782, 43, 'Mitali Market', 1, 1188, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(783, 43, 'Modonpur', 1, 1039, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(784, 43, 'Mograpara', 1, 1091, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(785, 43, 'Murapara', 1, 1567, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(786, 43, 'Nabiganj Bandar', 1, 1081, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(787, 43, 'Neela Market', 1, 1146, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(788, 43, 'New town', 1, 1117, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(789, 43, 'Nila Market', 1, 1148, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(790, 43, 'Nitaiganj', 1, 1024, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(791, 43, 'Nowa para - Bhulta', 1, 1564, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(792, 43, 'Pachgaon - Bhulta', 1, 1565, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(793, 43, 'Pagla', 1, 334, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(794, 43, 'paikpara Narayanganj', 1, 1087, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(795, 43, 'Panchabati', 1, 1119, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(796, 43, 'Passport office (Siddhirganj)', 1, 1187, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(797, 43, 'Pathantoli-Hajiganj', 1, 1518, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(798, 43, 'Ponchoboti', 1, 1021, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(799, 43, 'Provakordi', 1, 1462, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(800, 43, 'Purbachal', 1, 1147, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(801, 43, 'Rupganj', 1, 722, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(802, 43, 'Rupshi', 1, 1561, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(803, 43, 'Sayedpur - Narayanganj', 1, 1086, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(804, 43, 'Shaheb para', 1, 1103, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(805, 43, 'Shanarpar', 1, 1022, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(806, 43, 'Shibu Market', 1, 1018, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(807, 43, 'Shiddriganj', 1, 1125, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(808, 43, 'Shiddriganj Pool', 1, 1512, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(809, 43, 'Siddirganj', 1, 493, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(810, 43, 'Signboard', 1, 1515, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(811, 43, 'Sonargaon', 1, 654, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(812, 43, 'South Chashara', 1, 120, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(813, 43, 'Tarabo', 1, 1563, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(814, 43, 'Tin Gao', 1, 1510, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(815, 43, 'Uchitpura', 1, 1461, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(816, 43, 'Volail', 1, 1190, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(817, 43, 'Zilla Parishod', 1, 1019, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(818, 44, 'Belabo', 1, 520, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(819, 44, 'Chalakchar', 1, 1199, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(820, 44, 'Hatirdia', 1, 1198, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(821, 44, 'Madhabdi', 1, 708, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(822, 44, 'MONOHARDI', 1, 1197, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(823, 44, 'Monohordi', 1, 521, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(824, 44, 'Narshingdi Sadar', 1, 151, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(825, 44, 'Palash', 1, 522, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(826, 44, 'Raipura North', 1, 1141, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(827, 44, 'Raipura South', 1, 523, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(828, 44, 'Shibpur', 1, 524, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(829, 45, 'Bagatipara', 1, 503, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(830, 45, 'Baraigram', 1, 500, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(831, 45, 'Gopalpur UPO', 1, 991, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(832, 45, 'Gurdaspur', 1, 502, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(833, 45, 'Lalpur', 1, 1007, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(834, 45, 'Naldanga - Natore', 1, 579, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(835, 45, 'Natore Sadar', 1, 110, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(836, 45, 'Singra', 1, 501, '2024-05-30 06:39:08', '2024-05-30 06:39:08'),
(837, 46, 'Atpara', 1, 872, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(838, 46, 'Barhatta', 1, 878, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(839, 46, 'Kalmakanda', 1, 873, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(840, 46, 'Kendua', 1, 874, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(841, 46, 'Khaliajuri', 1, 875, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(842, 46, 'Madan', 1, 879, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(843, 46, 'Mohanganj', 1, 880, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(844, 46, 'Netrokona Sadar', 1, 147, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(845, 46, 'Purbadhala', 1, 877, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(846, 46, 'Susang Durgapur', 1, 876, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(847, 47, 'Dimla', 1, 640, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(848, 47, 'Domar', 1, 641, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(849, 47, 'Jaldhaka', 1, 642, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(850, 47, 'Kishoriganj', 1, 643, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(851, 47, 'Nilphamari Sadar', 1, 140, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(852, 47, 'Saidpur', 1, 141, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(853, 47, 'Taraganj', 1, 590, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(854, 48, 'Basurhat', 1, 620, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(855, 48, 'Begumganj', 1, 621, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(856, 48, 'Chatkhil', 1, 622, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(857, 48, 'Chondrogonj Thana', 1, 742, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(858, 48, 'Companigonj', 1, 744, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(859, 48, 'Hatia', 1, 983, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(860, 48, 'Kobirhat', 1, 1106, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(861, 48, 'Maizdee', 1, 639, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(862, 48, 'Noakhali Sadar', 1, 101, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(863, 48, 'Senbag', 1, 623, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(864, 48, 'Sonaimuri', 1, 704, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(865, 48, 'Sonapur', 1, 743, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(866, 48, 'Subornochar', 1, 745, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(867, 49, 'Aminpur', 1, 1040, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(868, 49, 'Ataikula', 1, 773, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(869, 49, 'Atghoria', 1, 505, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(870, 49, 'Bera', 1, 555, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(871, 49, 'Bhangura', 1, 556, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(872, 49, 'Chatmohar', 1, 557, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(873, 49, 'Faridpur', 1, 1394, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(874, 49, 'Ishwardi', 1, 504, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(875, 49, 'Kasinathpur', 1, 772, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(876, 49, 'Pabna-Faridpur', 1, 770, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(877, 49, 'Pabna Sadar', 1, 125, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(878, 49, 'Sathia', 1, 771, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(879, 49, 'Sujanagar', 1, 506, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(880, 49, 'Tebunia', 1, 554, '2024-05-30 06:39:09', '2024-05-30 06:39:09'),
(881, 50, 'Atwari', 1, 806, '2024-05-30 06:39:10', '2024-05-30 06:39:10'),
(882, 50, 'Boda', 1, 809, '2024-05-30 06:39:10', '2024-05-30 06:39:10'),
(883, 50, 'Debiganj', 1, 808, '2024-05-30 06:39:10', '2024-05-30 06:39:10'),
(884, 50, 'Panchagarh Sadar', 1, 138, '2024-05-30 06:39:10', '2024-05-30 06:39:10'),
(885, 50, 'Tetulia', 1, 807, '2024-05-30 06:39:10', '2024-05-30 06:39:10'),
(886, 51, 'Bauphal', 1, 470, '2024-05-30 06:39:10', '2024-05-30 06:39:10'),
(887, 51, 'Dashmina', 1, 999, '2024-05-30 06:39:10', '2024-05-30 06:39:10'),
(888, 51, 'Dumkee', 1, 471, '2024-05-30 06:39:10', '2024-05-30 06:39:10'),
(889, 51, 'Gala chipa', 1, 472, '2024-05-30 06:39:10', '2024-05-30 06:39:10'),
(890, 51, 'Kala para', 1, 473, '2024-05-30 06:39:10', '2024-05-30 06:39:10'),
(891, 51, 'Khepupara', 1, 988, '2024-05-30 06:39:10', '2024-05-30 06:39:10'),
(892, 51, 'Mohipur', 1, 1034, '2024-05-30 06:39:10', '2024-05-30 06:39:10'),
(893, 51, 'Patuakhali Sadar', 1, 130, '2024-05-30 06:39:10', '2024-05-30 06:39:10'),
(894, 51, 'Subidkhali', 1, 998, '2024-05-30 06:39:10', '2024-05-30 06:39:10'),
(895, 52, 'Bhandaria', 1, 906, '2024-05-30 06:39:10', '2024-05-30 06:39:10'),
(896, 52, 'kaukhali', 1, 570, '2024-05-30 06:39:10', '2024-05-30 06:39:10'),
(897, 52, 'Mathbaria', 1, 907, '2024-05-30 06:39:10', '2024-05-30 06:39:10'),
(898, 52, 'Nazirpur', 1, 571, '2024-05-30 06:39:10', '2024-05-30 06:39:10'),
(899, 52, 'Pirojpur-Indurkani', 1, 1395, '2024-05-30 06:39:10', '2024-05-30 06:39:10'),
(900, 52, 'Pirojpur Sadar', 1, 132, '2024-05-30 06:39:10', '2024-05-30 06:39:10'),
(901, 52, 'Swarupkathi', 1, 905, '2024-05-30 06:39:10', '2024-05-30 06:39:10'),
(902, 53, 'Baliakandi', 1, 947, '2024-05-30 06:39:11', '2024-05-30 06:39:11'),
(903, 53, 'Goalanda', 1, 948, '2024-05-30 06:39:11', '2024-05-30 06:39:11'),
(904, 53, 'Kalukhali', 1, 950, '2024-05-30 06:39:11', '2024-05-30 06:39:11'),
(905, 53, 'Pangsha', 1, 949, '2024-05-30 06:39:11', '2024-05-30 06:39:11'),
(906, 53, 'Rajbari Sadar', 1, 162, '2024-05-30 06:39:11', '2024-05-30 06:39:11'),
(907, 54, 'Bagha', 1, 577, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(908, 54, 'Bagmara', 1, 497, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(909, 54, 'Banseshwar', 1, 1011, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(910, 54, 'Charghat', 1, 499, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(911, 54, 'Durgapur', 1, 498, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(912, 54, 'Godagari', 1, 578, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(913, 54, 'Katakhali', 1, 767, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(914, 54, 'Mohonpur', 1, 495, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(915, 54, 'Motihar', 1, 768, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(916, 54, 'Paba', 1, 494, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(917, 54, 'Puthia', 1, 576, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(918, 54, 'Rajpara', 1, 769, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(919, 54, 'Rajshahi Sadar (Boalia)', 1, 90, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(920, 54, 'Shah Mokdum', 1, 580, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(921, 54, 'Sharda', 1, 1012, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(922, 54, 'Taherpur', 1, 1013, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(923, 54, 'Tanor', 1, 496, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(924, 55, 'Kaptai', 1, 672, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(925, 55, 'Kawkhali Thana', 1, 669, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(926, 55, 'Kotwali Thana', 1, 163, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(927, 55, 'Nanichhar', 1, 673, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(928, 55, 'Rajasthali', 1, 674, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(929, 56, 'Badarganj', 1, 585, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(930, 56, 'Gangachara', 1, 586, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(931, 56, 'Haragach Thana', 1, 796, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(932, 56, 'Kaunia', 1, 587, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(933, 56, 'Mahiganj Thana', 1, 801, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(934, 56, 'Mithapukur', 1, 588, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(935, 56, 'Pirgachha', 1, 589, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(936, 56, 'Pirganj Thana', 1, 797, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(937, 56, 'Porshurampur Thana', 1, 799, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(938, 56, 'Rangpur Cantonment', 1, 798, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(939, 56, 'Rangpur Sadar(Kotowali Thana)', 1, 126, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(940, 56, 'Tajhat Thana', 1, 800, '2024-05-30 06:39:12', '2024-05-30 06:39:12'),
(941, 57, 'Ashashuni Thana', 1, 658, '2024-05-30 06:39:13', '2024-05-30 06:39:13'),
(942, 57, 'Debhata Thana', 1, 652, '2024-05-30 06:39:13', '2024-05-30 06:39:13'),
(943, 57, 'Kalaroa', 1, 650, '2024-05-30 06:39:13', '2024-05-30 06:39:13'),
(944, 57, 'Kaliganj', 1, 653, '2024-05-30 06:39:13', '2024-05-30 06:39:13'),
(945, 57, 'Satkhira Sadar', 1, 155, '2024-05-30 06:39:13', '2024-05-30 06:39:13'),
(946, 57, 'Shymnagar', 1, 659, '2024-05-30 06:39:13', '2024-05-30 06:39:13'),
(947, 57, 'Tala Thana', 1, 651, '2024-05-30 06:39:13', '2024-05-30 06:39:13'),
(948, 58, 'Bhedorganj', 1, 662, '2024-05-30 06:39:13', '2024-05-30 06:39:13'),
(949, 58, 'Damudhya', 1, 663, '2024-05-30 06:39:13', '2024-05-30 06:39:13'),
(950, 58, 'Gosairhat', 1, 664, '2024-05-30 06:39:13', '2024-05-30 06:39:13'),
(951, 58, 'Jajira', 1, 665, '2024-05-30 06:39:13', '2024-05-30 06:39:13'),
(952, 58, 'Naria', 1, 666, '2024-05-30 06:39:13', '2024-05-30 06:39:13'),
(953, 58, 'Shakhipur', 1, 1073, '2024-05-30 06:39:13', '2024-05-30 06:39:13'),
(954, 58, 'Shariatpur Sadar (Palong)', 1, 168, '2024-05-30 06:39:13', '2024-05-30 06:39:13'),
(955, 59, 'Jhinaigati', 1, 526, '2024-05-30 06:39:13', '2024-05-30 06:39:13'),
(956, 59, 'Nakla', 1, 527, '2024-05-30 06:39:13', '2024-05-30 06:39:13'),
(957, 59, 'Nalitabari', 1, 528, '2024-05-30 06:39:13', '2024-05-30 06:39:13'),
(958, 59, 'Sherpur Sadar', 1, 134, '2024-05-30 06:39:13', '2024-05-30 06:39:13'),
(959, 59, 'Sreebardi', 1, 625, '2024-05-30 06:39:13', '2024-05-30 06:39:13'),
(960, 60, 'Belkuchi', 1, 581, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(961, 60, 'Chowhali', 1, 1029, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(962, 60, 'Kamarkhanda', 1, 774, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(963, 60, 'Kazipur', 1, 780, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(964, 60, 'Rayganj', 1, 779, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(965, 60, 'Salonga', 1, 777, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(966, 60, 'Shahjadpur - Shahjadpur', 1, 775, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(967, 60, 'Sirajganj Sadar', 1, 105, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(968, 60, 'Tarash', 1, 778, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(969, 60, 'Ullapara', 1, 776, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(970, 61, 'Bishwamvarpur', 1, 834, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(971, 61, 'Chhatak', 1, 149, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(972, 61, 'Derai', 1, 836, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(973, 61, 'Dharmapasha', 1, 835, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(974, 61, 'Dowarabazar', 1, 837, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(975, 61, 'Jagnnathpur', 1, 619, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(976, 61, 'Jamalganj', 1, 838, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(977, 61, 'Salla', 1, 840, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(978, 61, 'Shantiganj', 1, 839, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(979, 61, 'Sunamganj Sadar', 1, 148, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(980, 61, 'Tahirpur', 1, 841, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(981, 62, 'Balaganj', 1, 611, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(982, 62, 'Beanibazar', 1, 461, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(983, 62, 'Bishwanath', 1, 612, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(984, 62, 'Companyganj', 1, 618, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(985, 62, 'Dakshin Surma', 1, 831, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(986, 62, 'Fenchuganj', 1, 613, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(987, 62, 'Golapganj', 1, 615, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(988, 62, 'Gowainghat', 1, 614, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(989, 62, 'Jaintapur', 1, 616, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(990, 62, 'Kanaighat', 1, 617, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(991, 62, 'Osmani Nagar', 1, 832, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(992, 62, 'Sylhet Sadar', 1, 89, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(993, 62, 'Ward No-01', 1, 1519, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(994, 62, 'Zakiganj', 1, 833, '2024-05-30 06:39:14', '2024-05-30 06:39:14'),
(995, 63, 'Bashail', 1, 535, '2024-05-30 06:39:15', '2024-05-30 06:39:15'),
(996, 63, 'Bhuapur', 1, 536, '2024-05-30 06:39:15', '2024-05-30 06:39:15'),
(997, 63, 'Delduar', 1, 537, '2024-05-30 06:39:15', '2024-05-30 06:39:15'),
(998, 63, 'Dhanbari', 1, 675, '2024-05-30 06:39:15', '2024-05-30 06:39:15'),
(999, 63, 'Ghatail', 1, 538, '2024-05-30 06:39:15', '2024-05-30 06:39:15'),
(1000, 63, 'Gopalpur', 1, 539, '2024-05-30 06:39:15', '2024-05-30 06:39:15'),
(1001, 63, 'Kalihati', 1, 540, '2024-05-30 06:39:15', '2024-05-30 06:39:15'),
(1002, 63, 'Madhupur', 1, 541, '2024-05-30 06:39:15', '2024-05-30 06:39:15'),
(1003, 63, 'Mirzapur', 1, 542, '2024-05-30 06:39:15', '2024-05-30 06:39:15'),
(1004, 63, 'Nagarpur', 1, 543, '2024-05-30 06:39:15', '2024-05-30 06:39:15'),
(1005, 63, 'Sakhipur', 1, 544, '2024-05-30 06:39:15', '2024-05-30 06:39:15'),
(1006, 63, 'Tangail Sadar', 1, 109, '2024-05-30 06:39:15', '2024-05-30 06:39:15'),
(1007, 64, 'Baliadangi', 1, 951, '2024-05-30 06:39:15', '2024-05-30 06:39:15'),
(1008, 64, 'Haripur', 1, 952, '2024-05-30 06:39:15', '2024-05-30 06:39:15'),
(1009, 64, 'Pirganj', 1, 953, '2024-05-30 06:39:15', '2024-05-30 06:39:15'),
(1010, 64, 'Ranisankail', 1, 954, '2024-05-30 06:39:15', '2024-05-30 06:39:15'),
(1011, 64, 'Ruhiya', 1, 955, '2024-05-30 06:39:15', '2024-05-30 06:39:15'),
(1012, 64, 'Thakurgaon Sadar', 1, 137, '2024-05-30 06:39:15', '2024-05-30 06:39:15');

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
(8, 'GREEN', 2, 1, '2024-02-17 11:02:05', '2024-02-17 11:02:05'),
(9, '40', 1, 1, '2024-05-01 07:03:23', '2024-05-01 07:03:23'),
(10, '42', 1, 1, '2024-05-01 07:03:32', '2024-05-01 07:03:32'),
(11, '44', 1, 1, '2024-05-01 07:03:39', '2024-05-01 07:03:39'),
(12, '38', 1, 1, '2024-05-01 07:03:48', '2024-05-01 07:03:48');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `benefits`
--
ALTER TABLE `benefits`
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
-- Indexes for table `courier_apis`
--
ALTER TABLE `courier_apis`
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
-- Indexes for table `landing_pages`
--
ALTER TABLE `landing_pages`
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
-- Indexes for table `redx_delivery_areas`
--
ALTER TABLE `redx_delivery_areas`
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
-- Indexes for table `reseller_wallet_recharges`
--
ALTER TABLE `reseller_wallet_recharges`
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
-- Indexes for table `solutions`
--
ALTER TABLE `solutions`
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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- AUTO_INCREMENT for table `benefits`
--
ALTER TABLE `benefits`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `courier_apis`
--
ALTER TABLE `courier_apis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `landing_pages`
--
ALTER TABLE `landing_pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_barcodes`
--
ALTER TABLE `product_barcodes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

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
-- AUTO_INCREMENT for table `redx_delivery_areas`
--
ALTER TABLE `redx_delivery_areas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5529;

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
-- AUTO_INCREMENT for table `reseller_wallet_recharges`
--
ALTER TABLE `reseller_wallet_recharges`
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
-- AUTO_INCREMENT for table `solutions`
--
ALTER TABLE `solutions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1013;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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

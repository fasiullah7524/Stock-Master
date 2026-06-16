-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2026 at 01:05 PM
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
-- Database: `qpos`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `image`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Lemke Inc', NULL, 1, '2026-06-13 09:54:12', '2026-06-13 09:54:12'),
(2, NULL, 'Collier PLC', NULL, 1, '2026-06-13 09:54:12', '2026-06-13 09:54:12'),
(3, NULL, 'Zieme Ltd', NULL, 1, '2026-06-13 09:54:12', '2026-06-13 09:54:12'),
(4, NULL, 'Rowe, Olson and Hauck', NULL, 1, '2026-06-13 09:54:12', '2026-06-13 09:54:12'),
(5, NULL, 'Luettgen, Lubowitz and Predovic', NULL, 1, '2026-06-13 09:54:12', '2026-06-13 09:54:12'),
(6, NULL, 'Schamberger and Sons', NULL, 1, '2026-06-13 09:54:12', '2026-06-13 09:54:12'),
(7, NULL, 'Lueilwitz-Kuhic', NULL, 1, '2026-06-13 09:54:12', '2026-06-13 09:54:12'),
(8, NULL, 'Wilderman, Ortiz and Schumm', NULL, 1, '2026-06-13 09:54:12', '2026-06-13 09:54:12'),
(9, NULL, 'O\'Conner and Sons', NULL, 1, '2026-06-13 09:54:12', '2026-06-13 09:54:12'),
(10, NULL, 'Bahringer, Schimmel and Powlowski', NULL, 1, '2026-06-13 09:54:13', '2026-06-13 09:54:13');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `image`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'culpa', NULL, 1, '2026-06-13 09:54:11', '2026-06-13 09:54:11'),
(2, NULL, 'magnam', NULL, 1, '2026-06-13 09:54:11', '2026-06-13 09:54:11'),
(3, NULL, 'nesciunt', NULL, 1, '2026-06-13 09:54:11', '2026-06-13 09:54:11'),
(4, NULL, 'autem', NULL, 1, '2026-06-13 09:54:12', '2026-06-13 09:54:12'),
(5, NULL, 'officiis', NULL, 1, '2026-06-13 09:54:12', '2026-06-13 09:54:12'),
(6, NULL, 'aut', NULL, 1, '2026-06-13 09:54:12', '2026-06-13 09:54:12'),
(7, NULL, 'consequatur', NULL, 1, '2026-06-13 09:54:12', '2026-06-13 09:54:12'),
(8, NULL, 'ex', NULL, 1, '2026-06-13 09:54:12', '2026-06-13 09:54:12'),
(9, NULL, 'debitis', NULL, 1, '2026-06-13 09:54:12', '2026-06-13 09:54:12'),
(10, NULL, 'consequatur', NULL, 1, '2026-06-13 09:54:12', '2026-06-13 09:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `active`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', 'USD', '$', 0, '2026-06-13 09:53:54', '2026-06-13 09:53:54'),
(2, 'Euro', 'EUR', '€', 0, '2026-06-13 09:53:55', '2026-06-13 09:53:55'),
(3, 'British Pound', 'GBP', '£', 0, '2026-06-13 09:53:55', '2026-06-13 09:53:55'),
(4, 'Japanese Yen', 'JPY', '¥', 0, '2026-06-13 09:53:55', '2026-06-13 09:53:55'),
(5, 'Australian Dollar', 'AUD', 'A$', 0, '2026-06-13 09:53:55', '2026-06-13 09:53:55'),
(6, 'Canadian Dollar', 'CAD', 'C$', 0, '2026-06-13 09:53:55', '2026-06-13 09:53:55'),
(7, 'Chinese Yuan', 'CNY', '¥', 0, '2026-06-13 09:53:55', '2026-06-13 09:53:55'),
(8, 'Indian Rupee', 'INR', '₹', 0, '2026-06-13 09:53:55', '2026-06-13 09:53:55'),
(9, 'Indonesian Rupiah', 'IDR', 'Rp', 0, '2026-06-13 09:53:55', '2026-06-13 09:53:55'),
(10, 'Pakistani Rupee', 'PKR', '₨', 1, '2026-06-13 09:53:55', '2026-06-13 10:10:13'),
(11, 'Bangladeshi Taka', 'BDT', '৳', 0, '2026-06-13 09:53:55', '2026-06-13 10:10:13'),
(12, 'Vietnamese Dong', 'VND', '₫', 0, '2026-06-13 09:53:55', '2026-06-13 09:53:55'),
(13, 'Philippine Peso', 'PHP', '₱', 0, '2026-06-13 09:53:55', '2026-06-13 09:53:55'),
(14, 'Thai Baht', 'THB', '฿', 0, '2026-06-13 09:53:55', '2026-06-13 09:53:55'),
(15, 'South Korean Won', 'KRW', '₩', 0, '2026-06-13 09:53:55', '2026-06-13 09:53:55'),
(16, 'Malaysian Ringgit', 'MYR', 'RM', 0, '2026-06-13 09:53:55', '2026-06-13 09:53:55'),
(17, 'Singapore Dollar', 'SGD', 'S$', 0, '2026-06-13 09:53:56', '2026-06-13 09:53:56'),
(18, 'Sri Lankan Rupee', 'LKR', '₨', 0, '2026-06-13 09:53:56', '2026-06-13 09:53:56'),
(19, 'Nepalese Rupee', 'NPR', '₨', 0, '2026-06-13 09:53:56', '2026-06-13 09:53:56'),
(20, 'Afghan Afghani', 'AFN', '؋', 0, '2026-06-13 09:53:56', '2026-06-13 09:53:56'),
(21, 'Iraqi Dinar', 'IQD', 'ع.د', 0, '2026-06-13 09:53:56', '2026-06-13 09:53:56'),
(22, 'Iranian Rial', 'IRR', '﷼', 0, '2026-06-13 09:53:56', '2026-06-13 09:53:56'),
(23, 'Saudi Riyal', 'SAR', '﷼', 0, '2026-06-13 09:53:56', '2026-06-13 09:53:56'),
(24, 'Israeli New Shekel', 'ILS', '₪', 0, '2026-06-13 09:53:56', '2026-06-13 09:53:56'),
(25, 'Turkish Lira', 'TRY', '₺', 0, '2026-06-13 09:53:56', '2026-06-13 09:53:56'),
(26, 'Emirati Dirham', 'AED', 'د.إ', 0, '2026-06-13 09:53:56', '2026-06-13 09:53:56'),
(27, 'Qatari Riyal', 'QAR', '﷼', 0, '2026-06-13 09:53:56', '2026-06-13 09:53:56'),
(28, 'Omani Rial', 'OMR', '﷼', 0, '2026-06-13 09:53:56', '2026-06-13 09:53:56'),
(29, 'Kuwaiti Dinar', 'KWD', 'د.ك', 0, '2026-06-13 09:53:56', '2026-06-13 09:53:56'),
(30, 'Jordanian Dinar', 'JOD', 'د.ا', 0, '2026-06-13 09:53:56', '2026-06-13 09:53:56'),
(31, 'Lebanese Pound', 'LBP', 'ل.ل', 0, '2026-06-13 09:53:56', '2026-06-13 09:53:56'),
(32, 'Syrian Pound', 'SYP', '£', 0, '2026-06-13 09:53:57', '2026-06-13 09:53:57'),
(33, 'Yemeni Rial', 'YER', '﷼', 0, '2026-06-13 09:53:57', '2026-06-13 09:53:57'),
(34, 'Armenian Dram', 'AMD', '֏', 0, '2026-06-13 09:53:57', '2026-06-13 09:53:57'),
(35, 'Azerbaijani Manat', 'AZN', '₼', 0, '2026-06-13 09:53:57', '2026-06-13 09:53:57'),
(36, 'Georgian Lari', 'GEL', '₾', 0, '2026-06-13 09:53:57', '2026-06-13 09:53:57'),
(37, 'Kazakhstani Tenge', 'KZT', '₸', 0, '2026-06-13 09:53:57', '2026-06-13 09:53:57'),
(38, 'Uzbekistani Som', 'UZS', 'лв', 0, '2026-06-13 09:53:57', '2026-06-13 09:53:57'),
(39, 'Turkmenistan Manat', 'TMT', 'm', 0, '2026-06-13 09:53:57', '2026-06-13 09:53:57'),
(40, 'Tajikistani Somoni', 'TJS', 'ЅМ', 0, '2026-06-13 09:53:57', '2026-06-13 09:53:57'),
(41, 'Kyrgyzstani Som', 'KGS', 'лв', 0, '2026-06-13 09:53:57', '2026-06-13 09:53:57'),
(42, 'Mongolian Tugrik', 'MNT', '₮', 0, '2026-06-13 09:53:57', '2026-06-13 09:53:57'),
(43, 'Bahraini Dinar', 'BHD', '.د.ب', 0, '2026-06-13 09:53:57', '2026-06-13 09:53:57'),
(44, 'Maldivian Rufiyaa', 'MVR', 'Rf', 0, '2026-06-13 09:53:57', '2026-06-13 09:53:57'),
(45, 'Bhutanese Ngultrum', 'BTN', 'Nu.', 0, '2026-06-13 09:53:57', '2026-06-13 09:53:57'),
(46, 'Myanmar Kyat', 'MMK', 'K', 0, '2026-06-13 09:53:58', '2026-06-13 09:53:58'),
(47, 'Laotian Kip', 'LAK', '₭', 0, '2026-06-13 09:53:58', '2026-06-13 09:53:58'),
(48, 'Cambodian Riel', 'KHR', '៛', 0, '2026-06-13 09:53:58', '2026-06-13 09:53:58'),
(49, 'Brunei Dollar', 'BND', 'B$', 0, '2026-06-13 09:53:58', '2026-06-13 09:53:58');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Walking Customer', '012345678', NULL, '2026-06-13 09:53:53', '2026-06-13 09:53:53'),
(5, 'Cassidy Kulas', '+1-423-636-5684', '8616 Mayert Parkway Apt. 391\nSouth Vladimirshire, NM 11288', '2026-06-13 09:54:23', '2026-06-13 09:54:23'),
(12, 'Fasi Ullah', '0123456789', NULL, '2026-06-13 12:16:49', '2026-06-13 12:16:49');

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
-- Table structure for table `forget_passwords`
--

CREATE TABLE `forget_passwords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `failed_attempt` smallint(6) NOT NULL DEFAULT 0,
  `token` varchar(255) DEFAULT NULL,
  `suspend_duration` varchar(255) NOT NULL DEFAULT '0',
  `resent_count` smallint(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forget_passwords`
--

INSERT INTO `forget_passwords` (`id`, `user_id`, `email`, `otp`, `failed_attempt`, `token`, `suspend_duration`, `resent_count`, `created_at`, `updated_at`) VALUES
(1, 4, 'fasiullah7524@gmail.com', 19647, 0, NULL, '2026-06-13 16:54:40', 0, '2026-06-13 11:42:18', '2026-06-13 11:49:40'),
(2, 6, 'fasiullah7524@gmail.com', 45893, 0, NULL, '2026-06-13 17:12:58', 0, '2026-06-13 11:56:23', '2026-06-13 12:07:58');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_11_051813_create_forget_passwords_table', 1),
(6, '2023_07_18_170442_create_permission_tables', 1),
(7, '2024_09_10_161412_create_categories_table', 1),
(8, '2024_09_10_161420_create_brands_table', 1),
(9, '2024_09_10_161421_create_units_table', 1),
(10, '2024_09_10_161422_create_products_table', 1),
(11, '2024_09_10_161609_create_pos_carts_table', 1),
(12, '2024_09_10_161620_create_customers_table', 1),
(13, '2024_09_10_161625_create_orders_table', 1),
(14, '2024_09_10_161633_create_order_products_table', 1),
(15, '2024_10_15_144038_create_order_transactions_table', 1),
(16, '2024_10_16_123030_create_suppliers_table', 1),
(17, '2024_10_16_173030_create_purchases_table', 1),
(18, '2024_10_16_190049_create_purchase_items_table', 1),
(19, '2024_10_31_105132_create_currencies_table', 1),
(20, '2025_03_24_105855_modify_discount_columns_in_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 4),
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `sub_total` double NOT NULL DEFAULT 0 COMMENT 'sumOf(total) from order_products table',
  `total` double NOT NULL DEFAULT 0 COMMENT 'sub_total - discount',
  `paid` double NOT NULL DEFAULT 0 COMMENT 'customer paid amount',
  `due` double NOT NULL DEFAULT 0 COMMENT 'total - paid',
  `note` text DEFAULT NULL,
  `is_returned` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `customer_id`, `discount`, `sub_total`, `total`, `paid`, `due`, `note`, `is_returned`, `status`, `created_at`, `updated_at`) VALUES
(6, 7, 1, 0, 313.46, 313.46, 0, 313.46, NULL, 0, 0, '2026-06-15 07:07:56', '2026-06-15 07:07:57');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` double NOT NULL DEFAULT 0,
  `purchase_price` double NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `sub_total` double NOT NULL DEFAULT 0,
  `total` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `quantity`, `price`, `purchase_price`, `discount`, `sub_total`, `total`, `created_at`, `updated_at`) VALUES
(9, 6, 50, 1, 262, 159, 45, 262, 217, '2026-06-15 07:07:56', '2026-06-15 07:07:56'),
(10, 6, 10, 1, 283, 648, 220.74, 283, 62.26, '2026-06-15 07:07:56', '2026-06-15 07:07:56'),
(11, 6, 39, 1, 114, 83, 79.8, 114, 34.2, '2026-06-15 07:07:56', '2026-06-15 07:07:56');

-- --------------------------------------------------------

--
-- Table structure for table `order_transactions`
--

CREATE TABLE `order_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(10,2) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_by` varchar(255) NOT NULL COMMENT 'bank,cash,card',
  `transaction_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard_view', 'web', '2026-06-13 09:53:58', '2026-06-13 09:53:58'),
(2, 'customer_create', 'web', '2026-06-13 09:53:59', '2026-06-13 09:53:59'),
(3, 'customer_view', 'web', '2026-06-13 09:54:00', '2026-06-13 09:54:00'),
(4, 'customer_update', 'web', '2026-06-13 09:54:00', '2026-06-13 09:54:00'),
(5, 'customer_delete', 'web', '2026-06-13 09:54:00', '2026-06-13 09:54:00'),
(6, 'customer_sales', 'web', '2026-06-13 09:54:01', '2026-06-13 09:54:01'),
(7, 'supplier_view', 'web', '2026-06-13 09:54:01', '2026-06-13 09:54:01'),
(8, 'supplier_create', 'web', '2026-06-13 09:54:01', '2026-06-13 09:54:01'),
(9, 'supplier_update', 'web', '2026-06-13 09:54:01', '2026-06-13 09:54:01'),
(10, 'supplier_delete', 'web', '2026-06-13 09:54:01', '2026-06-13 09:54:01'),
(11, 'product_create', 'web', '2026-06-13 09:54:01', '2026-06-13 09:54:01'),
(12, 'product_view', 'web', '2026-06-13 09:54:02', '2026-06-13 09:54:02'),
(13, 'product_update', 'web', '2026-06-13 09:54:02', '2026-06-13 09:54:02'),
(14, 'product_delete', 'web', '2026-06-13 09:54:02', '2026-06-13 09:54:02'),
(15, 'product_import', 'web', '2026-06-13 09:54:02', '2026-06-13 09:54:02'),
(16, 'brand_create', 'web', '2026-06-13 09:54:02', '2026-06-13 09:54:02'),
(17, 'brand_view', 'web', '2026-06-13 09:54:02', '2026-06-13 09:54:02'),
(18, 'brand_update', 'web', '2026-06-13 09:54:02', '2026-06-13 09:54:02'),
(19, 'brand_delete', 'web', '2026-06-13 09:54:02', '2026-06-13 09:54:02'),
(20, 'category_create', 'web', '2026-06-13 09:54:03', '2026-06-13 09:54:03'),
(21, 'category_view', 'web', '2026-06-13 09:54:03', '2026-06-13 09:54:03'),
(22, 'category_update', 'web', '2026-06-13 09:54:03', '2026-06-13 09:54:03'),
(23, 'category_delete', 'web', '2026-06-13 09:54:03', '2026-06-13 09:54:03'),
(24, 'unit_create', 'web', '2026-06-13 09:54:03', '2026-06-13 09:54:03'),
(25, 'unit_view', 'web', '2026-06-13 09:54:03', '2026-06-13 09:54:03'),
(26, 'unit_update', 'web', '2026-06-13 09:54:03', '2026-06-13 09:54:03'),
(27, 'unit_delete', 'web', '2026-06-13 09:54:04', '2026-06-13 09:54:04'),
(28, 'sale_create', 'web', '2026-06-13 09:54:04', '2026-06-13 09:54:04'),
(29, 'sale_view', 'web', '2026-06-13 09:54:04', '2026-06-13 09:54:04'),
(30, 'sale_update', 'web', '2026-06-13 09:54:04', '2026-06-13 09:54:04'),
(31, 'sale_delete', 'web', '2026-06-13 09:54:04', '2026-06-13 09:54:04'),
(32, 'purchase_create', 'web', '2026-06-13 09:54:04', '2026-06-13 09:54:04'),
(33, 'purchase_view', 'web', '2026-06-13 09:54:04', '2026-06-13 09:54:04'),
(34, 'purchase_update', 'web', '2026-06-13 09:54:05', '2026-06-13 09:54:05'),
(35, 'purchase_delete', 'web', '2026-06-13 09:54:05', '2026-06-13 09:54:05'),
(36, 'reports_summary', 'web', '2026-06-13 09:54:05', '2026-06-13 09:54:05'),
(37, 'reports_sales', 'web', '2026-06-13 09:54:05', '2026-06-13 09:54:05'),
(38, 'reports_inventory', 'web', '2026-06-13 09:54:05', '2026-06-13 09:54:05'),
(39, 'currency_create', 'web', '2026-06-13 09:54:05', '2026-06-13 09:54:05'),
(40, 'currency_view', 'web', '2026-06-13 09:54:06', '2026-06-13 09:54:06'),
(41, 'currency_update', 'web', '2026-06-13 09:54:06', '2026-06-13 09:54:06'),
(42, 'currency_delete', 'web', '2026-06-13 09:54:06', '2026-06-13 09:54:06'),
(43, 'currency_set_default', 'web', '2026-06-13 09:54:06', '2026-06-13 09:54:06'),
(44, 'role_create', 'web', '2026-06-13 09:54:06', '2026-06-13 09:54:06'),
(45, 'role_view', 'web', '2026-06-13 09:54:06', '2026-06-13 09:54:06'),
(46, 'role_update', 'web', '2026-06-13 09:54:07', '2026-06-13 09:54:07'),
(47, 'role_delete', 'web', '2026-06-13 09:54:07', '2026-06-13 09:54:07'),
(48, 'permission_view', 'web', '2026-06-13 09:54:07', '2026-06-13 09:54:07'),
(49, 'user_create', 'web', '2026-06-13 09:54:07', '2026-06-13 09:54:07'),
(50, 'user_view', 'web', '2026-06-13 09:54:07', '2026-06-13 09:54:07'),
(51, 'user_update', 'web', '2026-06-13 09:54:07', '2026-06-13 09:54:07'),
(52, 'user_delete', 'web', '2026-06-13 09:54:07', '2026-06-13 09:54:07'),
(53, 'user_suspend', 'web', '2026-06-13 09:54:07', '2026-06-13 09:54:07'),
(54, 'website_settings', 'web', '2026-06-13 09:54:08', '2026-06-13 09:54:08'),
(55, 'contact_settings', 'web', '2026-06-13 09:54:08', '2026-06-13 09:54:08'),
(56, 'socials_settings', 'web', '2026-06-13 09:54:08', '2026-06-13 09:54:08'),
(57, 'style_settings', 'web', '2026-06-13 09:54:08', '2026-06-13 09:54:08'),
(58, 'custom_settings', 'web', '2026-06-13 09:54:08', '2026-06-13 09:54:08'),
(59, 'notification_settings', 'web', '2026-06-13 09:54:08', '2026-06-13 09:54:08'),
(60, 'website_status_settings', 'web', '2026-06-13 09:54:08', '2026-06-13 09:54:08'),
(61, 'invoice_settings', 'web', '2026-06-13 09:54:08', '2026-06-13 09:54:08'),
(62, 'product_purchase', 'web', '2026-06-13 09:54:10', '2026-06-13 09:54:10'),
(63, 'sale_edit', 'web', '2026-06-13 09:54:10', '2026-06-13 09:54:10');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pos_carts`
--

CREATE TABLE `pos_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `discount` double(10,2) DEFAULT NULL,
  `discount_type` varchar(255) DEFAULT NULL,
  `purchase_price` double(10,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `expire_date` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `image`, `name`, `slug`, `sku`, `description`, `category_id`, `brand_id`, `unit_id`, `price`, `discount`, `discount_type`, `purchase_price`, `quantity`, `expire_date`, `status`, `created_at`, `updated_at`) VALUES
(3, '', 'Mr. Colt Cassin Sr.', 'et-nihil-autem-odio-odio-veniam-ut-aut-tenetur', 'a5a75387-2a1f-3590-8145-d495b1f36a52', 'Quo animi placeat sed magni qui quibusdam omnis ad. Occaecati fugiat dolorum sit cum. Perferendis enim ipsam dignissimos consequuntur. Quisquam exercitationem illum dolorem pariatur numquam.', 8, 8, 2, 148.00, 1.00, 'percentage', 445.00, 0, '2026-11-19', 1, '2026-06-13 09:54:14', '2026-06-13 09:54:14'),
(4, '', 'Lynn Becker', 'culpa-harum-voluptate-repudiandae-ipsa-voluptas', '334934ab-dcd1-3c42-8e54-d0d97cba19a0', 'Soluta nihil dolore impedit dolor rerum ipsa consectetur. Quas aspernatur dolore nulla. Cupiditate necessitatibus laborum ea consequatur cumque est accusamus.', 7, 9, 5, 947.00, 22.00, 'fixed', 783.00, 0, '2027-05-08', 1, '2026-06-13 09:54:14', '2026-06-13 09:54:14'),
(5, '', 'Dr. Jacques Langworth', 'eos-sed-officiis-rem-id', 'fe6350b6-c5ad-3864-beb1-e72b232c62ad', 'Molestias voluptates quae voluptatem excepturi eum. Impedit enim dolorum eum ea. Sunt sequi et culpa ullam. Magni unde necessitatibus velit. Exercitationem rerum sunt quis unde odio voluptate.', 4, 5, 2, 721.00, 44.00, 'fixed', 259.00, 0, '2026-11-11', 1, '2026-06-13 09:54:14', '2026-06-13 09:54:14'),
(6, '', 'Otilia Wunsch', 'aliquam-perspiciatis-placeat-non-voluptatum', '106ef30a-d3a7-372e-a172-3e0befc302b6', 'Illum rem doloribus facilis reiciendis nam a id. Neque laborum minima dolores adipisci. Est quo iste voluptas quia voluptas vel natus. Aspernatur est aut nam dolores accusantium corrupti.', 4, 6, 4, 551.00, 31.00, 'fixed', 871.00, 0, '2027-05-27', 1, '2026-06-13 09:54:14', '2026-06-13 09:54:14'),
(7, '', 'Dr. Ken Schowalter I', 'sit-sapiente-reiciendis-eveniet-aut-sint-corporis-quidem-perferendis', '8f28d303-2ed9-30b4-864c-2ce8c0d7a4eb', 'Aut quaerat eius exercitationem. Aut ut eos recusandae saepe et hic doloribus. Atque voluptates incidunt voluptatem deleniti nobis eaque. Ex repudiandae blanditiis ut neque blanditiis illo.', 9, 3, 3, 737.00, 19.00, 'percentage', 429.00, 0, '2026-09-14', 1, '2026-06-13 09:54:14', '2026-06-13 09:54:14'),
(10, '', 'Ms. Lori Ryan', 'odio-adipisci-dicta-omnis-dignissimos-magnam', '1ea9d8d0-db57-374a-9a07-28b77dc383ca', 'Aut et provident itaque voluptas consequatur. Delectus aut magnam pariatur soluta molestias. Qui quasi voluptates eveniet. Numquam a cum qui.', 10, 9, 6, 283.00, 78.00, 'percentage', 648.00, 7, '2026-07-14', 1, '2026-06-13 09:54:15', '2026-06-15 07:07:56'),
(11, '', 'Dovie Steuber', 'laudantium-et-veritatis-aut-debitis-nisi-id-sit', '32788992-6b54-35ea-87ce-db21401413e8', 'Porro omnis voluptatem asperiores adipisci et error ducimus. Id saepe laboriosam rerum voluptatem. Saepe nobis minus magnam mollitia.', 4, 2, 2, 816.00, 22.00, 'percentage', 68.00, 0, '2027-01-18', 1, '2026-06-13 09:54:15', '2026-06-13 09:54:15'),
(12, '', 'Emelie Cassin', 'sunt-at-in-quia-facilis', '7630d308-7774-3221-8510-15cc42f6df71', 'Eos enim nihil sunt. Minus quam velit ut itaque quam unde impedit et. Est incidunt repellat soluta voluptatem.', 2, 10, 4, 348.00, 34.00, 'fixed', 628.00, 0, '2026-12-03', 1, '2026-06-13 09:54:15', '2026-06-13 09:54:15'),
(13, '', 'Aylin Schiller', 'quia-laudantium-ea-nostrum-dolor-pariatur-praesentium', 'b068b45e-0a5c-3b72-931a-15687edc0329', 'Corrupti dicta quia iusto est distinctio modi neque. Et molestiae temporibus quis sint in. Illum voluptatem provident vel esse beatae ab.', 10, 6, 4, 555.00, 38.00, 'percentage', 59.00, 2, '2027-03-03', 1, '2026-06-13 09:54:15', '2026-06-13 12:17:14'),
(19, '', 'Kenton Boehm', 'molestiae-deleniti-libero-enim-sequi-et-nisi-ut', '015d7ffd-4806-32c0-a8e9-0288cf19a797', 'Consequatur sequi et et nemo laudantium. Et aut voluptas dolores neque maxime modi. Quia voluptatibus reiciendis in quidem.', 9, 5, 4, 200.00, 1.00, 'fixed', 518.00, 0, '2027-06-13', 1, '2026-06-13 09:54:16', '2026-06-13 09:54:16'),
(20, '', 'Nathaniel McClure', 'laudantium-et-accusamus-unde-blanditiis-temporibus-corporis', 'dd2c8ff1-9e95-3e0b-ae54-92aa44758a0a', 'Fuga cum officiis est. Ea molestiae et tempora eligendi beatae eveniet. Sed voluptatibus ex blanditiis vel nesciunt soluta ut. Distinctio numquam sint necessitatibus laudantium odit.', 7, 3, 2, 842.00, 72.00, 'fixed', 8.00, 0, '2027-04-18', 1, '2026-06-13 09:54:16', '2026-06-13 09:54:16'),
(21, '', 'Antonina Beatty PhD', 'in-voluptate-mollitia-recusandae-quas-quis-ut-doloribus-cupiditate', '6cb4f16d-58bd-3dda-b98c-d22c75722ed3', 'Alias consectetur asperiores quibusdam eius exercitationem culpa incidunt excepturi. Et voluptatem quaerat consequuntur. Error at ullam et ut. Cupiditate dolor consequatur illum quis earum soluta.', 3, 6, 5, 118.00, 82.00, 'percentage', 829.00, 0, '2027-02-07', 1, '2026-06-13 09:54:16', '2026-06-13 09:54:16'),
(22, '', 'Shanie Wyman', 'sint-mollitia-laboriosam-et-autem-amet', '005973b7-4d33-38bb-8dd7-b353835d9e04', 'Corporis voluptatibus vitae explicabo expedita velit. Officia ut corrupti quas officiis aut. Optio dolorem quo architecto tenetur rerum id similique. Quia at et quo perspiciatis.', 3, 5, 4, 221.00, 11.00, 'percentage', 861.00, 0, '2026-06-28', 1, '2026-06-13 09:54:17', '2026-06-13 09:54:17'),
(24, '', 'Savanna Ondricka', 'sunt-dolore-deserunt-eius-laudantium-voluptas-voluptate-qui', 'a1bc6e94-76ca-312f-bc6a-c58622e667b8', 'Fuga et rerum sunt voluptatem. Sit sunt nostrum sunt optio harum et.', 5, 4, 2, 281.00, 84.00, 'percentage', 23.00, 0, '2027-01-01', 1, '2026-06-13 09:54:17', '2026-06-13 09:54:17'),
(25, '', 'Malvina Morar', 'debitis-corrupti-qui-in-explicabo-temporibus-distinctio', '974287e2-14ae-334b-b6cb-e586f9b3927d', 'Occaecati enim ut sit voluptatem. Eaque eum reiciendis totam consequatur. Omnis aperiam unde ullam qui doloribus error. Aut aut consequatur est ut ut.', 4, 6, 1, 394.00, 24.00, 'fixed', 221.00, 0, '2027-05-28', 1, '2026-06-13 09:54:17', '2026-06-13 09:54:17'),
(26, '', 'Dr. Ciara Beier', 'id-magni-quia-quidem-atque-et-ut-omnis', '2dde57b0-2c5c-39ac-9fc1-73204ec8ab43', 'Odio magnam aperiam nihil consequatur. Et sed nihil expedita quae eos atque pariatur. Architecto veritatis nihil dignissimos eligendi. Dicta aspernatur necessitatibus omnis culpa voluptas.', 3, 7, 5, 552.00, 14.00, 'fixed', 411.00, 1, '2026-12-01', 1, '2026-06-13 09:54:17', '2026-06-13 09:54:26'),
(27, '', 'Ansley Goodwin', 'id-et-ut-consequatur-nulla-in-adipisci', '5aa75073-3051-38fe-9eba-275683639f9c', 'Labore beatae rerum qui sint provident et optio explicabo. Quas possimus et eum quod alias eos quisquam.', 8, 10, 4, 642.00, 32.00, 'fixed', 871.00, 0, '2026-09-23', 1, '2026-06-13 09:54:17', '2026-06-13 09:54:17'),
(30, '', 'Adrienne Stiedemann', 'aut-eos-eius-excepturi-est-dicta', '0a299d03-7fb6-352b-b060-24084b70e91a', 'Quas ea doloremque quisquam sed vero. Voluptas tempora inventore eum non et non. Sit eveniet excepturi doloribus ut in.', 1, 5, 1, 495.00, 88.00, 'percentage', 14.00, 0, '2027-03-06', 1, '2026-06-13 09:54:18', '2026-06-13 09:54:18'),
(31, '', 'Prof. Juston King', 'rerum-molestias-asperiores-quisquam-repellat-repellat-nobis-natus', '1980ecc4-364d-37fb-b692-86822112af77', 'Facere modi omnis quasi id esse rerum nulla. Ipsa voluptatibus ipsam et voluptatem. Et ullam optio quis dolorem voluptate assumenda dolor.', 1, 8, 1, 658.00, 0.00, 'percentage', 741.00, 7, '2026-07-20', 1, '2026-06-13 09:54:18', '2026-06-13 12:10:37'),
(34, '', 'Zechariah Reichel', 'doloribus-deserunt-sint-dolore-facere', '1fb9f580-096f-371d-a1e5-4bd2d7c3fdc8', 'Et numquam praesentium alias ut quis accusamus modi. Libero ab quia et aut in sint sed vel. Natus accusantium quidem animi est necessitatibus labore.', 5, 8, 6, 820.00, 30.00, 'fixed', 197.00, 0, '2026-09-21', 1, '2026-06-13 09:54:18', '2026-06-13 09:54:18'),
(35, '', 'Hattie Schaefer', 'inventore-placeat-cum-ipsam-magni-sit-quo-non-et', '470f444d-dd96-3e53-ba52-eff6aad18c3f', 'Est aut quia pariatur quia. Occaecati eaque aut voluptas eveniet. Saepe recusandae ipsam consequuntur et aliquid.', 5, 1, 6, 104.00, 37.00, 'percentage', 175.00, 0, '2026-08-16', 1, '2026-06-13 09:54:19', '2026-06-13 09:54:19'),
(39, '', 'Mr. Brad Rosenbaum', 'accusamus-facilis-ex-eius-sit-maiores-quaerat-rerum-rem', 'c45ec6a4-97c3-3ad9-997b-de89b688bfe9', 'Non voluptates eum quidem quis qui enim quaerat. Quam voluptatem corporis consequatur suscipit. Est est consequatur impedit mollitia optio.', 1, 9, 2, 114.00, 70.00, 'percentage', 83.00, 0, '2026-07-06', 1, '2026-06-13 09:54:20', '2026-06-15 07:07:56'),
(41, '', 'Mrs. Karelle Doyle', 'assumenda-pariatur-ut-sit-fugit-explicabo-nemo-pariatur-est', 'c4637488-2078-354e-bc8c-134c963249f5', 'Aut qui excepturi aut debitis qui minima. Et quas eaque deleniti eum enim qui magnam. Impedit optio nulla qui repellat voluptatem tempore.', 1, 4, 4, 629.00, 69.00, 'fixed', 582.00, 0, '2026-12-07', 1, '2026-06-13 09:54:20', '2026-06-13 09:54:20'),
(42, '', 'Miss Mossie Lemke', 'enim-numquam-asperiores-numquam-ut-vel', 'bdf079c9-a95a-3035-98bb-06342118e748', 'Quibusdam enim ratione voluptates earum. Non saepe incidunt nobis aspernatur a non et. Cumque similique numquam nesciunt libero perspiciatis laboriosam. Non quos delectus minus nam animi.', 1, 7, 5, 922.00, 9.00, 'percentage', 58.00, 0, '2027-02-03', 1, '2026-06-13 09:54:20', '2026-06-13 09:54:20'),
(44, '', 'Frederique Bernier', 'nemo-voluptatibus-in-totam-dolor-dicta-et-est', 'a9ffffee-8cea-3fbf-afbd-9cb469b47e1b', 'Porro impedit adipisci sunt amet et ut quibusdam quo. Nesciunt et excepturi non consectetur vel itaque repellendus. Non id ipsam sunt occaecati consequatur ut. Expedita nihil eius quia unde excepturi id.', 9, 10, 5, 693.00, 48.00, 'percentage', 563.00, 0, '2027-02-08', 1, '2026-06-13 09:54:21', '2026-06-13 09:54:21'),
(45, '', 'Mr. Dejon Morar', 'dolorem-sunt-explicabo-illo-praesentium-molestiae-id-quo', '41eb3707-1ca7-3a6a-b96d-bbcc8b4ba552', 'Quisquam debitis magni at. Culpa quam sunt iure ut vel. Quo aut delectus soluta eum facilis. Quam unde quo nulla ut at facilis nesciunt voluptas.', 6, 5, 3, 512.00, 46.00, 'fixed', 884.00, 6, '2026-11-19', 1, '2026-06-13 09:54:21', '2026-06-13 09:54:24'),
(46, '', 'Taya Walsh', 'et-quibusdam-ut-voluptas-laudantium-sed-est-magni-magnam', '9bed0f00-e1db-366b-8148-693bcb2469f6', 'Voluptatem necessitatibus eaque quos nam optio debitis iste. Porro est quo accusantium ut excepturi. Quas natus est sit ut.', 10, 1, 1, 486.00, 53.00, 'percentage', 896.00, 0, '2026-08-10', 1, '2026-06-13 09:54:21', '2026-06-13 09:54:21'),
(48, '', 'Genoveva Daugherty', 'qui-accusamus-et-minus-expedita-repellendus-non-fugit', 'ee041a62-52ab-35dd-8985-5f69fef9815f', 'Sint adipisci veritatis incidunt ipsa distinctio. Sunt nobis voluptas reprehenderit dolor. Nihil suscipit dignissimos iure corporis rem qui.', 3, 10, 1, 177.00, 30.00, 'percentage', 15.00, 6, '2027-02-12', 1, '2026-06-13 09:54:22', '2026-06-15 06:01:47'),
(49, '', 'Alverta Abbott', 'cupiditate-repellat-nisi-consequatur-accusantium-eos-ex', 'df1923de-4a15-3bac-85ed-ab31a352be31', 'Similique hic corrupti numquam animi. Optio consequatur ea rerum inventore est. Qui esse illum ducimus nihil. Qui id possimus architecto mollitia.', 3, 9, 3, 650.00, 94.00, 'percentage', 121.00, 0, '2027-02-23', 1, '2026-06-13 09:54:22', '2026-06-13 09:54:22'),
(50, '', 'Maegan Schuster', 'tenetur-maiores-facilis-enim-provident', '9e13ec8d-4f39-3f94-ad20-ad9fc451d0bb', 'Nam repellendus a nisi temporibus quia aperiam. Numquam provident velit est quia deleniti alias. Ullam nostrum voluptas aut debitis.', 10, 5, 6, 262.00, 45.00, 'fixed', 159.00, 6, '2026-08-12', 1, '2026-06-13 09:54:22', '2026-06-15 07:07:56');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sub_total` double(10,2) NOT NULL DEFAULT 0.00,
  `tax` double(10,2) NOT NULL DEFAULT 0.00,
  `discount_value` double(10,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(255) NOT NULL DEFAULT 'fixed',
  `shipping` double(10,2) NOT NULL DEFAULT 0.00,
  `grand_total` double(10,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(4) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `purchase_price` double(10,2) NOT NULL DEFAULT 0.00,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2026-06-13 09:53:54', '2026-06-13 09:53:54'),
(2, 'cashier', 'web', '2026-06-13 09:53:58', '2026-06-13 09:53:58'),
(3, 'sales_associate', 'web', '2026-06-13 09:53:58', '2026-06-13 09:53:58');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(3, 2),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
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
(28, 2),
(28, 3),
(29, 1),
(29, 2),
(29, 3),
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
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 2),
(63, 3);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Own Supplier', '012345678', NULL, '2026-06-13 09:53:53', '2026-06-13 09:53:53'),
(2, 'Wyatt Little III', '507.239.2071', '6173 Auer Ports Apt. 791\nWest Jaclynhaven, OK 26723-3517', '2026-06-13 09:54:23', '2026-06-13 09:54:23');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `title`, `short_name`, `created_at`, `updated_at`) VALUES
(1, 'Piece', 'pcs', '2026-06-13 09:53:54', '2026-06-13 09:53:54'),
(2, 'Kilogram', 'kg', '2026-06-13 09:53:54', '2026-06-13 09:53:54'),
(3, 'Liter', 'L', '2026-06-13 09:53:54', '2026-06-13 09:53:54'),
(4, 'Meter', 'm', '2026-06-13 09:53:54', '2026-06-13 09:53:54'),
(5, 'Dozen', 'dz', '2026-06-13 09:53:54', '2026-06-13 09:53:54'),
(6, 'Box', 'box', '2026-06-13 09:53:54', '2026-06-13 09:53:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `is_google_registered` tinyint(1) NOT NULL DEFAULT 0,
  `is_suspended` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `username`, `profile_image`, `google_id`, `is_google_registered`, `is_suspended`, `created_at`, `updated_at`) VALUES
(6, 'Fasi Ullah', 'fasiullah7524@gmail.com', NULL, '$2y$10$sSdCq5230MO5bUzedtX3Hunpeh/XMOxh0RoH.UzwItj7E5ke5H5T.', NULL, '6a2d370043940', 'media/users/1781349666_1689667124_64b64634a7230_logo-icon.png', NULL, 0, 0, '2026-06-13 11:54:56', '2026-06-15 05:58:59'),
(7, 'stockmaster', 'demo123@gmail.com', NULL, '$2y$10$biAXIA/3gi.0iHyuyNlZJeuR6xUtv//yhARDdawij84OKlCx/5sz.', NULL, '6a2f8682af8c8', 'media/users/1781499522_1689667124_64b64634a7230_logo-icon.png', NULL, 0, 0, '2026-06-15 05:58:42', '2026-06-15 05:59:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currencies_code_unique` (`code`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `forget_passwords`
--
ALTER TABLE `forget_passwords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forget_passwords_user_id_unique` (`user_id`);

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
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_transactions_order_id_foreign` (`order_id`),
  ADD KEY `order_transactions_customer_id_foreign` (`customer_id`),
  ADD KEY `order_transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pos_carts`
--
ALTER TABLE `pos_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_carts_product_id_foreign` (`product_id`),
  ADD KEY `pos_carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_unit_id_foreign` (`unit_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_supplier_id_foreign` (`supplier_id`),
  ADD KEY `purchases_user_id_foreign` (`user_id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_items_purchase_id_foreign` (`purchase_id`),
  ADD KEY `purchase_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_phone_unique` (`phone`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forget_passwords`
--
ALTER TABLE `forget_passwords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_transactions`
--
ALTER TABLE `order_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_carts`
--
ALTER TABLE `pos_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD CONSTRAINT `order_transactions_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pos_carts`
--
ALTER TABLE `pos_carts`
  ADD CONSTRAINT `pos_carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pos_carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD CONSTRAINT `purchase_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_items_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

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

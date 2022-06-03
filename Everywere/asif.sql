-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2022 at 07:54 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asif`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'asif@gmail.com', '$2y$10$IUp8sFe6IlAr6SyJrO7osujcWxic2xu.Hpumj0XbnwcFhgevq4y1.', '2021-11-18 17:59:05', '2021-11-19 11:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` int(11) NOT NULL,
  `status` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `is_home`, `status`, `created_at`, `updated_at`) VALUES
(4, 'java', '1649365452.png', 1, 1, '2021-12-23 10:19:00', '2022-04-07 15:04:12'),
(7, 'adidas', '1649365469.png', 1, 1, '2022-04-04 12:16:59', '2022-04-07 15:04:29'),
(8, 'jquary', '1649365493.png', 1, 1, '2022-04-07 15:04:53', '2022-04-07 15:05:31'),
(9, 'wordpress', '1649365511.png', 1, 1, '2022-04-07 15:05:11', '2022-04-07 15:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` enum('Reg','Not-Reg') NOT NULL,
  `qty` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_attr_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `user_type`, `qty`, `product_id`, `product_attr_id`, `added_on`) VALUES
(17, 610772793, 'Not-Reg', 1, 2, 2, '2022-04-29 10:07:11');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_category_id` int(11) NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `parent_category_id`, `category_image`, `is_home`, `created_at`, `updated_at`, `status`) VALUES
(24, 'sports', 'sports', 25, '1649279635.jpg', 1, '2022-01-10 13:54:24', '2022-04-09 12:18:20', 1),
(25, 'man', 'man', 0, '1649279653.jpg', 1, '2022-01-10 13:54:42', '2022-04-06 15:14:13', 1),
(26, 'kids', 'kids', 0, '1649279948.jpg', 1, '2022-01-10 13:54:59', '2022-04-06 15:19:08', 1),
(27, 'new cat', 'new-cat', 26, '1642181105.jpg', 0, '2022-01-12 08:41:27', '2022-01-14 11:25:05', 1),
(28, 'PC', 'pc', 25, '1649279974.png', 1, '2022-04-04 11:51:19', '2022-04-06 15:19:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Black', '2021-11-26 10:12:01', '2021-12-07 11:05:46', 1),
(2, 'Red', '2021-11-26 10:12:51', '2021-12-07 11:05:53', 1),
(3, 'green', '2021-12-07 11:06:28', '2021-12-07 11:06:28', 1),
(5, 'Blue', '2022-04-09 12:28:01', '2022-04-09 12:28:01', 1),
(6, 'White', '2022-04-22 14:23:03', '2022-04-22 14:23:03', 1),
(7, 'yellow', '2022-04-22 14:23:22', '2022-04-22 14:23:22', 1),
(8, 'orange', '2022-04-22 14:23:39', '2022-04-22 14:23:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Value','Per') COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_order_amt` int(11) NOT NULL,
  `is_one_time` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `title`, `code`, `value`, `type`, `min_order_amt`, `is_one_time`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Jan Coupon', 'Jan2021', '140', 'Value', 0, 0, 1, '2021-11-24 10:55:49', '2022-04-22 14:26:33'),
(3, 'New Coupon', 'new', '15', 'Per', 100, 0, 1, '2022-01-10 11:17:16', '2022-04-22 14:26:40'),
(4, 'Eid Specials', 'eid', '20', 'Per', 100, 0, 1, '2022-04-22 14:26:05', '2022-04-22 14:26:05');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gstin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `is_verify` int(11) NOT NULL,
  `is_forgot_password` int(11) DEFAULT NULL,
  `rand_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `password`, `address`, `city`, `state`, `zip`, `company`, `gstin`, `status`, `is_verify`, `is_forgot_password`, `rand_id`, `created_at`, `updated_at`) VALUES
(1, 'Asif Rahman', 'asif@gmail.com', '01785209073', 'asif', 'address1', 'Rajshahi', 'Rajshahi', '111111', 'My Company Name', 'ABCDEGGST', 1, 0, 0, '', '2022-04-03 15:43:23', '2022-04-03 12:10:42'),
(11, 'Asif', 'mdasifrahmanm01@gmail.com', '01785209071', 'eyJpdiI6InBPZFpacGRhcm92MmxEZUppcyt0RUE9PSIsInZhbHVlIjoiWmJadWx4V21TSzZwVWlHTkNYWEU4QT09IiwibWFjIjoiZGM5MmY4NjNlMzBhMzhkYzM5Y2NkOTJlNjZjZjQ3MTdkNzFmOWYzYmIxMGY3NWY3MTc1MGIwMDNiMTdjM2Q4MSIsInRhZyI6IiJ9', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '', '2022-04-17 03:04:19', '2022-04-17 03:04:19'),
(12, 'Asif', 'mdasifrahmanmasif01@gmail.com', '01785209073', 'eyJpdiI6ImZVd2x6R2FuTWhWUmtEUHlIcW0vMXc9PSIsInZhbHVlIjoiOXhjcWJZSE5jbEFESjRLKzRKaWFwdz09IiwibWFjIjoiYzYwMGZlNzliNmQ5MzVkMWRkYjgwNzdjMzlkMGExZDE5MTUxZDM2OGQ3NTY4MGJjZWEwM2Q1YjhkMGFjYmY3YSIsInRhZyI6IiJ9', 'lalpur', 'lalpur', 'Rajshahi', '48', NULL, NULL, 1, 1, 0, '582325620', '2022-04-23 23:18:13', '2022-04-23 23:18:13'),
(16, 'Rizvy Ahmed', 'rizvyahamed91221@gmail.com', '01752079478', 'eyJpdiI6Im9PZFVwY3JSWHJwTnNVM09BcDFkeHc9PSIsInZhbHVlIjoiSXV2ODJ6TldUY2l6RkdrM3VqVFYyQT09IiwibWFjIjoiMmVjZTAzOTVmOTUzYjFjMmVkNzczNWVhZDJkMmZhMmMxOTQ1MTYwZjJmZDE3OGVjNTQ5MGUzOWUwODU4OTA1ZCIsInRhZyI6IiJ9', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '548480487', '2022-04-29 04:41:03', '2022-04-29 04:41:03');

-- --------------------------------------------------------

--
-- Table structure for table `home_banners`
--

CREATE TABLE `home_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_txt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_banners`
--

INSERT INTO `home_banners` (`id`, `image`, `btn_txt`, `btn_link`, `status`, `created_at`, `updated_at`) VALUES
(1, '1649441721.jpg', 'SHOP NOW', 'http://google.com', 1, '2022-04-08 12:15:21', '2022-04-08 12:15:21'),
(2, '1649441915.jpg', NULL, NULL, 1, '2022-04-08 12:18:35', '2022-04-08 12:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2021_11_17_161131_create_admins_table', 1),
(3, '2021_11_18_174923_create_categories_table', 2),
(4, '2021_11_24_155128_create_coupons_table', 3),
(5, '2021_11_25_163810_create_sizes_table', 4),
(6, '2021_11_26_152545_create_colors_table', 5),
(7, '2021_11_26_164148_create_products_table', 6),
(8, '2021_12_22_165729_create_brands_table', 7),
(9, '2021_12_23_142438_create_brand1s_table', 8),
(10, '2021_12_22_180549_create_brands_table', 9),
(11, '2022_01_12_150708_create_taxes_table', 10),
(12, '2022_04_03_153051_create_customers_table', 11),
(13, '2022_04_08_174809_create_home_banners_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` varchar(25) NOT NULL,
  `coupon_code` varchar(50) DEFAULT NULL,
  `coupon_value` int(11) DEFAULT NULL,
  `order_status` int(11) NOT NULL,
  `payment_type` enum('COD','Gateway') NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `payment_id` varchar(50) DEFAULT NULL,
  `txn_id` varchar(100) DEFAULT NULL,
  `total_amt` int(11) NOT NULL,
  `track_details` text DEFAULT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customers_id`, `name`, `email`, `mobile`, `address`, `city`, `state`, `pincode`, `coupon_code`, `coupon_value`, `order_status`, `payment_type`, `payment_status`, `payment_id`, `txn_id`, `total_amt`, `track_details`, `added_on`) VALUES
(1, 11, 'Asif', 'mdasifrahmanmasif01@gmail.com', '01785209073', 'Test', 'test', 'test', '110075', 'new', 60, 3, 'Gateway', 'Success', NULL, NULL, 400, 'on the way', '2022-04-24 06:03:29'),
(5, 11, 'Asif', 'mdasifrahmanmasif01@gmail.com', '01785209071', 'Test', 'test', 'test', '110075', 'new', 60, 1, 'COD', 'Success', NULL, 'a4226d1c129f4bbb9003f2645742ffd0', 400, '5 day delay', '2022-04-27 10:30:42'),
(6, 10, 'Asif', 'mdasifrahmanm01@gmail.com', '01785209071', 'lalpur', 'lalpur', 'Rajshahi', '48', 'eid', 380, 1, 'COD', 'Pending', NULL, NULL, 1900, NULL, '2022-04-27 10:56:37'),
(7, 11, 'Asif', 'mdasifrahmanm01@gmail.com', '01785209071', 'lalpur', 'lalpur', 'Rajshahi', '48', 'eid', 80, 1, 'Gateway', 'Success', 'MOJO2429B05A39275106', 'daef9a1b5a014bd89b48e9e8292c4fe3', 400, NULL, '2022-04-29 09:58:57'),
(8, 11, 'Asif', 'mdasifrahmanm01@gmail.com', '01785209071', 'ishordi', 'pabna', 'rajshahi', '12', 'new', 75, 1, 'Gateway', 'Pending', NULL, '429fb2cb49514606b23bbff1ac03796e', 500, NULL, '2022-05-28 01:30:03'),
(9, 11, 'Asif', 'mdasifrahmanm01@gmail.com', '01785209071', 'lalpur', 'lalpur', 'Rajshahi', '48', 'new', 75, 1, 'COD', 'Pending', NULL, NULL, 500, NULL, '2022-06-03 05:44:20');

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `products_attr_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `orders_id`, `product_id`, `products_attr_id`, `price`, `qty`) VALUES
(1, 1, 2, 2, 500, 1),
(2, 1, 4, 8, 400, 1),
(3, 1, 3, 5, 1000, 1),
(4, 2, 2, 2, 500, 1),
(5, 3, 5, 9, 900, 1),
(6, 16, 2, 2, 500, 1),
(7, 2, 2, 2, 500, 1),
(8, 5, 4, 8, 400, 1),
(9, 6, 5, 9, 900, 1),
(10, 6, 3, 5, 1000, 1),
(11, 7, 4, 8, 400, 1),
(12, 8, 2, 2, 500, 1),
(13, 9, 2, 2, 500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

CREATE TABLE `orders_status` (
  `id` int(11) NOT NULL,
  `orders_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`id`, `orders_status`) VALUES
(1, 'Placed'),
(2, 'On The Way'),
(3, 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `technical_specification` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `uses` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `warranty` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `lead_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `is_promo` int(11) NOT NULL,
  `is_featured` int(11) NOT NULL,
  `is_discounted` int(11) NOT NULL,
  `is_tranding` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `image`, `slug`, `brand`, `model`, `short_desc`, `desc`, `keyword`, `technical_specification`, `uses`, `warranty`, `lead_time`, `tax_id`, `is_promo`, `is_featured`, `is_discounted`, `is_tranding`, `status`, `created_at`, `updated_at`) VALUES
(2, 24, 'White T-shirt', '1649967287.png', '4', '4', '5', '<p>2</p>', '<p>4</p>', '2', '<p>3</p>', '1', 'one month', '2-3days', 1, 1, 1, 1, 1, 1, '2021-12-23 10:50:21', '2022-04-15 11:17:10'),
(3, 25, 'T-shirt', '1649361527.png', '11', '7', '21', '<p>good proudct</p>', '<p>32</p>', 'abc', '<p>231</p>', '123', '122', '3-4days', 1, 0, 0, 0, 1, 1, '2022-04-07 13:58:47', '2022-04-29 16:53:43'),
(4, 26, 'T-shirt kid', '1649966967.png', '10', '7', '4', '<p>Nice T-shirt</p>', '<p>awesome</p>', 'limited stock', '<p>abc</p>', 'abc', '1year', '3days', 1, 0, 1, 0, 1, 1, '2022-04-14 14:09:27', '2022-04-14 15:23:52'),
(5, 28, 'Lady Dress', '1650046201.png', '12', '8', '3', '<p>new callection&nbsp;</p>', '<p>limited stock&nbsp;</p>', 'black', '<p>abcd</p>', 'abcd', '8month', '3days', 1, 1, 0, 1, 0, 1, '2022-04-15 12:10:02', '2022-04-15 12:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `products_attr`
--

CREATE TABLE `products_attr` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `attr_image` varchar(255) NOT NULL,
  `mrp` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_attr`
--

INSERT INTO `products_attr` (`id`, `products_id`, `sku`, `attr_image`, `mrp`, `price`, `qty`, `size_id`, `color_id`) VALUES
(1, 1, '2', '756874987.png', 4, 2, 4, 1, 1),
(2, 2, 'sad', '834508227.png', 900, 500, 7, 4, 1),
(5, 3, '34', '709589510.png', 1500, 1000, 5, 2, 1),
(6, 2, 'Polo T-Shirt', '364130054.png', 1200, 1000, 5, 1, 5),
(7, 2, 'Shirt', '689891222.png', 1500, 700, 3, 3, 2),
(8, 4, 'abcd', '630403908.png', 700, 400, 4, 2, 5),
(9, 5, 'abc', '523248789.png', 1200, 900, 8, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `products_id`, `images`) VALUES
(1, 1, '846881541.jpg'),
(7, 2, '234530550.png'),
(8, 2, '556545834.png'),
(9, 4, '635995223.png'),
(10, 5, '614274085.png');

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `rating` varchar(20) NOT NULL,
  `review` text NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`id`, `customer_id`, `products_id`, `rating`, `review`, `status`, `added_on`) VALUES
(1, 11, 2, 'Very Good', 'wow T-shirt', 1, '2022-04-29 09:56:28'),
(2, 11, 3, 'Fantastic', 'i like this color', 1, '2022-04-29 09:58:02');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size`, `status`, `created_at`, `updated_at`) VALUES
(1, 'XXL', 1, '2021-11-25 11:15:15', '2021-11-25 11:15:28'),
(2, 'XL', 1, '2021-11-25 11:15:36', '2022-01-03 13:30:15'),
(3, 'M', 1, '2021-11-25 11:15:53', '2021-11-25 11:15:53'),
(4, 'L', 1, '2021-12-22 11:13:36', '2021-12-22 11:13:36'),
(5, 'S', 1, '2022-04-22 14:21:39', '2022-04-22 14:22:11'),
(6, 'XXXL', 1, '2022-04-22 14:22:00', '2022-04-22 14:22:00');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tax_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `tax_desc`, `tax_value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'GST 18%', '18', 1, '2022-01-12 09:52:07', '2022-01-12 10:20:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_banners`
--
ALTER TABLE `home_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_attr`
--
ALTER TABLE `products_attr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `home_banners`
--
ALTER TABLE `home_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders_status`
--
ALTER TABLE `orders_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products_attr`
--
ALTER TABLE `products_attr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 16, 2022 at 10:45 PM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bazarkartcom_maindb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_user` tinyint(1) DEFAULT NULL,
  `main_menu` tinyint(1) DEFAULT NULL,
  `product` tinyint(1) DEFAULT NULL,
  `offer` tinyint(1) DEFAULT NULL,
  `collection` tinyint(1) DEFAULT NULL,
  `order_history` tinyint(1) DEFAULT NULL,
  `company` tinyint(1) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `address`, `status`, `remember_token`, `created_at`, `updated_at`, `admin_user`, `main_menu`, `product`, `offer`, `collection`, `order_history`, `company`, `image`) VALUES
(1, 'Ms. Ernestina Jacobi IV', 'quicktechitltd@gmail.com', '2022-03-29 05:04:25', '$2y$10$97DrqJQUP4v/oR3NYbajOeHb9EIkvvRsgnlZDBr93FBekKz2AQcFO', 'bRVSovi6OE', 's1UwZyAOfe', 1, 'eguOtDpuXRJu4jIjVPV1IcwyTTGZ89EgZqsMQSgZGQO9334G1IqX3pdhU34d', '2022-03-29 05:04:25', '2022-04-03 05:01:40', 1, 1, 1, 1, 1, 1, 1, NULL),
(2, 'Men', 'user1@gmail.com', NULL, '$2y$10$YwZ.qgNqVrrkrX5ndU1P6eN0vBM6ulNFtrM4V/ZjYCA6B8LLr5E5O', '+8801756232223', 'q', 1, NULL, '2022-04-03 05:06:14', '2022-04-03 05:06:14', 1, 1, 1, 1, 1, 1, 1, ''),
(3, 'Md Moniruzzaman Rukan', 'rukanzaman23bd@gmail.com', NULL, '$2y$10$Hupnwmhj4xiVnBl6qBV1ZeVs3yEn8h0qYjVHZFrsZsgCWazwrBSum', '01635825016', 'tstts', 1, NULL, '2022-06-08 18:42:42', '2022-06-08 18:42:42', 1, 1, 1, 1, 1, 1, 1, 'images/admin/1735066713741750.png'),
(4, 'SAHIN ALAM', 'SAHINAL4321@GMAIL.COM', NULL, '$2y$10$oU/pBwoL6DTYgLR3e6uasuRrew9I/IKczQt431SiLNpqgA8uXIp.G', '01643844254', 'DHAKA, BANGLADESH', 1, NULL, '2022-06-29 19:49:09', '2022-06-29 19:49:09', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'images/admin/1736973431436819.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `banner_collections`
--

CREATE TABLE `banner_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_collection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_collections`
--

INSERT INTO `banner_collections` (`id`, `image`, `banner_collection`, `status`, `created_at`, `updated_at`) VALUES
(1, 'images/banner_collection/1729431673315883.jpg', '1', 1, NULL, '2022-04-07 13:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mall` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `image`, `brand`, `brand_title`, `mall`, `created_at`, `updated_at`) VALUES
(1, 'images/brand/1733522501715050.webp', 'Pran', 'Pran', 1, NULL, '2022-05-22 17:38:06'),
(2, 'images/brand/1733522509955044.webp', 'Samsung', 'Samsung', 1, '2022-04-07 15:51:47', '2022-05-22 17:38:14'),
(3, 'images/brand/1733522517911345.webp', 'APPLE', 'Apple', 1, '2022-04-07 15:52:53', '2022-05-22 17:38:22'),
(4, 'images/brand/1733522527689131.webp', 'MI', 'mi', 1, '2022-04-07 15:53:58', '2022-05-22 17:38:31');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `image`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Electronic Device', 'electronic-device', 1, 'images/main_menu/category/1728715995819996.webp', 'fa-swimmer', '2022-03-30 03:20:45', '2022-05-23 10:49:53'),
(2, 'Electronic Accessories', 'electronic-accessories', 1, 'images/main_menu/category/1728716031508046.webp', 'fa-swimmer', '2022-03-30 03:21:19', '2022-05-23 10:50:16'),
(3, 'Tv and Home Appliances', 'tv-and-home-appliances', 1, 'images/main_menu/category/1728716047325643.webp', 'fa-swimmer', '2022-03-30 03:21:34', '2022-05-23 10:50:38'),
(4, 'Health and Beauty', 'health-and-beauty', 1, 'images/main_menu/category/1729435483950854.webp', 'fa-swimmer', '2022-04-07 14:56:42', '2022-05-23 10:51:00'),
(5, 'Babies and Toys', 'babies-and-toys', 1, 'images/main_menu/category/1729435825229471.webp', 'fa-swimmer', '2022-04-07 15:02:08', '2022-05-23 10:51:28'),
(7, 'Home Accessories', 'home-accessories', 1, 'images/main_menu/category/1729436231742864.webp', 'fa-swimmer', '2022-04-07 15:08:36', '2022-05-23 10:52:14'),
(8, 'Women Fashion', 'women-fashion', 1, 'images/main_menu/category/1729436454265669.webp', 'fa-swimmer', '2022-04-07 15:12:08', '2022-05-23 10:52:38'),
(9, 'Mans Fashion', 'mans-fashion', 1, 'images/main_menu/category/1729436532512930.webp', 'fa-swimmer', '2022-04-07 15:13:22', '2022-05-23 10:52:59'),
(10, 'Watches & Accessories', 'watches-accessories', 1, 'images/main_menu/category/1729436748039567.webp', 'fa-swimmer', '2022-04-07 15:16:48', '2022-05-23 10:58:09'),
(11, 'Home & Life Style', 'home-life-style', 1, 'images/main_menu/category/1729436812591571.webp', 'fa-swimmer', '2022-04-07 15:17:50', '2022-05-23 10:58:48'),
(12, 'TV', 'tv', 0, 'images/main_menu/category/1729436997463885.webp', 'fa-swimmer', '2022-04-07 15:20:46', '2022-05-23 10:59:22'),
(13, 'Mr. Alexgender Flex', 'mr-alexgender-flex', 0, 'images/main_menu/category/1730613372638661.jpg', 'fa-swimmer', '2022-04-20 01:58:45', '2022-05-23 10:59:16'),
(14, 'Grocery', 'grocery', 1, 'images/main_menu/category/1730619302816405.webp', 'fa-swimmer', '2022-04-20 03:33:00', '2022-04-20 03:33:00'),
(15, 'Fashion', 'fashion', 1, 'images/main_menu/category/1733513624020619.png', 'rr', '2022-05-22 15:17:00', '2022-05-22 15:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `category_id`, `subcategory_id`, `name`, `slug`, `status`, `image`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'MM', 'mm', 1, 'images/main_menu/childcategory/1728717644397214.webp', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '2022-03-30 03:46:57', '2022-03-30 03:46:57'),
(2, 2, 3, 'qq', 'qq', 1, 'images/main_menu/childcategory/1730711826184654.webp', NULL, '2022-04-21 04:03:37', '2022-04-21 04:03:37'),
(3, 2, 3, 'Contrary to popular', 'contrary-to-popular', 1, 'images/main_menu/childcategory/1730711982841455.webp', NULL, '2022-04-21 04:06:07', '2022-04-21 04:06:07'),
(4, 2, 4, 'dd', 'dd', 1, 'images/main_menu/childcategory/1730712444597034.webp', NULL, '2022-04-21 04:13:27', '2022-04-21 04:13:27'),
(5, 15, 15, 'T-shart', 't-shart', 1, 'images/main_menu/childcategory/1733514606399318.png', NULL, '2022-05-22 15:32:37', '2022-05-22 15:32:37'),
(6, 15, 15, 'Pant', 'pant', 1, 'images/main_menu/childcategory/1733514641106346.png', NULL, '2022-05-22 15:33:10', '2022-05-22 15:33:10'),
(7, 15, 16, 'Sharee', 'sharee', 1, 'images/main_menu/childcategory/1733514670516199.png', NULL, '2022-05-22 15:33:38', '2022-05-22 15:33:38'),
(8, 15, 16, 'Long', 'long', 1, 'images/main_menu/childcategory/1733514699366357.png', NULL, '2022-05-22 15:34:05', '2022-05-22 15:34:05'),
(9, 15, 17, 'Lungi', 'lungi', 1, 'images/main_menu/childcategory/1733514732731761.png', NULL, '2022-05-22 15:34:37', '2022-05-22 15:34:37'),
(10, 15, 17, 'Shirt', 'shirt', 1, 'images/main_menu/childcategory/1733514770022435.png', NULL, '2022-05-22 15:35:13', '2022-05-22 15:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_code` varchar(111) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color_code`, `color`, `created_at`, `updated_at`) VALUES
(1, '#000000', 'Black', '2022-03-30 03:34:01', '2022-03-30 03:34:01'),
(2, '#ff00bb', 'Pink', '2022-03-30 03:34:01', '2022-03-30 03:34:01'),
(3, '#ff0000', 'Red', '2022-03-30 03:34:01', '2022-03-30 03:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `color_product`
--

CREATE TABLE `color_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `color_product`
--

INSERT INTO `color_product` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 2, 1, NULL, NULL),
(5, 2, 2, NULL, NULL),
(6, 2, 3, NULL, NULL),
(7, 3, 1, NULL, NULL),
(8, 3, 2, NULL, NULL),
(9, 3, 3, NULL, NULL),
(10, 4, 1, NULL, NULL),
(11, 4, 2, NULL, NULL),
(12, 4, 3, NULL, NULL),
(13, 5, 1, NULL, NULL),
(14, 5, 2, NULL, NULL),
(15, 5, 3, NULL, NULL),
(16, 6, 1, NULL, NULL),
(17, 6, 2, NULL, NULL),
(18, 6, 3, NULL, NULL),
(19, 7, 1, NULL, NULL),
(20, 7, 2, NULL, NULL),
(21, 7, 3, NULL, NULL),
(22, 8, 1, NULL, NULL),
(23, 8, 2, NULL, NULL),
(24, 8, 3, NULL, NULL),
(25, 9, 1, NULL, NULL),
(26, 9, 2, NULL, NULL),
(27, 9, 3, NULL, NULL),
(28, 10, 1, NULL, NULL),
(29, 10, 2, NULL, NULL),
(30, 10, 3, NULL, NULL),
(31, 11, 1, NULL, NULL),
(32, 11, 2, NULL, NULL),
(33, 11, 3, NULL, NULL),
(34, 12, 1, NULL, NULL),
(35, 12, 2, NULL, NULL),
(36, 12, 3, NULL, NULL),
(37, 13, 1, NULL, NULL),
(38, 13, 2, NULL, NULL),
(39, 13, 3, NULL, NULL),
(40, 14, 1, NULL, NULL),
(41, 14, 2, NULL, NULL),
(42, 14, 3, NULL, NULL),
(43, 15, 1, NULL, NULL),
(44, 15, 2, NULL, NULL),
(45, 15, 3, NULL, NULL),
(46, 16, 1, NULL, NULL),
(47, 16, 2, NULL, NULL),
(48, 16, 3, NULL, NULL),
(49, 17, 1, NULL, NULL),
(50, 17, 2, NULL, NULL),
(51, 17, 3, NULL, NULL),
(52, 18, 1, NULL, NULL),
(53, 18, 2, NULL, NULL),
(54, 18, 3, NULL, NULL),
(55, 19, 1, NULL, NULL),
(56, 20, 1, NULL, NULL),
(57, 21, 1, NULL, NULL),
(58, 22, 1, NULL, NULL),
(59, 23, 2, NULL, NULL),
(60, 24, 3, NULL, NULL),
(61, 25, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_infos`
--

CREATE TABLE `company_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_Three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_infos`
--

INSERT INTO `company_infos` (`id`, `about`, `address`, `phone_one`, `phone_two`, `phone_Three`, `email`, `logo`, `favicon`, `app`, `wallet`, `app_link`, `wallet_link`, `facebook`, `twitter`, `instagram`, `youtube`, `pinterest`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '54560545045', '54560545045', NULL, 'frenzy@gmail.com', 'images/logo/1728721449189670.png', 'images/logo/1728721449194465.png', 'images/logo/1730895623917123.png', 'images/logo/1734522192363064.png', NULL, NULL, '###', '###', '###', '###', '###', '###', '2022-03-14 03:18:20', '2022-06-02 18:27:46');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_date` date NOT NULL,
  `coupon_type` int(10) UNSIGNED NOT NULL,
  `coupon_discount` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `coupon_date`, `coupon_type`, `coupon_discount`, `created_at`, `updated_at`) VALUES
(1, 'asdfgh', '2022-06-30', 2, 50, '2022-04-02 03:09:48', '2022-04-02 03:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sales`
--

CREATE TABLE `flash_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `end` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sales`
--

INSERT INTO `flash_sales` (`id`, `end`, `created_at`, `updated_at`) VALUES
(1, '2023-05-10', '2022-04-03 03:13:54', '2022-05-22 13:12:21');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_29_053710_create_admins_table', 1),
(6, '2022_03_29_053817_create_company_infos_table', 1),
(7, '2022_03_29_053906_create_categories_table', 1),
(8, '2022_03_29_054004_create_subcategories_table', 1),
(9, '2022_03_29_054038_create_childcategories_table', 1),
(10, '2022_03_29_054216_create_products_table', 1),
(11, '2022_03_29_054248_create_colors_table', 1),
(12, '2022_03_29_054348_create_sizes_table', 1),
(13, '2022_03_29_054415_create_tags_table', 1),
(14, '2022_03_29_054500_create_rating_reviews_table', 1),
(15, '2022_03_29_054530_create_product_images_table', 1),
(16, '2022_03_29_054607_create_brands_table', 1),
(17, '2022_03_29_054743_create_coupons_table', 1),
(18, '2022_03_29_054822_create_orders_table', 1),
(19, '2022_03_29_054916_create_order_products_table', 1),
(20, '2022_03_29_060047_create_sliders_table', 1),
(21, '2022_03_29_060130_create_shipping_charges_table', 1),
(22, '2022_03_29_060258_create_product_collections_table', 1),
(23, '2022_03_29_060537_create_product_voutchers_table', 1),
(24, '2022_03_29_060537_create_product_vouchers_table', 2),
(25, '2022_04_02_083431_create_wishlists_table', 2),
(26, '2022_04_02_083851_create_user_addresses_table', 3),
(27, '2022_04_02_110533_create_pages_table', 4),
(28, '2022_04_03_032050_create_banner_collections_table', 5),
(29, '2022_04_03_090119_create_flash_sales_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `total_price` int(10) UNSIGNED NOT NULL,
  `subtotal_price` int(10) UNSIGNED NOT NULL,
  `discount_price` int(10) UNSIGNED NOT NULL,
  `paid_amount` int(10) UNSIGNED NOT NULL,
  `shipping_charge` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `additional_charge` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N/A',
  `coupon_discount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'COD',
  `payment_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `total_price`, `subtotal_price`, `discount_price`, `paid_amount`, `shipping_charge`, `additional_charge`, `coupon_code`, `coupon_discount`, `payment_type`, `payment_number`, `trx_id`, `name`, `phone`, `email`, `city`, `area`, `zip_code`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 246, 216, 30, 201, 35, 0, 'asdfgh', 50, 'COD', NULL, NULL, 'Mr. Alexgender Flex', '+8801756232223', 'quicktech.foisal@gmail.com', 'Dhaka', 'Dhaka', '1216', 'd', '2022-04-02 03:19:32', '2022-05-29 13:49:56'),
(2, 1, 1, 246, 216, 30, 201, 35, 0, 'asdfgh', 50, 'COD', NULL, NULL, 'Mr. Alexgender Flex', '+8801756232223', 'quicktech.foisal@gmail.com', 'Dhaka', 'Dhaka', '1216', 'd', '2022-04-02 03:19:51', '2022-04-02 03:19:51'),
(3, 1, 1, 246, 216, 30, 201, 35, 0, 'asdfgh', 50, 'COD', NULL, NULL, 'Mr. Alexgender Flex', '+8801756232223', 'quicktech.foisal@gmail.com', 'Dhaka', 'Dhaka', '1216', 'd', '2022-04-02 03:20:06', '2022-04-02 03:20:06'),
(4, 1, 1, 246, 216, 30, 201, 35, 0, 'asdfgh', 50, 'COD', NULL, NULL, 'Mr. Alexgender Flex', '+8801756232223', 'quicktech.foisal@gmail.com', 'Dhaka', 'Dhaka', '1216', 'd', '2022-04-02 03:20:14', '2022-04-02 03:20:14'),
(5, 1, 1, 246, 216, 30, 201, 35, 0, 'asdfgh', 50, 'COD', NULL, NULL, 'Mr. Alexgender Flex', '+8801756232223', 'quicktech.foisal@gmail.com', 'Dhaka', 'Dhaka', '1216', 'd', '2022-04-02 03:20:23', '2022-04-02 03:20:23'),
(6, 1, 1, 246, 216, 30, 201, 35, 0, 'asdfgh', 50, 'COD', NULL, NULL, 'Mr. Alexgender Flex', '+8801756232223', 'quicktech.foisal@gmail.com', 'Dhaka', 'Dhaka', '1216', 'd', '2022-04-02 03:20:30', '2022-04-02 03:20:30'),
(7, 1, 1, 246, 216, 30, 201, 35, 0, 'asdfgh', 50, 'COD', NULL, NULL, 'Mr. Alexgender Flex', '+8801756232223', 'quicktech.foisal@gmail.com', 'Dhaka', 'Dhaka', '1216', 'd', '2022-04-02 03:22:26', '2022-04-02 03:22:26'),
(8, 1, 0, 12345, 122, 12223, 156, 35, 0, 'none', 0, 'COD', NULL, NULL, 'Mr. Alexgender Flex', '+8801756232223', 'quicktech.foisal@gmail.com', 'Dhaka', 'Dhaka', '1216', 'd', '2022-04-03 23:05:11', '2022-05-29 13:50:17'),
(9, 1, 0, 44, 25, 19, 60, 35, 0, 'none', 0, 'COD', NULL, NULL, 'Mr. Alexgender Flex', '+8801756232223', 'quicktech.foisal@gmail.com', 'Dhaka', 'Dhaka', '1216', 'd', '2022-05-29 12:09:59', '2022-05-29 13:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `qty`, `unit_price`, `created_at`, `updated_at`) VALUES
(1, 1, 11, 2, 108, '2022-04-02 03:19:32', '2022-04-02 03:19:32'),
(2, 2, 11, 2, 108, '2022-04-02 03:19:51', '2022-04-02 03:19:51'),
(3, 8, 1, 1, 122, '2022-04-03 23:05:11', '2022-04-03 23:05:11'),
(4, 9, 20, 1, 25, '2022-05-29 12:09:59', '2022-05-29 12:09:59');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Privacy', 'privacy', '<p>Privacy details</p>', 1, '2022-04-02 05:11:33', '2022-04-02 05:11:33'),
(2, 'Condition', 'condition', '<p>Condition details</p>', 0, '2022-04-02 05:11:50', '2022-04-02 05:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `category_id` int(10) UNSIGNED NOT NULL,
  `subcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `childcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buying` int(11) DEFAULT NULL,
  `selling` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `discount_price` int(11) DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `specification` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_charge` int(111) DEFAULT NULL,
  `flash_deal` tinyint(1) DEFAULT NULL,
  `low_price` tinyint(1) DEFAULT NULL,
  `flash_sale` tinyint(1) DEFAULT NULL,
  `fashion` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `status`, `name`, `slug`, `buying`, `selling`, `discount`, `discount_price`, `quantity`, `details`, `specification`, `video`, `additional_charge`, `flash_deal`, `low_price`, `flash_sale`, `fashion`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 'Lorem Ipsum is simply dummy text', 'loremipsum-is-simply-dummy-text', 1234, 12, 12, 122, 11, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', NULL, NULL, 0, 1, 1, NULL, '2022-03-31 04:16:29', '2022-04-03 23:05:11'),
(2, 1, 1, 1, 1, 1, 'Lorem Ipsum is simply dummy text', 'lorem-ipsum-is-simply-dumm-text', 1234, 12345, NULL, NULL, 12, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', NULL, NULL, 0, 0, 0, NULL, '2022-03-31 04:16:29', '2022-03-31 04:16:29'),
(3, 1, 1, 1, 1, 1, 'Lorem Ipsum is simply dummy text', 'lorem-psum-is-simply-dummy-text', 1234, 12345, NULL, NULL, 12, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', NULL, NULL, 0, 0, 0, NULL, '2022-03-31 04:16:30', '2022-03-31 04:16:30'),
(4, 1, 1, 1, 1, 1, 'Lorem Ipsum is simply dummy text', 'lorem-ipsum--simply-dummy-text', 1234, 12345, NULL, NULL, 12, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', NULL, NULL, 0, 0, 0, NULL, '2022-03-31 04:16:30', '2022-03-31 04:16:30'),
(5, 1, 1, 1, 1, 1, 'Lorem Ipsum is simply dummy text', 'lorem-ipsum-is-simply-dummy-text', 1234, 12345, NULL, NULL, 12, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', NULL, NULL, 0, 0, 0, NULL, '2022-03-31 04:16:30', '2022-03-31 04:16:30'),
(6, 1, 1, 1, 1, 1, 'Lorem Ipsum is simply dummy text', 'lorem-ipsum-is-simply-dummy-text', 1234, 12345, NULL, NULL, 12, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', 'https://www.youtube.com/embed/va1oiojnGrA', NULL, 1, 1, 1, 1, '2022-03-31 04:16:31', '2022-04-20 04:20:27'),
(7, 1, 1, 1, 1, 1, 'Lorem Ipsum is simply dummy text', 'lorem-ipsum-isimply-dummy-text', 1234, 12345, NULL, NULL, 12, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', NULL, NULL, 0, 0, 0, NULL, '2022-03-31 04:16:31', '2022-03-31 04:16:31'),
(8, 1, 1, 1, 1, 1, 'Lorem Ipsum is simply dummy text', 'lorem-ium-is-simply-dummy-text', 1234, 12345, NULL, NULL, 12, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', NULL, NULL, 0, 0, 0, NULL, '2022-03-31 04:16:31', '2022-03-31 04:16:31'),
(9, 1, 1, 1, 1, 1, 'Lorem Ipsum is simply dummy text', 'lem-ipsum-is-simply-dummy-text', 1234, 12345, NULL, NULL, 12, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', NULL, NULL, 0, 0, 0, NULL, '2022-03-31 04:16:31', '2022-03-31 04:16:31'),
(10, 1, 1, 1, 1, 1, 'Lorem Ipsum is simply dummy text', 'lor-ipsum-is-simply-dummy-text', 1234, 12345, NULL, NULL, 12, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', NULL, NULL, 0, 0, 0, NULL, '2022-03-31 04:16:32', '2022-03-31 04:16:32'),
(11, 2, NULL, NULL, 1, 1, 'Lorem Ipsum is simply dummy text', 'lorem-ipsus-simply-dummy-text', 12, 123, 12, 108, 10, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', NULL, NULL, 0, 0, 0, NULL, '2022-03-31 04:17:40', '2022-04-02 03:19:51'),
(12, 2, NULL, NULL, 1, 1, 'Lorem Ipsum is simply dummy text', 'lorem-ipsum-is-simy-dummy-text', 12, 123, 12, 108, 12, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', NULL, NULL, 0, 0, 0, NULL, '2022-03-31 04:17:40', '2022-03-31 04:17:40'),
(13, 2, 3, NULL, 1, 1, 'Lorem Ipsum is simply dummy text', 'lorem-ipsum-is-simply-dummy-text', 12, 123, 12, 108, 12, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', NULL, NULL, 0, 0, 0, NULL, '2022-03-31 04:17:40', '2022-04-03 00:47:57'),
(14, 2, NULL, NULL, 1, 1, 'Lorem Ipsum is simply dummy text', 'loreipsum-is-simply-dummy-text', 12, 123, 12, 108, 12, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', NULL, NULL, 0, 0, 0, NULL, '2022-03-31 04:17:41', '2022-03-31 04:17:41'),
(15, 2, NULL, NULL, 1, 1, 'Lorem Ipsum is simply dummy text', 'orem-ipsum-is-simply-dummy-text', 12, 123, 12, 108, 12, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', NULL, NULL, 0, 0, 0, NULL, '2022-03-31 04:17:41', '2022-03-31 04:17:41'),
(16, 2, 3, NULL, 1, 1, 'Lorem Ipsum is simply dummy text', 'lorem-ipsum-is-simply-dummy-text', 12, 123, NULL, NULL, 12, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', NULL, NULL, 1, 1, NULL, NULL, '2022-03-31 04:17:42', '2022-04-03 01:26:34'),
(17, 2, 3, NULL, 1, 1, 'Esolo ZANZEA Muslimah Women Muslim Blouse Tops Casual Plain Long Sleeve Layered Shirt MLS', 'esolo-zanzea-muslimah-women-muslim-blouse-tops-casual-plain-long-sleeve-layered-shirt-mls', 44, 444, 4, 426, 4, '<p>44</p>', '<p>44</p>', NULL, NULL, 1, 1, 1, NULL, '2022-04-07 14:45:45', '2022-04-07 14:58:18'),
(18, 2, 3, NULL, 1, 1, 'Esolo ZANZEA Muslimah Women Muslim Casual Loose Evening Printed Ladies 3/4 Sleeves Blouse Tops Shirt KRS', 'esolo-zanzea-muslimah-women-muslim-casual-loose-evening-printed-ladies-34-sleeves-blouse-tops-shirt-krs', 44, 44, 44, 25, 44, '<p>44</p>', '<p>44</p>', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-07 14:46:54', '2022-04-07 14:46:54'),
(19, 2, 3, NULL, 1, 1, 'Esolo ZANZEA Women Muslim Long Sleeve Sweatshirt Striped Patchwork Casual Loose Top Jumper Blouse KRS', 'esolo-zanzea-women-muslim-long-sleeve-sweatshirt-striped-patchwork-casual-loose-top-jumper-blouse-krs', 44, 44, 44, 25, 44, '<p>44</p>', '<p>44</p>', NULL, NULL, 1, 1, 1, NULL, '2022-04-07 14:47:40', '2022-04-07 14:57:54'),
(20, 2, 3, NULL, 1, 1, 'Esolo ZANZEA Women Muslim Pleated Wide Leg Pants Skirts Drawstring High Waist Trousers KRS', 'esolo-zanzea-women-muslim-pleated-wide-leg-pants-skirts-drawstring-high-waist-trousers-krs', 44, 44, 44, 25, 43, '<p>44</p>', '<p>44</p>', NULL, NULL, 1, 1, 1, NULL, '2022-04-07 14:48:49', '2022-05-29 12:09:59'),
(21, 2, 3, NULL, 1, 1, 'Esolo ZANZEA Womens Muslim Evening Silky Satin Elastic Waist Skirt Party Club Maxi Dress', 'esolo-zanzea-womens-muslim-evening-silky-satin-elastic-waist-skirt-party-club-maxi-dress', 44, 44, 44, 25, 44, '<p>44</p>', '<p>44</p>', NULL, NULL, 1, 1, 1, NULL, '2022-04-07 14:49:42', '2022-04-07 14:57:32'),
(22, 2, 3, NULL, 1, 1, 'Esolo ZANZEA Women Muslim Pleated Wide Leg Pants Skirts Drawstring High Waist Trousers KRS', 'esolo-zanzea-women-muslim-pleated-wide-leg-pants-skirts-drawstring-high-waist-trousers-krs', 11, 11, 11, 10, 11, '<p>11</p>', '<p>11</p>', NULL, NULL, 1, 1, 1, NULL, '2022-04-07 15:25:01', '2022-04-07 15:25:01'),
(23, 2, 3, NULL, 1, 1, 'Women\'s Fashion Side Knot High Waist Midi Skirt Large Size', 'womens-fashion-side-knot-high-waist-midi-skirt-large-size', 11, 11, 11, 10, 11, '<p>11</p>', '<p>11</p>', NULL, NULL, 1, 1, NULL, NULL, '2022-04-07 15:26:11', '2022-04-07 15:26:11'),
(24, 2, 3, NULL, 1, 1, 'Rulfepy ZANZEA Women Soft Female Wide Leg Loose Solid Trousers High Waist Lace-up Casual Pant', 'rulfepy-zanzea-women-soft-female-wide-leg-loose-solid-trousers-high-waist-lace-up-casual-pant', 11, 11, 11, 10, 11, '<p>11</p>', '<p>11</p>', NULL, NULL, 1, 1, 1, NULL, '2022-04-07 15:27:15', '2022-04-07 15:27:15'),
(25, 2, 3, NULL, 1, 1, 'Fancystyle ZANZEA Women Elasticated Casual Loose Palazzo Pants High Waist Trousers Plus', 'fancystyle-zanzea-women-elasticated-casual-loose-palazzo-pants-high-waist-trousers-plus', 11, 11, 11, 10, 11, '<p>111</p>', '<p>11</p>', 'https://www.youtube.com/embed/Zv11L-ZfrSg', NULL, 1, 1, 1, 1, '2022-04-07 15:29:26', '2022-04-20 04:41:31');

-- --------------------------------------------------------

--
-- Table structure for table `product_collections`
--

CREATE TABLE `product_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_collection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_collections`
--

INSERT INTO `product_collections` (`id`, `name`, `slug`, `product_collection`, `created_at`, `updated_at`) VALUES
(1, 'Contrary to popular', 'contrary-to-popular', '1,2,3', '2022-04-02 23:48:26', '2022-04-02 23:48:26');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'images/product/16487217891.webp', '2022-03-31 04:16:29', '2022-03-31 04:16:29'),
(2, 1, 'images/product/164872178976.webp', '2022-03-31 04:16:29', '2022-03-31 04:16:29'),
(3, 1, 'images/product/16487217894.webp', '2022-03-31 04:16:29', '2022-03-31 04:16:29'),
(4, 1, 'images/product/164872178985.webp', '2022-03-31 04:16:29', '2022-03-31 04:16:29'),
(5, 2, 'images/product/164872178930.webp', '2022-03-31 04:16:30', '2022-03-31 04:16:30'),
(6, 2, 'images/product/164872178938.webp', '2022-03-31 04:16:30', '2022-03-31 04:16:30'),
(7, 2, 'images/product/164872179045.webp', '2022-03-31 04:16:30', '2022-03-31 04:16:30'),
(8, 2, 'images/product/164872179091.webp', '2022-03-31 04:16:30', '2022-03-31 04:16:30'),
(9, 3, 'images/product/164872179084.webp', '2022-03-31 04:16:30', '2022-03-31 04:16:30'),
(10, 3, 'images/product/164872179058.webp', '2022-03-31 04:16:30', '2022-03-31 04:16:30'),
(11, 3, 'images/product/164872179013.webp', '2022-03-31 04:16:30', '2022-03-31 04:16:30'),
(12, 3, 'images/product/164872179090.webp', '2022-03-31 04:16:30', '2022-03-31 04:16:30'),
(13, 4, 'images/product/164872179066.webp', '2022-03-31 04:16:30', '2022-03-31 04:16:30'),
(14, 4, 'images/product/164872179014.webp', '2022-03-31 04:16:30', '2022-03-31 04:16:30'),
(15, 4, 'images/product/16487217901.webp', '2022-03-31 04:16:30', '2022-03-31 04:16:30'),
(16, 4, 'images/product/164872179073.webp', '2022-03-31 04:16:30', '2022-03-31 04:16:30'),
(17, 5, 'images/product/164872179023.webp', '2022-03-31 04:16:30', '2022-03-31 04:16:30'),
(18, 5, 'images/product/164872179033.webp', '2022-03-31 04:16:30', '2022-03-31 04:16:30'),
(19, 5, 'images/product/164872179058.webp', '2022-03-31 04:16:30', '2022-03-31 04:16:30'),
(20, 5, 'images/product/164872179054.webp', '2022-03-31 04:16:30', '2022-03-31 04:16:30'),
(21, 6, 'images/product/164872179128.webp', '2022-03-31 04:16:31', '2022-03-31 04:16:31'),
(22, 6, 'images/product/164872179163.webp', '2022-03-31 04:16:31', '2022-03-31 04:16:31'),
(23, 6, 'images/product/16487217912.webp', '2022-03-31 04:16:31', '2022-03-31 04:16:31'),
(24, 6, 'images/product/164872179190.webp', '2022-03-31 04:16:31', '2022-03-31 04:16:31'),
(25, 7, 'images/product/164872179116.webp', '2022-03-31 04:16:31', '2022-03-31 04:16:31'),
(26, 7, 'images/product/164872179153.webp', '2022-03-31 04:16:31', '2022-03-31 04:16:31'),
(27, 7, 'images/product/164872179128.webp', '2022-03-31 04:16:31', '2022-03-31 04:16:31'),
(28, 7, 'images/product/164872179139.webp', '2022-03-31 04:16:31', '2022-03-31 04:16:31'),
(29, 8, 'images/product/164872179119.webp', '2022-03-31 04:16:31', '2022-03-31 04:16:31'),
(30, 8, 'images/product/164872179118.webp', '2022-03-31 04:16:31', '2022-03-31 04:16:31'),
(31, 8, 'images/product/164872179196.webp', '2022-03-31 04:16:31', '2022-03-31 04:16:31'),
(32, 8, 'images/product/164872179140.webp', '2022-03-31 04:16:31', '2022-03-31 04:16:31'),
(33, 9, 'images/product/164872179138.webp', '2022-03-31 04:16:32', '2022-03-31 04:16:32'),
(34, 9, 'images/product/164872179273.webp', '2022-03-31 04:16:32', '2022-03-31 04:16:32'),
(35, 9, 'images/product/164872179244.webp', '2022-03-31 04:16:32', '2022-03-31 04:16:32'),
(36, 9, 'images/product/164872179229.webp', '2022-03-31 04:16:32', '2022-03-31 04:16:32'),
(37, 10, 'images/product/164872179222.webp', '2022-03-31 04:16:32', '2022-03-31 04:16:32'),
(38, 10, 'images/product/164872179251.webp', '2022-03-31 04:16:32', '2022-03-31 04:16:32'),
(39, 10, 'images/product/164872179219.webp', '2022-03-31 04:16:32', '2022-03-31 04:16:32'),
(40, 10, 'images/product/164872179296.webp', '2022-03-31 04:16:32', '2022-03-31 04:16:32'),
(41, 11, 'images/product/164872186069.webp', '2022-03-31 04:17:40', '2022-03-31 04:17:40'),
(42, 11, 'images/product/164872186042.webp', '2022-03-31 04:17:40', '2022-03-31 04:17:40'),
(43, 11, 'images/product/16487218605.webp', '2022-03-31 04:17:40', '2022-03-31 04:17:40'),
(44, 11, 'images/product/164872186064.webp', '2022-03-31 04:17:40', '2022-03-31 04:17:40'),
(45, 12, 'images/product/164872186073.webp', '2022-03-31 04:17:40', '2022-03-31 04:17:40'),
(46, 12, 'images/product/164872186048.webp', '2022-03-31 04:17:40', '2022-03-31 04:17:40'),
(47, 12, 'images/product/164872186049.webp', '2022-03-31 04:17:40', '2022-03-31 04:17:40'),
(48, 12, 'images/product/164872186066.webp', '2022-03-31 04:17:40', '2022-03-31 04:17:40'),
(49, 13, 'images/product/164872186057.webp', '2022-03-31 04:17:40', '2022-03-31 04:17:40'),
(50, 13, 'images/product/16487218601.webp', '2022-03-31 04:17:40', '2022-03-31 04:17:40'),
(51, 13, 'images/product/164872186085.webp', '2022-03-31 04:17:40', '2022-03-31 04:17:40'),
(52, 13, 'images/product/164872186035.webp', '2022-03-31 04:17:40', '2022-03-31 04:17:40'),
(53, 14, 'images/product/164872186121.webp', '2022-03-31 04:17:41', '2022-03-31 04:17:41'),
(54, 25, 'images/product/164872186153.webp', '2022-03-31 04:17:41', '2022-03-31 04:17:41'),
(55, 14, 'images/product/164872186153.webp', '2022-03-31 04:17:41', '2022-03-31 04:17:41'),
(56, 14, 'images/product/164872186199.webp', '2022-03-31 04:17:41', '2022-03-31 04:17:41'),
(57, 15, 'images/product/164872186177.webp', '2022-03-31 04:17:41', '2022-03-31 04:17:41'),
(58, 25, 'images/product/164872186127.webp', '2022-03-31 04:17:41', '2022-03-31 04:17:41'),
(59, 15, 'images/product/16487218616.webp', '2022-03-31 04:17:41', '2022-03-31 04:17:41'),
(60, 25, 'images/product/164872186127.webp', '2022-03-31 04:17:41', '2022-03-31 04:17:41'),
(61, 16, 'images/product/164872186292.webp', '2022-03-31 04:17:42', '2022-03-31 04:17:42'),
(62, 25, 'images/product/164872186229.webp', '2022-03-31 04:17:42', '2022-03-31 04:17:42'),
(63, 16, 'images/product/164872186235.webp', '2022-03-31 04:17:42', '2022-03-31 04:17:42'),
(64, 16, 'images/product/164872186212.webp', '2022-03-31 04:17:42', '2022-03-31 04:17:42'),
(65, 17, 'images/product/164931754586.webp', '2022-04-07 14:45:45', '2022-04-07 14:45:45'),
(66, 18, 'images/product/164931761466.webp', '2022-04-07 14:46:54', '2022-04-07 14:46:54'),
(67, 19, 'images/product/164931766024.webp', '2022-04-07 14:47:40', '2022-04-07 14:47:40'),
(68, 20, 'images/product/164931772989.webp', '2022-04-07 14:48:49', '2022-04-07 14:48:49'),
(69, 21, 'images/product/164931778252.webp', '2022-04-07 14:49:42', '2022-04-07 14:49:42'),
(70, 22, 'images/product/164931990143.webp', '2022-04-07 15:25:01', '2022-04-07 15:25:01'),
(71, 23, 'images/product/164931997122.webp', '2022-04-07 15:26:11', '2022-04-07 15:26:11'),
(72, 24, 'images/product/164932003573.webp', '2022-04-07 15:27:15', '2022-04-07 15:27:15'),
(73, 25, 'images/product/164932016657.webp', '2022-04-07 15:29:26', '2022-04-07 15:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 2, 1, NULL, NULL),
(5, 2, 2, NULL, NULL),
(6, 2, 3, NULL, NULL),
(7, 3, 1, NULL, NULL),
(8, 3, 2, NULL, NULL),
(9, 3, 3, NULL, NULL),
(10, 4, 1, NULL, NULL),
(11, 4, 2, NULL, NULL),
(12, 4, 3, NULL, NULL),
(13, 5, 1, NULL, NULL),
(14, 5, 2, NULL, NULL),
(15, 5, 3, NULL, NULL),
(16, 6, 1, NULL, NULL),
(17, 6, 2, NULL, NULL),
(18, 6, 3, NULL, NULL),
(19, 7, 1, NULL, NULL),
(20, 7, 2, NULL, NULL),
(21, 7, 3, NULL, NULL),
(22, 8, 1, NULL, NULL),
(23, 8, 2, NULL, NULL),
(24, 8, 3, NULL, NULL),
(25, 9, 1, NULL, NULL),
(26, 9, 2, NULL, NULL),
(27, 9, 3, NULL, NULL),
(28, 10, 1, NULL, NULL),
(29, 10, 2, NULL, NULL),
(30, 10, 3, NULL, NULL),
(31, 11, 1, NULL, NULL),
(32, 11, 2, NULL, NULL),
(33, 11, 3, NULL, NULL),
(34, 12, 1, NULL, NULL),
(35, 12, 2, NULL, NULL),
(36, 12, 3, NULL, NULL),
(37, 13, 1, NULL, NULL),
(38, 13, 2, NULL, NULL),
(39, 13, 3, NULL, NULL),
(40, 14, 1, NULL, NULL),
(41, 14, 2, NULL, NULL),
(42, 14, 3, NULL, NULL),
(43, 15, 1, NULL, NULL),
(44, 15, 2, NULL, NULL),
(45, 15, 3, NULL, NULL),
(46, 16, 1, NULL, NULL),
(47, 16, 2, NULL, NULL),
(48, 16, 3, NULL, NULL),
(49, 17, 1, NULL, NULL),
(50, 17, 2, NULL, NULL),
(51, 17, 3, NULL, NULL),
(52, 18, 1, NULL, NULL),
(53, 18, 2, NULL, NULL),
(54, 18, 3, NULL, NULL),
(55, 19, 1, NULL, NULL),
(56, 19, 2, NULL, NULL),
(57, 20, 1, NULL, NULL),
(58, 21, 1, NULL, NULL),
(59, 22, 1, NULL, NULL),
(60, 23, 1, NULL, NULL),
(61, 23, 2, NULL, NULL),
(62, 23, 3, NULL, NULL),
(63, 24, 3, NULL, NULL),
(64, 25, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating_reviews`
--

CREATE TABLE `rating_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(10) UNSIGNED DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rating_reviews`
--

INSERT INTO `rating_reviews` (`id`, `user_id`, `product_id`, `rating`, `review`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 14, 2, 'good!', 1, '2022-04-02 01:15:20', '2022-04-02 01:19:02'),
(2, 1, 11, 3, 'great.', 1, '2022-04-02 01:34:07', '2022-04-02 01:34:07'),
(3, 1, 21, 4, 'good', 0, '2022-05-29 13:23:26', '2022-05-29 13:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inside` int(11) NOT NULL,
  `outside` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `inside`, `outside`, `created_at`, `updated_at`) VALUES
(1, 35, 60, '2022-04-02 03:16:03', '2022-04-02 03:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size`, `created_at`, `updated_at`) VALUES
(1, 'M', '2022-03-30 03:31:46', '2022-03-30 03:31:46'),
(2, 'XL', '2022-03-30 03:31:46', '2022-03-30 03:31:46'),
(3, 'XXL', '2022-03-30 03:31:46', '2022-03-30 03:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `type`, `link`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 'images/slider/1728723430086767.webp', 1, 'http://127.0.0.1:8000/all-product/collection/1', NULL, '2022-03-30 05:18:55', '2022-04-20 22:36:09'),
(3, 'images/slider/1728723434603482.webp', 1, 'http://127.0.0.1:8000/all-product/collection/1', NULL, '2022-03-30 05:18:59', '2022-05-22 12:56:32'),
(4, 'images/slider/1728723508130512.webp', 1, 'http://127.0.0.1:8000/all-product/collection/1', NULL, '2022-03-30 05:20:09', '2022-03-30 05:20:09'),
(5, 'images/slider/1730691269801899.webp', 2, 'http://127.0.0.1:8000/all-product/collection/1', NULL, '2022-04-20 22:36:53', '2022-05-22 13:04:40'),
(6, 'images/slider/1730691281829893.webp', 2, 'http://127.0.0.1:8000/all-product/collection/1', NULL, '2022-04-20 22:37:05', '2022-04-20 22:37:05'),
(7, 'images/slider/1730691288657980.webp', 2, 'http://127.0.0.1:8000/all-product/collection/1', NULL, '2022-04-20 22:37:11', '2022-04-20 22:37:11'),
(8, 'images/slider/1730691295696919.webp', 2, 'http://127.0.0.1:8000/all-product/collection/1', NULL, '2022-04-20 22:37:18', '2022-04-20 22:37:18'),
(9, 'images/slider/1730691303753189.webp', 3, 'http://127.0.0.1:8000/all-product/collection/1', NULL, '2022-04-20 22:37:26', '2022-04-20 22:37:26'),
(10, 'images/slider/1730691311687799.webp', 3, 'http://127.0.0.1:8000/all-product/collection/1', NULL, '2022-04-20 22:37:33', '2022-04-20 22:37:33'),
(11, 'images/slider/1730691319062915.webp', 3, 'http://127.0.0.1:8000/all-product/collection/1', NULL, '2022-04-20 22:37:40', '2022-04-20 22:37:40'),
(12, 'images/slider/1730691327014831.webp', 3, 'http://127.0.0.1:8000/all-product/collection/1', NULL, '2022-04-20 22:37:48', '2022-04-20 22:37:48'),
(13, 'images/slider/1730701494583060.webp', 4, 'http://127.0.0.1:8000/all-product/collection/1', 1, '2022-04-21 01:19:24', '2022-04-21 01:19:24'),
(14, 'images/slider/1730701505215891.webp', 8, 'http://127.0.0.1:8000/all-product/collection/1', NULL, '2022-04-21 01:19:34', '2022-05-22 12:31:42'),
(15, 'images/slider/1730701514214371.webp', 6, 'http://127.0.0.1:8000/all-product/collection/1', NULL, '2022-04-21 01:19:43', '2022-05-22 13:05:31'),
(16, 'images/slider/1730701522546543.webp', 7, 'http://127.0.0.1:8000/all-product/collection/1', NULL, '2022-04-21 01:19:51', '2022-05-22 12:31:28'),
(17, 'images/slider/1733503655127864.webp', 5, NULL, NULL, '2022-05-22 12:38:33', '2022-05-22 17:29:45');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `status`, `image`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mobile and Tablets', 'mobile-and-tablets', 1, 'images/main_menu/subcategory/1728716111944966.webp', NULL, '2022-03-30 03:22:36', '2022-05-23 11:00:29'),
(2, 1, 'Laptop', 'laptop', 1, 'images/main_menu/subcategory/1729064977750820.webp', NULL, '2022-04-02 23:47:40', '2022-05-23 11:00:51'),
(3, 2, 'Mobile Accessories', 'mobile-accessories', 1, 'images/main_menu/subcategory/1729064995965107.webp', NULL, '2022-04-02 23:47:58', '2022-05-23 11:01:20'),
(4, 2, 'Audio Equipment', 'audio-equipment', 1, 'images/main_menu/subcategory/1729438412342780.webp', NULL, '2022-04-07 15:43:15', '2022-05-23 11:01:39'),
(5, 2, 'Computer Accessories', 'computer-accessories', 1, 'images/main_menu/subcategory/1729438413679257.webp', NULL, '2022-04-07 15:43:16', '2022-05-23 11:01:57'),
(6, 2, 'Monitor and printers', 'monitor-and-printers', 1, 'images/main_menu/subcategory/1729438448956560.webp', NULL, '2022-04-07 15:43:50', '2022-05-23 11:02:17'),
(7, 1, 'Desktop Computer', 'desktop-computer', 1, 'images/main_menu/subcategory/1729438473989733.webp', NULL, '2022-04-07 15:44:14', '2022-05-23 11:02:42'),
(8, 1, 'Cameras', 'cameras', 1, 'images/main_menu/subcategory/1729438497783578.webp', NULL, '2022-04-07 15:44:37', '2022-05-23 11:03:03'),
(9, 1, 'Drones', 'drones', 1, 'images/main_menu/subcategory/1729438525736868.webp', NULL, '2022-04-07 15:45:03', '2022-05-23 11:03:22'),
(10, 1, 'Security Camera and system', 'security-camera-and-system', 1, 'images/main_menu/subcategory/1729438549543189.webp', NULL, '2022-04-07 15:45:26', '2022-05-23 11:03:50'),
(11, 3, 'Television', 'television', 1, 'images/main_menu/subcategory/1729438583140142.webp', NULL, '2022-04-07 15:45:58', '2022-05-23 11:05:44'),
(12, 3, 'Home Audio', 'home-audio', 1, 'images/main_menu/subcategory/1729438603312197.webp', NULL, '2022-04-07 15:46:17', '2022-05-23 11:07:13'),
(13, 2, 'Mixed Devices', 'mixed-devices', 1, 'images/main_menu/subcategory/1729438626549411.webp', NULL, '2022-04-07 15:46:39', '2022-05-23 11:07:29'),
(14, 2, 'Large Appliances', 'large-appliances', 1, 'images/main_menu/subcategory/1729438646627772.webp', NULL, '2022-04-07 15:46:59', '2022-05-23 11:07:55'),
(15, 15, 'For Kids', 'for-kids', 1, 'images/main_menu/subcategory/1733514492689745.png', NULL, '2022-05-22 15:30:48', '2022-05-22 15:30:48'),
(16, 15, 'For Her', 'for-her', 1, 'images/main_menu/subcategory/1733514525536090.png', NULL, '2022-05-22 15:31:20', '2022-05-22 15:31:20'),
(17, 15, 'For Him', 'for-him', 1, 'images/main_menu/subcategory/1733514565116722.png', NULL, '2022-05-22 15:31:57', '2022-05-22 15:31:57'),
(18, 3, 'Kitchen Appliances', 'kitchen-appliances', 1, 'images/main_menu/subcategory/1733589177503431.png', NULL, '2022-05-23 11:17:53', '2022-05-23 11:17:53'),
(19, 4, 'Cosmetic', 'cosmetic', 1, 'images/main_menu/subcategory/1733589207287781.png', NULL, '2022-05-23 11:18:22', '2022-05-23 11:18:22'),
(20, 5, 'Mother and Baby', 'mother-and-baby', 1, 'images/main_menu/subcategory/1733589307543102.png', NULL, '2022-05-23 11:19:57', '2022-05-23 11:19:57'),
(21, 5, 'Baby Food', 'baby-food', 1, 'images/main_menu/subcategory/1733589335387966.png', NULL, '2022-05-23 11:20:24', '2022-05-23 11:20:24'),
(22, 5, 'Baby Fashion Accessories', 'baby-fashion-accessories', 1, 'images/main_menu/subcategory/1733589366812947.png', NULL, '2022-05-23 11:20:54', '2022-05-23 11:20:54'),
(23, 5, 'Baby Gear', 'baby-gear', 1, 'images/main_menu/subcategory/1733589399355122.png', NULL, '2022-05-23 11:21:25', '2022-05-23 11:21:25'),
(24, 5, 'Baby Personal Care', 'baby-personal-care', 1, 'images/main_menu/subcategory/1733589444240242.png', NULL, '2022-05-23 11:22:08', '2022-05-23 11:22:08'),
(25, 5, 'Baby Toys', 'baby-toys', 1, 'images/main_menu/subcategory/1733589479337950.png', NULL, '2022-05-23 11:22:41', '2022-05-23 11:22:41'),
(26, 6, 'Fruits & Vegetables', 'fruits-vegetables', 1, 'images/main_menu/subcategory/1733589512586657.png', NULL, '2022-05-23 11:23:13', '2022-05-23 11:23:13'),
(27, 6, 'Meat & Fish', 'meat-fish', 1, 'images/main_menu/subcategory/1733589528549456.png', NULL, '2022-05-23 11:23:28', '2022-05-23 11:23:28'),
(28, 6, 'Cooking', 'cooking', 1, 'images/main_menu/subcategory/1733589554702313.png', NULL, '2022-05-23 11:23:53', '2022-05-23 11:23:53'),
(29, 6, 'Home & Cleaning', 'home-cleaning', 1, 'images/main_menu/subcategory/1733589578596300.png', NULL, '2022-05-23 11:24:16', '2022-05-23 11:24:16'),
(30, 6, 'Beverage', 'beverage', 1, 'images/main_menu/subcategory/1733589598496105.png', NULL, '2022-05-23 11:24:35', '2022-05-23 11:24:35'),
(31, 7, 'Sumer coucetiron', 'sumer-coucetiron', 1, 'images/main_menu/subcategory/1733589692012701.png', NULL, '2022-05-23 11:26:04', '2022-05-23 11:26:43'),
(32, 7, 'Wardrobe & Cabinet', 'wardrobe-cabinet', 1, 'images/main_menu/subcategory/1733589758126472.png', NULL, '2022-05-23 11:27:07', '2022-05-23 11:27:07'),
(33, 7, 'Jar& Racks', 'jar-racks', 1, 'images/main_menu/subcategory/1733589796488895.png', NULL, '2022-05-23 11:27:44', '2022-05-23 11:27:44'),
(34, 7, 'Storage & Organizer', 'storage-organizer', 1, 'images/main_menu/subcategory/1733589824211112.png', NULL, '2022-05-23 11:28:10', '2022-05-23 11:28:10'),
(35, 7, 'Air Furniture', 'air-furniture', 1, 'images/main_menu/subcategory/1733589951849744.png', NULL, '2022-05-23 11:30:12', '2022-05-23 11:30:12'),
(36, 7, 'Tools Diy& out door', 'tools-diy-out-door', 1, 'images/main_menu/subcategory/1733589973270996.png', NULL, '2022-05-23 11:30:32', '2022-05-23 11:30:32'),
(37, 8, 'Solwar Kameez', 'solwar-kameez', 1, 'images/main_menu/subcategory/1733590005906308.png', NULL, '2022-05-23 11:31:03', '2022-05-23 11:31:03'),
(38, 8, 'Kurtis', 'kurtis', 1, 'images/main_menu/subcategory/1733590052649445.png', NULL, '2022-05-23 11:31:48', '2022-05-23 11:31:48'),
(39, 8, 'Jeans', 'jeans', 1, 'images/main_menu/subcategory/1733590086872076.png', NULL, '2022-05-23 11:32:21', '2022-05-23 11:32:21'),
(40, 8, 'Sarees', 'sarees', 1, 'images/main_menu/subcategory/1733590140536630.png', NULL, '2022-05-23 11:33:12', '2022-05-23 11:33:12'),
(41, 8, 'Women Bags', 'women-bags', 1, 'images/main_menu/subcategory/1733590179398232.png', NULL, '2022-05-23 11:33:49', '2022-05-23 11:33:49'),
(42, 8, 'Shoes', 'shoes', 1, 'images/main_menu/subcategory/1733590209690885.png', NULL, '2022-05-23 11:34:18', '2022-05-23 11:34:18'),
(43, 8, 'Travel &Luggage', 'travel-luggage', 1, 'images/main_menu/subcategory/1733590246365461.png', NULL, '2022-05-23 11:34:53', '2022-05-23 11:34:53'),
(44, 8, 'Accessories', 'accessories', 1, 'images/main_menu/subcategory/1733590274656817.png', NULL, '2022-05-23 11:35:20', '2022-05-23 11:35:20'),
(45, 8, 'Hizab', 'hizab', 1, 'images/main_menu/subcategory/1733590570386859.png', NULL, '2022-05-23 11:40:02', '2022-05-23 11:40:02'),
(46, 9, 'Winter Collation', 'winter-collation', 1, 'images/main_menu/subcategory/1733591034219378.png', NULL, '2022-05-23 11:47:24', '2022-05-23 11:47:24'),
(47, 9, 'T-Shirt', 't-shirt', 1, 'images/main_menu/subcategory/1733591064947838.png', NULL, '2022-05-23 11:47:53', '2022-05-23 11:47:53'),
(48, 9, 'Shirts', 'shirts', 1, 'images/main_menu/subcategory/1733591097622647.png', NULL, '2022-05-23 11:48:25', '2022-05-23 11:48:25'),
(49, 9, 'Polo shirts', 'polo-shirts', 1, 'images/main_menu/subcategory/1733591123791333.png', NULL, '2022-05-23 11:48:49', '2022-05-23 11:48:49'),
(50, 9, 'Jeans', 'jeans', 1, 'images/main_menu/subcategory/1733591153534342.png', NULL, '2022-05-23 11:49:18', '2022-05-23 11:49:18'),
(51, 9, 'Pant', 'pant', 1, 'images/main_menu/subcategory/1733591175545310.png', NULL, '2022-05-23 11:49:39', '2022-05-23 11:49:39'),
(52, 9, 'Mens Bags', 'mens-bags', 1, 'images/main_menu/subcategory/1733591347733626.png', NULL, '2022-05-23 11:52:23', '2022-05-23 11:52:23'),
(53, 9, 'Shoes', 'shoes', 1, 'images/main_menu/subcategory/1733591390400215.png', NULL, '2022-05-23 11:53:04', '2022-05-23 11:53:04'),
(54, 9, 'Accessories', 'accessories', 1, 'images/main_menu/subcategory/1733591415956982.png', NULL, '2022-05-23 11:53:28', '2022-05-23 11:53:28'),
(55, 9, 'Clothing', 'clothing', 1, 'images/main_menu/subcategory/1733591443975084.png', NULL, '2022-05-23 11:53:55', '2022-05-23 11:53:55'),
(56, 9, 'Panjabi & Fatua', 'panjabi-fatua', 1, 'images/main_menu/subcategory/1733591479786037.png', NULL, '2022-05-23 11:54:29', '2022-05-23 11:54:29'),
(57, 10, 'Mens watch', 'mens-watch', 1, 'images/main_menu/subcategory/1733591542740156.png', NULL, '2022-05-23 11:55:29', '2022-05-23 11:55:29'),
(58, 10, 'Women Watch', 'women-watch', 1, 'images/main_menu/subcategory/1733591589264093.png', NULL, '2022-05-23 11:56:13', '2022-05-23 11:56:13'),
(59, 10, 'Women jewelleries', 'women-jewelleries', 1, 'images/main_menu/subcategory/1733591616570294.png', NULL, '2022-05-23 11:56:39', '2022-05-23 11:56:39'),
(60, 10, 'Sunglasses', 'sunglasses', 1, 'images/main_menu/subcategory/1733591642231192.png', NULL, '2022-05-23 11:57:04', '2022-05-23 11:57:04'),
(61, 10, 'Eye Glasses', 'eye-glasses', 1, 'images/main_menu/subcategory/1733591687567012.png', NULL, '2022-05-23 11:57:47', '2022-05-23 11:57:47'),
(62, 11, 'Laundry & Cleaning', 'laundry-cleaning', 1, 'images/main_menu/subcategory/1733591723206749.png', NULL, '2022-05-23 11:58:21', '2022-05-23 11:58:21'),
(63, 11, 'Laundry & Cleaning', 'laundry-cleaning', 1, 'images/main_menu/subcategory/1733591745157072.png', NULL, '2022-05-23 11:58:42', '2022-05-23 11:58:42'),
(64, 14, 'Contrary to popular', 'contrary-to-popular', 1, 'images/main_menu/subcategory/1734521627865267.png', NULL, '2022-06-02 18:18:47', '2022-06-02 18:18:47');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Alexgender Flex', 'quicktech.foisal@gmail.com', NULL, '$2y$10$TDs4dEKSJ.eZF.A.A1eK0ODotm2uTpMLz0aqm4DiewHjEAccbjlCm', NULL, '2022-04-02 00:38:22', '2022-04-02 00:38:22');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `image`, `name`, `phone`, `email`, `city`, `area`, `zip_code`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Mr. Alexgender Flex', '+8801756232223', 'quicktech.foisal@gmail.com', 'Dhaka', 'Dhaka', '1216', 'd', '2022-04-02 03:19:32', '2022-04-02 03:19:32');

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `offer_amount` int(10) UNSIGNED NOT NULL,
  `min_amount` int(10) UNSIGNED NOT NULL,
  `validity_from` date NOT NULL,
  `validity_to` date NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `external_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `offer_amount`, `min_amount`, `validity_from`, `validity_to`, `image`, `external_link`, `created_at`, `updated_at`) VALUES
(1, 1, 100, '2022-04-02', '2022-10-07', 'images/voucher/1728999959145375.jpg', NULL, '2022-04-02 06:34:14', '2022-04-02 06:34:49'),
(2, 30, 3000, '2022-04-02', '2022-10-07', 'images/voucher/1728999959497751.jpg', NULL, '2022-04-02 06:34:14', '2022-04-02 06:34:40'),
(3, 10, 100, '2022-04-02', '2022-10-07', 'images/voucher/1728999959782983.jpg', NULL, '2022-04-02 06:34:14', '2022-04-02 06:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 1, 1, '2022-04-02 04:56:44', '2022-04-02 04:56:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `banner_collections`
--
ALTER TABLE `banner_collections`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `childcategories_category_id_foreign` (`category_id`),
  ADD KEY `childcategories_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_product`
--
ALTER TABLE `color_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `color_product_product_id_foreign` (`product_id`),
  ADD KEY `color_product_color_id_foreign` (`color_id`);

--
-- Indexes for table `company_infos`
--
ALTER TABLE `company_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `flash_sales`
--
ALTER TABLE `flash_sales`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `product_collections`
--
ALTER TABLE `product_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_size_product_id_foreign` (`product_id`),
  ADD KEY `product_size_size_id_foreign` (`size_id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tag_product_id_foreign` (`product_id`),
  ADD KEY `product_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `rating_reviews`
--
ALTER TABLE `rating_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rating_reviews_user_id_foreign` (`user_id`),
  ADD KEY `rating_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banner_collections`
--
ALTER TABLE `banner_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `color_product`
--
ALTER TABLE `color_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `company_infos`
--
ALTER TABLE `company_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_sales`
--
ALTER TABLE `flash_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_collections`
--
ALTER TABLE `product_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating_reviews`
--
ALTER TABLE `rating_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD CONSTRAINT `childcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `childcategories_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `color_product`
--
ALTER TABLE `color_product`
  ADD CONSTRAINT `color_product_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `color_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_size`
--
ALTER TABLE `product_size`
  ADD CONSTRAINT `product_size_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_size_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD CONSTRAINT `product_tag_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_reviews`
--
ALTER TABLE `rating_reviews`
  ADD CONSTRAINT `rating_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rating_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

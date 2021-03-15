-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 15, 2021 at 07:03 PM
-- Server version: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.3.24-3+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kroykari`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `price` double(11,2) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand` text CHARACTER SET utf8 COLLATE utf8_bin,
  `sub_category_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `city_area_id` int(10) UNSIGNED NOT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT '1',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `is_approved` tinyint(4) NOT NULL DEFAULT '0',
  `condition` enum('0','1') NOT NULL DEFAULT '0',
  `is_publish` tinyint(4) NOT NULL DEFAULT '1',
  `is_sold` enum('0','1') DEFAULT '0',
  `sold_date` datetime DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `reject_reason` text CHARACTER SET utf8 COLLATE utf8_bin,
  `rejected_date` datetime DEFAULT NULL,
  `deleted_reason` text CHARACTER SET utf8 COLLATE utf8_bin,
  `is_deliver_to_buyer` enum('0','1') NOT NULL DEFAULT '0',
  `is_negotiable` enum('0','1') DEFAULT '0',
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `map_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `is_hide_phone_number` enum('0','1') NOT NULL DEFAULT '1',
  `phone_numbers` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `user_id`, `title`, `description`, `price`, `category_id`, `brand`, `sub_category_id`, `city_id`, `city_area_id`, `is_featured`, `is_active`, `is_approved`, `condition`, `is_publish`, `is_sold`, `sold_date`, `buyer_id`, `country`, `reject_reason`, `rejected_date`, `deleted_reason`, `is_deliver_to_buyer`, `is_negotiable`, `lat`, `lng`, `map_address`, `phone`, `email`, `is_hide_phone_number`, `phone_numbers`, `created_at`, `updated_at`, `deleted_at`) VALUES
(41, 118, 'kartiktoys Mini Teddy Combo Of 6 - 25 cm  (Brown, Red, Yellow, Maroon, Beige, Pink)', 'kartiktoys Mini Teddy Combo Of 6 - 25 cm  (Brown, Red, Yellow, Maroon, Beige, Pink)kartiktoys Mini Teddy Combo Of 6 - 25 cm  (Brown, Red, Yellow, Maroon, Beige, Pink)kartiktoys Mini Teddy Combo Of 6 - 25 cm  (Brown, Red, Yellow, Maroon, Beige, Pink)', 275.00, 33, NULL, 44, 5, 39, 1, 1, 1, '0', 1, '0', NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', 22.6871879370862, 75.86306070589598, '33, Bholaram Ustad Marg, Bhavar Koya Square, Indrapuri Colony, Bhanwar Kuwa, Indore, Madhya Pradesh 452014, India', NULL, NULL, '0', NULL, '2021-03-09 16:56:04', NULL, NULL),
(42, 119, 'Amazon Basics 8-Sheet Capacity, Cross-Cut Paper and Credit Card Shredder, 4.1 Gallon', 'Amazon Basics 8-Sheet Capacity, Cross-Cut Paper and Credit Card Shredder, 4.1 Gallon Amazon Basics 8-Sheet Capacity, Cross-Cut Paper and Credit Card Shredder, 4.1 Gallon\r\nAmazon Basics 8-Sheet Capacity, Cross-Cut Paper and Credit Card Shredder, 4.1 Gallon Amazon Basics 8-Sheet Capacity, Cross-Cut Paper and Credit Card Shredder, 4.1 Gallon', 8500.00, 26, NULL, 47, 15, 31, 1, 1, 1, '0', 1, '0', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 22.6874651, 75.8529756, 'Choitram compound, Indore, Madhya Pradesh, India', NULL, NULL, '0', NULL, '2021-03-09 16:59:08', NULL, NULL),
(43, 118, 'National thermal Power corporation Limited', 'National thermal Power corporation Limited', 1220.00, 31, NULL, 46, 15, 31, 1, 1, 1, '0', 1, '0', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 22.6874651, 75.8529756, 'Choitram compound, Indore, Madhya Pradesh, India', NULL, NULL, '0', NULL, '2021-03-09 17:23:51', NULL, NULL),
(44, 118, 'National thermal Power corporation Limited', 'National thermal Power corporation LimitedNational thermal Power corporation LimitedNational thermal Power corporation Limited', 2323.00, 33, NULL, 44, 5, 39, 1, 1, 0, '0', 1, '0', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 22.7102801, 75.8626434, 'Raoji Bazar Rd, Kumavat Pura, Mahal Kacheri, Indore, Madhya Pradesh 452007, India', NULL, NULL, '1', 'a:4:{i:0;s:11:\"08959070299\";i:1;s:11:\"08959070299\";i:2;s:11:\"08959070299\";i:3;s:11:\"08959070299\";}', '2021-03-11 19:24:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ad_images`
--

CREATE TABLE `ad_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `ad_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `is_watermark` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ad_images`
--

INSERT INTO `ad_images` (`id`, `ad_id`, `name`, `is_watermark`, `created_at`, `updated_at`, `deleted_at`) VALUES
(56, 41, 'MzmIlky1Lw.1615289164.jpeg', '0', '2021-03-09 16:56:04', NULL, NULL),
(57, 42, 'NFYklScLyu.1615289348.jpg', '0', '2021-03-09 16:59:08', NULL, NULL),
(58, 43, 'JA5p2QKIfq.1615290831.jpeg', '0', '2021-03-09 17:23:51', NULL, NULL),
(59, 44, '16EgKghx8y.1615470864.png', '0', '2021-03-11 19:24:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ad_values`
--

CREATE TABLE `ad_values` (
  `ad_id` int(10) UNSIGNED NOT NULL,
  `field_id` bigint(20) UNSIGNED NOT NULL,
  `option_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ad_values`
--

INSERT INTO `ad_values` (`ad_id`, `field_id`, `option_id`, `value`) VALUES
(41, 0, '1', '1'),
(41, 0, '1', '1'),
(42, 0, '1', '1'),
(42, 65, 'blub', 'blub'),
(42, 0, '1', '1'),
(43, 0, '1', '1'),
(43, 54, 'Bd book', 'Bd book');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title_bn` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `is_active` enum('0','1') DEFAULT '1',
  `image` varchar(250) DEFAULT NULL,
  `posting_allowance` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`, `title_bn`, `is_active`, `image`, `posting_allowance`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, NULL, 'Mobile', 'মুঠোফোন', '1', 'HQdEr9orZp.1602836647.png', 1, '2020-10-14 13:02:54', '2020-10-16 08:24:07', NULL),
(4, NULL, 'Property', 'সম্পত্তি', '1', 'Vt6B81Xuuo.1602836634.png', 1, '2020-10-14 13:02:54', '2020-10-16 08:23:54', NULL),
(5, NULL, 'Vehical', 'যানবাহন', '1', 'aM4SE2IcJY.1602836618.png', 7, '2020-10-14 13:02:59', '2021-02-23 05:54:54', NULL),
(6, NULL, 'Job', 'চাকরি', '1', 'eoH6VQoCDi.1602836542.png', 1, '2020-10-14 13:02:59', '2021-02-06 19:05:56', NULL),
(15, 3, 'Mobile Phones', 'মোবাইল ফোন গুলো', '1', NULL, 1, '2020-10-15 10:50:01', '2020-10-15 10:50:01', NULL),
(16, 3, 'Mobile Phones Accessories', 'মোবাইল ফোন এক্সেসরিজ', '1', NULL, 1, '2020-10-15 10:51:03', '2020-10-15 10:51:03', NULL),
(17, 5, 'Car', 'গাড়ি', '1', NULL, 1, '2020-10-15 10:51:52', '2020-10-15 10:51:52', NULL),
(18, 5, 'Motorbikes & Scooters', 'মোটরবাইক ও স্কুটার', '1', NULL, 1, '2020-10-15 10:52:14', '2020-10-15 10:52:14', NULL),
(19, 5, 'Bicycles & Three Wheelers', 'বাইসাইকেল ও থ্রি হুইলার', '1', NULL, 1, '2020-10-15 10:52:42', '2020-10-15 10:52:42', NULL),
(20, 5, 'Trucks, Vans & Buses', 'ট্রাক, ভ্যান ও বাস', '1', NULL, 1, '2020-10-15 10:53:09', '2020-10-15 10:53:09', NULL),
(21, 5, 'Auto Parts & Accessories', 'অটো পার্টস এবং আনুষাঙ্গিক', '1', NULL, 1, '2020-10-15 10:53:46', '2020-10-15 10:53:46', NULL),
(22, 3, 'Mobile Phone Services', 'মোবাইল ফোন পরিষেবা', '1', NULL, 1, '2020-10-15 10:54:42', '2020-10-15 10:54:42', NULL),
(23, 4, 'Apartments & Flats', 'অ্যাপার্টমেন্ট ও ফ্ল্যাটস', '1', NULL, 1, '2020-10-15 10:55:11', '2020-10-15 10:55:11', NULL),
(24, 4, 'New Developments', 'নতুন উন্নয়ন', '1', NULL, 1, '2020-10-15 10:55:37', '2020-10-15 10:55:37', NULL),
(25, 4, 'Houses', 'বাড়িগুলি', '1', NULL, 1, '2020-10-15 10:56:03', '2020-10-15 10:56:03', NULL),
(26, NULL, 'Electronic', 'বৈদ্যুতিক', '1', 'XVw9IaTXRW.1602836706.png', 1, '2020-10-16 08:24:55', '2020-10-16 08:25:06', NULL),
(27, NULL, 'Medical', 'চিকিৎসা', '1', '1kr4XsJs69.1602836781.png', 1, '2020-10-16 08:26:21', '2020-10-16 08:26:21', NULL),
(28, NULL, 'Fashion', 'ফ্যাশন', '1', 'v99AvPzdru.1602836800.png', 1, '2020-10-16 08:26:40', '2020-10-16 08:26:40', NULL),
(29, NULL, 'Furniture', 'আসবাবপত্র', '1', 'lLS6MXfFBT.1602836832.png', 1, '2020-10-16 08:27:12', '2020-10-16 08:27:12', NULL),
(30, NULL, 'Household', 'গৃহস্থালীর', '1', 'fCl2lrevwq.1602836855.png', 1, '2020-10-16 08:27:35', '2020-10-16 08:27:35', NULL),
(31, NULL, 'Education', 'শিক্ষা', '1', 'z1LgiE0sHm.1602836886.png', 3, '2020-10-16 08:28:06', '2021-02-22 20:05:59', NULL),
(32, NULL, 'Services', 'সেবা', '1', '0GlT4bwiAp.1602836922.png', 1, '2020-10-16 08:28:42', '2020-10-16 08:28:42', NULL),
(33, NULL, 'Beauty', 'সৌন্দর্য', '1', 'BbNqSherpE.1602836963.png', 3, '2020-10-16 08:29:23', '2021-02-25 05:06:24', NULL),
(34, 33, '1', '1', '1', NULL, 1, '2021-02-02 06:12:56', '2021-02-02 06:13:01', '2021-02-02 06:13:01'),
(35, NULL, 'information of technology', 'তথ্য প্রযুক্তি', '1', 'GWtDh1hTaJ.1612531324.jpg', 1, '2021-02-05 13:22:04', '2021-02-06 15:27:39', '2021-02-06 15:27:39'),
(36, 35, 'technology', 'প্রযুক্তি', '1', NULL, 1, '2021-02-05 13:35:19', '2021-02-05 14:13:30', '2021-02-05 14:13:30'),
(37, 6, 'IT Executive', 'আইটি এক্সিকিউটিভ', '1', NULL, 1, '2021-02-06 18:59:05', '2021-02-06 19:04:25', '2021-02-06 19:04:25'),
(38, 6, 'IT Support', 'আইটি সমর্থন', '1', NULL, 1, '2021-02-06 18:59:44', '2021-02-06 19:04:31', '2021-02-06 19:04:31'),
(39, 6, 'IT Executive', 'আইটি এক্সিকিউটিভ', '1', NULL, 1, '2021-02-06 19:05:07', '2021-02-06 19:06:05', '2021-02-06 19:06:05'),
(40, 6, 'IT Executive', 'আইটি সমর্থন', '1', NULL, 1, '2021-02-06 19:05:22', '2021-02-06 19:06:13', '2021-02-06 19:06:13'),
(41, 6, 'IT Executive', 'আইটি সমর্থন', '1', NULL, 1, '2021-02-06 19:07:27', '2021-02-06 19:08:13', '2021-02-06 19:08:13'),
(42, NULL, 'bottle', 'bottle', '1', 'fJHEY3qtBA.1612847780.jpg', 2, '2021-02-09 05:16:20', '2021-02-23 21:35:08', '2021-02-23 21:35:08'),
(43, 42, 'plastic bottle', 'plastic bottle', '1', NULL, 1, '2021-02-09 05:18:54', '2021-02-09 05:18:54', NULL),
(44, 33, 'beauty', 'সৌন্দর্য', '1', NULL, 1, '2021-02-22 15:02:13', '2021-02-22 15:02:13', NULL),
(45, 31, 'book', 'বই', '1', NULL, 1, '2021-02-22 20:05:16', '2021-02-22 20:05:43', '2021-02-22 20:05:43'),
(46, 31, 'book', 'বই', '1', NULL, 1, '2021-02-22 20:07:18', '2021-02-22 20:07:18', NULL),
(47, 26, 'Elect', 'নির্বাচিত', '1', NULL, 1, '2021-02-22 20:27:50', '2021-02-22 20:27:50', NULL),
(48, 28, 'Fashion', 'ফ্যাশন', '1', NULL, 1, '2021-02-22 20:38:29', '2021-02-22 20:38:29', NULL),
(49, 29, 'Furniture', 'আসবাবপত্র', '1', NULL, 1, '2021-02-22 20:55:21', '2021-02-22 20:57:00', '2021-02-22 20:57:00'),
(50, 29, 'Furniture', 'আসবাবপত্র', '1', NULL, 1, '2021-02-22 20:57:16', '2021-02-22 20:57:16', NULL),
(51, 30, 'household', 'গৃহস্থালীর', '1', NULL, 1, '2021-02-22 21:11:54', '2021-02-22 21:11:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_field`
--

CREATE TABLE `category_field` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `field_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_field`
--

INSERT INTO `category_field` (`category_id`, `field_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(17, 35, '2021-02-05 11:44:47', NULL, NULL),
(17, 38, '2021-02-05 11:44:47', NULL, NULL),
(17, 34, '2021-02-05 11:44:47', NULL, NULL),
(17, 36, '2021-02-05 11:44:47', NULL, NULL),
(17, 37, '2021-02-05 11:44:47', NULL, NULL),
(15, 41, '2021-02-05 11:35:36', NULL, NULL),
(15, 36, '2021-02-05 11:35:36', NULL, NULL),
(15, 39, '2021-02-05 11:35:36', NULL, NULL),
(15, 40, '2021-02-05 11:35:36', NULL, NULL),
(24, 43, '2021-02-05 11:42:42', NULL, NULL),
(24, 42, '2021-02-05 11:42:42', NULL, NULL),
(24, 44, '2021-02-05 11:42:42', NULL, NULL),
(23, 43, '2021-02-05 11:42:58', NULL, NULL),
(23, 42, '2021-02-05 11:42:58', NULL, NULL),
(23, 44, '2021-02-05 11:42:58', NULL, NULL),
(25, 43, '2021-02-05 11:43:13', NULL, NULL),
(25, 42, '2021-02-05 11:43:13', NULL, NULL),
(25, 44, '2021-02-05 11:43:13', NULL, NULL),
(41, 47, '2021-02-06 20:07:27', NULL, NULL),
(43, 48, '2021-02-09 06:18:54', NULL, NULL),
(43, 49, '2021-02-09 06:18:54', NULL, NULL),
(45, 54, '2021-02-22 13:05:16', NULL, NULL),
(46, 54, '2021-02-22 13:07:18', NULL, NULL),
(47, 65, '2021-02-22 13:27:50', NULL, NULL),
(48, 66, '2021-02-22 13:38:29', NULL, NULL),
(50, 69, '2021-02-22 13:57:16', NULL, NULL),
(51, 70, '2021-02-22 14:11:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `chat_room_id` varchar(255) NOT NULL DEFAULT '',
  `ad_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `chat_room_id`, `ad_id`, `sender_id`, `receiver_id`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(128, '41-118-119', 41, 118, 119, 'hello', '2021-03-10 16:39:56', NULL, NULL),
(129, '42-118-119', 42, 118, 119, 'hello brother\n', '2021-03-10 16:40:14', NULL, NULL),
(130, '42-118-119', 42, 119, 118, 'hiii\n', '2021-03-10 16:40:23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title_bn` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `type` enum('city','division') NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `title`, `title_bn`, `type`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Adabor', 'আদাবর থানা', 'city', '1', '2020-10-16 15:05:07', '2021-02-20 12:57:30', '2021-02-20 12:57:30'),
(2, 'Chattogram', 'চট্টগ্রাম', 'city', '1', '2020-10-16 15:05:14', NULL, NULL),
(3, 'Sylhet', 'সিলেট', 'city', '1', '2020-10-16 15:05:14', NULL, NULL),
(4, 'Khulna', 'খুলনা', 'city', '1', '2020-10-16 15:05:14', NULL, NULL),
(5, 'Barishal', 'বরিশাল', 'city', '1', '2020-10-16 15:05:14', NULL, NULL),
(6, 'Rajshahi', 'রাজশাহী', 'city', '1', '2020-10-16 15:05:14', NULL, NULL),
(7, 'Rangpur', 'রংপুর', 'city', '1', '2020-10-16 15:05:14', '2021-02-23 21:34:58', '2021-02-23 21:34:58'),
(8, 'Mymensingh', 'ময়মনসিংহ', 'city', '1', '2020-10-16 15:08:00', '2020-12-15 04:51:27', NULL),
(9, 'Khulna', 'খুলনা', 'division', '1', '2020-10-16 15:43:21', '2021-02-20 20:10:00', '2021-02-20 20:10:00'),
(10, 'Chattogram Division', 'চট্টগ্রাম বিভাগ', 'division', '1', '2020-10-16 15:43:30', '2020-12-15 04:51:00', NULL),
(11, 'Sylhet Division', 'সিলেট বিভাগ', 'division', '1', '2020-10-16 15:43:30', '2021-03-09 11:07:05', '2021-03-09 11:07:05'),
(12, 'Khulna Division', 'খুলনা বিভাগ', 'division', '1', '2020-10-16 15:43:30', NULL, NULL),
(13, 'Rajshahi Division', 'রাজশাহী বিভাগ', 'division', '1', '2020-10-16 15:43:30', NULL, NULL),
(14, 'Rangpur Division', 'রংপুর বিভাগ', 'division', '1', '2020-10-16 15:43:30', NULL, NULL),
(15, 'Barishal Division', 'বরিশাল বিভাগ', 'division', '1', '2020-10-16 15:43:30', NULL, NULL),
(16, 'Mymensingh Division', 'Mymensingh Division', 'division', '1', '2020-10-16 15:43:30', '2020-12-15 04:48:20', NULL),
(17, 'Indore', 'ইন্দোর', 'division', '1', '2020-10-16 10:50:10', '2021-02-20 12:57:20', '2021-02-20 12:57:20'),
(18, 'Indore', 'ইন্দোর', 'city', '1', '2021-02-09 05:24:10', '2021-02-09 05:27:51', '2021-02-09 05:27:51'),
(19, 'Dhaka Division', 'ঢাকা বিভাগ', 'division', '1', '2021-02-20 20:07:29', '2021-02-20 20:08:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `city_areas`
--

CREATE TABLE `city_areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title_bn` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city_areas`
--

INSERT INTO `city_areas` (`id`, `city_id`, `title`, `title_bn`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(16, 17, 'Placiya', 'পলসিয়া', '1', '2020-10-19 10:47:10', '2020-10-23 05:14:49', NULL),
(17, 17, 'Rajwada1', 'রাজওয়াদা', '1', '2020-10-19 10:48:47', '2020-10-28 11:31:40', NULL),
(18, 17, 'Pardeshipura', 'পরদেশীপুর', '1', '2020-10-19 11:25:35', '2020-10-23 05:16:19', NULL),
(19, 17, 'Bhawarkua', 'ভাবারকুয়া', '1', '2020-10-19 11:28:34', '2020-10-23 05:16:55', NULL),
(20, 17, 'Naulakha', 'নওলখা', '1', '2020-10-28 11:32:51', '2020-10-28 11:32:51', NULL),
(21, 17, 'Sudama Nagar', 'সুদামা নগর', '1', '2020-10-28 11:34:38', '2020-10-28 11:36:39', NULL),
(22, 1, 'Adabor', 'আদাবর থানা', '1', '2020-12-15 04:42:09', '2020-12-15 04:42:09', NULL),
(23, 1, 'Badda', 'বাড্ডা থানা', '1', '2020-12-15 04:43:07', '2020-12-15 04:43:07', NULL),
(24, 1, 'Bandar', 'বন্দর উপজেলা', '1', '2020-12-15 04:43:49', '2020-12-15 04:43:49', NULL),
(25, 1, 'Bangshal', 'বংশাল থানা', '1', '2020-12-15 04:44:06', '2020-12-15 04:44:06', NULL),
(26, 9, 'Khulna', 'খুলনা', '1', '2020-12-15 04:45:36', '2020-12-15 04:45:36', NULL),
(27, 9, 'Chittagong', 'চট্টগ্রাম', '1', '2020-12-15 04:46:02', '2020-12-15 04:46:02', NULL),
(28, 9, 'Barisal', 'বরিশাল', '1', '2020-12-15 04:46:22', '2020-12-15 04:46:22', NULL),
(29, 16, 'Mymensingh Division', 'Mymensingh Division', '1', '2020-12-15 04:48:16', '2020-12-15 04:48:16', NULL),
(30, 14, 'Rangpur Division', 'রংপুর বিভাগ', '1', '2020-12-15 04:48:36', '2020-12-15 04:48:36', NULL),
(31, 15, 'Barishal Division', 'বরিশাল বিভাগ', '1', '2020-12-15 04:49:03', '2020-12-15 04:49:03', NULL),
(32, 13, 'Rajshahi Division', 'রাজশাহী বিভাগ', '1', '2020-12-15 04:50:12', '2020-12-15 04:50:12', NULL),
(33, 12, 'Khulna Division', 'খুলনা বিভাগ', '1', '2020-12-15 04:50:34', '2020-12-15 04:50:34', NULL),
(34, 10, 'Chattogram Division', 'চট্টগ্রাম বিভাগ', '1', '2020-12-15 04:50:56', '2020-12-15 04:50:56', NULL),
(35, 8, 'Mymensingh', 'ময়মনসিংহ', '1', '2020-12-15 04:51:23', '2020-12-15 04:51:23', NULL),
(36, 7, 'Rangpur', 'রংপুর', '1', '2020-12-15 04:52:42', '2020-12-15 04:52:42', NULL),
(37, 11, 'Sylhet Division', 'সিলেট বিভাগ', '1', '2020-12-15 04:53:06', '2020-12-15 04:53:06', NULL),
(38, 6, 'Rajshahi', 'রাজশাহী', '1', '2020-12-15 04:53:45', '2020-12-15 04:53:45', NULL),
(39, 5, 'Barishal', 'বরিশাল', '1', '2020-12-15 04:54:08', '2020-12-15 04:54:08', NULL),
(40, 4, 'Khulna', 'খুলনা', '1', '2020-12-15 04:54:30', '2020-12-15 04:54:30', NULL),
(41, 3, 'Sylhet', 'সিলেট', '1', '2020-12-15 04:54:54', '2020-12-15 04:54:54', NULL),
(42, 2, 'Chattogram', 'চট্টগ্রাম', '1', '2020-12-15 04:55:17', '2021-02-11 22:09:32', '2021-02-11 22:09:32'),
(43, 18, 'navalakha', 'নাভালখা', '1', '2021-02-09 05:25:44', '2021-02-09 05:26:30', '2021-02-09 05:26:30'),
(44, 18, 'navalakha', 'নাভালখা', '1', '2021-02-09 05:26:39', '2021-02-09 05:26:39', NULL),
(45, 2, 'Feni', 'ফেনী', '1', '2021-02-11 22:02:05', '2021-02-11 22:02:05', NULL),
(46, 2, 'Agrabad', 'আগ্রাবাদ', '1', '2021-02-11 22:05:29', '2021-02-11 22:05:29', NULL),
(47, 2, 'Kotwali', 'কোতোয়ালি', '1', '2021-02-11 22:06:16', '2021-02-11 22:06:16', NULL),
(48, 2, 'Chawkbazar', 'চকবাজার', '1', '2021-02-11 22:07:02', '2021-02-11 22:07:02', NULL),
(49, 2, 'Nasirabad', 'নসিরাবাদ', '1', '2021-02-11 22:07:43', '2021-02-11 22:07:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(250) NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `type` enum('string','html') NOT NULL DEFAULT 'string',
  `lang` enum('en','bn') NOT NULL DEFAULT 'en',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `key`, `value`, `type`, `lang`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'postman', 'https://www.getpostman.com/collections/82e7f1ea5d4528081902', 'string', 'en', '2020-10-16 19:00:35', NULL, NULL),
(2, 'currency', '৳', 'string', 'en', '2020-10-27 11:30:28', NULL, NULL),
(3, 'facebook', 'http://www.facebook.com/kroykari', 'string', 'en', '2020-10-28 11:17:13', '2021-02-06 07:32:09', NULL),
(4, 'youtube', 'https://www.youtube.com/channel/UC23XaiUjVYFBzYvqdsuMDZw/', 'string', 'en', '2020-10-28 11:17:13', '2021-02-18 20:35:46', NULL),
(5, 'instagram', 'https://www.instagram.com/kroykari', 'string', 'en', '2020-10-28 11:17:19', '2021-02-06 08:19:08', NULL),
(6, 'twitter', 'https://twitter.com/kroykari', 'string', 'en', '2020-10-28 11:17:19', '2021-02-06 08:23:59', NULL),
(7, 'how-to-sell-fast', 'What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?', 'html', 'en', '2020-10-28 11:17:19', NULL, NULL),
(8, 'membership', 'membership\r\nWhat is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?vWhat is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?', 'html', 'en', '2020-10-28 11:17:19', '2020-10-28 06:02:10', NULL),
(9, 'banner-advertising', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'html', 'en', '2020-10-28 11:19:18', '2020-10-28 07:02:00', NULL),
(10, 'faq', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'html', 'en', '2020-10-28 11:19:24', '2020-10-28 07:02:18', NULL),
(11, 'about-us', '<p>kroykari.com is the leading classifieds website for users in the Bangladesh. Since its launch in 2019 by Md. Akramul Hoque, kroykari.com has become the number one platform for users to buy, sell, or find anything in their community. kroykari.com is a website where you can buy and sell almost everything.&nbsp;</p>', 'html', 'en', '2020-10-28 11:19:24', '2021-02-06 07:20:19', NULL),
(12, 'terms-and-conditions', '<p><strong>Welcome to Kroykari.com Limited.</strong></p>\n\n<p><strong><em>Please read this important legal information that governs your use of the kroykari.com website and the services.</em></strong></p>\n\n<p><strong>18th of December, 2021</strong></p>\n\n<p>https://kroykari.com Limited or the Kroykari mobile application of the online platform, you confirm that you have read, understood and accept these terms of use (&ldquo;Terms&rdquo;) as the terms which govern your access to and use of the website and the service and you agree to comply with them, If you do not accept. If you do not accept or agree to comply with these terms, you must not use the website additionally, when using a portion of the service, you agree to conform to any applicable posted guideline for such service, which may change or be updated from time to time at our sole discretion.</p>\n\n<p>If you do not accept or agree to comply with these Terms, you must not use this Website. Additionally, when using a portion of the Service, you agree to conform to any applicable posted guidelines for such Service, which may change or be updated from time to time at our sole discretion.</p>\n\n<p>You will be required to enter into additional terms and conditions set out in our advertising agreement.</p>\n\n<ol>\n	<li><strong>Intellectual Property Rights &ndash; </strong>Intellectual All property, trade marks, database rights and rights in data, copyrights and topography right, and including application and the right to apply for registration any such rights and all inventions, rights in know-how, trade secrets and confidential information, customer and supplier lists and other proprietary knowledge and information and all right under licenses and consents in relation to any such rights and all rights and forms of protection of a similar nature.</li>\n	<li><strong>Privacy Policy - &nbsp;</strong>The privacy policy of the company from time to time.</li>\n	<li><strong>Material - </strong>&nbsp;Material and content published on the website or otherwise provided by the company in connection with the service.</li>\n	<li><strong>Product &ndash; </strong>online classifieds advertising platform provided on the website and the free ad services.</li>\n	<li><strong>Registration Details - </strong>&nbsp;The User details provide upon registering for the website from time to time (Example : Name, Phone numbers, email address).</li>\n	<li><strong>Unacceptable &ndash; </strong>Any Material or information uploaded to or made available on the website which under the low of any jurisdiction from which the website may be accessed maybe considered ;</li>\n</ol>\n\n<ol>\n	<li>Illegal, indecent, offensive, pornographic, insulting, false, unreliable, misleading, harmful or potentially harmful to minors, threatening, alleged to be or actually defamatory or in infringement of third party rights, any Intellectual Property Rights.</li>\n	<li>In breach of any applicable regulations, standards or codes of practice.</li>\n	<li>In contravention of legislation, including without limitation, that relating to weapons, animals or alcohol.</li>\n	<li>Harmful to the company&rsquo;s reputation. &nbsp;</li>\n</ol>\n\n<ol>\n	<li><strong>General Terms and Conditions Which apply to users</strong></li>\n</ol>\n\n<ol>\n	<li>In registering for this website, the user must provide accurate, current and complete registration details. Users must include their full names in the advert and make it clear that they are selling and buying goods or services in the course of business either by the content, format, size or place of the advertisement.</li>\n	<li>The users registration details and data relating to its use of the website will be recorded by the kroykari.com limited but information shall not be disclosed to third parties, any purpose unrelated to the website, by agreeing to the terms, you expressly give us permission to verify the authenticity of your details by calling you on the phone number submitted to us, the call may be recorded for quality assurance.</li>\n	<li>If the user&rsquo;s does not want the company to use its email address or mobile number to send information concerning the website and relate matters, the users should send email to <strong><a href=\"mailto:legal@kroykari.com\">legal@kroykari.com</a></strong> and unsubscribe as the subject heading of such message.</li>\n	<li>User&rsquo;s must keep confidential any identification and password details set-up or given to you as part of our security procedures and must not disclose them to any third party.</li>\n	<li>The Kroykari.com Limited reserves the right to suspend or terminate a user&rsquo;s account.</li>\n	<li>The Kroykaril.com Limited owns all intellectual property rights and associated with the website and services, including without limitation, any trade marks, trade names, design, text, graphics and the selection and arrangement, nothing contained in the website should be construed as granting by implication, any license or right to use any trademark displayed on the website without our written permission. &nbsp;</li>\n</ol>\n\n<p>&nbsp;</p>\n\n<ol>\n	<li><strong>No Spam Policy </strong></li>\n</ol>\n\n<ol>\n	<li>User&rsquo;s understand and agree that sending unsolicited email advertisement or other unsolicited communication to the company addresses or through the company computer systems are expressly prohibited by the terms. You acknowledge and agree that from time to time the company may monitor email usage using human monitors or automated software to flag certain words associated with spam or scams in emails that are sent between one users to another in the company&rsquo;s email system.</li>\n	<li>Any unauthorized use of the company computer systems is a violation of thes terms and certain applicable laws. In particular the BANGLADESH Cybercrimes legislation, such violations may &nbsp;subject the sender and his or her agents to civil and criminal penalties, please not that the BANGLADESH Cybercrime legislation carries significant penalties including imprisonment. In case you intend to solicit or contact our Users by obtaining their email or phone number from our website, we may report this behavior to the relevant authorities, who then may decide to prosecute you under the relevant BANGLADESH Laws.</li>\n</ol>\n\n<p>​​​​​​​<strong>Limitation of Liability&nbsp;&nbsp; </strong></p>\n\n<ol>\n	<li>The Korykari.com Limited shall not be liable for any ;</li>\n</ol>\n\n<p>Special losses or exemplary damages (even if the company has been advised of possibility of such losses or damage);</p>\n\n<ol>\n	<li>Loss product</li>\n	<li>Loss of profit.</li>\n	<li>Loss of business</li>\n	<li>Loss of use</li>\n	<li>Loss of revenue</li>\n	<li>Loss of contract</li>\n	<li>Loss of opportunity</li>\n	<li>Harm to reputation or loss of goodwill</li>\n</ol>\n\n<p>(in the cases of clauses i to ix whether direct or indirect, howsoever arising suffered by any user arising in any way in connection with thes terms or for any liability of a user to any third party.</p>\n\n<ol>\n	<li>Kroykari.com limited doesn&rsquo;t not guarantee that the website will always be accessible, uninterrupted, timely, secure, error free or free from computer virus or other invasive or damaging code or that the website will not be affected by force majeure events, including inability to obtain or shortage of necessary materials failure of information technology or telecommunications equipment or facilities. The Kroykari.com limited may suspend or withdraw or restrict the availability of all or any part of the website for business and operational reasons at any time and shall not be liable for any interruption to service. We recommend that you back up any content and data used in connection with the website, to protect yourself in case of problem with website or services. The Kroykari.com Limited is not liable for any failure in respect of its obligations hereunder which result directly or indirectly from failure or interruption software or service proved by third parties. The Kroykari.com limited is not responsible for the direct or indirect consequences of a user linking to any other website from website and has not approved such linked website or the material or information available from them.</li>\n</ol>\n\n<p>&nbsp;</p>\n\n<p><strong>Jobs Wanted &nbsp;</strong>The Kroykari.com Limited is not responsible for the information posted by the job seekers in the Jobs wanted section or in their CVs, By placing a job seeking ad in the Jobs wanted section, the recruiter will have to the CV uploaded to the job seeker&rsquo;s profile.</p>', 'html', 'en', '2020-10-28 11:19:24', '2021-02-21 20:43:01', NULL),
(13, 'privacy-policy', '<p><strong>Privacy Policy</strong></p>\r\n\r\n<p>We take your privacy very seriously and are committed to protecting the privacy of all visitor and subscribers to our website and we make available an app store and the corresponding services available through the platform.</p>\r\n\r\n<p>We set out our privacy policy, which we process any personal information that you provide to us. We will notify you if the way in which we process your information is to change at any time.</p>\r\n\r\n<p>Read this privacy policy carefully as it contains important information on who we are and how we collect, store, use and share your information. By accessing the Platform or using our services or otherwise indicating your consent, you agree to, and where required, use and transfer of your information as set out in this policy. If you don&rsquo;t accept the terms of this policy, you must not use the platform or services. This privacy policy supplements other notices and privacy policies and is not intended to override them.</p>\r\n\r\n<p><strong>The Data We Collect About You</strong></p>\r\n\r\n<p>Once you visit our platform or create a login and password to access the services, you may be asked to provide information about yourself. (1) Your name and contact details, including email address and telephone number, (2) email notification you will received (3) location enabled once you allowed (4)such other information as we may from time to time require to provide the services and comply with applicable law. The collection of information about your usage of the platform and the services and information from messages and communications you send to us.</p>\r\n\r\n<p><strong>Who we share your personal information with</strong></p>\r\n\r\n<p>Your personal information (which includes your name, address and any other details you provide to us which concern you as an individual). Our group authorized to process your information will do so in accordance with privacy policy.</p>\r\n\r\n<p>We require all third parties to respect the security of your personal data and to treat it in accordance with the law. We don&rsquo;t allow our third-party services providers to use your personal data for their own purposes and only permit them to process your personal data for specified purpose and in accordance with our instructions.</p>\r\n\r\n<p><strong>Security Measures </strong></p>\r\n\r\n<p>We have implemented security policies, rules and technical measures to protect the personal data that we have under our control from unauthorized access, improper use and disclosure, unauthorized destruction.</p>\r\n\r\n<p>We also have procedures in place to deal with any suspected data breach. You are solely responsible for keeping your password and other account details confidential. If you have concerns about your password, account details or are suspicious about any unauthorized use of your account, you should contact us immediately. We can deactivate or suspend your account at any time.</p>\r\n\r\n<p><strong>Inquiries</strong></p>\r\n\r\n<p>If you have any enquiry or concern about our privacy policy or the way in which we are handling personal data please contact us at using the following email address emailing us at <a href=\"mailto:privacy@kroykari.com\">privacy@kroykari.com</a> if at any time you wish us to cease processing your information please send a message to our admin department and insert &ldquo;unsubscribe&rdquo; as the subject heading.</p>\r\n\r\n<p><strong>Updates to policy </strong></p>\r\n\r\n<p>We reserve the right to vary this from time to time. Our update policy we will displayed on our platform and by continuing to use and access platform, following such changes, you agree to be bound by any variation made by us. It is your responsibility to check this policy form time to time to verify such variations.</p>\r\n\r\n<p>&nbsp;</p>', 'html', 'en', '2020-10-28 11:19:24', '2021-02-06 08:15:05', NULL),
(14, 'sitemap', '<div style=\"text-align:center\">\r\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d235527.45498641633!2d75.72341965660992!3d22.723911431346068!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3962fcad1b410ddb%3A0x96ec4da356240f4!2sIndore%2C%20Madhya%20Pradesh!5e0!3m2!1sen!2sin!4v1603868900494!5m2!1sen!2sin\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>\r\n</div>', 'html', 'en', '2020-10-28 11:19:24', '2020-10-28 07:10:21', NULL),
(15, 'careers', 'Lorem ipsum', 'string', 'en', '2020-10-28 12:11:45', NULL, NULL),
(16, 'stay-safe-on-bikroyKari', 'fds', 'string', 'en', '2020-10-28 12:13:47', NULL, NULL),
(17, 'promote-your-ad', 'Promote your ad', 'string', 'en', '2020-10-28 12:15:26', NULL, NULL),
(18, 'banner-advertising', 'Banner Advertising', 'html', 'bn', '2020-10-28 12:16:42', NULL, NULL),
(20, 'help', 'What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?', 'string', 'en', '2020-10-28 12:48:22', NULL, NULL),
(21, 'posting_rules', '<h2>&nbsp;</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Make sure you post in the correct category.</p>\r\n	</li>\r\n	<li>\r\n	<p>Do not post the same ad more than once or repost an ad within 7 days.</p>\r\n	</li>\r\n	<li>\r\n	<p>Do not upload pictures with watermarks.</p>\r\n	</li>\r\n	<li>\r\n	<p>Do not post ads containing multiple items unless it&#39;s a package deal.</p>\r\n	</li>\r\n	<li>\r\n	<p>Do not put your email or phone numbers in the title or description.</p>\r\n	</li>\r\n</ul>', 'html', 'en', '2020-11-03 15:21:16', '2020-11-03 11:27:52', NULL),
(22, 'posting_rules', '<p>Kroy.com এ পোস্ট করা সমস্ত বিজ্ঞাপন অবশ্যই আমাদের বিধি অনুসরণ করবে:<br />\nআপনি সঠিক বিভাগে পোস্ট করেছেন তা নিশ্চিত করুন।</p>\n\n<p>একই বিজ্ঞাপনটি একাধিক বার পোস্ট করবেন না বা days দিনের মধ্যে কোনও বিজ্ঞাপন পুনরায় পোস্ট করবেন না।</p>\n\n<p>জলছবি সহ ছবি আপলোড করবেন না।</p>\n\n<p>এটি কোনও প্যাকেজ চুক্তি না করে একাধিক আইটেমযুক্ত বিজ্ঞাপন পোস্ট করবেন না।</p>\n\n<p>আপনার ইমেল বা ফোন নম্বরগুলি শিরোনাম বা বর্ণনায় রাখবেন না।</p>', 'html', 'bn', '2020-11-03 15:32:10', NULL, NULL),
(24, 'email', 'support@kroykari.com', 'string', 'en', '2020-11-03 15:45:17', '2021-02-06 07:29:51', NULL),
(25, 'about-us', '<p>kroykari.com বাংলাদেশের ব্যবহারকারীদের জন্য শীর্ষস্থানীয় শ্রেণিবদ্ধ ওয়েবসাইট। মোঃ আকরামুল হক দ্বারা 2019 সালে চালু হওয়ার পর থেকে ক্রোকারি ডটকম ব্যবহারকারীদের জন্য তাদের সম্প্রদায়ের মধ্যে কেনা বেচা বা কিছু খুঁজে পাওয়ার এক নম্বর প্ল্যাটফর্ম হয়ে উঠেছে। kroykari.com এমন একটি ওয়েবসাইট যেখানে আপনি প্রায় সবকিছু কিনতে এবং বিক্রয় করতে পারেন।</p>', 'html', 'bn', '2021-02-05 14:32:00', '2021-02-06 07:20:57', NULL),
(26, 'help', 'Lorem ipsum english', 'string', 'en', '2021-02-09 11:26:59', NULL, NULL),
(27, 'help', 'Lorem ipsum bangla', 'string', 'bn', '2021-02-09 11:26:59', NULL, NULL),
(28, 'careers', '', 'html', 'bn', '2021-02-12 05:56:55', NULL, NULL),
(29, 'promote-your-ad', 'Promote your ad', 'string', 'bn', '2021-02-12 05:57:58', NULL, NULL),
(30, 'posting_allowance', 'আপনি বেশিরভাগ বিভাগে বিনামূল্যে কয়েকটি বিজ্ঞাপন পোস্ট করতে পারেন! কিছু বিভাগের বিজ্ঞাপনগুলির জন্য একটি নির্দিষ্ট পরিমাণের চেয়ে বেশি দামের অর্থ প্রদানের প্রয়োজন হয়। আরও বিজ্ঞাপন পোস্ট করতে, আপনার kroykari.com সদস্যতা সেট আপ করতে দয়া করে আমাদের সাথে যোগাযোগ করুন।', 'string', 'bn', '2021-03-03 16:13:01', NULL, NULL),
(31, 'posting_allowance', 'You can post a few ads for free in most categories! Ads in some categories require a payment if the price is above a certain amount. To post more ads, please contact us to set up your kroykari.com membership.', 'string', 'en', '2021-03-03 16:13:01', NULL, NULL),
(32, 'terms-and-conditions', '<pre>\r\nKroykari.com লিমিটেড স্বাগতম।\r\n\r\nদয়া করে এই গুরুত্বপূর্ণ আইনী তথ্যটি পড়ুন যা আপনার ক্রয়কারি.কম ওয়েবসাইট এবং পরিষেবাগুলির ব্যবহারকে নিয়ন্ত্রণ করে govern\r\n\r\n18 ডিসেম্বর, 2021\r\n\r\nhttps://kroykari.com লিমিটেড বা অনলাইন প্ল্যাটফর্মের ক্রয়কারি মোবাইল অ্যাপ্লিকেশন, আপনি নিশ্চিত করেছেন যে আপনি এই শর্তাদি (&quot;শর্তাদি&quot;) পড়েন, বুঝতে পেরেছেন এবং সেই ওয়েবসাইট হিসাবে আপনার অ্যাক্সেস এবং ব্যবহার পরিচালনা করে এবং পরিষেবাটি এবং আপনি সেগুলি মেনে চলতে সম্মত হন, যদি আপনি না স্বীকার করেন। আপনি যদি এই শর্তাদি মেনে না নিতে বা সম্মতি জানাতে না চান তবে আপনাকে অবশ্যই অতিরিক্তভাবে ওয়েবসাইটটি ব্যবহার করবেন না, পরিষেবার কোনও অংশ ব্যবহার করার সময়, আপনি এই জাতীয় পরিষেবার জন্য প্রযোজ্য পোস্টের কোনও নির্দেশিকা মেনে চলতে সম্মত হন, যা পরিবর্তিত হতে পারে বা সময় থেকে আপডেট হতে পারে আমাদের একমাত্র বিবেচনার ভিত্তিতে।\r\n\r\nআপনি যদি এই শর্তাদি মেনে নিতে বা সম্মতি জানাতে না চান তবে আপনাকে অবশ্যই এই ওয়েবসাইটটি ব্যবহার করবেন না। অতিরিক্তভাবে, পরিষেবার কোনও অংশ ব্যবহার করার সময়, আপনি এই জাতীয় পরিষেবার জন্য প্রযোজ্য পোস্টের কোনও নির্দেশিকা মেনে চলতে সম্মত হন, যা আমাদের একমাত্র বিবেচনার ভিত্তিতে সময়ে সময়ে পরিবর্তন হতে পারে বা আপডেট হতে পারে।\r\n\r\nআমাদের বিজ্ঞাপন চুক্তিতে সেট করা আপনাকে অতিরিক্ত শর্তাদি প্রবেশ করতে হবে You\r\n\r\nবৌদ্ধিক সম্পত্তি অধিকার - বৌদ্ধিক সমস্ত সম্পত্তি, বাণিজ্য চিহ্ন, ডাটাবেসের অধিকার এবং ডেটা অধিকার, কপিরাইট এবং টোগোগ্রাফি অধিকার, এবং আবেদন এবং এই জাতীয় কোনও অধিকার এবং সমস্ত আবিষ্কার, জানার অধিকার, ব্যবসায়ের গোপনীয়তা এবং গোপনীয়তার জন্য আবেদন করার অধিকার সহ তথ্য, গ্রাহক এবং সরবরাহকারী তালিকাগুলি এবং অন্যান্য মালিকানা জ্ঞান এবং তথ্য এবং এই জাতীয় কোনও অধিকারের সাথে সম্পর্কিত লাইসেন্স এবং সম্মতি অনুসারে সমস্ত অধিকার এবং একইরকম প্রকৃতির সুরক্ষার ফর্মগুলি।\r\nগোপনীয়তা নীতি - সময়ে সময়ে সংস্থার গোপনীয়তা নীতি।\r\nউপাদান - ওয়েবসাইটের উপর প্রকাশিত উপাদান বা সামগ্রী এবং অন্যথায় পরিষেবাটির সাথে সংস্থায় সরবরাহ করা সামগ্রী।\r\nপণ্য - ওয়েবসাইট এবং বিনামূল্যে বিজ্ঞাপন পরিষেবাগুলিতে সরবরাহ করা অনলাইন শ্রেণিবদ্ধ বিজ্ঞাপন প্ল্যাটফর্ম।\r\nনিবন্ধের বিশদ - ব্যবহারকারীর বিবরণগুলি সময়ে সময়ে ওয়েবসাইটে নিবন্ধকরণের জন্য সরবরাহ করে (উদাহরণ: নাম, ফোন নম্বর, ইমেল ঠিকানা)।\r\nঅগ্রহণযোগ্য - যে কোনও উপাদান বা তথ্য আপলোড করা বা ওয়েবসাইটে আপলোড করা হয়েছে যা এমন কোনও এখতিয়ারের নীচে রয়েছে যা থেকে ওয়েবসাইটটি অ্যাক্সেস করা হতে পারে বলে বিবেচিত হতে পারে;\r\nঅবৈধ, অশালীন, আপত্তিকর, অশ্লীল, অপমানজনক, মিথ্যা, অবিশ্বস্ত, বিভ্রান্তিকর, নাবালিকাদের পক্ষে ক্ষতিকারক বা সম্ভাব্য ক্ষতিকারক, হুমকি দেওয়া, সত্যই মানহানিকর বা তৃতীয় পক্ষের অধিকার লঙ্ঘনের অভিযোগে বা কোনও বৌদ্ধিক সম্পত্তি অধিকার।\r\nযে কোনও প্রযোজ্য বিধিমালা, মান বা অনুশীলনের কোড লঙ্ঘনের ক্ষেত্রে।\r\nসীমাবদ্ধতা ব্যতীত আইন লঙ্ঘনের ক্ষেত্রে যা অস্ত্র, প্রাণী বা অ্যালকোহল সম্পর্কিত।\r\nকোম্পানির সুনামের জন্য ক্ষতিকারক।\r\nসাধারণ শর্তাদি এবং শর্তাদি যা ব্যবহারকারীদের জন্য প্রযোজ্য\r\nএই ওয়েবসাইটটির জন্য নিবন্ধকরণের ক্ষেত্রে, ব্যবহারকারীকে অবশ্যই সঠিক, বর্তমান এবং সম্পূর্ণ নিবন্ধের বিশদ সরবরাহ করতে হবে। ব্যবহারকারীদের অবশ্যই বিজ্ঞাপনে তাদের পুরো নাম অন্তর্ভুক্ত করতে হবে এবং স্পষ্ট করে দিতে হবে যে তারা ব্যবসায়ের সময়ে পণ্য বা পরিষেবাদিগুলি বিজ্ঞাপনের সামগ্রী, ফর্ম্যাট, আকার বা স্থানের দ্বারা বিক্রয় এবং ক্রয় করছে।\r\nব্যবহারকারীর নিবন্ধের বিবরণ এবং ওয়েবসাইট এর ব্যবহার সম্পর্কিত ডেটা ক্রাইকারি ডট কম দ্বারা রেকর্ড করা হবে তবে তৃতীয় পক্ষের কাছে তথ্য প্রকাশ করা হবে না, শর্তাদির সাথে একমত হয়ে কোনও উদ্দেশ্য, আপনি স্পষ্টভাবে আমাদের অনুমতি দিন আমাদের কাছে জমা দেওয়া ফোন নম্বরটিতে আপনাকে কল করে আপনার বিশদটির সত্যতা যাচাই করতে কলটি গুণমানের আশ্বাসের জন্য রেকর্ড করা যেতে পারে।\r\nযদি ব্যবহারকারী না চান যে ওয়েবসাইটটি সম্পর্কিত তথ্য প্রেরণ এবং বিষয়গুলি সম্পর্কিত করার জন্য সংস্থাটি তার ইমেল ঠিকানা বা মোবাইল নম্বর ব্যবহার না করে, ব্যবহারকারীদের আইনী@kroykari.com এ ইমেল প্রেরণ করা উচিত এবং এই জাতীয় বার্তার বিষয় শিরোনাম হিসাবে সাবস্ক্রাইব করা উচিত।\r\nব্যবহারকারীর অবশ্যই আমাদের সুরক্ষা পদ্ধতির অংশ হিসাবে কোনও সনাক্তকরণ এবং পাসওয়ার্ডের বিবরণ সেট আপ করে বা আপনাকে দেওয়া উচিত এবং এটি কোনও তৃতীয় পক্ষের কাছে প্রকাশ করা উচিত নয়।\r\nক্রয়কারি ডট কম লিমিটেড কোনও ব্যবহারকারীর অ্যাকাউন্ট স্থগিত বা বন্ধ করার অধিকার সংরক্ষণ করে।\r\nক্রোকারিল ডট কম লিমিটেডের সমস্ত বৌদ্ধিক সম্পত্তির অধিকার রয়েছে এবং কোনও সীমাবদ্ধতা ছাড়াই ওয়েবসাইট এবং পরিষেবাগুলির সাথে সম্পর্কিত, কোনও ট্রেড মার্কস, ট্রেডের নাম, ডিজাইন, পাঠ্য, গ্রাফিক্স এবং নির্বাচন এবং ব্যবস্থা নেই, ওয়েবসাইটে থাকা কোনও কিছুই মঞ্জুরি হিসাবে গণ্য করা উচিত নয় জড়িত দ্বারা, আমাদের লিখিত অনুমতি ব্যতীত ওয়েবসাইটে প্রদর্শিত কোনও ট্রেডমার্ক বা লাইসেন্স ব্যবহারের অধিকার right\r\n\r\n\r\nকোনও স্প্যাম নীতি নেই\r\nব্যবহারকারীর বুঝতে এবং সম্মত হন যে অযৌক্তিক ইমেল বিজ্ঞাপন বা অন্য অযাচিত যোগাযোগ প্রেরণ কোম্পানির ঠিকানায় বা কোম্পানির কম্পিউটার সিস্টেমের মাধ্যমে শর্তাবলী দ্বারা স্পষ্টভাবে নিষিদ্ধ। আপনি স্বীকার করেন এবং সম্মত হন যে সময়ে সময়ে সংস্থাটি মানব মনিটর বা স্বয়ংক্রিয় সফ্টওয়্যার ব্যবহার করে ইমেলের ব্যবহার স্পষ্ট করতে বা স্প্যামের সাথে সম্পর্কিত কিছু শব্দ বা ইমেলগুলিতে স্ক্যামের সাথে যুক্ত হয় যা কোম্পানির ইমেল সিস্টেমে একজন ব্যবহারকারীর মধ্যে অন্যজনের কাছে প্রেরিত হয়।\r\nকোম্পানির কম্পিউটার সিস্টেমগুলির কোনও অননুমোদিত ব্যবহার থিস শর্তাদি এবং কিছু প্রযোজ্য আইন লঙ্ঘন। বিশেষত বঙ্গদেশ সাইবার ক্রাইমস আইন, এই ধরনের লঙ্ঘন প্রেরক এবং তার এজেন্টদের নাগরিক ও ফৌজদারি দন্ডের বিপরীতে থাকতে পারে, দয়া করে এটি করবেন না যে বঙ্গদেশের সাইবার ক্রাইম আইন কারাদণ্ড সহ গুরুত্বপূর্ণ দণ্ড বহন করে। যদি আপনি আমাদের ওয়েবসাইট থেকে আমাদের ব্যবহারকারীদের ইমেল বা ফোন নম্বর পেয়ে আমাদের কাছে অনুরোধ বা যোগাযোগ করার ইচ্ছা পোষণ করেন, তবে আমরা এই আচরণটি সম্পর্কিত কর্তৃপক্ষের কাছে জানাতে পারি, যারা পরে আপনাকে বাংলাদেশ সম্পর্কিত আইন অনুসারে মামলা করার সিদ্ধান্ত নিতে পারে।\r\nদায়বদ্ধতার সীমাবদ্ধতা\r\n\r\nKorykari.com লিমিটেড কারও জন্য দায়বদ্ধ হবে না;\r\nবিশেষ ক্ষতি বা অনুকরণীয় ক্ষয়ক্ষতি (এমনকি কোম্পানিকে এ জাতীয় ক্ষতি বা ক্ষতির সম্ভাবনা সম্পর্কে পরামর্শ দেওয়া হয়েছে);\r\n\r\nক্ষতি পণ্য\r\nলাভের ক্ষতি।\r\nব্যবসায় ক্ষতি\r\nব্যবহারের ক্ষতি\r\nরাজস্ব হ্রাস\r\nচুক্তি হ্রাস\r\nসুযোগ হারাতে হবে\r\nসুনামের ক্ষতি বা সদিচ্ছার ক্ষতি\r\n(অনুচ্ছেদের ক্ষেত্রে i থেকে ix প্রত্যক্ষ বা অপ্রত্যক্ষ যাই হোক না কেন, যে কোনও ব্যবহারকারীর দ্বারা যে কোনওভাবে থিস শর্তাদি বা কোনও তৃতীয় পক্ষের ব্যবহারকারীর দায়বদ্ধতার জন্য যেভাবেই উত্থাপিত হতে পারে suffered\r\n\r\nক্রোকারি ডট কম সীমাবদ্ধতা গ্যারান্টি দেয় না যে ওয়েবসাইটটি সর্বদা অ্যাক্সেসযোগ্য, নিরবচ্ছিন্ন, সময়োপযোগী, সুরক্ষিত, ত্রুটিমুক্ত বা কম্পিউটার ভাইরাস বা অন্যান্য আক্রমণাত্মক বা ক্ষতিকারক কোড থেকে মুক্ত থাকবে বা ওয়েবসাইটটি জোরপূর্বক মজুরি ইভেন্টগুলি দ্বারা প্রভাবিত হবে না including তথ্য প্রযুক্তি বা টেলিযোগাযোগ যন্ত্রপাতি বা সুযোগ-সুবিধার ব্যর্থতা বা প্রয়োজনীয় প্রয়োজনীয় সামগ্রীর অভাব বা অভাব। ক্রোকারি ডটকম সীমিত কোনও সময়ে ব্যবসায়িক এবং পরিচালনাগত কারণে ওয়েবসাইটের সমস্ত বা যে কোনও অংশের প্রাপ্যতা স্থগিত বা প্রত্যাহার বা সীমাবদ্ধ করতে পারে এবং পরিষেবাতে কোনও বাধা দেওয়ার জন্য দায়বদ্ধ হবে না। আমরা আপনাকে ওয়েবসাইট বা পরিষেবাগুলির ক্ষেত্রে সমস্যার ক্ষেত্রে নিজেকে রক্ষা করতে ওয়েবসাইটের সাথে সম্পর্কিত যে কোনও বিষয়বস্তু এবং ডেটা ব্যাক আপ করার পরামর্শ দিচ্ছি। ক্রয়কারি ডটকম লিমিটেড এখানে দায়বদ্ধতার ক্ষেত্রে কোনও ব্যর্থতার জন্য দায়বদ্ধ নয় যা তৃতীয় পক্ষ দ্বারা প্রমাণিত ব্যর্থতা বা বাধা সফ্টওয়্যার বা পরিষেবা থেকে প্রত্যক্ষ বা অপ্রত্যক্ষভাবে ফলাফল হয়। ক্রয়েকারি ডট কম সীমিত কোনও ব্যবহারকারী ওয়েবসাইট থেকে অন্য কোনও ওয়েবসাইটের সাথে সংযুক্ত হওয়ার প্রত্যক্ষ বা অপ্রত্যক্ষ পরিণতির জন্য দায়ী নয় এবং এ জাতীয় লিঙ্কযুক্ত ওয়েবসাইট বা তাদের কাছ থেকে উপলব্ধ উপাদান বা তথ্য অনুমোদিত নয়।\r\n\r\n\r\nচাকরি চেয়েছিলেন দ্য ক্রয়কারি ডট কম লিমিটেড চাকরি প্রার্থীদের পোস্ট করা তথ্যের জন্য দায়ী নয় জবস স্বেচ্ছায় বিভাগে বা তাদের সিভিতে, চাকরীর ওয়ান্টেড বিভাগে বিজ্ঞাপন চাওয়া একটি চাকরি রেখে নিয়োগকারীকে সিভিতে আপলোড করা সিভিতে থাকতে হবে কাজ সন্ধানকারী এর প্রোফাইল।</pre>', 'html', 'bn', '2021-03-03 16:50:02', '2021-03-03 11:22:21', NULL),
(33, 'privacy-policy', '<pre>\r\nগোপনীয়তা নীতি\r\n\r\nআমরা আপনার গোপনীয়তাটিকে খুব গুরুত্ব সহকারে নিই এবং আমাদের ওয়েবসাইটটিতে সমস্ত দর্শনার্থী এবং গ্রাহকদের গোপনীয়তা রক্ষা করতে প্রতিশ্রুতিবদ্ধ এবং আমরা প্ল্যাটফর্মের মাধ্যমে একটি অ্যাপ স্টোর এবং সম্পর্কিত পরিষেবা উপলব্ধ করব।\r\n\r\nআমরা আমাদের গোপনীয়তা নীতি নির্ধারণ করেছি, যা আমরা আপনাকে যে কোনও ব্যক্তিগত তথ্য সরবরাহ করি process আমরা আপনার তথ্যের যে পদ্ধতিতে যে কোনও সময় পরিবর্তন করতে হয় তা যদি আমরা আপনাকে অবহিত করব।\r\n\r\nএই গোপনীয়তা নীতিটি সাবধানতার সাথে পড়ুন কারণ এতে আমরা কে এবং কীভাবে আমরা আপনার তথ্য সংগ্রহ করি, সঞ্চয় করি, ব্যবহার করি এবং ভাগ করি সে সম্পর্কে গুরুত্বপূর্ণ তথ্য রয়েছে। প্ল্যাটফর্ম অ্যাক্সেস করে বা আমাদের পরিষেবাগুলি ব্যবহার করে বা অন্যথায় আপনার সম্মতি ইঙ্গিত করে আপনি এই নীতিতে নির্ধারিত হিসাবে আপনার তথ্যের ব্যবহার এবং স্থানান্তরের সাথে সম্মত হন, এবং যেখানে প্রয়োজন। আপনি যদি এই নীতিটির শর্তাদি স্বীকার না করেন তবে আপনাকে অবশ্যই প্ল্যাটফর্ম বা পরিষেবাগুলি ব্যবহার করবেন না। এই গোপনীয়তা নীতি অন্যান্য বিজ্ঞপ্তি এবং গোপনীয়তা নীতি পরিপূরক এবং তাদের ওভাররাইড করার উদ্দেশ্যে নয়।\r\n\r\nআমরা আপনার সম্পর্কে ডেটা সংগ্রহ করি\r\n\r\nআপনি একবার আমাদের প্ল্যাটফর্মটিতে যান বা পরিষেবাগুলিতে অ্যাক্সেসের জন্য লগইন এবং পাসওয়ার্ড তৈরি করলে আপনাকে নিজের সম্পর্কে তথ্য সরবরাহ করতে বলা হতে পারে। (1) আপনার নাম এবং যোগাযোগের বিশদ, ইমেল ঠিকানা এবং টেলিফোন নম্বর সহ, (2) আপনি ইমেল বিজ্ঞপ্তি পাবেন (3) আপনি অনুমতি দেওয়া একবার সক্ষম (4) যেমন সময় সময় আমরা প্রয়োজন পরিষেবা সরবরাহ করতে প্রয়োজন যেমন অন্যান্য তথ্য এবং প্রযোজ্য আইন মেনে চলুন। আপনার প্ল্যাটফর্মটির ব্যবহার সম্পর্কে তথ্য এবং আপনার কাছে আমাদের কাছে যে বার্তা এবং যোগাযোগ প্রেরণ করা হয়েছে সেগুলি এবং পরিষেবাগুলির তথ্য সংগ্রহ।\r\n\r\nআমরা কাদের সাথে আপনার ব্যক্তিগত তথ্য ভাগ করে নিই\r\n\r\nআপনার ব্যক্তিগত তথ্য (যার মধ্যে আপনার নাম, ঠিকানা এবং আপনি আমাদের সরবরাহ করেন এমন কোনও অন্যান্য বিবরণ রয়েছে যা আপনাকে ব্যক্তি হিসাবে চিন্তিত করে)। আপনার তথ্য প্রক্রিয়াকরণের জন্য অনুমোদিত আমাদের গোষ্ঠী গোপনীয়তা নীতি অনুসারে এটি করবে।\r\n\r\nআমাদের সমস্ত তৃতীয় পক্ষের আপনার ব্যক্তিগত ডেটা সুরক্ষার সম্মান করা এবং এটি আইন অনুসারে আচরণ করা প্রয়োজন। আমরা আমাদের তৃতীয় পক্ষের পরিষেবা সরবরাহকারীগুলিকে তাদের নিজস্ব উদ্দেশ্যে তাদের ব্যক্তিগত ডেটা ব্যবহার করার অনুমতি দিই না এবং কেবল তাদের নির্দিষ্ট উদ্দেশ্যে এবং আমাদের নির্দেশাবলী অনুসারে আপনার ব্যক্তিগত ডেটা প্রক্রিয়া করার অনুমতি দিই।\r\n\r\nসুরক্ষা ব্যবস্থা\r\n\r\nআমরা আমাদের নিয়ন্ত্রণাধীন ব্যক্তিগত তথ্যকে অননুমোদিত অ্যাক্সেস, অযৌক্তিক ব্যবহার এবং প্রকাশ, অননুমোদিত ধ্বংস থেকে সুরক্ষার জন্য সুরক্ষা নীতি, বিধি এবং প্রযুক্তিগত ব্যবস্থা প্রয়োগ করেছি।\r\n\r\nসন্দেহজনক ডেটা লঙ্ঘন মোকাবেলায় আমাদের কাছে পদ্ধতিও রয়েছে। আপনি নিজের পাসওয়ার্ড এবং অন্যান্য অ্যাকাউন্টের বিবরণ গোপনীয়তার জন্য একমাত্র দায়বদ্ধ। আপনার পাসওয়ার্ড, অ্যাকাউন্টের বিবরণ বা আপনার অ্যাকাউন্টের কোনও অননুমোদিত ব্যবহার সম্পর্কে সন্দেহ থাকলে আপনার অবিলম্বে আমাদের সাথে যোগাযোগ করা উচিত। আমরা আপনার অ্যাকাউন্টটি যে কোনও সময় নিষ্ক্রিয় বা স্থগিত করতে পারি।\r\n\r\nঅনুসন্ধান\r\n\r\nআমাদের গোপনীয়তা নীতি বা যেভাবে আমরা ব্যক্তিগত তথ্য পরিচালনা করছি সে সম্পর্কে আপনার যদি কোনও তদন্ত বা উদ্বেগ থাকে তবে নীচের ইমেল ঠিকানাটি ব্যবহার করে আমাদের সাথে যোগাযোগ করুন गोपनीयता@kroykari.com এ ইমেল করুন যে কোনও সময় আপনি যদি আমাদের তথ্যের প্রক্রিয়াকরণ বন্ধ করতে চান তবে আমাদের অ্যাডমিন বিভাগে একটি বার্তা প্রেরণ করুন এবং বিষয় শিরোনাম হিসাবে &quot;সদস্যতা বাতিল করুন&quot; sertোকান।\r\n\r\nনীতিতে আপডেট\r\n\r\nআমরা সময়ে সময়ে এটি পরিবর্তিত করার অধিকার সংরক্ষণ করি। আমাদের আপডেট নীতিটি আমরা আমাদের প্ল্যাটফর্মে প্রদর্শিত হবে এবং প্ল্যাটফর্মটি ব্যবহার এবং অ্যাক্সেস অব্যাহত রেখে, এই জাতীয় পরিবর্তনগুলি অনুসরণ করে, আপনি আমাদের দ্বারা তৈরি হওয়া কোনও প্রকারের দ্বারা আবদ্ধ হতে সম্মত হন। এই ধরণের বৈচিত্রগুলি যাচাই করতে সময়ে সময়ে এই নীতি ফর্মটি পরীক্ষা করা আপনার দায়িত্ব।</pre>', 'html', 'bn', '2021-03-03 16:53:49', '2021-03-03 11:26:59', NULL),
(35, 'safety-notification', '<p>We review all ads to keep everyone on kroykari.comm safe and happy</p>\r\n\r\n<p>Your ad will not go live if it is:<br />\r\n1. Prohibited item or activity that violates Bangladesh law.<br />\r\n2. Placed multiple times on same categories.<br />\r\n3. Any times that is located outsite the Bangladesh.<br />\r\n4. Fraudulent or misleading information.<br />\r\n5. Image with watermark.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;For more information, ready our Term and conditions</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'html', 'en', '2021-03-03 17:25:23', '2021-03-03 12:18:39', NULL),
(36, 'safety-notification', '<pre>\r\nআমরা kroykari.comm- তে প্রত্যেককে সুরক্ষিত এবং খুশি রাখতে সমস্ত বিজ্ঞাপন পর্যালোচনা করি\r\nআপনার বিজ্ঞাপনটি এটি লাইভ হবে না:\r\n১. নিষিদ্ধ আইটেম বা ক্রিয়াকলাপ যা বাংলাদেশ আইন লঙ্ঘন করে।\r\n2. একই বিভাগে একাধিকবার স্থাপন।\r\n৩. যে কোনও সময় বাংলাদেশের বাইরে অবস্থিত।\r\n৪. প্রতারণামূলক বা বিভ্রান্তিকর তথ্য\r\n5. জলছবি সহ চিত্র।\r\nআরও তথ্যের জন্য, আমাদের শর্তাদি এবং শর্তাদি প্রস্তুত করুন</pre>', 'html', 'bn', '2021-03-03 17:25:23', '2021-03-03 12:12:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test', 'akramulhoque2025@gmail.com', 'test 123', '2021-02-09 08:41:34', NULL, NULL),
(2, 'Akram', 'akramulhoque2016@gmail.com', 'Test', '2021-02-10 17:28:59', NULL, NULL),
(3, 'dsfs', 'ambuj@gmail.com', 'ewrwerw', '2021-02-11 10:27:40', NULL, NULL),
(4, 'ambuj', 'ambuj@gmail.com', 'dsf sddfdsfsd sdfgsdfsd', '2021-02-11 10:28:58', NULL, NULL),
(5, 'reter', 'ert@gmail.com', 'sadsad', '2021-02-11 10:30:17', NULL, NULL),
(6, 'Shivam', 'shivamyadav8959@gmail.com', 'lorem ipsum', '2021-02-11 10:47:28', NULL, NULL),
(7, 'akram', 'akramulhoque2016@gmail.com', 'test', '2021-02-11 22:58:17', NULL, NULL),
(8, 'akram', 'akramulhoque2016@gmail.com', 'testmail', '2021-02-23 14:07:45', NULL, NULL),
(9, 'akram', 'akramulhoque2016@gmail.com', 'testmail', '2021-02-23 14:07:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `favouriate_ads`
--

CREATE TABLE `favouriate_ads` (
  `id` int(10) UNSIGNED NOT NULL,
  `ad_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `unique_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `type` varchar(100) NOT NULL,
  `placeholder` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `name`, `type`, `placeholder`, `created_at`, `updated_at`, `deleted_at`) VALUES
(34, 'Flue Type', 'select', '', '2021-02-05 10:49:44', NULL, NULL),
(35, 'Brand', 'select', '', '2021-02-05 11:42:18', NULL, NULL),
(36, 'Modal Year', 'text', '', '2021-02-05 11:42:32', NULL, NULL),
(37, 'Transmission', 'checkbox', '', '2021-02-05 11:43:14', NULL, NULL),
(38, 'Car Condition', 'radio', '', '2021-02-05 11:43:44', NULL, NULL),
(39, 'RAM', 'select', '', '2021-02-05 11:32:37', NULL, NULL),
(40, 'ROM', 'select', '', '2021-02-05 11:33:35', NULL, NULL),
(41, 'Mobile Brand', 'select', '', '2021-02-05 11:34:54', NULL, NULL),
(42, 'Beds', 'select', '', '2021-02-05 11:40:36', NULL, NULL),
(43, 'Baths', 'select', '', '2021-02-05 11:41:48', NULL, NULL),
(44, 'Square feet', 'text', '', '2021-02-05 11:42:01', NULL, NULL),
(45, 'Gendor', 'radio', '', '2021-02-05 13:59:07', NULL, NULL),
(47, 'IT', 'select', '', '2021-02-06 20:01:45', NULL, NULL),
(48, 'bottle height', 'text', '', '2021-02-09 06:14:42', NULL, NULL),
(49, 'bottle width', 'text', '', '2021-02-09 06:18:29', NULL, NULL),
(53, 'beauty', 'select', '', '2021-02-22 08:01:00', NULL, NULL),
(54, 'Daily Book', 'select', '', '2021-02-22 12:59:39', NULL, NULL),
(65, 'Elect', 'select', '', '2021-02-22 13:23:59', NULL, NULL),
(66, 'fashion', 'select', '', '2021-02-22 13:37:09', NULL, NULL),
(69, 'furnitures', 'select', '', '2021-02-22 13:52:10', NULL, NULL),
(70, 'household', 'select', '', '2021-02-22 14:10:46', NULL, NULL),
(72, 'test22', 'select', '', '2021-02-23 14:18:04', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `field_options`
--

CREATE TABLE `field_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field_id` bigint(20) UNSIGNED NOT NULL,
  `option` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `field_options`
--

INSERT INTO `field_options` (`id`, `field_id`, `option`, `created_at`, `updated_at`, `deleted_at`) VALUES
(14, 34, 'Patrol', '2021-02-05 11:33:48', NULL, NULL),
(15, 34, 'CNG', '2021-02-05 11:33:48', NULL, NULL),
(16, 35, 'Tata', '2021-02-05 11:42:18', NULL, NULL),
(17, 35, 'MG', '2021-02-05 11:42:18', NULL, NULL),
(18, 35, 'BMW', '2021-02-05 11:42:18', NULL, NULL),
(19, 35, 'hyndai', '2021-02-05 11:42:18', NULL, NULL),
(20, 35, 'Honda', '2021-02-05 11:42:18', NULL, NULL),
(21, 35, 'Maruti', '2021-02-05 11:42:18', NULL, NULL),
(22, 35, 'Ford', '2021-02-05 11:42:18', NULL, NULL),
(23, 35, 'Kia', '2021-02-05 11:42:18', NULL, NULL),
(24, 37, 'Automatic', '2021-02-05 11:43:14', NULL, NULL),
(25, 37, 'Mannual', '2021-02-05 11:43:14', NULL, NULL),
(26, 37, 'Semi-automatic', '2021-02-05 11:43:14', NULL, NULL),
(27, 38, 'New', '2021-02-05 11:43:44', NULL, NULL),
(28, 38, 'Used', '2021-02-05 11:43:44', NULL, NULL),
(29, 39, '1 GB', '2021-02-05 11:32:37', NULL, NULL),
(30, 39, '2 GB', '2021-02-05 11:32:37', NULL, NULL),
(31, 39, '3 GB', '2021-02-05 11:32:37', NULL, NULL),
(32, 39, '4 GB', '2021-02-05 11:32:37', NULL, NULL),
(33, 39, '6 GB', '2021-02-05 11:32:37', NULL, NULL),
(34, 39, '8 GB', '2021-02-05 11:32:37', NULL, NULL),
(35, 39, '16 GB', '2021-02-05 11:32:37', NULL, NULL),
(36, 39, '64 GB', '2021-02-05 11:32:37', NULL, NULL),
(37, 40, '2 GB', '2021-02-05 11:33:35', NULL, NULL),
(38, 40, '4 GB', '2021-02-05 11:33:35', NULL, NULL),
(39, 40, '6 GB', '2021-02-05 11:33:35', NULL, NULL),
(40, 40, '8 GB', '2021-02-05 11:33:35', NULL, NULL),
(41, 40, '16 GB', '2021-02-05 11:33:35', NULL, NULL),
(42, 40, '32 GB', '2021-02-05 11:33:35', NULL, NULL),
(43, 40, '64 GB', '2021-02-05 11:33:35', NULL, NULL),
(44, 40, '128 GB', '2021-02-05 11:33:35', NULL, NULL),
(45, 40, '512 GB', '2021-02-05 11:33:35', NULL, NULL),
(46, 40, '1024 GB', '2021-02-05 11:33:35', NULL, NULL),
(47, 41, 'Apple', '2021-02-05 11:34:54', NULL, NULL),
(48, 41, 'Oppo', '2021-02-05 11:34:54', NULL, NULL),
(49, 41, 'Samsung', '2021-02-05 11:34:54', NULL, NULL),
(50, 41, 'Nokia', '2021-02-05 11:34:54', NULL, NULL),
(51, 41, 'One Plush', '2021-02-05 11:34:54', NULL, NULL),
(52, 41, 'Mi xiaomi', '2021-02-05 11:34:54', NULL, NULL),
(86, 43, '1', '2021-02-05 12:43:26', NULL, NULL),
(87, 43, '2', '2021-02-05 12:43:26', NULL, NULL),
(88, 43, '3', '2021-02-05 12:43:26', NULL, NULL),
(89, 43, '4', '2021-02-05 12:43:26', NULL, NULL),
(90, 43, '5', '2021-02-05 12:43:26', NULL, NULL),
(91, 43, '6', '2021-02-05 12:43:26', NULL, NULL),
(92, 43, '7', '2021-02-05 12:43:26', NULL, NULL),
(93, 43, '8', '2021-02-05 12:43:26', NULL, NULL),
(94, 43, '9', '2021-02-05 12:43:26', NULL, NULL),
(95, 43, '10', '2021-02-05 12:43:26', NULL, NULL),
(96, 43, '10+', '2021-02-05 12:43:26', NULL, NULL),
(97, 42, '1', '2021-02-05 12:43:33', NULL, NULL),
(98, 42, '2', '2021-02-05 12:43:33', NULL, NULL),
(99, 42, '3', '2021-02-05 12:43:33', NULL, NULL),
(100, 42, '4', '2021-02-05 12:43:33', NULL, NULL),
(101, 42, '5', '2021-02-05 12:43:33', NULL, NULL),
(102, 42, '6', '2021-02-05 12:43:33', NULL, NULL),
(103, 42, '7', '2021-02-05 12:43:33', NULL, NULL),
(104, 42, '8', '2021-02-05 12:43:33', NULL, NULL),
(105, 42, '9', '2021-02-05 12:43:33', NULL, NULL),
(106, 42, '10', '2021-02-05 12:43:33', NULL, NULL),
(107, 42, '10+', '2021-02-05 12:43:33', NULL, NULL),
(108, 45, 'Male', '2021-02-05 13:59:07', NULL, NULL),
(109, 45, 'Female', '2021-02-05 13:59:07', NULL, NULL),
(112, 47, 'IT Support', '2021-02-06 20:06:44', NULL, NULL),
(113, 47, 'Call Center Agent', '2021-02-06 20:06:44', NULL, NULL),
(114, 47, 'Helpdesk', '2021-02-06 20:06:44', NULL, NULL),
(117, 53, 'beauty', '2021-02-22 08:01:00', NULL, NULL),
(118, 53, 'cute', '2021-02-22 08:01:00', NULL, NULL),
(134, 54, 'Bd book ', '2021-02-22 13:06:34', NULL, NULL),
(135, 54, 'educationbook', '2021-02-22 13:06:34', NULL, NULL),
(136, 54, 'book1', '2021-02-22 13:06:34', NULL, NULL),
(137, 54, 'book2', '2021-02-22 13:06:34', NULL, NULL),
(155, 65, 'light', '2021-02-22 13:24:39', NULL, NULL),
(156, 65, 'blub', '2021-02-22 13:24:39', NULL, NULL),
(157, 65, 'screen', '2021-02-22 13:24:39', NULL, NULL),
(158, 66, 'makupbox', '2021-02-22 13:37:58', NULL, NULL),
(159, 66, 'ring', '2021-02-22 13:37:58', NULL, NULL),
(160, 66, 'finger ring', '2021-02-22 13:37:58', NULL, NULL),
(161, 69, 'furn', '2021-02-22 13:52:41', NULL, NULL),
(162, 69, 'table', '2021-02-22 13:52:41', NULL, NULL),
(163, 69, 'chir', '2021-02-22 13:52:41', NULL, NULL),
(164, 70, 'bad', '2021-02-22 14:11:26', NULL, NULL),
(165, 70, 'phillo', '2021-02-22 14:11:26', NULL, NULL),
(166, 70, 'dublx', '2021-02-22 14:11:26', NULL, NULL),
(169, 72, 'etest', '2021-02-23 14:18:04', NULL, NULL),
(170, 72, 'hello', '2021-02-23 14:18:04', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `ad_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(96, 1, 107, '2021-02-09 06:38:40', NULL, NULL),
(97, 10, 106, '2021-02-09 11:55:28', NULL, NULL),
(98, 31, 106, '2021-03-03 16:10:07', NULL, NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_name` varchar(100) NOT NULL,
  `is_status` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `is_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'User Group', '1', '2019-03-29 12:25:19', '2021-03-04 17:16:46', NULL),
(2, 'User', '1', '2019-03-29 12:25:19', '2021-03-05 10:27:06', NULL),
(3, 'Category', '1', '2019-12-10 14:44:55', '2021-03-05 10:27:12', NULL),
(4, 'Ad', '1', '2019-12-10 14:44:55', '2021-03-05 10:27:27', NULL),
(5, 'City, Division & Area', '1', '2019-12-10 14:44:55', '2021-03-05 13:29:41', NULL),
(6, 'Field', '1', '2019-12-10 14:46:45', '2021-03-05 10:28:17', NULL),
(7, 'Config', '1', '2019-12-10 14:47:41', '2021-03-05 10:28:20', NULL),
(8, 'Translate', '1', '2019-12-11 12:04:56', '2021-03-05 10:28:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(10) UNSIGNED NOT NULL,
  `receiver_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` varchar(100) NOT NULL,
  `meta_data` text NOT NULL,
  `is_read` enum('0','1') NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `sender_id`, `receiver_id`, `title`, `body`, `meta_data`, `is_read`, `created_at`, `updated_at`, `deleted_at`) VALUES
(21, 71, 98, 'Like', 'Honda 220 liked by Akram', 'a:2:{s:2:\"id\";i:13;s:4:\"type\";s:4:\"like\";}', '0', '2021-02-10 07:43:10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('shivamyadav8959@gmail.com', '$2y$10$bR9VD4TpERd9MOqdJvRAx.5PVF90Fs.HtQSEwAZsgO.xukF4o6V8u', '2021-02-20 17:33:27');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `permission_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `permission_name`, `module_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Show', 1, NULL, NULL, NULL),
(2, 'Create', 1, NULL, NULL, NULL),
(3, 'Update', 1, NULL, NULL, NULL),
(4, 'Delete', 1, NULL, NULL, NULL),
(5, 'Show', 2, NULL, NULL, NULL),
(6, 'Create', 2, NULL, NULL, NULL),
(7, 'Update', 2, NULL, NULL, NULL),
(8, 'Delete', 2, NULL, NULL, NULL),
(9, 'Show', 3, NULL, NULL, NULL),
(10, 'Create', 3, NULL, NULL, NULL),
(11, 'Update', 3, NULL, NULL, NULL),
(12, 'Delete', 3, NULL, NULL, NULL),
(13, 'Show', 4, NULL, NULL, NULL),
(14, 'Reject', 4, NULL, NULL, NULL),
(15, 'Approve', 4, NULL, NULL, NULL),
(16, 'Delete', 4, NULL, NULL, NULL),
(17, 'Show', 5, NULL, NULL, NULL),
(18, 'Create', 5, NULL, NULL, NULL),
(19, 'Update', 5, NULL, NULL, NULL),
(20, 'Delete', 5, NULL, NULL, NULL),
(21, 'Show', 6, NULL, NULL, NULL),
(22, 'Create', 6, NULL, NULL, NULL),
(23, 'Update', 6, NULL, NULL, NULL),
(24, 'Delete', 6, NULL, NULL, NULL),
(25, 'Show', 7, NULL, NULL, NULL),
(27, 'Update', 7, NULL, NULL, NULL),
(29, 'Show', 8, NULL, NULL, NULL),
(30, 'Update', 8, NULL, NULL, NULL),
(33, 'Show', 9, NULL, NULL, NULL),
(34, 'Create', 9, NULL, NULL, NULL),
(35, 'Update', 9, NULL, NULL, NULL),
(36, 'Delete', 9, NULL, NULL, NULL),
(37, 'Show', 10, NULL, NULL, NULL),
(38, 'Create', 10, NULL, NULL, NULL),
(39, 'Update', 10, NULL, NULL, NULL),
(40, 'Delete', 10, NULL, NULL, NULL),
(41, 'Show', 11, NULL, NULL, NULL),
(42, 'Create', 11, NULL, NULL, NULL),
(43, 'Update', 11, NULL, NULL, NULL),
(44, 'Delete', 11, NULL, NULL, NULL),
(45, 'Show', 12, NULL, NULL, NULL),
(46, 'Create', 12, NULL, NULL, NULL),
(47, 'Update', 12, NULL, NULL, NULL),
(48, 'Delete', 12, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(11) UNSIGNED NOT NULL,
  `permission_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 1),
(1, 2),
(1, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `report_ads`
--

CREATE TABLE `report_ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ad_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` enum('0','1','2') NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) UNSIGNED NOT NULL,
  `role_slug` varchar(255) NOT NULL,
  `role_title` varchar(80) NOT NULL,
  `role_level` tinyint(4) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` enum('0','1') DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_slug`, `role_title`, `role_level`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '', 'Super User', 1, '', '1', '2019-12-10 09:04:55', '2021-03-04 12:02:23', NULL),
(2, '', 'Manager', 2, '', '1', '2019-12-10 09:05:13', '2021-03-04 13:29:28', NULL),
(3, '', 'Team', 0, NULL, '1', '2021-03-05 05:51:49', '2021-03-05 05:51:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '2',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `device_token` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `lang` enum('en','bn') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `is_online` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `last_seen` datetime DEFAULT NULL,
  `login_by` enum('manually','facebook','google','') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'manually',
  `social_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_varify_email` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `otp` int(11) DEFAULT NULL,
  `otp_expiry_time` datetime DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_notify` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `delete_reason` text CHARACTER SET utf8 COLLATE utf8_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `first_name`, `last_name`, `email`, `phone`, `address`, `is_active`, `device_token`, `profile_image`, `password`, `device_type`, `lang`, `is_online`, `last_seen`, `login_by`, `social_id`, `is_varify_email`, `otp`, `otp_expiry_time`, `remember_token`, `is_notify`, `delete_reason`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'admin', NULL, NULL, 'admin@gmail.com', '9999999999', NULL, '1', 'dBBNKKKjUj049NSEwuvgoQ:APA91bFaPcDJGPxUMRWr9CtDLGXK2WXDTmt3OBhW2qwhOiUF3gy9Ui9Qxk-IqV-HU3XPw_VSgHO6dpSp7BZDS5aRHdcivVPb8OFyff-Ffd2PKTAn6qj-Mtr6thJQPKG0Fq5nulbQkZir', 'rdogi3iMgP.1602658747.jpeg', '$2y$10$ExamjU1FsSKJ.gJBmj.7Pen0jRyg7Y4RrNxQTkkMifAeDY3emahTm', '', 'en', '0', NULL, 'manually', NULL, '1', NULL, NULL, 'mx2FE0hLIiUgnPOfVv94n3repGadU1Uyhlb6dP8M1aNTlCQX42cdAjQXKQc5', '1', NULL, '2020-10-13 18:30:00', '2021-03-04 03:58:10', NULL),
(118, 2, 'shivamyadav8959@gmail.com', NULL, NULL, 'shivamyadav8959@gmail.com', '8959070299', NULL, '1', 'djWPQDpLdcLCFssqkIJyf7:APA91bFYcH9hu4jXpDuTY-4sfezowH9UXLf2JcMNTC--KI1lqvTsBZ24XuTLF8hLWu95-fucC0kgbao4Aw753bAUDy14xFZYwx5iHvit7nNZtjOguAFmlYWHfn4NEA9lfklNi0z1fVjX', NULL, '$2y$10$VJTPg6wDjSvVdjaNo3ZUoOofrmNf4q4NAIIAXNRgVLXru9Ta01Z5K', '', 'en', '0', NULL, 'manually', NULL, '1', NULL, NULL, '0E5EUbV12VdewnXqoB9riOnEfSFJc8CPxmR56Ftgf7s0FyMAfabd3bcVAr4L', '1', NULL, '2021-03-09 05:52:49', '2021-03-12 03:52:47', NULL),
(119, 2, 'Krishna Yadav', NULL, NULL, 'krishnayaduwanshi7@gmail.com', '7974682508', NULL, '1', '', NULL, '$2y$10$2/mH/ZO.p8qCnbz/B99cfu0C/4/Yo46ydkMgfkkyZT9iCmUCpyda.', '', 'en', '0', NULL, 'manually', NULL, '1', NULL, NULL, 'RxFbX1ug1O2UOz13OrzBzJ0mJXMz7WW1je7wgDIUwNZg4598bAPhzy27sB3C', '1', NULL, '2021-03-09 05:56:55', '2021-03-10 04:53:08', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_images`
--
ALTER TABLE `ad_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_field`
--
ALTER TABLE `category_field`
  ADD KEY `field_id` (`field_id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city_areas`
--
ALTER TABLE `city_areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favouriate_ads`
--
ALTER TABLE `favouriate_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `field_options`
--
ALTER TABLE `field_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_id` (`field_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_ads`
--
ALTER TABLE `report_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `ad_images`
--
ALTER TABLE `ad_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `city_areas`
--
ALTER TABLE `city_areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `favouriate_ads`
--
ALTER TABLE `favouriate_ads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `field_options`
--
ALTER TABLE `field_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `report_ads`
--
ALTER TABLE `report_ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_field`
--
ALTER TABLE `category_field`
  ADD CONSTRAINT `category_field_ibfk_1` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `city_areas`
--
ALTER TABLE `city_areas`
  ADD CONSTRAINT `city_areas_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `field_options`
--
ALTER TABLE `field_options`
  ADD CONSTRAINT `field_options_ibfk_1` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

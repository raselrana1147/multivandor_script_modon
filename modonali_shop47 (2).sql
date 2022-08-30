-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2022 at 09:57 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `modonali_shop47`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `unique_identifier` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `activated` int(1) NOT NULL DEFAULT 1,
  `image` varchar(1000) COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `set_default` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `address`, `country`, `city`, `postal_code`, `phone`, `set_default`, `created_at`, `updated_at`) VALUES
(1, 12, '434 West Rampura', 'Bangladesh', 'Dhaka', '1219', '01714973888', 0, '2021-03-31 17:13:16', '2021-03-31 17:13:16'),
(2, 20, '434 East Rampura Dhaka 1219', 'Bangladesh', 'Dhaka', '1219', '01635418688', 0, '2021-04-15 04:24:04', '2021-04-15 04:24:04'),
(3, 23, 'Dhaka', 'Afghanistan', 'Dhaks', '1209', '01737464624', 0, '2021-04-19 21:54:58', '2021-04-19 21:54:58'),
(4, 25, 'Badda', 'Bangladesh', 'Dhaka', '1212', '01626086429', 0, '2021-04-23 15:23:43', '2021-04-23 15:23:43'),
(5, 11, '350, Moynarbag, Badda, Dhaka -1212', 'Bangladesh', 'City', '1212', '01715374289', 0, '2021-04-23 15:26:59', '2021-04-23 15:26:59'),
(6, 14, '2 no Garden Road', 'Bangladesh', 'Dhaka', '1215', '01715225003', 0, '2021-05-19 08:40:23', '2021-05-19 08:40:23'),
(7, 9, '116, Kazi Nazrul Islam Avenue', 'Bangladesh', 'Dhaka', '1205', '01989999003', 0, '2021-05-22 06:19:35', '2021-05-22 06:19:35'),
(8, 43, 'Dorgashorif', 'Bangladesh', 'Madaripur', '7900', '+8801715566347', 0, '2021-05-27 11:49:56', '2021-05-27 11:49:56');

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_format` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `name`, `logo`, `currency_id`, `currency_format`, `facebook`, `twitter`, `instagram`, `youtube`, `google_plus`, `created_at`, `updated_at`) VALUES
(1, 'Active eCommerce', 'uploads/logo/matggar.png', 1, 'symbol', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://youtube.com', 'https://google.com', '2019-08-04 16:39:15', '2019-08-04 16:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2020-02-24 05:55:07', '2020-02-24 05:55:07'),
(2, 'Fabric', '2020-02-24 05:55:13', '2020-02-24 05:55:13'),
(3, 'Volum', '2021-03-31 07:32:05', '2021-03-31 07:32:05'),
(4, 'Country of Origin', '2021-03-31 07:33:12', '2021-03-31 07:33:12'),
(5, 'Key Feature', '2021-04-09 08:45:56', '2021-04-09 08:45:56'),
(6, 'Color', '2021-04-09 08:46:16', '2021-04-09 08:46:16'),
(7, 'Weight', '2021-04-11 16:30:28', '2021-04-11 16:30:28'),
(8, 'Quantity', '2021-05-27 12:24:51', '2021-05-27 12:24:51'),
(9, 'Type', '2021-06-15 06:32:30', '2021-06-15 06:32:30'),
(11, 'liter', '2021-09-02 06:15:34', '2021-09-02 06:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_translations`
--

CREATE TABLE `attribute_translations` (
  `id` bigint(20) NOT NULL,
  `attribute_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute_translations`
--

INSERT INTO `attribute_translations` (`id`, `attribute_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 3, 'Volum', 'en', '2021-03-31 07:32:05', '2021-03-31 07:32:05'),
(2, 4, 'Country of Origin', 'en', '2021-03-31 07:33:12', '2021-03-31 07:33:12'),
(3, 4, 'بلد المنشأ', 'sa', '2021-03-31 07:34:18', '2021-03-31 07:34:18'),
(4, 3, 'مقدار', 'sa', '2021-03-31 07:35:04', '2021-03-31 07:35:04'),
(5, 5, 'Key Feature', 'en', '2021-04-09 08:45:56', '2021-04-09 08:45:56'),
(6, 6, 'Color', 'en', '2021-04-09 08:46:16', '2021-04-09 08:46:16'),
(7, 7, 'Weight', 'en', '2021-04-11 16:30:28', '2021-04-11 16:30:28'),
(8, 8, 'Quantity', 'en', '2021-05-27 12:24:51', '2021-05-27 12:24:51'),
(9, 9, 'Type', 'en', '2021-06-15 06:32:30', '2021-06-15 06:32:30'),
(11, 11, 'liter', 'en', '2021-09-02 06:15:34', '2021-09-02 06:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 1,
  `published` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `url`, `position`, `published`, `created_at`, `updated_at`) VALUES
(4, 'uploads/banners/banner.jpg', '#', 1, 1, '2019-03-12 05:58:23', '2019-06-11 04:56:50'),
(5, 'uploads/banners/banner.jpg', '#', 1, 1, '2019-03-12 05:58:41', '2019-03-12 05:58:57'),
(6, 'uploads/banners/banner.jpg', '#', 2, 1, '2019-03-12 05:58:52', '2019-03-12 05:58:57'),
(7, 'uploads/banners/banner.jpg', '#', 2, 1, '2019-05-26 05:16:38', '2019-05-26 05:17:34'),
(8, 'uploads/banners/banner.jpg', '#', 2, 1, '2019-06-11 05:00:06', '2019-06-11 05:00:27'),
(9, 'uploads/banners/banner.jpg', '#', 1, 1, '2019-06-11 05:00:15', '2019-06-11 05:00:29'),
(10, 'uploads/banners/banner.jpg', '#', 1, 0, '2019-06-11 05:00:24', '2019-06-11 05:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` int(11) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_img` int(11) DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `short_description`, `description`, `banner`, `meta_title`, `meta_img`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'How to Start an Online Store', 'how-to-start-an-online-store', 'In this article, we’ll take all the guesswork out of starting your own business. We’ll also provide you with all the tips and information.', '<p>\r\n</p><p><span style=\"font-weight: 400;\">There are currently </span><span style=\"font-weight: 400;\">7.1 million online retailers</span><span style=\"font-weight: 400;\"> in the world with 1.8 million in the United States alone. And more are opening all the time.</span></p><p><span style=\"font-weight: 400;\">In\r\n the midst of all this opportunity, how do you know if opening an online\r\n store is something you should do? You’ve heard of others who succeeded \r\nbut how do you know if you’ll also succeed?</span></p><p><span style=\"font-weight: 400;\">Maybe\r\n you’ve been on the verge of starting your own business, but you’ve \r\nallowed fear to hold you back. Or, maybe you think you don’t have the \r\nqualifications to make it as an online entrepreneur.</span></p><p><span style=\"font-weight: 400;\">The\r\n only way to know for sure is to do it yourself. And the fact that you \r\nknow of others who succeeded means the odds are in your favor of making \r\nit, too.</span></p><p><span style=\"font-weight: 400;\">In this article, \r\nwe’ll take all the guesswork out of starting your own business. We’ll \r\nalso provide you with all the tips and information you need to ensure \r\nyou are able to operate a successful online store.</span></p><h2 id=\"its-never-been-easier-to-start-an-online-store\" class=\"\"><span style=\"font-weight: 400;\">It’s Never Been Easier to Start an Online Store</span></h2><p><span style=\"font-weight: 400;\">If you’ve ever dreamed of starting an online store, there’s no better time to begin than right now. According to </span><span style=\"font-weight: 400;\">eMarketer</span><span style=\"font-weight: 400;\"> US consumers will spend $709.78 billion on </span><span style=\"font-weight: 400;\">eCommerce</span><span style=\"font-weight: 400;\">\r\n in 2020, which represents an increase of 18.0%. And these are the \r\nestimated numbers in spite of everything that’s going on in the world.</span></p><p><span style=\"font-weight: 400;\">But there are more reasons you shouldn’t wait. We’ll talk about them more below.</span></p><h3><span style=\"font-weight: 400;\">1. More resources than ever.</span></h3><p><span style=\"font-weight: 400;\">There\r\n are a ton of resources available to point you in the right direction \r\nand answer any questions you may have. YouTube is an especially helpful \r\nresource where you can find videos of people showing you step by step \r\nhow to open up an online store and stock it full of products.</span></p><p><span style=\"font-weight: 400;\">Another\r\n helpful resource are Facebook groups. Here you can connect with other \r\nlike-minded, eCommerce website owners and gain helpful, expert advice.</span></p><h3><span style=\"font-weight: 400;\">2. Endless amount of online store builders and features.</span></h3><p><span style=\"font-weight: 400;\">Online </span><span style=\"font-weight: 400;\">eCommerce platforms</span><span style=\"font-weight: 400;\">\r\n are beginner-friendly and easy to use. They take the guesswork out of \r\ndesigning an online store by providing a selection of pre-made, \r\nready-to-use templates. Another great thing about these templates is \r\nthat they’re easily accessible, giving you the freedom and functionality\r\n to make changes to your site whenever you see fit.</span></p><h2 id=\"3-signs-youre-ready-to-start-your-own-ecommerce-store\" class=\"active\"><span style=\"font-weight: 400;\">3 Signs You’re Ready to Start Your Own E-commerce Store</span></h2><p><span style=\"font-weight: 400;\">Below\r\n we included a few indications that you may be ready to open your own \r\nonline store. These are just some things that, if you’ve experienced \r\nthem, you may consider moving forward and taking the plunge to start \r\nyour small business.</span></p><h3><span style=\"font-weight: 400;\">1. You are interested in running an online business.</span></h3><p><span style=\"font-weight: 400;\">Are\r\n you intrigued by the thought of running an online operation? Maybe \r\nyou’ve already begun researching the idea or asked the opinion of a few \r\nfriends. If this is the case, starting an online business may be \r\nsomething you’re ready for.</span></p><h3><span style=\"font-weight: 400;\">2. You want to diversify and add another revenue stream.</span></h3><p><span style=\"font-weight: 400;\">Maybe\r\n you’re somebody who’s only looking to create an additional stream of \r\nincome. If this is the case, an online store might be the perfect choice\r\n for you.</span></p><p><span style=\"font-weight: 400;\">Online stores \r\nallow you the flexibility to operate them full-time or on a part-time \r\nbasis. The decision on how to run yours depends entirely on you and your\r\n financial goals.</span></p>', 16, 'How to Start an Online Store', 16, 'In this article, we’ll take all the guesswork out of starting your own business. We’ll also provide you with all the tips and information you need to ensure you are able to operate a successful online store.', 'online store,', 1, '2021-03-31 12:07:54', '2021-06-15 06:54:42', NULL),
(2, 2, 'Stay fashionably chill', 'stay-fashionably-chill', 'Summer is over and Milan Fashion Week is just around the corner. It’s time to check out what your favorite influences are wearing on the runway and out on the streets.', '<div class=\"listItem\" style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Roboto, Arial, Helvetica, sans-serif; vertical-align: baseline;\"><div class=\"rowItem plane right_\" style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; border-radius: 4px; display: flex;\"><div class=\"itemThumb\" style=\"margin: 0px 20px 0px 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; width: 300px;\"><a href=\"https://it.aliexpress.com/item/33029457217.html\" target=\"_blank\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(0, 102, 204);\"><img src=\"https://ae01.alicdn.com/kf/Ha99c4aa6c76444e18654caac9da00811D.jpg\" style=\"margin: 0px; padding: 0px; border-width: initial; border-color: initial; border-image: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0px; line-height: inherit; font-family: inherit; color: transparent; max-width: 100%;\"></a></div><div class=\"itemContent\" data-spm-anchor-id=\"a2g0o.ams_88493.1567496964.i3.1a351133Y86JkS\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; flex: 1 1 0%;\"><h3 style=\"margin: 20px 0px 1em; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 24px; line-height: 1; font-family: &quot;Open Sans&quot;; vertical-align: baseline;\">Throw some shade</h3><div class=\"content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Shades\r\n are a must for any jet-setter. Take a pair on road trips to shield your\r\n eyes from the glaring sun or use it as a clever cover up for when \r\nyou’ve partied too hard the night before. This pair is perfect for \r\nputting on a poker face while maintaining a hint of mystery. But do \r\nwatch out, someone might take you for an undercover Bond girl!</div></div></div></div><div class=\"listItem\" style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Roboto, Arial, Helvetica, sans-serif; vertical-align: baseline;\"><div class=\"rowItem plane right_\" style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; border-radius: 4px; display: flex;\"><div class=\"itemThumb\" style=\"margin: 0px 20px 0px 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; width: 300px;\"><a href=\"https://www.aliexpress.com/item/33000000824.html\" target=\"_blank\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(0, 102, 204);\"><img src=\"https://ae01.alicdn.com/kf/H7e60ff0040c142ceb77f7c788777878fD.png\" style=\"margin: 0px; padding: 0px; border-width: initial; border-color: initial; border-image: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0px; line-height: inherit; font-family: inherit; color: transparent; max-width: 100%;\"></a></div><div class=\"itemContent\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; flex: 1 1 0%;\"><h3 style=\"margin: 20px 0px 1em; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 24px; line-height: 1; font-family: &quot;Open Sans&quot;; vertical-align: baseline;\">Stay in bloom</h3><div class=\"content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">You\r\n can never go wrong with a bold floral ensemble. The print is infinitely\r\n instagrammable because it works to liven up most backgrounds. Style \r\nthis red, hot top it with jean shorts and a straw hat or with a glossy, \r\npleated skirt--- we guarantee you’ll find so many occasions to whip this\r\n out of your closet!</div></div></div></div><div class=\"listItem\" style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Roboto, Arial, Helvetica, sans-serif; vertical-align: baseline;\"><div class=\"rowItem plane right_\" style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; border-radius: 4px; display: flex;\"><div class=\"itemThumb\" style=\"margin: 0px 20px 0px 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; width: 300px;\"><img src=\"https://ae01.alicdn.com/kf/H4119ac27a8c74b0283f1d7e2a5b0f630f.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0px; line-height: inherit; font-family: inherit; color: transparent; max-width: 100%;\"></div><div class=\"itemContent\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; flex: 1 1 0%;\"><h3 style=\"margin: 20px 0px 1em; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 24px; line-height: 1; font-family: &quot;Open Sans&quot;; vertical-align: baseline;\">All white all right</h3><div class=\"content\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Nothing\r\n says easy and crisp more than all-white ensemble. It looks just right \r\non a spontaneous boat trip, a hot date downtown or for a Sirtaki dance \r\nin the alleys of an old Greek town. You can’t go wrong with this white \r\nnumber, just make sure you keep it looking pristine whatever you decide \r\nto do!</div></div></div></div>', 17, 'Stay fashionably chill', 17, 'Summer is over and Milan Fashion Week is just around the corner. It’s time to check out what your favorite influences are wearing on the runway and out on the streets.', 'Style,', 1, '2021-03-31 12:15:07', '2021-06-15 06:54:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `category_name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Online Sell', 'Online-Sell', '2021-03-31 12:03:20', '2021-03-31 12:03:20', NULL),
(2, 'Style', 'Style', '2021-03-31 12:09:39', '2021-03-31 12:09:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `top` int(1) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `top`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'HappyRich', '5', 1, 'happy-rich', 'HappyRich', 'Making Life Beautiful', '2019-03-12 06:05:56', '2021-03-31 07:18:35'),
(2, 'Unilever', '12', 1, 'unilever', 'Unilever', 'Unilever plc is a British multinational consumer goods company headquartered in London, England.', '2019-03-12 06:06:13', '2021-03-31 11:01:40'),
(3, 'Cow Brand', '27', 0, 'cow-brand', 'Cow Brand', 'There is an old saying here, “business as slow but steady pace of the cow”. For here, the “cow” trade-mark is not just something we put on the products.', '2021-04-09 09:16:07', '2021-04-09 09:16:29'),
(4, 'Tommy Hilfiger', '62', 0, 'Tommy-Hilfiger-rvWyU', 'Tommy Hilfiger', 'Tommy Hilfiger', '2021-04-26 06:51:34', '2021-04-26 06:51:34'),
(5, 'Polo Ralph Lauren', '64', 0, 'polo-ralph-lauren', NULL, NULL, '2021-04-26 08:02:52', '2021-04-26 08:07:01'),
(6, 'Burberry', '65', 0, 'Burberry-BFKwV', NULL, NULL, '2021-04-26 08:11:42', '2021-04-26 08:11:42'),
(7, 'Beximco Comminucation', '73', 0, 'Beximco-Comminucation-OtazO', 'Beximco Comminucation', NULL, '2021-04-28 08:02:36', '2021-04-28 08:02:36'),
(8, 'Sarf Pharma', '78', 0, 'sarf-pharma', 'Sarf Pharmaceuticals Ltd.', 'Sarf Pharmaceuticals (Unani) Bangladesh Ltd.', '2021-05-27 12:19:30', '2021-05-27 12:19:55'),
(9, 'Walton', NULL, 0, 'walton-b1fwm', 'Walton', NULL, '2021-06-15 06:31:14', '2021-06-15 06:31:33'),
(11, 'Rasel Rana', '79', 0, 'Rasel-Rana-nOUiC', 'Walton', 'sfdsfdf', '2021-09-02 06:13:47', '2021-09-02 06:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `brand_translations`
--

CREATE TABLE `brand_translations` (
  `id` bigint(20) NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brand_translations`
--

INSERT INTO `brand_translations` (`id`, `brand_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'HappyRich', 'en', '2021-03-31 07:18:35', '2021-03-31 07:18:35'),
(2, 2, 'Unilever', 'en', '2021-03-31 11:00:06', '2021-03-31 11:00:06'),
(3, 2, 'Unilever', 'bd', '2021-03-31 11:00:58', '2021-03-31 11:00:58'),
(4, 3, 'Cow Brand', 'en', '2021-04-09 09:16:07', '2021-04-09 09:16:07'),
(5, 4, 'Tommy Hilfiger', 'en', '2021-04-26 06:51:34', '2021-04-26 06:51:34'),
(6, 5, 'Polo Ralph Lauren', 'en', '2021-04-26 08:02:52', '2021-04-26 08:02:52'),
(7, 6, 'Burberry', 'en', '2021-04-26 08:11:42', '2021-04-26 08:11:42'),
(8, 7, 'Beximco Comminucation', 'en', '2021-04-28 08:02:36', '2021-04-28 08:02:36'),
(9, 8, 'Sarf Pharma', 'en', '2021-05-27 12:19:30', '2021-05-27 12:19:30'),
(10, 9, 'Walton', 'en', '2021-06-15 06:31:14', '2021-06-15 06:31:14'),
(11, 9, 'Walton', 'bd', '2021-06-15 06:31:33', '2021-06-15 06:31:33'),
(13, 11, 'Rasel Rana', 'en', '2021-09-02 06:13:47', '2021-09-02 06:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'home_default_currency', '27', '2018-10-16 01:35:52', '2021-03-27 01:20:52'),
(2, 'system_default_currency', '27', '2018-10-16 01:36:58', '2021-03-27 01:20:52'),
(3, 'currency_format', '1', '2018-10-17 03:01:59', '2018-10-17 03:01:59'),
(4, 'symbol_format', '1', '2018-10-17 03:01:59', '2019-01-20 02:10:55'),
(5, 'no_of_decimals', '2', '2018-10-17 03:01:59', '2021-04-11 10:05:00'),
(6, 'product_activation', '1', '2018-10-28 01:38:37', '2019-02-04 01:11:41'),
(7, 'vendor_system_activation', '1', '2018-10-28 07:44:16', '2019-02-04 01:11:38'),
(8, 'show_vendors', '1', '2018-10-28 07:44:47', '2019-02-04 01:11:13'),
(9, 'paypal_payment', '0', '2018-10-28 07:45:16', '2019-01-31 05:09:10'),
(10, 'stripe_payment', '0', '2018-10-28 07:45:47', '2018-11-14 01:51:51'),
(11, 'cash_payment', '1', '2018-10-28 07:46:05', '2019-01-24 03:40:18'),
(12, 'payumoney_payment', '0', '2018-10-28 07:46:27', '2019-03-05 05:41:36'),
(13, 'best_selling', '1', '2018-12-24 08:13:44', '2019-02-14 05:29:13'),
(14, 'paypal_sandbox', '0', '2019-01-16 12:44:18', '2019-01-16 12:44:18'),
(15, 'sslcommerz_sandbox', '1', '2019-01-16 12:44:18', '2019-03-14 00:07:26'),
(16, 'sslcommerz_payment', '0', '2019-01-24 09:39:07', '2019-01-29 06:13:46'),
(17, 'vendor_commission', '20', '2019-01-31 06:18:04', '2019-04-13 06:49:26'),
(18, 'verification_form', '[{\"type\":\"text\",\"label\":\"Your name\"},{\"type\":\"text\",\"label\":\"Shop name\"},{\"type\":\"text\",\"label\":\"License No\"},{\"type\":\"text\",\"label\":\"Full Address\"},{\"type\":\"text\",\"label\":\"Phone Number\"},{\"type\":\"file\",\"label\":\"Tax Papers\"},{\"type\":\"text\",\"label\":\"Email\"}]', '2019-02-03 11:36:58', '2021-08-22 10:51:44'),
(19, 'google_analytics', '0', '2019-02-06 12:22:35', '2019-02-06 12:22:35'),
(20, 'facebook_login', '1', '2019-02-07 12:51:59', '2021-04-01 10:11:52'),
(21, 'google_login', '0', '2019-02-07 12:52:10', '2019-02-08 19:41:14'),
(22, 'twitter_login', '0', '2019-02-07 12:52:20', '2019-02-08 02:32:56'),
(23, 'payumoney_payment', '1', '2019-03-05 11:38:17', '2019-03-05 11:38:17'),
(24, 'payumoney_sandbox', '1', '2019-03-05 11:38:17', '2019-03-05 05:39:18'),
(36, 'facebook_chat', '0', '2019-04-15 11:45:04', '2021-04-28 06:18:36'),
(37, 'email_verification', '1', '2019-04-30 07:30:07', '2021-04-01 07:00:27'),
(38, 'wallet_system', '1', '2019-05-19 08:05:44', '2021-03-28 11:09:19'),
(39, 'coupon_system', '1', '2019-06-11 09:46:18', '2021-04-01 07:00:19'),
(40, 'current_version', '4.1', '2019-06-11 09:46:18', '2019-06-11 09:46:18'),
(41, 'instamojo_payment', '0', '2019-07-06 09:58:03', '2019-07-06 09:58:03'),
(42, 'instamojo_sandbox', '1', '2019-07-06 09:58:43', '2019-07-06 09:58:43'),
(43, 'razorpay', '0', '2019-07-06 09:58:43', '2019-07-06 09:58:43'),
(44, 'paystack', '0', '2019-07-21 13:00:38', '2019-07-21 13:00:38'),
(45, 'pickup_point', '1', '2019-10-17 11:50:39', '2021-04-01 07:00:18'),
(46, 'maintenance_mode', '0', '2019-10-17 11:51:04', '2021-04-01 10:12:28'),
(47, 'voguepay', '0', '2019-10-17 11:51:24', '2019-10-17 11:51:24'),
(48, 'voguepay_sandbox', '0', '2019-10-17 11:51:38', '2019-10-17 11:51:38'),
(50, 'category_wise_commission', '0', '2020-01-21 07:22:47', '2021-06-14 09:26:25'),
(51, 'conversation_system', '1', '2020-01-21 07:23:21', '2020-01-21 07:23:21'),
(52, 'guest_checkout_active', '1', '2020-01-22 07:36:38', '2020-01-22 07:36:38'),
(53, 'facebook_pixel', '0', '2020-01-22 11:43:58', '2020-01-22 11:43:58'),
(55, 'classified_product', '1', '2020-05-13 13:01:05', '2021-04-01 06:59:54'),
(56, 'pos_activation_for_seller', '1', '2020-06-11 09:45:02', '2020-06-11 09:45:02'),
(57, 'shipping_type', 'product_wise_shipping', '2020-07-01 13:49:56', '2020-07-01 13:49:56'),
(58, 'flat_rate_shipping_cost', '75', '2020-07-01 13:49:56', '2021-04-15 08:07:54'),
(59, 'shipping_cost_admin', '25', '2020-07-01 13:49:56', '2021-04-15 08:08:18'),
(60, 'payhere_sandbox', '0', '2020-07-30 18:23:53', '2020-07-30 18:23:53'),
(61, 'payhere', '0', '2020-07-30 18:23:53', '2020-07-30 18:23:53'),
(62, 'google_recaptcha', '0', '2020-08-17 07:13:37', '2020-08-17 07:13:37'),
(63, 'ngenius', '0', '2020-09-22 10:58:21', '2020-09-22 10:58:21'),
(64, 'header_logo', '1', '2020-11-16 07:26:36', '2021-03-28 11:07:24'),
(65, 'show_language_switcher', 'on', '2020-11-16 07:26:36', '2021-03-27 04:29:22'),
(66, 'show_currency_switcher', 'on', '2020-11-16 07:26:36', '2021-03-27 04:29:22'),
(67, 'header_stikcy', 'on', '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(68, 'footer_logo', '1', '2020-11-16 07:26:36', '2021-03-28 11:07:46'),
(69, 'about_us_description', 'Best Online Marketplace <br>', '2020-11-16 07:26:36', '2021-03-27 05:45:55'),
(70, 'contact_address', '379 East Rampura, Dhaka 1219', '2020-11-16 07:26:36', '2021-03-27 05:30:46'),
(71, 'contact_phone', '+880 1817590724', '2020-11-16 07:26:36', '2021-03-27 05:30:19'),
(72, 'contact_email', 'support@modonali.com', '2020-11-16 07:26:36', '2021-03-27 05:30:19'),
(73, 'widget_one_labels', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(74, 'widget_one_links', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(75, 'widget_one', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(76, 'frontend_copyright_text', '© ModonAli.com 2021', '2020-11-16 07:26:36', '2021-03-27 05:31:46'),
(77, 'show_social_links', 'on', '2020-11-16 07:26:36', '2021-03-28 11:08:06'),
(78, 'facebook_link', 'https://www.facebook.com/ModonAliCom/', '2020-11-16 07:26:36', '2021-03-27 05:31:46'),
(79, 'twitter_link', 'https://twitter.com/ModonaliCom', '2020-11-16 07:26:36', '2021-03-27 11:54:26'),
(80, 'instagram_link', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(81, 'youtube_link', 'https://www.youtube.com/channel/UCA0AGuwykwhn_UEY5VOS-Qg', '2020-11-16 07:26:36', '2021-03-27 12:05:59'),
(82, 'linkedin_link', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(83, 'payment_method_images', '22', '2020-11-16 07:26:36', '2021-04-01 06:23:08'),
(84, 'home_slider_images', '[\"18\",\"19\",\"40\"]', '2020-11-16 07:26:36', '2021-04-09 10:47:07'),
(85, 'home_slider_links', '[\"https:\\/\\/modonali.com\\/product\\/deep-sea-concentrate-mineral\",\"https:\\/\\/modonali.com\\/product\\/nano-sweet\",\"https:\\/\\/modonali.com\\/product\\/zoras-brightening-treatment-set\"]', '2020-11-16 07:26:36', '2021-04-09 10:47:07'),
(86, 'home_banner1_images', '[\"46\",\"47\",\"48\"]', '2020-11-16 07:26:36', '2021-04-10 05:19:47'),
(87, 'home_banner1_links', '[\"#\",\"#\",\"#\"]', '2020-11-16 07:26:36', '2021-04-10 05:19:47'),
(88, 'home_banner2_images', '[]', '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(89, 'home_banner2_links', '[]', '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(90, 'home_categories', '[\"1\",\"4\",\"5\",\"3\",\"2\",\"7\",\"6\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\"]', '2020-11-16 07:26:36', '2021-04-11 13:06:21'),
(91, 'top10_categories', '[\"1\",\"4\",\"5\",\"10\",\"2\",\"3\"]', '2020-11-16 07:26:36', '2021-04-11 12:31:53'),
(92, 'top10_brands', '[\"1\",\"2\",\"3\"]', '2020-11-16 07:26:36', '2021-04-09 10:15:18'),
(93, 'website_name', 'ModonAli', '2020-11-16 07:26:36', '2021-03-27 05:14:14'),
(94, 'site_motto', 'Best Online Marketpalce', '2020-11-16 07:26:36', '2021-04-01 06:50:11'),
(95, 'site_icon', '2', '2020-11-16 07:26:36', '2021-03-29 17:47:55'),
(96, 'base_color', '#e62e04', '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(97, 'base_hov_color', '#e62e04', '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(98, 'meta_title', 'ModonAli.com', '2020-11-16 07:26:36', '2021-04-01 06:50:01'),
(99, 'meta_description', 'Best Online Marketplace', '2020-11-16 07:26:36', '2021-04-01 06:50:01'),
(100, 'meta_keywords', 'ModonAli.com, ModonAli, eCommerce, Online Store,', '2020-11-16 07:26:36', '2021-04-01 06:50:01'),
(101, 'meta_image', '2', '2020-11-16 07:26:36', '2021-04-01 06:50:01'),
(102, 'site_name', 'ModonAli', '2020-11-16 07:26:36', '2021-03-28 11:06:45'),
(103, 'system_logo_white', '1', '2020-11-16 07:26:36', '2021-03-28 05:06:30'),
(104, 'system_logo_black', '1', '2020-11-16 07:26:36', '2021-03-28 05:06:30'),
(105, 'timezone', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(106, 'admin_login_background', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(107, 'iyzico_sandbox', '1', '2020-12-30 16:45:56', '2020-12-30 16:45:56'),
(108, 'iyzico', '0', '2020-12-30 16:45:56', '2021-03-27 05:18:23'),
(109, 'decimal_separator', '1', '2020-12-30 16:45:56', '2020-12-30 16:45:56'),
(110, 'nagad', '1', '2021-01-22 10:30:03', '2021-03-27 05:18:17'),
(111, 'bkash', '1', '2021-01-22 10:30:03', '2021-03-27 05:18:15'),
(112, 'bkash_sandbox', '1', '2021-01-22 10:30:03', '2021-01-22 10:30:03'),
(113, 'header_menu_labels', '[\"Home\",\"Flash Sale\",\"Blogs\",\"All Brands\",\"All Categories\"]', '2021-02-16 02:43:11', '2021-02-16 02:52:18'),
(114, 'header_menu_links', '[\"http:\\/\\/modonali.com\\/\",\"http:\\/\\/modonali.com\\/flash-deals\",\"http:\\/\\/modonali.com\\/blog\",\"http:\\/\\/modonali.com\\/brands\",\"http:\\/\\/modonali.com\\/categories\"]', '2021-02-16 02:43:11', '2021-03-27 04:26:41'),
(115, 'cookies_agreement_text', '<p>We use cookie for better user experience, check our policy <a href=\"https://modonali.com/privacypolicy\" target=\"_blank\">here</a> <br></p>', '2021-03-27 04:29:56', '2021-04-01 06:51:37'),
(116, 'show_cookies_agreement', 'on', '2021-03-27 04:29:56', '2021-03-27 04:29:56'),
(117, 'product_manage_by_admin', '1', '2021-04-01 07:00:10', '2021-04-01 07:00:10'),
(118, 'facebook_comment', '1', '2021-04-10 06:16:33', '2021-04-10 11:50:39'),
(119, 'home_banner3_images', '[\"54\",\"52\",\"53\"]', '2021-04-10 16:43:49', '2021-04-10 16:43:49'),
(120, 'home_banner3_links', '[\"#\",\"#\",\"#\"]', '2021-04-10 16:43:49', '2021-04-10 16:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `variation` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(20,2) DEFAULT NULL,
  `tax` double(20,2) DEFAULT NULL,
  `shipping_cost` double(20,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `commision_rate` double(8,2) NOT NULL DEFAULT 0.00,
  `banner` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT 0,
  `top` int(1) NOT NULL DEFAULT 0,
  `digital` int(1) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `level`, `name`, `commision_rate`, `banner`, `icon`, `featured`, `top`, `digital`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 'Health & Beauty', 0.00, '13', '51', 1, 1, 0, 'beauty-health', 'Health & Beauty', NULL, '2021-04-10 16:39:45', '2021-04-10 16:39:45'),
(2, 0, 0, 'Fashion & Clothing', 0.00, '14', '44', 1, 0, 0, 'fashion-clothing', 'Fashion & Clothing', NULL, '2021-06-15 06:30:22', '2021-06-15 06:30:22'),
(3, 0, 0, 'Cosmetics', 0.00, '15', '49', 1, 1, 0, 'cosmetics', 'Cosmetics', NULL, '2021-04-10 14:41:48', '2021-04-10 14:41:48'),
(4, 1, 1, 'Bath & Body', 0.00, NULL, NULL, 0, 0, 0, 'Bath--Body-suyNV', NULL, NULL, '2021-04-09 08:48:42', '2021-04-09 08:48:42'),
(5, 1, 1, 'Skin Care', 0.00, '59', '50', 0, 0, 0, 'skin-care', 'Skin Care', NULL, '2021-04-12 05:22:22', '2021-04-12 05:22:22'),
(6, 2, 1, 'Women\'s Clothing', 0.00, NULL, NULL, 0, 0, 0, 'women-clothing-f8pbw', NULL, NULL, '2021-04-11 12:58:43', '2021-04-11 12:58:43'),
(7, 2, 1, 'Men\'s Clothing', 0.00, NULL, NULL, 0, 0, 0, 'men-clothing-enq0n', NULL, NULL, '2021-04-11 12:58:22', '2021-04-11 12:58:22'),
(8, 0, 0, 'Home Appliances', 0.00, NULL, NULL, 0, 0, 0, 'Home-Appliances-r3gL0', NULL, NULL, '2021-04-11 10:47:40', '2021-04-11 10:47:40'),
(9, 0, 0, 'Electronic Accessories', 0.00, NULL, NULL, 0, 0, 0, 'Electronic-Accessories-PObWX', NULL, NULL, '2021-04-11 10:50:18', '2021-04-11 10:50:18'),
(10, 1, 1, 'Health Care', 0.00, '58', NULL, 0, 0, 0, 'Health-Care-sUeRu', NULL, NULL, '2021-04-11 12:30:21', '2021-04-11 12:30:21'),
(11, 0, 0, 'Consumer Products', 0.00, NULL, NULL, 0, 0, 0, 'Consumer-Products-yf6TU', NULL, NULL, '2021-04-11 12:54:12', '2021-04-11 12:54:12'),
(12, 11, 1, 'Fruits', 0.00, NULL, NULL, 0, 0, 0, 'Fruits-GNbRG', NULL, NULL, '2021-04-11 12:55:53', '2021-04-11 12:55:53'),
(13, 11, 1, 'Groceries', 0.00, '60', NULL, 1, 0, 0, 'groceries', NULL, NULL, '2021-04-12 07:35:01', '2021-04-12 07:35:01'),
(14, 7, 2, 'T-Shirt', 0.00, NULL, NULL, 0, 0, 0, 't-shirt', NULL, NULL, '2021-04-28 06:46:33', '2021-04-28 06:46:33'),
(15, 13, 2, 'Food', 0.00, NULL, NULL, 0, 0, 0, 'Food-6t3RB', NULL, NULL, '2021-04-11 16:25:58', '2021-04-11 16:25:58'),
(16, 17, 1, 'Beverages', 0.00, NULL, NULL, 0, 0, 0, 'beverages', NULL, NULL, '2021-09-02 06:09:50', '2021-09-02 06:09:50'),
(17, 0, 0, 'Food & Beverage', 0.00, NULL, NULL, 0, 0, 0, 'Food--Beverage-dXvc6', 'Food & Beverage', NULL, '2021-04-28 06:39:26', '2021-04-28 06:39:26'),
(18, 17, 1, 'Home Made Food', 0.00, NULL, NULL, 0, 0, 0, 'Home-Made-Food-MMFbj', NULL, NULL, '2021-04-28 06:40:51', '2021-04-28 06:40:51'),
(19, 17, 1, 'Cake & Pastry', 0.00, NULL, NULL, 0, 0, 0, 'Cake--Pastry-aKm4P', NULL, NULL, '2021-04-28 06:42:02', '2021-04-28 06:42:02'),
(20, 10, 2, 'Unani Medicine', 0.00, NULL, '78', 0, 0, 0, 'unani-medicine', 'Unani Medicine', 'Unani Medicine', '2021-05-27 12:22:55', '2021-05-27 12:22:55');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Health & Beauty', 'en', '2021-03-27 05:39:04', '2021-03-27 05:39:04'),
(2, 2, 'Fashion & Clothing', 'en', '2021-03-27 05:42:04', '2021-03-31 11:55:40'),
(3, 3, 'Cosmetics', 'en', '2021-03-31 11:58:07', '2021-03-31 11:58:07'),
(4, 4, 'Bath & Body', 'en', '2021-04-09 08:48:42', '2021-04-09 08:48:42'),
(5, 5, 'Skin Care', 'en', '2021-04-09 09:57:31', '2021-04-09 09:57:31'),
(6, 6, 'Women\'s Clothing', 'en', '2021-04-11 10:43:03', '2021-04-11 12:58:43'),
(7, 7, 'Men\'s Clothing', 'en', '2021-04-11 10:43:26', '2021-04-11 12:58:22'),
(8, 8, 'Home Appliances', 'en', '2021-04-11 10:47:40', '2021-04-11 10:47:40'),
(9, 9, 'Electronic Accessories', 'en', '2021-04-11 10:50:18', '2021-04-11 10:50:18'),
(10, 10, 'Health Care', 'en', '2021-04-11 12:30:21', '2021-04-11 12:30:21'),
(11, 11, 'Consumer Products', 'en', '2021-04-11 12:54:12', '2021-04-11 12:54:12'),
(12, 12, 'Fruits', 'en', '2021-04-11 12:55:53', '2021-04-11 12:55:53'),
(13, 13, 'Groceries', 'en', '2021-04-11 12:57:50', '2021-04-11 16:25:16'),
(14, 14, 'T-Shirt', 'en', '2021-04-11 13:02:30', '2021-04-11 13:02:30'),
(15, 15, 'Food', 'en', '2021-04-11 16:25:58', '2021-04-11 16:25:58'),
(16, 16, 'Beverages', 'en', '2021-04-11 16:26:35', '2021-04-11 16:26:35'),
(17, 17, 'Food & Beverage', 'en', '2021-04-28 06:39:26', '2021-04-28 06:39:26'),
(18, 18, 'Home Made Food', 'en', '2021-04-28 06:40:51', '2021-04-28 06:40:51'),
(19, 19, 'Cake & Pastry', 'en', '2021-04-28 06:42:02', '2021-04-28 06:42:02'),
(20, 20, 'Unani Medicine', 'en', '2021-05-27 12:22:23', '2021-05-27 12:22:23');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cost` double(20,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `city_translations`
--

CREATE TABLE `city_translations` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'IndianRed', '#CD5C5C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(2, 'LightCoral', '#F08080', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(3, 'Salmon', '#FA8072', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(4, 'DarkSalmon', '#E9967A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(5, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(6, 'Crimson', '#DC143C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(7, 'Red', '#FF0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(8, 'FireBrick', '#B22222', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(9, 'DarkRed', '#8B0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(10, 'Pink', '#FFC0CB', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(11, 'LightPink', '#FFB6C1', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(12, 'HotPink', '#FF69B4', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(13, 'DeepPink', '#FF1493', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(14, 'MediumVioletRed', '#C71585', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(15, 'PaleVioletRed', '#DB7093', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(16, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(17, 'Coral', '#FF7F50', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(18, 'Tomato', '#FF6347', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(19, 'OrangeRed', '#FF4500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(20, 'DarkOrange', '#FF8C00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(21, 'Orange', '#FFA500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(22, 'Gold', '#FFD700', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(23, 'Yellow', '#FFFF00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(24, 'LightYellow', '#FFFFE0', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(25, 'LemonChiffon', '#FFFACD', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(27, 'PapayaWhip', '#FFEFD5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(28, 'Moccasin', '#FFE4B5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(29, 'PeachPuff', '#FFDAB9', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(31, 'Khaki', '#F0E68C', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(32, 'DarkKhaki', '#BDB76B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(33, 'Lavender', '#E6E6FA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(34, 'Thistle', '#D8BFD8', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(35, 'Plum', '#DDA0DD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(36, 'Violet', '#EE82EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(37, 'Orchid', '#DA70D6', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(38, 'Fuchsia', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(39, 'Magenta', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(40, 'MediumOrchid', '#BA55D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(41, 'MediumPurple', '#9370DB', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(42, 'Amethyst', '#9966CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(43, 'BlueViolet', '#8A2BE2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(44, 'DarkViolet', '#9400D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(45, 'DarkOrchid', '#9932CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(46, 'DarkMagenta', '#8B008B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(47, 'Purple', '#800080', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(48, 'Indigo', '#4B0082', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(49, 'SlateBlue', '#6A5ACD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(50, 'DarkSlateBlue', '#483D8B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(52, 'GreenYellow', '#ADFF2F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(53, 'Chartreuse', '#7FFF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(54, 'LawnGreen', '#7CFC00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(55, 'Lime', '#00FF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(56, 'LimeGreen', '#32CD32', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(57, 'PaleGreen', '#98FB98', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(58, 'LightGreen', '#90EE90', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(60, 'SpringGreen', '#00FF7F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(61, 'MediumSeaGreen', '#3CB371', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(62, 'SeaGreen', '#2E8B57', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(63, 'ForestGreen', '#228B22', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(64, 'Green', '#008000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(65, 'DarkGreen', '#006400', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(66, 'YellowGreen', '#9ACD32', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(67, 'OliveDrab', '#6B8E23', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(68, 'Olive', '#808000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(69, 'DarkOliveGreen', '#556B2F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(70, 'MediumAquamarine', '#66CDAA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(72, 'LightSeaGreen', '#20B2AA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(73, 'DarkCyan', '#008B8B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(74, 'Teal', '#008080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(75, 'Aqua', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(76, 'Cyan', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(77, 'LightCyan', '#E0FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(79, 'Aquamarine', '#7FFFD4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(80, 'Turquoise', '#40E0D0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(81, 'MediumTurquoise', '#48D1CC', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(82, 'DarkTurquoise', '#00CED1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(83, 'CadetBlue', '#5F9EA0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(84, 'SteelBlue', '#4682B4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(86, 'PowderBlue', '#B0E0E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(87, 'LightBlue', '#ADD8E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(88, 'SkyBlue', '#87CEEB', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(89, 'LightSkyBlue', '#87CEFA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(91, 'DodgerBlue', '#1E90FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(92, 'CornflowerBlue', '#6495ED', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(93, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(94, 'RoyalBlue', '#4169E1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(95, 'Blue', '#0000FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(96, 'MediumBlue', '#0000CD', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(97, 'DarkBlue', '#00008B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(98, 'Navy', '#000080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(99, 'MidnightBlue', '#191970', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(100, 'Cornsilk', '#FFF8DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(102, 'Bisque', '#FFE4C4', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(103, 'NavajoWhite', '#FFDEAD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(104, 'Wheat', '#F5DEB3', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(105, 'BurlyWood', '#DEB887', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(106, 'Tan', '#D2B48C', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(107, 'RosyBrown', '#BC8F8F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(108, 'SandyBrown', '#F4A460', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(109, 'Goldenrod', '#DAA520', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(110, 'DarkGoldenrod', '#B8860B', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(111, 'Peru', '#CD853F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(112, 'Chocolate', '#D2691E', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(113, 'SaddleBrown', '#8B4513', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(114, 'Sienna', '#A0522D', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(115, 'Brown', '#A52A2A', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(116, 'Maroon', '#800000', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(117, 'White', '#FFFFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(118, 'Snow', '#FFFAFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(119, 'Honeydew', '#F0FFF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(120, 'MintCream', '#F5FFFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(121, 'Azure', '#F0FFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(122, 'AliceBlue', '#F0F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(123, 'GhostWhite', '#F8F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(125, 'Seashell', '#FFF5EE', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(126, 'Beige', '#F5F5DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(127, 'OldLace', '#FDF5E6', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(128, 'FloralWhite', '#FFFAF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(129, 'Ivory', '#FFFFF0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(131, 'Linen', '#FAF0E6', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(132, 'LavenderBlush', '#FFF0F5', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(133, 'MistyRose', '#FFE4E1', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(134, 'Gainsboro', '#DCDCDC', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(135, 'LightGrey', '#D3D3D3', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(136, 'Silver', '#C0C0C0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(137, 'DarkGray', '#A9A9A9', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(138, 'Gray', '#808080', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(139, 'DimGray', '#696969', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(140, 'LightSlateGray', '#778899', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(141, 'SlateGray', '#708090', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(143, 'Black', '#000000', '2018-11-05 02:12:30', '2018-11-05 02:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `commission_histories`
--

CREATE TABLE `commission_histories` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_detail_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `admin_commission` double(25,2) NOT NULL,
  `seller_earning` double(25,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commission_histories`
--

INSERT INTO `commission_histories` (`id`, `order_id`, `order_detail_id`, `seller_id`, `admin_commission`, `seller_earning`, `created_at`, `updated_at`) VALUES
(2, 4, 4, 10, 700.00, 2800.00, '2021-06-26 16:05:52', '2021-04-07 16:05:52'),
(3, 6, 8, 10, 90.00, 360.00, '2021-06-26 07:00:24', '2021-04-25 06:57:52'),
(4, 12, 17, 12, 90.00, 360.00, '2021-05-22 06:25:07', '2021-05-22 06:25:07');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `title` varchar(1000) COLLATE utf32_unicode_ci DEFAULT NULL,
  `sender_viewed` int(1) NOT NULL DEFAULT 1,
  `receiver_viewed` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `sender_id`, `receiver_id`, `title`, `sender_viewed`, `receiver_viewed`, `created_at`, `updated_at`) VALUES
(1, 9, 10, 'DEEP SEA – Concentrate Mineral', 1, 0, '2021-04-10 11:52:37', '2021-04-10 11:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'Afghanistan', 1, NULL, NULL),
(2, 'AL', 'Albania', 1, NULL, NULL),
(3, 'DZ', 'Algeria', 1, NULL, NULL),
(4, 'DS', 'American Samoa', 1, NULL, NULL),
(5, 'AD', 'Andorra', 1, NULL, NULL),
(6, 'AO', 'Angola', 1, NULL, NULL),
(7, 'AI', 'Anguilla', 1, NULL, NULL),
(8, 'AQ', 'Antarctica', 1, NULL, NULL),
(9, 'AG', 'Antigua and Barbuda', 1, NULL, NULL),
(10, 'AR', 'Argentina', 1, NULL, NULL),
(11, 'AM', 'Armenia', 1, NULL, NULL),
(12, 'AW', 'Aruba', 1, NULL, NULL),
(13, 'AU', 'Australia', 1, NULL, NULL),
(14, 'AT', 'Austria', 1, NULL, NULL),
(15, 'AZ', 'Azerbaijan', 1, NULL, NULL),
(16, 'BS', 'Bahamas', 1, NULL, NULL),
(17, 'BH', 'Bahrain', 1, NULL, NULL),
(18, 'BD', 'Bangladesh', 1, NULL, NULL),
(19, 'BB', 'Barbados', 1, NULL, NULL),
(20, 'BY', 'Belarus', 1, NULL, NULL),
(21, 'BE', 'Belgium', 1, NULL, NULL),
(22, 'BZ', 'Belize', 1, NULL, NULL),
(23, 'BJ', 'Benin', 1, NULL, NULL),
(24, 'BM', 'Bermuda', 1, NULL, NULL),
(25, 'BT', 'Bhutan', 1, NULL, NULL),
(26, 'BO', 'Bolivia', 1, NULL, NULL),
(27, 'BA', 'Bosnia and Herzegovina', 1, NULL, NULL),
(28, 'BW', 'Botswana', 1, NULL, NULL),
(29, 'BV', 'Bouvet Island', 1, NULL, NULL),
(30, 'BR', 'Brazil', 1, NULL, NULL),
(31, 'IO', 'British Indian Ocean Territory', 1, NULL, NULL),
(32, 'BN', 'Brunei Darussalam', 1, NULL, NULL),
(33, 'BG', 'Bulgaria', 1, NULL, NULL),
(34, 'BF', 'Burkina Faso', 1, NULL, NULL),
(35, 'BI', 'Burundi', 1, NULL, NULL),
(36, 'KH', 'Cambodia', 1, NULL, NULL),
(37, 'CM', 'Cameroon', 1, NULL, NULL),
(38, 'CA', 'Canada', 1, NULL, NULL),
(39, 'CV', 'Cape Verde', 1, NULL, NULL),
(40, 'KY', 'Cayman Islands', 1, NULL, NULL),
(41, 'CF', 'Central African Republic', 1, NULL, NULL),
(42, 'TD', 'Chad', 1, NULL, NULL),
(43, 'CL', 'Chile', 1, NULL, NULL),
(44, 'CN', 'China', 1, NULL, NULL),
(45, 'CX', 'Christmas Island', 1, NULL, NULL),
(46, 'CC', 'Cocos (Keeling) Islands', 1, NULL, NULL),
(47, 'CO', 'Colombia', 1, NULL, NULL),
(48, 'KM', 'Comoros', 1, NULL, NULL),
(49, 'CG', 'Congo', 1, NULL, NULL),
(50, 'CK', 'Cook Islands', 1, NULL, NULL),
(51, 'CR', 'Costa Rica', 1, NULL, NULL),
(52, 'HR', 'Croatia (Hrvatska)', 1, NULL, NULL),
(53, 'CU', 'Cuba', 1, NULL, NULL),
(54, 'CY', 'Cyprus', 1, NULL, NULL),
(55, 'CZ', 'Czech Republic', 1, NULL, NULL),
(56, 'DK', 'Denmark', 1, NULL, NULL),
(57, 'DJ', 'Djibouti', 1, NULL, NULL),
(58, 'DM', 'Dominica', 1, NULL, NULL),
(59, 'DO', 'Dominican Republic', 1, NULL, NULL),
(60, 'TP', 'East Timor', 1, NULL, NULL),
(61, 'EC', 'Ecuador', 1, NULL, NULL),
(62, 'EG', 'Egypt', 1, NULL, NULL),
(63, 'SV', 'El Salvador', 1, NULL, NULL),
(64, 'GQ', 'Equatorial Guinea', 1, NULL, NULL),
(65, 'ER', 'Eritrea', 1, NULL, NULL),
(66, 'EE', 'Estonia', 1, NULL, NULL),
(67, 'ET', 'Ethiopia', 1, NULL, NULL),
(68, 'FK', 'Falkland Islands (Malvinas)', 1, NULL, NULL),
(69, 'FO', 'Faroe Islands', 1, NULL, NULL),
(70, 'FJ', 'Fiji', 1, NULL, NULL),
(71, 'FI', 'Finland', 1, NULL, NULL),
(72, 'FR', 'France', 1, NULL, NULL),
(73, 'FX', 'France, Metropolitan', 1, NULL, NULL),
(74, 'GF', 'French Guiana', 1, NULL, NULL),
(75, 'PF', 'French Polynesia', 1, NULL, NULL),
(76, 'TF', 'French Southern Territories', 1, NULL, NULL),
(77, 'GA', 'Gabon', 1, NULL, NULL),
(78, 'GM', 'Gambia', 1, NULL, NULL),
(79, 'GE', 'Georgia', 1, NULL, NULL),
(80, 'DE', 'Germany', 1, NULL, NULL),
(81, 'GH', 'Ghana', 1, NULL, NULL),
(82, 'GI', 'Gibraltar', 1, NULL, NULL),
(83, 'GK', 'Guernsey', 1, NULL, NULL),
(84, 'GR', 'Greece', 1, NULL, NULL),
(85, 'GL', 'Greenland', 1, NULL, NULL),
(86, 'GD', 'Grenada', 1, NULL, NULL),
(87, 'GP', 'Guadeloupe', 1, NULL, NULL),
(88, 'GU', 'Guam', 1, NULL, NULL),
(89, 'GT', 'Guatemala', 1, NULL, NULL),
(90, 'GN', 'Guinea', 1, NULL, NULL),
(91, 'GW', 'Guinea-Bissau', 1, NULL, NULL),
(92, 'GY', 'Guyana', 1, NULL, NULL),
(93, 'HT', 'Haiti', 1, NULL, NULL),
(94, 'HM', 'Heard and Mc Donald Islands', 1, NULL, NULL),
(95, 'HN', 'Honduras', 1, NULL, NULL),
(96, 'HK', 'Hong Kong', 1, NULL, NULL),
(97, 'HU', 'Hungary', 1, NULL, NULL),
(98, 'IS', 'Iceland', 1, NULL, NULL),
(99, 'IN', 'India', 1, NULL, NULL),
(100, 'IM', 'Isle of Man', 1, NULL, NULL),
(101, 'ID', 'Indonesia', 1, NULL, NULL),
(102, 'IR', 'Iran (Islamic Republic of)', 1, NULL, NULL),
(103, 'IQ', 'Iraq', 1, NULL, NULL),
(104, 'IE', 'Ireland', 1, NULL, NULL),
(105, 'IL', 'Israel', 1, NULL, NULL),
(106, 'IT', 'Italy', 1, NULL, NULL),
(107, 'CI', 'Ivory Coast', 1, NULL, NULL),
(108, 'JE', 'Jersey', 1, NULL, NULL),
(109, 'JM', 'Jamaica', 1, NULL, NULL),
(110, 'JP', 'Japan', 1, NULL, NULL),
(111, 'JO', 'Jordan', 1, NULL, NULL),
(112, 'KZ', 'Kazakhstan', 1, NULL, NULL),
(113, 'KE', 'Kenya', 1, NULL, NULL),
(114, 'KI', 'Kiribati', 1, NULL, NULL),
(115, 'KP', 'Korea, Democratic People\'s Republic of', 1, NULL, NULL),
(116, 'KR', 'Korea, Republic of', 1, NULL, NULL),
(117, 'XK', 'Kosovo', 1, NULL, NULL),
(118, 'KW', 'Kuwait', 1, NULL, NULL),
(119, 'KG', 'Kyrgyzstan', 1, NULL, NULL),
(120, 'LA', 'Lao People\'s Democratic Republic', 1, NULL, NULL),
(121, 'LV', 'Latvia', 1, NULL, NULL),
(122, 'LB', 'Lebanon', 1, NULL, NULL),
(123, 'LS', 'Lesotho', 1, NULL, NULL),
(124, 'LR', 'Liberia', 1, NULL, NULL),
(125, 'LY', 'Libyan Arab Jamahiriya', 1, NULL, NULL),
(126, 'LI', 'Liechtenstein', 1, NULL, NULL),
(127, 'LT', 'Lithuania', 1, NULL, NULL),
(128, 'LU', 'Luxembourg', 1, NULL, NULL),
(129, 'MO', 'Macau', 1, NULL, NULL),
(130, 'MK', 'Macedonia', 1, NULL, NULL),
(131, 'MG', 'Madagascar', 1, NULL, NULL),
(132, 'MW', 'Malawi', 1, NULL, NULL),
(133, 'MY', 'Malaysia', 1, NULL, NULL),
(134, 'MV', 'Maldives', 1, NULL, NULL),
(135, 'ML', 'Mali', 1, NULL, NULL),
(136, 'MT', 'Malta', 1, NULL, NULL),
(137, 'MH', 'Marshall Islands', 1, NULL, NULL),
(138, 'MQ', 'Martinique', 1, NULL, NULL),
(139, 'MR', 'Mauritania', 1, NULL, NULL),
(140, 'MU', 'Mauritius', 1, NULL, NULL),
(141, 'TY', 'Mayotte', 1, NULL, NULL),
(142, 'MX', 'Mexico', 1, NULL, NULL),
(143, 'FM', 'Micronesia, Federated States of', 1, NULL, NULL),
(144, 'MD', 'Moldova, Republic of', 1, NULL, NULL),
(145, 'MC', 'Monaco', 1, NULL, NULL),
(146, 'MN', 'Mongolia', 1, NULL, NULL),
(147, 'ME', 'Montenegro', 1, NULL, NULL),
(148, 'MS', 'Montserrat', 1, NULL, NULL),
(149, 'MA', 'Morocco', 1, NULL, NULL),
(150, 'MZ', 'Mozambique', 1, NULL, NULL),
(151, 'MM', 'Myanmar', 1, NULL, NULL),
(152, 'NA', 'Namibia', 1, NULL, NULL),
(153, 'NR', 'Nauru', 1, NULL, NULL),
(154, 'NP', 'Nepal', 1, NULL, NULL),
(155, 'NL', 'Netherlands', 1, NULL, NULL),
(156, 'AN', 'Netherlands Antilles', 1, NULL, NULL),
(157, 'NC', 'New Caledonia', 1, NULL, NULL),
(158, 'NZ', 'New Zealand', 1, NULL, NULL),
(159, 'NI', 'Nicaragua', 1, NULL, NULL),
(160, 'NE', 'Niger', 1, NULL, NULL),
(161, 'NG', 'Nigeria', 1, NULL, NULL),
(162, 'NU', 'Niue', 1, NULL, NULL),
(163, 'NF', 'Norfolk Island', 1, NULL, NULL),
(164, 'MP', 'Northern Mariana Islands', 1, NULL, NULL),
(165, 'NO', 'Norway', 1, NULL, NULL),
(166, 'OM', 'Oman', 1, NULL, NULL),
(167, 'PK', 'Pakistan', 1, NULL, NULL),
(168, 'PW', 'Palau', 1, NULL, NULL),
(169, 'PS', 'Palestine', 1, NULL, NULL),
(170, 'PA', 'Panama', 1, NULL, NULL),
(171, 'PG', 'Papua New Guinea', 1, NULL, NULL),
(172, 'PY', 'Paraguay', 1, NULL, NULL),
(173, 'PE', 'Peru', 1, NULL, NULL),
(174, 'PH', 'Philippines', 1, NULL, NULL),
(175, 'PN', 'Pitcairn', 1, NULL, NULL),
(176, 'PL', 'Poland', 1, NULL, NULL),
(177, 'PT', 'Portugal', 1, NULL, NULL),
(178, 'PR', 'Puerto Rico', 1, NULL, NULL),
(179, 'QA', 'Qatar', 1, NULL, NULL),
(180, 'RE', 'Reunion', 1, NULL, NULL),
(181, 'RO', 'Romania', 1, NULL, NULL),
(182, 'RU', 'Russian Federation', 1, NULL, NULL),
(183, 'RW', 'Rwanda', 1, NULL, NULL),
(184, 'KN', 'Saint Kitts and Nevis', 1, NULL, NULL),
(185, 'LC', 'Saint Lucia', 1, NULL, NULL),
(186, 'VC', 'Saint Vincent and the Grenadines', 1, NULL, NULL),
(187, 'WS', 'Samoa', 1, NULL, NULL),
(188, 'SM', 'San Marino', 1, NULL, NULL),
(189, 'ST', 'Sao Tome and Principe', 1, NULL, NULL),
(190, 'SA', 'Saudi Arabia', 1, NULL, NULL),
(191, 'SN', 'Senegal', 1, NULL, NULL),
(192, 'RS', 'Serbia', 1, NULL, NULL),
(193, 'SC', 'Seychelles', 1, NULL, NULL),
(194, 'SL', 'Sierra Leone', 1, NULL, NULL),
(195, 'SG', 'Singapore', 1, NULL, NULL),
(196, 'SK', 'Slovakia', 1, NULL, NULL),
(197, 'SI', 'Slovenia', 1, NULL, NULL),
(198, 'SB', 'Solomon Islands', 1, NULL, NULL),
(199, 'SO', 'Somalia', 1, NULL, NULL),
(200, 'ZA', 'South Africa', 1, NULL, NULL),
(201, 'GS', 'South Georgia South Sandwich Islands', 1, NULL, NULL),
(202, 'SS', 'South Sudan', 1, NULL, NULL),
(203, 'ES', 'Spain', 1, NULL, NULL),
(204, 'LK', 'Sri Lanka', 1, NULL, NULL),
(205, 'SH', 'St. Helena', 1, NULL, NULL),
(206, 'PM', 'St. Pierre and Miquelon', 1, NULL, NULL),
(207, 'SD', 'Sudan', 1, NULL, NULL),
(208, 'SR', 'Suriname', 1, NULL, NULL),
(209, 'SJ', 'Svalbard and Jan Mayen Islands', 1, NULL, NULL),
(210, 'SZ', 'Swaziland', 1, NULL, NULL),
(211, 'SE', 'Sweden', 1, NULL, NULL),
(212, 'CH', 'Switzerland', 1, NULL, NULL),
(213, 'SY', 'Syrian Arab Republic', 1, NULL, NULL),
(214, 'TW', 'Taiwan', 1, NULL, NULL),
(215, 'TJ', 'Tajikistan', 1, NULL, NULL),
(216, 'TZ', 'Tanzania, United Republic of', 1, NULL, NULL),
(217, 'TH', 'Thailand', 1, NULL, NULL),
(218, 'TG', 'Togo', 1, NULL, NULL),
(219, 'TK', 'Tokelau', 1, NULL, NULL),
(220, 'TO', 'Tonga', 1, NULL, NULL),
(221, 'TT', 'Trinidad and Tobago', 1, NULL, NULL),
(222, 'TN', 'Tunisia', 1, NULL, NULL),
(223, 'TR', 'Turkey', 1, NULL, NULL),
(224, 'TM', 'Turkmenistan', 1, NULL, NULL),
(225, 'TC', 'Turks and Caicos Islands', 1, NULL, NULL),
(226, 'TV', 'Tuvalu', 1, NULL, NULL),
(227, 'UG', 'Uganda', 1, NULL, NULL),
(228, 'UA', 'Ukraine', 1, NULL, NULL),
(229, 'AE', 'United Arab Emirates', 1, NULL, NULL),
(230, 'GB', 'United Kingdom', 1, NULL, NULL),
(231, 'US', 'United States', 1, NULL, NULL),
(232, 'UM', 'United States minor outlying islands', 1, NULL, NULL),
(233, 'UY', 'Uruguay', 1, NULL, NULL),
(234, 'UZ', 'Uzbekistan', 1, NULL, NULL),
(235, 'VU', 'Vanuatu', 1, NULL, NULL),
(236, 'VA', 'Vatican City State', 1, NULL, NULL),
(237, 'VE', 'Venezuela', 1, NULL, NULL),
(238, 'VN', 'Vietnam', 1, NULL, NULL),
(239, 'VG', 'Virgin Islands (British)', 1, NULL, NULL),
(240, 'VI', 'Virgin Islands (U.S.)', 1, NULL, NULL),
(241, 'WF', 'Wallis and Futuna Islands', 1, NULL, NULL),
(242, 'EH', 'Western Sahara', 1, NULL, NULL),
(243, 'YE', 'Yemen', 1, NULL, NULL),
(244, 'ZR', 'Zaire', 1, NULL, NULL),
(245, 'ZM', 'Zambia', 1, NULL, NULL),
(246, 'ZW', 'Zimbabwe', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `discount` double(20,2) NOT NULL,
  `discount_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` int(15) NOT NULL,
  `end_date` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `type`, `code`, `details`, `discount`, `discount_type`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 'cart_base', 'boishakh1428', '{\"min_buy\":\"1428\",\"max_discount\":\"500\"}', 28.00, 'percent', 1617213600, 1619805600, '2021-04-10 16:53:54', '2021-04-10 16:53:54');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_usages`
--

CREATE TABLE `coupon_usages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_rate` double(10,5) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `created_at`, `updated_at`) VALUES
(1, 'U.S. Dollar', '$', 1.00000, 1, 'USD', '2018-10-09 11:35:08', '2021-03-28 11:14:31'),
(2, 'Australian Dollar', '$', 1.28000, 0, 'AUD', '2018-10-09 11:35:08', '2021-03-28 11:14:29'),
(5, 'Brazilian Real', 'R$', 3.25000, 0, 'BRL', '2018-10-09 11:35:08', '2021-03-28 11:14:28'),
(6, 'Canadian Dollar', '$', 1.27000, 0, 'CAD', '2018-10-09 11:35:08', '2021-03-28 11:14:27'),
(7, 'Czech Koruna', 'Kč', 20.65000, 0, 'CZK', '2018-10-09 11:35:08', '2021-03-28 11:14:26'),
(8, 'Danish Krone', 'kr', 6.05000, 0, 'DKK', '2018-10-09 11:35:08', '2021-03-28 11:14:25'),
(9, 'Euro', '€', 0.85000, 0, 'EUR', '2018-10-09 11:35:08', '2021-03-28 11:14:24'),
(10, 'Hong Kong Dollar', '$', 7.83000, 0, 'HKD', '2018-10-09 11:35:08', '2021-03-28 11:14:23'),
(11, 'Hungarian Forint', 'Ft', 255.24000, 0, 'HUF', '2018-10-09 11:35:08', '2021-03-28 11:14:22'),
(12, 'Israeli New Sheqel', '₪', 3.48000, 0, 'ILS', '2018-10-09 11:35:08', '2021-03-28 11:13:53'),
(13, 'Japanese Yen', '¥', 107.12000, 0, 'JPY', '2018-10-09 11:35:08', '2021-03-28 11:13:53'),
(14, 'Malaysian Ringgit', 'RM', 3.91000, 0, 'MYR', '2018-10-09 11:35:08', '2021-03-28 11:13:54'),
(15, 'Mexican Peso', '$', 18.72000, 0, 'MXN', '2018-10-09 11:35:08', '2021-03-28 11:13:55'),
(16, 'Norwegian Krone', 'kr', 7.83000, 0, 'NOK', '2018-10-09 11:35:08', '2021-03-28 11:13:57'),
(17, 'New Zealand Dollar', '$', 1.38000, 0, 'NZD', '2018-10-09 11:35:08', '2021-03-28 11:13:58'),
(18, 'Philippine Peso', '₱', 52.26000, 0, 'PHP', '2018-10-09 11:35:08', '2021-03-28 11:13:59'),
(19, 'Polish Zloty', 'zł', 3.39000, 0, 'PLN', '2018-10-09 11:35:08', '2021-03-28 11:14:00'),
(20, 'Pound Sterling', '£', 0.72000, 0, 'GBP', '2018-10-09 11:35:08', '2021-03-28 11:14:01'),
(21, 'Russian Ruble', 'руб', 55.93000, 0, 'RUB', '2018-10-09 11:35:08', '2021-03-28 11:14:02'),
(22, 'Singapore Dollar', '$', 1.32000, 0, 'SGD', '2018-10-09 11:35:08', '2021-03-28 11:14:11'),
(23, 'Swedish Krona', 'kr', 8.19000, 0, 'SEK', '2018-10-09 11:35:08', '2021-03-28 11:14:12'),
(24, 'Swiss Franc', 'CHF', 0.94000, 0, 'CHF', '2018-10-09 11:35:08', '2021-03-28 11:14:14'),
(26, 'Thai Baht', '฿', 31.39000, 0, 'THB', '2018-10-09 11:35:08', '2021-03-28 11:14:14'),
(27, 'Taka', '৳', 84.00000, 1, 'BDT', '2018-10-09 11:35:08', '2018-12-02 05:16:13'),
(28, 'Indian Rupee', 'Rs', 68.45000, 1, 'Rupee', '2019-07-07 10:33:46', '2019-07-07 10:33:46');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 8, '2019-08-01 10:35:09', '2019-08-01 10:35:09'),
(6, 14, '2021-04-10 06:13:05', '2021-04-10 06:13:05'),
(7, 17, '2021-04-11 16:32:20', '2021-04-11 16:32:20'),
(8, 18, '2021-04-14 02:44:40', '2021-04-14 02:44:40'),
(9, 19, '2021-04-14 16:02:21', '2021-04-14 16:02:21'),
(10, 20, '2021-04-15 04:18:34', '2021-04-15 04:18:34'),
(11, 21, '2021-04-15 04:44:00', '2021-04-15 04:44:00'),
(12, 22, '2021-04-19 14:31:44', '2021-04-19 14:31:44'),
(13, 23, '2021-04-19 21:52:08', '2021-04-19 21:52:08'),
(14, 24, '2021-04-20 11:49:37', '2021-04-20 11:49:37'),
(15, 25, '2021-04-23 15:12:16', '2021-04-23 15:12:16'),
(16, 26, '2021-04-25 08:39:16', '2021-04-25 08:39:16'),
(17, 27, '2021-04-28 06:17:38', '2021-04-28 06:17:38'),
(18, 28, '2021-04-28 21:16:13', '2021-04-28 21:16:13'),
(19, 29, '2021-04-29 17:56:20', '2021-04-29 17:56:20'),
(20, 30, '2021-05-01 11:05:14', '2021-05-01 11:05:14'),
(21, 31, '2021-05-03 09:41:45', '2021-05-03 09:41:45'),
(22, 32, '2021-05-03 18:25:44', '2021-05-03 18:25:44'),
(23, 33, '2021-05-07 02:18:38', '2021-05-07 02:18:38'),
(24, 34, '2021-05-10 08:42:47', '2021-05-10 08:42:47'),
(25, 35, '2021-05-17 10:25:40', '2021-05-17 10:25:40'),
(26, 36, '2021-05-19 08:35:07', '2021-05-19 08:35:07'),
(27, 37, '2021-05-19 11:21:08', '2021-05-19 11:21:08'),
(28, 38, '2021-05-22 06:07:20', '2021-05-22 06:07:20'),
(29, 39, '2021-05-22 06:09:20', '2021-05-22 06:09:20'),
(30, 40, '2021-05-22 06:32:28', '2021-05-22 06:32:28'),
(31, 41, '2021-05-27 04:49:36', '2021-05-27 04:49:36'),
(33, 43, '2021-05-27 11:45:57', '2021-05-27 11:45:57'),
(34, 45, '2021-05-27 14:19:44', '2021-05-27 14:19:44'),
(35, 47, '2021-05-31 12:10:56', '2021-05-31 12:10:56'),
(36, 48, '2021-06-04 23:08:47', '2021-06-04 23:08:47'),
(45, 57, '2021-06-27 07:07:50', '2021-06-27 07:07:50'),
(46, 58, '2021-06-27 07:15:05', '2021-06-27 07:15:05'),
(47, 59, '2021-06-27 07:16:24', '2021-06-27 07:16:24'),
(48, 60, '2021-06-27 07:21:02', '2021-06-27 07:21:02'),
(49, 61, '2021-06-27 07:23:12', '2021-06-27 07:23:12'),
(50, 62, '2021-06-27 07:31:03', '2021-06-27 07:31:03'),
(51, 63, '2021-06-27 07:32:09', '2021-06-27 07:32:09'),
(52, 64, '2021-06-27 07:35:43', '2021-06-27 07:35:43'),
(53, 65, '2021-06-27 07:39:32', '2021-06-27 07:39:32'),
(54, 66, '2021-06-27 07:40:23', '2021-06-27 07:40:23'),
(55, 67, '2021-06-27 07:46:16', '2021-06-27 07:46:16'),
(56, 68, '2021-06-27 07:53:59', '2021-06-27 07:53:59'),
(57, 69, '2021-06-27 08:31:45', '2021-06-27 08:31:45'),
(58, 70, '2021-06-27 08:37:55', '2021-06-27 08:37:55'),
(59, 71, '2021-06-27 08:43:01', '2021-06-27 08:43:01'),
(60, 72, '2021-06-27 09:05:16', '2021-06-27 09:05:16'),
(61, 73, '2021-06-27 09:18:35', '2021-06-27 09:18:35'),
(62, 74, '2021-06-27 09:27:52', '2021-06-27 09:27:52'),
(63, 75, '2021-06-27 09:51:21', '2021-06-27 09:51:21'),
(64, 76, '2021-06-27 09:53:06', '2021-06-27 09:53:06'),
(65, 77, '2021-06-27 10:05:46', '2021-06-27 10:05:46'),
(66, 78, '2021-06-27 10:09:32', '2021-06-27 10:09:32'),
(67, 79, '2021-06-27 10:11:52', '2021-06-27 10:11:52'),
(68, 80, '2021-06-27 10:14:35', '2021-06-27 10:14:35'),
(69, 81, '2021-06-27 10:46:03', '2021-06-27 10:46:03'),
(70, 82, '2021-06-27 10:47:22', '2021-06-27 10:47:22'),
(71, 83, '2021-06-28 08:16:20', '2021-06-28 08:16:20'),
(72, 84, '2021-06-28 08:24:30', '2021-06-28 08:24:30'),
(73, 85, '2021-08-21 05:15:18', '2021-08-21 05:15:18'),
(74, 86, '2021-08-21 05:18:11', '2021-08-21 05:18:11'),
(75, 87, '2021-08-21 05:50:10', '2021-08-21 05:50:10');

-- --------------------------------------------------------

--
-- Table structure for table `customer_packages`
--

CREATE TABLE `customer_packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double(20,2) DEFAULT NULL,
  `product_upload` int(11) DEFAULT NULL,
  `logo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_packages`
--

INSERT INTO `customer_packages` (`id`, `name`, `amount`, `product_upload`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Gold', 7000.00, 6, '55', '2021-04-11 04:55:44', '2021-04-11 04:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `customer_package_payments`
--

CREATE TABLE `customer_package_payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_package_id` int(11) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `approval` int(1) NOT NULL,
  `offline_payment` int(1) NOT NULL COMMENT '1=offline payment\r\n2=online paymnet',
  `reciept` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_package_translations`
--

CREATE TABLE `customer_package_translations` (
  `id` bigint(20) NOT NULL,
  `customer_package_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_package_translations`
--

INSERT INTO `customer_package_translations` (`id`, `customer_package_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Gold', 'en', '2021-04-11 04:55:44', '2021-04-11 04:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `customer_products`
--

CREATE TABLE `customer_products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 0,
  `added_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `photos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conditon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` double(20,2) DEFAULT 0.00,
  `meta_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_img` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_product_translations`
--

CREATE TABLE `customer_product_translations` (
  `id` bigint(20) NOT NULL,
  `customer_product_id` bigint(20) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_deals`
--

CREATE TABLE `flash_deals` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` int(20) DEFAULT NULL,
  `end_date` int(20) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `featured` int(1) NOT NULL DEFAULT 0,
  `background_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_deals`
--

INSERT INTO `flash_deals` (`id`, `title`, `start_date`, `end_date`, `status`, `featured`, `background_color`, `text_color`, `banner`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Boishakhi Offer', 1617991200, 1618423140, 1, 1, '#800080', 'white', '45', 'boishakhi-offer-7tvmn', '2021-04-10 05:13:54', '2021-04-10 05:22:58');

-- --------------------------------------------------------

--
-- Table structure for table `flash_deal_products`
--

CREATE TABLE `flash_deal_products` (
  `id` int(11) NOT NULL,
  `flash_deal_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `discount` double(20,2) DEFAULT 0.00,
  `discount_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_deal_products`
--

INSERT INTO `flash_deal_products` (`id`, `flash_deal_id`, `product_id`, `discount`, `discount_type`, `created_at`, `updated_at`) VALUES
(3, 1, 3, 10.00, 'amount', '2021-04-10 16:48:17', '2021-04-10 16:48:17'),
(4, 1, 4, 100.00, 'amount', '2021-04-10 16:48:17', '2021-04-10 16:48:17'),
(5, 1, 5, 110.00, 'amount', '2021-04-10 16:48:17', '2021-04-10 16:48:17'),
(6, 1, 6, 380.00, 'amount', '2021-04-10 16:48:17', '2021-04-10 16:48:17'),
(7, 1, 7, 150.00, 'amount', '2021-04-10 16:48:17', '2021-04-10 16:48:17'),
(8, 1, 13, 3.00, 'amount', '2021-06-14 10:16:19', '2021-06-14 10:16:19'),
(9, 1, 16, 10.00, 'amount', '2021-06-20 05:00:38', '2021-06-20 05:00:38'),
(10, 1, 17, 10.00, 'amount', '2021-06-20 05:15:59', '2021-06-20 05:15:59');

-- --------------------------------------------------------

--
-- Table structure for table `flash_deal_translations`
--

CREATE TABLE `flash_deal_translations` (
  `id` bigint(20) NOT NULL,
  `flash_deal_id` bigint(20) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_deal_translations`
--

INSERT INTO `flash_deal_translations` (`id`, `flash_deal_id`, `title`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Boishakhi Offer', 'en', '2021-04-10 05:13:54', '2021-04-10 05:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `frontend_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login_background` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login_sidebar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `frontend_color`, `logo`, `footer_logo`, `admin_logo`, `admin_login_background`, `admin_login_sidebar`, `favicon`, `site_name`, `address`, `description`, `phone`, `email`, `facebook`, `instagram`, `twitter`, `youtube`, `google_plus`, `created_at`, `updated_at`) VALUES
(1, 'default', 'uploads/logo/pfdIuiMeXGkDAIpPEUrvUCbQrOHu484nbGfz77zB.png', NULL, 'uploads/admin_logo/wCgHrz0Q5QoL1yu4vdrNnQIr4uGuNL48CXfcxOuS.png', NULL, NULL, 'uploads/favicon/uHdGidSaRVzvPgDj6JFtntMqzJkwDk9659233jrb.png', 'Active Ecommerce CMS', 'Demo Address', 'Active eCommerce CMS is a Multi vendor system is such a platform to build a border less marketplace.', '1234567890', 'admin@example.com', 'https://www.facebook.com', 'https://www.instagram.com', 'https://www.twitter.com', 'https://www.youtube.com', 'https://www.googleplus.com', '2019-03-13 08:01:06', '2019-03-13 02:01:06');

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subsubcategories` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `category_id`, `subsubcategories`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '[\"1\"]', 1, '2019-03-12 06:38:23', '2019-03-12 06:38:23'),
(2, 2, '[\"10\"]', 1, '2019-03-12 06:44:54', '2019-03-12 06:44:54');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rtl` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `rtl`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 0, '2019-01-20 12:13:20', '2019-01-20 12:13:20'),
(3, 'Bangla', 'bd', 1, '2019-02-17 06:35:37', '2021-03-27 04:22:33'),
(4, 'Arabic', 'sa', 1, '2019-04-28 18:34:12', '2019-04-28 18:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 9, 'Whats is the product details.', '2021-04-10 11:52:37', '2021-04-10 11:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('125ce8289850f80d9fea100325bf892fbd0deba1f87dbfc2ab81fb43d57377ec24ed65f7dc560e46', 1, 1, 'Personal Access Token', '[]', 0, '2019-07-30 04:51:13', '2019-07-30 04:51:13', '2020-07-30 10:51:13'),
('293d2bb534220c070c4e90d25b5509965d23d3ddbc05b1e29fb4899ae09420ff112dbccab1c6f504', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 06:00:04', '2019-08-04 06:00:04', '2020-08-04 12:00:04'),
('5363e91c7892acdd6417aa9c7d4987d83568e229befbd75be64282dbe8a88147c6c705e06c1fb2bf', 1, 1, 'Personal Access Token', '[]', 0, '2019-07-13 06:44:28', '2019-07-13 06:44:28', '2020-07-13 12:44:28'),
('681b4a4099fac5e12517307b4027b54df94cbaf0cbf6b4bf496534c94f0ccd8a79dd6af9742d076b', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:23:06', '2019-08-04 07:23:06', '2020-08-04 13:23:06'),
('6d229e3559e568df086c706a1056f760abc1370abe74033c773490581a042442154afa1260c4b6f0', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:32:12', '2019-08-04 07:32:12', '2020-08-04 13:32:12'),
('6efc0f1fc3843027ea1ea7cd35acf9c74282f0271c31d45a164e7b27025a315d31022efe7bb94aaa', 1, 1, 'Personal Access Token', '[]', 0, '2019-08-08 02:35:26', '2019-08-08 02:35:26', '2020-08-08 08:35:26'),
('7745b763da15a06eaded371330072361b0524c41651cf48bf76fc1b521a475ece78703646e06d3b0', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:29:44', '2019-08-04 07:29:44', '2020-08-04 13:29:44'),
('815b625e239934be293cd34479b0f766bbc1da7cc10d464a2944ddce3a0142e943ae48be018ccbd0', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-22 02:07:47', '2019-07-22 02:07:47', '2020-07-22 08:07:47'),
('8921a4c96a6d674ac002e216f98855c69de2568003f9b4136f6e66f4cb9545442fb3e37e91a27cad', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 06:05:05', '2019-08-04 06:05:05', '2020-08-04 12:05:05'),
('8d8b85720304e2f161a66564cec0ecd50d70e611cc0efbf04e409330086e6009f72a39ce2191f33a', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 06:44:35', '2019-08-04 06:44:35', '2020-08-04 12:44:35'),
('bcaaebdead4c0ef15f3ea6d196fd80749d309e6db8603b235e818cb626a5cea034ff2a55b66e3e1a', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:14:32', '2019-08-04 07:14:32', '2020-08-04 13:14:32'),
('c25417a5c728073ca8ba57058ded43d496a9d2619b434d2a004dd490a64478c08bc3e06ffc1be65d', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-30 01:45:31', '2019-07-30 01:45:31', '2020-07-30 07:45:31'),
('c7423d85b2b5bdc5027cb283be57fa22f5943cae43f60b0ed27e6dd198e46f25e3501b3081ed0777', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-05 05:02:59', '2019-08-05 05:02:59', '2020-08-05 11:02:59'),
('e76f19dbd5c2c4060719fb1006ac56116fd86f7838b4bf74e2c0a0ac9696e724df1e517dbdb357f4', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-15 02:53:40', '2019-07-15 02:53:40', '2020-07-15 08:53:40'),
('ed7c269dd6f9a97750a982f62e0de54749be6950e323cdfef892a1ec93f8ddbacf9fe26e6a42180e', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-13 06:36:45', '2019-07-13 06:36:45', '2020-07-13 12:36:45'),
('f6d1475bc17a27e389000d3df4da5c5004ce7610158b0dd414226700c0f6db48914637b4c76e1948', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:22:01', '2019-08-04 07:22:01', '2020-08-04 13:22:01'),
('f85e4e444fc954430170c41779a4238f84cd6fed905f682795cd4d7b6a291ec5204a10ac0480eb30', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-30 06:38:49', '2019-07-30 06:38:49', '2020-07-30 12:38:49'),
('f8bf983a42c543b99128296e4bc7c2d17a52b5b9ef69670c629b93a653c6a4af27be452e0c331f79', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:28:55', '2019-08-04 07:28:55', '2020-08-04 13:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'eR2y7WUuem28ugHKppFpmss7jPyOHZsMkQwBo1Jj', 'http://localhost', 1, 0, 0, '2019-07-13 06:17:34', '2019-07-13 06:17:34'),
(2, NULL, 'Laravel Password Grant Client', 'WLW2Ol0GozbaXEnx1NtXoweYPuKEbjWdviaUgw77', 'http://localhost', 0, 1, 0, '2019-07-13 06:17:34', '2019-07-13 06:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-07-13 06:17:34', '2019-07-13 06:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `guest_id` int(11) DEFAULT NULL,
  `shipping_address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'unpaid',
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `grand_total` double(20,2) DEFAULT NULL,
  `coupon_discount` double(20,2) NOT NULL DEFAULT 0.00,
  `code` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` int(20) NOT NULL,
  `viewed` int(1) NOT NULL DEFAULT 0,
  `delivery_viewed` int(1) NOT NULL DEFAULT 1,
  `payment_status_viewed` int(1) DEFAULT 1,
  `commission_calculated` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `guest_id`, `shipping_address`, `payment_type`, `payment_status`, `payment_details`, `grand_total`, `coupon_discount`, `code`, `date`, `viewed`, `delivery_viewed`, `payment_status_viewed`, `commission_calculated`, `created_at`, `updated_at`) VALUES
(4, 12, NULL, '{\"name\":\"CLG Store\",\"email\":\"lekhon28@gmail.com\",\"address\":\"434 West Rampura\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1219\",\"phone\":\"01714973888\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 3500.00, 0.00, '20210331-23153534', 1617210935, 1, 1, 1, 1, '2021-03-31 17:15:35', '2021-04-28 07:02:18'),
(5, 20, NULL, '{\"name\":\"Asha Khan\",\"email\":\"shipaclg@yahoo.com\",\"address\":\"434 East Rampura Dhaka 1219\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1219\",\"phone\":\"01635418688\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 570.00, 0.00, '20210415-10250258', 1618460702, 1, 1, 1, 1, '2021-04-15 04:25:02', '2021-04-15 08:20:32'),
(6, 10, NULL, '{\"name\":\"Md Rofiqul islam\",\"email\":\"mdrofiqulislambd1@gmail.com\",\"address\":\"Badda\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1212\",\"phone\":\"01626086429\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 475.00, 0.00, '20210423-21242917', 1619191469, 1, 0, 0, 1, '2021-06-26 15:24:29', '2021-04-26 06:12:57'),
(7, 11, NULL, '{\"name\":\"Toukir Ahmed\",\"email\":\"toukirahmed846@gmail.com\",\"address\":\"350, Moynarbag, Badda, Dhaka -1212\",\"country\":\"Bangladesh\",\"city\":\"City\",\"postal_code\":\"1212\",\"phone\":\"01715374289\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 140.00, 0.00, '20210423-21272286', 1619191642, 1, 0, 0, 1, '2021-04-23 15:27:22', '2021-04-25 06:56:16'),
(8, 12, NULL, '{\"name\":\"CLG Store\",\"email\":\"lekhon28@gmail.com\",\"address\":\"434 West Rampura\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1219\",\"phone\":\"01714973888\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 270.00, 0.00, '20210425-13341132', 1619336051, 1, 1, 1, 1, '2021-04-25 07:34:11', '2021-04-28 07:02:35'),
(9, 14, NULL, '{\"name\":\"Ayesha Mahmud \",\"email\":null,\"address\":\"2 no Garden Road\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1215\",\"phone\":\"01715225003\",\"checkout_type\":\"logged\"}', 'bkash', 'unpaid', NULL, 430.00, 0.00, '20210519-14414872', 1621413708, 1, 0, 0, 0, '2021-05-19 08:41:48', '2021-05-19 08:51:57'),
(10, 10, NULL, '{\"name\":\"Ayesha Mahmud \",\"email\":null,\"address\":\"2 no Garden Road\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1215\",\"phone\":\"01715225003\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 430.00, 0.00, '20210519-14422313', 1621413743, 1, 0, 0, 1, '2021-06-26 08:42:23', '2021-05-19 08:56:30'),
(11, 9, NULL, '{\"name\":\"ModonAli\",\"email\":\"support@modonali.com\",\"address\":\"116, Kazi Nazrul Islam Avenue\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1205\",\"phone\":\"01989999003\",\"checkout_type\":\"logged\"}', 'bkash', 'paid', NULL, 475.00, 0.00, '20210522-12201240', 1621664412, 1, 0, 0, 1, '2021-05-22 06:20:12', '2021-08-21 05:35:08'),
(12, 9, NULL, '{\"name\":\"ModonAli\",\"email\":\"support@modonali.com\",\"address\":\"116, Kazi Nazrul Islam Avenue\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1205\",\"phone\":\"01989999003\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 475.00, 0.00, '20210522-12210275', 1621664462, 1, 0, 0, 1, '2021-05-22 06:21:02', '2021-08-21 05:35:08'),
(13, 43, NULL, '{\"name\":\"Eaymin\",\"email\":\"eaymin47@gmail.com\",\"address\":\"Dorgashorif\",\"country\":\"Bangladesh\",\"city\":\"Madaripur\",\"postal_code\":\"7900\",\"phone\":\"+8801715566347\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 130.00, 0.00, '20210527-17502121', 1622116221, 1, 0, 0, 1, '2021-05-27 11:50:21', '2021-06-19 10:10:10'),
(14, 9, NULL, '{\"name\":\"ModonAli\",\"email\":\"support@modonali.com\",\"address\":\"116, Kazi Nazrul Islam Avenue\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1205\",\"phone\":\"01989999003\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 130.00, 0.00, '20210615-12442022', 1623739460, 0, 0, 0, 1, '2021-06-15 06:44:20', '2021-06-19 10:08:54'),
(15, 9, NULL, '{\"name\":\"ModonAli\",\"email\":\"support@modonali.com\",\"address\":\"116, Kazi Nazrul Islam Avenue\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1205\",\"phone\":\"01989999003\",\"checkout_type\":\"logged\"}', 'bkash', 'paid', NULL, 4400.00, 0.00, '20210615-13104338', 1623741043, 1, 0, 0, 1, '2021-06-15 07:10:43', '2021-06-24 11:01:03'),
(16, 9, NULL, '{\"name\":\"ModonAli\",\"email\":\"support@modonali.com\",\"address\":\"116, Kazi Nazrul Islam Avenue\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1205\",\"phone\":\"01989999003\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 440.00, 0.00, '20210615-13123784', 1623741157, 0, 0, 0, 1, '2021-06-15 07:12:37', '2021-06-15 07:19:40'),
(17, 9, NULL, '{\"name\":\"ModonAli\",\"email\":\"support@modonali.com\",\"address\":\"116, Kazi Nazrul Islam Avenue\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1205\",\"phone\":\"01989999003\",\"checkout_type\":\"logged\"}', 'bkash', 'unpaid', NULL, 3500.00, 0.00, '20210619-16131881', 1624097598, 1, 0, 0, 0, '2021-06-19 10:13:18', '2021-06-24 11:01:03'),
(18, 9, NULL, '{\"name\":\"ModonAli\",\"email\":\"support@modonali.com\",\"address\":\"116, Kazi Nazrul Islam Avenue\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1205\",\"phone\":\"01989999003\",\"checkout_type\":\"logged\"}', 'nagad', 'paid', NULL, 3500.00, 0.00, '20210619-16135213', 1624097632, 1, 0, 0, 1, '2021-06-19 10:13:52', '2021-09-02 06:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `variation` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(20,2) DEFAULT NULL,
  `tax` double(20,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` double(20,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) DEFAULT NULL,
  `payment_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unpaid',
  `delivery_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pending',
  `shipping_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_point_id` int(11) DEFAULT NULL,
  `product_referral_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `seller_id`, `product_id`, `variation`, `price`, `tax`, `shipping_cost`, `quantity`, `payment_status`, `delivery_status`, `shipping_type`, `pickup_point_id`, `product_referral_code`, `created_at`, `updated_at`) VALUES
(4, 4, 10, 1, '60ml-Australia', 3500.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2021-03-31 17:15:35', '2021-04-10 11:54:03'),
(5, 5, 9, 5, '100ml-UK', 140.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2021-04-15 04:25:02', '2021-04-15 08:14:51'),
(6, 5, 9, 4, '100g-Japan', 300.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2021-04-15 04:25:02', '2021-04-15 08:14:51'),
(7, 5, 9, 3, 'Pink-Germany-135g', 130.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2021-04-15 04:25:02', '2021-04-15 08:14:51'),
(8, 6, 12, 7, '250ml', 450.00, 0.00, 25.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2021-04-23 15:24:29', '2021-04-25 06:57:52'),
(9, 7, 9, 5, '100ml-UK', 140.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2021-04-23 15:27:22', '2021-04-25 06:56:16'),
(10, 8, 9, 3, 'Pink-Germany-135g', 130.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2021-04-25 07:34:11', '2021-04-26 06:12:26'),
(11, 8, 9, 5, '100ml-UK', 140.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2021-04-25 07:34:11', '2021-04-26 06:12:26'),
(12, 9, 9, 4, '100g-Japan', 300.00, 0.00, 0.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-05-19 08:41:48', '2021-05-19 08:41:48'),
(13, 9, 9, 3, 'Pink-Germany-135g', 130.00, 0.00, 0.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-05-19 08:41:48', '2021-05-19 08:41:48'),
(14, 10, 9, 4, '100g-Japan', 300.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2021-05-19 08:42:23', '2021-05-19 08:56:30'),
(15, 10, 9, 3, 'Pink-Germany-135g', 130.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2021-05-19 08:42:23', '2021-05-19 08:56:30'),
(16, 11, 12, 7, '250ml', 450.00, 0.00, 25.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2021-05-22 06:20:12', '2021-05-22 06:27:44'),
(17, 12, 12, 7, '250ml', 450.00, 0.00, 25.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2021-05-22 06:21:02', '2021-05-22 06:25:07'),
(18, 13, 9, 3, 'Pink-Germany-135g', 130.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2021-05-27 11:50:21', '2021-06-19 10:10:12'),
(19, 14, 9, 3, 'Pink-Germany-135g', 130.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2021-06-15 06:44:20', '2021-06-19 10:09:00'),
(20, 15, 10, 1, '', 3500.00, 0.00, 0.00, 1, 'paid', 'confirmed', 'home_delivery', NULL, NULL, '2021-06-15 07:10:43', '2021-06-15 08:25:09'),
(21, 15, 10, 2, '10ml', 900.00, 0.00, 0.00, 1, 'paid', 'confirmed', 'home_delivery', NULL, NULL, '2021-06-15 07:10:43', '2021-06-15 08:25:09'),
(22, 16, 9, 5, '100ml-UK', 140.00, 0.00, 0.00, 1, 'paid', 'confirmed', 'home_delivery', NULL, NULL, '2021-06-15 07:12:37', '2021-06-15 07:19:43'),
(23, 16, 9, 4, '100g-Japan', 300.00, 0.00, 0.00, 1, 'paid', 'confirmed', 'home_delivery', NULL, NULL, '2021-06-15 07:12:37', '2021-06-15 07:19:43'),
(24, 17, 10, 1, '', 3500.00, 0.00, 0.00, 1, 'unpaid', 'confirmed', 'home_delivery', NULL, NULL, '2021-06-19 10:13:18', '2021-08-22 08:51:13'),
(25, 18, 10, 1, '', 3500.00, 0.00, 0.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2021-06-19 10:13:52', '2021-09-02 06:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `otp_metas`
--

CREATE TABLE `otp_metas` (
  `id` int(11) NOT NULL,
  `username` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `sender` varchar(191) NOT NULL,
  `available_message` int(11) NOT NULL DEFAULT 0,
  `api_url` text NOT NULL,
  `country_code` varchar(191) DEFAULT NULL,
  `country_name` varchar(191) DEFAULT NULL,
  `created|_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `otp_metas`
--

INSERT INTO `otp_metas` (`id`, `username`, `password`, `sender`, `available_message`, `api_url`, `country_code`, `country_name`, `created|_at`, `updated_at`) VALUES
(1, 'artificialsoft', 'artisoft@bd#321', '8809612440560', 453, 'http://api.icombd.com/api/v2/sendsms/plaintext', '88', 'Bangladesh', '2021-06-27 09:46:34', '2021-08-23 06:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `type`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `keywords`, `meta_image`, `created_at`, `updated_at`) VALUES
(1, 'home_page', 'Home Page', 'home', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:13:20', '2020-11-04 10:13:20'),
(2, 'seller_policy_page', 'Seller Policy Pages', 'sellerpolicy', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:14:41', '2020-11-04 12:19:30'),
(3, 'return_policy_page', 'Return Policy Page', 'returnpolicy', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:14:41', '2020-11-04 10:14:41'),
(4, 'support_policy_page', 'Support Policy Page', 'supportpolicy', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:14:59', '2020-11-04 10:14:59'),
(5, 'terms_conditions_page', 'Term Conditions Page', 'terms', '<h1 style=\"font-size: 20px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102);\">Website Terms and Conditions of Use</h1><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">1. Terms</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">By accessing this Website, accessible from ModonAli.com, you are agreeing to be bound by these Website Terms and Conditions of Use and agree that you are responsible for the agreement with any applicable local laws. If you disagree with any of these terms, you are prohibited from accessing this site. The materials contained in this Website are protected by copyright and trademark law.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">2. Use License</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Permission is granted to temporarily download one copy of the materials on ModonAli.com\'s Website for personal, non-commercial transitory viewing only. This is the grant of a license, not a transfer of title, and under this license, you may not:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"><li>modify or copy the materials;</li><li>use the materials for any commercial purpose or for any public display;</li><li>attempt to reverse engineer any software contained on ModonAli.com\'s Website;</li><li>remove any copyright or other proprietary notations from the materials; or</li><li>transferring the materials to another person or \"mirror\" the materials on any other server.</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">This will let ModonAli.com to terminate upon violations of any of these restrictions. Upon termination, your viewing right will also be terminated and you should destroy any downloaded materials in your possession whether it is printed or electronic format. These Terms of Service have been created with the help of the&nbsp;<a href=\"https://www.termsofservicegenerator.net/\" style=\"color: rgb(102, 102, 102);\">Terms Of Service Generator</a>&nbsp;and the&nbsp;<a href=\"https://www.generateprivacypolicy.com/\" style=\"color: rgb(102, 102, 102);\">Privacy Policy Generator</a>.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">3. Disclaimer</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">All the materials on ModonAli.com’s Website are provided \"as is\". ModonAli.com makes no warranties, may it be expressed or implied, therefore negates all other warranties. Furthermore, ModonAli.com does not make any representations concerning the accuracy or reliability of the use of the materials on its Website or otherwise relating to such materials or any sites linked to this Website.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">4. Limitations</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">ModonAli.com or its suppliers will not be held accountable for any damages that will arise with the use or inability to use the materials on ModonAli.com’s Website, even if ModonAli.com or an authorized representative of this Website has been notified, orally or written, of the possibility of such damage. Some jurisdiction does not allow limitations on implied warranties or limitations of liability for incidental damages, these limitations may not apply to you.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">5. Revisions and Errata</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The materials appearing on ModonAli.com’s Website may include technical, typographical, or photographic errors. ModonAli.com will not promise that any of the materials in this Website are accurate, complete, or current. ModonAli.com may change the materials contained on its Website at any time without notice. ModonAli.com does not make any commitment to update the materials.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">6. Links</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">ModonAli.com has not reviewed all of the sites linked to its Website and is not responsible for the contents of any such linked site. The presence of any link does not imply endorsement by ModonAli.com of the site. The use of any linked website is at the user’s own risk.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">7. Site Terms of Use Modifications</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">ModonAli.com may revise these Terms of Use for its Website at any time without prior notice. By using this Website, you are agreeing to be bound by the current version of these Terms and Conditions of Use.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">8. Your Privacy</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Please read our Privacy Policy.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">9. Governing Law</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Any claim related to ModonAli.com\'s Website shall be governed by the laws of bd without regards to its conflict of law provisions.</p>', NULL, NULL, NULL, NULL, '2020-11-04 10:15:29', '2021-04-10 05:54:56'),
(6, 'privacy_policy_page', 'Privacy Policy Page', 'privacypolicy', '<h1 style=\"font-size: 20px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102);\">Website Terms and Conditions of Use</h1><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">1. Terms</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">By accessing this Website, accessible from ModonAli.com, you are agreeing to be bound by these Website Terms and Conditions of Use and agree that you are responsible for the agreement with any applicable local laws. If you disagree with any of these terms, you are prohibited from accessing this site. The materials contained in this Website are protected by copyright and trademark law.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">2. Use License</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Permission is granted to temporarily download one copy of the materials on ModonAli.com\'s Website for personal, non-commercial transitory viewing only. This is the grant of a license, not a transfer of title, and under this license, you may not:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"><li>modify or copy the materials;</li><li>use the materials for any commercial purpose or for any public display;</li><li>attempt to reverse engineer any software contained on ModonAli.com\'s Website;</li><li>remove any copyright or other proprietary notations from the materials; or</li><li>transferring the materials to another person or \"mirror\" the materials on any other server.</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">This will let ModonAli.com terminate upon violations of any of these restrictions. Upon termination, your viewing right will also be terminated and you should destroy any downloaded materials in your possession whether it is printed or electronic format.&nbsp;</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">3. Disclaimer</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">All the materials on ModonAli.com’s Website are provided \"as is\". ModonAli.com makes no warranties, may it be expressed or implied, therefore negates all other warranties. Furthermore, ModonAli.com does not make any representations concerning the accuracy or reliability of the use of the materials on its Website or otherwise relating to such materials or any sites linked to this Website.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">4. Limitations</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">ModonAli.com or its suppliers will not be held accountable for any damages that will arise with the use or inability to use the materials on ModonAli.com’s Website, even if ModonAli.com or an authorized representative of this Website has been notified, orally or written, of the possibility of such damage. Some jurisdiction does not allow limitations on implied warranties or limitations of liability for incidental damages, these limitations may not apply to you.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">5. Revisions and Errata</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The materials appearing on ModonAli.com’s Website may include technical, typographical, or photographic errors. ModonAli.com will not promise that any of the materials in this Website are accurate, complete, or current. ModonAli.com may change the materials contained on its Website at any time without notice. ModonAli.com does not make any commitment to update the materials.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">6. Links</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">ModonAli.com has not reviewed all of the sites linked to its Website and is not responsible for the contents of any such linked site. The presence of any link does not imply endorsement by ModonAli.com of the site. The use of any linked website is at the user’s own risk.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">7. Site Terms of Use Modifications</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">ModonAli.com may revise these Terms of Use for its Website at any time without prior notice. By using this Website, you are agreeing to be bound by the current version of these Terms and Conditions of Use.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">8. Your Privacy</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Please read our Privacy Policy.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">9. Governing Law</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Any claim related to ModonAli.com\'s Website shall be governed by the laws of bd without regards to its conflict of law provisions.</p>', 'Privacy Policy', NULL, NULL, NULL, '2020-11-04 10:15:55', '2021-04-10 05:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` bigint(20) NOT NULL,
  `page_id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `title`, `content`, `lang`, `created_at`, `updated_at`) VALUES
(1, 6, 'Privacy Policy Page', '<h1 style=\"font-size: 20px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102);\">Website Terms and Conditions of Use</h1><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">1. Terms</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">By accessing this Website, accessible from ModonAli.com, you are agreeing to be bound by these Website Terms and Conditions of Use and agree that you are responsible for the agreement with any applicable local laws. If you disagree with any of these terms, you are prohibited from accessing this site. The materials contained in this Website are protected by copyright and trademark law.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">2. Use License</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Permission is granted to temporarily download one copy of the materials on ModonAli.com\'s Website for personal, non-commercial transitory viewing only. This is the grant of a license, not a transfer of title, and under this license, you may not:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"><li>modify or copy the materials;</li><li>use the materials for any commercial purpose or for any public display;</li><li>attempt to reverse engineer any software contained on ModonAli.com\'s Website;</li><li>remove any copyright or other proprietary notations from the materials; or</li><li>transferring the materials to another person or \"mirror\" the materials on any other server.</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">This will let ModonAli.com terminate upon violations of any of these restrictions. Upon termination, your viewing right will also be terminated and you should destroy any downloaded materials in your possession whether it is printed or electronic format.&nbsp;</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">3. Disclaimer</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">All the materials on ModonAli.com’s Website are provided \"as is\". ModonAli.com makes no warranties, may it be expressed or implied, therefore negates all other warranties. Furthermore, ModonAli.com does not make any representations concerning the accuracy or reliability of the use of the materials on its Website or otherwise relating to such materials or any sites linked to this Website.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">4. Limitations</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">ModonAli.com or its suppliers will not be held accountable for any damages that will arise with the use or inability to use the materials on ModonAli.com’s Website, even if ModonAli.com or an authorized representative of this Website has been notified, orally or written, of the possibility of such damage. Some jurisdiction does not allow limitations on implied warranties or limitations of liability for incidental damages, these limitations may not apply to you.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">5. Revisions and Errata</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The materials appearing on ModonAli.com’s Website may include technical, typographical, or photographic errors. ModonAli.com will not promise that any of the materials in this Website are accurate, complete, or current. ModonAli.com may change the materials contained on its Website at any time without notice. ModonAli.com does not make any commitment to update the materials.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">6. Links</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">ModonAli.com has not reviewed all of the sites linked to its Website and is not responsible for the contents of any such linked site. The presence of any link does not imply endorsement by ModonAli.com of the site. The use of any linked website is at the user’s own risk.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">7. Site Terms of Use Modifications</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">ModonAli.com may revise these Terms of Use for its Website at any time without prior notice. By using this Website, you are agreeing to be bound by the current version of these Terms and Conditions of Use.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">8. Your Privacy</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Please read our Privacy Policy.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">9. Governing Law</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Any claim related to ModonAli.com\'s Website shall be governed by the laws of bd without regards to its conflict of law provisions.</p>', 'en', '2021-04-10 05:49:54', '2021-04-10 05:53:26'),
(2, 5, 'Term Conditions Page', '<h1 style=\"font-size: 20px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102);\">Website Terms and Conditions of Use</h1><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">1. Terms</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">By accessing this Website, accessible from ModonAli.com, you are agreeing to be bound by these Website Terms and Conditions of Use and agree that you are responsible for the agreement with any applicable local laws. If you disagree with any of these terms, you are prohibited from accessing this site. The materials contained in this Website are protected by copyright and trademark law.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">2. Use License</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Permission is granted to temporarily download one copy of the materials on ModonAli.com\'s Website for personal, non-commercial transitory viewing only. This is the grant of a license, not a transfer of title, and under this license, you may not:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"><li>modify or copy the materials;</li><li>use the materials for any commercial purpose or for any public display;</li><li>attempt to reverse engineer any software contained on ModonAli.com\'s Website;</li><li>remove any copyright or other proprietary notations from the materials; or</li><li>transferring the materials to another person or \"mirror\" the materials on any other server.</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">This will let ModonAli.com to terminate upon violations of any of these restrictions. Upon termination, your viewing right will also be terminated and you should destroy any downloaded materials in your possession whether it is printed or electronic format. These Terms of Service have been created with the help of the&nbsp;<a href=\"https://www.termsofservicegenerator.net/\" style=\"color: rgb(102, 102, 102);\">Terms Of Service Generator</a>&nbsp;and the&nbsp;<a href=\"https://www.generateprivacypolicy.com/\" style=\"color: rgb(102, 102, 102);\">Privacy Policy Generator</a>.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">3. Disclaimer</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">All the materials on ModonAli.com’s Website are provided \"as is\". ModonAli.com makes no warranties, may it be expressed or implied, therefore negates all other warranties. Furthermore, ModonAli.com does not make any representations concerning the accuracy or reliability of the use of the materials on its Website or otherwise relating to such materials or any sites linked to this Website.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">4. Limitations</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">ModonAli.com or its suppliers will not be held accountable for any damages that will arise with the use or inability to use the materials on ModonAli.com’s Website, even if ModonAli.com or an authorized representative of this Website has been notified, orally or written, of the possibility of such damage. Some jurisdiction does not allow limitations on implied warranties or limitations of liability for incidental damages, these limitations may not apply to you.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">5. Revisions and Errata</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The materials appearing on ModonAli.com’s Website may include technical, typographical, or photographic errors. ModonAli.com will not promise that any of the materials in this Website are accurate, complete, or current. ModonAli.com may change the materials contained on its Website at any time without notice. ModonAli.com does not make any commitment to update the materials.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">6. Links</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">ModonAli.com has not reviewed all of the sites linked to its Website and is not responsible for the contents of any such linked site. The presence of any link does not imply endorsement by ModonAli.com of the site. The use of any linked website is at the user’s own risk.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">7. Site Terms of Use Modifications</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">ModonAli.com may revise these Terms of Use for its Website at any time without prior notice. By using this Website, you are agreeing to be bound by the current version of these Terms and Conditions of Use.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">8. Your Privacy</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Please read our Privacy Policy.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-right: 0px; margin-bottom: 18px; margin-left: 0px; font-size: 16px;\">9. Governing Law</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Any claim related to ModonAli.com\'s Website shall be governed by the laws of bd without regards to its conflict of law provisions.</p>', 'en', '2021-04-10 05:54:56', '2021-04-10 05:54:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `amount` double(20,2) NOT NULL DEFAULT 0.00,
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txn_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickup_points`
--

CREATE TABLE `pickup_points` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(15) NOT NULL,
  `pick_up_status` int(1) DEFAULT NULL,
  `cash_on_pickup_status` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickup_points`
--

INSERT INTO `pickup_points` (`id`, `staff_id`, `name`, `address`, `phone`, `pick_up_status`, `cash_on_pickup_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'ModonAli Store', '379 East Rampura, Dhaka 1219', '01817590724', 1, NULL, '2021-05-27 12:13:46', '2021-05-27 12:13:46');

-- --------------------------------------------------------

--
-- Table structure for table `pickup_point_translations`
--

CREATE TABLE `pickup_point_translations` (
  `id` bigint(20) NOT NULL,
  `pickup_point_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pickup_point_translations`
--

INSERT INTO `pickup_point_translations` (`id`, `pickup_point_id`, `name`, `address`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'ModonAli Store', '379 East Rampura, Dhaka 1219', 'en', '2021-05-27 12:13:46', '2021-05-27 12:13:46');

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` int(11) NOT NULL,
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'support_policy', NULL, '2019-10-29 12:54:45', '2019-01-22 05:13:15'),
(2, 'return_policy', NULL, '2019-10-29 12:54:47', '2019-01-24 05:40:11'),
(4, 'seller_policy', NULL, '2019-10-29 12:54:49', '2019-02-04 17:50:15'),
(5, 'terms', NULL, '2019-10-29 12:54:51', '2019-10-28 18:00:00'),
(6, 'privacy_policy', NULL, '2019-10-29 12:54:54', '2019-10-28 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `added_by` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `photos` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` double(20,2) NOT NULL,
  `purchase_price` double(20,2) NOT NULL,
  `variant_product` int(1) NOT NULL DEFAULT 0,
  `commission` varchar(191) COLLATE utf8_unicode_ci DEFAULT '0',
  `attributes` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `choice_options` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `colors` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `variations` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `todays_deal` int(11) NOT NULL DEFAULT 0,
  `published` int(11) NOT NULL DEFAULT 1,
  `stock_visibility_state` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'quantity',
  `cash_on_delivery` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = On, 0 = Off',
  `featured` int(11) NOT NULL DEFAULT 0,
  `seller_featured` int(11) NOT NULL DEFAULT 0,
  `current_stock` int(10) NOT NULL DEFAULT 0,
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_qty` int(11) NOT NULL DEFAULT 1,
  `low_stock_quantity` int(11) DEFAULT NULL,
  `discount` double(20,2) DEFAULT NULL,
  `discount_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax` double(20,2) DEFAULT NULL,
  `tax_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_type` varchar(20) CHARACTER SET latin1 DEFAULT 'flat_rate',
  `shipping_cost` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `est_shipping_days` int(11) DEFAULT NULL,
  `num_of_sale` int(11) NOT NULL DEFAULT 0,
  `meta_title` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `rating` double(8,2) NOT NULL DEFAULT 0.00,
  `barcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `digital` int(1) NOT NULL DEFAULT 0,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `brand_id`, `photos`, `thumbnail_img`, `video_provider`, `video_link`, `tags`, `description`, `unit_price`, `purchase_price`, `variant_product`, `commission`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `stock_visibility_state`, `cash_on_delivery`, `featured`, `seller_featured`, `current_stock`, `unit`, `min_qty`, `low_stock_quantity`, `discount`, `discount_type`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `est_shipping_days`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `rating`, `barcode`, `digital`, `file_name`, `file_path`, `created_at`, `updated_at`) VALUES
(1, 'DEEP SEA – Concentrate Mineral', 'seller', 10, 10, NULL, NULL, 1, '6,7', '8', 'youtube', NULL, 'Deep Sea Mineral', '<div class=\"image-here pb-10\" style=\"padding-bottom: 10px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 15px;\"><img src=\"http://happyrich.live/images/products/3.png\" alt=\"\" style=\"max-width: 100%; height: auto;\"></div><p class=\"dsc-p text-justify\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 15px;\">Deep Sea Minerals are the answer to everyone’s mineral needs because they are 100% hundred percent bio-available. They are what your cells need to maintain and repair themselves. Infants start their lives with close to 100% of the minerals and trace minerals they need because while gestating they simply steal them from their mothers. Later, their reserves go down because of the standard of diets we eat… and soon our mineral reserves are in the dangerously low area. The form of Calcium in Deep Sea Minerals is Calcium Chloride, the form that your body directly uses.</p><p class=\"text\" style=\"margin-right: 0px; margin-bottom: 26px; margin-left: 0px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 15px;\">Minerals — are the key to great health.<br>Immune System Booster Deep Sea Minerals are the answer to everyone’s mineral needs because they are 100% hundred percent bio-available.<br>They are what your cells need to maintain and repair themselves.</p><div class=\"pb-10\" style=\"padding-bottom: 10px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 15px;\">Infants start their lives with close to 100% of the minerals and trace minerals they need because while gestating they simply steal them from their mothers.<br>Later, their reserves go down because of the standard of diets we eat… and soon our mineral reserves are in the dangerously low area. The form of Calcium in Deep Sea Minerals is Calcium Chloride, the form that your body directly uses.<br>All other forms of calcium are first converted by your body to calcium chloride. Deep Sea Minerals are in a natural balance that is very similar to human blood.<br>This balance makes Deep Sea Minerals better than any other form of minerals you can obtain. A lucky accident has given us Deep Sea Trace Minerals as a solution to mineral deficiency.</div>', 4000.00, 4000.00, 1, '120', '[\"3\",\"4\"]', '[{\"attribute_id\":\"3\",\"values\":[\"60ml\"]},{\"attribute_id\":\"4\",\"values\":[\"Australia\"]}]', '[]', NULL, 1, 1, 'quantity', 1, 1, 1, 100, 'Pc', 1, 1, 500.00, 'amount', NULL, NULL, 'free', '0', 3, 7, 'DEEP SEA – Concentrate Mineral', 'Deep Sea Minerals are the answer to everyone’s mineral needs because they are 100% hundred percent bio-available. They are what your cells need to maintain and repair themselves. Infants start their lives with close to 100% of the minerals and trace minerals they need because while gestating they simply steal them from their mothers. Later, their reserves go down because of the standard of diets we eat… and soon our mineral reserves are in the dangerously low area. The form of Calcium in Deep Sea Minerals is Calcium Chloride, the form that your body directly uses.', '6', NULL, 'deep-sea-concentrate-mineral', 0.00, NULL, 1, NULL, NULL, '2021-03-31 07:25:51', '2021-06-19 10:13:52'),
(2, 'Nano Sweet', 'seller', 10, 10, NULL, NULL, 1, '9,10', '11', 'youtube', NULL, 'Nano Sweet', '<div class=\"image-here pb-10\" style=\"padding-bottom: 10px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 15px;\"><img src=\"http://happyrich.live/images/products/4.jpg\" alt=\"\" style=\"max-width: 100%; height: auto;\"></div><p class=\"dsc-p text-justify pb-10\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-bottom: 10px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 15px;\">Nano Sweet utilizes a blend of 7 different nourishing herbs as well as good bacteria to help support the total digestive process. Yes, it works! One of the main ingredients in Metagreen is Moringa. Moringa is a stimulant that encourages Peristalsis, which is a series of contractions throughout the colon. These contractions are necessary to move waste through the digestive system.</p>', 1200.00, 1200.00, 1, '140', '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"10ml\"]}]', '[]', NULL, 0, 1, 'quantity', 1, 1, 1, 0, 'Pc', 1, 1, 300.00, 'amount', NULL, NULL, 'flat_rate', '0', 3, 1, 'Nano Sweet', 'Nano Sweet utilizes a blend of 7 different nourishing herbs as well as good bacteria to help support the total digestive process. Yes, it works! One of the main ingredients in Metagreen is Moringa. Moringa is a stimulant that encourages Peristalsis, which is a series of contractions throughout the colon. These contractions are necessary to move waste through the digestive system.', '9', NULL, 'nano-sweet', 0.00, NULL, 0, NULL, NULL, '2021-03-31 08:19:53', '2021-06-15 07:10:43'),
(3, 'Dove Original Beauty Cream Bar White Soap 135gm', 'admin', 9, 4, NULL, NULL, 2, '24', '23', 'youtube', NULL, 'Dove,Beauty Soap', '<div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\">Dove Original Beauty Cream Bar </div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\">\r\n </div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\">About this item </div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\">\r\n   LOCK IN MOISTURE: The classic Dove White Beauty Bar nourishes and \r\npampers skin to give you softer, smoother, more radiant looking skin \r\nthan ordinary bar soap.  \r\n   RICH HYDRATION: Help maintain your skin’s natural moisture barrier \r\nand hydration with this beauty bar ideal to use as a facial cleanser and\r\n body wash for sensitive skin.  \r\n   #1 DERMATOLOGIST RECOMMENDED: Formulated with mild cleansers and ¼ \r\nmoisturizing cream, Dove moisturizing beauty bar leaves skin instantly \r\nsoft and smooth with lasting nourishment.  \r\n   GENTLE CLEANSING The luxurious lather of this Dove Beauty Bar won’t \r\ndry skin like ordinary bar soaps. It’s gentle enough to use every day on\r\n both body and face.  \r\n   THOUGHTFULLY MADE: This beauty bar is PETA-certified cruelty-free so \r\nyou can feel good about switching from ordinary soap to Dove Beauty Bar.\r\n  \r\n   CARE AS YOU CLEAN: The cleansing efficacy and care you need, all in \r\none beauty bar product. </div>', 140.00, 140.00, 1, NULL, '[\"4\",\"1\"]', '[{\"attribute_id\":\"4\",\"values\":[\"Germany\"]},{\"attribute_id\":\"1\",\"values\":[\"135g\"]}]', '[\"#FFC0CB\",\"#FFFFFF\"]', NULL, 1, 1, 'quantity', 1, 1, 0, 102, 'Pc', 1, 1, 10.00, 'amount', NULL, NULL, 'free', '0', 3, 6, 'Dove Original Beauty Cream Bar White Soap 135gm', 'Dove Original Beauty Cream Bar \r\n About this item \r\n   LOCK IN MOISTURE: The classic Dove White Beauty Bar nourishes and \r\npampers skin to give you softer, smoother, more radiant looking skin \r\nthan ordinary bar soap.  \r\n   RICH HYDRATION: Help maintain your skin’s natural moisture barrier \r\nand hydration with this beauty bar ideal to use as a facial cleanser and\r\n body wash for sensitive skin.  \r\n   #1 DERMATOLOGIST RECOMMENDED: Formulated with mild cleansers and ¼ \r\nmoisturizing cream, Dove moisturizing beauty bar leaves skin instantly \r\nsoft and smooth with lasting nourishment.  \r\n   GENTLE CLEANSING The luxurious lather of this Dove Beauty Bar won’t \r\ndry skin like ordinary bar soaps. It’s gentle enough to use every day on\r\n both body and face.  \r\n   THOUGHTFULLY MADE: This beauty bar is PETA-certified cruelty-free so \r\nyou can feel good about switching from ordinary soap to Dove Beauty Bar.\r\n  \r\n   CARE AS YOU CLEAN: The cleansing efficacy and care you need, all in \r\none beauty bar product.', '23', NULL, 'dove-original-beauty-cream-bar-white-soap-135gm', 0.00, NULL, 0, NULL, NULL, '2021-04-09 06:29:10', '2021-06-15 06:46:39'),
(4, 'Cow Brand Beauty Soap Japan – 100gm', 'admin', 9, 4, NULL, NULL, 3, '28,30', '29', 'youtube', NULL, 'Cow Brand,Beauty Soap', '<p>That\r\n is made in Japan offers simple, natural ingredients for healthy, soft, \r\nand beautiful skin. It is a famous brand of Japanese bar soap that has \r\nbeen loved by all since its production in 1909. Through its continuous \r\nusage, your skin will grow supple, smooth, and gain a youthful glow. It \r\nis a trusted brand of soap that will never fade out. This soap produces a\r\n thick, plush leather. After rinsing off the soap lather from your body,\r\n your skin will feel so refreshed. The scent is fresh jasmine flowers. \r\nNot only is this good for your body, but for your face too! If you are \r\nstruggling with adolescent acne, then washing with this soap is \r\nrecommended. (Be sure to completely moisturize afterward!)</p>', 400.00, 400.00, 1, NULL, '[\"1\",\"4\"]', '[{\"attribute_id\":\"1\",\"values\":[\"100g\"]},{\"attribute_id\":\"4\",\"values\":[\"Japan\"]}]', '[]', NULL, 1, 1, 'quantity', 1, 1, 0, 0, 'Pc', 1, 1, 100.00, 'amount', NULL, NULL, 'free', '0', 3, 4, 'Cow Brand Beauty Soap Japan – 100gm', 'That is made in Japan offers simple, natural ingredients for healthy, soft, and beautiful skin. It is a famous brand of Japanese bar soap that has been loved by all since its production in 1909. Through its continuous usage, your skin will grow supple, smooth, and gain a youthful glow. It is a trusted brand of soap that will never fade out. This soap produces a thick, plush leather. After rinsing off the soap lather from your body, your skin will feel so refreshed. The scent is fresh jasmine flowers. Not only is this good for your body, but for your face too! If you are struggling with adolescent acne, then washing with this soap is recommended. (Be sure to completely moisturize afterward!)', '29', NULL, 'cow-brand-beauty-soap-japan-100gm', 0.00, NULL, 0, NULL, NULL, '2021-04-09 09:35:02', '2021-06-15 07:12:37'),
(5, 'Freyias Weekly Peeling Milk Face Wash', 'admin', 9, 5, NULL, NULL, NULL, '34,35,33,32', '31', 'youtube', NULL, 'Face Wash,Skin Care', '<div><div class=\"woocommerce-product-details__short-description\">\r\n<p>Wash away dirt and impurities with this rich cleanser. Specially \r\nformulated for Normal to Oily skin, this daily face wash works to \r\ncleanse and leave skin feeling smooth and hydrated. For best results, \r\nuse 3-4 times every week.</p>\r\n<p><strong>Benefits:</strong><br>\r\nGently polishes skin for a clean and smooth feeling.<br>\r\nLeaves the skin moisturized.</p>\r\n<p>Developed in UK, Made in PRC</p>\r\n</div></div>', 250.00, 250.00, 1, NULL, '[\"3\",\"4\"]', '[{\"attribute_id\":\"3\",\"values\":[\"100ml\"]},{\"attribute_id\":\"4\",\"values\":[\"UK\"]}]', '[]', NULL, 1, 1, 'quantity', 1, 1, 0, 0, 'Pc', 1, 1, 110.00, 'amount', NULL, NULL, 'free', '0', 3, 4, 'Freyias Weekly Peeling Milk Face Wash', 'Wash away dirt and impurities with this rich cleanser. Specially formulated for Normal to Oily skin, this daily face wash works to cleanse and leave skin feeling smooth and hydrated. For best results, use 3-4 times every week.', '35', NULL, 'freyias-weekly-peeling-milk-face-wash', 0.00, NULL, 0, NULL, NULL, '2021-04-09 10:06:21', '2021-06-15 07:12:37'),
(6, 'ZORAS Brightening & Treatment Set', 'admin', 9, 5, NULL, NULL, NULL, '38,39,37', '36', 'youtube', NULL, 'Skin Care,Beauty Treayment', '<p>ZORA’S introduce to you Japan formulated high quality &amp; effective [4\r\n IN 1] Skin Brightening and Treatment Series which is approved by the \r\nMalaysian Health Ministry (KKM), It is made from 100% natural \r\ningredients and rich in the high nutritious extract collected from all \r\naround the world, the primary ingredients of this Brightening and \r\nTreatment Series is Hyaluronic acid, Glutathione, Hydrogenated castor \r\noil, Arbutin, Australian Lime Pearl, Swiss Edelweiss, Canadian Willow, \r\nPaeonia Suffruticosa, Saxifraga Sarmentosa, Caesalpinia Spinosa.  \r\n \r\n&nbsp;ZORA’S Brightening &amp; Treatment Series Set [ 4 in 1 ] Contained:  \r\n \r\n  Brightening Cleanser 50ml \r\n  Brightening Essence 30ml \r\n   Brightening Day Cream 20ml  \r\n  Brightening Night Cream 20ml  \r\n \r\n&nbsp;ZORA’S Skin Care will help you to overcome the below problems: \r\n \r\n  Dark Skin \r\n  Dark Spots  \r\n  Dull Skin  \r\n  Dry Skin \r\n  Too Greasy Skin \r\n  Acne Problem \r\n  Sun Burned Skin \r\n  Uneven Skin Tone \r\n  Damaged Skin due to the use of wrong products.</p>', 3880.00, 3880.00, 1, '90', '[\"4\"]', '[{\"attribute_id\":\"4\",\"values\":[\"Malaysia\"]}]', '[]', NULL, 1, 1, 'quantity', 1, 1, 0, 0, 'Pc', 1, 1, 380.00, 'amount', NULL, NULL, 'free', '0', 3, 0, 'ZORAS Brightening & Treatment Set', 'ZORA’S introduce to you Japan formulated high quality & effective [4 IN 1] Skin Brightening and Treatment Series which is approved by the Malaysian Health Ministry (KKM), It is made from 100% natural ingredients and rich in the high nutritious extract collected from all around the world, the primary ingredients of this Brightening and Treatment Series is Hyaluronic acid, Glutathione, Hydrogenated castor oil, Arbutin, Australian Lime Pearl, Swiss Edelweiss, Canadian Willow, Paeonia Suffruticosa, Saxifraga Sarmentosa, Caesalpinia Spinosa.  ZORA’S Brightening & Treatment Series Set [ 4 in 1 ] Contained: Brightening Cleanser 50ml Brightening Essence 30ml Brightening Day Cream 20ml Brightening Night Cream 20ml  ZORA’S Skin Care will help you to overcome the below problems: Dark Skin Dark Spots Dull Skin Dry Skin Too Greasy Skin Acne Problem Sun Burned Skin Uneven Skin Tone Damaged Skin due to the use of wrong products.', '36', NULL, 'zoras-brightening-treatment-set', 0.00, NULL, 0, NULL, NULL, '2021-04-09 10:36:28', '2021-06-15 06:00:39'),
(7, 'Pears Pure and Gentle Shower Gel 250ml', 'seller', 12, 4, NULL, NULL, NULL, '42,43', '41', 'youtube', NULL, 'Beauty', '<p>Try the New Pears Pure &amp; Gentle body wash, crafted with 98% pure \r\nglycerin and natural oils. It is a pure and gentle cleanser for your \r\nbody that leaves your skin feeling soft, smooth, and moisturized. Pears \r\nBody wash is mild and gentle and cleanses your skin thoroughly. It is \r\n100% soap-free &amp; dermatologically tested. It helps moisturize your \r\nskin so that it does not dry. With natural oils, it is a gentle cleanser\r\n for your body. The Pure and Gentle Body Wash from Pears is available \r\nright here. Buy it Now!\r\n\r\nBenefits of the Pears Pure &amp; Gentle Body wash:\r\n1) It is 100% Soap Free\r\n2) It is Dermatologically Tested\r\n3) It contains 98% pure glycerin\r\nHow to use the Pears Pure and Gentle Body Wash:\r\n1) Squeeze a small amount of Pears Pure and Gentle Body wash on a wet \r\nloofah.\r\n2) Work into a rich creamy lather.\r\n3) Apply gently over wet skin and then rinse off, for skin that feels \r\nsoft, smooth, and moisturized.\r\nEstablished in 1807, Pears is an iconic brand of Unilever. It has a \r\nheritage of over 200 years in making pure and gentle products. Pears is a\r\n registered Trade Mark.<br></p>', 600.00, 600.00, 1, NULL, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"250ml\"]}]', '[]', NULL, 1, 1, 'quantity', 1, 1, 0, 0, 'Pc', 1, 1, 150.00, 'amount', NULL, NULL, 'flat_rate', '25', 3, 3, 'Pears Pure and Gentle Shower Gel 250ml', 'Try the New Pears Pure & Gentle body wash, crafted with 98% pure glycerin and natural oils. It is a pure and gentle cleanser for your body that leaves your skin feeling soft, smooth, and moisturized. Pears Body wash is mild and gentle and cleanses your skin thoroughly. It is 100% soap-free & dermatologically tested. It helps moisturize your skin so that it does not dry. With natural oils, it is a gentle cleanser for your body. The Pure and Gentle Body Wash from Pears is available right here. Buy it Now! Benefits of the Pears Pure & Gentle Body wash: 1) It is 100% Soap Free 2) It is Dermatologically Tested 3) It contains 98% pure glycerin How to use the Pears Pure and Gentle Body Wash: 1) Squeeze a small amount of Pears Pure and Gentle Body wash on a wet loofah. 2) Work into a rich creamy lather. 3) Apply gently over wet skin and then rinse off, for skin that feels soft, smooth, and moisturized. Established in 1807, Pears is an iconic brand of Unilever. It has a heritage of over 200 years in making pure and gentle products. Pears is a registered Trade Mark.', '41', NULL, 'pears-pure-and-gentle-shower-gel-250ml', 0.00, NULL, 0, NULL, NULL, '2021-04-09 11:31:38', '2021-05-22 06:21:02'),
(8, 'Long Sleeve Polka Dot Shirt', 'seller', 16, 7, NULL, NULL, 6, '66', '66', 'youtube', NULL, 'Mens Clothing', NULL, 1110.00, 1100.00, 1, '50', '[\"2\"]', '[{\"attribute_id\":\"2\",\"values\":[\"Cotton\"]}]', '[]', NULL, 0, 0, 'quantity', 1, 0, 1, 0, 'Pc', 1, 1, 10.00, 'amount', NULL, NULL, 'flat_rate', '0', 3, 0, 'Long Sleeve Polka Dot Shirt', '', '66', NULL, 'Long-Sleeve-Polka-Dot-Shirt-xTa94', 0.00, NULL, 0, NULL, NULL, '2021-04-26 08:20:08', '2021-06-14 12:03:46'),
(9, 'Long Sleeve Floral Shirt', 'seller', 16, 7, NULL, NULL, 4, '67', '67', 'youtube', NULL, 'Mens Clothing', NULL, 1100.00, 1100.00, 1, '75', '[\"2\"]', '[{\"attribute_id\":\"2\",\"values\":[\"Cotton\"]}]', '[]', NULL, 0, 0, 'quantity', 1, 0, 1, 0, 'Pc', 1, 1, 10.00, 'amount', NULL, NULL, 'flat_rate', '0', 3, 0, 'Long Sleeve Floral Shirt', '', '67', NULL, 'Long-Sleeve-Floral-Shirt-RBAOB', 0.00, NULL, 0, NULL, NULL, '2021-04-26 08:41:07', '2021-06-19 09:57:30'),
(10, 'Long Sleeve  Shirt Dino Print', 'seller', 16, 7, NULL, NULL, 5, '68', '68', 'youtube', NULL, 'Men\'s Clothing', NULL, 1110.00, 1100.00, 1, '222', '[\"2\"]', '[{\"attribute_id\":\"2\",\"values\":[\"Cotton\"]}]', '[]', NULL, 1, 1, 'quantity', 1, 0, 1, 0, 'Pc', 1, 1, 10.00, 'amount', NULL, NULL, 'flat_rate', '0', 3, 0, 'Long Sleeve  Shirt Dino Print', '', '68', NULL, 'Long-Sleeve--Shirt-Dino-Print-gychj', 0.00, NULL, 0, NULL, NULL, '2021-04-26 08:54:27', '2021-06-15 05:35:16'),
(11, 'Akash DTH Basic', 'seller', 11, 9, NULL, NULL, 7, '71', '71', 'youtube', NULL, 'Akash Dth,Akash,Dth,TV,Channel,Satellite,Entertainment,Media', '<p>With great picture quality, incredibly vivid colors, sharper images and stunning surround sound, AKASH takes TV viewing to greater heights with its wide array of features that ensure an enhanced viewing experience.</p><p><br></p><p>Avail AKASH Basic today and enjoy the free installation.</p><p><br></p><p>Items included: AKASH Basic Set-top-box with a power supply unit (PSU), Remote Control unit (RCU), HDMI Cable, Dish with accessories, Single port LNB, 2 connectors (indoor &amp; outdoor).</p><p><br></p><p>&nbsp;* 10-meter cable will be free with Full Combo Box, BDT 30 /meter will be applicable as cable charge after 10 meter</p>', 3999.00, 3999.00, 0, '100', '[]', '[]', '[]', NULL, 1, 1, 'quantity', 1, 1, 0, 100, 'Pc', 1, 1, 700.00, 'amount', NULL, NULL, 'free', '0', 3, 0, 'Akash DTH Basic', 'With great picture quality, incredibly vivid colors, sharper images and stunning surround sound, AKASH takes TV viewing to greater heights with its wide array of features that ensure an enhanced viewing experience.\r\n\r\nAvail AKASH Basic today and enjoy the free installation.\r\n\r\nItems included: AKASH Basic Set-top-box with a power supply unit (PSU), Remote Control unit (RCU), HDMI Cable, Dish with accessories, Single port LNB, 2 connectors (indoor & outdoor).\r\n\r\n * 10-meter cable will be free with Full Combo Box, BDT 30 /meter will be applicable as cable charge after 10 meter', '71', NULL, 'akash-dth-basic', 0.00, NULL, 0, NULL, NULL, '2021-04-28 07:55:34', '2021-06-14 12:03:26'),
(12, 'Akash DTH Regular', 'seller', 11, 9, NULL, NULL, 7, '71', '71', 'youtube', NULL, 'Akash Dth,Akash,Dth,Entertainment,TV,Channel,Satellite', '<p>With great picture quality, incredibly vivid colors, sharper images and stunning surround sound, AKASH takes TV viewing to greater heights with its wide array of features that ensure an enhanced viewing experience.</p><p><br></p><p>Avail AKASH Basic today and enjoy the free installation.</p><p><br></p><p>Items included: AKASH Basic Set-top-box with a power supply unit (PSU), Remote Control unit (RCU), HDMI Cable, Dish with accessories, Single port LNB, 2 connectors (indoor &amp; outdoor).</p><p><br></p><p>&nbsp;* 10-meter cable will be free with Full Combo Box, BDT 30 /meter will be applicable as cable charge after 10 meter</p>', 4499.00, 4499.00, 0, '700', '[]', '[]', '[]', NULL, 1, 1, 'quantity', 1, 1, 0, 100, 'Pc', 1, 1, 700.00, 'amount', NULL, NULL, 'flat_rate', '0', NULL, 0, 'Akash DTH Regular', 'With great picture quality, incredibly vivid colors, sharper images and stunning surround sound, AKASH takes TV viewing to greater heights with its wide array of features that ensure an enhanced viewing experience.\r\n\r\nAvail AKASH Basic today and enjoy the free installation.\r\n\r\nItems included: AKASH Basic Set-top-box with a power supply unit (PSU), Remote Control unit (RCU), HDMI Cable, Dish with accessories, Single port LNB, 2 connectors (indoor & outdoor).\r\n\r\n * 10-meter cable will be free with Full Combo Box, BDT 30 /meter will be applicable as cable charge after 10 meter', '71', NULL, 'Akash-DTH-Regular-w0kq6', 0.00, NULL, 0, NULL, NULL, '2021-04-28 08:10:18', '2021-06-15 05:37:10'),
(16, 'This is new arriaval', 'admin', 9, 4, NULL, NULL, 1, '79', NULL, 'youtube', 'hfgh', 'cloth', '<p>gfgf</p>', 500.00, 400.00, 1, '40', '[\"1\",\"2\",\"3\"]', '[{\"attribute_id\":\"1\",\"values\":[\"s\"]},{\"attribute_id\":\"2\",\"values\":[\"cotton\"]},{\"attribute_id\":\"3\",\"values\":[\"dd\"]}]', '[\"#9966CC\"]', NULL, 1, 1, 'text', 1, 1, 0, 0, '12', 12, 14, 10.00, 'amount', NULL, NULL, 'free', '0', 10, 0, 'fdsf', 'this is new product', NULL, NULL, 'This-is-new-arriaval-YrjxF', 0.00, NULL, 0, NULL, NULL, '2021-06-20 05:00:38', '2021-06-20 05:00:38'),
(17, 'The Shawshank Redemption', 'seller', 10, 5, NULL, NULL, 1, '4', '3', 'dailymotion', 'dsfsd', 'skin care', '<p>sa dasf dfasdfds&nbsp;</p>', 750.00, 500.00, 1, '10', '[\"2\"]', '[{\"attribute_id\":\"2\",\"values\":[\"ddd\",\"s\"]}]', '[\"#F0F8FF\",\"#9966CC\"]', NULL, 1, 0, 'quantity', 1, 1, 0, 0, '12', 1, 45, 10.00, 'amount', NULL, NULL, 'flat_rate', '0', 5, 0, 'fdsf', 'dfwf', '3,81', NULL, 'The-Shawshank-Redemption-nVV18', 0.00, NULL, 0, NULL, NULL, '2021-06-20 05:15:59', '2021-09-02 06:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(20,2) NOT NULL DEFAULT 0.00,
  `qty` int(11) NOT NULL DEFAULT 0,
  `image` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `variant`, `sku`, `price`, `qty`, `image`, `created_at`, `updated_at`) VALUES
(15, 4, '100g-Japan', 'CBS001', 400.00, 96, 29, '2021-04-09 09:39:06', '2021-06-15 07:12:37'),
(16, 3, 'Pink-Germany-135g', 'BCDSP002', 140.00, 44, 25, '2021-04-09 09:45:28', '2021-06-15 06:44:20'),
(17, 3, 'White-Germany-135g', 'BCDSW002', 140.00, 50, 26, '2021-04-09 09:45:28', '2021-04-09 09:45:28'),
(20, 5, '100ml-UK', NULL, 250.00, 6, NULL, '2021-04-09 10:13:00', '2021-06-15 07:12:37'),
(23, 6, 'Malaysia', NULL, 3880.00, 10, NULL, '2021-04-09 10:38:45', '2021-04-09 10:38:45'),
(27, 7, '250ml', 'BCP003', 600.00, 7, NULL, '2021-04-09 11:38:36', '2021-05-22 06:21:02'),
(28, 2, '10ml', 'HRL001', 1200.00, 99, 10, '2021-04-11 12:34:34', '2021-06-15 07:10:43'),
(29, 1, '60ml-Australia', 'HRL002', 4000.00, 96, NULL, '2021-04-11 12:35:04', '2021-04-11 12:35:04'),
(30, 8, 'Cotton', NULL, 1110.00, 10, NULL, '2021-04-26 08:20:08', '2021-04-26 08:20:08'),
(31, 9, 'Cotton', NULL, 1100.00, 10, NULL, '2021-04-26 08:41:07', '2021-04-26 08:41:07'),
(32, 10, 'Cotton', NULL, 1100.00, 10, 68, '2021-04-26 08:54:27', '2021-04-26 08:54:27'),
(34, 11, NULL, NULL, 3999.00, 100, NULL, '2021-04-28 08:04:00', '2021-04-28 08:04:00'),
(35, 12, NULL, NULL, 4499.00, 100, NULL, '2021-04-28 08:10:18', '2021-04-28 08:10:18'),
(36, 13, 'AntiqueWhite', '22', 23.00, 10, NULL, '2021-06-14 10:16:19', '2021-06-14 10:16:19'),
(37, 13, 'Aqua', '22', 23.00, 10, NULL, '2021-06-14 10:16:19', '2021-06-14 10:16:19'),
(38, 13, 'Aquamarine', '22', 23.00, 10, NULL, '2021-06-14 10:16:19', '2021-06-14 10:16:19'),
(39, 13, 'BlueViolet', '2', 23.00, 10, NULL, '2021-06-14 10:16:19', '2021-06-14 10:16:19'),
(40, 13, 'Brown', '22', 23.00, 10, NULL, '2021-06-14 10:16:19', '2021-06-14 10:16:19'),
(41, 16, 'Amethyst-s-cotton-dd', '20', 500.00, 10, NULL, '2021-06-20 05:00:38', '2021-06-20 05:00:38'),
(42, 17, 'AliceBlue-ddd', NULL, 750.00, 10, NULL, '2021-06-20 05:15:59', '2021-06-20 05:15:59'),
(43, 17, 'AliceBlue-s', NULL, 750.00, 10, NULL, '2021-06-20 05:15:59', '2021-06-20 05:15:59'),
(44, 17, 'Amethyst-ddd', NULL, 750.00, 10, NULL, '2021-06-20 05:15:59', '2021-06-20 05:15:59'),
(45, 17, 'Amethyst-s', NULL, 750.00, 10, NULL, '2021-06-20 05:15:59', '2021-06-20 05:15:59');

-- --------------------------------------------------------

--
-- Table structure for table `product_taxes`
--

CREATE TABLE `product_taxes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `tax` double(20,2) NOT NULL,
  `tax_type` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_taxes`
--

INSERT INTO `product_taxes` (`id`, `product_id`, `tax_id`, `tax`, `tax_type`, `created_at`, `updated_at`) VALUES
(2, 1, 3, 0.00, 'amount', '2021-03-31 07:25:51', '2021-03-31 07:25:51'),
(3, 2, 3, 0.00, 'amount', '2021-03-31 08:19:53', '2021-03-31 08:19:53'),
(4, 3, 3, 0.00, 'amount', '2021-04-09 06:29:10', '2021-04-09 06:29:10'),
(5, 4, 3, 0.00, 'amount', '2021-04-09 09:35:02', '2021-04-09 09:35:02'),
(6, 5, 3, 0.00, 'amount', '2021-04-09 10:06:21', '2021-04-09 10:06:21'),
(7, 6, 3, 0.00, 'amount', '2021-04-09 10:36:28', '2021-04-09 10:36:28'),
(8, 7, 3, 0.00, 'amount', '2021-04-09 11:31:38', '2021-04-09 11:31:38'),
(9, 8, 3, 0.00, 'amount', '2021-04-26 08:20:08', '2021-04-26 08:20:08'),
(10, 9, 3, 0.00, 'amount', '2021-04-26 08:41:07', '2021-04-26 08:41:07'),
(11, 10, 3, 0.00, 'amount', '2021-04-26 08:54:27', '2021-04-26 08:54:27'),
(12, 11, 3, 0.00, 'amount', '2021-04-28 07:55:34', '2021-04-28 07:55:34'),
(13, 12, 3, 0.00, 'amount', '2021-04-28 08:10:18', '2021-04-28 08:10:18'),
(14, 13, 3, 2.00, 'amount', '2021-06-14 10:16:19', '2021-06-14 10:16:19'),
(15, 16, 3, 10.00, 'percent', '2021-06-20 05:00:38', '2021-06-20 05:00:38'),
(16, 17, 3, 0.00, 'percent', '2021-06-20 05:15:59', '2021-06-20 05:15:59');

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `name`, `unit`, `description`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'DEEP SEA – Concentrate Mineral', 'Pc', '<div class=\"image-here pb-10\" style=\"padding-bottom: 10px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 15px;\"><img src=\"http://happyrich.live/images/products/3.png\" alt=\"\" style=\"max-width: 100%; height: auto;\"></div><p class=\"dsc-p text-justify\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 15px;\">Deep Sea Minerals are the answer to everyone’s mineral needs because they are 100% hundred percent bio-available. They are what your cells need to maintain and repair themselves. Infants start their lives with close to 100% of the minerals and trace minerals they need because while gestating they simply steal them from their mothers. Later, their reserves go down because of the standard of diets we eat… and soon our mineral reserves are in the dangerously low area. The form of Calcium in Deep Sea Minerals is Calcium Chloride, the form that your body directly uses.</p><p class=\"text\" style=\"margin-right: 0px; margin-bottom: 26px; margin-left: 0px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 15px;\">Minerals — are the key to great health.<br>Immune System Booster Deep Sea Minerals are the answer to everyone’s mineral needs because they are 100% hundred percent bio-available.<br>They are what your cells need to maintain and repair themselves.</p><div class=\"pb-10\" style=\"padding-bottom: 10px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 15px;\">Infants start their lives with close to 100% of the minerals and trace minerals they need because while gestating they simply steal them from their mothers.<br>Later, their reserves go down because of the standard of diets we eat… and soon our mineral reserves are in the dangerously low area. The form of Calcium in Deep Sea Minerals is Calcium Chloride, the form that your body directly uses.<br>All other forms of calcium are first converted by your body to calcium chloride. Deep Sea Minerals are in a natural balance that is very similar to human blood.<br>This balance makes Deep Sea Minerals better than any other form of minerals you can obtain. A lucky accident has given us Deep Sea Trace Minerals as a solution to mineral deficiency.</div>', 'en', '2021-03-31 07:25:51', '2021-03-31 07:25:51'),
(2, 2, 'Nano Sweet', 'Pc', '<div class=\"image-here pb-10\" style=\"padding-bottom: 10px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 15px;\"><img src=\"http://happyrich.live/images/products/4.jpg\" alt=\"\" style=\"max-width: 100%; height: auto;\"></div><p class=\"dsc-p text-justify pb-10\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-bottom: 10px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 15px;\">Nano Sweet utilizes a blend of 7 different nourishing herbs as well as good bacteria to help support the total digestive process. Yes, it works! One of the main ingredients in Metagreen is Moringa. Moringa is a stimulant that encourages Peristalsis, which is a series of contractions throughout the colon. These contractions are necessary to move waste through the digestive system.</p>', 'en', '2021-03-31 08:19:53', '2021-03-31 08:19:53'),
(3, 3, 'Dove Original Beauty Cream Bar White Soap 135gm', 'Pc', '<div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\">Dove Original Beauty Cream Bar </div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\">\r\n </div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\">About this item </div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\">\r\n   LOCK IN MOISTURE: The classic Dove White Beauty Bar nourishes and \r\npampers skin to give you softer, smoother, more radiant looking skin \r\nthan ordinary bar soap.  \r\n   RICH HYDRATION: Help maintain your skin’s natural moisture barrier \r\nand hydration with this beauty bar ideal to use as a facial cleanser and\r\n body wash for sensitive skin.  \r\n   #1 DERMATOLOGIST RECOMMENDED: Formulated with mild cleansers and ¼ \r\nmoisturizing cream, Dove moisturizing beauty bar leaves skin instantly \r\nsoft and smooth with lasting nourishment.  \r\n   GENTLE CLEANSING The luxurious lather of this Dove Beauty Bar won’t \r\ndry skin like ordinary bar soaps. It’s gentle enough to use every day on\r\n both body and face.  \r\n   THOUGHTFULLY MADE: This beauty bar is PETA-certified cruelty-free so \r\nyou can feel good about switching from ordinary soap to Dove Beauty Bar.\r\n  \r\n   CARE AS YOU CLEAN: The cleansing efficacy and care you need, all in \r\none beauty bar product. </div>', 'en', '2021-04-09 06:29:10', '2021-04-09 06:29:10'),
(4, 4, 'Cow Brand Beauty Soap Japan – 100gm', 'Pc', '<p>That\r\n is made in Japan offers simple, natural ingredients for healthy, soft, \r\nand beautiful skin. It is a famous brand of Japanese bar soap that has \r\nbeen loved by all since its production in 1909. Through its continuous \r\nusage, your skin will grow supple, smooth, and gain a youthful glow. It \r\nis a trusted brand of soap that will never fade out. This soap produces a\r\n thick, plush leather. After rinsing off the soap lather from your body,\r\n your skin will feel so refreshed. The scent is fresh jasmine flowers. \r\nNot only is this good for your body, but for your face too! If you are \r\nstruggling with adolescent acne, then washing with this soap is \r\nrecommended. (Be sure to completely moisturize afterward!)</p>', 'en', '2021-04-09 09:35:02', '2021-04-09 09:35:02'),
(5, 5, 'Freyias Weekly Peeling Milk Face Wash', 'Pc', '<div><div class=\"woocommerce-product-details__short-description\">\r\n<p>Wash away dirt and impurities with this rich cleanser. Specially \r\nformulated for Normal to Oily skin, this daily face wash works to \r\ncleanse and leave skin feeling smooth and hydrated. For best results, \r\nuse 3-4 times every week.</p>\r\n<p><strong>Benefits:</strong><br>\r\nGently polishes skin for a clean and smooth feeling.<br>\r\nLeaves the skin moisturized.</p>\r\n<p>Developed in UK, Made in PRC</p>\r\n</div></div>', 'en', '2021-04-09 10:06:21', '2021-04-09 10:13:00'),
(6, 6, 'ZORAS Brightening & Treatment Set', 'Pc', '<p>ZORA’S introduce to you Japan formulated high quality &amp; effective [4\r\n IN 1] Skin Brightening and Treatment Series which is approved by the \r\nMalaysian Health Ministry (KKM), It is made from 100% natural \r\ningredients and rich in the high nutritious extract collected from all \r\naround the world, the primary ingredients of this Brightening and \r\nTreatment Series is Hyaluronic acid, Glutathione, Hydrogenated castor \r\noil, Arbutin, Australian Lime Pearl, Swiss Edelweiss, Canadian Willow, \r\nPaeonia Suffruticosa, Saxifraga Sarmentosa, Caesalpinia Spinosa.  \r\n \r\n&nbsp;ZORA’S Brightening &amp; Treatment Series Set [ 4 in 1 ] Contained:  \r\n \r\n  Brightening Cleanser 50ml \r\n  Brightening Essence 30ml \r\n   Brightening Day Cream 20ml  \r\n  Brightening Night Cream 20ml  \r\n \r\n&nbsp;ZORA’S Skin Care will help you to overcome the below problems: \r\n \r\n  Dark Skin \r\n  Dark Spots  \r\n  Dull Skin  \r\n  Dry Skin \r\n  Too Greasy Skin \r\n  Acne Problem \r\n  Sun Burned Skin \r\n  Uneven Skin Tone \r\n  Damaged Skin due to the use of wrong products.</p>', 'en', '2021-04-09 10:36:28', '2021-04-09 10:36:28'),
(7, 7, 'Pears Pure and Gentle Shower Gel 250ml', 'Pc', '<p>Try the New Pears Pure &amp; Gentle body wash, crafted with 98% pure \r\nglycerin and natural oils. It is a pure and gentle cleanser for your \r\nbody that leaves your skin feeling soft, smooth, and moisturized. Pears \r\nBody wash is mild and gentle and cleanses your skin thoroughly. It is \r\n100% soap-free &amp; dermatologically tested. It helps moisturize your \r\nskin so that it does not dry. With natural oils, it is a gentle cleanser\r\n for your body. The Pure and Gentle Body Wash from Pears is available \r\nright here. Buy it Now!\r\n\r\nBenefits of the Pears Pure &amp; Gentle Body wash:\r\n1) It is 100% Soap Free\r\n2) It is Dermatologically Tested\r\n3) It contains 98% pure glycerin\r\nHow to use the Pears Pure and Gentle Body Wash:\r\n1) Squeeze a small amount of Pears Pure and Gentle Body wash on a wet \r\nloofah.\r\n2) Work into a rich creamy lather.\r\n3) Apply gently over wet skin and then rinse off, for skin that feels \r\nsoft, smooth, and moisturized.\r\nEstablished in 1807, Pears is an iconic brand of Unilever. It has a \r\nheritage of over 200 years in making pure and gentle products. Pears is a\r\n registered Trade Mark.<br></p>', 'en', '2021-04-09 11:31:38', '2021-04-09 11:31:38'),
(8, 8, 'Long Sleeve Polka Dot Shirt', 'Pc', NULL, 'en', '2021-04-26 08:20:08', '2021-04-26 08:20:08'),
(9, 9, 'Long Sleeve Floral Shirt', 'Pc', NULL, 'en', '2021-04-26 08:41:07', '2021-04-26 08:41:07'),
(10, 10, 'Long Sleeve  Shirt Dino Print', 'Pc', NULL, 'en', '2021-04-26 08:54:27', '2021-04-26 08:54:27'),
(11, 11, 'Akash DTH Basic', 'Pc', '<p>With great picture quality, incredibly vivid colors, sharper images and stunning surround sound, AKASH takes TV viewing to greater heights with its wide array of features that ensure an enhanced viewing experience.</p><p><br></p><p>Avail AKASH Basic today and enjoy the free installation.</p><p><br></p><p>Items included: AKASH Basic Set-top-box with a power supply unit (PSU), Remote Control unit (RCU), HDMI Cable, Dish with accessories, Single port LNB, 2 connectors (indoor &amp; outdoor).</p><p><br></p><p>&nbsp;* 10-meter cable will be free with Full Combo Box, BDT 30 /meter will be applicable as cable charge after 10 meter</p>', 'en', '2021-04-28 07:55:34', '2021-04-28 07:55:34'),
(12, 12, 'Akash DTH Regular', 'Pc', '<p>With great picture quality, incredibly vivid colors, sharper images and stunning surround sound, AKASH takes TV viewing to greater heights with its wide array of features that ensure an enhanced viewing experience.</p><p><br></p><p>Avail AKASH Basic today and enjoy the free installation.</p><p><br></p><p>Items included: AKASH Basic Set-top-box with a power supply unit (PSU), Remote Control unit (RCU), HDMI Cable, Dish with accessories, Single port LNB, 2 connectors (indoor &amp; outdoor).</p><p><br></p><p>&nbsp;* 10-meter cable will be free with Full Combo Box, BDT 30 /meter will be applicable as cable charge after 10 meter</p>', 'en', '2021-04-28 08:10:18', '2021-04-28 08:10:18'),
(14, 16, 'This is new arriaval', '12', '<p>gfgf</p>', 'en', '2021-06-20 05:00:38', '2021-06-20 05:00:38'),
(15, 17, 'The Shawshank Redemption', '12', '<p>sa dasf dfasdfds&nbsp;</p>', 'en', '2021-06-20 05:15:59', '2021-06-20 05:15:59');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `viewed` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Manager', '[\"1\",\"2\",\"4\"]', '2018-10-10 04:39:47', '2018-10-10 04:51:37'),
(2, 'Accountant', '[\"2\",\"3\"]', '2018-10-10 04:52:09', '2018-10-10 04:52:09'),
(3, 'Modarator', '[\"3\",\"11\"]', '2021-04-10 17:05:52', '2021-04-10 17:05:52'),
(4, 'Logistics', '[\"3\"]', '2021-04-15 08:05:51', '2021-04-15 08:05:51');

-- --------------------------------------------------------

--
-- Table structure for table `role_translations`
--

CREATE TABLE `role_translations` (
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_translations`
--

INSERT INTO `role_translations` (`id`, `role_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 3, 'Modarator', 'en', '2021-04-10 17:05:52', '2021-04-10 17:05:52'),
(2, 4, 'Logistics', 'en', '2021-04-15 08:05:51', '2021-04-15 08:05:51');

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int(11) NOT NULL,
  `query` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `query`, `count`, `created_at`, `updated_at`) VALUES
(2, 'dcs', 1, '2020-03-08 00:29:09', '2020-03-08 00:29:09'),
(3, 'das', 3, '2020-03-08 00:29:15', '2020-03-08 00:29:50'),
(4, '#ヤンキース', 3, '2021-03-28 01:15:25', '2021-05-25 01:06:40'),
(5, 'moringa', 2, '2021-04-09 16:10:19', '2021-04-09 16:10:33'),
(6, 'aex', 1, '2021-04-09 17:16:32', '2021-04-09 17:16:32'),
(7, 'サイクルパラダイス東京', 3, '2021-04-10 07:14:07', '2021-06-05 16:39:17'),
(8, 'オープンキャンパス', 2, '2021-04-13 15:04:52', '2021-05-14 14:32:02'),
(9, '近藤千尋', 2, '2021-04-13 17:04:28', '2021-05-14 17:11:36'),
(10, 'ガジェット通信', 4, '2021-04-16 00:43:41', '2021-06-10 04:19:01'),
(11, '#ゴルフ', 2, '2021-04-18 23:50:24', '2021-05-18 23:18:13'),
(12, '#デニム', 2, '2021-04-22 18:21:40', '2021-05-22 02:03:40'),
(13, 'アイスホッケー', 2, '2021-04-22 19:46:46', '2021-05-22 02:45:07'),
(14, '流行性耳下腺炎', 2, '2021-04-23 13:46:43', '2021-05-22 16:23:15'),
(15, '#ランドセル', 2, '2021-04-24 16:55:28', '2021-05-23 11:51:10'),
(16, '#ヨウジヤマモト', 2, '2021-04-25 04:06:33', '2021-05-23 20:44:59'),
(17, 'cqBk', 3, '2021-04-25 22:23:14', '2021-04-25 22:23:19'),
(18, '9993', 1, '2021-04-25 22:23:23', '2021-04-25 22:23:23'),
(19, 'cqBk)),\',,,\").', 1, '2021-04-25 22:23:26', '2021-04-25 22:23:26'),
(20, 'cqBk\'YOYNmK<\'\">KjlkRq', 1, '2021-04-25 22:23:29', '2021-04-25 22:23:29'),
(21, 'Phone backcover', 1, '2021-04-26 05:01:03', '2021-04-26 05:01:03'),
(22, 'shirt', 3, '2021-04-27 04:04:51', '2021-05-12 09:56:58'),
(23, 'soap', 1, '2021-04-27 04:09:37', '2021-04-27 04:09:37'),
(24, '#休園中の動物園水族館', 2, '2021-04-30 19:58:30', '2021-05-26 17:27:21'),
(25, '#絵フブキ', 2, '2021-05-02 15:05:37', '2021-05-28 10:02:58'),
(26, 'cửa hàng joli poli', 2, '2021-05-04 22:54:25', '2021-05-30 08:14:43'),
(27, 'サイクルパラダイス全国自転車買取センター', 2, '2021-05-05 00:21:06', '2021-05-30 10:04:50'),
(28, '#すとぷりギャラリー', 1, '2021-05-06 12:05:47', '2021-05-06 12:05:47'),
(29, 'サイクルパラダイス大阪 自転車買取センター｜ロードバイク・ミニベロ・クロスバイク高価買取', 2, '2021-05-07 01:07:50', '2021-06-01 06:21:58'),
(30, '一二三食堂', 2, '2021-05-07 12:22:38', '2021-06-01 17:32:04'),
(31, '体験入学', 1, '2021-05-08 18:48:28', '2021-05-08 18:48:28'),
(32, '水路洗浄', 2, '2021-05-11 23:00:05', '2021-06-05 23:13:13'),
(33, '大根', 2, '2021-05-12 06:16:23', '2021-06-06 06:28:32'),
(34, 'アートサイエンス', 2, '2021-05-12 18:06:56', '2021-06-06 15:41:55'),
(35, '朝ごはん', 1, '2021-05-13 13:38:46', '2021-05-13 13:38:46'),
(36, '#琉球村', 1, '2021-05-14 11:03:50', '2021-05-14 11:03:50'),
(37, 'うどん', 1, '2021-05-17 12:50:16', '2021-05-17 12:50:16'),
(38, 'T shirt', 5, '2021-05-17 13:42:03', '2021-05-17 13:42:08'),
(39, '明祥 小松', 1, '2021-05-18 08:59:52', '2021-05-18 08:59:52'),
(40, 'Wtcha', 1, '2021-05-29 15:32:01', '2021-05-29 15:32:01'),
(41, '#ドジャース', 1, '2021-05-30 22:07:17', '2021-05-30 22:07:17'),
(42, '#キッチングッズ', 1, '2021-05-31 20:28:14', '2021-05-31 20:28:14'),
(43, '#アウトドア', 1, '2021-06-02 15:27:39', '2021-06-02 15:27:39'),
(44, '#マイライフニュース', 1, '2021-06-03 08:42:01', '2021-06-03 08:42:01'),
(45, '#い・らくすと', 1, '2021-06-03 12:16:38', '2021-06-03 12:16:38'),
(46, '#ぽこあーと', 1, '2021-06-10 14:35:05', '2021-06-10 14:35:05'),
(47, '#いぬいらすと', 1, '2021-06-11 15:52:03', '2021-06-11 15:52:03'),
(48, '#高生紳士', 1, '2021-06-12 05:26:56', '2021-06-12 05:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `verification_status` int(1) NOT NULL DEFAULT 0,
  `verification_info` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `cash_on_delivery_status` int(1) NOT NULL DEFAULT 0,
  `admin_to_pay` double(20,2) NOT NULL DEFAULT 0.00,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_acc_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_acc_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_routing_no` int(50) DEFAULT NULL,
  `bank_payment_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `user_id`, `verification_status`, `verification_info`, `cash_on_delivery_status`, `admin_to_pay`, `bank_name`, `bank_acc_name`, `bank_acc_no`, `bank_routing_no`, `bank_payment_status`, `created_at`, `updated_at`) VALUES
(2, 10, 1, NULL, 0, 2800.00, NULL, NULL, NULL, NULL, 0, '2021-03-31 07:03:33', '2021-04-07 16:05:52'),
(3, 11, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, 0, '2021-03-31 07:46:23', '2021-03-31 07:59:16'),
(4, 12, 1, NULL, 0, 720.00, NULL, NULL, NULL, NULL, 0, '2021-03-31 16:58:37', '2021-05-22 06:25:07'),
(5, 13, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, 0, '2021-04-03 07:20:02', '2021-04-03 07:20:02'),
(7, 15, 1, '[{\"type\":\"text\",\"label\":\"Your name\",\"value\":\"Rashed\"},{\"type\":\"text\",\"label\":\"Shop name\",\"value\":\"Niir Online Shop\"},{\"type\":\"text\",\"label\":\"Email\",\"value\":\"rashed.artificial-soft.com\"},{\"type\":\"text\",\"label\":\"License No\",\"value\":\"145454\"},{\"type\":\"text\",\"label\":\"Full Address\",\"value\":\"Karwan Bazar, Dhaka\"},{\"type\":\"text\",\"label\":\"Phone Number\",\"value\":\"01620222616\"},{\"type\":\"file\",\"label\":\"Tax Papers\",\"value\":\"uploads\\/verification_form\\/zUOj8M8EwIEwvEYYcEO69cUlOf4SBPd9B2fLjns2.txt\"}]', 0, 0.00, NULL, NULL, NULL, NULL, 0, '2021-04-10 07:01:17', '2021-04-10 11:47:57'),
(8, 16, 1, NULL, 1, 0.00, NULL, NULL, NULL, NULL, 0, '2021-04-11 06:12:23', '2021-04-11 06:35:29'),
(9, 46, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, 0, '2021-05-29 15:35:32', '2021-05-29 15:35:32'),
(13, 91, 1, '[{\"type\":\"text\",\"label\":\"Your name\",\"value\":\"All time Service\"},{\"type\":\"text\",\"label\":\"Shop name\",\"value\":\"fgf\"},{\"type\":\"text\",\"label\":\"Email\",\"value\":\"raselrana1147@gmail.com\"},{\"type\":\"text\",\"label\":\"License No\",\"value\":\"gfgdfg\"},{\"type\":\"text\",\"label\":\"Full Address\",\"value\":\"Principal Abul Kasehm Road, Mirpur-1, Dhaka\"},{\"type\":\"text\",\"label\":\"Phone Number\",\"value\":\"01964719349\"},{\"type\":\"file\",\"label\":\"Tax Papers\",\"value\":\"uploads\\/verification_form\\/DJHy5XvM9eKKaX2qe8uTa539wQpryOdlVtjO6kJ6.png\"}]', 0, 0.00, NULL, NULL, NULL, NULL, 0, '2021-08-22 06:41:49', '2021-08-22 07:05:57');

-- --------------------------------------------------------

--
-- Table structure for table `seller_withdraw_requests`
--

CREATE TABLE `seller_withdraw_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` double(20,2) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `viewed` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` int(11) NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `revisit` int(11) NOT NULL,
  `sitemap_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `keyword`, `author`, `revisit`, `sitemap_link`, `description`, `created_at`, `updated_at`) VALUES
(1, 'bootstrap,responsive,template,developer', 'Active IT Zone', 11, 'https://www.activeitzone.com', 'Active E-commerce CMS Multi vendor system is such a platform to build a border less marketplace both for physical and digital goods.', '2019-08-08 08:56:11', '2019-08-08 02:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sliders` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pick_up_point_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_cost` double(20,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `user_id`, `name`, `logo`, `sliders`, `address`, `facebook`, `google`, `twitter`, `youtube`, `slug`, `meta_title`, `meta_description`, `pick_up_point_id`, `shipping_cost`, `created_at`, `updated_at`) VALUES
(2, 10, 'Happy Rich Life', '3', '4', '379 East Rampura, Dhaka 1219', 'https://www.facebook.com/HappyRichLifee', NULL, NULL, NULL, 'Happy-Rich-Life-2', 'Happy Rich', 'Making Life Beautiful', '[]', 0.00, '2021-03-31 07:03:33', '2021-03-31 07:12:50'),
(3, 11, 'TA Traders', NULL, NULL, 'Cha 62/A, North Badda, Dhaka-1212', NULL, NULL, NULL, NULL, 'TA-Traders-', NULL, NULL, NULL, 0.00, '2021-03-31 07:46:23', '2021-03-31 07:46:23'),
(4, 12, 'CLG Store', '20', '21', '43/4 Desh Plaza, Dhaka Cantonment, Dhaka 1212', NULL, NULL, NULL, NULL, 'CLG-Store-4', 'CLG Store', 'Cyndicate Like G6', '[]', 0.00, '2021-03-31 16:58:37', '2021-03-31 17:05:01'),
(5, 13, 'wMNlYfjAagoxL', NULL, NULL, 'ymZKTDfijhS', NULL, NULL, NULL, NULL, 'wMNlYfjAagoxL-', NULL, NULL, NULL, 0.00, '2021-04-03 07:20:02', '2021-04-03 07:20:02'),
(6, 15, 'Niir Online Shop', NULL, NULL, 'Karwan Bazar, Dhaka', NULL, NULL, NULL, NULL, 'Niir-Online-Shop-', NULL, NULL, NULL, 0.00, '2021-04-10 07:01:17', '2021-04-10 07:01:17'),
(7, 16, 'DREAM LAND', '56', '57', 'Furtun Sopping Mall, Mouchak, Malibag, Dhaka', NULL, NULL, NULL, NULL, 'DREAM-LAND-7', 'Dream Land', 'Readymade Garments Export Item.', '[]', 0.00, '2021-04-11 06:12:23', '2021-04-11 06:39:03'),
(8, 46, 'Modonali.com', NULL, NULL, 'Rampura kunjbon', NULL, NULL, NULL, 'Hufiru hf', 'Modonali.com-8', 'Gan', 'Put rjfjgufjghfhgn kyug', '[\"1\"]', 0.00, '2021-05-29 15:35:32', '2021-05-29 15:37:06'),
(9, 88, 'dfgdg', NULL, NULL, 'gfgf', NULL, NULL, NULL, NULL, 'dfgdg-', NULL, NULL, NULL, 0.00, '2021-08-22 05:55:39', '2021-08-22 05:55:39'),
(11, 90, 'fggf', NULL, NULL, 'hgfhgfj', NULL, NULL, NULL, NULL, 'fggf-', NULL, NULL, NULL, 0.00, '2021-08-22 06:31:53', '2021-08-22 06:31:53'),
(12, 91, 'gfdghfg', NULL, NULL, 'jhhg', NULL, NULL, NULL, NULL, 'gfdghfg-', NULL, NULL, NULL, 0.00, '2021-08-22 06:41:49', '2021-08-22 06:41:49');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT 1,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `photo`, `published`, `link`, `created_at`, `updated_at`) VALUES
(7, 'uploads/sliders/slider-image.jpg', 1, NULL, '2019-03-12 05:58:05', '2019-03-12 05:58:05'),
(8, 'uploads/sliders/slider-image.jpg', 1, NULL, '2019-03-12 05:58:12', '2019-03-12 05:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 44, 4, '2021-05-27 12:12:27', '2021-05-27 12:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'mdmainulhaque74@gmeli.com', '2021-04-02 00:50:29', '2021-04-02 00:50:29'),
(2, 'whintickbr@gmail.com', '2021-04-03 07:18:33', '2021-04-03 07:18:33'),
(3, 'shukriaakter@gmail.com', '2021-04-06 12:04:35', '2021-04-06 12:04:35'),
(4, 'lekhon28@gmail.com', '2021-04-10 05:38:56', '2021-04-10 05:38:56'),
(5, 'whottilyph@gmail.com', '2021-04-14 16:00:41', '2021-04-14 16:00:41'),
(6, 'salmanrahman164243@gmail.com', '2021-04-24 13:40:40', '2021-04-24 13:40:40'),
(7, 'udZX', '2021-04-25 22:20:24', '2021-04-25 22:20:24'),
(8, 'rafiq01612@gmail.com', '2021-04-28 09:55:35', '2021-04-28 09:55:35'),
(9, 'dominic19731973prec@gmail.com', '2021-04-28 21:15:13', '2021-04-28 21:15:13'),
(10, 'mdrasek123@gmail.com', '2021-04-29 17:57:26', '2021-04-29 17:57:26'),
(11, 'gray.noyon420@gmail.com', '2021-04-29 21:29:25', '2021-04-29 21:29:25'),
(12, 'khadizatul0201@g-mail.com', '2021-04-30 06:11:38', '2021-04-30 06:11:38'),
(13, 'spparvez2304@gmail.com', '2021-05-01 11:16:01', '2021-05-01 11:16:01'),
(14, 'mohammadhasan250962@gmail.com', '2021-05-03 09:44:33', '2021-05-03 09:44:33'),
(15, '093abcd@gmail.com', '2021-05-08 17:53:05', '2021-05-08 17:53:05'),
(16, 'rofiqulislam0719@gmail.com', '2021-05-12 08:58:53', '2021-05-12 08:58:53'),
(17, 'noelljosselynnoell@gmail.com', '2021-05-27 14:18:28', '2021-05-27 14:18:28'),
(18, 'md8423060@gmail.com', '2021-05-29 15:33:06', '2021-05-29 15:33:06'),
(19, 'morrismagnus06@gmail.com', '2021-06-12 03:49:50', '2021-06-12 03:49:50'),
(20, 'mdrahadhossain834@gmail.com', '2021-06-12 04:50:09', '2021-06-12 04:50:09');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tax_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 = Inactive, 1 = Active',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `tax_status`, `created_at`, `updated_at`) VALUES
(3, 'Tax', 1, '2021-03-07 11:45:33', '2021-03-07 11:45:33');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `code` int(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `files` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `viewed` int(1) NOT NULL DEFAULT 0,
  `client_viewed` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `code`, `user_id`, `subject`, `details`, `files`, `status`, `viewed`, `client_viewed`, `created_at`, `updated_at`) VALUES
(1, 10000047, 12, 'How to take nightly backup service?', 'test', NULL, 'solved', 1, 1, '2021-04-28 07:01:44', '2021-04-28 07:01:44');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply` longtext COLLATE utf8_unicode_ci NOT NULL,
  `files` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ticket_replies`
--

INSERT INTO `ticket_replies` (`id`, `ticket_id`, `user_id`, `reply`, `files`, `created_at`, `updated_at`) VALUES
(1, 1, 9, '<p>24 hours service<br></p>', NULL, '2021-04-10 16:54:52', '2021-04-10 16:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_key` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(3, 'en', 'All Category', 'All Category', '2020-11-02 07:40:38', '2020-11-02 07:40:38'),
(4, 'en', 'All', 'All', '2020-11-02 07:40:38', '2020-11-02 07:40:38'),
(5, 'en', 'Flash Sale', 'Flash Sale', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(6, 'en', 'View More', 'View More', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(7, 'en', 'Add to wishlist', 'Add to wishlist', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(8, 'en', 'Add to compare', 'Add to compare', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(9, 'en', 'Add to cart', 'Add to cart', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(10, 'en', 'Club Point', 'Club Point', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(11, 'en', 'Classified Ads', 'Classified Ads', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(13, 'en', 'Used', 'Used', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(14, 'en', 'Top 10 Categories', 'Top 10 Categories', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(15, 'en', 'View All Categories', 'View All Categories', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(16, 'en', 'Top 10 Brands', 'Top 10 Brands', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(17, 'en', 'View All Brands', 'View All Brands', '2020-11-02 07:40:40', '2020-11-02 07:40:40'),
(43, 'en', 'Terms & conditions', 'Terms & conditions', '2020-11-02 07:40:41', '2020-11-02 07:40:41'),
(51, 'en', 'Best Selling', 'Best Selling', '2020-11-02 07:40:42', '2020-11-02 07:40:42'),
(53, 'en', 'Top 20', 'Top 20', '2020-11-02 07:40:42', '2020-11-02 07:40:42'),
(55, 'en', 'Featured Products', 'Featured Products', '2020-11-02 07:40:42', '2020-11-02 07:40:42'),
(56, 'en', 'Best Sellers', 'Best Sellers', '2020-11-02 07:40:43', '2020-11-02 07:40:43'),
(57, 'en', 'Visit Store', 'Visit Store', '2020-11-02 07:40:43', '2020-11-02 07:40:43'),
(58, 'en', 'Popular Suggestions', 'Popular Suggestions', '2020-11-02 07:46:59', '2020-11-02 07:46:59'),
(59, 'en', 'Category Suggestions', 'Category Suggestions', '2020-11-02 07:46:59', '2020-11-02 07:46:59'),
(62, 'en', 'Automobile & Motorcycle', 'Automobile & Motorcycle', '2020-11-02 07:47:01', '2020-11-02 07:47:01'),
(63, 'en', 'Price range', 'Price range', '2020-11-02 07:47:01', '2020-11-02 07:47:01'),
(64, 'en', 'Filter by color', 'Filter by color', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(65, 'en', 'Home', 'Home', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(67, 'en', 'Newest', 'Newest', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(68, 'en', 'Oldest', 'Oldest', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(69, 'en', 'Price low to high', 'Price low to high', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(70, 'en', 'Price high to low', 'Price high to low', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(71, 'en', 'Brands', 'Brands', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(72, 'en', 'All Brands', 'All Brands', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(74, 'en', 'All Sellers', 'All Sellers', '2020-11-02 07:47:02', '2020-11-02 07:47:02'),
(78, 'en', 'Inhouse product', 'Inhouse product', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(79, 'en', 'Message Seller', 'Message Seller', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(80, 'en', 'Price', 'Price', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(81, 'en', 'Discount Price', 'Discount Price', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(82, 'en', 'Color', 'Color', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(83, 'en', 'Quantity', 'Quantity', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(84, 'en', 'available', 'available', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(85, 'en', 'Total Price', 'Total Price', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(86, 'en', 'Out of Stock', 'Out of Stock', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(87, 'en', 'Refund', 'Refund', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(88, 'en', 'Share', 'Share', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(89, 'en', 'Sold By', 'Sold By', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(90, 'en', 'customer reviews', 'customer reviews', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(91, 'en', 'Top Selling Products', 'Top Selling Products', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(92, 'en', 'Description', 'Description', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(93, 'en', 'Video', 'Video', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(94, 'en', 'Reviews', 'Reviews', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(95, 'en', 'Download', 'Download', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(96, 'en', 'There have been no reviews for this product yet.', 'There have been no reviews for this product yet.', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(97, 'en', 'Related products', 'Related products', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(98, 'en', 'Any query about this product', 'Any query about this product', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(99, 'en', 'Product Name', 'Product Name', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(100, 'en', 'Your Question', 'Your Question', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(101, 'en', 'Send', 'Send', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(103, 'en', 'Use country code before number', 'Use country code before number', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(105, 'en', 'Remember Me', 'Remember Me', '2020-11-02 08:18:03', '2020-11-02 08:18:03'),
(107, 'en', 'Dont have an account?', 'Dont have an account?', '2020-11-02 08:18:04', '2020-11-02 08:18:04'),
(108, 'en', 'Register Now', 'Register Now', '2020-11-02 08:18:04', '2020-11-02 08:18:04'),
(109, 'en', 'Or Login With', 'Or Login With', '2020-11-02 08:18:04', '2020-11-02 08:18:04'),
(110, 'en', 'oops..', 'oops..', '2020-11-02 10:29:04', '2020-11-02 10:29:04'),
(111, 'en', 'This item is out of stock!', 'This item is out of stock!', '2020-11-02 10:29:04', '2020-11-02 10:29:04'),
(112, 'en', 'Back to shopping', 'Back to shopping', '2020-11-02 10:29:04', '2020-11-02 10:29:04'),
(113, 'en', 'Login to your account.', 'Login to your account.', '2020-11-02 11:27:41', '2020-11-02 11:27:41'),
(115, 'en', 'Purchase History', 'Purchase History', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(116, 'en', 'New', 'New', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(117, 'en', 'Downloads', 'Downloads', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(118, 'en', 'Sent Refund Request', 'Sent Refund Request', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(119, 'en', 'Product Bulk Upload', 'Product Bulk Upload', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(123, 'en', 'Orders', 'Orders', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(124, 'en', 'Recieved Refund Request', 'Recieved Refund Request', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(126, 'en', 'Shop Setting', 'Shop Setting', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(127, 'en', 'Payment History', 'Payment History', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(128, 'en', 'Money Withdraw', 'Money Withdraw', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(129, 'en', 'Conversations', 'Conversations', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(130, 'en', 'My Wallet', 'My Wallet', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(131, 'en', 'Earning Points', 'Earning Points', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(132, 'en', 'Support Ticket', 'Support Ticket', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(133, 'en', 'Manage Profile', 'Manage Profile', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(134, 'en', 'Sold Amount', 'Sold Amount', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(135, 'en', 'Your sold amount (current month)', 'Your sold amount (current month)', '2020-11-02 11:27:53', '2020-11-02 11:27:53'),
(136, 'en', 'Total Sold', 'Total Sold', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(137, 'en', 'Last Month Sold', 'Last Month Sold', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(138, 'en', 'Total sale', 'Total sale', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(139, 'en', 'Total earnings', 'Total earnings', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(140, 'en', 'Successful orders', 'Successful orders', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(141, 'en', 'Total orders', 'Total orders', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(142, 'en', 'Pending orders', 'Pending orders', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(143, 'en', 'Cancelled orders', 'Cancelled orders', '2020-11-02 11:27:54', '2020-11-02 11:27:54'),
(145, 'en', 'Product', 'Product', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(147, 'en', 'Purchased Package', 'Purchased Package', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(148, 'en', 'Package Not Found', 'Package Not Found', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(149, 'en', 'Upgrade Package', 'Upgrade Package', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(150, 'en', 'Shop', 'Shop', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(151, 'en', 'Manage & organize your shop', 'Manage & organize your shop', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(152, 'en', 'Go to setting', 'Go to setting', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(153, 'en', 'Payment', 'Payment', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(154, 'en', 'Configure your payment method', 'Configure your payment method', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(156, 'en', 'My Panel', 'My Panel', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(158, 'en', 'Item has been added to wishlist', 'Item has been added to wishlist', '2020-11-02 11:27:55', '2020-11-02 11:27:55'),
(159, 'en', 'My Points', 'My Points', '2020-11-02 11:28:15', '2020-11-02 11:28:15'),
(160, 'en', ' Points', ' Points', '2020-11-02 11:28:15', '2020-11-02 11:28:15'),
(161, 'en', 'Wallet Money', 'Wallet Money', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(162, 'en', 'Exchange Rate', 'Exchange Rate', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(163, 'en', 'Point Earning history', 'Point Earning history', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(164, 'en', 'Date', 'Date', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(165, 'en', 'Points', 'Points', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(166, 'en', 'Converted', 'Converted', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(167, 'en', 'Action', 'Action', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(168, 'en', 'No history found.', 'No history found.', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(169, 'en', 'Convert has been done successfully Check your Wallets', 'Convert has been done successfully Check your Wallets', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(170, 'en', 'Something went wrong', 'Something went wrong', '2020-11-02 11:28:16', '2020-11-02 11:28:16'),
(171, 'en', 'Remaining Uploads', 'Remaining Uploads', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(172, 'en', 'No Package Found', 'No Package Found', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(173, 'en', 'Search product', 'Search product', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(174, 'en', 'Name', 'Name', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(176, 'en', 'Current Qty', 'Current Qty', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(177, 'en', 'Base Price', 'Base Price', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(178, 'en', 'Published', 'Published', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(179, 'en', 'Featured', 'Featured', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(180, 'en', 'Options', 'Options', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(181, 'en', 'Edit', 'Edit', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(182, 'en', 'Duplicate', 'Duplicate', '2020-11-02 11:37:13', '2020-11-02 11:37:13'),
(184, 'en', '1. Download the skeleton file and fill it with data.', '1. Download the skeleton file and fill it with data.', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(185, 'en', '2. You can download the example file to understand how the data must be filled.', '2. You can download the example file to understand how the data must be filled.', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(186, 'en', '3. Once you have downloaded and filled the skeleton file, upload it in the form below and submit.', '3. Once you have downloaded and filled the skeleton file, upload it in the form below and submit.', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(187, 'en', '4. After uploading products you need to edit them and set products images and choices.', '4. After uploading products you need to edit them and set products images and choices.', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(188, 'en', 'Download CSV', 'Download CSV', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(189, 'en', '1. Category,Sub category,Sub Sub category and Brand should be in numerical ids.', '1. Category,Sub category,Sub Sub category and Brand should be in numerical ids.', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(190, 'en', '2. You can download the pdf to get Category,Sub category,Sub Sub category and Brand id.', '2. You can download the pdf to get Category,Sub category,Sub Sub category and Brand id.', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(191, 'en', 'Download Category', 'Download Category', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(192, 'en', 'Download Sub category', 'Download Sub category', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(193, 'en', 'Download Sub Sub category', 'Download Sub Sub category', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(194, 'en', 'Download Brand', 'Download Brand', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(195, 'en', 'Upload CSV File', 'Upload CSV File', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(196, 'en', 'CSV', 'CSV', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(197, 'en', 'Choose CSV File', 'Choose CSV File', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(198, 'en', 'Upload', 'Upload', '2020-11-02 11:37:20', '2020-11-02 11:37:20'),
(199, 'en', 'Add New Digital Product', 'Add New Digital Product', '2020-11-02 11:37:25', '2020-11-02 11:37:25'),
(200, 'en', 'Available Status', 'Available Status', '2020-11-02 11:37:29', '2020-11-02 11:37:29'),
(201, 'en', 'Admin Status', 'Admin Status', '2020-11-02 11:37:29', '2020-11-02 11:37:29'),
(202, 'en', 'Pending Balance', 'Pending Balance', '2020-11-02 11:38:07', '2020-11-02 11:38:07'),
(203, 'en', 'Send Withdraw Request', 'Send Withdraw Request', '2020-11-02 11:38:07', '2020-11-02 11:38:07'),
(204, 'en', 'Withdraw Request history', 'Withdraw Request history', '2020-11-02 11:38:07', '2020-11-02 11:38:07'),
(205, 'en', 'Amount', 'Amount', '2020-11-02 11:38:07', '2020-11-02 11:38:07'),
(206, 'en', 'Status', 'Status', '2020-11-02 11:38:07', '2020-11-02 11:38:07'),
(207, 'en', 'Message', 'Message', '2020-11-02 11:38:07', '2020-11-02 11:38:07'),
(208, 'en', 'Send A Withdraw Request', 'Send A Withdraw Request', '2020-11-02 11:38:07', '2020-11-02 11:38:07'),
(209, 'en', 'Basic Info', 'Basic Info', '2020-11-02 11:38:13', '2020-11-02 11:38:13'),
(211, 'en', 'Your Phone', 'Your Phone', '2020-11-02 11:38:13', '2020-11-02 11:38:13'),
(212, 'en', 'Photo', 'Photo', '2020-11-02 11:38:13', '2020-11-02 11:38:13'),
(213, 'en', 'Browse', 'Browse', '2020-11-02 11:38:13', '2020-11-02 11:38:13'),
(215, 'en', 'Your Password', 'Your Password', '2020-11-02 11:38:13', '2020-11-02 11:38:13'),
(216, 'en', 'New Password', 'New Password', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(217, 'en', 'Confirm Password', 'Confirm Password', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(218, 'en', 'Add New Address', 'Add New Address', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(219, 'en', 'Payment Setting', 'Payment Setting', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(220, 'en', 'Cash Payment', 'Cash Payment', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(221, 'en', 'Bank Payment', 'Bank Payment', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(222, 'en', 'Bank Name', 'Bank Name', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(223, 'en', 'Bank Account Name', 'Bank Account Name', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(224, 'en', 'Bank Account Number', 'Bank Account Number', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(225, 'en', 'Bank Routing Number', 'Bank Routing Number', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(226, 'en', 'Update Profile', 'Update Profile', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(227, 'en', 'Change your email', 'Change your email', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(228, 'en', 'Your Email', 'Your Email', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(229, 'en', 'Sending Email...', 'Sending Email...', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(230, 'en', 'Verify', 'Verify', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(231, 'en', 'Update Email', 'Update Email', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(232, 'en', 'New Address', 'New Address', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(233, 'en', 'Your Address', 'Your Address', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(234, 'en', 'Country', 'Country', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(235, 'en', 'Select your country', 'Select your country', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(236, 'en', 'City', 'City', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(237, 'en', 'Your City', 'Your City', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(239, 'en', 'Your Postal Code', 'Your Postal Code', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(240, 'en', '+880', '+880', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(241, 'en', 'Save', 'Save', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(242, 'en', 'Received Refund Request', 'Received Refund Request', '2020-11-02 11:56:20', '2020-11-02 11:56:20'),
(244, 'en', 'Delete Confirmation', 'Delete Confirmation', '2020-11-02 11:56:20', '2020-11-02 11:56:20'),
(245, 'en', 'Are you sure to delete this?', 'Are you sure to delete this?', '2020-11-02 11:56:21', '2020-11-02 11:56:21'),
(246, 'en', 'Premium Packages for Sellers', 'Premium Packages for Sellers', '2020-11-02 11:57:36', '2020-11-02 11:57:36'),
(247, 'en', 'Product Upload', 'Product Upload', '2020-11-02 11:57:36', '2020-11-02 11:57:36'),
(248, 'en', 'Digital Product Upload', 'Digital Product Upload', '2020-11-02 11:57:36', '2020-11-02 11:57:36'),
(250, 'en', 'Purchase Package', 'Purchase Package', '2020-11-02 11:57:36', '2020-11-02 11:57:36'),
(251, 'en', 'Select Payment Type', 'Select Payment Type', '2020-11-02 11:57:36', '2020-11-02 11:57:36'),
(252, 'en', 'Payment Type', 'Payment Type', '2020-11-02 11:57:36', '2020-11-02 11:57:36'),
(253, 'en', 'Select One', 'Select One', '2020-11-02 11:57:36', '2020-11-02 11:57:36'),
(254, 'en', 'Online payment', 'Online payment', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(255, 'en', 'Offline payment', 'Offline payment', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(256, 'en', 'Purchase Your Package', 'Purchase Your Package', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(258, 'en', 'Paypal', 'Paypal', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(259, 'en', 'Stripe', 'Stripe', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(260, 'en', 'sslcommerz', 'sslcommerz', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(265, 'en', 'Confirm', 'Confirm', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(266, 'en', 'Offline Package Payment', 'Offline Package Payment', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(267, 'en', 'Transaction ID', 'Transaction ID', '2020-11-02 12:30:12', '2020-11-02 12:30:12'),
(268, 'en', 'Choose image', 'Choose image', '2020-11-02 12:30:12', '2020-11-02 12:30:12'),
(269, 'en', 'Code', 'Code', '2020-11-02 12:42:00', '2020-11-02 12:42:00'),
(270, 'en', 'Delivery Status', 'Delivery Status', '2020-11-02 12:42:00', '2020-11-02 12:42:00'),
(271, 'en', 'Payment Status', 'Payment Status', '2020-11-02 12:42:00', '2020-11-02 12:42:00'),
(272, 'en', 'Paid', 'Paid', '2020-11-02 12:42:00', '2020-11-02 12:42:00'),
(273, 'en', 'Order Details', 'Order Details', '2020-11-02 12:42:00', '2020-11-02 12:42:00'),
(274, 'en', 'Download Invoice', 'Download Invoice', '2020-11-02 12:42:00', '2020-11-02 12:42:00'),
(275, 'en', 'Unpaid', 'Unpaid', '2020-11-02 12:42:00', '2020-11-02 12:42:00'),
(277, 'en', 'Order placed', 'Order placed', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(278, 'en', 'Confirmed', 'Confirmed', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(279, 'en', 'On delivery', 'On delivery', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(280, 'en', 'Delivered', 'Delivered', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(281, 'en', 'Order Summary', 'Order Summary', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(282, 'en', 'Order Code', 'Order Code', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(283, 'en', 'Customer', 'Customer', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(287, 'en', 'Total order amount', 'Total order amount', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(288, 'en', 'Shipping metdod', 'Shipping metdod', '2020-11-02 12:43:59', '2020-11-02 12:43:59'),
(289, 'en', 'Flat shipping rate', 'Flat shipping rate', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(290, 'en', 'Payment metdod', 'Payment metdod', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(291, 'en', 'Variation', 'Variation', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(292, 'en', 'Delivery Type', 'Delivery Type', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(293, 'en', 'Home Delivery', 'Home Delivery', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(294, 'en', 'Order Ammount', 'Order Ammount', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(295, 'en', 'Subtotal', 'Subtotal', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(296, 'en', 'Shipping', 'Shipping', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(298, 'en', 'Coupon Discount', 'Coupon Discount', '2020-11-02 12:44:00', '2020-11-02 12:44:00'),
(300, 'en', 'N/A', 'N/A', '2020-11-02 12:44:20', '2020-11-02 12:44:20'),
(301, 'en', 'In stock', 'In stock', '2020-11-02 12:54:52', '2020-11-02 12:54:52'),
(302, 'en', 'Buy Now', 'Buy Now', '2020-11-02 12:54:52', '2020-11-02 12:54:52'),
(303, 'en', 'Item added to your cart!', 'Item added to your cart!', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(304, 'en', 'Proceed to Checkout', 'Proceed to Checkout', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(305, 'en', 'Cart Items', 'Cart Items', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(306, 'en', '1. My Cart', '1. My Cart', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(307, 'en', 'View cart', 'View cart', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(308, 'en', '2. Shipping info', '2. Shipping info', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(309, 'en', 'Checkout', 'Checkout', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(310, 'en', '3. Delivery info', '3. Delivery info', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(311, 'en', '4. Payment', '4. Payment', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(312, 'en', '5. Confirmation', '5. Confirmation', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(313, 'en', 'Remove', 'Remove', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(314, 'en', 'Return to shop', 'Return to shop', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(315, 'en', 'Continue to Shipping', 'Continue to Shipping', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(316, 'en', 'Or', 'Or', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(317, 'en', 'Guest Checkout', 'Guest Checkout', '2020-11-02 12:56:46', '2020-11-02 12:56:46'),
(318, 'en', 'Continue to Delivery Info', 'Continue to Delivery Info', '2020-11-02 12:57:44', '2020-11-02 12:57:44'),
(319, 'en', 'Postal Code', 'Postal Code', '2020-11-02 13:01:01', '2020-11-02 13:01:01'),
(320, 'en', 'Choose Delivery Type', 'Choose Delivery Type', '2020-11-02 13:01:04', '2020-11-02 13:01:04'),
(321, 'en', 'Local Pickup', 'Local Pickup', '2020-11-02 13:01:04', '2020-11-02 13:01:04'),
(322, 'en', 'Select your nearest pickup point', 'Select your nearest pickup point', '2020-11-02 13:01:04', '2020-11-02 13:01:04'),
(323, 'en', 'Continue to Payment', 'Continue to Payment', '2020-11-02 13:01:04', '2020-11-02 13:01:04'),
(324, 'en', 'Select a payment option', 'Select a payment option', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(325, 'en', 'Razorpay', 'Razorpay', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(326, 'en', 'Paystack', 'Paystack', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(327, 'en', 'VoguePay', 'VoguePay', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(328, 'en', 'payhere', 'payhere', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(329, 'en', 'ngenius', 'ngenius', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(330, 'en', 'Paytm', 'Paytm', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(331, 'en', 'Cash on Delivery', 'Cash on Delivery', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(332, 'en', 'Your wallet balance :', 'Your wallet balance :', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(333, 'en', 'Insufficient balance', 'Insufficient balance', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(334, 'en', 'I agree to the', 'I agree to the', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(338, 'en', 'Complete Order', 'Complete Order', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(339, 'en', 'Summary', 'Summary', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(340, 'en', 'Items', 'Items', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(341, 'en', 'Total Club point', 'Total Club point', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(342, 'en', 'Total Shipping', 'Total Shipping', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(343, 'en', 'Have coupon code? Enter here', 'Have coupon code? Enter here', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(344, 'en', 'Apply', 'Apply', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(345, 'en', 'You need to agree with our policies', 'You need to agree with our policies', '2020-11-02 13:01:14', '2020-11-02 13:01:14'),
(346, 'en', 'Forgot password', 'Forgot password', '2020-11-02 13:01:25', '2020-11-02 13:01:25'),
(469, 'en', 'SEO Setting', 'SEO Setting', '2020-11-02 13:01:33', '2020-11-02 13:01:33'),
(474, 'en', 'System Update', 'System Update', '2020-11-02 13:01:34', '2020-11-02 13:01:34'),
(480, 'en', 'Add New Payment Method', 'Add New Payment Method', '2020-11-02 13:01:38', '2020-11-02 13:01:38'),
(481, 'en', 'Manual Payment Method', 'Manual Payment Method', '2020-11-02 13:01:38', '2020-11-02 13:01:38'),
(482, 'en', 'Heading', 'Heading', '2020-11-02 13:01:38', '2020-11-02 13:01:38'),
(483, 'en', 'Logo', 'Logo', '2020-11-02 13:01:38', '2020-11-02 13:01:38'),
(484, 'en', 'Manual Payment Information', 'Manual Payment Information', '2020-11-02 13:01:42', '2020-11-02 13:01:42'),
(485, 'en', 'Type', 'Type', '2020-11-02 13:01:42', '2020-11-02 13:01:42'),
(486, 'en', 'Custom Payment', 'Custom Payment', '2020-11-02 13:01:42', '2020-11-02 13:01:42'),
(487, 'en', 'Check Payment', 'Check Payment', '2020-11-02 13:01:42', '2020-11-02 13:01:42'),
(488, 'en', 'Checkout Thumbnail', 'Checkout Thumbnail', '2020-11-02 13:01:42', '2020-11-02 13:01:42'),
(489, 'en', 'Payment Instruction', 'Payment Instruction', '2020-11-02 13:01:42', '2020-11-02 13:01:42'),
(490, 'en', 'Bank Information', 'Bank Information', '2020-11-02 13:01:42', '2020-11-02 13:01:42'),
(491, 'en', 'Select File', 'Select File', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(492, 'en', 'Upload New', 'Upload New', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(493, 'en', 'Sort by newest', 'Sort by newest', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(494, 'en', 'Sort by oldest', 'Sort by oldest', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(495, 'en', 'Sort by smallest', 'Sort by smallest', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(496, 'en', 'Sort by largest', 'Sort by largest', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(497, 'en', 'Selected Only', 'Selected Only', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(498, 'en', 'No files found', 'No files found', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(499, 'en', '0 File selected', '0 File selected', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(500, 'en', 'Clear', 'Clear', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(501, 'en', 'Prev', 'Prev', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(502, 'en', 'Next', 'Next', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(503, 'en', 'Add Files', 'Add Files', '2020-11-02 13:01:53', '2020-11-02 13:01:53'),
(504, 'en', 'Method has been inserted successfully', 'Method has been inserted successfully', '2020-11-02 13:02:03', '2020-11-02 13:02:03'),
(506, 'en', 'Order Date', 'Order Date', '2020-11-02 13:02:42', '2020-11-02 13:02:42'),
(507, 'en', 'Bill to', 'Bill to', '2020-11-02 13:02:42', '2020-11-02 13:02:42'),
(510, 'en', 'Sub Total', 'Sub Total', '2020-11-02 13:02:42', '2020-11-02 13:02:42'),
(512, 'en', 'Total Tax', 'Total Tax', '2020-11-02 13:02:42', '2020-11-02 13:02:42'),
(513, 'en', 'Grand Total', 'Grand Total', '2020-11-02 13:02:42', '2020-11-02 13:02:42'),
(514, 'en', 'Your order has been placed successfully. Please submit payment information from purchase history', 'Your order has been placed successfully. Please submit payment information from purchase history', '2020-11-02 13:02:47', '2020-11-02 13:02:47'),
(515, 'en', 'Thank You for Your Order!', 'Thank You for Your Order!', '2020-11-02 13:02:48', '2020-11-02 13:02:48'),
(516, 'en', 'Order Code:', 'Order Code:', '2020-11-02 13:02:48', '2020-11-02 13:02:48'),
(517, 'en', 'A copy or your order summary has been sent to', 'A copy or your order summary has been sent to', '2020-11-02 13:02:48', '2020-11-02 13:02:48'),
(518, 'en', 'Make Payment', 'Make Payment', '2020-11-02 13:03:26', '2020-11-02 13:03:26'),
(519, 'en', 'Payment screenshot', 'Payment screenshot', '2020-11-02 13:03:29', '2020-11-02 13:03:29'),
(520, 'en', 'Paypal Credential', 'Paypal Credential', '2020-11-02 13:12:20', '2020-11-02 13:12:20'),
(522, 'en', 'Paypal Client ID', 'Paypal Client ID', '2020-11-02 13:12:20', '2020-11-02 13:12:20'),
(523, 'en', 'Paypal Client Secret', 'Paypal Client Secret', '2020-11-02 13:12:20', '2020-11-02 13:12:20'),
(524, 'en', 'Paypal Sandbox Mode', 'Paypal Sandbox Mode', '2020-11-02 13:12:20', '2020-11-02 13:12:20'),
(525, 'en', 'Sslcommerz Credential', 'Sslcommerz Credential', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(526, 'en', 'Sslcz Store Id', 'Sslcz Store Id', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(527, 'en', 'Sslcz store password', 'Sslcz store password', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(528, 'en', 'Sslcommerz Sandbox Mode', 'Sslcommerz Sandbox Mode', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(529, 'en', 'Stripe Credential', 'Stripe Credential', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(531, 'en', 'STRIPE KEY', 'STRIPE KEY', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(533, 'en', 'STRIPE SECRET', 'STRIPE SECRET', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(534, 'en', 'RazorPay Credential', 'RazorPay Credential', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(535, 'en', 'RAZOR KEY', 'RAZOR KEY', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(536, 'en', 'RAZOR SECRET', 'RAZOR SECRET', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(537, 'en', 'Instamojo Credential', 'Instamojo Credential', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(538, 'en', 'API KEY', 'API KEY', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(539, 'en', 'IM API KEY', 'IM API KEY', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(540, 'en', 'AUTH TOKEN', 'AUTH TOKEN', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(541, 'en', 'IM AUTH TOKEN', 'IM AUTH TOKEN', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(542, 'en', 'Instamojo Sandbox Mode', 'Instamojo Sandbox Mode', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(543, 'en', 'PayStack Credential', 'PayStack Credential', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(544, 'en', 'PUBLIC KEY', 'PUBLIC KEY', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(545, 'en', 'SECRET KEY', 'SECRET KEY', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(546, 'en', 'MERCHANT EMAIL', 'MERCHANT EMAIL', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(547, 'en', 'VoguePay Credential', 'VoguePay Credential', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(548, 'en', 'MERCHANT ID', 'MERCHANT ID', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(549, 'en', 'Sandbox Mode', 'Sandbox Mode', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(550, 'en', 'Payhere Credential', 'Payhere Credential', '2020-11-02 13:12:21', '2020-11-02 13:12:21'),
(551, 'en', 'PAYHERE MERCHANT ID', 'PAYHERE MERCHANT ID', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(552, 'en', 'PAYHERE SECRET', 'PAYHERE SECRET', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(553, 'en', 'PAYHERE CURRENCY', 'PAYHERE CURRENCY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(554, 'en', 'Payhere Sandbox Mode', 'Payhere Sandbox Mode', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(555, 'en', 'Ngenius Credential', 'Ngenius Credential', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(556, 'en', 'NGENIUS OUTLET ID', 'NGENIUS OUTLET ID', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(557, 'en', 'NGENIUS API KEY', 'NGENIUS API KEY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(558, 'en', 'NGENIUS CURRENCY', 'NGENIUS CURRENCY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(559, 'en', 'Mpesa Credential', 'Mpesa Credential', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(560, 'en', 'MPESA CONSUMER KEY', 'MPESA CONSUMER KEY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(561, 'en', 'MPESA_CONSUMER_KEY', 'MPESA_CONSUMER_KEY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(562, 'en', 'MPESA CONSUMER SECRET', 'MPESA CONSUMER SECRET', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(563, 'en', 'MPESA_CONSUMER_SECRET', 'MPESA_CONSUMER_SECRET', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(564, 'en', 'MPESA SHORT CODE', 'MPESA SHORT CODE', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(565, 'en', 'MPESA_SHORT_CODE', 'MPESA_SHORT_CODE', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(566, 'en', 'MPESA SANDBOX ACTIVATION', 'MPESA SANDBOX ACTIVATION', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(567, 'en', 'Flutterwave Credential', 'Flutterwave Credential', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(568, 'en', 'RAVE_PUBLIC_KEY', 'RAVE_PUBLIC_KEY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(569, 'en', 'RAVE_SECRET_KEY', 'RAVE_SECRET_KEY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(570, 'en', 'RAVE_TITLE', 'RAVE_TITLE', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(571, 'en', 'STAGIN ACTIVATION', 'STAGIN ACTIVATION', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(573, 'en', 'All Product', 'All Product', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(574, 'en', 'Sort By', 'Sort By', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(575, 'en', 'Rating (High > Low)', 'Rating (High > Low)', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(576, 'en', 'Rating (Low > High)', 'Rating (Low > High)', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(577, 'en', 'Num of Sale (High > Low)', 'Num of Sale (High > Low)', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(578, 'en', 'Num of Sale (Low > High)', 'Num of Sale (Low > High)', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(579, 'en', 'Base Price (High > Low)', 'Base Price (High > Low)', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(580, 'en', 'Base Price (Low > High)', 'Base Price (Low > High)', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(581, 'en', 'Type & Enter', 'Type & Enter', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(582, 'en', 'Added By', 'Added By', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(583, 'en', 'Num of Sale', 'Num of Sale', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(584, 'en', 'Total Stock', 'Total Stock', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(585, 'en', 'Todays Deal', 'Todays Deal', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(586, 'en', 'Rating', 'Rating', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(587, 'en', 'times', 'times', '2020-11-02 13:15:01', '2020-11-02 13:15:01'),
(588, 'en', 'Add Nerw Product', 'Add Nerw Product', '2020-11-02 13:15:02', '2020-11-02 13:15:02'),
(589, 'en', 'Product Information', 'Product Information', '2020-11-02 13:15:02', '2020-11-02 13:15:02'),
(590, 'en', 'Unit', 'Unit', '2020-11-02 13:15:02', '2020-11-02 13:15:02'),
(591, 'en', 'Unit (e.g. KG, Pc etc)', 'Unit (e.g. KG, Pc etc)', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(592, 'en', 'Minimum Qty', 'Minimum Qty', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(593, 'en', 'Tags', 'Tags', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(594, 'en', 'Type and hit enter to add a tag', 'Type and hit enter to add a tag', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(595, 'en', 'Barcode', 'Barcode', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(596, 'en', 'Refundable', 'Refundable', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(597, 'en', 'Product Images', 'Product Images', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(598, 'en', 'Gallery Images', 'Gallery Images', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(599, 'en', 'Todays Deal updated successfully', 'Todays Deal updated successfully', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(600, 'en', 'Published products updated successfully', 'Published products updated successfully', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(601, 'en', 'Thumbnail Image', 'Thumbnail Image', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(602, 'en', 'Featured products updated successfully', 'Featured products updated successfully', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(603, 'en', 'Product Videos', 'Product Videos', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(604, 'en', 'Video Provider', 'Video Provider', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(605, 'en', 'Youtube', 'Youtube', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(606, 'en', 'Dailymotion', 'Dailymotion', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(607, 'en', 'Vimeo', 'Vimeo', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(608, 'en', 'Video Link', 'Video Link', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(609, 'en', 'Product Variation', 'Product Variation', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(610, 'en', 'Colors', 'Colors', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(611, 'en', 'Attributes', 'Attributes', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(612, 'en', 'Choose Attributes', 'Choose Attributes', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(613, 'en', 'Choose the attributes of this product and then input values of each attribute', 'Choose the attributes of this product and then input values of each attribute', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(614, 'en', 'Product price + stock', 'Product price + stock', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(616, 'en', 'Unit price', 'Unit price', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(617, 'en', 'Purchase price', 'Purchase price', '2020-11-02 13:15:03', '2020-11-02 13:15:03'),
(618, 'en', 'Flat', 'Flat', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(619, 'en', 'Percent', 'Percent', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(620, 'en', 'Discount', 'Discount', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(621, 'en', 'Product Description', 'Product Description', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(622, 'en', 'Product Shipping Cost', 'Product Shipping Cost', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(623, 'en', 'Free Shipping', 'Free Shipping', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(624, 'en', 'Flat Rate', 'Flat Rate', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(625, 'en', 'Shipping cost', 'Shipping cost', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(626, 'en', 'PDF Specification', 'PDF Specification', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(627, 'en', 'SEO Meta Tags', 'SEO Meta Tags', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(628, 'en', 'Meta Title', 'Meta Title', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(629, 'en', 'Meta Image', 'Meta Image', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(630, 'en', 'Choice Title', 'Choice Title', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(631, 'en', 'Enter choice values', 'Enter choice values', '2020-11-02 13:15:04', '2020-11-02 13:15:04'),
(632, 'en', 'All categories', 'All categories', '2020-11-03 07:12:19', '2020-11-03 07:12:19'),
(633, 'en', 'Add New category', 'Add New category', '2020-11-03 07:12:19', '2020-11-03 07:12:19'),
(634, 'en', 'Type name & Enter', 'Type name & Enter', '2020-11-03 07:12:19', '2020-11-03 07:12:19'),
(635, 'en', 'Banner', 'Banner', '2020-11-03 07:12:19', '2020-11-03 07:12:19'),
(637, 'en', 'Commission', 'Commission', '2020-11-03 07:12:19', '2020-11-03 07:12:19'),
(638, 'en', 'icon', 'icon', '2020-11-03 07:12:19', '2020-11-03 07:12:19'),
(639, 'en', 'Featured categories updated successfully', 'Featured categories updated successfully', '2020-11-03 07:12:20', '2020-11-03 07:12:20'),
(640, 'en', 'Hot', 'Hot', '2020-11-03 07:13:12', '2020-11-03 07:13:12'),
(641, 'en', 'Filter by Payment Status', 'Filter by Payment Status', '2020-11-03 07:15:15', '2020-11-03 07:15:15'),
(642, 'en', 'Un-Paid', 'Un-Paid', '2020-11-03 07:15:15', '2020-11-03 07:15:15'),
(643, 'en', 'Filter by Deliver Status', 'Filter by Deliver Status', '2020-11-03 07:15:15', '2020-11-03 07:15:15'),
(644, 'en', 'Pending', 'Pending', '2020-11-03 07:15:15', '2020-11-03 07:15:15'),
(645, 'en', 'Type Order code & hit Enter', 'Type Order code & hit Enter', '2020-11-03 07:15:15', '2020-11-03 07:15:15'),
(646, 'en', 'Num. of Products', 'Num. of Products', '2020-11-03 07:15:15', '2020-11-03 07:15:15'),
(647, 'en', 'Walk In Customer', 'Walk In Customer', '2020-11-03 10:03:20', '2020-11-03 10:03:20'),
(648, 'en', 'QTY', 'QTY', '2020-11-03 10:03:20', '2020-11-03 10:03:20'),
(649, 'en', 'Without Shipping Charge', 'Without Shipping Charge', '2020-11-03 10:03:20', '2020-11-03 10:03:20'),
(650, 'en', 'With Shipping Charge', 'With Shipping Charge', '2020-11-03 10:03:20', '2020-11-03 10:03:20'),
(651, 'en', 'Pay With Cash', 'Pay With Cash', '2020-11-03 10:03:20', '2020-11-03 10:03:20'),
(652, 'en', 'Shipping Address', 'Shipping Address', '2020-11-03 10:03:20', '2020-11-03 10:03:20'),
(653, 'en', 'Close', 'Close', '2020-11-03 10:03:20', '2020-11-03 10:03:20'),
(654, 'en', 'Select country', 'Select country', '2020-11-03 10:03:21', '2020-11-03 10:03:21'),
(655, 'en', 'Order Confirmation', 'Order Confirmation', '2020-11-03 10:03:21', '2020-11-03 10:03:21'),
(656, 'en', 'Are you sure to confirm this order?', 'Are you sure to confirm this order?', '2020-11-03 10:03:21', '2020-11-03 10:03:21'),
(657, 'en', 'Comfirm Order', 'Comfirm Order', '2020-11-03 10:03:21', '2020-11-03 10:03:21'),
(659, 'en', 'Personal Info', 'Personal Info', '2020-11-03 11:38:15', '2020-11-03 11:38:15'),
(660, 'en', 'Repeat Password', 'Repeat Password', '2020-11-03 11:38:15', '2020-11-03 11:38:15'),
(661, 'en', 'Shop Name', 'Shop Name', '2020-11-03 11:38:15', '2020-11-03 11:38:15'),
(662, 'en', 'Register Your Shop', 'Register Your Shop', '2020-11-03 11:38:15', '2020-11-03 11:38:15'),
(663, 'en', 'Affiliate Informations', 'Affiliate Informations', '2020-11-03 11:39:06', '2020-11-03 11:39:06'),
(664, 'en', 'Affiliate', 'Affiliate', '2020-11-03 11:39:06', '2020-11-03 11:39:06'),
(665, 'en', 'User Info', 'User Info', '2020-11-03 11:39:06', '2020-11-03 11:39:06'),
(667, 'en', 'Installed Addon', 'Installed Addon', '2020-11-03 11:48:13', '2020-11-03 11:48:13'),
(668, 'en', 'Available Addon', 'Available Addon', '2020-11-03 11:48:13', '2020-11-03 11:48:13'),
(669, 'en', 'Install New Addon', 'Install New Addon', '2020-11-03 11:48:13', '2020-11-03 11:48:13'),
(670, 'en', 'Version', 'Version', '2020-11-03 11:48:13', '2020-11-03 11:48:13'),
(671, 'en', 'Activated', 'Activated', '2020-11-03 11:48:13', '2020-11-03 11:48:13'),
(672, 'en', 'Deactivated', 'Deactivated', '2020-11-03 11:48:13', '2020-11-03 11:48:13'),
(673, 'en', 'Activate OTP', 'Activate OTP', '2020-11-03 11:48:20', '2020-11-03 11:48:20'),
(674, 'en', 'OTP will be Used For', 'OTP will be Used For', '2020-11-03 11:48:20', '2020-11-03 11:48:20'),
(675, 'en', 'Settings updated successfully', 'Settings updated successfully', '2020-11-03 11:48:20', '2020-11-03 11:48:20'),
(676, 'en', 'Product Owner', 'Product Owner', '2020-11-03 11:48:46', '2020-11-03 11:48:46'),
(677, 'en', 'Point', 'Point', '2020-11-03 11:48:46', '2020-11-03 11:48:46'),
(678, 'en', 'Set Point for Product Within a Range', 'Set Point for Product Within a Range', '2020-11-03 11:48:47', '2020-11-03 11:48:47'),
(679, 'en', 'Set Point for multiple products', 'Set Point for multiple products', '2020-11-03 11:48:47', '2020-11-03 11:48:47'),
(680, 'en', 'Min Price', 'Min Price', '2020-11-03 11:48:47', '2020-11-03 11:48:47'),
(681, 'en', 'Max Price', 'Max Price', '2020-11-03 11:48:47', '2020-11-03 11:48:47'),
(682, 'en', 'Set Point for all Products', 'Set Point for all Products', '2020-11-03 11:48:47', '2020-11-03 11:48:47'),
(683, 'en', 'Set Point For ', 'Set Point For ', '2020-11-03 11:48:47', '2020-11-03 11:48:47'),
(684, 'en', 'Convert Status', 'Convert Status', '2020-11-03 11:48:58', '2020-11-03 11:48:58'),
(685, 'en', 'Earned At', 'Earned At', '2020-11-03 11:48:59', '2020-11-03 11:48:59'),
(686, 'en', 'Seller Based Selling Report', 'Seller Based Selling Report', '2020-11-03 11:49:35', '2020-11-03 11:49:35'),
(687, 'en', 'Sort by verificarion status', 'Sort by verificarion status', '2020-11-03 11:49:35', '2020-11-03 11:49:35'),
(688, 'en', 'Approved', 'Approved', '2020-11-03 11:49:35', '2020-11-03 11:49:35'),
(689, 'en', 'Non Approved', 'Non Approved', '2020-11-03 11:49:35', '2020-11-03 11:49:35'),
(690, 'en', 'Filter', 'Filter', '2020-11-03 11:49:35', '2020-11-03 11:49:35'),
(691, 'en', 'Seller Name', 'Seller Name', '2020-11-03 11:49:35', '2020-11-03 11:49:35'),
(692, 'en', 'Number of Product Sale', 'Number of Product Sale', '2020-11-03 11:49:36', '2020-11-03 11:49:36'),
(693, 'en', 'Order Amount', 'Order Amount', '2020-11-03 11:49:36', '2020-11-03 11:49:36'),
(694, 'en', 'Facebook Chat Setting', 'Facebook Chat Setting', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(695, 'en', 'Facebook Page ID', 'Facebook Page ID', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(696, 'en', 'Please be carefull when you are configuring Facebook chat. For incorrect configuration you will not get messenger icon on your user-end site.', 'Please be carefull when you are configuring Facebook chat. For incorrect configuration you will not get messenger icon on your user-end site.', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(697, 'en', 'Login into your facebook page', 'Login into your facebook page', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(698, 'en', 'Find the About option of your facebook page', 'Find the About option of your facebook page', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(699, 'en', 'At the very bottom, you can find the \\“Facebook Page ID\\”', 'At the very bottom, you can find the \\“Facebook Page ID\\”', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(700, 'en', 'Go to Settings of your page and find the option of \\\"Advance Messaging\\\"', 'Go to Settings of your page and find the option of \\\"Advance Messaging\\\"', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(701, 'en', 'Scroll down that page and you will get \\\"white listed domain\\\"', 'Scroll down that page and you will get \\\"white listed domain\\\"', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(702, 'en', 'Set your website domain name', 'Set your website domain name', '2020-11-03 11:51:14', '2020-11-03 11:51:14'),
(703, 'en', 'Google reCAPTCHA Setting', 'Google reCAPTCHA Setting', '2020-11-03 11:51:25', '2020-11-03 11:51:25'),
(704, 'en', 'Site KEY', 'Site KEY', '2020-11-03 11:51:25', '2020-11-03 11:51:25'),
(705, 'en', 'Select Shipping Method', 'Select Shipping Method', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(706, 'en', 'Product Wise Shipping Cost', 'Product Wise Shipping Cost', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(707, 'en', 'Flat Rate Shipping Cost', 'Flat Rate Shipping Cost', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(708, 'en', 'Seller Wise Flat Shipping Cost', 'Seller Wise Flat Shipping Cost', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(709, 'en', 'Note', 'Note', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(710, 'en', 'Product Wise Shipping Cost calulation: Shipping cost is calculate by addition of each product shipping cost', 'Product Wise Shipping Cost calulation: Shipping cost is calculate by addition of each product shipping cost', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(711, 'en', 'Flat Rate Shipping Cost calulation: How many products a customer purchase, doesn\'t matter. Shipping cost is fixed', 'Flat Rate Shipping Cost calulation: How many products a customer purchase, doesn\'t matter. Shipping cost is fixed', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(712, 'en', 'Seller Wise Flat Shipping Cost calulation: Fixed rate for each seller. If a customer purchase 2 product from two seller shipping cost is calculate by addition of each seller flat shipping cost', 'Seller Wise Flat Shipping Cost calulation: Fixed rate for each seller. If a customer purchase 2 product from two seller shipping cost is calculate by addition of each seller flat shipping cost', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(713, 'en', 'Flat Rate Cost', 'Flat Rate Cost', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(714, 'en', 'Shipping Cost for Admin Products', 'Shipping Cost for Admin Products', '2020-11-03 11:51:32', '2020-11-03 11:51:32'),
(715, 'en', 'Countries', 'Countries', '2020-11-03 11:52:02', '2020-11-03 11:52:02'),
(716, 'en', 'Show/Hide', 'Show/Hide', '2020-11-03 11:52:02', '2020-11-03 11:52:02'),
(717, 'en', 'Country status updated successfully', 'Country status updated successfully', '2020-11-03 11:52:02', '2020-11-03 11:52:02'),
(718, 'en', 'All Subcategories', 'All Subcategories', '2020-11-03 12:27:55', '2020-11-03 12:27:55'),
(719, 'en', 'Add New Subcategory', 'Add New Subcategory', '2020-11-03 12:27:55', '2020-11-03 12:27:55'),
(720, 'en', 'Sub-Categories', 'Sub-Categories', '2020-11-03 12:27:55', '2020-11-03 12:27:55'),
(721, 'en', 'Sub Category Information', 'Sub Category Information', '2020-11-03 12:28:07', '2020-11-03 12:28:07'),
(723, 'en', 'Slug', 'Slug', '2020-11-03 12:28:07', '2020-11-03 12:28:07'),
(724, 'en', 'All Sub Subcategories', 'All Sub Subcategories', '2020-11-03 12:29:12', '2020-11-03 12:29:12'),
(725, 'en', 'Add New Sub Subcategory', 'Add New Sub Subcategory', '2020-11-03 12:29:12', '2020-11-03 12:29:12'),
(726, 'en', 'Sub-Sub-categories', 'Sub-Sub-categories', '2020-11-03 12:29:12', '2020-11-03 12:29:12'),
(727, 'en', 'Make This Default', 'Make This Default', '2020-11-04 08:24:24', '2020-11-04 08:24:24');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(728, 'en', 'Shops', 'Shops', '2020-11-04 11:17:10', '2020-11-04 11:17:10'),
(729, 'en', 'Women Clothing & Fashion', 'Women Clothing & Fashion', '2020-11-04 11:23:12', '2020-11-04 11:23:12'),
(730, 'en', 'Cellphones & Tabs', 'Cellphones & Tabs', '2020-11-04 12:10:41', '2020-11-04 12:10:41'),
(731, 'en', 'Welcome to', 'Welcome to', '2020-11-07 07:14:43', '2020-11-07 07:14:43'),
(732, 'en', 'Create a New Account', 'Create a New Account', '2020-11-07 07:32:15', '2020-11-07 07:32:15'),
(733, 'en', 'Full Name', 'Full Name', '2020-11-07 07:32:15', '2020-11-07 07:32:15'),
(734, 'en', 'password', 'password', '2020-11-07 07:32:15', '2020-11-07 07:32:15'),
(735, 'en', 'Confrim Password', 'Confrim Password', '2020-11-07 07:32:15', '2020-11-07 07:32:15'),
(736, 'en', 'I agree with the', 'I agree with the', '2020-11-07 07:32:15', '2020-11-07 07:32:15'),
(737, 'en', 'Terms and Conditions', 'Terms and Conditions', '2020-11-07 07:32:15', '2020-11-07 07:32:15'),
(738, 'en', 'Register', 'Register', '2020-11-07 07:32:15', '2020-11-07 07:32:15'),
(739, 'en', 'Already have an account', 'Already have an account', '2020-11-07 07:32:16', '2020-11-07 07:32:16'),
(741, 'en', 'Sign Up with', 'Sign Up with', '2020-11-07 07:32:16', '2020-11-07 07:32:16'),
(742, 'en', 'I agree with the Terms and Conditions', 'I agree with the Terms and Conditions', '2020-11-07 07:34:49', '2020-11-07 07:34:49'),
(745, 'en', 'All Role', 'All Role', '2020-11-07 07:44:28', '2020-11-07 07:44:28'),
(746, 'en', 'Add New Role', 'Add New Role', '2020-11-07 07:44:28', '2020-11-07 07:44:28'),
(747, 'en', 'Roles', 'Roles', '2020-11-07 07:44:28', '2020-11-07 07:44:28'),
(749, 'en', 'Add New Staffs', 'Add New Staffs', '2020-11-07 07:44:36', '2020-11-07 07:44:36'),
(750, 'en', 'Role', 'Role', '2020-11-07 07:44:36', '2020-11-07 07:44:36'),
(751, 'en', 'Frontend Website Name', 'Frontend Website Name', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(752, 'en', 'Website Name', 'Website Name', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(753, 'en', 'Site Motto', 'Site Motto', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(754, 'en', 'Best eCommerce Website', 'Best eCommerce Website', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(755, 'en', 'Site Icon', 'Site Icon', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(756, 'en', 'Website favicon. 32x32 .png', 'Website favicon. 32x32 .png', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(757, 'en', 'Website Base Color', 'Website Base Color', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(758, 'en', 'Hex Color Code', 'Hex Color Code', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(759, 'en', 'Website Base Hover Color', 'Website Base Hover Color', '2020-11-07 07:44:59', '2020-11-07 07:44:59'),
(760, 'en', 'Update', 'Update', '2020-11-07 07:45:00', '2020-11-07 07:45:00'),
(761, 'en', 'Global Seo', 'Global Seo', '2020-11-07 07:45:00', '2020-11-07 07:45:00'),
(762, 'en', 'Meta description', 'Meta description', '2020-11-07 07:45:00', '2020-11-07 07:45:00'),
(763, 'en', 'Keywords', 'Keywords', '2020-11-07 07:45:00', '2020-11-07 07:45:00'),
(764, 'en', 'Separate with coma', 'Separate with coma', '2020-11-07 07:45:00', '2020-11-07 07:45:00'),
(765, 'en', 'Website Pages', 'Website Pages', '2020-11-07 07:49:04', '2020-11-07 07:49:04'),
(766, 'en', 'All Pages', 'All Pages', '2020-11-07 07:49:04', '2020-11-07 07:49:04'),
(767, 'en', 'Add New Page', 'Add New Page', '2020-11-07 07:49:04', '2020-11-07 07:49:04'),
(768, 'en', 'URL', 'URL', '2020-11-07 07:49:04', '2020-11-07 07:49:04'),
(769, 'en', 'Actions', 'Actions', '2020-11-07 07:49:04', '2020-11-07 07:49:04'),
(770, 'en', 'Edit Page Information', 'Edit Page Information', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(771, 'en', 'Page Content', 'Page Content', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(772, 'en', 'Title', 'Title', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(773, 'en', 'Link', 'Link', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(774, 'en', 'Use character, number, hypen only', 'Use character, number, hypen only', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(775, 'en', 'Add Content', 'Add Content', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(776, 'en', 'Seo Fields', 'Seo Fields', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(777, 'en', 'Update Page', 'Update Page', '2020-11-07 07:49:22', '2020-11-07 07:49:22'),
(778, 'en', 'Default Language', 'Default Language', '2020-11-07 07:50:09', '2020-11-07 07:50:09'),
(779, 'en', 'Add New Language', 'Add New Language', '2020-11-07 07:50:09', '2020-11-07 07:50:09'),
(780, 'en', 'RTL', 'RTL', '2020-11-07 07:50:09', '2020-11-07 07:50:09'),
(781, 'en', 'Translation', 'Translation', '2020-11-07 07:50:09', '2020-11-07 07:50:09'),
(782, 'en', 'Language Information', 'Language Information', '2020-11-07 07:50:23', '2020-11-07 07:50:23'),
(783, 'en', 'Save Page', 'Save Page', '2020-11-07 07:51:27', '2020-11-07 07:51:27'),
(784, 'en', 'Home Page Settings', 'Home Page Settings', '2020-11-07 07:51:35', '2020-11-07 07:51:35'),
(785, 'en', 'Home Slider', 'Home Slider', '2020-11-07 07:51:35', '2020-11-07 07:51:35'),
(786, 'en', 'Photos & Links', 'Photos & Links', '2020-11-07 07:51:35', '2020-11-07 07:51:35'),
(787, 'en', 'Add New', 'Add New', '2020-11-07 07:51:35', '2020-11-07 07:51:35'),
(788, 'en', 'Home Categories', 'Home Categories', '2020-11-07 07:51:35', '2020-11-07 07:51:35'),
(789, 'en', 'Home Banner 1 (Max 3)', 'Home Banner 1 (Max 3)', '2020-11-07 07:51:35', '2020-11-07 07:51:35'),
(790, 'en', 'Banner & Links', 'Banner & Links', '2020-11-07 07:51:35', '2020-11-07 07:51:35'),
(791, 'en', 'Home Banner 2 (Max 3)', 'Home Banner 2 (Max 3)', '2020-11-07 07:51:36', '2020-11-07 07:51:36'),
(792, 'en', 'Top 10', 'Top 10', '2020-11-07 07:51:36', '2020-11-07 07:51:36'),
(793, 'en', 'Top Categories (Max 10)', 'Top Categories (Max 10)', '2020-11-07 07:51:36', '2020-11-07 07:51:36'),
(794, 'en', 'Top Brands (Max 10)', 'Top Brands (Max 10)', '2020-11-07 07:51:36', '2020-11-07 07:51:36'),
(795, 'en', 'System Name', 'System Name', '2020-11-07 07:54:22', '2020-11-07 07:54:22'),
(796, 'en', 'System Logo - White', 'System Logo - White', '2020-11-07 07:54:22', '2020-11-07 07:54:22'),
(797, 'en', 'Choose Files', 'Choose Files', '2020-11-07 07:54:22', '2020-11-07 07:54:22'),
(798, 'en', 'Will be used in admin panel side menu', 'Will be used in admin panel side menu', '2020-11-07 07:54:23', '2020-11-07 07:54:23'),
(799, 'en', 'System Logo - Black', 'System Logo - Black', '2020-11-07 07:54:23', '2020-11-07 07:54:23'),
(800, 'en', 'Will be used in admin panel topbar in mobile + Admin login page', 'Will be used in admin panel topbar in mobile + Admin login page', '2020-11-07 07:54:23', '2020-11-07 07:54:23'),
(801, 'en', 'System Timezone', 'System Timezone', '2020-11-07 07:54:23', '2020-11-07 07:54:23'),
(802, 'en', 'Admin login page background', 'Admin login page background', '2020-11-07 07:54:23', '2020-11-07 07:54:23'),
(803, 'en', 'Website Header', 'Website Header', '2020-11-07 08:21:36', '2020-11-07 08:21:36'),
(804, 'en', 'Header Setting', 'Header Setting', '2020-11-07 08:21:36', '2020-11-07 08:21:36'),
(805, 'en', 'Header Logo', 'Header Logo', '2020-11-07 08:21:36', '2020-11-07 08:21:36'),
(806, 'en', 'Show Language Switcher?', 'Show Language Switcher?', '2020-11-07 08:21:36', '2020-11-07 08:21:36'),
(807, 'en', 'Show Currency Switcher?', 'Show Currency Switcher?', '2020-11-07 08:21:36', '2020-11-07 08:21:36'),
(808, 'en', 'Enable stikcy header?', 'Enable stikcy header?', '2020-11-07 08:21:36', '2020-11-07 08:21:36'),
(809, 'en', 'Website Footer', 'Website Footer', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(810, 'en', 'Footer Widget', 'Footer Widget', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(811, 'en', 'About Widget', 'About Widget', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(812, 'en', 'Footer Logo', 'Footer Logo', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(813, 'en', 'About description', 'About description', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(814, 'en', 'Contact Info Widget', 'Contact Info Widget', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(815, 'en', 'Footer contact address', 'Footer contact address', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(816, 'en', 'Footer contact phone', 'Footer contact phone', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(817, 'en', 'Footer contact email', 'Footer contact email', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(818, 'en', 'Link Widget One', 'Link Widget One', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(819, 'en', 'Links', 'Links', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(820, 'en', 'Footer Bottom', 'Footer Bottom', '2020-11-07 08:21:56', '2020-11-07 08:21:56'),
(821, 'en', 'Copyright Widget ', 'Copyright Widget ', '2020-11-07 08:21:57', '2020-11-07 08:21:57'),
(822, 'en', 'Copyright Text', 'Copyright Text', '2020-11-07 08:21:57', '2020-11-07 08:21:57'),
(823, 'en', 'Social Link Widget ', 'Social Link Widget ', '2020-11-07 08:21:57', '2020-11-07 08:21:57'),
(824, 'en', 'Show Social Links?', 'Show Social Links?', '2020-11-07 08:21:57', '2020-11-07 08:21:57'),
(825, 'en', 'Social Links', 'Social Links', '2020-11-07 08:21:57', '2020-11-07 08:21:57'),
(826, 'en', 'Payment Methods Widget ', 'Payment Methods Widget ', '2020-11-07 08:21:57', '2020-11-07 08:21:57'),
(827, 'en', 'RTL status updated successfully', 'RTL status updated successfully', '2020-11-07 08:36:11', '2020-11-07 08:36:11'),
(828, 'en', 'Language changed to ', 'Language changed to ', '2020-11-07 08:36:27', '2020-11-07 08:36:27'),
(829, 'en', 'Inhouse Product sale report', 'Inhouse Product sale report', '2020-11-07 09:30:25', '2020-11-07 09:30:25'),
(830, 'en', 'Sort by Category', 'Sort by Category', '2020-11-07 09:30:25', '2020-11-07 09:30:25'),
(831, 'en', 'Product wise stock report', 'Product wise stock report', '2020-11-07 09:31:02', '2020-11-07 09:31:02'),
(832, 'en', 'Currency changed to ', 'Currency changed to ', '2020-11-07 12:36:28', '2020-11-07 12:36:28'),
(833, 'en', 'Avatar', 'Avatar', '2020-11-08 09:32:35', '2020-11-08 09:32:35'),
(834, 'en', 'Copy', 'Copy', '2020-11-08 10:03:42', '2020-11-08 10:03:42'),
(835, 'en', 'Variant', 'Variant', '2020-11-08 10:43:02', '2020-11-08 10:43:02'),
(836, 'en', 'Variant Price', 'Variant Price', '2020-11-08 10:43:03', '2020-11-08 10:43:03'),
(837, 'en', 'SKU', 'SKU', '2020-11-08 10:43:03', '2020-11-08 10:43:03'),
(838, 'en', 'Key', 'Key', '2020-11-08 12:35:09', '2020-11-08 12:35:09'),
(839, 'en', 'Value', 'Value', '2020-11-08 12:35:09', '2020-11-08 12:35:09'),
(840, 'en', 'Copy Translations', 'Copy Translations', '2020-11-08 12:35:10', '2020-11-08 12:35:10'),
(841, 'en', 'All Pick-up Points', 'All Pick-up Points', '2020-11-08 12:35:43', '2020-11-08 12:35:43'),
(842, 'en', 'Add New Pick-up Point', 'Add New Pick-up Point', '2020-11-08 12:35:43', '2020-11-08 12:35:43'),
(843, 'en', 'Manager', 'Manager', '2020-11-08 12:35:43', '2020-11-08 12:35:43'),
(844, 'en', 'Location', 'Location', '2020-11-08 12:35:43', '2020-11-08 12:35:43'),
(845, 'en', 'Pickup Station Contact', 'Pickup Station Contact', '2020-11-08 12:35:43', '2020-11-08 12:35:43'),
(846, 'en', 'Open', 'Open', '2020-11-08 12:35:43', '2020-11-08 12:35:43'),
(847, 'en', 'POS Activation for Seller', 'POS Activation for Seller', '2020-11-08 12:35:55', '2020-11-08 12:35:55'),
(848, 'en', 'Order Completed Successfully.', 'Order Completed Successfully.', '2020-11-08 12:36:02', '2020-11-08 12:36:02'),
(849, 'en', 'Text Input', 'Text Input', '2020-11-08 12:38:40', '2020-11-08 12:38:40'),
(850, 'en', 'Select', 'Select', '2020-11-08 12:38:40', '2020-11-08 12:38:40'),
(851, 'en', 'Multiple Select', 'Multiple Select', '2020-11-08 12:38:40', '2020-11-08 12:38:40'),
(852, 'en', 'Radio', 'Radio', '2020-11-08 12:38:40', '2020-11-08 12:38:40'),
(853, 'en', 'File', 'File', '2020-11-08 12:38:40', '2020-11-08 12:38:40'),
(854, 'en', 'Email Address', 'Email Address', '2020-11-08 12:39:32', '2020-11-08 12:39:32'),
(855, 'en', 'Verification Info', 'Verification Info', '2020-11-08 12:39:32', '2020-11-08 12:39:32'),
(856, 'en', 'Approval', 'Approval', '2020-11-08 12:39:32', '2020-11-08 12:39:32'),
(857, 'en', 'Due Amount', 'Due Amount', '2020-11-08 12:39:32', '2020-11-08 12:39:32'),
(858, 'en', 'Show', 'Show', '2020-11-08 12:39:32', '2020-11-08 12:39:32'),
(859, 'en', 'Pay Now', 'Pay Now', '2020-11-08 12:39:32', '2020-11-08 12:39:32'),
(860, 'en', 'Affiliate User Verification', 'Affiliate User Verification', '2020-11-08 12:40:01', '2020-11-08 12:40:01'),
(861, 'en', 'Reject', 'Reject', '2020-11-08 12:40:01', '2020-11-08 12:40:01'),
(862, 'en', 'Accept', 'Accept', '2020-11-08 12:40:01', '2020-11-08 12:40:01'),
(863, 'en', 'Beauty, Health & Hair', 'Beauty, Health & Hair', '2020-11-08 12:54:17', '2020-11-08 12:54:17'),
(864, 'en', 'Comparison', 'Comparison', '2020-11-08 12:54:33', '2020-11-08 12:54:33'),
(865, 'en', 'Reset Compare List', 'Reset Compare List', '2020-11-08 12:54:33', '2020-11-08 12:54:33'),
(866, 'en', 'Your comparison list is empty', 'Your comparison list is empty', '2020-11-08 12:54:33', '2020-11-08 12:54:33'),
(867, 'en', 'Convert Point To Wallet', 'Convert Point To Wallet', '2020-11-08 13:04:42', '2020-11-08 13:04:42'),
(868, 'en', 'Note: You need to activate wallet option first before using club point addon.', 'Note: You need to activate wallet option first before using club point addon.', '2020-11-08 13:04:43', '2020-11-08 13:04:43'),
(869, 'en', 'Create an account.', 'Create an account.', '2020-11-09 06:17:11', '2020-11-09 06:17:11'),
(870, 'en', 'Use Email Instead', 'Use Email Instead', '2020-11-09 06:17:11', '2020-11-09 06:17:11'),
(871, 'en', 'By signing up you agree to our terms and conditions.', 'By signing up you agree to our terms and conditions.', '2020-11-09 06:17:11', '2020-11-09 06:17:11'),
(872, 'en', 'Create Account', 'Create Account', '2020-11-09 06:17:11', '2020-11-09 06:17:11'),
(873, 'en', 'Or Join With', 'Or Join With', '2020-11-09 06:17:11', '2020-11-09 06:17:11'),
(874, 'en', 'Already have an account?', 'Already have an account?', '2020-11-09 06:17:11', '2020-11-09 06:17:11'),
(875, 'en', 'Log In', 'Log In', '2020-11-09 06:17:11', '2020-11-09 06:17:11'),
(876, 'en', 'Computer & Accessories', 'Computer & Accessories', '2020-11-09 07:52:05', '2020-11-09 07:52:05'),
(878, 'en', 'Product(s)', 'Product(s)', '2020-11-09 07:52:23', '2020-11-09 07:52:23'),
(879, 'en', 'in your cart', 'in your cart', '2020-11-09 07:52:23', '2020-11-09 07:52:23'),
(880, 'en', 'in your wishlist', 'in your wishlist', '2020-11-09 07:52:23', '2020-11-09 07:52:23'),
(881, 'en', 'you ordered', 'you ordered', '2020-11-09 07:52:24', '2020-11-09 07:52:24'),
(882, 'en', 'Default Shipping Address', 'Default Shipping Address', '2020-11-09 07:52:24', '2020-11-09 07:52:24'),
(883, 'en', 'Sports & outdoor', 'Sports & outdoor', '2020-11-09 07:53:32', '2020-11-09 07:53:32'),
(884, 'en', 'Copied', 'Copied', '2020-11-09 07:54:19', '2020-11-09 07:54:19'),
(885, 'en', 'Copy the Promote Link', 'Copy the Promote Link', '2020-11-09 07:54:19', '2020-11-09 07:54:19'),
(886, 'en', 'Write a review', 'Write a review', '2020-11-09 07:54:20', '2020-11-09 07:54:20'),
(887, 'en', 'Your name', 'Your name', '2020-11-09 07:54:20', '2020-11-09 07:54:20'),
(888, 'en', 'Comment', 'Comment', '2020-11-09 07:54:20', '2020-11-09 07:54:20'),
(889, 'en', 'Your review', 'Your review', '2020-11-09 07:54:20', '2020-11-09 07:54:20'),
(890, 'en', 'Submit review', 'Submit review', '2020-11-09 07:54:20', '2020-11-09 07:54:20'),
(891, 'en', 'Claire Willis', 'Claire Willis', '2020-11-09 08:05:00', '2020-11-09 08:05:00'),
(892, 'en', 'Germaine Greene', 'Germaine Greene', '2020-11-09 08:05:00', '2020-11-09 08:05:00'),
(893, 'en', 'Product File', 'Product File', '2020-11-09 08:07:08', '2020-11-09 08:07:08'),
(894, 'en', 'Choose file', 'Choose file', '2020-11-09 08:07:08', '2020-11-09 08:07:08'),
(895, 'en', 'Type to add a tag', 'Type to add a tag', '2020-11-09 08:07:08', '2020-11-09 08:07:08'),
(896, 'en', 'Images', 'Images', '2020-11-09 08:07:08', '2020-11-09 08:07:08'),
(897, 'en', 'Main Images', 'Main Images', '2020-11-09 08:07:08', '2020-11-09 08:07:08'),
(898, 'en', 'Meta Tags', 'Meta Tags', '2020-11-09 08:07:08', '2020-11-09 08:07:08'),
(899, 'en', 'Digital Product has been inserted successfully', 'Digital Product has been inserted successfully', '2020-11-09 08:14:25', '2020-11-09 08:14:25'),
(900, 'en', 'Edit Digital Product', 'Edit Digital Product', '2020-11-09 08:14:34', '2020-11-09 08:14:34'),
(901, 'en', 'Select an option', 'Select an option', '2020-11-09 08:14:34', '2020-11-09 08:14:34'),
(902, 'en', 'tax', 'tax', '2020-11-09 08:14:35', '2020-11-09 08:14:35'),
(903, 'en', 'Any question about this product?', 'Any question about this product?', '2020-11-09 08:15:11', '2020-11-09 08:15:11'),
(904, 'en', 'Sign in', 'Sign in', '2020-11-09 08:15:11', '2020-11-09 08:15:11'),
(905, 'en', 'Login with Google', 'Login with Google', '2020-11-09 08:15:11', '2020-11-09 08:15:11'),
(906, 'en', 'Login with Facebook', 'Login with Facebook', '2020-11-09 08:15:11', '2020-11-09 08:15:11'),
(907, 'en', 'Login with Twitter', 'Login with Twitter', '2020-11-09 08:15:11', '2020-11-09 08:15:11'),
(908, 'en', 'Click to show phone number', 'Click to show phone number', '2020-11-09 08:15:51', '2020-11-09 08:15:51'),
(909, 'en', 'Other Ads of', 'Other Ads of', '2020-11-09 08:15:52', '2020-11-09 08:15:52'),
(910, 'en', 'Store Home', 'Store Home', '2020-11-09 08:54:23', '2020-11-09 08:54:23'),
(911, 'en', 'Top Selling', 'Top Selling', '2020-11-09 08:54:23', '2020-11-09 08:54:23'),
(912, 'en', 'Shop Settings', 'Shop Settings', '2020-11-09 08:55:38', '2020-11-09 08:55:38'),
(913, 'en', 'Visit Shop', 'Visit Shop', '2020-11-09 08:55:38', '2020-11-09 08:55:38'),
(914, 'en', 'Pickup Points', 'Pickup Points', '2020-11-09 08:55:38', '2020-11-09 08:55:38'),
(915, 'en', 'Select Pickup Point', 'Select Pickup Point', '2020-11-09 08:55:38', '2020-11-09 08:55:38'),
(916, 'en', 'Slider Settings', 'Slider Settings', '2020-11-09 08:55:39', '2020-11-09 08:55:39'),
(917, 'en', 'Social Media Link', 'Social Media Link', '2020-11-09 08:55:39', '2020-11-09 08:55:39'),
(918, 'en', 'Facebook', 'Facebook', '2020-11-09 08:55:39', '2020-11-09 08:55:39'),
(919, 'en', 'Twitter', 'Twitter', '2020-11-09 08:55:39', '2020-11-09 08:55:39'),
(920, 'en', 'Google', 'Google', '2020-11-09 08:55:39', '2020-11-09 08:55:39'),
(921, 'en', 'New Arrival Products', 'New Arrival Products', '2020-11-09 08:56:26', '2020-11-09 08:56:26'),
(922, 'en', 'Check Your Order Status', 'Check Your Order Status', '2020-11-09 09:23:32', '2020-11-09 09:23:32'),
(923, 'en', 'Shipping method', 'Shipping method', '2020-11-09 09:27:40', '2020-11-09 09:27:40'),
(924, 'en', 'Shipped By', 'Shipped By', '2020-11-09 09:27:41', '2020-11-09 09:27:41'),
(925, 'en', 'Image', 'Image', '2020-11-09 09:29:37', '2020-11-09 09:29:37'),
(926, 'en', 'Sub Sub Category', 'Sub Sub Category', '2020-11-09 09:29:37', '2020-11-09 09:29:37'),
(927, 'en', 'Inhouse Products', 'Inhouse Products', '2020-11-09 10:22:32', '2020-11-09 10:22:32'),
(928, 'en', 'Forgot Password?', 'Forgot Password?', '2020-11-09 10:33:21', '2020-11-09 10:33:21'),
(929, 'en', 'Enter your email address to recover your password.', 'Enter your email address to recover your password.', '2020-11-09 10:33:21', '2020-11-09 10:33:21'),
(930, 'en', 'Email or Phone', 'Email or Phone', '2020-11-09 10:33:21', '2020-11-09 10:33:21'),
(931, 'en', 'Send Password Reset Link', 'Send Password Reset Link', '2020-11-09 10:33:21', '2020-11-09 10:33:21'),
(932, 'en', 'Back to Login', 'Back to Login', '2020-11-09 10:33:21', '2020-11-09 10:33:21'),
(933, 'en', 'index', 'index', '2020-11-09 10:35:29', '2020-11-09 10:35:29'),
(934, 'en', 'Download Your Product', 'Download Your Product', '2020-11-09 10:35:30', '2020-11-09 10:35:30'),
(935, 'en', 'Option', 'Option', '2020-11-09 10:35:30', '2020-11-09 10:35:30'),
(936, 'en', 'Applied Refund Request', 'Applied Refund Request', '2020-11-09 10:35:39', '2020-11-09 10:35:39'),
(937, 'en', 'Item has been renoved from wishlist', 'Item has been renoved from wishlist', '2020-11-09 10:36:04', '2020-11-09 10:36:04'),
(938, 'en', 'Bulk Products Upload', 'Bulk Products Upload', '2020-11-09 10:39:24', '2020-11-09 10:39:24'),
(939, 'en', 'Upload CSV', 'Upload CSV', '2020-11-09 10:39:25', '2020-11-09 10:39:25'),
(940, 'en', 'Create a Ticket', 'Create a Ticket', '2020-11-09 10:40:25', '2020-11-09 10:40:25'),
(941, 'en', 'Tickets', 'Tickets', '2020-11-09 10:40:25', '2020-11-09 10:40:25'),
(942, 'en', 'Ticket ID', 'Ticket ID', '2020-11-09 10:40:25', '2020-11-09 10:40:25'),
(943, 'en', 'Sending Date', 'Sending Date', '2020-11-09 10:40:25', '2020-11-09 10:40:25'),
(944, 'en', 'Subject', 'Subject', '2020-11-09 10:40:25', '2020-11-09 10:40:25'),
(945, 'en', 'View Details', 'View Details', '2020-11-09 10:40:25', '2020-11-09 10:40:25'),
(946, 'en', 'Provide a detailed description', 'Provide a detailed description', '2020-11-09 10:40:26', '2020-11-09 10:40:26'),
(947, 'en', 'Type your reply', 'Type your reply', '2020-11-09 10:40:26', '2020-11-09 10:40:26'),
(948, 'en', 'Send Ticket', 'Send Ticket', '2020-11-09 10:40:26', '2020-11-09 10:40:26'),
(949, 'en', 'Load More', 'Load More', '2020-11-09 10:40:57', '2020-11-09 10:40:57'),
(950, 'en', 'Jewelry & Watches', 'Jewelry & Watches', '2020-11-09 10:47:38', '2020-11-09 10:47:38'),
(951, 'en', 'Filters', 'Filters', '2020-11-09 10:53:54', '2020-11-09 10:53:54'),
(952, 'en', 'Contact address', 'Contact address', '2020-11-09 10:58:46', '2020-11-09 10:58:46'),
(953, 'en', 'Contact phone', 'Contact phone', '2020-11-09 10:58:47', '2020-11-09 10:58:47'),
(954, 'en', 'Contact email', 'Contact email', '2020-11-09 10:58:47', '2020-11-09 10:58:47'),
(955, 'en', 'Filter by', 'Filter by', '2020-11-09 11:00:03', '2020-11-09 11:00:03'),
(956, 'en', 'Condition', 'Condition', '2020-11-09 11:56:13', '2020-11-09 11:56:13'),
(957, 'en', 'All Type', 'All Type', '2020-11-09 11:56:13', '2020-11-09 11:56:13'),
(960, 'en', 'Pay with wallet', 'Pay with wallet', '2020-11-09 12:56:34', '2020-11-09 12:56:34'),
(961, 'en', 'Select variation', 'Select variation', '2020-11-10 07:54:29', '2020-11-10 07:54:29'),
(962, 'en', 'No Product Added', 'No Product Added', '2020-11-10 08:07:53', '2020-11-10 08:07:53'),
(963, 'en', 'Status has been updated successfully', 'Status has been updated successfully', '2020-11-10 08:41:23', '2020-11-10 08:41:23'),
(964, 'en', 'All Seller Packages', 'All Seller Packages', '2020-11-10 09:14:10', '2020-11-10 09:14:10'),
(965, 'en', 'Add New Package', 'Add New Package', '2020-11-10 09:14:10', '2020-11-10 09:14:10'),
(966, 'en', 'Package Logo', 'Package Logo', '2020-11-10 09:14:10', '2020-11-10 09:14:10'),
(967, 'en', 'days', 'days', '2020-11-10 09:14:10', '2020-11-10 09:14:10'),
(968, 'en', 'Create New Seller Package', 'Create New Seller Package', '2020-11-10 09:14:31', '2020-11-10 09:14:31'),
(969, 'en', 'Package Name', 'Package Name', '2020-11-10 09:14:31', '2020-11-10 09:14:31'),
(970, 'en', 'Duration', 'Duration', '2020-11-10 09:14:31', '2020-11-10 09:14:31'),
(971, 'en', 'Validity in number of days', 'Validity in number of days', '2020-11-10 09:14:31', '2020-11-10 09:14:31'),
(972, 'en', 'Update Package Information', 'Update Package Information', '2020-11-10 09:14:59', '2020-11-10 09:14:59'),
(973, 'en', 'Package has been inserted successfully', 'Package has been inserted successfully', '2020-11-10 09:15:14', '2020-11-10 09:15:14'),
(974, 'en', 'Refund Request', 'Refund Request', '2020-11-10 09:17:25', '2020-11-10 09:17:25'),
(975, 'en', 'Reason', 'Reason', '2020-11-10 09:17:25', '2020-11-10 09:17:25'),
(976, 'en', 'Label', 'Label', '2020-11-10 09:20:13', '2020-11-10 09:20:13'),
(977, 'en', 'Select Label', 'Select Label', '2020-11-10 09:20:13', '2020-11-10 09:20:13'),
(978, 'en', 'Multiple Select Label', 'Multiple Select Label', '2020-11-10 09:20:13', '2020-11-10 09:20:13'),
(979, 'en', 'Radio Label', 'Radio Label', '2020-11-10 09:20:13', '2020-11-10 09:20:13'),
(980, 'en', 'Pickup Point Orders', 'Pickup Point Orders', '2020-11-10 09:25:40', '2020-11-10 09:25:40'),
(981, 'en', 'View', 'View', '2020-11-10 09:25:40', '2020-11-10 09:25:40'),
(982, 'en', 'Order #', 'Order #', '2020-11-10 09:25:48', '2020-11-10 09:25:48'),
(983, 'en', 'Order Status', 'Order Status', '2020-11-10 09:25:48', '2020-11-10 09:25:48'),
(984, 'en', 'Total amount', 'Total amount', '2020-11-10 09:25:48', '2020-11-10 09:25:48'),
(986, 'en', 'TOTAL', 'TOTAL', '2020-11-10 09:25:49', '2020-11-10 09:25:49'),
(987, 'en', 'Delivery status has been updated', 'Delivery status has been updated', '2020-11-10 09:25:49', '2020-11-10 09:25:49'),
(988, 'en', 'Payment status has been updated', 'Payment status has been updated', '2020-11-10 09:25:49', '2020-11-10 09:25:49'),
(989, 'en', 'INVOICE', 'INVOICE', '2020-11-10 09:25:58', '2020-11-10 09:25:58'),
(990, 'en', 'Set Refund Time', 'Set Refund Time', '2020-11-10 09:34:04', '2020-11-10 09:34:04'),
(991, 'en', 'Set Time for sending Refund Request', 'Set Time for sending Refund Request', '2020-11-10 09:34:04', '2020-11-10 09:34:04'),
(992, 'en', 'Set Refund Sticker', 'Set Refund Sticker', '2020-11-10 09:34:05', '2020-11-10 09:34:05'),
(993, 'en', 'Sticker', 'Sticker', '2020-11-10 09:34:05', '2020-11-10 09:34:05'),
(994, 'en', 'Refund Request All', 'Refund Request All', '2020-11-10 09:34:12', '2020-11-10 09:34:12'),
(995, 'en', 'Order Id', 'Order Id', '2020-11-10 09:34:12', '2020-11-10 09:34:12'),
(996, 'en', 'Seller Approval', 'Seller Approval', '2020-11-10 09:34:12', '2020-11-10 09:34:12'),
(997, 'en', 'Admin Approval', 'Admin Approval', '2020-11-10 09:34:12', '2020-11-10 09:34:12'),
(998, 'en', 'Refund Status', 'Refund Status', '2020-11-10 09:34:12', '2020-11-10 09:34:12'),
(1000, 'en', 'No Refund', 'No Refund', '2020-11-10 09:35:27', '2020-11-10 09:35:27'),
(1001, 'en', 'Status updated successfully', 'Status updated successfully', '2020-11-10 09:54:20', '2020-11-10 09:54:20'),
(1002, 'en', 'User Search Report', 'User Search Report', '2020-11-11 06:43:24', '2020-11-11 06:43:24'),
(1003, 'en', 'Search By', 'Search By', '2020-11-11 06:43:24', '2020-11-11 06:43:24'),
(1004, 'en', 'Number searches', 'Number searches', '2020-11-11 06:43:24', '2020-11-11 06:43:24'),
(1005, 'en', 'Sender', 'Sender', '2020-11-11 06:51:49', '2020-11-11 06:51:49'),
(1006, 'en', 'Receiver', 'Receiver', '2020-11-11 06:51:49', '2020-11-11 06:51:49'),
(1007, 'en', 'Verification form updated successfully', 'Verification form updated successfully', '2020-11-11 06:53:29', '2020-11-11 06:53:29'),
(1008, 'en', 'Invalid email or password', 'Invalid email or password', '2020-11-11 07:07:49', '2020-11-11 07:07:49'),
(1009, 'en', 'All Coupons', 'All Coupons', '2020-11-11 07:14:04', '2020-11-11 07:14:04'),
(1010, 'en', 'Add New Coupon', 'Add New Coupon', '2020-11-11 07:14:04', '2020-11-11 07:14:04'),
(1011, 'en', 'Coupon Information', 'Coupon Information', '2020-11-11 07:14:04', '2020-11-11 07:14:04'),
(1012, 'en', 'Start Date', 'Start Date', '2020-11-11 07:14:04', '2020-11-11 07:14:04'),
(1013, 'en', 'End Date', 'End Date', '2020-11-11 07:14:05', '2020-11-11 07:14:05'),
(1014, 'en', 'Product Base', 'Product Base', '2020-11-11 07:14:05', '2020-11-11 07:14:05'),
(1015, 'en', 'Send Newsletter', 'Send Newsletter', '2020-11-11 07:14:10', '2020-11-11 07:14:10'),
(1016, 'en', 'Mobile Users', 'Mobile Users', '2020-11-11 07:14:10', '2020-11-11 07:14:10'),
(1017, 'en', 'SMS subject', 'SMS subject', '2020-11-11 07:14:10', '2020-11-11 07:14:10'),
(1018, 'en', 'SMS content', 'SMS content', '2020-11-11 07:14:10', '2020-11-11 07:14:10'),
(1019, 'en', 'All Flash Delas', 'All Flash Delas', '2020-11-11 07:16:06', '2020-11-11 07:16:06'),
(1020, 'en', 'Create New Flash Dela', 'Create New Flash Dela', '2020-11-11 07:16:06', '2020-11-11 07:16:06'),
(1022, 'en', 'Page Link', 'Page Link', '2020-11-11 07:16:06', '2020-11-11 07:16:06'),
(1023, 'en', 'Flash Deal Information', 'Flash Deal Information', '2020-11-11 07:16:14', '2020-11-11 07:16:14'),
(1024, 'en', 'Background Color', 'Background Color', '2020-11-11 07:16:14', '2020-11-11 07:16:14'),
(1025, 'en', '#0000ff', '#0000ff', '2020-11-11 07:16:14', '2020-11-11 07:16:14'),
(1026, 'en', 'Text Color', 'Text Color', '2020-11-11 07:16:14', '2020-11-11 07:16:14'),
(1027, 'en', 'White', 'White', '2020-11-11 07:16:14', '2020-11-11 07:16:14'),
(1028, 'en', 'Dark', 'Dark', '2020-11-11 07:16:15', '2020-11-11 07:16:15'),
(1029, 'en', 'Choose Products', 'Choose Products', '2020-11-11 07:16:15', '2020-11-11 07:16:15'),
(1030, 'en', 'Discounts', 'Discounts', '2020-11-11 07:16:20', '2020-11-11 07:16:20'),
(1031, 'en', 'Discount Type', 'Discount Type', '2020-11-11 07:16:20', '2020-11-11 07:16:20'),
(1032, 'en', 'Twillo Credential', 'Twillo Credential', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1033, 'en', 'TWILIO SID', 'TWILIO SID', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1034, 'en', 'TWILIO AUTH TOKEN', 'TWILIO AUTH TOKEN', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1035, 'en', 'TWILIO VERIFY SID', 'TWILIO VERIFY SID', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1036, 'en', 'VALID TWILLO NUMBER', 'VALID TWILLO NUMBER', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1037, 'en', 'Nexmo Credential', 'Nexmo Credential', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1038, 'en', 'NEXMO KEY', 'NEXMO KEY', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1039, 'en', 'NEXMO SECRET', 'NEXMO SECRET', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1040, 'en', 'SSL Wireless Credential', 'SSL Wireless Credential', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1041, 'en', 'SSL SMS API TOKEN', 'SSL SMS API TOKEN', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1042, 'en', 'SSL SMS SID', 'SSL SMS SID', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1043, 'en', 'SSL SMS URL', 'SSL SMS URL', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1044, 'en', 'Fast2SMS Credential', 'Fast2SMS Credential', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1045, 'en', 'AUTH KEY', 'AUTH KEY', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1046, 'en', 'ROUTE', 'ROUTE', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1047, 'en', 'Promotional Use', 'Promotional Use', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1048, 'en', 'Transactional Use', 'Transactional Use', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1050, 'en', 'SENDER ID', 'SENDER ID', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1051, 'en', 'Nexmo OTP', 'Nexmo OTP', '2020-11-11 07:17:42', '2020-11-11 07:17:42'),
(1052, 'en', 'Twillo OTP', 'Twillo OTP', '2020-11-11 07:17:43', '2020-11-11 07:17:43'),
(1053, 'en', 'SSL Wireless OTP', 'SSL Wireless OTP', '2020-11-11 07:17:43', '2020-11-11 07:17:43'),
(1054, 'en', 'Fast2SMS OTP', 'Fast2SMS OTP', '2020-11-11 07:17:43', '2020-11-11 07:17:43'),
(1055, 'en', 'Order Placement', 'Order Placement', '2020-11-11 07:17:43', '2020-11-11 07:17:43'),
(1056, 'en', 'Delivery Status Changing Time', 'Delivery Status Changing Time', '2020-11-11 07:17:43', '2020-11-11 07:17:43'),
(1057, 'en', 'Paid Status Changing Time', 'Paid Status Changing Time', '2020-11-11 07:17:43', '2020-11-11 07:17:43'),
(1058, 'en', 'Send Bulk SMS', 'Send Bulk SMS', '2020-11-11 07:19:14', '2020-11-11 07:19:14'),
(1059, 'en', 'All Subscribers', 'All Subscribers', '2020-11-11 07:21:51', '2020-11-11 07:21:51'),
(1060, 'en', 'Coupon Information Adding', 'Coupon Information Adding', '2020-11-11 07:22:25', '2020-11-11 07:22:25'),
(1061, 'en', 'Coupon Type', 'Coupon Type', '2020-11-11 07:22:25', '2020-11-11 07:22:25'),
(1062, 'en', 'For Products', 'For Products', '2020-11-11 07:22:25', '2020-11-11 07:22:25'),
(1063, 'en', 'For Total Orders', 'For Total Orders', '2020-11-11 07:22:25', '2020-11-11 07:22:25'),
(1064, 'en', 'Add Your Product Base Coupon', 'Add Your Product Base Coupon', '2020-11-11 07:22:42', '2020-11-11 07:22:42'),
(1065, 'en', 'Coupon code', 'Coupon code', '2020-11-11 07:22:42', '2020-11-11 07:22:42'),
(1066, 'en', 'Sub Category', 'Sub Category', '2020-11-11 07:22:42', '2020-11-11 07:22:42'),
(1067, 'en', 'Add More', 'Add More', '2020-11-11 07:22:43', '2020-11-11 07:22:43'),
(1068, 'en', 'Add Your Cart Base Coupon', 'Add Your Cart Base Coupon', '2020-11-11 07:29:40', '2020-11-11 07:29:40'),
(1069, 'en', 'Minimum Shopping', 'Minimum Shopping', '2020-11-11 07:29:40', '2020-11-11 07:29:40'),
(1070, 'en', 'Maximum Discount Amount', 'Maximum Discount Amount', '2020-11-11 07:29:41', '2020-11-11 07:29:41'),
(1071, 'en', 'Coupon Information Update', 'Coupon Information Update', '2020-11-11 08:18:34', '2020-11-11 08:18:34'),
(1073, 'en', 'Please Configure SMTP Setting to work all email sending funtionality', 'Please Configure SMTP Setting to work all email sending funtionality', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1074, 'en', 'Configure Now', 'Configure Now', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1076, 'en', 'Total published products', 'Total published products', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1077, 'en', 'Total sellers products', 'Total sellers products', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1078, 'en', 'Total admin products', 'Total admin products', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1079, 'en', 'Manage Products', 'Manage Products', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1080, 'en', 'Total product category', 'Total product category', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1081, 'en', 'Create Category', 'Create Category', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1082, 'en', 'Total product sub sub category', 'Total product sub sub category', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1083, 'en', 'Create Sub Sub Category', 'Create Sub Sub Category', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1084, 'en', 'Total product sub category', 'Total product sub category', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1085, 'en', 'Create Sub Category', 'Create Sub Category', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1086, 'en', 'Total product brand', 'Total product brand', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1087, 'en', 'Create Brand', 'Create Brand', '2020-11-11 13:10:18', '2020-11-11 13:10:18'),
(1089, 'en', 'Total sellers', 'Total sellers', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1091, 'en', 'Total approved sellers', 'Total approved sellers', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1093, 'en', 'Total pending sellers', 'Total pending sellers', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1094, 'en', 'Manage Sellers', 'Manage Sellers', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1095, 'en', 'Category wise product sale', 'Category wise product sale', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1097, 'en', 'Sale', 'Sale', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1098, 'en', 'Category wise product stock', 'Category wise product stock', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1099, 'en', 'Category Name', 'Category Name', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1100, 'en', 'Stock', 'Stock', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1101, 'en', 'Frontend', 'Frontend', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1103, 'en', 'Home page', 'Home page', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1104, 'en', 'setting', 'setting', '2020-11-11 13:10:19', '2020-11-11 13:10:19'),
(1106, 'en', 'Policy page', 'Policy page', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1107, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1109, 'en', 'General', 'General', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1110, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1111, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1112, 'en', 'Useful link', 'Useful link', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1113, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1114, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1115, 'en', 'Activation', 'Activation', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1116, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1117, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1118, 'en', 'SMTP', 'SMTP', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1119, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1120, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1121, 'en', 'Payment method', 'Payment method', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1122, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1123, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1124, 'en', 'Social media', 'Social media', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1125, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1126, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1127, 'en', 'Business', 'Business', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1128, 'en', 'setting', 'setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1130, 'en', 'setting', 'setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1131, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1132, 'en', 'Seller verification', 'Seller verification', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1133, 'en', 'form setting', 'form setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1134, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1135, 'en', 'Language', 'Language', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1136, 'en', 'setting', 'setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1137, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1139, 'en', 'setting', 'setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1140, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1141, 'en', 'Dashboard', 'Dashboard', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1142, 'en', 'POS System', 'POS System', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1143, 'en', 'POS Manager', 'POS Manager', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1144, 'en', 'POS Configuration', 'POS Configuration', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1145, 'en', 'Products', 'Products', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1146, 'en', 'Add New product', 'Add New product', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1147, 'en', 'All Products', 'All Products', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1148, 'en', 'In House Products', 'In House Products', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1149, 'en', 'Seller Products', 'Seller Products', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1150, 'en', 'Digital Products', 'Digital Products', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1151, 'en', 'Bulk Import', 'Bulk Import', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1152, 'en', 'Bulk Export', 'Bulk Export', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1153, 'en', 'Category', 'Category', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1154, 'en', 'Subcategory', 'Subcategory', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1155, 'en', 'Sub Subcategory', 'Sub Subcategory', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1156, 'en', 'Brand', 'Brand', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1157, 'en', 'Attribute', 'Attribute', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1158, 'en', 'Product Reviews', 'Product Reviews', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1159, 'en', 'Sales', 'Sales', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1160, 'en', 'All Orders', 'All Orders', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1161, 'en', 'Inhouse orders', 'Inhouse orders', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1162, 'en', 'Seller Orders', 'Seller Orders', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1163, 'en', 'Pick-up Point Order', 'Pick-up Point Order', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1164, 'en', 'Refunds', 'Refunds', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1165, 'en', 'Refund Requests', 'Refund Requests', '2020-11-11 13:10:22', '2020-11-11 13:10:22'),
(1166, 'en', 'Approved Refund', 'Approved Refund', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1167, 'en', 'Refund Configuration', 'Refund Configuration', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1168, 'en', 'Customers', 'Customers', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1169, 'en', 'Customer list', 'Customer list', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1170, 'en', 'Classified Products', 'Classified Products', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1171, 'en', 'Classified Packages', 'Classified Packages', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1172, 'en', 'Sellers', 'Sellers', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1173, 'en', 'All Seller', 'All Seller', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1174, 'en', 'Payouts', 'Payouts', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1175, 'en', 'Payout Requests', 'Payout Requests', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1176, 'en', 'Seller Commission', 'Seller Commission', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1177, 'en', 'Seller Packages', 'Seller Packages', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1178, 'en', 'Seller Verification Form', 'Seller Verification Form', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1179, 'en', 'Reports', 'Reports', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1180, 'en', 'In House Product Sale', 'In House Product Sale', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1181, 'en', 'Seller Products Sale', 'Seller Products Sale', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1182, 'en', 'Products Stock', 'Products Stock', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1183, 'en', 'Products wishlist', 'Products wishlist', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1184, 'en', 'User Searches', 'User Searches', '2020-11-11 13:10:23', '2020-11-11 13:10:23'),
(1185, 'en', 'Marketing', 'Marketing', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1186, 'en', 'Flash deals', 'Flash deals', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1187, 'en', 'Newsletters', 'Newsletters', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1188, 'en', 'Bulk SMS', 'Bulk SMS', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1189, 'en', 'Subscribers', 'Subscribers', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1190, 'en', 'Coupon', 'Coupon', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1191, 'en', 'Support', 'Support', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1192, 'en', 'Ticket', 'Ticket', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1193, 'en', 'Product Queries', 'Product Queries', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1194, 'en', 'Website Setup', 'Website Setup', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1195, 'en', 'Header', 'Header', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1196, 'en', 'Footer', 'Footer', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1197, 'en', 'Pages', 'Pages', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1198, 'en', 'Appearance', 'Appearance', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1199, 'en', 'Setup & Configurations', 'Setup & Configurations', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1200, 'en', 'General Settings', 'General Settings', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1201, 'en', 'Features activation', 'Features activation', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1202, 'en', 'Languages', 'Languages', '2020-11-11 13:10:24', '2020-11-11 13:10:24'),
(1203, 'en', 'Currency', 'Currency', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1204, 'en', 'Pickup point', 'Pickup point', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1205, 'en', 'SMTP Settings', 'SMTP Settings', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1206, 'en', 'Payment Methods', 'Payment Methods', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1207, 'en', 'File System Configuration', 'File System Configuration', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1208, 'en', 'Social media Logins', 'Social media Logins', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1209, 'en', 'Analytics Tools', 'Analytics Tools', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1210, 'en', 'Facebook Chat', 'Facebook Chat', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1211, 'en', 'Google reCAPTCHA', 'Google reCAPTCHA', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1212, 'en', 'Shipping Configuration', 'Shipping Configuration', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1213, 'en', 'Shipping Countries', 'Shipping Countries', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1214, 'en', 'Affiliate System', 'Affiliate System', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1215, 'en', 'Affiliate Registration Form', 'Affiliate Registration Form', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1216, 'en', 'Affiliate Configurations', 'Affiliate Configurations', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1217, 'en', 'Affiliate Users', 'Affiliate Users', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1218, 'en', 'Referral Users', 'Referral Users', '2020-11-11 13:10:25', '2020-11-11 13:10:25'),
(1219, 'en', 'Affiliate Withdraw Requests', 'Affiliate Withdraw Requests', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1220, 'en', 'Offline Payment System', 'Offline Payment System', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1221, 'en', 'Manual Payment Methods', 'Manual Payment Methods', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1222, 'en', 'Offline Wallet Recharge', 'Offline Wallet Recharge', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1223, 'en', 'Offline Customer Package Payments', 'Offline Customer Package Payments', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1224, 'en', 'Offline Seller Package Payments', 'Offline Seller Package Payments', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1225, 'en', 'Paytm Payment Gateway', 'Paytm Payment Gateway', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1226, 'en', 'Set Paytm Credentials', 'Set Paytm Credentials', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1227, 'en', 'Club Point System', 'Club Point System', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1228, 'en', 'Club Point Configurations', 'Club Point Configurations', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1229, 'en', 'Set Product Point', 'Set Product Point', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1230, 'en', 'User Points', 'User Points', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1231, 'en', 'OTP System', 'OTP System', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1232, 'en', 'OTP Configurations', 'OTP Configurations', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1233, 'en', 'Set OTP Credentials', 'Set OTP Credentials', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1234, 'en', 'Staffs', 'Staffs', '2020-11-11 13:10:26', '2020-11-11 13:10:26'),
(1235, 'en', 'All staffs', 'All staffs', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1236, 'en', 'Staff permissions', 'Staff permissions', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1237, 'en', 'Addon Manager', 'Addon Manager', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1238, 'en', 'Browse Website', 'Browse Website', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1239, 'en', 'POS', 'POS', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1240, 'en', 'Notifications', 'Notifications', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1241, 'en', 'new orders', 'new orders', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1242, 'en', 'user-image', 'user-image', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1243, 'en', 'Profile', 'Profile', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1244, 'en', 'Logout', 'Logout', '2020-11-11 13:10:27', '2020-11-11 13:10:27'),
(1247, 'en', 'Page Not Found!', 'Page Not Found!', '2020-11-11 13:10:28', '2020-11-11 13:10:28'),
(1249, 'en', 'The page you are looking for has not been found on our server.', 'The page you are looking for has not been found on our server.', '2020-11-11 13:10:28', '2020-11-11 13:10:28'),
(1253, 'en', 'Registration', 'Registration', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1255, 'en', 'I am shopping for...', 'I am shopping for...', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1257, 'en', 'Compare', 'Compare', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1259, 'en', 'Wishlist', 'Wishlist', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1261, 'en', 'Cart', 'Cart', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1263, 'en', 'Your Cart is empty', 'Your Cart is empty', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1265, 'en', 'Categories', 'Categories', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1267, 'en', 'See All', 'See All', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1269, 'en', 'Seller Policy', 'Seller Policy', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1271, 'en', 'Return Policy', 'Return Policy', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1273, 'en', 'Support Policy', 'Support Policy', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1275, 'en', 'Privacy Policy', 'Privacy Policy', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1277, 'en', 'Your Email Address', 'Your Email Address', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1279, 'en', 'Subscribe', 'Subscribe', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1281, 'en', 'Contact Info', 'Contact Info', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1283, 'en', 'Address', 'Address', '2020-11-11 13:10:29', '2020-11-11 13:10:29'),
(1285, 'en', 'Phone', 'Phone', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1287, 'en', 'Email', 'Email', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1288, 'en', 'Login', 'Login', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1289, 'en', 'My Account', 'My Account', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1291, 'en', 'Login', 'Login', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1293, 'en', 'Order History', 'Order History', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1295, 'en', 'My Wishlist', 'My Wishlist', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1297, 'en', 'Track Order', 'Track Order', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1299, 'en', 'Be an affiliate partner', 'Be an affiliate partner', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1301, 'en', 'Be a Seller', 'Be a Seller', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1303, 'en', 'Apply Now', 'Apply Now', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1305, 'en', 'Confirmation', 'Confirmation', '2020-11-11 13:10:30', '2020-11-11 13:10:30');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(1307, 'en', 'Delete confirmation message', 'Delete confirmation message', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1309, 'en', 'Cancel', 'Cancel', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1312, 'en', 'Delete', 'Delete', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1313, 'en', 'Item has been added to compare list', 'Item has been added to compare list', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1314, 'en', 'Please login first', 'Please login first', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1315, 'en', 'Total Earnings From', 'Total Earnings From', '2020-11-12 08:01:11', '2020-11-12 08:01:11'),
(1316, 'en', 'Client Subscription', 'Client Subscription', '2020-11-12 08:01:12', '2020-11-12 08:01:12'),
(1317, 'en', 'Product category', 'Product category', '2020-11-12 08:03:46', '2020-11-12 08:03:46'),
(1318, 'en', 'Product sub sub category', 'Product sub sub category', '2020-11-12 08:03:46', '2020-11-12 08:03:46'),
(1319, 'en', 'Product sub category', 'Product sub category', '2020-11-12 08:03:46', '2020-11-12 08:03:46'),
(1320, 'en', 'Product brand', 'Product brand', '2020-11-12 08:03:46', '2020-11-12 08:03:46'),
(1321, 'en', 'Top Client Packages', 'Top Client Packages', '2020-11-12 08:05:21', '2020-11-12 08:05:21'),
(1322, 'en', 'Top Freelancer Packages', 'Top Freelancer Packages', '2020-11-12 08:05:21', '2020-11-12 08:05:21'),
(1323, 'en', 'Number of sale', 'Number of sale', '2020-11-12 09:13:09', '2020-11-12 09:13:09'),
(1324, 'en', 'Number of Stock', 'Number of Stock', '2020-11-12 09:16:02', '2020-11-12 09:16:02'),
(1325, 'en', 'Top 10 Products', 'Top 10 Products', '2020-11-12 10:02:29', '2020-11-12 10:02:29'),
(1326, 'en', 'Top 12 Products', 'Top 12 Products', '2020-11-12 10:02:39', '2020-11-12 10:02:39'),
(1327, 'en', 'Admin can not be a seller', 'Admin can not be a seller', '2020-11-12 11:30:19', '2020-11-12 11:30:19'),
(1328, 'en', 'Filter by Rating', 'Filter by Rating', '2020-11-15 08:01:15', '2020-11-15 08:01:15'),
(1329, 'en', 'Published reviews updated successfully', 'Published reviews updated successfully', '2020-11-15 08:01:15', '2020-11-15 08:01:15'),
(1330, 'en', 'Refund Sticker has been updated successfully', 'Refund Sticker has been updated successfully', '2020-11-15 08:17:12', '2020-11-15 08:17:12'),
(1331, 'en', 'Edit Product', 'Edit Product', '2020-11-15 10:31:54', '2020-11-15 10:31:54'),
(1332, 'en', 'Meta Images', 'Meta Images', '2020-11-15 10:32:12', '2020-11-15 10:32:12'),
(1333, 'en', 'Update Product', 'Update Product', '2020-11-15 10:32:12', '2020-11-15 10:32:12'),
(1334, 'en', 'Product has been deleted successfully', 'Product has been deleted successfully', '2020-11-15 10:32:57', '2020-11-15 10:32:57'),
(1335, 'en', 'Your Profile has been updated successfully!', 'Your Profile has been updated successfully!', '2020-11-15 11:10:42', '2020-11-15 11:10:42'),
(1336, 'en', 'Upload limit has been reached. Please upgrade your package.', 'Upload limit has been reached. Please upgrade your package.', '2020-11-15 11:13:45', '2020-11-15 11:13:45'),
(1337, 'en', 'Add Your Product', 'Add Your Product', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1338, 'en', 'Select a category', 'Select a category', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1339, 'en', 'Select a brand', 'Select a brand', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1340, 'en', 'Product Unit', 'Product Unit', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1341, 'en', 'Minimum Qty.', 'Minimum Qty.', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1342, 'en', 'Product Tag', 'Product Tag', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1343, 'en', 'Type & hit enter', 'Type & hit enter', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1344, 'en', 'Videos', 'Videos', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1345, 'en', 'Video From', 'Video From', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1346, 'en', 'Video URL', 'Video URL', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1347, 'en', 'Customer Choice', 'Customer Choice', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1348, 'en', 'PDF', 'PDF', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1349, 'en', 'Choose PDF', 'Choose PDF', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1350, 'en', 'Select Category', 'Select Category', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1351, 'en', 'Target Category', 'Target Category', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1352, 'en', 'subsubcategory', 'subsubcategory', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1353, 'en', 'Search Category', 'Search Category', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1354, 'en', 'Search SubCategory', 'Search SubCategory', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1355, 'en', 'Search SubSubCategory', 'Search SubSubCategory', '2020-11-15 11:17:56', '2020-11-15 11:17:56'),
(1356, 'en', 'Update your product', 'Update your product', '2020-11-15 11:39:14', '2020-11-15 11:39:14'),
(1357, 'en', 'Product has been updated successfully', 'Product has been updated successfully', '2020-11-15 11:51:36', '2020-11-15 11:51:36'),
(1358, 'en', 'Add Your Digital Product', 'Add Your Digital Product', '2020-11-15 12:24:21', '2020-11-15 12:24:21'),
(1359, 'en', 'Active eCommerce CMS Update Process', 'Active eCommerce CMS Update Process', '2020-11-16 07:53:31', '2020-11-16 07:53:31'),
(1361, 'en', 'Codecanyon purchase code', 'Codecanyon purchase code', '2020-11-16 07:53:31', '2020-11-16 07:53:31'),
(1362, 'en', 'Database Name', 'Database Name', '2020-11-16 07:53:31', '2020-11-16 07:53:31'),
(1363, 'en', 'Database Username', 'Database Username', '2020-11-16 07:53:31', '2020-11-16 07:53:31'),
(1364, 'en', 'Database Password', 'Database Password', '2020-11-16 07:53:31', '2020-11-16 07:53:31'),
(1365, 'en', 'Database Hostname', 'Database Hostname', '2020-11-16 07:53:31', '2020-11-16 07:53:31'),
(1366, 'en', 'Update Now', 'Update Now', '2020-11-16 07:53:31', '2020-11-16 07:53:31'),
(1368, 'en', 'Congratulations', 'Congratulations', '2020-11-16 07:55:14', '2020-11-16 07:55:14'),
(1369, 'en', 'You have successfully completed the updating process. Please Login to continue', 'You have successfully completed the updating process. Please Login to continue', '2020-11-16 07:55:14', '2020-11-16 07:55:14'),
(1370, 'en', 'Go to Home', 'Go to Home', '2020-11-16 07:55:14', '2020-11-16 07:55:14'),
(1371, 'en', 'Login to Admin panel', 'Login to Admin panel', '2020-11-16 07:55:14', '2020-11-16 07:55:14'),
(1372, 'en', 'S3 File System Credentials', 'S3 File System Credentials', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1373, 'en', 'AWS_ACCESS_KEY_ID', 'AWS_ACCESS_KEY_ID', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1374, 'en', 'AWS_SECRET_ACCESS_KEY', 'AWS_SECRET_ACCESS_KEY', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1375, 'en', 'AWS_DEFAULT_REGION', 'AWS_DEFAULT_REGION', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1376, 'en', 'AWS_BUCKET', 'AWS_BUCKET', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1377, 'en', 'AWS_URL', 'AWS_URL', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1378, 'en', 'S3 File System Activation', 'S3 File System Activation', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1379, 'en', 'Your phone number', 'Your phone number', '2020-11-17 05:50:10', '2020-11-17 05:50:10'),
(1380, 'en', 'Zip File', 'Zip File', '2020-11-17 06:58:45', '2020-11-17 06:58:45'),
(1381, 'en', 'Install', 'Install', '2020-11-17 06:58:45', '2020-11-17 06:58:45'),
(1382, 'en', 'This version is not capable of installing Addons, Please update.', 'This version is not capable of installing Addons, Please update.', '2020-11-17 06:59:11', '2020-11-17 06:59:11'),
(1383, 'en', 'Browse All Categories', 'Browse All Categories', '2021-02-09 09:01:58', '2021-02-09 09:01:58'),
(1384, 'en', 'Find Our Locations', 'Find Our Locations', '2021-02-09 09:01:58', '2021-02-09 09:01:58'),
(1385, 'en', 'To Get More Emersive', 'To Get More Emersive', '2021-02-09 09:01:58', '2021-02-09 09:01:58'),
(1386, 'en', 'Something went wrong!', 'Something went wrong!', '2021-03-27 01:20:28', '2021-03-27 01:20:28'),
(1387, 'en', 'Sorry for the inconvenience, but we\'re working on it.', 'Sorry for the inconvenience, but we\'re working on it.', '2021-03-27 01:20:28', '2021-03-27 01:20:28'),
(1388, 'en', 'Error code', 'Error code', '2021-03-27 01:20:28', '2021-03-27 01:20:28'),
(1389, 'en', 'Please Configure SMTP Setting to work all email sending functionality', 'Please Configure SMTP Setting to work all email sending functionality', '2021-03-27 01:21:02', '2021-03-27 01:21:02'),
(1390, 'en', 'Order', 'Order', '2021-03-27 01:21:02', '2021-03-27 01:21:02'),
(1391, 'en', 'Search in menu', 'Search in menu', '2021-03-27 01:21:03', '2021-03-27 01:21:03'),
(1392, 'en', 'Uploaded Files', 'Uploaded Files', '2021-03-27 01:21:03', '2021-03-27 01:21:03'),
(1393, 'en', 'Commission History', 'Commission History', '2021-03-27 01:21:03', '2021-03-27 01:21:03'),
(1394, 'en', 'Blog System', 'Blog System', '2021-03-27 01:21:03', '2021-03-27 01:21:03'),
(1395, 'en', 'All Posts', 'All Posts', '2021-03-27 01:21:03', '2021-03-27 01:21:03'),
(1396, 'en', 'Vat & TAX', 'Vat & TAX', '2021-03-27 01:21:03', '2021-03-27 01:21:03'),
(1397, 'en', 'Facebook Comment', 'Facebook Comment', '2021-03-27 01:21:03', '2021-03-27 01:21:03'),
(1398, 'en', 'Shipping Cities', 'Shipping Cities', '2021-03-27 01:21:03', '2021-03-27 01:21:03'),
(1399, 'en', 'System', 'System', '2021-03-27 01:21:03', '2021-03-27 01:21:03'),
(1400, 'en', 'Server status', 'Server status', '2021-03-27 01:21:03', '2021-03-27 01:21:03'),
(1401, 'en', 'Nothing Found', 'Nothing Found', '2021-03-27 01:21:03', '2021-03-27 01:21:03'),
(1402, 'en', 'Search your files', 'Search your files', '2021-03-27 01:21:11', '2021-03-27 01:21:11'),
(1403, 'en', 'Use Phone Instead', 'Use Phone Instead', '2021-03-27 02:51:54', '2021-03-27 02:51:54'),
(1404, 'en', 'Sendmail', 'Sendmail', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1405, 'en', 'Mailgun', 'Mailgun', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1406, 'en', 'MAIL HOST', 'MAIL HOST', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1407, 'en', 'MAIL PORT', 'MAIL PORT', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1408, 'en', 'MAIL USERNAME', 'MAIL USERNAME', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1409, 'en', 'MAIL PASSWORD', 'MAIL PASSWORD', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1410, 'en', 'MAIL ENCRYPTION', 'MAIL ENCRYPTION', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1411, 'en', 'MAIL FROM ADDRESS', 'MAIL FROM ADDRESS', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1412, 'en', 'MAIL FROM NAME', 'MAIL FROM NAME', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1413, 'en', 'MAILGUN DOMAIN', 'MAILGUN DOMAIN', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1414, 'en', 'MAILGUN SECRET', 'MAILGUN SECRET', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1415, 'en', 'Save Configuration', 'Save Configuration', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1416, 'en', 'Test SMTP configuration', 'Test SMTP configuration', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1417, 'en', 'Enter your email address', 'Enter your email address', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1418, 'en', 'Send test email', 'Send test email', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1419, 'en', 'Instruction', 'Instruction', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1420, 'en', 'Please be carefull when you are configuring SMTP. For incorrect configuration you will get error at the time of order place, new registration, sending newsletter.', 'Please be carefull when you are configuring SMTP. For incorrect configuration you will get error at the time of order place, new registration, sending newsletter.', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1421, 'en', 'For Non-SSL', 'For Non-SSL', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1422, 'en', 'Select sendmail for Mail Driver if you face any issue after configuring smtp as Mail Driver ', 'Select sendmail for Mail Driver if you face any issue after configuring smtp as Mail Driver ', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1423, 'en', 'Set Mail Host according to your server Mail Client Manual Settings', 'Set Mail Host according to your server Mail Client Manual Settings', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1424, 'en', 'Set Mail port as 587', 'Set Mail port as 587', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1425, 'en', 'Set Mail Encryption as ssl if you face issue with tls', 'Set Mail Encryption as ssl if you face issue with tls', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1426, 'en', 'For SSL', 'For SSL', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1427, 'en', 'Set Mail port as 465', 'Set Mail port as 465', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1428, 'en', 'Set Mail Encryption as ssl', 'Set Mail Encryption as ssl', '2021-03-27 03:41:40', '2021-03-27 03:41:40'),
(1429, 'en', 'Server information', 'Server information', '2021-03-27 04:21:02', '2021-03-27 04:21:02'),
(1430, 'en', 'Current Version', 'Current Version', '2021-03-27 04:21:02', '2021-03-27 04:21:02'),
(1431, 'en', 'Required Version', 'Required Version', '2021-03-27 04:21:02', '2021-03-27 04:21:02'),
(1432, 'en', 'php.ini Config', 'php.ini Config', '2021-03-27 04:21:02', '2021-03-27 04:21:02'),
(1433, 'en', 'Config Name', 'Config Name', '2021-03-27 04:21:02', '2021-03-27 04:21:02'),
(1434, 'en', 'Current', 'Current', '2021-03-27 04:21:02', '2021-03-27 04:21:02'),
(1435, 'en', 'Recommended', 'Recommended', '2021-03-27 04:21:02', '2021-03-27 04:21:02'),
(1436, 'en', 'Extensions information', 'Extensions information', '2021-03-27 04:21:02', '2021-03-27 04:21:02'),
(1437, 'en', 'Extension Name', 'Extension Name', '2021-03-27 04:21:02', '2021-03-27 04:21:02'),
(1438, 'en', 'Filesystem Permissions', 'Filesystem Permissions', '2021-03-27 04:21:02', '2021-03-27 04:21:02'),
(1439, 'en', 'File or Folder', 'File or Folder', '2021-03-27 04:21:02', '2021-03-27 04:21:02'),
(1440, 'en', 'System Default Currency', 'System Default Currency', '2021-03-27 04:22:42', '2021-03-27 04:22:42'),
(1441, 'en', 'Set Currency Formats', 'Set Currency Formats', '2021-03-27 04:22:42', '2021-03-27 04:22:42'),
(1442, 'en', 'Symbol Format', 'Symbol Format', '2021-03-27 04:22:42', '2021-03-27 04:22:42'),
(1443, 'en', 'Decimal Separator', 'Decimal Separator', '2021-03-27 04:22:42', '2021-03-27 04:22:42'),
(1444, 'en', 'No of decimals', 'No of decimals', '2021-03-27 04:22:42', '2021-03-27 04:22:42'),
(1445, 'en', 'All Currencies', 'All Currencies', '2021-03-27 04:22:42', '2021-03-27 04:22:42'),
(1446, 'en', 'Add New Currency', 'Add New Currency', '2021-03-27 04:22:42', '2021-03-27 04:22:42'),
(1447, 'en', 'Currency name', 'Currency name', '2021-03-27 04:22:42', '2021-03-27 04:22:42'),
(1448, 'en', 'Currency symbol', 'Currency symbol', '2021-03-27 04:22:42', '2021-03-27 04:22:42'),
(1449, 'en', 'Currency code', 'Currency code', '2021-03-27 04:22:42', '2021-03-27 04:22:42'),
(1450, 'en', 'Currency Status updated successfully', 'Currency Status updated successfully', '2021-03-27 04:22:42', '2021-03-27 04:22:42'),
(1451, 'en', 'All uploaded files', 'All uploaded files', '2021-03-27 04:23:23', '2021-03-27 04:23:23'),
(1452, 'en', 'Upload New File', 'Upload New File', '2021-03-27 04:23:23', '2021-03-27 04:23:23'),
(1453, 'en', 'All files', 'All files', '2021-03-27 04:23:23', '2021-03-27 04:23:23'),
(1454, 'en', 'Search', 'Search', '2021-03-27 04:23:23', '2021-03-27 04:23:23'),
(1455, 'en', 'Are you sure to delete this file?', 'Are you sure to delete this file?', '2021-03-27 04:23:23', '2021-03-27 04:23:23'),
(1456, 'en', 'File Info', 'File Info', '2021-03-27 04:23:23', '2021-03-27 04:23:23'),
(1457, 'en', 'Link copied to clipboard', 'Link copied to clipboard', '2021-03-27 04:23:23', '2021-03-27 04:23:23'),
(1458, 'en', 'Oops, unable to copy', 'Oops, unable to copy', '2021-03-27 04:23:23', '2021-03-27 04:23:23'),
(1459, 'en', 'Install/Update Addon', 'Install/Update Addon', '2021-03-27 04:23:29', '2021-03-27 04:23:29'),
(1460, 'en', 'No Addon Installed', 'No Addon Installed', '2021-03-27 04:23:29', '2021-03-27 04:23:29'),
(1461, 'en', 'Header Nav Menu', 'Header Nav Menu', '2021-03-27 04:23:46', '2021-03-27 04:23:46'),
(1462, 'en', 'Link with', 'Link with', '2021-03-27 04:23:46', '2021-03-27 04:23:46'),
(1463, 'en', 'Cookies Agreement', 'Cookies Agreement', '2021-03-27 04:29:48', '2021-03-27 04:29:48'),
(1464, 'en', 'Cookies Agreement Text', 'Cookies Agreement Text', '2021-03-27 04:29:48', '2021-03-27 04:29:48'),
(1465, 'en', 'Show Cookies Agreement?', 'Show Cookies Agreement?', '2021-03-27 04:29:48', '2021-03-27 04:29:48'),
(1466, 'en', 'Custom Script', 'Custom Script', '2021-03-27 04:29:48', '2021-03-27 04:29:48'),
(1467, 'en', 'Header custom script - before </head>', 'Header custom script - before </head>', '2021-03-27 04:29:48', '2021-03-27 04:29:48'),
(1468, 'en', 'Write script with <script> tag', 'Write script with <script> tag', '2021-03-27 04:29:48', '2021-03-27 04:29:48'),
(1469, 'en', 'Footer custom script - before </body>', 'Footer custom script - before </body>', '2021-03-27 04:29:48', '2021-03-27 04:29:48'),
(1470, 'en', 'Ok. I Understood', 'Ok. I Understood', '2021-03-27 04:30:00', '2021-03-27 04:30:00'),
(1471, 'en', 'Google Login Credential', 'Google Login Credential', '2021-03-27 04:30:25', '2021-03-27 04:30:25'),
(1472, 'en', 'Client ID', 'Client ID', '2021-03-27 04:30:25', '2021-03-27 04:30:25'),
(1473, 'en', 'Google Client ID', 'Google Client ID', '2021-03-27 04:30:25', '2021-03-27 04:30:25'),
(1474, 'en', 'Client Secret', 'Client Secret', '2021-03-27 04:30:25', '2021-03-27 04:30:25'),
(1475, 'en', 'Google Client Secret', 'Google Client Secret', '2021-03-27 04:30:25', '2021-03-27 04:30:25'),
(1476, 'en', 'Facebook Login Credential', 'Facebook Login Credential', '2021-03-27 04:30:25', '2021-03-27 04:30:25'),
(1477, 'en', 'App ID', 'App ID', '2021-03-27 04:30:25', '2021-03-27 04:30:25'),
(1478, 'en', 'Facebook Client ID', 'Facebook Client ID', '2021-03-27 04:30:25', '2021-03-27 04:30:25'),
(1479, 'en', 'App Secret', 'App Secret', '2021-03-27 04:30:25', '2021-03-27 04:30:25'),
(1480, 'en', 'Facebook Client Secret', 'Facebook Client Secret', '2021-03-27 04:30:25', '2021-03-27 04:30:25'),
(1481, 'en', 'Twitter Login Credential', 'Twitter Login Credential', '2021-03-27 04:30:25', '2021-03-27 04:30:25'),
(1482, 'en', 'Twitter Client ID', 'Twitter Client ID', '2021-03-27 04:30:25', '2021-03-27 04:30:25'),
(1483, 'en', 'Twitter Client Secret', 'Twitter Client Secret', '2021-03-27 04:30:25', '2021-03-27 04:30:25'),
(1484, 'en', 'Update your system', 'Update your system', '2021-03-27 04:30:34', '2021-03-27 04:30:34'),
(1485, 'en', 'Current verion', 'Current verion', '2021-03-27 04:30:34', '2021-03-27 04:30:34'),
(1486, 'en', 'Make sure your server has matched with all requirements.', 'Make sure your server has matched with all requirements.', '2021-03-27 04:30:34', '2021-03-27 04:30:34'),
(1487, 'en', 'Check Here', 'Check Here', '2021-03-27 04:30:34', '2021-03-27 04:30:34'),
(1488, 'en', 'Download latest version from codecanyon.', 'Download latest version from codecanyon.', '2021-03-27 04:30:34', '2021-03-27 04:30:34'),
(1489, 'en', 'Extract downloaded zip. You will find updates.zip file in those extraced files.', 'Extract downloaded zip. You will find updates.zip file in those extraced files.', '2021-03-27 04:30:34', '2021-03-27 04:30:34'),
(1490, 'en', 'Upload that zip file here and click update now.', 'Upload that zip file here and click update now.', '2021-03-27 04:30:34', '2021-03-27 04:30:34'),
(1491, 'en', 'If you are using any addon make sure to update those addons after updating.', 'If you are using any addon make sure to update those addons after updating.', '2021-03-27 04:30:34', '2021-03-27 04:30:34'),
(1492, 'en', 'Blog', 'Blog', '2021-03-27 04:36:41', '2021-03-27 04:36:41'),
(1493, 'en', 'Back to uploaded files', 'Back to uploaded files', '2021-03-27 05:10:22', '2021-03-27 05:10:22'),
(1494, 'en', 'Drag & drop your files', 'Drag & drop your files', '2021-03-27 05:10:22', '2021-03-27 05:10:22'),
(1495, 'en', 'HTTPS Activation', 'HTTPS Activation', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1496, 'en', 'Maintenance Mode', 'Maintenance Mode', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1497, 'en', 'Maintenance Mode Activation', 'Maintenance Mode Activation', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1498, 'en', 'Classified Product Activate', 'Classified Product Activate', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1499, 'en', 'Classified Product', 'Classified Product', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1500, 'en', 'Business Related', 'Business Related', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1501, 'en', 'Vendor System Activation', 'Vendor System Activation', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1502, 'en', 'Wallet System Activation', 'Wallet System Activation', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1503, 'en', 'Coupon System Activation', 'Coupon System Activation', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1504, 'en', 'Seller Product Manage By Admin', 'Seller Product Manage By Admin', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1505, 'en', 'After activate this option Cash On Delivery of Seller product will be managed by Admin', 'After activate this option Cash On Delivery of Seller product will be managed by Admin', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1506, 'en', 'Pickup Point Activation', 'Pickup Point Activation', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1507, 'en', 'Conversation Activation', 'Conversation Activation', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1508, 'en', 'Guest Checkout Activation', 'Guest Checkout Activation', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1509, 'en', 'Category-based Commission', 'Category-based Commission', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1510, 'en', 'After activate this option Seller commision will be disabled and You need to set commission on each category otherwise Admin will not get any commision', 'After activate this option Seller commision will be disabled and You need to set commission on each category otherwise Admin will not get any commision', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1511, 'en', 'Set Commisssion Now', 'Set Commisssion Now', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1512, 'en', 'Email Verification', 'Email Verification', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1513, 'en', 'Payment Related', 'Payment Related', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1514, 'en', 'Paypal Payment Activation', 'Paypal Payment Activation', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1515, 'en', 'You need to configure Paypal correctly to enable this feature', 'You need to configure Paypal correctly to enable this feature', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1516, 'en', 'Stripe Payment Activation', 'Stripe Payment Activation', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1517, 'en', 'SSlCommerz Activation', 'SSlCommerz Activation', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1518, 'en', 'Instamojo Payment Activation', 'Instamojo Payment Activation', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1519, 'en', 'You need to configure Instamojo Payment correctly to enable this feature', 'You need to configure Instamojo Payment correctly to enable this feature', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1520, 'en', 'Razor Pay Activation', 'Razor Pay Activation', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1521, 'en', 'You need to configure Razor correctly to enable this feature', 'You need to configure Razor correctly to enable this feature', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1522, 'en', 'PayStack Activation', 'PayStack Activation', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1523, 'en', 'You need to configure PayStack correctly to enable this feature', 'You need to configure PayStack correctly to enable this feature', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1524, 'en', 'VoguePay Activation', 'VoguePay Activation', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1525, 'en', 'You need to configure VoguePay correctly to enable this feature', 'You need to configure VoguePay correctly to enable this feature', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1526, 'en', 'Payhere Activation', 'Payhere Activation', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1527, 'en', 'Ngenius Activation', 'Ngenius Activation', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1528, 'en', 'You need to configure Ngenius correctly to enable this feature', 'You need to configure Ngenius correctly to enable this feature', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1529, 'en', 'Iyzico Activation', 'Iyzico Activation', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1530, 'en', 'You need to configure iyzico correctly to enable this feature', 'You need to configure iyzico correctly to enable this feature', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1531, 'en', 'Bkash Activation', 'Bkash Activation', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1532, 'en', 'You need to configure bkash correctly to enable this feature', 'You need to configure bkash correctly to enable this feature', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1533, 'en', 'Nagad Activation', 'Nagad Activation', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1534, 'en', 'You need to configure nagad correctly to enable this feature', 'You need to configure nagad correctly to enable this feature', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1535, 'en', 'Cash Payment Activation', 'Cash Payment Activation', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1536, 'en', 'Social Media Login', 'Social Media Login', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1537, 'en', 'Facebook login', 'Facebook login', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1538, 'en', 'You need to configure Facebook Client correctly to enable this feature', 'You need to configure Facebook Client correctly to enable this feature', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1539, 'en', 'Google login', 'Google login', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1540, 'en', 'You need to configure Google Client correctly to enable this feature', 'You need to configure Google Client correctly to enable this feature', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1541, 'en', 'Twitter login', 'Twitter login', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1542, 'en', 'You need to configure Twitter Client correctly to enable this feature', 'You need to configure Twitter Client correctly to enable this feature', '2021-03-27 05:17:34', '2021-03-27 05:17:34'),
(1543, 'en', 'Bkash Credential', 'Bkash Credential', '2021-03-27 05:19:02', '2021-03-27 05:19:02'),
(1544, 'en', 'BKASH CHECKOUT APP KEY', 'BKASH CHECKOUT APP KEY', '2021-03-27 05:19:02', '2021-03-27 05:19:02'),
(1545, 'en', 'BKASH CHECKOUT APP SECRET', 'BKASH CHECKOUT APP SECRET', '2021-03-27 05:19:02', '2021-03-27 05:19:02'),
(1546, 'en', 'BKASH CHECKOUT USER NAME', 'BKASH CHECKOUT USER NAME', '2021-03-27 05:19:02', '2021-03-27 05:19:02'),
(1547, 'en', 'BKASH CHECKOUT PASSWORD', 'BKASH CHECKOUT PASSWORD', '2021-03-27 05:19:02', '2021-03-27 05:19:02'),
(1548, 'en', 'Bkash Sandbox Mode', 'Bkash Sandbox Mode', '2021-03-27 05:19:02', '2021-03-27 05:19:02'),
(1549, 'en', 'Nagad Credential', 'Nagad Credential', '2021-03-27 05:19:03', '2021-03-27 05:19:03'),
(1550, 'en', 'NAGAD MODE', 'NAGAD MODE', '2021-03-27 05:19:03', '2021-03-27 05:19:03'),
(1551, 'en', 'NAGAD MERCHANT ID', 'NAGAD MERCHANT ID', '2021-03-27 05:19:03', '2021-03-27 05:19:03'),
(1552, 'en', 'NAGAD MERCHANT NUMBER', 'NAGAD MERCHANT NUMBER', '2021-03-27 05:19:03', '2021-03-27 05:19:03'),
(1553, 'en', 'NAGAD PG PUBLIC KEY', 'NAGAD PG PUBLIC KEY', '2021-03-27 05:19:03', '2021-03-27 05:19:03'),
(1554, 'en', 'NAGAD MERCHANT PRIVATE KEY', 'NAGAD MERCHANT PRIVATE KEY', '2021-03-27 05:19:03', '2021-03-27 05:19:03'),
(1555, 'en', 'PAYSTACK CURRENCY CODE', 'PAYSTACK CURRENCY CODE', '2021-03-27 05:19:03', '2021-03-27 05:19:03'),
(1556, 'en', 'Iyzico Credential', 'Iyzico Credential', '2021-03-27 05:19:03', '2021-03-27 05:19:03'),
(1557, 'en', 'IYZICO_API_KEY', 'IYZICO_API_KEY', '2021-03-27 05:19:03', '2021-03-27 05:19:03'),
(1558, 'en', 'IYZICO API KEY', 'IYZICO API KEY', '2021-03-27 05:19:03', '2021-03-27 05:19:03'),
(1559, 'en', 'IYZICO_SECRET_KEY', 'IYZICO_SECRET_KEY', '2021-03-27 05:19:03', '2021-03-27 05:19:03'),
(1560, 'en', 'IYZICO SECRET KEY', 'IYZICO SECRET KEY', '2021-03-27 05:19:03', '2021-03-27 05:19:03'),
(1561, 'en', 'IYZICO Sandbox Mode', 'IYZICO Sandbox Mode', '2021-03-27 05:19:03', '2021-03-27 05:19:03'),
(1562, 'en', 'update Language Info', 'update Language Info', '2021-03-27 05:23:20', '2021-03-27 05:23:20'),
(1563, 'en', 'Type key & Enter', 'Type key & Enter', '2021-03-27 05:23:45', '2021-03-27 05:23:45'),
(1564, 'en', 'All Taxes', 'All Taxes', '2021-03-27 05:24:15', '2021-03-27 05:24:15'),
(1565, 'en', 'Add New Tax', 'Add New Tax', '2021-03-27 05:24:15', '2021-03-27 05:24:15'),
(1566, 'en', 'Tax Type', 'Tax Type', '2021-03-27 05:24:15', '2021-03-27 05:24:15'),
(1567, 'en', 'Tax Name', 'Tax Name', '2021-03-27 05:24:15', '2021-03-27 05:24:15'),
(1568, 'en', 'Tax status updated successfully', 'Tax status updated successfully', '2021-03-27 05:24:15', '2021-03-27 05:24:15'),
(1569, 'en', 'Parent Category', 'Parent Category', '2021-03-27 05:37:03', '2021-03-27 05:37:03'),
(1570, 'en', 'Level', 'Level', '2021-03-27 05:37:03', '2021-03-27 05:37:03'),
(1571, 'en', 'Category Information', 'Category Information', '2021-03-27 05:37:25', '2021-03-27 05:37:25'),
(1572, 'en', 'Translatable', 'Translatable', '2021-03-27 05:37:25', '2021-03-27 05:37:25'),
(1573, 'en', 'No Parent', 'No Parent', '2021-03-27 05:37:25', '2021-03-27 05:37:25'),
(1574, 'en', 'Physical', 'Physical', '2021-03-27 05:37:25', '2021-03-27 05:37:25'),
(1575, 'en', 'Digital', 'Digital', '2021-03-27 05:37:25', '2021-03-27 05:37:25'),
(1576, 'en', '200x200', '200x200', '2021-03-27 05:37:25', '2021-03-27 05:37:25'),
(1577, 'en', '32x32', '32x32', '2021-03-27 05:37:25', '2021-03-27 05:37:25'),
(1578, 'en', 'Category has been updated successfully', 'Category has been updated successfully', '2021-03-27 05:39:04', '2021-03-27 05:39:04'),
(1579, 'en', 'Step 1', 'Step 1', '2021-03-27 05:42:21', '2021-03-27 05:42:21'),
(1580, 'en', 'Download the skeleton file and fill it with proper data', 'Download the skeleton file and fill it with proper data', '2021-03-27 05:42:21', '2021-03-27 05:42:21'),
(1581, 'en', 'You can download the example file to understand how the data must be filled', 'You can download the example file to understand how the data must be filled', '2021-03-27 05:42:21', '2021-03-27 05:42:21'),
(1582, 'en', 'Once you have downloaded and filled the skeleton file, upload it in the form below and submit', 'Once you have downloaded and filled the skeleton file, upload it in the form below and submit', '2021-03-27 05:42:21', '2021-03-27 05:42:21'),
(1583, 'en', 'After uploading products you need to edit them and set product\'s images and choices', 'After uploading products you need to edit them and set product\'s images and choices', '2021-03-27 05:42:21', '2021-03-27 05:42:21'),
(1584, 'en', 'Step 2', 'Step 2', '2021-03-27 05:42:21', '2021-03-27 05:42:21'),
(1585, 'en', 'Category and Brand should be in numerical id', 'Category and Brand should be in numerical id', '2021-03-27 05:42:21', '2021-03-27 05:42:21'),
(1586, 'en', 'You can download the pdf to get Category and Brand id', 'You can download the pdf to get Category and Brand id', '2021-03-27 05:42:21', '2021-03-27 05:42:21'),
(1587, 'en', 'Upload Product File', 'Upload Product File', '2021-03-27 05:42:21', '2021-03-27 05:42:21'),
(1588, 'en', 'Pickup Point Information', 'Pickup Point Information', '2021-03-27 05:53:37', '2021-03-27 05:53:37'),
(1589, 'en', 'Pickup Point Status', 'Pickup Point Status', '2021-03-27 05:53:37', '2021-03-27 05:53:37'),
(1590, 'en', 'Pick-up Point Manager', 'Pick-up Point Manager', '2021-03-27 05:53:37', '2021-03-27 05:53:37'),
(1591, 'en', 'This is used for search. Input those words by which cutomer can find this product.', 'This is used for search. Input those words by which cutomer can find this product.', '2021-03-27 06:05:29', '2021-03-27 06:05:29'),
(1592, 'en', 'These images are visible in product details page gallery. Use 600x600 sizes images.', 'These images are visible in product details page gallery. Use 600x600 sizes images.', '2021-03-27 06:05:29', '2021-03-27 06:05:29'),
(1593, 'en', 'This image is visible in all product box. Use 300x300 sizes image. Keep some blank space around main object of your image as we had to crop some edge in different devices to make it responsive.', 'This image is visible in all product box. Use 300x300 sizes image. Keep some blank space around main object of your image as we had to crop some edge in different devices to make it responsive.', '2021-03-27 06:05:29', '2021-03-27 06:05:29'),
(1594, 'en', 'Use proper link without extra parameter. Don\'t use short share link/embeded iframe code.', 'Use proper link without extra parameter. Don\'t use short share link/embeded iframe code.', '2021-03-27 06:05:29', '2021-03-27 06:05:29'),
(1595, 'en', 'Product Wise Shipping', 'Product Wise Shipping', '2021-03-27 06:05:29', '2021-03-27 06:05:29'),
(1596, 'en', 'Low Stock Quantity Warning', 'Low Stock Quantity Warning', '2021-03-27 06:05:29', '2021-03-27 06:05:29'),
(1597, 'en', 'Stock Visibility State', 'Stock Visibility State', '2021-03-27 06:05:29', '2021-03-27 06:05:29'),
(1598, 'en', 'Show Stock Quantity', 'Show Stock Quantity', '2021-03-27 06:05:29', '2021-03-27 06:05:29'),
(1599, 'en', 'Show Stock With Text Only', 'Show Stock With Text Only', '2021-03-27 06:05:29', '2021-03-27 06:05:29'),
(1600, 'en', 'Hide Stock', 'Hide Stock', '2021-03-27 06:05:29', '2021-03-27 06:05:29'),
(1601, 'en', 'Flash Deal', 'Flash Deal', '2021-03-27 06:05:29', '2021-03-27 06:05:29'),
(1602, 'en', 'Add To Flash', 'Add To Flash', '2021-03-27 06:05:29', '2021-03-27 06:05:29'),
(1603, 'en', 'Estimate Shipping Time', 'Estimate Shipping Time', '2021-03-27 06:05:29', '2021-03-27 06:05:29'),
(1604, 'en', 'Shipping Days', 'Shipping Days', '2021-03-27 06:05:29', '2021-03-27 06:05:29'),
(1605, 'en', 'Save As Draft', 'Save As Draft', '2021-03-27 06:05:29', '2021-03-27 06:05:29'),
(1606, 'en', 'Save & Unpublish', 'Save & Unpublish', '2021-03-27 06:05:29', '2021-03-27 06:05:29'),
(1607, 'en', 'Save & Publish', 'Save & Publish', '2021-03-27 06:05:29', '2021-03-27 06:05:29'),
(1608, 'en', 'Search result for ', 'Search result for ', '2021-03-28 01:15:25', '2021-03-28 01:15:25'),
(1609, 'en', 'An email has been sent.', 'An email has been sent.', '2021-03-28 11:10:27', '2021-03-28 11:10:27'),
(1610, 'en', 'Support Desk', 'Support Desk', '2021-03-28 11:18:34', '2021-03-28 11:18:34'),
(1611, 'en', 'Type ticket code & Enter', 'Type ticket code & Enter', '2021-03-28 11:18:34', '2021-03-28 11:18:34'),
(1612, 'en', 'User', 'User', '2021-03-28 11:18:34', '2021-03-28 11:18:34'),
(1613, 'en', 'Last reply', 'Last reply', '2021-03-28 11:18:34', '2021-03-28 11:18:34'),
(1614, 'en', 'Forgot password ?', 'Forgot password ?', '2021-03-29 01:50:05', '2021-03-29 01:50:05'),
(1615, 'en', 'Add New Seller', 'Add New Seller', '2021-03-31 07:00:35', '2021-03-31 07:00:35'),
(1616, 'en', 'Filter by Approval', 'Filter by Approval', '2021-03-31 07:00:35', '2021-03-31 07:00:35'),
(1617, 'en', 'Non-Approved', 'Non-Approved', '2021-03-31 07:00:35', '2021-03-31 07:00:35'),
(1618, 'en', 'Type name or email & Enter', 'Type name or email & Enter', '2021-03-31 07:00:35', '2021-03-31 07:00:35'),
(1619, 'en', 'Due to seller', 'Due to seller', '2021-03-31 07:00:35', '2021-03-31 07:00:35'),
(1620, 'en', 'Log in as this Seller', 'Log in as this Seller', '2021-03-31 07:00:35', '2021-03-31 07:00:35'),
(1621, 'en', 'Go to Payment', 'Go to Payment', '2021-03-31 07:00:35', '2021-03-31 07:00:35'),
(1622, 'en', 'Ban this seller', 'Ban this seller', '2021-03-31 07:00:35', '2021-03-31 07:00:35'),
(1623, 'en', 'Do you really want to ban this seller?', 'Do you really want to ban this seller?', '2021-03-31 07:00:35', '2021-03-31 07:00:35'),
(1624, 'en', 'Proceed!', 'Proceed!', '2021-03-31 07:00:35', '2021-03-31 07:00:35'),
(1625, 'en', 'Approved sellers updated successfully', 'Approved sellers updated successfully', '2021-03-31 07:00:35', '2021-03-31 07:00:35'),
(1626, 'en', 'Your Shop has been created successfully!', 'Your Shop has been created successfully!', '2021-03-31 07:03:33', '2021-03-31 07:03:33'),
(1627, 'en', 'Shop Logo', 'Shop Logo', '2021-03-31 07:03:33', '2021-03-31 07:03:33'),
(1628, 'en', 'Shop Address', 'Shop Address', '2021-03-31 07:03:33', '2021-03-31 07:03:33'),
(1629, 'en', 'Banner Settings', 'Banner Settings', '2021-03-31 07:03:33', '2021-03-31 07:03:33'),
(1630, 'en', 'Banners', 'Banners', '2021-03-31 07:03:33', '2021-03-31 07:03:33'),
(1631, 'en', 'We had to limit height to maintian consistancy. In some device both side of the banner might be cropped for height limitation.', 'We had to limit height to maintian consistancy. In some device both side of the banner might be cropped for height limitation.', '2021-03-31 07:03:33', '2021-03-31 07:03:33'),
(1632, 'en', 'Insert link with https ', 'Insert link with https ', '2021-03-31 07:03:33', '2021-03-31 07:03:33'),
(1633, 'en', 'Your Shop has been updated successfully!', 'Your Shop has been updated successfully!', '2021-03-31 07:08:29', '2021-03-31 07:08:29'),
(1634, 'en', 'has not been verified yet.', 'has not been verified yet.', '2021-03-31 07:08:43', '2021-03-31 07:08:43'),
(1635, 'en', 'Edit Seller Information', 'Edit Seller Information', '2021-03-31 07:09:33', '2021-03-31 07:09:33'),
(1636, 'en', 'Seller Information', 'Seller Information', '2021-03-31 07:09:33', '2021-03-31 07:09:33'),
(1637, 'en', 'Save Product', 'Save Product', '2021-03-31 07:14:36', '2021-03-31 07:14:36'),
(1638, 'en', 'Add New Brand', 'Add New Brand', '2021-03-31 07:16:21', '2021-03-31 07:16:21'),
(1639, 'en', '120x80', '120x80', '2021-03-31 07:16:21', '2021-03-31 07:16:21'),
(1640, 'en', 'Brand Information', 'Brand Information', '2021-03-31 07:16:31', '2021-03-31 07:16:31'),
(1641, 'en', 'Brand has been updated successfully', 'Brand has been updated successfully', '2021-03-31 07:18:35', '2021-03-31 07:18:35'),
(1642, 'en', 'Product has been inserted successfully', 'Product has been inserted successfully', '2021-03-31 07:25:51', '2021-03-31 07:25:51'),
(1643, 'en', 'Info', 'Info', '2021-03-31 07:30:34', '2021-03-31 07:30:34'),
(1644, 'en', 'All Attributes', 'All Attributes', '2021-03-31 07:31:34', '2021-03-31 07:31:34'),
(1645, 'en', 'Add New Attribute', 'Add New Attribute', '2021-03-31 07:31:34', '2021-03-31 07:31:34'),
(1646, 'en', 'Attribute has been inserted successfully', 'Attribute has been inserted successfully', '2021-03-31 07:32:05', '2021-03-31 07:32:05'),
(1647, 'en', 'Attribute Information', 'Attribute Information', '2021-03-31 07:33:31', '2021-03-31 07:33:31'),
(1648, 'en', 'Attribute has been updated successfully', 'Attribute has been updated successfully', '2021-03-31 07:34:18', '2021-03-31 07:34:18'),
(1649, 'en', 'Registration successfull.', 'Registration successfull.', '2021-03-31 07:43:40', '2021-03-31 07:43:40'),
(1650, 'en', 'Password Reset', 'Password Reset', '2021-03-31 10:28:33', '2021-03-31 10:28:33'),
(1651, 'en', 'Reset Password', 'Reset Password', '2021-03-31 10:28:33', '2021-03-31 10:28:33'),
(1652, 'en', 'Enter your email address and new password and confirm password.', 'Enter your email address and new password and confirm password.', '2021-03-31 10:28:33', '2021-03-31 10:28:33'),
(1653, 'en', 'Password updated successfully', 'Password updated successfully', '2021-03-31 10:30:24', '2021-03-31 10:30:24'),
(1654, 'en', 'Staff Information', 'Staff Information', '2021-03-31 10:31:36', '2021-03-31 10:31:36'),
(1655, 'en', 'All Flash Deals', 'All Flash Deals', '2021-03-31 11:03:33', '2021-03-31 11:03:33'),
(1656, 'en', 'Create New Flash Deal', 'Create New Flash Deal', '2021-03-31 11:03:33', '2021-03-31 11:03:33'),
(1657, 'en', 'Add New Post', 'Add New Post', '2021-03-31 12:02:11', '2021-03-31 12:02:11'),
(1658, 'en', 'All blog posts', 'All blog posts', '2021-03-31 12:02:11', '2021-03-31 12:02:11'),
(1659, 'en', 'Short Description', 'Short Description', '2021-03-31 12:02:11', '2021-03-31 12:02:11'),
(1660, 'en', 'Change blog status successfully', 'Change blog status successfully', '2021-03-31 12:02:11', '2021-03-31 12:02:11'),
(1661, 'en', 'Blog Information', 'Blog Information', '2021-03-31 12:02:15', '2021-03-31 12:02:15'),
(1662, 'en', 'Blog Title', 'Blog Title', '2021-03-31 12:02:15', '2021-03-31 12:02:15'),
(1663, 'en', 'Meta Keywords', 'Meta Keywords', '2021-03-31 12:02:15', '2021-03-31 12:02:15'),
(1664, 'en', 'All Blog Categories', 'All Blog Categories', '2021-03-31 12:03:01', '2021-03-31 12:03:01'),
(1665, 'en', 'Blog Categories', 'Blog Categories', '2021-03-31 12:03:01', '2021-03-31 12:03:01'),
(1666, 'en', 'Blog Category Information', 'Blog Category Information', '2021-03-31 12:03:05', '2021-03-31 12:03:05'),
(1667, 'en', 'Blog category has been created successfully', 'Blog category has been created successfully', '2021-03-31 12:03:20', '2021-03-31 12:03:20'),
(1668, 'en', 'Blog post has been created successfully', 'Blog post has been created successfully', '2021-03-31 12:07:54', '2021-03-31 12:07:54'),
(1669, 'en', 'Seller has been deleted successfully', 'Seller has been deleted successfully', '2021-03-31 12:16:45', '2021-03-31 12:16:45'),
(1670, 'en', 'We have limited banner height to maintain UI. We had to crop from both left & right side in view for different devices to make it responsive. Before designing banner keep these points in mind.', 'We have limited banner height to maintain UI. We had to crop from both left & right side in view for different devices to make it responsive. Before designing banner keep these points in mind.', '2021-03-31 12:28:06', '2021-03-31 12:28:06'),
(1671, 'en', 'Home Banner 3 (Max 3)', 'Home Banner 3 (Max 3)', '2021-03-31 12:28:06', '2021-03-31 12:28:06'),
(1672, 'en', 'Install/Update', 'Install/Update', '2021-03-31 13:01:48', '2021-03-31 13:01:48'),
(1673, 'en', 'of seller product price will be deducted from seller earnings', 'of seller product price will be deducted from seller earnings', '2021-03-31 17:11:26', '2021-03-31 17:11:26'),
(1674, 'en', 'This commission only works when Category Based Commission is turned off from Business Settings', 'This commission only works when Category Based Commission is turned off from Business Settings', '2021-03-31 17:11:26', '2021-03-31 17:11:26'),
(1675, 'en', 'Commission doesn\'t work if seller package system add-on is activated', 'Commission doesn\'t work if seller package system add-on is activated', '2021-03-31 17:11:26', '2021-03-31 17:11:26'),
(1676, 'en', 'Nagad', 'Nagad', '2021-03-31 17:13:45', '2021-03-31 17:13:45'),
(1677, 'en', 'Bkash', 'Bkash', '2021-03-31 17:13:45', '2021-03-31 17:13:45'),
(1678, 'en', 'Your order has been placed', 'Your order has been placed', '2021-03-31 17:14:29', '2021-03-31 17:14:29'),
(1679, 'en', 'Your order has been placed successfully', 'Your order has been placed successfully', '2021-03-31 17:15:35', '2021-03-31 17:15:35'),
(1680, 'en', 'All Customers', 'All Customers', '2021-03-31 17:16:35', '2021-03-31 17:16:35'),
(1681, 'en', 'Type email or name & Enter', 'Type email or name & Enter', '2021-03-31 17:16:35', '2021-03-31 17:16:35'),
(1682, 'en', 'Package', 'Package', '2021-03-31 17:16:35', '2021-03-31 17:16:35'),
(1683, 'en', 'Wallet Balance', 'Wallet Balance', '2021-03-31 17:16:35', '2021-03-31 17:16:35'),
(1684, 'en', 'Log in as this Customer', 'Log in as this Customer', '2021-03-31 17:16:35', '2021-03-31 17:16:35'),
(1685, 'en', 'Ban this Customer', 'Ban this Customer', '2021-03-31 17:16:35', '2021-03-31 17:16:35'),
(1686, 'en', 'Do you really want to ban this Customer?', 'Do you really want to ban this Customer?', '2021-03-31 17:16:35', '2021-03-31 17:16:35'),
(1687, 'en', 'Do you really want to unban this Customer?', 'Do you really want to unban this Customer?', '2021-03-31 17:16:35', '2021-03-31 17:16:35'),
(1688, 'en', 'Filter by date', 'Filter by date', '2021-03-31 17:17:26', '2021-03-31 17:17:26'),
(1689, 'en', 'Order has been deleted successfully', 'Order has been deleted successfully', '2021-03-31 17:18:34', '2021-03-31 17:18:34'),
(1690, 'en', 'We are Under Maintenance.', 'We are Under Maintenance.', '2021-04-01 08:05:42', '2021-04-01 08:05:42'),
(1691, 'en', 'We will be back soon!', 'We will be back soon!', '2021-04-01 08:05:42', '2021-04-01 08:05:42'),
(1692, 'en', 'You have subscribed successfully', 'You have subscribed successfully', '2021-04-02 00:50:29', '2021-04-02 00:50:29'),
(1693, 'en', 'You are  already a subscriber', 'You are  already a subscriber', '2021-04-02 00:50:46', '2021-04-02 00:50:46'),
(1694, 'en', 'No account exists with this email', 'No account exists with this email', '2021-04-03 07:18:50', '2021-04-03 07:18:50'),
(1695, 'en', 'Please click the button below to verify your email address.', 'Please click the button below to verify your email address.', '2021-04-03 07:20:02', '2021-04-03 07:20:02'),
(1696, 'en', 'Email Verification - ', 'Email Verification - ', '2021-04-03 07:20:02', '2021-04-03 07:20:02'),
(1697, 'en', 'Category has been inserted successfully', 'Category has been inserted successfully', '2021-04-09 08:48:42', '2021-04-09 08:48:42'),
(1698, 'en', 'Brand has been inserted successfully', 'Brand has been inserted successfully', '2021-04-09 09:16:07', '2021-04-09 09:16:07'),
(1699, 'en', 'Details Info', 'Details Info', '2021-04-10 05:10:01', '2021-04-10 05:10:01'),
(1700, 'en', 'Copy Link', 'Copy Link', '2021-04-10 05:10:01', '2021-04-10 05:10:01'),
(1701, 'en', 'Commission History report', 'Commission History report', '2021-04-10 05:10:08', '2021-04-10 05:10:08'),
(1702, 'en', 'Choose Seller', 'Choose Seller', '2021-04-10 05:10:08', '2021-04-10 05:10:08'),
(1703, 'en', 'Daterange', 'Daterange', '2021-04-10 05:10:08', '2021-04-10 05:10:08'),
(1704, 'en', 'Admin Commission', 'Admin Commission', '2021-04-10 05:10:08', '2021-04-10 05:10:08'),
(1705, 'en', 'Seller Earning', 'Seller Earning', '2021-04-10 05:10:08', '2021-04-10 05:10:08'),
(1706, 'en', 'Created At', 'Created At', '2021-04-10 05:10:08', '2021-04-10 05:10:08'),
(1707, 'en', '#FFFFFF', '#FFFFFF', '2021-04-10 05:10:23', '2021-04-10 05:10:23'),
(1708, 'en', 'This image is shown as cover banner in flash deal details page.', 'This image is shown as cover banner in flash deal details page.', '2021-04-10 05:10:23', '2021-04-10 05:10:23'),
(1709, 'en', 'Flash Deal has been inserted successfully', 'Flash Deal has been inserted successfully', '2021-04-10 05:13:54', '2021-04-10 05:13:54'),
(1710, 'en', 'Flash deal status updated successfully', 'Flash deal status updated successfully', '2021-04-10 05:22:47', '2021-04-10 05:22:47'),
(1711, 'en', 'Emails', 'Emails', '2021-04-10 05:23:36', '2021-04-10 05:23:36'),
(1712, 'en', 'Users', 'Users', '2021-04-10 05:23:36', '2021-04-10 05:23:36'),
(1713, 'en', 'Newsletter subject', 'Newsletter subject', '2021-04-10 05:23:36', '2021-04-10 05:23:36'),
(1714, 'en', 'Newsletter content', 'Newsletter content', '2021-04-10 05:23:36', '2021-04-10 05:23:36'),
(1715, 'en', 'Seller Withdraw Request', 'Seller Withdraw Request', '2021-04-10 05:25:47', '2021-04-10 05:25:47'),
(1716, 'en', 'Seller', 'Seller', '2021-04-10 05:25:47', '2021-04-10 05:25:47'),
(1717, 'en', 'Total Amount to Pay', 'Total Amount to Pay', '2021-04-10 05:25:47', '2021-04-10 05:25:47'),
(1718, 'en', 'Requested Amount', 'Requested Amount', '2021-04-10 05:25:47', '2021-04-10 05:25:47'),
(1719, 'en', 'Seller Payments', 'Seller Payments', '2021-04-10 05:25:50', '2021-04-10 05:25:50'),
(1720, 'en', 'Payment Details', 'Payment Details', '2021-04-10 05:25:50', '2021-04-10 05:25:50'),
(1721, 'en', 'Details', 'Details', '2021-04-10 05:27:47', '2021-04-10 05:27:47'),
(1722, 'en', 'See ticket', 'See ticket', '2021-04-10 05:27:47', '2021-04-10 05:27:47'),
(1723, 'en', 'Ticket has been sent successfully', 'Ticket has been sent successfully', '2021-04-10 05:27:47', '2021-04-10 05:27:47'),
(1724, 'en', 'You do not have enough balance to send withdraw request', 'You do not have enough balance to send withdraw request', '2021-04-10 05:27:56', '2021-04-10 05:27:56'),
(1725, 'en', 'Recharge Wallet', 'Recharge Wallet', '2021-04-10 05:28:05', '2021-04-10 05:28:05'),
(1726, 'en', 'Wallet recharge history', 'Wallet recharge history', '2021-04-10 05:28:05', '2021-04-10 05:28:05'),
(1727, 'en', 'Offline Recharge Wallet', 'Offline Recharge Wallet', '2021-04-10 05:28:05', '2021-04-10 05:28:05'),
(1728, 'en', 'At the very bottom, you can find the “Facebook Page ID”', 'At the very bottom, you can find the “Facebook Page ID”', '2021-04-10 05:31:36', '2021-04-10 05:31:36'),
(1729, 'en', 'Go to Settings of your page and find the option of \"Advance Messaging\"', 'Go to Settings of your page and find the option of \"Advance Messaging\"', '2021-04-10 05:31:36', '2021-04-10 05:31:36'),
(1730, 'en', 'Scroll down that page and you will get \"white listed domain\"', 'Scroll down that page and you will get \"white listed domain\"', '2021-04-10 05:31:36', '2021-04-10 05:31:36'),
(1731, 'en', 'Page has been updated successfully', 'Page has been updated successfully', '2021-04-10 05:49:54', '2021-04-10 05:49:54'),
(1732, 'en', 'Facebook Comment Setting', 'Facebook Comment Setting', '2021-04-10 06:15:24', '2021-04-10 06:15:24'),
(1733, 'en', 'Facebook App ID', 'Facebook App ID', '2021-04-10 06:15:24', '2021-04-10 06:15:24'),
(1734, 'en', 'Please be carefull when you are configuring Facebook Comment. For incorrect configuration you will not get comment section on your user-end site.', 'Please be carefull when you are configuring Facebook Comment. For incorrect configuration you will not get comment section on your user-end site.', '2021-04-10 06:15:24', '2021-04-10 06:15:24'),
(1735, 'en', 'After then go to this URL https://developers.facebook.com/apps/', 'After then go to this URL https://developers.facebook.com/apps/', '2021-04-10 06:15:24', '2021-04-10 06:15:24'),
(1736, 'en', 'Create Your App', 'Create Your App', '2021-04-10 06:15:24', '2021-04-10 06:15:24'),
(1737, 'en', 'In Dashboard page you will get your App ID', 'In Dashboard page you will get your App ID', '2021-04-10 06:15:24', '2021-04-10 06:15:24');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(1738, 'en', 'Verify Your Email Address', 'Verify Your Email Address', '2021-04-10 06:56:16', '2021-04-10 06:56:16'),
(1739, 'en', 'Before proceeding, please check your email for a verification link.', 'Before proceeding, please check your email for a verification link.', '2021-04-10 06:56:16', '2021-04-10 06:56:16'),
(1740, 'en', 'If you did not receive the email.', 'If you did not receive the email.', '2021-04-10 06:56:16', '2021-04-10 06:56:16'),
(1741, 'en', 'Click here to request another', 'Click here to request another', '2021-04-10 06:56:16', '2021-04-10 06:56:16'),
(1742, 'en', '1. Category and Brand should be in numerical id.', '1. Category and Brand should be in numerical id.', '2021-04-10 06:57:17', '2021-04-10 06:57:17'),
(1743, 'en', '2. You can download the pdf to get Category and Brand id.', '2. You can download the pdf to get Category and Brand id.', '2021-04-10 06:57:17', '2021-04-10 06:57:17'),
(1744, 'en', 'Your email has been verified successfully', 'Your email has been verified successfully', '2021-04-10 07:03:54', '2021-04-10 07:03:54'),
(1745, 'en', 'Verify Now', 'Verify Now', '2021-04-10 07:03:54', '2021-04-10 07:03:54'),
(1746, 'en', 'Shop Verification', 'Shop Verification', '2021-04-10 07:04:13', '2021-04-10 07:04:13'),
(1747, 'en', 'Your shop verification request has been submitted successfully!', 'Your shop verification request has been submitted successfully!', '2021-04-10 07:05:03', '2021-04-10 07:05:03'),
(1748, 'en', 'New verification request(s)', 'New verification request(s)', '2021-04-10 07:05:31', '2021-04-10 07:05:31'),
(1749, 'en', 'Shop Info', 'Shop Info', '2021-04-10 07:06:00', '2021-04-10 07:06:00'),
(1750, 'en', 'Seller has been approved successfully', 'Seller has been approved successfully', '2021-04-10 11:47:57', '2021-04-10 11:47:57'),
(1751, 'en', 'Role Information', 'Role Information', '2021-04-10 11:49:20', '2021-04-10 11:49:20'),
(1752, 'en', 'Permissions', 'Permissions', '2021-04-10 11:49:20', '2021-04-10 11:49:20'),
(1753, 'en', 'See Details', 'See Details', '2021-04-10 11:52:37', '2021-04-10 11:52:37'),
(1754, 'en', 'Message has been send to seller', 'Message has been send to seller', '2021-04-10 11:52:37', '2021-04-10 11:52:37'),
(1755, 'en', 'Flash Deal has been updated successfully', 'Flash Deal has been updated successfully', '2021-04-10 16:48:17', '2021-04-10 16:48:17'),
(1756, 'en', 'Coupon has been saved successfully', 'Coupon has been saved successfully', '2021-04-10 16:53:54', '2021-04-10 16:53:54'),
(1757, 'en', 'Cart Base', 'Cart Base', '2021-04-10 16:53:55', '2021-04-10 16:53:55'),
(1758, 'en', 'Submit as', 'Submit as', '2021-04-10 16:54:19', '2021-04-10 16:54:19'),
(1759, 'en', 'Solved', 'Solved', '2021-04-10 16:54:19', '2021-04-10 16:54:19'),
(1760, 'en', 'Reply has been sent successfully', 'Reply has been sent successfully', '2021-04-10 16:54:52', '2021-04-10 16:54:52'),
(1761, 'en', 'Role has been inserted successfully', 'Role has been inserted successfully', '2021-04-10 17:05:52', '2021-04-10 17:05:52'),
(1762, 'en', 'Area Wise Flat Shipping Cost', 'Area Wise Flat Shipping Cost', '2021-04-10 17:06:15', '2021-04-10 17:06:15'),
(1763, 'en', 'Seller Wise Flat Shipping Cost calulation: Fixed rate for each seller. If customers purchase 2 product from two seller shipping cost is calculated by addition of each seller flat shipping cost', 'Seller Wise Flat Shipping Cost calulation: Fixed rate for each seller. If customers purchase 2 product from two seller shipping cost is calculated by addition of each seller flat shipping cost', '2021-04-10 17:06:15', '2021-04-10 17:06:15'),
(1764, 'en', 'Area Wise Flat Shipping Cost calulation: Fixed rate for each area. If customers purchase multiple products from one seller shipping cost is calculated by the customer shipping area. To configure area wise shipping cost go to ', 'Area Wise Flat Shipping Cost calulation: Fixed rate for each area. If customers purchase multiple products from one seller shipping cost is calculated by the customer shipping area. To configure area wise shipping cost go to ', '2021-04-10 17:06:15', '2021-04-10 17:06:15'),
(1765, 'en', '1. Flat rate shipping cost is applicable if Flat rate shipping is enabled.', '1. Flat rate shipping cost is applicable if Flat rate shipping is enabled.', '2021-04-10 17:06:15', '2021-04-10 17:06:15'),
(1766, 'en', '1. Shipping cost for admin is applicable if Seller wise shipping cost is enabled.', '1. Shipping cost for admin is applicable if Seller wise shipping cost is enabled.', '2021-04-10 17:06:15', '2021-04-10 17:06:15'),
(1767, 'en', 'All cities', 'All cities', '2021-04-10 17:07:44', '2021-04-10 17:07:44'),
(1768, 'en', 'Cities', 'Cities', '2021-04-10 17:07:44', '2021-04-10 17:07:44'),
(1769, 'en', 'Cost', 'Cost', '2021-04-10 17:07:44', '2021-04-10 17:07:44'),
(1770, 'en', 'Add New city', 'Add New city', '2021-04-10 17:07:44', '2021-04-10 17:07:44'),
(1771, 'en', 'Facebook Pixel Setting', 'Facebook Pixel Setting', '2021-04-10 17:08:27', '2021-04-10 17:08:27'),
(1772, 'en', 'Facebook Pixel', 'Facebook Pixel', '2021-04-10 17:08:27', '2021-04-10 17:08:27'),
(1773, 'en', 'Facebook Pixel ID', 'Facebook Pixel ID', '2021-04-10 17:08:27', '2021-04-10 17:08:27'),
(1774, 'en', 'Please be carefull when you are configuring Facebook pixel.', 'Please be carefull when you are configuring Facebook pixel.', '2021-04-10 17:08:27', '2021-04-10 17:08:27'),
(1775, 'en', 'Log in to Facebook and go to your Ads Manager account', 'Log in to Facebook and go to your Ads Manager account', '2021-04-10 17:08:27', '2021-04-10 17:08:27'),
(1776, 'en', 'Open the Navigation Bar and select Events Manager', 'Open the Navigation Bar and select Events Manager', '2021-04-10 17:08:27', '2021-04-10 17:08:27'),
(1777, 'en', 'Copy your Pixel ID from underneath your Site Name and paste the number into Facebook Pixel ID field', 'Copy your Pixel ID from underneath your Site Name and paste the number into Facebook Pixel ID field', '2021-04-10 17:08:27', '2021-04-10 17:08:27'),
(1778, 'en', 'Google Analytics Setting', 'Google Analytics Setting', '2021-04-10 17:08:27', '2021-04-10 17:08:27'),
(1779, 'en', 'Google Analytics', 'Google Analytics', '2021-04-10 17:08:27', '2021-04-10 17:08:27'),
(1780, 'en', 'Tracking ID', 'Tracking ID', '2021-04-10 17:08:27', '2021-04-10 17:08:27'),
(1781, 'en', 'All Classifies Packages', 'All Classifies Packages', '2021-04-11 04:52:06', '2021-04-11 04:52:06'),
(1782, 'en', 'Uploaded By', 'Uploaded By', '2021-04-11 04:52:11', '2021-04-11 04:52:11'),
(1783, 'en', 'Customer Status', 'Customer Status', '2021-04-11 04:52:11', '2021-04-11 04:52:11'),
(1784, 'en', 'Create New Package', 'Create New Package', '2021-04-11 04:52:28', '2021-04-11 04:52:28'),
(1785, 'en', 'Package has been updated successfully', 'Package has been updated successfully', '2021-04-11 04:57:00', '2021-04-11 04:57:00'),
(1786, 'en', 'About', 'About', '2021-04-11 06:29:21', '2021-04-11 06:29:21'),
(1787, 'en', 'Payout Info', 'Payout Info', '2021-04-11 06:29:21', '2021-04-11 06:29:21'),
(1788, 'en', 'Bank Acc Name', 'Bank Acc Name', '2021-04-11 06:29:21', '2021-04-11 06:29:21'),
(1789, 'en', 'Bank Acc Number', 'Bank Acc Number', '2021-04-11 06:29:21', '2021-04-11 06:29:21'),
(1790, 'en', 'Total Products', 'Total Products', '2021-04-11 06:29:21', '2021-04-11 06:29:21'),
(1791, 'en', 'Total Sold Amount', 'Total Sold Amount', '2021-04-11 06:29:21', '2021-04-11 06:29:21'),
(1792, 'en', 'Email already exists!', 'Email already exists!', '2021-04-14 16:06:20', '2021-04-14 16:06:20'),
(1793, 'en', 'Premium Packages for Customers', 'Premium Packages for Customers', '2021-04-15 04:18:59', '2021-04-15 04:18:59'),
(1794, 'en', 'Offline Package Purchase ', 'Offline Package Purchase ', '2021-04-15 04:18:59', '2021-04-15 04:18:59'),
(1795, 'en', 'Tax Information', 'Tax Information', '2021-04-15 08:12:46', '2021-04-15 08:12:46'),
(1796, 'en', 'update Tax Info', 'update Tax Info', '2021-04-15 08:12:46', '2021-04-15 08:12:46'),
(1797, 'en', 'This offer has been expired.', 'This offer has been expired.', '2021-04-17 05:08:52', '2021-04-17 05:08:52'),
(1798, 'en', 'Please add shipping address', 'Please add shipping address', '2021-04-19 21:53:40', '2021-04-19 21:53:40'),
(1799, 'en', 'Email or Phone already exists.', 'Email or Phone already exists.', '2021-04-23 15:14:44', '2021-04-23 15:14:44'),
(1800, 'en', 'Invalid email or password!', 'Invalid email or password!', '2021-04-24 11:35:57', '2021-04-24 11:35:57'),
(1801, 'en', 'Send Reply', 'Send Reply', '2021-04-28 07:01:44', '2021-04-28 07:01:44'),
(1802, 'en', 'Customer has been deleted successfully', 'Customer has been deleted successfully', '2021-05-27 05:52:42', '2021-05-27 05:52:42'),
(1803, 'en', 'Registration successfull. Please verify your email.', 'Registration successfull. Please verify your email.', '2021-05-27 11:45:57', '2021-05-27 11:45:57'),
(1804, 'en', 'Staff has been inserted successfully', 'Staff has been inserted successfully', '2021-05-27 12:12:27', '2021-05-27 12:12:27'),
(1805, 'en', 'PicupPoint has been inserted successfully', 'PicupPoint has been inserted successfully', '2021-05-27 12:13:46', '2021-05-27 12:13:46'),
(1806, 'en', 'Product has been duplicated successfully', 'Product has been duplicated successfully', '2021-06-14 10:46:16', '2021-06-14 10:46:16'),
(1807, 'en', 'Add Commission', 'Add Commission', '2021-06-14 11:08:13', '2021-06-14 11:08:13'),
(1808, 'en', 'Commission added successfully', 'Commission added successfully', '2021-06-14 11:36:46', '2021-06-14 11:36:46'),
(1809, 'en', 'Commission should not be greater than unit price', 'Commission should not be greater than unit price', '2021-06-15 05:39:44', '2021-06-15 05:39:44'),
(1810, 'en', 'Attribute has been deleted successfully', 'Attribute has been deleted successfully', '2021-06-15 06:33:28', '2021-06-15 06:33:28'),
(1811, 'en', 'Invalid coupon!', 'Invalid coupon!', '2021-06-15 06:43:53', '2021-06-15 06:43:53'),
(1812, 'en', 'Product Wish Report', 'Product Wish Report', '2021-06-15 06:53:34', '2021-06-15 06:53:34'),
(1813, 'en', 'Number of Wish', 'Number of Wish', '2021-06-15 06:53:34', '2021-06-15 06:53:34'),
(1814, 'en', 'Seller Guarantees', 'Seller Guarantees', '2021-06-15 07:10:13', '2021-06-15 07:10:13'),
(1815, 'en', 'Verified seller', 'Verified seller', '2021-06-15 07:10:13', '2021-06-15 07:10:13'),
(1816, 'en', 'Owner Info', 'Owner Info', '2021-06-20 05:21:00', '2021-06-20 05:21:00'),
(1817, 'en', 'Type and hit enter', 'Type and hit enter', '2021-06-21 10:09:20', '2021-06-21 10:09:20'),
(1818, 'en', 'Invalid phone or password', 'Invalid phone or password', '2021-06-24 05:27:54', '2021-06-24 05:27:54'),
(1819, 'en', 'Create an accountv cxfgv.', 'Create an accountv cxfgv.', '2021-06-24 08:42:06', '2021-06-24 08:42:06'),
(1820, 'en', 'Create an accountv.', 'Create an accountv.', '2021-06-24 08:51:40', '2021-06-24 08:51:40'),
(1821, 'en', 'Phone already exists.', 'Phone already exists.', '2021-06-24 09:46:11', '2021-06-24 09:46:11'),
(1822, 'en', 'Today Sells History', 'Today Sells History', '2021-06-24 11:58:05', '2021-06-24 11:58:05'),
(1823, 'en', 'Today\"s\" Selling history', 'Today\"s\" Selling history', '2021-06-26 05:24:25', '2021-06-26 05:24:25'),
(1824, 'en', 'Today`s` Selling history', 'Today`s` Selling history', '2021-06-26 05:24:38', '2021-06-26 05:24:38'),
(1825, 'en', NULL, NULL, '2021-06-26 05:24:57', '2021-06-26 05:24:57'),
(1826, 'en', 'Today Selling history', 'Today Selling history', '2021-06-26 05:26:00', '2021-06-26 05:26:00'),
(1827, 'en', 'Verify Your  Mobile Number', 'Verify Your  Mobile Number', '2021-06-27 06:07:36', '2021-06-27 06:07:36'),
(1828, 'en', 'Your OTP code', 'Your OTP code', '2021-06-27 06:16:01', '2021-06-27 06:16:01'),
(1829, 'en', 'Enter Your OTP code', 'Enter Your OTP code', '2021-06-27 07:57:58', '2021-06-27 07:57:58'),
(1830, 'en', 'Your phone has been verified successfully', 'Your phone has been verified successfully', '2021-06-27 08:40:49', '2021-06-27 08:40:49'),
(1831, 'en', 'Sorry, we could not verifiy you. Please try again', 'Sorry, we could not verifiy you. Please try again', '2021-06-27 09:15:05', '2021-06-27 09:15:05'),
(1832, 'en', 'Registration successfull.But OPT did not sent. Please contact with admin', 'Registration successfull.But OPT did not sent. Please contact with admin', '2021-06-27 10:47:22', '2021-06-27 10:47:22'),
(1833, 'en', 'Mobile OTP Configure', 'Mobile OTP Configure', '2021-06-28 05:25:05', '2021-06-28 05:25:05'),
(1834, 'en', 'Mobile OTP Configaration', 'Mobile OTP Configaration', '2021-06-28 05:42:47', '2021-06-28 05:42:47'),
(1835, 'en', 'Masking or Sender', 'Masking or Sender', '2021-06-28 05:44:21', '2021-06-28 05:44:21'),
(1836, 'en', 'Username', 'Username', '2021-06-28 05:48:48', '2021-06-28 05:48:48'),
(1837, 'en', 'Available Message', 'Available Message', '2021-06-28 05:48:48', '2021-06-28 05:48:48'),
(1838, 'en', 'Mobile OTP Information', 'Mobile OTP Information', '2021-06-28 08:42:07', '2021-06-28 08:42:07'),
(1839, 'en', 'Contact', 'Contact', '2021-08-21 05:35:14', '2021-08-21 05:35:14'),
(1840, 'en', 'Order status has been updated', 'Order status has been updated', '2021-08-21 05:35:14', '2021-08-21 05:35:14'),
(1841, 'en', 'Product Image', 'Product Image', '2021-08-21 06:50:03', '2021-08-21 06:50:03'),
(1842, 'en', 'Logindd', 'Logindd', '2021-08-22 05:16:51', '2021-08-22 05:16:51'),
(1843, 'en', 'Invalid Phone or password!', 'Invalid Phone or password!', '2021-08-22 05:27:37', '2021-08-22 05:27:37'),
(1844, 'en', 'Registration successfulu done.', 'Registration successfulu done.', '2021-08-22 06:41:49', '2021-08-22 06:41:49'),
(1845, 'en', 'A verification mail has been sent to the mail you provided us with.', 'A verification mail has been sent to the mail you provided us with.', '2021-08-22 06:51:34', '2021-08-22 06:51:34'),
(1846, 'en', 'Sorry! You have sent verification request already.', 'Sorry! You have sent verification request already.', '2021-08-22 07:01:22', '2021-08-22 07:01:22'),
(1847, 'en', 'on_delivery', 'on_delivery', '2021-08-22 08:54:40', '2021-08-22 08:54:40'),
(1848, 'en', 'Delivery Statusbgfvhgfhfg', 'Delivery Statusbgfvhgfhfg', '2021-08-22 09:02:07', '2021-08-22 09:02:07'),
(1849, 'en', 'Email already used', 'Email already used', '2021-08-22 10:41:08', '2021-08-22 10:41:08'),
(1850, 'en', 'Send Mobile OTP', 'Send Mobile OTP', '2021-08-22 11:05:56', '2021-08-22 11:05:56'),
(1851, 'en', 'Enter your phone number to recover your password.', 'Enter your phone number to recover your password.', '2021-08-22 11:06:18', '2021-08-22 11:06:18'),
(1852, 'en', 'Please enter your phone number', 'Please enter your phone number', '2021-08-22 11:10:29', '2021-08-22 11:10:29'),
(1853, 'en', 'No account exists with this phone number', 'No account exists with this phone number', '2021-08-22 11:13:39', '2021-08-22 11:13:39'),
(1854, 'en', 'OTP successfuly sent in your mobile', 'OTP successfuly sent in your mobile', '2021-08-22 11:19:40', '2021-08-22 11:19:40'),
(1855, 'en', 'Enter the OTP code and new password and confirm password.', 'Enter the OTP code and new password and confirm password.', '2021-08-22 12:32:46', '2021-08-22 12:32:46'),
(1856, 'en', 'Invalid OTP. Use valid OTP code', 'Invalid OTP. Use valid OTP code', '2021-08-23 05:16:23', '2021-08-23 05:16:23'),
(1857, 'en', 'paisi', 'paisi', '2021-08-23 05:23:30', '2021-08-23 05:23:30'),
(1858, 'en', 'Confirm password not match', 'Confirm password not match', '2021-08-23 05:28:01', '2021-08-23 05:28:01'),
(1859, 'en', 'match', 'match', '2021-08-23 05:28:10', '2021-08-23 05:28:10'),
(1860, 'en', 'Your password reset successfully', 'Your password reset successfully', '2021-08-23 05:49:04', '2021-08-23 05:49:04'),
(1861, 'en', 'ID', 'ID', '2021-09-02 06:11:28', '2021-09-02 06:11:28'),
(1862, 'en', 'Brand Name', 'Brand Name', '2021-09-02 06:11:34', '2021-09-02 06:11:34'),
(1863, 'en', 'Brand has been deleted successfully', 'Brand has been deleted successfully', '2021-09-02 06:14:04', '2021-09-02 06:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `file_original_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `extension` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `file_original_name`, `file_name`, `user_id`, `file_size`, `extension`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'modon-ali', 'uploads/all/e21Ploz0BvX7noymqj1HgF3wuFiA6KVVq5xfLOi2.png', 9, 11117, 'png', 'image', '2021-03-28 05:05:59', '2021-03-28 05:05:59', NULL),
(2, 'M', 'uploads/all/yz7yk0rdBV5gpkZYoIUJha4Ut0r2TZOOsUHf2BGy.png', 9, 109324, 'png', 'image', '2021-03-29 17:47:39', '2021-03-29 17:47:39', NULL),
(3, 'HR R', 'uploads/all/K7jmiRZumWy2tpaqhEmfI3mWD5BDVSRhFwH999Xe.jpg', 10, 84314, 'jpg', 'image', '2021-03-31 07:04:45', '2021-03-31 07:04:45', NULL),
(4, 'Happy Rich Wall', 'uploads/all/9yC1ChVWJqzIPbOXM5JW0jAhyYsM3767p0mXgebc.jpg', 10, 36491, 'jpg', 'image', '2021-03-31 07:06:43', '2021-03-31 07:06:43', NULL),
(5, 'HR R', 'uploads/all/rn9XeET64O7poPFf1RiLcanKDNuBPUEZ7FC1Ii8K.jpg', 9, 84314, 'jpg', 'image', '2021-03-31 07:17:46', '2021-03-31 07:17:46', NULL),
(6, 'Deep Sea Mineral', 'uploads/all/i9IGvwOtelsWcDx2fGgezxTSBx5kGDL2SyjoWt31.jpg', 10, 64978, 'jpg', 'image', '2021-03-31 07:20:42', '2021-03-31 07:20:42', NULL),
(7, 'mineral', 'uploads/all/DcDKeNXwWU0s2VNAA7H9s3zyPSNEtWtgDuIjRltE.jpg', 10, 61294, 'jpg', 'image', '2021-03-31 07:21:01', '2021-03-31 07:21:01', NULL),
(8, 'mineral-1024x432', 'uploads/all/V7gjU8RsMTnvO5gINfzArfGyzYerS3CKs8bCCBC0.png', 10, 394294, 'png', 'image', '2021-03-31 07:21:20', '2021-03-31 07:21:20', NULL),
(9, 'NANO-SWEET-BANNER', 'uploads/all/SjHOM08kxGp8Xm3OA3XYEEGut26xe5RHTYcOyHlv.jpg', 10, 94728, 'jpg', 'image', '2021-03-31 08:15:48', '2021-03-31 08:15:48', NULL),
(10, 'Sans-titre-3-copie', 'uploads/all/QHtOlv7FosFykVdeunhl3FEBMxjWBZCeUZZwaQUM.jpg', 10, 80759, 'jpg', 'image', '2021-03-31 08:16:16', '2021-03-31 08:16:16', NULL),
(11, 'NANO-SWEET-BANNER-2-1024x384', 'uploads/all/MhLFNpvQY4VIx9vGy5iiYWtXBPTE0Jbi6upfZz9u.jpg', 10, 68261, 'jpg', 'image', '2021-03-31 08:16:31', '2021-03-31 08:16:31', NULL),
(12, 'Unilever', 'uploads/all/Vq6fyb1PKfcFeetnsMvygIVRie5WpO4spKx4bHyW.png', 9, 198465, 'png', 'image', '2021-03-31 10:59:55', '2021-03-31 10:59:55', NULL),
(13, 'HAIRHEALTHBEAUTY-TENANT-LIST', 'uploads/all/HcmtFvjcsnXbxMmUcGEsLuczTyTcAxrkQT2HjXT1.jpg', 9, 266010, 'jpg', 'image', '2021-03-31 11:45:02', '2021-03-31 11:45:02', NULL),
(14, 'Fashion Clothing', 'uploads/all/BDsJUvLCAKBiMFipi1nf5k1gHMb42a7WTGPCcGCw.jpg', 9, 56387, 'jpg', 'image', '2021-03-31 11:55:13', '2021-03-31 11:55:13', NULL),
(15, 'beauty-sweeps', 'uploads/all/KmtGuyyTaFeUM9RAuQ3kBtGAqeO93lOYNXNvjL79.jpg', 9, 38627, 'jpg', 'image', '2021-03-31 11:58:00', '2021-03-31 11:58:00', NULL),
(16, 'Online Sell', 'uploads/all/pIl7G9rvq67gFDUoLsRJmlSGwVOUTNeqenJBvJxR.jpg', 9, 65916, 'jpg', 'image', '2021-03-31 12:07:41', '2021-03-31 12:07:41', NULL),
(17, 'Style', 'uploads/all/oovdMh4iSJMCjzDWXmqyOWPV7umA2F59Qn7jwIzU.jpg', 9, 91551, 'jpg', 'image', '2021-03-31 12:10:41', '2021-03-31 12:10:41', NULL),
(18, 'mineral-1024x432', 'uploads/all/CWZ9JjCnrplR7GDC41xDqfxsKm2GNPqSo88TYbVe.png', 9, 394294, 'png', 'image', '2021-03-31 12:28:54', '2021-03-31 12:28:54', NULL),
(19, 'NANO-SWEET-BANNER-2-1024x384', 'uploads/all/V3dGpIfTTU305x5qn2LQuhhGvimBFaY30BiDUyAM.jpg', 9, 68261, 'jpg', 'image', '2021-03-31 12:29:36', '2021-03-31 12:29:36', NULL),
(20, 'Cant (73)', 'uploads/all/Uj2Wd8iqKeQsaerCl1RNqNmKW6iutJyqB1CIZzeg.jpg', 12, 270846, 'jpg', 'image', '2021-03-31 17:01:23', '2021-03-31 17:01:23', NULL),
(21, 'TS00554', 'uploads/all/NbRJ3M3M4SPBaXwGYuIXGkBsmyntkNwDQQFjCrAJ.jpg', 12, 92291, 'jpg', 'image', '2021-03-31 17:04:27', '2021-03-31 17:04:27', NULL),
(22, 'Payment', 'uploads/all/FIa3Yvd09p2IFKRseJO6ga77rqQxoqo4vmzZkX27.png', 9, 49306, 'png', 'image', '2021-04-01 06:22:50', '2021-04-01 06:22:50', NULL),
(23, 'Dove', 'uploads/all/HatqzQTjqAdOEt8UHtJgEpWCwmsKxf9ta70RmjQP.jpg', 9, 38562, 'jpg', 'image', '2021-04-09 06:25:01', '2021-04-09 06:25:01', NULL),
(24, 'dove-soap', 'uploads/all/1lifcjBuZvrHG717B8r0dxOQYDAGDvKlPIcCtmVo.jpg', 9, 17429, 'jpg', 'image', '2021-04-09 06:25:23', '2021-04-09 06:25:23', NULL),
(25, 'dove-beauty-bar-pink-135-gm', 'uploads/all/eMKHTTzRxDqGKhxX5gSCBH4UuWgNuVDU0mhfC90B.jpg', 9, 38614, 'jpg', 'image', '2021-04-09 08:58:31', '2021-04-09 08:58:31', NULL),
(26, 'dove-beauty-bar-white-135-gm', 'uploads/all/OsPzfaZXh9p5Qz2AOFUjCSHSsGlYlG0AM6hvukYU.jpg', 9, 41820, 'jpg', 'image', '2021-04-09 08:59:00', '2021-04-09 08:59:00', NULL),
(27, 'Cow Brand', 'uploads/all/5BCFyTSYxlkf2vv1y64KLm9uypaoUhZuRkWUcsYy.jpg', 9, 16780, 'jpg', 'image', '2021-04-09 09:13:56', '2021-04-09 09:13:56', NULL),
(28, '61jQYXRNrHL._SL1200_', 'uploads/all/0xC4YeSngZjmPCDZRmKu386wIIGeVC4m7BjtVfcb.jpg', 9, 67394, 'jpg', 'image', '2021-04-09 09:22:52', '2021-04-09 09:22:52', NULL),
(29, 'Cow_brand', 'uploads/all/nqLNoZK0vBo12kPLwLIAbJhCAmeTKa8Tyap2hVCK.jpg', 9, 66128, 'jpg', 'image', '2021-04-09 09:23:03', '2021-04-09 09:23:03', NULL),
(30, 'Cow Brand Soap 1', 'uploads/all/03TCNP9ux5rQQfNfHLvaOQcUBv9keqDv6q92KtTC.jpg', 9, 47916, 'jpg', 'image', '2021-04-09 09:32:58', '2021-04-09 09:32:58', NULL),
(31, '167-01-min', 'uploads/all/OTNIkZlH70OuIEYC5t4UpFcSP2KXKYWCUvsA6V9R.jpg', 9, 39358, 'jpg', 'image', '2021-04-09 09:59:26', '2021-04-09 09:59:26', NULL),
(32, '1304_2frd', 'uploads/all/cB2wcXv5kAIjCAgEMZPIoGOEVZyHAgOHcKhhIZf4.jpg', 9, 59693, 'jpg', 'image', '2021-04-09 09:59:36', '2021-04-09 09:59:36', NULL),
(33, 'images', 'uploads/all/DoPXEli2bh7kB8wr6BqmR56ZwNlRxROWUMxIU0ee.jpg', 9, 12449, 'jpg', 'image', '2021-04-09 10:00:30', '2021-04-09 10:00:30', NULL),
(34, 'Face_scurb_1__c', 'uploads/all/uTtX3iHBrszKw1eN2VyXMXoYhbW0knTGVzsP46Ul.jpg', 9, 15517, 'jpg', 'image', '2021-04-09 10:00:30', '2021-04-09 10:00:30', NULL),
(35, 'Face_scurb_1_a', 'uploads/all/J8UvmoI2P6OgPjZXxMvSdkxdqgWszcEEkkxsF5sx.jpg', 9, 20536, 'jpg', 'image', '2021-04-09 10:00:31', '2021-04-09 10:00:31', NULL),
(36, '149311296_3974539555940441_3330289112089389181_n', 'uploads/all/fCdhACW5QzFG8YLVP2DU4PhgazE3BIHH3K3AhoAt.jpg', 9, 90648, 'jpg', 'image', '2021-04-09 10:26:47', '2021-04-09 10:26:47', NULL),
(37, '152012294_3607351116037906_5992284202234158495_n', 'uploads/all/O4yLFL0y0quTS3hJz6barfxT5RiXpG4Z1LYim7zp.jpg', 9, 103730, 'jpg', 'image', '2021-04-09 10:27:00', '2021-04-09 10:27:00', NULL),
(38, '152708977_3950582334984717_4441256139554565922_n', 'uploads/all/diX4hlDXraF0ma2cWcD60fEwOTPET0qjbKvgP7MG.jpg', 9, 90987, 'jpg', 'image', '2021-04-09 10:27:00', '2021-04-09 10:27:00', NULL),
(39, '152878970_5426998307325404_8091298904821004056_n', 'uploads/all/JFK7El1Vy6cSu9cZyospnP5H9XUz2dkjcTRRzMxD.jpg', 9, 112108, 'jpg', 'image', '2021-04-09 10:27:00', '2021-04-09 10:27:00', NULL),
(40, 'Zoras', 'uploads/all/y00qXz40TWhc3c9mpwc26GL9sEN7CuAFWyR9sT5o.jpg', 9, 50102, 'jpg', 'image', '2021-04-09 10:44:15', '2021-04-09 10:44:15', NULL),
(41, '61DyJon7BNL._SL1000_', 'uploads/all/VntMbBwrhMjWGGcU42MSYKVxMK1kJvmU179cQDJg.jpg', 12, 83810, 'jpg', 'image', '2021-04-09 11:27:31', '2021-04-09 11:27:31', NULL),
(42, '51Oz4tiZGQL._SL1000_', 'uploads/all/WTdaK044sM4woZqqrCdJnlNiMVhYgdR67sRfFp3g.jpg', 12, 48607, 'jpg', 'image', '2021-04-09 11:27:46', '2021-04-09 11:27:46', NULL),
(43, '61XmIVHc5FL._SL1000_', 'uploads/all/tbaTiUuoOGDW86KhN8cDFzaWJYxgtKvhuYM2MB1o.jpg', 12, 68352, 'jpg', 'image', '2021-04-09 11:27:46', '2021-04-09 11:27:46', NULL),
(44, 'dress (1)', 'uploads/all/o6oQTgp9NUOFnOBG2SuNWUGSTJTFbVYB6BAmIDqZ.png', 9, 900, 'png', 'image', '2021-04-10 05:06:32', '2021-04-10 05:06:32', NULL),
(45, 'New Project (9)', 'uploads/all/V4h5T1RCsENUHNCnPsYYtUE5fG45LOmGHm5IeQZ2.jpg', 9, 164031, 'jpg', 'image', '2021-04-10 05:13:10', '2021-04-10 05:13:10', NULL),
(46, '1', 'uploads/all/W6P3KlRUKGuP232JzIh2SBTlMRwswqNSsXyLDKog.jpg', 9, 27879, 'jpg', 'image', '2021-04-10 05:19:19', '2021-04-10 05:19:19', NULL),
(47, '2', 'uploads/all/fEIffFCJk60GRywD4ea33fKXEbE4b0sMfajgR63r.jpg', 9, 26660, 'jpg', 'image', '2021-04-10 05:19:20', '2021-04-10 05:19:20', NULL),
(48, '3', 'uploads/all/hjxdV2zKc0ujPeHEswPyG84sVv7LteIXd9hYo4Z0.jpg', 9, 20633, 'jpg', 'image', '2021-04-10 05:19:21', '2021-04-10 05:19:21', NULL),
(49, 'cosmetics', 'uploads/all/rzBK26bmWB7z7PxUse41enekgYvchTg8MKeTOoXX.png', 9, 1394, 'png', 'image', '2021-04-10 14:41:34', '2021-04-10 14:41:34', NULL),
(50, 'facial-treatment', 'uploads/all/a6ZaGAIbb03Kvtnr5doDlmmm1mTQyH3zL1cN5PJ9.png', 9, 1530, 'png', 'image', '2021-04-10 15:38:52', '2021-04-10 15:38:52', NULL),
(51, 'herbal', 'uploads/all/ziP2av1MDENDrlnm7CdQv6WZjFYXYf3eppQY2yYt.png', 9, 1720, 'png', 'image', '2021-04-10 16:39:39', '2021-04-10 16:39:39', NULL),
(52, 'JOktT5QrxPDSVKagzhTsgItxulc6OTXvX1zSxfi8', 'uploads/all/WuMOSNNt95p4YMiNXiUDHy9IXv0kI2lEirH7TXv4.jpg', 9, 24447, 'jpg', 'image', '2021-04-10 16:43:10', '2021-04-10 16:43:10', NULL),
(53, 'UCXlw7rYzzLSxYOhWzIRDeV3OE19P6etegYAWPxY', 'uploads/all/CAURoOHi4m7Zf9aFwjUiOet0RbLt6NxPjYIY2cOq.jpg', 9, 26164, 'jpg', 'image', '2021-04-10 16:43:10', '2021-04-10 16:43:10', NULL),
(54, 'QrJSIxDRZEY6POuhlo8chyCdROdoWbeLqhQy1EwL', 'uploads/all/tI1EDDz0CXxNcyu0djaw9l67h3vOVQi4stdBKNRq.jpg', 9, 25712, 'jpg', 'image', '2021-04-10 16:43:10', '2021-04-10 16:43:10', NULL),
(55, 'gold-package', 'uploads/all/wXwS0wvsCK0c1DujKfErdWoCQYpkg1VDq315A5km.png', 9, 26169, 'png', 'image', '2021-04-11 04:55:39', '2021-04-11 04:55:39', NULL),
(56, 'Dream Land', 'uploads/all/8JFFbkaYm9dK2NiHrDUDdSg4wBDxbOU0w9Qv03w9.jpg', 16, 353093, 'jpg', 'image', '2021-04-11 06:31:05', '2021-04-11 06:31:05', NULL),
(57, 'Dream Land C', 'uploads/all/eOaR86mDgbho4G5P0L9ybxPxfb3Df4Wp9gpQxUXs.jpg', 16, 146616, 'jpg', 'image', '2021-04-11 06:38:43', '2021-04-11 06:38:43', NULL),
(58, 'Health Care', 'uploads/all/96wPfpSO3dTTV0b6NOgz8iAmQre81ixZuTpkRwWH.jpg', 9, 34179, 'jpg', 'image', '2021-04-11 12:30:13', '2021-04-11 12:30:13', NULL),
(59, 'skin-care-tips', 'uploads/all/WMyedmueNL9NANnQFMxc2LetwI2LjHJmqcSwKc2z.jpg', 9, 58427, 'jpg', 'image', '2021-04-12 05:21:48', '2021-04-12 05:21:48', NULL),
(60, 'grocery-groceries-commerce-online-ss-1920', 'uploads/all/HlcgodVmTMQE79c6UEAib1gUOxHrhX9mhOFtVmHR.jpg', 9, 199691, 'jpg', 'image', '2021-04-12 07:34:51', '2021-04-12 07:34:51', NULL),
(61, 'FB_IMG_1618905204762', 'uploads/all/2sJMc5Xkx8oxtCewZXbZCIyl1c5EYFrderpuoS97.jpg', 16, 112922, 'jpg', 'image', '2021-04-20 08:09:42', '2021-04-20 08:09:42', NULL),
(62, 'Tommy_Hilfiger', 'uploads/all/MG1rIhxaJhbAKy7MWvzn9EoTTaEStnBGJe5MprXe.png', 9, 897411, 'png', 'image', '2021-04-26 06:50:20', '2021-04-26 06:50:20', NULL),
(63, 'polo-ralph-lauren-logo', 'uploads/all/bTVJARxGlDpHGOdVBY61NEP31kGLOfHQ0xK64pM8.jpg', 9, 28745, 'jpg', 'image', '2021-04-26 08:02:13', '2021-04-26 08:02:13', NULL),
(64, 'polo-ralph-lauren-logo1', 'uploads/all/w62tL3nkqXKbruemhnWpsDWfCYWk57fGVTNtUqx5.png', 9, 163203, 'png', 'image', '2021-04-26 08:06:48', '2021-04-26 08:06:48', NULL),
(65, 'burberry-logo', 'uploads/all/nRtkEJ78wOyqIwCKM0k7QQVEiNPK66aDtuidL77f.png', 9, 31265, 'png', 'image', '2021-04-26 08:11:26', '2021-04-26 08:11:26', NULL),
(66, 'Long Sleeve Polka Dot Shirt ', 'uploads/all/aYUxClrUyIxUwXCynXBbfT5LYe8iYy4WC7iQljkm.jpg', 16, 206032, 'jpg', 'image', '2021-04-26 08:17:42', '2021-04-26 08:17:42', NULL),
(67, 'Long Sleeve Floral Shirt ', 'uploads/all/U7fXnRYAuqeCUG61gCWxrkptkkUbdO8NtQkJfVNY.jpg', 16, 155260, 'jpg', 'image', '2021-04-26 08:39:13', '2021-04-26 08:39:13', NULL),
(68, 'Long Sleeve  Shirt Dino Print', 'uploads/all/w2ujSuzDhujvnJjOtXIqx1AelNNoEMCWR7rfXTFr.jpg', 16, 131583, 'jpg', 'image', '2021-04-26 08:53:01', '2021-04-26 08:53:01', NULL),
(69, 'images (45)', 'uploads/all/kgQQ5idltXrX1fUMEMRINXDYgKMTdz0yjnk7ZHRG.jpg', 11, 17430, 'jpeg', 'image', '2021-04-28 07:26:02', '2021-04-28 07:26:02', NULL),
(70, 'images (44)', 'uploads/all/PP13FJjaaUSBQtKPxh22Kp3ZehnUNBYoB1Z6bOXm.jpg', 11, 77309, 'jpeg', 'image', '2021-04-28 07:27:04', '2021-04-28 07:27:04', NULL),
(71, 'images', 'uploads/all/vhvru06IkeS1gh2t3bp1waQAC2MgzXKZFdUZP4Gf.jpg', 11, 27630, 'jpeg', 'image', '2021-04-28 07:28:26', '2021-04-28 07:28:26', NULL),
(72, 'IMG-20210221-WA0044', 'uploads/all/d82zaOAR2aVmkgfZfkSqwm71cFlXNKEjk6h7DGUk.jpg', 11, 92061, 'jpg', 'image', '2021-04-28 07:30:37', '2021-04-28 07:30:37', NULL),
(73, 'Beximco Com', 'uploads/all/EUVE494qzKbCmTuiOWY2RVE7sjLGLvmxdF80GFJG.png', 9, 156506, 'png', 'image', '2021-04-28 08:02:23', '2021-04-28 08:02:23', NULL),
(74, '1619002819-34247764', 'uploads/all/L8v10PdWoB8nxCTnSuViuvEfiKat0YExg4E3jcde.jpg', 10, 105801, 'jpg', 'image', '2021-05-01 11:12:28', '2021-05-01 11:12:28', NULL),
(75, '1619002819-34247764', 'uploads/all/aKxZjG7EWU6Eb5oOJy77DK8ged1qZofbGrMYzC73.jpg', 10, 105801, 'jpg', 'image', '2021-05-01 11:16:09', '2021-05-01 11:16:09', NULL),
(76, 'Sarf L', 'uploads/all/leLpUMnRgbhbjOUo7jk8Eg2Hnw6Wlugipwm6Fh7q.png', 9, 309272, 'png', 'image', '2021-05-27 12:16:56', '2021-05-27 12:16:56', NULL),
(77, 'Sarf L', 'uploads/all/TFTcnMu2HShHdxlYWjIDqBX8LEXEkkGy1gz2NBNl.png', 9, 309272, 'png', 'image', '2021-05-27 12:18:10', '2021-05-27 12:18:10', NULL),
(78, 'Sarf L', 'uploads/all/FjI6bkESXUlk6mv6hO61knxgl0ivgfZREqnKFy8y.png', 9, 309272, 'png', 'image', '2021-05-27 12:18:27', '2021-05-27 12:18:27', NULL),
(79, '44f4cd06b9fac6cf7d343ab3c9d40889', 'uploads/all/u9GLFRfopH0rCr3XsqvHQv2YnLmDhJWD1MhKgzxL.jpg', 9, 25848, 'jpg', 'image', '2021-06-14 10:10:09', '2021-06-14 10:10:09', NULL),
(80, '61YVyDv6rbL._SL1000_', 'uploads/all/j94ZTISaO1poxDRLUBThRhaEHVEB8LSbxahXtL2I.jpg', 9, 122105, 'jpg', 'image', '2021-06-14 10:15:38', '2021-06-14 10:15:38', NULL),
(81, '39-6-hd-colors-high-shine-long-lasting-non-toxic-professional-original-imaffg9zyxjjjuuc', 'uploads/all/M09MJTMaBYb9wnxNW7YsZEIVT8mE8mFojVUyJ1hN.jpg', 10, 41429, 'jpeg', 'image', '2021-06-20 05:14:21', '2021-06-20 05:14:21', NULL),
(82, 'client2w', 'uploads/all/mxpXzjDiPoxxMXtKVvlaMEDEjOHIELZrS8hoSmQt.png', 91, 5022, 'png', 'image', '2021-08-22 06:50:54', '2021-08-22 06:50:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `referred_by` int(11) DEFAULT NULL,
  `provider_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'customer',
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `verification_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_email_verificiation_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_original` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` double(20,2) NOT NULL DEFAULT 0.00,
  `banned` tinyint(4) NOT NULL DEFAULT 0,
  `referral_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_package_id` int(11) DEFAULT NULL,
  `remaining_uploads` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `referred_by`, `provider_id`, `user_type`, `name`, `email`, `phone`, `password`, `email_verified_at`, `verification_code`, `new_email_verificiation_code`, `remember_token`, `avatar`, `avatar_original`, `address`, `country`, `city`, `postal_code`, `balance`, `banned`, `referral_code`, `customer_package_id`, `remaining_uploads`, `created_at`, `updated_at`) VALUES
(8, NULL, NULL, 'customer', 'Mr. Customer', 'customer@example.com', NULL, '$2y$10$eUKRlkmm2TAug75cfGQ4i.WoUbcJ2uVPqUlVkox.cv4CCyGEIMQEm', '2018-12-11 18:00:00', '385500', NULL, 'iONLseC7Dl7yQogkefBnxAFzqjtW3vTQDo70c4bALC3I7jX07k3Hkx918CLg', 'https://lh3.googleusercontent.com/-7OnRtLyua5Q/AAAAAAAAAAI/AAAAAAAADRk/VqWKMl4f8CI/photo.jpg?sz=50', NULL, 'Demo address', 'US', 'Demo city', '1234', 0.00, 0, '8zJTyXTlTT', NULL, NULL, '2018-10-07 04:42:57', '2021-08-22 11:02:17'),
(9, NULL, NULL, 'admin', 'ModonAli', 'support@modonali.com', '01964718348', '$2y$10$s8tcCt6uMuU5CnIkk3gPmev1qeYOlyE91U6/io8anGphXIXIk3UJm', '2021-03-30 22:03:24', '273713', NULL, 'DeWmswz6p4TdH752VGf7zm4EEFUllz0PcVrxmh00gGWisGBv6P9brIIi6tCm', NULL, '2', NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-03-27 01:20:52', '2021-08-22 09:25:59'),
(10, NULL, NULL, 'seller', 'Happy Rich Life', 'hrlbd28@gmail.com', '01620183118', '$2y$10$s8tcCt6uMuU5CnIkk3gPmev1qeYOlyE91U6/io8anGphXIXIk3UJm', '2021-03-31 07:03:33', NULL, NULL, 'AyTJn2NNMgZTTaWnB5Eg2sNYZRYlgwAhtUemqSW0eoZOnxqHcSsupxRsPN20', NULL, '3', NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-03-31 07:03:33', '2021-03-31 07:14:19'),
(11, NULL, NULL, 'seller', 'Toukir Ahmed', 'toukirahmed846@gmail.com', NULL, '$2y$10$uU2pqFO49QxX7UQ0TC2sPO4xwMHXmxfsWZQP/HRHNtJkgQCYB6.y.', '2021-03-31 07:03:23', NULL, NULL, '0IpyIGB8JykAVXX4kvoNDdgyd7J1rbAjgoJF5oV6uxzqOp8KffKya0VbShyx', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-03-31 07:43:40', '2021-03-31 07:46:23'),
(12, NULL, NULL, 'seller', 'CLG Store', 'lekhon28@gmail.com', '01714973888', '$2y$10$K.gnWXvxc8khhzbg3PO64.L2ihz5sl0htM21iaUKoWxoH6fiKNGZu', '2021-03-31 16:03:37', NULL, NULL, 'gmMQa992sHdGrBh4FZ5BXqQrUYuRnbnPMequyDqpKrJegCSyPugenRsMKwAq', NULL, '20', NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-03-31 16:58:37', '2021-03-31 17:07:19'),
(13, NULL, NULL, 'seller', 'wMNlYfjAagoxL', 'whintickbr@gmail.com', NULL, '$2y$10$OCsYoZCkDXbGHgvI7bZaW.iZRTLzvSHulw2yOgTNaiGh/UwJL77Pm', NULL, 'eyJpdiI6IkZvQTlyM09mQmdmNXdCWTB5ZXZxMEE9PSIsInZhbHVlIjoiUmdCc2hXVXo0Ukc0RWJHelNaV1dHQT09IiwibWFjIjoiMjE0NGMyNjBlNjk1NGRlZTE0Yzg4MjEwY2FjMTQ0ZTE1ZjhhOGQ1OGYyN2MxMjUxYjJlY2RiYzIzNjQxYzgwMiJ9', NULL, 'KseSJi92FP2NpI3XwEYd3XzAjEcnMmh5xAc3l1kkvQwCP8LUMtBAMsrcSKVZ', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-04-03 07:20:02', '2021-04-03 07:20:02'),
(14, NULL, '1149357508824277', 'customer', 'Ayesha Mahmud ', NULL, NULL, NULL, '2021-04-10 06:04:05', NULL, NULL, 'yj7qBrl93FuGZo1f5pcB5RMr9GoGykKqHfRkig6oIDuwETBGVg6u53j7oYlb', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-04-10 06:13:05', '2021-04-10 06:13:05'),
(15, NULL, NULL, 'seller', 'Niir Online Shop', 'rashed.artificial@gmail.com', NULL, '$2y$10$pcqSOaA88T3ZfRDDmXgBaOAgFIEZbprtLtzuJ.qhCJrZoksnzB2VO', '2021-04-10 07:03:54', 'eyJpdiI6InFnckt3SG8wbTNHSTBDY3BQUGFpUUE9PSIsInZhbHVlIjoiQ0pxR2hJbFRsYUQyalBTTmdXbkVxUT09IiwibWFjIjoiOWJlOTY4ZWQxMjEwOWFmM2E2MzY2ZGM5OGQyYzE5M2M1NWUwYWQxNGJiMGI3MDE4MjI1MGU2ODVhZjA0NGZiNSJ9', NULL, 'JYuhrUNkIa4qOowbuTjfNiVayTwHVoodnnz3ceLGHtpafomcpH1F0gdjuO4Y', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-04-10 07:01:17', '2021-04-10 07:03:54'),
(16, NULL, NULL, 'seller', 'DREAM LAND', 'muzammal2990@gmail.com', '01762610151', '$2y$10$BZd1GNbh9mmKk7GGj7rzSegZNKSK0iUulH10pih0a8DyXD40cLXf.', '2021-05-22 17:36:11', 'eyJpdiI6ImlvbWRBOU1zN2QzOWxMVlJqRzJ5MXc9PSIsInZhbHVlIjoiZVZ5djFiR3pvR1pzQ0hoQ2J1S1Urdz09IiwibWFjIjoiZTBiOWE5MWE0MTU0OTFiNmNjZDU2ODAwNGVjYmQxNWM0MDdjYjMwYjlhNWQ5MjM1MGMxMTY4M2Y3MWViZDM5OSJ9', NULL, 'hocVJbQkSiaVlr0EKbzKhMM9qOA7tyBRaWNssdx2pblTFYLxq9UCOgRioSTX', NULL, '56', NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-04-11 06:12:23', '2021-05-22 17:36:11'),
(17, NULL, NULL, 'customer', 'Forhad Un Nabi', 'jubaeralam64@gmail.com', NULL, '$2y$10$ORi6amGhmvSc2HbwYA08peYYM9YwW3CEA/.rJa.9lPPU9VIiPbJdu', NULL, 'eyJpdiI6IjlKY2hnV3ZQUGY1TFhLMm9iMFdEaGc9PSIsInZhbHVlIjoiNGxSZDZzY1wvS25sVGM0QXBrRnA5RUE9PSIsIm1hYyI6IjA1MWNhYzhjZjU2Yjg5ZDhkYjA1OTE3ZTVlZTZmNzQwZmI4YThkODU1Yzg1ZThjMDk5MTk2NzdkNmYzM2QzNzgifQ==', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-04-11 16:32:20', '2021-04-11 16:32:20'),
(18, NULL, NULL, 'customer', 'Milon', 'milon4316@gmail.com', NULL, '$2y$10$/Vxaw1U1/5A4EsNnTG8li.Xh1Lt9fF4EewwZoch/qs3Ivj/BDzs.S', NULL, 'eyJpdiI6InRTd1hcL3NDVlN2dmlHaTJ6bEdXNXhBPT0iLCJ2YWx1ZSI6IndNZml4ZXVHRUFWOHhOY2ZkZ0Y5alE9PSIsIm1hYyI6ImQ1ZWQ4OTM4NWI2NDdiY2U1OWQxOGE0N2I3Y2U0NGZlYzU1YzdlZGQ1MWNmN2I1YzA2ZmM2Nzk5MDA2MmJlYTMifQ==', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-04-14 02:44:40', '2021-04-14 02:44:40'),
(19, NULL, NULL, 'customer', 'yPXDGqJbkOnoxW', 'whottilyph@gmail.com', NULL, '$2y$10$sUsSIDurEFFzEfzJ1Rfkl.tzOjgHIb.rj/fuE.s9XUoHDs9ynL2B.', NULL, '879628', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-04-14 16:02:21', '2021-04-14 16:07:53'),
(20, NULL, '1559722360893943', 'customer', 'Asha Khan', 'shipaclg@yahoo.com', NULL, NULL, '2021-04-15 04:04:34', NULL, NULL, 'USasxiEsMLoB4BXeaRPEKSfqxG7PagKTjB1z855Ytub2mUbT0smO1LAObk8b', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-04-15 04:18:34', '2021-04-15 04:18:34'),
(21, NULL, NULL, 'customer', 'Naim Hosen', 'nayeemhosen2020@gmail.com', NULL, '$2y$10$Su0pTade83slgCiYnDe70uzHDx4g.eU0Y3T2.kqMRqPaewHhsPMsC', NULL, 'eyJpdiI6InBzRmdNaEFkUjJvT0ZBdGZXNkFoVEE9PSIsInZhbHVlIjoidWZrRGlXbytTSlN3Q3VvTmMwVHJZdz09IiwibWFjIjoiNzhhMDBkNDhiMGU5NjMwNWEzMzM5MzQ3ODRiYTY3MWMzMTk0NjZjNDNhZGRlYWZlNDZmOWQ0MzBlNzIxYTZiMCJ9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-04-15 04:44:00', '2021-04-15 04:44:00'),
(22, NULL, NULL, 'customer', 'Salman Rahman', 'salmanrahman164243@gmail.com', NULL, '$2y$10$wireq0imzLULgswPfSb9lupCGEiQ0gtwXTWsyI5CaOtZ/erFLOqBe', NULL, '356774', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-04-19 14:31:44', '2021-04-24 13:42:33'),
(23, NULL, '3869508779784352', 'customer', 'MD Ariful Hasan', 'noyon_hasan2011@yahoo.com', NULL, NULL, '2021-04-19 21:04:08', NULL, NULL, 'LhReIbOv7jnIEvJHMDqcPk0JhDKxstwy38zvbdWbuxaEg7rJmMiKtnenvYsz', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-04-19 21:52:08', '2021-04-19 21:52:08'),
(24, NULL, NULL, 'customer', 'Melvinlip', 'nikolaevazhanna434@mail.com', NULL, '$2y$10$r2uWG3K.nZVZrnk6N791ju3GAovHNkT.5mYbeaf9ZNSBMF.WgkHkq', NULL, 'eyJpdiI6InpjMGQxMHNGUkJkbVhweWJNU0wrTVE9PSIsInZhbHVlIjoib1huVk5wK1pWOXBjeHNuZVwvSWFIVHc9PSIsIm1hYyI6IjA1ZGU0NTY4ZGYzMDdjZmNhOGIzODc0NzllMDE4OWIyNGZlOTNkZTgxNmMwOGI4OTk5NTA5NTk0MzRhNzJjY2IifQ==', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-04-20 11:49:37', '2021-04-20 11:49:37'),
(25, NULL, NULL, 'customer', 'Md Rofiqul islam', 'mdrofiqulislambd1@gmail.com', NULL, '$2y$10$tLJSAQBExwppRDwZfBFHIORTffmdZNMoip30WvC7B90q3gI6Owqp6', NULL, 'eyJpdiI6ImFPbk0yak9ZOXpjTlJ6XC9vNFJjOUV3PT0iLCJ2YWx1ZSI6IjU1N0lsY3IyeVlWajBPOEk0bWhleUE9PSIsIm1hYyI6ImUzNGQ1NjJhNWQ4NjE3ZWMzZGRlOTE2Yzk1YTg2YmMyZWI4M2Y1ZjYzOGQxNmMwZjNhODk0MmI5MTZhNjM1OTgifQ==', NULL, 'Mk025YGEFuYXUgcRTvaB1BgO1pSqOBJDFvNplRjWyDYqHweI8hYtXbcNBs7m', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-04-23 15:12:16', '2021-04-23 15:16:15'),
(26, NULL, '568353937462667', 'customer', 'Chutir Dine', 'mdtaseen896@gmail.com', NULL, NULL, '2021-04-25 08:04:16', NULL, NULL, '0tKDagEenC35H7SvlnUpnAFoHZMeX1RgG2O8u152hecJeegIHTDJ8EW7RfD3', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-04-25 08:39:16', '2021-04-25 08:39:16'),
(27, NULL, NULL, 'customer', 'Md. Monjurul Islam', 'abirhasanft@gmail.com', NULL, '$2y$10$5lSs.0cEpDzbPfr3d.WdFuI6ooIOfMzMvqO6qqUiICYnCHj3CBgKG', NULL, 'eyJpdiI6IlV3RDlnbnQxUGNSdk5kNEszZEw2cWc9PSIsInZhbHVlIjoiam1KWGttU3FKcmpGYm83eHlFYnJJdz09IiwibWFjIjoiOTY5Y2IwNDM2MjM4MGFhYzQ3Yjc5ZTRmMmQxMzQxYzkwODI5Mjk0YWQ5NjUyYzhjMTk0OWJmMjAxNjAyMzY0OSJ9', NULL, '9r5rkfLI57L8TbNF8LfYmuQ0nmaxRxQKvFZH0DFYMJieHlPvdk2FWbgXWfvT', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-04-28 06:17:38', '2021-04-28 06:34:39'),
(28, NULL, NULL, 'customer', 'VapPwkfuqdiecvo', 'dominic19731973prec@gmail.com', NULL, '$2y$10$PdeQTutTWKy5rGYR1UZfzenU83YOKLyes3CZeUDhLUtdoz.oHAFAy', NULL, 'eyJpdiI6ImQ2VjB4aUpoT3JsZFZHRGNFOCtvZ1E9PSIsInZhbHVlIjoicWRhV0pcL05iN1NoNXB5bjFyUHg3TXc9PSIsIm1hYyI6ImI4ZmFkNzc1YTQ0ZDNjNmVjYzRhNjlhZTJhZDJhNzBhYjk5OGFhZmQxZGJhYjllNjAwNDE2M2VlNmZlMzFjNTMifQ==', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-04-28 21:16:13', '2021-04-28 21:16:13'),
(29, NULL, NULL, 'customer', 'mdrasek123', 'mdrasek123@gmail.com', NULL, '$2y$10$Wqg1rLokP55VElziN5wIHePnd4Ay0dcMSHQ8dTPo/brsQESOkJrV6', NULL, 'eyJpdiI6ImZXQ3ozUFlNRnZOOGJRYzhIS1p5M2c9PSIsInZhbHVlIjoiOTRlYzdXdG5ac0pQN0V1MXlmZncxUT09IiwibWFjIjoiMjA1YjJjMmVjYjZjOGQxZWYyNTM0YjE0ZjVmZGFlNWVhOGUzNjM0ZWIyMjljMTA0ZDgxYjE5YWEyMzQ3ZTE1OCJ9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-04-29 17:56:20', '2021-04-29 17:56:20'),
(30, NULL, NULL, 'customer', 'Md Parvez', 'spparvez2304@gmail.com', NULL, '$2y$10$sH5ZlTZ/maujr/0Smoit4.FrRilSqdkx0jpO0azymp1IsHVxJr1Hu', NULL, 'eyJpdiI6IkluZGdQaXdnemZldFJReWdSVE1oVUE9PSIsInZhbHVlIjoiSjV6S0dPK2hSQ3dNWFBDNWowaGNwQT09IiwibWFjIjoiYTAyY2IwODJkZmE4YjM3MTZlMmVmZTFiNmFlMTk4MzA2MjE1MDEzZmUzODdmNTIwM2E2OGYyNDQ4ZTQ2ODM1MSJ9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-01 11:05:14', '2021-05-01 11:16:40'),
(31, NULL, '485221259268728', 'customer', 'Ãhñâf Håśāñ', 'mohammadhasan250962@gmail.com', NULL, NULL, '2021-05-03 09:05:45', NULL, NULL, 'kLf5cAWTU06iDgSF0n9Dx1kmmCH1FaXdcjkMrgA6Q5OrI8fPFRuc47Q5dJlA', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-03 09:41:45', '2021-05-03 09:41:45'),
(32, NULL, NULL, 'customer', 'Md Sayedul Islam Sifat', 'www.sisifat2000@gmail.com', NULL, '$2y$10$gFkqpZrhSRAo1ZU9WXaBcOWooZ/DIt4/Isv5i3sU0F4L89.6uI74.', NULL, 'eyJpdiI6IkhWdWhjRlYzTVBkcGoyU0Z4OXI2WFE9PSIsInZhbHVlIjoiY2xPRHpcL3NuMjJVYk1lWWZlMklYcUE9PSIsIm1hYyI6Ijc4MWZkNTY0NGI1YmNjMzdjMjUyZjM5ZDJlMTI0MjViMTBlNDQxYzM0MzRjYjdmZDZkYTdiMDBiN2FjNTYyZTIifQ==', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-03 18:25:44', '2021-05-03 18:29:02'),
(33, NULL, NULL, 'customer', 'Linda Juan', 'juanlinda777@hotmail.com', NULL, '$2y$10$ZNDvWOJoutS/AOSeySTnDexQlIaEyaC1oHmOKLRJp.qkwKhbBK9r.', NULL, 'eyJpdiI6IjhSSllYV0dQSkFzZjB3b3F6Y090b0E9PSIsInZhbHVlIjoiV0doN0JzTTU5dmlUZ3lNdkVsQzhNUT09IiwibWFjIjoiNjJiMGY0NWZjMmMwNDM3OWQ0MGEyYzUzNzJjZDQyZWZjODc3MjFhNmUyZTU1NDNhYWZhMTU2OGMyYWJkYjQ3NCJ9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-07 02:18:38', '2021-05-07 02:18:38'),
(34, NULL, NULL, 'customer', 'Ronju Ansary', 'ronjuvai2018@gmail.com', NULL, '$2y$10$jfHmUweL9UGzmpNCnscYtOzgrEhfjKYrtfDaWV4GJzHdJRipPyQke', NULL, 'eyJpdiI6IjdkUHpZTDRhYzQ2cmJtTExhZlFcL2dRPT0iLCJ2YWx1ZSI6ImU5d2JySXAyMjJ0RFB5TzYyc3hvQVE9PSIsIm1hYyI6IjdiYTAxZjBlMTI3ZjQzODExMzg5MTIxNWQ4YmUyNjhmNzcxN2RiMDVkZjM2Y2EwOTMwZTU4MjZiYTUyYmMyNDUifQ==', NULL, 'n9ViA1x6pIqK7MISEfEEzQcVZuZITwUAERmLSFOWXwx9lRnQDJHS1s9L6Bu4', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-10 08:42:47', '2021-05-10 08:43:25'),
(35, NULL, NULL, 'customer', 'Jahangir Alam Shipon', 'j.shipon72@gmail.com', NULL, '$2y$10$CBRU3I/5x0Bgq.xC.6cOY.gYbCpm7ZAuAMbtPFF.wNbHvYIo98d76', NULL, 'eyJpdiI6Ik5nNk1IWmVNZ0E4YVptak9uQkRqK1E9PSIsInZhbHVlIjoiaTM2YVlpRGhBYjd2ZklZXC9FQ2JcL3p3PT0iLCJtYWMiOiI4NWY3YmViOTIyY2Q1ZDNkZGViMmY0MWIyOTRjYzRkN2RkZTAzYTU2NWRiZjdmODYyMjE5OTRiYzI3YTg1NzdkIn0=', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-17 10:25:40', '2021-05-17 10:25:40'),
(36, NULL, NULL, 'customer', 'saad', 'qmsislam@gmail.com', NULL, '$2y$10$RCb8uaM9gwNq/LYD5jtu9O4R0qtFJfJXTHf9Imy8BwO.jdVCzEGNS', NULL, 'eyJpdiI6IlA3SjBBdndHOGxLaFFPM1Vsd1ZVY0E9PSIsInZhbHVlIjoidjJwbCtFeUxhWUZHUWVcL3RsajJXaXc9PSIsIm1hYyI6ImEwM2YyNjMyMjY0NmRhM2UyMTE5NzYxZWQ3ZDJjNzcxNDkyNGJiNDcxZDI4NGJhOWY1MzdiZTM0ODQ2NTgxYmUifQ==', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-19 08:35:07', '2021-05-19 08:35:07'),
(37, NULL, NULL, 'customer', 'Kevintruts', 'tapanibrahms@dr.com', NULL, '$2y$10$5Ppcr6JiRn1N5HhnxW1yNuSAbn4xNDdA4WQbumKcm0C.oTw/acYvG', NULL, 'eyJpdiI6IjlWQ29VUlRWN3J2cGYzTlp2WUN5U0E9PSIsInZhbHVlIjoiaUpKbkFMVVcyVUdqUXJiNmZsNFwvMGc9PSIsIm1hYyI6IjczMTRmMmEyZTg5NTRlNTRmYjAzYWQ3MDNhNWY1Y2MwZjc5OWIxODI5NDhmNjA0M2FhYzQwYjc5MjU5NDMyMGYifQ==', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-19 11:21:08', '2021-05-19 11:21:09'),
(38, NULL, NULL, 'customer', 'Rashed', 'artificialsoft@gmail.com', NULL, '$2y$10$0kkIVvhz.jAC2zypUncV5.jbiea1z1lT1yhU9.L3/8Pa56L5qknG6', NULL, 'eyJpdiI6IjhzYkQ3djdRalFWaVlmT1ZJZjBiZVE9PSIsInZhbHVlIjoiaU4yR0gyUkY5TEZZaHZhK3Zxc0JpZz09IiwibWFjIjoiNDk1MGNmYjkwNmFhNTY2MjE5YmZmMzkxMGJmY2E3NDE5NGU4ZjUzYWExN2JjNTBhMThmYzY1ZjZlNGY4ZjM0NCJ9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-22 06:07:20', '2021-05-22 06:07:20'),
(39, NULL, NULL, 'customer', 'Raj', 'rpplabon@gmail.com', NULL, '$2y$10$rQmO0/5Wl7bLhLbuQRhhoeVVHtVqCchUzSh/2y/bFxhaAFWiL7X5G', NULL, 'eyJpdiI6IjdhMkhMY2hTbjdiSnpEYko4SUtpaGc9PSIsInZhbHVlIjoieEFHUmtPb0M2WkFpcGJNakJhOHA1QT09IiwibWFjIjoiNzY1YmFkNzc4NTQ0YmFjZDcwODIwNThjYWI2ODAxNGQ5NDM3MzRjYTc0Zjg5MzU5ODQ4NDU2OGM4Zjc1ZTlkZiJ9', NULL, 'URnYvl4djiaMkNM4l6CjT4kpQryhrQBhqHu8wSw2prpjgK0ddvdMdfPPTOyo', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-22 06:09:20', '2021-05-22 06:15:25'),
(40, NULL, NULL, 'customer', 'IKAQJV05G8 www.yandex.ru', 'mihailchepenko88@mail.ru', NULL, '$2y$10$zD72.xKpbieDjO3C0al.k.OnS/ra.9CtFYKaAWDk9tOkkqwMC2qaW', NULL, 'eyJpdiI6IlwvYUpIRGRxNHluU0lvbVlkYVwvTVcxQT09IiwidmFsdWUiOiJEN1RDNmRseEJKZ2NTVkN5SFB3Ym9BPT0iLCJtYWMiOiI1MWQzZjZiYTBkOGJiNWM5MWFmODljMGM5ODAxZTZmMTAwYmRiNTZlMGQ3OTZmZTNmNmFkZTk0OGRkYjhhZmM5In0=', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-22 06:32:28', '2021-05-22 06:32:28'),
(41, NULL, NULL, 'customer', 'FERDOUS AHMED', 'ferdousahmed2020@gmail.com', NULL, '$2y$10$0oSMftNUjQAo0Vso4TIfNeaRZ49PxGL2mqELm2jzISfkByNjnPzU6', NULL, 'eyJpdiI6InBJQ2hmc0R0T1dHcVBtVWlSOHVzYmc9PSIsInZhbHVlIjoicnZvTkVGVm9YZ0VDNDJmM0NiRyt5QT09IiwibWFjIjoiZGQxZjIyZDBjYjcyMzRjOTRlMjVmYzY0NjY2ZmVhMDdhOTMxM2M5OWQxZDdhNGE1ZTNhYTU2YTRkMjA0YWU3ZiJ9', NULL, 'iOGri7wuuGcI9KhN7gUALcavwWsH9niNtwq4NhcJCnsrDU7Li0RwHN5R3WyM', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-27 04:49:36', '2021-05-27 04:49:36'),
(43, NULL, NULL, 'customer', 'Eaymin', 'eaymin47@gmail.com', NULL, '$2y$10$7DLQhrafM8VJzlbf9ngDme.CO/nlTJoFl.igJAntJFh0cOKoqLW8C', '2021-05-27 11:46:52', 'eyJpdiI6ImZpTm5ZcW4yZGVyZWgwUHdYdVpqNEE9PSIsInZhbHVlIjoiMThLVW9hWm1iQlIzK2x1aVFPS2h3QT09IiwibWFjIjoiYTlkOGRlODNiMzViYzliNzMyNmJjODgwYzk0MThlMjRmMTgwOGVjOTNiNjAyMjRiZGIyNjQ0YjQxMWQ2NGU2ZSJ9', NULL, 'HIYKMsLusTfaNI2BDiuADRTk7INW1ZfMz47V5bx0zwUOqTvrV5uxKRRSXw3u', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-27 11:45:57', '2021-05-27 11:46:52'),
(44, NULL, NULL, 'staff', 'Lekhon Mahmud', 'lekhon@modonali.com', '01817590725', '$2y$10$.fLjO2r.Hf6gFFf4rY..3uJWX7nKd1vvAk.ZIRDm4TbPQafimJHbC', '2021-05-31 12:11:38', '95285', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-27 12:12:27', '2021-08-23 05:35:02'),
(45, NULL, NULL, 'customer', 'ymBYXWdMkQRjKrn', 'noelljosselynnoell@gmail.com', NULL, '$2y$10$8Td2NGVIIlDAaHc4rqq82uS4kSOx..ih1uURWeAiwTzayzpHPZQpq', NULL, 'eyJpdiI6IldrR3NRUFlrMTVkbFF0YW5FTzRSTGc9PSIsInZhbHVlIjoiNjQ4eGJDR0dcL2xRUThqWXR1aGhPcUE9PSIsIm1hYyI6ImZjYzNmOGVkNWUyNmM2OThlYTU5NzRjYTI3ZTMzODc2MjZlMDJlMjI4M2MxYTVmMThkMDc0MDI3Yzk3ZDk0MzQifQ==', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-27 14:19:44', '2021-05-27 14:19:44'),
(46, NULL, NULL, 'seller', 'Modonali.com', 'md8423060@gmail.com', NULL, '$2y$10$PdflifXxFRp/0VSQCja37uvWHbRwcsnTY1foxpHYvRe7QYT0uKMLW', NULL, 'eyJpdiI6ImFTenhtRjlUNXEyVWNqQlIrQllHNHc9PSIsInZhbHVlIjoidzFVZ3RnOVJcL0NMVVRRdHFqd0ltRnc9PSIsIm1hYyI6ImM1M2FkYmNkODcyZmRhOTQ1NDU0ZWE0MTc2NzY4MDU1YTRmYjJkNzUyNzE5ZmM4OWYyYzc5ZjM0OWVkMWMyNTYifQ==', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-29 15:35:32', '2021-05-29 15:35:32'),
(47, NULL, NULL, 'customer', 'Kausar ahamed anik', 'kausarahamedanik21@gmail.com', NULL, '$2y$10$Fg6tLznL7aTLB.zwYMorlO1henBaJn.MRyYpCAw1MISJvIqAsEWo6', '2021-05-31 12:11:38', 'eyJpdiI6Ik9FQmtcL25zQk5hSmhLbXIwZEdHd2h3PT0iLCJ2YWx1ZSI6InNcL3p6QmpPdUpudVpYb3BVVG9cL3d1dz09IiwibWFjIjoiMzZhYWQ0MDUyYjY5MTAxNGQzZTg0NjZlYzk2MTJjYzYyZDI0ZjcyYzg3MTQxZWJiMWRkNDgwMWFjODUxNGY4NSJ9', NULL, 'NiEYsQvoGem6EatFhIwO5v9Mts60XpHh5m3hWJDbeyy6QnonOBEWIVDjlqIi', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-31 12:10:56', '2021-05-31 12:11:38'),
(48, NULL, '23102200433152', 'customer', 'John Snow', 'geogatedproject89@gmail.com', NULL, NULL, '2021-06-04 23:06:47', NULL, NULL, 'x2Ay0YAqDI3b0iYZ3uMDliopUtW5iOuHuW5PEK2KuZpqiJsTlIplpDQT0WVN', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-06-04 23:08:47', '2021-06-04 23:08:47'),
(74, NULL, NULL, 'customer', 'Rasel Rana', NULL, '01620193118', '$2y$10$CpwgOzwGOjmusEs/WHLvTOk.zapXiAl8PVuNZisGN29zm2sIagP56', '2021-06-27 09:29:00', NULL, NULL, 'u9lUvIhYOCHUEjgk5KkcFnhD4uEY9wceELyjUSI3lMQj6Qo7nSzMmzM9bDNX', NULL, NULL, 'csdfdsaf', NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-06-27 09:27:52', '2021-06-27 09:29:00'),
(86, NULL, NULL, 'customer', 'Rasel Rana', NULL, '01965454719349', '$2y$10$SrTO4SGxo1Tf8fBfeUTqFOyEGU/Logzn33t/UKv6acz7vEqX5SyFG', '2021-08-22 05:14:40', NULL, NULL, 'hVdGaMRZrIXSeyy2m7OWObHVKFbXMXU394IGb8T3YSTIEygeqTRWGL6k0oPh', NULL, NULL, 'fdfgds', NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-08-21 05:18:11', '2021-08-22 05:14:40'),
(91, NULL, NULL, 'seller', 'All Service', NULL, '01964719349', '$2y$10$gw8BOF8QMUVQ14pb7vopiemIUiLUr0W07tQzceT4Ljpxa1tSA6Eem', '2021-08-22 06:45:33', '884353', 'LVZ75vEapvKzeYE63GmfVVmhIemdCsJx', 'XDZjGLKnFNOPqLgWmfoa0e5EYCjfYbkZDbAWUqVpoxJqXgNNvNwY4epTzL85', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-08-22 06:41:49', '2021-08-23 06:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double(20,2) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand_translations`
--
ALTER TABLE `brand_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city_translations`
--
ALTER TABLE `city_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission_histories`
--
ALTER TABLE `commission_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_packages`
--
ALTER TABLE `customer_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_package_payments`
--
ALTER TABLE `customer_package_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_package_translations`
--
ALTER TABLE `customer_package_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_products`
--
ALTER TABLE `customer_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_product_translations`
--
ALTER TABLE `customer_product_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deals`
--
ALTER TABLE `flash_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deal_translations`
--
ALTER TABLE `flash_deal_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_metas`
--
ALTER TABLE `otp_metas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickup_points`
--
ALTER TABLE `pickup_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickup_point_translations`
--
ALTER TABLE `pickup_point_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `tags` (`tags`(255));

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_taxes`
--
ALTER TABLE `product_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_translations`
--
ALTER TABLE `role_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `seller_withdraw_requests`
--
ALTER TABLE `seller_withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `brand_translations`
--
ALTER TABLE `brand_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `city_translations`
--
ALTER TABLE `city_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `commission_histories`
--
ALTER TABLE `commission_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `customer_packages`
--
ALTER TABLE `customer_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_package_payments`
--
ALTER TABLE `customer_package_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_package_translations`
--
ALTER TABLE `customer_package_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_products`
--
ALTER TABLE `customer_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_product_translations`
--
ALTER TABLE `customer_product_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_deals`
--
ALTER TABLE `flash_deals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `flash_deal_translations`
--
ALTER TABLE `flash_deal_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `otp_metas`
--
ALTER TABLE `otp_metas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickup_points`
--
ALTER TABLE `pickup_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pickup_point_translations`
--
ALTER TABLE `pickup_point_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `product_taxes`
--
ALTER TABLE `product_taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_translations`
--
ALTER TABLE `role_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `seller_withdraw_requests`
--
ALTER TABLE `seller_withdraw_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1864;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

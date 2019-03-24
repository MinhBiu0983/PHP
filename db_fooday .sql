-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2019 at 12:17 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_fooday`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(5, 'Drink', 'drink', '2019-03-22 02:42:03', '2019-03-22 02:42:03'),
(6, 'Food', 'food', '2019-03-22 02:42:14', '2019-03-22 02:42:14'),
(7, 'Fruit', 'fruit', '2019-03-22 02:43:32', '2019-03-22 02:43:32');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(3, 'linh', 'linh@gmail.com', 'test', 'test contact', '2019-03-24 11:02:26', '2019-03-24 11:02:26'),
(4, 'Thuy Dung', 'dung@gmail.com', 'Hài lòng', 'Hài lòng với cách phục vụ của quán', '2019-03-24 15:14:09', '2019-03-24 15:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(9, 5, 'Nước mía', 'ngon bổ rẻ', 5000, 'nuoc-mia-2019-03-24-5c9801822fe04.jpg', '2019-03-22 22:07:13', '2019-03-24 15:15:30'),
(11, 6, 'Bánh tráng trộn', 'ăn vặt', 10000, 'banh-trang-tron-2019-03-23-5c95bfc83ebb4.jpg', '2019-03-22 22:10:32', '2019-03-22 22:10:32'),
(12, 7, 'Trái cây dĩa', 'Bổ sung nhiều chất dinh dưỡng', 15000, 'trai-cay-dia-2019-03-23-5c95c01093784.jpg', '2019-03-22 22:11:44', '2019-03-22 22:11:44'),
(13, 5, 'Cà phê sữa đá', 'Giúp bạn tỉnh táo cả ngày', 10000, 'ca-phe-sua-da-2019-03-24-5c97ff2463fd2.jpg', '2019-03-22 22:12:32', '2019-03-24 15:05:24'),
(15, 5, 'Trà sữa matcha', 'Trà sữa ngon bổ rẻ', 25000, 'tra-sua-matcha-2019-03-24-5c98001724ec7.jpg', '2019-03-24 15:09:27', '2019-03-24 15:09:27'),
(16, 6, 'Cá viên chiên', 'Ăn vặt', 20000, 'ca-vien-chien-2019-03-24-5c98009e1c9ac.jpg', '2019-03-24 15:11:42', '2019-03-24 15:11:42'),
(17, 7, 'Dưa hấu', 'Ngon, mát', 30000, 'dua-hau-2019-03-24-5c9800c479fff.jpg', '2019-03-24 15:12:20', '2019-03-24 15:12:20'),
(18, 5, 'sinh tố', 'ngon bổ rẻ', 15000, 'sinh-to-2019-03-24-5c98091339c86.png', '2019-03-24 15:47:47', '2019-03-24 15:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_20_025851_create_sliders_table', 2),
(4, '2019_03_22_050546_create_categories_table', 3),
(5, '2019_03_22_071936_create_items_table', 4),
(6, '2019_03_23_133010_create_reservations_table', 5),
(7, '2019_03_24_054957_create_contacts_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_and_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `phone`, `email`, `date_and_time`, `message`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Luc Thao', '0779882660', 'admin@admin.com', '24 March 2019 - 12:11 AM', 'test message', 1, '2019-03-23 11:13:13', '2019-03-23 21:15:37'),
(5, 'Minhyun', '0123456789', 'minhyun@nuest.com', '25 March 2019 - 10:11 AM', 'cwdscrgv', 1, '2019-03-23 11:14:03', '2019-03-24 10:47:56'),
(6, 'abc', '963258741', 'abcxyz@gmail.com', '02 March 2019 - 09:11 AM', 'ftrgsfxt', 0, '2019-03-23 11:17:02', '2019-03-23 11:17:02'),
(7, 'Luc An', '123456', 'abc@gmail.com', '25 March 2019 - 12:11 PM', 'fweffcee', 1, '2019-03-23 22:45:51', '2019-03-24 09:03:19'),
(8, 'Luc Thao', '0779882660', 'thaoluc15dth15@gmail.com', '25 December 1899 - 08:11 AM', 'test message', 1, '2019-03-24 10:53:33', '2019-03-24 10:56:02'),
(9, 'Luc Thao', '0123456789', 'admin@admin.com', '25 December 1899 - 08:11 AM', 'cffwefswgw', 0, '2019-03-24 11:00:16', '2019-03-24 11:00:16'),
(10, 'Luc Thao', '9638520147', 'abcxyz@gmail.com', '26 February 2019 - 09:11 AM', 'fwegwege', 1, '2019-03-24 11:01:00', '2019-03-24 11:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `sub_title`, `image`, `created_at`, `updated_at`) VALUES
(7, 'Food', 'Ẩm thực Việt Nam', 'food-2019-03-24-5c97fd8373264.jpg', '2019-03-24 14:58:27', '2019-03-24 14:58:27'),
(8, 'Ăn vặt', 'Hôm nay ăn gì ?', 'an-vat-2019-03-24-5c97fdb8862a0.jpg', '2019-03-24 14:59:20', '2019-03-24 14:59:20'),
(9, 'Drink', 'Hôm nay uống gì ?', 'drink-2019-03-24-5c97fdfadcda4.png', '2019-03-24 15:00:26', '2019-03-24 15:00:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Luc Thao', 'admin@admin.com', '$2y$10$rhmnPZeZjUGeTNXkZSWZ5.Jk.TgA.WR.qE/ufGEKED8qy/WnbuAAq', 'nfMtdQHADITkUUkIjhrF2hHmPwbrpMB2FkUxKEzEPGxuBsHPvdIV3VEJSGwu', '2019-03-19 16:33:49', '2019-03-19 16:33:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_category_id_foreign` (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

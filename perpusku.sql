-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2023 at 04:02 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpusku`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_code` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `good` int(11) DEFAULT NULL,
  `damaged` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_code`, `title`, `cover`, `slug`, `jumlah`, `good`, `damaged`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'A001-001', 'CorelDraw for Beginner', 'CorelDraw Vol 1-1686995155.jpg', 'coreldraw-for-beginner', 5, 2, 3, '2023-05-28 07:12:32', '2023-07-19 01:35:39', NULL),
(2, 'A002-001', 'Flutter for Beginner', NULL, 'flutter-for-beginner', NULL, NULL, NULL, '2023-07-03 05:31:12', '2023-07-05 20:18:48', '2023-07-05 20:18:48'),
(3, 'A002-002', 'Flutter for Intermediate', NULL, 'flutter-for-intermediate', NULL, NULL, NULL, '2023-07-03 05:37:17', '2023-07-05 20:18:02', '2023-07-05 20:18:02'),
(4, 'A003-001', 'PHP for Beginner', 'CorelDraw Vol 1-1686995155.jpg', 'php-for-beginner', 2, 0, 3, '2023-07-05 20:12:00', '2023-07-19 06:36:32', NULL),
(5, 'A003-002', 'PHP for Intermediate', NULL, 'php-for-intermediate', 3, 2, 1, '2023-07-05 20:16:54', '2023-07-05 20:16:54', NULL),
(6, 'A003-003', 'PHP for Nightmare', NULL, 'php-for-nightmare', 3, 1, 2, '2023-07-05 20:22:24', '2023-07-19 06:36:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`id`, `book_id`, `category_id`, `created_at`, `updated_at`) VALUES
(5, 5, 2, NULL, NULL),
(6, 5, 3, NULL, NULL),
(7, 5, 4, NULL, NULL),
(8, 7, 9, NULL, NULL),
(9, 7, 10, NULL, NULL),
(10, 1, 9, NULL, NULL),
(13, 3, 2, NULL, NULL),
(14, 2, 12, NULL, NULL),
(15, 6, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Novel', 'novel', NULL, NULL, NULL),
(2, 'Comic', 'comic', NULL, NULL, NULL),
(3, 'Fantasy', 'fantacy', NULL, NULL, NULL),
(4, 'Fiction', 'fiction', NULL, NULL, NULL),
(5, 'Romance', 'romance', NULL, NULL, NULL),
(6, 'Horror', 'horror', NULL, NULL, NULL),
(7, 'Mystery', 'mystery', NULL, NULL, NULL),
(8, 'Western', 'western', NULL, NULL, NULL),
(9, 'Science', 'science', '2023-06-14 20:55:01', '2023-06-14 20:55:01', NULL),
(10, 'Eastern', 'eastern', '2023-06-14 21:16:54', '2023-06-15 05:04:01', NULL),
(11, 'Fictional History', 'fictional-history', '2023-06-14 22:09:25', '2023-06-15 05:04:06', NULL),
(12, 'Sports', 'sports', '2023-06-14 22:54:07', '2023-06-15 05:04:10', NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_12_125855_create_roles_table', 1),
(11, '2023_06_12_132624_add_role_id_column_to_users_table', 2),
(12, '2023_06_12_133839_create_categories_table', 2),
(14, '2023_06_12_134352_create_book_category_table', 2),
(15, '2023_06_12_135235_create_rent_logs_table', 3),
(16, '2023_06_15_043407_add_soft_delete_column_to_categories_table', 4),
(17, '2023_06_15_045423_add_slug_column_to_categories_table', 5),
(18, '2023_06_15_050318_change_slug_column_into_nullable_in_categories_table', 6),
(22, '2023_06_22_050159_add_slug_to_users_table', 9),
(31, '2023_06_12_134002_create_books_table', 10),
(32, '2023_06_17_060235_add_slug_cover_column_to_books_table', 10),
(33, '2023_06_17_100457_add_soft_delete_to_books_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
-- Table structure for table `rent_logs`
--

CREATE TABLE `rent_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `rent_date` date NOT NULL,
  `return_date` date NOT NULL,
  `actual_return_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rent_logs`
--

INSERT INTO `rent_logs` (`id`, `user_id`, `book_id`, `rent_date`, `return_date`, `actual_return_date`, `created_at`, `updated_at`) VALUES
(3, 2, 1, '2023-07-17', '2023-07-20', '2023-07-19', '2023-07-16 19:06:40', '2023-07-16 19:06:40'),
(4, 3, 1, '2023-07-19', '2023-07-22', '2023-07-25', '2023-07-19 01:35:39', '2023-07-19 01:35:39'),
(5, 4, 4, '2023-07-19', '2023-07-22', '2023-07-19', '2023-07-19 01:41:44', '2023-07-19 05:59:09'),
(6, 5, 4, '2023-07-19', '2023-07-22', NULL, '2023-07-19 06:24:35', '2023-07-19 06:24:35'),
(7, 5, 6, '2023-07-19', '2023-07-22', '2023-07-19', '2023-07-19 06:28:32', '2023-07-19 06:28:47'),
(8, 5, 6, '2023-07-19', '2023-07-22', '2023-07-19', '2023-07-19 06:35:44', '2023-07-19 06:36:01'),
(9, 3, 4, '2023-07-19', '2023-07-22', NULL, '2023-07-19 06:36:32', '2023-07-19 06:36:32');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'client', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `slug`, `password`, `phone`, `address`, `status`, `created_at`, `updated_at`, `deleted_at`, `role_id`) VALUES
(1, 'admin', 'admin', '$2y$10$sMgZKXxQAwyXc7vv3acNS.gMF2u9jw0H.zqO2SciY40TiqeKt0KVu', NULL, 'Politeknik Negeri Semarang', 'active', NULL, NULL, NULL, 1),
(2, 'Ade', 'ade', '$2y$10$sMgZKXxQAwyXc7vv3acNS.gMF2u9jw0H.zqO2SciY40TiqeKt0KVu', NULL, 'Tembalang', 'active', NULL, '2023-06-22 03:05:19', NULL, 2),
(3, 'Kanya', 'kanya', '$2y$10$sMgZKXxQAwyXc7vv3acNS.gMF2u9jw0H.zqO2SciY40TiqeKt0KVu', NULL, 'Tembalang', 'active', NULL, NULL, NULL, 2),
(4, 'Yoga', 'yoga', '$2y$10$tFZZx/p1vp2tvv2shHLoxuIFZo7FPBY51C3V8dXXRPS.pziJ1wKi2', '123456789111', 'Tembalang', 'active', '2023-06-14 04:56:10', '2023-07-05 21:11:26', NULL, 2),
(5, 'Audy', 'audy', '$2y$10$0Pv.rukkDhA.fOYZj4VDHe9eZHeuC3jxik5E8pK6N2cZMwoiIbcny', '123456789101', 'Tembalang', 'active', '2023-06-21 22:10:19', '2023-07-19 06:24:03', NULL, 2),
(6, 'Nandi', 'nandi', '$2y$10$ztaI3Ka8vbnTe3c7NoOR3eYnKAR30hD0xSl0d6SWXpSG8SjBzm51m', '081213141516', 'Bergas', 'active', '2023-07-02 23:00:42', '2023-07-05 20:36:37', '2023-07-05 20:36:37', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_category_book_id_foreign` (`book_id`),
  ADD KEY `book_category_category_id_foreign` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rent_logs`
--
ALTER TABLE `rent_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rent_logs_user_id_foreign` (`user_id`),
  ADD KEY `rent_logs_book_id_foreign` (`book_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rent_logs`
--
ALTER TABLE `rent_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_category`
--
ALTER TABLE `book_category`
  ADD CONSTRAINT `book_category_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `book_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `rent_logs`
--
ALTER TABLE `rent_logs`
  ADD CONSTRAINT `rent_logs_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `rent_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

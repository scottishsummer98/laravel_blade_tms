-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 08, 2022 at 07:21 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `continents`
--

CREATE TABLE `continents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `con_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `con_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `continents`
--

INSERT INTO `continents` (`id`, `con_code`, `con_name`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'Africa', '2021-12-05 23:48:58', '2021-12-05 23:48:58'),
(2, 'AS', 'Asia', '2021-12-05 23:49:03', '2021-12-05 23:49:03'),
(3, 'EU', 'Europe', '2021-12-05 23:49:08', '2021-12-05 23:49:08'),
(4, 'NA', 'North America', '2021-12-05 23:49:14', '2021-12-05 23:49:14'),
(5, 'OC', 'Oceania', '2021-12-05 23:49:20', '2021-12-05 23:49:20'),
(6, 'SA', 'South America', '2021-12-05 23:49:24', '2021-12-05 23:49:24');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `con_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coun_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coun_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `con_code`, `coun_code`, `coun_name`, `created_at`, `updated_at`) VALUES
(1, 'SA', 'AR', 'Argentina', '2021-12-05 23:49:49', '2021-12-05 23:49:49'),
(2, 'OC', 'AU', 'Australia', '2021-12-05 23:50:01', '2021-12-05 23:50:01'),
(3, 'AS', 'BD', 'Bangladesh', '2021-12-05 23:50:08', '2021-12-05 23:50:08'),
(4, 'SA', 'BR', 'Brazil', '2021-12-05 23:50:18', '2021-12-05 23:50:18'),
(5, 'EU', 'FR', 'France', '2021-12-05 23:50:27', '2021-12-05 23:50:27'),
(6, 'EU', 'DE', 'Germany', '2021-12-05 23:50:35', '2021-12-05 23:50:35'),
(7, 'AS', 'IN', 'India', '2021-12-05 23:50:45', '2021-12-05 23:50:45'),
(8, 'OC', 'NZ', 'New Zealand', '2021-12-05 23:50:55', '2021-12-05 23:50:55'),
(9, 'AF', 'ZA', 'South Africa', '2021-12-05 23:51:05', '2021-12-05 23:51:05'),
(10, 'EU', 'ES', 'Spain', '2021-12-05 23:51:16', '2021-12-05 23:51:16'),
(11, 'EU', 'GB', 'United Kingdom', '2021-12-05 23:51:29', '2021-12-05 23:51:29'),
(12, 'NA', 'US', 'United States Of America', '2021-12-05 23:51:39', '2021-12-05 23:51:39');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(20, '2021_11_21_085833_create_tasks_table', 2),
(21, '2021_11_21_090003_create_countries_table', 2),
(22, '2021_11_21_090030_create_continents_table', 2);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assigned_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assigned_by_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assigned_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assigned_to_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assign_date` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `assigned_by`, `assigned_by_country`, `assigned_to`, `assigned_to_country`, `assign_date`, `status`, `created_at`, `updated_at`) VALUES
(14, 'Add TMS to Portfolio', 'Add the Task Management System project to the react portfolio and deploy to netlify', 'scottishsummer98', 'Bangladesh', 'scottishsummer98', 'Bangladesh', '2022-11-09', 'Doing', '2022-11-08 13:04:57', '2022-11-08 13:04:57'),
(16, 'Actor needed', 'Please play as my main hero in my next film.', 'mscorsese', 'United States Of America', 'scottishsummer98', 'Bangladesh', '2017-05-08', 'Assigned', '2022-11-08 13:13:27', '2022-11-08 13:13:27'),
(17, 'Ask Martin about me', 'Tell Martin I am an aspiring actor. Please if he could take me in his next movie as you two are so close', 'mgood123', 'United States Of America', 'scottishsummer98', 'Bangladesh', '2022-11-06', 'Assigned', '2022-11-08 13:16:03', '2022-11-08 13:16:03'),
(18, 'Hangout With me', 'Hey, I am back fromt2 world cup. Let\'s meet up soon', 'Shakib75', 'Bangladesh', 'scottishsummer98', 'Bangladesh', '2022-11-18', 'Assigned', '2022-11-08 13:19:16', '2022-11-08 13:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `first_name`, `last_name`, `user_name`, `country`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(12, 'Shakib', 'Al Hasan', 'Shakib75', 'Bangladesh', 'sulh1h9C6f@gmail.com', NULL, '$2y$10$FJVr5BRDJSUQGTs77mIa/.KCXyCUrx1s4fTt5trMBI1AOffa5c/7q', NULL, NULL, NULL),
(22, 'Karim', 'Benzema', 'bigboykb', 'France', 'HfwPkN1hUg@gmail.com', NULL, '$2y$10$FJVr5BRDJSUQGTs77mIa/.KCXyCUrx1s4fTt5trMBI1AOffa5c/7q', NULL, NULL, NULL),
(69, 'Nelson', 'Mendela', 'nelsonM', 'South Africa', 'nelson123@gmail.com', NULL, '$2y$10$FJVr5BRDJSUQGTs77mIa/.KCXyCUrx1s4fTt5trMBI1AOffa5c/7q', NULL, '2021-11-28 22:45:15', '2021-11-29 00:11:21'),
(77, 'Sergio', 'Agüero', 'kunagüero', 'Argentina', 'kumkun10@gmail.com', NULL, '$2y$10$FJVr5BRDJSUQGTs77mIa/.KCXyCUrx1s4fTt5trMBI1AOffa5c/7q', NULL, '2021-11-29 03:41:40', '2021-11-29 03:41:40'),
(81, 'Meagan', 'Good', 'mgood123', 'United States Of America', 'meagan@gmail.com', NULL, '$2y$10$FJVr5BRDJSUQGTs77mIa/.KCXyCUrx1s4fTt5trMBI1AOffa5c/7q', NULL, '2021-11-29 03:49:17', '2021-11-29 03:49:17'),
(86, 'Russel', 'Crowe', 'rcrowe', 'New Zealand', 'crowe@gmail.com', NULL, '$2y$10$FJVr5BRDJSUQGTs77mIa/.KCXyCUrx1s4fTt5trMBI1AOffa5c/7q', NULL, '2021-11-29 03:55:14', '2021-11-29 03:55:14'),
(89, 'Martin', 'Scorsese', 'mscorsese', 'United States Of America', 'martin@gmail.com', NULL, '$2y$10$FJVr5BRDJSUQGTs77mIa/.KCXyCUrx1s4fTt5trMBI1AOffa5c/7q', NULL, '2021-12-05 23:57:23', '2021-12-05 23:57:23'),
(92, 'Samiur', 'Rahman', 'scottishsummer98', 'Bangladesh', 'samiremail98@gmail.com', NULL, '$2y$10$FJVr5BRDJSUQGTs77mIa/.KCXyCUrx1s4fTt5trMBI1AOffa5c/7q', NULL, '2022-11-08 11:28:20', '2022-11-08 11:28:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `continents`
--
ALTER TABLE `continents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
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
-- AUTO_INCREMENT for table `continents`
--
ALTER TABLE `continents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

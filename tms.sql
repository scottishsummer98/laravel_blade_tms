-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 06, 2021 at 10:03 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.25

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
(1, 'Finish mod request', 'Finish modification request module before 14th December 2021', 'scottishsummer', 'Bangladesh', 'scottishsummer', 'Bangladesh', '2021-12-14', 'Assigned', '2021-12-05 23:52:35', '2021-12-05 23:52:35'),
(2, 'MCU film', 'Star in my new MCU film. You will be the main here cast against Gemma Atherton', 'scottishsummer', 'Bangladesh', 'miristiak', 'Bangladesh', '2021-12-01', 'Assigned', '2021-12-05 23:53:43', '2021-12-05 23:53:43'),
(4, 'Mafia film', 'Hello Mr. Sami. Star in my new film on 1960\'s American mafia family.', 'mscorsese', 'United States Of America', 'scottishsummer', 'Bangladesh', '2021-12-04', 'Done', '2021-12-05 23:58:22', '2021-12-06 04:00:10'),
(5, 'Mapia Mobie', 'Eshtar in mai naxt mafiya pilm Mr. Ghani pom Nilpamari', 'ajstar', 'Bangladesh', 'ghanimiah', 'Bangladesh', '2021-11-30', 'Doing', '2021-12-06 00:00:40', '2021-12-06 01:54:17'),
(6, 'Bangla Movie', 'Act in my new Bangla Cinema titled অদ্ভুত প্রেম', 'scottishsummer', 'Bangladesh', 'wolvering123', 'Australia', '2021-11-15', 'Assigned', '2021-12-06 00:52:25', '2021-12-06 01:39:28'),
(7, 'Task Module', 'Made Task module in IMS', 'scottishsummer', 'Bangladesh', 'scottishsummer', 'Bangladesh', '2021-11-17', 'Done', '2021-12-06 00:52:53', '2021-12-06 00:52:53'),
(9, 'Modifications', 'Modify IMS modules as per request after the new in charge joins', 'scottishsummer', 'Bangladesh', 'scottishsummer', 'Bangladesh', '2021-12-12', 'Doing', '2021-12-06 01:04:04', '2021-12-06 04:00:44'),
(10, 'MCU film', 'Star in my next MCU film. You will act with Mr. Istiak Tarek. A prominent actor from Bangladesh. You will play the role of electra.', 'scottishsummer', 'Bangladesh', 'pollytamina', 'United Kingdom', '2021-12-03', 'Assigned', '2021-12-06 01:05:03', '2021-12-06 01:05:03'),
(11, 'Shutter Island 2', 'I am remaking a Shutter Island sequel. I would love to have you on board Mr. Ghani', 'mscorsese', 'United States Of America', 'ghanimiah', 'Bangladesh', '2021-12-05', 'Assigned', '2021-12-06 01:57:50', '2021-12-06 01:57:50'),
(12, 'Save MILIL', 'Help me save MILIL from destruction Mr. Sami.', 'ghanimiah', 'Bangladesh', 'scottishsummer', 'Bangladesh', '2021-12-08', 'Doing', '2021-12-06 01:59:30', '2021-12-06 04:00:23'),
(13, 'Save MILIL', 'Help me save MILIL from destruction.', 'ghanimiah', 'Bangladesh', 'priom007', 'Bangladesh', '2021-12-03', 'Assigned', '2021-12-06 02:01:32', '2021-12-06 04:01:51');

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
(12, 'Shakib', 'Al Hasan', 'Shakib75', 'Bangladesh', 'sulh1h9C6f@gmail.com', NULL, '$2y$10$FAca69nDi9B385kJcplArekIz1M8WU.w1S7yQ0JAqcIaHXgZL02RO', NULL, NULL, NULL),
(16, 'Mahendra', 'Singh Dhoni', 'MSDcaptaincool', 'India', 'vhVd91hJa1@gmail.com', NULL, '$2y$10$FlF6kkxItlXurWOZ.4ZqAeLBT7qLQmBJ2VBoRwOQiV0t9VncmBmyW', NULL, NULL, NULL),
(17, 'Katrina', 'Kaif', 'kkaif123', 'India', 'GB0mMmqmvl@gmail.com', NULL, '$2y$10$1pyn/nmTXSuGvCFvIhYbGO2vbA9Relb.g3uUuW7l16rzpFw1B1lfy', NULL, NULL, NULL),
(22, 'Karim', 'Benzema', 'bigboykb', 'France', 'HfwPkN1hUg@gmail.com', NULL, '$2y$10$Z2TU7nOzUFquliySIi9mgOLGmjWlU.sRh6i8CaOmbVgP5IWEr51R.', NULL, NULL, NULL),
(23, 'Melanie', 'Laurent', 'shoshanna83', 'France', 'KwyQLiQguu@gmail.com', NULL, '$2y$10$JdKqFGsSnInGuEYor5d0jOWFwEDvwpchk1WAKw7N3pXp2NLfjFdIO', NULL, NULL, NULL),
(24, 'Mesut', 'Ozil', 'playmaker10', 'Germany', 'IEvRmAqW2E@gmail.com', NULL, '$2y$10$2JYXLK1IQh9vQnmLU4a1WOPnM.KEbQ9PF5hX2Bmsn5.udLv6rPV.G', NULL, NULL, NULL),
(25, 'Toni', 'Kroos', 'germansniper08', 'Germany', 'LMxRpOqK1G@gmail.com', NULL, '$2y$10$TOIm43EE.qQ7j0bpBS7f7.Ep602ZffYOqYjiOsQxTP3KNnoB054w6', NULL, NULL, NULL),
(30, 'Gemma', 'Arterton', 'pollytamina', 'United Kingdom', 'xRMd0UcBtA@gmail.com', NULL, '$2y$10$8lgeIcUTAYVFMgYyPjX8/.bJgFuzrlvvGGh81dVg3/lVEMyeYuq26', NULL, NULL, NULL),
(62, 'Samiur', 'Rahman', 'scottishsummer', 'Bangladesh', 'summer@gmail.com', NULL, '$2y$10$P9MAdtyAi3spj8IA1G4HEuIzARsGPj1Zmomjt3sarqUkdTyiMM.Em', NULL, '2021-11-21 04:41:09', '2021-11-21 04:41:09'),
(63, 'Alastair', 'Cook', 'acook2684', 'United Kingdom', 'batbatcook@gmail.com', NULL, '$2y$10$QGSmMtNgWfT0a76DrcLI0OLt11NFOLMNkjUvmulJ48S4FlHZxrZoO', NULL, '2021-11-22 04:20:22', '2021-11-22 04:20:22'),
(69, 'Nelson', 'Mendela', 'nelsonM', 'South Africa', 'nelson123@gmail.com', NULL, '$2y$10$ebyfsYgTEEWNMug6cg3pQ.li7.Gm4RCi6qHECB.0VCs9HVrlakiIW', NULL, '2021-11-28 22:45:15', '2021-11-29 00:11:21'),
(71, 'Lionel', 'Messi', 'leo10', 'Argentina', 'leo10@gmail.com', NULL, '$2y$10$t8gkOD/nfGNslh1jAtEsDurPay/ctNaK.CUB7O7FxK/2qhZNYvPn2', NULL, '2021-11-28 22:50:15', '2021-11-29 03:38:37'),
(77, 'Sergio', 'Agüero', 'kunagüero', 'Argentina', 'kumkun10@gmail.com', NULL, '$2y$10$GyurICXCF8mQGdSlD9tRYO.Ug0Lwxy7OdyaE1qZ13bXTeyDEoQ/cG', NULL, '2021-11-29 03:41:40', '2021-11-29 03:41:40'),
(78, 'Hugh', 'Jackman', 'wolvering123', 'Australia', 'xmen@gmail.com', NULL, '$2y$10$OI9c4x4bTmugzqiidx1wHeAWUDFhdnWW7z.8f4yA.NP6d.3MJnwme', NULL, '2021-11-29 03:42:48', '2021-11-29 03:42:48'),
(79, 'Brett', 'Lee', 'speedstarlee', 'Australia', 'aclee@gmail.com', NULL, '$2y$10$A2FfbtmOws9VoMNpxbdwIeWpFcN22Vt7A59acaaOoZc7Fq35GesBG', NULL, '2021-11-29 03:43:49', '2021-11-29 03:43:49'),
(81, 'Meagan', 'Good', 'mgood123', 'United Kingdom', 'meagan@gmail.com', NULL, '$2y$10$MBoEap6jAMiInzZaX03eguMMx1KK8nLkNX2n81Z86UaH9OoOXa5lq', NULL, '2021-11-29 03:49:17', '2021-11-29 03:49:17'),
(82, 'Ananta', 'Jalil', 'ajstar', 'Bangladesh', 'ajstar@gmail.com', NULL, '$2y$10$ok2E2pQVX.Xr7ps9hvkJIeiZ8fjIEntRTRQ6gGA4I18ALra0DJ882', NULL, '2021-11-29 03:51:23', '2021-11-29 03:51:23'),
(83, 'Jaya', 'Ahsan', 'jaya123', 'Bangladesh', 'jaya83@gmail.com', NULL, '$2y$10$sk8EGE1Bf1XOzTTGxGMS2uJKPM5pQo3By1FwTUnwTLPb6AmT1jHfC', NULL, '2021-11-29 03:51:45', '2021-11-29 03:51:45'),
(84, 'Chris', 'Hemsworth', 'thor299', 'Australia', 'iamthor@gmail.com', NULL, '$2y$10$T4CAmh3KTZdjTQzGXr/frOLGZKCHaO7BqpzRHBNz2WTUWoo6kEj/2', NULL, '2021-11-29 03:52:43', '2021-12-02 04:57:09'),
(85, 'Francisco', 'Isco', 'isco22', 'Spain', 'isco22@gmail.com', NULL, '$2y$10$P6qbfwMN3.dISsYjDNCkV.10VrFW0H1XRuVulpLKE5YPwiqL9Yn32', NULL, '2021-11-29 03:53:47', '2021-11-29 03:53:47'),
(86, 'Russel', 'Crowe', 'rcrowe', 'New Zealand', 'crowe@gmail.com', NULL, '$2y$10$e/unU9FoSP3MFq9f27zlSOUX44.up8C.cKolV51gj7Sba60jdhaUG', NULL, '2021-11-29 03:55:14', '2021-11-29 03:55:14'),
(87, 'Rezwanul', 'Ghani', 'ghanimiah', 'Bangladesh', 'ghanimiah@gmail.com', NULL, '$2y$10$cpkY44bwLyBBHa2UUwMlW.E.x8HSF8GFZLHk2AjbWmfEgRC4iQMpy', NULL, '2021-12-02 05:08:10', '2021-12-02 05:08:10'),
(88, 'Istiak', 'Tarek', 'miristiak', 'Bangladesh', 'miristiak@gmail.com', NULL, '$2y$10$jdU27RmfjWFEjBPfFlRfI.2/3yeDdIa5wyX4MSD3BhnE3Ae6EzH4S', NULL, '2021-12-04 23:12:51', '2021-12-04 23:12:51'),
(89, 'Martin', 'Scorsese', 'mscorsese', 'United States Of America', 'martin@gmail.com', NULL, '$2y$10$p66nHwhoNupKmtZZv7g.POABEgNJhbLvChMd7tEXQMvN.EMgl3QiW', NULL, '2021-12-05 23:57:23', '2021-12-05 23:57:23'),
(90, 'Sharif', 'Alam', 'priom007', 'Bangladesh', 'priom007@gmail.com', NULL, '$2y$10$4pZpFcxH5lHYYQrjIR/je.LGxf8oFVPVKYMLRt67Gc7MVqpltCg6K', NULL, '2021-12-06 02:00:42', '2021-12-06 02:00:42');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

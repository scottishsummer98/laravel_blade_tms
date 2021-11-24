-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 24, 2021 at 10:56 AM
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
(1, 'AF', 'Africa', NULL, NULL),
(2, 'AS', 'Asia', NULL, NULL),
(3, 'EU', 'Europe', NULL, NULL),
(4, 'NA', 'North America', NULL, NULL),
(5, 'OC', 'Oceania', NULL, NULL),
(6, 'SA', 'South America', NULL, NULL);

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
(1, 'AF', 'DZ', 'Algeria', NULL, NULL),
(2, 'AF', 'EG', 'Egypt', NULL, NULL),
(3, 'AF', 'GH', 'Ghana', NULL, NULL),
(4, 'AF', 'ZA', 'South Africa', NULL, NULL),
(5, 'AF', 'ZW', 'Zimbabwe', NULL, NULL),
(6, 'AS', 'BD', 'Bangladesh', NULL, NULL),
(7, 'AS', 'CN', 'China', NULL, NULL),
(8, 'AS', 'IN', 'India', NULL, NULL),
(9, 'AS', 'LB', 'Lebanon', NULL, NULL),
(10, 'AS', 'AE', 'United Arab Emirates', NULL, NULL),
(11, 'EU', 'FR', 'France', NULL, NULL),
(12, 'EU', 'DE', 'Germany', NULL, NULL),
(13, 'EU', 'IT', 'Italy', NULL, NULL),
(14, 'EU', 'ES', 'Spain', NULL, NULL),
(15, 'EU', 'GB', 'United Kingdom', NULL, NULL),
(16, 'NA', 'BS', 'Bahamas', NULL, NULL),
(17, 'NA', 'BB', 'Barbados', NULL, NULL),
(18, 'NA', 'CR', 'Costa Rica', NULL, NULL),
(19, 'NA', 'CU', 'Cuba', NULL, NULL),
(20, 'NA', 'DM', 'Dominica', NULL, NULL),
(21, 'OC', 'AU', 'Australia', NULL, NULL),
(22, 'OC', 'FJ', 'Fiji', NULL, NULL),
(23, 'OC', 'NZ', 'New Zealand', NULL, NULL),
(24, 'OC', 'PG', 'Papua New Guinea', NULL, NULL),
(25, 'OC', 'WS', 'Samoa', NULL, NULL),
(26, 'SA', 'AR', 'Argentina', NULL, NULL),
(27, 'SA', 'BR', 'Brazil', NULL, NULL),
(28, 'SA', 'CO', 'Colombia', NULL, NULL),
(29, 'SA', 'EC', 'Ecudaor', NULL, NULL),
(30, 'SA', 'VE', 'Venezuela', NULL, NULL);

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
(8, '2021_11_21_085833_create_tasks_table', 2),
(9, '2021_11_21_090003_create_countries_table', 2),
(10, '2021_11_21_090030_create_continents_table', 2);

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
  `continent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assigned_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assigned_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assign_date` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'qNanp9m4Rvdj4Ov', 'MMwhsStpSYpKu1t', 'AZsho2MmGk', 'Algeria', '0yNRNggSna@gmail.com', NULL, '$2y$10$6yf0bI/2ZRp/kPbaTZX5eOyFW7QPlrPFQcoFNV3RnRyAoeXCNRNJi', NULL, NULL, NULL),
(2, 'LKYbQeMG5lMBHnM', 'MdBeBH3odpNSYKA', 'SNk3TGfsr4', 'Algeria', 'ivFmWd60n2@gmail.com', NULL, '$2y$10$3YAQSIxbZw8ykgpdSO0VM.0o7SRGFhxLQ.A6OKvb1qr.qY56STiii', NULL, NULL, NULL),
(3, 'vEh4uyUdMnWXmsU', '5Qg2OMGl0rkz8nB', 'Bo5Kk1ghss', 'Egypt', 'kkHNNEWJZu@gmail.com', NULL, '$2y$10$lt0oS9gDxaflhl9rGmYz/ewH17REWykOTC7JrzzcQG0qUzJI.vJ8W', NULL, NULL, NULL),
(4, '35WzrL4fJ20CF0m', 'rjglU7ySNvDjs39', 'QvS7dhSfoZ', 'Egypt', 'hfzlUA2eKw@gmail.com', NULL, '$2y$10$69mTEHhGMmn18Z2ImdahTObCcMjzrssBPpPM6AngW3JfdR2OSzYVq', NULL, NULL, NULL),
(5, 'WhW4F3Tjvmjv4l1', 'dbLSqx3DDgwvIGp', 'MZTPco2NOc', 'Ghana', 'TlxfmZx8dv@gmail.com', NULL, '$2y$10$pGa2R0U24R3u8wKsognpre7BgYXDcW.HovSiLIAzmX9JoSElugxci', NULL, NULL, NULL),
(6, 'z7lP0PBA0q9c87S', 'lpGjS8GkOccCjbQ', 'mWDEgvSF0V', 'Ghana', 'aO2PGjSV50@gmail.com', NULL, '$2y$10$Ee1apKN0Ou4.icU1y4fL4.04cx734KTx0nrC5JAD3V6kUyQ.8XRLa', NULL, NULL, NULL),
(7, 'Nelson', 'Mendela', 'nelsonM', 'South Africa', 'fsm4ZubE3f@gmail.com', NULL, '$2y$10$tw9hurI/R96oSJohyD2.dOxXhwrPAwUvA0QZFps/yfXu8g4djK50W', NULL, NULL, NULL),
(8, 'Abraham', 'De Villiars', 'ABD360', 'South Africa', 'OwxDfWg0G7@gmail.com', NULL, '$2y$10$MHGuuEcCInCz9iq7dhDRE.w3H2euIyMbxYod9WdhaK.4rGBaCOyP.', NULL, NULL, NULL),
(9, 'wmIiZb7AtiXK2vA', 'ieVX3o3OxlEAiUa', 'aqe4BHlnAc', 'Zimbabwe', 'PisWEqMJ4e@gmail.com', NULL, '$2y$10$XI7iewMLTOtUM1iql40i0.XaIR1dQmi...3hq7RtI9vR9Hs4FGIeG', NULL, NULL, NULL),
(10, 'dGUL8ArXkrvXHwg', 'wkY49KcqKYFcuvz', '5dktocGoSh', 'Zimbabwe', 'pydzhbt2tP@gmail.com', NULL, '$2y$10$xugh7sGmn7oyl0WV7lV/iOKCmmQaPKuz5u4M6bDUV.Hd6CQEjo.Ge', NULL, NULL, NULL),
(11, 'Ananta', 'Jalil', 'AJSuperstar', 'Bangladesh', 'nq1Fbqduuv@gmail.com', NULL, '$2y$10$JKccmlmW8BpsOvQIqvNx1.iBiR.QyBbbhU/fkJjIv.JM9QyXvDasC', NULL, NULL, NULL),
(12, 'Shakib', 'Al Hasan', 'Shakib75', 'Bangladesh', 'sulh1h9C6f@gmail.com', NULL, '$2y$10$FAca69nDi9B385kJcplArekIz1M8WU.w1S7yQ0JAqcIaHXgZL02RO', NULL, NULL, NULL),
(13, 'Pori', 'Moni', 'danakatapori', 'Bangladesh', 'q1yP5BUG4X@gmail.com', NULL, '$2y$10$6n5WUo3yrUAlxWA34/h.MeDt31aCWY1vPdO.f5lq4XHir8codZlie', NULL, NULL, NULL),
(14, 'WSpgfElmz3blSzF', 'a4mSffuep7cmNLm', 'WIt6WZHWET', 'China', 'sI6Gnn3XWz@gmail.com', NULL, '$2y$10$3GeiAFfaioi9nrgcBuJbw.2LH433/z2dg8NYiWOLKwfBl7W3KGcse', NULL, NULL, NULL),
(15, 'XKkDzpVf22fE0l0', 'Kg3VLe8T7YVHwOC', '0hwyEJVSkD', 'China', 'D9ylPR8MHe@gmail.com', NULL, '$2y$10$OGAllo.IwzhAzQd89DUce.xQTGwdEaDmPXnaOTu/S46LQxcujTU9.', NULL, NULL, NULL),
(16, 'Mahendra', 'Singh Dhoni', 'MSDcaptaincool', 'India', 'vhVd91hJa1@gmail.com', NULL, '$2y$10$FlF6kkxItlXurWOZ.4ZqAeLBT7qLQmBJ2VBoRwOQiV0t9VncmBmyW', NULL, NULL, NULL),
(17, 'Katrina', 'Kaif', 'kkaif123', 'India', 'GB0mMmqmvl@gmail.com', NULL, '$2y$10$1pyn/nmTXSuGvCFvIhYbGO2vbA9Relb.g3uUuW7l16rzpFw1B1lfy', NULL, NULL, NULL),
(18, 'Mia', 'Khalifa', 'merealMK00', 'Lebanon', 'ZqnT3vQ67R@gmail.com', NULL, '$2y$10$wYpr1ljxM5kLfqy6155GVuE.c1OZvvqnyWARR4.2aVzdT3QkhbeoC', NULL, NULL, NULL),
(19, '6tKods5aCkcOfq8', 'KS8ln3Gh9asiKVR', 'L1vhmUKsQc', 'Lebanon', 'V7dppgrZqV@gmail.com', NULL, '$2y$10$6U5PzppgNrIbMhqP/ODCo.GaWtGo3uWFpN2ai7GnI/p2X5WgAFpHC', NULL, NULL, NULL),
(20, 'MdESqqv551J7e2r', 'qMbbri3FRbYUHD0', 'IAxDiYRtHU', 'United Arab Emirates', '9ZyxsVqUHj@gmail.com', NULL, '$2y$10$S6c8.froqpYscuNtlEIlaOxdBXKPi4U5P5N6V94g84U3PoPegQ32a', NULL, NULL, NULL),
(21, 'ChLwTm7cxsZcjeY', 'yCoNU9Vziw6Y75q', 'u3uhKuACx0', 'United Arab Emirates', 'lPIxsrUVyg@gmail.com', NULL, '$2y$10$NXQJDvv7Eu0Fpx56p1SpfeiutX1yIJh925u14P.9nPCEEZ.YFXN5S', NULL, NULL, NULL),
(22, 'Karim', 'Benzema', 'bigboykb', 'France', 'HfwPkN1hUg@gmail.com', NULL, '$2y$10$Z2TU7nOzUFquliySIi9mgOLGmjWlU.sRh6i8CaOmbVgP5IWEr51R.', NULL, NULL, NULL),
(23, 'Melanie', 'Laurent', 'shoshanna83', 'France', 'KwyQLiQguu@gmail.com', NULL, '$2y$10$JdKqFGsSnInGuEYor5d0jOWFwEDvwpchk1WAKw7N3pXp2NLfjFdIO', NULL, NULL, NULL),
(24, 'Mesut', 'Ozil', 'playmaker10', 'Germany', 'IEvRmAqW2E@gmail.com', NULL, '$2y$10$2JYXLK1IQh9vQnmLU4a1WOPnM.KEbQ9PF5hX2Bmsn5.udLv6rPV.G', NULL, NULL, NULL),
(25, 'Toni', 'Kroos', 'germansniper08', 'Germany', 'LMxRpOqK1G@gmail.com', NULL, '$2y$10$TOIm43EE.qQ7j0bpBS7f7.Ep602ZffYOqYjiOsQxTP3KNnoB054w6', NULL, NULL, NULL),
(26, 'ZI20yn1KONBkbuy', '0mLSrvO35rmKnWo', 'fz4uSGZEis', 'Italy', 'Z8P974Paqn@gmail.com', NULL, '$2y$10$aoUD/PXfHWebPQ5PDoKp2.2BDk/xiheDyhO5zEpn/.O3t7SZ9EyAW', NULL, NULL, NULL),
(27, 'GQjgC4Wu2TKBfPP', '5drAaO1Q4nogCeV', '0y36mDsABZ', 'Italy', '5ak0x2aRex@gmail.com', NULL, '$2y$10$7Poo5enaYqylTDEgblF/Iu1J7UUiG2/8MAgbpzYQs0ylkDPayHf/S', NULL, NULL, NULL),
(28, 'f1dCOKQqnaSyztR', 'Vl45qUz4sR5ZQAL', '8ItnDElQ8F', 'Spain', '7MeJFE2CwU@gmail.com', NULL, '$2y$10$mtpvqO0F98LFzZdWjwFcL.cvtYAVOIoBdieYk8.br8c88A2jrn1pe', NULL, NULL, NULL),
(29, 'TTZOO07bghiGYOr', 'C9IsN2KHwQitwrL', 'K9dqc0Ncgb', 'Spain', 'Vk21wbEaIF@gmail.com', NULL, '$2y$10$ag0sE.rhovW4km99EbpAH.6.YJMF64YTMVEK45OsD2Z4o31X4jREa', NULL, NULL, NULL),
(30, 'Gemma', 'Arterton', 'pollytamina', 'United Kingdom', 'xRMd0UcBtA@gmail.com', NULL, '$2y$10$8lgeIcUTAYVFMgYyPjX8/.bJgFuzrlvvGGh81dVg3/lVEMyeYuq26', NULL, NULL, NULL),
(31, 'Sherlock', 'Holmes', 'acdholmes', 'United Kingdom', 'WTM5XxpsGx@gmail.com', NULL, '$2y$10$ijyONFBvIzu28vEzWjaUeew9Ri4FQ045AgwWy/us3X.6bZGVe5n1e', NULL, NULL, NULL),
(32, 'UBhLkBsSzydgWvz', 'yuVcG3sy6JMefiw', 'k3bM3cqtUQ', 'Bahamas', 'CiS4vfHkvK@gmail.com', NULL, '$2y$10$75d5LateuzQSeecI.TTtneFMueKb3mBVfpqSJPvKcIeqlXOi7hKqe', NULL, NULL, NULL),
(33, 'Z23cGRYj4fcf1f8', 'bY5DacnY3eJODey', '3xFNPzmQei', 'Bahamas', 'EngiZnh4Bk@gmail.com', NULL, '$2y$10$HYc5m0oGuEjcUVizuGqXn.fbKqiDSPUIMVyeosJoU7u0mgGPcNrYi', NULL, NULL, NULL),
(34, 'pXahhbrRJgweAJb', '3uyLidLh7WHuf8k', '2rYhinScR3', 'Barbados', '1bfEup51Kg@gmail.com', NULL, '$2y$10$/g35R8niJdwVLC.qxdetJ.zclQ0V03SDUZuUe1.i9udml9f48oxo6', NULL, NULL, NULL),
(35, 'xlMuYrk089wPqyy', '6LKNOMORrAg1S65', 'kIurOnEji7', 'Barbados', 'Ifarm0OtWb@gmail.com', NULL, '$2y$10$wVnD4UU0/KWXN1OHDZFSlefQ0mGSBqMHkTptbM6nwMrGNdtuNNnUS', NULL, NULL, NULL),
(36, 'Eszbrmp3ndeadwF', 'QrKZd9qxvR7lWE2', 'd2Cd080LO2', 'Costa Rica', 'm22BtibFH1@gmail.com', NULL, '$2y$10$Osgxheksmdn1fgXGkN5P/eRVwS5tCOAnuAlIgbg4b.mOFpXKM1c1m', NULL, NULL, NULL),
(37, '8hRsU5nVQ2HBRX5', 'pPzAMoQ4gk6Wj2A', 'VKf0rec0hU', 'Costa Rica', 'rwVGonwZ03@gmail.com', NULL, '$2y$10$qAQjFCw2LWsLCm5DZkIIK.sURnCMm4Ga24UzMtuSqNLAdUVHnMvIi', NULL, NULL, NULL),
(38, 'nuKDeTAyWnEhtQ3', 'xzbMihNwhDEucmo', 'CQ7RbH37Jh', 'Cuba', 'rbVB1Tfou7@gmail.com', NULL, '$2y$10$dsqyIvv4eOJ2qQ3bFNAZc.w32k33NUDgwK7U7KEEhGWHF5qC7j8P6', NULL, NULL, NULL),
(39, 'acqpibAHQp4mety', 'xROx46v63W94blI', 'sFB0ggesy3', 'Cuba', 'JprvCurOWn@gmail.com', NULL, '$2y$10$3N53UnH0WCX3hbKdED2y9eFRqu/eJUpyLbRAlFtJHBUSNIHtxlDW2', NULL, NULL, NULL),
(40, 'HFKZ9WdKI6fDpIE', 'pqznDITaVfpfsrE', 'rnud6ktq38', 'Dominica', 'rjMcIuUTbJ@gmail.com', NULL, '$2y$10$dv0TJrZu1F5pCyKILyo5Bu20GA1QaenoVmPPAWnqn6ctD2piLl9YO', NULL, NULL, NULL),
(41, 'r5IEhUhKsXwXfU8', 'vqxpNa9U8wsyCCh', '3e6ULNP2uV', 'Dominica', '53GwcmlIhq@gmail.com', NULL, '$2y$10$t5Zk/33YOejgrqfaB8Ht/.ZBZUNzd/vBoYEo49bY1wKmrXff87sua', NULL, NULL, NULL),
(42, 'gvzmjfHKeuEd1u4', 'c8a2CgOlZOmXjVL', 'cqng7nUdcF', 'Australia', 'ekVrpLRMfT@gmail.com', NULL, '$2y$10$X85GCVRbEbXuqOXaYTrzKOMm35sEBxkj45SXMeSIAsL3aWBi42EM.', NULL, NULL, NULL),
(43, '8uXL0eMNsZ2SzTw', '3BGPV7Td5kSXywE', 'bB9pz0GULw', 'Australia', 'YJsyB6KAgF@gmail.com', NULL, '$2y$10$j8JjXXcWbgZeCwNXkzJkuOeyf8Tlc7LGTmTBy0xbJzha5fgpXx4GK', NULL, NULL, NULL),
(44, 'PllBMQkBVkeiiIs', 'SZA5CTIwVjWsolT', '2gRXck9HP8', 'Fiji', 'KBpxBQKjZ0@gmail.com', NULL, '$2y$10$H551icCUQjsn/sq7fHe4weQMoHOMIJTsSbFKLvoXzr2rZjXpwprFa', NULL, NULL, NULL),
(45, 'r1Ndm1rOzbMnxBN', 'm6hfVcEzJ6ea6h2', 'vKYlGx84SF', 'Fiji', 'YJtfeWgwLn@gmail.com', NULL, '$2y$10$ETkalnTOIl2BOM0GEg9t.eBc.hXfHB468R5G/apdrh6zlbi.XiFm.', NULL, NULL, NULL),
(46, 'x2Uu0gfxX8F4hfT', 'mrxciD86rgZHzEH', 'GSrQ6QYzW7', 'New Zealand', 'sxuFSTs86a@gmail.com', NULL, '$2y$10$cf8ZiSFezkOmJNEDdYucyOX2d.zDoI7xnNRkkcu87PV3goWuOMFe.', NULL, NULL, NULL),
(47, 'oSfzPAZaTlR92aO', 'upFdeTGY1pHHchE', 'UUStfnkopG', 'New Zealand', '27XjwZs00d@gmail.com', NULL, '$2y$10$Z1GhKpYS4oSeupqxcopgC.BgHCBRSpTAAAr2IzlTjHUvpCA598UlG', NULL, NULL, NULL),
(48, 'RXjnuftlIIjO7TF', 'Ma6AeJWBlDRPpnb', 'DBbk9PCxPh', 'Papua New Guinea', 'b9RGDMCoJE@gmail.com', NULL, '$2y$10$EqAvNtqD130M.CG.cXQcN.30HNZJTIJ6MQDZ/cPB.cHbNInfhVJdy', NULL, NULL, NULL),
(49, 'Q3hiUJ77mT3AjUi', 'fSR2ed0iMudABfk', 'bGzeiFgI4G', 'Papua New Guinea', 'vVdfRXLPor@gmail.com', NULL, '$2y$10$QPp7qmkfigJZJk5Z.SOE5e5/u/e7W5oMwMqzf0ZGFYhboU5XFRRL2', NULL, NULL, NULL),
(50, 'H1AsBAHgGx3bnsZ', '40CWitDURHw64gd', 'QmZkWKD3CN', 'Samoa', 'G2DPIAk0hM@gmail.com', NULL, '$2y$10$YdV2nGlw4zrsLtaYTOKEZuzOkbVtJuRuePceP0GsA93u5Ux2aIqmK', NULL, NULL, NULL),
(51, 'MFPDkSfomp0GgLw', 'TayK6M0vJXfuyUr', '3yVS1mEEKh', 'Samoa', 'GM1FujC3JT@gmail.com', NULL, '$2y$10$TLi94GsHcdkjBAkzhASipOKkDGVkq82X4tOaNmkZFQZfX0nAf/AqO', NULL, NULL, NULL),
(52, 'IC7WmQnfk0NEibn', 'IC4aDvRsuO8SeDF', 'hp33fl9kXq', 'Argentina', 'Y6IbWOMYQV@gmail.com', NULL, '$2y$10$FJTH84IFTd/SrVC2Vy3Vc.AIPyUcVJ1FTPoHOJFXEYkKernLRVdD2', NULL, NULL, NULL),
(53, 'TNt2IEeLhgxNCpe', 'W57oaAymYVT1oVN', 'gObUT3xNjU', 'Argentina', 'i3NrDT2EG7@gmail.com', NULL, '$2y$10$C0mA/KYyiQN9q1vrC.zLnufUHIm99Zq3QS0Z7e09JRJ4Z836sA.zu', NULL, NULL, NULL),
(54, 'aONycdQgG5aEKe3', 'P6Xa05W05CuqJpT', 'nwm6QtM0XC', 'Brazil', 'ofJXQMtpKr@gmail.com', NULL, '$2y$10$4hK2VLK6Nw6Q.ZEJDOc8te30/1QRSXlW1A1qY5K4UZuA8LVHk2oWq', NULL, NULL, NULL),
(55, 'dtuaUNGU3n9doVp', 'pRPFyFWisUjSurl', '2kmpMtYWHu', 'Brazil', '2Qa8VaYl3Q@gmail.com', NULL, '$2y$10$elNezDgosLv8MJndMDYyauAAMeO5Oh3dnB52ahHgNEmWZRTTkBT/m', NULL, NULL, NULL),
(56, 'tJ027P7DOHObJHH', 'hlscLRAHaQrBHhd', 'WBQbq4oKl6', 'Colombia', '1uYXoaNsjh@gmail.com', NULL, '$2y$10$8IZriPxzyma4o7KYGjL89uxAXYs1rXeJBS00Z5ZeuZH6OpdNgVjl.', NULL, NULL, NULL),
(57, 'RKEBgcuAG5Ap3nA', 'EnOf2ZCIdslnTDc', 'pqi3pKxN0j', 'Colombia', 'euYgfgeVai@gmail.com', NULL, '$2y$10$nblU6b2ZPSHfvKVE/onEGOhnDKtEeVGFWzxQj68/TupOYQ72UoB.2', NULL, NULL, NULL),
(58, 'DN8nvjJphk2oAjw', 'BGFSesWeOxrlSR9', 'oz1LM5vKv2', 'Ecudaor', 'puYGqcihYl@gmail.com', NULL, '$2y$10$Au.0RYNaiwIy1dwzi1o3AODvzJttYChV3Z5GZzxXDOMuycKtnyJCG', NULL, NULL, NULL),
(59, 'IxJt5LNGW0cKXM9', 'DRiciRANd1CXL2z', 'PNVdPwD5mi', 'Ecudaor', 'yUWwHSN4ia@gmail.com', NULL, '$2y$10$Mc8ozdJCN4q6m7A3XQAG3us8VZhcDDMAMTymfUB12Ae.dEUYb1ZUG', NULL, NULL, NULL),
(60, 'uXLVR5wy6rORCog', 'mvHvSbGqL6uKUHW', 'nBSM0u3QDG', 'Venezuela', 'gDd6mtUNKt@gmail.com', NULL, '$2y$10$GNYLWm1Jcf/8xmGFJdGM4.PKGHoR3KE37p6GqDD4TWZSupVaKQky6', NULL, NULL, NULL),
(61, 'EoF0mCKJxpdWdcz', 'jWk0XNP1QZMjE8W', 'V5IBZmoWSj', 'Venezuela', 'khXwofZXQh@gmail.com', NULL, '$2y$10$qC72fImgjPMH9ywBlzBa5ObzGenBEU0rwyMf/HmcUvB1vWIy2e8.G', NULL, NULL, NULL),
(62, 'Samiur', 'Rahman', 'scottishsummer', 'Bangladesh', 'summer@gmail.com', NULL, '$2y$10$P9MAdtyAi3spj8IA1G4HEuIzARsGPj1Zmomjt3sarqUkdTyiMM.Em', NULL, '2021-11-21 04:41:09', '2021-11-21 04:41:09'),
(63, 'Alastair', 'Cook', 'acook2684', 'United Kingdom', 'batbatcook@gmail.com', NULL, '$2y$10$QGSmMtNgWfT0a76DrcLI0OLt11NFOLMNkjUvmulJ48S4FlHZxrZoO', NULL, '2021-11-22 04:20:22', '2021-11-22 04:20:22'),
(64, 'Jaya', 'Ahsan', 'missjaya', 'Bangladesh', 'jaya83@gmail.com', NULL, '$2y$10$kiSEcxr98B9kP.6Ci8wkGOOLLAglHQHCT36jH6l801jBFf4mmrQWK', NULL, '2021-11-23 04:38:12', '2021-11-23 04:38:12'),
(65, 'Sharif', 'Alam', 'priom07', 'United Kingdom', 'priom007@gmail.com', NULL, '$2y$10$JwxgTEn69Qt730.lEJxCb.8i0eaaAkO1qqZiU5waW5HaQBPpSLYui', NULL, '2021-11-23 05:17:47', '2021-11-23 05:17:47');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

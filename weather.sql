-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 11, 2021 at 10:53 PM
-- Server version: 8.0.26-0ubuntu0.20.04.2
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weather`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
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
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_resets_table', 1),
(19, '2019_08_19_000000_create_failed_jobs_table', 1),
(20, '2021_08_10_132601_create_weather_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'Miss Myrtie Zemlak MD', 'willms.conner@example.org', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lQd6fgqi8B', '2021-08-11 10:33:08', '2021-08-11 10:33:08'),
(2, 'Mireille Little', 'kub.yoshiko@example.com', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WAIG5U0T5c', '2021-08-11 10:33:08', '2021-08-11 10:33:08'),
(3, 'Miss Delphia Ruecker Sr.', 'kelsie.mclaughlin@example.org', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CD30g18Mbr', '2021-08-11 10:33:09', '2021-08-11 10:33:09'),
(4, 'Kenyatta Schimmel II', 'josianne.greenholt@example.com', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ddKBaDRFjf', '2021-08-11 10:33:09', '2021-08-11 10:33:09'),
(5, 'Nigel Walsh', 'roscoe73@example.net', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bi7ePN4zV8', '2021-08-11 10:33:09', '2021-08-11 10:33:09'),
(6, 'Maverick Wolf', 'lstehr@example.net', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8VuLjq2Ip5', '2021-08-11 10:33:09', '2021-08-11 10:33:09'),
(7, 'Alia Schaefer', 'anais87@example.net', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SMpDrAgfQ8', '2021-08-11 10:33:10', '2021-08-11 10:33:10'),
(8, 'Roderick Raynor', 'pacocha.afton@example.com', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'v8rhaq95c8', '2021-08-11 10:33:10', '2021-08-11 10:33:10'),
(9, 'Augustus Kling', 'kreichert@example.org', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qCRbzgh1nS', '2021-08-11 10:33:10', '2021-08-11 10:33:10'),
(10, 'Luella Cormier', 'igoyette@example.com', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wjheFGxeVk', '2021-08-11 10:33:10', '2021-08-11 10:33:10'),
(11, 'Skyla Thompson', 'rozella.willms@example.net', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wAiHizeAYi', '2021-08-11 10:33:11', '2021-08-11 10:33:11'),
(12, 'Ms. Ressie Hahn IV', 'lueilwitz.erick@example.org', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yQiRhxlDh9', '2021-08-11 10:33:11', '2021-08-11 10:33:11'),
(13, 'Orpha McClure', 'zola.beahan@example.net', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'u0DA5E7SBb', '2021-08-11 10:33:11', '2021-08-11 10:33:11'),
(14, 'Krystal Bartell', 'emard.geovanny@example.org', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sIlCpZNXhw', '2021-08-11 10:33:11', '2021-08-11 10:33:11'),
(15, 'Adrien Batz', 'moen.chance@example.com', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2rOYhe33gn', '2021-08-11 10:33:11', '2021-08-11 10:33:11'),
(16, 'Maribel Denesik', 'rbruen@example.net', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YlygcqbK8a', '2021-08-11 10:33:11', '2021-08-11 10:33:11'),
(17, 'Jazmyne Moore', 'bednar.presley@example.net', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FMgjTtccYU', '2021-08-11 10:33:11', '2021-08-11 10:33:11'),
(18, 'Nick Stehr', 'onie.hamill@example.org', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qTgNZ8byPv', '2021-08-11 10:33:12', '2021-08-11 10:33:12'),
(19, 'Roy McDermott', 'harvey.edythe@example.net', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EabtCaS8on', '2021-08-11 10:33:12', '2021-08-11 10:33:12'),
(20, 'Lavonne Pagac', 'arielle51@example.com', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tl2rVUQvxB', '2021-08-11 10:33:12', '2021-08-11 10:33:12'),
(21, 'Kale Feest', 'viva.gulgowski@example.net', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rbFuo77l75', '2021-08-11 10:33:12', '2021-08-11 10:33:12'),
(22, 'Bradly Muller', 'svonrueden@example.org', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XySUII13qJ', '2021-08-11 10:33:12', '2021-08-11 10:33:12'),
(23, 'Miss Adelle Ritchie', 'ltrantow@example.org', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6GvI9NOVbQ', '2021-08-11 10:33:12', '2021-08-11 10:33:12'),
(24, 'Prof. Anjali Bosco', 'reyes.armstrong@example.org', '2021-08-11 10:33:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ccVTUSiw9O', '2021-08-11 10:33:12', '2021-08-11 10:33:12');

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--

CREATE TABLE `weather` (
  `id` bigint UNSIGNED NOT NULL,
  `added_at` timestamp NOT NULL,
  `station_id` bigint NOT NULL,
  `city_id` bigint UNSIGNED DEFAULT NULL,
  `temperture_celsius` double(8,2) NOT NULL,
  `humidity` double(8,2) NOT NULL,
  `wind` double(8,2) NOT NULL,
  `rain` double(8,2) DEFAULT NULL,
  `light` double(8,2) DEFAULT NULL,
  `battery_level` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `weather`
--

INSERT INTO `weather` (`id`, `added_at`, `station_id`, `city_id`, `temperture_celsius`, `humidity`, `wind`, `rain`, `light`, `battery_level`, `created_at`, `updated_at`) VALUES
(1, '2021-08-10 18:00:00', 1, NULL, -16.67, 17.00, 96.56, 1134.00, NULL, 100.00, '2021-08-11 16:44:13', '2021-08-11 16:44:13'),
(2, '2021-08-10 19:00:00', 1, NULL, 2.22, 50.00, 20.92, 1209.60, NULL, 32.00, '2021-08-11 16:44:13', '2021-08-11 16:44:13'),
(3, '2021-08-10 20:00:00', 1, NULL, -11.67, 79.00, 133.58, 529.20, NULL, 91.00, '2021-08-11 16:44:13', '2021-08-11 16:44:13'),
(4, '2021-08-10 21:00:00', 1, NULL, 24.44, 13.00, 0.00, 2268.00, NULL, 19.00, '2021-08-11 16:44:13', '2021-08-11 16:44:13'),
(5, '2021-08-10 22:00:00', 1, NULL, -6.67, 11.00, 82.08, 25.20, NULL, 12.00, '2021-08-11 16:44:14', '2021-08-11 16:44:14'),
(6, '2021-08-10 23:00:00', 1, NULL, 2.22, 75.00, 38.62, 705.60, NULL, 61.00, '2021-08-11 16:44:14', '2021-08-11 16:44:14'),
(7, '2021-08-11 00:00:00', 1, NULL, 27.22, 66.00, 82.08, 2444.40, NULL, 93.00, '2021-08-11 16:44:14', '2021-08-11 16:44:14'),
(8, '2021-08-11 01:00:00', 1, NULL, 11.67, 17.00, 30.58, 756.00, NULL, 97.00, '2021-08-11 16:44:14', '2021-08-11 16:44:14'),
(9, '2021-08-11 02:00:00', 1, NULL, 27.78, 42.00, 156.11, 1033.20, NULL, 69.00, '2021-08-11 16:44:14', '2021-08-11 16:44:14'),
(10, '2021-08-11 03:00:00', 1, NULL, -13.33, 9.00, 149.67, 1738.80, NULL, 6.00, '2021-08-11 16:44:14', '2021-08-11 16:44:14'),
(11, '2021-08-11 04:00:00', 1, NULL, -13.89, 86.00, 136.79, 403.20, NULL, 83.00, '2021-08-11 16:44:15', '2021-08-11 16:44:15'),
(12, '2021-08-11 05:00:00', 1, NULL, 23.89, 18.00, 136.79, 781.20, NULL, 53.00, '2021-08-11 16:44:15', '2021-08-11 16:44:15'),
(13, '2021-08-11 06:00:00', 1, NULL, 34.44, 42.00, 74.03, 529.20, NULL, 31.00, '2021-08-11 16:44:15', '2021-08-11 16:44:15'),
(14, '2021-08-11 07:00:00', 1, NULL, 22.22, 59.00, 160.93, 579.60, NULL, 8.00, '2021-08-11 16:44:15', '2021-08-11 16:44:15'),
(15, '2021-08-11 08:00:00', 1, NULL, 22.22, 81.00, 28.97, 302.40, NULL, 25.00, '2021-08-11 16:44:15', '2021-08-11 16:44:15'),
(16, '2021-08-11 09:00:00', 1, NULL, 22.78, 11.00, 80.47, 2192.40, NULL, 91.00, '2021-08-11 16:44:15', '2021-08-11 16:44:15'),
(17, '2021-08-11 10:00:00', 1, NULL, -9.44, 6.00, 54.72, 1738.80, NULL, 83.00, '2021-08-11 16:44:16', '2021-08-11 16:44:16'),
(18, '2021-08-11 11:00:00', 1, NULL, 27.22, 16.00, 148.06, 1411.20, NULL, 41.00, '2021-08-11 16:44:16', '2021-08-11 16:44:16'),
(19, '2021-08-11 12:00:00', 1, NULL, 16.11, 25.00, 141.62, 882.00, NULL, 10.00, '2021-08-11 16:44:16', '2021-08-11 16:44:16'),
(20, '2021-08-11 13:00:00', 1, NULL, 13.89, 91.00, 149.67, 2494.80, NULL, 43.00, '2021-08-11 16:44:16', '2021-08-11 16:44:16'),
(21, '2021-08-11 14:00:00', 1, NULL, 7.22, 89.00, 141.62, 1864.80, NULL, 66.00, '2021-08-11 16:44:16', '2021-08-11 16:44:16'),
(22, '2021-08-11 15:00:00', 1, NULL, 29.44, 72.00, 77.25, 1386.00, NULL, 89.00, '2021-08-11 16:44:16', '2021-08-11 16:44:16'),
(23, '2021-08-11 16:00:00', 1, NULL, -15.00, 6.00, 1.61, 1915.20, NULL, 32.00, '2021-08-11 16:44:16', '2021-08-11 16:44:16'),
(24, '2021-08-11 17:00:00', 1, NULL, 32.22, 35.00, 82.08, 756.00, NULL, 71.00, '2021-08-11 16:44:16', '2021-08-11 16:44:16'),
(25, '2021-08-10 21:00:00', 2, NULL, 2.00, 30.00, 88.00, 11.00, 10.00, 30.00, '2021-08-11 16:44:16', '2021-08-11 16:44:16'),
(26, '2021-08-10 22:00:00', 2, NULL, 36.00, 44.00, 44.00, 33.00, 12.00, 30.00, '2021-08-11 16:44:17', '2021-08-11 16:44:17'),
(27, '2021-08-10 23:00:00', 2, NULL, 11.00, 39.00, 33.00, 1.00, 11.00, 100.00, '2021-08-11 16:44:17', '2021-08-11 16:44:17'),
(28, '2021-08-11 00:00:00', 2, NULL, 1.00, 1.00, 1.00, 1.00, 1.00, 100.00, '2021-08-11 16:44:17', '2021-08-11 16:44:17'),
(29, '2021-08-11 01:00:00', 2, NULL, 20.00, 11.00, 51.00, 1.00, 33.00, 70.00, '2021-08-11 16:44:17', '2021-08-11 16:44:17'),
(30, '2021-08-11 02:00:00', 2, NULL, 36.00, 75.00, 24.00, 28.00, 45.00, 70.00, '2021-08-11 16:44:17', '2021-08-11 16:44:17'),
(31, '2021-08-11 03:00:00', 2, NULL, 81.00, 66.00, 51.00, 97.00, 66.00, 70.00, '2021-08-11 16:44:17', '2021-08-11 16:44:17'),
(32, '2021-08-11 04:00:00', 2, NULL, 53.00, 17.00, 19.00, 30.00, 55.00, 30.00, '2021-08-11 16:44:17', '2021-08-11 16:44:17'),
(33, '2021-08-11 05:00:00', 2, NULL, 82.00, 42.00, 97.00, 41.00, 34.43, 30.00, '2021-08-11 16:44:18', '2021-08-11 16:44:18'),
(34, '2021-08-11 06:00:00', 2, NULL, 8.00, 9.00, 93.00, 69.00, 11.00, 30.00, '2021-08-11 16:44:18', '2021-08-11 16:44:18'),
(35, '2021-08-11 07:00:00', 2, NULL, 7.00, 86.00, 85.00, 16.00, 22.00, 30.00, '2021-08-11 16:44:18', '2021-08-11 16:44:18'),
(36, '2021-08-11 08:00:00', 2, NULL, 75.00, 18.00, 85.00, 31.00, 13.00, 30.00, '2021-08-11 16:44:18', '2021-08-11 16:44:18'),
(37, '2021-08-11 09:00:00', 2, NULL, 94.00, 42.00, 46.00, 21.00, 12.00, 30.00, '2021-08-11 16:44:18', '2021-08-11 16:44:18'),
(38, '2021-08-11 10:00:00', 2, NULL, 72.00, 59.00, 100.00, 23.00, 88.00, 30.00, '2021-08-11 16:44:18', '2021-08-11 16:44:18'),
(39, '2021-08-11 11:00:00', 2, NULL, 72.00, 81.00, 18.00, 12.00, 89.00, 10.00, '2021-08-11 16:44:18', '2021-08-11 16:44:18'),
(40, '2021-08-11 12:00:00', 2, NULL, 73.00, 11.00, 50.00, 87.00, 10.00, 10.00, '2021-08-11 16:44:19', '2021-08-11 16:44:19'),
(41, '2021-08-11 13:00:00', 2, NULL, 15.00, 6.00, 34.00, 69.00, 12.00, 10.00, '2021-08-11 16:44:19', '2021-08-11 16:44:19'),
(42, '2021-08-11 14:00:00', 2, NULL, 81.00, 16.00, 92.00, 56.00, 17.00, 10.00, '2021-08-11 16:44:19', '2021-08-11 16:44:19'),
(43, '2021-08-11 15:00:00', 2, NULL, 61.00, 25.00, 88.00, 35.00, 11.00, 10.00, '2021-08-11 16:44:19', '2021-08-11 16:44:19'),
(44, '2021-08-11 16:00:00', 2, NULL, 57.00, 91.00, 93.00, 99.00, 13.00, 10.00, '2021-08-11 16:44:19', '2021-08-11 16:44:19'),
(45, '2021-08-11 17:00:00', 2, NULL, 45.00, 89.00, 88.00, 74.00, 99.00, 10.00, '2021-08-11 16:44:19', '2021-08-11 16:44:19'),
(46, '2021-08-11 18:00:00', 2, NULL, 85.00, 72.00, 48.00, 55.00, 100.00, 10.00, '2021-08-11 16:44:19', '2021-08-11 16:44:19'),
(47, '2021-08-11 19:00:00', 2, NULL, 5.00, 6.00, 1.00, 76.00, 13.00, 10.00, '2021-08-11 16:44:19', '2021-08-11 16:44:19'),
(48, '2021-08-11 20:00:00', 2, NULL, 90.00, 35.00, 51.00, 30.00, 16.00, 10.00, '2021-08-11 16:44:20', '2021-08-11 16:44:20');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `weather`
--
ALTER TABLE `weather`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `weather`
--
ALTER TABLE `weather`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

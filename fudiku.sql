-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Mar 2021 pada 10.00
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fudiku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` char(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `desc`, `isActive`) VALUES
(1, 'Single Pax', 'single-pax', 'Satu porsi lauk, sayur, nasi, dan side dish', '1'),
(2, 'Family Pax', 'family-pax', 'Lauk dan sayur 3-4 porsi, bisa tambah nasi dan side dish', '1'),
(3, 'Event Catering', 'event-catering', 'Nasi kotak, prasmanan, snacks, dan lainnya', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `map`
--

CREATE TABLE `map` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kabupaten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `map`
--

INSERT INTO `map` (`id`, `kabupaten`, `kecamatan`) VALUES
(1, 'Deli Serdang', 'Percut Sei Tuan'),
(4, 'Medan', 'Medan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2020_12_05_035301_create_table_profile', 1),
(9, '2020_12_17_062122_create_category_table', 1),
(38, '2014_10_12_000000_create_users_table', 2),
(39, '2014_10_12_100000_create_password_resets_table', 2),
(40, '2020_11_30_133354_create_sub_category_table', 2),
(41, '2020_12_02_132015_create_product_table', 2),
(42, '2020_12_06_050708_create_table_map', 2),
(43, '2020_12_16_075240_create_table_order', 2),
(44, '2020_12_16_132758_payment', 2),
(45, '2020_12_18_133015_create_subscription_table', 2),
(46, '2020_12_19_024831_create_permission_tables', 2),
(47, '2020_12_21_071721_create_table_profile', 2),
(48, '2020_12_21_072003_create_table_category', 2),
(50, '2020_12_21_123825_create_table_transfer', 3),
(51, '2020_12_22_034652_create_table_payment', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 3),
(1, 'App\\User', 4),
(1, 'App\\User', 5),
(2, 'App\\User', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_delivery` date NOT NULL,
  `id_customer` int(11) NOT NULL,
  `subcription` int(11) NOT NULL,
  `sub_category` int(30) NOT NULL,
  `code_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order`
--

INSERT INTO `order` (`id`, `date_delivery`, `id_customer`, `subcription`, `sub_category`, `code_order`, `created_at`, `updated_at`) VALUES
(87, '2021-01-30', 35, 2, 4, '52mNzEFopc', '2021-01-28 14:02:17', '2021-01-28 14:02:17'),
(88, '2021-01-31', 35, 2, 4, '52mNzEFopc', '2021-01-28 14:02:17', '2021-01-28 14:02:17'),
(89, '2021-02-01', 35, 2, 4, '52mNzEFopc', '2021-01-28 14:02:17', '2021-01-28 14:02:17'),
(90, '2021-02-02', 35, 2, 4, '52mNzEFopc', '2021-01-28 14:02:17', '2021-01-28 14:02:17'),
(91, '2021-01-31', 36, 1, 5, '35qHsUzufA', '2021-01-28 14:12:37', '2021-01-28 14:12:37'),
(92, '2021-01-30', 36, 1, 5, '35qHsUzufA', '2021-01-28 14:12:37', '2021-01-28 14:12:37'),
(93, '2021-01-29', 36, 1, 5, '35qHsUzufA', '2021-01-28 14:12:37', '2021-01-28 14:12:37'),
(94, '2021-01-31', 37, 1, 4, 'SfgKzG0waA', '2021-01-28 14:15:02', '2021-01-28 14:15:02'),
(95, '2021-01-30', 37, 1, 4, 'SfgKzG0waA', '2021-01-28 14:15:02', '2021-01-28 14:15:02'),
(96, '2021-01-29', 37, 1, 4, 'SfgKzG0waA', '2021-01-28 14:15:02', '2021-01-28 14:15:02'),
(97, '2021-01-29', 38, 1, 4, '43r09SKmxZ', '2021-01-28 14:17:59', '2021-01-28 14:17:59'),
(98, '2021-01-30', 38, 1, 4, '43r09SKmxZ', '2021-01-28 14:17:59', '2021-01-28 14:17:59'),
(99, '2021-01-31', 38, 1, 4, '43r09SKmxZ', '2021-01-28 14:17:59', '2021-01-28 14:17:59'),
(100, '2021-01-29', 39, 1, 4, 'AD01dgmxhC', '2021-01-28 14:29:16', '2021-01-28 14:29:16'),
(101, '2021-01-30', 39, 1, 4, 'AD01dgmxhC', '2021-01-28 14:29:16', '2021-01-28 14:29:16'),
(102, '2021-01-31', 39, 1, 4, 'AD01dgmxhC', '2021-01-28 14:29:16', '2021-01-28 14:29:16'),
(103, '2021-01-29', 40, 1, 4, 'aFjWPDg5HY', '2021-01-28 14:51:18', '2021-01-28 14:51:18'),
(104, '2021-01-30', 40, 1, 4, 'aFjWPDg5HY', '2021-01-28 14:51:18', '2021-01-28 14:51:18'),
(105, '2021-01-31', 40, 1, 4, 'aFjWPDg5HY', '2021-01-28 14:51:18', '2021-01-28 14:51:18'),
(106, '1970-01-01', 41, 1, 4, 'yJphHlqYn9', '2021-03-05 19:54:45', '2021-03-05 19:54:45'),
(107, '1970-01-01', 42, 1, 4, '4rGjIy8bAO', '2021-03-05 19:59:21', '2021-03-05 19:59:21'),
(108, '1970-01-01', 43, 1, 4, 'hJBt0SKHs9', '2021-03-05 20:02:17', '2021-03-05 20:02:17'),
(109, '1970-01-01', 44, 1, 4, '2QebxkvV3u', '2021-03-10 05:17:27', '2021-03-10 05:17:27'),
(110, '2021-03-11', 45, 1, 4, 'yBO31l6GTI', '2021-03-10 06:06:07', '2021-03-10 06:06:07'),
(111, '2021-03-13', 45, 1, 4, 'yBO31l6GTI', '2021-03-10 06:06:07', '2021-03-10 06:06:07'),
(112, '2021-03-16', 45, 1, 4, 'yBO31l6GTI', '2021-03-10 06:06:07', '2021-03-10 06:06:07'),
(113, '1970-01-01', 46, 1, 4, 'ceUG4Jgr5x', '2021-03-12 04:24:48', '2021-03-12 04:24:48'),
(114, '2021-03-13', 47, 1, 4, 'J74pA20yta', '2021-03-12 04:52:31', '2021-03-12 04:52:31'),
(115, '2021-03-14', 47, 1, 4, 'J74pA20yta', '2021-03-12 04:52:31', '2021-03-12 04:52:31'),
(116, '2021-03-15', 47, 1, 4, 'J74pA20yta', '2021-03-12 04:52:31', '2021-03-12 04:52:31'),
(117, '2021-03-13', 48, 1, 4, 'fkheImyPXT', '2021-03-12 05:01:12', '2021-03-12 05:01:12'),
(118, '2021-03-14', 48, 1, 4, 'fkheImyPXT', '2021-03-12 05:01:12', '2021-03-12 05:01:12'),
(119, '2021-03-15', 48, 1, 4, 'fkheImyPXT', '2021-03-12 05:01:12', '2021-03-12 05:01:12'),
(120, '2021-03-23', 49, 1, 4, 'NA51zx6Brb', '2021-03-18 08:27:09', '2021-03-18 08:27:09'),
(121, '2021-03-24', 49, 1, 4, 'NA51zx6Brb', '2021-03-18 08:27:09', '2021-03-18 08:27:09'),
(122, '2021-03-22', 49, 1, 4, 'NA51zx6Brb', '2021-03-18 08:27:09', '2021-03-18 08:27:09'),
(123, '2021-03-22', 50, 1, 4, '3pMoflmtFT', '2021-03-21 07:04:14', '2021-03-21 07:04:14'),
(124, '2021-03-23', 50, 1, 4, '3pMoflmtFT', '2021-03-21 07:04:14', '2021-03-21 07:04:14'),
(125, '2021-03-24', 50, 1, 4, '3pMoflmtFT', '2021-03-21 07:04:14', '2021-03-21 07:04:14'),
(126, '2021-03-22', 51, 1, 4, 'r5bPjGvS0Q', '2021-03-21 10:03:33', '2021-03-21 10:03:33'),
(127, '2021-03-23', 51, 1, 4, 'r5bPjGvS0Q', '2021-03-21 10:03:33', '2021-03-21 10:03:33'),
(128, '2021-03-24', 51, 1, 4, 'r5bPjGvS0Q', '2021-03-21 10:03:33', '2021-03-21 10:03:33'),
(129, '2021-03-23', 52, 1, 4, 'rzNwFJlTDx', '2021-03-22 06:41:10', '2021-03-22 06:41:10'),
(130, '2021-03-24', 52, 1, 4, 'rzNwFJlTDx', '2021-03-22 06:41:10', '2021-03-22 06:41:10'),
(131, '2021-03-25', 52, 1, 4, 'rzNwFJlTDx', '2021-03-22 06:41:10', '2021-03-22 06:41:10'),
(132, '2021-03-23', 53, 1, 4, '69exSULhHl', '2021-03-22 07:19:36', '2021-03-22 07:19:36'),
(133, '2021-03-24', 53, 1, 4, '69exSULhHl', '2021-03-22 07:19:36', '2021-03-22 07:19:36'),
(134, '2021-03-25', 53, 1, 4, '69exSULhHl', '2021-03-22 07:19:36', '2021-03-22 07:19:36'),
(135, '2021-03-24', 54, 1, 4, 'uORhH25NLp', '2021-03-23 07:55:11', '2021-03-23 07:55:11'),
(136, '2021-03-25', 54, 1, 4, 'uORhH25NLp', '2021-03-23 07:55:11', '2021-03-23 07:55:11'),
(137, '2021-03-26', 54, 1, 4, 'uORhH25NLp', '2021-03-23 07:55:11', '2021-03-23 07:55:11'),
(138, '1970-01-01', 55, 1, 4, 'x6TKEXUmr3', '2021-03-23 12:51:23', '2021-03-23 12:51:23'),
(139, '2021-03-27', 56, 1, 4, 'UVxXk817Dt', '2021-03-26 04:44:14', '2021-03-26 04:44:14'),
(140, '2021-03-28', 56, 1, 4, 'UVxXk817Dt', '2021-03-26 04:44:14', '2021-03-26 04:44:14'),
(141, '2021-03-29', 56, 1, 4, 'UVxXk817Dt', '2021-03-26 04:44:14', '2021-03-26 04:44:14'),
(142, '2021-03-31', 57, 1, 4, '1qEf4NJR7K', '2021-03-30 07:16:57', '2021-03-30 07:16:57'),
(143, '2021-04-01', 57, 1, 4, '1qEf4NJR7K', '2021-03-30 07:16:57', '2021-03-30 07:16:57'),
(144, '2021-04-02', 57, 1, 4, '1qEf4NJR7K', '2021-03-30 07:16:57', '2021-03-30 07:16:57'),
(145, '2021-04-01', 58, 1, 4, 'UQr9qhnXpL', '2021-03-30 07:48:10', '2021-03-30 07:48:10'),
(146, '2021-04-03', 58, 1, 4, 'UQr9qhnXpL', '2021-03-30 07:48:10', '2021-03-30 07:48:10'),
(147, '2021-04-04', 58, 1, 4, 'UQr9qhnXpL', '2021-03-30 07:48:10', '2021-03-30 07:48:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment`
--

CREATE TABLE `payment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code_order` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transfer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_date` datetime DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rekening` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_rekening` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` int(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `payment`
--

INSERT INTO `payment` (`id`, `code_order`, `transfer`, `payment_date`, `amount`, `status`, `no_rekening`, `name_rekening`, `image`, `id_user`, `created_at`, `updated_at`) VALUES
(33, 'lLADY4bc59', 'BCA', NULL, 35000, '0', NULL, NULL, NULL, 0, '2020-12-30 01:01:34', NULL),
(34, 'MZdfmi87J6', 'BCA', NULL, 35000, '0', NULL, NULL, NULL, 0, '2020-12-30 02:01:38', NULL),
(36, 'S8plbgUJhQ', 'BCA', NULL, 75000, '0', NULL, NULL, NULL, NULL, '2020-12-30 06:57:57', NULL),
(37, 'SIN2sLFBD6', 'BCA', NULL, 75000, '0', NULL, NULL, NULL, 3, '2021-01-01 01:57:22', NULL),
(38, 'zYHJNIyn6B', 'COD', NULL, 35000, '0', NULL, NULL, NULL, NULL, '2021-01-04 07:15:03', NULL),
(39, 'zYHJNIyn6B', 'BCA', NULL, 35000, '0', NULL, NULL, NULL, NULL, '2021-01-04 07:15:17', NULL),
(40, 'zYHJNIyn6B', 'BCA', NULL, 35000, '0', NULL, NULL, NULL, NULL, '2021-01-04 08:00:39', NULL),
(41, 'S3xe6folui', 'BCA', NULL, 35000, '0', NULL, NULL, NULL, 3, '2021-01-06 22:36:26', NULL),
(42, 'S3xe6folui', 'OVO', NULL, 35000, '0', NULL, NULL, NULL, 3, '2021-01-06 22:36:32', NULL),
(43, 'eTfBiIs4Mp', 'BCA', NULL, 35000, '0', NULL, NULL, NULL, 3, '2021-01-07 06:30:39', NULL),
(49, '43r09SKmxZ', 'OVO', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-01-28 14:18:03', NULL),
(50, '43r09SKmxZ', 'OVO', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-01-28 14:23:46', NULL),
(51, '43r09SKmxZ', 'OVO', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-01-28 14:28:06', NULL),
(52, 'AD01dgmxhC', 'BCA', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-01-28 14:29:24', NULL),
(53, 'AD01dgmxhC', 'BCA', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-01-28 14:29:56', NULL),
(54, 'aFjWPDg5HY', 'BCA', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-01-28 14:51:22', NULL),
(55, 'yJphHlqYn9', 'BCA', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-05 19:54:50', NULL),
(56, 'yJphHlqYn9', 'BCA', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-05 19:57:36', NULL),
(57, 'yJphHlqYn9', 'OVO', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-05 19:57:39', NULL),
(58, 'yJphHlqYn9', 'OVO', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-05 19:57:59', NULL),
(59, 'yJphHlqYn9', 'BCA', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-05 19:58:04', NULL),
(60, '4rGjIy8bAO', 'OVO', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-05 19:59:24', NULL),
(61, '4rGjIy8bAO', 'BCA', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-05 20:02:03', NULL),
(62, 'hJBt0SKHs9', 'BCA', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-05 20:02:22', NULL),
(63, '2QebxkvV3u', 'BCA', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-10 05:17:32', NULL),
(64, 'yBO31l6GTI', 'BCA', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-10 06:06:09', NULL),
(65, 'ceUG4Jgr5x', 'COD', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-12 04:24:52', NULL),
(66, 'ceUG4Jgr5x', 'COD', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-12 04:25:00', NULL),
(67, 'ceUG4Jgr5x', 'COD', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-12 04:25:42', NULL),
(68, 'ceUG4Jgr5x', 'COD', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-12 04:26:01', NULL),
(69, 'ceUG4Jgr5x', 'COD', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-12 04:26:41', NULL),
(70, 'J74pA20yta', 'BCA', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-12 04:52:48', NULL),
(71, 'fkheImyPXT', 'BCA', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-12 05:01:17', NULL),
(72, 'NA51zx6Brb', 'COD', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-18 08:27:12', NULL),
(73, 'NA51zx6Brb', 'OVO', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-18 08:27:33', NULL),
(74, 'NA51zx6Brb', 'BCA', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-18 08:27:43', NULL),
(75, '3pMoflmtFT', 'COD', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-21 07:04:47', NULL),
(76, 'r5bPjGvS0Q', 'COD', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-21 10:03:44', NULL),
(77, 'rzNwFJlTDx', 'COD', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-22 06:41:39', NULL),
(78, '69exSULhHl', 'BCA', '2021-03-22 14:23:40', 42999, '1', '12342094888', 'supardi', '1616397819_1608624234_WhatsApp Image 2020-12-22 at 14.21.27.jpeg', NULL, '2021-03-22 07:20:36', NULL),
(79, '69exSULhHl', 'BCA', '2021-03-22 14:23:40', 42999, '1', '12342094888', 'supardi', '1616397819_1608624234_WhatsApp Image 2020-12-22 at 14.21.27.jpeg', NULL, '2021-03-22 07:21:45', NULL),
(80, 'uORhH25NLp', 'BCA', '2021-03-23 14:55:45', 42999, '1', '121212134009', 'ahmad basuki', '1616486145_1608624234_WhatsApp Image 2020-12-22 at 14.21.27.jpeg', NULL, '2021-03-23 07:55:15', NULL),
(81, 'x6TKEXUmr3', 'COD', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-23 12:51:32', NULL),
(82, 'x6TKEXUmr3', 'COD', NULL, 42999, '0', NULL, NULL, NULL, NULL, '2021-03-23 12:51:54', NULL),
(83, 'UVxXk817Dt', 'COD', NULL, 42999, '0', NULL, NULL, NULL, 4, '2021-03-26 04:44:32', NULL),
(84, '1qEf4NJR7K', 'OVO', '2021-03-30 14:19:34', 42999, '1', '129932480', 'gufron', '1617088774_1608624234_WhatsApp Image 2020-12-22 at 14.21.27.jpeg', NULL, '2021-03-30 07:16:59', NULL),
(85, 'UQr9qhnXpL', 'COD', NULL, 42999, '2', NULL, NULL, NULL, 5, '2021-03-30 07:48:23', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_delivery` date NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_sub_category` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `name`, `date_delivery`, `image`, `id_sub_category`, `created_at`, `updated_at`) VALUES
(7, 'Ayam Lada Hitam, Tumis Kol, Nasi', '2021-04-05', '1617088472_ayam_ladahitam.jpg', 4, '2021-03-30 07:14:32', '2021-03-30 07:14:32'),
(8, 'Ayam Sambal Ijo, Tumis Brokoli, Nasi', '2021-04-04', '1617088457_ayam_sambal_ijo.jpg', 4, '2021-03-30 07:14:17', '2021-03-30 07:14:17'),
(13, 'Ayam Goreng, Tumis Kacang Panjang, Nasi', '2021-04-03', '1617088428_ayam_goreng.jpg', 4, '2021-03-30 07:13:48', '2021-03-30 07:13:48'),
(14, 'Ayam Semur, Tumis Kacang Panjang, Nasi', '2021-04-02', '1617088408_ayam_semur.jpg', 4, '2021-03-30 07:13:28', '2021-03-30 07:13:28'),
(15, 'Ampela, Tumis Kangkung, Nasi', '2021-04-06', '1617088484_ampela.jpg', 4, '2021-03-30 07:14:44', '2021-03-30 07:14:44'),
(17, 'Ayam Sambal, Sayur Gambas Bening, Nasi', '2021-04-01', '1617088392_ayam_sambal.jpg', 4, '2021-03-30 07:13:12', '2021-03-30 07:13:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile`
--

CREATE TABLE `profile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kabupaten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `profile`
--

INSERT INTO `profile` (`id`, `full_name`, `email`, `phone`, `kota`, `kabupaten`, `kecamatan`, `alamat_lengkap`, `id_user`, `created_at`, `updated_at`) VALUES
(26, 'Ichsan', '03pinkie@gmail.com', '085262827436', 'Medan', 'Medan Johor', 'Berastagi', 'Medan Jln Bersama Gg.ikhlas', 3, '2020-12-30 01:01:12', '2020-12-30 01:01:12'),
(27, 'Komang', '03pinkie@gmail.com', '085262827436', 'Medan', 'Deli Serdang', 'Percut Sei Tuan', 'dasd', 3, '2020-12-30 02:01:35', '2020-12-30 02:01:35'),
(28, 'ichsan', '03pinkie@gmail.com', '085262827436', 'Medan', 'Deli Serdang', 'Percut Sei Tuan', 'Medan Jln Bersama Gg.ikhlas', 3, '2020-12-30 02:16:46', '2020-12-30 02:16:46'),
(29, 'budi setaiww', '03pinkie@gmail.com', '085262827436', 'Medan', 'Deli Serdang', 'Percut Sei Tuan', 'Medan Jln Bersama Gg.ikhlas', NULL, '2020-12-30 06:54:12', '2020-12-30 06:54:12'),
(30, 'Ichsan', '03pinkie@gmail.com', '085262827436', 'Medan', 'Deli Serdang', 'Percut Sei Tuan', 'Medan Jln Bersama Gg.ikhlas', 3, '2021-01-01 01:57:15', '2021-01-01 01:57:15'),
(31, 'Ichsan', '03pinkie@gmail.com', '085262827436', 'Medan', 'Deli Serdang', 'Percut Sei Tuan', 'asd', NULL, '2021-01-04 07:14:44', '2021-01-04 07:14:44'),
(32, 'Ichsan', '03pinkie@gmail.com', '085262827436', 'Medan', 'Medan Johor', 'Berastagi', 'Medan Jln Bersama Gg.ikhlas', 3, '2021-01-06 22:36:22', '2021-01-06 22:36:22'),
(33, 'Somat', '03pinkie@gmail.com', '085262827436', 'Medan', 'Deli Serdang', 'Percut Sei Tuan', 'ssda', 3, '2021-01-07 06:30:34', '2021-01-07 06:30:34'),
(34, 'husni', 'hhusni12442@gmail.com', '0812131343444', 'Medan', 'Deli Serdang', 'Percut Sei Tuan', 'jln kenangan', NULL, '2021-01-28 13:58:04', '2021-01-28 13:58:04'),
(35, 'andre', 'andre123@gmail.com', '08134312', 'Medan', 'Medan Johor', 'Berastagi', 'jln bunru', NULL, '2021-01-28 14:02:17', '2021-01-28 14:02:17'),
(36, 'mahroza', 'mahroza114@gmail.com', '0811343433', 'Medan', 'Medan Johor', 'Berastagi', 'jln titi', NULL, '2021-01-28 14:12:37', '2021-01-28 14:12:37'),
(37, 'jujub', 'jujubb12@gmail.com', '08124343455', 'Medan', 'Deli Serdang', 'Percut Sei Tuan', 'jln dayu', NULL, '2021-01-28 14:15:02', '2021-01-28 14:15:02'),
(38, 'kairul', 'kairul3@gmail.com', '08142342455', 'Medan', 'Medan Johor', 'Berastagi', 'jln mangga', NULL, '2021-01-28 14:17:59', '2021-01-28 14:17:59'),
(39, 'arif', 'arif44@gmail.com', '08123134555', 'Medan', 'Deli Serdang', 'Percut Sei Tuan', 'jln mawar', NULL, '2021-01-28 14:29:16', '2021-01-28 14:29:16'),
(40, 'asusn', 'asussm@gmail.com', '08772343435', 'Medan', 'Medan Johor', 'Berastagi', 'jln mariot', NULL, '2021-01-28 14:51:18', '2021-01-28 14:51:18'),
(41, 'wahyu', 'wahyu22@gmail.com', '0823332312096', 'Medan', 'Medan', 'Medan', 'jln duren', NULL, '2021-03-05 19:54:44', '2021-03-05 19:54:44'),
(42, 'wahyu', 'wahyu22@gmail.com', '0823332312096', 'Medan', 'Deli Serdang', 'Percut Sei Tuan', 'jln duren', NULL, '2021-03-05 19:59:21', '2021-03-05 19:59:21'),
(43, 'wahyu', 'wahyu22@gmail.com', '0823332312096', 'Medan', 'Deli Serdang', 'Percut Sei Tuan', 'jln nanas', NULL, '2021-03-05 20:02:17', '2021-03-05 20:02:17'),
(44, 'wahyu', 'wahyuusd@gmail.com', '082121213423', 'Medan', 'Deli Serdang', 'Percut Sei Tuan', 'jl nuaeraek', NULL, '2021-03-10 05:17:27', '2021-03-10 05:17:27'),
(45, 'supri', 'supri@gmail.com', '082231343408', 'Medan', 'Medan', 'Medan', 'jln asdasldlasdl', NULL, '2021-03-10 06:06:07', '2021-03-10 06:06:07'),
(46, 'andi', 'andii122@gmail.com', '081234444566', 'Medan', 'Deli Serdang', 'Percut Sei Tuan', 'jln letsy', NULL, '2021-03-12 04:24:47', '2021-03-12 04:24:47'),
(47, 'wanto', 'wanto122@gmail.com', '082213013047', 'Medan', 'Deli Serdang', 'Percut Sei Tuan', 'jln asdad  nosad', NULL, '2021-03-12 04:52:31', '2021-03-12 04:52:31'),
(48, 'andre', 'andre1231@gmail.com', '081232145353', 'Medan', 'Deli Serdang', 'Percut Sei Tuan', 'jln duku', NULL, '2021-03-12 05:01:12', '2021-03-12 05:01:12'),
(49, 'aan', 'aan2@gmail.com', '0822134234390', 'Medan', 'Medan', 'Medan', 'jln aaasd', NULL, '2021-03-18 08:27:09', '2021-03-18 08:27:09'),
(50, 'wahdan', 'wahdan00@gmail.com', '0824354545640', 'Medan', 'Deli Serdang', 'Percut Sei Tuan', 'jln durung', NULL, '2021-03-21 07:04:14', '2021-03-21 07:04:14'),
(51, 'weni', 'weni99@gmail.com', '08126134930438', 'Medan', 'Medan', 'Medan', 'jlln duku', NULL, '2021-03-21 10:03:32', '2021-03-21 10:03:32'),
(52, 'iwan', 'imfabulous1945@gmail.com', '08122433909812', 'Medan', 'Deli Serdang', 'Percut Sei Tuan', 'jln kerinic', NULL, '2021-03-22 06:41:10', '2021-03-22 06:41:10'),
(53, 'supardi', 'supardi00129@gmail.com', '08134454500082', 'Medan', 'Deli Serdang', 'Percut Sei Tuan', 'jln asdsdsdsd', NULL, '2021-03-22 07:19:36', '2021-03-22 07:19:36'),
(54, 'ahmad', 'ahmad009@gmail.com', '08221343801943', 'Medan', 'Medan', 'Medan', 'jln duku', NULL, '2021-03-23 07:55:10', '2021-03-23 07:55:10'),
(55, 'wagimin', 'wagimin0012@gmail.com', '08221343001348', 'Medan', 'Deli Serdang', 'Percut Sei Tuan', 'jln sosro', NULL, '2021-03-23 12:51:23', '2021-03-23 12:51:23'),
(56, 'dimas', 'dimas12@gmail.com', '8211234001348', 'Medan', 'Deli Serdang', 'Percut Sei Tuan', 'jln titi sewa', 4, '2021-03-26 04:44:14', '2021-03-26 04:44:14'),
(57, 'gufron', 'ridhoadha24@gmail.com', '082223134340', 'Medan', 'Medan', 'Medan', 'jln beruang no1 22', NULL, '2021-03-30 07:16:57', '2021-03-30 07:16:57'),
(58, 'fery', 'imfabulous1945@gmail.com', '0813434348800', 'Medan', 'Deli Serdang', 'Percut Sei Tuan', 'jln nuri0012', 5, '2021-03-30 07:48:10', '2021-03-30 07:48:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user', 'web', '2020-12-21 00:28:36', '2020-12-21 00:28:36'),
(2, 'admin', 'web', '2020-12-21 00:28:56', '2020-12-21 00:28:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `subscription`
--

CREATE TABLE `subscription` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `subscription`
--

INSERT INTO `subscription` (`id`, `name`, `duration`, `price`, `discount`, `id_category`, `created_at`, `updated_at`) VALUES
(1, 'New Comer', 3, 42999, 3, 1, NULL, '2021-01-27 06:10:46'),
(2, 'Favorite', 5, 69999, 7, 1, NULL, '2021-01-27 06:23:51'),
(3, 'Big Deals', 10, 129999, 14, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_category`
--

CREATE TABLE `sub_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `information` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sub_category`
--

INSERT INTO `sub_category` (`id`, `name`, `information`, `isActive`, `parentId`) VALUES
(4, 'Chicken Club', 'Langganan foodlist menu utama ayam, favorit kita semua.\r\nKlik “Langganan” untuk memilih lama berlangganan', '1', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transfer`
--

CREATE TABLE `transfer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rekening` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_rekening` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transfer`
--

INSERT INTO `transfer` (`id`, `name`, `no_rekening`, `name_rekening`, `image`) VALUES
(4, 'OVO', '081320498994', 'Muhammad Kevin Matondang', '1616398417_ovo.png'),
(5, 'BCA', '8645150054', 'Muhammad Kevin Matondang', '1616398449_bca.png'),
(6, 'COD', '12345', 'fudiku', '1616398487_cod.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin@nurihsan.sch.id', 'admin', NULL, '$2y$10$lPNbfOT8sF3JZ43N4Knzi.VEc1YYe5ftHdJoiz88x29ztll0rbNkK', NULL, '2020-12-21 00:29:34', '2020-12-21 00:29:34'),
(3, '03pinkie@gmail.com', 'Ichsan', NULL, '$2y$10$kgsNAjB94C0EHYE47OwfaORu2X78s.WbcBMiMmLofG46oXpstBy3W', NULL, '2020-12-22 22:07:13', '2020-12-22 22:07:13'),
(4, 'dimas12@gmail.com', 'dimas', NULL, '$2y$10$CrL.pyIg.wE473JyRQxF7O6eqXLpT6R0Fh7Nk5lF6IvUwFVKQgxN2', NULL, '2021-03-25 15:13:12', '2021-03-25 15:13:12'),
(5, 'imfabulous1945@gmail.com', 'saiful', NULL, '$2y$10$69Cy3YcNYMUjgD.Vad150uR4egPV3yAfCQHkMAA0yhry3Dd5QQfKW', NULL, '2021-03-30 07:22:22', '2021-03-30 07:22:22');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `map`
--
ALTER TABLE `map`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT untuk tabel `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `profile`
--
ALTER TABLE `profile`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

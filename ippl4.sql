-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2021 at 03:56 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ippl4`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `judul`, `isi`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'KENA MENTAL', 'assalamualaikum wr wb', '1624458199.jpg', '2021-06-23 05:26:33', '2021-06-23 06:23:19'),
(2, 'Psikolog kena mental', 'kan aneh', '1624476946.jpg', '2021-06-23 11:35:46', '2021-06-23 11:35:46');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jadwal_psikolog` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biaya_konsultasi` int(10) UNSIGNED NOT NULL,
  `bukti_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `psikolog_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('Proses','Terima','Tolak') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `jadwal_psikolog`, `biaya_konsultasi`, `bukti_pembayaran`, `psikolog_id`, `user_id`, `created_at`, `updated_at`, `status`) VALUES
(24, 'Senin,', 250000, '1624584276.jpg', 3, 3, '2021-06-24 17:24:36', '2021-06-24 17:32:09', 'Tolak');

-- --------------------------------------------------------

--
-- Table structure for table `jadwals`
--

CREATE TABLE `jadwals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hari` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_mulai` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_akhir` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `psikolog_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jadwals`
--

INSERT INTO `jadwals` (`id`, `hari`, `jam_mulai`, `jam_akhir`, `psikolog_id`, `created_at`, `updated_at`) VALUES
(5, 'Senin', '05:05', '08:08', 3, '2021-06-24 12:04:53', '2021-06-24 12:04:53');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jawaban` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktu` date NOT NULL,
  `pertanyaan_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'lgbt', '2021-06-23 06:01:57', '2021-06-23 06:01:57'),
(10, 'sendiri', '2021-06-23 11:39:25', '2021-06-23 11:39:25'),
(12, 'ganteng', '2021-06-24 12:07:30', '2021-06-24 12:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `konseling_online`
--

CREATE TABLE `konseling_online` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_konsultasi` date DEFAULT NULL,
  `bukti_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `psikolog_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(3, '2021_05_02_215823_crate_admin_table', 1),
(4, '2021_05_02_220142_create_kategori_table', 1),
(5, '2021_05_02_220227_create_psikolog_table', 1),
(6, '2021_05_02_220243_create_jadwal_table', 1),
(7, '2021_05_02_220258_create_booking_table', 1),
(8, '2021_05_02_220348_create_konseling_online_table', 1),
(9, '2021_05_02_220405_create_pertanyaan_table', 1),
(10, '2021_05_02_220427_create_jawaban_table', 1),
(11, '2021_06_23_122948_create_article', 2);

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
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pertanyaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu` date NOT NULL,
  `konseling_online_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `psikolog`
--

CREATE TABLE `psikolog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_psikolog` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_telp` int(12) UNSIGNED DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_psikolog` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biaya_konsultasi` int(10) UNSIGNED DEFAULT NULL,
  `no_rekening` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipe_bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `umur` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `psikolog`
--

INSERT INTO `psikolog` (`id`, `nama_psikolog`, `alamat`, `no_telp`, `email`, `username`, `password`, `foto_psikolog`, `biaya_konsultasi`, `no_rekening`, `tipe_bank`, `kategori`, `created_at`, `updated_at`, `umur`) VALUES
(2, 'tamrine', 'bekasi', 6666, 'tamrine.bekasi', 'tam', '12345678', NULL, 2000, '123131', 'bni', 'Psikolog LGBT', NULL, NULL, 0),
(3, 'ilham ganteng 123', 'jln. kemana', 831411212, 'ilamm123@gmail.com', 'ilam123', '12345678', 'ilham ganteng 123.jpg', 100000, '121212', NULL, 'lgbt', '2021-06-24 11:58:55', '2021-06-24 12:06:32', 21);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `riwayat_janji` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user','psikolog') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `no_telp`, `tgl_lahir`, `tempat_lahir`, `jenis_kelamin`, `foto_profile`, `status`, `email`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `riwayat_janji`, `role`) VALUES
(1, 'admin', '$2y$10$ERHwidC9IA8vtCDBmpIVI.YYNL8usKzktQiXAsnZzW67ty/4UAkdi', '081212345678', NULL, 'kalimantan timur', 'balikpapan', 'profile.img', NULL, 'admin@gmail.com', '2021-05-03 00:01:55', NULL, NULL, NULL, NULL, 'admin'),
(2, 'user', '$2y$10$uemTgPO5s0QeITIWG.JTJukR2/tR2b3Z9YSk2hLYeICi2GblOX4kW', '081212345679', NULL, 'kalimantan timur', 'balikpapan', 'profile.img', NULL, 'user@gmail.com', '2021-05-03 00:01:55', NULL, NULL, NULL, NULL, 'user'),
(3, 'bona matanari', '$2y$10$ecJLW753HkWYdEUGpJJTuuEP4t.SX9Mn10GZuZQVtZ5ruZiF0Zfrq', '085348409442', '2000-02-17', 'medane', NULL, '1624458240.jpg', 'jagoan neon', 'bona@gmail.com', NULL, NULL, '2021-05-03 01:31:23', '2021-06-24 17:50:50', NULL, 'user'),
(4, 'user2', '$2y$10$9r4kb97q.24Aq9z.awOMPukd.JbOXTJBd5NvFV0QAkgZbJogSqdw2', '12345678900', NULL, NULL, NULL, NULL, NULL, 'user2@gmail.com', NULL, NULL, '2021-05-03 01:42:16', '2021-05-03 01:42:16', NULL, 'user'),
(7, 'aaaaa', '$2y$10$/32ZAsXvUtJv5Mmr.MtRde0ELfLNnErMoxkBrZYMVXMF8bl9hy7Ma', '123123123123', NULL, NULL, NULL, NULL, NULL, 'aa@gmail.com', NULL, NULL, '2021-06-23 09:47:24', '2021-06-23 09:47:24', NULL, 'admin'),
(8, 'ilamasu', '$2y$10$v4fLUcJnJY2RkK2PPK0RkOQHlsjrbwkVj1e1xxvP.5Y42YSK6Wc6S', '083141124873', NULL, NULL, NULL, NULL, NULL, 'ilam@gmail.com', NULL, NULL, '2021-06-23 10:32:26', '2021-06-23 10:32:26', NULL, 'psikolog'),
(9, 'bontol', '$2y$10$Cvvh8fRBfVDBeD3hKh7S.OQ/NM.xehA0Bbt6N8olkqP7hqGLdIi3u', '03248374384', '2021-06-06', 'mantan medan', NULL, '1624476192.jpg', 'mahaasu', 'bontol@gmail.com', NULL, NULL, '2021-06-23 11:22:29', '2021-06-23 11:25:03', NULL, 'user'),
(10, 'adew', '123123123', '4384839', '2021-06-14', 'smarinda', 'Laki-laki', '1624477026.jpg', 'mahasiswa', 'adew@gmail.com', NULL, NULL, '2021-06-23 11:37:06', '2021-06-23 11:37:06', NULL, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_username_unique` (`username`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_psikolog_id_foreign` (`psikolog_id`),
  ADD KEY `booking_user_id_foreign` (`user_id`);

--
-- Indexes for table `jadwals`
--
ALTER TABLE `jadwals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwal_psikolog_id_foreign` (`psikolog_id`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jawaban_pertanyaan_id_foreign` (`pertanyaan_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konseling_online`
--
ALTER TABLE `konseling_online`
  ADD PRIMARY KEY (`id`),
  ADD KEY `konseling_online_psikolog_id_foreign` (`psikolog_id`),
  ADD KEY `konseling_online_user_id_foreign` (`user_id`);

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
-- Indexes for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pertanyaan_konseling_online_id_foreign` (`konseling_online_id`);

--
-- Indexes for table `psikolog`
--
ALTER TABLE `psikolog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `psikolog_kategori_id_foreign` (`kategori`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `asd` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `jadwals`
--
ALTER TABLE `jadwals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `konseling_online`
--
ALTER TABLE `konseling_online`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `psikolog`
--
ALTER TABLE `psikolog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_psikolog_id_foreign` FOREIGN KEY (`psikolog_id`) REFERENCES `psikolog` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booking_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jadwals`
--
ALTER TABLE `jadwals`
  ADD CONSTRAINT `jadwal_psikolog_id_foreign` FOREIGN KEY (`psikolog_id`) REFERENCES `psikolog` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD CONSTRAINT `jawaban_pertanyaan_id_foreign` FOREIGN KEY (`pertanyaan_id`) REFERENCES `pertanyaan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `konseling_online`
--
ALTER TABLE `konseling_online`
  ADD CONSTRAINT `konseling_online_psikolog_id_foreign` FOREIGN KEY (`psikolog_id`) REFERENCES `psikolog` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `konseling_online_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD CONSTRAINT `pertanyaan_konseling_online_id_foreign` FOREIGN KEY (`konseling_online_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

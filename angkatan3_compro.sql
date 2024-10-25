-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2024 at 09:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angkatan3_compro`
--

-- --------------------------------------------------------

--
-- Table structure for table `general_setting`
--

CREATE TABLE `general_setting` (
  `id` int(11) NOT NULL,
  `website_name` varchar(50) NOT NULL,
  `website_link` varchar(50) DEFAULT NULL,
  `website_phone` varchar(16) NOT NULL,
  `website_email` varchar(50) NOT NULL,
  `website_address` text NOT NULL,
  `twitter_link` varchar(100) DEFAULT NULL,
  `fb_link` varchar(100) DEFAULT NULL,
  `ig_link` varchar(100) DEFAULT NULL,
  `linkedin_link` varchar(100) DEFAULT NULL,
  `youtube_link` varchar(100) DEFAULT NULL,
  `logo` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_setting`
--

INSERT INTO `general_setting` (`id`, `website_name`, `website_link`, `website_phone`, `website_email`, `website_address`, `twitter_link`, `fb_link`, `ig_link`, `linkedin_link`, `youtube_link`, `logo`, `created_at`, `updated_at`) VALUES
(4, 'Monas', 'https://www.office.com/', '081212341000', 'admin12345@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'monkey02.jpg', '2024-10-24 03:36:26', '2024-10-25 03:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `instruktur`
--

CREATE TABLE `instruktur` (
  `id` int(11) NOT NULL,
  `nama_instruktur` varchar(100) NOT NULL,
  `jurusan_instruktur` varchar(40) NOT NULL,
  `fb_link` varchar(50) DEFAULT NULL,
  `ig_link` varchar(50) DEFAULT NULL,
  `twitter_link` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instruktur`
--

INSERT INTO `instruktur` (`id`, `nama_instruktur`, `jurusan_instruktur`, `fb_link`, `ig_link`, `twitter_link`, `created_at`, `updated_at`, `foto`) VALUES
(7, 'mega123', 'politik    ', NULL, NULL, NULL, '2024-10-25 07:00:14', '2024-10-25 07:18:55', 'pdi.png'),
(8, 'ipoel', ' militer', NULL, NULL, NULL, '2024-10-25 07:02:38', '2024-10-25 07:02:38', 'rajajawa.jpeg'),
(9, 'mbah hasyim', ' sastra', NULL, NULL, NULL, '2024-10-25 07:04:42', '2024-10-25 07:05:41', 'filsuf.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_profil`
--

CREATE TABLE `kategori_profil` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_profil`
--

INSERT INTO `kategori_profil` (`id`, `nama_kategori`, `created_at`, `update_at`) VALUES
(1, 'Latar Belakang', '2024-10-25 07:38:53', '2024-10-25 07:38:53'),
(2, 'Visi dan Misi', '2024-10-25 07:38:53', '2024-10-25 07:38:53');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `slug` text NOT NULL,
  `isi` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `password`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'rizky hakiki', 'admin@gmail.com', '12345678', '', '2024-10-22 04:32:11', '2024-10-23 04:30:56'),
(11, 'Reprehenderit venia', 'u@gmail.com', '9630', '', '2024-10-23 03:50:49', '2024-10-23 03:50:49'),
(12, 'Reprehenderit123', 'Reprehenderi_venia@gmail.com', '88541', '', '2024-10-23 04:00:01', '2024-10-23 04:00:01'),
(15, 'Ujang Ketoprak', 'ujang@gmail.com', '12345678', '', '2024-10-23 04:42:35', '2024-10-23 04:42:35'),
(16, 'bismillah', '12@gmail.com', 'qwertyuio', '', '2024-10-23 04:44:05', '2024-10-23 04:46:07'),
(17, 'jiji', 'kasir@gmail.com', '741852', '', '2024-10-23 07:20:26', '2024-10-23 07:20:26'),
(18, 'sayur', 'de@gmail.com', '74652', ' dashboard.png', '2024-10-23 07:25:13', '2024-10-23 07:25:13'),
(19, 'Sasa', 'sasa@gmail.com', 'sedfrgthj', ' dashboard.png', '2024-10-23 07:25:31', '2024-10-23 07:25:31'),
(20, 'insert1213', 'a10@gmail.com', '1234567890', 'dashboard.png', '2024-10-23 07:26:05', '2024-10-23 08:07:00'),
(21, 'Sasa', 'sasa@gmail.com', '1234567890', ' dashboard.png', '2024-10-23 07:37:54', '2024-10-23 07:37:54'),
(22, 'Molestiae dolor ut v', 'dolor@gmail.com', '12345678', ' gambar.jpg', '2024-10-23 08:21:17', '2024-10-23 08:22:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `general_setting`
--
ALTER TABLE `general_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instruktur`
--
ALTER TABLE `instruktur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_profil`
--
ALTER TABLE `kategori_profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `general_setting`
--
ALTER TABLE `general_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `instruktur`
--
ALTER TABLE `instruktur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kategori_profil`
--
ALTER TABLE `kategori_profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

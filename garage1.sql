-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2023 at 06:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garage`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacherID` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `teacherID`, `name`, `description`, `type`, `created_at`, `updated_at`) VALUES
(18, 15, 'Academic Calendar 2022-2023 (1).pdf', 'This course uploaded by Admin!', 'pdf', '2023-09-30 14:17:13', '2023-09-30 14:17:13'),
(19, 16, 'Sky News Australia interviews \'free-thinking\' artificial intelligence (1) (1).mp4', 'This video has been uploaded by Teacher', 'video', '2023-09-30 14:21:38', '2023-09-30 14:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `course_enrollments`
--

CREATE TABLE `course_enrollments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `courseID` bigint(20) UNSIGNED NOT NULL,
  `studentID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_enrollments`
--

INSERT INTO `course_enrollments` (`id`, `courseID`, `studentID`, `created_at`, `updated_at`, `amount`) VALUES
(17, 18, 14, '2023-09-30 14:25:33', '2023-09-30 14:25:33', 100);

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_25_083847_create_courses_table', 1),
(6, '2023_07_25_091024_create_course_enrollments_table', 1),
(7, '2023_09_29_080123_add_amount_to_course_enrollments_table', 2),
(8, '2023_09_29_080846_add_amount_to_course_enrollments_table', 3),
(9, '2023_09_29_104750_create_model_payments', 4),
(10, '2023_09_29_105024_create_payments', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'myapptoken', '0d3133b171e82b1d4b3cf11c92cf9fd8944e0a8de8e51dfffd4bcc3120d797cc', '{\"role\":\"student\"}', NULL, NULL, '2023-09-14 16:40:15', '2023-09-14 16:40:15'),
(2, 'App\\Models\\User', 1, 'myapptoken', '5c04de57cb8fb4b4a954052293b99e258a3497b62582eb1433f78724501cd417', '{\"role\":\"student\"}', NULL, NULL, '2023-09-14 16:49:45', '2023-09-14 16:49:45'),
(3, 'App\\Models\\User', 1, 'myapptoken', '6dec13d93032998576ff1b6056ad704abcd8268a21b38b3afff5973824e01648', '{\"role\":\"student\"}', NULL, NULL, '2023-09-14 17:14:43', '2023-09-14 17:14:43'),
(4, 'App\\Models\\User', 1, 'myapptoken', '3369239507c2a33bfcaea5cab125371f3baa7559086ddd0e52d2ec45bfc8bfee', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-14 17:15:53', '2023-09-14 17:15:53'),
(5, 'App\\Models\\User', 4, 'myapptoken', '03262873cc3e59e1959273e614dacdf9fbd1f15cd23d492be8098e3083f21412', '{\"role\":\"student\"}', NULL, NULL, '2023-09-14 17:23:29', '2023-09-14 17:23:29'),
(6, 'App\\Models\\User', 4, 'myapptoken', '6aebf571565f2df47032bf2c9f6b55926007e8d63682d277bb9aeef31af213fb', '{\"role\":\"student\"}', NULL, NULL, '2023-09-14 17:31:26', '2023-09-14 17:31:26'),
(7, 'App\\Models\\User', 1, 'myapptoken', '979bb60eccba64c116fe97d397ce1123f8e12422c2e2eedea9ddcbd122e4fcef', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-14 17:33:10', '2023-09-14 17:33:10'),
(8, 'App\\Models\\User', 4, 'myapptoken', 'bafa2c0ccb7a42d4da1cbde6bdbaa61b60466d0753904e26cc6423b53553e227', '{\"role\":\"student\"}', NULL, NULL, '2023-09-14 17:35:10', '2023-09-14 17:35:10'),
(9, 'App\\Models\\User', 1, 'myapptoken', 'bd7f2e48f9b2f8e932efebc81f0f94b53fadcc39ba9016fa24d5ada883345072', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-14 17:36:33', '2023-09-14 17:36:33'),
(10, 'App\\Models\\User', 1, 'myapptoken', 'ae91f5d6121850e20317c3e5f7a61379c0f262ad5f199be0e81cd589088b2ee9', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-15 07:24:24', '2023-09-15 07:24:24'),
(11, 'App\\Models\\User', 1, 'myapptoken', '8b5ee1ffe8f5c2f0e18c2e09b286a74450c8ceb34e6bb0d32bd966d192aebae0', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-15 07:37:24', '2023-09-15 07:37:24'),
(12, 'App\\Models\\User', 4, 'myapptoken', 'd311cfafd20be2ba072bb4e986b0126e81de437310e028aa4ead0e261993ec39', '{\"role\":\"student\"}', NULL, NULL, '2023-09-15 07:42:54', '2023-09-15 07:42:54'),
(13, 'App\\Models\\User', 1, 'myapptoken', 'a43eab54e7b33d780f9feda3119e73765054e3101ca4b095dd494ab9eb5806ac', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-15 07:48:28', '2023-09-15 07:48:28'),
(14, 'App\\Models\\User', 4, 'myapptoken', 'c3068f5bb0535e6a6444684027f6dfc51a2ef1874dc388b9dc1f7182b6ff8c4b', '{\"role\":\"student\"}', NULL, NULL, '2023-09-15 08:06:23', '2023-09-15 08:06:23'),
(15, 'App\\Models\\User', 1, 'myapptoken', '2c0ad0e482c29f9511b8a1ab22bd8d8d4162cc19e75c8d9affa9708daeeda182', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-15 09:35:45', '2023-09-15 09:35:45'),
(16, 'App\\Models\\User', 1, 'myapptoken', '06c573390c2d2892b6e367da3bf210092ca0546d10405e7d6d9383b8cd5335c7', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-20 18:02:46', '2023-09-20 18:02:46'),
(17, 'App\\Models\\User', 9, 'myapptoken', '6b629df28274f31b762005c65f68c3177052756847e041b2f424c3db0af422bc', '{\"role\":\"student\"}', NULL, NULL, '2023-09-25 12:47:10', '2023-09-25 12:47:10'),
(18, 'App\\Models\\User', 1, 'myapptoken', 'fbcb12a85ecb29deb37962094308db2c8cc2c7c65206b1f2922bbd35ce9d2c9a', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-25 12:51:31', '2023-09-25 12:51:31'),
(19, 'App\\Models\\User', 1, 'myapptoken', '4a780adc49e9adb1b6e7da2745e2f756501a836e1a0654277a493a3265ae4aaa', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-25 14:22:44', '2023-09-25 14:22:44'),
(20, 'App\\Models\\User', 1, 'myapptoken', '71dfd29755cfe85133cb2be08dbbfe113be114839b1de87cec99bfab61a01308', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-25 15:28:35', '2023-09-25 15:28:35'),
(21, 'App\\Models\\User', 1, 'myapptoken', '0ff934117ee9a50e336c9c641febf745714baa49f50f3726016427a3d9cc9ca7', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-25 15:41:24', '2023-09-25 15:41:24'),
(22, 'App\\Models\\User', 11, 'myapptoken', '7e18cd0d265422853982052b39005fe03d004e374f84350c0f5d5df18c82edef', '{\"role\":\"student\"}', NULL, NULL, '2023-09-25 16:47:49', '2023-09-25 16:47:49'),
(23, 'App\\Models\\User', 11, 'myapptoken', 'fe83bcc2e440a3e479320ab640b2f26c82ba4162f576cd3b06cae2fe8316d5da', '{\"role\":\"student\"}', NULL, NULL, '2023-09-25 16:49:38', '2023-09-25 16:49:38'),
(24, 'App\\Models\\User', 11, 'myapptoken', '107cc76b41b3b0c9f6a27e82ca00a22c60224add9fae7c59c7ed7ca5b287c88e', '{\"role\":\"student\"}', NULL, NULL, '2023-09-25 17:02:24', '2023-09-25 17:02:24'),
(25, 'App\\Models\\User', 1, 'myapptoken', '12a3d7c9444b25c4cfcebf89f2438657d9cb2eba88c97063f9182a9dc948b334', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-26 12:56:33', '2023-09-26 12:56:33'),
(26, 'App\\Models\\User', 1, 'myapptoken', '14f5debcc6043fd99ad10aecfcac309c02fcec319996e3c63ad93ce6cb2641f0', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-27 09:50:19', '2023-09-27 09:50:19'),
(27, 'App\\Models\\User', 4, 'myapptoken', '922a9173b6537c8f693f30b5cb115ff9e2b14314221473221dbaf48a1900dc05', '{\"role\":\"student\"}', NULL, NULL, '2023-09-27 09:59:54', '2023-09-27 09:59:54'),
(28, 'App\\Models\\User', 1, 'myapptoken', '2ea0b65984292297885a12d8cc4b52601569c0a674b2b356295c1dc861f88037', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-27 11:21:28', '2023-09-27 11:21:28'),
(29, 'App\\Models\\User', 12, 'myapptoken', '261ccce0c5064fbbc53d0715ea503ac166757c1927285104becddd49fd78603f', '{\"role\":\"student\"}', NULL, NULL, '2023-09-27 11:38:02', '2023-09-27 11:38:02'),
(30, 'App\\Models\\User', 1, 'myapptoken', '828f2cbf6b99576385776e3ce28743b4a45c417b8c5ab5cecc1ea06ace405785', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-27 11:47:25', '2023-09-27 11:47:25'),
(31, 'App\\Models\\User', 1, 'myapptoken', '01dc503d69dd47c40a31410bc64d5eb2746055a17c42801f1aaf51b7be9da7fe', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-27 20:52:07', '2023-09-27 20:52:07'),
(32, 'App\\Models\\User', 1, 'myapptoken', '80bba90efcf0922fd99215f007ff4e0375ca1e927581de3efefbe5905b8187bb', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-28 06:17:30', '2023-09-28 06:17:30'),
(33, 'App\\Models\\User', 1, 'myapptoken', 'a5b20c79b3335b797504c4c858bcfbc43ce3fa3c9db21142782c8073793f9cdb', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-28 09:34:01', '2023-09-28 09:34:01'),
(34, 'App\\Models\\User', 1, 'myapptoken', 'ec5bc5db6ca4ad087a7b88a279369f54a28f48d75421697b008193c00bcfebb6', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-28 09:56:42', '2023-09-28 09:56:42'),
(35, 'App\\Models\\User', 12, 'myapptoken', '2a96cdf030b3e4cbe7b59ba133517774d406cd3adb14873b539feb22f4b47fae', '{\"role\":\"teacher\"}', NULL, NULL, '2023-09-29 08:40:17', '2023-09-29 08:40:17'),
(36, 'App\\Models\\User', 13, 'myapptoken', 'c9b024b061561661866bbd2accf4fe1bef546584dfb66502f5ea91c84dc46869', '{\"role\":\"student\"}', NULL, NULL, '2023-09-29 09:05:17', '2023-09-29 09:05:17'),
(37, 'App\\Models\\User', 13, 'myapptoken', 'a991d9af108ad69876e8d2e6458e5eb806445208cda5d9a706517a355f05196e', '{\"role\":\"student\"}', NULL, NULL, '2023-09-29 09:06:52', '2023-09-29 09:06:52'),
(38, 'App\\Models\\User', 13, 'myapptoken', 'bd0ab746c3fedf389fd3a62bdfaa53b523bc4196a4355b1025124ea478cc23b9', '{\"role\":\"student\"}', NULL, NULL, '2023-09-29 09:15:22', '2023-09-29 09:15:22'),
(39, 'App\\Models\\User', 12, 'myapptoken', '34813ad51c0247de58884609a897b5a5e7aaef9badb4724113b736e03dafaea6', '{\"role\":\"teacher\"}', NULL, NULL, '2023-09-29 09:26:18', '2023-09-29 09:26:18'),
(40, 'App\\Models\\User', 13, 'myapptoken', '1f4e09ccb91f9b3508faa62c41061e59842f5c635e6ada7d14abe452649d8306', '{\"role\":\"student\"}', NULL, NULL, '2023-09-29 09:28:41', '2023-09-29 09:28:41'),
(41, 'App\\Models\\User', 13, 'myapptoken', 'c48014e37ce6f7212d2cf121d3946715769a4344bf1b46d8d240c30f8e4b7429', '{\"role\":\"student\"}', NULL, NULL, '2023-09-29 16:14:37', '2023-09-29 16:14:37'),
(42, 'App\\Models\\User', 13, 'myapptoken', 'd079255a220c44cd594196631d76ed94b183777898f202f6f70724caad2aaf2b', '{\"role\":\"student\"}', NULL, NULL, '2023-09-29 16:23:52', '2023-09-29 16:23:52'),
(43, 'App\\Models\\User', 13, 'myapptoken', '45eeefa1bb798702bacd5709b7f532b91f31d80e2b08d302cd805e27f1dcee73', '{\"role\":\"student\"}', NULL, NULL, '2023-09-29 16:25:43', '2023-09-29 16:25:43'),
(44, 'App\\Models\\User', 10, 'myapptoken', '31d080c5c6e9e477fe08a9342ecaf85883541ac638718a1f20079ab4faac4399', '{\"role\":\"teacher\"}', NULL, NULL, '2023-09-29 16:54:31', '2023-09-29 16:54:31'),
(45, 'App\\Models\\User', 1, 'myapptoken', '80ebf9db4d4abffe27a49293e97655ba73097f739d7981ded31d512a6dfedbdd', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-29 17:02:22', '2023-09-29 17:02:22'),
(46, 'App\\Models\\User', 13, 'myapptoken', '102924055dd74178381cdb7db4e2ff93292076ec139d0ca47c40e9cbd9075e7b', '{\"role\":\"student\"}', NULL, NULL, '2023-09-29 19:06:41', '2023-09-29 19:06:41'),
(47, 'App\\Models\\User', 13, 'myapptoken', '41ad858c44b79bd6ec4c91927659e2639b49babef323ee2b634f3c46a364383f', '{\"role\":\"student\"}', NULL, NULL, '2023-09-30 14:01:08', '2023-09-30 14:01:08'),
(48, 'App\\Models\\User', 15, 'myapptoken', '62f45d2adcd61579ffca5b36de66029449329f89521977efb1e7470c623b5777', '{\"role\":\"student\"}', NULL, NULL, '2023-09-30 14:10:18', '2023-09-30 14:10:18'),
(49, 'App\\Models\\User', 15, 'myapptoken', '4075f2ee41a39a2924d026ade4cc9488b51026f29ae3901eef0c26ad6f2a8374', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-30 14:12:57', '2023-09-30 14:12:57'),
(50, 'App\\Models\\User', 16, 'myapptoken', '46006b6958ae167593d52bca8d162f48a5da8a8b66f20536bf7888fb82ad9469', '{\"role\":\"teacher\"}', NULL, NULL, '2023-09-30 14:20:07', '2023-09-30 14:20:07'),
(51, 'App\\Models\\User', 14, 'myapptoken', 'c79ef5c48c25ffc19a804b8f90229dddd051e5187063c2925a23fb318b95b2b6', '{\"role\":\"student\"}', NULL, NULL, '2023-09-30 14:24:03', '2023-09-30 14:24:03'),
(52, 'App\\Models\\User', 15, 'myapptoken', 'eb8bf9d7545a317fd5361ef39d1ffa53a0ecb139fc3c5d537c2574a9a882d4c2', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-30 14:27:37', '2023-09-30 14:27:37'),
(53, 'App\\Models\\User', 15, 'myapptoken', '3c5a4eb46b1110528fec91db4f1ce4370222d0af8a3c4ded7254d8ec1b55414d', '{\"role\":\"admin\"}', NULL, NULL, '2023-09-30 14:46:18', '2023-09-30 14:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` enum('student','teacher','admin') NOT NULL DEFAULT 'student',
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(14, 'Jean Damas', 'student', 'damas@gmail.com', NULL, '$2y$10$aXzw/P64hn.U1ZAX4eKAvOG84D1byi4pa.TjmwO9QLIHCZAnwZWwa', NULL, '2023-09-30 14:08:05', '2023-09-30 14:08:05'),
(15, 'Rose Mary', 'admin', 'rose@gmail.com', NULL, '$2y$10$.Dxs7Y82YRpfpLStqznbDed/K1eqL/C0dnl9HXQS4E13ceotH9XP6', NULL, '2023-09-30 14:08:48', '2023-09-30 14:08:48'),
(16, 'Jay D', 'teacher', 'jay@gmail.com', NULL, '$2y$10$47sVHEgom38QSE9H3DMCK.tvTB51S15ZuH2tIXXLcqCklioCnmiBC', NULL, '2023-09-30 14:09:50', '2023-09-30 14:15:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_teacherid_foreign` (`teacherID`);

--
-- Indexes for table `course_enrollments`
--
ALTER TABLE `course_enrollments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_enrollments_courseid_foreign` (`courseID`),
  ADD KEY `course_enrollments_studentid_foreign` (`studentID`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `course_enrollments`
--
ALTER TABLE `course_enrollments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_teacherid_foreign` FOREIGN KEY (`teacherID`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `course_enrollments`
--
ALTER TABLE `course_enrollments`
  ADD CONSTRAINT `course_enrollments_courseid_foreign` FOREIGN KEY (`courseID`) REFERENCES `course` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `course_enrollments_studentid_foreign` FOREIGN KEY (`studentID`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

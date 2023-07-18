-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jul 2023 pada 08.11
-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4login`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Site Administrator'),
(2, 'user', 'Regular User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 1),
(2, 6),
(2, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'dedirsam@gmail.com', 1, '2022-09-19 07:31:58', 0),
(7, '::1', 'fatma_unan@yahoo.co.id', 6, '2022-09-19 08:50:44', 1),
(8, '::1', 'dedirsam@gmail.com', 1, '2022-09-19 08:55:47', 1),
(9, '::1', 'fatma_unan@yahoo.co.id', 6, '2022-09-19 08:55:53', 1),
(10, '::1', 'dedirsam@gmail.com', 1, '2022-09-19 08:56:47', 1),
(11, '::1', 'dedirsam@gmail.com', 1, '2022-09-19 08:59:55', 1),
(12, '::1', 'fatma_unan@yahoo.co.id', 6, '2022-09-19 09:00:01', 1),
(13, '::1', 'dedirsam@gmail.com', 1, '2022-09-19 09:02:07', 1),
(14, '::1', 'fatma_unan@yahoo.co.id', 6, '2022-09-19 09:03:12', 1),
(15, '::1', 'dedirsam@gmail.com', 1, '2022-09-19 09:03:24', 1),
(16, '::1', 'fatma_unan@yahoo.co.id', 6, '2022-09-19 09:05:22', 1),
(17, '::1', 'dedirsam@gmail.com', 1, '2022-09-19 09:06:16', 1),
(18, '::1', 'fatma_unan@yahoo.co.id', 6, '2022-09-19 09:10:34', 1),
(19, '::1', 'dedirsam@gmail.com', 1, '2022-09-19 09:10:52', 1),
(20, '::1', 'dedirsam@gmail.com', 1, '2022-09-19 09:15:17', 1),
(21, '::1', 'fatma_unan@yahoo.co.id', 6, '2022-09-19 09:16:22', 1),
(22, '::1', 'dedirsam@gmail.com', 1, '2022-09-19 09:16:30', 1),
(23, '::1', 'dedirsam@gmail.com', 1, '2022-09-19 09:22:42', 1),
(24, '::1', 'fatma_unan@yahoo.co.id', 6, '2022-09-19 09:22:47', 1),
(25, '::1', 'dedirsam@gmail.com', 1, '2022-09-19 09:22:53', 1),
(26, '::1', 'dedirsam@gmail.com', 1, '2022-09-20 02:12:54', 1),
(27, '::1', 'fatma_unan@yahoo.co.id', 6, '2022-09-20 02:17:27', 1),
(28, '::1', 'dedirsam@gmail.com', 1, '2022-09-20 02:20:10', 1),
(29, '::1', 'dedirsam@gmail.com', 1, '2022-09-20 02:22:20', 1),
(30, '::1', 'dedirsam@gmail.com', 1, '2022-09-20 02:22:53', 1),
(31, '::1', 'fatma_unan@yahoo.co.id', 6, '2022-09-20 02:23:41', 1),
(32, '::1', 'dedirsam@gmail.com', 1, '2022-09-20 02:23:56', 1),
(33, '::1', 'dedirsam@gmail.com', 1, '2022-09-20 02:32:34', 1),
(34, '::1', 'dedirsam@gmail.com', 1, '2022-09-20 03:17:33', 1),
(35, '::1', 'dedirsam@gmail.com', 1, '2022-09-20 03:17:45', 1),
(36, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:15:43', 0),
(37, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:15:48', 0),
(38, '::1', 'dedirsam@gmail.com', NULL, '2022-09-23 01:15:51', 0),
(39, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:16:04', 0),
(40, '::1', 'Fatmayani', NULL, '2022-09-23 01:16:09', 0),
(41, '::1', 'dede', NULL, '2022-09-23 01:16:13', 0),
(42, '::1', 'admin@example.com', NULL, '2022-09-23 01:16:16', 0),
(43, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:16:26', 0),
(44, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:16:33', 0),
(45, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:16:45', 0),
(46, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:17:10', 0),
(47, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:18:12', 0),
(48, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:20:55', 0),
(49, '::1', 'dedirsam@gmail.com', NULL, '2022-09-23 01:23:04', 0),
(50, '::1', 'dedirsam@gmail.com', NULL, '2022-09-23 01:23:13', 0),
(51, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:23:17', 0),
(52, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:23:23', 0),
(53, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:24:13', 0),
(54, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:24:30', 0),
(55, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:25:09', 0),
(56, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:26:45', 0),
(57, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:27:32', 0),
(58, '::1', 'dedirsam@gmail.com', NULL, '2022-09-23 01:27:38', 0),
(59, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:30:36', 0),
(60, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:30:46', 0),
(61, '::1', 'abcd@gmail.com', 7, '2022-09-23 01:31:54', 1),
(62, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:34:07', 0),
(63, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:34:44', 0),
(64, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:34:53', 0),
(65, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:35:01', 0),
(66, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:35:07', 0),
(67, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:35:20', 0),
(68, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:36:14', 0),
(69, '::1', 'dedirsam@gmail.com', 1, '2022-09-23 01:36:44', 1),
(70, '::1', 'Dedi Saputra', NULL, '2022-09-23 01:37:00', 0),
(71, '::1', 'dedirsam@gmail.com', 1, '2022-09-23 01:37:20', 1),
(72, '::1', 'dedirsam@gmail.com', 1, '2022-09-23 01:43:36', 1),
(73, '::1', 'dedirsam@gmail.com', 1, '2022-09-23 05:30:28', 1),
(74, '::1', 'dedirsam@gmail.com', 1, '2022-09-23 05:36:57', 1),
(75, '::1', 'dedirsam@gmail.com', 1, '2022-09-23 08:56:13', 1),
(76, '::1', 'dedirsam@gmail.com', NULL, '2022-09-27 04:19:32', 0),
(77, '::1', 'Dedi Saputra', NULL, '2022-09-27 04:19:37', 0),
(78, '::1', 'dedirsam@gmail.com', 1, '2022-09-27 04:19:46', 1),
(79, '::1', 'Fatmayani', NULL, '2022-09-27 04:21:56', 0),
(80, '::1', 'abcd@gmail.com', 7, '2022-09-27 04:22:03', 1),
(81, '::1', 'abcd@gmail.com', 7, '2022-09-27 04:23:01', 1),
(82, '::1', 'Fatma', NULL, '2022-09-27 04:26:13', 0),
(83, '::1', 'dedirsam@gmail.com', 1, '2022-09-27 04:26:25', 1),
(84, '::1', 'Fatma', NULL, '2022-09-27 04:26:40', 0),
(85, '::1', 'Fatma', NULL, '2022-09-27 04:26:55', 0),
(86, '::1', 'fatma_unan@yahoo.co.id', 6, '2022-09-27 04:27:05', 1),
(87, '::1', 'Dedi', NULL, '2023-03-06 07:31:52', 0),
(88, '::1', 'vendetta', NULL, '2023-03-06 07:31:58', 0),
(89, '::1', 'dedirsam@gmail.com', NULL, '2023-03-06 07:32:03', 0),
(90, '::1', 'abcd@gmail.com', 7, '2023-03-06 07:32:07', 1),
(91, '::1', 'dedirsam@gmail.com', NULL, '2023-07-18 00:59:56', 0),
(92, '::1', 'abcd@gmail.com', 7, '2023-07-18 01:00:42', 1),
(93, '::1', 'abcd@gmail.com', 7, '2023-07-18 01:01:52', 1),
(94, '::1', 'dedirsam@gmail.com', NULL, '2023-07-18 01:02:16', 0),
(95, '::1', 'admin@example.com', NULL, '2023-07-18 01:02:21', 0),
(96, '::1', 'dedirsam@gmail.com', NULL, '2023-07-18 01:02:37', 0),
(97, '::1', 'dedirsam@gmail.com', 1, '2023-07-18 01:03:37', 1),
(98, '::1', 'Dedi', NULL, '2023-07-18 01:06:04', 0),
(99, '::1', 'dedirsam@gmail.com', 1, '2023-07-18 01:06:12', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-user', 'Manage All User'),
(2, 'manage-profile', 'Manage user\'a profile');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1663502874, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT 'default.svg',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'dedirsam@gmail.com', 'Dedi', 'Dedi Saputra', 'default.svg', '$2y$10$qTNueYMiB.hbdmwlmska8OASYFckhMdT0c/zyVKxSzfP1k/UkNlHy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-09-19 07:28:54', '2022-09-19 07:28:54', NULL),
(6, 'fatma_unan@yahoo.co.id', 'Fatma', 'Fatmayani', 'default.svg', '$2y$10$r5RQREA0B7J8h72ZNXmWn.bVulTgtvcGmWabUIHLSh0AKFvpcTmU6', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-09-19 08:34:46', '2022-09-19 08:34:46', NULL),
(7, 'abcd@gmail.com', 'abcd', NULL, 'default.svg', '$2y$10$qTNueYMiB.hbdmwlmska8OASYFckhMdT0c/zyVKxSzfP1k/UkNlHy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-09-23 01:31:48', '2022-09-23 01:31:48', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

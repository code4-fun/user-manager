-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 05, 2024 at 05:12 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20240605123638-create-user.js');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sex` enum('Male','Female') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `refreshToken` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `name`, `lastName`, `email`, `password`, `sex`, `photo`, `refreshToken`, `createdAt`) VALUES
('a161c9cd-da7c-4bb2-83d4-8c9fb2451cd2', 'Nick', 'Nolte', 'nick8@mail.com', '$2a$07$.xIkgof2bkamcConNRBZoey6DjGxPrxnh9Tk.jwVBPfvx//P7tG9W', 'Male', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImExNjFjOWNkLWRhN2MtNGJiMi04M2Q0LThjOWZiMjU0NWNkMiIsImVtYWlsIjoibmlja0BtYWlsLmNvbSIsIm5hbWUiOiJOaWNrIiwiaWF0IjoxNzE3NTk2NDQxLCJleHAiOjE3MTc2ODI4NDF9.I2FGLz2gCpqvEElycH6LU3fRCGQGqDa6dMYaDcf8qKs', '2024-06-05 14:05:22'),
('a161c9cd-da7c-4bb2-83d4-8c9fb2542cd2', 'Nick', 'Nolte', 'nick9@mail.com', '$2a$07$.xIkgof2bkamcConNRBZoey6DjGxPrxnh9Tk.jwVBPfvx//P7tG9W', 'Male', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImExNjFjOWNkLWRhN2MtNGJiMi04M2Q0LThjOWZiMjU0NWNkMiIsImVtYWlsIjoibmlja0BtYWlsLmNvbSIsIm5hbWUiOiJOaWNrIiwiaWF0IjoxNzE3NTk2NDQxLCJleHAiOjE3MTc2ODI4NDF9.I2FGLz2gCpqvEElycH6LU3fRCGQGqDa6dMYaDcf8qKs', '2024-06-05 14:05:22'),
('a161c9cd-da7c-4bb2-83d4-8c9fb2543cd2', 'Nick', 'Nolte', 'nick10@mail.com', '$2a$07$.xIkgof2bkamcConNRBZoey6DjGxPrxnh9Tk.jwVBPfvx//P7tG9W', 'Male', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImExNjFjOWNkLWRhN2MtNGJiMi04M2Q0LThjOWZiMjU0NWNkMiIsImVtYWlsIjoibmlja0BtYWlsLmNvbSIsIm5hbWUiOiJOaWNrIiwiaWF0IjoxNzE3NTk2NDQxLCJleHAiOjE3MTc2ODI4NDF9.I2FGLz2gCpqvEElycH6LU3fRCGQGqDa6dMYaDcf8qKs', '2024-06-05 14:05:22'),
('a161c9cd-da7c-4bb2-83d4-8c9fb2544cd2', 'Nick', 'Nolte', 'nick11@mail.com', '$2a$07$.xIkgof2bkamcConNRBZoey6DjGxPrxnh9Tk.jwVBPfvx//P7tG9W', 'Male', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImExNjFjOWNkLWRhN2MtNGJiMi04M2Q0LThjOWZiMjU0NWNkMiIsImVtYWlsIjoibmlja0BtYWlsLmNvbSIsIm5hbWUiOiJOaWNrIiwiaWF0IjoxNzE3NTk2NDQxLCJleHAiOjE3MTc2ODI4NDF9.I2FGLz2gCpqvEElycH6LU3fRCGQGqDa6dMYaDcf8qKs', '2024-06-05 14:05:22'),
('a161c9cd-da7c-4bb2-83d4-8c9fb2545cd2', 'Nick', 'Nolte', 'nick@mail.com', '$2a$07$.xIkgof2bkamcConNRBZoey6DjGxPrxnh9Tk.jwVBPfvx//P7tG9W', 'Male', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImExNjFjOWNkLWRhN2MtNGJiMi04M2Q0LThjOWZiMjU0NWNkMiIsImVtYWlsIjoibmlja0BtYWlsLmNvbSIsIm5hbWUiOiJOaWNrIiwiaWF0IjoxNzE3NTk2NDQxLCJleHAiOjE3MTc2ODI4NDF9.I2FGLz2gCpqvEElycH6LU3fRCGQGqDa6dMYaDcf8qKs', '2024-06-05 14:05:22'),
('a161c9cd-da7c-4bb2-83d4-8c9fb2545cd3', 'Nick', 'Nolte', 'nick1@mail.com', '$2a$07$.xIkgof2bkamcConNRBZoey6DjGxPrxnh9Tk.jwVBPfvx//P7tG9W', 'Male', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImExNjFjOWNkLWRhN2MtNGJiMi04M2Q0LThjOWZiMjU0NWNkMiIsImVtYWlsIjoibmlja0BtYWlsLmNvbSIsIm5hbWUiOiJOaWNrIiwiaWF0IjoxNzE3NTk2NDQxLCJleHAiOjE3MTc2ODI4NDF9.I2FGLz2gCpqvEElycH6LU3fRCGQGqDa6dMYaDcf8qKs', '2024-06-05 14:05:22'),
('a161c9cd-da7c-4bb2-83d4-8c9fb2545cd4', 'Nick', 'Nolte', 'nick2@mail.com', '$2a$07$.xIkgof2bkamcConNRBZoey6DjGxPrxnh9Tk.jwVBPfvx//P7tG9W', 'Male', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImExNjFjOWNkLWRhN2MtNGJiMi04M2Q0LThjOWZiMjU0NWNkMiIsImVtYWlsIjoibmlja0BtYWlsLmNvbSIsIm5hbWUiOiJOaWNrIiwiaWF0IjoxNzE3NTk2NDQxLCJleHAiOjE3MTc2ODI4NDF9.I2FGLz2gCpqvEElycH6LU3fRCGQGqDa6dMYaDcf8qKs', '2024-06-05 14:05:22'),
('a161c9cd-da7c-4bb2-83d4-8c9fb2545cd5', 'Nick', 'Nolte', 'nick3@mail.com', '$2a$07$.xIkgof2bkamcConNRBZoey6DjGxPrxnh9Tk.jwVBPfvx//P7tG9W', 'Male', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImExNjFjOWNkLWRhN2MtNGJiMi04M2Q0LThjOWZiMjU0NWNkMiIsImVtYWlsIjoibmlja0BtYWlsLmNvbSIsIm5hbWUiOiJOaWNrIiwiaWF0IjoxNzE3NTk2NDQxLCJleHAiOjE3MTc2ODI4NDF9.I2FGLz2gCpqvEElycH6LU3fRCGQGqDa6dMYaDcf8qKs', '2024-06-05 14:05:22'),
('a161c9cd-da7c-4bb2-83d4-8c9fb2545cd6', 'Nick', 'Nolte', 'nick4@mail.com', '$2a$07$.xIkgof2bkamcConNRBZoey6DjGxPrxnh9Tk.jwVBPfvx//P7tG9W', 'Male', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImExNjFjOWNkLWRhN2MtNGJiMi04M2Q0LThjOWZiMjU0NWNkMiIsImVtYWlsIjoibmlja0BtYWlsLmNvbSIsIm5hbWUiOiJOaWNrIiwiaWF0IjoxNzE3NTk2NDQxLCJleHAiOjE3MTc2ODI4NDF9.I2FGLz2gCpqvEElycH6LU3fRCGQGqDa6dMYaDcf8qKs', '2024-06-05 14:05:22'),
('a161c9cd-da7c-4bb2-83d4-8c9fb2545cd7', 'Nick', 'Nolte', 'nick5@mail.com', '$2a$07$.xIkgof2bkamcConNRBZoey6DjGxPrxnh9Tk.jwVBPfvx//P7tG9W', 'Male', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImExNjFjOWNkLWRhN2MtNGJiMi04M2Q0LThjOWZiMjU0NWNkMiIsImVtYWlsIjoibmlja0BtYWlsLmNvbSIsIm5hbWUiOiJOaWNrIiwiaWF0IjoxNzE3NTk2NDQxLCJleHAiOjE3MTc2ODI4NDF9.I2FGLz2gCpqvEElycH6LU3fRCGQGqDa6dMYaDcf8qKs', '2024-06-05 14:05:22'),
('a161c9cd-da7c-4bb2-83d4-8c9fb2545cd8', 'Nick', 'Nolte', 'nick6@mail.com', '$2a$07$.xIkgof2bkamcConNRBZoey6DjGxPrxnh9Tk.jwVBPfvx//P7tG9W', 'Male', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImExNjFjOWNkLWRhN2MtNGJiMi04M2Q0LThjOWZiMjU0NWNkMiIsImVtYWlsIjoibmlja0BtYWlsLmNvbSIsIm5hbWUiOiJOaWNrIiwiaWF0IjoxNzE3NTk2NDQxLCJleHAiOjE3MTc2ODI4NDF9.I2FGLz2gCpqvEElycH6LU3fRCGQGqDa6dMYaDcf8qKs', '2024-06-05 14:05:22'),
('a161c9cd-da7c-4bb2-83d4-8c9fb2545cd9', 'Nick', 'Nolte', 'nick7@mail.com', '$2a$07$.xIkgof2bkamcConNRBZoey6DjGxPrxnh9Tk.jwVBPfvx//P7tG9W', 'Male', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImExNjFjOWNkLWRhN2MtNGJiMi04M2Q0LThjOWZiMjU0NWNkMiIsImVtYWlsIjoibmlja0BtYWlsLmNvbSIsIm5hbWUiOiJOaWNrIiwiaWF0IjoxNzE3NTk2NDQxLCJleHAiOjE3MTc2ODI4NDF9.I2FGLz2gCpqvEElycH6LU3fRCGQGqDa6dMYaDcf8qKs', '2024-06-05 14:05:22'),
('a161c9cd-da7c-4bb2-83d4-8c9fb2546cd2', 'Nick', 'Nolte', 'nick12@mail.com', '$2a$07$.xIkgof2bkamcConNRBZoey6DjGxPrxnh9Tk.jwVBPfvx//P7tG9W', 'Male', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImExNjFjOWNkLWRhN2MtNGJiMi04M2Q0LThjOWZiMjU0NWNkMiIsImVtYWlsIjoibmlja0BtYWlsLmNvbSIsIm5hbWUiOiJOaWNrIiwiaWF0IjoxNzE3NTk2NDQxLCJleHAiOjE3MTc2ODI4NDF9.I2FGLz2gCpqvEElycH6LU3fRCGQGqDa6dMYaDcf8qKs', '2024-06-05 14:05:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

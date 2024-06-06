-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 06, 2024 at 02:32 AM
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
('20240605123638-create-user.js'),
('20240606123638-add-fake-users.js');

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
('0845f4af-1374-4870-8556-6c1f63e4670b', 'Waldo', 'Blanda', 'Brandi46@gmail.com', '$2a$07$n6u5ShB2jGqMgi5gPpqPmOgBI.kqvKPD47jcPxu1Amuw5DIz2IaFu', 'Female', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjA4NDVmNGFmLTEzNzQtNDg3MC04NTU2LTZjMWY2M2U0NjcwYiIsImVtYWlsIjoiQnJhbmRpNDZAZ21haWwuY29tIiwibmFtZSI6IldhbGRvIiwiaWF0IjoxNzE3NjMwMjg0LCJleHAiOjE3MTc3MTY2ODR9.0V9e_AcH_zLbiXNwmZ36N1I1zbSuxbZgDtUZtOv0QmQ', '2023-07-03 15:44:41'),
('08722fbf-a1a2-4618-9909-c7f7344745ac', 'Lera', 'Hintz', 'Desiree_Kemmer@yahoo.com', '$2a$07$9673Ki4pQmEJ6Qvc9aX76eMU5CPSF8DIYFmMaSlOyEty0024zi5He', 'Male', 'be23165c-f056-44b0-b07e-109af0135c9a.jpeg', 'a1b496be-7601-4eac-a82e-a11e2314a185', '2021-10-01 14:31:18'),
('0a5c9471-2cee-46e3-bc2a-954d9b93ad42', 'Nicholaus', 'Mayert', 'Wilfredo_Franey69@hotmail.com', '$2a$07$.7yPtxK4nn3qUZk8ddKrxONmWx4iUqMkRJdeMpfWZWlOHGH1doG2i', NULL, '45fe69df-d8cd-4bc1-974b-398cd20f06e0.jpeg', '93aa09cf-d855-489a-9ce3-f0e20206eed7', '2020-01-26 22:29:48'),
('0be2f5d8-939d-4365-89b1-1dd5bcc0d706', 'Grady', NULL, 'Aniyah42@hotmail.com', '$2a$07$tWuAoF3NsLzoPuEf8Rd5uO9MTd9tuiNAr7JyBbCY7Cq5fuGGhrgpm', 'Female', 'e9a1d07f-d70d-494a-a72b-8937d044f4ef.jpg', '433b98b5-1898-497e-876f-cb77542bee1e', '2020-09-05 06:17:41'),
('0c9fae99-7a43-4702-b484-f95b2ffcf006', 'Louie', 'West', 'Casandra42@yahoo.com', '$2a$07$h/A0ZI/kz8u06rqTQrZpieoPECmzadV4cpQzWPeLzmdOXYj0gtMLG', 'Female', NULL, 'd170d959-8672-41af-8384-f65fe00bf972', '2024-06-01 01:54:45'),
('10bdf5a3-b7d4-40a4-84d0-341f4b3530c7', 'Leonard', 'Roberts', 'Felix.Carter-Bauch@hotmail.com', '$2a$07$gHLkcj1Ta7B9lFZezmEURuI7Rw76N2f/C9bb/Qt594ANIUdOpjrXe', 'Male', 'f12318bc-dcf3-4b7d-b2ce-83f5df43b188.jpeg', '581c0707-2e7d-46c8-afce-2fddd3a1e902', '2020-08-22 23:55:04'),
('1396caf7-0e03-4e1f-b42b-e8d6b90c8fec', 'Carroll', NULL, 'Tavares.Bauch9@gmail.com', '$2a$07$muJbKSATfU6YdwTheQ4QlOKIazLeU.PkULtgBPlWkxhUCMjdwq.XG', 'Female', NULL, '076fc01f-8bb5-425c-91e9-3a5b0f3c9c65', '2021-10-23 12:53:36'),
('17fb1729-0961-4676-8682-8490dd7afacf', 'Adan', 'Prosacco', 'Wyman_Schmidt@hotmail.com', '$2a$07$3DDdUT7s7s3I95HDsFEORevn7V4AA7oHE3gyTOJoPFttP66ZyQnzm', 'Male', '30e0fc36-65b9-48dc-ae4c-e7eb27e71c23.jpg', '8027c4eb-5670-46cf-a2ae-03a7f1bb1b4b', '2022-04-20 04:25:06'),
('191f88bb-f064-4aac-8d0f-e6b2c7cb8bde', 'Hermann', 'Bosco', 'Brandyn.Bergstrom@gmail.com', '$2a$07$KqO3IfBYTMXxPbc8l346x.J.mJtuXz2Uamu/VqT1ZfSeuWmnz0wJ.', NULL, 'f168878c-740d-466b-a273-7a86bbf68135.jpeg', '1921b0b0-e412-41a6-aaff-d94e2fb31f88', '2020-08-07 01:11:17'),
('1bf00b2c-b52d-4cbc-868b-ac6f748b3e75', 'Garland', NULL, 'Corrine.Stiedemann54@yahoo.com', '$2a$07$e0vOQTVoBU2vW.nwZgTTeO8a7foYQjcA5.10FJpty1OM3rMv.qtbe', 'Female', '845dd56c-04a3-4719-ae73-4cc63ca38e09.jpeg', 'da95a9bc-b398-4b7e-92ea-e1bf198500a1', '2021-09-19 07:27:14'),
('207f58ed-4602-4b20-a902-7d7a8a91311c', 'Joyce', 'Nader', 'Mariane_Rodriguez60@yahoo.com', '$2a$07$3SLV30Ny0.Mz9vNbrwggG.gsWFdnIgJnlgnAq8jYLyKhPxeArMb32', 'Male', 'ccfd53a3-bf1d-4d1d-a570-682fc23701ca.jpeg', 'b97a005a-e800-4812-9857-420584bde5e8', '2024-01-20 15:45:49'),
('26bd9761-3618-452f-8954-cd37485221b0', 'Javonte', NULL, 'Chaya_Stamm91@gmail.com', '$2a$07$6RF1QwlulSYouB5A/R3TX.hGhAXoD2DRVzz/rx7V50c9be2HjjztC', NULL, NULL, '0b5f9561-0fac-4994-a2e6-c5ec204b94ce', '2020-12-09 20:54:51'),
('2c32b7fc-3c17-4b5e-be70-838ed3561c88', 'Marquise', 'Weimann', 'Amani.Shanahan23@hotmail.com', '$2a$07$rgu1YE4HIktArxAuWPRMjeURMrUEk2n3a.bVKQaiT7mL8cf5VBOIG', 'Male', '424e4a9d-611a-494a-a22a-06885e1fa5b9.png', 'c4235117-0b84-4ed6-a4e7-acd6269601a4', '2021-08-05 15:14:37'),
('325c26e4-42d5-4651-8850-579381fbeac5', 'Concepcion', 'Kutch', 'Kiana54@yahoo.com', '$2a$07$w.la8PpyZla3eERC2ybcT.JcVsmKbSUnCVfNGX60ZMWqQBVNPWqD.', 'Female', 'e788597a-5709-4411-b9f9-d8d54fbd1b7a.png', '9a6340ee-833c-435d-9c58-48bfc02d8d02', '2023-12-22 00:37:59'),
('32b081a4-446c-4b7b-85e8-56de24a552d3', 'Odell', NULL, 'Giovanni20@yahoo.com', '$2a$07$igazESlwB8HOtaTHsC.VputqKzxhKYyanaNUiZO4lUKQqxYEPc886', 'Male', 'bbca99ba-749e-459d-b869-76241b037b1c.jpg', '3c912dfc-930c-481b-ba21-2071309663fa', '2022-02-27 11:55:46'),
('36f9ef90-a3dc-4569-9544-ebe0659254d2', 'Kendall', 'Muller', 'Lorenza.OReilly@yahoo.com', '$2a$07$7olZPgmVbvFpehvd6U1Qwul5BDtCAx48Db.8raoUczk6Cno4zP5yC', 'Male', 'd1ec4463-466f-4390-bedf-4dad228da767.png', 'c085545a-1365-4029-bb99-93eb20f0a6fa', '2023-05-14 21:40:41'),
('39590208-8333-4d83-845d-79b631402a61', 'Devan', NULL, 'Lance_Franecki@gmail.com', '$2a$07$o1UhDB4MB.673gdCfpSqMO/oz/fI9QfmHhCo4gelWH3rOM9IKEFnq', 'Female', NULL, 'b867a54c-e4f2-4fd4-9392-bec7c64d6a7e', '2020-11-08 19:13:23'),
('3adc5122-f5e6-4b9d-a046-ae4849ba3bdc', 'Bill', NULL, 'Mollie.Gleichner-Harris@gmail.com', '$2a$07$RKqRIFS/fQ6cep3A6xG4meklKe00Xu0NFLwf/o.bFHhIXn06zQDAu', 'Male', 'e6db7499-79ce-40cd-81ec-c9932c53e8c9.jpg', '0feaf7ed-76f7-4f54-a760-2ba71edb7b6b', '2021-12-09 02:55:19'),
('3b511a50-2113-491e-bf85-32ac527bbdbe', 'Shaniya', 'Gutkowski', 'Kurt_Jacobi@yahoo.com', '$2a$07$JxrN1TKDWj/XZh1Rn7m93OGh7O4qA2hPgBwgiMc8ZkRfmYGVlf7Y2', 'Male', '56ebd00a-0352-4fee-bc5c-d991a7f0b495.jpeg', '7052c544-c3a6-4348-b58f-4799f9cfdb84', '2022-05-11 00:54:50'),
('3b955c43-8338-4471-8ee8-09388768ee35', 'Alexandro', NULL, 'Nathanial.Considine@hotmail.com', '$2a$07$indSCANU6j8MJxrLR3LeDeQVbSXdWrv5FTsDZ9MdEybs/DC4hJ8KW', 'Male', 'd8f37012-9fe7-418e-9959-c019ea389c6e.jpeg', 'adb7a254-b6a5-4b58-9c36-4da359516247', '2022-03-24 15:28:54'),
('3b98a354-e32d-4c36-8c0b-67e8042d7816', 'Sigmund', 'Dicki', 'Nicola.Crist63@yahoo.com', '$2a$07$37BGmkTvA.QpwqUi0HIdieD6jia5F/ExInTwMePIKvFL8E2IAqsCa', 'Female', '07687aed-2d4d-4f94-a39a-6c766936a3db.jpeg', 'c13cec13-a82b-425f-b395-953dc9f229a7', '2023-01-16 18:34:22'),
('3d25c877-bbd8-44ca-98ec-17635ea788f3', 'Addie', NULL, 'Alessia.OConnell93@gmail.com', '$2a$07$mH1D76DPy.nA7Ug2vhWEJucBDb4U.NehZ9j4kOwqpTnPYXIXPTh9y', 'Male', NULL, '0bf3f3cd-38be-4772-9dd6-132be4fc54c2', '2023-04-16 01:58:32'),
('3e109e21-fbe1-4ddf-a39e-a8e18567c2ea', 'Mariela', 'Bernier', 'Jolie.Muller12@hotmail.com', '$2a$07$W6GtLFfZye8XiAqGcpwcEulPel1.Wfjk63aG9p4m49J9UOBSPpbcq', 'Male', 'de5dc7db-fe02-4d4f-92d3-e1b2c72dfb69.png', '3b5c50ef-1da2-4f59-b733-0c91d9aa6501', '2023-03-23 12:58:00'),
('3e9eb26e-2962-4022-b9d0-e940e54e2b4c', 'Lupe', NULL, 'Jodie19@gmail.com', '$2a$07$kTTpUscGLP63SD3hL9dXQOG3V.HebsPFowLxaimgk9sxc85dCrr3q', 'Female', '1bae0c98-c55f-466d-b24c-9d218fa1a690.png', 'f4b519e9-3858-46fe-ab12-2b6ebe82ea4d', '2023-02-05 14:50:40'),
('438a9cfd-b510-404c-a3f9-35f8f729bc8f', 'Grayce', 'Bosco', 'Pasquale94@yahoo.com', '$2a$07$fdr6NHz.DRCkBtHowDzvMeJD1W1/NMG9ns7ko62fYKaAORA3NDffK', NULL, '8e17343d-4b71-45ea-a91c-72d0b05cf9f5.jpg', '3846b6ac-0548-4157-ba4e-4ecf99248e35', '2023-01-21 05:46:02'),
('43d6d710-0a12-4495-bd67-5c1d29454223', 'Beatrice', NULL, 'Claire42@hotmail.com', '$2a$07$sQQyKbgcMcXJFEqlhy7NnewxAeltAIIxa5tDNeR7LcK0JEatmW0cW', 'Male', '34e73ac8-4c2f-4ddd-ac2c-e7da1ec49a47.jpeg', '4115f00c-9451-4422-ac1d-26acd393afd2', '2023-11-07 19:16:32'),
('4c60994d-4cff-4c94-ae65-76d7d9f20e49', 'Evert', NULL, 'Mathias_Johnston15@hotmail.com', '$2a$07$ss5yFa1Fuq.CEu6jIxF/V.tvZUmEUe4WyOUoxybpzVylbJAJo0Wki', 'Male', NULL, '277dbe0d-230e-4f60-9e4c-f185502fed5d', '2024-03-28 00:49:46'),
('54e5df19-7f2f-46c2-9aed-d92e895c73b7', 'Maurice', 'Kihn', 'Verla.Jast-Pfeffer@gmail.com', '$2a$07$1JO10tqC9pU.wHlKDLLIG.toY377H2vOPQAbe0hK5xNtTkMm8GxLW', 'Female', '20367569-7f9f-48d6-bcf8-19def79217ad.jpg', '711353ff-5686-4bb3-9fc0-a1beb513ea59', '2020-02-05 09:22:25'),
('56af1f2c-89a5-492a-a9dd-a618e80b40b3', 'Yessenia', 'Okuneva', 'Toy.OReilly@yahoo.com', '$2a$07$.sHl9YO5FhuB4nEwX3aRv.dSGPg1RUyzkn8lzLp6UoVEAKeTyxItO', 'Male', NULL, '7d1258ae-dc4e-40a7-b53a-b86d48f31fa9', '2021-05-10 08:48:27'),
('56fa59e1-e839-445c-a947-42e4a2e912a0', 'Kieran', NULL, 'Aron_Becker@yahoo.com', '$2a$07$8W4eTZ4nY5UhaGBddS7VWOT78UP.szcirShZg.jc3I1UNOCgkjGZK', 'Female', '7e4e2839-817b-4f6d-88f3-78101a7bc7d3.png', 'f7bf20d6-bf09-4194-b3cd-c56606a51a41', '2021-05-15 12:00:19'),
('57ec0cfe-6071-41cf-8026-9d98752a44ac', 'Dariana', 'Kilback', 'Florine.Reinger@yahoo.com', '$2a$07$z6EtBiEsrXcSALumwrm88Od3fHYC5XeihArXCPe8Mp88Wm/28X1V.', NULL, NULL, '85999980-a719-4095-84ac-b1bbf3695a43', '2021-06-05 07:26:20'),
('59f630ff-4d0d-4682-a3d3-04565e827fa2', 'Juston', 'Wunsch', 'Declan.Hegmann@hotmail.com', '$2a$07$Ax42ISmFXATEUkC6qeQziexM1F21Q/3JKYoWl9eZnYfPg5B.hJOo2', 'Male', NULL, 'd2465ef6-54ec-4c62-9074-18d29b1ac7c5', '2021-07-07 16:08:53'),
('5c9c7d6a-bb6c-47fe-ab58-385a17fc97dd', 'Marilie', NULL, 'Franz.Bruen@gmail.com', '$2a$07$eXlosJnnnsIV7TvBNpqkkeQaRIIZUiQDh4gqOm9PIThLUB.hLnkoi', NULL, '05341cda-427b-4523-a6e1-e32870f5e068.jpeg', '06f4dad7-b758-4aac-b42b-55d4024edb02', '2024-02-12 02:48:27'),
('5ceaa325-30b0-47a4-95e9-961c4e669dc0', 'Scarlett', NULL, 'Amelia_Kemmer@hotmail.com', '$2a$07$9EOZxnMg1EpmgoG7rWDyzOGkNDyhvqGYYIsWSkgHtItGTcfpc3jre', NULL, NULL, 'ae8bc360-d374-4cd6-a909-6ba25f2ebcf6', '2021-02-19 19:19:32'),
('627fd4c6-7fff-474c-937d-6bb4009822d4', 'Aaron', 'Klein', 'Dorothea_Effertz58@yahoo.com', '$2a$07$ltlysut7bvxuRiw8bHjSZO0wo72CSQB0oWZNzsFfPbOsX43IVAj4e', 'Male', NULL, 'c08d62e0-fda1-442c-b4db-a4d14f3f4816', '2022-08-12 01:55:06'),
('62855de5-2e4a-4906-83ce-c6cfc395f4dc', 'Aileen', NULL, 'Green_Stamm@hotmail.com', '$2a$07$uk57RtZ5Ng2trL2gtBjIxeY5SQLn.QEJXSHiZNUjAkYESXWYBUgiO', NULL, '946de696-c77d-491c-abfd-9ecd179a2e15.png', 'e743448f-ad08-4141-81ba-8239af490b84', '2021-09-12 16:30:05'),
('670c616b-6fac-45cc-a5d8-c1e9a3c47325', 'Nicholaus', NULL, 'Jazmin.Klein-Botsford@hotmail.com', '$2a$07$CnLcsr7aV6YJ.fOheGvoWeEKhpyw1HFYzldWsNNNPxUJdbgFRBXg2', 'Male', NULL, 'b2d2a3d9-19d5-46a2-8487-e1c4757dc44d', '2022-05-24 08:36:44'),
('6905ce87-0008-4d3b-aece-3c95a072dd30', 'Enrique', 'Wuckert', 'Isaiah_Witting@gmail.com', '$2a$07$TYhp29dNLqvNBU9aaMDGUeFAlMepKmCK.z.O/wmEzA5FX/IT0.Ehq', NULL, '7890ed13-6638-4ccd-8f03-8d201fc555b5.jpeg', 'a0aee210-299f-41b1-997b-0cfcd65aa873', '2023-07-16 03:48:38'),
('6af94fcb-973c-473d-a113-d2eb36766de3', 'Johan', 'McLaughlin', 'Kristina93@hotmail.com', '$2a$07$tWyOaeJC0G3I/S1A.bcysOsLnD7Vhd43ip3HcoIgFcz6foYE3TRuq', 'Male', NULL, '8c7c05c4-fcec-447c-86e0-33e3b4a8a3eb', '2023-12-03 07:43:26'),
('6ee7eb12-5670-4326-831b-37cb17fa31d7', 'Stephon', NULL, 'Estel_Schowalter@yahoo.com', '$2a$07$/OYSVleHNiH/0d2DvgY..eeLEOoCKlEuZiXpmMYFzPYstYyY7Hcq.', 'Male', 'b5c07e6f-2a22-47a1-858c-c9231b47426c.jpeg', '6750972b-5ec7-4628-bda2-75029425c14e', '2022-06-08 02:52:47'),
('7303347e-bb2f-4078-a2c4-92b914773d20', 'Lucie', 'Spinka', 'Jaleel80@hotmail.com', '$2a$07$3dahB.6VN8T40o8/N6CWCea1CrQjVEgNOcKaH0cAmBpVhjZFnkSmm', 'Female', NULL, '340f6d19-a2bb-4a13-b854-48f8577cfbbf', '2021-10-04 06:23:48'),
('74b106a9-ae59-4e08-9d5c-730e2a7f2cc8', 'Sim', NULL, 'Gilda_Haley88@yahoo.com', '$2a$07$mj5DFGFQILOQAy2ic1sGROSewh0n8D4sQNfWDiibaM0WkLpBfSrYK', NULL, NULL, 'fff1e534-733a-4cb1-a99a-f0726e7297ff', '2020-10-27 07:10:19'),
('76abd391-67a2-4516-9755-59394a86cc01', 'Lucinda', 'Armstrong', 'Garett.Waelchi18@gmail.com', '$2a$07$yS1VuO0B2gx1Kya41VBiY.tcgPrwb.99/QLNR/RaM/N1geYDGgJHq', 'Male', NULL, '072543d3-7c62-447f-9793-de15cfb67a5b', '2023-01-27 19:12:07'),
('791c6ed4-9ab4-4aec-ad25-b77c9960851e', 'Laura', NULL, 'Marilou.Schuppe2@yahoo.com', '$2a$07$M7kmD1.ghL2kn2jGJKOdZOCth/kKYieWHr2E4jmSf8BrSEMDI0SUO', 'Female', '751acd4b-e525-4b1c-8c86-5c8e4ea26351.jpg', '7a7abb11-596f-40fb-8b4a-8bacd1d51781', '2023-11-24 08:17:20'),
('7a475be6-6285-45ec-b83b-ad51675283e2', 'Eriberto', NULL, 'Krista.Sporer57@gmail.com', '$2a$07$DYLSOXkKxBx.wNay5hX9d.Ov16srZ.Elc614RZOyrr7UR/OSDBOb6', 'Female', NULL, 'b32ff45c-6d4b-4a59-95a6-b8e0e8446ac5', '2022-03-21 08:39:45'),
('84d2fafb-a219-4389-ab9c-2f70e26e5754', 'Ansel', NULL, 'Rita_Champlin52@gmail.com', '$2a$07$z1bsjAETnFQLwHxqN62lzut7ijJgrXHqDX6JB7f88QWyE3TZA8DWK', 'Male', 'c04ec772-35fb-4506-baaa-89733fd39c78.jpg', '6c707b18-41be-45d5-9355-48c1f70bdec5', '2022-04-12 12:29:08'),
('86a6bc6a-faa8-4e63-9c85-380811a58a9c', 'Adolphus', NULL, 'Bernard.Corwin@gmail.com', '$2a$07$5vijj1z23p354PC3IQSgQ.Dy7MwPDcrL0DQv7arIJFtmsNIXVG.yi', 'Female', NULL, '5e8b0259-3927-4fec-9c39-d364a8f329c3', '2023-09-21 11:31:27'),
('88bc8daa-b8e5-48d4-822e-35cd13018367', 'Deion', 'Heller', 'Guillermo80@hotmail.com', '$2a$07$JlsMDhdz8NT9r.avQY1PZuMqgAZkc8RwEIJi2xbiRcAz0pM6Ma1fa', NULL, NULL, 'a7cc5db4-73f3-426b-9ca1-5216f96c2d48', '2022-08-31 22:30:44'),
('8fe44355-226d-4c1c-8008-a4d64f0deab9', 'Leo', NULL, 'Maxie_Lueilwitz24@gmail.com', '$2a$07$msSnO19e/BqiRwRUVHbPNu3g1L4.8GOSDdYWKhbvaYOxXxyU77E8m', NULL, NULL, '48aa4532-3b50-46c1-84b7-a715f4aa4f2f', '2023-11-16 16:47:40'),
('92d65b99-fe8d-4bd0-9867-3f88bd572b12', 'Patrick', 'Will', 'Darrion_Schroeder1@gmail.com', '$2a$07$g0x6Q34TqdffCX8GZllbfeB.22zMAnuS0u19qG7a0C3HtaA6HE7YS', NULL, 'e7f85875-3a0c-480b-bdd9-102f06fcc2bf.png', 'a4928813-74cf-4e27-9fc1-9ccaa1f03ab4', '2024-01-23 05:39:47'),
('944b82a3-0c6d-4ee9-9eb6-67630d475792', 'Sabryna', NULL, 'Laura22@gmail.com', '$2a$07$tClpQQSg8xVe2AnZuzGpgeG9orqunjpVtNgRpYMXsoGXHSKGYoRVO', 'Female', NULL, 'a1d70e09-4659-40ad-8a9a-6f7220fd2b90', '2023-05-28 20:39:51'),
('9784b317-a99c-4f91-8f4e-e9bc6591e8a6', 'Miles', NULL, 'Gonzalo_Lueilwitz@gmail.com', '$2a$07$13QF8hEAbLpVz0/rAJBg5u8AnjoAt2WWTYedZ8yUfr2HgLPpkWax2', 'Female', NULL, 'baa23902-3846-4ea2-80ea-1270113edd09', '2022-03-05 04:03:45'),
('985be3ad-480b-40f3-98b6-59bc3f4423d2', 'Edna', 'Murray', 'Dawson.Smitham81@yahoo.com', '$2a$07$ZhQqC2PldCljP1OJVNn07.sqxrVEDsLf4FXy7ydVYtdNJiBoaP/DC', NULL, NULL, '2882ddfb-6f89-4657-8db3-18e89d8c1094', '2023-03-11 03:23:27'),
('9a3e2746-2504-402b-893d-af32e9762612', 'Johanna', NULL, 'Chasity_Wisoky3@gmail.com', '$2a$07$2VeYmsb.ovsd4BwT60dMx.I/xZVNfnz.IiPR9jllRjtb6pOeY8X1i', 'Female', '46747859-1db3-445d-a359-7afce2939c75.png', 'bd810647-d7a6-4d00-945e-6e6e02965ebd', '2020-04-06 13:22:30'),
('9c83b22e-e7b9-4ecc-8a45-b80339714a52', 'Justus', 'Pacocha', 'Abigayle.Crooks83@hotmail.com', '$2a$07$.833XBucGNfgNkujV5uUyecJ8KIJ5oDSJ70paKmESvRA32bybdoSy', 'Male', '251b5896-833b-4656-8d09-4b0e43d3b8c1.jpeg', '4bf24bc6-93cd-4869-873e-e21a695a89c6', '2021-12-11 17:33:56'),
('9ca0d1a5-7e09-4596-9f5a-a5b50e814e5a', 'Raoul', NULL, 'Dimitri.Kessler@gmail.com', '$2a$07$GIfRNsv2LrMSoQAWk0TOIOGrwcae.U5YUJhoFwVv..llJ5ubCqPcO', 'Male', 'f8b60ca1-3443-482f-bc6e-1e41d9183bb1.jpeg', '6b492819-38e4-4d48-b9ec-bb16b8897690', '2020-06-08 08:23:56'),
('9cc74ba5-0f83-44de-a47c-f845337b3891', 'Madie', NULL, 'Afton.Bayer4@hotmail.com', '$2a$07$vByLgdR1d4ThYSpiCd3bleZE6RObzmTMu4iWVGGmRu5g1LjZKtjZ6', NULL, NULL, '928829fb-223a-490d-a189-c87dacc28442', '2020-11-28 17:36:23'),
('9ff339e5-7b30-4d84-bdd3-9c7d724de34c', 'Damon', NULL, 'Corrine92@yahoo.com', '$2a$07$fNcr5ctpjgRqOMONsq9oiOBWwWXmw5Fkh5vyY8Dyf3xWtnXiPkYOK', 'Male', '7c6e650a-80c0-46cf-a2d0-1f6a0e8571ed.jpeg', 'dee1ac1b-8c07-4168-a3fa-af074e7428f9', '2021-08-07 01:54:49'),
('a254b0c8-0414-4520-af95-dea77f711cda', 'Isabella', 'Nitzsche', 'Maud_Huel@gmail.com', '$2a$07$LbV.6Ww6IwS60B9zaKRawePvN1YrTFUAkAtruOh4OG2dQDMAEjPsi', NULL, 'cba8ba3f-0139-4a6f-8044-29cec59525b4.png', 'a0bd4f2c-adca-41fe-906b-e28474c9eba7', '2022-01-31 10:00:12'),
('a4355373-110d-4f33-9325-69c50c97d51d', 'Beth', NULL, 'Bianka.Auer68@gmail.com', '$2a$07$Pa34H.qBjNaL7M8/vsJ6IOcCIYB.iSm.S5dt3vrMuf6hoPLlLxUKK', 'Male', '8d73f9d0-0398-405b-afc8-b63953cc8144.png', '2e124428-0e77-4231-baf4-a1351997cc48', '2021-01-30 12:01:03'),
('a86704a9-7848-4f06-a324-8c82a9e1c9ef', 'Myra', 'Roberts-Botsford', 'Julien.Kuhic@gmail.com', '$2a$07$pYWiB7hYvmizSwwI//cia.v5WRVeVa38Sw0tPrAgbXdU52vlNsvzm', 'Female', NULL, '5cb03b06-2f55-4dda-92e9-11c40beabe13', '2022-08-14 12:13:54'),
('ae9d0e83-9038-4991-87b7-60f3a5b40390', 'Elisabeth', NULL, 'Angus.Smitham@gmail.com', '$2a$07$Bw9ktgf0QXEXZjFiXNW.xuf0e6U3VoVGAIcWQ7NWhWlJNBkCieZSO', NULL, NULL, '2298230a-680d-476c-ba96-de01533e4e56', '2020-03-30 08:08:49'),
('b0620788-b7c5-49ab-a010-fe3ce7c2c6a9', 'Dallas', NULL, 'Jaron96@gmail.com', '$2a$07$utabSBX6qvw8rny5SI2i6e9hku1evFOzSMZXzRMI/Ci9ZXLsOuNsq', NULL, NULL, 'b27fa80a-6388-41b3-bc63-2446c9bd1cc4', '2021-12-18 19:52:18'),
('b10c611b-cad5-414b-a588-ccc9b3ef383b', 'Fred', NULL, 'Erling_Little@hotmail.com', '$2a$07$R97g/zUI/p07CInR.7ME5uHPR5OeV6M5iJSvrDcBX.fvICOvnTv/.', 'Male', '6a231597-8f54-4643-850c-96e97c892440.jpg', '890ff933-65cc-4f70-a8bf-4a7060fcab6a', '2023-05-07 10:57:30'),
('b1b8f08b-1e56-4a3a-82a7-f75be570ff7f', 'Lukas', NULL, 'Michael_Williamson@gmail.com', '$2a$07$YUVmT.60c1.PcNFhJuB0f.g7HihKLcIoc0EeRSp2bvs80zJuUb.Oa', 'Male', NULL, '60eff05a-196d-49dd-9c94-a6a97722f11b', '2021-08-05 06:46:08'),
('b358ea7c-fbe7-4f11-9ebe-1b21224ebb68', 'Marley', 'Legros', 'Lavon.Donnelly@hotmail.com', '$2a$07$kAu7Vyb1SIZaxd8o.8JsO.SOoY0QedloQ1CnN/GyMHwpkG5EEgyIK', NULL, NULL, 'ca5c1fa5-1001-4747-a971-f4ac991b8ae6', '2023-09-28 18:08:55'),
('b750fabf-b1cb-4e89-a3a8-d60bedb9c655', 'Eden', NULL, 'Cathryn.Rowe76@yahoo.com', '$2a$07$g4v..lGz5COxMM/FlmNYvOPb7uoQGIBug9DgF2sZ/iiuiADqTTGK6', NULL, 'f2cc68ec-c95e-4a4a-b374-4149827d0c14.png', 'a53e7da1-c0f8-4fec-8afe-f84864487dfb', '2024-05-29 10:39:25'),
('bba865c3-76f7-42b0-b389-d65700d87a1b', 'Leo', NULL, 'Erick_Auer@hotmail.com', '$2a$07$3J/oJLqm5RxcxkHi06jFHO1O8xBOgCdsUQFnakPI.yxuzvP6j5CnC', NULL, '55b78a6a-0053-4158-a058-0720b370c4a7.jpeg', '80fbf822-99a2-420f-99de-220fefc44016', '2022-10-04 08:50:51'),
('c8ae5075-f9f0-4bab-9545-1252d64fddf1', 'Edwina', NULL, 'Miller.Davis83@yahoo.com', '$2a$07$iN3UAXf7j1kcjc1fzkYcxOIQf/7UQ7/nDEsygHi.DrPTD/so00FGu', NULL, '9e9a0164-fe09-4f69-add5-44b807185283.jpg', '500e4125-3b04-4777-85e5-b466a557ea78', '2024-02-10 03:42:50'),
('cb5d0c9c-a8b6-466a-9f74-9e3cc1b2dd68', 'Kylie', 'Brown', 'Gabriella_Kulas18@hotmail.com', '$2a$07$bQetaeJUXcdsNKdiI3smneJKvcJ3AM9TOhuLQ1cYaLNPbIHTmDyva', NULL, 'b1e96f9d-1131-4445-8b7d-9770b492830e.jpg', '4cb89033-4d0a-46db-9b6e-860a03314476', '2020-02-19 23:26:15'),
('cc245f63-e9d9-4be6-95ca-3b504cf37dec', 'Danial', NULL, 'Josefa70@yahoo.com', '$2a$07$FqfVxnHTMXeHYbkfqNg5L.mKdQj2mMLcI4pgcK/o5MTbMlyjAneuS', NULL, '24826cd6-7ab0-4176-b8d6-7ab7a41351ba.png', 'b53e86b1-9160-4f7b-abdf-8f3a93488074', '2022-02-20 16:49:30'),
('cc8ac520-7183-4f99-b08e-255ea853caea', 'Jonas', 'Hartmann', 'Alexandre93@gmail.com', '$2a$07$tRwqCTSnE1CgT00cEe8r3uVe47jwMPTwCt0vbxYS6sElA0qIiddA2', 'Female', NULL, '740d50cb-7241-48ab-9aa3-c2303adf896c', '2023-04-01 07:27:39'),
('ced68849-de4a-4f59-b34d-3892a4a80da5', 'Savannah', NULL, 'Diamond63@hotmail.com', '$2a$07$poo2hq7UjKJ7Il/K5d85R.ViQeGpzyWVogDL4wCvQKGk0kqcg5.9K', 'Female', NULL, 'c942d740-48a9-4485-835e-cbb7edd6ddf8', '2021-12-08 15:58:14'),
('d0fd3d9e-df88-4205-9409-6061a0356100', 'Dario', NULL, 'Johnathon.Ziemann@gmail.com', '$2a$07$o80slfQigwQQ4wOn0IcWv.gLagfrlYz1A/0Hgu9Ty5VFfFKmauKUy', NULL, NULL, 'f3a45cea-96c7-4062-8996-ff13c19c48fc', '2021-09-13 09:00:23'),
('d43c554f-db94-463c-974d-0746b3d362df', 'Hiram', NULL, 'Jarred8@hotmail.com', '$2a$07$W3rfoOKOUWVZDO6Y7FoncumUwBBXMBDAheIiILgxxRcTby38KaNLa', NULL, 'd6a5d85d-18e8-4923-a0b4-3f41f4db40e6.png', 'cb201312-880c-4bd0-84e5-d79421f23dc8', '2021-08-16 00:24:21'),
('d685ad03-8afe-43d5-b948-2d44990e1e7e', 'Destin', 'Koch', 'Fabiola97@hotmail.com', '$2a$07$slryFf9QTGEbDgbe1AEh.eznADhIF54yYfCsLIBvNPw0pV8nskko2', 'Female', '44197200-262e-4f05-8f9d-760bc3118895.png', '3f58cd23-104c-4500-83e5-bd738868bd4e', '2023-04-16 12:56:35'),
('d7194b99-b287-4ed1-831b-77be618c6ea2', 'Lola', NULL, 'Carlo_Senger50@yahoo.com', '$2a$07$fjyLx9Eam7knfzEw2c8tyewdzInVTYOVRFGB5/enVfjCdTPfI3mMq', 'Female', '5234e46a-9e89-4cae-9916-009e08943597.jpg', 'aff5f438-b6c4-41f6-8f75-9545d1cf0afc', '2023-02-05 07:48:50'),
('d811b53c-6a16-4cd6-a3dd-18c284bdd192', 'Rylan', 'Runte', 'Antonietta61@gmail.com', '$2a$07$fZrCGyS1A4dEN82qnlusReLCecLgy0KBC8/iHiXe3lXXokf2Sp696', 'Female', NULL, 'da2ac122-f7b9-4d88-826e-d5f2b944c424', '2022-12-29 13:18:07'),
('d97c4e2c-6b9c-42eb-8480-ff3bb95060bc', 'Don', NULL, 'Hulda.Hayes72@yahoo.com', '$2a$07$co/JdJTeKwC7o.7rtjFXBugff/WEhMA0woHm0XBtJMH1Ur7zgECvu', 'Male', 'cafa6fd9-78c3-4bfa-bf90-9869ae950dfd.jpeg', 'fe986f7b-fd6b-4596-990e-f164d2270a05', '2024-04-18 04:54:36'),
('dfe67ca2-c9a6-4ec8-bf81-ba8c1c708387', 'Sedrick', NULL, 'Ben_Tillman@yahoo.com', '$2a$07$/jqy6ujVckm1XJgVpJcqA.ImYrBZ10aM7cp8gSqO.dl9OFhScfRHC', 'Female', '2c04aeee-b01d-44f4-ac3b-33a301dad3e4.jpeg', '5f26b190-7a3c-4135-a9a3-8640fa9e56da', '2022-10-28 21:27:04'),
('e04e3239-02ab-44de-b9e2-5d76be444f95', 'Isai', 'Rohan', 'Jeffrey.White6@hotmail.com', '$2a$07$3/fLWn2JtnEOEznL2gvZrOlgoDQQG3.uU4LUsxGbnblaoDQ67ZC..', NULL, NULL, '3d97b227-ccae-41c3-8698-d9fc78935fa0', '2020-03-02 21:35:52'),
('e1c598a7-0040-49ec-a04c-ceb5317dbc84', 'Mason', 'Thiel', 'Odell.Denesik66@yahoo.com', '$2a$07$2WkHBbRj5n9eE22OwlSDUOx4NZV9otdysXWDCnozHMS4awDfgM4XS', NULL, NULL, '4c9404be-cc5a-4226-8b1e-f05075ccdf65', '2021-04-17 19:27:40'),
('e1d96bbe-4530-45c5-a1f2-a6379cb292d5', 'Loraine', 'Jacobs', 'Maureen_Mraz@yahoo.com', '$2a$07$Jdq0.y9In.6kfUYpBrTIX.L0xAGp.wTIB11FejRMue8W1jf7J8AMu', 'Male', 'aee2984f-1f6a-425e-b78f-a0ec3d58711e.jpeg', '2d402ea0-d90d-4b61-a882-d9ababe674ee', '2023-03-04 06:50:25'),
('e78aeaa3-4363-4951-a944-7686898ae7ea', 'Elwyn', 'Gutmann', 'Maximillia5@yahoo.com', '$2a$07$CY5ktKitC7FgKjgLoZkDQuhFdW2tqO1CGsxYZ24VC/4yIz4AcZ63G', NULL, NULL, '244914fe-fc8b-4a6e-9bed-0b6d3d83ce69', '2023-06-15 11:00:25'),
('e8f40139-f033-4818-9401-9aa705e4c86c', 'Tamara', 'Metz', 'Cydney.Hickle64@gmail.com', '$2a$07$aF8VgrrpdsTCjz2QKTzv7ugFJxmEw4xkK2A4Eo825mK.eSDmilc6.', 'Male', NULL, '5e833587-e424-4594-835f-4e50c6e43be3', '2021-02-28 00:53:23'),
('e95257d2-8033-42e6-b787-d05da5c459b7', 'Lue', 'Walsh', 'Carlie.Cruickshank@yahoo.com', '$2a$07$OaDM8UcCe3hAzmW5A3DQWOd6G3B4f56rlYItmN7rXvUhnMwEgIR2q', 'Male', NULL, '66e76b86-6571-49b0-8447-798143a233e4', '2023-08-16 06:48:46'),
('eac4a043-2d75-47c8-9dcb-c717e70e41c9', 'Destiny', NULL, 'Nels_Zulauf-Reilly86@hotmail.com', '$2a$07$/94mwGnJBgNcGFcxPWRt5eX8QlPd//J0vjeWR54K3jF08UVFXEToS', NULL, '54c84a66-173c-4073-92a7-b08203da5764.png', 'fcbd8b88-cd34-45ac-affe-0949379f5d68', '2021-11-21 15:12:57'),
('ebacfb8b-cc1e-43b2-8e9a-b76403833475', 'Eldora', NULL, 'Delmer.Doyle58@hotmail.com', '$2a$07$BspqXsIrUxOrvPqsvAbhdO93/lK6FvWufy79dIvs5GTt9.e.FA1ka', NULL, 'd6ff0667-4b4b-4ace-8809-23265171cd7a.jpg', '4efcfa51-836a-468e-9fd3-68a8f0e9f3a1', '2022-01-06 04:42:35'),
('eda90f84-7415-4f5a-91f3-479e35d113f1', 'Karli', 'Satterfield', 'Leola.Ryan@yahoo.com', '$2a$07$00pZ4f6YHotQEGeyLFvO.uFXUwtkWFoy6KJ0T8u7303/xTBN6OaWe', NULL, NULL, '5dc985e6-08db-4081-9b83-b892ba1bf88b', '2022-01-05 00:36:59'),
('edc7e84e-7aa8-4cc1-9060-4a873db0301a', 'Oma', 'Toy', 'Justyn_Cruickshank48@gmail.com', '$2a$07$S3aXyAb76LbKjnFYG2U0ge/rT2h77H54EhPoS813SGQEfrJyI45AW', NULL, '66dedd5d-980c-4268-b386-0842264a41c6.png', '47fdb3b5-a1ef-4e91-9778-4bc8c237bb8d', '2020-02-22 13:13:13'),
('ee426ab0-4469-402f-aa10-028ebd5ad706', 'Frances', 'Harvey', 'Claude_Schmeler-Runte22@gmail.com', '$2a$07$ir31J.xqkkK4U5ld9Ao8X.Qi9r671mvp4h7O4xMEWk7m06zQtu0oy', NULL, NULL, '210a23e1-2da8-41f6-97b3-6ae5d0a8482d', '2022-12-27 11:31:41'),
('f05c1054-842f-4c07-a9af-0397dde977b6', 'Pablo', NULL, 'Jesse_Kassulke85@gmail.com', '$2a$07$KB7SXo77hgappKug8f4yXOxjf8m1A9hPY9.w3qocduA7DXej4uJ6y', 'Male', NULL, '95e32ccf-ed49-4270-b4e4-aedfe75ed711', '2023-11-04 01:27:23'),
('f53fab07-8507-48ac-97d4-b0e11a439c6f', 'Leonel', NULL, 'Eduardo_Rohan68@gmail.com', '$2a$07$RuDZ0NTEOw12nqwrWNphNeyrHNOg0jdoEiWpzEP5QNvu00JE2HtjS', NULL, NULL, 'e13216f7-283c-4346-be4e-6f4546f1708c', '2020-02-13 02:24:41'),
('f733476e-0c7d-4a4f-bea9-fc5e297ac8ba', 'German', 'Blanda', 'Gina.Schamberger@yahoo.com', '$2a$07$gwE3o2yhH6tRV95lDWYtBufe4MAAsB.DSWpWvDG2TD2u6daG64KoW', 'Male', '7662245b-d7d9-4204-be6e-170d4fdf9296.jpg', '5daeea9f-5dbd-4b4a-b7dd-f6137ab5f7f8', '2023-10-10 21:24:36'),
('f7cf6f44-3892-4be0-b7d8-eaa2702f8afb', 'D\'angelo', NULL, 'Gerhard.Von51@yahoo.com', '$2a$07$aPkcdla.j1dK3orB2m4vzuVzMB37OcfrVqKjnofvY8U6ql3ZVK9N.', NULL, NULL, '33335233-b37a-4291-8ead-96fd60870fb4', '2024-05-27 20:22:36'),
('f91ab04a-319d-4209-b12f-9d79ae58604b', 'Lavinia', 'Halvorson', 'Chelsey_Padberg@gmail.com', '$2a$07$CSWN5TXwnAKcMICAi5ODSOQq/3j/skebVRE8sOm8YLGR2afva8.A2', 'Male', 'faf202d1-8fbf-462b-8d81-199e78408616.jpg', '4626fcd6-28f4-4655-b399-829c330884ed', '2023-07-18 16:35:41'),
('f9beef84-8f6b-43ff-b1b3-d919e0c67011', 'Zachariah', NULL, 'Melyna45@hotmail.com', '$2a$07$zJxasHLOK2gZMUX1dsRr4Ozvd3TAZqblIGmoLCBSMhdS6l65iofxe', 'Male', NULL, '552d5bf3-32a1-4c39-b1ef-e8473a6dee2a', '2024-03-04 11:17:52'),
('fcd4130b-fd61-4686-8465-78903480134e', 'Lina', 'D\'Amore', 'Monte_Homenick93@gmail.com', '$2a$07$Yi9kE1TBpaTa7NMmMEuX6Om0Z7IO7Qbythtyo0.4lidKfP8cnKlQC', 'Female', NULL, 'f527a287-40d7-4ae2-8872-0fdb79ca32df', '2022-11-07 13:29:46'),
('fcd6ce3f-49fb-454c-ac03-da30cf1a9a64', 'Joesph', 'Jenkins', 'Corine81@gmail.com', '$2a$07$50ij.AajMeea4Gxbf5XeoeufHc1hzpQdgQ4iPwYdjEfcKjeVuvB9a', NULL, NULL, 'e7c5c624-35e4-4f8b-b709-8bcfde100760', '2023-10-29 12:29:50'),
('ff197730-655f-4b41-8e0a-1d28e29c1cb9', 'Caroline', NULL, 'Nyasia29@yahoo.com', '$2a$07$RRoC9ryGKcdRIDRiOV1gau9iuNb9Th4/E8CsZokRHeG1br/sq1Jfq', 'Female', NULL, 'f86ec595-b42c-4b49-ba47-6168ffdc4f80', '2022-10-02 08:46:38');

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

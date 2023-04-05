-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 25, 2022 at 04:22 PM
-- Server version: 10.3.37-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `churchdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `fcm_server_key` text NOT NULL,
  `mail_username` varchar(200) NOT NULL,
  `mail_password` varchar(200) NOT NULL,
  `mail_smtp_host` varchar(100) NOT NULL,
  `mail_protocol` varchar(50) NOT NULL,
  `mail_port` int(11) NOT NULL,
  `facebook_page` varchar(1000) NOT NULL,
  `youtube_page` varchar(1000) NOT NULL,
  `twitter_page` varchar(1000) NOT NULL,
  `instagram_page` varchar(1000) NOT NULL,
  `ads_interval` int(11) NOT NULL,
  `website_url` varchar(500) NOT NULL,
  `image_one` varchar(500) NOT NULL,
  `image_two` varchar(500) NOT NULL,
  `image_three` varchar(500) NOT NULL,
  `image_four` varchar(500) NOT NULL,
  `image_five` varchar(500) NOT NULL,
  `image_six` varchar(500) NOT NULL,
  `image_seven` varchar(500) NOT NULL,
  `image_eight` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `fcm_server_key`, `mail_username`, `mail_password`, `mail_smtp_host`, `mail_protocol`, `mail_port`, `facebook_page`, `youtube_page`, `twitter_page`, `instagram_page`, `ads_interval`, `website_url`, `image_one`, `image_two`, `image_three`, `image_four`, `image_five`, `image_six`, `image_seven`, `image_eight`) VALUES
(100, 'AAAA-AogT2A:APA91bEeTBj6i7gb8RKPv5HYynOMQMZVTdD8ZEzCl4Cd84wZHZ0vakDbsz4Ddbm9nAJHomezDYzA-g03h0p3iP7AGA3ARbmk-tb_xR3i-Y740ZaUOyS2Mv2vsS9C07zlJYQbGFvwbu7q', 'mail_username', 'mail_password', 'mail_smtp_host', 'smtp', 465, 'https://www.facebook.com/universityadventist', 'https://www.youtube.com/channel/UCaqkZKT0Cp6F6K6FvAER2kg', 'https://twitter.com/UniSDAChurch', 'https://www.instagram.com', 30, 'https://unisdac.org/', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_android_users`
--

CREATE TABLE `tbl_android_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `login_type` varchar(100) NOT NULL DEFAULT 'email' COMMENT 'email,facebook,or google',
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `verified` int(1) NOT NULL DEFAULT 1 COMMENT '0 for true, 1 for false',
  `blocked` int(1) NOT NULL DEFAULT 1 COMMENT '0 for true, 1 for false',
  `isDeleted` int(1) NOT NULL DEFAULT 1 COMMENT '0 for true, 1 for false',
  `subscribed` int(1) NOT NULL DEFAULT 1 COMMENT '0 for true, 1 for false',
  `subscribe_expiry_date` bigint(20) NOT NULL,
  `subscribe_plan` varchar(100) NOT NULL,
  `subscribe_token` longtext NOT NULL,
  `sub_type` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_android_users`
--

INSERT INTO `tbl_android_users` (`id`, `name`, `email`, `password`, `login_type`, `date`, `verified`, `blocked`, `isDeleted`, `subscribed`, `subscribe_expiry_date`, `subscribe_plan`, `subscribe_token`, `sub_type`) VALUES
(490, 'Eukeria Ng&#39;andu', 'ngandueukeria@gmail.com', '$2y$10$N4EqPAHCtOxn3jL571ZNLuLe2nlnPAdh4o5kpt/Sjwo5MqkNzbzLS', 'email', '2022-11-04 15:33:30', 1, 1, 1, 1, 0, '', '', 0),
(494, 'Chautongi mulusa', 'Chautongi@gmail.com', '$2y$10$/Opqb/CQIgPff8m50OV.ieEvzck4rzXMtvc.PMOLtKiDv23wiOjqi', 'email', '2022-11-04 15:34:30', 1, 1, 1, 1, 0, '', '', 0),
(495, 'Liam samson', 'Liam@gmail.com', '$2y$10$ycao6douGRHcF3sIy4.3YupF4PRyVU/SVcZxamW8DqTCvucIgc0Oa', 'email', '2022-11-04 15:34:39', 1, 1, 1, 1, 0, '', '', 0),
(497, 'Moses mark', 'Simukondakelvin@gmail.com', '$2y$10$xeI8XHuWjBbfjwXDL/kNGOwR/48RPHYX4wAaRdrENXzVnyqmLPMqi', 'email', '2022-11-08 16:44:21', 1, 1, 1, 1, 0, '', '', 0),
(498, 'Kevin kleain', 'Kevin@gmail.com', '$2y$10$kUXVwZs48U5k1WOC6T.Ja.x8FncITmvSEzyRn9VmmDI1TrnRzs8Yu', 'email', '2022-11-20 12:42:53', 1, 1, 1, 1, 0, '', '', 0),
(499, 'Michael', 'Michael@gmail.com', '$2y$10$6ppVbKueE9g3xySYJ7RfI.1NIx8Yu/nwjXWw6I9ocuPfgVD8ID/nu', 'email', '2022-11-23 23:58:27', 1, 1, 1, 1, 0, '', '', 0),
(500, 'leo mitson', 'leo@gmail.com', '$2y$10$fr0nsWyPazrlnPNI339bV.uoc5z1psX2L7o2McB2NzOCtLFM.lVYi', 'email', '2022-11-24 00:05:56', 1, 1, 1, 1, 0, '', '', 0),
(501, 'james', 'james@gmail.com', '$2y$10$lvy.IyoPP2/v4MQAX/PhzuTLz8yBF4JDefF8lk1c2P1cH8gxr875y', 'email', '2022-11-24 00:15:52', 1, 1, 1, 1, 0, '', '', 0),
(502, 'luke potoroso', 'luka@gmail.com', '$2y$10$2WO/nqhvovPl4Lio.Tlkp.pyckdXDOs62PfbXDSlkNu8cAH8MA.2u', 'email', '2022-11-24 00:23:03', 1, 1, 1, 1, 0, '', '', 0),
(503, 'Testing', 'Testing@gmail.com', '$2y$10$NnMIqfmx1avNKIrZSDEpXu6SVMXsqVpuGqQuYlvaVyQYQdH5TuUEa', 'email', '2022-11-24 00:26:50', 1, 1, 1, 1, 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_babies`
--

CREATE TABLE `tbl_babies` (
  `id` int(11) NOT NULL,
  `child_full_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `hospital` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `time` time NOT NULL,
  `request_month_of_dedication` varchar(255) NOT NULL,
  `second_option` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `home_telephone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mother_mobile` varchar(20) NOT NULL,
  `father_mobile` varchar(255) NOT NULL,
  `adventist` varchar(255) NOT NULL,
  `ruth` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_ay` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bible`
--

CREATE TABLE `tbl_bible` (
  `id` int(11) NOT NULL,
  `book` varchar(25) NOT NULL,
  `chapter` int(11) NOT NULL,
  `verse` int(11) NOT NULL,
  `AMP` text NOT NULL,
  `KJV` text NOT NULL,
  `MSG` text NOT NULL,
  `NIV` text NOT NULL,
  `NKJV` text NOT NULL,
  `NLT` text NOT NULL,
  `NRSV` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bible_versions`
--

CREATE TABLE `tbl_bible_versions` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `shortcode` varchar(20) NOT NULL,
  `description` varchar(500) NOT NULL,
  `source` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_general_ci;

--
-- Dumping data for table `tbl_bible_versions`
--

INSERT INTO `tbl_bible_versions` (`id`, `name`, `shortcode`, `description`, `source`, `date`) VALUES
(2, 'King James Version', 'KJV', 'An English translation of the Christian Bible for the Church of England.', 'tbl_KJV.json', '2020-09-01 16:52:12'),
(3, 'The Message Bible', 'MSG', 'Bible in Contemporary Language is a highly idiomatic translation by Eugene H.', 'tbl_MSG.json', '2020-09-01 16:53:10'),
(4, 'New International Version', 'NIV', 'First published in 1978 by Bible scholars using the earliest, highest quality manuscripts available.', 'tbl_NIV.json', '2020-09-01 16:54:33'),
(5, 'New King James Version', 'NKJV', 'English translation of the Bible first published in 1982 by Thomas Nelson.', 'tbl_NKJV.json', '2020-09-01 16:55:51'),
(6, 'Amplified Bible', 'AMP', 'English language translation of the Bible produced jointly by Zondervan and The Lockman Foundation.', 'tbl_AMP.json', '2020-09-01 16:57:33'),
(7, 'New Living Translation', 'NLT', 'A revision of The Living Bible, the project evolved into a new English translation from Hebrew and Greek texts.', 'tbl_NLT.json', '2020-09-01 16:58:23'),
(8, 'New Revised Standard Version', 'NRSV', 'Published in 1989 by the National Council of Churches. It is a revision of the Revised Standard Version.', 'tbl_NRSV.json', '2020-09-01 16:59:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blocked_users`
--

CREATE TABLE `tbl_blocked_users` (
  `id` bigint(20) NOT NULL,
  `blocked_user` varchar(1000) NOT NULL,
  `blocked_by` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_branches`
--

CREATE TABLE `tbl_branches` (
  `id` bigint(20) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `pastor` varchar(1000) NOT NULL,
  `phone` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `latitude` varchar(1000) NOT NULL,
  `longitude` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `thumbnail` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `name`, `thumbnail`) VALUES
(24, 'Worship', '1662458959.jpg'),
(25, 'Faith', '1669132238.jpeg'),
(26, 'Praise', '1662459499.jpg'),
(27, 'Wisdom', '1662459574.jpg'),
(28, 'Prayer', '1669132277.jpeg'),
(29, 'Bible Study', '1662487871.jpg'),
(30, 'Miracle Service', '1662487985.jpg'),
(31, 'Inspirational', '1662488055.jpg'),
(32, 'Believer', '1662488266.jpg'),
(33, 'Defeating Temptation', '1662488348.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chat`
--

CREATE TABLE `tbl_chat` (
  `id` bigint(20) NOT NULL,
  `email1` varchar(500) NOT NULL,
  `email2` varchar(500) NOT NULL,
  `last_message_time` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_general_ci;

--
-- Dumping data for table `tbl_chat`
--

INSERT INTO `tbl_chat` (`id`, `email1`, `email2`, `last_message_time`) VALUES
(20, 'johnj@gmail.com', 'John@gmail.com', 1663690098),
(21, 'Leo@gmail.com', 'John@gmail.com', 1663833917);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chat_messages`
--

CREATE TABLE `tbl_chat_messages` (
  `id` int(11) NOT NULL,
  `chat_id` bigint(20) NOT NULL,
  `message` text DEFAULT NULL,
  `attachment` varchar(1000) DEFAULT NULL,
  `sender` varchar(500) NOT NULL,
  `msg_reciept` bigint(20) NOT NULL COMMENT 'use to delete messages',
  `msg_owner` varchar(500) NOT NULL COMMENT 'who sees this message',
  `seen` int(11) NOT NULL DEFAULT 1,
  `date` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_general_ci;

--
-- Dumping data for table `tbl_chat_messages`
--

INSERT INTO `tbl_chat_messages` (`id`, `chat_id`, `message`, `attachment`, `sender`, `msg_reciept`, `msg_owner`, `seen`, `date`) VALUES
(581, 20, 'aGkgSm9obiBr', '', 'johnj@gmail.com', 1663696189, 'johnj@gmail.com', 0, 1663690098),
(583, 20, 'a2V2aW4=', '', 'johnj@gmail.com', 1663698810, 'johnj@gmail.com', 0, 1663690114),
(585, 20, 'a2Vv', '', 'johnj@gmail.com', 1663699990, 'johnj@gmail.com', 0, 1663690936),
(586, 20, 'a2Vv', '', 'johnj@gmail.com', 1663699990, 'John@gmail.com', 0, 1663690936),
(587, 20, 'SGV5', '', 'John@gmail.com', 1663699970, 'John@gmail.com', 0, 1663690963),
(588, 20, 'SGV5', '', 'John@gmail.com', 1663699970, 'johnj@gmail.com', 0, 1663690963),
(589, 20, 'VHN1cA==', '', 'John@gmail.com', 1663694123, 'John@gmail.com', 0, 1663691020),
(590, 20, 'VHN1cA==', '', 'John@gmail.com', 1663694123, 'johnj@gmail.com', 0, 1663691020),
(591, 20, 'eW91IGdvb2Q=', '', 'johnj@gmail.com', 1663692183, 'johnj@gmail.com', 0, 1663691027),
(592, 20, 'eW91IGdvb2Q=', '', 'johnj@gmail.com', 1663692183, 'John@gmail.com', 0, 1663691027),
(593, 20, 'WWVhaA==', '', 'John@gmail.com', 1663698555, 'John@gmail.com', 0, 1663691031),
(594, 20, 'WWVhaA==', '', 'John@gmail.com', 1663698555, 'johnj@gmail.com', 0, 1663691031),
(595, 20, 'dHN1cA==', '', 'johnj@gmail.com', 1663696503, 'johnj@gmail.com', 0, 1663691035),
(596, 20, 'dHN1cA==', '', 'johnj@gmail.com', 1663696503, 'John@gmail.com', 0, 1663691035),
(597, 20, 'bGV0cyBnbyBzdHVkeQ==', '', 'johnj@gmail.com', 1663697051, 'johnj@gmail.com', 0, 1663691066),
(598, 20, 'bGV0cyBnbyBzdHVkeQ==', '', 'johnj@gmail.com', 1663697051, 'John@gmail.com', 0, 1663691066),
(599, 20, 'V2hlcmU=', '', 'John@gmail.com', 1663693930, 'John@gmail.com', 0, 1663691071),
(600, 20, 'V2hlcmU=', '', 'John@gmail.com', 1663693930, 'johnj@gmail.com', 0, 1663691071),
(601, 20, 'bGli', '', 'johnj@gmail.com', 1663696032, 'johnj@gmail.com', 0, 1663691131),
(602, 20, 'bGli', '', 'johnj@gmail.com', 1663696032, 'John@gmail.com', 0, 1663691131),
(603, 20, 'Q29taW5n', '', 'John@gmail.com', 1663696243, 'John@gmail.com', 0, 1663691137),
(604, 20, 'Q29taW5n', '', 'John@gmail.com', 1663696243, 'johnj@gmail.com', 0, 1663691137),
(605, 20, 'b2theQ==', '', 'johnj@gmail.com', 1663693701, 'johnj@gmail.com', 1, 1663691143),
(606, 20, 'b2theQ==', '', 'johnj@gmail.com', 1663693701, 'John@gmail.com', 0, 1663691143),
(607, 20, 'aHVycnk=', '', 'johnj@gmail.com', 1663700953, 'johnj@gmail.com', 1, 1663691147),
(608, 20, 'aHVycnk=', '', 'johnj@gmail.com', 1663700953, 'John@gmail.com', 0, 1663691147),
(609, 21, 'SGkgSm9obiBob3cgYXJlIHlvdSBkb2luZw==', '', 'Leo@gmail.com', 1663836321, 'Leo@gmail.com', 1, 1663833917),
(610, 21, 'SGkgSm9obiBob3cgYXJlIHlvdSBkb2luZw==', '', 'Leo@gmail.com', 1663836321, 'John@gmail.com', 1, 1663833917);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `media_id` bigint(20) NOT NULL DEFAULT 0,
  `comment_id` bigint(20) NOT NULL DEFAULT 0,
  `email` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `type` varchar(50) NOT NULL,
  `date` bigint(20) NOT NULL,
  `edited` int(11) NOT NULL DEFAULT 1,
  `deleted` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`id`, `media_id`, `comment_id`, `email`, `content`, `type`, `date`, `edited`, `deleted`) VALUES
(62, 691, 0, 'Leo@gmail.com', 'bmljZSBzb25n', 'comments', 1663076021, 1, 1),
(63, 688, 0, 'Leo@gmail.com', 'Zm9jdXM=', 'comments', 1663076544, 1, 1),
(64, 692, 0, 'John@gmail.com', 'TG92ZSBpdA==', 'comments', 1663678014, 1, 1),
(65, 690, 0, 'johnj@gmail.com', 'c29uZyBzb3VuZHMgZ29vZA==', 'comments', 1663689387, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupons`
--

CREATE TABLE `tbl_coupons` (
  `id` bigint(20) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `code` varchar(200) NOT NULL,
  `expiry` varchar(20) NOT NULL,
  `duration` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_general_ci;

--
-- Dumping data for table `tbl_coupons`
--

INSERT INTO `tbl_coupons` (`id`, `amount`, `code`, `expiry`, `duration`, `date`) VALUES
(215, '10.00', 'mcec5dy9', '2022-09-23', 'One Week', '2022-09-20 21:31:20'),
(216, '10.00', 'kfhs72kk', '2022-09-23', 'One Week', '2022-09-20 21:31:20'),
(217, '10.00', 'nfnkwww4', '2022-09-23', 'One Week', '2022-09-20 21:31:20'),
(218, '10.00', 'mmm9clqo', '2022-09-23', 'One Week', '2022-09-20 21:31:20'),
(219, '10.00', '7gkt0guy', '2022-09-23', 'One Week', '2022-09-20 21:31:20'),
(220, '10.00', 'pr42cgse', '2022-09-23', 'One Week', '2022-09-20 21:31:20'),
(221, '10.00', 'rksqut4w', '2022-09-23', 'One Week', '2022-09-20 21:31:20'),
(222, '10.00', 'qccxcy1p', '2022-09-23', 'One Week', '2022-09-20 21:31:20'),
(223, '10.00', 'atjfeuz7', '2022-09-23', 'One Week', '2022-09-20 21:31:20'),
(224, '10.00', 'bxdowtte', '2022-09-23', 'One Week', '2022-09-20 21:31:20'),
(225, '10.00', '1yrjbblb', '2022-09-23', 'One Week', '2022-09-20 21:31:20'),
(226, '10.00', 'd0v6566w', '2022-09-23', 'One Week', '2022-09-20 21:31:20'),
(227, '10.00', 'qnmzsk4m', '2022-09-23', 'One Week', '2022-09-20 21:31:20'),
(228, '10.00', '95n1cind', '2022-09-23', 'One Week', '2022-09-20 21:31:20'),
(229, '10.00', 'eqelnmdy', '2022-09-23', 'One Week', '2022-09-20 21:31:20'),
(230, '10.00', 'evfqiewr', '2022-09-23', 'One Week', '2022-09-20 21:31:20'),
(231, '10.00', 'izs06iit', '2022-09-23', 'One Week', '2022-09-20 21:31:20'),
(232, '10.00', '5zap9hyj', '2022-09-23', 'One Week', '2022-09-20 21:31:20'),
(233, '10.00', '4fpfp52a', '2022-09-23', 'One Week', '2022-09-20 21:31:20'),
(234, '10.00', 'dnatd9hz', '2022-09-23', 'One Week', '2022-09-20 21:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_departments`
--

CREATE TABLE `tbl_departments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_departments`
--

INSERT INTO `tbl_departments` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Technical', '2022-09-06 19:39:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_devotionals`
--

CREATE TABLE `tbl_devotionals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `author` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `bible_reading` varchar(500) NOT NULL,
  `confession` varchar(1000) NOT NULL,
  `studies` varchar(500) NOT NULL,
  `date` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_devotionals`
--

INSERT INTO `tbl_devotionals` (`id`, `thumbnail`, `title`, `author`, `content`, `bible_reading`, `confession`, `studies`, `date`) VALUES
(23, '1662492940.jpg', 'No More Promises', 'Dr.J Phiri', '<div class=\"wp-block-media-text alignwide\">\r\n<div class=\"wp-block-media-text__content\">\r\n<p>Some Christians still have the Old Testament mentality of trying to get something from God; trying to make His &ldquo;promises&rdquo; come to pass in their lives.</p>\r\n</div>\r\n</div>\r\n<p>But to have this kind of consciousness is to be oblivious or completely ignorant of what Christ really came to do. He came as the fulfilment of all of God&rsquo;s promises, such that there&rsquo;s not one single promise in the Bible yet to be fulfilled for the Christian.</p>\r\n<p>Once, I asked a group of Christians to mention, if they thought there was anyone promise in the Bible for the new creation. Someone mentioned Psalm 37:4 NKJV: &ldquo;Delight yourself also in the LORD, And He shall give you the desires of your heart.&rdquo; This is the problem: I said many are living the life of the Old Testament, and they think they&rsquo;re living the Christian life.</p>\r\n<p>Between the desires of your heart, and CHRIST that He&rsquo;s already given you, which is greater? What else would you desire of someone who already gave you Himself? Didn&rsquo;t you also read in 1 Corinthians 3:21 that all things are yours? Understand that all of the &ldquo;promises&rdquo; in the Old Testament have been fulfilled and abrogated. They are &ldquo;old truths.&rdquo; Think about when a country amends the constitution, and someone is still living by the old provisions; it won&rsquo;t work that way.</p>\r\n<p>God already gave you Himself, His Kingdom, and everything! When you come into Christ, everything belongs to you; there&rsquo;s nothing more for Him to give you, for you&rsquo;re a joint-heir with Him. Therefore, quit the struggle. Enjoy your life in Christ.</p>\r\n<p>We read it in our opening verse that by His divine power, He already gave us (note it&rsquo;s in past tense) ALL things that pertain to life and godliness; nothing is left out. Stop struggling with your bills. Stop struggling with your health. Choose the life of rest. &ldquo;Warring&rdquo; in prayer for Him to fulfil His promises is an effort in futility. Live the Word, and in the Spirit; you&rsquo;d discover that everything you could ever want is in the street that He gave you to walk in. Blessed be His Name forever!</p>', '<p><strong><em>According as his divine power hath given unto us all things that pertain unto life and godliness, through the knowledge of him that hath called us to glory and virtue (2 Peter 1:3).</em></strong></p>', '<p><strong>CONFESSION</strong></p>\r\n<p>I function in the light of God&rsquo;s Word, and I&rsquo;m conscious of the bountiful provisions the Father has made available to me, and I&rsquo;m enjoying them to the full. Hallelujah!</p>', '<p><strong>FURTHER STUDY:</strong></p>\r\n<p>2 Corinthians 1:20; 1 Corinthians 3:21-22 GNB; Colossians 1:26-27</p>', '2022-09-06'),
(24, '1662492902.jpg', 'Walking In Christ', 'Simukonda Kelvin', '<div class=\"wp-block-media-text alignwide\">\r\n<div class=\"wp-block-media-text__content\">\r\n<p>Galatians 3:27 NKJV says something powerful that parallels what we read in our opening verse.</p>\r\n</div>\r\n</div>\r\n<p>It says, &ldquo;For as many of you as were baptized into Christ have put on Christ.&rdquo; It means you&rsquo;ve sunk into Him, like a garment. You might wonder, &ldquo;I thought I&rsquo;ve received Christ?&rdquo; Yes, but this isn&rsquo;t only from the inside now, but also on the outside.</p>\r\n<p>You&rsquo;ve received Christ Jesus, the Lord, and He lives in you by the Holy Ghost. Now that you&rsquo;re born again, you&rsquo;ve been brought into the new environment called Christ, and you have to walk in that environment. That&rsquo;s what we read in our opening verse.</p>\r\n<p>For example, if you&rsquo;re in a car, you&rsquo;re in a different environment. If it&rsquo;s an air-conditioned car, outside maybe hot, but you&rsquo;re moving around in your car, enjoying a different environment in the car, unlike the pedestrians outside.</p>\r\n<p>This is reminiscent of the experience with the children of Israel when they left Egypt for the Promised Land. They went with their own atmosphere. The Bible says, &ldquo;By day the LORD went ahead of them in a pillar of cloud to guide them on their way and by night in a pillar of fire to give them light so that they could travel by day or night. Neither the pillar of cloud by day nor the pillar of fire by night left its place in front of the people&rdquo; (Exodus 13:21-22 NIV).</p>\r\n<p>Everywhere else in the desert was hot and arid, but God&rsquo;s people dwelt in His divine presence. The pillar of cloud shielded them from the scorching heat during the day. At night, when it was cold, they had the pillar of fire which gave them warmth. In the same way, in Christ, you have your own atmosphere. When you&rsquo;re going to work, you&rsquo;re in this environment called Christ! When you&rsquo;re at home, school, place of business or marketplaces of life, you&rsquo;re in that environment.</p>\r\n<p>This means nothing can hurt you. Like the children of Israel, you&rsquo;re protected inside that environment&mdash; CHRIST&mdash;during the day and at night. Glory to God! What a place! It&rsquo;s an environment of glory. Hallelujah!</p>', '<p><strong><em>As you therefore have received Christ Jesus the Lord, so walk in Him (Colossians 2:6 NKJV)</em></strong></p>', '<p>Add Devotional Confession or Thought of the day</p>', '<p><strong>CONFESSION</strong></p>\r\n<p>I dwell in Christ, my new environment! Everywhere I go, I&rsquo;m in the divine presence and carry that presence with me, demonstrating the finished works of Christ in my family, health, finances and everything that concerns me. I&rsquo;m not of this world. Hallelujah!</p>', '2022-09-07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donations`
--

CREATE TABLE `tbl_donations` (
  `id` bigint(20) NOT NULL,
  `email` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `reason` text NOT NULL,
  `method` varchar(100) NOT NULL,
  `reference` varchar(500) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_general_ci;

--
-- Dumping data for table `tbl_donations`
--

INSERT INTO `tbl_donations` (`id`, `email`, `name`, `amount`, `reason`, `method`, `reference`, `date`) VALUES
(8, 'kelvin@mail.com', 'Kelvin Simukoda', 2300, 'Tithe', 'Airtel Money', '', '2022-11-22 19:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donation_settings`
--

CREATE TABLE `tbl_donation_settings` (
  `id` int(11) NOT NULL,
  `paystack_key` varchar(1000) NOT NULL,
  `flutterwaves_key` varchar(1000) NOT NULL,
  `flutterwaves_currency_code` varchar(20) NOT NULL,
  `paypal_link` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_general_ci;

--
-- Dumping data for table `tbl_donation_settings`
--

INSERT INTO `tbl_donation_settings` (`id`, `paystack_key`, `flutterwaves_key`, `flutterwaves_currency_code`, `paypal_link`) VALUES
(100, '', 'FLWPUBK_TEST-7c7697d8e85ce4bd410f1c0581fe753d-X', 'ZMW', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(500) NOT NULL,
  `details` longtext NOT NULL,
  `thumbnail` varchar(500) NOT NULL,
  `time` varchar(500) NOT NULL,
  `date` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_events`
--

INSERT INTO `tbl_events` (`id`, `title`, `details`, `thumbnail`, `time`, `date`) VALUES
(8, 'God Message', '<p>God is speaking to us.</p>\r\n<p></p>\r\n<p></p>\r\n<p>Unza chapel tomorrow</p>', '1664566015.png', '12:00 PM', '2022-09-30'),
(9, 'Amazing Grace', '<p>Amazing grace</p>', '1664566136.png', '09:12 AM', '2022-10-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_families`
--

CREATE TABLE `tbl_families` (
  `id` int(11) NOT NULL,
  `family_name` varchar(255) NOT NULL,
  `head_of_family` varchar(255) NOT NULL,
  `prayer_band` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_families`
--

INSERT INTO `tbl_families` (`id`, `family_name`, `head_of_family`, `prayer_band`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Eukeria Ng\'andu', 'Mr Ng\'andu', 'Holliness', '2022-09-06 19:39:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fcm_token`
--

CREATE TABLE `tbl_fcm_token` (
  `id` int(10) UNSIGNED NOT NULL,
  `token` text NOT NULL,
  `app_version` varchar(10) NOT NULL DEFAULT 'v1',
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_fcm_token`
--

INSERT INTO `tbl_fcm_token` (`id`, `token`, `app_version`, `date`) VALUES
(1238, 'dCvXTuvUTC-IIqMRW1YpIq:APA91bEe1SPueypzZoGNxJpV5TYuFGaHBcgaSJe6Jv5KwxtDN2bu-erLVFjBQqh_1Yr8_VKG8pztj_F6L3Zvl0mYej7cyXg9HYgrcap4WAcH-bE0UPPipczVfU1flC0ZwXMhomY12FlZ', 'v2', '2022-09-06 11:00:54'),
(1239, 'eWILfSWNRZaVmHjeTg7Djn:APA91bFVAcZfCF6zoIvi1IXxURUE7bfP20KbkGUdj83P54491-aWPodO_TEZaIYSThFAQeTRgWWe-BqVO0Pllzw1FNubf_DzNjfbOsUFuWGB4G_bAcMqV8FmI78MhAa969m3jFFgp2hH', 'v2', '2022-09-08 15:43:50'),
(1240, 'c1-Cl4sjTQ-cJoGcK4sE5S:APA91bF2nLfaTe9G2NdprfcRx81OxDxrpoTqopfYKMNyps5ISsijzWBWDec8Vy6wT_dAJiRrYfsRadbzkhFetYk0sIXTC1fvlcSnRUz3-XR-yEWfDVEg9BcaCGUmvd8pfJuSmhStGiXT', 'v2', '2022-09-09 06:54:57'),
(1241, 'dBcPp4w1Tlm8zYp-DN_-_9:APA91bEzeOJp-2j3GVwH5wvgKQ80dDEL7Sgn6-rS9RLp60wqjRPTjnWwOgnlV6XBSedSZ8k0LLmjuSmMQ4C6ym9eAL5cEex7uVEfdPZeHWwskGhl-H0am0fJq5x7idfBrTvhct0xBAmg', 'v2', '2022-09-12 20:44:30'),
(1242, 'fz1PO1_sTJeXF579Bw3ux8:APA91bGJGThex8MmZPGzqrFM7z_t1K5zZl-XCwRw_TiUv2MErU4E10UU927mfgk4RFcMcWiWps1rNVXglGmffmH65WEZkONJPzccEnFg7-XJGIVP_ygC-A-dTudcAGr3ypms3cfox-P0', 'v2', '2022-09-29 17:13:34'),
(1243, 'dl1edRHRS96QhZtABrFDqN:APA91bHuBTlmAV4P-VDe48ahyRLJUXWaN9ukYYzI44shAMSynKyNfsemqGEy3CBysJxLUMKe1owK2pCzJOhqkn7GLKasRQscxJMtOWIjbhrVlzg7YnD3KrWFXDTfqAAZ03jw7t3Voyrr', 'v2', '2022-09-30 13:16:10'),
(1244, 'dM-ACpFFTl2tDBYTjOHBYz:APA91bGixRSy6NSMinYrAfvkCyH-ZRNeSdcj_0Ruwiuc4OIZQvbupVERLjY_cTS9npdaQElWchXIe2cVfZskRm03Xa3wwkuSgVQDjG4-amHInsfcENG2lru0KPjKqhO6x5xaeRZIWgjD', 'v2', '2022-09-30 14:02:02'),
(1245, 'c0KoearjQumGaT6XbHQoBG:APA91bF4whl8DuEgbFKWNGS1Xhh0ksiW-NFpQe2eNha0k0uieNzxlNVnLNQRUVHkQHxMOnP-La47kA-n2lvVi7fdiKt3_L8xQtKmlzW25bbWkuyVoofC1-3rEM6iB6LRfmtNIeTQqMy5', 'v2', '2022-09-30 16:16:35'),
(1246, 'e0gP44kyQ9OanS9vHA2ZI4:APA91bE-2PwRSIj1I_dLUPMWf8wokQzZeNpXDIxnjbMuZDZxtZo9uhlG9KbRjLSWL_igFiHzHZ3px4BvzzPmcpm0s9CpnvPW9qgM4Cqa-zsg5kcgIOpkyfWs-G7ZRLnZJXX53-Se9aIy', 'v2', '2022-09-30 17:13:07'),
(1247, 'ei9gmqJzQPSxO-ZzOrZxSM:APA91bFaQYd07QKXhz5_6cPQP1Ph2hUr9iFenyn9X7zA_n-OC_0y8ZyKHPx1-jE4CG2lR5XANe-7Qh7pHRiJ1X7pTbHQExq8AL_8OuaSSkX5COVCoyenvvi3EYMKa3nhKqtCo1rg4IWv', 'v2', '2022-09-30 18:49:45'),
(1248, 'cvQ-8bDGSTS0C6ULZ5VCdX:APA91bHOjUGOw3UbnKpDKzcZ6ivJzOPAXjDDWDewLMKuSJUehTxebtQ2z3QLNN7F0TRbhLaC7PaF3uFb7ZOG5y9UmYa-XsuC-X9J0EMh1q-gVJjOo395BFGhjtiCnA4nfsUijaw0Oo65', 'v2', '2022-09-30 20:04:01'),
(1249, 'dPH6hi9fSNaPfb-OMrl33T:APA91bFv1ZnpGMOdopZRMb8ix8AZCB5v7Otcz0dd_o7hp2_YlNMD_0hME4hp3fSY3wWCzxZGejsLpogRNW6o9pYn85rRaFjFHS3OsoRB3acl-IsHrhrpTcP8lHv0W-Ch-n2fPK08vAwT', 'v2', '2022-10-01 06:48:33'),
(1250, 'czULIZlbQJa3zKIIUqu43n:APA91bFeveYrs1jdJTkJW-6wIGG0VQGM5Li3iKEdiVBFuOWBSohJWw2Q9Lz7E3I6JMABjlWjqut0e5mEoQsxY83-CctJj5A93054WZgVfQBC8TYeVpFXfN1_Tp-Nn-OZtC5t9f7JIhdf', 'v2', '2022-10-04 08:08:40'),
(1251, 'dgVfGEslSkidDxHXoEpWyc:APA91bF_ABnGEV1DEOS23SYaIqlUIA8g864BBWo0OJCqxUkxp_VX3mAcoKzr2IWxuVxcME7dRsECIFkM_uJg31mo30XyO2lxtCcktQpFXoZk_WkqpO0uBSrzcE_M6WM3kwRxJ6P-Utuv', 'v2', '2022-11-09 11:50:27'),
(1252, 'cfBfFUGqRzKHrYDH9GmmUy:APA91bEJ54_t6V1g8c41OB1fwLcwJpbeQTU_MQadYMYgjWXGevVScabBRz-jyG6IRNyQy9W8x7BR5VFENh6YF91ig_gtRkf744OsKcLO7DCgwwkIY1QDncD7Z9GkdGuM5JYC-lpzXr5j', 'v2', '2022-11-20 12:16:46'),
(1253, 'd0XBqixYSWKrtcLl33RMiG:APA91bETjeDLGLEfQdEYpD4vBwnIfDhkDvwf5nIKkWXfAO6MQlyAlNRhFGKw5bHtTBHWSXzrUSzAYRneslEJ1_cT0nPNSwc0v5JBFF3r_cRicD-9POAlB9uiMNsAeiiEwiSEvV2a-M9s', 'v2', '2022-11-20 14:45:14'),
(1254, 'ezNnCXIyQiKKZqNZbV81vf:APA91bGx98nIOw9wSPmimsmNhEVnHWlawmPk2NyTNue_wAD6WmrfVD5VrJFkdAE8zukxqP8IsB0p30KrQF2WPvJ6AONEGLxSO2soYuCHjHCL3Wdr1vMmFhvtGC1DWZh9WJNOLz1zol3E', 'v2', '2022-11-23 23:38:54'),
(1255, 'deAWNHIjRnaG1C7kxnzORk:APA91bEhDV1AK9R-oi30zFOhhXcoUmj0tjyr7ptvsjTmDubsZ-yEz_1JAfgHYmHeaOmYljEMNev-Wh3d_z-iNAj7bZ6qaq8eEysuT9K_NTjWq-tq36P88q1t1sc5y4cbvNsRFPzWd7D4', 'v2', '2022-11-24 08:27:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_financials`
--

CREATE TABLE `tbl_financials` (
  `id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `amount_word` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `fund_date` date NOT NULL,
  `payment` varchar(255) NOT NULL,
  `purpose` varchar(1024) NOT NULL,
  `requested_by` varchar(255) NOT NULL,
  `department_sign` varchar(1024) NOT NULL,
  `position` varchar(255) NOT NULL,
  `department_date` date NOT NULL,
  `elder` varchar(255) NOT NULL,
  `elder_sign` varchar(1024) NOT NULL,
  `elder_date` date NOT NULL,
  `treasurer` varchar(255) NOT NULL,
  `amount1` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `treasurer_sign` varchar(1024) NOT NULL,
  `treasurer_date` date NOT NULL,
  `received` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `received_sign` varchar(1024) NOT NULL,
  `received_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_funerals`
--

CREATE TABLE `tbl_funerals` (
  `id` int(11) NOT NULL,
  `birth_date` date NOT NULL,
  `death_date` date NOT NULL,
  `position` varchar(255) NOT NULL,
  `family_member` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hymns`
--

CREATE TABLE `tbl_hymns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_hymns`
--

INSERT INTO `tbl_hymns` (`id`, `thumbnail`, `title`, `content`) VALUES
(21, '1662494739.jpg', 'It Is Well With My Soul', '<p><b>When peace, like a river, attendeth my way,<br />When sorrows like sea billows roll;<br />Whatever my lot, Thou has taught me to say,<br />It is well, it is well, with my soul.<br /><br />Refrain<br /><br />It is well, with my soul,<br />It is well, with my soul,<br />It is well, it is well, with my soul.<br /><br />Though Satan should buffet, though trials should come,<br />Let this blest assurance control,<br />That Christ has regarded my helpless estate,<br />And hath shed His own blood for my soul.<br /><br />Refrain<br /><br />My sin, oh, the bliss of this glorious thought!<br />My sin, not in part but the whole,<br />Is nailed to the cross, and I bear it no more,<br />Praise the Lord, praise the Lord, O my soul!<br /><br />Refrain<br /><br />For me, be it Christ, be it Christ hence to live:<br />If Jordan above me shall roll,<br />No pang shall be mine, for in death as in life<br />Thou wilt whisper Thy peace to my soul.<br /><br />Refrain<br /><br />But, Lord, &lsquo;tis for Thee, for Thy coming we wait,<br />The sky, not the grave, is our goal;<br />Oh trump of the angel! Oh voice of the Lord!<br />Bless&egrave;d hope, bless&egrave;d rest of my soul!<br /><br />Refrain<br /><br />And Lord, haste the day when my faith shall be sight,<br />The clouds be rolled back as a scroll;<br />The trump shall resound, and the Lord shall descend,<br />Even so, it is well with my soul.<br /><br />Refrain</b></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `date` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`id`, `title`, `message`, `date`) VALUES
(93, 'Testing', '<p>Some text here</p>', 1669247757);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manage_users`
--

CREATE TABLE `tbl_manage_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `other_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` enum('Active','Deleted') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_manage_users`
--

INSERT INTO `tbl_manage_users` (`id`, `first_name`, `other_name`, `last_name`, `email`, `role`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'Eukeria', 'No', 'Ng\'andu', 'ngandueukeria@gmail.com', 'Member', 'Active', '2022-09-09 01:20:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Luna', 'no', 'mwamba', 'mwamba@gmail.com', 'treasurer', 'Active', '2022-09-14 09:53:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'John', 'm', 'Kevin', 'john@mail.com', 'member', 'Active', '2022-09-20 12:41:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'moses', 'james', 'phiri', 'moses@gmail.com', 'technical', 'Active', '2022-09-23 12:10:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_media`
--

CREATE TABLE `tbl_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` bigint(20) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `cover_photo` varchar(500) NOT NULL,
  `source` varchar(500) NOT NULL,
  `duration` bigint(20) NOT NULL,
  `can_preview` int(1) NOT NULL DEFAULT 1 COMMENT '0 for true, 1 for false',
  `preview_duration` bigint(20) NOT NULL DEFAULT 0 COMMENT 'in seconds',
  `can_download` int(1) NOT NULL DEFAULT 1 COMMENT '0 for true, 1 for false',
  `is_free` int(1) NOT NULL DEFAULT 1 COMMENT '0 for true, 1 for false',
  `type` varchar(10) NOT NULL,
  `likes_count` bigint(20) NOT NULL DEFAULT 0,
  `views_count` bigint(20) NOT NULL DEFAULT 0,
  `dateInserted` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sub_category` bigint(20) DEFAULT NULL,
  `video_type` varchar(100) NOT NULL DEFAULT 'mp4_video'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_media`
--

INSERT INTO `tbl_media` (`id`, `category`, `title`, `description`, `cover_photo`, `source`, `duration`, `can_preview`, `preview_duration`, `can_download`, `is_free`, `type`, `likes_count`, `views_count`, `dateInserted`, `sub_category`, `video_type`) VALUES
(688, 31, 'Focus on God, not your problems', 'Focus on God, not your problems', 'download_(16).jpg', 'video_1662491732.mp4', 294000, 1, 0, 0, 0, 'video', 2, 45, '2022-11-24 21:06:55', 0, 'mp4_video'),
(690, 24, 'kudenga kwakanaka', 'kudenga kwakanaka', 'OFFICIAL-VIDEO-Kudenga-Kwakanaka-Armor-Music-Ministry-1-9-screenshot-810x456.png', 'video_1662492277.mp4', 193000, 1, 0, 0, 0, 'video', 1, 25, '2022-11-24 21:08:17', 0, 'mp4_video'),
(692, 24, 'Winter - Lesa Mwalilinga', 'Winter - Lesa Mwalilinga', 'images_(5).jpg', 'audio_1662494310.mp3', 339000, 0, 60, 0, 0, 'audio', 2, 23, '2022-11-24 21:08:08', 0, 'mp4_video'),
(693, 26, 'saved by grace', '', 'img.jpg', 'audio_1662707433.mp3', 183000, 0, 60, 0, 0, 'audio', 1, 20, '2022-11-24 13:55:11', 0, 'mp4_video'),
(694, 25, 'Ebeneza', 'Ebeneza', 'kev.jpeg', 'audio_1669132621.mp3', 180000, 0, 60, 0, 0, 'audio', 0, 8, '2022-11-24 21:04:35', 0, 'mp4_video');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_media_likes`
--

CREATE TABLE `tbl_media_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `media_id` bigint(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `date` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_media_likes`
--

INSERT INTO `tbl_media_likes` (`id`, `media_id`, `email`, `date`) VALUES
(99, 691, 'Leo@gmail.com', 1663076105),
(100, 691, 'Leo@gmail.com', 1663076352),
(101, 688, 'Leo@gmail.com', 1663076531),
(103, 692, 'John@gmail.com', 1663677991),
(104, 692, 'John@gmail.com', 1663677992),
(105, 690, 'johnj@gmail.com', 1663689366),
(106, 688, 'Liam@gmail.com', 1664606982),
(107, 693, 'Liam@gmail.com', 1665727189);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_members`
--

CREATE TABLE `tbl_members` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_members`
--

INSERT INTO `tbl_members` (`id`, `name`, `age`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Eukeria NG\'ANDU', 23, '2022-09-14 09:54:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notifications`
--

CREATE TABLE `tbl_notifications` (
  `id` bigint(20) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `user` varchar(1000) NOT NULL,
  `itm_id` bigint(20) NOT NULL,
  `type` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1,
  `timestamp` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_general_ci;

--
-- Dumping data for table `tbl_notifications`
--

INSERT INTO `tbl_notifications` (`id`, `email`, `user`, `itm_id`, `type`, `date`, `status`, `timestamp`) VALUES
(664, 'John@gmail.com', 'johnj@gmail.com', 0, 'follow', '2022-09-20 16:05:45', 1, 1663689945),
(665, 'johnj@gmail.com', 'John@gmail.com', 0, 'follow', '2022-09-20 16:06:49', 1, 1663690009),
(666, 'Leo@gmail.com', 'John@gmail.com', 0, 'follow', '2022-09-20 16:45:47', 1, 1663692347),
(667, 'Leo@gmail.com', 'johnj@gmail.com', 0, 'follow', '2022-09-20 16:45:49', 1, 1663692349),
(668, 'Leo@gmail.com', 'John@gmail.com', 0, 'follow', '2022-09-20 17:14:53', 1, 1663694093);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_comments`
--

CREATE TABLE `tbl_post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) NOT NULL DEFAULT 0,
  `comment_id` bigint(20) NOT NULL DEFAULT 0,
  `email` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `type` varchar(50) NOT NULL,
  `date` bigint(20) NOT NULL,
  `edited` int(11) NOT NULL DEFAULT 1,
  `deleted` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_likes`
--

CREATE TABLE `tbl_post_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `date` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_pins`
--

CREATE TABLE `tbl_post_pins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `date` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_radio`
--

CREATE TABLE `tbl_radio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `thumbnail` varchar(500) NOT NULL,
  `stream_url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_radio`
--

INSERT INTO `tbl_radio` (`id`, `title`, `thumbnail`, `stream_url`) VALUES
(100, 'Christian Life Radio', 'https://i0.wp.com/www.robertrickman.net/wp-content/uploads/2015/05/stock-footage-audio-spectrum-loop.jpg', 'https://mixlr.com/unisda');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reported_comments`
--

CREATE TABLE `tbl_reported_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `type` varchar(10) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `date` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social_fcm_tokens`
--

CREATE TABLE `tbl_social_fcm_tokens` (
  `id` int(11) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_general_ci;

--
-- Dumping data for table `tbl_social_fcm_tokens`
--

INSERT INTO `tbl_social_fcm_tokens` (`id`, `email`, `token`) VALUES
(1208, 'Chautongi@gmail.com', 'dCvXTuvUTC-IIqMRW1YpIq:APA91bEe1SPueypzZoGNxJpV5TYuFGaHBcgaSJe6Jv5KwxtDN2bu-erLVFjBQqh_1Yr8_VKG8pztj_F6L3Zvl0mYej7cyXg9HYgrcap4WAcH-bE0UPPipczVfU1flC0ZwXMhomY12FlZ'),
(1210, 'Leo@gmail.com', 'ei9gmqJzQPSxO-ZzOrZxSM:APA91bFaQYd07QKXhz5_6cPQP1Ph2hUr9iFenyn9X7zA_n-OC_0y8ZyKHPx1-jE4CG2lR5XANe-7Qh7pHRiJ1X7pTbHQExq8AL_8OuaSSkX5COVCoyenvvi3EYMKa3nhKqtCo1rg4IWv'),
(1211, 'johnj@gmail.com', 'eWILfSWNRZaVmHjeTg7Djn:APA91bFVAcZfCF6zoIvi1IXxURUE7bfP20KbkGUdj83P54491-aWPodO_TEZaIYSThFAQeTRgWWe-BqVO0Pllzw1FNubf_DzNjfbOsUFuWGB4G_bAcMqV8FmI78MhAa969m3jFFgp2hH');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_strategics`
--

CREATE TABLE `tbl_strategics` (
  `id` int(11) NOT NULL,
  `improve` varchar(255) NOT NULL,
  `success` varchar(255) NOT NULL,
  `additional` varchar(255) NOT NULL,
  `review` varchar(255) NOT NULL,
  `objective` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_streaming`
--

CREATE TABLE `tbl_streaming` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `stream_url` varchar(200) NOT NULL,
  `type` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 for true, 1 for false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_streaming`
--

INSERT INTO `tbl_streaming` (`id`, `title`, `stream_url`, `type`, `status`) VALUES
(100, 'FRIDAY VESPERS', 'rtmp://a.rtmp.youtube.com/live2/ftkz-4hxa-bcvw-c5tb-1u8m', 'youtube', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_categories`
--

CREATE TABLE `tbl_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `fullname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `email`, `password`, `fullname`) VALUES
(5, 'simukondakelvin@gmail.com', '$2y$10$kWG6Dj9DQTPITJE8Bkuwz.uzlkIcPPgHNDFoPxeiOrramYf8dqRc6', 'Kelvin Simukonda'),
(6, 'unisda@gmail.com', '$2y$10$lSoJstng2zmhzw/5ZK35c..y0NbLhzMXgfxYcVcD0jVQeHLiujSW2', 'Unisda');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_following`
--

CREATE TABLE `tbl_user_following` (
  `id` bigint(20) NOT NULL,
  `user_email` varchar(1000) NOT NULL,
  `follower_email` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `_ignore` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_general_ci;

--
-- Dumping data for table `tbl_user_following`
--

INSERT INTO `tbl_user_following` (`id`, `user_email`, `follower_email`, `date`, `_ignore`) VALUES
(551, 'John@gmail.com', 'John@gmail.com', '2022-09-20 15:38:56', 1),
(552, 'johnj@gmail.com', 'johnj@gmail.com', '2022-09-20 16:00:48', 1),
(553, 'johnj@gmail.com', 'John@gmail.com', '2022-09-20 16:05:45', 0),
(554, 'John@gmail.com', 'johnj@gmail.com', '2022-09-20 16:06:49', 0),
(555, 'Leo@gmail.com', 'Leo@gmail.com', '2022-09-20 16:45:36', 1),
(557, 'johnj@gmail.com', 'Leo@gmail.com', '2022-09-20 16:45:49', 0),
(558, 'John@gmail.com', 'Leo@gmail.com', '2022-09-20 17:14:53', 0),
(559, 'Chautongi@gmail.com', 'Chautongi@gmail.com', '2022-09-29 15:18:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_posts`
--

CREATE TABLE `tbl_user_posts` (
  `id` bigint(20) NOT NULL,
  `email` varchar(500) NOT NULL,
  `content` longtext NOT NULL,
  `media` text NOT NULL,
  `comments_count` bigint(20) NOT NULL,
  `likes_count` bigint(20) NOT NULL,
  `visibility` varchar(200) NOT NULL DEFAULT 'public',
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `edited` int(11) NOT NULL DEFAULT 1,
  `deleted` int(11) NOT NULL DEFAULT 1,
  `timestamp` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_profile`
--

CREATE TABLE `tbl_user_profile` (
  `id` bigint(20) NOT NULL,
  `email` varchar(500) NOT NULL,
  `avatar` varchar(1000) NOT NULL,
  `cover_photo` varchar(1000) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone` varchar(200) NOT NULL,
  `about_me` text NOT NULL,
  `location` varchar(1000) NOT NULL,
  `qualification` varchar(1000) NOT NULL,
  `facebook` varchar(1000) NOT NULL,
  `twitter` varchar(1000) NOT NULL,
  `linkdln` varchar(1000) NOT NULL,
  `notify_token` text NOT NULL,
  `show_dateofbirth` int(11) NOT NULL DEFAULT 1,
  `show_phone` int(11) NOT NULL DEFAULT 1,
  `notify_follows` int(11) NOT NULL DEFAULT 0,
  `notify_comments` int(11) NOT NULL DEFAULT 0,
  `notify_likes` int(11) NOT NULL DEFAULT 0,
  `activated` int(11) NOT NULL DEFAULT 1,
  `online_status` int(11) NOT NULL DEFAULT 1,
  `last_seen_date` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_general_ci;

--
-- Dumping data for table `tbl_user_profile`
--

INSERT INTO `tbl_user_profile` (`id`, `email`, `avatar`, `cover_photo`, `gender`, `date_of_birth`, `phone`, `about_me`, `location`, `qualification`, `facebook`, `twitter`, `linkdln`, `notify_token`, `show_dateofbirth`, `show_phone`, `notify_follows`, `notify_comments`, `notify_likes`, `activated`, `online_status`, `last_seen_date`) VALUES
(103, 'John@gmail.com', '6329e4ab073d1_avatar_1663689899.jpg', '6329e4ab07e19_cover_1663689899.jpg', 'Male', '2010-09-15', '09668555223', 'U29jaWFs', 'Lusaka', 'Bachelor\'s degree', 'facebook', 'twiter', 'linkedin', 'dCvXTuvUTC-IIqMRW1YpIq:APA91bEe1SPueypzZoGNxJpV5TYuFGaHBcgaSJe6Jv5KwxtDN2bu-erLVFjBQqh_1Yr8_VKG8pztj_F6L3Zvl0mYej7cyXg9HYgrcap4WAcH-bE0UPPipczVfU1flC0ZwXMhomY12FlZ', 0, 0, 0, 0, 0, 1, 1, 1663692229),
(104, 'johnj@gmail.com', '6329e3b089a63_avatar_1663689648.jpg', '6329e3b08ae52_cover_1663689648.jpg', 'Male', '2022-09-20', '0978398809', 'c3R1ZGVudA==', 'lusaka ', 'bachelor ', '', '', '', 'eWILfSWNRZaVmHjeTg7Djn:APA91bFVAcZfCF6zoIvi1IXxURUE7bfP20KbkGUdj83P54491-aWPodO_TEZaIYSThFAQeTRgWWe-BqVO0Pllzw1FNubf_DzNjfbOsUFuWGB4G_bAcMqV8FmI78MhAa969m3jFFgp2hH', 1, 1, 0, 0, 0, 1, 1, 1664569812),
(105, 'Leo@gmail.com', '6329ee30cd3c3_avatar_1663692336.jpg', '6329ee30cdf5e_cover_1663692336.jpg', 'Male', '2017-09-21', '097866655488', 'TG92ZSBjaHVyY2g=', 'Kabwe', 'Student', 'Facebook ', 'Twitter ', 'LinkedIn ', 'dCvXTuvUTC-IIqMRW1YpIq:APA91bEe1SPueypzZoGNxJpV5TYuFGaHBcgaSJe6Jv5KwxtDN2bu-erLVFjBQqh_1Yr8_VKG8pztj_F6L3Zvl0mYej7cyXg9HYgrcap4WAcH-bE0UPPipczVfU1flC0ZwXMhomY12FlZ', 1, 1, 0, 0, 0, 1, 1, 1664565295),
(106, 'Chautongi@gmail.com', '6335b7d1191b5_avatar_1664464849.jpg', '6335b7d119afd_cover_1664464849.jpg', 'Male', '1993-09-23', '0975888002', 'SmhkYmRiYmRiYmRoaGRnYmRiIGJiZGJkYmJkYg==', 'Kabwe', 'Bsc', 'fb', 'twt', 'lkn', 'dCvXTuvUTC-IIqMRW1YpIq:APA91bEe1SPueypzZoGNxJpV5TYuFGaHBcgaSJe6Jv5KwxtDN2bu-erLVFjBQqh_1Yr8_VKG8pztj_F6L3Zvl0mYej7cyXg9HYgrcap4WAcH-bE0UPPipczVfU1flC0ZwXMhomY12FlZ', 1, 1, 0, 0, 0, 1, 1, 1664522343);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_verification`
--

CREATE TABLE `tbl_verification` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(50) NOT NULL,
  `createdDtm` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_verification`
--

INSERT INTO `tbl_verification` (`id`, `email`, `activation_id`, `agent`, `client_ip`, `createdDtm`) VALUES
(614, 'kevinmitson9@gmail.com', 'K2YKH0EzAgGepvU', 'Dart/2.16 (dart:io)', '41.223.118.78', '0000-00-00 00:00:00'),
(615, 'ngandueukeria@gmail.com', 'nmXJE6piU7k49qm', 'Dart/2.16 (dart:io)', '155.0.76.43', '0000-00-00 00:00:00'),
(616, 'Leo@gmail.com', 'QdGt7JQS0uevu9P', 'Dart/2.16 (dart:io)', '41.223.119.35', '0000-00-00 00:00:00'),
(617, 'John@gmail.com', 'fLWPbH0toAXagZv', 'Dart/2.16 (dart:io)', '41.216.82.6', '0000-00-00 00:00:00'),
(618, 'johnj@gmail.com', 'f2nmuDCQoPaOPIe', 'Dart/2.16 (dart:io)', '165.57.81.154', '0000-00-00 00:00:00'),
(619, 'Chautongi@gmail.com', 'raa105kWrwbmkD4', 'Dart/2.16 (dart:io)', '41.216.73.19', '0000-00-00 00:00:00'),
(620, 'Liam@gmail.com', 'z0G9g523CbTCGXM', 'Dart/2.16 (dart:io)', '155.0.74.122', '0000-00-00 00:00:00'),
(621, 'magret@gmail.com', 'BKLwjF1gSukb1mM', 'Dart/2.16 (dart:io)', '41.223.118.78', '0000-00-00 00:00:00'),
(622, 'Simukondakelvin@gmail.com', '9Cn8P9s0JsY5Ylu', 'Dart/2.18 (dart:io)', '41.223.119.37', '0000-00-00 00:00:00'),
(623, 'Kevin@gmail.com', 'lCMvaC4MJWMZE4G', 'Dart/2.18 (dart:io)', '41.223.119.44', '0000-00-00 00:00:00'),
(624, 'Michael@gmail.com', 'DerkRqaAVLbpqpv', 'Dart/2.18 (dart:io)', '41.174.49.118', '0000-00-00 00:00:00'),
(625, 'leo@gmail.com', 'S082HZsQFaspL2R', 'Dart/2.18 (dart:io)', '41.174.49.118', '0000-00-00 00:00:00'),
(626, 'james@gmail.com', 'mKO6MYQzenWVFTI', 'Dart/2.18 (dart:io)', '41.174.49.118', '0000-00-00 00:00:00'),
(627, 'luka@gmail.com', 'LPRHRJBWpz50L0i', 'Dart/2.18 (dart:io)', '41.174.49.118', '0000-00-00 00:00:00'),
(628, 'Testing@gmail.com', 'aUVZwj2LeUGfW70', 'Dart/2.18 (dart:io)', '41.223.119.37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_weddings`
--

CREATE TABLE `tbl_weddings` (
  `id` int(11) NOT NULL,
  `bride_name` varchar(255) NOT NULL,
  `bride_address` varchar(255) NOT NULL,
  `bride_phone` varchar(20) NOT NULL,
  `bride_email` varchar(255) NOT NULL,
  `groom_name` varchar(255) NOT NULL,
  `groom_address` varchar(255) NOT NULL,
  `groom_phone` varchar(20) NOT NULL,
  `groom_email` varchar(255) NOT NULL,
  `wedding_date` date NOT NULL,
  `wedding_time` time NOT NULL,
  `rehersal_date` date NOT NULL,
  `rehersal_time` time NOT NULL,
  `officiating_name` varchar(255) NOT NULL,
  `officiating_phone` varchar(20) NOT NULL,
  `officiating_email` varchar(255) NOT NULL,
  `reference_bride_name` varchar(255) NOT NULL,
  `reference_bride_phone` varchar(20) NOT NULL,
  `reference_groom_name` varchar(255) NOT NULL,
  `reference_groom_phone` varchar(20) NOT NULL,
  `bride_sign` varchar(1024) NOT NULL,
  `groom_sign` varchar(1024) NOT NULL,
  `clerk_sign` varchar(1024) NOT NULL,
  `pastor_sign` varchar(1024) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_android_users`
--
ALTER TABLE `tbl_android_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_babies`
--
ALTER TABLE `tbl_babies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bible`
--
ALTER TABLE `tbl_bible`
  ADD PRIMARY KEY (`book`,`chapter`,`verse`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tbl_bible_versions`
--
ALTER TABLE `tbl_bible_versions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blocked_users`
--
ALTER TABLE `tbl_blocked_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_branches`
--
ALTER TABLE `tbl_branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_chat_messages`
--
ALTER TABLE `tbl_chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coupons`
--
ALTER TABLE `tbl_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_devotionals`
--
ALTER TABLE `tbl_devotionals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_donations`
--
ALTER TABLE `tbl_donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_donation_settings`
--
ALTER TABLE `tbl_donation_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_families`
--
ALTER TABLE `tbl_families`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fcm_token`
--
ALTER TABLE `tbl_fcm_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_financials`
--
ALTER TABLE `tbl_financials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_funerals`
--
ALTER TABLE `tbl_funerals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_hymns`
--
ALTER TABLE `tbl_hymns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_manage_users`
--
ALTER TABLE `tbl_manage_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_media`
--
ALTER TABLE `tbl_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_media_likes`
--
ALTER TABLE `tbl_media_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_members`
--
ALTER TABLE `tbl_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post_comments`
--
ALTER TABLE `tbl_post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post_likes`
--
ALTER TABLE `tbl_post_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post_pins`
--
ALTER TABLE `tbl_post_pins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_radio`
--
ALTER TABLE `tbl_radio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reported_comments`
--
ALTER TABLE `tbl_reported_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social_fcm_tokens`
--
ALTER TABLE `tbl_social_fcm_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_strategics`
--
ALTER TABLE `tbl_strategics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_streaming`
--
ALTER TABLE `tbl_streaming`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sub_categories`
--
ALTER TABLE `tbl_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_following`
--
ALTER TABLE `tbl_user_following`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_posts`
--
ALTER TABLE `tbl_user_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_profile`
--
ALTER TABLE `tbl_user_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_verification`
--
ALTER TABLE `tbl_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_weddings`
--
ALTER TABLE `tbl_weddings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_android_users`
--
ALTER TABLE `tbl_android_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=504;

--
-- AUTO_INCREMENT for table `tbl_babies`
--
ALTER TABLE `tbl_babies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_bible`
--
ALTER TABLE `tbl_bible`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31103;

--
-- AUTO_INCREMENT for table `tbl_bible_versions`
--
ALTER TABLE `tbl_bible_versions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_blocked_users`
--
ALTER TABLE `tbl_blocked_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_branches`
--
ALTER TABLE `tbl_branches`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_chat_messages`
--
ALTER TABLE `tbl_chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=611;

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tbl_coupons`
--
ALTER TABLE `tbl_coupons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_devotionals`
--
ALTER TABLE `tbl_devotionals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_donations`
--
ALTER TABLE `tbl_donations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_families`
--
ALTER TABLE `tbl_families`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_fcm_token`
--
ALTER TABLE `tbl_fcm_token`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1256;

--
-- AUTO_INCREMENT for table `tbl_financials`
--
ALTER TABLE `tbl_financials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_funerals`
--
ALTER TABLE `tbl_funerals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_hymns`
--
ALTER TABLE `tbl_hymns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `tbl_manage_users`
--
ALTER TABLE `tbl_manage_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_media`
--
ALTER TABLE `tbl_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=695;

--
-- AUTO_INCREMENT for table `tbl_media_likes`
--
ALTER TABLE `tbl_media_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `tbl_members`
--
ALTER TABLE `tbl_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=669;

--
-- AUTO_INCREMENT for table `tbl_post_comments`
--
ALTER TABLE `tbl_post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `tbl_post_likes`
--
ALTER TABLE `tbl_post_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT for table `tbl_post_pins`
--
ALTER TABLE `tbl_post_pins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `tbl_radio`
--
ALTER TABLE `tbl_radio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tbl_reported_comments`
--
ALTER TABLE `tbl_reported_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_social_fcm_tokens`
--
ALTER TABLE `tbl_social_fcm_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1212;

--
-- AUTO_INCREMENT for table `tbl_strategics`
--
ALTER TABLE `tbl_strategics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_streaming`
--
ALTER TABLE `tbl_streaming`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tbl_sub_categories`
--
ALTER TABLE `tbl_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_user_following`
--
ALTER TABLE `tbl_user_following`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=560;

--
-- AUTO_INCREMENT for table `tbl_user_posts`
--
ALTER TABLE `tbl_user_posts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `tbl_user_profile`
--
ALTER TABLE `tbl_user_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `tbl_verification`
--
ALTER TABLE `tbl_verification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=629;

--
-- AUTO_INCREMENT for table `tbl_weddings`
--
ALTER TABLE `tbl_weddings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

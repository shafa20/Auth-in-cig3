-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 25, 2024 at 10:53 AM
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
-- Database: `cias`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_access_matrix`
--

CREATE TABLE `tbl_access_matrix` (
  `id` int(11) NOT NULL,
  `access` text DEFAULT NULL,
  `roleId` int(11) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_access_matrix`
--

INSERT INTO `tbl_access_matrix` (`id`, `access`, `roleId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, '[{\"module\":\"Task\",\"total_access\":1,\"list\":1,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Booking\",\"total_access\":0,\"list\":1,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Brand\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 12, 0, 1, '2022-06-17 21:01:02', 1, '2024-03-24 09:06:53'),
(2, '[{\"module\":\"Task\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 11, 0, 1, '2024-03-24 07:28:06', NULL, NULL),
(3, '[{\"module\":\"Booking\",\"total_access\":0,\"list\":1,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Brand\",\"total_access\":0,\"list\":1,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Model\",\"total_access\":0,\"list\":1,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 3, 0, 1, '2024-03-24 07:28:12', 1, '2024-03-25 05:58:45'),
(4, '[{\"module\":\"Task\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 5, 0, 1, '2024-03-24 07:28:20', NULL, NULL),
(5, '[{\"module\":\"Task\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 13, 0, 1, '2024-03-24 07:29:25', NULL, NULL),
(6, '[{\"module\":\"Task\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 14, 0, 1, '2024-03-24 07:43:24', NULL, NULL),
(7, '[{\"module\":\"Task\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 15, 0, 1, '2024-03-24 08:00:47', NULL, NULL),
(8, '[{\"module\":\"Task\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 16, 0, 1, '2024-03-24 08:02:31', NULL, NULL),
(9, '[{\"module\":\"Task\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 17, 0, 1, '2024-03-24 08:05:59', NULL, NULL),
(10, '[{\"module\":\"Task\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 18, 0, 1, '2024-03-24 08:11:57', NULL, NULL),
(11, '[{\"module\":\"Task\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 19, 0, 1, '2024-03-24 08:14:13', NULL, NULL),
(12, '[{\"module\":\"Task\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 20, 0, 1, '2024-03-24 08:15:13', NULL, NULL),
(13, '[{\"module\":\"Task\",\"total_access\":0,\"list\":1,\"create_records\":1,\"edit_records\":1,\"delete_records\":1},{\"module\":\"Booking\",\"total_access\":1,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 21, 0, 1, '2024-03-24 08:18:48', 1, '2024-03-24 08:19:04'),
(14, '[{\"module\":\"Task\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 22, 0, 1, '2024-03-24 08:26:10', NULL, NULL),
(15, '[{\"module\":\"Booking\",\"total_access\":1,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Brand\",\"total_access\":1,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Model\",\"total_access\":1,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 23, 0, 1, '2024-03-24 10:10:24', 1, '2024-03-25 06:16:44'),
(16, '[{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Brand\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Model\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 10, 0, 1, '2024-03-24 15:03:21', NULL, NULL),
(17, '[{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Brand\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Model\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 1, 0, 1, '2024-03-24 15:04:34', NULL, NULL),
(18, '[{\"module\":\"Booking\",\"total_access\":0,\"list\":1,\"create_records\":1,\"edit_records\":1,\"delete_records\":0},{\"module\":\"Brand\",\"total_access\":0,\"list\":1,\"create_records\":1,\"edit_records\":1,\"delete_records\":0},{\"module\":\"Model\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 24, 0, 1, '2024-03-25 06:15:27', 1, '2024-03-25 06:24:21'),
(19, '[{\"module\":\"Booking\",\"total_access\":1,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Brand\",\"total_access\":1,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Model\",\"total_access\":1,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 25, 0, 1, '2024-03-25 06:16:08', 1, '2024-03-25 06:22:16'),
(20, '[{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Brand\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Model\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 26, 0, 1, '2024-03-25 06:21:10', NULL, NULL),
(21, '[{\"module\":\"Booking\",\"total_access\":1,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Brand\",\"total_access\":1,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Model\",\"total_access\":1,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 27, 0, 1, '2024-03-25 06:57:00', 1, '2024-03-25 06:57:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `bookingId` int(4) NOT NULL,
  `roomName` varchar(256) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`bookingId`, `roomName`, `description`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(5, 'Master room', 'Room with Beautiful View', 0, 15, '2024-03-24 08:20:54', 1, '2024-03-24 15:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(4) NOT NULL,
  `brandTitle` varchar(256) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandTitle`, `description`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'Brand 1', 'brand des.1', 0, 1, '2024-03-24 09:26:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_last_login`
--

CREATE TABLE `tbl_last_login` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `sessionData` varchar(2048) NOT NULL,
  `machineIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_last_login`
--

INSERT INTO `tbl_last_login` (`id`, `userId`, `sessionData`, `machineIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(22, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 123.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows 10', '2024-03-23 12:18:52'),
(23, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 123.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows 10', '2024-03-24 11:53:35'),
(24, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 123.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows 10', '2024-03-24 12:17:59'),
(25, 15, '{\"role\":\"21\",\"roleText\":\"test1\",\"name\":\"Test1\",\"isAdmin\":\"2\"}', '::1', 'Chrome 123.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows 10', '2024-03-24 13:20:34'),
(26, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 123.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows 10', '2024-03-24 13:21:23'),
(27, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 123.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows 10', '2024-03-24 13:24:56'),
(28, 16, '{\"role\":\"22\",\"roleText\":\"test\",\"name\":\"Hosain Mohammad Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 123.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows 10', '2024-03-24 13:27:32'),
(29, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 123.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows 10', '2024-03-24 13:27:56'),
(30, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 123.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows 10', '2024-03-24 13:28:47'),
(31, 16, '{\"role\":\"11\",\"roleText\":\"Project Manager L6\",\"name\":\"Hosain Mohammad Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 123.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows 10', '2024-03-24 13:29:16'),
(32, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 123.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows 10', '2024-03-24 13:29:34'),
(33, 16, '{\"role\":\"23\",\"roleText\":\"test\",\"name\":\"Hosain Mohammad Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 123.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows 10', '2024-03-24 15:11:35'),
(34, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 123.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows 10', '2024-03-24 15:12:41'),
(35, 16, '{\"role\":\"23\",\"roleText\":\"test\",\"name\":\"Hosain Mohammad Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 123.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows 10', '2024-03-24 15:13:34'),
(36, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 123.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows 10', '2024-03-24 16:44:28'),
(37, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 123.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows 10', '2024-03-24 19:19:51'),
(38, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-25 10:57:36'),
(39, 16, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Hosain Mohammad Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-25 10:59:17'),
(40, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-25 11:09:05'),
(41, 1, '{\"role\":\"1\",\"roleText\":\"Project Manager\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-25 11:20:32'),
(42, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-25 11:22:44'),
(43, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-25 11:23:23'),
(44, 17, '{\"role\":\"24\",\"roleText\":\"Employee\",\"name\":\"Safa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-25 11:24:31'),
(45, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-25 11:24:44'),
(46, 17, '{\"role\":\"24\",\"roleText\":\"Employee\",\"name\":\"Safa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-25 11:54:12'),
(47, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-25 11:55:33'),
(48, 17, '{\"role\":\"27\",\"roleText\":\"test\",\"name\":\"Safa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-25 11:57:43'),
(49, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-25 12:28:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_model`
--

CREATE TABLE `tbl_model` (
  `modelId` int(4) NOT NULL,
  `brandId` bigint(20) UNSIGNED NOT NULL,
  `modelTitle` varchar(256) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_model`
--

INSERT INTO `tbl_model` (`modelId`, `brandId`, `modelTitle`, `description`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 1, 'model1', 'Model 1 description', 0, 1, '2024-03-24 12:16:51', 1, '2024-03-24 12:37:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `postId` int(4) NOT NULL,
  `postTitle` varchar(256) NOT NULL,
  `post_pic` text DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`postId`, `postTitle`, `post_pic`, `description`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(5, 'rtyr', 'a:2:{i:0;s:23:\"1711360142-Safa vai.jpg\";i:1;s:24:\"1711360142-Safa vai2.jpg\";}', 'hfnf', 0, 0, '0000-00-00 00:00:00', NULL, NULL),
(6, 'yujuj', 'a:2:{i:0;s:23:\"1711360213-Safa_vai.jpg\";i:1;s:24:\"1711360213-Safa_vai2.jpg\";}', 'ujuj', 0, 0, '0000-00-00 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset_password`
--

CREATE TABLE `tbl_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` bigint(20) NOT NULL DEFAULT 1,
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`, `status`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'System Administrator', 1, 0, 1, '2024-03-25 06:21:10', NULL, NULL),
(24, 'Employee', 1, 0, 1, '2024-03-25 06:15:27', NULL, NULL),
(25, 'Project Manager', 1, 0, 1, '2024-03-25 06:16:08', NULL, NULL),
(27, 'test', 1, 0, 1, '2024-03-25 06:57:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_task`
--

CREATE TABLE `tbl_task` (
  `taskId` int(4) NOT NULL,
  `taskTitle` varchar(256) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_task`
--

INSERT INTO `tbl_task` (`taskId`, `taskTitle`, `description`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'Small Task 1', 'Small task related to addition, substraction', 0, 1, '2022-06-18 20:47:47', 1, '2022-06-18 20:49:40'),
(2, 'Small Task 2', 'Closure task', 0, 1, '2022-06-18 20:49:48', 1, '2024-03-24 06:53:58'),
(3, 'Task 2', 'task2 Deceription', 0, 1, '2024-03-24 09:10:09', 1, '2024-03-24 09:40:43'),
(4, 'task1', 'Task 1 Descrip', 0, 1, '2024-03-24 09:29:58', 1, '2024-03-24 09:40:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isAdmin` tinyint(4) NOT NULL DEFAULT 2,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `password`, `name`, `mobile`, `roleId`, `isAdmin`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@gmail.com', '$2y$10$6Y28WIo2Oz.p8xsEMYcCmuvvijXZU8.sRT3737ix.vN1CwGs3NJk6', 'System Administrator', '9890098900', 1, 1, 0, 0, '2015-07-01 18:56:49', 1, '2024-03-25 06:23:11'),
(16, 'shafa@gmail.com', '$2y$10$Rh/t8eP7vDF/QiLWrKgi4ey3TaThixdHFqBK3s8M2KcuqkKyIDLtu', 'Hosain Mohammad Shafa Khan', '1960951628', 23, 2, 1, 1, '2024-03-24 08:26:46', 1, '2024-03-25 06:57:13'),
(17, 'safa@gmail.com', '$2y$10$vqiG2SU3d/H8NGpzfhQ.Qu22B2F3kOtZjOtGqNsHMb/tObz/sRYnm', 'Safa Khan', '0195555555', 27, 2, 0, 1, '2024-03-25 06:24:06', 1, '2024-03-25 06:57:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `tbl_access_matrix`
--
ALTER TABLE `tbl_access_matrix`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`bookingId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_model`
--
ALTER TABLE `tbl_model`
  ADD PRIMARY KEY (`modelId`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`postId`);

--
-- Indexes for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `tbl_task`
--
ALTER TABLE `tbl_task`
  ADD PRIMARY KEY (`taskId`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_access_matrix`
--
ALTER TABLE `tbl_access_matrix`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `bookingId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tbl_model`
--
ALTER TABLE `tbl_model`
  MODIFY `modelId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `postId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_task`
--
ALTER TABLE `tbl_task`
  MODIFY `taskId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

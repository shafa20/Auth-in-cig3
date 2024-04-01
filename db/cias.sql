-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 01, 2024 at 04:44 AM
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
(18, '[{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Brand\",\"total_access\":0,\"list\":1,\"create_records\":1,\"edit_records\":1,\"delete_records\":0},{\"module\":\"Model\",\"total_access\":0,\"list\":1,\"create_records\":1,\"edit_records\":1,\"delete_records\":0},{\"module\":\"Post\",\"total_access\":0,\"list\":1,\"create_records\":1,\"edit_records\":1,\"delete_records\":0}]', 24, 0, 1, '2024-03-25 06:15:27', 1, '2024-03-27 07:20:02'),
(19, '[{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Brand\",\"total_access\":1,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Model\",\"total_access\":1,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Post\",\"total_access\":1,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 25, 0, 1, '2024-03-25 06:16:08', 1, '2024-03-27 07:19:49'),
(20, '[{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Brand\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Model\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 26, 0, 1, '2024-03-25 06:21:10', NULL, NULL),
(21, '[{\"module\":\"Booking\",\"total_access\":1,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Brand\",\"total_access\":1,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Model\",\"total_access\":1,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Post\",\"total_access\":0,\"list\":1,\"create_records\":1,\"edit_records\":1,\"delete_records\":1}]', 27, 0, 1, '2024-03-25 06:57:00', 1, '2024-03-27 09:29:13'),
(22, '[{\"module\":\"Booking\",\"total_access\":1,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0,\"export_import_records\":0},{\"module\":\"Brand\",\"total_access\":0,\"list\":1,\"create_records\":1,\"edit_records\":1,\"delete_records\":1,\"export_import_records\":0},{\"module\":\"Model\",\"total_access\":1,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0,\"export_import_records\":0},{\"module\":\"Post\",\"total_access\":1,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0,\"export_import_records\":0}]', 28, 0, 1, '2024-03-27 09:29:39', 1, '2024-03-29 06:11:47'),
(23, '[{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Brand\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Model\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Post\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 29, 0, 1, '2024-03-28 09:08:47', NULL, NULL),
(24, '[{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Brand\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Model\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Post\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 30, 0, 1, '2024-03-28 09:09:38', NULL, NULL),
(25, '[{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Brand\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Model\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Post\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 31, 0, 1, '2024-03-28 09:15:16', NULL, NULL),
(26, '[{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Brand\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Model\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Post\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 32, 0, 1, '2024-03-28 09:19:42', NULL, NULL),
(27, '[{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Brand\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Model\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Post\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 33, 0, 1, '2024-03-28 09:21:47', NULL, NULL),
(28, '[{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Brand\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Model\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Post\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 34, 0, 1, '2024-03-28 09:22:52', NULL, NULL),
(29, '[{\"module\":\"Booking\",\"total_access\":1,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Brand\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Model\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Post\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 35, 0, 1, '2024-03-28 10:24:59', 1, '2024-03-28 10:25:05'),
(30, '[{\"module\":\"Booking\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Brand\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0,\"export_import_records\":0},{\"module\":\"Model\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0},{\"module\":\"Post\",\"total_access\":0,\"list\":0,\"create_records\":0,\"edit_records\":0,\"delete_records\":0}]', 36, 0, 1, '2024-03-29 05:30:51', NULL, NULL);

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
(5, 'Master room', 'Room with Beautiful View', 0, 15, '2024-03-24 08:20:54', 1, '2024-03-24 15:16:47'),
(7, 'master room 2', 'master room 2 description', 0, 1, '2024-03-27 08:40:17', 1, '2024-03-27 08:44:11');

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
(1, 'Brand 1', 'brand des.1', 0, 1, '2024-03-24 09:26:30', NULL, NULL),
(8, 'Brand 2', 'Brand 2  Description', 0, 1, '2024-03-29 04:06:52', NULL, NULL);

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
(49, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-25 12:28:21'),
(50, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 123.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows 10', '2024-03-26 12:17:17'),
(51, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 123.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Windows 10', '2024-03-26 12:25:02'),
(52, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-27 08:20:17'),
(53, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-27 10:47:56'),
(54, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-27 11:08:12'),
(55, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-27 12:18:51'),
(56, 17, '{\"role\":\"27\",\"roleText\":\"test\",\"name\":\"Safa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-27 13:45:57'),
(57, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-27 13:46:21'),
(58, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-27 13:56:11'),
(59, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-27 14:03:10'),
(60, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-27 14:16:44'),
(61, 17, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Safa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-27 14:30:30'),
(62, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-27 14:31:08'),
(63, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-27 14:39:41'),
(64, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-27 15:05:26'),
(65, 17, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Safa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-27 15:24:57'),
(66, 17, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Safa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-27 15:25:55'),
(67, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-27 15:26:12'),
(68, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-27 15:39:49'),
(69, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 08:07:36'),
(70, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 08:09:40'),
(71, 19, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 08:13:58'),
(72, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 08:14:12'),
(73, 19, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 08:14:50'),
(74, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 08:15:02'),
(75, 19, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 08:43:00'),
(76, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 08:43:31'),
(77, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 08:52:22'),
(78, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 08:52:53'),
(79, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 08:54:02'),
(80, 19, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 08:55:43'),
(81, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 08:56:13'),
(82, 19, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 09:20:23'),
(83, 19, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 09:21:05'),
(84, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 09:21:23'),
(85, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 09:37:30'),
(86, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 10:00:58'),
(87, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 11:10:05'),
(88, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 11:11:47'),
(89, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 11:12:15'),
(90, 19, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 11:12:33'),
(91, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 11:13:14'),
(92, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 11:14:04'),
(93, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 11:14:46'),
(94, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 11:25:30'),
(95, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 11:31:02'),
(96, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 11:43:18'),
(97, 19, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 11:43:39'),
(98, 19, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 11:44:34'),
(99, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 11:44:45'),
(100, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 12:38:07'),
(101, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 12:44:09'),
(102, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 12:44:31'),
(103, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 13:04:30'),
(104, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 13:10:47'),
(105, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 13:10:57'),
(106, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 13:51:49'),
(107, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 13:52:01'),
(108, 19, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 14:29:43'),
(109, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 14:30:09'),
(110, 19, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 14:33:16'),
(111, 19, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 14:33:51'),
(112, 19, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 14:45:37'),
(113, 19, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 14:46:11'),
(114, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 14:46:26'),
(115, 19, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 14:47:08'),
(116, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 14:47:52'),
(117, 19, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 14:48:22'),
(118, 19, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 14:48:32'),
(119, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 14:49:00'),
(120, 21, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Test1\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 15:20:17'),
(121, 21, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Test1\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 15:21:36'),
(122, 21, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Test1\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 15:22:07'),
(123, 21, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Test1\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 15:23:13'),
(124, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 15:23:23'),
(125, 22, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Test2\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 15:25:48'),
(126, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-28 15:26:10'),
(127, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-29 08:33:17'),
(128, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-29 08:33:28'),
(129, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-29 08:35:53'),
(130, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-29 08:44:05'),
(131, 19, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-29 10:46:00'),
(132, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-29 10:46:10'),
(133, 19, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-29 10:47:05'),
(134, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-29 11:11:22'),
(135, 19, '{\"role\":\"28\",\"roleText\":\"test 2\",\"name\":\"Shafa Khan\",\"isAdmin\":\"2\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-29 11:12:00'),
(136, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-29 11:17:33'),
(137, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-29 14:14:22'),
(138, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-29 14:33:15'),
(139, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-29 14:33:27'),
(140, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-29 15:00:53'),
(141, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}', '::1', 'Chrome 122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', '2024-03-29 15:12:04');

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
(1, 1, 'model1', 'Model 1 description', 0, 1, '2024-03-24 12:16:51', 1, '2024-03-24 12:37:53'),
(8, 1, 'grere', 'iol', 0, 19, '2024-03-28 09:48:47', NULL, NULL);

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
(38, 'Post 1', 'a:2:{i:1;s:18:\"1711527152-pic.jpg\";i:2;s:18:\"1711527152-Sig.jpg\";}', 'Post 1 Description', 0, 0, '0000-00-00 00:00:00', 1, '2024-03-29 10:16:50');

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

--
-- Dumping data for table `tbl_reset_password`
--

INSERT INTO `tbl_reset_password` (`id`, `email`, `activation_id`, `agent`, `client_ip`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'shafa@gmail.com', 'Z2BrVxC68FgD5aK', 'Chrome 122.0.0.0', '::1', 0, 1, '2024-03-28 09:34:16', NULL, NULL),
(2, 'shafa@gmail.com', 'uL5TeAOEsDV0IjC', 'Chrome 122.0.0.0', '::1', 0, 1, '2024-03-28 09:34:28', NULL, NULL),
(3, 'shafa@gmail.com', 'mx2I319NeoTanrs', 'Chrome 122.0.0.0', '::1', 0, 1, '2024-03-28 09:40:33', NULL, NULL),
(4, 'shafa@gmail.com', 'PA0XOaBH13UVnl9', 'Chrome 122.0.0.0', '::1', 0, 1, '2024-03-28 09:45:02', NULL, NULL),
(5, 'shafa@gmail.com', 'nrlHzheJumbgLjo', 'Chrome 122.0.0.0', '::1', 0, 1, '2024-03-29 10:00:15', NULL, NULL);

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
(27, 'test', 1, 0, 1, '2024-03-25 06:57:00', NULL, NULL),
(28, 'test 2', 1, 0, 1, '2024-03-27 09:29:39', NULL, NULL),
(35, 'role 3', 1, 0, 1, '2024-03-28 10:24:59', NULL, NULL);

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
(1, 'admin@gmail.com', '$2y$10$6Y28WIo2Oz.p8xsEMYcCmuvvijXZU8.sRT3737ix.vN1CwGs3NJk6', 'System Administrator', '0190098900', 1, 1, 0, 0, '2015-07-01 18:56:49', 1, '2024-03-29 10:36:44'),
(16, 'shafa@gmail.com', '$2y$10$Rh/t8eP7vDF/QiLWrKgi4ey3TaThixdHFqBK3s8M2KcuqkKyIDLtu', 'Hosain Mohammad Shafa Khan', '1960951628', 23, 2, 1, 1, '2024-03-24 08:26:46', 1, '2024-03-25 06:57:13'),
(17, 'safa@gmail.com', '$2y$10$d/2PCPF21MXFsMbWxGpY5uu347MwVpSo0fKNBoFbbLb5iwWP/nenW', 'Safa Khan', '0195555555', 28, 2, 1, 1, '2024-03-25 06:24:06', 1, '2024-03-28 03:57:11'),
(18, 'shafa@gmail.coom', '$2y$10$citFZQPvpFsgv9TkhY7g/O1wHDMv0N7R.vpCmqK4NRB2RsgOta7gO', 'Shafa Khan N', '1960951628', 27, 2, 1, 1, '2024-03-26 07:25:52', 1, '2024-03-27 10:23:43'),
(19, 'shafa@gmail.com', '$2y$10$qsvyz.CxYhFZxnQoqEHZiObEakcOFIijCRyejCutP9isOH8cb45aK', 'Shafa Khan', '0195555555', 28, 2, 0, 1, '2024-03-28 03:12:05', 19, '2024-03-28 09:46:02'),
(20, 'test1@gmail.com', '$2y$10$0QuCm9nwf0HMeaZeN8bzL.RaJIb/E/1HRXgqa.HmZA9KfJ3GomUly', 'Test01', '0195555555', 27, 2, 1, 1, '2024-03-28 10:17:39', 1, '2024-03-28 10:18:18'),
(21, 'test1@gmail.com', '$2y$10$ny5sOKI1cSLPa2PlOWHGTeJI4g67NbXQfitpcZSLn.MHz9hVYBHgS', 'Test1', '0195555555', 28, 2, 1, 1, '2024-03-28 10:19:24', 1, '2024-03-29 05:46:21'),
(22, 'test2@gmail.com', '$2y$10$63/6zKatbJwxiRgYgQqrgOfzupVDcWyQfrLH1RA/W9QJw4Nxf/rZO', 'Test2', '0195555555', 28, 2, 1, 1, '2024-03-28 10:24:18', 1, '2024-03-29 05:46:18'),
(23, 'test2@gmail.com', '$2y$10$sv3jkwq5glD3y2S2gRFaa.2sfpt7pDOSNzYGddZIe7ScknasC75Pa', 'Test', '0195555555', 27, 2, 0, 1, '2024-03-29 10:31:29', 1, '2024-03-29 10:35:06');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `bookingId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `tbl_model`
--
ALTER TABLE `tbl_model`
  MODIFY `modelId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `postId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

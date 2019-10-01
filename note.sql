-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 25, 2018 at 09:36 AM
-- Server version: 5.7.11-log
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shortnotes`
--

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `ID` bigint(11) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `slug` varchar(10) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `ip` varchar(64) NOT NULL,
  `created_date_time` datetime NOT NULL,
  `last_modified_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`ID`, `notes`, `password`, `slug`, `active`, `ip`, `created_date_time`, `last_modified_date_time`) VALUES
(1, 'Hello', 'Code@2020', 't56j15', 1, '::1', '2018-10-24 09:54:10', '2018-10-23 08:00:00'),
(2, 'p0cb15o89576bi2ezky0sf27xfaflpr57ui6an1266ohl58mi5nmx1rxukvrv09jezgsoqon14txpodbmu7dwq85ezlz76zjmcl2', 'km1tnoxw', '4cmwv1', 1, '::1', '2018-10-24 10:00:48', '2018-10-24 10:08:21'),
(3, 'hjh', '', '53lwdl', 1, '::1', '2018-10-24 10:58:29', '2018-10-24 10:58:29'),
(4, 'hjhihjhk', '', 'aoco2y', 1, '::1', '2018-10-24 10:59:07', '2018-10-24 10:59:07'),
(5, 'khkh,jkl', '', '85u3zt', 1, '::1', '2018-10-24 10:59:23', '2018-10-24 10:59:23'),
(6, 'khkh,jkljnjk', '', 'hxe9iv', 1, '::1', '2018-10-24 11:00:41', '2018-10-24 11:00:41'),
(7, 'khkh,jkljnjk', '', 'l88p1r', 1, '::1', '2018-10-24 11:01:14', '2018-10-24 11:01:14'),
(8, 'hello ', '', 'mbin1w', 1, '::1', '2018-10-24 11:12:19', '2018-10-24 11:12:19'),
(9, 'hello ', '', '956l70', 1, '::1', '2018-10-24 11:12:26', '2018-10-24 11:12:26'),
(10, 'hello ', '', '48n3t6', 1, '::1', '2018-10-24 11:14:11', '2018-10-24 11:14:11'),
(11, 'hello \nwol;s;a\nkss', '', '5d9r5f', 1, '::1', '2018-10-24 11:16:22', '2018-10-24 11:16:22'),
(12, 'iuykjhk', '', 'h1sydy', 1, '::1', '2018-10-24 11:17:11', '2018-10-24 11:17:11'),
(13, 'khjhk', '', '46a5t7', 1, '::1', '2018-10-24 11:22:44', '2018-10-24 11:22:44'),
(14, 'iukhjljk', '', 'n46o0a', 1, '::1', '2018-10-24 11:23:10', '2018-10-24 11:23:10'),
(15, 'jkh', '', '3h2rt2', 1, '::1', '2018-10-24 11:27:04', '2018-10-24 11:27:04'),
(16, 'afdsfd', '', 'ee9n2a', 1, '::1', '2018-10-24 11:28:38', '2018-10-24 11:28:38'),
(17, 'adsads', '', 'ukza0j', 1, '::1', '2018-10-24 11:30:22', '2018-10-24 11:30:22'),
(18, 'sfdsdf', '', 'edhmrw', 1, '::1', '2018-10-24 11:30:43', '2018-10-24 11:30:43'),
(19, 'aefdsfdsf', '', '52nxn7', 1, '::1', '2018-10-24 11:32:57', '2018-10-24 11:32:57'),
(20, 'yum intall pecl\n\nIn my system, I have PECL installed, so I can install PECL extensions like this-\n\npecl install mailparse', '', 'm6ntdf', 1, '::1', '2018-10-25 12:26:09', '2018-10-25 12:26:09'),
(21, 'askdljcszjf\nzfdjhsfd\n\nsfjhksfd', '', '63j7ca', 1, '::1', '2018-10-25 12:46:21', '2018-10-25 12:46:21'),
(22, 'sdzfsfsdf\nsdfsdf\nsfsdf', '', 'u90i6j', 1, '::1', '2018-10-25 12:46:56', '2018-10-25 12:46:56'),
(23, 'sdfsfdsd', '', 'wss8p2', 1, '::1', '2018-10-25 12:49:35', '2018-10-25 12:49:35'),
(24, 'afdzcsfv<br />s<br />sdfvs<br /><br />sfgxdg', '', 'a4e5ti', 1, '::1', '2018-10-25 12:51:12', '2018-10-25 12:51:12'),
(25, 'asdads', '', '3jzm5g', 1, '::1', '2018-10-25 09:02:44', '2018-10-25 09:02:44'),
(26, 'sdlasd', '', '94r5nf', 1, '::1', '2018-10-25 09:15:20', '2018-10-25 09:15:20'),
(27, 'adsasd', '', 'khcyj6', 1, '::1', '2018-10-25 09:16:14', '2018-10-25 09:16:14'),
(28, 'asdkasd', '', '4r533o', 1, '::1', '2018-10-25 09:28:57', '2018-10-25 09:28:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `ID` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

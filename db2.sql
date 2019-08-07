-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 05, 2019 at 01:27 PM
-- Server version: 5.7.26-0ubuntu0.16.04.1
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db2`
--

-- --------------------------------------------------------

--
-- Table structure for table `auswahl`
--

CREATE TABLE `auswahl` (
  `id` int(11) NOT NULL,
  `sonne` tinyint(1) NOT NULL,
  `erdbeere` tinyint(1) NOT NULL,
  `himbeere` tinyint(1) NOT NULL,
  `schokolade` tinyint(1) NOT NULL,
  `vanille` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auswahl`
--

INSERT INTO `auswahl` (`id`, `sonne`, `erdbeere`, `himbeere`, `schokolade`, `vanille`) VALUES
(1, 1, 1, 1, 0, 0),
(2, 0, 1, 0, 0, 1),
(4, 0, 0, 0, 1, 1),
(5, 1, 1, 1, 1, 1),
(6, 1, 0, 0, 1, 1),
(7, 1, 0, 1, 1, 1),
(8, 1, 1, 0, 0, 1),
(9, 0, 1, 1, 0, 1),
(10, 1, 1, 0, 0, 0),
(11, 0, 0, 0, 1, 1),
(12, 1, 0, 0, 1, 1),
(13, 1, 1, 0, 0, 1),
(14, 0, 1, 1, 1, 1),
(15, 1, 0, 0, 1, 0),
(16, 0, 1, 0, 1, 1),
(17, 1, 1, 0, 0, 1),
(18, 1, 1, 1, 1, 0),
(19, 0, 1, 1, 0, 0),
(20, 0, 0, 1, 1, 0),
(21, 0, 0, 1, 1, 0),
(22, 0, 1, 1, 1, 0),
(23, 0, 1, 1, 0, 0),
(24, 1, 0, 1, 1, 0),
(25, 0, 0, 1, 1, 0),
(26, 1, 1, 1, 0, 0),
(27, 1, 1, 1, 0, 0),
(28, 0, 0, 0, 1, 1),
(29, 1, 0, 0, 0, 1),
(30, 1, 1, 1, 0, 1),
(31, 1, 1, 0, 0, 1),
(32, 1, 0, 0, 1, 0),
(33, 1, 1, 0, 1, 0),
(34, 1, 0, 0, 1, 1),
(35, 1, 0, 1, 0, 1),
(36, 1, 1, 1, 1, 0),
(37, 0, 0, 0, 0, 1),
(38, 1, 0, 1, 1, 0),
(39, 0, 0, 1, 0, 1),
(40, 0, 1, 0, 0, 0),
(41, 1, 1, 1, 0, 1),
(42, 0, 0, 1, 1, 1),
(43, 0, 0, 1, 0, 0),
(44, 1, 0, 0, 0, 1),
(45, 0, 1, 1, 0, 0),
(46, 1, 1, 1, 0, 0),
(47, 0, 0, 0, 1, 0),
(48, 1, 0, 1, 1, 0),
(49, 0, 1, 0, 0, 0),
(50, 1, 0, 0, 0, 1),
(51, 0, 0, 0, 1, 0),
(52, 1, 0, 0, 1, 1),
(53, 0, 0, 1, 1, 0),
(54, 0, 0, 1, 1, 0),
(55, 1, 1, 0, 0, 1),
(56, 0, 1, 0, 0, 1),
(57, 1, 0, 0, 1, 0),
(58, 1, 0, 1, 0, 1),
(59, 1, 0, 1, 0, 0),
(60, 0, 1, 1, 1, 0),
(61, 1, 0, 0, 1, 1),
(62, 1, 0, 0, 0, 1),
(63, 0, 1, 0, 0, 0),
(64, 0, 1, 1, 1, 1),
(65, 1, 1, 1, 1, 1),
(66, 0, 0, 1, 0, 1),
(67, 1, 0, 1, 0, 0),
(68, 1, 1, 1, 0, 0),
(69, 1, 0, 0, 1, 1),
(70, 1, 1, 1, 0, 0),
(71, 1, 1, 0, 0, 1),
(72, 0, 1, 1, 1, 0),
(73, 0, 0, 0, 1, 1),
(74, 0, 0, 0, 0, 1),
(75, 1, 0, 1, 1, 0),
(76, 0, 1, 0, 0, 0),
(77, 1, 0, 0, 1, 1),
(78, 1, 0, 0, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auswahl`
--
ALTER TABLE `auswahl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auswahl`
--
ALTER TABLE `auswahl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

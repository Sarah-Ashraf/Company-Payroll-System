-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2020 at 06:27 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company_payroll_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `name` varchar(200) NOT NULL,
  `id` int(4) NOT NULL,
  `address` varchar(200) NOT NULL,
  `rank` varchar(200) NOT NULL,
  `hoursworked` int(2) NOT NULL,
  `overtimehours` int(1) NOT NULL,
  `payment` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`name`, `id`, `address`, `rank`, `hoursworked`, `overtimehours`, `payment`) VALUES
('zienb mohammed', 1, 'qaluob', 'actor', 8, 4, 1000),
('mena mohammed', 4, 'el islam street', 'engineer', 15, 3, 5500),
('alla samy', 6, 'masr el kadima', 'accountant', 7, 3, 3000),
('hany el said', 7, '7 mohamed street', 'guard', 8, 4, 3000),
('karma amir', 9, 'El ahram street', 'doctor', 8, 4, 8000),
('akram ali', 12, 'El harm', 'officer', 7, 3, 5000),
('asmaa ali', 15, '7 oktober street', 'actress', 7, 4, 8000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

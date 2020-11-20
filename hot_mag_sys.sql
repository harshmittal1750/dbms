-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2020 at 08:08 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hot_mag_sys`
--

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `phone` int(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `login_id` int(4) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`phone`, `address`, `login_id`, `password`, `fname`, `lname`, `email`) VALUES
(13132423, 'tam_nadu', 121, 'e3der3', 'amar', 'readdy', 'amar.com'),
(13133242, 'delhi', 134, 'e32tf2', 'anand', NULL, 'anand.com'),
(18745642, 'chennei', 135, 'e32862', 'nag', NULL, 'nag.com');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `checkout` date DEFAULT NULL,
  `checkin` date DEFAULT NULL,
  `res_no` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`checkout`, `checkin`, `res_no`) VALUES
('2020-04-12', '2020-04-09', 12321),
('2020-03-12', '2020-03-08', 1653),
('2020-03-19', '2020-02-07', 567),
('2020-03-11', '2020-01-01', 7645);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `number` int(10) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `style` varchar(10) DEFAULT NULL,
  `view` varchar(10) DEFAULT NULL,
  `beds` varchar(10) DEFAULT NULL,
  `smoking` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`number`, `level`, `style`, `view`, `beds`, `smoking`) VALUES
(12, 6, 'couple', 'pool', '1', 'allowed'),
(23, 9, 'couple', 'balcony', '1', 'allowed'),
(13, 9, 'couple', 'normal', '1', 'allowed'),
(8, 12, 'family', 'kids', '3', 'not_allowe');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

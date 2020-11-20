-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2020 at 12:46 PM
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
-- Database: `hos_mag_sys`
--

-- --------------------------------------------------------

--
-- Table structure for table `hms_appointments`
--

CREATE TABLE `hms_appointments` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `specialization_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `consultancy_fee` int(11) NOT NULL,
  `appointment_date` varchar(255) NOT NULL,
  `appointment_time` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` enum('Active','Cancelled','Completed','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hms_appointments`
--

INSERT INTO `hms_appointments` (`id`, `patient_id`, `specialization_id`, `doctor_id`, `consultancy_fee`, `appointment_date`, `appointment_time`, `created`, `status`) VALUES
(1, 1, 1, 1, 53432, '12-3-2020', '12:00pm', '2020-03-12 12:12:13', 'Active'),
(2, 2, 2, 2, 98496, '12-3-2020', '11:00pm', '2020-03-22 17:12:13', 'Completed'),
(3, 3, 3, 3, 54356, '2-6-2019', '1:06pm', '2020-05-27 17:12:16', 'Completed'),
(4, 4, 4, 4, 5444, '12-6-2018', '7:09pm', '2020-07-17 11:18:11', 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `hms_doctor`
--

CREATE TABLE `hms_doctor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `fee` int(11) NOT NULL,
  `specialization` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hms_doctor`
--

INSERT INTO `hms_doctor` (`id`, `name`, `email`, `password`, `address`, `mobile`, `fee`, `specialization`) VALUES
(1, 'aa', 'ag.com', 'sfdg', 'fbd', '7897656467', 45673, 'lungs'),
(2, 'bb', 'bg.com', 'fgbg', 'ggn', '7897653467', 76573, 'heart'),
(2, 'bb', 'cg.com', 'gtyy', 'delhi', '7897876657', 12373, 'leg'),
(4, 'dd', 'dg.com', 'uyfh', 'fbd', '7896543242', 25373, 'oral');

-- --------------------------------------------------------

--
-- Table structure for table `hms_patients`
--

CREATE TABLE `hms_patients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `age` int(11) NOT NULL,
  `medical_history` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hms_patients`
--

INSERT INTO `hms_patients` (`id`, `name`, `email`, `password`, `gender`, `mobile`, `address`, `age`, `medical_history`) VALUES
(1, 'a', 'aaa.g.com', 'abc', 'male', '6555787765', 'fbd', 23, 'healthy'),
(2, 'b', 'bbb.g.com', 'xyz', 'male', '6432187765', 'fbd', 24, 'healthy'),
(3, 'c', 'ccc.g.com', 'pqr', 'female', '6434547545', 'delhi', 28, 'dengue'),
(4, 'd', 'ddd.g.com', 'lmn', 'male', '8555787765', 'ggn', 19, 'malaria');

-- --------------------------------------------------------

--
-- Table structure for table `hms_users`
--

CREATE TABLE `hms_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(64) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hms_users`
--

INSERT INTO `hms_users` (`id`, `first_name`, `last_name`, `email`, `password`, `role`) VALUES
(1, 'a', 'x', 'fgh.gm.com', '123', 'aa'),
(2, 'b', 'y', 'bg.com', '124', 'bb'),
(3, 'c', 'z', 'cg.com', '125', 'cc'),
(4, 'd', 'x', 'fgh.gm.com', '126', 'dd');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

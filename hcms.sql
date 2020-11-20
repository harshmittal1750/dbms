-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2020 at 06:38 AM
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
-- Database: `hcms`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` varchar(10) DEFAULT NULL,
  `login_role_id` varchar(100) DEFAULT NULL,
  `login_username` varchar(255) DEFAULT NULL,
  `user_password` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `login_role_id`, `login_username`, `user_password`) VALUES
('1', '1', 'aa', 'dsdDF'),
('2', '2', 'bb', 'efwrfw'),
('3', '3', 'cc', 'fgbbf');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mem_id` int(10) DEFAULT NULL,
  `mem_name` varchar(255) DEFAULT NULL,
  `mem_mobile` int(10) DEFAULT NULL,
  `mem_email` varchar(20) DEFAULT NULL,
  `mem_pass` varchar(20) DEFAULT NULL,
  `mem_add` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mem_id`, `mem_name`, `mem_mobile`, `mem_email`, `mem_pass`, `mem_add`) VALUES
(1, 'abc', 556678889, 'abc.com', 'fgfdfs', 'fbd'),
(2, 'bbc', 534524355, 'bbc.com', 'frfwfs', 'ggn'),
(3, 'cbc', 132344355, 'cbc.com', 'gdfgfa', 'delhi');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `per_id` int(12) DEFAULT NULL,
  `per_role_id` varchar(12) DEFAULT NULL,
  `per_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`per_id`, `per_role_id`, `per_name`) VALUES
(1, '1', '50kgs'),
(2, '2', '100kgs'),
(3, '3', '180kgs');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(10) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `role_desc` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`, `role_desc`) VALUES
(1, 'lifting', 'must not be used by people below 18'),
(2, 'power-lifting', 'must not be used by people below 21'),
(3, 'benchpress', 'must not be used by people below 16');

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `trnr_id` int(10) DEFAULT NULL,
  `trnr_mobile` int(12) DEFAULT NULL,
  `trnr_add` varchar(233) DEFAULT NULL,
  `trnr_email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`trnr_id`, `trnr_mobile`, `trnr_add`, `trnr_email`) VALUES
(1, 23456342, 'fbd', 'abc.com'),
(2, 23867565, 'ggn', 'bbc.com'),
(3, 23866985, 'ggn', 'cbc.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_mobile` int(10) DEFAULT NULL,
  `user_email` varchar(20) DEFAULT NULL,
  `user_pass` varchar(20) DEFAULT NULL,
  `user_add` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_mobile`, `user_email`, `user_pass`, `user_add`) VALUES
(1, 'ram', 673455432, 'ram.com', '456terf', 'fbd'),
(2, 'sham', 673654532, 'sham.com', '4h543f4', 'ggn'),
(3, 'ravi', 62322532, 'ravi.com', '34trwrf', 'delhi');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

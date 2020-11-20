-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2020 at 06:56 PM
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
-- Database: `srms_bhrigu_harsh_aditi`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `NAME` varchar(255) NOT NULL,
  `DEPT_NO` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`NAME`, `DEPT_NO`) VALUES
('ACADEMICS', 1),
('FEES', 4),
('INFRA', 5),
('SPORTS', 2);

-- --------------------------------------------------------

--
-- Table structure for table `detention`
--

CREATE TABLE `detention` (
  `DURATION` date DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `SUBJECT` varchar(20) DEFAULT NULL,
  `FEES` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detention`
--

INSERT INTO `detention` (`DURATION`, `NAME`, `SUBJECT`, `FEES`) VALUES
('2020-06-09', 'ADITI', 'JAVA', 4000),
('2020-02-03', 'BHRIGU', 'DBMS', 4000),
('2020-01-16', 'HARSH', NULL, 4000);

-- --------------------------------------------------------

--
-- Table structure for table `enrolled`
--

CREATE TABLE `enrolled` (
  `ROLL_NO` int(10) NOT NULL,
  `SUB_ID` int(10) DEFAULT NULL,
  `EXAM_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrolled`
--

INSERT INTO `enrolled` (`ROLL_NO`, `SUB_ID`, `EXAM_ID`) VALUES
(1074, 3, 1276),
(1065, 2, 5634),
(1082, 1, 5644);

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `EXAM_ID` int(10) NOT NULL,
  `YEAR` year(4) DEFAULT NULL,
  `SEM` int(10) DEFAULT NULL,
  `DEPT_NO` int(10) DEFAULT NULL,
  `SUB_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`EXAM_ID`, `YEAR`, `SEM`, `DEPT_NO`, `SUB_ID`) VALUES
(1276, 2023, 3, 1, 3),
(5634, 2022, 3, 2, 2),
(5644, 2022, 3, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `SUB_ID` int(10) NOT NULL,
  `GRADE` varchar(2) DEFAULT NULL,
  `DATE_PUBLISHED` date DEFAULT NULL,
  `EXAM_ID` int(10) DEFAULT NULL,
  `ROLL_NO` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`SUB_ID`, `GRADE`, `DATE_PUBLISHED`, `EXAM_ID`, `ROLL_NO`) VALUES
(1122, 'A+', '2020-03-12', 233, 1074),
(1154, 'A', '2019-05-12', 232, 1065),
(1124, 'O', '2020-07-11', 132, 1082);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ROLL_NO` int(12) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REG_NO` int(10) DEFAULT NULL,
  `CONTACT_NO` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ROLL_NO`, `NAME`, `REG_NO`, `CONTACT_NO`) VALUES
(1074, 'BHRIGU', 232, 123145645),
(1065, 'ADITI', 823, 543324545),
(1082, 'HARSH', 2312, 545424567);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `NAME` varchar(20) DEFAULT NULL,
  `SUB_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`NAME`, `SUB_ID`) VALUES
('DBMS', 1232),
('OOPS', 1233),
('CAO', 1234),
('FRENCH', 1235),
('PYTHON', 1246);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `TEACHER_ID` int(10) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `CONTACT_NO` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`TEACHER_ID`, `NAME`, `CONTACT_NO`) VALUES
(1, 'SHREYA.M', 231123312),
(2, 'JYOTI.P', 566453424),
(3, 'SNIGDHA', 566456434),
(4, 'HANU.B', 566434232);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`NAME`);

--
-- Indexes for table `detention`
--
ALTER TABLE `detention`
  ADD PRIMARY KEY (`NAME`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

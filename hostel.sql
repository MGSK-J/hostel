-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2021 at 03:57 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `mobileNo` varchar(10) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `father` varchar(200) DEFAULT NULL,
  `mother` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `nic` varchar(12) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`mobileNo`, `name`, `father`, `mother`, `email`, `address`, `nic`, `designation`, `status`) VALUES
('0714689230', 'Nimesha Kumari', 'Sampath Karunaweera', 'Nayani Ekanayake', 'nimesha@gmail.com', 'Kadugannawa,Kandy', '895634597V', 'Accounting and Budgeting', 'Working'),
('0718234254', 'Pradeep Kumar', 'Nishantha Kumara', 'Renuka De Silva', 'pradeep@gmail.com', 'Pilimathalawa,Kandy', '674937947V', 'Quality Control', 'Working');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `mobileNo` varchar(10) DEFAULT NULL,
  `month` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`mobileNo`, `month`, `amount`) VALUES
('0716745356', 'Aug-2021', '6000');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `mobileNo` varchar(10) DEFAULT NULL,
  `month` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`mobileNo`, `month`, `amount`) VALUES
('0718234254', 'Aug-2021', '20000'),
('0718234254', 'Aug-2021', '20000');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `number` varchar(10) NOT NULL,
  `activate` varchar(50) NOT NULL,
  `roomStatus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`number`, `activate`, `roomStatus`) VALUES
('01', 'yes', 'Booked'),
('02', 'Yes', 'Booked');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `mobileNo` varchar(10) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `father` varchar(200) DEFAULT NULL,
  `mother` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `college` varchar(100) DEFAULT NULL,
  `nic` varchar(12) DEFAULT NULL,
  `roomNo` varchar(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`mobileNo`, `name`, `father`, `mother`, `email`, `address`, `college`, `nic`, `roomNo`, `status`) VALUES
('0716745356', 'Dasuni Balasooriya', 'Konara Balasooriya', 'Kumari Ekanayake', 'dasuni@gmail.com', 'Kandy,SrilLanka', 'NIBM', '785467937V', '02', 'living');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`mobileNo`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`mobileNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

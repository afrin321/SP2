-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2021 at 04:27 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ap_sys`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `adminID` int(10) NOT NULL,
  `aEmail` varchar(30) NOT NULL,
  `aPassword` varchar(30) NOT NULL,
  `aStat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`adminID`, `aEmail`, `aPassword`, `aStat`) VALUES
(1, 'admin1@mail.com', '123', '');

-- --------------------------------------------------------

--
-- Table structure for table `appqueue`
--

CREATE TABLE `appqueue` (
  `appId` int(255) NOT NULL,
  `pid` int(255) NOT NULL,
  `pArrival` time(6) NOT NULL,
  `pComplete` time(6) NOT NULL,
  `pFee` varchar(255) NOT NULL,
  `pApStatus` varchar(255) NOT NULL,
  `pQueue` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appqueue`
--

INSERT INTO `appqueue` (`appId`, `pid`, `pArrival`, `pComplete`, `pFee`, `pApStatus`, `pQueue`) VALUES
(14, 1, '00:00:00.000000', '00:00:00.000000', 'Unpaid', 'Default', 1),
(5, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(26, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(5, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 2),
(5, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 3),
(26, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 2),
(10, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(14, 1, '00:00:00.000000', '00:00:00.000000', 'Unpaid', 'Default', 2),
(40, 1, '00:00:00.000000', '00:00:00.000000', 'Unpaid', 'Default', 1),
(26, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 3),
(10, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 2),
(11, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(5, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 4),
(10, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 3),
(48, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(14, 2, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 3),
(8, 2, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(14, 2, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 4),
(26, 3, '00:00:00.000000', '00:00:00.000000', 'Unpaid', 'Default', 4),
(10, 3, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 4),
(10, 3, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 3),
(10, 3, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 4);

-- --------------------------------------------------------

--
-- Table structure for table `conscredentials`
--

CREATE TABLE `conscredentials` (
  `consId` int(10) NOT NULL,
  `consPw` varchar(50) NOT NULL,
  `confirmconsPw` varchar(50) NOT NULL,
  `stat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conscredentials`
--

INSERT INTO `conscredentials` (`consId`, `consPw`, `confirmconsPw`, `stat`) VALUES
(72, '12345', '12345', 'initial'),
(74, '12345', '12345', 'initial');

-- --------------------------------------------------------

--
-- Table structure for table `patientreg`
--

CREATE TABLE `patientreg` (
  `patient_Id` int(255) NOT NULL,
  `p_firstName` varchar(255) NOT NULL,
  `p_lastName` varchar(255) NOT NULL,
  `p_email` varchar(255) NOT NULL,
  `p_phone` varchar(20) NOT NULL,
  `p_zipcode` varchar(255) NOT NULL,
  `p_city` varchar(255) NOT NULL,
  `p_address` varchar(255) NOT NULL,
  `p_dob` date NOT NULL,
  `p_gender` varchar(255) NOT NULL,
  `p_pw` varchar(255) NOT NULL,
  `p_flagStat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientreg`
--

INSERT INTO `patientreg` (`patient_Id`, `p_firstName`, `p_lastName`, `p_email`, `p_phone`, `p_zipcode`, `p_city`, `p_address`, `p_dob`, `p_gender`, `p_pw`, `p_flagStat`) VALUES
(1, 'a', 'a', 'a@a.com', '1', '1', 'Dhaka', 'asdgh', '1990-01-01', 'male', '1', 'false'),
(2, 'a', 'a', 'a@a.com', '1', '1', 'Dhaka', 'asdgh', '1990-01-01', 'male', '1', 'false'),
(3, 'a', 'a', 'a@a.com', '1', '1', 'Dhaka', 'asdgh', '1990-01-01', 'male', '1', 'false'),
(4, 'a', 'a', 'a@a.com', '1', '1', 'Dhaka', 'GHJKL', '1990-01-01', 'male', '1', 'false'),
(5, 'a', 'a', 'a@a.com', '1', '1', 'Dhaka', 'GHJKL', '1990-01-01', 'male', '1', 'false'),
(6, 'a', 'a', 'a@a.com', '1', '1', 'Dhaka', 'GHJKL', '1990-01-01', 'male', '1', 'false'),
(7, 'a', 'a', 'a@a.com', '1', '1', 'Dhaka', 'GHJKL', '1990-01-01', 'male', '1', 'false'),
(8, 'a', 'a', 'a@a.com', '1', '1', 'Dhaka', 'GHJKL', '1990-01-01', 'male', '1', 'false'),
(9, 'a', 'a', 'a@a.com', '2', '1', 'Dhaka', 'fghjk', '1990-11-11', 'male', '1', 'false'),
(10, 'a', 'a', 'a@a.com', '2', '1', 'Dhaka', 'fghjk', '1990-11-11', 'male', '1', 'false'),
(11, 'a', 'a', 'a@a.com', '2', '1', 'Dhaka', 'fghjk', '1990-11-11', 'male', '1', 'false'),
(12, 'a', 'a', 'a@a.com', '1', '1', 'Dhaka', 'sdfghj', '1990-01-01', 'female', '1', 'false'),
(13, 'a', 'a', 'a@a.com', '1', '1', 'Dhaka', 'dfghj', '0001-01-01', 'male', '1', 'false'),
(14, 'A', 'A', 'a@a.com', '1', '1', 'Dhaka', 'fghjkl', '1990-01-01', 'male', '1', 'false'),
(15, 'a', 'a', 'a@a.com', '1', '1', 'Dhaka', 'vbnm', '1990-01-01', 'female', '1', 'false'),
(16, 'a', 'a', 'a@a.com', '1', '1', 'Dhaka', 'vbnm', '1990-01-01', 'female', '1', 'false'),
(17, 'afrin', 'h', 'a@a.com', '1', '1', 'Dhaka', 'sdg', '1990-01-01', 'male', '1', 'false'),
(18, 'a', 'a', 'a@a.com', '1', '1', 'Dhaka', 'asdfghj', '1990-01-01', 'female', '1', 'false'),
(19, 'a', 'a', 'a@a.com', '1', '1', 'Dhaka', 'asdfgh', '1990-01-01', 'male', '1', 'false'),
(20, 'a', 'a', 'a@a.com', '1', '1', 'Dhaka', 'bnm', '1990-01-01', 'male', '1', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `queueinitialize`
--

CREATE TABLE `queueinitialize` (
  `queueId` int(250) NOT NULL,
  `queueDate` date NOT NULL,
  `queueSlotId` varchar(250) NOT NULL,
  `queueCurQuantity` int(250) NOT NULL,
  `queueMax` int(250) NOT NULL,
  `queueStatus` varchar(250) NOT NULL,
  `queueStart` date NOT NULL,
  `queueEnd` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `queueinitialize`
--

INSERT INTO `queueinitialize` (`queueId`, `queueDate`, `queueSlotId`, `queueCurQuantity`, `queueMax`, `queueStatus`, `queueStart`, `queueEnd`) VALUES
(1, '0000-00-00', '1', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(2, '0000-00-00', '4', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(3, '0000-00-00', '6', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(4, '2021-01-22', '4', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(5, '2021-01-24', '1', 4, 0, 'Active', '0000-00-00', '0000-00-00'),
(6, '2021-01-31', '1', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(7, '2021-02-07', '1', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(8, '2021-02-14', '1', 1, 0, 'Active', '0000-00-00', '0000-00-00'),
(9, '2021-01-18', '2', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(10, '2021-01-25', '2', 4, 0, 'Active', '0000-00-00', '0000-00-00'),
(11, '2021-02-01', '2', 1, 0, 'Active', '0000-00-00', '0000-00-00'),
(12, '2021-02-08', '2', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(13, '2021-01-21', '6', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(14, '2021-01-28', '6', 4, 0, 'Active', '0000-00-00', '0000-00-00'),
(15, '2021-02-04', '6', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(16, '2021-02-11', '6', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(17, '2021-02-21', '1', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(18, '2021-02-28', '1', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(19, '2021-03-07', '1', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(20, '2021-03-14', '1', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(21, '2021-02-18', '6', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(22, '2021-02-25', '6', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(23, '2021-03-04', '6', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(24, '2021-03-11', '6', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(25, '2021-01-22', '5', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(26, '2021-01-29', '5', 3, 0, 'Active', '0000-00-00', '0000-00-00'),
(27, '2021-02-05', '5', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(28, '2021-02-12', '5', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(29, '2021-02-19', '5', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(30, '2021-02-26', '5', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(31, '2021-03-05', '5', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(32, '2021-03-12', '5', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(34, '2021-02-15', '2', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(35, '2021-02-22', '2', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(36, '2021-03-01', '2', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(37, '2021-03-08', '2', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(38, '2021-03-15', '2', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(39, '2021-03-18', '6', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(40, '2021-01-29', '4', 1, 0, 'Active', '0000-00-00', '0000-00-00'),
(41, '2021-02-05', '4', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(42, '2021-02-12', '4', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(43, '2021-03-19', '5', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(44, '2021-02-19', '4', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(45, '2021-02-26', '4', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(46, '2021-03-05', '4', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(47, '2021-03-12', '4', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(48, '2021-03-19', '4', 1, 0, 'Active', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `slot`
--

CREATE TABLE `slot` (
  `slot_id` int(25) NOT NULL,
  `slot_day` varchar(25) NOT NULL,
  `slot_start_time` time(6) NOT NULL,
  `slot_end_time` time(6) NOT NULL,
  `slot_maxAllowed` varchar(50) NOT NULL,
  `slot_location` varchar(255) NOT NULL,
  `slot_permission` varchar(25) NOT NULL,
  `slot_consId` varchar(255) NOT NULL,
  `slot_Status` varchar(25) NOT NULL,
  `slot_fee` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slot`
--

INSERT INTO `slot` (`slot_id`, `slot_day`, `slot_start_time`, `slot_end_time`, `slot_maxAllowed`, `slot_location`, `slot_permission`, `slot_consId`, `slot_Status`, `slot_fee`) VALUES
(1, 'sunday', '08:00:00.000000', '11:00:00.000000', '10', '12', 'yes', '73', 'active', 500),
(2, 'monday', '08:00:00.000000', '11:00:00.000000', '10', '12', 'yes', '73', 'active', 500),
(3, 'thursday', '15:00:00.000000', '18:00:00.000000', '12', '1', 'on', '64', 'active', 500),
(4, 'friday', '13:00:00.000000', '15:00:00.000000', '8', '1', 'yes', '73', 'active', 500),
(5, 'friday', '08:00:00.000000', '17:00:00.000000', '50', '33', 'false', '59', 'active', 500),
(6, 'thursday', '15:00:00.000000', '18:00:00.000000', '10', '300', 'false', '74', 'active', 500);

-- --------------------------------------------------------

--
-- Table structure for table `syscons`
--

CREATE TABLE `syscons` (
  `ConsID` int(8) NOT NULL,
  `consName` varchar(50) NOT NULL,
  `consDept` varchar(50) NOT NULL,
  `consPhoneNo` int(50) NOT NULL,
  `consEmail` varchar(255) NOT NULL,
  `consAddrs` varchar(500) NOT NULL,
  `consDOB` varchar(20) NOT NULL,
  `consQual` varchar(500) NOT NULL,
  `consExp` varchar(500) NOT NULL,
  `consDaysAvail` varchar(500) NOT NULL,
  `consPhoto` varchar(500) NOT NULL,
  `deptId` int(10) NOT NULL,
  `consStat` varchar(50) NOT NULL,
  `consType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `syscons`
--

INSERT INTO `syscons` (`ConsID`, `consName`, `consDept`, `consPhoneNo`, `consEmail`, `consAddrs`, `consDOB`, `consQual`, `consExp`, `consDaysAvail`, `consPhoto`, `deptId`, `consStat`, `consType`) VALUES
(1, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(2, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(3, 'aa', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(4, 'aa', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(5, 'aa', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(6, 'q', 'Family Medicine', 1, 'A@A.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(7, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(8, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(9, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(10, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(11, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(12, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(13, '1', 'Family Medicine', 1, 'a2@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(14, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(15, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(16, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(17, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(18, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(19, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(20, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(21, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(22, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(23, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(24, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(25, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(26, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(27, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(28, '1', 'Family Medicine', 1, 'a22@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(29, '1', 'Family Medicine', 1, 'a22@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(30, '1', 'Family Medicine', 1, 'a22@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(31, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(32, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 0, '', ''),
(33, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 1, '', ''),
(34, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 1, '', ''),
(35, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 1, '', ''),
(36, '1', 'Family Medicine', 1, 'aa@ff.com', '1', '1990-01-01', '1', '1', '1', '', 1, '', ''),
(37, '1', 'Family Medicine', 1, 'aa@ff.com', '1', '1990-01-01', '1', '1', '1', '', 1, '', ''),
(38, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 1, '', ''),
(39, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 1, '', ''),
(40, '1', 'Family Medicine', 1, 'a@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(41, '1', 'Family Medicine', 1, 'a@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(42, '1', 'Family Medicine', 1, 'ne@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(43, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(44, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(45, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(46, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(47, '1', 'Cardiology', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '', 2, '', ''),
(48, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(49, '1', 'Cardiology', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '', 2, '', ''),
(50, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(51, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(52, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(53, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(54, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(55, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(56, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(57, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(58, '1', 'Family Medicine', 1, 'fgh@fghj.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(59, 'mary', 'Family Medicine', 1111, 'mary@g.com', '111', '1990-01-01', '1', '1', '1', '', 1, '', ''),
(60, 'afrin', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '', 1, '', ''),
(61, '1', 'Family Medicine', 1, 'a@s.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(62, '1', 'Family Medicine', 1, 'a@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/illustration style.jpg', 1, '', ''),
(63, 'ovi', 'Family Medicine', 1, 'ovi@g.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(64, '1', 'Family Medicine', 1, 'a@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(65, '1', 'Family Medicine', 1, 'a@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(66, '1', 'Family Medicine', 1, 'd@d.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(67, '1', 'Family Medicine', 1, 'a@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(68, '1', 'Family Medicine', 1, 'a@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(69, '1', 'Family Medicine', 1, 'a@sa.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(70, '1', 'Family Medicine', 1, 'a@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(71, '1', 'Family Medicine', 1, 'a@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(72, '1', 'Family Medicine', 1, 'a@a.com', '11', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(73, 'afrin haq', 'Family Medicine', 1111, 'afrin@a.com', '1', '0001-01-01', '1', '1', '1', '', 1, '', ''),
(74, '1', 'Family Medicine', 0, 'a@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/illustration style.jpg', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sysdept`
--

CREATE TABLE `sysdept` (
  `deptID` int(5) NOT NULL,
  `deptName` varchar(20) NOT NULL,
  `deptTotal` int(100) NOT NULL,
  `deptStat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sysdept`
--

INSERT INTO `sysdept` (`deptID`, `deptName`, `deptTotal`, `deptStat`) VALUES
(1, 'Family Medicine', 0, 'Active'),
(2, 'Cardiology', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `conscredentials`
--
ALTER TABLE `conscredentials`
  ADD PRIMARY KEY (`consId`);

--
-- Indexes for table `patientreg`
--
ALTER TABLE `patientreg`
  ADD PRIMARY KEY (`patient_Id`);

--
-- Indexes for table `queueinitialize`
--
ALTER TABLE `queueinitialize`
  ADD PRIMARY KEY (`queueId`,`queueDate`,`queueSlotId`);

--
-- Indexes for table `slot`
--
ALTER TABLE `slot`
  ADD PRIMARY KEY (`slot_id`);

--
-- Indexes for table `syscons`
--
ALTER TABLE `syscons`
  ADD PRIMARY KEY (`ConsID`);

--
-- Indexes for table `sysdept`
--
ALTER TABLE `sysdept`
  ADD PRIMARY KEY (`deptID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `adminID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patientreg`
--
ALTER TABLE `patientreg`
  MODIFY `patient_Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `queueinitialize`
--
ALTER TABLE `queueinitialize`
  MODIFY `queueId` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `slot`
--
ALTER TABLE `slot`
  MODIFY `slot_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `syscons`
--
ALTER TABLE `syscons`
  MODIFY `ConsID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `sysdept`
--
ALTER TABLE `sysdept`
  MODIFY `deptID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2021 at 02:38 AM
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
(10, 3, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 4),
(10, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 5),
(26, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 4),
(34, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(6, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(7, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(7, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 2),
(39, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(51, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(56, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(56, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 2),
(51, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 2),
(56, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 3),
(67, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(67, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 2),
(67, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 3),
(51, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 3),
(69, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(67, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 4),
(69, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 2),
(69, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 2),
(51, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 4),
(76, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(67, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 5),
(67, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 6),
(67, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 7),
(67, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 8),
(67, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 8),
(67, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 9),
(68, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(90, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(90, 2, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 2),
(91, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(91, 2, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 2),
(7, 2, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 2),
(53, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(76, 1, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 2),
(99, 2, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(103, 2, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(104, 2, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(104, 22, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 2),
(105, 2, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Cancelled', 1),
(105, 22, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Cancelled', 2),
(70, 2, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(107, 2, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Cancelled', 1),
(78, 2, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(106, 2, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(55, 2, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 1),
(106, 2, '00:00:00.000000', '00:00:00.000000', 'Paid', 'Default', 2);

-- --------------------------------------------------------

--
-- Table structure for table `attslot`
--

CREATE TABLE `attslot` (
  `at_s_id` int(255) NOT NULL,
  `slot_id` int(255) NOT NULL,
  `att_id` int(255) NOT NULL,
  `temp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attslot`
--

INSERT INTO `attslot` (`at_s_id`, `slot_id`, `att_id`, `temp`) VALUES
(2, 18, 1, ''),
(3, 1, 2, ''),
(4, 42, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `att_info`
--

CREATE TABLE `att_info` (
  `att_id` int(11) NOT NULL,
  `att_fn` varchar(255) NOT NULL,
  `att_ln` varchar(255) NOT NULL,
  `att_dob` date NOT NULL,
  `att_gen` varchar(255) NOT NULL,
  `att_pno` int(255) NOT NULL,
  `att_em` varchar(255) NOT NULL,
  `att_qdet` varchar(255) NOT NULL,
  `att_photo` varchar(255) NOT NULL,
  `att_pw` varchar(255) NOT NULL,
  `att_stat` varchar(255) NOT NULL,
  `att_pos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `att_info`
--

INSERT INTO `att_info` (`att_id`, `att_fn`, `att_ln`, `att_dob`, `att_gen`, `att_pno`, `att_em`, `att_qdet`, `att_photo`, `att_pw`, `att_stat`, `att_pos`) VALUES
(1, 'amina', 'ss', '1990-01-02', 'Female', 1199110010, 'amina@gmail.com', 'Graduate', '', '', 'Active', ''),
(2, 'karim', 'k', '1990-01-02', 'Male', 1444410010, 'karimk@gmail.com', 'Graduate', '', '', 'Active', ''),
(3, 'hh', 'hh', '1990-01-02', 'Female', 34567, 'hh@h.com', 'ghhh', '', '', 'Active', ''),
(4, 'hh', 'hh', '1990-01-02', 'Female', 34567, 'hh@h.com', 'ghhh', '', '', 'Active', ''),
(5, 'hall', 'hjs', '1990-01-02', 'Female', 5678, 'f@hj.com', 'gh', '', '', 'Active', ''),
(6, 'hall', 'hjs', '1990-01-02', 'Female', 5678, 'f@hj.com', 'gh', '', '', 'Active', ''),
(7, 'fghj', 'rtyu', '1990-09-07', 'Male', 56789, 'a@a.com', 'vbn', '', '', 'Active', ''),
(8, 'fgh', 'ghj', '0009-09-08', 'Female', 5678, 'a@a.com', 'ghj', '', '', 'Active', ''),
(9, 'ghj', 'ghj', '0009-02-04', 'Female', 89, 'ggj@ou.com', 'ghj', '', '', 'Active', ''),
(10, 'ghj', 'ghj', '0009-02-04', 'Female', 89, 'ggj@ou.com', 'ghj', '', '', 'Active', ''),
(11, 'fghk', 'hjk', '0008-08-07', 'Female', 4567, 'a@a.com', 'tyui', '', '', 'Active', ''),
(12, 'fgh', 'fgh', '0005-06-05', 'Female', 45678, 'a@a.com', 'fghj', '', '', 'Active', ''),
(20, 'ghj', 'vbh', '0008-08-08', 'Other', 45678, 'a@a.com', 'edfghj', '', '', 'Active', ''),
(21, 'dfgh', 'fgh', '0007-07-07', 'Female', 5678, 'f@h.com', 'dfgh', '', '', 'Active', ''),
(22, 'dfgh', 'fgh', '0007-07-07', 'Female', 5678, 'f@h.com', 'dfgh', '', '', 'Active', ''),
(23, 'aaaa', 'bbbb', '0006-06-06', 'Male', 45678, 'f@h.com', 'dfgh', '', '', 'Active', ''),
(24, 'hjk', 'hj', '0001-11-01', 'Male', 1, 'j@j.com', 'hj', '', '', 'Active', ''),
(25, 'hj', 'h', '0009-09-09', 'Female', 999, 'bnm@ss.com', 'ghj', '', '', 'Active', ''),
(26, 'ghj', 'hj', '0001-01-01', 'Female', 1, 'a@a.com', 'bnm', '', '', 'Active', ''),
(27, 'a', 'a', '0001-01-01', 'Male', 1, 'a@a.com', 'b', '', '', 'Active', ''),
(28, 'a', 'a', '0001-01-01', 'Male', 1, 'a@a.com', 'b', '', '', 'Active', ''),
(29, 'a', 'a', '0001-01-01', 'Male', 1, '1@a.com', '1', '', '', 'Active', ''),
(30, 'a', 'a', '0001-01-01', 'Male', 1, '1@a.com', '1', '', '', 'Active', ''),
(31, 'q', 'q', '0002-01-01', 'Male', 1, 'q@q.com', 'q', '', '', 'Active', ''),
(32, 'q', 'q', '0001-01-01', 'Male', 1, 'q@q.com', 'q', '', '', 'Active', ''),
(33, 'ggg', 'ggg', '0005-05-05', 'Female', 5678, 'a@a.com', 'th', '', '', 'Active', ''),
(34, 'ghjj', 'ghj', '0008-06-06', 'Male', 6789, 'a@a.com', 'ghjk', '', '', 'Active', ''),
(35, 'sdfgh', 'rtyu', '0004-03-09', 'Male', 5678, 'a@q.com', 'fgh', '', '', 'Active', ''),
(36, 'sadia', 'islaam', '1990-01-02', 'Female', 1111, 'sad@gmail.com', 'Graduate', '', '', 'Active', ''),
(37, 'Sana', 'Amir', '0001-01-01', 'Female', 1111, 'sana@g.com', 'Graduate', '', '', 'Active', ''),
(38, 'Ahad', 'M', '1990-01-02', 'Male', 1111, 'ahad@gmail.com', 'Graduate', '', '', 'Active', ''),
(39, 'Sophie', 'K', '1990-01-02', 'Female', 1111, 'Sophie@ss.com', 'Graduate', '', '', 'Active', ''),
(40, 'Rahim', 'K', '1990-01-02', 'Male', 1111, 'RAHIM@GMAIL.COM', 'Graduate', '', '56789', 'Active', '');

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
(3, '12345', '12345', 'initial'),
(59, '12345', '12345', 'initial'),
(72, '12345', '12345', 'initial'),
(74, '12345', '12345', 'initial'),
(75, '12345', '12345', 'initial');

-- --------------------------------------------------------

--
-- Table structure for table `doctorarrival`
--

CREATE TABLE `doctorarrival` (
  `qid` int(255) NOT NULL,
  `doctor_arrival_stat` varchar(255) NOT NULL,
  `arrival_time` time(6) NOT NULL,
  `cur_in_queue` varchar(255) NOT NULL,
  `next_in_queue` varchar(255) NOT NULL,
  `late_possibility` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctorarrival`
--

INSERT INTO `doctorarrival` (`qid`, `doctor_arrival_stat`, `arrival_time`, `cur_in_queue`, `next_in_queue`, `late_possibility`) VALUES
(76, 'Arrived', '00:00:00.000000', 'Default', 'Default', '22'),
(16, 'Default', '00:00:00.000000', 'Default', 'Default', 'Default'),
(8, 'Default', '00:00:00.000000', 'Default', 'Default', 'Default'),
(90, 'Default', '00:00:00.000000', 'Default', 'Default', 'Default'),
(53, 'Default', '00:00:00.000000', 'Default', 'Default', 'Default'),
(77, 'Default', '00:00:00.000000', 'Default', 'Default', 'Default'),
(103, 'Default', '00:00:00.000000', 'Default', 'Default', 'Default'),
(104, 'Default', '00:00:00.000000', 'Default', 'Default', 'Default'),
(55, 'Default', '00:00:00.000000', 'Default', 'Default', 'Default'),
(106, 'Default', '00:00:00.000000', 'Default', 'Default', 'Default'),
(113, 'Default', '00:00:00.000000', 'Default', 'Default', 'Default'),
(111, 'Default', '00:00:00.000000', 'Default', 'Default', 'Default'),
(112, 'Default', '00:00:00.000000', 'Default', 'Default', 'Default');

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
(20, 'a', 'a', 'a@a.com', '1', '1', 'Dhaka', 'bnm', '1990-01-01', 'male', '1', 'false'),
(21, 'afro', 'pp', 'afro@gg.com', '12345678', '4567', 'Dhaka', '456fghv\nhjkn\nhj', '1990-01-02', 'female', '1', 'false'),
(22, 'soso', 'pp', 'soso@gg.com', '56789', '56789', 'Dhaka', 'fghjkl\ndf\nsdf', '1990-01-08', 'male', '1', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `patient_payment`
--

CREATE TABLE `patient_payment` (
  `pid` int(255) NOT NULL,
  `deb` float NOT NULL,
  `cre` float NOT NULL,
  `balance` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_payment`
--

INSERT INTO `patient_payment` (`pid`, `deb`, `cre`, `balance`) VALUES
(2, 500, 500, 0),
(5, 0, 0, 0),
(22, 500, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pnotify`
--

CREATE TABLE `pnotify` (
  `n_id` int(255) NOT NULL,
  `pid` int(255) NOT NULL,
  `n_date` date NOT NULL,
  `msg` longtext NOT NULL,
  `openStat` varchar(255) NOT NULL,
  `title` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pnotify`
--

INSERT INTO `pnotify` (`n_id`, `pid`, `n_date`, `msg`, `openStat`, `title`) VALUES
(1, 2, '0000-00-00', 'Dear valued Client, your Appointment on 2021-02-25 has been cancelled due to National Holiday. Your payment has been refunded.	\r\n								- Hospital Management', 'seen', ''),
(2, 22, '0000-00-00', 'Dear valued Client, your Appointment on 2021-02-25 has been cancelled due to National Holiday. Your payment has been refunded.	\r\n								- Hospital Management', 'unseen', ''),
(3, 1, '0000-00-00', 'Dear valued Client, your Appointment on 2021-03-24 has been cancelled due to National Holiday. Your payment has been refunded.	\r\n								- Hospital Management', 'seen', ''),
(4, 2, '0000-00-00', 'Dear valued Client, your Appointment on 2021-03-24 has been cancelled due to National Holiday. Your payment has been refunded.	\r\n								- Hospital Management', 'seen', ''),
(5, 2, '0000-00-00', 'Dear valued Client, your Appointment on 2021-03-11 has been cancelled due to National Holiday. Your payment has been refunded.	\r\n								- Hospital Management', 'seen', ''),
(6, 2, '0000-00-00', 'Dear valued Client, your Appointment on 2021-02-24 has been cancelled due to National Holiday. Your payment has been refunded.	\r\n								- Hospital Management', 'seen', ''),
(7, 2, '0000-00-00', 'Dear valued Client, your Appointment on 2021-03-04 has been cancelled due to National Holiday. Your payment has been refunded.	\r\n								- Hospital Management', 'seen', ''),
(8, 2, '0000-00-00', 'Dear valued Client, your Appointment on 2021-02-24 has been cancelled due to National Holiday. Your payment has been refunded.	\r\n								- Hospital Management', 'seen', ''),
(9, 2, '0000-00-00', 'Dear valued Client, your Appointment on 2021-02-25 has been cancelled due to National Holiday. Your payment has been refunded.	\r\n								- Hospital Management', 'seen', ''),
(10, 22, '0000-00-00', 'Dear valued Client, your Appointment on 2021-02-25 has been cancelled due to National Holiday. Your payment has been refunded.	\r\n								- Hospital Management', 'unseen', ''),
(11, 2, '0000-00-00', 'Dear valued Client, your Appointment on 2021-03-11 has been cancelled due to National Holiday. Your payment has been refunded.	\r\n								- Hospital Management', 'seen', 'Cancelled Appointment');

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
(7, '2021-02-07', '1', 2, 0, 'Active', '0000-00-00', '0000-00-00'),
(8, '2021-02-14', '1', 1, 0, 'Active', '0000-00-00', '0000-00-00'),
(9, '2021-01-18', '2', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(10, '2021-01-25', '2', 5, 0, 'Active', '0000-00-00', '0000-00-00'),
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
(22, '2021-02-25', '6', 0, 0, 'Cancelled', '0000-00-00', '0000-00-00'),
(23, '2021-03-04', '6', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(24, '2021-03-11', '6', 0, 0, 'Cancelled', '0000-00-00', '0000-00-00'),
(25, '2021-01-22', '5', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(26, '2021-01-29', '5', 4, 0, 'Active', '0000-00-00', '0000-00-00'),
(27, '2021-02-05', '5', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(28, '2021-02-12', '5', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(29, '2021-02-19', '5', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(30, '2021-02-26', '5', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(31, '2021-03-05', '5', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(32, '2021-03-12', '5', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(34, '2021-02-15', '2', 1, 0, 'Active', '0000-00-00', '0000-00-00'),
(35, '2021-02-22', '2', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(36, '2021-03-01', '2', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(37, '2021-03-08', '2', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(38, '2021-03-15', '2', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(39, '2021-03-18', '6', 1, 0, 'Active', '0000-00-00', '0000-00-00'),
(40, '2021-01-29', '4', 1, 0, 'Active', '0000-00-00', '0000-00-00'),
(41, '2021-02-05', '4', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(42, '2021-02-12', '4', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(43, '2021-03-19', '5', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(44, '2021-02-19', '4', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(45, '2021-02-26', '4', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(46, '2021-03-05', '4', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(47, '2021-03-12', '4', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(48, '2021-03-19', '4', 1, 0, 'Active', '0000-00-00', '0000-00-00'),
(49, '2021-03-21', '1', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(50, '2021-03-22', '2', 0, 0, 'Active', '0000-00-00', '0000-00-00'),
(51, '2021-01-30', '18', 4, 16, 'Active', '0000-00-00', '0000-00-00'),
(52, '2021-02-06', '18', 0, 16, 'Active', '0000-00-00', '0000-00-00'),
(53, '2021-02-13', '18', 1, 16, 'Active', '0000-00-00', '0000-00-00'),
(54, '2021-02-20', '18', 0, 16, 'Cancelled', '0000-00-00', '0000-00-00'),
(55, '2021-02-27', '18', 1, 16, 'Active', '0000-00-00', '0000-00-00'),
(56, '2021-03-06', '18', 3, 16, 'Active', '0000-00-00', '0000-00-00'),
(57, '2021-03-13', '18', 0, 16, 'Active', '0000-00-00', '0000-00-00'),
(58, '2021-03-20', '18', 0, 16, 'Active', '0000-00-00', '0000-00-00'),
(59, '2021-02-01', '17', 0, 12, 'Active', '0000-00-00', '0000-00-00'),
(60, '2021-02-08', '17', 0, 12, 'Active', '0000-00-00', '0000-00-00'),
(61, '2021-02-15', '17', 0, 12, 'Active', '0000-00-00', '0000-00-00'),
(62, '2021-02-22', '17', 0, 12, 'Active', '0000-00-00', '0000-00-00'),
(63, '2021-03-01', '17', 0, 12, 'Cancelled', '0000-00-00', '0000-00-00'),
(64, '2021-03-08', '17', 0, 12, 'Active', '0000-00-00', '0000-00-00'),
(65, '2021-03-15', '17', 0, 12, 'Active', '0000-00-00', '0000-00-00'),
(66, '2021-03-22', '17', 0, 12, 'Active', '0000-00-00', '0000-00-00'),
(67, '2021-02-03', '23', 9, 10, 'Active', '0000-00-00', '0000-00-00'),
(68, '2021-02-10', '23', 1, 10, 'Active', '0000-00-00', '0000-00-00'),
(69, '2021-02-17', '23', 2, 10, 'Active', '0000-00-00', '0000-00-00'),
(70, '2021-02-24', '23', 1, 10, 'Cancelled', '0000-00-00', '0000-00-00'),
(71, '2021-03-03', '23', 0, 10, 'Active', '0000-00-00', '0000-00-00'),
(72, '2021-03-10', '23', 0, 10, 'Active', '0000-00-00', '0000-00-00'),
(73, '2021-03-17', '23', 0, 10, 'Active', '0000-00-00', '0000-00-00'),
(74, '2021-03-24', '23', 0, 10, 'Cancelled', '0000-00-00', '0000-00-00'),
(75, '2021-02-03', '19', 0, 10, 'Active', '0000-00-00', '0000-00-00'),
(76, '2021-02-10', '19', 2, 10, 'Active', '0000-00-00', '0000-00-00'),
(77, '2021-02-17', '19', 0, 10, 'Cancelled', '0000-00-00', '0000-00-00'),
(78, '2021-02-24', '19', 1, 10, 'Cancelled', '0000-00-00', '0000-00-00'),
(79, '2021-03-03', '19', 0, 10, 'Active', '0000-00-00', '0000-00-00'),
(80, '2021-03-10', '19', 0, 10, 'Active', '0000-00-00', '0000-00-00'),
(81, '2021-03-17', '19', 0, 10, 'Active', '0000-00-00', '0000-00-00'),
(82, '2021-03-24', '19', 0, 10, 'Cancelled', '0000-00-00', '0000-00-00'),
(83, '2021-02-03', '40', 0, 10, 'Active', '0000-00-00', '0000-00-00'),
(84, '2021-02-10', '40', 0, 10, 'Active', '0000-00-00', '0000-00-00'),
(85, '2021-02-17', '40', 0, 10, 'Cancelled', '0000-00-00', '0000-00-00'),
(86, '2021-02-24', '40', 0, 10, 'Cancelled', '0000-00-00', '0000-00-00'),
(87, '2021-03-03', '40', 0, 10, 'Active', '0000-00-00', '0000-00-00'),
(88, '2021-03-10', '40', 0, 10, 'Active', '0000-00-00', '0000-00-00'),
(89, '2021-03-17', '40', 0, 10, 'Active', '0000-00-00', '0000-00-00'),
(90, '2021-03-24', '40', 2, 10, 'Active', '0000-00-00', '0000-00-00'),
(91, '2021-02-06', '7', 2, 20, 'Active', '0000-00-00', '0000-00-00'),
(92, '2021-02-13', '7', 0, 20, 'Active', '0000-00-00', '0000-00-00'),
(93, '2021-02-20', '7', 0, 20, 'Cancelled', '0000-00-00', '0000-00-00'),
(94, '2021-02-27', '7', 0, 20, 'Active', '0000-00-00', '0000-00-00'),
(95, '2021-03-29', '2', 0, 10, 'Active', '0000-00-00', '0000-00-00'),
(96, '2021-03-27', '18', 0, 16, 'Active', '0000-00-00', '0000-00-00'),
(97, '2021-04-03', '18', 0, 16, 'Active', '0000-00-00', '0000-00-00'),
(98, '2021-03-31', '19', 0, 10, 'Active', '0000-00-00', '0000-00-00'),
(99, '2021-02-08', '41', 1, 25, 'Active', '0000-00-00', '0000-00-00'),
(100, '2021-02-15', '41', 0, 25, 'Active', '0000-00-00', '0000-00-00'),
(101, '2021-02-22', '41', 0, 25, 'Active', '0000-00-00', '0000-00-00'),
(102, '2021-03-01', '41', 0, 25, 'Cancelled', '0000-00-00', '0000-00-00'),
(103, '2021-02-11', '42', 1, 25, 'Active', '0000-00-00', '0000-00-00'),
(104, '2021-02-18', '42', 2, 25, 'Active', '0000-00-00', '0000-00-00'),
(105, '2021-02-25', '42', 2, 25, 'Cancelled', '0000-00-00', '0000-00-00'),
(106, '2021-03-04', '42', 2, 25, 'Active', '0000-00-00', '0000-00-00'),
(107, '2021-03-11', '42', 1, 25, 'Cancelled', '0000-00-00', '0000-00-00'),
(108, '2021-03-31', '23', 0, 10, 'Active', '0000-00-00', '0000-00-00'),
(109, '2021-04-07', '23', 0, 10, 'Active', '0000-00-00', '0000-00-00'),
(110, '2021-04-14', '23', 0, 10, 'Active', '0000-00-00', '0000-00-00'),
(111, '2021-03-18', '42', 0, 25, 'Active', '0000-00-00', '0000-00-00'),
(112, '2021-03-25', '42', 0, 25, 'Active', '0000-00-00', '0000-00-00'),
(113, '2021-04-01', '42', 0, 25, 'Active', '0000-00-00', '0000-00-00'),
(114, '2021-04-08', '42', 0, 25, 'Active', '0000-00-00', '0000-00-00'),
(115, '2021-04-07', '19', 0, 10, 'Active', '0000-00-00', '0000-00-00'),
(116, '2021-04-14', '19', 0, 10, 'Active', '0000-00-00', '0000-00-00'),
(117, '2021-04-10', '18', 0, 16, 'Active', '0000-00-00', '0000-00-00'),
(118, '2021-04-15', '42', 0, 25, 'Active', '0000-00-00', '0000-00-00'),
(119, '2021-04-17', '18', 0, 16, 'Active', '0000-00-00', '0000-00-00');

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
(6, 'thursday', '15:00:00.000000', '18:00:00.000000', '10', '300', 'false', '74', 'active', 500),
(7, 'saturday', '09:00:00.000000', '15:00:00.000000', '20', '5', 'false', '59', 'active', 500),
(8, 'saturday', '09:00:00.000000', '15:00:00.000000', '20', '5', 'false', '59', 'active', 500),
(9, 'saturday', '09:00:00.000000', '15:00:00.000000', '20', '5', 'false', '59', 'active', 500),
(10, 'saturday', '09:00:00.000000', '15:00:00.000000', '20', '5', 'false', '59', 'active', 500),
(11, 'saturday', '09:00:00.000000', '15:00:00.000000', '20', '5', 'false', '59', 'active', 500),
(12, 'thursday', '09:00:00.000000', '12:00:00.000000', '12', '2', 'false', '59', 'active', 500),
(13, 'thursday', '09:00:00.000000', '12:00:00.000000', '12', '2', 'false', '59', 'active', 500),
(14, 'thursday', '09:00:00.000000', '12:00:00.000000', '12', '2', 'false', '59', 'active', 500),
(15, 'thursday', '09:00:00.000000', '12:00:00.000000', '12', '2', 'false', '60', 'active', 500),
(16, 'monday', '15:00:00.000000', '18:00:00.000000', '12', '13', 'true', '60', 'active', 500),
(17, 'monday', '15:00:00.000000', '18:00:00.000000', '12', '13', 'true', '60', 'active', 500),
(18, 'saturday', '13:00:00.000000', '17:00:00.000000', '16', '6', 'true', '3', 'active', 500),
(19, 'wednesday', '14:00:00.000000', '17:00:00.000000', '10', '2', 'true', '3', 'active', 500),
(20, 'wednesday', '14:00:00.000000', '17:00:00.000000', '10', '2', 'true', '3', 'active', 500),
(21, 'wednesday', '14:00:00.000000', '17:00:00.000000', '10', '2', 'true', '3', 'active', 500),
(22, 'wednesday', '14:00:00.000000', '17:00:00.000000', '10', '2', 'true', '3', 'active', 500),
(23, 'wednesday', '14:00:00.000000', '17:00:00.000000', '10', '2', 'true', '4', 'active', 500),
(24, 'saturday', '10:00:00.000000', '13:00:00.000000', '12', '9', 'true', '6', 'active', 500),
(25, 'saturday', '10:00:00.000000', '13:00:00.000000', '12', '9', 'true', '6', 'active', 500),
(26, 'saturday', '13:00:00.000000', '15:00:00.000000', '12', '1', 'false', '8', 'active', 500),
(27, 'saturday', '13:00:00.000000', '15:00:00.000000', '5', '5', 'false', '7', 'active', 500),
(28, 'saturday', '13:00:00.000000', '15:00:00.000000', '5', '5', 'false', '7', 'active', 500),
(29, 'saturday', '13:00:00.000000', '15:00:00.000000', '5', '5', 'false', '7', 'active', 500),
(30, 'thursday', '13:00:00.000000', '18:00:00.000000', '25', '7', 'true', '8', 'active', 500),
(31, 'thursday', '13:00:00.000000', '18:00:00.000000', '25', '7', 'true', '8', 'active', 500),
(32, 'sunday', '14:00:00.000000', '18:00:00.000000', '10', '10', 'true', '8', 'active', 500),
(33, 'thursday', '14:00:00.000000', '17:00:00.000000', '10', '10', 'true', '9', 'active', 500),
(34, 'thursday', '14:00:00.000000', '17:00:00.000000', '10', '10', 'true', '9', 'active', 500),
(35, 'saturday', '13:00:00.000000', '18:00:00.000000', '20', '1', 'false', '68', 'active', 500),
(36, 'friday', '13:00:00.000000', '19:00:00.000000', '9', '9', 'false', '73', 'active', 500),
(37, 'friday', '13:00:00.000000', '19:00:00.000000', '9', '9', 'false', '72', 'active', 500),
(38, 'saturday', '14:00:00.000000', '21:00:00.000000', '30', '11', 'false', '72', 'active', 500),
(39, 'friday', '13:00:00.000000', '18:00:00.000000', '15', '33', 'false', '57', 'active', 500),
(40, 'wednesday', '14:00:00.000000', '18:00:00.000000', '10', '3', 'false', '5', 'active', 500),
(41, 'monday', '17:00:00.000000', '20:00:00.000000', '25', '334', 'true', '59', 'active', 500),
(42, 'thursday', '17:00:00.000000', '21:00:00.000000', '25', '120', 'false', '75', 'active', 500);

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
(1, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(2, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(3, 'aa', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(4, 'aa', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(5, 'aa', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(6, 'q', 'Family Medicine', 1, 'A@A.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(7, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(8, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(9, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(10, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(11, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(12, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(13, '1', 'Family Medicine', 1, 'a2@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(14, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(15, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(16, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(17, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(18, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(19, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(20, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(21, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(22, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(23, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(24, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(25, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(26, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(27, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(28, '1', 'Family Medicine', 1, 'a22@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(29, '1', 'Family Medicine', 1, 'a22@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(30, '1', 'Family Medicine', 1, 'a22@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(31, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(32, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 0, '', ''),
(33, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(34, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(35, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(36, '1', 'Family Medicine', 1, 'aa@ff.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(37, '1', 'Family Medicine', 1, 'aa@ff.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(38, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(39, '1', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(40, '1', 'Family Medicine', 1, 'a@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(41, '1', 'Family Medicine', 1, 'a@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(42, '1', 'Family Medicine', 1, 'ne@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(43, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(44, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(45, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(46, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(47, '1', 'Cardiology', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 2, '', ''),
(48, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(49, '1', 'Cardiology', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 2, '', ''),
(50, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(51, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(52, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(53, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(54, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(55, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(56, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(57, '1', 'Family Medicine', 1, 'qq@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(58, '1', 'Family Medicine', 1, 'fgh@fghj.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(59, 'mary', 'Family Medicine', 1111, 'mary@g.com', '111', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(60, 'afrin', 'Family Medicine', 1, 'a@a.com', '1', '1990-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(61, '1', 'Family Medicine', 1, 'a@s.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(62, '1', 'Family Medicine', 1, 'a@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(63, 'ovi', 'Family Medicine', 1, 'ovi@g.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(64, '1', 'Family Medicine', 1, 'a@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(65, '1', 'Family Medicine', 1, 'a@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(66, '1', 'Family Medicine', 1, 'd@d.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(67, '1', 'Family Medicine', 1, 'a@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(68, '1', 'Family Medicine', 1, 'a@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(69, '1', 'Family Medicine', 1, 'a@sa.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(70, '1', 'Family Medicine', 1, 'a@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(71, '1', 'Family Medicine', 1, 'a@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(72, '1', 'Family Medicine', 1, 'a@a.com', '11', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(73, 'afrin haq', 'Family Medicine', 1111, 'afrin@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(74, '1', 'Family Medicine', 0, 'a@a.com', '1', '0001-01-01', '1', '1', '1', '../db/uploads/images1.jpg', 1, '', ''),
(75, 'Sabrina Afroz', 'Cardiology', 101010, 'sab@gmail.com', 'hkd, hkk, jkd, wwm', '1990-02-18', 'nn.ndnenlw', '12 years', '3', '../db/uploads/images1.jpg', 2, '', '');

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

-- --------------------------------------------------------

--
-- Table structure for table `waitqueue`
--

CREATE TABLE `waitqueue` (
  `queueID` int(255) NOT NULL,
  `app_id` int(255) NOT NULL,
  `p_id` int(255) NOT NULL,
  `p_fee` varchar(255) NOT NULL,
  `p_stat` varchar(255) NOT NULL,
  `p_q` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `waitqueue`
--

INSERT INTO `waitqueue` (`queueID`, `app_id`, `p_id`, `p_fee`, `p_stat`, `p_q`) VALUES
(1, 6, 1, 'Unpaid', 'Default', 0),
(2, 7, 1, 'Unpaid', 'Default', 0),
(3, 5, 1, 'Unpaid', 'Default', 0),
(9, 29, 1, 'Unpaid', 'Default', 0),
(35, 12, 2, 'Unpaid', 'Default', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `attslot`
--
ALTER TABLE `attslot`
  ADD PRIMARY KEY (`at_s_id`);

--
-- Indexes for table `att_info`
--
ALTER TABLE `att_info`
  ADD PRIMARY KEY (`att_id`);

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
-- Indexes for table `patient_payment`
--
ALTER TABLE `patient_payment`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `pnotify`
--
ALTER TABLE `pnotify`
  ADD PRIMARY KEY (`n_id`);

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
-- Indexes for table `waitqueue`
--
ALTER TABLE `waitqueue`
  ADD PRIMARY KEY (`queueID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `adminID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attslot`
--
ALTER TABLE `attslot`
  MODIFY `at_s_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `att_info`
--
ALTER TABLE `att_info`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `patientreg`
--
ALTER TABLE `patientreg`
  MODIFY `patient_Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pnotify`
--
ALTER TABLE `pnotify`
  MODIFY `n_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `queueinitialize`
--
ALTER TABLE `queueinitialize`
  MODIFY `queueId` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `slot`
--
ALTER TABLE `slot`
  MODIFY `slot_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `syscons`
--
ALTER TABLE `syscons`
  MODIFY `ConsID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `sysdept`
--
ALTER TABLE `sysdept`
  MODIFY `deptID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `waitqueue`
--
ALTER TABLE `waitqueue`
  MODIFY `queueID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

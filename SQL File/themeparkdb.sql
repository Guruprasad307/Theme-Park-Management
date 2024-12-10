-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2020 at 06:06 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `themeparkdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(50) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7889898987, 'tester1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-07-17 11:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblentrytickets`
--

CREATE TABLE `tblentrytickets` (
  `id` int(11) NOT NULL,
  `TIcketNumber` varchar(120) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `Gender` varchar(250) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `NoOfMale` int(11) NOT NULL,
  `MaleTicketPrice` decimal(10,2) NOT NULL,
  `NoOfFemale` int(11) NOT NULL,
  `FemaleTicketPrice` decimal(10,2) NOT NULL,
  `NoOfKids` int(11) NOT NULL,
  `NoOfKidsForTicket` int(11) NOT NULL,
  `KidsTicketPrice` decimal(10,2) NOT NULL,
  `VisitDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDa` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblentrytickets`
--

INSERT INTO `tblentrytickets` (`id`, `TIcketNumber`, `Name`, `Gender`, `Address`, `NoOfMale`, `MaleTicketPrice`, `NoOfFemale`, `FemaleTicketPrice`, `NoOfKids`, `NoOfKidsForTicket`, `KidsTicketPrice`, `VisitDate`, `LastUpdationDa`) VALUES
(4, '333005062', 'Test User', 'Male', 'dashdhasjf ', 1, '90.00', 1, '90.00', 1, 1, '50.00', '2020-07-17 18:38:11', '2020-07-17 19:10:37'),
(5, '575286522', 'Anuj Kumar', 'Male', 'New Delhi India', 2, '100.00', 2, '90.00', 2, 1, '40.00', '2020-08-04 16:01:59', '2020-08-04 16:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblprice`
--

CREATE TABLE `tblprice` (
  `id` int(11) NOT NULL,
  `TicketType` varchar(100) NOT NULL,
  `MaleTIcket` decimal(10,2) NOT NULL,
  `FemaleTIcket` decimal(10,2) NOT NULL,
  `KidsTicket` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblprice`
--

INSERT INTO `tblprice` (`id`, `TicketType`, `MaleTIcket`, `FemaleTIcket`, `KidsTicket`) VALUES
(1, 'Entry', '100.00', '90.00', '40.00'),
(2, 'NormalRide', '100.00', '110.00', '70.00'),
(3, 'WaterRide', '150.00', '150.00', '100.00');

-- --------------------------------------------------------

--
-- Table structure for table `tblridetickets`
--

CREATE TABLE `tblridetickets` (
  `id` int(11) NOT NULL,
  `TIcketNumber` varchar(120) DEFAULT NULL,
  `RideType` varchar(120) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `Gender` varchar(250) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `NoOfMale` int(11) NOT NULL,
  `MaleTicketPrice` decimal(10,2) NOT NULL,
  `NoOfFemale` int(11) NOT NULL,
  `FemaleTicketPrice` decimal(10,2) NOT NULL,
  `NoOfKids` int(11) NOT NULL,
  `NoOfKidsForTicket` int(11) NOT NULL,
  `KidsTicketPrice` decimal(10,2) NOT NULL,
  `VisitDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDa` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblridetickets`
--

INSERT INTO `tblridetickets` (`id`, `TIcketNumber`, `RideType`, `Name`, `Gender`, `Address`, `NoOfMale`, `MaleTicketPrice`, `NoOfFemale`, `FemaleTicketPrice`, `NoOfKids`, `NoOfKidsForTicket`, `KidsTicketPrice`, `VisitDate`, `LastUpdationDa`) VALUES
(2, '783289568', 'Normal Ride', 'Anuj kumar', 'Male', 'New Delhi', 5, '120.00', 4, '120.00', 2, 2, '80.00', '2020-07-17 18:57:48', '2020-07-17 19:04:50'),
(3, '134891128', 'Normal Ride', 'ABC', 'Male', 'New delhi India', 2, '100.00', 2, '110.00', 4, 2, '70.00', '2020-08-04 16:03:05', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblentrytickets`
--
ALTER TABLE `tblentrytickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprice`
--
ALTER TABLE `tblprice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaleTIcket` (`MaleTIcket`),
  ADD KEY `FemaleTIcket` (`FemaleTIcket`),
  ADD KEY `KidsTicket` (`KidsTicket`);

--
-- Indexes for table `tblridetickets`
--
ALTER TABLE `tblridetickets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblentrytickets`
--
ALTER TABLE `tblentrytickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblprice`
--
ALTER TABLE `tblprice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblridetickets`
--
ALTER TABLE `tblridetickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

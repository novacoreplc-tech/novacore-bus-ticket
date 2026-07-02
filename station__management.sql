-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2026 at 04:08 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
SET FOREIGN_KEY_CHECKS=0;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `station_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `finance_report`
--

CREATE TABLE `finance_report` (
  `reportId` int(11) NOT NULL,
  `scheduleId` int(11) DEFAULT NULL,
  `stationId` int(11) DEFAULT NULL,
  `soldTickets` int(11) DEFAULT '0',
  `remainingTickets` int(11) DEFAULT '0',
  `totalAmount` decimal(10,2) DEFAULT NULL,
  `submittedBy` varchar(100) DEFAULT NULL,
  `submittedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentStatus` enum('PENDING','PAID') DEFAULT 'PENDING',
  `approvedBy` varchar(100) DEFAULT NULL,
  `approvedAt` datetime DEFAULT NULL,
  `submissionType` enum('CASH','RETURNED') NOT NULL DEFAULT 'CASH',
  `cashAmount` decimal(10,2) DEFAULT '0.00',
  `returnedTickets` int(11) DEFAULT '0',
  `returnedAmount` decimal(10,2) DEFAULT '0.00',
  `returnReason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finance_report`
--

INSERT INTO `finance_report` (`reportId`, `scheduleId`, `stationId`, `soldTickets`, `remainingTickets`, `totalAmount`, `submittedBy`, `submittedAt`, `paymentStatus`, `approvedBy`, `approvedAt`, `submissionType`, `cashAmount`, `returnedTickets`, `returnedAmount`, `returnReason`) VALUES
(1, 3, NULL, 9, 0, NULL, 'ticketer@hossana.com', '2026-06-25 20:53:20', 'PENDING', NULL, NULL, 'CASH', '0.00', 0, '0.00', NULL),
(2, 4, NULL, 35, 0, '16450.00', 'ticketer@hossana.com', '2026-06-26 13:48:54', 'PENDING', NULL, NULL, 'CASH', '0.00', 0, '0.00', NULL),
(3, 3, NULL, 38, 0, '17860.00', 'ticketer@hossana.com', '2026-06-27 01:57:43', 'PENDING', NULL, NULL, 'RETURNED', '0.00', 2, '0.00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mahiber`
--

CREATE TABLE `mahiber` (
  `providerName` varchar(100) NOT NULL,
  `Region` varchar(50) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahiber`
--

INSERT INTO `mahiber` (`providerName`, `Region`, `PhoneNumber`) VALUES
('abay', 'oromiya', '0911221122'),
('chambalala', 'sidama', '0911111111'),
('ethio', 'Central ethio', '0908070605'),
('Tigat', 'Amhara', '090000000');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `passengerId` int(11) NOT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int(11) NOT NULL,
  `totalPrice` decimal(10,2) NOT NULL,
  `tariff` decimal(10,2) NOT NULL,
  `serviceCharge` decimal(10,2) NOT NULL,
  `Destination` varchar(100) DEFAULT NULL,
  `VehicleLevel` varchar(20) DEFAULT NULL,
  `source` varchar(30) NOT NULL,
  `Creator` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `totalPrice`, `tariff`, `serviceCharge`, `Destination`, `VehicleLevel`, `source`, `Creator`) VALUES
(11, '470.00', '462.01', '7.99', 'Hawassa', 'Medium1stlevel', 'hossana', 'manager@hossana.com'),
(12, '315.00', '309.64', '5.36', 'shone', 'Small1stlevel', 'hossana', 'manager@hossana.com'),
(14, '155.00', '152.36', '2.64', 'duna', 'Medium1stlevel', 'hossana', 'manager@hossana.com'),
(15, '900.00', '884.70', '15.30', 'Adama', 'Large1stlevel', 'hossana', 'manager@hossana.com'),
(18, '300.00', '294.90', '5.10', 'shone', 'Medium1stlevel', 'hossana', 'manager@hossana.com'),
(19, '40.00', '39.32', '0.68', 'Lera', 'Small1stlevel', '', 'manager@hossana.com'),
(20, '300.00', '294.90', '5.10', 'welkite', 'Large1stlevel', 'hossana', 'manager@hossana.com'),
(21, '470.00', '462.01', '7.99', 'Hawassa', 'Small1stlevel', '', 'manager@hossana.com'),
(22, '470.00', '462.01', '7.99', 'Hawassa', 'Large1stlevel', '', 'manager@hossana.com'),
(23, '300.00', '294.90', '5.10', 'welkite', 'Small1stlevel', '', 'manager@hossana.com'),
(24, '300.00', '294.90', '5.10', 'welkite', 'Medium1stlevel', '', 'manager@hossana.com'),
(25, '900.00', '884.70', '15.30', 'Adama', 'Small1stlevel', '', 'manager@hossana.com'),
(26, '900.00', '884.70', '15.30', 'Adama', 'Medium1stlevel', '', 'manager@hossana.com'),
(27, '40.00', '39.32', '0.68', 'Lera', 'Medium1stlevel', '', 'manager@hossana.com'),
(28, '40.00', '39.32', '0.68', 'Lera', 'Large1stlevel', '', 'manager@hossana.com'),
(29, '300.00', '294.90', '5.10', 'shone', 'Large1stlevel', '', 'manager@hossana.com'),
(30, '155.00', '152.36', '2.64', 'duna', 'Small1stlevel', '', 'manager@hossana.com'),
(31, '155.00', '152.36', '2.64', 'duna', 'Large1stlevel', '', 'manager@hossana.com'),
(32, '90.00', '88.47', '1.53', 'Doyogena', 'Small1stlevel', '', 'manager@hossana.com'),
(33, '90.00', '88.47', '1.53', 'Doyogena', 'Medium1stlevel', '', 'manager@hossana.com'),
(34, '90.00', '88.47', '1.53', 'Doyogena', 'Large1stlevel', '', 'manager@hossana.com'),
(35, '400.00', '393.20', '6.80', 'Butajira', 'Small1stlevel', '', 'manager@hossana.com'),
(36, '400.00', '393.20', '6.80', 'Butajira', 'Medium1stlevel', '', 'manager@hossana.com'),
(37, '400.00', '393.20', '6.80', 'Butajira', 'Large1stlevel', '', 'manager@hossana.com'),
(38, '300.00', '294.90', '5.10', 'werabe', 'Small1stlevel', '', 'manager@hossana.com'),
(60, '300.00', '294.90', '5.10', 'werabe', 'Medium1stlevel', '', 'manager@hossana.com'),
(61, '300.00', '294.90', '5.10', 'werabe', 'Large1stlevel', '', 'manager@hossana.com');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role` varchar(50) NOT NULL,
  `privilages` text,
  `creator` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role`, `privilages`, `creator`) VALUES
('admin', 'Full control over stations and managers', 'system'),
('finance', 'Financial processing clearance mapping accounts', 'system'),
('getter', 'Manages logistics details configuration data', 'system'),
('manager', 'Manages staff directory listings', 'system'),
('ticketer', 'Sales register endpoints access token mapping', 'system');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `id` int(11) NOT NULL,
  `destinationName` varchar(100) NOT NULL,
  `DestinationRegion` varchar(50) NOT NULL,
  `source` varchar(30) NOT NULL,
  `Distance` decimal(10,2) DEFAULT NULL,
  `creator` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`id`, `destinationName`, `DestinationRegion`, `source`, `Distance`, `creator`) VALUES
(11, '', '', 'hossana', '0.00', 'manager@hossana.com'),
(1, 'Adama', 'oromiya', 'hossana', '255.00', 'manager@hossana.com'),
(7, 'Butajira', 'central', 'hossana', '105.00', 'manager@hossana.com'),
(5, 'Doyogena', 'central', 'hossana', '27.00', 'manager@hossana.com'),
(4, 'duna', 'central', 'hossana', '58.00', 'adm@novacore.com'),
(2, 'Hawassa', 'sidamaa', 'hossana', '250.00', 'manager@hossana.com'),
(9, 'Lera', 'central', 'hossana', '20.00', 'manager@hossana.com'),
(3, 'shone', 'central', 'hossana', '162.00', 'manager@hossana.com'),
(10, 'sodo', 'South', 'hossana', '120.00', 'manager@hossana.com'),
(8, 'welkite', 'central', 'hossana', '150.00', 'manager@hossana.com'),
(6, 'werabe', 'central', 'hossana', '50.00', 'manager@hossana.com');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `plateNumber` varchar(20) DEFAULT NULL,
  `Destination` varchar(100) DEFAULT NULL,
  `source` varchar(30) NOT NULL,
  `creator` varchar(100) DEFAULT NULL,
  `travelDate` date DEFAULT NULL,
  `status` enum('DISABLED','SCHEDULED','STARTED','COMPLETED','CHECKEDOUT','PENDDING','PAID') DEFAULT 'DISABLED',
  `assignedTicketer` varchar(100) DEFAULT NULL,
  `seatCapacity` int(11) DEFAULT NULL,
  `totalPrice` decimal(10,2) DEFAULT NULL,
  `soldSeats` int(11) DEFAULT '0',
  `reprintedTickets` int(11) DEFAULT '0',
  `returnedTicket` int(11) NOT NULL DEFAULT '0',
  `cashier` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `plateNumber`, `Destination`, `source`, `creator`, `travelDate`, `status`, `assignedTicketer`, `seatCapacity`, `totalPrice`, `soldSeats`, `reprintedTickets`, `returnedTicket`, `cashier`) VALUES
(2, 'B41960', 'Hawassa', 'hossana', 'ticketer@hossana.com', NULL, 'STARTED', 'ache@novacore.com', 32, '500.00', 1, 0, 0, 'kiya@hossana.com'),
(3, 'A33442', 'Hawassa', 'hossana', 'geter@hossana.com', NULL, 'PAID', 'leye@novacore.com', 38, '470.00', 38, 4, 0, 'kiya@hossana.com'),
(4, 'CE03321', 'Hawassa', 'hossana', 'geter@hossana.com', NULL, 'PAID', 'leye@novacore.com', 35, '470.00', 35, 0, 0, 'kiya@hossana.com'),
(7, 'A33442', 'duna', 'hossana', 'geter@hossana.com', '0000-00-00', 'STARTED', 'leye@novacore.com', 38, '155.00', 0, 0, 0, 'kiya@hossana.com'),
(8, 'B41960', 'Hawassa', 'hossa', 'geter@hossana.com', NULL, 'PAID', 'ticketer@hossana.com', 35, '470.00', 30, 7, 5, 'kiya@hossana.com'),
(9, 'C00000', 'Adama', 'hossana', 'geter@hossana.com', NULL, 'CHECKEDOUT', 'ticketer@hossana.com', 15, '900.00', 0, 0, 0, 'kiya@hossana.com'),
(10, '44444', 'Doyogena', 'hossana', 'manager@hossana.com', '0000-00-00', 'STARTED', 'ticketer@hossana.com', 65, '90.00', 22, 1, 0, 'kiya@hossana.com'),
(11, '33333', 'Adama', 'hossana', 'manager@hossana.com', NULL, 'CHECKEDOUT', 'ticketer@hossana.com', 28, '900.00', 28, 3, 0, 'kiya@hossana.com'),
(12, '22222', 'duna', 'hossana', 'manager@hossana.com', NULL, 'PENDDING', 'ticketer@hossana.com', 45, '155.00', 40, 0, 1, 'kiya@hossana.com'),
(13, 'A12122', 'Hawassa', 'hossana', 'ticketer@hossana.com', NULL, 'DISABLED', NULL, 12, '470.00', 0, 0, 0, 'kiya@hossana.com'),
(14, '12190', 'Adama', 'hossana', 'kiya@hossana.com', NULL, 'STARTED', 'ticketer@hossana.com', 44, '900.00', 44, 2, 0, 'kiya@hossana.com'),
(15, '654', 'Butajira', 'hossana', 'kiya@hossana.com', '1899-11-28', 'SCHEDULED', NULL, 65, '400.00', 0, 0, 0, 'kiya@hossana.com');

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `id` int(11) NOT NULL,
  `stationName` varchar(100) NOT NULL,
  `Region` varchar(50) NOT NULL,
  `creator` int(11) DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`id`, `stationName`, `Region`, `creator`) VALUES
(1, 'adama', 'oromiya', 3),
(5, 'hawassa', 'sidama', 3),
(6, 'adis ababa', 'adis ababa', 3),
(7, 'hossana', 'centeral', 3),
(8, 'mekele', 'tigray', 3),
(9, 'areka', 'south', 3),
(10, '', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `station` varchar(30) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `active` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `firstName`, `lastName`, `phoneNumber`, `station`, `role`, `active`) VALUES
(2, 'admin@novacore.com', '$2b$10$UKsGy.Rh1H6voG4d9z9zaeRiTFjf3XjUyPLmMxRY1hk1EUV2X3Tgq', 'sis', 'dad', '0911223344', 'hossana', 'admin', 'yes'),
(3, 'sis@novacore.com', '$2b$10$wfrFI2QVfwAA5cv3Oz3TfeuHcC/7vtDI3iDRd9D3WPYVvJLdWpgb.', 'dd', 'grw', '0911221122', 'hossana', 'admin', 'yes'),
(4, 'adm@novacore.com', '$2b$10$TySM9CtT9OfSeC/wRpiEhuzBk8Bjo3Pec/H2wnF7irEHUH7/z7HRG', 'gr', 'et', '0911112233', 'hossana', 'admin', 'yes'),
(6, 'manager@hossana.com', '$2b$10$GkL1XAW./Fr7YbgacoEQwuHuAlJ9nFH3iEd30JzMWj3FGbNF72sQO', 'm', 'ahe', '0909090909', 'hossana', 'manager', 'yes'),
(7, 'geter@hossana.com', '$2b$10$fHN0HAnSC2OUsGdLRDUECOSN0JttIjEW0I1fz8Ef3hFLjxIKRWAO6', 'geter', 'hossana', '0911221120', 'hossana', 'getter', 'yes'),
(8, 'kiya@hossana.com', '$2b$10$fJ2O9Ajgoqe5Bh/aVh7v4.CupOwUgpBYV9p39/awRn92560mM0Z8y', 'kiya', 'lv', '0908070605', 'hossana', 'finance', 'yes'),
(9, 'ticketer@hossana.com', '$2b$10$J3CfIUMn5ziD1h8WVaEKpuU.bC7L9MmNmBWhpuZQIU8xMc0WCcOjW', 'ticketer', 'hossana', '0900001111', 'hossana', 'ticketer', 'yes'),
(11, 'nati@novacore.com', '$2b$10$o.GbzpebqpsRl5iPZUB6FOLOGzjZvU2FlmlV23PvvYudHSvXB0KzC', 'nati ', 'michael', '090909', 'hossana', 'manager', 'yes'),
(12, 'aaa@hossana.com', '$2b$10$m0GatVIExD0KTlO69Xv8Fecp4y9V9Z9J6tvAiusATlMFAi888e7gW', 'sdsd', 'sewse', '232424', '', 'finance', 'yes'),
(13, 'menge@welkite.com', '$2b$10$NsqUdbco29UvTE2T5wMa8u9oWG73kcgWgVFVJXNtsNsGoD0pvjSM.', 'menge', 'abe', '0909', '', 'manager', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id` int(11) NOT NULL,
  `plateNumber` varchar(20) NOT NULL,
  `seatCapacity` int(11) NOT NULL,
  `level` varchar(20) DEFAULT NULL,
  `provider` varchar(100) DEFAULT NULL,
  `creator` varchar(100) DEFAULT NULL,
  `sideNumber` varchar(20) DEFAULT NULL,
  `station` varchar(30) NOT NULL,
  `status` enum('AVAILABLE','SCHEDULED','ON_ROUTE') DEFAULT 'AVAILABLE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`id`, `plateNumber`, `seatCapacity`, `level`, `provider`, `creator`, `sideNumber`, `station`, `status`) VALUES
(13, '11111', 15, 'Small1stlevel', 'chambalala', 'geter@hossana.com', '12', 'hossana', 'AVAILABLE'),
(18, '12190', 44, 'Medium1stlevel', 'ethio', 'kiya@hossana.com', '', 'hossana', 'SCHEDULED'),
(11, '21434', 29, 'Medium1stlevel', 'abay', 'geter@hossana.com', '22', 'hossana', 'SCHEDULED'),
(14, '22222', 45, 'Large1stlevel', 'ethio', 'geter@hossana.com', '12', 'hossana', 'SCHEDULED'),
(15, '33333', 28, 'Medium1stlevel', 'Tigat', 'geter@hossana.com', '1', 'hossana', 'SCHEDULED'),
(16, '44444', 65, 'Large1stlevel', 'Tigat', 'geter@hossana.com', '55', 'hossana', 'SCHEDULED'),
(19, '654', 65, 'Large1stlevel', 'Tigat', 'kiya@hossana.com', '', 'hossana', 'AVAILABLE'),
(10, 'A12122', 12, 'Small1stlevel', 'chambalala', 'geter@hossana.com', '2', 'hossana', 'SCHEDULED'),
(5, 'A12352', 44, 'Large1stlevel', 'chambalala', 'geter@hossana.com', '14', 'hossana', 'AVAILABLE'),
(1, 'A21188', 60, 'Large1stlevel', 'abay', 'geter@hossana.com', '54', 'hossana', 'AVAILABLE'),
(4, 'A33442', 38, 'Medium1stlevel', 'ethio', 'geter@hossana.com', '87', 'hossana', 'SCHEDULED'),
(2, 'B41960', 35, 'Medium1stlevel', 'chambalala', 'geter@hossana.com', '21', 'hossana', 'SCHEDULED'),
(9, 'C00000', 15, 'Small1stlevel', 'abay', 'geter@hossana.com', '16', 'hossana', 'SCHEDULED'),
(8, 'c20123', 31, 'Medium2ndlevel', 'chambalala', 'geter@hossana.com', '12', '', 'AVAILABLE'),
(3, 'CE03321', 35, 'Medium1stlevel', 'ethio', 'geter@hossana.com', '12', 'hossana', 'SCHEDULED'),
(7, 'dafg', 23, 'Small1stlevel', 'abay', 'geter@hossana.com', '34', 'butajira', 'AVAILABLE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `finance_report`
--
ALTER TABLE `finance_report`
  ADD PRIMARY KEY (`reportId`),
  ADD KEY `scheduleId` (`scheduleId`),
  ADD KEY `stationId` (`stationId`);

--
-- Indexes for table `mahiber`
--
ALTER TABLE `mahiber`
  ADD PRIMARY KEY (`providerName`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`passengerId`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_price_destination_vehicle` (`Destination`,`VehicleLevel`),
  ADD KEY `fk_price_creator` (`Creator`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`destinationName`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `fk_route_creator` (`creator`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_schedule_vehicle` (`plateNumber`),
  ADD KEY `fk_schedule_destination` (`Destination`),
  ADD KEY `fk_schedule_creator` (`creator`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_station_creator` (`creator`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_user_role` (`role`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`plateNumber`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `fk_vehicle_provider` (`provider`),
  ADD KEY `fk_vehicle_creator` (`creator`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `finance_report`
--
ALTER TABLE `finance_report`
  MODIFY `reportId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `passengerId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `finance_report`
--
ALTER TABLE `finance_report`
  ADD CONSTRAINT `finance_report_ibfk_1` FOREIGN KEY (`scheduleId`) REFERENCES `schedule` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `finance_report_ibfk_2` FOREIGN KEY (`stationId`) REFERENCES `station` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `price`
--
ALTER TABLE `price`
  ADD CONSTRAINT `fk_price_creator` FOREIGN KEY (`Creator`) REFERENCES `user` (`email`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_price_destination` FOREIGN KEY (`Destination`) REFERENCES `route` (`destinationName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `route`
--
ALTER TABLE `route`
  ADD CONSTRAINT `fk_route_creator` FOREIGN KEY (`creator`) REFERENCES `user` (`email`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `fk_schedule_creator` FOREIGN KEY (`creator`) REFERENCES `user` (`email`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_schedule_destination` FOREIGN KEY (`Destination`) REFERENCES `route` (`destinationName`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_schedule_vehicle` FOREIGN KEY (`plateNumber`) REFERENCES `vehicle` (`plateNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `station`
--
ALTER TABLE `station`
  ADD CONSTRAINT `fk_station_creator` FOREIGN KEY (`creator`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_role` FOREIGN KEY (`role`) REFERENCES `role` (`role`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `fk_vehicle_creator` FOREIGN KEY (`creator`) REFERENCES `user` (`email`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vehicle_provider` FOREIGN KEY (`provider`) REFERENCES `mahiber` (`providerName`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;
SET FOREIGN_KEY_CHECKS=1;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

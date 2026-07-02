-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2026 at 01:40 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `station_management`
--

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_user_role` (`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_role` FOREIGN KEY (`role`) REFERENCES `role` (`roleName`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

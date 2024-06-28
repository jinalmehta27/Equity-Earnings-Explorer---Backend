-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2024 at 10:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stock_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brokerages`
--

CREATE TABLE `brokerages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `perc` float NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brokerages`
--

INSERT INTO `brokerages` (`id`, `user_id`, `perc`, `createdAt`, `updatedAt`) VALUES
(1, 22, 20, '2024-04-19 08:55:48', '2024-04-19 08:55:48'),
(2, 22, 15, '2024-04-19 08:56:57', '2024-04-19 08:56:57'),
(3, 22, 12, '2024-04-20 06:29:41', '2024-04-20 06:29:41');

-- --------------------------------------------------------

--
-- Table structure for table `investeds`
--

CREATE TABLE `investeds` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amt` double NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `investeds`
--

INSERT INTO `investeds` (`id`, `user_id`, `amt`, `createdAt`, `updatedAt`) VALUES
(10, 22, 7544.025, '2024-04-19 06:56:29', '2024-04-21 07:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `pdate` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `share_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `rate` float NOT NULL,
  `brokerage` float NOT NULL,
  `gstbrok` float NOT NULL,
  `security` float NOT NULL,
  `other` float NOT NULL,
  `net` double NOT NULL,
  `avg` float NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `pdate`, `user_id`, `share_id`, `qty`, `rate`, `brokerage`, `gstbrok`, `security`, `other`, `net`, `avg`, `createdAt`, `updatedAt`) VALUES
(14, '2024-04-13 00:00:00', 22, 1, 200, 150, 45, 8.1, 48, 75, 30176.1, 150.88, '2024-04-21 05:49:21', '2024-04-21 05:49:21');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `sdate` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `share_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `rate` float NOT NULL,
  `brokerage` float NOT NULL,
  `gstbrok` float NOT NULL,
  `security` float NOT NULL,
  `other` float NOT NULL,
  `net` double NOT NULL,
  `avg` float NOT NULL,
  `profit` float NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sdate`, `user_id`, `share_id`, `qty`, `rate`, `brokerage`, `gstbrok`, `security`, `other`, `net`, `avg`, `profit`, `createdAt`, `updatedAt`) VALUES
(10, '2024-04-07 00:00:00', 22, 1, 100, 200, 45, 8.1, 46, 42, 19858.9, 198.589, 4770.85, '2024-04-21 05:49:57', '2024-04-21 06:07:16'),
(11, '2024-04-14 00:00:00', 22, 1, 50, 500, 45, 8.1, 45, 40, 24861.9, 497.238, 17317.9, '2024-04-21 07:46:01', '2024-04-21 07:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

CREATE TABLE `shares` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shares`
--

INSERT INTO `shares` (`id`, `user_id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 22, 'second', '2024-04-19 09:10:37', '2024-04-21 06:55:12');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `share_id` int(11) NOT NULL,
  `qty` float NOT NULL,
  `cost` double NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `user_id`, `share_id`, `qty`, `cost`, `createdAt`, `updatedAt`) VALUES
(6, 22, 1, 50, 150.88049999999998, '2024-04-21 05:49:22', '2024-04-21 07:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'jinalmehta@gmail.com', 'jinal', '123', '2024-03-13 11:00:16', '2024-03-13 11:00:16'),
(2, 'jinalmehta@gmail.com', 'jinal27', 'jinal@27', '2024-03-18 08:33:50', '2024-03-18 08:33:50'),
(4, 'pinal@gmail.com', 'pinu6102', 'pinu6102', '2024-03-23 08:15:31', '2024-03-23 08:15:31'),
(8, 'rmmehta2468@gmail.com', 'rahulll', 'rahul123', '2024-04-08 08:01:46', '2024-04-08 08:01:46'),
(9, 'jinalmehta.jam@gmail.com', 'xyz', 'abc123', '2024-04-08 08:10:44', '2024-04-08 08:10:44'),
(10, 'jinalmehta.jam@gmail.com', 'asde', 'pinu@123', '2024-04-08 08:12:49', '2024-04-08 08:12:49'),
(11, 'jinalmehta.jam@gmail.com', 'aaaaa', 'aaa', '2024-04-08 08:14:31', '2024-04-08 08:14:31'),
(12, 'test@gmail.com', 'test', 'test', '2024-04-08 08:50:45', '2024-04-08 08:50:45'),
(17, 'jinalmehta.jam@gmail.com1', '111', '111', '2024-04-15 09:21:10', '2024-04-15 09:21:10'),
(20, 'priya@gmail.com', 'priya', 'priya', '2024-04-15 14:13:01', '2024-04-15 14:13:01'),
(22, 'abcd@gmail.com', 'login', 'pass', '2024-04-19 06:56:29', '2024-04-19 06:56:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brokerages`
--
ALTER TABLE `brokerages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `investeds`
--
ALTER TABLE `investeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `share_id` (`share_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `share_id` (`share_id`);

--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `share_id` (`share_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brokerages`
--
ALTER TABLE `brokerages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `investeds`
--
ALTER TABLE `investeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brokerages`
--
ALTER TABLE `brokerages`
  ADD CONSTRAINT `brokerages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `investeds`
--
ALTER TABLE `investeds`
  ADD CONSTRAINT `investeds_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchases_ibfk_2` FOREIGN KEY (`share_id`) REFERENCES `shares` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`share_id`) REFERENCES `shares` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shares`
--
ALTER TABLE `shares`
  ADD CONSTRAINT `shares_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `stocks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stocks_ibfk_2` FOREIGN KEY (`share_id`) REFERENCES `shares` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2021 at 11:09 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `mbno` float DEFAULT NULL,
  `msg` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`name`, `email`, `mbno`, `msg`) VALUES
('Swayamsiddha', 'mdsiddhi9@gmail.com', 8432210000, 'Hello there'),
('Swayamsiddha', 'mdsiddhi9@gmail.com', 8432210000, 'Hello there'),
('Swayamsiddha', 'mdsiddhi9@gmail.com', 8432210000, 'Hello there'),
('Swayamsiddha', 'mdsiddhi9@gmail.com', 8432210000, 'Hello there'),
('Swayamsiddha Amrutraj Mane Deshmukh', 'mdsiddhi9@gmail.com', 8432210000, 'Hello'),
('Swayamsiddha Amrutraj Mane Deshmukh', 'mdsiddhi9@gmail.com', 8432210000, 'Hello'),
('Siddhi', 'mdsiddhi9@gmail.com', 8432210000, 'shjksahdg'),
('Swayamsiddha', 'mdsiddhi9@gmail.com', 8432210000, 'hshkhsakldhska');

-- --------------------------------------------------------

--
-- Table structure for table `fproduct`
--

CREATE TABLE `fproduct` (
  `username` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `product` varchar(50) NOT NULL,
  `pcat` varchar(50) NOT NULL,
  `pinfo` varchar(60) NOT NULL,
  `price` float NOT NULL,
  `pimage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fproduct`
--

INSERT INTO `fproduct` (`username`, `pid`, `product`, `pcat`, `pinfo`, `price`, `pimage`) VALUES
('0', 1, 'Bajra', 'Grains', '0', 60, ''),
('0', 2, 'Chickoo', 'Fruit', '0', 40, ''),
('0', 3, 'Wheat', 'Grains', 'grain: wheat', 40, ''),
('', 4, 'Bajra', 'Grains', 'Bajra', 70, ''),
('', 5, 'Rice', 'Grains', 'Rice', 100, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` enum('buyer','farmer','admin') NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `mobile` float NOT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `username`, `password`, `name`, `Address`, `mobile`, `email`) VALUES
(19, 'farmer', 'reva', 'reva', 'reva', 'pune', 8978960000, NULL),
(22, 'buyer', 'swara', 'swara', 'Swara', 'Kolhapur', 8520370000, NULL),
(23, 'buyer', 'veer', 'veer1', 'veer', 'mumbai', 8520140000, NULL),
(24, 'farmer', 'suresh', 'suresh', 'suresh', 'Kolhapur', 8521360000, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fproduct`
--
ALTER TABLE `fproduct`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Address` (`id`,`role`,`username`,`password`,`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fproduct`
--
ALTER TABLE `fproduct`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

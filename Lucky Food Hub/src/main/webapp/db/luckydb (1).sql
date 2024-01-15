-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2022 at 07:36 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luckydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `username` varchar(100) NOT NULL,
  `cakeid` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `cartstatus` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`username`, `cakeid`, `price`, `weight`, `amount`, `cartstatus`, `name`) VALUES
('raj12', 4, 800, 1, 800, 'in', ''),
('amol', 7, 190, 2, 240, 'out', ''),
('amol', 9, 150, 2, 200, 'out', ''),
('amol', 8, 120, 2, 160, 'out', ''),
('Priya', 24, 90, 3, 270, 'out', ''),
('Priya', 24, 90, 2, 140, 'in', ''),
('smita', 5, 80, 2, 120, 'out', 'Manchow Soup'),
('smita', 11, 250, 2, 360, 'out', 'Veg Triple Rice'),
('smita', 17, 220, 3, 660, 'out', 'Veg Manchurian Noodles'),
('smita', 25, 220, 3, 450, 'out', 'Nonveg Singapore Rice');

-- --------------------------------------------------------

--
-- Table structure for table `custreg`
--

CREATE TABLE `custreg` (
  `rgdate` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phoneno` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `secque` varchar(100) NOT NULL,
  `secans` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custreg`
--

INSERT INTO `custreg` (`rgdate`, `fullname`, `phoneno`, `email`, `username`, `password`, `secque`, `secans`) VALUES
('2022-07-16', 'Raj Deshmukh', '9075693521', 'rdeshmukh@gmail.com', 'Satara', '123456', 'Which is your Favourite number?', '18'),
('2022-07-17', 'Sneha Dhone', '1234567899', 'dhone12@gmail.com', 'Satara', '123789', 'Which is your Favourite number?', '45'),
('2022-08-03', 'Anurag Sawant', '7350453100', 'anurag12@gmail.com', 'Satara', 'Anurag123', 'Which is your Favourite number?', '7'),
('2022-11-24', 'Amol Gayake', '0987654321', 'amol@12gmail.com', 'Amol', 'amol@12', 'Which is your Favourite number?', '1'),
('2022-12-08', 'riya', '7865435645', 'nikitawaydande@gmai.com', 'riya', '123456', 'Which is your Favourite number?', '3'),
('2022-12-09', 'Smita Menkar', '9075693521', 'raj123@gmail.com', 'smita', 'smita@123', 'Which is your Favourite number?', '1');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `rdate` varchar(1000) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `food` varchar(100) NOT NULL,
  `service` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`rdate`, `name`, `food`, `service`) VALUES
('2022-12-09', 'Smita Menkar', 'Very Tasty', 'Very Good'),
('2022-12-01', 'Nikita Rajaram Waydande', 'Best', 'Very Good'),
('2022-12-07', 'Sneha Dhone', 'Best', 'Very Good');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `username` varchar(100) NOT NULL,
  `mode` varchar(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `number` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `products` varchar(100) NOT NULL,
  `date1` varchar(100) NOT NULL,
  `orderid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`username`, `mode`, `amount`, `number`, `address`, `products`, `date1`, `orderid`) VALUES
('smita', 'COD', 120, '9075693521', 'IRA Satara', 'Manchow Soup', '9 Dec, 2022 10:17:59 PM', 31),
('smita', 'COD', 240, '7057219490', 'IRA Satara', 'Manchow Soup', '9 Dec, 2022 10:26:05 PM', 33),
('smita', 'COD', 120, '9075693521', 'IRA Satara', 'Manchow Soup', '9 Dec, 2022 10:37:10 PM', 34),
('smita', 'COD', 480, '9075693521', 'IRA Satara', 'Manchow Soup , Veg Triple Rice ,', '9 Dec, 2022 10:45:45 PM', 35),
('smita', 'COD', 240, '9075693521', 'IRA Satara', 'Manchow Soup', '9 Dec, 2022 11:57:29 PM', 36),
('smita', 'COD', 440, '9075693521', 'IRA Satara', 'Nonveg Singapore Rice', '9 Dec, 2022 11:58:19 PM', 37),
('smita', 'COD', 1110, '9075693521', 'IRA Satara', 'Veg Manchurian Noodles , Nonveg Singapore Rice ,', '9 Dec, 2022 11:59:01 PM', 38);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `type` varchar(100) NOT NULL,
  `subtype` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `fullprice` int(11) NOT NULL,
  `halfprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`type`, `subtype`, `name`, `id`, `image`, `fullprice`, `halfprice`) VALUES
('Veg', 'Starter', 'Manchow Soup', 5, 'vms.jpg', 80, 60),
('Veg', 'Starter', 'Veg Sweet Corn Soup', 6, 'vscs.jpg', 150, 100),
('Veg', 'Starter', 'Veg Crispy Noodles Soup', 8, 'vcns.jpg', 120, 80),
('Veg', 'Starter', 'Soyabean Chilli', 9, 'sbc.jpg', 150, 100),
('Veg', 'Starter', 'Paneer Chilli', 10, 'pc.jpg', 110, 80),
('Veg', 'Rice', 'Veg Triple Rice', 11, 'vtr.jpg', 250, 180),
('Veg', 'Rice', 'Veg Hong Kong Rice', 12, 'vhkr.jpg', 200, 140),
('Veg', 'Rice', 'Veg Singapore Rice', 13, 'vsr.jpg', 220, 160),
('Veg', 'Rice', 'Veg Schezwan Rice', 14, 'vsr.jpg', 250, 200),
('Veg', 'Rice', 'Veg Fried Rice', 15, 'vfr.jpg', 160, 130),
('Veg', 'Noodles', 'Veg Hong Kong Noodles', 16, 'vhkn.jpg', 250, 200),
('Veg', 'Noodles', 'Veg Manchurian Noodles', 17, 'vmn.jpg', 220, 180),
('Veg', 'Noodles', 'Veg Hakka Noodles', 18, 'vhkn.jpg', 240, 190),
('Non Veg', 'Starter', 'Nonveg Manchow Soup', 23, 'vcns.jpg', 100, 80),
('Non Veg', 'Rice', 'Nonveg Singapore Rice', 25, 'vsingr.jfif', 220, 150),
('Non Veg', 'Noodles', 'Nonveg Manchow Noodles', 27, 'vmn.jpg', 200, 140),
('Non Veg', 'Noodles', 'Nonveg Garllic Noodles', 28, 'vgn.jpg', 170, 130),
('Non Veg', 'Starter', 'Chilli Spice', 29, 'pc.jpg', 100, 80),
('Non Veg', 'Noodles', 'Hakka Noodles', 30, 'vhkn.jpg', 200, 150),
('Non Veg', 'Rice', 'Non Veg Triple Rice', 32, 'vtn.jfif', 180, 130);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contactno` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `squestion` varchar(100) NOT NULL,
  `sanswer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`name`, `address`, `email`, `contactno`, `username`, `password`, `squestion`, `sanswer`) VALUES
('Raj Deshmukh', 'Satara', 'rdeshmukh9075@gmail.com', 2147483647, 'raj12', 'Raghav@1104', 'what is your favourite colour', 'red');

-- --------------------------------------------------------

--
-- Table structure for table `userorderdet`
--

CREATE TABLE `userorderdet` (
  `username` varchar(100) NOT NULL,
  `cakeid` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userorderdet`
--

INSERT INTO `userorderdet` (`username`, `cakeid`, `price`, `weight`, `amount`) VALUES
('raj12', 4, 800, 1, 400);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 08:41 PM
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
-- Database: `gauri`
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
-- Table structure for table `cake`
--

CREATE TABLE `cake` (
  `cakeid` int(11) NOT NULL,
  `flavour` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `cakeimg` varchar(1000) NOT NULL,
  `price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cake`
--

INSERT INTO `cake` (`cakeid`, `flavour`, `type`, `cakeimg`, `price`) VALUES
(1, 'pineapple', 'heartshape', 'vcns.jpg', '500'),
(2, 'butterscotch', 'photosheet', 'a.jpg', '600'),
(3, 'pineapple', 'photosheet', '3.jpg', '500'),
(4, 'pineapple', 'party', '2.jpg', '800');

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
  `name` varchar(1000) NOT NULL
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
('Priya', 6, 150, 2, 200, 'out', ''),
('Priya', 24, 90, 2, 140, 'out', ''),
('priya', 29, 100, 3, 240, 'out', 'Chilli Spice'),
('priya', 6, 150, 2, 200, 'out', 'Veg Sweet Corn Soup'),
('priya', 6, 150, 2, 200, 'out', 'Veg Sweet Corn Soup'),
('priya', 29, 100, 2, 200, 'out', 'Chilli Spice'),
('priya', 29, 100, 2, 160, 'out', 'Chilli Spice'),
('tina', 9, 150, 2, 200, 'out', 'Soyabean Chilli'),
('tina', 23, 100, 2, 160, 'out', 'Nonveg Manchow Soup'),
('tina', 12, 200, 2, 280, 'out', 'Veg Hong Kong Rice'),
('tina', 16, 250, 2, 400, 'out', 'Veg Hong Kong Noodles'),
('tina', 32, 180, 2, 260, 'out', 'Non Veg Triple Rice'),
('tina', 27, 200, 2, 400, 'out', 'Nonveg Manchow Noodles'),
('tina', 12, 200, 1, 140, 'out', 'Veg Hong Kong Rice'),
('tina', 14, 250, 3, 600, 'out', 'Veg Schezwan Rice'),
('tina', 5, 80, 3, 180, 'out', 'Manchow Soup'),
('tina', 11, 250, 3, 750, 'out', 'Veg Triple Rice'),
('tina', 15, 160, 3, 390, 'out', 'Veg Fried Rice'),
('tina', 25, 220, 2, 300, 'out', 'Nonveg Singapore Rice'),
('tina', 27, 200, 2, 280, 'out', 'Nonveg Manchow Noodles'),
('Priya', 5, 80, 2, 160, 'out', 'Manchow Soup');

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
('2022-11-24', 'Amol Gayake', '0987654321', 'amol@12gmail.com', 'Amol', 'amol@12', 'Which is your Favourite number?', '1'),
('2022-11-23', 'Priyanka Deshmukh', '1234567890', 'priyaa@gmail.com', 'Priya', 'priya1234', 'Which is your Favourite number?', '1'),
('2022-11-29', 'Tina Wagh', '9766923834', 'tina@gmail.com', 'tina', 'tina1234', 'Which is your Favourite number?', '2');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `orderid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `mode` varchar(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `number` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `products` varchar(1000) NOT NULL,
  `date1` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`orderid`, `username`, `mode`, `amount`, `number`, `address`, `products`, `date1`) VALUES
(1, 'tina', 'COD', 1700, '1234567890', 'zsas', 'Soyabean Chilli , Nonveg Manchow Soup , Veg Hong Kong Rice , Veg Hong Kong Noodles , Non Veg Triple Rice , Nonveg Manchow Noodles ,', '28-Nov-2022, 11:37:54 pm'),
(2, 'tina', 'COD', 740, '1234567890', 'zsas', 'Veg Hong Kong Rice , Veg Schezwan Rice ,', '28-Nov-2022, 11:46:56 pm'),
(3, 'tina', 'COD', 1900, '9766923834', 'Satara', 'Manchow Soup , Veg Triple Rice , Veg Fried Rice , Nonveg Singapore Rice , Nonveg Manchow Noodles ,', '29-Nov-2022, 12:47:39 am'),
(4, 'tina', 'COD', 240, '9766923834', 'Satara', 'Manchow Soup', '29-Nov-2022, 12:56:33 am'),
(5, 'Priya', 'COD', 320, '9766923834', 'Satara', 'Chilli Spice , Manchow Soup ,', '29-Nov-2022, 1:00:16 am'),
(6, 'Priya', 'COD', 300, '9766923834', 'Satara', 'Nonveg Singapore Rice', '29-Nov-2022, 1:01:02 am');

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
('Veg', 'Starter', 'Veg Sweet Corn Soup', 6, 'vscs.jpg', 150, 110),
('Veg', 'Starter', 'Veg Crispy Noodles Soup', 8, 'vcns.jpg', 120, 80),
('Veg', 'Starter', 'Soyabean Chilli', 9, 'sbc.jpg', 150, 100),
('Veg', 'Starter', 'Paneer Chilli', 10, 'pc.jpg', 110, 80),
('Veg', 'Rice', 'Veg Triple Rice', 11, 'vtr.jpg', 250, 180),
('Veg', 'Rice', 'Veg Hong Kong Rice', 12, 'vhkr.jpg', 200, 140),
('Veg', 'Rice', 'Veg Singapore Rice', 13, 'vsr.jpg', 220, 160),
('Veg', 'Rice', 'Veg Schezwan Rice', 14, 'vsr.jpg', 250, 200),
('Veg', 'Rice', 'Veg Fried Rice', 15, 'vfr.jpg', 190, 130),
('Veg', 'Noodles', 'Veg Hong Kong Noodles', 16, 'vhkn.jpg', 250, 180),
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
-- Indexes for table `custreg`
--
ALTER TABLE `custreg`
  ADD PRIMARY KEY (`username`);

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
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

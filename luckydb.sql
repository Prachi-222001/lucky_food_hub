
-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ;

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
) ;

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
  `cartstatus` varchar(100) NOT NULL
) ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`username`, `cakeid`, `price`, `weight`, `amount`, `cartstatus`) VALUES
('raj12', 4, 800, 1, 800, 'in'),
('amol', 5, 80, 1, 80, 'out'),
('amol', 7, 190, 2, 240, 'out'),
('amol', 9, 150, 2, 200, 'out'),
('amol', 8, 120, 2, 160, 'out'),
('amol', 5, 80, 1, 60, 'out'),
('amol', 5, 80, 2, 160, 'out'),
('amol', 5, 80, 5, 400, 'out'),
('amol', 5, 80, 2, 160, 'out'),
('amol', 5, 80, 1, 60, 'out'),
('amol', 5, 80, 5, 400, 'out'),
('amol', 5, 80, 4, 240, 'out'),
('amol', 5, 80, 5, 400, 'out'),
('amol', 5, 80, 5, 400, 'out'),
('amol', 5, 80, 3, 240, 'out'),
('amol', 5, 80, 2, 160, 'out'),
('amol', 5, 80, 1, 80, 'out'),
('amol', 5, 80, 2, 160, 'out'),
('amol', 5, 80, 3, 240, 'out'),
('Priya', 24, 90, 3, 270, 'out'),
('Priya', 6, 150, 2, 200, 'out'),
('Priya', 24, 90, 2, 140, 'in'),
('Priya', 5, 80, 3, 240, 'in');

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
) ;

--
-- Dumping data for table `custreg`
--

INSERT INTO `custreg` (`rgdate`, `fullname`, `phoneno`, `email`, `username`, `password`, `secque`, `secans`) VALUES
('2022-07-16', 'Raj Deshmukh', '9075693521', 'rdeshmukh@gmail.com', 'Satara', '123456', 'Which is your Favourite number?', '18'),
('2022-07-17', 'Siddesh Bhosale', '1234567890', 'bobby12@gmail.com', 'Satara', 'bobby1233', 'Who is your Favourite Cricketer?', 'rohit'),
('2022-07-17', 'Sneha Dhone', '1234567899', 'dhone12@gmail.com', 'Satara', '123789', 'Which is your Favourite number?', '45'),
('2022-08-03', 'Anurag Sawant', '7350453100', 'anurag12@gmail.com', 'Satara', 'Anurag123', 'Which is your Favourite number?', '7'),
('2022-11-24', 'Amol Gayake', '0987654321', 'amol@12gmail.com', 'Amol', 'amol@12', 'Which is your Favourite number?', '1'),
('2022-11-28', 'Priyanka Deshmukh', '1234567890', 'priyaa@gmail.com', 'Priya', 'priya1234', 'Which is your Favourite number?', '1'),
('2022-11-29', 'Priyanka Deshmukh', '1234567890', 'priyaa@gmail.com', 'tina', 'asd123', 'Who is your Favourite Cricketer?', 'asad');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `username` varchar(100) NOT NULL,
  `mode` varchar(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `number` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`username`, `mode`, `amount`, `number`, `address`) VALUES
('amol@12', '0', 320, '9075693521', 'satara'),
('amol@12', '0', 1720, '9075693521', 'satara'),
('amol@12', '0', 1720, '9075693521', 'satara'),
('amol@12', '0', 600, '9075693521', 'satara'),
('amol@12', '0', 600, '9075693521', 'satara'),
('amol@12', '0', 60, '9075693521', 'satara'),
('amol@12', 'COD', 160, '9075693521', 'satara'),
('amol@12', 'COD', 160, '9075693521', 'satara'),
('Amol', 'COD', 2940, '1234567890', 'zsas'),
('Amol', 'COD', 2940, '1234567890', 'zsas'),
('Amol', 'COD', 2940, '1234567890', 'zsas'),
('Amol', 'COD', 2940, '1234567890', 'zsas'),
('Amol', 'COD', 2940, '1234567890', 'zsas'),
('Amol', 'COD', 160, '1234567890', 'zsas'),
('Amol', 'COD', 160, '1234567890', 'asdfgh'),
('Amol', 'COD', 120, '1234567890', 'zsas'),
('Amol', 'COD', 320, '1234567890', 'rajjjjjj'),
('Amol', 'COD', 120, '1234567890', 'aaaaaaaaaaaaa'),
('Amol', 'COD', 160, '1234567890', 'zsassssssssssssss'),
('Amol', 'COD', 2940, '1234567890', 'raghav'),
('Amol', 'COD', 2940, '1234567890', 'zsas'),
('Amol', 'COD', 2940, '1234567890', 'pppp'),
('Amol', 'COD', 2940, '1234567890', 'pppp'),
('Amol', 'COD', 2940, '1234567890', 'zsas'),
('Amol', 'COD', 3840, '1234567890', 'rrrrrrrrrrrrrrrr'),
('Amol', 'COD', 3840, '1234567890', 'zsas'),
('Amol', 'COD', 3840, '1234567890', 'zsas'),
('Amol', 'COD', 120, '1234567890', 'qqqqqqqqqq'),
('Priya', 'COD', 240, '1234567890', 'zsas'),
('Priya', 'COD', 470, '1234567890', 'zsas');

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
) ;

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
) ;

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
) ;

--
-- Dumping data for table `userorderdet`
--

INSERT INTO `userorderdet` (`username`, `cakeid`, `price`, `weight`, `amount`) VALUES
('raj12', 4, 800, 1, 400);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

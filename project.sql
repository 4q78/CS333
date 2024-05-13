-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 10:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `categoryName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `categoryName`) VALUES
(1, 'fruit'),
(2, 'meat'),
(3, 'frozen'),
(4, 'drinks'),
(5, 'diary and eggs'),
(6, 'can');

-- --------------------------------------------------------

--
-- Table structure for table `cusorder`
--

CREATE TABLE `cusorder` (
  `orderID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `datetime` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `dcharge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `oitemID` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `qty` int(11) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `discerption` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `categoryid`, `name`, `price`, `qty`, `picture`, `discerption`) VALUES
(2, 1, 'Dates', 0.9, 10, 'dates.png', 'DATES NEBOT\r\n'),
(3, 1, 'Mango', 1.05, 10, 'mango.jpg', 'MANGO YEMENI THAMOOR 1 KG'),
(4, 1, 'Onion', 1.19, 10, 'onion.jpeg', 'ONION BAG'),
(5, 1, 'Potato', 0.995, 10, 'potato.jpg', 'POTATO BAG'),
(6, 2, 'Beef', 2.49, 10, 'beef.jpeg', 'PAKISTAN BEEF WITH BONES KG'),
(7, 2, 'Fish', 2.785, 10, 'fish.jpeg', 'FISH SEABASS 1KG'),
(8, 2, 'Chicken', 4.35, 10, 'chicken.jpg', 'ALYOUM FRESH CHICKEN BREAST FILLET 900GM'),
(9, 2, 'Turkey', 5.79, 10, 'turkey.jpg', 'ALNEMAH JORDAN SMOKED RAOST TURKEY KG'),
(10, 3, 'Burger', 1.1, 10, 'burger.jpg', 'BMF CHICKEN BURGERS 500GM'),
(11, 3, 'Fillet', 1.325, 10, 'fillet.jpeg', 'AL KABEER BRAEDED CHICKEN FILLET HOT&SPICY 330GM'),
(12, 3, 'Fries', 2.09, 10, 'fries.jpg', 'LAMB WESTON EXTRA CRISPY FRIES 2X750GM'),
(13, 3, 'Zing Chicken', 2.415, 10, 'zing.jpg', 'ALKABEER ZING CHICKEN LOLLIPOP 420GR'),
(14, 4, 'Orange Juice', 1.99, 10, 'orange juice.png', 'ORIGINAL ORANGE DRINK 27 x 250 ML'),
(15, 4, 'Power Drink', 0.3, 10, 'power.jpg', 'GATORADE LEMON LIME FLAVOUR 495ML'),
(16, 4, 'Rabie', 0.09, 10, 'rabie.jpg', 'AL RABIE DRINK ORANGE 200ML'),
(17, 4, 'Water', 0.89, 10, 'water.jpg', 'AL AIN ZERO SODIUM DRINKING WATER 6X1.5L\r\n\r\n\r\n'),
(18, 5, 'Egg', 1.19, 10, 'egg.jpeg', 'EGG AFIA KUWAIT 30 pcs'),
(19, 5, 'Laban', 0.95, 10, 'laban.jpg', 'NADA FRESH LABAN 1.75 LTR'),
(20, 5, 'Milk', 0.95, 10, 'milk.jpg', 'NADA FRESH MILK 1.75 LTR'),
(21, 5, 'Yoghurt', 0.2, 10, 'yoghurt.jpg', 'NADEC FRESH YOGHURT LOW FAT 170GR'),
(22, 6, 'Beans', 0.315, 10, 'beans.png', 'MAZA BAKED BEANS IN TOMATO SAUCE 220 G'),
(23, 6, 'Broad beans', 0.76, 10, 'broadbeans.jpg', 'HILAL BROADBEANS 3X397 GR'),
(24, 6, 'Butter', 1.94, 10, 'butter.jpeg', 'SUE BEE PEANUT BUTTER CREAMY 340 G'),
(25, 6, 'Corn', 1.69, 10, 'corn.jpg', 'NATCO WHOLE KERNAL CORN 4X425G');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `userpassword` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `usertype_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `userpassword`, `name`, `usertype_id`) VALUES
(2, 'zmxwr', '$2y$10$wvlTRUWKwqH3VvrWxuE.2euWITl/kYD7RmTmd3bcyvh', 'Ali', NULL),
(3, 'ali', '$2y$10$2Fp0aoD6noHZJdL.AvN3T.y7JArVQWIC6BVMy8EWgWr', 'Ali', NULL),
(4, 'zmx', '$2y$10$oTb.Y/Xk08E1GovECOkRJevb9QhRCzSRb3fawZ5QiH7EZPZPOfu42', 'Ali', NULL),
(5, 'zahid', '$2y$10$DneNmpQuGeYJC10LjvQb5OWLUTAvn1Tt6qNHPw.jSxmN8x82mFb1a', 'zahid', NULL),
(6, 'Alsagheh', '$2y$10$fgl50iUnjOLLPXIOW5c64.cMjLG1qQgVjTOOF.KqFvwCUWnx4Wf7y', 'Ali Alsagheh', NULL),
(7, '03eez', '$2y$10$76gGzOjtgM4bWsZRNYf9gOLPf5g5KpxBKmKAUWp0VX9O7aLgUrJei', '3z', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `usertype_id` int(11) NOT NULL,
  `usertype` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`usertype_id`, `usertype`) VALUES
(1, 'admin'),
(2, 'staff'),
(3, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `cusorder`
--
ALTER TABLE `cusorder`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`oitemID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `FK` (`categoryid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `usertype_id` (`usertype_id`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`usertype_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cusorder`
--
ALTER TABLE `cusorder`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderitem`
--
ALTER TABLE `orderitem`
  MODIFY `oitemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `usertype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`usertype_id`) REFERENCES `usertype` (`usertype_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2024 at 12:12 AM
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `qty` int(11) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `discerption` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `name`, `price`, `qty`, `picture`, `discerption`) VALUES
(1, '', 0, 0, '', ''),
(2, 'Dates', 0.9, 10, 'dates.png', 'DATES NEBOT\r\n'),
(3, 'Mango', 1.05, 10, 'mango.jpg', 'MANGO YEMENI THAMOOR 1 KG'),
(4, 'Onion', 1.19, 10, 'onion.jpeg', 'ONION BAG'),
(5, 'Potato', 0.995, 10, 'potato.jpg', 'POTATO BAG'),
(6, 'Beef', 2.49, 10, 'beef.jpeg', 'PAKISTAN BEEF WITH BONES KG'),
(7, 'Fish', 2.785, 10, 'fish.jpeg', 'FISH SEABASS 1KG'),
(8, 'Chicken', 4.35, 10, 'chicken.jpg', 'ALYOUM FRESH CHICKEN BREAST FILLET 900GM'),
(9, 'Turkey', 5.79, 10, 'turkey.jpg', 'ALNEMAH JORDAN SMOKED RAOST TURKEY KG'),
(10, 'Burger', 1.1, 10, 'burger.jpg', 'BMF CHICKEN BURGERS 500GM'),
(11, 'Fillet', 1.325, 10, 'fillet.jpeg', 'AL KABEER BRAEDED CHICKEN FILLET HOT&SPICY 330GM'),
(12, 'Fries', 2.09, 10, 'fries.jpg', 'LAMB WESTON EXTRA CRISPY FRIES 2X750GM'),
(13, 'Zing Chicken', 2.415, 10, 'zing.jpg', 'ALKABEER ZING CHICKEN LOLLIPOP 420GR'),
(14, 'Orange Juice', 1.99, 10, 'orange juice.png', 'ORIGINAL ORANGE DRINK 27 x 250 ML'),
(15, 'Power Drink', 0.3, 10, 'power.jpg', 'GATORADE LEMON LIME FLAVOUR 495ML'),
(16, 'Rabie', 0.09, 10, 'rabie.hpg', 'AL RABIE DRINK ORANGE 200ML'),
(17, 'Water', 0.89, 10, 'water.jpg', 'AL AIN ZERO SODIUM DRINKING WATER 6X1.5L\r\n\r\n\r\n'),
(18, 'Egg', 1.19, 10, 'egg.jpeg', 'EGG AFIA KUWAIT 30 pcs'),
(19, 'Laban', 0.95, 10, 'laban.jpg', 'NADA FRESH LABAN 1.75 LTR'),
(20, 'Milk', 0.95, 10, 'milk.jpg', 'NADA FRESH MILK 1.75 LTR'),
(21, 'Yoghurt', 0.2, 10, 'yoghurt.jpg', 'NADEC FRESH YOGHURT LOW FAT 170GR'),
(22, 'Beans', 0.315, 10, 'beans.png', 'MAZA BAKED BEANS IN TOMATO SAUCE 220 G'),
(23, 'Broad beans', 0.76, 10, 'broadbeans.jpg', 'HILAL BROADBEANS 3X397 GR'),
(24, 'Butter', 1.94, 10, 'butter.jpeg', 'SUE BEE PEANUT BUTTER CREAMY 340 G'),
(25, 'Corn', 1.69, 10, 'corn.jpg', 'NATCO WHOLE KERNAL CORN 4X425G');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

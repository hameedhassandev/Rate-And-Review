-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2020 at 08:43 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test3`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `user_id` int(11) NOT NULL,
  `feedback` varchar(300) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `category` varchar(11) NOT NULL,
  `seller_name` varchar(100) NOT NULL,
  `seller_phone` varchar(15) NOT NULL,
  `seller_address` varchar(150) NOT NULL,
  `product_price` double NOT NULL,
  `product_desc` varchar(300) NOT NULL,
  `product_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `product_name`, `category`, `seller_name`, `seller_phone`, `seller_address`, `product_price`, `product_desc`, `product_image`) VALUES
(26, 'p13', 'Watch', 'blaa', '905458453', '8stbnkgdj', 4000, 'dsdsdsds', '5feccd265dff66.34060827.jpg'),
(27, 'sekendo', 'Watch', 'blaa', '9054584598', 'ssl78jsuua', 5000, 'nice high material', '5feccdb9595c52.27042615.jpg'),
(28, 'tv', 'TV', 'tech', '45812325423', 'dghfjk', 14000, 'sjklajn', '5fecd0ea7f56b0.08413040.jpg'),
(29, 'mon', 'Mobile', 'bal', '01255456885', 'afghjjkk', 4500, 'aghjkk', '5fecd7f9523c09.22030058.jpg'),
(30, 'p13', 'Laptop', 'ha12', '012445566222', 'hajkkla', 12000, 'sjjklla', '5fecd822cfc9f1.80644699.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `user_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviewing`
--

CREATE TABLE `reviewing` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `review` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviewing`
--

INSERT INTO `reviewing` (`ID`, `user_id`, `prod_id`, `review`) VALUES
(20, 2, 26, 'great');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `profile_image` varchar(150) NOT NULL DEFAULT 'default3.png',
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `user_name`, `password`, `created_at`, `profile_image`, `first_name`, `last_name`, `is_admin`) VALUES
(1, 'abdelrhmanamen', 'ZERkUnVQZmJMbDZMdnB2Wkd3QStqQT09', '2020-12-30 19:44:25', 'default3.png', 'abdelrhman', 'Amen', 1),
(2, 'doniawalid', 'Q1habElHVXdvVzM1WnZZd0RXMmJxUT09', '2020-12-30 19:48:35', 'default3.png', 'donia', 'walid', 0),
(3, 'adham', 'T3ozUHI5angya01zdm9rNHpxLzRDdz09', '2020-12-30 19:51:53', 'default3.png', 'adham', 'mohamed', 0),
(4, 'abdelrhmansherif', 'blFCS0VHZDlEa2p2c0RLWXJZb2xLUT09', '2020-12-30 19:52:30', 'default3.png', 'abdelrhman', 'sherif', 0),
(5, 'zeinabnabil', 'WStEZmlOV0ZPR1BlMnQzZjFHMWhHUT09', '2020-12-30 19:53:09', 'default3.png', 'zeinab', 'nabil', 0),
(6, 'yasmin', 'Z2xsNWhlcHNhY3FDb0FJS0QxbUZyZz09', '2020-12-30 19:54:20', 'default3.png', 'yasmin', 'yasmin', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `reviewing`
--
ALTER TABLE `reviewing`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviewing`
--
ALTER TABLE `reviewing`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`ID`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`ID`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `products` (`ID`);

--
-- Constraints for table `reviewing`
--
ALTER TABLE `reviewing`
  ADD CONSTRAINT `reviewing_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`ID`),
  ADD CONSTRAINT `reviewing_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `products` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

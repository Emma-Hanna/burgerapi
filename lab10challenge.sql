-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2024 at 06:25 PM
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
-- Database: `lab10challenge`
--

-- --------------------------------------------------------

--
-- Table structure for table `rest_menu`
--

CREATE TABLE `rest_menu` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rest_menu`
--

INSERT INTO `rest_menu` (`id`, `title`, `price`, `type_id`) VALUES
(1, 'Chilli Burger', 9.99, 2),
(2, 'Double Cheese Burger', 14.99, 2),
(3, 'Mexican Burger', 9.99, 2),
(4, 'Cheese Burger', 8.99, 2),
(5, 'The Veggie', 8.99, 1),
(6, 'The Double V', 12.99, 1),
(7, 'Gourmet Salad', 9.99, 1),
(8, 'Chicken Supreme', 9.99, 3),
(9, 'Double Chicken', 14.99, 3),
(10, 'Fire & Cracken', 11.99, 3),
(11, 'Star Burger', 11.99, 2),
(12, 'Full Stack', 13.99, 2),
(13, 'The Big V', 9.50, 1),
(15, 'Nacho Burger', 12.99, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rest_type`
--

CREATE TABLE `rest_type` (
  `id` int(11) NOT NULL,
  `category` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rest_type`
--

INSERT INTO `rest_type` (`id`, `category`) VALUES
(1, 'Vegetarian'),
(2, 'Beef'),
(3, 'Chicken');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rest_menu`
--
ALTER TABLE `rest_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_rest_type_id` (`type_id`);

--
-- Indexes for table `rest_type`
--
ALTER TABLE `rest_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rest_menu`
--
ALTER TABLE `rest_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rest_type`
--
ALTER TABLE `rest_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rest_menu`
--
ALTER TABLE `rest_menu`
  ADD CONSTRAINT `FK_rest_type_id` FOREIGN KEY (`type_id`) REFERENCES `rest_type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2026 at 09:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(50) NOT NULL,
  `emp_name` text NOT NULL,
  `hire_date` date NOT NULL,
  `salary` int(50) NOT NULL,
  `dept_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `hire_date`, `salary`, `dept_id`) VALUES
(0, 'Caro', '2026-05-10', 90000, 1),
(1, 'Rachel', '2026-05-10', 1000000, 2),
(3, 'Aaron', '2026-05-10', 50000, 1),
(4, 'Jade', '2026-05-10', 95000, 3),
(5, 'Caro', '2026-05-09', 95000, 1),
(6, 'Malcom', '2026-05-01', 95000, 3),
(7, 'Joseph', '2026-05-02', 95000, 2),
(8, 'Kelvin', '2026-05-03', 95000, 1),
(9, 'Faith', '2026-05-04', 95000, 3),
(10, 'Dave', '2026-05-05', 95000, 2),
(11, 'Samson', '2026-05-06', 95000, 3),
(12, 'Adrian', '2026-05-07', 95000, 1),
(13, 'Alvin', '2026-05-08', 95000, 3),
(14, 'Telvin', '2026-05-11', 95000, 2),
(15, 'Abraham', '2026-05-12', 95000, 3),
(16, 'Ray', '2026-05-13', 95000, 1),
(17, 'Henry', '2026-05-14', 95000, 3),
(18, 'Samantha', '2026-05-15', 95000, 2),
(19, 'Tina', '2026-05-16', 95000, 1),
(20, 'Mel', '2026-05-17', 95000, 2),
(21, 'Jessy', '2026-05-18', 95000, 3),
(22, 'Peace', '2026-05-19', 95000, 1),
(23, 'Derrick', '2026-05-20', 95000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `laptops`
--

CREATE TABLE `laptops` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `processor` varchar(100) NOT NULL,
  `ram` varchar(50) NOT NULL,
  `storage` varchar(100) NOT NULL,
  `screensize` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laptops`
--

INSERT INTO `laptops` (`id`, `name`, `brand`, `processor`, `ram`, `storage`, `screensize`, `price`, `stock`, `photo`) VALUES
(1, 'lenovo', 'lenovo', 'windows', '8gb', '8gb', '12inch', 45000.00, 20, 'laptop image.webp'),
(2, 'lenovo', 'lenovo', 'windows', '8gb', '8gb', '12inch', 45000.00, 20, 'laptop2 image.jpg'),
(3, 'lenovo', 'lenovo', 'windows', '8gb', '8gb', '12inch', 45000.00, 20, 'laptop2 image.jpg'),
(4, 'lenovo', 'lenovo', 'windows', '8gb', '8gb', '12inch', 45000.00, 20, 'laptop2 image.jpg'),
(5, 'lenovo', 'lenovo', 'windows', '8gb', '8gb', '12inch', 45000.00, 20, 'laptop image.webp');

-- --------------------------------------------------------

--
-- Table structure for table `smartphones`
--

CREATE TABLE `smartphones` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `model` varchar(50) NOT NULL,
  `storage` varchar(50) NOT NULL,
  `ram` varchar(50) NOT NULL,
  `battery` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smartphones`
--

INSERT INTO `smartphones` (`id`, `name`, `brand`, `model`, `storage`, `ram`, `battery`, `price`, `stock`, `photo`) VALUES
(1, 'Tecno', 'Tecno', 'Spark', '256gb', '16gb', '100mAh', 35000.00, 50, 'Smartphone.webp'),
(2, 'Tecno', 'Tecno', 'Spark', '256gb', '16gb', '100mAh', 35000.00, 50, 'Galaxyphone.webp'),
(3, 'Tecno', 'Tecno', 'Spark', '256gb', '16gb', '100mAh', 35000.00, 50, 'Galaxyphone.webp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `laptops`
--
ALTER TABLE `laptops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartphones`
--
ALTER TABLE `smartphones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `laptops`
--
ALTER TABLE `laptops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `smartphones`
--
ALTER TABLE `smartphones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

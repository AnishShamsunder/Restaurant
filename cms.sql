-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2024 at 05:44 AM
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
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'akash', 'admin@admin.com', 'akash'),
(3, 'anushka', 'anushka@gmail.com', 'anushka'),
(4, 'anish', 'anish@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `status` int(11) NOT NULL,
  `category_description` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `category_description`) VALUES
(12, 'Starter', 1, ''),
(13, 'Main Course', 1, ''),
(14, 'Drinks', 1, ''),
(15, 'Dessert', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `deleteduser`
--

CREATE TABLE `deleteduser` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `deltime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `reciver` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `feedbackdata` varchar(500) NOT NULL,
  `attachment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `sender`, `reciver`, `title`, `feedbackdata`, `attachment`) VALUES
(1, 'akash@gmail.com', 'Admin', 'good foodd', 'i loved the food. it was tasty', ' '),
(2, 'anushka@gmail.com', 'Admin', 'bad food', 'NEVER COMING BACK', ' '),
(3, 'Admin', 'anushka@gmail.com', 'RE:bad food', 'sorry we will make sure we do better next time', ''),
(4, 'Admin', 'akash@gmail.com', 'RE:good foodd', 'thank you so much', '');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `pid` int(11) NOT NULL,
  `cid` varchar(11) NOT NULL,
  `cname` varchar(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `rate` varchar(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`pid`, `cid`, `cname`, `name`, `rate`, `description`, `status`) VALUES
(4, '13', 'Starter', 'lays', '20', 'yummy', '1'),
(7, '13', 'Main Course', 'Frankie', '22', 'chilly,potato,very spicy', '1'),
(8, '13', 'Starter', 'bhel', '20', 'with puffed rice', '1'),
(9, '14', 'drinks', 'Coca Cola', '46', 'cold', '1'),
(10, '14', 'Drinks', 'Pepsi', '40', 'ice', '1'),
(11, '14', 'Drinks', 'Chocolate Milkshake', '100', ' cold', '1'),
(12, '14', 'Drinks', 'Tea', '20', 'Special Tea  made By Anish', '1'),
(13, '14', 'Drinks', 'Coffee', '10', 'i love coffee', '1'),
(14, '13', 'Main Course', 'Sandwich', '35', 'New Arrival', '1'),
(16, '12', 'Starter', 'Samosa', '30', 'Punjabi', '1'),
(17, '13', 'Main Course', 'Dosa', '500', 'Riddhi dosa', '1'),
(19, '13', 'Main Course', 'Shawarma', '120', 'Tastyy', '1'),
(20, '15', 'Dessert', 'Ice Cream', '101', 'Creamy ', '1');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `notiuser` varchar(50) NOT NULL,
  `notireciver` varchar(50) NOT NULL,
  `notitype` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `notiuser`, `notireciver`, `notitype`, `time`) VALUES
(27, 'akash@gmail.com', 'Admin', 'Send Feedback', '2024-05-02 07:38:16'),
(28, 'anushka@gmail.com', 'Admin', 'Send Feedback', '2024-05-03 03:00:38'),
(29, 'ashok@gmail.com', 'Admin', 'Create Account', '2024-05-03 03:06:05'),
(30, 'ashok2@gmail.com', 'Admin', 'Create Account', '2024-05-03 03:12:10'),
(31, 'ashok@gmail.com', 'Admin', 'Create Account', '2024-05-03 03:18:38'),
(32, 'Admin', 'anushka@gmail.com', 'Send Message', '2024-05-03 03:35:28'),
(33, 'Admin', 'akash@gmail.com', 'Send Message', '2024-05-03 03:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `items` varchar(200) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `name`, `items`, `quantity`, `amount`, `status`) VALUES
(26, 'akash@gmail.com', '16', '5', 158, 1),
(27, 'akash@gmail.com', '18,8', '7,4', 2605, 1),
(28, 'anish@gmail.com', '16,18,4,7', '1,1,1,1', 436, 1),
(29, 'anushka@gmail.com', '16,4,14', '5,4,3', 352, 1),
(30, 'ashok@gmail.com', '16,14,9', '2,1,1', 148, 1),
(31, 'anushka@gmail.com', '12,20', '1,1', 127, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobno` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `mobno`) VALUES
(9, 'qwe', 'dd', '123', '1234567');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `gender`, `mobile`, `designation`, `image`, `status`) VALUES
(24, 'Akash', 'akash@gmail.com', 'akash', 'Male', '1234567890', 'Engineer', 'john.jpg', 1),
(25, 'Anish', 'anish@gmail.com', 'anish', 'Male', '0987654321', 'Engineer', 'jane.jpg', 1),
(26, 'Anushka', 'anushka@gmail.com', 'anushka', 'Female', '1231237890', 'Engineer', 'anushka.jpg', 1),
(29, 'ashok sir', 'ashok@gmail.com', 'ashok', 'Male', '6', 'Teacher', 'marguerite-729510_640.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deleteduser`
--
ALTER TABLE `deleteduser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `deleteduser`
--
ALTER TABLE `deleteduser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

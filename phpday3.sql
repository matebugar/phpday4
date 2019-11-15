-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 15, 2019 at 08:54 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpday3`
--

-- --------------------------------------------------------

--
-- Table structure for table `AdminTable`
--

CREATE TABLE `AdminTable` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `active` int(1) NOT NULL DEFAULT 0,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AdminTable`
--

INSERT INTO `AdminTable` (`id`, `first_name`, `last_name`, `date_of_birth`, `active`, `image`) VALUES
(1, 'Francisco', 'Moreno', '2000-12-12', 0, 'https://cdn.pixabay.com/photo/2019/11/10/11/31/landscape-4615578_960_720.jpg'),
(2, 'Mate', 'Moreno', '1990-08-25', 0, 'https://cdn.pixabay.com/photo/2019/11/10/11/31/landscape-4615578_960_720.jpg'),
(5, 'Francisco', 'Oldie', '2018-12-11', 0, 'https://cdn.pixabay.com/photo/2019/11/10/11/31/landscape-4615578_960_720.jpg'),
(7, 'Francisco', 'Bugar', '1925-11-12', 0, 'https://cdn.pixabay.com/photo/2019/11/10/11/31/landscape-4615578_960_720.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `phonenumber` varchar(14) NOT NULL,
  `role` varchar(40) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPass`, `dateOfBirth`, `phonenumber`, `role`) VALUES
(3, 'User User', 'user@user.com', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '2019-11-07', '1232133', 'admin'),
(4, 'Francisco Moreno', 'testititle@gmail.com', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '2019-11-01', '12312312312', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AdminTable`
--
ALTER TABLE `AdminTable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AdminTable`
--
ALTER TABLE `AdminTable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

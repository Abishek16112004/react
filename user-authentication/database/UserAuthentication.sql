-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 12, 2023 at 10:43 AM
-- Server version: 8.0.33-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `UserAuthentication`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('0','1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0',
  `dob` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `department` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `phoneNumber`, `password`, `status`, `dob`, `gender`, `department`, `image`) VALUES
(1, 'Admin', 'Admin', 'admin@gmail.com', '7894561230', '123456', '1', '1986-12-18', '', '', 'image-1683703103180-407709338.jpeg'),
(3, 'Abishek', 'Kumar', 'kabishek@teqmavens.com', '7894561230', '123456', '2', '1986-12-18', '', '', 'image-1683703103180-407709338.jpeg'),
(4, 'Deepu', 'Gour', 'deepu@gmail.com', '7894561230', '123456', '2', '1986-12-18', '', '', 'image-1683703103180-407709338.jpeg'),
(5, 'Deepankar', 'Rao', 'deepankar@gmail.com', '7894561230', '123456', '2', '1986-12-18', '', '', 'image-1683703103180-407709338.jpeg'),
(6, 'Harsh', 'Kumar', 'harsh@gmail.com', '7894561230', '123456', '2', '1986-12-18', '', '', 'image-1683703103180-407709338.jpeg'),
(7, 'Kunal', 'Verma', 'kunal@gmail.com', '7894561230', '123456', '2', '1986-12-18', '', '', ''),
(8, 'Chandresh', 'Kumar', 'chandresh@gmail.com', '7894561230', '123456', '2', '1986-12-18', '', '', 'image-1683703103180-407709338.jpeg'),
(9, 'Ajay', 'singh', 'ajay@gmail.com', '7894561230', '123456', '2', '1986-12-18', '', '', ''),
(11, 'Sanjay', 'singh', 'sanjay@gmail.com', '7894561230', '123456', '2', '1986-12-18', '', '', 'image-1683703103180-407709338.jpeg'),
(13, 'TEst', 'TEst', 'TEst', '1234467890', '123456', '2', '1986-12-18', '', '', 'image-1683703103180-407709338.jpeg'),
(14, 'hjjArun', 'Verma', 'arun@gmail.com', '7894561230', '123456', '2', '1986-12-18', '', '', 'image-1683703103180-407709338.jpeg'),
(15, 'Abishek', 'Kumar', 'test3@gmail.com', '7894561230', '123456', '2', '1986-12-18', '', '', 'image-1683703103180-407709338.jpeg'),
(16, 'Abishek', 'Kumar', 'nexa@gmail.com', '7894561230', '123456', '2', '1986-12-18', '', '', 'image-1683703103180-407709338.jpeg'),
(17, 'test', 'test', 'test2@gmail.com', '7894561230', '123456', '0', '1986-12-18', '', '', 'image-1683703103180-407709338.jpeg'),
(36, 'Kunal', 'Kumar', 'kunal1@gmail.com', '7894561230', '123456', '2', '1986-12-18', '', '', 'image-1683703103180-407709338.jpeg'),
(37, 'surajggg', 'kumar', 'suraj@gmail.com', '7894561230', '123456', '0', '1986-12-18', '', '', 'image-1683703103180-407709338.jpeg'),
(38, 'suraj', 'kumar', 'suraj1@gmail.com', '7894561230', '123456', '2', '1986-12-18', '', '', 'image-1683705188541-194681187.jpg'),
(39, 'Gurmeet', 'Singh', 'gurmeet@gmail.com', '7894561230', '123456', '2', '2008-11-16', '', '', 'image-1683705188541-194681187.jpg'),
(40, 'sachin', 'singh', 'sachin1@gmail.com', '7894561230', '123456', '2', '1999-12-16', '', '', ''),
(41, 'Abishek', 'Kumar', 'ss@gmail.com', '7894561230', '123456', '2', '2023-05-17', '', '', ''),
(42, 'gourav', 'singh', 'gourav@gmail.com', '7894561230', '123456', '2', '16-11-1999', 'male', 'Hr', ''),
(43, 'Mukesh', 'kumar', 'mukesh@gmail.com', '7894561230', '123456', '2', '2023-05-10', '', 'Software Engineering', ''),
(44, 'test', 'test', 'test44@gmail.com', '7894561230', '123456', '2', '2023-05-10', '', 'Software Engineering', ''),
(45, 'test', 'test', 'test555f53@gmail.com', '7894561230', '123456', '2', '2023-05-10', 'Male', 'Software Engineering', ''),
(46, 'sanju', 'sanju', 'sanju@gmail.com', '7894561230', '123456', '2', '2005-11-16', 'Male', 'Software Engineering', 'image-1683705188541-194681187.jpg\r\n\r\n'),
(47, 'deepak', 'verma', 'deepak@gmail.com', '7894561230', '123456', '0', '2023-05-10', 'Male', 'Software Engineering', 'image-1683703103180-407709338.jpeg'),
(48, 'test', 'test', 'test20@gmail.com', '7894561230', '123456', '2', '2023-05-10', 'Male', 'Software Engineering', 'image-1683705188541-194681187.jpg\r\n\r\n'),
(49, 'test', 'test', 'test09@gmail.com', '7894561230', '123456', '2', '2023-05-10', 'Male', 'Technical Support', 'image-1683705188541-194681187.jpg\r\n\r\n'),
(51, 'tet', 'test', 'test91@gmail.com', '7894561230', '123456', '2', '2023-05-10', 'Male', 'Technical Support', 'image-1683705188541-194681187.jpg\r\n\r\n'),
(52, 'test', 'test', 'test212@gmail.com', '7894561230', '123456', '0', '2023-05-10', 'Male', 'Hr Department', 'image-1683705188541-194681187.jpg\r\n\r\n'),
(53, 'tets', 'test', 'test34@gmail.com', '7894561230', '123456', '2', '2023-05-10', 'Male', 'Technical Support', 'image-1683705188541-194681187.jpg\r\n\r\n'),
(54, 'test', 'tets', 'test243@gmail.com', '7894561230', '123456', '2', '2023-05-10', 'Male', 'Technical Support', 'image-1683705188541-194681187.jpg\r\n\r\n'),
(55, 'tedst', 'tets', 'test2@gmgggail.com', '7894561230', '123456', '0', '2023-05-10', 'Male', 'Software Engineering', 'image-1683703103180-407709338.jpeg\r\n\r\n\r\n'),
(57, 'test', 'test', 'test145@gmail.com', '7894561230', '123456', '0', '2023-05-10', '', 'test', 'image-1683703103180-407709338.jpeg'),
(58, 'sanju', 'sanju', 'sam4@gmailc.om', '7894561230', '123456', '0', '2023-05-10', 'Male', 'Software Engineering', 'image-1683703103180-407709338.jpeg'),
(59, 'tedst', 'test', 'tdt@gmail.com', '7894561230', '123456', '0', '2005-11-16', 'Male', 'Digital Marketing', 'image-1683704171716-613526602.png'),
(60, 'tet', 'test', 'kabisbbhek@teqmavens.com', '7894561230', 'testt', '0', '2023-05-10', 'Male', 'Technical Support', 'image-1683705188541-194681187.jpg'),
(61, 'anuj', 'sharma', 'anju@gmail.com', '7894561230', '123456', '0', '2023-05-10', 'Male', 'Software Engineering', 'image-1683705188541-194681187.jpg\r\n'),
(62, 'Abishek', 'Kumar', 'test091@gmail.com', '7894561230', '123456', '0', '2023-05-10', 'Male', 'Technical Support', 'image-1683703103180-407709338.jpeg'),
(63, 'noise', 'watch', 'noise@gmail.com', '7894561230', '123456', '0', '2004-11-16', 'Male', 'Software Engineering', 'image-1683718616406-348272983.jpeg'),
(64, 'tet', 'tet', 'nextta@gmail.com', '7894561230', '123456', '0', '2023-05-11', 'Male', 'Software Engineering', 'image-1683780798183-391188758.png'),
(65, 'Abishek', 'Kumar', 'ter405@gmail.com', '7894561230', '123456', '0', '2023-05-11', 'Male', 'Software Engineering', 'image-1683780798183-391188758.png');

--
-- Indexes for dumped tables
--
--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2025 at 05:13 AM
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
-- Database: `minni-scci`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'IT member'),
(2, 'Markting'),
(3, 'AppSplash'),
(4, 'Investeneur'),
(5, 'TechSolve');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` int(11) NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `workshop_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `member_img` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `member_name`, `workshop_id`, `category_id`, `member_img`) VALUES
(3, 'radwan', 4, 1, 'Mohamed Radwan.jpg'),
(10, 'Mahmoud Awad', 4, 1, 'Mahmoud Awad.jpg'),
(11, 'Mariam Mohamed', 4, 1, 'Mariam Mohamed.jpg'),
(12, 'Ahmed Gamal', 4, 1, 'Ahmed Gamal.jpg'),
(13, 'Abdelrahman Rassmy', 4, 1, 'Abdelrahman Rassmy.jpg'),
(14, 'Sarah Zawal', 4, 1, 'Sarah Zawal.jpg'),
(15, 'yasmin mohamed', 4, 1, 'yasmin mohamed.jpg'),
(16, 'Ahmed Khaled', 3, 3, 'Ahmed Khaled.jpg'),
(17, 'Omar Youssef', 3, 3, 'Omar Youssef.jpg'),
(18, 'Ali Hassan', 3, 3, 'Ali Hassan.jpg'),
(19, 'Fatima Noor', 3, 3, 'Fatima Noor.jpg'),
(20, 'Aisha Mariam', 3, 3, 'Aisha Mariam.jpg'),
(21, 'Leila Salma', 3, 3, 'Leila Salma.jpg'),
(22, 'Tarek Samir', 6, 4, 'Tarek Samir.jpg'),
(23, 'Ibrahim Ziad', 6, 4, 'Ibrahim Ziad.jpg'),
(24, 'Mahmoud Faisal', 6, 4, 'Mahmoud Faisal.jpg'),
(25, 'Noor Huda', 6, 4, 'Noor Huda.jpg'),
(26, 'Salma Yasmin', 6, 4, 'Salma Yasmin.jpg'),
(27, 'Huda Amira', 6, 4, 'Huda Amira.jpg'),
(28, 'Khaled Nabil', 5, 2, 'Khaled Nabil.jpg'),
(29, 'Youssef Amir', 5, 2, 'Youssef Amir.jpg'),
(30, 'Samir Adel', 5, 2, 'Samir Adel.jpg'),
(31, 'Mariam Sara', 5, 2, 'Mariam Sara.jpg'),
(32, 'Rania Dina', 5, 2, 'Rania Dina.jpg'),
(33, 'Yasmin Lina', 5, 2, 'Yasmin Lina.jpg'),
(34, 'Hassan Mostafa', 7, 5, 'Hassan Mostafa.jpg'),
(35, 'Ziad Kareem', 7, 5, 'Ziad Kareem.jpg'),
(36, 'Faisal Rami', 7, 5, 'Faisal Rami.jpg'),
(37, 'Sara Laila', 7, 5, 'Sara Laila.jpg'),
(38, 'Dina Nour', 7, 5, 'Dina Nour.jpg'),
(39, 'Amira Hana', 7, 5, 'Amira Hana.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `outcome`
--

CREATE TABLE `outcome` (
  `Outcome_id` int(11) NOT NULL,
  `Outcome_name` varchar(255) NOT NULL,
  `workshop_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `outcome`
--

INSERT INTO `outcome` (`Outcome_id`, `Outcome_name`, `workshop_id`) VALUES
(1, 'Build Your Own Website\r\n', 4),
(2, 'Front-end Basics\r\n', 4),
(3, 'Interactive & Animated Web Pages\r\n', 4),
(4, 'Comprehensive Marketing Plan Creation', 5),
(5, 'Professional Graphic Design (Logos/Posters)', 5),
(6, 'Market your own product', 5),
(7, 'Native Android App UI/UX Design', 3),
(8, 'API Integration and Local Data Storage', 3),
(9, 'Fundamental Java Programming', 3),
(10, 'Business Pitch Deck Development', 6),
(11, 'Investment Strategy & Financial Market Analysis', 6),
(12, 'Data Analysis with Excel', 6),
(13, 'Basic C++ for Microcontrollers', 7),
(14, 'Hardware Interfacing and Circuit Building', 7),
(15, 'Functional Prototype/Robot Creation', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tools`
--

CREATE TABLE `tools` (
  `tool_id` int(11) NOT NULL,
  `tool_name` varchar(255) NOT NULL,
  `workshop_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tools`
--

INSERT INTO `tools` (`tool_id`, `tool_name`, `workshop_id`) VALUES
(11, 'Notion', 4),
(12, 'HTML', 4),
(13, 'CSS', 4),
(14, 'Bootstrap', 4),
(15, 'JavaScript', 4),
(16, 'jQuery\r\n', 4),
(17, 'Notion', 5),
(18, 'Photoshop', 5),
(19, 'Canva', 5),
(20, 'Google Analytics', 5),
(21, 'Notion', 3),
(22, 'Android Studio', 3),
(23, 'Java', 3),
(24, 'XML', 3),
(25, 'SQL Lite', 3),
(26, 'Retrofit', 3),
(27, 'Notion', 6),
(28, 'TradingView', 6),
(29, 'Excel', 6),
(30, 'Pitch Decks', 6),
(31, 'Notion', 7),
(32, 'Arduino IDE', 7),
(33, 'C++', 7),
(34, 'Breadboard', 7),
(35, 'Sensors & Motors', 7);

-- --------------------------------------------------------

--
-- Table structure for table `workshops`
--

CREATE TABLE `workshops` (
  `workshop_id` int(11) NOT NULL,
  `workshop_name` varchar(255) NOT NULL,
  `workshop_des` longtext NOT NULL,
  `workshop_img` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workshops`
--

INSERT INTO `workshops` (`workshop_id`, `workshop_name`, `workshop_des`, `workshop_img`) VALUES
(3, 'AppSplash - Mobile Development', 'Here You Will Learn How To Make A Great Android Apps By Using XML For The Design And JAVA For Coding Your Apps', 'WhatsApp Image 2025-11-23 at 09.02.15_0efd4bf9.jpg'),
(4, 'Divology – Web Dev & UI/UX', 'Firstly,you will learn how to wireframe your website then you will convert it into codes tith diifrent technologies', 'Divology.jpg'),
(5, 'Marketive – Digital Marketing', 'Here You Can Find Both Marketing And Designing Hacks, Tips And Tricks Where You Can Learn About Offline Marketing And Online Marketing', 'Marketive.jpg'),
(6, 'Investenuer – Entrepreneurship', 'The Place To Know From Where And How Can You Get Fund And How Will You Deal With Sponsors And Will Learn About The Investors Mentality With Their Varies Types', 'Investenuer.jpg'),
(7, 'Techsolve', 'We Combine Hardware With Software Using Arduino And Hardware Components', 'Techsolve.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `workshop_id` (`workshop_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `outcome`
--
ALTER TABLE `outcome`
  ADD PRIMARY KEY (`Outcome_id`);

--
-- Indexes for table `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`tool_id`);

--
-- Indexes for table `workshops`
--
ALTER TABLE `workshops`
  ADD PRIMARY KEY (`workshop_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `outcome`
--
ALTER TABLE `outcome`
  MODIFY `Outcome_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tools`
--
ALTER TABLE `tools`
  MODIFY `tool_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `workshops`
--
ALTER TABLE `workshops`
  MODIFY `workshop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_ibfk_1` FOREIGN KEY (`workshop_id`) REFERENCES `workshops` (`workshop_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `members_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `outcome`
--
ALTER TABLE `outcome`
  ADD CONSTRAINT `outcome_ibfk_1` FOREIGN KEY (`workshop_id`) REFERENCES `workshops` (`workshop_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tools`
--
ALTER TABLE `tools`
  ADD CONSTRAINT `tools_ibfk_1` FOREIGN KEY (`workshop_id`) REFERENCES `workshops` (`workshop_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

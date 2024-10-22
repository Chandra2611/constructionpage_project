-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2024 at 04:55 PM
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
-- Database: `fonicy`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_table`
--

CREATE TABLE `about_table` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_table`
--

INSERT INTO `about_table` (`id`, `content`, `img`) VALUES
(1, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of Lorem Ipsum,', '66ef883d5ec25.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `choose_table`
--

CREATE TABLE `choose_table` (
  `id` int(11) NOT NULL,
  `heading` varchar(30) NOT NULL,
  `img` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `choose_table`
--

INSERT INTO `choose_table` (`id`, `heading`, `img`, `content`) VALUES
(1, 'Project done on time', '66ed1b701ac1f.png', 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin wo'),
(2, 'Always avaliable', '66ed1bf648ffd.png', 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin wo'),
(3, 'Professional and responsible', '66ed1be838d0b.png', 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin wo');

-- --------------------------------------------------------

--
-- Table structure for table `construction_table`
--

CREATE TABLE `construction_table` (
  `id` int(11) NOT NULL,
  `heading` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `construction_table`
--

INSERT INTO `construction_table` (`id`, `heading`) VALUES
(4, 'SUSTAINABLE CONSTRUCTION'),
(5, 'BUILDING YOUR VISION'),
(6, 'Explore Our Projects'),
(7, 'Partner With Us');

-- --------------------------------------------------------

--
-- Table structure for table `foncyprj_email_upload`
--

CREATE TABLE `foncyprj_email_upload` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foncyprj_email_upload`
--

INSERT INTO `foncyprj_email_upload` (`id`, `email`) VALUES
(1, 'chandra@gmail.com'),
(2, 'developer@gmail.com'),
(3, 'sekhar2@gmail.com'),
(4, 'designer@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `fonicy_prj`
--

CREATE TABLE `fonicy_prj` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(255) NOT NULL,
  `priority` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fonicy_prj`
--

INSERT INTO `fonicy_prj` (`id`, `name`, `number`, `email`, `message`, `priority`) VALUES
(1, 'chandra sekhar prusty482', '9777864428', 'chandraprusty2611@gmail.com', 'my first project', 'Important'),
(2, 'saroj behera', '9658516244', 'sekharprusty2@gmail.com', 'wow this is awesomee', 'Important'),
(3, 'Prasant das', '9856217890', 'prasant25@gmail.com', 'This construction site is awesom', 'Important'),
(4, 'sashank sekhar prusty', '9658516244', 'freefireone871@gmail.com', 'yuukdfnass', 'Not Important'),
(7, 'Susmita Behera', '9856217890', 'susmita12@gmail.com', 'Make this dynamic', 'Important'),
(19, ' sekhar prusty', '9777864428', 'chandraprusty@gmail.com', 'Make this dynamic', 'Important'),
(20, 'Sujata Behera', '9556623726', 'suja52@gmail.com', 'Try Something new', 'Not Important');

-- --------------------------------------------------------

--
-- Table structure for table `login_table`
--

CREATE TABLE `login_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_table`
--

INSERT INTO `login_table` (`id`, `username`, `password`) VALUES
(1, 'Fonciadmin@123', 'fonci2354');

-- --------------------------------------------------------

--
-- Table structure for table `project_table`
--

CREATE TABLE `project_table` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `img` varchar(255) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_table`
--

INSERT INTO `project_table` (`id`, `category`, `img`, `heading`, `content`) VALUES
(2, 'painting', '66ebad0c14775.jpg', 'Interior Work', 'alteration is some form, by injected humor , or randomized words which do not look even slightly believe. If you are going to use.'),
(3, 'reconstruction', '66ebae089aa1b.jpg', 'Interior Work', 'alteration is some form, by injected humor , or randomized words which do not look even slightly believe. If you are going to use.'),
(4, 'repair', '66ebae11b0415.jpg', 'Interior Work', 'alteration is some form, by injected humor , or randomized words which do not look even slightly believe. If you are going to use.'),
(5, 'residential', '66ebae1f6b515.jpg', 'Interior Work', 'alteration is some form, by injected humor , or randomized words which do not look even slightly believe. If you are going to use.'),
(6, 'styling', '66ebae2503c05.jpg', 'Interior Work', 'alteration is some form, by injected humor , or randomized words which do not look even slightly believe. If you are going to use.');

-- --------------------------------------------------------

--
-- Table structure for table `service_table`
--

CREATE TABLE `service_table` (
  `id` int(11) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` tinyint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_table`
--

INSERT INTO `service_table` (`id`, `heading`, `content`, `img`, `status`) VALUES
(5, 'BUILDING MODELING', 'fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using L', '66e97d0f6c3ef.png', 1),
(6, 'PRE CONSTRUCTION', 'fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using L', '66e97d59501a7.png', 1),
(7, 'MANAGEMENT', 'fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using L', '66e97d84c8cc2.png', 1),
(13, 'CONSTRUCTION SERVICES', 'fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using L', '66e9918be0bc5.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_table`
--

CREATE TABLE `testimonial_table` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `img` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonial_table`
--

INSERT INTO `testimonial_table` (`id`, `name`, `img`, `content`) VALUES
(1, 'Morojink', '66ece70f17523.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut                       labore                       et                       dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labori'),
(2, 'Elle Hughes', '66ed05ac9c83e.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut                       labore                       et                       dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labori'),
(3, 'Italo Melo', '66ed07bf6f3f1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut                       labore                       et                       dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labori');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_table`
--
ALTER TABLE `about_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choose_table`
--
ALTER TABLE `choose_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `construction_table`
--
ALTER TABLE `construction_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foncyprj_email_upload`
--
ALTER TABLE `foncyprj_email_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fonicy_prj`
--
ALTER TABLE `fonicy_prj`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_table`
--
ALTER TABLE `login_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_table`
--
ALTER TABLE `project_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_table`
--
ALTER TABLE `service_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial_table`
--
ALTER TABLE `testimonial_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_table`
--
ALTER TABLE `about_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `choose_table`
--
ALTER TABLE `choose_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `construction_table`
--
ALTER TABLE `construction_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `foncyprj_email_upload`
--
ALTER TABLE `foncyprj_email_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fonicy_prj`
--
ALTER TABLE `fonicy_prj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `login_table`
--
ALTER TABLE `login_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project_table`
--
ALTER TABLE `project_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `service_table`
--
ALTER TABLE `service_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `testimonial_table`
--
ALTER TABLE `testimonial_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

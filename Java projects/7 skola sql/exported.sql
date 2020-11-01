-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2020 at 04:57 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skola`
--

-- --------------------------------------------------------

--
-- Table structure for table `pupils`
--

CREATE TABLE `pupils` (
  `pupil_ID` int(221) NOT NULL,
  `pupil_Firstname` varchar(256) NOT NULL,
  `pupil_Lastname` varchar(256) NOT NULL,
  `pupil_gender` varchar(99) NOT NULL,
  `pupil_class` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pupils`
--

INSERT INTO `pupils` (`pupil_ID`, `pupil_Firstname`, `pupil_Lastname`, `pupil_gender`, `pupil_class`) VALUES
(1, 'Giorgi', 'giorgishvili', 'male', 'C#3'),
(2, 'Nika', 'nikashvili', 'male', 'C#4'),
(3, 'Nini', 'ninishvili', 'female', 'C#3');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_of_lessons`
--

CREATE TABLE `schedule_of_lessons` (
  `lesson_ID` int(221) NOT NULL,
  `lesson_name` varchar(256) NOT NULL,
  `lesson_teacher` varchar(256) NOT NULL,
  `lesson_class` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule_of_lessons`
--

INSERT INTO `schedule_of_lessons` (`lesson_ID`, `lesson_name`, `lesson_teacher`, `lesson_class`) VALUES
(1, 'English', 'Nana', 'C#3'),
(2, 'Sport', 'Levan', 'C#3'),
(3, 'English', 'Merab', 'C#4');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacher_ID` int(221) NOT NULL,
  `teacher_Firstname` varchar(256) NOT NULL,
  `teacher_Lastname` varchar(256) NOT NULL,
  `teacher_gender` varchar(99) NOT NULL,
  `teacher_subject` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacher_ID`, `teacher_Firstname`, `teacher_Lastname`, `teacher_gender`, `teacher_subject`) VALUES
(1, 'Nana', 'nanashvili', 'female', 'English'),
(2, 'Levan', 'levanishvili', 'male', 'Sport'),
(3, 'Merab', 'merabishvili', 'male', 'English');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pupils`
--
ALTER TABLE `pupils`
  ADD PRIMARY KEY (`pupil_ID`);

--
-- Indexes for table `schedule_of_lessons`
--
ALTER TABLE `schedule_of_lessons`
  ADD PRIMARY KEY (`lesson_ID`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pupils`
--
ALTER TABLE `pupils`
  MODIFY `pupil_ID` int(221) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedule_of_lessons`
--
ALTER TABLE `schedule_of_lessons`
  MODIFY `lesson_ID` int(221) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_ID` int(221) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

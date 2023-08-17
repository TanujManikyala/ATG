-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 17, 2023 at 05:05 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20469554_ttms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `password`) VALUES
('admin', 'pass123');

-- --------------------------------------------------------

--
-- Table structure for table `C123`
--

CREATE TABLE `C123` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `C123`
--

INSERT INTO `C123` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `CD123`
--

CREATE TABLE `CD123` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `CD123`
--

INSERT INTO `CD123` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `name` varchar(30) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`name`, `status`) VALUES
('B201', 2),
('F201', 1),
('S301', 3);

-- --------------------------------------------------------

--
-- Table structure for table `D123`
--

CREATE TABLE `D123` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `D123`
--

INSERT INTO `D123` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `Dev123`
--

CREATE TABLE `Dev123` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Dev123`
--

INSERT INTO `Dev123` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('friday', 'DEV123<br>', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', 'DEV123<br>', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', 'DEV123<br>', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', 'DEV123<br>', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `M123`
--

CREATE TABLE `M123` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `M123`
--

INSERT INTO `M123` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `semester1`
--

CREATE TABLE `semester1` (
  `id` int(100) NOT NULL,
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `semester1`
--

INSERT INTO `semester1` (`id`, `day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
(0, 'monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -');

-- --------------------------------------------------------

--
-- Table structure for table `semester2`
--

CREATE TABLE `semester2` (
  `id` int(100) NOT NULL,
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `semester2`
--

INSERT INTO `semester2` (`id`, `day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
(0, 'monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -');

-- --------------------------------------------------------

--
-- Table structure for table `semester3`
--

CREATE TABLE `semester3` (
  `id` int(100) NOT NULL,
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `semester3`
--

INSERT INTO `semester3` (`id`, `day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
(0, 'monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -');

-- --------------------------------------------------------

--
-- Table structure for table `semester4`
--

CREATE TABLE `semester4` (
  `id` int(100) NOT NULL,
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `semester4`
--

INSERT INTO `semester4` (`id`, `day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
(0, 'monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -');

-- --------------------------------------------------------

--
-- Table structure for table `semester5`
--

CREATE TABLE `semester5` (
  `id` int(100) NOT NULL,
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `semester5`
--

INSERT INTO `semester5` (`id`, `day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
(0, 'monday', 'CD04<br>CD', 'CN03<br>CN', 'ML02<br>ML', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'tuesday', 'CD04<br>CD', 'CN03<br>CN', 'ML02<br>ML', 'DAA01<br>DAA', '-<br>-', '-<br>-, -, -'),
(0, 'wednesday', 'CN03<br>CN', 'ML02<br>ML', 'DAA01<br>DAA', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'thursday', 'ML02<br>ML', 'DAA01<br>DAA', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'friday', 'DAA01<br>DAA', 'CD04<br>CD', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'saturday', 'CD04<br>CD', 'CN03<br>CN', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -');

-- --------------------------------------------------------

--
-- Table structure for table `semester6`
--

CREATE TABLE `semester6` (
  `id` int(100) NOT NULL,
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `semester6`
--

INSERT INTO `semester6` (`id`, `day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
(0, 'monday', 'DEV123<br>DEV', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'thursday', 'DEV123<br>DEV', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'friday', 'DEV123<br>DEV', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'saturday', 'DEV123<br>DEV', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -');

-- --------------------------------------------------------

--
-- Table structure for table `semester7`
--

CREATE TABLE `semester7` (
  `id` int(100) NOT NULL,
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `semester7`
--

INSERT INTO `semester7` (`id`, `day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
(0, 'monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -');

-- --------------------------------------------------------

--
-- Table structure for table `semester8`
--

CREATE TABLE `semester8` (
  `id` int(100) NOT NULL,
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `semester8`
--

INSERT INTO `semester8` (`id`, `day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
(0, 'monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
(0, 'saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_code` varchar(10) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `course_type` varchar(15) NOT NULL,
  `semester` int(1) NOT NULL,
  `department` varchar(50) NOT NULL,
  `isAlloted` int(1) NOT NULL,
  `allotedto` text NOT NULL,
  `allotedto2` text NOT NULL,
  `allotedto3` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_code`, `subject_name`, `course_type`, `semester`, `department`, `isAlloted`, `allotedto`, `allotedto2`, `allotedto3`) VALUES
('DEV123', 'DEVOPS', 'THEORY', 6, 'Computer Engg AIML.', 1, 'Dev123', '', ''),
('CD04', 'CD', 'THEORY', 5, 'Computer Engg AIML.', 1, 'CD123', '', ''),
('CN03', 'CN', 'THEORY', 5, 'Computer Engg AIML.', 1, 'C123', '', ''),
('ML02', 'ML', 'THEORY', 5, 'Computer Engg AIML.', 1, 'M123', '', ''),
('DAA01', 'DAA', 'THEORY', 5, 'Computer Engg AIML.', 1, 'D123', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `faculty_number` varchar(10) NOT NULL,
  `name` text NOT NULL,
  `alias` varchar(10) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `emailid` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`faculty_number`, `name`, `alias`, `designation`, `contact_number`, `emailid`) VALUES
('CD123', 'MAITHILY', 'CD', 'Associate Professor', '6789234565', 'maithili@gmail.com'),
('C123', 'SURRENDAR', 'CN', 'Associate Professor', '6789012345', 'surrendar@gmail.com'),
('M123', 'SOWJANYA', 'ML', 'Associate Professor', '8877654356', 'sowjanya@gmail.com'),
('D123', 'NAVEEN', 'DAA', 'Associate Professor', '9834651288', 'naveen@gmail.com'),
('Dev123', 'DEVADAS', 'DEV', 'Assistant Professor', '8833456765', 'devadas@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `id` int(100) NOT NULL,
  `semester` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`id`, `semester`) VALUES
(1, 3),
(2, 2),
(3, 3),
(4, 2),
(5, 1),
(6, 6),
(7, 7),
(8, 8),
(9, 5),
(10, 5),
(11, 6),
(12, NULL),
(13, 5),
(14, 7),
(15, 7),
(16, 7),
(17, 5),
(18, 2),
(19, 3),
(20, 6),
(21, 4),
(22, 6),
(23, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `C123`
--
ALTER TABLE `C123`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `CD123`
--
ALTER TABLE `CD123`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `D123`
--
ALTER TABLE `D123`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `Dev123`
--
ALTER TABLE `Dev123`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `M123`
--
ALTER TABLE `M123`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `semester1`
--
ALTER TABLE `semester1`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `semester2`
--
ALTER TABLE `semester2`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `semester3`
--
ALTER TABLE `semester3`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `semester4`
--
ALTER TABLE `semester4`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `semester5`
--
ALTER TABLE `semester5`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `semester6`
--
ALTER TABLE `semester6`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `semester7`
--
ALTER TABLE `semester7`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `semester8`
--
ALTER TABLE `semester8`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_code`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`faculty_number`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

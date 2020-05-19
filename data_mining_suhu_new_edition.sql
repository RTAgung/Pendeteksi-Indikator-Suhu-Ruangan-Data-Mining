-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2020 at 05:03 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_mining_suhu`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `Id` int(11) NOT NULL,
  `RoomSize` int(11) NOT NULL,
  `PeopleQty` int(11) NOT NULL,
  `Time` time NOT NULL,
  `Month` int(11) NOT NULL,
  `Weather` int(11) NOT NULL,
  `CoolerQty` int(11) NOT NULL,
  `MASL` int(11) NOT NULL,
  `TempIndicator` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`Id`, `RoomSize`, `PeopleQty`, `Time`, `Month`, `Weather`, `CoolerQty`, `MASL`, `TempIndicator`) VALUES
(31, 12, 1, '06:15:00', 9, 2, 1, 1, 1),
(32, 65, 1, '09:00:00', 10, 3, 2, 1, 1),
(33, 200, 2, '17:25:00', 11, 2, 4, 1, 1),
(34, 450, 2, '19:10:00', 12, 3, 10, 1, 1),
(35, 1000, 3, '01:15:00', 1, 2, 45, 1, 1),
(36, 16, 1, '07:30:00', 2, 3, 1, 2, 1),
(37, 80, 2, '10:20:00', 9, 2, 4, 2, 1),
(38, 350, 2, '12:15:00', 10, 2, 7, 2, 1),
(39, 580, 3, '16:20:00', 11, 3, 16, 2, 1),
(40, 1100, 3, '20:35:00', 12, 3, 40, 2, 1),
(41, 20, 1, '09:10:00', 1, 1, 1, 3, 1),
(42, 100, 2, '11:20:00', 2, 3, 6, 3, 1),
(43, 600, 2, '15:45:00', 3, 3, 25, 3, 1),
(44, 910, 3, '23:50:00', 9, 1, 30, 3, 1),
(45, 1100, 3, '03:50:00', 10, 1, 35, 3, 1),
(46, 15, 1, '12:00:00', 3, 3, 1, 1, 2),
(47, 70, 1, '16:05:00', 4, 1, 4, 1, 2),
(48, 180, 2, '18:10:00', 9, 1, 10, 1, 2),
(49, 370, 2, '12:35:00', 3, 3, 16, 1, 2),
(50, 950, 3, '06:40:00', 3, 2, 35, 1, 2),
(51, 20, 1, '11:40:00', 9, 3, 1, 2, 2),
(52, 80, 2, '14:25:00', 9, 3, 3, 2, 2),
(53, 210, 2, '17:00:00', 3, 1, 7, 2, 2),
(54, 510, 3, '19:20:00', 3, 1, 18, 2, 2),
(55, 900, 3, '02:20:00', 9, 1, 30, 2, 2),
(56, 14, 2, '07:10:00', 3, 1, 1, 3, 2),
(57, 70, 2, '12:05:00', 9, 3, 2, 3, 2),
(58, 430, 3, '15:00:00', 3, 3, 7, 3, 2),
(59, 780, 3, '20:20:00', 3, 1, 15, 3, 2),
(60, 950, 3, '04:15:00', 3, 1, 21, 3, 2),
(61, 13, 1, '12:25:00', 4, 3, 0, 1, 3),
(62, 50, 2, '13:30:00', 5, 3, 1, 1, 3),
(63, 200, 2, '16:45:00', 6, 1, 3, 1, 3),
(64, 450, 3, '18:50:00', 7, 1, 5, 1, 3),
(65, 880, 3, '10:00:00', 8, 1, 10, 1, 3),
(66, 15, 2, '12:15:00', 9, 3, 0, 2, 3),
(67, 70, 3, '15:55:00', 3, 1, 2, 2, 3),
(68, 300, 3, '17:40:00', 4, 1, 4, 2, 3),
(69, 600, 3, '11:50:00', 5, 3, 5, 2, 3),
(70, 900, 3, '13:40:00', 6, 3, 10, 2, 3),
(71, 13, 2, '11:00:00', 7, 1, 0, 3, 3),
(72, 50, 3, '12:25:00', 8, 1, 1, 3, 3),
(73, 180, 3, '13:35:00', 9, 1, 2, 3, 3),
(74, 410, 3, '14:05:00', 3, 1, 3, 3, 3),
(75, 750, 3, '15:15:00', 4, 1, 5, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `masl`
--

CREATE TABLE `masl` (
  `Id` int(11) NOT NULL,
  `MASL` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masl`
--

INSERT INTO `masl` (`Id`, `MASL`) VALUES
(1, 'Low'),
(2, 'Medium'),
(3, 'High');

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `Id` int(11) NOT NULL,
  `Month` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`Id`, `Month`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `people_qty`
--

CREATE TABLE `people_qty` (
  `Id` int(11) NOT NULL,
  `PeopleQty` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `people_qty`
--

INSERT INTO `people_qty` (`Id`, `PeopleQty`) VALUES
(1, 'Quiet'),
(2, 'Medium'),
(3, 'Crowded');

-- --------------------------------------------------------

--
-- Table structure for table `temp_indicator`
--

CREATE TABLE `temp_indicator` (
  `Id` int(11) NOT NULL,
  `TempIndicator` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temp_indicator`
--

INSERT INTO `temp_indicator` (`Id`, `TempIndicator`) VALUES
(1, 'Cool'),
(2, 'Mild'),
(3, 'Hot');

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--

CREATE TABLE `weather` (
  `Id` int(11) NOT NULL,
  `Weather` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weather`
--

INSERT INTO `weather` (`Id`, `Weather`) VALUES
(1, 'Sunny'),
(2, 'Rainy'),
(3, 'Overcast');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_month` (`Month`),
  ADD KEY `fk_weather` (`Weather`),
  ADD KEY `fk_temp_indicator` (`TempIndicator`),
  ADD KEY `fk_masl` (`MASL`),
  ADD KEY `fk_people_qty` (`PeopleQty`);

--
-- Indexes for table `masl`
--
ALTER TABLE `masl`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `people_qty`
--
ALTER TABLE `people_qty`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `temp_indicator`
--
ALTER TABLE `temp_indicator`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `weather`
--
ALTER TABLE `weather`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `masl`
--
ALTER TABLE `masl`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `people_qty`
--
ALTER TABLE `people_qty`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `temp_indicator`
--
ALTER TABLE `temp_indicator`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `weather`
--
ALTER TABLE `weather`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data`
--
ALTER TABLE `data`
  ADD CONSTRAINT `fk_masl` FOREIGN KEY (`MASL`) REFERENCES `masl` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_month` FOREIGN KEY (`Month`) REFERENCES `month` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_people_qty` FOREIGN KEY (`PeopleQty`) REFERENCES `people_qty` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_temp_indicator` FOREIGN KEY (`TempIndicator`) REFERENCES `temp_indicator` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_weather` FOREIGN KEY (`Weather`) REFERENCES `weather` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

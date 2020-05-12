-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2020 at 03:42 PM
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
(3, 15, 1, '22:00:00', 12, 2, 1, 3, 1),
(4, 24, 1, '07:00:00', 8, 2, 2, 3, 1),
(5, 80, 1, '03:00:00', 3, 3, 4, 3, 1),
(6, 90, 2, '06:00:00', 9, 3, 4, 3, 1),
(7, 160, 2, '12:00:00', 5, 1, 7, 3, 1),
(8, 165, 1, '16:00:00', 4, 1, 10, 1, 1),
(9, 1100, 3, '18:00:00', 7, 1, 35, 2, 1),
(10, 14, 1, '09:00:00', 3, 3, 1, 2, 2),
(11, 20, 1, '10:00:00', 9, 3, 1, 2, 2),
(12, 80, 2, '16:00:00', 4, 3, 2, 2, 2),
(13, 85, 2, '12:00:00', 2, 2, 1, 2, 2),
(14, 150, 2, '18:00:00', 6, 1, 1, 1, 2),
(15, 1150, 3, '14:00:00', 8, 1, 20, 3, 2),
(16, 12, 2, '13:00:00', 6, 1, 0, 1, 3),
(17, 13, 2, '11:00:00', 8, 1, 1, 1, 3),
(18, 80, 2, '12:00:00', 3, 1, 1, 1, 3),
(19, 70, 3, '14:00:00', 1, 3, 2, 1, 3),
(20, 150, 2, '13:00:00', 3, 1, 0, 3, 3),
(21, 1200, 3, '18:00:00', 10, 2, 10, 2, 3);

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
-- Indexes for table `month`
--
ALTER TABLE `month`
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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  ADD CONSTRAINT `fk_month` FOREIGN KEY (`Month`) REFERENCES `month` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_people_qty` FOREIGN KEY (`PeopleQty`) REFERENCES `people_qty` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_temp_indicator` FOREIGN KEY (`TempIndicator`) REFERENCES `temp_indicator` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_weather` FOREIGN KEY (`Weather`) REFERENCES `weather` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2020 at 05:14 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

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
(3, 15, 1, '22:00:00', 12, 2, 1, 750, 1),
(4, 24, 2, '07:00:00', 8, 2, 2, 800, 1),
(5, 80, 12, '03:00:00', 3, 3, 4, 900, 1),
(6, 90, 30, '06:00:00', 9, 3, 4, 850, 1),
(7, 160, 50, '12:00:00', 5, 1, 7, 820, 1),
(8, 165, 45, '16:00:00', 4, 1, 10, 180, 1),
(9, 1100, 900, '18:00:00', 7, 1, 35, 400, 1),
(10, 14, 2, '09:00:00', 3, 3, 1, 250, 2),
(11, 20, 3, '10:00:00', 9, 3, 1, 200, 2),
(12, 80, 32, '16:00:00', 4, 3, 2, 300, 2),
(13, 85, 40, '12:00:00', 2, 2, 1, 500, 2),
(14, 150, 45, '18:00:00', 6, 1, 1, 190, 2),
(15, 1150, 1000, '14:00:00', 8, 1, 20, 750, 2),
(16, 12, 4, '13:00:00', 6, 1, 0, 150, 3),
(17, 13, 6, '11:00:00', 8, 1, 1, 170, 3),
(18, 80, 45, '12:00:00', 3, 1, 1, 100, 3),
(19, 70, 50, '14:00:00', 1, 3, 2, 120, 3),
(20, 150, 60, '13:00:00', 3, 1, 0, 710, 3),
(21, 1200, 1100, '18:00:00', 10, 2, 10, 550, 3);

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
  ADD KEY `fk_temp_indicator` (`TempIndicator`);

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
  ADD CONSTRAINT `fk_month` FOREIGN KEY (`Month`) REFERENCES `month` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_temp_indicator` FOREIGN KEY (`TempIndicator`) REFERENCES `temp_indicator` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_weather` FOREIGN KEY (`Weather`) REFERENCES `weather` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

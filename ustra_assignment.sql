-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2021 at 06:47 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teams`
--

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `Team` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Group_Name` varchar(50) NOT NULL,
  `Description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`Team`, `State`, `Group_Name`, `Description`) VALUES
('Striking Sharpshooters ', 'Delhi', 'Group A', 'last year qualifier'),
('Retro Heroes', 'Haryana', 'Group A', ''),
('Midnight Stars', 'J&K', 'Group A', ''),
('Lions ', 'Punjab', 'Group A', ''),
('Tornado Geckos ', 'Punjab', 'Group B', 'last year qualifier'),
('Skull Fireballs', 'Goa', 'Group B', ''),
('Black Bullets ', 'Uttar Pradesh', 'Group B', ''),
('Venomous Cyborgs ', 'West Bengal', 'Group B', ''),
('Blue Geckos', 'Madhya Pradesh', 'Group C', 'last year qualifier'),
('Killer Stars', 'Nagaland', 'Group C', ''),
('Thunder Commandos ', 'Uttar Pradesh', 'Group C', ''),
('The Showstoppers', 'Delhi', 'Group C', ''),
('Alpha Blockers', 'Rajasthan', 'Group D', 'last year qualifier'),
('Raging Spanners ', 'Himachal Pradesh', 'Group D', ''),
('Rocky Assassins', 'Delhi', 'Group D', ''),
('Quicksilver Ninjas ', 'Sikkim', 'Group D', ''),
('Black & White Gangstaz', 'Andra Pradesh', 'Group E', 'last year qualifier'),
('Silver Wasps ', 'Uttarakhand', 'Group E', ''),
('Poison Spiders ', 'Odisha', 'Group E', ''),
('Flying Xpress ', 'Delhi', 'Group E', ''),
('Midnight Miners ', 'Uttar Pradesh', 'Group F', 'last year qualifier'),
('Spirit Blockers', 'Andra Pradesh', 'Group F', ''),
('Retro Chuckers', 'Uttarakhand', 'Group F', ''),
('Wolfsburg', 'Haryana', 'Group F', ''),
('Blue Bombers ', 'Haryana', 'Group G', 'last year qualifier'),
('Knockout Busters', 'Madhya Pradesh', 'Group G', ''),
('Wind Kamikaze Pilots', 'Kerala', 'Group G', ''),
('Demolition Piledrivers', 'Rajasthan', 'Group G', ''),
('Muffin Racers ', 'Maharashtra', 'Group H', 'last year qualifier'),
('Venomous Sharks ', 'Haryana', 'Group H', ''),
('Rhino Hurricanes', 'Uttar Pradesh', 'Group H', ''),
('Real Madrid ', 'Delhi', 'Group H', ''),
('Striking Sharpshooters ', 'Delhi', 'Group A', 'last year qualifier'),
('Raging Spanners ', 'Himachal Pradesh', 'Group A', ''),
('Silver Wasps ', 'Uttarakhand', 'Group A', ''),
('Wolfsburg', 'Haryana', 'Group A', ''),
('Muffin Racers ', 'Maharashtra', 'Group B', 'last year qualifier'),
('Wind Kamikaze Pilots', 'Kerala', 'Group B', ''),
('Skull Fireballs', 'Goa', 'Group B', ''),
('Venomous Cyborgs ', 'West Bengal', 'Group B', ''),
('Tornado Geckos ', 'Punjab', 'Group C', 'last year qualifier'),
('Retro Chuckers', 'Uttarakhand', 'Group C', ''),
('Knockout Busters', 'Madhya Pradesh', 'Group C', ''),
('Real Madrid ', 'Delhi', 'Group C', ''),
('Alpha Blockers', 'Rajasthan', 'Group D', 'last year qualifier'),
('Killer Stars', 'Nagaland', 'Group D', ''),
('Spirit Blockers', 'Andra Pradesh', 'Group D', ''),
('Poison Spiders ', 'Odisha', 'Group D', ''),
('Blue Geckos', 'Madhya Pradesh', 'Group E', 'last year qualifier'),
('Demolition Piledrivers', 'Rajasthan', 'Group E', ''),
('Venomous Sharks ', 'Haryana', 'Group E', ''),
('The Showstoppers', 'Delhi', 'Group E', ''),
('Midnight Miners ', 'Uttar Pradesh', 'Group F', 'last year qualifier'),
('Quicksilver Ninjas ', 'Sikkim', 'Group F', ''),
('Lions ', 'Punjab', 'Group F', ''),
('Rocky Assassins', 'Delhi', 'Group F', ''),
('Blue Bombers ', 'Haryana', 'Group G', 'last year qualifier'),
('Midnight Stars', 'J&K', 'Group G', ''),
('Flying Xpress ', 'Delhi', 'Group G', ''),
('Black Bullets ', 'Uttar Pradesh', 'Group G', ''),
('Blue Geckos', 'Madhya Pradesh', 'Group A', 'last year qualifier'),
('Quicksilver Ninjas ', 'Sikkim', 'Group A', ''),
('Poison Spiders ', 'Odisha', 'Group A', ''),
('Killer Stars', 'Nagaland', 'Group A', ''),
('Midnight Miners ', 'Uttar Pradesh', 'Group B', 'last year qualifier'),
('Venomous Cyborgs ', 'West Bengal', 'Group B', ''),
('Spirit Blockers', 'Andra Pradesh', 'Group B', ''),
('Wind Kamikaze Pilots', 'Kerala', 'Group B', ''),
('Striking Sharpshooters ', 'Delhi', 'Group C', 'last year qualifier'),
('Lions ', 'Punjab', 'Group C', ''),
('Raging Spanners ', 'Himachal Pradesh', 'Group C', ''),
('Rhino Hurricanes', 'Uttar Pradesh', 'Group C', ''),
('Muffin Racers ', 'Maharashtra', 'Group D', 'last year qualifier'),
('Venomous Sharks ', 'Haryana', 'Group D', ''),
('Thunder Commandos ', 'Uttar Pradesh', 'Group D', ''),
('Rocky Assassins', 'Delhi', 'Group D', ''),
('Blue Bombers ', 'Haryana', 'Group E', 'last year qualifier'),
('Flying Xpress ', 'Delhi', 'Group E', ''),
('Knockout Busters', 'Madhya Pradesh', 'Group E', ''),
('Skull Fireballs', 'Goa', 'Group E', ''),
('Alpha Blockers', 'Rajasthan', 'Group F', 'last year qualifier'),
('Black Bullets ', 'Uttar Pradesh', 'Group F', ''),
('Wolfsburg', 'Haryana', 'Group F', ''),
('Real Madrid ', 'Delhi', 'Group F', ''),
('Black & White Gangstaz', 'Andra Pradesh', 'Group G', 'last year qualifier'),
('Demolition Piledrivers', 'Rajasthan', 'Group G', ''),
('Midnight Stars', 'J&K', 'Group G', ''),
('Retro Chuckers', 'Uttarakhand', 'Group G', ''),
('Tornado Geckos ', 'Punjab', 'Group H', 'last year qualifier'),
('Retro Heroes', 'Haryana', 'Group H', ''),
('The Showstoppers', 'Delhi', 'Group H', ''),
('Silver Wasps ', 'Uttarakhand', 'Group H', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

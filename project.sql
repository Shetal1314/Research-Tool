-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 16, 2019 at 11:35 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `experiment1`
--

DROP TABLE IF EXISTS `experiment1`;
CREATE TABLE IF NOT EXISTS `experiment1` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `experimentID` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `Tasks` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=hp8;

--
-- Dumping data for table `experiment1`
--

INSERT INTO `experiment1` (`id`, `experimentID`, `name`, `Tasks`, `subject`, `user`) VALUES
(1, 1, 'first', 'Iceland Volcanic Activity', 'geography', 'Haider Ali'),
(2, 1, 'first', 'Iceland Volcanic Activity', 'geography', 'Bridget Jones'),
(3, 1, 'first', 'Ireland Mountains', 'geography', 'Haider Ali'),
(4, 1, 'first', 'Ireland Mountains', 'geography', 'Bridget Jones'),
(5, 1, 'first', 'Ireland Seaports', 'geography', 'Haider Ali'),
(6, 1, 'first', 'Ireland Seaports', 'geography', 'Bridget Jones'),
(7, 2, 'second', 'Iceland Volcanic Activity', 'scinece', 'Haider Ali'),
(8, 2, 'second', 'Iceland Volcanic Activity', 'scinece', 'Bridget Jones'),
(9, 2, 'second', 'Iceland Volcanic Activity', 'scinece', 'Amy Santiago'),
(10, 2, 'second', 'Ireland Mountains', 'scinece', 'Haider Ali'),
(11, 2, 'second', 'Ireland Mountains', 'scinece', 'Bridget Jones'),
(12, 2, 'second', 'Ireland Mountains', 'scinece', 'Amy Santiago'),
(13, 2, 'second', 'Ireland Seaports', 'scinece', 'Haider Ali'),
(14, 2, 'second', 'Ireland Seaports', 'scinece', 'Bridget Jones'),
(15, 2, 'second', 'Ireland Seaports', 'scinece', 'Amy Santiago'),
(16, 3, 'third', 'Ireland Mountains', 'geo', 'Bridget Jones'),
(17, 3, 'third', 'Ireland Mountains', 'geo', 'Amy Santiago'),
(18, 3, 'third', 'Ireland Mountains', 'geo', 'Raymond Holt'),
(19, 3, 'third', 'Ireland Seaports', 'geo', 'Bridget Jones'),
(20, 3, 'third', 'Ireland Seaports', 'geo', 'Amy Santiago'),
(21, 3, 'third', 'Ireland Seaports', 'geo', 'Raymond Holt'),
(22, 4, 'fourth', 'Iceland Volcanic Activity', 'locations', 'Haider Ali'),
(23, 4, 'fourth', 'Iceland Volcanic Activity', 'locations', 'Bridget Jones'),
(24, 4, 'fourth', 'Ireland Mountains', 'locations', 'Haider Ali'),
(25, 4, 'fourth', 'Ireland Mountains', 'locations', 'Bridget Jones'),
(26, 4, 'fourth', 'Ireland Seaports', 'locations', 'Haider Ali'),
(27, 4, 'fourth', 'Ireland Seaports', 'locations', 'Bridget Jones'),
(28, 5, 'fifth', 'Iceland Volcanic Activity', 'locations', 'Haider Ali'),
(29, 5, 'fifth', 'Iceland Volcanic Activity', 'locations', 'Bridget Jones'),
(30, 5, 'fifth', 'Ireland Churches', 'locations', 'Haider Ali'),
(31, 5, 'fifth', 'Ireland Churches', 'locations', 'Bridget Jones'),
(32, 6, 'sixth', 'Ireland Seaports', 'english', 'Haider Ali'),
(33, 6, 'sixth', 'Ireland Seaports', 'english', 'Bridget Jones'),
(34, 6, 'sixth', 'Ireland Seaports', 'english', 'Amy Santiago'),
(35, 6, 'sixth', 'Ireland Mountains', 'english', 'Haider Ali'),
(36, 6, 'sixth', 'Ireland Mountains', 'english', 'Bridget Jones'),
(37, 6, 'sixth', 'Ireland Mountains', 'english', 'Amy Santiago'),
(38, 6, 'sixth', 'Iceland Volcanic Activity', 'english', 'Haider Ali'),
(39, 6, 'sixth', 'Iceland Volcanic Activity', 'english', 'Bridget Jones'),
(40, 6, 'sixth', 'Iceland Volcanic Activity', 'english', 'Amy Santiago'),
(41, 9, 'ninth', 'Ireland Seaports', 'geography', 'Haider Ali'),
(42, 9, 'ninth', 'Ireland Seaports', 'geography', 'Bridget Jones'),
(43, 9, 'ninth', 'Ireland Mountains', 'geography', 'Haider Ali'),
(44, 9, 'ninth', 'Ireland Mountains', 'geography', 'Bridget Jones');

-- --------------------------------------------------------

--
-- Stand-in structure for view `exv`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `exv`;
CREATE TABLE IF NOT EXISTS `exv` (
`id` int(50)
,`experimentID` int(50)
,`name` varchar(50)
,`Tasks` varchar(50)
,`subject` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `researcher`
--

DROP TABLE IF EXISTS `researcher`;
CREATE TABLE IF NOT EXISTS `researcher` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=hp8;

--
-- Dumping data for table `researcher`
--

INSERT INTO `researcher` (`id`, `name`, `email`, `password`) VALUES
(2, 'fatima', 'fatima@yahoomail.com', '2345'),
(1, 'sakina', 'sakina725@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `taskId` int(11) NOT NULL AUTO_INCREMENT,
  `taskName` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`taskId`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=hp8;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`taskId`, `taskName`, `url`, `description`) VALUES
(4, 'Ireland Mountains', 'https://outsider.ie/ireland/highest-mountains-ireland/', 'Find total number of mountains in Ireland'),
(3, 'Ireland Seaports', 'https://www.imdo.ie/Home/site-area/statistics/ports-operators/irish-port-companies', 'Find the total number of seaports in Ireland '),
(5, 'Ireland Churches', 'https://www.ireland.anglican.org/find-a-church', 'Find the total number of churches in Ireland');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(30) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=hp8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `name`, `email`, `password`, `gender`, `dob`) VALUES
(1, 'Haider Ali', 'HaiderAli@Yahoo.com', '1234', 'male', '1996-10-16'),
(2, 'Bridget Jones', 'Bridget@gmail.com', '12345', 'female', '2019-04-02'),
(3, 'Amy Santiago', 'AmySanitago@hotmail.com', '12345', 'female', '2019-04-09'),
(4, 'Raymond Holt', 'Raymond55@gmail.com', '12345', 'other', '2019-04-09'),
(5, 'Charles Boyles', 'Charles12@gmail.com', '12345', 'male', '2019-04-09'),
(6, 'Jackob Parelta', 'jackp@yahoo.com', '12345', 'male', '2019-04-02');

-- --------------------------------------------------------

--
-- Structure for view `exv`
--
DROP TABLE IF EXISTS `exv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `exv`  AS  select `experiment1`.`id` AS `id`,`experiment1`.`experimentID` AS `experimentID`,`experiment1`.`name` AS `name`,`experiment1`.`Tasks` AS `Tasks`,`experiment1`.`subject` AS `subject` from `experiment1` group by `experiment1`.`experimentID` ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

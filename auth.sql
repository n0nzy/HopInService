-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 04, 2017 at 09:07 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hopin`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE IF NOT EXISTS `auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `signed_up` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `vehicle_name` varchar(50) NOT NULL,
  `vehicle_specs` varchar(50) NOT NULL,
  `seats_num` int(4) DEFAULT '1',
  `active_status` int(1) NOT NULL DEFAULT '1',
  `driver_status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `fullname`, `email`, `username`, `password`, `signed_up`, `last_login`, `vehicle_name`, `vehicle_specs`, `seats_num`, `active_status`, `driver_status`) VALUES
(1, 'Nonso Ugwu', 'chiugwu1@umbc.edu', 'chiugwu1', 'dummypassword', '2017-04-30 22:29:50', '2017-04-30 22:29:50', '', '', 1, 1, 0),
(2, 'Nilan Banerjee', 'nilanb@umbc.edu', 'nilanb', 'dummypassword', '2017-04-30 22:29:50', '2017-04-30 22:29:50', 'Toyota ', 'Camry', 2, 1, 1),
(3, 'Jeremy Suon', 'jsuon1@umbc.edu', 'jsuon1', 'dummypassword', '2017-04-30 22:31:21', '2017-04-30 22:31:21', 'VW', 'Beetle', 1, 1, 1),
(4, 'Arjun Ven', 'arjunv2@umbc.edu', 'arjunv2', 'dummypassword', '2017-04-30 22:31:21', '2017-04-30 22:31:21', '', '', 1, 1, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

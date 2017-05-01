-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 01, 2017 at 09:19 PM
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
  `active_status` int(1) NOT NULL DEFAULT '1',
  `driver_status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `fullname`, `email`, `username`, `password`, `signed_up`, `last_login`, `active_status`, `driver_status`) VALUES
(1, 'Nonso Ugwu', 'chiugwu1@umbc.edu', 'chiugwu1', 'dummypassword', '2017-04-30 22:29:50', '2017-04-30 22:29:50', 1, 0),
(2, 'Nilan Banerjee', 'nilanb@umbc.edu', 'nilanb', 'dummypassword', '2017-04-30 22:29:50', '2017-04-30 22:29:50', 1, 1),
(3, 'Jeremy Suon', 'jsuon1@umbc.edu', 'jsuon1', 'dummypassword', '2017-04-30 22:31:21', '2017-04-30 22:31:21', 1, 1),
(4, 'Arjun Ven', 'arjunv2@umbc.edu', 'arjunv2', 'dummypassword', '2017-04-30 22:31:21', '2017-04-30 22:31:21', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `latitude` decimal(16,10) DEFAULT NULL,
  `longitude` decimal(16,10) DEFAULT NULL,
  `current_timee` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `vehicle_name` varchar(50) NOT NULL,
  `specs` varchar(50) NOT NULL,
  `seats_num` int(4) DEFAULT '1',
  `active_status` int(2) NOT NULL,
  `driver_status` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='stores list of all users on the system including login info' AUTO_INCREMENT=47 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `latitude`, `longitude`, `current_timee`, `vehicle_name`, `specs`, `seats_num`, `active_status`, `driver_status`) VALUES
(1, '', 'chiugwu1@umbc.edu', '39.2540250000', '-76.7143393000', '2017-05-01 10:18:08', '', '', NULL, 0, 0),
(2, '', 'chiugwu1@umbc.edu', '39.2539724000', '-76.7143325000', '2017-05-01 10:18:27', '', '', NULL, 0, 0),
(3, '', 'chiugwu1@umbc.edu', '39.2540249000', '-76.7143360000', '2017-05-01 10:18:48', '', '', NULL, 0, 0),
(4, '', 'chiugwu1@umbc.edu', '39.2540438000', '-76.7143538000', '2017-05-01 10:19:09', '', '', NULL, 0, 0),
(5, '', 'chiugwu1@umbc.edu', '39.2539933000', '-76.7143550000', '2017-05-01 10:19:28', '', '', NULL, 0, 0),
(6, '', 'chiugwu1@umbc.edu', '39.2540154000', '-76.7143424000', '2017-05-01 10:19:48', '', '', NULL, 0, 0),
(7, '', 'nilanb@umbc.edu', '39.2540243000', '-76.7143303000', '2017-05-01 10:37:20', '', '', NULL, 0, 0),
(8, '', 'nilanb@umbc.edu', '39.2540204000', '-76.7143704000', '2017-05-01 10:37:40', '', '', NULL, 0, 0),
(9, '', 'nilanb@umbc.edu', '39.2540204000', '-76.7143383000', '2017-05-01 10:38:20', '', '', NULL, 0, 0),
(10, '', 'nilanb@umbc.edu', '39.2540457000', '-76.7143433000', '2017-05-01 10:38:39', '', '', NULL, 0, 0),
(11, '', 'nilanb@umbc.edu', '39.2540468000', '-76.7143760000', '2017-05-01 10:39:01', '', '', NULL, 0, 0),
(12, '', 'nilanb@umbc.edu', '39.2540369000', '-76.7143363000', '2017-05-01 10:39:19', '', '', NULL, 0, 0),
(13, '', 'nilanb@umbc.edu', '39.2540463000', '-76.7143597000', '2017-05-01 10:39:40', '', '', NULL, 0, 0),
(14, '', 'nilanb@umbc.edu', '39.2540168000', '-76.7143703000', '2017-05-01 10:40:00', '', '', NULL, 0, 0),
(15, '', 'nilanb@umbc.edu', '39.2540081000', '-76.7142968000', '2017-05-01 10:40:21', '', '', NULL, 0, 0),
(16, '', 'nilanb@umbc.edu', '39.2540073000', '-76.7143296000', '2017-05-01 10:40:41', '', '', NULL, 0, 0),
(17, '', 'nilanb@umbc.edu', '39.2540032000', '-76.7143477000', '2017-05-01 10:41:21', '', '', NULL, 0, 0),
(18, '', 'nilanb@umbc.edu', '39.2540416000', '-76.7143758000', '2017-05-01 10:41:41', '', '', NULL, 0, 0),
(19, '', 'nilanb@umbc.edu', '39.2540390000', '-76.7143332000', '2017-05-01 10:42:01', '', '', NULL, 0, 0),
(20, '', 'nilanb@umbc.edu', '39.2540300000', '-76.7143555000', '2017-05-01 10:42:28', '', '', NULL, 0, 0),
(21, '', 'nilanb@umbc.edu', '39.2540100000', '-76.7143409000', '2017-05-01 10:43:08', '', '', NULL, 0, 0),
(22, '', 'nilanb@umbc.edu', '39.2540187000', '-76.7143489000', '2017-05-01 10:43:28', '', '', NULL, 0, 0),
(23, '', 'nilanb@umbc.edu', '39.2540073000', '-76.7143048000', '2017-05-01 10:44:09', '', '', NULL, 0, 0),
(24, '', 'nilanb@umbc.edu', '39.2540307000', '-76.7142913000', '2017-05-01 10:44:29', '', '', NULL, 0, 0),
(25, '', 'nilanb@umbc.edu', '39.2540299000', '-76.7143282000', '2017-05-01 10:44:49', '', '', NULL, 0, 0),
(26, '', 'nilanb@umbc.edu', '39.2540418000', '-76.7143550000', '2017-05-01 10:45:09', '', '', NULL, 0, 0),
(27, '', 'nilanb@umbc.edu', '39.2540440000', '-76.7143338000', '2017-05-01 10:45:29', '', '', NULL, 0, 0),
(28, '', 'nilanb@umbc.edu', '39.2540282000', '-76.7143324000', '2017-05-01 10:45:49', '', '', NULL, 0, 0),
(29, '', 'nilanb@umbc.edu', '39.2540441000', '-76.7143503000', '2017-05-01 10:46:09', '', '', NULL, 0, 0),
(30, '', 'nilanb@umbc.edu', '39.2540424000', '-76.7143341000', '2017-05-01 10:46:49', '', '', NULL, 0, 0),
(31, '', 'nilanb@umbc.edu', '39.2540618000', '-76.7143447000', '2017-05-01 10:47:09', '', '', NULL, 0, 0),
(32, '', 'nilanb@umbc.edu', '39.2540448000', '-76.7143350000', '2017-05-01 10:47:29', '', '', NULL, 0, 0),
(33, '', 'nilanb@umbc.edu', '39.2540288000', '-76.7143493000', '2017-05-01 10:47:49', '', '', NULL, 0, 0),
(34, '', 'nilanb@umbc.edu', '39.2540354000', '-76.7143386000', '2017-05-01 10:48:09', '', '', NULL, 0, 0),
(35, '', 'nilanb@umbc.edu', '39.2540391000', '-76.7143495000', '2017-05-01 10:48:29', '', '', NULL, 0, 0),
(36, '', 'nilanb@umbc.edu', '39.2540317000', '-76.7143280000', '2017-05-01 10:48:49', '', '', NULL, 0, 0),
(37, '', 'nilanb@umbc.edu', '39.2540436000', '-76.7143292000', '2017-05-01 10:49:09', '', '', NULL, 0, 0),
(38, '', 'nilanb@umbc.edu', '39.2540165000', '-76.7143403000', '2017-05-01 10:49:29', '', '', NULL, 0, 0),
(39, '', 'nilanb@umbc.edu', '39.2540410000', '-76.7143389000', '2017-05-01 10:49:49', '', '', NULL, 0, 0),
(40, '', 'nilanb@umbc.edu', '39.2540454000', '-76.7143747000', '2017-05-01 10:50:09', '', '', NULL, 0, 0),
(41, '', 'nilanb@umbc.edu', '39.2540462000', '-76.7143392000', '2017-05-01 10:50:29', '', '', NULL, 0, 0),
(42, '', 'nilanb@umbc.edu', '39.2540277000', '-76.7143222000', '2017-05-01 10:51:14', '', '', NULL, 0, 0),
(43, '', 'nilanb@umbc.edu', '39.2540149000', '-76.7143146000', '2017-05-01 10:52:14', '', '', NULL, 0, 0),
(44, '', 'jsuon1@umbc.edu', '39.2540044000', '-76.7143328000', '2017-05-01 11:25:11', '', '', NULL, 0, 0),
(45, '', 'jsuon1@umbc.edu', '39.2540327000', '-76.7142930000', '2017-05-01 11:26:14', '', '', NULL, 0, 0),
(46, '', 'jsuon1@umbc.edu', '39.2540157000', '-76.7143053000', '2017-05-01 11:27:11', '', '', NULL, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

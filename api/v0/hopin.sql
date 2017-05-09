-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 09, 2017 at 04:30 AM
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
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `latitude` decimal(16,10) DEFAULT NULL,
  `longitude` decimal(16,10) DEFAULT NULL,
  `current_timee` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `seats_num` int(4) DEFAULT '1',
  `active_status` int(2) NOT NULL,
  `driver_status` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='stores location history of users using the app' AUTO_INCREMENT=49 ;

--
-- Truncate table before insert `location`
--

TRUNCATE TABLE `location`;
--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `email`, `latitude`, `longitude`, `current_timee`, `seats_num`, `active_status`, `driver_status`) VALUES
(1, 'chiugwu1@umbc.edu', '39.2540159000', '-76.7143350000', '2017-05-08 01:10:48', 1, 0, 0),
(2, 'chiugwu1@umbc.edu', '39.2540045000', '-76.7143578000', '2017-05-08 01:11:48', 1, 0, 0),
(3, 'stan1@umbc.edu', '39.2540005000', '-76.7143307000', '2017-05-08 01:13:31', 1, 0, 0),
(4, 'stan1@umbc.edu', '39.2594380000', '-76.7138610000', '2017-05-08 01:13:51', 1, 0, 0),
(5, 'sara2@umbc.edu', '39.2540326000', '-76.7142939000', '2017-05-08 01:14:55', 1, 0, 0),
(6, 'sara2@umbc.edu', '39.2540157000', '-76.7143221000', '2017-05-08 01:15:16', 1, 0, 0),
(7, 'sara2@umbc.edu', '39.2584360000', '-76.7161560000', '2017-05-08 01:15:36', 1, 0, 0),
(8, 'bernie1@umbc.edu', '39.2540200000', '-76.7143077000', '2017-05-08 01:17:17', 1, 0, 0),
(9, 'bernie1@umbc.edu', '39.2540226000', '-76.7143492000', '2017-05-08 01:18:11', 1, 0, 0),
(10, 'bernie1@umbc.edu', '39.2562340000', '-76.7069180000', '2017-05-08 01:22:52', 1, 0, 0),
(11, 'chiugwu1@umbc.edu', '39.2540062000', '-76.7143057000', '2017-05-08 01:27:19', 1, 0, 0),
(12, 'jsuon1@umbc.edu', '39.2540152000', '-76.7142917000', '2017-05-08 05:00:40', 1, 0, 0),
(13, 'jsuon1@umbc.edu', '39.2540314000', '-76.7142959000', '2017-05-08 05:01:25', 1, 0, 0),
(14, 'jsuon1@umbc.edu', '39.2540131000', '-76.7143384000', '2017-05-08 05:14:36', 1, 0, 0),
(15, 'jsuon1@umbc.edu', '39.2540220000', '-76.7143258000', '2017-05-08 05:34:31', 1, 0, 0),
(16, 'jsuon1@umbc.edu', '39.2540210000', '-76.7143267000', '2017-05-08 05:37:48', 1, 0, 0),
(17, 'jsuon1@umbc.edu', '39.2540116000', '-76.7142866000', '2017-05-08 06:06:00', 1, 0, 0),
(18, 'jsuon1@umbc.edu', '39.2540107000', '-76.7143331000', '2017-05-08 06:07:55', 1, 0, 0),
(19, 'jsuon1@umbc.edu', '39.2540202000', '-76.7143187000', '2017-05-08 06:12:15', 1, 0, 0),
(20, 'jsuon1@umbc.edu', '39.2540190000', '-76.7143003000', '2017-05-08 06:12:53', 1, 0, 0),
(21, 'jsuon1@umbc.edu', '39.2540186000', '-76.7143201000', '2017-05-08 06:14:13', 1, 0, 0),
(22, 'jsuon1@umbc.edu', '39.2540236000', '-76.7143062000', '2017-05-08 06:27:40', 1, 0, 0),
(23, 'jsuon1@umbc.edu', '39.2540269000', '-76.7143422000', '2017-05-08 07:41:50', 1, 0, 0),
(24, 'james@umbc.edu', '39.2538963000', '-76.7144868000', '2017-05-08 16:57:20', 1, 0, 0),
(25, 'james@umbc.edu', '39.2538165000', '-76.7144868000', '2017-05-08 16:59:13', 1, 0, 0),
(26, 'james@umbc.edu', '39.2538512000', '-76.7144418000', '2017-05-08 17:01:08', 1, 0, 0),
(27, 'james@umbc.edu', '39.2539067000', '-76.7145770000', '2017-05-08 17:16:25', 1, 0, 0),
(28, 'james@umbc.edu', '39.2538963000', '-76.7144868000', '2017-05-08 17:23:49', 1, 0, 0),
(29, 'james@umbc.edu', '39.2539552000', '-76.7143065000', '2017-05-08 17:50:54', 1, 0, 0),
(30, 'james@umbc.edu', '39.2539552000', '-76.7143065000', '2017-05-08 17:53:43', 1, 0, 0),
(31, 'james@umbc.edu', '39.2538858000', '-76.7143967000', '2017-05-08 17:54:48', 1, 0, 0),
(32, 'king@umbc.edu', '39.2540249000', '-76.7143321000', '2017-05-08 18:09:17', 1, 0, 0),
(33, 'king@umbc.edu', '39.2540276000', '-76.7143218000', '2017-05-08 18:11:11', 1, 0, 0),
(34, 'king@umbc.edu', '39.2540196000', '-76.7143140000', '2017-05-08 18:57:45', 1, 0, 0),
(35, 'king@umbc.edu', '39.2540135000', '-76.7142885000', '2017-05-08 19:10:54', 1, 0, 0),
(36, 'king@umbc.edu', '39.2540272000', '-76.7143200000', '2017-05-08 19:19:16', 1, 0, 0),
(37, 'king@umbc.edu', '39.2540192000', '-76.7143405000', '2017-05-08 19:39:18', 1, 0, 0),
(38, 'jsuon1@umbc.edu', '39.2539552000', '-76.7143065000', '2017-05-08 19:58:12', 1, 0, 0),
(39, 'king@umbc.edu', '39.2540190000', '-76.7142958000', '2017-05-08 20:00:26', 1, 0, 0),
(40, 'jsuon1@umbc.edu', '39.2538858000', '-76.7143967000', '2017-05-08 20:15:18', 1, 0, 0),
(41, 'king@umbc.edu', '39.2550758000', '-76.7143267000', '2017-05-08 20:19:53', 1, 0, 0),
(42, 'james@umbc.edu', '39.2551569000', '-76.7146715000', '2017-05-08 20:25:10', 1, 0, 0),
(43, 'james@umbc.edu', '39.2551487000', '-76.7146489000', '2017-05-08 20:27:13', 1, 0, 0),
(44, 'jsuon1@umbc.edu', '39.2551690000', '-76.7148025000', '2017-05-08 20:27:42', 1, 0, 0),
(45, 'jsuon1@umbc.edu', '39.2551690000', '-76.7148025000', '2017-05-08 20:28:42', 1, 0, 0),
(46, 'jsuon1@umbc.edu', '39.2550507600', '-76.7146014200', '2017-05-08 20:29:07', 1, 0, 0),
(47, 'chiugwu1@umbc.edu', '39.2540339000', '-76.7142762000', '2017-05-08 20:52:59', 1, 0, 0),
(48, 'chiugwu1@umbc.edu', '39.2540384000', '-76.7142841000', '2017-05-08 20:54:51', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(70) NOT NULL,
  `signed_up` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `street` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zipcode` int(5) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `last_login` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `selected` int(1) NOT NULL DEFAULT '0',
  `drivername` varchar(50) DEFAULT NULL,
  `curr_latitude` decimal(16,10) DEFAULT NULL,
  `curr_longitude` decimal(16,10) DEFAULT NULL,
  `vehicle_name` varchar(50) NOT NULL,
  `vehicle_specs` varchar(50) NOT NULL,
  `seats_num` int(4) DEFAULT '1',
  `active_status` int(1) NOT NULL DEFAULT '1',
  `driver_status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='stores list of all users on the system including login info' AUTO_INCREMENT=9 ;

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `username`, `password`, `signed_up`, `street`, `city`, `state`, `zipcode`, `phone`, `last_login`, `selected`, `drivername`, `curr_latitude`, `curr_longitude`, `vehicle_name`, `vehicle_specs`, `seats_num`, `active_status`, `driver_status`) VALUES
(1, 'Nonso Ugwu', 'chiugwu1@umbc.edu', 'chiugwu1', '01B307ACBA4F54F55AAFC33BB06BBBF6CA803E9A', '2017-05-08 01:10:42', '', '', '', NULL, NULL, '2017-05-08 21:28:57', 0, NULL, '39.2539962000', '-76.7143125000', '', '', 1, 1, 0),
(2, 'Stanley Smith', 'stan1@umbc.edu', 'stan1', '01B307ACBA4F54F55AAFC33BB06BBBF6CA803E9A', '2017-05-08 01:13:24', '', '', '', NULL, NULL, '2017-05-08 01:13:24', 0, NULL, '39.2594380000', '-76.7138610000', '', '', 1, 1, 0),
(3, 'Sarah Smith', 'sara2@umbc.edu', 'sara2', '01B307ACBA4F54F55AAFC33BB06BBBF6CA803E9A', '2017-05-08 01:14:48', '', '', '', NULL, NULL, '2017-05-08 01:14:48', 0, NULL, '39.2584360000', '-76.7161560000', '', '', 1, 1, 0),
(4, 'Bernie Sanders', 'bernie1@umbc.edu', 'bernie1', '01B307ACBA4F54F55AAFC33BB06BBBF6CA803E9A', '2017-05-08 01:17:10', '', '', '', NULL, NULL, '2017-05-08 01:17:10', 0, NULL, '39.2562340000', '-76.7069180000', '', '', 1, 1, 0),
(5, 'Jeremy Suon', 'jsuon1@umbc.edu', 'jsuon1', '01B307ACBA4F54F55AAFC33BB06BBBF6CA803E9A', '2017-05-08 02:53:57', '123 Sesame Street', 'Pasadena', 'MD', 91101, 2147483647, '2017-05-08 17:43:55', 0, NULL, '39.2550507600', '-76.7146014200', '', '', 1, 1, 0),
(6, 'John', 'john@umbc.edu', 'john', '01B307ACBA4F54F55AAFC33BB06BBBF6CA803E9A', '2017-05-08 13:29:07', '', '', '', NULL, NULL, '2017-05-08 16:29:32', 0, NULL, NULL, NULL, '', '', 1, 1, 0),
(7, 'James', 'james@umbc.edu', 'james', 'B0399D2029F64D445BD131FFAA399A42D2F8E7DC', '2017-05-08 16:54:08', '', '', '', NULL, NULL, '2017-05-08 20:26:00', 0, NULL, '39.2551487000', '-76.7146489000', '', '', 1, 1, 0),
(8, 'king', 'king@umbc.edu', 'king', 'B0399D2029F64D445BD131FFAA399A42D2F8E7DC', '2017-05-08 17:40:33', '351 Jones Street', 'Halethorpe', 'MD', 21453, 2147483647, '2017-05-08 19:14:33', 0, NULL, '39.2550758000', '-76.7143267000', '', '', 1, 1, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

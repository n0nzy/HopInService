-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 01, 2017 at 11:57 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: 'hopin'
--

-- --------------------------------------------------------

--
-- Table structure for table 'auth'
--

CREATE TABLE IF NOT EXISTS auth (
  id int(11) NOT NULL AUTO_INCREMENT,
  email varchar(50) NOT NULL,
  username varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  signed_up datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  last_login datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  active_status int(1) NOT NULL DEFAULT '1',
  driver_status int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (id),
  UNIQUE KEY username (username)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table 'auth'
--

INSERT INTO auth (id, email, username, password, signed_up, last_login, active_status, driver_status) VALUES
(1, 'chiugwu1@umbc.edu', 'chiugwu1', 'dummypassword', '2017-04-30 22:29:50', '2017-04-30 22:29:50', 1, 0),
(2, 'nilanb@umbc.edu', 'nilanb', 'dummypassword', '2017-04-30 22:29:50', '2017-04-30 22:29:50', 1, 1),
(3, 'jsuon1@umbc.edu', 'jsuon1', 'dummypassword', '2017-04-30 22:31:21', '2017-04-30 22:31:21', 1, 1),
(4, 'arjunv2@umbc.edu', 'arjunv2', 'dummypassword', '2017-04-30 22:31:21', '2017-04-30 22:31:21', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table 'users'
--

CREATE TABLE IF NOT EXISTS users (
  id int(11) NOT NULL AUTO_INCREMENT,
  fullname varchar(100) NOT NULL,
  email varchar(50) NOT NULL,
  latitude decimal(16,10) DEFAULT NULL,
  longitude decimal(16,10) DEFAULT NULL,
  current_timee datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  vehicle_name varchar(50) NOT NULL,
  specs varchar(50) NOT NULL,
  seats_num int(4) DEFAULT NULL,
  active_status int(2) NOT NULL,
  driver_status int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='stores list of all users on the system including login info' AUTO_INCREMENT=80 ;

--
-- Dumping data for table 'users'
--

INSERT INTO users (id, fullname, email, latitude, longitude, current_timee, vehicle_name, specs, seats_num, active_status, driver_status) VALUES
(1, '', 'nilanb', '39.2539986000', '-76.7142764000', '2017-04-30 21:43:37', '', '', NULL, 0, 0),
(2, '', 'nilanb', '39.2540046000', '-76.7143090000', '2017-04-30 21:43:57', '', '', NULL, 0, 0),
(3, '', 'nilanb', '39.2540039000', '-76.7142827000', '2017-04-30 21:44:37', '', '', NULL, 0, 0),
(4, '', 'nilanb', '39.2540196000', '-76.7142939000', '2017-04-30 21:44:57', '', '', NULL, 0, 0),
(5, '', 'nilanb', '39.2540068000', '-76.7143141000', '2017-04-30 21:45:17', '', '', NULL, 0, 0),
(6, '', 'nilanb', '39.2540142000', '-76.7142970000', '2017-04-30 21:45:57', '', '', NULL, 0, 0),
(7, '', 'nilanb', '39.2540169000', '-76.7143141000', '2017-04-30 21:46:17', '', '', NULL, 0, 0),
(8, '', 'nilanb', '39.2539940000', '-76.7143106000', '2017-04-30 21:46:37', '', '', NULL, 0, 0),
(9, '', 'nilanb', '39.2540295000', '-76.7143383000', '2017-04-30 21:47:17', '', '', NULL, 0, 0),
(10, '', 'nilanb', '39.2540152000', '-76.7143384000', '2017-04-30 21:47:37', '', '', NULL, 0, 0),
(11, '', 'nilanb', '39.2540222000', '-76.7143179000', '2017-04-30 21:47:57', '', '', NULL, 0, 0),
(12, '', 'nilanb', '39.2540083000', '-76.7143105000', '2017-04-30 21:48:17', '', '', NULL, 0, 0),
(13, '', 'nilanb', '39.2540190000', '-76.7143077000', '2017-04-30 21:49:17', '', '', NULL, 0, 0),
(14, '', 'nilanb', '39.2539983000', '-76.7143116000', '2017-04-30 21:49:37', '', '', NULL, 0, 0),
(15, '', 'nilanb', '39.2540284000', '-76.7143039000', '2017-04-30 21:50:17', '', '', NULL, 0, 0),
(16, '', 'nilanb', '39.2539955000', '-76.7143143000', '2017-04-30 21:50:37', '', '', NULL, 0, 0),
(17, '', 'nilanb', '39.2540242000', '-76.7143043000', '2017-04-30 21:51:17', '', '', NULL, 0, 0),
(18, '', 'nilanb', '39.2540391000', '-76.7143027000', '2017-04-30 21:51:58', '', '', NULL, 0, 0),
(19, '', 'nilanb', '39.2540217000', '-76.7143039000', '2017-04-30 21:52:57', '', '', NULL, 0, 0),
(20, '', 'nilanb', '39.2540171000', '-76.7142918000', '2017-04-30 21:53:17', '', '', NULL, 0, 0),
(21, '', 'nilanb', '39.2540257000', '-76.7142875000', '2017-04-30 21:53:57', '', '', NULL, 0, 0),
(22, '', 'nilanb', '39.2540363000', '-76.7142823000', '2017-04-30 21:54:18', '', '', NULL, 0, 0),
(23, '', 'nilanb', '39.2540173000', '-76.7142901000', '2017-04-30 21:54:38', '', '', NULL, 0, 0),
(24, '', 'nilanb', '39.2540258000', '-76.7143074000', '2017-04-30 21:54:58', '', '', NULL, 0, 0),
(25, '', 'nilanb', '39.2540055000', '-76.7143032000', '2017-04-30 21:55:58', '', '', NULL, 0, 0),
(26, '', 'nilanb', '39.2540223000', '-76.7142962000', '2017-04-30 21:56:18', '', '', NULL, 0, 0),
(27, '', 'nilanb', '39.2540409000', '-76.7142986000', '2017-04-30 21:57:18', '', '', NULL, 0, 0),
(28, '', 'nilanb', '39.2540135000', '-76.7143009000', '2017-04-30 21:57:38', '', '', NULL, 0, 0),
(29, '', 'nilanb', '39.2540232000', '-76.7142930000', '2017-04-30 21:57:58', '', '', NULL, 0, 0),
(30, '', 'nilanb', '39.2540209000', '-76.7143108000', '2017-04-30 21:58:18', '', '', NULL, 0, 0),
(31, '', 'nilanb', '39.2540196000', '-76.7143239000', '2017-04-30 21:58:38', '', '', NULL, 0, 0),
(32, '', 'nilanb', '39.2540296000', '-76.7142975000', '2017-04-30 21:58:58', '', '', NULL, 0, 0),
(33, '', 'nilanb', '39.2540438000', '-76.7143127000', '2017-04-30 21:59:18', '', '', NULL, 0, 0),
(34, '', 'nilanb', '39.2540300000', '-76.7143065000', '2017-04-30 21:59:38', '', '', NULL, 0, 0),
(35, '', 'nilanb', '39.2540032000', '-76.7143275000', '2017-04-30 21:59:58', '', '', NULL, 0, 0),
(36, '', 'nilanb', '39.2540202000', '-76.7143118000', '2017-04-30 22:00:38', '', '', NULL, 0, 0),
(37, '', 'nilanb', '39.2540165000', '-76.7142813000', '2017-04-30 22:00:58', '', '', NULL, 0, 0),
(38, '', 'nilanb', '39.2540282000', '-76.7143080000', '2017-04-30 22:01:18', '', '', NULL, 0, 0),
(39, '', 'nilanb', '39.2540231000', '-76.7143200000', '2017-04-30 22:02:18', '', '', NULL, 0, 0),
(40, '', 'nilanb', '39.2539912000', '-76.7143074000', '2017-04-30 22:02:58', '', '', NULL, 0, 0),
(41, '', 'nilanb', '39.2540003000', '-76.7143065000', '2017-04-30 22:03:18', '', '', NULL, 0, 0),
(42, '', 'nilanb', '39.2540107000', '-76.7143168000', '2017-04-30 22:03:58', '', '', NULL, 0, 0),
(43, '', 'nilanb', '39.2540192000', '-76.7143237000', '2017-04-30 22:04:18', '', '', NULL, 0, 0),
(44, '', 'nilanb', '39.2540250000', '-76.7142882000', '2017-04-30 22:04:58', '', '', NULL, 0, 0),
(45, '', 'nilanb', '39.2540235000', '-76.7143050000', '2017-04-30 22:05:18', '', '', NULL, 0, 0),
(46, '', 'nilanb', '39.2540126000', '-76.7142850000', '2017-04-30 22:05:38', '', '', NULL, 0, 0),
(47, '', 'nilanb', '39.2540186000', '-76.7143121000', '2017-04-30 22:05:58', '', '', NULL, 0, 0),
(48, '', 'nilanb', '39.2540032000', '-76.7142986000', '2017-04-30 22:06:38', '', '', NULL, 0, 0),
(49, '', 'nilanb', '39.2539925000', '-76.7142902000', '2017-04-30 22:06:58', '', '', NULL, 0, 0),
(50, '', 'nilanb', '39.2540061000', '-76.7142928000', '2017-04-30 22:07:18', '', '', NULL, 0, 0),
(51, '', 'nilanb', '39.2540201000', '-76.7143222000', '2017-04-30 22:07:38', '', '', NULL, 0, 0),
(52, '', 'nilanb', '39.2540206000', '-76.7143076000', '2017-04-30 22:07:58', '', '', NULL, 0, 0),
(53, '', 'nilanb', '39.2540166000', '-76.7142904000', '2017-04-30 22:08:18', '', '', NULL, 0, 0),
(54, '', 'nilanb', '39.2540216000', '-76.7143050000', '2017-04-30 22:08:58', '', '', NULL, 0, 0),
(55, '', 'nilanb', '39.2540341000', '-76.7142865000', '2017-04-30 22:09:38', '', '', NULL, 0, 0),
(56, '', 'nilanb', '39.2540219000', '-76.7143087000', '2017-04-30 22:09:58', '', '', NULL, 0, 0),
(57, '', 'nilanb', '39.2540247000', '-76.7143289000', '2017-04-30 22:10:38', '', '', NULL, 0, 0),
(58, '', 'nilanb', '39.2540221000', '-76.7143080000', '2017-04-30 22:10:58', '', '', NULL, 0, 0),
(59, '', 'nilanb', '39.2540176000', '-76.7142878000', '2017-04-30 22:11:38', '', '', NULL, 0, 0),
(60, '', 'nilanb', '39.2540034000', '-76.7142978000', '2017-04-30 22:11:58', '', '', NULL, 0, 0),
(61, '', 'nilanb', '39.2540285000', '-76.7143058000', '2017-04-30 22:12:38', '', '', NULL, 0, 0),
(62, '', 'nilanb', '39.2540062000', '-76.7143059000', '2017-04-30 22:12:59', '', '', NULL, 0, 0),
(63, '', 'nilanb', '39.2540291000', '-76.7143114000', '2017-04-30 22:13:19', '', '', NULL, 0, 0),
(64, '', 'nilanb', '39.2540162000', '-76.7143031000', '2017-04-30 22:13:39', '', '', NULL, 0, 0),
(65, '', 'nilanb', '39.2540247000', '-76.7143107000', '2017-04-30 22:13:59', '', '', NULL, 0, 0),
(66, '', 'nilanb', '39.2540098000', '-76.7143396000', '2017-04-30 22:14:19', '', '', NULL, 0, 0),
(67, '', 'nilanb', '39.2540121000', '-76.7143249000', '2017-04-30 22:14:39', '', '', NULL, 0, 0),
(68, '', 'nilanb', '39.2540112000', '-76.7143056000', '2017-04-30 22:15:20', '', '', NULL, 0, 0),
(69, '', 'nilanb', '39.2540240000', '-76.7143028000', '2017-04-30 22:16:19', '', '', NULL, 0, 0),
(70, '', 'nilanb', '39.2540131000', '-76.7142957000', '2017-04-30 22:16:39', '', '', NULL, 0, 0),
(71, '', 'nilanb', '39.2540042000', '-76.7142999000', '2017-04-30 22:16:59', '', '', NULL, 0, 0),
(72, '', 'nilanb', '39.2540241000', '-76.7143120000', '2017-04-30 22:17:18', '', '', NULL, 0, 0),
(73, '', 'nilanb', '39.2540141000', '-76.7143327000', '2017-04-30 22:17:40', '', '', NULL, 0, 0),
(74, '', 'nilanb', '39.2539973000', '-76.7143160000', '2017-04-30 22:18:00', '', '', NULL, 0, 0),
(75, '', 'nilanb', '39.2540019000', '-76.7143288000', '2017-04-30 22:18:20', '', '', NULL, 0, 0),
(76, '', 'nilanb', '39.2539995000', '-76.7143152000', '2017-04-30 22:18:40', '', '', NULL, 0, 0),
(77, '', 'nilanb', '39.2540072000', '-76.7142936000', '2017-04-30 22:19:00', '', '', NULL, 0, 0),
(78, '', 'nilanb', '39.2540082000', '-76.7143321000', '2017-04-30 22:19:20', '', '', NULL, 0, 0),
(79, '', 'nilanb', '39.2540146000', '-76.7143220000', '2017-04-30 22:19:40', '', '', NULL, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
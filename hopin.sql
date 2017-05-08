-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 08, 2017 at 07:50 AM
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
CREATE DATABASE IF NOT EXISTS hopin DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE hopin;

-- --------------------------------------------------------

--
-- Table structure for table 'location'
--
-- Creation: May 07, 2017 at 10:22 PM
--

CREATE TABLE IF NOT EXISTS location (
  id int(11) NOT NULL AUTO_INCREMENT,
  email varchar(50) NOT NULL,
  latitude decimal(16,10) DEFAULT NULL,
  longitude decimal(16,10) DEFAULT NULL,
  current_timee datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  seats_num int(4) DEFAULT '1',
  active_status int(2) NOT NULL,
  driver_status int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='stores location history of users using the app' AUTO_INCREMENT=12 ;

--
-- Dumping data for table 'location'
--

INSERT INTO location (id, email, latitude, longitude, current_timee, seats_num, active_status, driver_status) VALUES
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
(11, 'chiugwu1@umbc.edu', '39.2540062000', '-76.7143057000', '2017-05-08 01:27:19', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table 'users'
--
-- Creation: May 08, 2017 at 01:39 AM
--

CREATE TABLE IF NOT EXISTS users (
  id int(11) NOT NULL AUTO_INCREMENT,
  fullname varchar(50) NOT NULL,
  email varchar(50) NOT NULL,
  username varchar(50) NOT NULL,
  `password` varchar(70) NOT NULL,
  signed_up datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  street varchar(30) NOT NULL,
  city varchar(20) NOT NULL,
  state varchar(2) NOT NULL,
  zip_code int(5) DEFAULT NULL,
  phone int(10) DEFAULT NULL,
  last_login datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  selected int(1) NOT NULL DEFAULT '0',
  drivername varchar(50) DEFAULT NULL,
  curr_latitude decimal(16,10) DEFAULT NULL,
  curr_longitude decimal(16,10) DEFAULT NULL,
  vehicle_name varchar(50) NOT NULL,
  vehicle_specs varchar(50) NOT NULL,
  seats_num int(4) DEFAULT '1',
  active_status int(1) NOT NULL DEFAULT '1',
  driver_status int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (id),
  UNIQUE KEY username (username)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='stores list of all users on the system including login info' AUTO_INCREMENT=5 ;

--
-- Dumping data for table 'users'
--

INSERT INTO users (id, fullname, email, username, password, signed_up, street, city, state, zip_code, phone, last_login, selected, drivername, curr_latitude, curr_longitude, vehicle_name, vehicle_specs, seats_num, active_status, driver_status) VALUES
(1, 'Nonso Ugwu', 'chiugwu1@umbc.edu', 'chiugwu1', '01B307ACBA4F54F55AAFC33BB06BBBF6CA803E9A', '2017-05-08 01:10:42', '', '', '', NULL, NULL, '2017-05-08 01:27:06', 0, NULL, '39.2540062000', '-76.7143057000', '', '', 1, 1, 0),
(2, 'Stanley Smith', 'stan1@umbc.edu', 'stan1', '01B307ACBA4F54F55AAFC33BB06BBBF6CA803E9A', '2017-05-08 01:13:24', '', '', '', NULL, NULL, '2017-05-08 01:13:24', 0, NULL, '39.2594380000', '-76.7138610000', '', '', 1, 1, 0),
(3, 'Sarah Smith', 'sara2@umbc.edu', 'sara2', '01B307ACBA4F54F55AAFC33BB06BBBF6CA803E9A', '2017-05-08 01:14:48', '', '', '', NULL, NULL, '2017-05-08 01:14:48', 0, NULL, '39.2584360000', '-76.7161560000', '', '', 1, 1, 0),
(4, 'Bernie Sanders', 'bernie1@umbc.edu', 'bernie1', '01B307ACBA4F54F55AAFC33BB06BBBF6CA803E9A', '2017-05-08 01:17:10', '', '', '', NULL, NULL, '2017-05-08 01:17:10', 0, NULL, '39.2562340000', '-76.7069180000', '', '', 1, 1, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

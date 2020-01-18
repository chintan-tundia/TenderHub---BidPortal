-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2015 at 10:23 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bidportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `bid_detail`
--

CREATE TABLE IF NOT EXISTS `bid_detail` (
  `bid_id` int(10) NOT NULL,
  `resourse_id` int(10) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `start_date` date NOT NULL,
  `due_date` date NOT NULL,
  `approved` tinyint(4) NOT NULL,
  `blocked` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `fb_id` int(10) NOT NULL,
  `fb_title` varchar(40) NOT NULL,
  `description` text NOT NULL,
  `username` varchar(30) NOT NULL,
  `fb_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='username chk ';

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `user_name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='chk type';

-- --------------------------------------------------------

--
-- Table structure for table `parser`
--

CREATE TABLE IF NOT EXISTS `parser` (
  `p_id` int(10) NOT NULL,
  `path` text NOT NULL,
  `resourse_id` int(10) NOT NULL,
  `title` text NOT NULL,
  `category` varchar(30) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `url` text NOT NULL,
  `reference_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='resourse id newspaper';

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE IF NOT EXISTS `reference` (
  `reference_id` int(10) NOT NULL,
  `resourse_id` int(10) NOT NULL,
  `date_of_placing` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='reference id included';

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `email_id` varchar(30) NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `business_type` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `pincode` int(6) NOT NULL,
  `contact_no` int(10) NOT NULL,
  `landline` int(10) NOT NULL,
  `fax` int(10) NOT NULL,
  `url` text NOT NULL,
  `legal_status` varchar(20) NOT NULL,
  `blocked` tinyint(4) NOT NULL,
  `ishost` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='host id removed to be chkd name of table';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bid_detail`
--
ALTER TABLE `bid_detail`
 ADD PRIMARY KEY (`bid_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
 ADD PRIMARY KEY (`fb_id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `parser`
--
ALTER TABLE `parser`
 ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `reference`
--
ALTER TABLE `reference`
 ADD PRIMARY KEY (`reference_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`email_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`email_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `login`
--
ALTER TABLE `login`
ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`user_name`) REFERENCES `user` (`email_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

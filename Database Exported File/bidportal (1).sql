-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2015 at 12:21 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

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
-- Table structure for table `bidding`
--

CREATE TABLE IF NOT EXISTS `bidding` (
  `req_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `price` int(10) NOT NULL,
  `date_of_bidding` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `businessprofile`
--

CREATE TABLE IF NOT EXISTS `businessprofile` (
  `email_id` varchar(30) NOT NULL DEFAULT '',
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
  `blocked` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='host id removed to be chkd name of table';

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(70) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Industrial Plant & Machine'),
(2, 'Electronics & Electrical'),
(3, 'Building & Construction'),
(4, 'Industrial Supplies'),
(5, 'Food & Beverages'),
(6, 'Apparel & Garments'),
(7, 'Medical & Healthcare'),
(8, 'Chemicals, Dyes & Solvents'),
(9, 'Packaging Machines & Goods'),
(10, 'Mechanical Parts & Spares');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `Contact_Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Purpose` varchar(50) NOT NULL,
  `Subject` text NOT NULL,
  `Message` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Contact_Id`, `Name`, `Email`, `Purpose`, `Subject`, `Message`) VALUES
(1, 'Chintan', 'ctundia@yahoo.com', 'Inquiry', 'Inquiry for a product', 'Check\r\n'),
(2, 'XYZ', 'xyz@gmail.com', 'Feedback', 'About website', 'Nice front end'),
(3, 'Check', 'check@check.com', 'Feedback', 'Check', 'Check');

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
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(70) NOT NULL,
  `sub_cat_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `sub_cat_id`) VALUES
(1, 'Mobile', 1),
(2, 'TV', 1);

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
-- Table structure for table `requirement`
--

CREATE TABLE IF NOT EXISTS `requirement` (
  `req_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `req_name` varchar(100) NOT NULL,
  `req_type` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `date_of_placing` date NOT NULL,
  `date_of_closing` date NOT NULL,
  `date_of_bid_opening` date NOT NULL,
  `req_description` text NOT NULL,
  `image` varchar(150) NOT NULL,
  `finalized_seller_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seller_product`
--

CREATE TABLE IF NOT EXISTS `seller_product` (
  `seller_prod_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_type` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `website` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `sub_cat_id` int(11) NOT NULL,
  `sub_cat_name` varchar(70) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`sub_cat_id`, `sub_cat_name`, `cat_id`) VALUES
(1, 'Machines & Equipments', 1),
(2, 'Textile & Garment Machines', 1),
(3, 'Control & Equipments', 1),
(4, 'Lights & Light Products', 2),
(5, 'Audio & Video Products', 2),
(6, 'Switchgear & Relays', 2),
(7, 'Hardware Fittings', 3),
(8, 'Builders & Developers', 3),
(9, 'Door & Window Hardware', 3),
(10, 'Pipe Fittings & Flanges', 4),
(11, 'Filters & Accessories', 4),
(12, 'Plastic, PVC & PP Products', 4),
(13, 'Fruits & Vegetables', 5),
(14, 'Bakery & Confectionery', 5),
(15, 'Cereals & Food Grains', 5),
(16, 'Thread & Sewing Supplies', 6),
(17, 'Ladies Dress & Apparel', 6),
(18, 'Work & Safety Clothing', 6),
(19, 'Hospitals & Clinics', 7),
(20, 'Gym & Fitness Equipments', 7),
(21, 'Pharma Raw Materials & API', 7),
(22, 'Industry Chemical & Acid', 8),
(23, 'Chemicals & Derivatives', 8),
(24, 'Paints, Powder & Coating', 8),
(25, 'Barcodes & Labels', 9),
(26, 'Packaging Box & Cartons', 9),
(27, 'Packaging Bottles & Jars', 9),
(28, 'Nuts, Bolts & Screws', 10),
(29, 'Valves & Valve Fittings', 10),
(30, 'Pump & Pump Equipments', 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `UserId` int(11) NOT NULL,
  `Fname` varchar(30) NOT NULL,
  `Lname` varchar(30) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `MobileNo` int(10) NOT NULL,
  `WebsiteAddress` varchar(200) NOT NULL,
  `Pass` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='This table is used for storing personal profile and signin details of user';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserId`, `Fname`, `Lname`, `Email`, `MobileNo`, `WebsiteAddress`, `Pass`) VALUES
(1, 'CheckF', 'CheckL', 'check@check.com', 1234567890, 'check@check.com', 'check');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidding`
--
ALTER TABLE `bidding`
  ADD PRIMARY KEY (`req_id`,`seller_id`);

--
-- Indexes for table `bid_detail`
--
ALTER TABLE `bid_detail`
  ADD PRIMARY KEY (`bid_id`);

--
-- Indexes for table `businessprofile`
--
ALTER TABLE `businessprofile`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Contact_Id`);

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
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`reference_id`);

--
-- Indexes for table `requirement`
--
ALTER TABLE `requirement`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `seller_product`
--
ALTER TABLE `seller_product`
  ADD PRIMARY KEY (`seller_prod_id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`sub_cat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `Contact_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `requirement`
--
ALTER TABLE `requirement`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `seller_product`
--
ALTER TABLE `seller_product`
  MODIFY `seller_prod_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`username`) REFERENCES `businessprofile` (`email_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `login`
--
ALTER TABLE `login`
ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`user_name`) REFERENCES `businessprofile` (`email_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

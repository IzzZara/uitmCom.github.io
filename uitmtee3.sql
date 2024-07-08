-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2024 at 06:40 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `uitmtee3`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `ADMIN_ID` int(11) NOT NULL,
  `ADMIN_NAME` varchar(100) NOT NULL,
  `ADMIN_EMAIL` varchar(100) NOT NULL,
  `ADMIN_PHONE` varchar(15) NOT NULL,
  `ADMIN_PASSWORD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ADMIN_ID`, `ADMIN_NAME`, `ADMIN_EMAIL`, `ADMIN_PHONE`, `ADMIN_PASSWORD`) VALUES
(12345, 'Admin', 'admin@gmail.com', '0123456789', '12345'),
(2022454092, 'mirafizh', 'mirafizh@gmail.com', '0174020170', '757204mi');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
`CART_ID` int(11) NOT NULL,
  `CUS_ID` int(11) DEFAULT NULL,
  `CLO_NUM` int(11) DEFAULT NULL,
  `SIZE` varchar(11) DEFAULT NULL,
  `QUANTITY` int(11) DEFAULT '0',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`CART_ID`, `CUS_ID`, `CLO_NUM`, `SIZE`, `QUANTITY`, `added_at`) VALUES
(138, 2022454155, 1002, 'XS', 1, '2024-05-31 15:21:25');

-- --------------------------------------------------------

--
-- Table structure for table `clothes`
--

CREATE TABLE IF NOT EXISTS `clothes` (
  `CLO_NUM` int(11) NOT NULL,
  `CLO_NAME` varchar(100) NOT NULL,
  `IMAGE` varchar(100) NOT NULL,
  `CLO_PRICE` decimal(10,2) NOT NULL,
  `CLO_TYPE` varchar(50) NOT NULL,
  `XS_QTY` int(11) NOT NULL,
  `S_QTY` int(11) NOT NULL,
  `M_QTY` int(11) NOT NULL,
  `L_QTY` int(11) NOT NULL,
  `XL_QTY` int(11) NOT NULL,
  `2XL_QTY` int(11) NOT NULL,
  `3XL_QTY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clothes`
--

INSERT INTO `clothes` (`CLO_NUM`, `CLO_NAME`, `IMAGE`, `CLO_PRICE`, `CLO_TYPE`, `XS_QTY`, `S_QTY`, `M_QTY`, `L_QTY`, `XL_QTY`, `2XL_QTY`, `3XL_QTY`) VALUES
(1001, 'UiTM Lioness V3', 'j1.png', '65.00', 'Jersey', 52, 99, 100, 100, 100, 99, 100),
(1002, 'UiTM Lioness V1', 'j3.png', '56.00', 'Jersey', 55, 100, 100, 100, 99, 99, 100),
(1003, 'UiTM Lioness V2', 'j2.png', '60.00', 'Jersey', 58, 100, 100, 100, 100, 99, 100),
(1004, 'KPPIM Jersey', 'j10.png', '45.00', 'Jersey', 48, 84, 92, 94, 100, 99, 99),
(1005, 'UiTM Black', 'j99.png', '65.00', 'Jersey', 99, 100, 100, 99, 100, 99, 100),
(1006, 'Korporat FSG', 'j77.png', '80.00', 'Corporate', 75, 100, 100, 99, 100, 99, 99),
(1007, 'Korporat KPPIM', 'j23.png', '75.00', 'Corporate', 96, 100, 99, 100, 100, 100, 100),
(1008, 'Korporat FP', 'j01.png', '85.00', 'Corporate', 99, 100, 100, 100, 100, 100, 100),
(1009, 'Korporat BASCO', 'k1.png', '85.00', 'Corporate', 97, 100, 100, 99, 100, 100, 100),
(1010, 'Korporat DiSK', 'k1.png', '85.00', 'Corporate', 99, 100, 100, 100, 100, 100, 100),
(1011, 'Korporat MASSCOM', 'k2.png', '80.00', 'Corporate', 84, 100, 100, 100, 100, 100, 100),
(1012, 'Korporat EEC', 'k4.png', '83.00', 'Corporate', 88, 100, 100, 100, 79, 83, 100),
(1013, 'UiTM Muslimah Jersey', 'jj1.png', '55.00', 'Jersey', 99, 100, 100, 99, 100, 98, 100),
(1014, 'UiTM Long Sleeve', 'jj2.png', '55.00', 'Jersey', 100, 100, 100, 100, 100, 100, 100),
(1015, 'KPPIM Jersey V2', 'jj3.png', '60.00', 'Jersey', 96, 100, 100, 100, 100, 100, 100),
(1016, 'KPPIM Jersey V2', 'jj4.png', '65.00', 'Jersey', 99, 100, 100, 100, 100, 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE IF NOT EXISTS `contact_messages` (
`MESSAGE_ID` int(11) NOT NULL,
  `MESSAGE` text NOT NULL,
  `RATING` varchar(1000) NOT NULL,
  `SUBMISSION_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CUS_ID` int(11) DEFAULT NULL,
  `ADMIN_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`MESSAGE_ID`, `MESSAGE`, `RATING`, `SUBMISSION_DATE`, `CUS_ID`, `ADMIN_ID`) VALUES
(5, 'dfghjgk', '', '2024-05-22 07:44:59', 2022454065, 2022454092),
(6, 'dfghjgk', '', '2024-05-22 07:44:59', 2022454065, 2022454092),
(7, 'ghgfrjhyjghjmghmhkjgk', '', '2024-05-22 08:08:57', 2022454078, 2022454092),
(8, 'jannah busuk sangat harini', '', '2024-05-22 07:48:42', 2022454078, 2022454092),
(9, 'bapa ku pulang dari kota bapa ku belikan kereta', '', '2024-05-22 08:07:31', NULL, 2022454092),
(10, 'mira comel', '', '2024-05-22 08:25:04', 2022123456, 2022454092),
(11, 'hehehehhehehehheee', '', '2024-05-22 08:28:52', 2022123456, 2022454092),
(12, 'amni terlalu cantik', '', '2024-05-22 08:29:22', 2022123456, 2022454092),
(13, 'ngokegehryedjkdngejdghejkks', '', '2024-05-22 08:31:31', 2022454091, 2022454092),
(14, 'nadhir love eillyyyyyyyyyy <33333', '', '2024-05-22 08:32:22', 2022454091, 2022454092),
(15, 'mira sangat cumell', '', '2024-05-22 08:34:48', 2022123456, 2022454092),
(16, 'eill', '', '2024-05-22 09:45:59', 2022123456, 2022454092),
(17, 'Saya sangat suka ', '', '2024-05-30 07:57:13', 2022787804, 2022454092),
(18, 'saya ana', '', '2024-05-30 07:59:49', 2022787804, 2022454092),
(19, 'anak muda dirantau', '', '2024-05-31 02:13:19', 2022454055, 2022454092),
(20, 'baguss', '4', '2024-05-31 05:20:46', 2022454055, 2022454092),
(21, 'bad', '1', '2024-05-31 05:38:32', 2022454055, 2022454092),
(22, 'Saya amat menyukai apps ini, Thank you so much.', '5', '2024-05-31 07:07:03', 2022121212, 2022454092),
(23, 'Happy to using this apps.', '4', '2024-05-31 07:09:29', 2022121515, 2022454092),
(24, 'I like', '4', '2024-05-31 07:12:48', 2022123456, 2022454092),
(25, 'Thanks', '2', '2024-05-31 07:13:30', 2022454055, 2022454092),
(26, 'Very convenience', '4', '2024-05-31 07:15:43', 2022454065, 2022454092),
(27, 'bad sorry', '1', '2024-05-31 07:19:51', 2022454078, 2022454092),
(28, 'worstttttttt', '1', '2024-05-31 07:23:04', 2022454081, 2022454092),
(29, 'good but not good enough', '2', '2024-05-31 07:25:42', 2022454155, 2022454092),
(30, 'good ', '3', '2024-05-31 07:28:22', 2022457487, 2022454092),
(31, 'nyenyenye', '2', '2024-05-31 07:29:52', 2022787804, 2022454092),
(32, 'I hope you can improve apps more and including more clothes and more features', '3', '2024-05-31 07:35:07', 2022816422, 2022454092),
(33, 'Good just good', '2', '2024-05-31 07:39:14', 2022877957, 2022454092),
(34, 'Best', '5', '2024-06-01 14:22:44', 2022454091, 2022454092),
(35, 'Best Experiance', '4', '2024-06-01 14:22:44', 2022816422, 2022454092),
(36, 'bye bye\r\n', '1', '2024-06-01 10:32:43', 12345, 2022454092);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `CUS_ID` int(11) NOT NULL,
  `CUS_NAME` varchar(100) NOT NULL,
  `CUS_PHONE` varchar(15) NOT NULL,
  `CUS_EMAIL` varchar(100) NOT NULL,
  `CUS_ADDRESS` text NOT NULL,
  `CUS_PASSWORD` varchar(255) NOT NULL,
  `PROFILE` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUS_ID`, `CUS_NAME`, `CUS_PHONE`, `CUS_EMAIL`, `CUS_ADDRESS`, `CUS_PASSWORD`, `PROFILE`) VALUES
(12345, 'ahmad', '01136346973', 'amnie@gmail.com', 'Perak', '12345678', 'default.jpg'),
(2022121212, 'nema', '01985472888', 'mena@gmail.com', 'efsgdhjgfjf', '4747', 'ppic/iconprofile.png'),
(2022121515, 'mena', '01840215547', 'nini@gmail.com', 'dfgd', '4444', 'ppic/iconprofile.png'),
(2022123456, 'haikal', '012123456789', 'haikal@gmail.com', '111', 'baba14', 'ppic/iconprofile.png'),
(2022454055, 'Joyah Joshan', '01133438100', 'jojen@gmail.com', 'tiang lampu 19, Bukit Pasir', 'joyah055', 'ppic/iconprofile.png'),
(2022454065, 'Ixora Camellia', '01133138100', 'xoxo@gmail.com', 'no 39, Jalan Murni', 'xoxo4065', 'ppic/iconprofile.png'),
(2022454078, 'baekhyunwoo', '01136438100', 'haein@gmail.com', 'no 19, Permatang Tok Mahad', 'haein078', 'ppic/iconprofile.png'),
(2022454081, 'fakhrul', '01133138600', 'roll@gmail.com', 'no 21, jalan mont kiara', 'roll4081', 'ppic/iconprofile.png'),
(2022454091, 'lencai', '0154020170', 'lenlen@gmail.com', 'Parit 17 A Sungai Lampam', '$2y$10$ObnQtNvFHDJuuRQ.AURt4./SgypbS5zR.qqo78/grP61oWh53C11i', 'ppic/iconprofile.png'),
(2022454155, 'Nurliyana Hanisah', '0194041896', 'lyhanis@gmail.com', 'No,39 Jalan Murni1, Taman Murni', 'anieh115', 'ppic/iconprofile.png'),
(2022457487, 'mi', '01454255565', 'segrd@gmail.com', 'dfgg', '789', 'ppic/iconprofile.png'),
(2022757204, 'Razilah Rahman', '01133138600', '7572@gmail.com', 'Parit 17 A Sungai Lampam', '757204', 'ppic/iconprofile.png'),
(2022757208, 'Abu Bakar', '01460201054', '308686@gmail.com', 'no 21, jalan mont kiara', '757204', 'ppic/iconperson.png'),
(2022787804, 'miraa', 'naem', 'nafiss@gmail.com', 'fsfgfdhgdhd', '545471', 'ppic/iconprofile.png'),
(2022816422, 'amnihudzori', '01136346973', 'amni@gmail.com', 'Perak', '1234', 'ppic/amniprofile.jpg'),
(2022868686, 'Lencaima', '0194041899', 'lylema@gmail.com', 'no 19, Permatang Tok Mahad', '041016', 'ppic/iconprofile.png'),
(2022877957, 'Lin Yee', '01131392934', 'lin@gmail.com', 'no 12 jln ubi', '123456', 'ppic/iconprofile.png');

-- --------------------------------------------------------

--
-- Table structure for table `order_customer`
--

CREATE TABLE IF NOT EXISTS `order_customer` (
`ORDER_ID` int(11) NOT NULL,
  `ORDER_DATE` datetime DEFAULT NULL,
  `ORDER_STATUS` varchar(11) DEFAULT NULL,
  `ADMIN_ID` int(11) DEFAULT NULL,
  `CUS_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_customer`
--

INSERT INTO `order_customer` (`ORDER_ID`, `ORDER_DATE`, `ORDER_STATUS`, `ADMIN_ID`, `CUS_ID`) VALUES
(2, '2024-05-31 10:00:48', 'Successful', 2022454092, 2022454055),
(3, '2024-05-31 10:08:07', 'Shipping', 2022454092, 2022454055),
(5, '2024-05-31 10:14:49', 'Successful', 2022454092, 2022454055),
(6, '2024-05-31 10:30:28', 'Successful', 2022454092, 2022454055),
(7, '2024-05-31 11:04:19', 'Successful', 2022454092, 2022454055),
(8, '2024-05-31 12:27:04', 'Pending', 2022454092, 2022454055),
(9, '2024-05-31 12:35:13', 'Pending', 2022454092, 2022454055),
(10, '2024-05-31 14:56:39', 'Pending', 2022454092, 2022121212),
(11, '2024-05-31 15:05:33', 'Pending', 2022454092, 2022121212),
(12, '2024-05-31 15:08:37', 'Pending', 2022454092, 2022121515),
(13, '2024-05-31 15:10:52', 'Pending', 2022454092, 2022123456),
(14, '2024-05-31 15:11:34', 'Pending', 2022454092, 2022123456),
(16, '2024-05-31 15:14:45', 'Pending', 2022454092, 2022454065),
(17, '2024-05-31 15:18:47', 'Pending', 2022454092, 2022454078),
(18, '2024-05-31 15:21:54', 'Pending', 2022454092, 2022454081),
(19, '2024-05-31 15:22:37', 'Pending', 2022454092, 2022454081),
(20, '2024-05-31 15:27:40', 'Pending', 2022454092, 2022457487),
(21, '2024-05-31 15:29:26', 'Pending', 2022454092, 2022787804),
(22, '2024-05-31 15:31:14', 'Pending', 2022454092, 2022816422),
(23, '2024-05-31 15:37:20', 'Pending', 2022454092, 2022877957),
(24, '2024-05-31 15:39:51', 'Pending', 2022454092, 2022877957),
(25, '2024-05-31 17:10:42', 'Pending', 2022454092, 2022454155),
(26, '2024-05-31 17:52:36', 'Pending', 2022454092, 2022757204),
(27, '2024-05-31 20:53:52', 'Pending', 2022454092, 2022816422),
(28, '2024-06-01 18:31:27', 'Shipping', 2022454092, 12345);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
  `ORDER_ID` int(11) DEFAULT NULL,
  `CLO_NUM` int(11) DEFAULT NULL,
  `SIZE` varchar(11) DEFAULT NULL,
  `QUANTITY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`ORDER_ID`, `CLO_NUM`, `SIZE`, `QUANTITY`) VALUES
(2, 1001, 'XS', 1),
(3, 1001, 'XS', 1),
(3, 1002, 'XS', 1),
(3, 1003, '2XL', 1),
(5, 1003, 'XS', 1),
(5, 1004, '2XL', 1),
(6, 1002, 'XS', 1),
(6, 1003, 'XS', 1),
(6, 1004, 'XS', 1),
(7, 1003, 'XS', 1),
(8, 1002, 'XS', 2),
(9, 1003, 'XS', 1),
(9, 1004, '3XL', 1),
(9, 1007, 'XS', 1),
(9, 1006, '2XL', 1),
(9, 1005, 'L', 1),
(9, 1011, 'XS', 1),
(10, 1001, 'XS', 1),
(10, 1005, '2XL', 1),
(10, 1009, 'XS', 1),
(10, 1010, 'XS', 1),
(10, 1011, 'XS', 1),
(10, 1015, 'XS', 1),
(11, 1007, 'XS', 1),
(11, 1008, 'XS', 1),
(12, 1001, 'XS', 1),
(12, 1006, 'XS', 4),
(12, 1011, 'XS', 1),
(13, 1009, 'XS', 1),
(13, 1015, 'XS', 1),
(13, 1017, '2XL', 1),
(13, 1017, '2XL', 1),
(13, 1017, '3XL', 1),
(13, 1017, 'XL', 1),
(14, 1004, 'XS', 1),
(14, 1001, 'XS', 1),
(14, 1003, 'XS', 1),
(14, 1002, 'XS', 1),
(16, 1001, 'XS', 8),
(16, 1011, 'XS', 10),
(16, 1012, 'XS', 12),
(16, 1012, 'XL', 21),
(17, 1001, 'XS', 1),
(17, 1006, 'XS', 19),
(17, 1015, 'XS', 1),
(18, 1005, 'XS', 1),
(18, 1013, 'XS', 1),
(18, 1013, '2XL', 1),
(18, 1013, '2XL', 1),
(18, 1013, 'L', 1),
(19, 1015, 'XS', 1),
(19, 1016, 'XS', 1),
(20, 1004, 'XS', 20),
(20, 1004, 'S', 16),
(20, 1004, 'M', 8),
(20, 1004, 'L', 6),
(21, 1002, 'XS', 1),
(21, 1003, 'XS', 1),
(22, 1006, 'XS', 1),
(22, 1007, 'XS', 1),
(22, 1011, 'XS', 1),
(23, 1007, 'XS', 1),
(23, 1006, 'XS', 1),
(23, 1011, 'XS', 1),
(24, 1011, 'XS', 1),
(24, 1012, '2XL', 17),
(25, 1001, 'XS', 1),
(26, 1002, 'XS', 1),
(26, 1003, 'XS', 1),
(27, 1002, 'XS', 1),
(28, 1001, 'XS', 30),
(28, 1002, 'XS', 30),
(28, 1003, 'XS', 30),
(28, 1004, 'XS', 30);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
`PAY_NUM` int(11) NOT NULL,
  `PAY_DATE` datetime DEFAULT NULL,
  `PAY_STATUS` varchar(11) DEFAULT NULL,
  `IMG` varchar(10000) DEFAULT NULL,
  `ORDER_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PAY_NUM`, `PAY_DATE`, `PAY_STATUS`, `IMG`, `ORDER_ID`) VALUES
(1, '2024-05-31 00:00:00', 'Pending', 'receipts/m.png', 2),
(2, '2024-05-31 00:00:00', 'Pending', 'receipts/uitm2.png', 3),
(3, '2024-05-31 00:00:00', 'Pending', 'receipts/fp.png', 5),
(4, '2024-05-31 00:00:00', 'Pending', 'receipts/uitm2.png', 6),
(5, '2024-05-31 00:00:00', 'Pending', 'receipts/uitm2.png', 7),
(6, '2024-05-31 00:00:00', 'Pending', 'receipts/call3.png', 8),
(7, '2024-05-31 00:00:00', 'Pending', 'receipts/OIP.jpg', 9),
(8, '2024-05-31 00:00:00', 'Successfull', 'receipts/bhnc.png', 10),
(9, '2024-05-31 00:00:00', 'Successfull', 'receipts/fuh.png', 11),
(10, '2024-05-31 00:00:00', 'Successfull', 'receipts/catalogue.png', 12),
(11, '2024-05-31 00:00:00', 'Successfull', 'receipts/iconperson.png', 13),
(12, '2024-05-31 00:00:00', 'Successfull', 'receipts/email_us.png', 14),
(13, '2024-05-31 00:00:00', 'Successfull', 'receipts/fuh.png', 16),
(14, '2024-05-31 00:00:00', 'Successfull', 'receipts/j2.png', 17),
(15, '2024-05-31 00:00:00', 'Successfull', 'receipts/email_us.png', 18),
(16, '2024-05-31 00:00:00', 'Successfull', 'receipts/catalogue.png', 19),
(17, '2024-05-31 00:00:00', 'Successfull', 'receipts/C1.png.png', 20),
(18, '2024-05-31 00:00:00', 'Successfull', 'receipts/j1.png', 21),
(19, '2024-05-31 00:00:00', 'Successfull', 'receipts/email_us.png', 22),
(20, '2024-05-31 00:00:00', 'Successfull', 'receipts/fuh.png', 23),
(21, '2024-05-31 00:00:00', 'Successfull', 'receipts/email_us.png', 24),
(22, '2024-05-31 00:00:00', 'Successfull', 'receipts/fp.png', 25),
(23, '2024-05-31 00:00:00', 'Successfull', 'receipts/j3.png', 26),
(24, '2024-05-31 00:00:00', 'Successfull', 'receipts/1_kYA3T-CDXPRNCyKI9Y2ANg.jpg', 27),
(25, '2024-06-01 00:00:00', 'Successfull', 'receipts/innovation.jpeg', 28);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`ADMIN_ID`), ADD UNIQUE KEY `ADMIN_EMAIL` (`ADMIN_EMAIL`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
 ADD PRIMARY KEY (`CART_ID`), ADD KEY `FK_CUS_ID` (`CUS_ID`), ADD KEY `FK_CLO_NUM` (`CLO_NUM`);

--
-- Indexes for table `clothes`
--
ALTER TABLE `clothes`
 ADD PRIMARY KEY (`CLO_NUM`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
 ADD PRIMARY KEY (`MESSAGE_ID`), ADD KEY `CUS_ID` (`CUS_ID`), ADD KEY `ADMIN_ID` (`ADMIN_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`CUS_ID`), ADD UNIQUE KEY `CUS_EMAIL` (`CUS_EMAIL`);

--
-- Indexes for table `order_customer`
--
ALTER TABLE `order_customer`
 ADD PRIMARY KEY (`ORDER_ID`), ADD KEY `ADMIN_ID` (`ADMIN_ID`), ADD KEY `CUS_ID` (`CUS_ID`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
 ADD KEY `ORDER_ID` (`ORDER_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
 ADD PRIMARY KEY (`PAY_NUM`), ADD KEY `ORDER_ID` (`ORDER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
MODIFY `CART_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
MODIFY `MESSAGE_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `order_customer`
--
ALTER TABLE `order_customer`
MODIFY `ORDER_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
MODIFY `PAY_NUM` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
ADD CONSTRAINT `FK_CLO_NUM` FOREIGN KEY (`CLO_NUM`) REFERENCES `clothes` (`CLO_NUM`),
ADD CONSTRAINT `FK_CUS_ID` FOREIGN KEY (`CUS_ID`) REFERENCES `customer` (`CUS_ID`);

--
-- Constraints for table `contact_messages`
--
ALTER TABLE `contact_messages`
ADD CONSTRAINT `contact_messages_ibfk_1` FOREIGN KEY (`CUS_ID`) REFERENCES `customer` (`CUS_ID`),
ADD CONSTRAINT `contact_messages_ibfk_2` FOREIGN KEY (`ADMIN_ID`) REFERENCES `admin` (`ADMIN_ID`);

--
-- Constraints for table `order_customer`
--
ALTER TABLE `order_customer`
ADD CONSTRAINT `order_customer_ibfk_1` FOREIGN KEY (`ADMIN_ID`) REFERENCES `admin` (`ADMIN_ID`),
ADD CONSTRAINT `order_customer_ibfk_2` FOREIGN KEY (`CUS_ID`) REFERENCES `customer` (`CUS_ID`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`ORDER_ID`) REFERENCES `order_customer` (`ORDER_ID`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`ORDER_ID`) REFERENCES `order_customer` (`ORDER_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

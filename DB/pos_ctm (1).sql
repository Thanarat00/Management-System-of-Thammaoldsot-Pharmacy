-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2023 at 06:57 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_ctm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `b_id` int(11) NOT NULL,
  `b_name` varchar(150) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`b_id`, `b_name`) VALUES
(9, 'ยาแก้ไอ2'),
(10, 'ยาแก้อักเสพ'),
(11, '	ยาแก้ปวด'),
(12, 'กดเisdfd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `c_id` int(11) NOT NULL,
  `c_status` int(2) DEFAULT NULL,
  `c_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `c_surname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `c_phone` varchar(11) NOT NULL,
  `c_username` varchar(50) NOT NULL,
  `c_password` varchar(50) NOT NULL,
  `c_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`c_id`, `c_status`, `c_name`, `c_surname`, `c_phone`, `c_username`, `c_password`, `c_img`) VALUES
(5, 1, 'ลูกค้าทั่วไป', 'ลูกค้าทั่วไป', '123456789', 'esrgdfdfgdfdfhgf', 'fghfggfhgffghgfgfhfggfhfghgfh', 'fdhgfghgfgh'),
(6, 1, 'ธรรณรัตน์ ', 'แสนรัมย์', '0951252898', '0951252898', '0505bf97aaa38217999fa409491f72a2e36fa083', '163311276920230321_202952.jpg'),
(7, 2, 'กดเกด', 'กดเกดเ', '123456789', '123456789', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '196540062220230321_204521.png'),
(8, 1, 'ธรรณรัตน์ ', 'แสนรัมย์', '12345678910', '12345678910', '9048ead9080d9b27d6b2b6ed363cbf8cce795f7f', '33932224020230329_034303.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `mem_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `ref_l_id` int(11) NOT NULL,
  `mem_name` varchar(50) NOT NULL,
  `mem_username` varchar(20) NOT NULL,
  `mem_password` varchar(100) NOT NULL,
  `mem_status` varchar(50) NOT NULL,
  `mem_img` varchar(200) NOT NULL,
  `dateinsert` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`mem_id`, `ref_l_id`, `mem_name`, `mem_username`, `mem_password`, `mem_status`, `mem_img`, `dateinsert`) VALUES
(001, 1, 'FFF', '1', '356a192b7913b04c54574d18c28d46e6395428ab', '1', '92335717620230330_221557.png', '2019-09-04 03:40:46'),
(029, 3, 'ธรรณรัตน์ แสนรัมย์', '44', '98fbc42faedc02492397cb5962ea3a3ffc0a9243', '1', '196547429520230321_203126.png', '2023-03-21 13:31:26'),
(032, 2, 'MM', '10', 'b1d5781111d84f7b3fe45a0852e59758cd7a87e5', '1', '98609390920230329_171138.jpg', '2023-03-29 10:11:38'),
(036, 3, 'lll', '77', 'd321d6f7ccf98b51540ec9d933f20898af3bd71e', '1', '133978697220230329_171637.png', '2023-03-29 10:16:37'),
(043, 2, 'dfgdfgdf', '22', '12c6fc06c99a462375eeb3f43dfd832b08ca9e17', '1', '24108692620230329_173533.png', '2023-03-29 10:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(4) UNSIGNED ZEROFILL NOT NULL,
  `mem_id` int(11) NOT NULL,
  `c_id` int(5) NOT NULL COMMENT 'FK tbl_customer',
  `receive_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อผู้รับ',
  `order_status` int(1) NOT NULL,
  `pay_amount` float(10,2) DEFAULT NULL,
  `pay_amount2` float(10,2) NOT NULL,
  `order_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `mem_id`, `c_id`, `receive_name`, `order_status`, `pay_amount`, `pay_amount2`, `order_date`) VALUES
(0026, 1, 5, 'ลูกค้าหน้าร้าน', 4, 100.00, 100.00, '2023-03-29 20:35:06'),
(0025, 1, 5, 'ลูกค้าหน้าร้าน', 4, 60.00, 50.00, '2023-03-29 20:21:58'),
(0024, 1, 5, 'ลูกค้าหน้าร้าน', 4, 60.00, 500.00, '2023-03-29 20:00:38'),
(0023, 1, 6, 'ลูกค้าหน้าร้าน', 4, 10.00, 500.00, '2023-03-29 16:05:57'),
(0022, 1, 5, 'ลูกค้าหน้าร้าน', 4, 50.00, 500.00, '2023-03-29 16:02:59'),
(0021, 1, 5, 'ลูกค้าหน้าร้าน', 4, 10.00, 100.00, '2023-03-29 15:57:48'),
(0020, 1, 5, 'ลูกค้าหน้าร้าน', 4, 50.00, 50.00, '2023-03-29 15:56:46'),
(0019, 1, 8, 'ลูกค้าหน้าร้าน', 4, 50.00, 50.00, '2023-03-29 15:54:28'),
(0018, 1, 5, 'ลูกค้าหน้าร้าน', 4, 50.00, 50.00, '2023-03-29 15:54:13'),
(0017, 1, 5, 'ลูกค้าหน้าร้าน', 4, 50.00, 50.00, '2023-03-29 15:46:30'),
(0027, 1, 5, 'ลูกค้าหน้าร้าน', 4, 1050.00, 1100.00, '2023-03-31 18:49:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `d_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `p_c_qty` int(11) NOT NULL,
  `total` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`d_id`, `order_id`, `p_id`, `p_c_qty`, `total`) VALUES
(1, 4, 24, 1, 900),
(2, 5, 23, 1, 50),
(3, 6, 23, 1, 50),
(4, 7, 22, 1, 155),
(5, 7, 23, 1, 50),
(6, 8, 25, 1, 50),
(7, 9, 26, 1, 50),
(8, 10, 28, 1, 10),
(9, 11, 30, 1, 10),
(10, 12, 31, 1, 50),
(11, 13, 31, 1, 50),
(12, 14, 38, 1, 10),
(13, 15, 36, 1, 50),
(14, 16, 36, 1, 50),
(15, 17, 36, 1, 50),
(16, 18, 36, 1, 50),
(17, 19, 36, 1, 50),
(18, 20, 36, 1, 50),
(19, 21, 37, 1, 10),
(20, 22, 36, 1, 50),
(21, 23, 37, 1, 10),
(22, 24, 39, 1, 50),
(23, 24, 38, 1, 10),
(24, 25, 38, 1, 10),
(25, 25, 39, 1, 50),
(26, 26, 39, 2, 100),
(27, 27, 45, 1, 1000),
(28, 27, 46, 1, 50);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `t_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `p_barcode` varchar(25) NOT NULL COMMENT 'Barcode',
  `p_name` varchar(200) NOT NULL,
  `p_detail` varchar(255) NOT NULL,
  `p_license` int(3) DEFAULT NULL COMMENT '9=ข.ย.9, 10=ข.ย.10, 11=ข.ย.11\r\n',
  `p_dateMFD` date NOT NULL COMMENT 'วันที่ผลิต',
  `p_dateEXD` date NOT NULL COMMENT 'วันที่หมดอายุ',
  `s_id` int(11) NOT NULL COMMENT 'รายละเอียดผู้ผลิต',
  `p_price` float(10,2) NOT NULL,
  `p_img` varchar(200) NOT NULL,
  `p_qty` int(11) DEFAULT 0,
  `date_save` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `t_id`, `b_id`, `p_barcode`, `p_name`, `p_detail`, `p_license`, `p_dateMFD`, `p_dateEXD`, `s_id`, `p_price`, `p_img`, `p_qty`, `date_save`) VALUES
(046, 19, 10, 'A00112854', 'ยาชา', 'กดเกดกดกดเกดเกดเกดเกด', 9, '2023-03-03', '2023-03-04', 3, 50.00, '176956218320230330_213217.jpg', 9, '2023-03-30 14:32:17'),
(045, 17, 9, 'A00112854', 'gfhgfghfjghghjgkhjkhj', 'dfhggfhjgfhjhgjgj', 9, '2023-03-01', '2023-03-01', 1, 1000.00, '193038277320230330_171552.jpg', 49, '2023-03-30 10:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`s_id`, `s_name`) VALUES
(1, 'supplier12'),
(3, 'sdafds'),
(5, '1lp\''),
(6, 'cvbbcvbvc');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE `tbl_type` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`t_id`, `t_name`) VALUES
(17, 'ยารักษาโรค'),
(18, 'ยาใช้ภายนอก'),
(19, '	เครื่องสำอาง /ผลิตภัณฑ์บำรุงผิว'),
(20, '	เวชภัณฑ์ / เครื่องมือแพทย์'),
(21, '	สมุนไพร / แผนโบราณ'),
(22, 'วิตามิน / อาหารเสริม'),
(23, 'ยาอันตราย ยาควบคุมพิเศษ'),
(24, 'อื่นๆ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`mem_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `mem_id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `d_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

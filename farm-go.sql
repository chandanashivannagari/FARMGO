-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 10:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocerry`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin@gmail.com', '$2y$10$rmBnmFdpbtw4DatgAogaf.uAJp.EYQs8koJ.I7ThwspQw7SVYo3ce');

-- --------------------------------------------------------

--
-- Table structure for table `assigned_orders`
--

CREATE TABLE `assigned_orders` (
  `id` int(11) NOT NULL,
  `od_id` int(11) NOT NULL,
  `dv_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assigned_orders`
--

INSERT INTO `assigned_orders` (`id`, `od_id`, `dv_id`) VALUES
(1, 3, 0),
(2, 5, 0),
(3, 15, 0),
(4, 0, 0),
(5, 0, 0),
(6, 0, 0),
(7, 0, 0),
(8, 0, 0),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0),
(12, 0, 0),
(13, 16, 0),
(17, 13, 1),
(18, 12, 1),
(19, 17, 1),
(20, 21, 1),
(21, 19, 1),
(22, 20, 1),
(23, 22, 1),
(24, 23, 1),
(25, 27, 1),
(26, 24, 1),
(27, 25, 1),
(28, 26, 1),
(29, 28, 1),
(30, 30, 1),
(31, 31, 1),
(32, 33, 1),
(33, 32, 1),
(34, 34, 1),
(35, 41, 1),
(36, 42, 1),
(37, 35, 1),
(38, 43, 1),
(39, 44, 1),
(40, 45, 1);

-- --------------------------------------------------------

--
-- Table structure for table `business_type`
--

CREATE TABLE `business_type` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `business_type`
--

INSERT INTO `business_type` (`id`, `type`) VALUES
(7, 'Retailer');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `total` float NOT NULL,
  `is_applied` tinyint(1) NOT NULL,
  `promo` float NOT NULL,
  `is_add_w` tinyint(1) NOT NULL,
  `wl_amt` float NOT NULL,
  `final_amt` float NOT NULL,
  `ship_fee` tinyint(1) NOT NULL,
  `belonging_city` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `u_id`, `total`, `is_applied`, `promo`, `is_add_w`, `wl_amt`, `final_amt`, `ship_fee`, `belonging_city`) VALUES
(8, 1, 0, 0, 0, 0, 0, 30, 30, 3),
(13, 2, 120, 0, 0, 0, 0, 120, 0, 23),
(14, 3, 120, 0, 0, 0, 0, 120, 0, 23),
(19, 13, 52.5, 0, 0, 0, 0, 52.5, 0, 23),
(20, 0, 250, 0, 0, 0, 0, 250, 0, 29),
(21, 16, 450, 0, 0, 0, 0, 450, 0, 0),
(22, 17, 45.32, 0, 0, 0, 0, 85.32, 40, 0),
(23, 18, 350, 0, 0, 0, 0, 350, 0, 0),
(24, 19, 150, 0, 0, 0, 0, 210, 60, 0),
(26, 17, 150, 0, 0, 0, 0, 210, 60, 16),
(28, 17, 219.6, 0, 0, 0, 0, 219.6, 0, 31),
(29, 60, 219.6, 0, 0, 0, 0, 219.6, 0, 0),
(30, 61, 219.6, 0, 0, 0, 0, 219.6, 0, 0),
(31, 62, 219.6, 0, 0, 0, 0, 219.6, 0, 0),
(32, 62, 58.56, 0, 0, 0, 0, 58.56, 0, 30);

-- --------------------------------------------------------

--
-- Table structure for table `cart_detail`
--

CREATE TABLE `cart_detail` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_detail`
--

INSERT INTO `cart_detail` (`id`, `cart_id`, `p_id`, `qty`) VALUES
(5, 13, 21, 1),
(6, 14, 21, 1),
(11, 19, 15, 1),
(12, 20, 3, 1),
(49, 20, 2, 1),
(52, 21, 1, 1),
(53, 21, 2, 1),
(54, 22, 1, 1),
(55, 22, 1, 1),
(56, 23, 1, 1),
(57, 24, 3, 1),
(58, 22, 2, 1),
(60, 26, 3, 1),
(61, 22, 10, 1),
(63, 28, 11, 1),
(64, 29, 11, 1),
(65, 30, 11, 1),
(66, 31, 11, 1),
(67, 32, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `status`) VALUES
(7, 'Red Meat', 1),
(8, 'Processed Meat', 1),
(9, 'Game Meat', 1);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `s_id`, `c_id`, `city_name`) VALUES
(30, 9, 3, 'Texas'),
(31, 10, 3, 'USA Texas');

-- --------------------------------------------------------

--
-- Table structure for table `cnfrm_delivery`
--

CREATE TABLE `cnfrm_delivery` (
  `id` int(11) NOT NULL,
  `od_id` int(11) NOT NULL,
  `dv_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cnfrm_delivery`
--

INSERT INTO `cnfrm_delivery` (`id`, `od_id`, `dv_id`) VALUES
(1, 14, 1),
(2, 3, 1),
(3, 15, 1),
(4, 16, 1),
(5, 10, 1),
(8, 33, 6),
(11, 35, 6);

-- --------------------------------------------------------

--
-- Table structure for table `cnfrm_undelivery`
--

CREATE TABLE `cnfrm_undelivery` (
  `id` int(11) NOT NULL,
  `od_id` int(11) NOT NULL,
  `dv_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commission`
--

CREATE TABLE `commission` (
  `id` int(11) NOT NULL,
  `scat_id` int(11) NOT NULL,
  `com` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `commission`
--

INSERT INTO `commission` (`id`, `scat_id`, `com`) VALUES
(6, 6, 2),
(8, 8, 15),
(9, 9, 30);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `cntry_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `cntry_name`) VALUES
(3, 'United States');

-- --------------------------------------------------------

--
-- Table structure for table `dc`
--

CREATE TABLE `dc` (
  `id` int(11) NOT NULL,
  `dc` float NOT NULL,
  `pc` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dc`
--

INSERT INTO `dc` (`id`, `dc`, `pc`) VALUES
(1, 50, 10),
(6, 12, 1),
(22, 400, 60),
(29, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `id` int(11) NOT NULL,
  `dv_name` varchar(255) NOT NULL,
  `dv_username` varchar(255) NOT NULL,
  `dv_password` text NOT NULL,
  `dv_email` varchar(255) NOT NULL,
  `dv_mobile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`id`, `dv_name`, `dv_username`, `dv_password`, `dv_email`, `dv_mobile`) VALUES
(1, 'Franz', 'franz12', '$2y$10$veJy5qYcHEPoF54YxIINaOx1YI1Bao3kg23MaYN6jyWC79ly0NqkO', 'franz@yahoo.com', '0123456789'),
(2, 'Delivery I', 'isamwel201@gmail.com', '$2y$10$DAfeLzvgZb.bwPv8R9tFNe5R63HXt84Zbf8OuOp9yvue0Smon7NQW', 'isamwel201@gmail.com', '0742877831'),
(3, 'Delivery Gug', 'delivery', '$2y$10$xq/eKU/w/V7/MtqVKNRcFOIYEyn.TySCOFBDD8QVA2t6zZ7yJoCka', 'delveryguy@gmail.com', '0742877831');

-- --------------------------------------------------------

--
-- Table structure for table `dv_time`
--

CREATE TABLE `dv_time` (
  `id` int(11) NOT NULL,
  `from` varchar(100) NOT NULL,
  `tto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dv_time`
--

INSERT INTO `dv_time` (`id`, `from`, `tto`) VALUES
(5, '07:30', '08:30'),
(6, '08:30', '09:30'),
(7, '09:30', '10:30'),
(8, '10:30', '11:30'),
(9, '13:00', '14:00'),
(10, '14:00', '15:00'),
(11, '15:00', '16:00');

-- --------------------------------------------------------

--
-- Table structure for table `filter`
--

CREATE TABLE `filter` (
  `id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `filter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filter`
--

INSERT INTO `filter` (`id`, `subcat_id`, `filter`) VALUES
(6, 8, 'dfg'),
(7, 6, 'VF');

-- --------------------------------------------------------

--
-- Table structure for table `isue`
--

CREATE TABLE `isue` (
  `id` int(11) NOT NULL,
  `oid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `isue`
--

INSERT INTO `isue` (`id`, `oid`) VALUES
(1, 4),
(2, 18);

-- --------------------------------------------------------

--
-- Table structure for table `ofd`
--

CREATE TABLE `ofd` (
  `id` int(11) NOT NULL,
  `od_id` int(11) NOT NULL,
  `dv_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ofd`
--

INSERT INTO `ofd` (`id`, `od_id`, `dv_id`) VALUES
(8, 11, 1),
(10, 31, 0),
(11, 33, 0),
(12, 32, 0),
(13, 34, 0),
(14, 35, 0),
(15, 41, 0),
(16, 44, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `o_id` text NOT NULL,
  `u_id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `dv_date` varchar(255) NOT NULL,
  `dv_time` varchar(255) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `order_status` int(11) NOT NULL,
  `mihpayid` varchar(255) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `payu_status` varchar(255) NOT NULL,
  `total_amt` float NOT NULL,
  `ship_fee_order` float NOT NULL,
  `final_val` float NOT NULL,
  `isnew` int(11) NOT NULL,
  `delivered_by` int(11) NOT NULL,
  `u_cnfrm` int(11) NOT NULL,
  `ptu` int(11) NOT NULL,
  `udvc` int(11) NOT NULL,
  `is_p_app` int(11) NOT NULL,
  `is_w_ap` int(11) NOT NULL,
  `prmo` float NOT NULL,
  `wlmt` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `o_id`, `u_id`, `ad_id`, `dv_date`, `dv_time`, `payment_type`, `payment_status`, `order_status`, `mihpayid`, `txnid`, `payu_status`, `total_amt`, `ship_fee_order`, `final_val`, `isnew`, `delivered_by`, `u_cnfrm`, `ptu`, `udvc`, `is_p_app`, `is_w_ap`, `prmo`, `wlmt`) VALUES
(57, 'ODI691701114185', 62, 11, '5', 'Today', 2, 0, 1, '', 'de23ee9a1e1f6ed8bc15', '', 58.56, 0, 58.56, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 'ODB721701114678', 62, 11, '5', 'Today', 2, 0, 1, '', '9801632dc149947464c9', '', 58.56, 0, 58.56, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 'ODL541701115118', 62, 11, '8', 'Today', 2, 0, 1, '', '653c21c11f16b3fafa61', '', 58.56, 0, 58.56, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(60, 'ODK321701115371', 62, 11, '11', 'Today', 2, 0, 1, '', '404d064662e5becf06b3', '', 58.56, 0, 58.56, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 'ODL451701116691', 62, 11, '8', 'Today', 2, 0, 1, '', '79316cc9b94b63468f9e', '', 58.56, 0, 58.56, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(62, 'ODL251701118008', 62, 11, '5', 'Today', 2, 0, 1, '', 'ed48ccb2d5e0a122c043', '', 58.56, 0, 58.56, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(63, 'ODI401701118928', 62, 11, '11', 'Today', 2, 0, 1, '', '2aed05e61e998a0ee117', '', 58.56, 0, 58.56, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 'ODJ241701119206', 62, 11, '10', 'Today', 2, 0, 1, '', '68e6648b972ea6174cb1', '', 58.56, 0, 58.56, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(65, 'ODJ701701119249', 62, 11, '11', 'Today', 2, 0, 1, '', '125a5da9a1cc09233ecb', '', 58.56, 0, 58.56, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(66, 'ODJ781701119731', 62, 11, '7', 'Today', 2, 0, 1, '', 'a75e0ab3eeb381e0bceb', '', 58.56, 0, 58.56, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(67, 'ODS801701119876', 62, 11, '10', 'Today', 2, 0, 1, '', '89860234df118207bba0', '', 58.56, 0, 58.56, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(68, 'ODN871701120045', 62, 11, '11', 'Today', 2, 0, 1, '', '070f45ccba799d444242', '', 58.56, 0, 58.56, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(69, 'ODN411701120155', 62, 11, '10', 'Today', 2, 0, 1, '', '34a752a03fbd7db0620d', '', 58.56, 0, 58.56, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `hover` int(11) NOT NULL,
  `rcvd` int(11) NOT NULL,
  `delivered_qty` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `oid`, `p_id`, `qty`, `hover`, `rcvd`, `delivered_qty`) VALUES
(16, 2, 1, 1, 0, 0, 0),
(17, 3, 2, 1, 0, 0, 0),
(18, 4, 21, 1, 1, 0, 0),
(19, 5, 15, 1, 0, 0, 0),
(20, 6, 21, 1, 0, 0, 1),
(21, 7, 15, 2, 0, 0, 0),
(22, 8, 1, 1, 0, 0, 0),
(23, 9, 1, 1, 0, 0, 0),
(24, 10, 1, 1, 0, 0, 0),
(25, 11, 2, 1, 0, 0, 0),
(26, 12, 1, 1, 0, 0, 0),
(27, 13, 2, 1, 0, 0, 0),
(28, 14, 2, 1, 0, 0, 0),
(29, 15, 2, 1, 0, 0, 0),
(30, 16, 2, 1, 0, 0, 0),
(31, 17, 2, 1, 0, 0, 0),
(32, 18, 2, 1, 0, 0, 0),
(33, 19, 3, 1, 0, 0, 0),
(34, 20, 3, 1, 0, 0, 0),
(35, 21, 1, 1, 0, 0, 0),
(36, 22, 2, 1, 0, 0, 0),
(37, 23, 2, 1, 0, 0, 0),
(38, 24, 2, 1, 0, 0, 0),
(39, 25, 3, 1, 0, 0, 0),
(40, 26, 3, 1, 0, 0, 0),
(41, 27, 3, 1, 0, 0, 0),
(42, 28, 2, 2, 0, 0, 0),
(43, 29, 2, 1, 0, 0, 0),
(44, 30, 3, 1, 0, 0, 0),
(45, 31, 1, 1, 0, 0, 0),
(46, 32, 3, 1, 0, 0, 0),
(47, 33, 1, 1, 0, 0, 0),
(48, 34, 3, 1, 0, 0, 0),
(49, 35, 2, 1, 0, 0, 0),
(50, 36, 2, 1, 0, 0, 0),
(51, 37, 2, 1, 0, 0, 0),
(52, 38, 2, 1, 0, 0, 0),
(53, 39, 2, 1, 0, 0, 0),
(54, 0, 2, 1, 0, 0, 0),
(55, 0, 2, 1, 0, 0, 0),
(56, 0, 2, 1, 0, 0, 0),
(57, 0, 2, 1, 0, 0, 0),
(58, 40, 2, 1, 0, 0, 0),
(59, 41, 3, 1, 0, 0, 0),
(60, 42, 3, 1, 0, 0, 0),
(61, 43, 3, 2, 0, 0, 0),
(62, 44, 15, 1, 0, 0, 0),
(63, 44, 9, 3, 0, 0, 0),
(64, 45, 1, 1, 1, 0, 0),
(65, 46, 11, 1, 0, 0, 0),
(66, 47, 11, 1, 0, 0, 0),
(67, 48, 11, 1, 0, 0, 0),
(68, 49, 11, 1, 0, 0, 0),
(69, 50, 11, 1, 0, 0, 0),
(70, 51, 11, 1, 0, 0, 0),
(71, 52, 11, 1, 0, 0, 0),
(72, 53, 11, 1, 0, 0, 0),
(73, 54, 11, 1, 0, 0, 0),
(74, 55, 11, 1, 0, 0, 0),
(75, 56, 11, 1, 0, 0, 0),
(76, 57, 17, 1, 0, 0, 0),
(77, 58, 17, 1, 0, 0, 0),
(78, 59, 17, 1, 0, 0, 0),
(79, 60, 17, 1, 0, 0, 0),
(80, 61, 17, 1, 0, 0, 0),
(81, 62, 17, 1, 0, 0, 0),
(82, 63, 17, 1, 0, 0, 0),
(83, 64, 17, 1, 0, 0, 0),
(84, 65, 17, 1, 0, 0, 0),
(85, 66, 17, 1, 0, 0, 0),
(86, 67, 17, 1, 0, 0, 0),
(87, 68, 17, 1, 0, 0, 0),
(88, 69, 17, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `o_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `o_status`) VALUES
(1, 'Placing'),
(2, 'Placed'),
(3, 'Assigned'),
(4, 'Out for delivery'),
(5, 'Delivered'),
(6, 'Undelivered'),
(7, 'Issue');

-- --------------------------------------------------------

--
-- Table structure for table `order_stlmnt`
--

CREATE TABLE `order_stlmnt` (
  `id` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `val` float NOT NULL,
  `sc` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_stlmnt`
--

INSERT INTO `order_stlmnt` (`id`, `oid`, `sid`, `val`, `sc`) VALUES
(1, 1, 2, 18.36, 0),
(2, 1, 1, 13, 0),
(3, 8, 1, 14.9184, 0),
(4, 9, 1, 5.5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_time`
--

CREATE TABLE `order_time` (
  `id` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `o_status` int(11) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_time`
--

INSERT INTO `order_time` (`id`, `oid`, `o_status`, `added_on`) VALUES
(1, 1, 2, '2021-09-24 13:46:08'),
(2, 1, 3, '2021-09-24 13:49:21'),
(3, 1, 4, '2021-09-24 13:50:00'),
(5, 1, 5, '2021-09-24 13:51:08'),
(6, 2, 2, '2021-09-24 14:37:41'),
(7, 4, 2, '2021-09-24 14:40:44'),
(8, 4, 3, '2021-09-24 14:42:33'),
(9, 4, 4, '2021-09-24 14:43:05'),
(10, 4, 5, '2021-09-24 14:43:40'),
(11, 4, 7, '2021-09-24 14:43:40'),
(12, 5, 2, '2021-09-24 17:14:36'),
(20, 5, 3, '2021-09-24 18:00:10'),
(21, 5, 4, '2021-09-24 18:00:15'),
(22, 5, 6, '2021-09-24 18:00:29'),
(23, 6, 2, '2021-09-25 11:15:22'),
(24, 7, 2, '2021-09-25 11:15:22'),
(25, 8, 2, '2021-09-25 11:19:18'),
(26, 8, 3, '2021-09-25 11:21:50'),
(27, 8, 4, '2021-09-25 11:22:28'),
(29, 8, 5, '2021-09-25 11:23:35'),
(30, 9, 2, '2021-09-27 10:30:31'),
(31, 9, 3, '2021-09-27 10:32:32'),
(32, 9, 4, '2021-09-27 10:33:39'),
(33, 9, 5, '2021-09-27 10:34:35'),
(34, 1, 2, '2022-02-07 14:27:03'),
(35, 2, 2, '2022-02-07 14:29:51'),
(36, 3, 2, '2022-02-07 14:32:44'),
(37, 3, 3, '2022-02-07 14:33:05'),
(38, 4, 2, '2022-02-08 05:26:32'),
(39, 5, 2, '2022-02-08 05:38:33'),
(40, 5, 3, '2022-02-08 06:04:32'),
(41, 6, 2, '2022-02-08 06:08:43'),
(42, 6, 3, '2022-02-08 06:13:10'),
(43, 6, 4, '2022-02-08 07:06:49'),
(44, 6, 5, '2022-02-08 07:19:45'),
(45, 7, 2, '2022-02-08 07:22:35'),
(46, 10, 2, '2022-02-09 03:54:26'),
(47, 11, 2, '2022-02-09 03:55:14'),
(48, 12, 2, '2022-02-09 04:40:33'),
(49, 13, 2, '2022-02-09 04:46:51'),
(50, 14, 2, '2022-02-09 04:48:41'),
(51, 15, 2, '2022-02-09 05:01:31'),
(52, 16, 2, '2022-02-09 05:19:01'),
(53, 15, 3, '2022-02-09 06:16:14'),
(54, 0, 3, '2022-02-09 07:22:21'),
(55, 0, 3, '2022-02-09 07:22:22'),
(56, 0, 3, '2022-02-09 07:22:23'),
(57, 0, 3, '2022-02-09 07:22:24'),
(58, 0, 3, '2022-02-09 07:22:32'),
(59, 0, 3, '2022-02-09 07:28:33'),
(60, 0, 3, '2022-02-09 07:33:33'),
(61, 0, 3, '2022-02-09 07:33:42'),
(62, 0, 3, '2022-02-09 07:34:56'),
(63, 16, 3, '2022-02-09 07:48:22'),
(64, 14, 3, '2022-02-09 07:49:01'),
(65, 10, 3, '2022-02-09 07:58:06'),
(66, 11, 3, '2022-02-09 08:00:19'),
(67, 13, 3, '2022-02-09 08:05:14'),
(68, 14, 4, '2022-02-09 08:11:53'),
(69, 12, 3, '2022-02-09 08:30:16'),
(70, 17, 2, '2022-02-09 08:45:45'),
(71, 17, 3, '2022-02-09 08:46:04'),
(72, 3, 4, '2022-02-09 09:14:19'),
(73, 3, 4, '2022-02-09 09:14:23'),
(74, 18, 2, '2022-02-09 09:23:28'),
(75, 14, 5, '2022-02-09 09:41:35'),
(76, 3, 5, '2022-02-09 09:43:03'),
(77, 15, 4, '2022-02-09 09:45:15'),
(78, 15, 5, '2022-02-09 09:45:38'),
(79, 16, 4, '2022-02-09 09:46:42'),
(80, 16, 5, '2022-02-09 09:46:51'),
(81, 10, 4, '2022-02-09 09:47:20'),
(82, 10, 5, '2022-02-09 09:50:59'),
(83, 18, 3, '2022-02-09 09:59:13'),
(84, 18, 4, '2022-02-09 09:59:46'),
(85, 11, 4, '2022-02-09 10:01:12'),
(86, 18, 5, '2022-02-09 11:57:05'),
(87, 18, 7, '2022-02-09 11:58:00'),
(88, 19, 2, '2022-02-10 14:37:18'),
(89, 20, 2, '2022-02-10 14:55:36'),
(90, 21, 2, '2022-02-10 15:14:18'),
(91, 21, 3, '2022-02-10 15:45:30'),
(92, 19, 3, '2022-02-10 15:45:44'),
(93, 20, 3, '2022-02-10 15:46:07'),
(94, 22, 2, '2022-02-10 15:46:53'),
(95, 23, 2, '2022-02-10 15:47:58'),
(96, 24, 2, '2022-02-10 15:50:08'),
(97, 22, 3, '2022-02-10 16:32:49'),
(98, 25, 2, '2022-02-10 17:45:50'),
(99, 26, 2, '2022-02-13 06:26:51'),
(100, 23, 3, '2022-02-13 07:04:40'),
(101, 27, 2, '2022-02-13 07:13:06'),
(102, 27, 3, '2022-02-13 07:15:36'),
(103, 24, 3, '2022-02-13 07:15:48'),
(104, 28, 2, '2022-02-13 07:16:46'),
(105, 25, 3, '2022-02-13 07:24:21'),
(106, 26, 3, '2022-02-13 07:24:30'),
(107, 28, 3, '2022-02-13 07:24:44'),
(108, 29, 2, '2022-02-13 07:27:09'),
(109, 30, 2, '2022-02-13 08:00:47'),
(110, 31, 2, '2022-02-13 08:01:30'),
(111, 32, 2, '2022-02-13 08:12:48'),
(112, 33, 2, '2022-02-13 08:23:16'),
(113, 34, 2, '2022-02-13 08:29:09'),
(114, 35, 2, '2022-02-13 09:05:37'),
(115, 36, 2, '2022-02-13 09:12:38'),
(116, 37, 2, '2022-02-13 09:23:10'),
(117, 38, 2, '2022-02-13 09:25:02'),
(118, 39, 2, '2022-02-13 09:35:17'),
(119, 40, 2, '2022-02-13 09:54:23'),
(120, 30, 3, '2022-02-13 11:35:25'),
(121, 30, 4, '2022-02-13 11:35:40'),
(122, 30, 5, '2022-02-13 11:37:32'),
(123, 31, 3, '2022-02-13 11:59:07'),
(124, 31, 4, '2022-02-13 11:59:16'),
(125, 31, 5, '2022-02-13 11:59:32'),
(126, 33, 3, '2022-02-13 12:12:07'),
(127, 33, 4, '2022-02-13 12:12:18'),
(128, 33, 5, '2022-02-13 12:12:30'),
(129, 32, 3, '2022-02-13 16:24:41'),
(130, 34, 3, '2022-02-13 16:24:52'),
(131, 41, 2, '2022-02-13 16:30:24'),
(132, 41, 3, '2022-02-13 16:55:26'),
(133, 42, 2, '2022-02-13 16:58:25'),
(134, 42, 3, '2022-02-13 17:04:15'),
(135, 32, 4, '2022-02-13 17:19:23'),
(136, 32, 5, '2022-02-13 17:19:30'),
(137, 34, 4, '2022-02-13 17:30:11'),
(138, 34, 5, '2022-02-13 17:33:34'),
(139, 35, 3, '2022-02-14 13:50:01'),
(140, 35, 4, '2022-02-14 13:50:14'),
(141, 35, 5, '2022-02-14 13:50:23'),
(142, 43, 2, '2022-02-16 04:54:33'),
(143, 43, 3, '2022-02-16 04:54:56'),
(144, 41, 4, '2022-02-16 04:55:15'),
(145, 41, 5, '2022-02-16 04:55:40'),
(146, 44, 2, '2022-02-23 04:13:44'),
(147, 44, 3, '2022-02-23 04:17:16'),
(148, 44, 4, '2022-02-23 04:18:26'),
(149, 44, 5, '2022-02-23 04:21:50'),
(150, 45, 2, '2023-11-07 09:37:15'),
(151, 45, 3, '2023-11-09 07:22:26'),
(152, 46, 2, '2023-11-17 21:11:57'),
(153, 0, 2, '2023-11-27 21:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `pin`
--

CREATE TABLE `pin` (
  `id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `cn_id` int(11) NOT NULL,
  `pincode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pin`
--

INSERT INTO `pin` (`id`, `c_id`, `s_id`, `cn_id`, `pincode`) VALUES
(1, 2, 1, 1, '145879'),
(2, 3, 1, 1, '147858'),
(3, 4, 2, 1, '5787568'),
(4, 5, 2, 1, '567863'),
(5, 6, 3, 1, '452577'),
(6, 7, 3, 1, '564678'),
(7, 9, 4, 1, '478587'),
(8, 8, 4, 1, '75678678'),
(25, 29, 8, 3, '1234'),
(26, 30, 9, 3, '1234'),
(27, 31, 10, 3, '50100');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `scat_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  `img4` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `sell_price` float NOT NULL,
  `fa` float NOT NULL,
  `shrt_desc` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `qty` int(11) NOT NULL,
  `disclaimer` varchar(50) NOT NULL,
  `isappp` int(11) NOT NULL,
  `isnew` tinyint(1) NOT NULL,
  `bs` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `added_by` int(11) NOT NULL,
  `belonging_city` int(11) NOT NULL,
  `tax` float NOT NULL,
  `sku` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `cat_id`, `scat_id`, `product_name`, `img1`, `img2`, `img3`, `img4`, `price`, `sell_price`, `fa`, `shrt_desc`, `description`, `qty`, `disclaimer`, `isappp`, `isnew`, `bs`, `status`, `added_by`, `belonging_city`, `tax`, `sku`) VALUES
(17, 9, 8, 'Gazelle meat', '7693006361701108411.jpg', '7872669321701108411.jpg', '7078358721701108411.jpg', '7340916701701108411.jpg', 50, 48, 58.56, 'Freash as always', 'Purchase and get the best taste from fresh meat', 10, 'The product quantity is measured in kilograms (kgs', 1, 0, 0, 1, 36, 31, 20, 'B41XX85S');

-- --------------------------------------------------------

--
-- Table structure for table `product_ad_on`
--

CREATE TABLE `product_ad_on` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_ad_on`
--

INSERT INTO `product_ad_on` (`id`, `pid`, `added_on`) VALUES
(1, 1, '2021-09-15 12:09:35'),
(2, 2, '2021-09-15 12:12:04'),
(3, 3, '2021-09-15 12:57:36'),
(4, 4, '2021-09-15 12:58:41'),
(5, 5, '2021-09-15 13:05:41'),
(6, 6, '2021-09-15 13:07:31'),
(7, 7, '2021-09-15 13:10:54'),
(8, 8, '2021-09-15 13:11:56'),
(9, 1, '2022-02-01 03:54:16'),
(10, 2, '2022-02-01 04:21:29'),
(11, 3, '2022-02-07 14:58:21'),
(12, 4, '2022-02-07 15:22:35'),
(13, 5, '2022-02-07 15:29:33'),
(14, 6, '2022-02-07 15:44:12'),
(15, 7, '2022-02-07 15:46:05'),
(16, 8, '2022-02-07 16:10:39'),
(17, 9, '2022-02-07 18:12:54'),
(18, 10, '2022-02-07 18:14:13'),
(19, 11, '2022-02-07 18:16:38'),
(20, 12, '2022-02-07 18:18:25'),
(21, 13, '2022-02-07 18:20:09'),
(22, 14, '2022-02-08 02:45:35'),
(23, 15, '2022-02-08 02:58:52'),
(24, 16, '2022-02-08 03:42:54'),
(25, 17, '2022-02-08 03:45:26'),
(26, 18, '2022-02-08 03:46:27'),
(27, 19, '2022-02-08 03:58:46'),
(28, 20, '2022-02-08 04:07:33'),
(29, 21, '2022-02-08 04:10:48'),
(30, 1, '2022-02-08 11:53:41'),
(31, 2, '2022-02-08 11:59:56'),
(32, 3, '2022-02-10 14:34:59'),
(33, 4, '2022-02-15 10:23:34'),
(34, 5, '2022-02-16 05:13:11'),
(35, 6, '2022-02-16 05:14:35'),
(36, 7, '2022-02-16 05:15:45'),
(37, 8, '2022-02-16 05:17:26'),
(38, 9, '2022-02-23 04:06:21'),
(39, 10, '2023-11-09 21:50:56'),
(40, 11, '2023-11-17 21:11:22'),
(41, 12, '2023-11-20 18:37:22'),
(42, 13, '2023-11-20 18:40:37'),
(43, 14, '2023-11-20 18:45:00'),
(44, 15, '2023-11-20 18:52:04'),
(45, 16, '2023-11-20 18:57:12'),
(46, 17, '2023-11-27 18:06:50');

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE `promo` (
  `id` int(11) NOT NULL,
  `code` varchar(60) NOT NULL,
  `dis` float NOT NULL,
  `minbal` float NOT NULL,
  `scat` int(11) NOT NULL,
  `adb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `p_filter`
--

CREATE TABLE `p_filter` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `fid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_filter`
--

INSERT INTO `p_filter` (`id`, `pid`, `fid`) VALUES
(5, 4, 5),
(7, 1, 5),
(8, 5, 6),
(9, 6, 5),
(10, 7, 5),
(11, 8, 5),
(12, 10, 7),
(13, 11, 7),
(14, 15, 7),
(15, 16, 7),
(16, 17, 6);

-- --------------------------------------------------------

--
-- Table structure for table `p_reject`
--

CREATE TABLE `p_reject` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `cause` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `p_sfilter`
--

CREATE TABLE `p_sfilter` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `sfid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_sfilter`
--

INSERT INTO `p_sfilter` (`id`, `pid`, `sfid`) VALUES
(6, 4, 5),
(8, 1, 5),
(9, 5, 9),
(10, 6, 5),
(11, 6, 8),
(12, 7, 5),
(13, 7, 8),
(14, 8, 5),
(15, 10, 8),
(16, 11, 8),
(17, 15, 8),
(18, 16, 8);

-- --------------------------------------------------------

--
-- Table structure for table `rejection`
--

CREATE TABLE `rejection` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rejection`
--

INSERT INTO `rejection` (`id`, `s_id`, `reason`) VALUES
(4, 5, 'e'),
(5, 23, 'rfdsas'),
(7, 30, 's');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `tob` int(11) NOT NULL,
  `country` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `pin` int(11) NOT NULL,
  `b_name` varchar(255) NOT NULL,
  `b_crft` varchar(255) NOT NULL,
  `is_gst` tinyint(1) NOT NULL,
  `gst_id` varchar(255) NOT NULL,
  `gst_crft` varchar(255) NOT NULL,
  `plan` tinyint(1) NOT NULL,
  `acc_num` varchar(255) NOT NULL,
  `acc_holder` varchar(255) NOT NULL,
  `ifsc` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `isapp` int(11) NOT NULL,
  `is_new` tinyint(1) NOT NULL,
  `is_cp` tinyint(1) NOT NULL,
  `adhar` varchar(255) NOT NULL,
  `pan` varchar(255) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(1) NOT NULL,
  `otp` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `email`, `password`, `mobile`, `f_name`, `address`, `tob`, `country`, `state`, `city`, `pin`, `b_name`, `b_crft`, `is_gst`, `gst_id`, `gst_crft`, `plan`, `acc_num`, `acc_holder`, `ifsc`, `bank`, `branch`, `isapp`, `is_new`, `is_cp`, `adhar`, `pan`, `Timestamp`, `status`, `otp`) VALUES
(35, 'isamwel.me.ke@gmail.com', '$2y$10$InnJzxSjyLvIQmHoyIDgYuCAe1Tp7WOx0GLBKvhCqBCNtOwX5MBkK', '0703391737', 'Farmer', '0742877831', 7, 3, 9, 30, 26, 'FARMERS CHOICE', '3186186441700512666.jpg', 2, 'No GST', '0', 0, '123456789', 'Seller Account', '1234', 'International Bank', 'Texas', 1, 0, 1, '3131141851700512666.jpg', '6329419691700512666.jpg', '2023-11-27 17:22:42', 1, ''),
(36, 'legrande.sd.designs@gmail.com', '$2y$10$rSL3a.UmgEqY.v1hGTETx.I1lOuFX00oykW.Mr05ltFSXaREtB4aO', '123456789', 'Test Seller', '50100', 7, 3, 10, 31, 27, 'TEST BUSINESS', '1858891881701108255.jpg', 2, 'No GST', '0', 0, '123456789', 'Seller Account', '1234', 'International Bank', 'Texas', 1, 0, 1, '9667285191701108255.jpg', '1222454211701108255.jpg', '2023-11-27 18:04:50', 1, '07e0aac8');

-- --------------------------------------------------------

--
-- Table structure for table `seller_wallet`
--

CREATE TABLE `seller_wallet` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `ballance` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller_wallet`
--

INSERT INTO `seller_wallet` (`id`, `seller_id`, `ballance`) VALUES
(1, 2, 36.72),
(2, 4, 0),
(3, 1, 32.4184),
(4, 3, 0),
(5, 6, 0),
(6, 22, 0),
(7, 25, 0),
(8, 25, 0),
(9, 27, 0),
(10, 29, 0),
(11, 30, 0),
(12, 30, 0),
(13, 30, 0),
(14, 30, 0),
(15, 30, 0),
(16, 30, 0),
(17, 30, 0),
(18, 30, 0),
(19, 30, 0),
(20, 30, 0),
(21, 30, 0),
(22, 31, 0),
(23, 32, 0),
(24, 33, 0),
(25, 34, 0),
(26, 34, 0),
(27, 34, 0),
(28, 35, 0),
(29, 36, 0);

-- --------------------------------------------------------

--
-- Table structure for table `seller_w_msg`
--

CREATE TABLE `seller_w_msg` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `cod` tinyint(1) NOT NULL,
  `msg` text NOT NULL,
  `balance` float NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller_w_msg`
--

INSERT INTO `seller_w_msg` (`id`, `s_id`, `cod`, `msg`, `balance`, `added_on`) VALUES
(1, 2, 1, 'Wallet created', 0, '2021-09-15 11:52:01'),
(2, 4, 1, 'Wallet created', 0, '2021-09-15 11:52:16'),
(3, 1, 1, 'Wallet created', 0, '2021-09-15 11:59:54'),
(4, 3, 1, 'Wallet created', 0, '2021-09-15 12:00:58'),
(9, 4, 1, 'bonus', 1, '2021-09-20 13:53:15'),
(11, 4, 0, 'Charge', 0, '2021-09-20 13:56:03'),
(13, 2, 1, ' For ODU131632157314', 18.36, '2021-09-24 12:00:31'),
(14, 1, 1, ' For ODU131632157314', 20.51, '2021-09-24 12:03:05'),
(15, 2, 1, ' For ODP741632491075', 18.36, '2021-09-24 14:14:59'),
(16, 1, 1, ' For ODP741632491075', 13, '2021-09-24 14:15:08'),
(17, 1, 0, 'Charge', 32.51, '2021-09-24 16:55:52'),
(18, 1, 0, 'Charge', 1, '2021-09-24 16:57:20'),
(19, 1, 0, 'Witdraw Requested', 0, '2021-09-25 06:42:19'),
(20, 1, 0, 'Witdraw approved <br>Txn 23erds3462dser', 20, '2021-09-25 06:39:48'),
(21, 1, 0, 'Witdraw Requested', 0, '2021-09-25 06:47:27'),
(22, 1, 0, 'Witdraw Rejected', 0, '2021-09-25 06:47:41'),
(23, 1, 1, 'Bonus', 0.49, '2021-09-25 06:50:20'),
(24, 1, 1, ' For ODN321632738577', 5.5, '2021-09-27 10:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `c_id`, `state_name`) VALUES
(9, 3, 'North Texas'),
(10, 3, 'Texas Un');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `cat_id`, `subcat`, `status`) VALUES
(6, 7, 'Beef', 1),
(8, 9, 'Gazelle', 1),
(9, 8, 'Sausages', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_filter`
--

CREATE TABLE `sub_filter` (
  `id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  `subfilter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_filter`
--

INSERT INTO `sub_filter` (`id`, `filter_id`, `subfilter`) VALUES
(3, 3, 'sf1'),
(4, 4, 'sf2'),
(6, 3, 'sf4'),
(7, 4, 'sf5'),
(8, 7, 'vff');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `m_vfd` tinyint(1) NOT NULL,
  `e_vfd` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `otp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `mobile`, `name`, `m_vfd`, `e_vfd`, `status`, `otp`) VALUES
(1, 'franz@yahoo.com', '$2y$10$yvo2/bX/ZHZivLBR9XfX3.dZWV3NVa5hs8QKYGfWPtdWkGbYJcBeu', '0912356666', 'Francis', 1, 1, 0, ''),
(13, 'admin@gmail.com', '$2y$10$zc2R5.sOMlWrPlSLXvBkS.RIoRwldGaAApPRlzJLrSWUBhcfncFW.', '546333', 'Franz', 1, 1, 0, '$2y$10$K4BKKqv8RvGwg'),
(14, 'fanz@yahoo.com', '$2y$10$xvdyq03WmVvTkx5hq2FDoOJpY7sO1eA24ygwTRV7NpxibCaX83H2e', '546333', 'Franz', 1, 1, 0, ''),
(15, 'franz1@yahoo.com', '$2y$10$0axo8e778akbGUAr8qh8S.WCaDyjUDk4Oh0GAW9TpM4wA5BsD/IRS', '09156465441', 'Francis Carlo Manlangit', 1, 1, 0, ''),
(16, 'isamwel2b01@gmail.com', '$2y$10$yixUkTvHad9LTj8C8oF7I.nYbvQVjL6Gnx.gcECrhH9f5FNNyyEGC', '0742877831', 'Shem Aduda', 1, 0, 0, '$2y$10$DjCR0g8FwBweN'),
(60, 'legrande.sd.designs@gm5ail.com', '$2y$10$qYzO8.N3YNHtLbu04jgKWe2ekRfbfgT2CXEB1FxuZUwqS3QDco8ei', '0703391737', 'isamwel', 0, 0, 0, ''),
(61, '', '$2y$10$h6TfdBQG0fVgK6XXqk/1EuKsWjnM2Rv0sG3mhCXqfzPjCZbBwcsYa', '0742877831', 'Shem Aduda', 0, 1, 1, ''),
(62, 'legrande.sd.designs@gmail.com', '$2y$10$.UXDSLPsLM0TnT/7phxnOubsDuGyrK2RzQLq0QkEovMAne19QTTmi', '0742877831', 'Shem Aduda', 0, 1, 1, '41f237ae'),
(63, 'isamwel201@gmail.com', '$2y$10$rB7bteGVVoyLCl0vt0coDeC6ePdXaGyq6qsVQfRtNYsGGnyiizxIy', '0742877831', 'Shem Aduda', 0, 0, 1, '759eec11');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `type_ad` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_mobile` varchar(255) NOT NULL,
  `user_city` int(11) NOT NULL,
  `user_add` varchar(255) NOT NULL,
  `user_pin` varchar(255) NOT NULL,
  `user_local` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`id`, `uid`, `type_ad`, `user_name`, `user_mobile`, `user_city`, `user_add`, `user_pin`, `user_local`) VALUES
(4, 1, 'Home', 'Ayondip Jana', '4178589658', 3, 'wert frt fy5 tyty 6fgty', '721122', 'India'),
(5, 1, 'Home', 'Franz', '546333', 29, 'asdasds', '4353', 'Philippines'),
(6, 1, 'Home', 'Franz', '0912345678', 23, 'Nacional P4', '7204', 'Misamis Occidental'),
(7, 13, 'Home', 'Franz', '546333', 23, 'ggg', '7204', 'Misamis Occidental'),
(8, 17, 'Home', 'Shem Aduda', '0712345678', 27, '55', '55', 'Kenya'),
(9, 17, 'Other', 'Shem Aduda', '0712345678', 25, '5', '555', 'Kenya'),
(10, 17, 'Home', 'grande grande', '0742877831', 31, 'fff', '50100', 'Kenya'),
(11, 62, 'Home', 'Test Order', '0742877831', 30, '50100', '50100', 'Kenya');

-- --------------------------------------------------------

--
-- Table structure for table `user_wallet`
--

CREATE TABLE `user_wallet` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ballance` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_wallet`
--

INSERT INTO `user_wallet` (`id`, `user_id`, `ballance`) VALUES
(1, 1, 39.66),
(2, 3, 0),
(3, 1, 0),
(4, 2, 0),
(5, 3, 0),
(6, 4, 0),
(7, 0, 0),
(8, 0, 0),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0),
(12, 0, 0),
(13, 0, 0),
(14, 0, 0),
(15, 13, 0),
(16, 14, 0),
(17, 15, 0),
(18, 16, 0),
(19, 17, 0),
(20, 18, 0),
(21, 19, 0),
(22, 20, 0),
(23, 21, 0),
(24, 22, 0),
(25, 23, 0),
(26, 24, 0),
(27, 25, 0),
(28, 26, 0),
(29, 27, 0),
(30, 28, 0),
(31, 29, 0),
(32, 30, 0),
(33, 31, 0),
(34, 32, 0),
(35, 33, 0),
(36, 34, 0),
(37, 35, 0),
(38, 36, 0),
(39, 37, 0),
(40, 38, 0),
(41, 39, 0),
(42, 40, 0),
(43, 41, 0),
(44, 42, 0),
(45, 43, 0),
(46, 44, 0),
(47, 45, 0),
(48, 46, 0),
(49, 47, 0),
(50, 48, 0),
(51, 49, 0),
(52, 50, 0),
(53, 51, 0),
(54, 52, 0),
(55, 53, 0),
(56, 54, 0),
(57, 55, 0),
(58, 56, 0),
(59, 57, 0),
(60, 58, 0),
(61, 0, 0),
(62, 60, 0),
(63, 61, 0),
(64, 62, 0),
(65, 63, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_w_msg`
--

CREATE TABLE `user_w_msg` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `cod` tinyint(1) NOT NULL,
  `msg` text NOT NULL,
  `balance` float NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_new` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_w_msg`
--

INSERT INTO `user_w_msg` (`id`, `u_id`, `cod`, `msg`, `balance`, `added_on`, `is_new`) VALUES
(1, 1, 1, 'Wallet created', 0, '2021-09-16 11:52:04', 1),
(3, 1, 1, 'Refund for ODT981632503623', 36.66, '2021-09-25 05:33:12', 1),
(7, 1, 0, 'Used in purchase', 36.66, '2021-09-26 18:20:39', 1),
(8, 1, 1, 'get form purchase', 36.66, '2021-09-26 18:24:01', 1),
(9, 1, 0, 'Used in purchase', 36.66, '2021-09-26 18:24:25', 1),
(10, 1, 1, 'get form purchase', 36.66, '2021-09-26 18:24:31', 1),
(11, 1, 0, 'Used in purchase', 37.88, '2021-09-26 18:24:57', 1),
(12, 1, 1, 'get form purchase', 37.88, '2021-09-26 18:25:37', 1),
(13, 1, 0, 'Used in purchase', 37.88, '2021-09-26 18:33:01', 1),
(14, 1, 1, 'get form purchase', 37.88, '2021-09-26 18:33:12', 1),
(15, 3, 1, 'Wallet created', 0, '2021-09-26 19:19:04', 1),
(16, 1, 1, 'Wallet created', 0, '2022-02-02 03:17:31', 1),
(17, 2, 1, 'Wallet created', 0, '2022-02-08 04:30:00', 1),
(18, 3, 1, 'Wallet created', 0, '2022-02-08 04:40:59', 1),
(19, 4, 1, 'Wallet created', 0, '2022-02-08 04:50:30', 1),
(20, 0, 1, 'Wallet created', 0, '2022-02-08 04:57:07', 1),
(21, 0, 1, 'Wallet created', 0, '2022-02-08 04:58:37', 1),
(22, 0, 1, 'Wallet created', 0, '2022-02-08 04:59:42', 1),
(23, 0, 1, 'Wallet created', 0, '2022-02-08 05:07:41', 1),
(24, 0, 1, 'Wallet created', 0, '2022-02-08 05:08:29', 1),
(25, 0, 1, 'Wallet created', 0, '2022-02-08 05:10:11', 1),
(26, 0, 1, 'Wallet created', 0, '2022-02-08 05:11:48', 1),
(27, 0, 1, 'Wallet created', 0, '2022-02-08 05:12:59', 1),
(28, 13, 1, 'Wallet created', 0, '2022-02-08 05:19:26', 1),
(29, 14, 1, 'Wallet created', 0, '2022-02-08 16:21:38', 1),
(30, 15, 1, 'Wallet created', 0, '2022-02-16 05:10:07', 1),
(31, 16, 1, 'Wallet created', 0, '2023-10-30 20:57:13', 1),
(32, 17, 1, 'Wallet created', 0, '2023-10-30 21:17:45', 1),
(33, 18, 1, 'Wallet created', 0, '2023-10-30 23:15:17', 1),
(34, 19, 1, 'Wallet created', 0, '2023-10-30 23:22:43', 1),
(35, 20, 1, 'Wallet created', 0, '2023-11-15 07:04:05', 1),
(36, 21, 1, 'Wallet created', 0, '2023-11-15 07:09:12', 1),
(37, 22, 1, 'Wallet created', 0, '2023-11-15 07:09:24', 1),
(38, 23, 1, 'Wallet created', 0, '2023-11-15 07:09:37', 1),
(39, 24, 1, 'Wallet created', 0, '2023-11-15 07:09:54', 1),
(40, 25, 1, 'Wallet created', 0, '2023-11-15 07:10:02', 1),
(41, 26, 1, 'Wallet created', 0, '2023-11-15 07:10:18', 1),
(42, 27, 1, 'Wallet created', 0, '2023-11-15 07:10:26', 1),
(43, 28, 1, 'Wallet created', 0, '2023-11-15 07:10:38', 1),
(44, 29, 1, 'Wallet created', 0, '2023-11-15 07:10:51', 1),
(45, 30, 1, 'Wallet created', 0, '2023-11-15 07:11:37', 1),
(46, 31, 1, 'Wallet created', 0, '2023-11-15 07:12:05', 1),
(47, 32, 1, 'Wallet created', 0, '2023-11-15 07:12:47', 1),
(48, 33, 1, 'Wallet created', 0, '2023-11-15 07:13:24', 1),
(49, 34, 1, 'Wallet created', 0, '2023-11-15 07:15:19', 1),
(50, 35, 1, 'Wallet created', 0, '2023-11-15 07:15:38', 1),
(51, 36, 1, 'Wallet created', 0, '2023-11-15 07:15:58', 1),
(52, 37, 1, 'Wallet created', 0, '2023-11-15 07:16:56', 1),
(53, 38, 1, 'Wallet created', 0, '2023-11-15 07:17:36', 1),
(54, 39, 1, 'Wallet created', 0, '2023-11-15 07:17:58', 1),
(55, 40, 1, 'Wallet created', 0, '2023-11-15 07:18:20', 1),
(56, 41, 1, 'Wallet created', 0, '2023-11-15 07:18:33', 1),
(57, 42, 1, 'Wallet created', 0, '2023-11-15 07:18:48', 1),
(58, 43, 1, 'Wallet created', 0, '2023-11-15 07:19:03', 1),
(59, 44, 1, 'Wallet created', 0, '2023-11-15 07:19:37', 1),
(60, 45, 1, 'Wallet created', 0, '2023-11-15 07:19:51', 1),
(61, 46, 1, 'Wallet created', 0, '2023-11-15 07:19:59', 1),
(62, 47, 1, 'Wallet created', 0, '2023-11-15 07:20:30', 1),
(63, 48, 1, 'Wallet created', 0, '2023-11-15 07:20:43', 1),
(64, 49, 1, 'Wallet created', 0, '2023-11-15 07:21:14', 1),
(65, 50, 1, 'Wallet created', 0, '2023-11-15 07:21:33', 1),
(66, 51, 1, 'Wallet created', 0, '2023-11-15 07:21:57', 1),
(67, 52, 1, 'Wallet created', 0, '2023-11-15 07:22:30', 1),
(68, 53, 1, 'Wallet created', 0, '2023-11-15 07:22:55', 1),
(69, 54, 1, 'Wallet created', 0, '2023-11-15 07:23:31', 1),
(70, 55, 1, 'Wallet created', 0, '2023-11-15 07:23:55', 1),
(71, 56, 1, 'Wallet created', 0, '2023-11-15 07:24:34', 1),
(72, 57, 1, 'Wallet created', 0, '2023-11-15 07:24:47', 1),
(73, 58, 1, 'Wallet created', 0, '2023-11-15 07:24:57', 1),
(74, 0, 1, 'Wallet created', 0, '2023-11-15 07:25:22', 1),
(75, 60, 1, 'Wallet created', 0, '2023-11-18 12:13:38', 1),
(76, 61, 1, 'Wallet created', 0, '2023-11-19 23:33:12', 1),
(77, 62, 1, 'Wallet created', 0, '2023-11-19 23:36:25', 1),
(78, 63, 1, 'Wallet created', 0, '2023-11-22 09:36:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `witdraw_req`
--

CREATE TABLE `witdraw_req` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `amount_w` float NOT NULL,
  `amount_r` float NOT NULL,
  `isnew` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assigned_orders`
--
ALTER TABLE `assigned_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_type`
--
ALTER TABLE `business_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cnfrm_delivery`
--
ALTER TABLE `cnfrm_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cnfrm_undelivery`
--
ALTER TABLE `cnfrm_undelivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission`
--
ALTER TABLE `commission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc`
--
ALTER TABLE `dc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dv_time`
--
ALTER TABLE `dv_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filter`
--
ALTER TABLE `filter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isue`
--
ALTER TABLE `isue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ofd`
--
ALTER TABLE `ofd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_stlmnt`
--
ALTER TABLE `order_stlmnt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_time`
--
ALTER TABLE `order_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pin`
--
ALTER TABLE `pin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_ad_on`
--
ALTER TABLE `product_ad_on`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_filter`
--
ALTER TABLE `p_filter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_reject`
--
ALTER TABLE `p_reject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_sfilter`
--
ALTER TABLE `p_sfilter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rejection`
--
ALTER TABLE `rejection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_wallet`
--
ALTER TABLE `seller_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_w_msg`
--
ALTER TABLE `seller_w_msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_filter`
--
ALTER TABLE `sub_filter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_wallet`
--
ALTER TABLE `user_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_w_msg`
--
ALTER TABLE `user_w_msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `witdraw_req`
--
ALTER TABLE `witdraw_req`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assigned_orders`
--
ALTER TABLE `assigned_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `business_type`
--
ALTER TABLE `business_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `cart_detail`
--
ALTER TABLE `cart_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `cnfrm_delivery`
--
ALTER TABLE `cnfrm_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cnfrm_undelivery`
--
ALTER TABLE `cnfrm_undelivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commission`
--
ALTER TABLE `commission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dc`
--
ALTER TABLE `dc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dv_time`
--
ALTER TABLE `dv_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `filter`
--
ALTER TABLE `filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `isue`
--
ALTER TABLE `isue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ofd`
--
ALTER TABLE `ofd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_stlmnt`
--
ALTER TABLE `order_stlmnt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_time`
--
ALTER TABLE `order_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `pin`
--
ALTER TABLE `pin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_ad_on`
--
ALTER TABLE `product_ad_on`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p_filter`
--
ALTER TABLE `p_filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `p_reject`
--
ALTER TABLE `p_reject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p_sfilter`
--
ALTER TABLE `p_sfilter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rejection`
--
ALTER TABLE `rejection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `seller_wallet`
--
ALTER TABLE `seller_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `seller_w_msg`
--
ALTER TABLE `seller_w_msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sub_filter`
--
ALTER TABLE `sub_filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_wallet`
--
ALTER TABLE `user_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `user_w_msg`
--
ALTER TABLE `user_w_msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `witdraw_req`
--
ALTER TABLE `witdraw_req`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `witdraw_req`
--
ALTER TABLE `witdraw_req`
  ADD CONSTRAINT `witdraw_req_ibfk_1` FOREIGN KEY (`id`) REFERENCES `seller_wallet` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

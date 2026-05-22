-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09 مايو 2026 الساعة 23:51
-- إصدار الخادم: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brew_bean`
--

-- --------------------------------------------------------

--
-- بنية الجدول `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'admin@brew-bean.com', 'Admin@123');

-- --------------------------------------------------------

--
-- بنية الجدول `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `session_id` varchar(100) NOT NULL DEFAULT '',
  `product_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `cart`
--

INSERT INTO `cart` (`id`, `session_id`, `product_name`, `price`, `quantity`) VALUES
(1, 'hfp3ik79pkva2tv2jns4tnlr0h', '600ml Pour-Over Kettle - Black', 38.00, 1),
(2, 'hfp3ik79pkva2tv2jns4tnlr0h', '02 Coffee Pot Glass Server - 600ml', 38.00, 1);

-- --------------------------------------------------------

--
-- بنية الجدول `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `description`) VALUES
(1, 'Beans', 'Coffee beans products'),
(3, 'Tools', 'Coffee tools and accessories');

-- --------------------------------------------------------

--
-- بنية الجدول `contact_messages`
--

CREATE TABLE `contact_messages` (
  `ID` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Message` text NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `contact_messages`
--

INSERT INTO `contact_messages` (`ID`, `fullName`, `Email`, `Subject`, `Message`, `CreatedAt`) VALUES
(0, 'شصسثيق', 'dfg@gmail.com', 'Product Question', 'asedrt', '2026-05-07 20:40:19');

-- --------------------------------------------------------

--
-- بنية الجدول `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `full_name` varchar(150) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `customers`
--

INSERT INTO `customers` (`customer_id`, `full_name`, `email`, `password`, `phone`, `address`) VALUES
(1, 'A', 'ar@gmail.com', 'Am@123', '0561271780', NULL),
(2, 'Arwa moh Alherz', '2240001315@iau.edu.sa', NULL, '0561271780', 'الدمام العزيزية'),
(3, 'Imarveloo_ cloud74', 'lujaincloud74@gmail.com', NULL, '0577639872', 'taruot'),
(4, 'محمد', 'lujain@gmail.com', NULL, '0577639871', 'الدمام'),
(5, 'Sara', 'Sara@gmail.com', 'Sara@444', '0561271784', NULL),
(6, '', '', NULL, '', 'الدمام'),
(7, 'Ali', 'Ali_moh@gmail.com', 'Ali@8888', '0561271700', NULL),
(8, 'Rawan_Alherz', 'Rawan@gmail.com', 'Rawan@123', '0561000000', NULL),
(9, 'roro', 'roro@gmail.com', 'Roro@1234', '0561009000', NULL),
(14, 'Rere', 'Rere@gmail.com', 'Rere@1234', '0561009700', NULL),
(15, 'alya', 'alya@gmail.com', 'Asl@7823', '0568937469', NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_date` datetime DEFAULT current_timestamp(),
  `total_amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `payment_method` varchar(50) NOT NULL DEFAULT 'cash',
  `notes` text DEFAULT NULL,
  `card_holder` varchar(100) DEFAULT NULL,
  `card_last4` varchar(4) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_email` varchar(150) DEFAULT NULL,
  `customer_phone` varchar(30) DEFAULT NULL,
  `customer_address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `order_date`, `total_amount`, `status`, `payment_method`, `notes`, `card_holder`, `card_last4`, `customer_name`, `customer_email`, `customer_phone`, `customer_address`) VALUES
(1, 3, '2026-05-07 21:39:35', 619.00, 'Delivered', 'card', '', 'LUJAIN', '4332', NULL, NULL, NULL, NULL),
(2, 0, '2026-05-08 22:43:39', 181.00, 'pending', 'cash', '', '', '', NULL, NULL, NULL, NULL),
(3, 0, '2026-05-08 22:50:22', 253.00, 'Delivered', 'cash', '', '', '', NULL, NULL, NULL, NULL),
(4, 0, '2026-05-08 23:40:35', 395.00, 'pending', 'cash', '', '', '', NULL, NULL, NULL, NULL),
(5, 0, '2026-05-08 23:45:50', 38.00, 'Preparing', 'cash', '', '', '', NULL, NULL, NULL, NULL),
(6, 0, '2026-05-08 23:47:51', 56.00, 'Preparing', 'cash', '', '', '', NULL, NULL, NULL, NULL),
(7, 0, '2026-05-09 00:12:37', 144.00, 'Out for Delivery', 'cash', '', '', '', NULL, NULL, NULL, NULL),
(8, 0, '2026-05-09 00:19:28', 111.00, 'Preparing', 'cash', '', '', '', NULL, NULL, NULL, NULL),
(9, 0, '2026-05-09 00:36:49', 66.00, 'pending', 'cash', '', '', '', NULL, NULL, NULL, NULL),
(10, 0, '2026-05-09 00:38:56', 162.00, 'pending', 'cash', '', '', '', NULL, NULL, NULL, NULL),
(11, 0, '2026-05-09 00:46:54', 404.00, 'pending', 'cash', '', '', '', NULL, NULL, NULL, NULL),
(12, 0, '2026-05-09 14:30:37', 142.50, 'pending', 'cash', '', '', '', NULL, NULL, NULL, NULL),
(13, 0, '2026-05-09 14:48:51', 240.75, 'pending', 'cash', '', '', '', 'Sara', 'Sara@gmail.com', '0561271784', 'الدمام'),
(22, 15, '2026-05-09 21:49:53', 38.00, 'pending', 'cash', '', '', '', 'alya', 'alya@gmail.com', '0568937469', 'Ghirnatah'),
(23, 5, '2026-05-09 22:00:16', 76.00, 'pending', 'cash', '', '', '', 'Sara', 'Sara@gmail.com', '0561271784', 'الدمام');

-- --------------------------------------------------------

--
-- بنية الجدول `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `quantity`, `unit_price`, `subtotal`, `product_name`) VALUES
(1, 1, NULL, 1, 29.00, 29.00, 'MHW-3BOMBER Paper Filters - Size 02, 100 Pieces'),
(2, 1, NULL, 2, 43.00, 86.00, 'CHEMEX Half Moon Filters - 3 Cups, 100 Filters'),
(3, 1, NULL, 3, 149.00, 447.00, 'Specialty Coffee Beans Blend 1 kg'),
(4, 1, NULL, 1, 57.00, 57.00, 'Uganda Specialty Coffee – Al Washm Street 250 g'),
(5, 2, NULL, 1, 66.00, 66.00, 'Jabal Tuwaiq Blend Colombia and India 250 g'),
(6, 2, NULL, 1, 69.00, 69.00, 'Qiddiya Blend Guatemala Ethiopia Indonesia 250 g'),
(7, 2, NULL, 1, 46.00, 46.00, 'Jabal Al Qarah Coffee Brazil 250 g'),
(8, 3, NULL, 1, 174.00, 174.00, 'Chemex Coffee Maker - 3 Cups'),
(9, 3, NULL, 1, 79.00, 79.00, 'Al Khayyateen Street Coffee Indonesia 250 g'),
(10, 4, NULL, 1, 199.00, 199.00, 'Brazilian Specialty Coffee Beans Chocolate Anaerobic 1 kg'),
(11, 4, NULL, 1, 38.00, 38.00, '02 Coffee Pot Glass Server - 600ml'),
(12, 4, NULL, 1, 29.00, 29.00, 'MHW-3BOMBER Paper Filters - Size 02, 100 Pieces'),
(13, 4, NULL, 1, 129.00, 129.00, 'V60 Glass Dripper with Black Handle'),
(14, 5, NULL, 1, 38.00, 38.00, '02 Coffee Pot Glass Server - 600ml'),
(15, 6, NULL, 1, 56.00, 56.00, 'Colombia Beans 250g'),
(16, 7, NULL, 1, 55.00, 55.00, 'Guji Coffee Ethiopia 250 g'),
(17, 7, NULL, 1, 89.00, 89.00, 'Colombian Specialty Coffee Beans Anaerobic Watermelon 250 g'),
(18, 8, NULL, 1, 56.00, 56.00, 'Colombia Beans 250g'),
(19, 8, NULL, 1, 55.00, 55.00, 'Guji Coffee Ethiopia 250 g'),
(20, 9, NULL, 1, 42.00, 42.00, '700ml Glass Server'),
(21, 9, NULL, 1, 24.00, 24.00, 'Black Plastic Filter Holder'),
(22, 10, NULL, 1, 38.00, 38.00, '600ml Pour-Over Kettle - Black'),
(23, 10, NULL, 1, 124.00, 124.00, 'MHW-3BOMBER Cold Brew Maker - 600ml'),
(24, 11, NULL, 2, 129.00, 258.00, 'MHW-3BOMBER OVAL Drip Funnel'),
(25, 11, NULL, 2, 73.00, 146.00, 'Stone Dripper 02 - Without Paper Filter'),
(26, 12, NULL, 4, 36.00, 144.00, 'هاف مليون حبوب قهوة اثيوبية 250 جم'),
(27, 12, NULL, 1, 46.00, 46.00, 'Jabal Al Qarah Coffee Brazil 250 g'),
(28, 13, NULL, 2, 70.00, 140.00, 'Souq Al-Taameer Coffee Colombian Beans 250 g'),
(29, 13, NULL, 2, 47.00, 94.00, 'Specialty Coffee Beans Blend 250 g'),
(30, 13, NULL, 3, 29.00, 87.00, 'Al Shumaisi Street Coffee Ethiopia 250 g'),
(31, 14, NULL, 8, 49.00, 392.00, 'Jabal Al Fil Coffee Colombia 250 g');

-- --------------------------------------------------------

--
-- بنية الجدول `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brewing_method` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category_id`, `brewing_method`, `price`, `stock`, `description`, `image`) VALUES
(1, 'Specialty Coffee Beans Blend 250 g', 1, 'Espresso', 47.00, 8, 'High quality specialty coffee product carefully selected for the best brewing experience.', 'Specialty Coffee Beans  Blend 250 g.png'),
(3, 'Colombia Beans 250g', 1, 'Filter & Espresso', 56.00, 17, 'Smooth taste, medium roast. Perfect for filter coffee.', 'colombia_beans_250g.png'),
(4, 'V60 Dripper', 3, 'Filter', 60.00, 12, 'Classic V60 dripper. Great for clean cup and control.', 'V60_Dripper.png'),
(5, 'Timemore Crystal Eye Brewer Set', 3, 'Filter', 88.00, 35, 'Crystal Eye Brewer Set for clean and balanced pour-over coffee brewing.', 'Timemore Crystal Eye Brewer Set.png'),
(6, 'Colombian Specialty Coffee Beans Red Fruit Anaerobic 1 kg', 1, 'Filter', 299.00, 10, 'Specialty coffee beans for filter brewing.', 'Colombian Specialty Coffee Beans  Red Fruit Anaerobic 1 kg.png'),
(7, 'Colombian Specialty Coffee Beans Anaerobic Watermelon 250 g', 1, 'Filter', 89.00, 9, 'Specialty coffee beans for filter brewing.', 'Colombian Specialty Coffee Beans  Anaerobic Watermelon 250 g.png'),
(8, 'Colombian Specialty Coffee Beans Passion Fruit Anaerobic 1 kg', 1, 'Filter', 369.00, 10, 'Specialty coffee beans for filter brewing.', 'Colombian Specialty Coffee Beans  Passion Fruit Anaerobic 1 kg.png'),
(9, 'Colombian Specialty Coffee Beans Cotton Candy Anaerobic 1 kg', 1, 'Filter', 270.00, 10, 'Specialty coffee beans for filter brewing.', 'Colombian Specialty Coffee Beans  Cotton Candy Anaerobic 1 kg.png'),
(10, 'Brazilian Specialty Coffee Beans Chocolate Anaerobic 1 kg', 1, 'Filter', 199.00, 9, 'Specialty coffee beans for filter brewing.', 'Brazilian Specialty Coffee Beans  Chocolate Anaerobic 1 kg.png'),
(11, 'Yemeni Specialty Coffee Beans Haraaz Anaerobic 1 kg', 1, 'Filter', 285.00, 10, 'Specialty coffee beans for filter brewing.', 'Yemeni Specialty Coffee Beans  Haraaz Anaerobic 1 kg.png'),
(12, 'Colombian Specialty Coffee Beans Coconut Lemonade 1 kg', 1, 'Filter', 294.00, 10, 'Specialty coffee beans for filter brewing.', 'Colombian Specialty Coffee Beans  Coconut Lemonade 1 kg.png'),
(13, 'Al Thalathin Street Coffee Colombia 250 g', 1, 'Filter', 73.00, 10, 'Specialty coffee beans for filter brewing.', 'Al Thalathin Street Coffee Colombia 250 g.png'),
(14, 'Souq Hijab Coffee Guatemala 250 g', 1, 'Filter', 69.00, 10, 'Specialty coffee beans for filter brewing.', 'Souq Hijab Coffee Guatemala 250 g.png'),
(15, 'Uganda Specialty Coffee Beans Al Washm Street Coffee 250 g\r\n', 1, 'Filter', 57.00, 10, 'Specialty coffee beans for filter brewing.', 'Uganda Specialty Coffee Beans  Al Washm Street Coffee 250 g.png'),
(16, 'Souq Al-Taameer Coffee Colombian Beans 250 g', 1, 'Filter', 70.00, 8, 'Specialty coffee beans for filter brewing.', 'Souq Al-Taameer Coffee Colombian Beans 250 g.png'),
(17, 'Al Khayyateen Street Coffee Indonesia 250 g', 1, 'Filter', 79.00, 9, 'Specialty coffee beans for filter brewing.', 'Al Khayyateen Street Coffee Indonesia 250 g.png'),
(18, 'Jabal Al-Soudah Coffee Ethiopia 250 g', 1, 'Filter', 49.00, 10, 'Specialty coffee beans for filter brewing.', 'Jabal Al-Soudah Coffee Ethiopia 250 g.png'),
(19, 'Guji Coffee Ethiopia 250 g', 1, 'Filter', 55.00, 8, 'Specialty coffee beans for filter brewing.', 'Guji Coffee Ethiopia 250 g.png'),
(21, 'MHW-3BOMBER OVAL Drip Funnel', 3, 'Filter', 129.00, 8, 'Coffee tools for filter brewing.', 'MHW-3BOMBER OVAL Drip Funnel.png'),
(22, 'V60 Glass Dripper with Black Handle', 3, 'Filter', 129.00, 9, 'Coffee tools for filter brewing.', 'V60 Glass Dripper with Black Handle.png'),
(23, 'Origami-Style Dripper White - 02', 3, 'Filter', 25.00, 10, 'Coffee tools for filter brewing.', 'Origami-Style Dripper White - 02.png'),
(24, 'Filt Hoop-Style Dripper - Version 2', 3, 'Filter', 35.00, 10, 'Coffee tools for filter brewing.', 'Filt Hoop-Style Dripper - Version 2.png'),
(25, 'V60 Transparent Plastic Dripper - Size 02', 3, 'Filter', 23.00, 10, 'Coffee tools for filter brewing.', 'V60 Transparent Plastic Dripper - Size 02.png'),
(26, 'Stone Dripper 02 - Without Paper Filter', 3, 'Filter', 73.00, 8, 'Coffee tools for filter brewing.', 'Stone Dripper 02 - Without Paper Filter.png'),
(27, 'Timemore Crystal Eye Brewer Set - Transparent Black 01', 3, 'Filter', 119.00, 10, 'Coffee tools for filter brewing.', 'Timemore Crystal Eye Brewer Set - Transparent Black 01.png'),
(28, 'MHW-3BOMBER Cold Brew Maker - 600ml', 3, 'Filter', 124.00, 9, 'Coffee tools for filter brewing.', 'MHW-3BOMBER Cold Brew Maker - 600ml.png'),
(29, '02 Coffee Pot Glass Server - 600ml', 3, 'Filter', 38.00, 8, 'Coffee tools for filter brewing.', '02 Coffee Pot Glass Server - 600ml.png'),
(30, '700ml Glass Server', 3, 'Filter', 42.00, 9, 'Coffee tools for filter brewing.', '700ml Glass Server.png'),
(31, 'Timemore Server - Transparent 360ml', 3, 'Filter', 95.00, 10, 'Coffee tools for filter brewing.', 'Timemore Server - Transparent 360ml.png'),
(32, 'Chemex Coffee Maker - 3 Cups', 3, 'Filter', 174.00, 9, 'Coffee tools for filter brewing.', 'Chemex Coffee Maker - 3 Cups.png'),
(33, 'CHEMEX Half Moon Filters - 3 Cups, 100 Filters', 3, 'Filter', 43.00, 10, 'Coffee tools for filter brewing.', 'CHEMEX Half Moon Filters - 3 Cups, 100 Filters.png'),
(34, 'MHW-3BOMBER Paper Filters - Size 02, 100 Pieces', 3, 'Filter', 29.00, 9, 'Coffee tools for filter brewing.', 'MHW-3BOMBER Paper Filters - Size 02, 100 Pieces.png'),
(35, 'MHW-3BOMBER Paper Filters - Size 01, 100 Pieces', 3, 'Filter', 29.00, 10, 'Coffee tools for filter brewing.', 'MHW-3BOMBER Paper Filters - Size 01, 100 Pieces.png'),
(36, 'FITCO FLTR PUR 13*5 Coffee Filters - FPCFF002-500', 3, 'Filter', 179.00, 10, 'Coffee tools for filter brewing.', 'FITCO FLTR PUR 13 5 Coffee Filters - FPCFF002 500.png'),
(37, 'Wooden Filter Holder', 3, 'Filter', 35.00, 10, 'Coffee tools for filter brewing.', 'Wooden Filter Holder.png'),
(38, 'Black Plastic Filter Holder', 3, 'Filter', 24.00, 8, 'Coffee tools for filter brewing.', 'Black Plastic Filter Holder.png'),
(39, 'MHW-3BOMBER Paper Filter Holder', 3, 'Filter', 47.00, 10, 'Coffee tools for filter brewing.', 'MHW-3BOMBER Paper Filter Holder.png'),
(40, '600ml Pour-Over Kettle - Black', 3, 'Filter', 38.00, 0, 'Coffee tools for filter brewing.', '600ml Pour-Over Kettle - Black.png'),
(41, 'Simone coffee portafilter with an ergonomic handle and chrome cover', 3, 'Espresso', 180.00, 10, 'Coffee tools for espresso brewing.', 'Simone coffee portafilter with an ergonomic handle and chrome cover.png'),
(42, 'MHW-3BOMBER 54mm Portafilter for Breville Machines', 3, 'Espresso', 209.00, 10, 'Coffee tools for espresso brewing.', 'MHW-3BOMBER 54mm Portafilter for Breville Machines.png'),
(43, 'Rocket E61 58mm open portafilter', 3, 'Espresso', 170.00, 10, 'Coffee tools for espresso brewing.', 'Rocket E61 58mm open portafilter.png'),
(44, 'Bottomless Portafilter with Olive Wood Handle – E61 Machines (Italian)', 3, 'Espresso', 199.00, 10, 'Coffee tools for espresso brewing.', 'Bottomless Portafilter with Olive Wood Handle – E61 Machines (Italian).png'),
(45, 'FAEMA 21g Open Portafilter with Walnut Wood Handle – E61 Machines', 3, 'Espresso', 169.00, 10, 'Coffee tools for espresso brewing.', 'FAEMA 21g Open Portafilter with Walnut Wood Handle – E61 Machines.png'),
(46, 'MHW-3BOMBER 51mm portafilter for Delonghi', 3, 'Espresso', 220.00, 10, 'Coffee tools for espresso brewing.', 'MHW 3Bomber 51mm portafilter for Delonghi.png'),
(47, 'MHW-3BOMBER Dual Spout Steel Measuring Cup – Matte Black – 100ml', 3, 'Espresso', 44.00, 10, 'Coffee tools for espresso brewing.', 'MHW-3BOMBER Dual Spout Steel Measuring Cup – Matte Black – 100ml.png'),
(48, 'MHW-3BOMBER Steel Measuring Cup – Blue Prosecco Color – 100ml', 3, 'Espresso', 46.00, 10, 'Coffee tools for espresso brewing.', 'MHW-3BOMBER Steel Measuring Cup – Blue Prosecco Color – 100ml.png'),
(49, 'Clump Crusher for Espresso Extraction', 3, 'Espresso', 29.00, 10, 'Coffee tools for espresso brewing.', 'Clump Crusher for Espresso Extraction.png'),
(50, 'MHW-3BOMBER 51mm Fixed Pressure Coffee Tamper', 3, 'Espresso', 190.00, 10, 'Coffee tools for espresso brewing.', 'MHW-3BOMBER 51mm Fixed Pressure Coffee Tamper.png'),
(51, 'Wooden Digital Scale', 3, 'Espresso', 149.00, 10, 'Coffee tools for espresso brewing.', 'Wooden Digital Scale.png'),
(52, '53mm Fixed Pressure Coffee Tamper', 3, 'Espresso', 54.00, 10, 'Coffee tools for espresso brewing.', '53mm Fixed Pressure Coffee Tamper.png'),
(53, 'MHW-3BOMBER BeanBoat Coffee Bean Container – 50g Capacity', 3, 'Espresso', 39.00, 10, 'Coffee tools for espresso brewing.', 'MHW-3BOMBER BeanBoat Coffee Bean Container – 50g Capacity.png'),
(54, 'Espresso Measuring Cup', 3, 'Espresso', 31.00, 10, 'Coffee tools for espresso brewing.', 'Espresso Measuring Cup.png'),
(55, 'MHW-3BOMBER Thermometer – 13cm Size', 3, 'Espresso', 85.00, 10, 'Coffee tools for espresso brewing.', 'MHW-3BOMBER Thermometer – 13cm Size.png'),
(56, 'Round Wooden Coffee Bean Scale Container', 3, 'Espresso', 20.00, 10, 'Coffee tools for espresso brewing.', 'Round Wooden Coffee Bean Scale Container.png'),
(57, 'Artistic Ceramic Coffee Bean Scale Container – Honey Yellow', 3, 'Espresso', 15.00, 10, 'Coffee tools for espresso brewing.', 'Artistic Ceramic Coffee Bean Scale Container – Honey Yellow.png'),
(58, 'MHW-3BOMBER Magnetic High Distribution Coffee Funnel', 3, 'Espresso', 64.00, 10, 'Coffee tools for espresso brewing.', 'MHW-3BOMBER Magnetic High Distribution Coffee Funnel.png'),
(59, 'MHW-3BOMBER Wooden Tamper Stand', 3, 'Espresso', 129.00, 10, 'Coffee tools for espresso brewing.', 'MHW-3BOMBER Wooden Tamper Stand.png'),
(60, 'Mini Touch Scale', 3, 'Espresso', 49.00, 10, 'Coffee tools for espresso brewing.', 'Mini Touch Scale.png'),
(61, 'MHW-BOMBER Paper Coffee Filters - 100 Pieces', 3, 'Espresso', 16.00, 10, 'Coffee tools for espresso brewing.', 'MHW-3BOMBER Paper Coffee Filters – 100 Pieces.png'),
(63, 'Specialty Coffee Beans Blend 1 kg', 1, 'Espresso', 149.00, 10, 'Specialty coffee beans for espresso brewing.', 'Specialty Coffee Beans  Blend 1 kg.png'),
(64, 'Brazilian Specialty Coffee Beans Chocolate Anaerobic 1 kg', 1, 'Espresso', 199.00, 9, 'Specialty coffee beans for espresso brewing.', 'Brazilian Specialty Coffee Beans  Chocolate Anaerobic 1 kg.png'),
(65, 'Uganda Specialty Coffee Beans Al Washm Street Coffee 250 g', 1, 'Espresso', 57.00, 10, 'Specialty coffee beans for espresso brewing.', 'Uganda Specialty Coffee Beans  Al Washm Street Coffee 250 g.png'),
(66, 'Souq Al-Taameer Coffee Colombian Beans 250 g', 1, 'Espresso', 70.00, 8, 'Specialty coffee beans for espresso brewing.', 'Souq Al-Taameer Coffee Colombian Beans 250 g.png'),
(67, 'Al Khayyateen Street Coffee Indonesia 250 g', 1, 'Espresso', 79.00, 9, 'Specialty coffee beans for espresso brewing.', 'Al Khayyateen Street Coffee Indonesia 250 g.png'),
(68, 'Jabal Al-Soudah Coffee Ethiopia 250 g', 1, 'Espresso', 49.00, 10, 'Specialty coffee beans for espresso brewing.', 'Jabal Al-Soudah Coffee Ethiopia 250 g.png'),
(69, 'Al Thumairi Street Coffee Ethiopia 250 g', 1, 'Espresso', 75.00, 10, 'Specialty coffee beans for espresso brewing.', 'Al Thumairi Street Coffee Ethiopia 250 g.png'),
(70, 'Al Maather Street Coffee Ethiopia 250 g', 1, 'Espresso', 75.00, 10, 'Specialty coffee beans for espresso brewing.', 'Al Maather Street Coffee Ethiopia 250 g.png'),
(71, 'Riyadh Expo 2030 Blend El Salvador and Costa Rica 250 g', 1, 'Espresso', 63.00, 10, 'Specialty coffee beans for espresso brewing.', 'Riyadh Expo 2030 Blend El Salvador and Costa Rica 250 g.png'),
(72, 'Jabal Tuwaiq Blend Colombia and India 250 g', 1, 'Espresso', 66.00, 9, 'Specialty coffee beans for espresso brewing.', 'Jabal Tuwaiq Blend Colombia and India 250 g.png'),
(73, 'Souq Al Shamal Coffee Colombia 250 g', 1, 'Espresso', 77.00, 10, 'Specialty coffee beans for espresso brewing.', 'Souq Al Shamal Coffee Colombia 250 g.png'),
(74, 'Al Shumaisi Street Coffee Ethiopia 250 g', 1, 'Espresso', 29.00, 7, 'Specialty coffee beans for espresso brewing.', 'Al Shumaisi Street Coffee Ethiopia 250 g.png'),
(75, 'Qiddiya Blend Guatemala Ethiopia Indonesia 250 g', 1, 'Espresso', 69.00, 9, 'Specialty coffee beans for espresso brewing.', 'Qiddiya Blend Guatemala Ethiopia Indonesia 250 g.png'),
(76, 'Hisat Al Nasla Coffee India 250 g', 1, 'Espresso', 56.00, 10, 'Specialty coffee beans for espresso brewing.', 'Hisat Al Nasla Coffee India 250 g.png'),
(77, 'Jabal Al Fil Coffee Colombia 250 g', 1, 'Espresso', 49.00, 2, 'Specialty coffee beans for espresso brewing.', 'Jabal Al Fil Coffee Colombia 250 g.png'),
(78, 'Abar Hima Coffee Guatemala 250 g', 1, 'Espresso', 49.10, 10, 'Specialty coffee beans for espresso brewing.', 'Abar Hima Coffee Guatemala 250 g.png'),
(79, 'Jabal Al Qarah Coffee Brazil 250 g', 1, 'Espresso', 46.00, 8, 'Specialty coffee beans for espresso brewing.', 'Jabal Al Qarah Coffee Brazil 250 g.png'),
(85, 'هاف مليون حبوب قهوة اثيوبية 250 جم', 1, 'Filter & Espresso', 36.00, 3, '', 'هاف مليون حبوب قهوة اثيوبية 250 جم.png');

-- --------------------------------------------------------

--
-- بنية الجدول `search_history`
--

CREATE TABLE `search_history` (
  `search_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `search_keyword` varchar(255) NOT NULL,
  `search_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `search_history`
--
ALTER TABLE `search_history`
  ADD PRIMARY KEY (`search_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `search_history`
--
ALTER TABLE `search_history`
  MODIFY `search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- قيود الجداول المُلقاة.
--

--
-- قيود الجداول `search_history`
--
ALTER TABLE `search_history`
  ADD CONSTRAINT `search_history_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

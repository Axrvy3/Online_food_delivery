-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2023 at 10:41 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spring_fooddelivery`
--

-- --------------------------------------------------------

--
-- Table structure for table `cardcheck`
--

CREATE TABLE `cardcheck` (
  `id` int(11) NOT NULL,
  `cardtype` varchar(255) NOT NULL,
  `cardno` varchar(255) NOT NULL,
  `expiry` varchar(255) NOT NULL,
  `cvvcode` varchar(255) NOT NULL,
  `valid` int(11) NOT NULL,
  `result` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cardcheck`
--

INSERT INTO `cardcheck` (`id`, `cardtype`, `cardno`, `expiry`, `cvvcode`, `valid`, `result`) VALUES
(1, 'Mastercard', '5425230000000000', '12/04', '481', 0, 'Invalid exp. date'),
(2, 'Mastercard', '2222420000000000', '08/25', '681', 1, 'Success'),
(3, 'Mastercard', '2223000000000000', '09/25', '229', 1, 'Success'),
(4, 'Visa', '4917480000000000', '01/25', '538', 0, 'Failure'),
(5, 'JCB', '3566000000000000', '12/25', '520', 1, 'Success'),
(6, 'Visa', '4263980000000000', '12/25', '667', 1, 'Success'),
(8, 'JCB', '3530110000000000', '03/25', '983', 0, 'Failure'),
(9, 'Cabal1', '6271700000000000', '07/25', '183', 1, 'Success'),
(12, 'Amex', '374245000000000', '09/25', '246', 1, 'Success'),
(13, 'Amex', '378282000000000', '05/25', '814', 0, 'Failure'),
(14, 'China Union Pay', '6250940000000000', '06/25', '803', 1, 'Success'),
(15, 'Cencosud1', '6034930000000000', '06/25', '965', 1, 'Success'),
(16, 'ELO1', '6362970000000000', '08/25', '213', 1, 'Success'),
(17, 'Visa1', '4001920000000000', '09/25', '818', 1, 'Success'),
(18, 'Hipercard1', '6062830000000000', '09/25', '574', 1, 'Success'),
(19, 'Tarjeta Shopping1', '6034880000000000', '09/25', '328', 1, 'Success'),
(20, 'Visa1', '4007700000000000', '10/25', '790', 1, 'Success'),
(21, 'Naranja1', '5895630000000000', '11/25', '869', 1, 'Success'),
(22, 'Nativa1', '5200530000000000', '11/25', '459', 1, 'Success'),
(23, 'Discover', '60115600000000000', '12/25', '642', 1, 'Success'),
(24, 'Discover', '6011000000000000', '12/25', '223', 1, 'Success'),
(25, 'Argencard1', '5011050000000000', '12/25', '773', 1, 'Success');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `cart` longblob NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user`, `cart`, `date_updated`) VALUES
(2, 24, 0xaced000570, '2023-04-25 17:57:02'),
(3, 9, 0xaced0005737200136a6176612e7574696c2e486173687461626c6513bb0f25214ae4b803000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000877080000000b00000006740008737562746f74616c7372000f6a6176612e6c616e672e466c6f6174daedc9a2db3cf0ec02000146000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b0200007870412000007400087368697070696e677371007e000342200000740008746f74616c6773747371007e00033fc34110740008636f6e74656e7473737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a657870000000017704000000017371007e00003f4000000000000877080000000b0000000871007e00027371007e000341200000740005756e6974737371007e00033f80000074000970726f647563746964737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c75657871007e0004000000057400046e616d65740005506173746174000570726963657371007e000341200000740003756f6d7371007e0012000000017400036773747371007e00033fc341107400037174797371007e00033f8000007878740005746f74616c7371007e000342480000740008746f74616c71747971007e001978, '2023-04-26 02:53:28');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `description`, `tag`, `parent`) VALUES
(1, 'Soups', 'Soups', 'soups', 0),
(2, 'Snacks', 'Snacks', 'snacks', 0),
(3, 'Chinese', 'Chinese', 'chinese', 0),
(4, 'South Indian', 'South Indian', 'south-indian', 0),
(5, 'North Indian', 'North Indian', 'north-indian', 0),
(6, 'Beverages', 'Beverages', 'beverages', 0),
(7, 'Burger & Pizzas', 'Burger & Pizzas', 'burger-pizzas', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `creationtime` timestamp NOT NULL DEFAULT current_timestamp(),
  `ipaddress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `message`, `creationtime`, `ipaddress`) VALUES
(1, 'test', 'test@gmail.com', 'sadasdasd', '2023-04-21 16:55:02', '0:0:0:0:0:0:0:1');

-- --------------------------------------------------------

--
-- Table structure for table `deliverablepincodes`
--

CREATE TABLE `deliverablepincodes` (
  `id` int(11) NOT NULL,
  `pincode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deliverablepincodes`
--

INSERT INTO `deliverablepincodes` (`id`, `pincode`) VALUES
(1, '570017');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `email`, `contact`, `status`, `creationdate`, `updationdate`) VALUES
(1, 'test', 'Delivery Boy', 'test@gmail.com', '1111111111', 1, '2023-04-25 22:31:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gstslabs`
--

CREATE TABLE `gstslabs` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `rate` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gstslabs`
--

INSERT INTO `gstslabs` (`id`, `name`, `rate`, `status`, `creationdate`, `updationdate`) VALUES
(1, 'GST@18%', 18, 1, '2023-02-28 05:28:52', NULL),
(2, 'GST@12%', 12, 1, '2023-02-28 05:29:01', NULL),
(4, 'GST@9%', 9, 1, '2023-02-28 05:30:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `orderdate` datetime NOT NULL DEFAULT current_timestamp(),
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `address2` text NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(200) NOT NULL,
  `shippingfee` float NOT NULL,
  `quantity` float DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'NEW_ORDER',
  `subtotal` float DEFAULT NULL,
  `totalprice` float DEFAULT NULL,
  `gst` float NOT NULL,
  `paymentmethod` varchar(255) NOT NULL,
  `packed` datetime DEFAULT NULL,
  `outfordelivery` datetime DEFAULT NULL,
  `delivered` datetime DEFAULT NULL,
  `completed` datetime DEFAULT NULL,
  `cancelled` datetime DEFAULT NULL,
  `cancelreason` text DEFAULT NULL,
  `shippingdetailes` text DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `user`, `orderdate`, `name`, `email`, `contact`, `address`, `address2`, `city`, `state`, `zipcode`, `shippingfee`, `quantity`, `status`, `subtotal`, `totalprice`, `gst`, `paymentmethod`, `packed`, `outfordelivery`, `delivered`, `completed`, `cancelled`, `cancelreason`, `shippingdetailes`, `date_added`, `date_updated`) VALUES
(1, 24, '2023-04-26 10:00:00', 'test1', 'test@gmail.com', '2222222222', 'test123', '', 'mysore', 'KARNATAKA', '570017', 40, 1, 'COMPLETED', 10, 50, 1.52542, 'cashondelivery', '2023-04-26 03:25:00', '2023-04-26 03:26:00', '2023-04-26 03:26:00', '2023-04-26 03:27:00', NULL, NULL, 'test - Mob:1111111111', '2023-04-25 18:38:06', '2023-04-25 18:49:12'),
(2, 24, '2023-04-26 03:31:42', 'test1', 'test@gmail.com', '2222222222', 'test123', '', 'mysore', 'KARNATAKA', '570017', 40, 1, 'CANCELLED', 10, 50, 1.52542, 'cashondelivery', NULL, NULL, NULL, NULL, '2023-06-07 16:49:00', 'test', NULL, '2023-04-25 22:01:42', '2023-04-25 22:03:58'),
(3, 24, '2023-04-26 04:19:02', 'test1', 'test@gmail.com', '2222222222', 'test123', '', 'mysore', 'KARNATAKA', '570017', 40, 1, 'PLACED', 10, 50, 1.52542, 'cardpayment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-25 22:49:02', NULL),
(4, 24, '2023-04-26 08:20:29', 'test1', 'test@gmail.com', '2222222222', 'test123', '', 'mysore', 'KARNATAKA', '570017', 40, 1, 'PLACED', 10, 50, 1.52542, 'cashondelivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-26 02:50:29', NULL),
(5, 24, '2023-06-07 16:55:35', 'test1', 'test@gmail.com', '2222222222', 'test123', '', 'mysore', 'KARNATAKA', '570017', 40, 2, 'CANCELLED', 20, 60, 3.05085, 'cashondelivery', NULL, NULL, NULL, NULL, '2023-06-07 16:58:35', 'test', NULL, '2023-06-07 11:25:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `mainid` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `price` float NOT NULL,
  `quantity` float NOT NULL,
  `totalprice` float NOT NULL,
  `gst` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `mainid`, `product`, `price`, `quantity`, `totalprice`, `gst`) VALUES
(1, 1, 5, 10, 1, 10, 1.52542),
(2, 2, 2, 10, 1, 10, 1.52542),
(3, 3, 6, 10, 1, 10, 1.52542),
(4, 4, 6, 10, 1, 10, 1.52542),
(5, 5, 2, 10, 1, 10, 1.52542),
(6, 5, 5, 10, 1, 10, 1.52542);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `productname` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `saleprice` float NOT NULL,
  `uom` int(11) NOT NULL,
  `units` float NOT NULL,
  `category` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `isfeatured` int(11) NOT NULL DEFAULT 0,
  `gst` int(11) NOT NULL,
  `maxqty` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '1 = Active| 0 = Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productname`, `description`, `price`, `saleprice`, `uom`, `units`, `category`, `quantity`, `isfeatured`, `gst`, `maxqty`, `create_date`, `user`, `status`) VALUES
(1, 'Coffee', 'Coffee', 10, 10, 5, 100, 6, 1, 1, 1, 1, '2023-04-25 15:39:17', 1, 1),
(2, 'Veg-salad', 'Veg-salad', 10, 10, 1, 1, 2, 0, 1, 1, 1, '2023-04-25 15:39:17', 1, 1),
(3, 'Mixed-food', 'Mixed-food', 10, 10, 1, 1, 4, 1, 1, 1, 1, '2023-04-25 15:39:17', 1, 1),
(4, 'Burger', 'Burger', 10, 10, 1, 1, 7, 1, 1, 1, 1, '2023-04-25 15:39:17', 1, 1),
(5, 'Pasta', 'Pasta', 10, 10, 1, 1, 7, 0, 1, 1, 1, '2023-04-25 15:39:17', 1, 1),
(6, 'Protine-food', 'Protine-food', 10, 10, 1, 1, 5, 0, 1, 1, 1, '2023-04-25 15:39:17', 1, 1),
(7, 'Test 1', 'test', 33, 33, 1, 1, 5, 1, 1, 2, 0, '2023-04-25 21:17:57', 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `review` text NOT NULL,
  `product` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `review`, `product`, `rating`, `user`, `create_date`) VALUES
(1, 'its good', 28, 2, 24, '2023-03-30 03:46:28'),
(2, 'test tte', 28, 3, 24, '2023-03-30 04:15:03'),
(3, 'test test', 28, 5, 24, '2023-03-30 04:15:16'),
(4, 'hi hellow', 2, 4, 24, '2023-04-25 20:12:50');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `settingkey` varchar(255) NOT NULL,
  `settingvalue` text NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `settingkey`, `settingvalue`, `update_date`) VALUES
(1, 'shipping_fee', '40', '2023-03-26 17:34:27'),
(2, 'cash_on_delivery', 'yes', '2023-03-26 18:05:11'),
(3, 'card_payment', 'yes', '2023-03-26 18:05:21'),
(4, 'products_per_page', '12', '2023-03-27 16:10:28'),
(5, 'enable_registration', 'yes', '2023-03-27 16:13:18'),
(6, 'free_shipping', 'yes', '2023-04-21 14:25:27'),
(7, 'free_shipping_on', '500', '2023-04-19 12:42:54');

-- --------------------------------------------------------

--
-- Table structure for table `uom`
--

CREATE TABLE `uom` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uom`
--

INSERT INTO `uom` (`id`, `name`, `description`) VALUES
(1, 'pc', ''),
(2, 'gm', ''),
(3, 'Ltr', ''),
(4, 'kg', ''),
(5, 'ml', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'U',
  `status` int(11) NOT NULL DEFAULT 1,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `contact`, `email`, `password`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Tahmid Nishat', '018225973791', 'tahmid.ni7@gmail.com', '$2y$12$BlQKV1nWpTE6U3kuKf7Zve/kEKuRuey6iFliZ61xbeLdVRzmmnEOm', 'USER', 1, '2019-02-28 13:51:33', '2023-03-28 16:49:14'),
(7, 'MR. Admin Bhai', '016833022762', 'admin@gmail.com', '$2y$12$zmX.SQijiuC1oZUCF3ekleOlWnZlFFjfaj6d2XYleydtEbbF8yjPO', 'ADMIN', 1, '2019-04-21 10:54:26', '2023-03-28 16:48:46'),
(9, 'Mr Admin', '018225973792', 'admin@system.com', '$2a$10$t4dIhfvczg/2XI2y/22suOkr.GxTwfQQS3qClTnPYe/xMbYnco7eK', 'ADMIN', 1, '2019-03-09 18:22:46', '2023-03-28 16:49:22'),
(17, 'Tahmid Nishat', '018225973793', 'tahmid@gmail.com', '$2y$12$JappExwfHgkgCjUpMFSV/eUEmxYzA0mW6A6GT4Uz3EElkdZATdNKC', 'ADMIN', 1, '2019-03-12 14:53:55', '2023-03-28 16:49:17'),
(19, 'Mr. User', '016833023276', 'user@system.com', '$2y$12$1kgdGbPXiGux3xO763h5aeYlMpDH1NxAWH.3VZFfGm7TqwIiOZ62S', 'USER', 1, '2019-03-24 13:49:09', '2023-03-28 16:48:52'),
(20, 'Nishat', '01683302276', 'nishat@gmail.com', '$2y$12$5sTv5IJMiabIrgfxGtHgDu0HPSPS/WBSC/Hq4kdzqGtPortbnG8K6', 'USER', 1, '2019-03-12 17:07:17', '2023-03-28 16:49:01'),
(21, 'Abid Mahmud Abrar', '016833022761', 'abid@gmail.com', '$2y$12$opQYQXnoF2iQ3ZZqI8MuUeRRsKsXp691ICM4kyMm0UZE0g7EJe6ia', 'USER', 1, '2019-03-14 04:35:02', '2023-03-28 16:48:43'),
(22, 'Tahmid Nishata', '01822597379', 'mssuser@gmail.com', '$2y$12$F.vH052AXHQTcDDGQOiOue1t.jiTaV0ceMZXjHEreXv5HWrUQZSkm', 'USER', 1, '2019-03-27 15:31:34', '2023-03-26 15:59:45'),
(23, 'Md Samiul Islam', '017815017691', 'mdsami9898@gmail.com', '$2y$12$DNxmJR1xJEwjWiqq7kN.BOMYBssyT1B5HtoUcTpTX8yiBqWFpqQu6', 'USER', 1, '2019-04-11 10:20:13', '2023-03-28 16:49:06'),
(24, 'test1', '2222222222', 'test@gmail.com', '$2a$10$f/tVd2vtpjqusnQ5ghVukO5e0U0yq.ZK5RmCEDy.IAZZrhh3NpNzS', 'USER', 1, '2023-03-26 21:14:02', NULL),
(25, 'test', '1111111123', 'a@b.com', '$2a$10$zcbq0bAwgZK8.7Tu/CkSjuIo8dos50w7rAFEgTID6qDG1AqWIY2xi', 'ADMIN', 1, '2023-03-27 17:27:06', NULL),
(26, 'test', '1111111111', 'test1@gmail.com', '$2a$10$O8vgwAU4Z.aWbwk/xzoe.uz.mnszAsNry8MPXILD7iWZLjhY/Hbja', 'USER', 1, '2023-03-28 06:03:57', NULL),
(27, 'test', '1111111126', 'a1@b.com', '$2a$10$wRyYgp8xXN8gV4g2NwgBP.3pMm8JoDB4Do4vwlQRcXr21fPF1sRyC', 'ADMIN', 1, '2023-03-28 16:51:04', NULL),
(28, 'test1', '1111111122', 'test2@gmail.com', '$2a$10$2zRn1pvRLOOYqIWoi0BkaevXRjMrL2/LpyaAszgN7Hy/acAXK48wm', 'USER', 1, '2023-04-21 14:42:05', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cardcheck`
--
ALTER TABLE `cardcheck`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cardno` (`cardno`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliverablepincodes`
--
ALTER TABLE `deliverablepincodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gstslabs`
--
ALTER TABLE `gstslabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`settingkey`);

--
-- Indexes for table `uom`
--
ALTER TABLE `uom`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cardcheck`
--
ALTER TABLE `cardcheck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deliverablepincodes`
--
ALTER TABLE `deliverablepincodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gstslabs`
--
ALTER TABLE `gstslabs`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `uom`
--
ALTER TABLE `uom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

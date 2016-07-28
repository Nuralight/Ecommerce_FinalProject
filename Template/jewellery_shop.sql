-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 10, 2016 at 06:56 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jewellery_shop`
--


-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`username`, `password`) VALUES
('nurarahman', 'nura'),
('nurarahman', 'nura');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `telephone` int(11) NOT NULL,
  `shipping_address` varchar(100) NOT NULL,
  `email_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_login`
--

CREATE TABLE `customer_login` (
  `email_address` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_login`
--

INSERT INTO `customer_login` (`email_address`, `password`) VALUES
('nuraabd4@gmail.com', 'nura');

-- --------------------------------------------------------

--
-- Table structure for table `jewellery`
--

CREATE TABLE `jewellery` (
  `jewelleryid` int(11) NOT NULL,
  `inventoryid` int(11) NOT NULL,
  `jewellerybrand` varchar(50) CHARACTER SET utf8 NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jewellery`
--

INSERT INTO `jewellery` (`jewelleryid`, `inventoryid`, `jewellerybrand`, `price`) VALUES
(1, 1, 'Bella Vita', 351),
(2, 1, 'Bella Vita', 250),
(3, 1, 'Blanca', 251),
(4, 1, 'Balanca', 500),
(5, 1, 'Bill Skinner', 650),
(6, 1, 'Aurora', 230),
(7, 1, 'Aurora', 500),
(8, 1, 'Aurora', 120),
(9, 1, 'Aurora', 1200),
(10, 1, 'Bella Vita', 1250),
(11, 2, 'Bronzo Italia', 1800),
(12, 2, 'Bronzo Italia', 320),
(13, 2, 'Bronzo Italia', 150),
(14, 2, 'Bronzo Italia', 450),
(15, 2, 'Diamonique', 1200),
(16, 3, 'Honora Pearls', 450),
(17, 3, 'Honora Pearls', 650),
(18, 3, 'Honora Pearls', 350),
(19, 3, 'Lola Rose', 350),
(20, 3, 'Lola Rose', 1350),
(21, 3, 'Lola Rose', 850),
(22, 2, 'Frank Usher', 850),
(23, 2, 'Frank Usher', 550),
(24, 2, 'Frank Usher', 1790),
(25, 2, 'Frank Usher', 230),
(26, 2, 'Frank Usher', 450),
(27, 4, 'Morini', 450),
(28, 4, 'Morini', 650),
(29, 4, 'Morini', 350),
(30, 4, 'Morini', 1350),
(31, 4, 'Morini', 750),
(32, 3, 'Lisa Snowdon', 350),
(33, 3, 'Lisa Snowdon', 650),
(34, 3, 'Lisa Snowdon', 950),
(35, 3, 'Lisa Snowdon', 2950),
(36, 3, 'Lisa Snowdon', 850),
(37, 4, 'Kirks Folly', 650),
(38, 4, 'Kirks Folly', 450),
(39, 4, 'Kirks Folly', 326),
(40, 4, 'Kirks Folly', 826);

-- --------------------------------------------------------

--
-- Table structure for table `jewellery_inventory`
--

CREATE TABLE `jewellery_inventory` (
  `inventoryid` int(11) NOT NULL,
  `date_of_supply` date NOT NULL,
  `number_of_supplies` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jewellery_out_of_stock`
--

CREATE TABLE `jewellery_out_of_stock` (
  `jewelleryid` int(11) NOT NULL,
  `date_of_out_of_stock` date NOT NULL,
  `proposed_date_of_order` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jewellery_type`
--

CREATE TABLE `jewellery_type` (
  `jewelleryid` int(11) NOT NULL,
  `typename` varchar(50) NOT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jewellery_type`
--

INSERT INTO `jewellery_type` (`jewelleryid`, `typename`, `image`) VALUES
(1, 'earrings', 'img/earrings/1.jpg'),
(2, 'earrings', 'img/earrings/2.jpg'),
(3, 'bracellete', 'img/bracellete/1.jpg'),
(4, 'necklace', 'img/necklace/1.jpg'),
(5, 'earrings', 'img/earrings/3.jpg'),
(6, 'ring', 'img/rings/1.jpg'),
(7, 'bracellete', 'img/bracellete/3.jpg'),
(8, 'necklace', 'img/necklace/2.jpg'),
(9, 'necklace', 'img/necklace/3.jpg'),
(10, 'ring', 'img/rings/2.jpg'),
(11, 'ring', 'img/rings/3.jpg'),
(12, 'bracellete', 'img/bracellete/4.jpg'),
(13, 'earrings', 'img/earrings/4.jpg'),
(14, 'earrings', 'img/earrings/5.jpg'),
(15, 'necklace', 'img/necklace/4.jpg'),
(16, 'ring', 'img/rings/4.jpg'),
(17, 'ring', 'img/rings/5.jpg'),
(18, 'bracellete', 'img/bracellete/5.jpg'),
(19, 'bracellete', 'img/bracellete/6.jpg'),
(20, 'necklace', 'img/necklace/5.jpg'),
(21, 'necklace', 'img/necklace/6.jpg'),
(22, 'bracellete', 'img/bracellete/2.jpg'),
(23, 'earrings', 'img/earrings/6.jpg'),
(24, 'ring', 'img/rings/6.jpg'),
(25, 'earrings', 'img/earrings/7.jpg'),
(26, 'bracellete', 'img/bracellete/7.jpg'),
(27, 'bracellete', 'img/bracellete/8.jpg'),
(28, 'necklace', 'img/necklace/7.jpg'),
(29, 'earrings', 'img/earrings/8.jpg'),
(30, 'ring', 'img/rings/7.jpg'),
(31, 'necklace', 'img/necklace/8.jpg'),
(32, 'earrings', 'img/earrings/9.jpg'),
(33, 'bracellete', 'img/bracellete/9.jpg'),
(34, 'ring', 'img/rings/8.jpg'),
(35, 'ring', 'img/rings/9.jpg'),
(36, 'necklace', 'img/necklace/9.jpg'),
(37, 'necklace', 'img/necklace/10.jpg'),
(38, 'bracellete', 'img/bracellete/3.jpg'),
(39, 'earrings', 'img/earrings/10.jpg'),
(40, 'ring', 'img/rings/10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `purchased_item` varchar(10) NOT NULL,
  `quantity_purchased` int(11) NOT NULL,
  `total_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplierid` int(11) NOT NULL,
  `inventoryid` int(11) NOT NULL,
  `supplier` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `validate_users`
--

CREATE TABLE `validate_users` (
  `full_name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `web_address` int(11) NOT NULL,
  `salary` decimal(6,2) NOT NULL,
  `text` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `jewellery`
--
ALTER TABLE `jewellery`
  ADD PRIMARY KEY (`jewelleryid`),
  ADD KEY `FK_jewellery_inventory` (`inventoryid`);

--
-- Indexes for table `jewellery_inventory`
--
ALTER TABLE `jewellery_inventory`
  ADD PRIMARY KEY (`inventoryid`);

--
-- Indexes for table `jewellery_out_of_stock`
--
ALTER TABLE `jewellery_out_of_stock`
  ADD PRIMARY KEY (`jewelleryid`);

--
-- Indexes for table `jewellery_type`
--
ALTER TABLE `jewellery_type`
  ADD PRIMARY KEY (`jewelleryid`),
  ADD KEY `jewelleryid_idx` (`jewelleryid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK_orders` (`customer_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplierid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jewellery`
--
ALTER TABLE `jewellery`
  MODIFY `jewelleryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `jewellery_inventory`
--
ALTER TABLE `jewellery_inventory`
  MODIFY `inventoryid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplierid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `jewellery_type`
--
ALTER TABLE `jewellery_type`
  ADD CONSTRAINT `jewelleryid` FOREIGN KEY (`jewelleryid`) REFERENCES `jewellery` (`jewelleryid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

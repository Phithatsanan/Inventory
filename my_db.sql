-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2023 at 11:48 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryID` int(11) NOT NULL,
  `categoryname` varchar(30) NOT NULL,
  `warehouseID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryID`, `categoryname`, `warehouseID`) VALUES
(1, 'CategoryTestEdit#1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customersID` int(11) NOT NULL,
  `customersname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customersID`, `customersname`) VALUES
(1, 'C'),
(13, 'Customer 1'),
(14, 'Customer 2');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `deliveryID` int(11) NOT NULL,
  `deliverytype` varchar(30) NOT NULL,
  `productID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`deliveryID`, `deliverytype`, `productID`) VALUES
(1, 'Flash#EditTest', 5),
(2, 'Shopee', 5),
(8, 'Flash', 7),
(9, 'Express', 7);

-- --------------------------------------------------------

--
-- Table structure for table `incomingitems`
--

CREATE TABLE `incomingitems` (
  `incomingitemsID` int(11) NOT NULL,
  `incomingorderID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `warehouseID` int(11) NOT NULL,
  `incomingitemquantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `incomingitems`
--

INSERT INTO `incomingitems` (`incomingitemsID`, `incomingorderID`, `productID`, `warehouseID`, `incomingitemquantity`) VALUES
(1, 2, 1, 1, 1),
(2, 3, 1, 1, 5),
(3, 4, 7, 1, 9),
(4, 5, 5, 1, 8),
(5, 6, 1, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `incomingorder`
--

CREATE TABLE `incomingorder` (
  `incomingorderID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `incomingorderdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `incomingorder`
--

INSERT INTO `incomingorder` (`incomingorderID`, `userID`, `incomingorderdate`) VALUES
(2, 1, '0000-00-00 00:00:00'),
(3, 1, '2023-05-29 00:00:00'),
(4, 1, '0000-00-00 00:00:00'),
(5, 1, '0000-00-00 00:00:00'),
(6, 1, '2023-05-30 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `outgoingitems`
--

CREATE TABLE `outgoingitems` (
  `outgoingitemsID` int(11) NOT NULL,
  `outgoingorderID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `outgoingitemquantity` int(11) NOT NULL,
  `warehouseID` int(11) DEFAULT NULL,
  `deliveryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `outgoingitems`
--

INSERT INTO `outgoingitems` (`outgoingitemsID`, `outgoingorderID`, `productID`, `outgoingitemquantity`, `warehouseID`, `deliveryID`) VALUES
(13, 48, 5, 1, 1, 2),
(14, 49, 5, 1, 1, 2),
(15, 54, 5, 1, 1, 2),
(16, 55, 7, 1, 1, 9),
(17, 56, 7, 5, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `outgoingorders`
--

CREATE TABLE `outgoingorders` (
  `outgoingorderID` int(11) NOT NULL,
  `customersID` int(11) NOT NULL,
  `outgoingorderdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `outgoingorders`
--

INSERT INTO `outgoingorders` (`outgoingorderID`, `customersID`, `outgoingorderdate`) VALUES
(1, 1, '2023-05-24 00:00:00'),
(48, 1, '2023-05-29 00:00:00'),
(49, 1, '2023-05-29 00:00:00'),
(50, 13, '2023-05-26 00:00:00'),
(51, 13, '2023-05-26 00:00:00'),
(52, 14, '2023-05-26 00:00:00'),
(53, 14, '2023-05-26 00:00:00'),
(54, 13, '2023-05-29 00:00:00'),
(55, 14, '2023-05-29 00:00:00'),
(56, 13, '2023-05-29 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productID` int(11) NOT NULL,
  `warehouseID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `productname` varchar(30) NOT NULL,
  `productprice` int(11) NOT NULL,
  `productsellingcost` int(11) NOT NULL,
  `productquantity` int(11) NOT NULL,
  `productdescription` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `warehouseID`, `categoryID`, `productname`, `productprice`, `productsellingcost`, `productquantity`, `productdescription`) VALUES
(1, 1, 1, 'Product 1', 120, 300, 65, 'Introducing the \"SmartGadget 3'),
(5, 1, 1, 'Product#TestDelivery', 123, 321, 108, 'TestDelivery'),
(7, 1, 1, 'Product 2', 100, 500, 59, 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `returnID` int(11) NOT NULL,
  `outgoingitemsID` int(11) NOT NULL,
  `warehouseID` int(11) NOT NULL,
  `returndate` datetime NOT NULL,
  `returnquantity` int(11) NOT NULL,
  `returnreasons` varchar(200) NOT NULL,
  `sender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`returnID`, `outgoingitemsID`, `warehouseID`, `returndate`, `returnquantity`, `returnreasons`, `sender`) VALUES
(3, 13, 1, '2023-05-29 00:00:00', 1, 'Broken', 'Customer Sender'),
(4, 13, 1, '0000-00-00 00:00:00', 1, 'Test', 'undefined'),
(5, 17, 1, '2023-05-29 00:00:00', 20, 'Broken', 'undefined');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `warehouseID` int(11) NOT NULL,
  `userfname` varchar(30) NOT NULL,
  `userlname` varchar(30) NOT NULL,
  `useraccount` varchar(30) NOT NULL,
  `userpassword` varchar(30) NOT NULL,
  `useremail` varchar(30) NOT NULL,
  `userphone` varchar(30) NOT NULL,
  `userrole` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `warehouseID`, `userfname`, `userlname`, `useraccount`, `userpassword`, `useremail`, `userphone`, `userrole`) VALUES
(1, 1, 'First27', 'Last2', 'account29', 'password42', 'email22', 'phone83', 'role52');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `warehouseID` int(11) NOT NULL,
  `warehousemanager` varchar(30) NOT NULL,
  `warehousename` varchar(30) NOT NULL,
  `warehouseemail` varchar(30) NOT NULL,
  `warehousenumber` varchar(30) NOT NULL,
  `warehouseaddress` text NOT NULL,
  `warehousestreet` text DEFAULT NULL,
  `warehousestate` text NOT NULL,
  `warehousecity` text NOT NULL,
  `warehousezipcode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`warehouseID`, `warehousemanager`, `warehousename`, `warehouseemail`, `warehousenumber`, `warehouseaddress`, `warehousestreet`, `warehousestate`, `warehousecity`, `warehousezipcode`) VALUES
(1, 'Manager 1', 'Warehouse A', 'abc@hotmail.com', '080-000-0000', '123/4', 'Srinakarin Road.', 'Mung', 'Samutprakarn', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`),
  ADD KEY `fk_constraint_name` (`warehouseID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customersID`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`deliveryID`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `incomingitems`
--
ALTER TABLE `incomingitems`
  ADD PRIMARY KEY (`incomingitemsID`),
  ADD KEY `incomingorderID` (`incomingorderID`),
  ADD KEY `productID` (`productID`),
  ADD KEY `incomingitems_ibfk_3` (`warehouseID`);

--
-- Indexes for table `incomingorder`
--
ALTER TABLE `incomingorder`
  ADD PRIMARY KEY (`incomingorderID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `outgoingitems`
--
ALTER TABLE `outgoingitems`
  ADD PRIMARY KEY (`outgoingitemsID`),
  ADD KEY `outgoingorderID` (`outgoingorderID`),
  ADD KEY `productID` (`productID`),
  ADD KEY `warehouseID` (`warehouseID`),
  ADD KEY `outgoingitems_ibfk_4` (`deliveryID`);

--
-- Indexes for table `outgoingorders`
--
ALTER TABLE `outgoingorders`
  ADD PRIMARY KEY (`outgoingorderID`),
  ADD KEY `customersID` (`customersID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `warehouseID` (`warehouseID`),
  ADD KEY `categoryID` (`categoryID`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`returnID`),
  ADD KEY `warehouseID` (`warehouseID`),
  ADD KEY `returns_ibfk_3` (`outgoingitemsID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `warehouseID` (`warehouseID`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`warehouseID`),
  ADD UNIQUE KEY `warehousestreet` (`warehouseID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customersID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `deliveryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `incomingitems`
--
ALTER TABLE `incomingitems`
  MODIFY `incomingitemsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `incomingorder`
--
ALTER TABLE `incomingorder`
  MODIFY `incomingorderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `outgoingitems`
--
ALTER TABLE `outgoingitems`
  MODIFY `outgoingitemsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `outgoingorders`
--
ALTER TABLE `outgoingorders`
  MODIFY `outgoingorderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `returnID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `warehouseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `fk_constraint_name` FOREIGN KEY (`warehouseID`) REFERENCES `warehouse` (`warehouseID`);

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`) ON DELETE CASCADE;

--
-- Constraints for table `incomingitems`
--
ALTER TABLE `incomingitems`
  ADD CONSTRAINT `incomingitems_ibfk_1` FOREIGN KEY (`incomingorderID`) REFERENCES `incomingorder` (`incomingorderID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `incomingitems_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `incomingitems_ibfk_3` FOREIGN KEY (`warehouseID`) REFERENCES `warehouse` (`warehouseID`) ON DELETE CASCADE,
  ADD CONSTRAINT `incomingitems_ibfk_4` FOREIGN KEY (`warehouseID`) REFERENCES `warehouse` (`warehouseID`) ON DELETE CASCADE;

--
-- Constraints for table `incomingorder`
--
ALTER TABLE `incomingorder`
  ADD CONSTRAINT `incomingorder_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `outgoingitems`
--
ALTER TABLE `outgoingitems`
  ADD CONSTRAINT `outgoingitems_ibfk_1` FOREIGN KEY (`outgoingorderID`) REFERENCES `outgoingorders` (`outgoingorderID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `outgoingitems_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `outgoingitems_ibfk_3` FOREIGN KEY (`warehouseID`) REFERENCES `warehouse` (`warehouseID`),
  ADD CONSTRAINT `outgoingitems_ibfk_4` FOREIGN KEY (`deliveryID`) REFERENCES `delivery` (`deliveryID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `outgoingorders`
--
ALTER TABLE `outgoingorders`
  ADD CONSTRAINT `outgoingorders_ibfk_1` FOREIGN KEY (`customersID`) REFERENCES `customers` (`customersID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`warehouseID`) REFERENCES `warehouse` (`warehouseID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`categoryID`) REFERENCES `category` (`categoryID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `returns`
--
ALTER TABLE `returns`
  ADD CONSTRAINT `returns_ibfk_3` FOREIGN KEY (`outgoingitemsID`) REFERENCES `outgoingitems` (`outgoingitemsID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `returns_ibfk_4` FOREIGN KEY (`warehouseID`) REFERENCES `warehouse` (`warehouseID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`warehouseID`) REFERENCES `warehouse` (`warehouseID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

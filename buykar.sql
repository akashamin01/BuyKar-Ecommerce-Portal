-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2021 at 08:50 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buykar`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Order_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Order_Number` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Discount` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `Size` varchar(255) NOT NULL,
  `Color` varchar(255) NOT NULL,
  `Payment` int(11) NOT NULL,
  `Ship_Date` date NOT NULL,
  `Order_Details` varchar(255) NOT NULL,
  `Bill_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Category_ID` int(11) NOT NULL,
  `CategoryName` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Picture` varbinary(8000) NOT NULL,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Order_Number` int(11) NOT NULL,
  `Payment_ID` int(11) NOT NULL,
  `Order_Date` date NOT NULL,
  `Ship_Date` date NOT NULL,
  `Shipper_ID` int(11) NOT NULL,
  `MSRP` int(11) NOT NULL,
  `Additional_Tax` int(11) NOT NULL,
  `Time_Stamp` date NOT NULL,
  `Transaction_Status` tinyint(1) NOT NULL,
  `Fullfilled` tinyint(1) NOT NULL,
  `Paid` tinyint(1) NOT NULL,
  `Payment_Date` date NOT NULL,
  `Deleted` tinyint(1) NOT NULL,
  `Error_Log` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_ID` int(11) NOT NULL,
  `Payment_Type` varchar(255) NOT NULL,
  `Transaction_Amount` int(11) NOT NULL,
  `Payment_Success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Product_ID` int(11) NOT NULL,
  `Product_Name` varchar(255) NOT NULL,
  `Product_Description` varchar(255) NOT NULL,
  `Supplier_ID` int(11) NOT NULL,
  `Category_ID` int(11) NOT NULL,
  `Quantity_Per_Unit` int(11) NOT NULL,
  `Unit_Price` int(11) NOT NULL,
  `MSRP` int(11) NOT NULL,
  `Available_Size` varchar(255) NOT NULL,
  `Available_Colors` varchar(255) NOT NULL,
  `Size` varchar(255) NOT NULL,
  `Color` varchar(255) NOT NULL,
  `Discount` int(11) NOT NULL,
  `Unit_Weight` int(11) NOT NULL,
  `Unit_In_Stock` int(11) NOT NULL,
  `Units_On_Order` int(11) NOT NULL,
  `Product_Available` int(11) NOT NULL,
  `Discount_Available` int(11) NOT NULL,
  `Current_Orders` int(11) NOT NULL,
  `Product_Picture` varbinary(8000) NOT NULL,
  `Product_Reviews` varchar(8000) NOT NULL,
  `Product_Rankings` int(11) NOT NULL,
  `Product_Notes` varchar(255) NOT NULL,
  `Product_Other_Data` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE `shippers` (
  `Shipper_ID` int(11) NOT NULL,
  `Shipper_Name` varchar(255) NOT NULL,
  `Shipper_Contact` int(11) NOT NULL,
  `Shipper_Details` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `Supplier_ID` int(11) NOT NULL,
  `Company_Name` varchar(255) NOT NULL,
  `Contact_Name` varchar(255) NOT NULL,
  `Supplier_Street` varchar(255) NOT NULL,
  `Supplier_City` varchar(255) NOT NULL,
  `Supplier_State` varchar(255) NOT NULL,
  `Supplier_Postal_Code` int(11) NOT NULL,
  `Supplier_Phone` int(11) NOT NULL,
  `Supplier_Fax` int(11) NOT NULL,
  `Supplier_Email` varchar(255) NOT NULL,
  `Supplier_Website` varchar(255) NOT NULL,
  `Supplier_Payment_Methods` varchar(255) NOT NULL,
  `Discounts_Offered` int(11) NOT NULL,
  `Goods_Category` varchar(255) NOT NULL,
  `Other_Details` varchar(255) NOT NULL,
  `Current_Orders` varchar(255) NOT NULL,
  `Past_Orders` varchar(255) NOT NULL,
  `Supplier_Reviews` varchar(255) NOT NULL,
  `Supplier_Ratings` varchar(255) NOT NULL,
  `Supplier_Other_Details` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_ID` int(11) NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `User_Address_Street_Billing` varchar(255) NOT NULL,
  `User_Address_City_Billing` varchar(255) NOT NULL,
  `User_Address_State_Billing` varchar(255) NOT NULL,
  `User_Address_Country_Billing` varchar(255) NOT NULL,
  `User_Address_Postal_Code_Billing` int(11) NOT NULL,
  `User_Phone_Number` int(11) NOT NULL,
  `User_Email` varchar(255) NOT NULL,
  `User_Password` varchar(255) NOT NULL,
  `User_Credit_Card_Number` int(20) NOT NULL,
  `User_Credit_Card_Exp_Month` int(11) NOT NULL,
  `User_Credit_Card_Exp_Year` int(11) NOT NULL,
  `User_Credit_Card_Cvv` int(11) NOT NULL,
  `User_Address_Street_Shipping` varchar(255) NOT NULL,
  `User_Address_City_Shipping` varchar(255) NOT NULL,
  `User_Address_State_Shipping` varchar(255) NOT NULL,
  `User_Address_Country_Shipping` varchar(255) NOT NULL,
  `User_Address_Postal_Code_Shipping` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`Order_ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Category_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Shipper_ID` (`Shipper_ID`),
  ADD KEY `Payment_ID` (`Payment_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `Supplier_ID` (`Supplier_ID`),
  ADD KEY `Category_ID` (`Category_ID`);

--
-- Indexes for table `shippers`
--
ALTER TABLE `shippers`
  ADD PRIMARY KEY (`Shipper_ID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`Supplier_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `Order_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Category_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Order_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Payment_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Product_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shippers`
--
ALTER TABLE `shippers`
  MODIFY `Shipper_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `Supplier_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`Shipper_ID`) REFERENCES `shippers` (`Shipper_ID`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`Payment_ID`) REFERENCES `payment` (`Payment_ID`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`Supplier_ID`) REFERENCES `suppliers` (`Supplier_ID`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`Category_ID`) REFERENCES `category` (`Category_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

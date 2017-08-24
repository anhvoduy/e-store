-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: ndemo
-- ------------------------------------------------------
-- Server version	5.7.15-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP SCHEMA IF EXISTS `estore` ;
CREATE SCHEMA `estore` ;

USE `estore`;

--
-- Table structure for table `Customer`
--
DROP TABLE IF EXISTS `Customer`;
CREATE TABLE `Customer` (
  `CustomerId` INT(11) NOT NULL AUTO_INCREMENT,
  `CustomerKey` VARCHAR(50) NOT NULL,
  `CustomerName` VARCHAR(50) NOT NULL,
  `Description` VARCHAR(250) DEFAULT NULL,
  `Email` VARCHAR(50) DEFAULT NULL,
  `Mobile` VARCHAR(50) DEFAULT NULL,
  `Tel` VARCHAR(50) DEFAULT NULL,
  `Fax` VARCHAR(50) DEFAULT NULL,
  `Title` VARCHAR(50) DEFAULT NULL,
  `Address` VARCHAR(250) DEFAULT NULL,
  `Created` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Updated` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) NOT NULL,
  `Editor` VARCHAR(50) NOT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`CustomerId`),
  UNIQUE KEY `CustomerId_UNIQUE` (`CustomerId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;	

--
-- Sample data for table `Customer`
--
INSERT INTO `Customer` (`CustomerKey`,`CustomerName`,`Author`,`Editor`) VALUES (uuid(),'The Bank of Tokyo and Mitsuibishi','SYSTEM','SYSTEM');
INSERT INTO `Customer` (`CustomerKey`,`CustomerName`,`Author`,`Editor`) VALUES (uuid(),'REE Corporation Group','SYSTEM','SYSTEM');
INSERT INTO `Customer` (`CustomerKey`,`CustomerName`,`Author`,`Editor`) VALUES (uuid(),'FPT Information System','SYSTEM','SYSTEM');
INSERT INTO `Customer` (`CustomerKey`,`CustomerName`,`Author`,`Editor`) VALUES (uuid(),'HAG Corporation Group','SYSTEM','SYSTEM');
INSERT INTO `Customer` (`CustomerKey`,`CustomerName`,`Author`,`Editor`) VALUES (uuid(),'SMC Steel Company','SYSTEM','SYSTEM');
INSERT INTO `Customer` (`CustomerKey`,`CustomerName`,`Author`,`Editor`) VALUES (uuid(),'Marubeni Itochu Steel Vietnam Co. Ltd.','SYSTEM','SYSTEM');

--
-- Table structure for table `Truck`
--
DROP TABLE IF EXISTS `Truck`;
CREATE TABLE `Truck` (
  `TruckId` INT(11) NOT NULL AUTO_INCREMENT,
  `TruckKey` VARCHAR(50) NOT NULL,
  `TruckName` VARCHAR(50) NOT NULL,
  `TruckNumber` VARCHAR(50) NOT NULL,
  `Description` VARCHAR(250) DEFAULT NULL,
  `Created` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Updated` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) NOT NULL,
  `Editor` VARCHAR(50) NOT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`TruckId`),
  UNIQUE KEY `TruckId_UNIQUE` (`TruckId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - Land Cruiser', 'T-LAND-123456789', 'Land Cruiser 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - Mercedez', 'T-MERC-123456789', 'Mercedez 2017', 'SYSTEM', 'SYSTEM');

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - BMW', 'T-BMW-852741963', 'BMW 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - MAX', 'T-MAX-852741963', 'Kawasaki 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO `Truck` (`TruckKey`, `TruckName`, `TruckNumber`, `Description`, `Author`, `Editor`) 
VALUES (uuid(), 'TRUCK - EVEREST', 'T-EVEREST-852741963', 'Everest 2018', 'SYSTEM', 'SYSTEM');

--
-- Table structure for table `Account`
--
DROP TABLE IF EXISTS `Account`;
CREATE TABLE `Account` (
  `AccountId` INT(11) NOT NULL AUTO_INCREMENT,
  `AccountKey` VARCHAR(50) NOT NULL,
  `AccountNo` VARCHAR(20) NOT NULL,
  `AccountName` VARCHAR(100) NULL,
  `Description` VARCHAR(250) DEFAULT NULL,
  `Created` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Updated` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) NOT NULL,
  `Editor` VARCHAR(50) NOT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`AccountId`),
  UNIQUE KEY `AccountId_UNIQUE` (`AccountId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Sample data for table `Account`
--
INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`Author`,`Editor`) VALUES (uuid(),'111','Cash','SYSTEM','SYSTEM');
INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`Author`,`Editor`) VALUES (uuid(),'112','Cash in bank','SYSTEM','SYSTEM');
INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`Author`,`Editor`) VALUES (uuid(),'113','Cash transfer','SYSTEM','SYSTEM');
INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`Author`,`Editor`) VALUES (uuid(),'156','Goods','SYSTEM','SYSTEM');
INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`Author`,`Editor`) VALUES (uuid(),'131','Account Receivable','SYSTEM','SYSTEM');
INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`Author`,`Editor`) VALUES (uuid(),'331','Account Payment','SYSTEM','SYSTEM');
INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`Author`,`Editor`) VALUES (uuid(),'511','Revenue','SYSTEM','SYSTEM');
INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`Author`,`Editor`) VALUES (uuid(),'632','Cost of Goods Sold','SYSTEM','SYSTEM');
INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`Author`,`Editor`) VALUES (uuid(),'642','Selling Cost','SYSTEM','SYSTEM');
INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`Author`,`Editor`) VALUES (uuid(),'711','711','SYSTEM','SYSTEM');
INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`Author`,`Editor`) VALUES (uuid(),'811','811','SYSTEM','SYSTEM');
INSERT INTO `Account` (`AccountKey`,`AccountNo`,`AccountName`,`Author`,`Editor`) VALUES (uuid(),'911','911','SYSTEM','SYSTEM');

--
-- Table structure for table `Transaction`
--
DROP TABLE IF EXISTS `Transaction`;
CREATE TABLE `Transaction` (
  `TransactionId` INT(11) NOT NULL AUTO_INCREMENT,  
  `TransactionKey` VARCHAR(50) NOT NULL,
  `TransactionDate` DATETIME DEFAULT CURRENT_TIMESTAMP, -- ngay hach toan
  `TransactionType` VARCHAR(20) NOT NULL,
  `Description` VARCHAR(250) DEFAULT NULL,
  `DebitAcctNo` VARCHAR(20) NOT NULL,
  `CreditAcctNo` VARCHAR(20) NOT NULL,
  `Currency` VARCHAR(3) NOT NULL,
  `TotalAmount` DECIMAL(12,4) NOT NULL DEFAULT 0,
  `CustomerId` INT(11) DEFAULT 0,
  `CustomerName` VARCHAR(50) DEFAULT NULL,
  `InvoiceNo` VARCHAR(20) DEFAULT NULL,
  `InvoiceDate` DATETIME DEFAULT CURRENT_TIMESTAMP, -- ngay hoa don
  `InvoiceDesc` VARCHAR(250) DEFAULT NULL,  
  `Created` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Updated` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) NOT NULL,
  `Editor` VARCHAR(50) NOT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`TransactionId`),
  UNIQUE KEY `TransactionId_UNIQUE` (`TransactionId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Sample data for table `Transaction`
--
INSERT INTO `Transaction`(TransactionKey, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'2016-11-07','CASHIN','Cash In ', '111', '642', 'VND', 5000000, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'2016-11-07','CASHIN','Cash In ', '111', '642', 'VND', 6000000, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'2016-11-07','CASHIN','Cash In ', '111', '531', 'USD', 800, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'2016-11-07','CASHOUT','Cash Out', '111', '642', 'VND', 1000000, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'2016-11-07','CASHOUT','Cash Out', '111', '642', 'VND', 2000000, 'SYSTEM', 'SYSTEM');

INSERT INTO `Transaction`(TransactionKey, TransactionDate, TransactionType, Description, DebitAcctNo, CreditAcctNo, Currency, TotalAmount, Author, Editor)
VALUES (uuid(),'2016-11-07','CASHOUT','Cash Out', '111', '532', 'USD', 500, 'SYSTEM', 'SYSTEM');

--
-- Table structure for table `TransactionDetail`
--
DROP TABLE IF EXISTS `TransactionDetail`;
CREATE TABLE `TransactionDetail` (
  `TransactionDetailId` INT(11) NOT NULL AUTO_INCREMENT,
  `TransactionId` INT(11) NOT NULL,
  `ProductId` INT(11) NOT NULL DEFAULT 0,  
  `ProductName` VARCHAR(50) DEFAULT NULL,
  `Description` VARCHAR(250) DEFAULT NULL,
  `Currency` VARCHAR(3) NOT NULL,
  `Quantity` INT(11) NOT NULL DEFAULT 0,
  `Price` DECIMAL(12,4) NOT NULL DEFAULT 0,
  `Amount` DECIMAL(12,4) NOT NULL DEFAULT 0,  
  `Created` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Updated` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) NOT NULL,
  `Editor` VARCHAR(50) NOT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`TransactionDetailId`),
  UNIQUE KEY `TransactionDetailId_UNIQUE` (`TransactionDetailId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Sample data for table `TransactionDetail`
--
INSERT INTO `TransactionDetail`(TransactionId, ProductId, ProductName, Description, Currency, Quantity, Price, Amount, Author, Editor)
VALUES (1,1,'Product 1','Description 1', 'USD', 120, 30, 3600, 'SYSTEM', 'SYSTEM');

INSERT INTO `TransactionDetail`(TransactionId, ProductId, ProductName, Description, Currency, Quantity, Price, Amount, Author, Editor)
VALUES (1,2,'Product 2','Description 1', 'USD', 120, 30, 3600, 'SYSTEM', 'SYSTEM');

INSERT INTO `TransactionDetail`(TransactionId, ProductId, ProductName, Description, Currency, Quantity, Price, Amount, Author, Editor)
VALUES (2,1,'Product 1','Description 1', 'USD', 120, 30, 3600, 'SYSTEM', 'SYSTEM');

INSERT INTO `TransactionDetail`(TransactionId, ProductId, ProductName, Description, Currency, Quantity, Price, Amount, Author, Editor)
VALUES (2,2,'Product 1','Description 1', 'USD', 120, 30, 3600, 'SYSTEM', 'SYSTEM');

INSERT INTO `TransactionDetail`(TransactionId, ProductId, ProductName, Description, Currency, Quantity, Price, Amount, Author, Editor)
VALUES (2,3,'Product 1','Description 1', 'USD', 120, 30, 3600, 'SYSTEM', 'SYSTEM');


--
-- Table structure for table `Inventory`
--
DROP TABLE IF EXISTS `Inventory`;
CREATE TABLE `Inventory` (
  `InventoryId` INT(11) NOT NULL AUTO_INCREMENT,
  `StockId` INT(11) DEFAULT NULL,  
  `ProductId` INT(11) DEFAULT NULL,  
  `ProductName` VARCHAR(50) DEFAULT NULL,  
  `QtyInput` INT(11) NOT NULL DEFAULT 0,
  `QtyOutput` INT(11) NOT NULL DEFAULT 0,
  `QtyBalance` INT(11) NOT NULL DEFAULT 0, -- redundant
  `IsPerpetual` TINYINT(1) DEFAULT 0, -- redundant  
  `Price` DECIMAL(12,4) NOT NULL DEFAULT 0,
  `TotalAmount` DECIMAL(12,4) NOT NULL DEFAULT 0,
  `Created` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Updated` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) NOT NULL,
  `Editor` VARCHAR(50) NOT NULL,  
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`InventoryId`),
  UNIQUE KEY `InventoryId_UNIQUE` (`InventoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Sample data for table `Inventory`
--
INSERT INTO `Inventory`(StockId, ProductId, ProductName, QtyInput, QtyOutput, QtyBalance, IsPerpetual, Price, TotalAmount, Author, Editor)
VALUES (1,1,'Product 1', 10, 0, 0, 0, 125, 1250, 'SYSTEM', 'SYSTEM');

INSERT INTO `Inventory`(StockId, ProductId, ProductName, QtyInput, QtyOutput, QtyBalance, IsPerpetual, Price, TotalAmount, Author, Editor)
VALUES (1,2,'Product 1', 20, 0, 0, 0, 125, 1250, 'SYSTEM', 'SYSTEM');

INSERT INTO `Inventory`(StockId, ProductId, ProductName, QtyInput, QtyOutput, QtyBalance, IsPerpetual, Price, TotalAmount, Author, Editor)
VALUES (1,3,'Product 1', 50, 0, 0, 0, 125, 1250, 'SYSTEM', 'SYSTEM');

INSERT INTO `Inventory`(StockId, ProductId, ProductName, QtyInput, QtyOutput, QtyBalance, IsPerpetual, Price, TotalAmount, Author, Editor)
VALUES (2,1,'Product 1', 0, 20, 0, 0, 125, 1250, 'SYSTEM', 'SYSTEM');

INSERT INTO `Inventory`(StockId, ProductId, ProductName, QtyInput, QtyOutput, QtyBalance, IsPerpetual, Price, TotalAmount, Author, Editor)
VALUES (2,2,'Product 1', 0, 50, 0, 0, 125, 1250, 'SYSTEM', 'SYSTEM');

INSERT INTO `Inventory`(StockId, ProductId, ProductName, QtyInput, QtyOutput, QtyBalance, IsPerpetual, Price, TotalAmount, Author, Editor)
VALUES (2,3,'Product 1', 60, 0, 0, 0, 125, 1250, 'SYSTEM', 'SYSTEM');

--
-- Table structure for table `Stock`
--
DROP TABLE IF EXISTS `Stock`;
CREATE TABLE `Stock` (
  `StockId` INT(11) NOT NULL AUTO_INCREMENT,
  `StockKey` VARCHAR(50) NOT NULL,
  `StockDate` DATETIME NOT NULL,
  `StockType` VARCHAR(20) NOT NULL,
  `Description` VARCHAR(250) DEFAULT NULL,
  `Currency` VARCHAR(3) NOT NULL,
  `TotalAmount` DECIMAL(12,4) NOT NULL DEFAULT 0,
  `CustomerId` INT(11) DEFAULT 0,
  `CustomerName` VARCHAR(50) DEFAULT NULL,
  `InvoiceNo` VARCHAR(20) DEFAULT NULL,
  `InvoiceDate` DATETIME DEFAULT NULL,
  `InvoiceDesc` VARCHAR(250) DEFAULT NULL,  
  `Created` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Updated` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) NOT NULL,
  `Editor` VARCHAR(50) NOT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`StockId`),
  UNIQUE KEY `StockId_UNIQUE` (`StockId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Sample data for table `Stock`
--
INSERT INTO `Stock` (`StockKey`, `StockDate`, `StockType`, `Description`, `Currency`, `TotalAmount`, `CustomerId`, `CustomerName`, `Author`, `Editor`) 
VALUES (uuid(), '2016-12-01', 'STOCKIN', 'Stock In', 'VND', '60000', '1', 'CUSTOMER', 'SYSTEM', 'SYSTEM');

INSERT INTO `Stock` (`StockKey`, `StockDate`, `StockType`, `Description`, `Currency`, `TotalAmount`, `CustomerId`, `CustomerName`, `Author`, `Editor`) 
VALUES (uuid(), '2016-12-02', 'STOCKIN', 'Stock In', 'VND', '60000', '2', 'CUSTOMER', 'SYSTEM', 'SYSTEM');

INSERT INTO `Stock` (`StockKey`, `StockDate`, `StockType`, `Description`, `Currency`, `TotalAmount`, `CustomerId`, `CustomerName`, `Author`, `Editor`) 
VALUES (uuid(), '2016-12-03', 'STOCKIN', 'Stock In', 'VND', '60000', '3', 'CUSTOMER', 'SYSTEM', 'SYSTEM');

INSERT INTO `Stock` (`StockKey`, `StockDate`, `StockType`, `Description`, `Currency`, `TotalAmount`, `CustomerId`, `CustomerName`, `Author`, `Editor`) 
VALUES (uuid(), '2016-12-21', 'STOCKOUT', 'Stock out', 'VND', '30000', '1', 'CUSTOMER', 'SYSTEM', 'SYSTEM');

INSERT INTO `Stock` (`StockKey`, `StockDate`, `StockType`, `Description`, `Currency`, `TotalAmount`, `CustomerId`, `CustomerName`, `Author`, `Editor`) 
VALUES (uuid(), '2016-12-22', 'STOCKOUT', 'Stock out', 'VND', '30000', '2', 'CUSTOMER', 'SYSTEM', 'SYSTEM');

INSERT INTO `Stock` (`StockKey`, `StockDate`, `StockType`, `Description`, `Currency`, `TotalAmount`, `CustomerId`, `CustomerName`, `Author`, `Editor`) 
VALUES (uuid(), '2016-12-12', 'STOCKOUT', 'Stock out', 'USD', '150', '2', 'CUSTOMER', 'SYSTEM', 'SYSTEM');


--
-- Table structure for table `StockDetail`
--
DROP TABLE IF EXISTS `StockDetail`;
CREATE TABLE `StockDetail` (
  `StockDetailId` INT(11) NOT NULL AUTO_INCREMENT,
  `StockId` INT(11) NOT NULL DEFAULT 0,
  `ProductId` INT(11) NOT NULL DEFAULT 0,  
  `ProductName` VARCHAR(50) DEFAULT NULL,
  `Description` VARCHAR(250) DEFAULT NULL,  
  `Quantity` INT(11) NOT NULL DEFAULT 0,
  `Price` DECIMAL(12,4) NOT NULL DEFAULT 0,
  `Amount` DECIMAL(12,4) NOT NULL DEFAULT 0,
  `Created` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Updated` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) NOT NULL,
  `Editor` VARCHAR(50) NOT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`StockDetailId`),
  UNIQUE KEY `StockDetailId_UNIQUE` (`StockDetailId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Sample data for table `StockDetail`
--
INSERT INTO `StockDetail` (`StockId`, `ProductId`, `ProductName`, `Description`, `Quantity`, `Price`, `Amount`, `Author`, `Editor`) 
VALUES (1, 1, 'Product 1', ' Desc 1', 25, 200, 5000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail` (`StockId`, `ProductId`, `ProductName`, `Description`, `Quantity`, `Price`, `Amount`, `Author`, `Editor`) 
VALUES (1, 2, 'Product 2', ' Desc 2', 25, 200, 5000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail` (`StockId`, `ProductId`, `ProductName`, `Description`, `Quantity`, `Price`, `Amount`, `Author`, `Editor`) 
VALUES (1, 3, 'Product 3', ' Desc 3', 25, 200, 5000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail` (`StockId`, `ProductId`, `ProductName`, `Description`, `Quantity`, `Price`, `Amount`, `Author`, `Editor`) 
VALUES (2, 1, 'Product 1', ' Desc 1', 10, 200, 2000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail` (`StockId`, `ProductId`, `ProductName`, `Description`, `Quantity`, `Price`, `Amount`, `Author`, `Editor`) 
VALUES (2, 2, 'Product 2', ' Desc 2', 5, 200, 1000, 'SYSTEM', 'SYSTEM');

INSERT INTO `StockDetail` (`StockId`, `ProductId`, `ProductName`, `Description`, `Quantity`, `Price`, `Amount`, `Author`, `Editor`) 
VALUES (2, 3, 'Product 3', ' Desc 3', 25, 200, 5000, 'SYSTEM', 'SYSTEM');


--
-- Table structure for table `Journal`
--
DROP TABLE IF EXISTS `Journal`;
CREATE TABLE `Journal` (
  `JournalId` INT(11) NOT NULL AUTO_INCREMENT,
  `JournalKey` VARCHAR(50) NOT NULL,
  `JournalType` VARCHAR(20) NOT NULL,
  `JournalDate` DATETIME DEFAULT NULL,
  `DebitAcctNo` VARCHAR(20) NOT NULL,
  `CreditAcctNo` VARCHAR(20) NOT NULL,  
  `Currency` VARCHAR(3) DEFAULT NULL,
  `Amount` DECIMAL(12,4) NOT NULL DEFAULT 0,
  `Description` VARCHAR(250) DEFAULT NULL,
  `Created` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Updated` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) NOT NULL,
  `Editor` VARCHAR(50) NOT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`JournalId`),
  UNIQUE KEY `JournalId_UNIQUE` (`JournalId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Table structure for table `Journal`
--
INSERT INTO `Journal` (`JournalKey`,`JournalType`,`JournalDate`,`DebitAcctNo`,`CreditAcctNo`,`Currency`,`Amount`,`Description`,`Author`,`Editor`) 
VALUES (uuid(), 'CASH', '2017-08-01', '111', '641', 'VND', 6500, ' Cash Journal', 'SYSTEM', 'SYSTEM');

INSERT INTO `Journal` (`JournalKey`,`JournalType`,`JournalDate`,`DebitAcctNo`,`CreditAcctNo`,`Currency`,`Amount`,`Description`,`Author`,`Editor`) 
VALUES (uuid(), 'CASH', '2017-08-08', '112', '642', 'VND', 5000, ' Cash Journal', 'SYSTEM', 'SYSTEM');

INSERT INTO `Journal` (`JournalKey`,`JournalType`,`JournalDate`,`DebitAcctNo`,`CreditAcctNo`,`Currency`,`Amount`,`Description`,`Author`,`Editor`) 
VALUES (uuid(), 'STOCK', '2017-08-09', '156', '632', 'VND', 8000, 'Import Product', 'SYSTEM', 'SYSTEM');

INSERT INTO `Journal` (`JournalKey`,`JournalType`,`JournalDate`,`DebitAcctNo`,`CreditAcctNo`,`Currency`,`Amount`,`Description`,`Author`,`Editor`) 
VALUES (uuid(), 'STOCK', '2017-08-09', '156', '632', 'VND', 600, ' Import Product', 'SYSTEM', 'SYSTEM');

INSERT INTO `Journal` (`JournalKey`,`JournalType`,`JournalDate`,`DebitAcctNo`,`CreditAcctNo`,`Currency`,`Amount`,`Description`,`Author`,`Editor`) 
VALUES (uuid(), 'STOCK', '2017-08-09', '156', '632', 'VND', 150, ' Import Product', 'SYSTEM', 'SYSTEM');


--
-- Table structure for table `Brand`
--
DROP TABLE IF EXISTS `Brand`;
CREATE TABLE `Brand` (
  `BrandId` INT(11) NOT NULL AUTO_INCREMENT,
  `BrandKey` VARCHAR(50) NOT NULL,
  `BrandName` VARCHAR(50) NOT NULL,
  `Description` VARCHAR(250) DEFAULT NULL,
  `Created` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Updated` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) NOT NULL,
  `Editor` VARCHAR(50) NOT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`BrandId`),
  UNIQUE KEY `BrandId_UNIQUE` (`BrandId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Sample data for table `Brand`
--
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Thinkpad T450','Lenovo Thinkpad T450','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Apple','Apple','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'HIPHOP 005','HIPHOP 005','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Asus','Asus','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'HP Pro 1005','HP Pro 1005','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'IBM','IBM','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Super Car 2002','Super Car 2002','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Dell_XPS','Dell_XPS','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'HP 1009','HP Enterprise 1009','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Brand TEST 10','Brand TEST 10','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Asus 520 V.1001','Asus 520 V.10008','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Brand TEST 12xx','Brand TEST 12xx','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'HP ProBook 2015','HP ProBook 2015','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Brand TEST 14','Brand TEST 14','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'HP Pro Enter 2011','HP Pro Enter 2011','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Brand 16','Brand 16','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'DEL version.2017','DEL version.2017','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Brand TEST 18','Brand TEST 18','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Brand 19 Century','Brand 19 Century','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Coca Cola','Coca Cola','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Pepsi Company','Pepsi Company','SYSTEM','SYSTEM');
INSERT INTO `Brand` (`BrandKey`,`BrandName`,`Description`,`Author`, `Editor`) VALUES (uuid(),'Facebook','The Facebook','SYSTEM','SYSTEM');

--
-- Table structure for table `Product`
--
DROP TABLE IF EXISTS `Product`;
CREATE TABLE `Product` (
  `ProductId` INT(11) NOT NULL AUTO_INCREMENT,
  `ProductKey` VARCHAR(50) NOT NULL,
  `ProductName` VARCHAR(50) NOT NULL,
  `Description` VARCHAR(250) DEFAULT NULL,
  `BrandId` INT(11) NOT NULL DEFAULT 0,
  `Price` DECIMAL(12, 4) DEFAULT 0,
  `Colour` VARCHAR(10) DEFAULT NULL,  
  `Status` VARCHAR(10) DEFAULT NULL,
  `LatestReviewInfo` VARCHAR(250) DEFAULT NULL,
  `Created` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Updated` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) NOT NULL,
  `Editor` VARCHAR(50) NOT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`ProductId`),
  UNIQUE KEY `ProductId_UNIQUE` (`ProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='	';

--
-- Sample data for table `Product`
--
INSERT INTO `Product`(`ProductKey`,`ProductName`,`Description`,`BrandId`,`Price`,`Colour`,`Status`,`LatestReviewInfo`,`Author`,`Editor`)
VALUES (uuid(),'Sony Vaio','Sony Vaio',1,100,'White','IN','Cool','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`Description`,`BrandId`,`Price`,`Colour`,`Status`,`LatestReviewInfo`,`Author`,`Editor`)
VALUES (uuid(),'Dell','Dell Vostro',2,2000,'White','IN','Cool','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`Description`,`BrandId`,`Price`,`Colour`,`Status`,`LatestReviewInfo`,`Author`,`Editor`)
VALUES (uuid(),'HP Note','HP Note',2,100,'Yellow','IN','Cool','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`Description`,`BrandId`,`Price`,`Colour`,`Status`,`LatestReviewInfo`,`Author`,`Editor`)
VALUES (uuid(),'Asus','Asus',4,800,'White','IN','Cool','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`Description`,`BrandId`,`Price`,`Colour`,`Status`,`LatestReviewInfo`,`Author`,`Editor`)
VALUES (uuid(),'Acer','Laptop Acer',4,100,'White','IN','Cool','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`Description`,`BrandId`,`Price`,`Colour`,`Status`,`LatestReviewInfo`,`Author`,`Editor`)
VALUES (uuid(),'Sony Xperia','Sony Xperia',6,1200,'White','OUT','Cool','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`Description`,`BrandId`,`Price`,`Colour`,`Status`,`LatestReviewInfo`,`Author`,`Editor`)
VALUES (uuid(),'IBM T42','IBM T42',20,100,'Red','OUT','Cool','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`Description`,`BrandId`,`Price`,`Colour`,`Status`,`LatestReviewInfo`,`Author`,`Editor`)
VALUES (uuid(),'IBM T60','IBM T60',20,100,'Red','IN','Cool','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`Description`,`BrandId`,`Price`,`Colour`,`Status`,`LatestReviewInfo`,`Author`,`Editor`)
VALUES (uuid(),'IBM T400','IBM T400',20,100,'Red','IN','Cool','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`Description`,`BrandId`,`Price`,`Colour`,`Status`,`LatestReviewInfo`,`Author`,`Editor`)
VALUES (uuid(),'Ipad 5','Ipad 5',22,3000,'Green','OUT','Cool','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`Description`,`BrandId`,`Price`,`Colour`,`Status`,`LatestReviewInfo`,`Author`,`Editor`)
VALUES (uuid(),'IBM T42','IBM T42',20,100,'Red','IN','Cool','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`Description`,`BrandId`,`Price`,`Colour`,`Status`,`LatestReviewInfo`,`Author`,`Editor`)
VALUES (uuid(),'IBM T60','IBM T60',20,100,'Red','OUT','Cool','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`Description`,`BrandId`,`Price`,`Colour`,`Status`,`LatestReviewInfo`,`Author`,`Editor`)
VALUES (uuid(),'IBM T400','IBM T400',20,100,'Red','IN','Cool','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`Description`,`BrandId`,`Price`,`Colour`,`Status`,`LatestReviewInfo`,`Author`,`Editor`)
VALUES (uuid(),'Ipad 6','Ipad 6',22,3000,'Green','IN','Cool','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`Description`,`BrandId`,`Price`,`Colour`,`Status`,`LatestReviewInfo`,`Author`,`Editor`)
VALUES (uuid(),'IBM T43','IBM T43',20,100,'Red','IN','Cool','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`Description`,`BrandId`,`Price`,`Colour`,`Status`,`LatestReviewInfo`,`Author`,`Editor`)
VALUES (uuid(),'IBM T44','IBM T44',20,100,'Red','OUT','Cool','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`Description`,`BrandId`,`Price`,`Colour`,`Status`,`LatestReviewInfo`,`Author`,`Editor`)
VALUES (uuid(),'IBM T45','IBM T45',20,100,'Red','IN','Cool','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`Description`,`BrandId`,`Price`,`Colour`,`Status`,`LatestReviewInfo`,`Author`,`Editor`)
VALUES (uuid(),'Ipad 7','Ipad 7',22,3000,'Green','OUT','Cool','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`Description`,`BrandId`,`Price`,`Colour`,`Status`,`LatestReviewInfo`,`Author`,`Editor`)
VALUES (uuid(),'IBM T46','IBM T46',20,100,'Red','IN','Cool','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`Description`,`BrandId`,`Price`,`Colour`,`Status`,`LatestReviewInfo`,`Author`,`Editor`)
VALUES (uuid(),'IBM T47','IBM T47',20,100,'Red','OUT','Cool','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`Description`,`BrandId`,`Price`,`Colour`,`Status`,`LatestReviewInfo`,`Author`,`Editor`)
VALUES (uuid(),'IBM T2000','IBM T2000',20,100,'Red','IN','Cool','SYSTEM','SYSTEM');

INSERT INTO `Product`(`ProductKey`,`ProductName`,`Description`,`BrandId`,`Price`,`Colour`,`Status`,`LatestReviewInfo`,`Author`,`Editor`)
VALUES (uuid(),'Ipad 8','Ipad 8',22,3000,'Green','IN','Cool','SYSTEM','SYSTEM');

--
-- Table structure for table `Review`
--
DROP TABLE IF EXISTS `Review`;
CREATE TABLE `Review` (
  `ReviewId` INT(11) NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(50) NOT NULL,
  `Rating` INT(2) NOT NULL DEFAULT 0,
  `Comment` VARCHAR(250) DEFAULT NULL,  
  `ProductId` INT(11) NOT NULL DEFAULT 0,
  `Email` VARCHAR(50) DEFAULT NULL,
  `Created` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Updated` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) NOT NULL,
  `Editor` VARCHAR(50) NOT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`ReviewId`),
  UNIQUE KEY `ReviewId_UNIQUE` (`ReviewId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Sample data for table `User`
--
INSERT INTO `Review`(`Name`,`Rating`, `Comment`, `Created`, `ProductId`, `Email`, `Author`, `Editor`) VALUES ('TEST',1,'Not bad','2013-08-25 17:00:00',1,'test@hvn.com','SYSTEM','SYSTEM');
INSERT INTO `Review`(`Name`,`Rating`, `Comment`, `Created`, `ProductId`, `Email`, `Author`, `Editor`) VALUES ('TEST',5,'Normal','2013-08-25 17:00:00',2,'test@hvn.com','SYSTEM','SYSTEM');
INSERT INTO `Review`(`Name`,`Rating`, `Comment`, `Created`, `ProductId`, `Email`, `Author`, `Editor`) VALUES ('TEST',6,'Good','2013-08-22 17:00:00',3,'test@hvn.com','SYSTEM','SYSTEM');
INSERT INTO `Review`(`Name`,`Rating`, `Comment`, `Created`, `ProductId`, `Email`, `Author`, `Editor`) VALUES ('TEST',3,'Good','2013-08-22 17:00:00',3,'test@hvn.com','SYSTEM','SYSTEM');
INSERT INTO `Review`(`Name`,`Rating`, `Comment`, `Created`, `ProductId`, `Email`, `Author`, `Editor`) VALUES ('TEST',3,'Bad','2013-08-22 17:00:00',5,'test@hvn.com','SYSTEM','SYSTEM');
INSERT INTO `Review`(`Name`,`Rating`, `Comment`, `Created`, `ProductId`, `Email`, `Author`, `Editor`) VALUES ('TEST',3,'Comment','2016-07-10 16:43:40',7,'hvn@hvn.net','SYSTEM','SYSTEM');
INSERT INTO `Review`(`Name`,`Rating`, `Comment`, `Created`, `ProductId`, `Email`, `Author`, `Editor`) VALUES ('TEST',3,'Comment','2016-07-10 16:43:41',7,'hvn@hvn.net','SYSTEM','SYSTEM');
INSERT INTO `Review`(`Name`,`Rating`, `Comment`, `Created`, `ProductId`, `Email`, `Author`, `Editor`) VALUES ('TEST',3,'Comment','2016-07-10 16:43:41',7,'hvn@hvn.net','SYSTEM','SYSTEM');
INSERT INTO `Review`(`Name`,`Rating`, `Comment`, `Created`, `ProductId`, `Email`, `Author`, `Editor`) VALUES ('TEST',2,'2222','2016-07-10 16:59:04',15,'hvn@hvn.net','SYSTEM','SYSTEM');

--
-- Table structure for table `User`
--
DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
  `UserId` INT(11) NOT NULL AUTO_INCREMENT,
  `UserKey` VARCHAR(50) NOT NULL,
  `UserType` VARCHAR(20) NOT NULL,
  `UserName` VARCHAR(50) NOT NULL,
  `Hash` VARCHAR(250) DEFAULT NULL,
  `DisplayName` VARCHAR(50) DEFAULT NULL,
  `Email` VARCHAR(50) DEFAULT NULL,
  `Mobile` VARCHAR(50) DEFAULT NULL,
  `Tel` VARCHAR(50) DEFAULT NULL,
  `Title` VARCHAR(50) DEFAULT NULL,
  `DateOfBirth` DATE DEFAULT NULL,    
  `Created` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Updated` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `Author` VARCHAR(50) NOT NULL,
  `Editor` VARCHAR(50) NOT NULL,
  `Deleted` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `UserName_UNIQUE` (`UserName`),
  UNIQUE KEY `UserId_UNIQUE` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Sample data for table `User`
--
INSERT INTO `User` (`UserKey`, `UserType`, `UserName`, `Hash`, `DisplayName`, `Email`, `DateOfBirth`, `Author`, `Editor`) VALUES (uuid(), 'USER','beckham', uuid(), 'David Beckham','hoanganh@ibm.com','1990-03-03','SYSTEM','SYSTEM');
INSERT INTO `User` (`UserKey`, `UserType`, `UserName`, `Hash`, `DisplayName`, `Email`, `DateOfBirth`, `Author`, `Editor`) VALUES (uuid(), 'USER','huetran', uuid(), 'Hue Tran','huetran@hvn.com','1990-04-04','SYSTEM','SYSTEM');
INSERT INTO `User` (`UserKey`, `UserType`, `UserName`, `Hash`, `DisplayName`, `Email`, `DateOfBirth`, `Author`, `Editor`) VALUES (uuid(), 'ADMIN','john'  , uuid(), 'John Mike','john@microsoft.com','2000-12-26','SYSTEM','SYSTEM');
INSERT INTO `User` (`UserKey`, `UserType`, `UserName`, `Hash`, `DisplayName`, `Email`, `DateOfBirth`, `Author`, `Editor`) VALUES (uuid(), 'USER','avo4 Vo', uuid(), 'Anh Vo','avo4@csc.com','1984-12-22','SYSTEM','SYSTEM');
INSERT INTO `User` (`UserKey`, `UserType`, `UserName`, `Hash`, `DisplayName`, `Email`, `DateOfBirth`, `Author`, `Editor`) VALUES (uuid(), 'USER','anhvod' , uuid(), 'Vo Duy Anh','anhvod@hvn.com','1984-12-24','SYSTEM','SYSTEM');
INSERT INTO `User` (`UserKey`, `UserType`, `UserName`, `Hash`, `DisplayName`, `Email`, `DateOfBirth`, `Author`, `Editor`) VALUES (uuid(), 'USER','lukaku' , uuid(), 'Lukaku','lukaku@sony.com','1980-06-06','SYSTEM','SYSTEM');
INSERT INTO `User` (`UserKey`, `UserType`, `UserName`, `Hash`, `DisplayName`, `Email`, `DateOfBirth`, `Author`, `Editor`) VALUES (uuid(), 'USER','pogba'  , uuid(), 'Pogba','pogba@samsung.com','1980-06-06','SYSTEM','SYSTEM');

--
-- Store Procedure: sp_product_paging
--
DROP procedure IF EXISTS `sp_product_paging`;
DELIMITER ;;
CREATE PROCEDURE `sp_product_paging`(IN _pageindex int)
BEGIN
	IF(_pageindex = 0) THEN
		SELECT 	prod.ProductId, prod.ProductName, prod.Description,
			prod.BrandId, bra.Name AS BrandName, 
			prod.Price, prod.Colour, prod.Created, prod.Status 
		FROM Product prod inner join tblbrand bra 
		WHERE 	prod.brandId = bra.brandId
			AND prod.productId > _pageindex
		ORDER BY prod.productId DESC
		LIMIT 10;
    ELSE
		SELECT 	prod.ProductId, prod.ProductName, prod.Description,
			prod.BrandId, bra.Name AS BrandName, 
			prod.Price, prod.Colour, prod.Created, prod.Status 
		FROM Product prod inner join tblbrand bra 
		WHERE 	prod.brandId = bra.brandId
			AND prod.productId < _pageindex
		ORDER BY prod.productId DESC
        LIMIT 10;
    END IF;	    
END ;;
DELIMITER ;


/*
SELECT COUNT(*) AS Count FROM Account;
SELECT COUNT(*) AS Count FROM Brand;
SELECT COUNT(*) AS Count FROM Customer;
SELECT COUNT(*) AS Count FROM Inventory;
SELECT COUNT(*) AS Count FROM Journal;
SELECT COUNT(*) AS Count FROM Product;
SELECT COUNT(*) AS Count FROM Review;
SELECT COUNT(*) AS Count FROM Stock;
SELECT COUNT(*) AS Count FROM StockDetail;
SELECT COUNT(*) AS Count FROM Transaction;
SELECT COUNT(*) AS Count FROM TransactionDetail;
SELECT COUNT(*) AS Count FROM Truck;
SELECT COUNT(*) AS Count FROM User;
*/
create database bamazon;

use bamazon;

CREATE TABLE IF NOT EXISTS departments (
  DepartmentID int(11) NOT NULL AUTO_INCREMENT,
  DepartmentName varchar(100) NOT NULL,
  OverHeadCosts int(11) DEFAULT NULL,
  TotalSales decimal(10,2) DEFAULT 0.00,
  PRIMARY KEY (DepartmentID));

INSERT INTO `departments` (`DepartmentID`, `DepartmentName`, `OverHeadCosts`, `TotalSales`) VALUES
	(1, 'Music', 100, 1126.50),
	(2, 'Tools', 100, 332.03),
	(3, 'Clothes', 30, 1853.87),
	(4, 'Home', 400, 66.66),
	(5, 'Tech', 170, 250.00);

CREATE TABLE IF NOT EXISTS products (
  itemID int(11) NOT NULL AUTO_INCREMENT,
  ProductName varchar(100) NOT NULL,
  DepartmentName varchar(100) DEFAULT NULL,
  Price decimal(10,2) DEFAULT NULL,
  StockQuantity int(100) DEFAULT NULL,
  PRIMARY KEY (itemID));

INSERT INTO `products` (`ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES
	('Drum', 'Music', 99.98, 5),
	('Guitar', 'Music', 234.00, 3),
	('Pliers', 'Tools', 19.99, 7),
	('Shoes', 'Clothes', 39.99, 9),
	('Fancy Pants', 'Clothes', 79.99, 2),
	('Hammer', 'Tools', 2.99, 9999),
	('AirPods', 'Tech', 211.99, 30);

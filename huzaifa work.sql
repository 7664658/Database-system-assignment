Create database Inventory_Managment_system;
use Inventory_Managment_system;
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    CategoryID INT,
    SupplierID INT
    );

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(100) NOT NULL,
    ContactName VARCHAR(100),
    ContactEmail VARCHAR(100),
    ContactPhone VARCHAR(20)
);
CREATE TABLE Warehouses (
    WarehouseID INT PRIMARY KEY,
    WarehouseName VARCHAR(100) NOT NULL,
    Location VARCHAR(255) NOT NULL
);
CREATE TABLE Inventory (
    InventoryID INT AUTO_INCREMENT PRIMARY KEY,
    ProductID INT,
    WarehouseID INT,
    Quantity INT NOT NULL
);
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL
);
CREATE TABLE PurchaseOrders (
    PurchaseOrderID INT PRIMARY KEY,
    SupplierID INT,
    OrderDate DATE NOT NULL
    );
CREATE TABLE Shipments (
    ShipmentID INT PRIMARY KEY,
    PurchaseOrderID INT,
    ShipmentDate DATE NOT NULL,
    ArrivalDate DATE
);
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    SaleDate DATE NOT NULL,
    Quantity INT NOT NULL
);
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    ContactEmail VARCHAR(100),
    ContactPhone VARCHAR(20)
);
CREATE TABLE Returns (
    ReturnID int PRIMARY KEY,
    SaleID INT,
    ReturnDate DATE NOT NULL,
    Quantity INT NOT NULL,
    Reason TEXT
);

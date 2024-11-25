CREATE DATABASE CarDealership;
USE CarDealership;

CREATE TABLE Dealership (
DealershipId INT AUTO_INCREMENT PRIMARY key,
Name VARCHAR (50) NOT NULL,
Address VARCHAR (50) NOT NULL,
Phone Varchar (50) NOT NULL
);

CREATE TABLE Vehicles(
VIN VARCHAR(50) PRIMARY KEY,
Make VARCHAR(50) NOT NULL,
Model VARCHAR(50) NOT NULL,
Year YEAR NOT NULL,
Price Int Not NULL,
Sold BOOLEAN DEFAULT FALSE
);

CREATE TABLE Ineventory(
DealershipID INT NOT NULL,
VIN VARCHAR (50) NOT NULL
);

CREATE TABLE SalesContracts(
ContractID INT AUTO_INCREMENT PRIMARY KEY,
DealershipID INT NOT NULL,
CustomersName VARCHAR (100) NOT NULL,
SaleDate DATE NOT NULL,
SalePrice Int NOT NULL,
FOREIGN KEY (DealershipID) REFERENCES Dealership(DealershipID),
FOREIGN KEY (VIN) REFERENCES Vehicals(VIN)
);

INSERT INTO Dealership (Name, Address, Phone)
VALUES
('Downtown Motors', '123 Main St, Springfield, IL', '555-123-4567'),
('Highway Auto', '456 Elm St, Shelbyville, IL', '555-987-6543');

INSERT INTO Vehicles (VIN, MAKE, MODEL, YEAR, PRICE, SOLD)
VALUES
('1HGCM82633A12456', 'Toyota', 'Corolla', 2020, 20000, False),
('1HGCM82633A654321', 'Honda', 'Civic', 2021, 22000, False),
('1HGCM82633A111111', 'Ford', 'F-50', 2019, 30000, True);

INSERT INTO Inventory (DealershipID, VIN)
VALUES
(1, '1HGCM82633A12456'),
(1, '1HGCM82633A654321'),
(2, '1HGCM82633A111111');

INSERT INTO SalesContracts (DealershipID, VIN, CustomerName, SaleDate, SalePrice)
Values
(1, '1HGCM82633A12456', 'Mike Smith', '2024-11-01', 20000),
(2, '1HGCM82633A111111', 'Alix Woods', '2024-11-20', 30000);






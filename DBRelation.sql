 /* Create Customer Table */
CREATE TABLE Customer
(
 CustomerID INTEGER,
 CustomerName CHAR(30),
 CustomerAddress CHAR(30),
 CustomerCity CHAR(30),
 CustomerState CHAR(30),
 CustomerPostalCode CHAR(30),
 CustomerEmail CHAR(30),
 CustomerUserName CHAR(30),
 CustomerPassword CHAR(30),
 PRIMARY KEY(CustomerID))

 /* Create Territory Table */
CREATE TABLE Territory
(
 TerritoryID INTEGER,
 TerritoryName CHAR(30),
 PRIMARY KEY(TerritoryID))

 /* Create SalesPerson Table */
CREATE TABLE SalesPerson
(
 SalesPersonID INTEGER,
 SalesPersonName CHAR(30),
 SalesPersonPhone CHAR(30),
 SalesPersonEmail CHAR(30),
 SalesPersonUserName CHAR(30),
 SalesPersonPassword CHAR(30),
 TerritoryID INTEGER,
 PRIMARY KEY(SalesPersonID),
 FOREIGN KEY(TerritoryID) REFERENCES Territory)
 
 /* Create ProductLine Table */
CREATE TABLE ProductLine
(
 ProductLineID INTEGER,
 ProductLineName CHAR(30),
 PRIMARY KEY(ProductLineID))

   /* Create Product Table */
CREATE TABLE Product
(
 ProductID INTEGER,
 ProductName CHAR(30),
 ProductFinish CHAR(30),
 ProductStandardPrice INTEGER,
 ProductLineID INTEGER,
 Photo CHAR(30),
 PRIMARY KEY(ProductID),
 FOREIGN KEY(ProductLineID) REFERENCES ProductLine)
 
 /* Create Orders Table */
CREATE TABLE Orders
(
 OrderID INTEGER,
 OrderDate DATE,
 CustomerID INTEGER,
 PRIMARY KEY(OrderID),
 FOREIGN KEY(CustomerID) REFERENCES Customer)
 
CREATE TABLE OrderLine
(
 OrderID INTEGER,
 ProductID INTEGER,
 OrderedQuantity INTEGER,
 SalePrice INTEGER,
 PRIMARY KEY(OrderID, ProductID),
 FOREIGN KEY(OrderID) REFERENCES Orders,
 FOREIGN KEY(ProductID) REFERENCES Product)
 
 /* Create PriceUpdate Table */
CREATE TABLE PriceUpdate
(
 PriceUpdateID INTEGER,
 DateChanged DATE,
 OldPrice INTEGER,
 NewPrice INTEGER,
 PRIMARY KEY(PriceUpdateID))
 
 /* Create DoesBusinessIn */
CREATE TABLE DoesBusinessIn
(
 CustomerID INTEGER,
 TerritoryID INTEGER,
 PRIMARY KEY(CustomerID, TerritoryID),
 FOREIGN KEY(CustomerID) REFERENCES Customer,
 FOREIGN KEY(TerritoryID) REFERENCES Territory)

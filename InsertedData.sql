/* While the INSERT INTO numerous times is redundant, during the process of collecting the data it was
much simpler to simply ensure that each entry had the correct INSERT INTO statement one at a time*/

/* Insert into Customer */
INSERT INTO Customer (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES (1, 'Contemporary Casuals', '1355 S Hines Blvd', 'Gainesville', 'FL', '32601-2871');

INSERT INTO Customer (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES (2, 'Value Furnitures', '15145 S.W. 17th St.', 'Plano', 'TX', '75094-7734');

INSERT INTO Customer (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode, CustomerEmail, CustomerUserName, CustomerPassword)
VALUES (3, 'Home Furnishings', '1900 Allard Ave', 'Albany', 'NY', '12209-1125',  'homefurnishings?@gmail.com', 'CUSTOMER1', 'CUSTOMER1#');

INSERT INTO Customer (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES (4, 'Eastern Furniture', '1925 Beltline Rd.', 'Carteret', 'NJ', '07008-3188');

INSERT INTO Customer (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES (5, 'Impressions', '5585 Westcott Ct.', 'Sacramento', 'CA', '94206-4056');

INSERT INTO Customer (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES (6, 'Furniture Gallery', '325 Flatiron Dr.', 'Boulder', 'CO', '80514-4432');

INSERT INTO Customer (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState)
VALUES (7, 'New Furniture', 'Palace Ave', 'Farmington', 'NM');

INSERT INTO Customer (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES (8, 'Dunkins Furniture', '7700 Main St', 'Syracuse', 'NY', '31590');

INSERT INTO Customer (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES (9, 'A Carpet', '434 Abe Dr', 'Rome', 'NY', '13440');

INSERT INTO Customer (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES (12, 'Flanigan Furniture', 'Snow Flake Rd', 'Ft Walton Beach', 'FL', '32548');

INSERT INTO Customer (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES (13, 'Ikards', '1011 S. Main St', 'Las Cruces', 'NM', '88001');

INSERT INTO Customer (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES (14, 'Wild Bills', 'Four Horse Rd', 'Oak Brook', 'Il', '60522');

INSERT INTO Customer (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES (15, 'Janet''s Collection', 'Janet Lane', 'Virginia Beach', 'VA', '10012');

INSERT INTO Customer (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES (16, 'ABC Furniture Co.', '152 Geramino Drive', 'Rome', 'NY', '13440');

/* Insert into Territory */
INSERT INTO Territory (TerritoryID, TerritoryName)
VALUES (1, 'SouthEast');

INSERT INTO Territory (TerritoryID, TerritoryName)
VALUES (2, 'SouthWest');

INSERT INTO Territory (TerritoryID, TerritoryName)
VALUES (3, 'NorthEast');

INSERT INTO Territory (TerritoryID, TerritoryName)
VALUES (4, 'NorthWest');

INSERT INTO Territory (TerritoryID, TerritoryName)
VALUES (5, 'Central');


/* Inserting into SalesPerson */
INSERT INTO SalesPerson (SalesPersonID, SalesPersonName, SalesPersonPhone, SalespersonEmail, SalesPersonUserName, SalesPersonPassword, TerritoryID)
VALUES (1, 'Doug Henny', '8134445555', 'salesperson@gmail.com', 'SALESPERSON', 'SALESPERSON#',1);

INSERT INTO SalesPerson (SalesPersonID, SalesPersonName, SalesPersonPhone, SalespersonEmail, SalesPersonUserName, SalesPersonPassword, TerritoryID)
VALUES (2, 'Robert Lewis', '8139264006', '', '', '', 2);

INSERT INTO SalesPerson (SalesPersonID, SalesPersonName, SalesPersonPhone, SalespersonEmail, SalesPersonUserName, SalesPersonPassword, TerritoryID)
VALUES (3, 'William Strong', '5053821212', '', '', '', 3);

INSERT INTO SalesPerson (SalesPersonID, SalesPersonName, SalesPersonPhone, SalespersonEmail, SalesPersonUserName, SalesPersonPassword, TerritoryID)
VALUES (4, 'Julie Dawson', '4355346677', '', '', '', 4);

INSERT INTO SalesPerson (SalesPersonID, SalesPersonName, SalesPersonPhone, SalespersonEmail, SalesPersonUserName, SalesPersonPassword, TerritoryID)
VALUES (5, 'Jacob Winslow', '2238973498', '', '', '', 5);


/*Insert into DoesBusinessIn */
INSERT INTO DoesBusinessIn (CustomerID, TerritoryID)
VALUES (1, 1);
INSERT INTO DoesBusinessIn (CustomerID, TerritoryID)
VALUES (2, 2);
INSERT INTO DoesBusinessIn (CustomerID, TerritoryID)
VALUES (3, 3);
INSERT INTO DoesBusinessIn (CustomerID, TerritoryID)
VALUES (4, 4);
INSERT INTO DoesBusinessIn (CustomerID, TerritoryID)
VALUES (5, 5);
INSERT INTO DoesBusinessIn (CustomerID, TerritoryID)
VALUES (6, 1);
INSERT INTO DoesBusinessIn (CustomerID, TerritoryID)
VALUES (7, 2);


/* Insert into ProductLine */
INSERT INTO ProductLine (ProductLineID, ProductLineName)
VALUES (1, 'Cherry Tree');

INSERT INTO ProductLine (ProductLineID, ProductLineName)
VALUES (2, 'Scandinavia');

INSERT INTO ProductLine (ProductLineID, ProductLineName)
VALUES (3, 'Country Look');


/* Insert into Product */
INSERT INTO Product (ProductID, ProductName, ProductFinish, ProductStandardPrice, ProductLineID, Photo)
VALUES (1, 'End Table', 'Cherry', 175, 1, 'table.jpg');

INSERT INTO Product (ProductID, ProductName, ProductFinish, ProductStandardPrice, ProductLineID)
VALUES (2, 'Coffee Table', 'Natural Ash', 200, 2);

INSERT INTO Product (ProductID, ProductName, ProductFinish, ProductStandardPrice, ProductLineID)
VALUES (3, 'Computer Desk', 'Natural Ash', 375, 2);

INSERT INTO Product (ProductID, ProductName, ProductFinish, ProductStandardPrice, ProductLineID)
VALUES (4, 'Entertainment Center', 'Natural Maple', 650, 3);

INSERT INTO Product (ProductID, ProductName, ProductFinish, ProductStandardPrice, ProductLineID)
VALUES (5, 'Writers Desk', 'Cherry', 325, 1);

INSERT INTO Product (ProductID, ProductName, ProductFinish, ProductStandardPrice, ProductLineID)
VALUES (6, '8-Drawer Desk', 'White Ash', 750, 2);

INSERT INTO Product (ProductID, ProductName, ProductFinish, ProductStandardPrice, ProductLineID)
VALUES (7, 'Dining Table', 'Natural Ash', 800, 2);

INSERT INTO Product (ProductID, ProductName, ProductFinish, ProductStandardPrice, ProductLineID)
VALUES (8, 'Computer Desk', 'Walnut', 250, 3);


/* Insert into Order */
INSERT INTO Orders (OrderID, OrderDate, CustomerID)
VALUES (1001, '21/Aug/16', 1);

INSERT INTO Orders (OrderID, OrderDate, CustomerID)
VALUES (1002, '21/Jul/16', 8);

INSERT INTO Orders (OrderID, OrderDate, CustomerID)
VALUES (1003, '22/ Aug/16', 15);

INSERT INTO Orders (OrderID, OrderDate, CustomerID)
VALUES (1004, '22/Oct/16', 5);

INSERT INTO Orders (OrderID, OrderDate, CustomerID)
VALUES (1005, '24/Jul/16', 3);

INSERT INTO Orders (OrderID, OrderDate, CustomerID)
VALUES (1006, '24/Oct/16', 2);

INSERT INTO Orders (OrderID, OrderDate, CustomerID)
VALUES (1007, '27/ Aug/16', 5);

INSERT INTO Orders (OrderID, OrderDate, CustomerID)
VALUES (1008, '30/Oct/16', 12);

INSERT INTO Orders (OrderID, OrderDate, CustomerID)
VALUES (1009, '05/Nov/16', 4);

INSERT INTO Orders (OrderID, OrderDate, CustomerID)
VALUES (1010, '05/Nov/16', 1);


/* Insert into OrderLine */
INSERT INTO OrderLine (OrderID, ProductID, OrderedQuantity)
VALUES(1001, 1, 2);

INSERT INTO OrderLine (OrderID, ProductID, OrderedQuantity)
VALUES(1001, 2, 2);

INSERT INTO OrderLine (OrderID, ProductID, OrderedQuantity)
VALUES(1001, 4, 1);

INSERT INTO OrderLine (OrderID, ProductID, OrderedQuantity)
VALUES(1002, 3, 5);

INSERT INTO OrderLine (OrderID, ProductID, OrderedQuantity)
VALUES(1003, 3, 3);

INSERT INTO OrderLine (OrderID, ProductID, OrderedQuantity)
VALUES(1004, 6, 2);

INSERT INTO OrderLine (OrderID, ProductID, OrderedQuantity)
VALUES(1004, 8, 2);

INSERT INTO OrderLine (OrderID, ProductID, OrderedQuantity)
VALUES(1005, 4, 4);

INSERT INTO OrderLine (OrderID, ProductID, OrderedQuantity)
VALUES(1006, 4, 1);

INSERT INTO OrderLine (OrderID, ProductID, OrderedQuantity)
VALUES(1006, 5, 2);

INSERT INTO OrderLine (OrderID, ProductID, OrderedQuantity)
VALUES(1006, 7, 2);

INSERT INTO OrderLine (OrderID, ProductID, OrderedQuantity)
VALUES(1007, 1, 3);

INSERT INTO OrderLine (OrderID, ProductID, OrderedQuantity)
VALUES(1007, 2, 2);

INSERT INTO OrderLine (OrderID, ProductID, OrderedQuantity)
VALUES(1008, 3, 3);

INSERT INTO OrderLine (OrderID, ProductID, OrderedQuantity)
VALUES(1008, 8, 3);

INSERT INTO OrderLine (OrderID, ProductID, OrderedQuantity)
VALUES(1009, 4, 2);

INSERT INTO OrderLine (OrderID, ProductID, OrderedQuantity)
VALUES(1009, 7, 3);

INSERT INTO OrderLine (OrderID, ProductID, OrderedQuantity)
VALUES(1010, 8, 10);

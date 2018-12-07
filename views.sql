/* Comparison View */
CREATE VIEW Comparison AS
SELECT PL.ProductLineID, P.ProductID, O.OrderedQuantity
FROM ProductLine PL, Product P, OrderLine O
WHERE PL.ProductLineID = P.ProductLineID AND P.ProductID = O.ProductID

/* Total Value View */
CREATE VIEW TotalValue AS
SELECT P.ProductID, P.ProductStandardPrice, O.OrderedQuantity
FROM Product P, OrderLine O
Where P.ProductID = O.ProductID

/* Data for Customer View */
CREATE VIEW DataForCustomer AS
SELECT P.ProductID, P.ProductStandardPrice
FROM Product P

/* Shipment View */
CREATE VIEW Shipment AS
SELECT C.CustomerID, C.CustomerAddress, C.CustomerState
FROM Customer C

/* Purchased History View*/
CREATE VIEW PurchaseHistory AS
SELECT O.OrderDate, P.ProductName, P.ProductStandardPrice, OL.OrderedQuantity
FROM Orders O, Product P, OrderLine OL
WHERE O.OrderID = OL.OrderID AND OL.ProductID = P.ProductID

/* Ordered View */
CREATE OR REPLACE VIEW Ordereds AS
SELECT C.CustomerID, O.OrderID, O.OrderDate
FROM Customer C, Orders O
Where C.CustomerID = O.CustomerID

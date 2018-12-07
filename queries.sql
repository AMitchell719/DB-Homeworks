/* Begin SQL Queries */

/* #1 */
/*
    ProductID   ProductName     ProductStandardPrice
    1           End Table       175
    2           Coffee Table    200
    8           Computer Desk   250
*/
SELECT P.ProductName, P.ProductStandardPrice
FROM Product P
WHERE ProductStandardPrice < 275

/* #2 */
/*
    ProductStandardPrice   ProductName     ProductID
    175                     End Table       1
    200                     Coffee Table    2
    375                     Computer Desk   3
    650                Entertainment Center 4
    325                     Writers Desk    5
    750                     8-Drawer Desk   6
    800                     Dining Table    7
    250                     Computer Desk   8
*/
SELECT P.ProductStandardPrice, P.ProductName, P.ProductID
FROM Product P

/* #3 */
/*
    AVG(P.ProductStandardPrice)
        440.625
*/
SELECT AVG(P.ProductStandardPrice)
FROM Product P

/* #4 */
/*
    COUNT(OL.ProductID)
            2
*/
SELECT COUNT(OL.ProductID)
FROM OrderLine OL
WHERE OL.OrderID = 1004

/* #5 */
/*
   ORDERID
----------
      1001
      1002
      1003
      1004
      1005
      1006
      1007
      1008
      1009
      1010
*/
SELECT OrderID
FROM Orders
WHERE OrderDate > TO_DATE('20101024', 'yyyymmdd')


/* #6 */
/*
    ProductID       ProductName
    2               Coffee Table
    3               Computer Desk
    4               Entertainment Center
    6               8-Drawer Desk
    7               Dining Table
    8               Computer Desk
    
*/   
SELECT ProductName
FROM Product
WHERE ProductFinish != 'Cherry'

/* #7 */
/*
    ProductName         ProductFinish       ProductStandardPrice
    8-Drawer Desk       White Ash           750
    Computer Desk       Natural Ash         375
    Dining Table        Natural Ash         800
    Writers Desk        Cherry              325
*/
SELECT P.ProductName, P.ProductFinish, P.ProductStandardPrice
FROM Product P
WHERE P.ProductName LIKE '%Table%' AND P.ProductStandardPrice >= 300
	UNION
SELECT P2.ProductName, P2.ProductFinish, P2.ProductStandardPrice
FROM Product P2
WHERE P2.Productname LIKE '%Desk%' AND P2.ProductStandardPrice >= 300

/* #8 */
/*
    ProductName
    Coffee Table
    Computer Desk
*/
SELECT ProductName
FROM Product
WHERE ProductStandardPrice BETWEEN 200 AND 300

/* #9 */
/*
    CustomerName        CustomerCity    CustomerState
    Impressions         Sacramento      CA
    Contemporary Casuals Gainesciile    FL
    Flanigan Furniture  Ft Walton Beach FL
    Value Furnitures    Plano           TX

*/
SELECT C.CustomerName, C.CustomerCity, C.CustomerState
FROM Customer C
WHERE C.CustomerState = 'FL' OR C.CustomerState = 'CA' OR C.CustomerState = 'MI' OR C.CustomerState = 'TX'
ORDER BY C.CustomerState, C.CustomerName

/* #10 */
/*

    CustomerState   COUNT(C.CustomerState)
    NJ              1
    CA              1
    NM              2
    VA              1
    IL              1
    NY              4
    CO              1
    FL              2
    TX              1
*/
SELECT CustomerState, COUNT(CustomerName)
FROM Customer
GROUP BY CustomerState

/* #11 */
/*
    CustomerState       CustomerCity        COUNT(C.CustomerCity)
    CA                  Sacramento          1
    CO                  Boulder             1
    FL                  Ft Walton Beach     1
    FL                  Gainesville         1
    Il                  Oak Brook           1
    NJ                  Carteret            1
    NM                  Farmington          1
    NM                  Las Cruces          1
    NY                  Albany              1
    NY                  Rome                2
    NY                  Syracuse            1
    TX                  Plano               1
    VA                  Virginia Beach      1
*/
SELECT C.CustomerState, C.CustomerCity, COUNT(C.CustomerCity)
FROM Customer C
GROUP BY C.CustomerState, CustomerCity
ORDER BY C.CustomerState

/* #12 */
/*
    CustomerState
    NY
    FL
    NM
*/
SELECT CustomerState
FROM Customer
GROUP BY CustomerState
HAVING COUNT(CustomerName) > 1

/* #13 */
/*
    ProductFinish       AVG(ProductStandardPrice)
    Cherry              250
    Natural Ash         458.333
    Natural Maple       650
    Walnut              250

*/
SELECT ProductFinish, AVG(ProductStandardPrice)
FROM Product
GROUP BY ProductFinish
HAVING AVG(ProductStandardPrice) < 750
ORDER BY ProductFinish

/* #14 */
/*
    ProductId   ProductName         TotalValue
    1           End Table           875
    2           Coffee Table        800
    3           Computer Desk       4125
    4           Entertainment Center5200
    5           Writers Desk        650
    6           8-Drawer Desk       1500
    7           Dining Table        4000
    8           Computer Desk       3750
*/
SELECT tot.ProductID, tot.ProductName, SUM(tot.TotalValue) AS TotalValue
FROM (
		SELECT OL.ProductID, P.ProductName, OL.OrderedQuantity * P.ProductStandardPrice AS TotalValue
		FROM Product P, OrderLine OL
		WHERE P.ProductID = OL.ProductID
		) tot
GROUP BY tot.ProductID, tot.ProductName
ORDER BY tot.ProductID

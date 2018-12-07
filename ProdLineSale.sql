/* Begin Procedure */
ALTER TABLE Product ADD SalePrice decimal(6,2);
CREATE PROCEDURE ProductLineSale AS
BEGIN
    UPDATE Product P
    SET P.SalePrice = (
        CASE
        WHEN P.ProductStandardPrice >= 400 THEN
            P.ProductStandardPrice * 0.9
        ELSE
            P.ProductStandardPrice * 0.85
        END);
END ProductLineSale;
/* End Procedure */

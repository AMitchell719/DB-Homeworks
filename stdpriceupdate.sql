/* Begin Trigger */
CREATE TRIGGER StandardPriceUpdate
AFTER UPDATE ON Product
FOR EACH ROW

BEGIN

    INSERT INTO PriceUpdate VALUES(:old.ProductID, CURRENT_TIMESTAMP, :old.ProductStandardPrice, :new.ProductStandardPrice);
    
END;
/* End Trigger */

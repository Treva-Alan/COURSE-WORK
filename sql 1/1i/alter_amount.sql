CREATE TRIGGER check_transaction_amount
BEFORE INSERT OR UPDATE ON Transactions
FOR EACH ROW
BEGIN
    DECLARE property_price DECIMAL(10,2);
    SELECT Price INTO property_price
    FROM Properties
    WHERE PropertyID = NEW.PropertyID;
    IF NEW.Amount > property_price THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Transaction amount cannot exceed the listed price of the property';
    END IF;
END;

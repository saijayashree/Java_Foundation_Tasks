USE College;

DELIMITER //

CREATE PROCEDURE totalBill(price INT, qty INT)
BEGIN
    DECLARE total INT;

    SET total = price * qty;

    SELECT total AS "TOTAL AMOUNT";
END //

DELIMITER ;
CALL totalBill(100, 5);
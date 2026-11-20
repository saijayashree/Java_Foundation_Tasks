DELIMITER //

CREATE PROCEDURE calbill(IN units INT, OUT bill INT)
BEGIN
    IF units <= 100 THEN
        SET bill = 0;

    ELSEIF units <= 200 THEN
        SET bill = (units - 100) * 4;

    ELSEIF units <= 300 THEN
        SET bill = (100 * 4) + ((units - 200) * 3);

    ELSE
        SET bill = (100 * 4) + (100 * 3) + ((units - 300) * 2);

    END IF;
END //

DELIMITER ;
CALL calbill(250, @total);

SELECT @total AS 'TOTAL BILL';
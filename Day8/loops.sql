DELIMITER //

CREATE PROCEDURE sumNumbers()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE total INT DEFAULT 0;

    WHILE i <= 10 DO

        SET total = total + i;
        SET i = i + 1;

    END WHILE;

    SELECT total AS SumOfNumbers;

END //

DELIMITER ;

CALL sumNumbers();
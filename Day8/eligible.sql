DELIMITER //
 
CREATE PROCEDURE CheckVoting(
    IN age INT,
    OUT result VARCHAR(30)
)
BEGIN
 
    IF age >= 18 THEN
        SET result = 'Eligible to Vote';
    ELSE
        SET result = 'Not Eligible';
    END IF;
 
END //
 
DELIMITER ;
 
 
SET @voting_result = '';
 
CALL CheckVoting(18, @voting_result);
 

SELECT @voting_result AS Voting_Status;
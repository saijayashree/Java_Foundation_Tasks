
use hexaware;
CREATE TABLE Student (
    roll INT PRIMARY KEY,
    name VARCHAR(50),
    fee DECIMAL(10,2),
    subject VARCHAR(50)
);
 
INSERT INTO Student VALUES
(101, 'Amit', 25000, 'Python'),
(102, 'Riya', 30000, 'Java'),
(103, 'Rahul', 28000, 'SQL'),
(104, 'Priya', 32000, 'Data Science'),
(105, 'Neha', 27000, 'Web Development');
 
 
DELIMITER //
 
CREATE PROCEDURE ShowStudent1()
BEGIN
 
    DECLARE v_name VARCHAR(50);
    DECLARE v_fee DECIMAL(10,2);
    DECLARE v_subject VARCHAR(50);
 
    SELECT name, fee, subject
    INTO v_name, v_fee, v_subject
    FROM Student
    WHERE roll = 101;

 
    SELECT v_name AS Name,
           v_fee AS Fee,
           v_subject AS Subject;
 
END //
 
DELIMITER ;
 
CALL ShowStudent1();
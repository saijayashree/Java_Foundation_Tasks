CREATE DATABASE CompanyDB;
 
USE CompanyDB;
 
 
CREATE TABLE Employee
(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10,2)
);
 
 
 
INSERT INTO Employee VALUES
(101, 'Amit', 'IT', 40000),
(102, 'Neha', 'HR', 35000),
(103, 'Rahul', 'Sales', 30000),
(104, 'Priya', 'IT', 50000),
(105, 'Karan', 'Finance', 45000);
 
 
SELECT * FROM Employee;



 
 


DELIMITER //
 
CREATE PROCEDURE DisplayEmployees()
 
BEGIN
 
    -- Declare variables

    DECLARE v_id INT;

    DECLARE v_name VARCHAR(50);

    DECLARE v_department VARCHAR(30);

    DECLARE v_salary DECIMAL(10,2);
 
    

    DECLARE finished INT DEFAULT 0;
 
    

    DECLARE emp_cursor CURSOR FOR

    SELECT emp_id, emp_name, department, salary

    FROM Employee;
 
    

    DECLARE CONTINUE HANDLER FOR NOT FOUND

    SET finished = 1;
 
 
    

    OPEN emp_cursor;
 
 
    read_loop: LOOP
 
        

        FETCH emp_cursor

        INTO v_id, v_name, v_department, v_salary;
 
 
        

        IF finished = 1 THEN

            LEAVE read_loop;

        END IF;
 
 
	

        SELECT

            v_id AS Employee_ID,

            v_name AS Employee_Name,

            v_department AS Department,

            v_salary AS Salary;
 
    END LOOP;
 
 
    CLOSE emp_cursor;
 
END //
 
DELIMITER ;
 
 
 
CALL DisplayEmployees();
 
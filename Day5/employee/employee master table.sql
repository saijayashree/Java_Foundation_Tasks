CREATE TABLE Employee_Master
(
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Dept_ID INT,
    FOREIGN KEY (Dept_ID)
    REFERENCES Department_Master(Dept_ID)
);
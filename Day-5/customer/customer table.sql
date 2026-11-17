CREATE TABLE Customer
(
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Age INT CHECK (Age >= 18)
);
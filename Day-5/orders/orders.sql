CREATE TABLE Orders
(
    Order_ID INT PRIMARY KEY,
    Customer_ID INT NOT NULL UNIQUE,
    Order_Date DATE,
    Amount DECIMAL(10,2) CHECK (Amount > 0),
    Order_Status VARCHAR(20) DEFAULT 'Processing'
);
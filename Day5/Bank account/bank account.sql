CREATE TABLE Bank_Account
(
    Account_ID INT PRIMARY KEY,
    Account_Holder VARCHAR(50) NOT NULL,
    Balance DECIMAL(10,2) DEFAULT 0,
    Account_Type VARCHAR(20)
    CHECK (Account_Type IN ('Savings', 'Current'))
);
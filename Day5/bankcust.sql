CREATE TABLE bankcust
(
    accountno INT PRIMARY KEY,
    Name VARCHAR(20) NOT NULL,
    balance INT CHECK (balance > 1000),
    adharcard INT UNIQUE,
    city VARCHAR(20) DEFAULT 'Chennai'
);

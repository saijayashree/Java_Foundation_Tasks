-- STEP 1: CREATE DATABASE
 
CREATE DATABASE ShopDB;
 
USE ShopDB;
 
 
-- STEP 2: CREATE ITEMS TABLE
 
CREATE TABLE Items

(

    item_code INT PRIMARY KEY,

    item_name VARCHAR(50),

    category VARCHAR(50),

    quantity INT,

    price DECIMAL(10,2),

    status VARCHAR(20)

);
 
 
 
INSERT INTO Items VALUES

(101, 'Laptop', 'Electronics', 10, 50000, 'AVAILABLE'),

(102, 'Mouse', 'Accessories', 5, 500, 'AVAILABLE'),

(103, 'Keyboard', 'Accessories', 3, 1000, 'AVAILABLE'),

(104, 'Monitor', 'Electronics', 2, 12000, 'AVAILABLE');
 
-- update ..... 101  10   5     5       4    1    0  
 
 
CREATE TABLE Orders

(

    oid INT PRIMARY KEY AUTO_INCREMENT,

    item_code INT,

    item_name VARCHAR(50),

    order_qty INT,

    order_price DECIMAL(10,2),

    total_amount DECIMAL(10,2),

    order_date DATE,

    message VARCHAR(100)

);
 
 
 
DELIMITER //
 
CREATE TRIGGER Stock_Finished

AFTER UPDATE ON Items

FOR EACH ROW

BEGIN
 
    IF NEW.quantity = 0 AND OLD.quantity > 0 THEN
 
        INSERT INTO Orders

        (

            item_code,

            item_name,

            order_qty,

            order_price,

            total_amount,

            order_date,

            message

        )

        VALUES

        (

            NEW.item_code,

            NEW.item_name,

            10,

            NEW.price,

            0,

            CURDATE(),

            'Stock Finished'

        );
 
    END IF;
 
END //
 
DELIMITER ;
 
 
SELECT * FROM Items;
 
 
 
UPDATE Items

SET quantity = 0,

    status = 'OUT OF STOCK'

WHERE item_code = 103;
 
 
 
SELECT * FROM Items;
 
 
SELECT * FROM Orders;
 
 
UPDATE Items

SET quantity = 0,

    status = 'OUT OF STOCK'

WHERE item_code = 103;
 
 
SELECT * FROM Orders;
 
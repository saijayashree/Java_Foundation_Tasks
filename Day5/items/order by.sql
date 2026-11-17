
-- 30
SELECT * FROM Items
ORDER BY Quantity DESC;


-- 31
SELECT * FROM Items
WHERE Category = 'Electronics'
AND Price BETWEEN 10000 AND 50000;

-- 32
SELECT * FROM Items
WHERE Supplier_Name = 'ABC Traders'
AND Status = 'Available';

-- 33
SELECT * FROM Items
WHERE Item_Name LIKE 'P%'
AND Price > 1000;

-- 34
SELECT * FROM Items
ORDER BY Price DESC
LIMIT 5;

-- 35
SELECT * FROM Items
ORDER BY Purchase_Date DESC;
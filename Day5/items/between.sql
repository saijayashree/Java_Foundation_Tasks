-- 11
SELECT * FROM Items
WHERE Price BETWEEN 1000 AND 10000;

-- 12
SELECT * FROM Items
WHERE Quantity BETWEEN 10 AND 50;

-- 13
SELECT * FROM Items
WHERE Purchase_Date BETWEEN '2026-02-01' AND '2026-03-01';

-- 14
SELECT * FROM Items
WHERE Price NOT BETWEEN 500 AND 5000;

-- 15
SELECT * FROM Items
WHERE Category IN ('Electronics','Furniture','Accessories');

-- 16
SELECT * FROM Items
WHERE Supplier_Name IN ('ABC Traders','Tech World','Sound Hub');

-- 17
SELECT * FROM Items
WHERE Status IN ('Available','Pending','Unavailable');

-- 18
SELECT * FROM Items
WHERE Category NOT IN ('Electronics','Furniture');

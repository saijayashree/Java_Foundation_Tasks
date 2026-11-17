-- 19
SELECT * FROM Items
WHERE Item_Name LIKE 'M%';

-- 20
SELECT * FROM Items
WHERE Item_Name LIKE '%r';

-- 21
SELECT * FROM Items
WHERE Item_Name LIKE '%oo%';

-- 22
SELECT * FROM Items
WHERE Item_Name LIKE 'S%';

-- 23
SELECT * FROM Items
WHERE Supplier_Name LIKE 'A%';

-- 24
SELECT * FROM Items
WHERE Item_Name LIKE '_____';

-- 25
SELECT * FROM Items
WHERE Supplier_Name IS NULL;

-- 26
SELECT * FROM Items
WHERE Status IS NOT NULL;

-- 27
SELECT * FROM Items
WHERE Price IS NULL;

-- 28
SELECT * FROM Items
WHERE Quantity IS NOT NULL;
-- 7
SELECT * FROM Items
WHERE Category = 'Electronics'
AND Price > 10000;

-- 8
SELECT * FROM Items
WHERE Category = 'Furniture'
OR Category = 'Stationery';

-- 9
SELECT * FROM Items
WHERE NOT Status = 'Available';

-- 10
SELECT * FROM Items
WHERE Price > 1000
AND Quantity > 10;

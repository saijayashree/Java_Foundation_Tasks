-- select * from Items; 
-- select Item_Name, Category from Items; 
-- select * from Items  where Status = "Available";
 -- select Item_Name, Category, Price * Quantity AS Total_Amount from Items; 
-- select *from Items where Supplier_name='ABC Traders';
-- select  min(Price) as min from Items;
-- select  max(Price) as max from Items;
-- select  count(*) as tot from Items;
-- SELECT COUNT(*) AS outofstock FROM Items WHERE Status = 'Out of Stock';
-- SELECT *FROM items WHERE price >= 100 AND price <= 200;

-- select * from items where Status in ('Avaliable', 'Pending');
/*select * from items where item_name='%L';
select * from items where item_name='L%';
select * from items where item_name='%L%';*/
-- select *from items WHERE address LIKE '%pune%';
-- select * from items order by Item_name ASC;
select * from items order by Item_name Desc;


-- 6. delete item whose item_id is 5

delete from items
where item_id = 5;

-- 7. delete all unavailable items

delete from items
where status = 'unavailable';

-- 8. delete all items whose quantity is less than 10

delete from items
where quantity < 10;
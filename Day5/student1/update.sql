-- 1. change the price of laptop to 60000

update items
set price = 60000
where item_name = 'laptop';

-- 2. change the quantity of mouse to 100

update items
set quantity = 100
where item_name = 'mouse';

-- 3. change the status of keyboard to available

update items
set status = 'available'
where item_name = 'keyboard';

-- 4. change supplier name from abc traders to abc electronics

update items
set supplier_name = 'abc electronics'
where supplier_name = 'abc traders';

-- 5. increase price of all items by 10%

update items
set price = price * 1.10
where item_id > 0;


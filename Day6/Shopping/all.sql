select left(item_name,2)
from items;

select max(price) as highest_price
from items;

select max(price) as highest_price
from items;

select category, avg(price) as avg_price
from items
group by category;

select category, sum(stock) as total_stock
from items
group by category;

select category, count(*) as total_items
from items
group by category;

select item_id, count(*) as order_count
from orders
group by item_id
order by order_count desc;


select i.item_name, o.customer_name
from items i
join orders o
on i.item_id = o.item_id;

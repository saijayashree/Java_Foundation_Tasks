select i.item_name, o.customer_name, o.order_date
from items i
inner join orders o
on i.item_id = o.item_id;
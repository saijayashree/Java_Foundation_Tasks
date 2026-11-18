select o.order_id, o.customer_name, i.item_name
from orders o
inner join items i
on o.item_id = i.item_id;
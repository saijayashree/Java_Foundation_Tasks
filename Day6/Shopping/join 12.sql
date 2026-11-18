select o.order_id, i.item_name, i.price, o.quantity, o.customer_name
from orders o
inner join items i
on o.item_id = i.item_id;
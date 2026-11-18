select i.item_name, i.category, o.customer_name, o.quantity
from items i
inner join orders o
on i.item_id = o.item_id;
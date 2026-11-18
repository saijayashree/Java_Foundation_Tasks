select i.item_id, i.item_name, o.customer_name
from items i
inner join orders o
on i.item_id = o.item_id;
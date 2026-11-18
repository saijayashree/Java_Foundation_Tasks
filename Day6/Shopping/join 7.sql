select i.item_name, o.order_id
from items i
left join orders o
on i.item_id = o.item_id;
select o.*, i.item_name
from orders o
left join items i
on o.item_id = i.item_id;
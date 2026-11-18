select *
from orders o
inner join items i
on o.item_id = i.item_id;
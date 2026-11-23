delimiter //

create procedure low_balance_alert()
begin

declare done int default 0;
declare v_id int;

declare c1 cursor for
select sub_id
from subscribers
where balance < 50;

declare continue handler for not found
set done=1;

open c1;

repeat

fetch c1 into v_id;

if not done then

insert into notifications
values(v_id,'low balance alert');

end if;

until done
end repeat;

close c1;

end //

delimiter ;

call low_balance_alert();
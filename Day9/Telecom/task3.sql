delimiter //

create function fn_validity_days_left(p_date date)
returns int
deterministic
begin
    return datediff(p_date,curdate());
end //

delimiter ;

select sub_name,
expiry_date,
fn_validity_days_left(expiry_date) as days_left
from subscribers;
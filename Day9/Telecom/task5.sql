drop procedure if exists check_balance;

delimiter //

create procedure check_balance(
in p_amount decimal(10,2)
)
begin

    if p_amount <= 0 then
        signal sqlstate '45000'
        set message_text = 'invalid amount';
    end if;

end //

delimiter ;

call check_balance(-100);
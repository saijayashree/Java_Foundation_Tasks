delimiter //

create procedure sp_recharge(
in p_subid int,
in p_amount decimal(10,2),
out p_balance decimal(10,2)
)
begin

    update subscribers
    set balance=balance+p_amount
    where sub_id=p_subid;

    select balance
    into p_balance
    from subscribers
    where sub_id=p_subid;

    insert into recharge_history(sub_id,amount)
    values(p_subid,p_amount);

end //

delimiter ;

call sp_recharge(1,100,@b);

select @b;
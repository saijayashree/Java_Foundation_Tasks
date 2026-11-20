drop procedure if exists updatefee;

delimiter //

create procedure updatefee(in p_roll int)
begin
    declare v_subject varchar(50);

    select subject
    into v_subject
    from student
    where roll = p_roll;

    if v_subject = 'Java' then
        update student
        set fee = fee + 100
        where roll = p_roll;
    else
        update student
        set fee = fee + 200
        where roll = p_roll;
    end if;

    select * 
    from student
    where roll = p_roll;
end //

delimiter ;

call updatefee(101);
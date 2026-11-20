drop procedure if exists showstudent;

delimiter //

create procedure showstudent(in p_roll int)
begin
    declare v_name varchar(50);
    declare v_fee decimal(10,2);
    declare v_subject varchar(50);

    select name, fee, subject
    into v_name, v_fee, v_subject
    from student
    where roll = p_roll;

    select v_name as name,
           v_fee as fee,
           v_subject as subject;
end //

delimiter ;

call showstudent(101);
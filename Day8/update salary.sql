drop procedure if exists updatesalary;

delimiter //

create procedure updatesalary(in p_empid int)
begin
    declare v_exp int;

    select exp
    into v_exp
    from employee
    where emp_id = p_empid;

    if v_exp <= 1 then
        update employee
        set salary = salary + (salary * 10/100)
        where emp_id = p_empid;

    elseif v_exp between 2 and 3 then
        update employee
        set salary = salary + (salary * 15/100)
        where emp_id = p_empid;

    else
        update employee
        set salary = salary + (salary * 20/100)
        where emp_id = p_empid;
    end if;

    select *
    from employee
    where emp_id = p_empid;
end //

delimiter ;

call updatesalary(103);
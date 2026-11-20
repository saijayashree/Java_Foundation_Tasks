drop table if exists employee;
drop procedure if exists updatesalary;

create table employee(
    emp_id int primary key,
    emp_name varchar(50),
    salary decimal(10,2),
    experience int
);

insert into employee values
(101,'amit',30000,1),
(102,'riya',40000,2),
(103,'rahul',50000,4),
(104,'priya',35000,3),
(105,'neha',45000,5);

delimiter //

create procedure updatesalary(in p_empid int)
begin
    declare v_exp int;

    select experience
    into v_exp
    from employee
    where emp_id = p_empid;

    if v_exp <= 1 then
        update employee
        set salary = salary + salary * 0.10
        where emp_id = p_empid;

    elseif v_exp between 2 and 3 then
        update employee
        set salary = salary + salary * 0.15
        where emp_id = p_empid;

    else
        update employee
        set salary = salary + salary * 0.20
        where emp_id = p_empid;

    end if;

    select *
    from employee
    where emp_id = p_empid;
end //

delimiter ;

call updatesalary(103);
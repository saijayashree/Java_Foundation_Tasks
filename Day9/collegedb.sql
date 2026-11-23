CREATE DATABASE CollegeDB;

USE CollegeDB;

CREATE TABLE Student
(
    roll INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    subject VARCHAR(30),
    marks INT,
    fee DECIMAL(10,2)
);

INSERT INTO Student VALUES
(101, 'Amit', 20, 'Python', 85, 15000),
(102, 'Neha', 21, 'Java', 75, 12000),
(103, 'Rahul', 19, 'SQL', 90, 10000),
(104, 'Priya', 22, 'Python', 65, 15000),
(105, 'Karan', 20, 'Java', 45, 12000),
(106, 'Simran', 23, 'SQL', 95, 10000);


delimiter //

create procedure checkresult(in p_roll int)
begin
    declare v_name varchar(50);
    declare v_marks int;

    select name, marks
    into v_name, v_marks
    from student
    where roll = p_roll;

    if v_marks >= 40 then
        select v_name as name,
               v_marks as marks,
               'pass' as result;
    else
        select v_name as name,
               v_marks as marks,
               'fail' as result;
    end if;

end //

delimiter ;

call checkresult(105);


delimiter //

create procedure discountfee(in p_roll int)
begin
    declare v_name varchar(50);
    declare v_fee decimal(10,2);
    declare v_discount decimal(10,2);
    declare v_finalfee decimal(10,2);

    select name, fee
    into v_name, v_fee
    from student
    where roll = p_roll;

    if v_fee > 10000 then
        set v_discount = v_fee * 0.10;
    else
        set v_discount = 0;
    end if;

    set v_finalfee = v_fee - v_discount;

    select v_name as name,
           v_fee as original_fee,
           v_discount as discount,
           v_finalfee as final_fee;

end //

delimiter ;

call discountfee(101);
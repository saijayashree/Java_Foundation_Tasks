-- 1. Find employees earning more than 40000
select *
from employee
where salary > 40000;

-- 2. Find employees earning less than the average salary
select *
from employee
where salary < (
    select avg(salary)
    from employee
);

-- 3. Find employees receiving the maximum salary
select *
from employee
where salary = (
    select max(salary)
    from employee
);

-- 4. Find employees receiving the minimum salary
select *
from employee
where salary = (
    select min(salary)
    from employee
);

-- 5. Find employees working in the same department as Amit
select *
from employee
where department = (
    select department
    from employee
    where name = 'Amit'
);

-- 6. Find employees working in departments where salary is greater than 45000
select *
from employee
where department in (
    select department
    from employee
    where salary > 45000
);

-- 7. Find employees whose salary is greater than all HR employees
select *
from employee
where salary > all (
    select salary
    from employee
    where department = 'HR'
);

-- 8. Find employees whose salary is greater than any Sales employee
select *
from employee
where salary > any (
    select salary
    from employee
    where department = 'Sales'
);

-- 9. Find departments having an average salary greater than the company's average salary
select department
from employee
group by department
having avg(salary) > (
    select avg(salary)
    from employee
);

-- 10. Find employees who are not working in the IT department
select *
from employee
where department <> 'IT';
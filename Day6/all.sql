-- 1. Display employee salary rounded to 0 decimal places
select round(salary,0) as rounded_salary
from employee;

-- 2. Display salary rounded to 1 decimal place
select round(salary,1) as rounded_salary
from employee;

-- 3. Display the CEIL value of every employee's salary
select ceil(salary) as ceil_salary
from employee;

-- 4. Display the FLOOR value of every employee's salary
select floor(salary) as floor_salary
from employee;

-- 5. Calculate the absolute difference between salary and bonus
select abs(salary-bonus) as difference
from employee;

-- 6. Calculate the remainder when salary is divided by 1000
select mod(salary,1000) as remainder
from employee;

-- 7. Calculate the square of every employee's age
select pow(age,2) as age_square
from employee;

-- 8. Calculate the square root of employee salary
select sqrt(salary) as salary_sqrt
from employee;

-- 9. Truncate salary to 1 decimal place
select truncate(salary,1) as truncated_salary
from employee;

-- 10. Calculate total salary + bonus for every employee
select salary + bonus as total_salary
from employee;

-- 11. Display all employee names in uppercase
select upper(first_name)
from employee;

-- 12. Display all department names in lowercase
select lower(department)
from employee;

-- 13. Display the length of every employee's first name
select first_name, length(first_name) as name_length
from employee;

-- 14. Display full name by combining first name and last name
select concat(first_name,last_name) as full_name
from employee;

-- 15. Display the first three characters of every employee's name
select left(first_name,3)
from employee;

-- 16. Display the last three characters of every employee's email
select right(email,3)
from employee;

-- 17. Extract the first five characters of every email
select left(email,5)
from employee;

-- 18. Replace gmail.com with company.com in every email
select replace(email,'gmail.com','company.com')
from employee;

-- 19. Display employee names in reverse order
select reverse(first_name)
from employee;

-- 20. Find the position of @ in every employee's email
select locate('@',email)
from employee;

-- 21. Display full names with a space between first and last names
select concat(first_name,' ',last_name) as full_name
from employee;

-- 22. Display the first two characters of every department
select left(department,2)
from employee;

-- 23. Combine employee name and department into one column
select concat(first_name,' - ',department) as employee_department
from employee;

-- 24. Display the first name in uppercase and last name in lowercase
select upper(first_name), lower(last_name)
from employee;

-- 25. Count the characters in every employee's full name
select concat(first_name,' ',last_name) as full_name,
       length(concat(first_name,' ',last_name)) as total_characters
from employee;
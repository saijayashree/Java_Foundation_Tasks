-- display the names of employees working in more than one project
select e.name
from employee e
inner join employee_project ep
on e.emp_id = ep.emp_id
group by e.emp_id, e.name
having count(distinct ep.project_id) > 1;

-- display employees living in the same city as their manager
select name
from employee e
where city = (
    select city
    from employee m
    where m.emp_id = e.manager_id
);
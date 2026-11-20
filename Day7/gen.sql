-- 1. Display patients whose bill amount is greater than the average bill amount of all patients
select *
from patients
where billamount > (
    select avg(billamount)
    from patients
);

-- 2. Display doctors who have never treated any patient
select *
from doctors
where doctorid not in (
    select doctorid
    from treatments
);

-- 3. Find the second-highest salary among doctors using a nested query
select max(salary)
from doctors
where salary < (
    select max(salary)
    from doctors
);

-- 4. Display patients who have received treatment from doctors specializing in Cardiology
select *
from patients
where patientid in (
    select patientid
    from treatments
    where doctorid in (
        select doctorid
        from doctors
        where specialization = 'Cardiology'
    )
);

-- 5. Display doctors whose salary is greater than ALL doctors working in Mumbai
select *
from doctors
where salary > all (
    select salary
    from doctors
    where city = 'Mumbai'
);

-- 6. Display patients whose bill amount is greater than the average bill amount of patients belonging to their own city
select *
from patients p
where billamount > (
    select avg(billamount)
    from patients
    where city = p.city
);

-- 7. Find patients who have never received treatment costing more than 5000
select *
from patients
where patientid not in (
    select patientid
    from treatments
    where treatmentcost > 5000
);

-- 8. Display doctors whose salary is greater than ANY doctor working in Delhi
select *
from doctors
where salary > any (
    select salary
    from doctors
    where city = 'Delhi'
);

-- 9. Find the doctor who has treated the maximum number of patients
select *
from doctors
where doctorid = (
    select doctorid
    from treatments
    group by doctorid
    order by count(patientid) desc
    limit 1
);

-- 10. Display patients whose total treatment cost is greater than the average total treatment cost per patient
select *
from patients
where patientid in (
    select patientid
    from treatments
    group by patientid
    having sum(treatmentcost) >
    (
        select avg(total_cost)
        from (
            select sum(treatmentcost) as total_cost
            from treatments
            group by patientid
        ) t
    )
);
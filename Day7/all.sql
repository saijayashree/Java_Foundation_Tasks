use hospitaldb;

-- 1. display patient names with their treatment details
select p.patient_name, t.treatment_name, t.doctor_name,
t.treatment_cost, t.status
from patients p
inner join treatments t
on p.patient_id = t.patient_id;

-- 2. display all treatments with patient details
select *
from patients p
inner join treatments t
on p.patient_id = t.patient_id;

-- 3. self join - display patient names and the patient who referred them
select p.patient_name as patient_name,
r.patient_name as referred_by
from patients p
left join patients r
on p.referred_by = r.patient_id;

-- 4. cross join - every possible combination of patients and treatments
select p.patient_name, t.treatment_name
from patients p
cross join treatments t;

-- 5. count treatments received by each patient
select p.patient_name,
count(t.treatment_id) as total_treatments
from patients p
join treatments t
on p.patient_id = t.patient_id
group by p.patient_name;

-- 6. diseases having more than 2 patients
select disease,
count(*) as total_patients
from patients
group by disease
having count(*) > 2;

-- 7. patients who received more than 2 treatments
select p.patient_name,
count(t.treatment_id) as total_treatments
from patients p
join treatments t
on p.patient_id = t.patient_id
group by p.patient_name
having count(t.treatment_id) > 2;

-- 8. patients who spent more than 10000
select p.patient_name,
sum(t.treatment_cost) as total_spent
from patients p
join treatments t
on p.patient_id = t.patient_id
group by p.patient_name
having sum(t.treatment_cost) > 10000;

-- 9. doctor with highest revenue
select doctor_name,
sum(treatment_cost) as revenue
from treatments
group by doctor_name
order by revenue desc
limit 1;

-- 10. patients who received both blood test and insulin therapy
select p.patient_name
from patients p
join treatments t
on p.patient_id = t.patient_id
where t.treatment_name in ('Blood Test','Insulin Therapy')
group by p.patient_name
having count(distinct t.treatment_name) = 2;

-- 11. admitted in january 2026 but treated in february 2026
select distinct p.patient_name
from patients p
join treatments t
on p.patient_id = t.patient_id
where month(p.admission_date) = 1
and month(t.treatment_date) = 2
and year(p.admission_date) = 2026
and year(t.treatment_date) = 2026;

-- 12. second highest treatment cost
select distinct treatment_cost
from treatments
order by treatment_cost desc
limit 1,1;

-- 13. top 3 diseases by patient count
select disease,
count(*) as total_patients
from patients
group by disease
order by total_patients desc
limit 3;

-- 14. doctors who treated more than 2 different patients
select doctor_name,
count(distinct patient_id) as patients_treated
from treatments
group by doctor_name
having count(distinct patient_id) > 2;

-- 15. self join - patients who referred at least 2 other patients
select p.patient_name,
count(r.patient_id) as referrals
from patients p
join patients r
on p.patient_id = r.referred_by
group by p.patient_name
having count(r.patient_id) >= 2;
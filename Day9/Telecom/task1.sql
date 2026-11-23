DROP VIEW IF EXISTS vw_prepaid_subscribers;
DROP VIEW IF EXISTS vw_recharge_summary;

create view vw_prepaid_subscribers as
select sub_id, sub_name, balance, plan
from subscribers
where subscriber_type='prepaid';

create view vw_recharge_summary as
select sub_id, sum(amount) as total_recharge
from recharge_history
group by sub_id;

SELECT * FROM vw_prepaid_subscribers;
SELECT * FROM vw_recharge_summary;
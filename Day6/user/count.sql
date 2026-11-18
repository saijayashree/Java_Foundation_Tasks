select substring_index(substring_index(email,'@',-1),'.',1) as domain,
       count(*) as total_users
from users
group by domain;
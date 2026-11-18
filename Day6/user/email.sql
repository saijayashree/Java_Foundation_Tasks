select * from users;

select substring_index(email,'@',1) as user_name
from users;

select left(email, locate('@',email)-1) as user_name
from users;

select substring(email, locate('@',email)+1) as domain
from users;


select substring_index(substring_index(email,'@',-1),'.',1) as domain
from users;


select upper(substring_index(email,'@',1)) as user_name
from users;

select lower(substring_index(email,'@',1)) as user_name
from users;

select email, length(email) as email_length
from users;
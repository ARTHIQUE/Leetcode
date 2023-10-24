select Email
from person 
where email is not null
group by email
having count(*)>1;
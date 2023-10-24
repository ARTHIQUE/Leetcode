select distinct class 
from courses s
   where (select count(*)
            from courses
            where class=s.class)>=5;
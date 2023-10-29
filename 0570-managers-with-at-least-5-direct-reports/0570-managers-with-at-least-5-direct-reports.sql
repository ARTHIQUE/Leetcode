# Write your MySQL query statement below
select name
from employee e1
where (select count(*)
          from
          employee e2
          where  e2.managerid=e1.id)>=5

 
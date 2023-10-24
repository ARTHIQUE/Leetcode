
select project_id,round(avg(experience_years),2)as average_years
from project p
inner join employee e on e.employee_id=p.employee_id
group by p.project_id
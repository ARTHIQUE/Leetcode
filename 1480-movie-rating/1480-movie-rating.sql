(select
name as results
from users 
 join movierating m
on users.user_id=m.user_id
group by m.user_id
order by count(*)desc,users.name asc limit 1)
union all
(select movies.title as results
from movies
 join movierating
on movies.movie_id=movierating.movie_id
where created_at>='2020-02-01' and created_at<'2020-03-01'
group by movierating.movie_id
order by avg(rating) desc,movies.title asc limit 1)

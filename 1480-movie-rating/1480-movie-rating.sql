with cte as(
    select name 
    from users
    join(
    select user_id,count(rating) cnt
    from movierating
    group by 
    user_id) x
    on users.user_id=x.user_id
    order by x.cnt desc,name asc limit 1
),
cte2 as(
select title 
from movies
join(
select movie_id,avg(rating)as avg
from movierating
where created_at >= '2020-02-01' and created_at <= '2020-02-28'
group by movie_id)x3
on movies.movie_id=x3.movie_id
order by x3.avg desc,movies.title asc limit 1
)
SELECT name as results from cte
UNION ALL
SELECT title as results from cte2;
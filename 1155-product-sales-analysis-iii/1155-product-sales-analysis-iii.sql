
select s.product_id,s.year as first_year,s.quantity,s.price
from sales s
join(
select product_id,min(year)as year 
from sales
group by product_id) x
on x.product_id=s.product_id and s.year=x.year

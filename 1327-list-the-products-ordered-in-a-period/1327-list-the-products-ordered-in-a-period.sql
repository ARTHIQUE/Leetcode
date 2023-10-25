select p.product_name,sum(o.unit) as unit
from products p
inner join orders o
on p.product_id=o.product_id
WHERE o.order_date >= '2020-02-01' AND o.order_date <= '2020-02-29' 
group by product_name
having unit>=100
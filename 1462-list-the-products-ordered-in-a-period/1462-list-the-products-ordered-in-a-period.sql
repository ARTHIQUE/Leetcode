select product_name,x.unit
from products 
join
(select product_id,sum(unit) as unit
from orders 
WHERE order_date >= '2020-02-01' AND order_date <= '2020-02-29'
group by product_id) x
on products.product_id=x.product_id
where x.unit>=100



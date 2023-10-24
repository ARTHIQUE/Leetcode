select x.product_name,year,price 
from sales
inner join
(select product_id ,product_name 
from product
) x
on sales.product_id=x.product_id;
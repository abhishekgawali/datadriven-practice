select product_name,category,price, DENSE_RANK() over(partition by category order by price desc) as position 
from products 
where price is not null



select 
user_id,
product_id,
sum(total_amount) as total_revenue
from
  transactions
where quantity >=2 
group by 1,2
order by  1, total_revenue desc

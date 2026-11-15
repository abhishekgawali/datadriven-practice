select amount from (

select amount, sum(amount)
from cloud_costs 
group by 1 order by 2 desc
)
limit 3

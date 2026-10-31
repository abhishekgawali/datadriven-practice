



with quarter3 as ( 
select user_id as region,SUM(total_amount)  as q3
from transactions 
where
  QUARTER(CAST(transaction_date as date))=3
group by 1 

)
,
quarter4 as (
select user_id as region,SUM(total_amount)  as q4
from transactions 
where
  QUARTER(CAST(transaction_date as date))=4
group by 1
)

Select 
  
  q.region as region,
  
  ((q4-q3)/q3)*100.0 as growth_pct

from 
  quarter3 as q
INNER JOIN
  quarter4 as  r
on
  q.region=r.region
  
   

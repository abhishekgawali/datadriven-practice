
Select 
  
  CAST(transaction_date as date) as transaction_date,
  total_amount as net_revenue
from 
  transactions 
where 
  product_id=1001
and
CAST(transaction_date as Date) >= '2026-01-01' 
and
CAST(transaction_date as date) <='2026-04-30'

and
total_amount >0

UNION ALL
  
  
Select 
  
  CAST(transaction_date as date) as transaction_date,
  total_amount as net_revenue
from 
  transactions 
where 
  product_id=1001
and
CAST(transaction_date as Date) >= '2026-01-01' 
and
CAST(transaction_date as date) <='2026-04-30'

and
total_amount <0

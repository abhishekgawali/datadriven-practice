

select
  
  cost_id,
  amount,
  svc_name,
  "Highest Cost"  as cost_type

from 
  cloud_costs

where
  
  amount=(
  select
MAX(amount)
from 
  cloud_costs

)
UNION ALL
  
  Select
  
  cost_id,
  amount,
  svc_name,
  "Lowest Cost" 

from 
  cloud_costs

where
  
  amount=(
  select
MIN(amount)
from 
  cloud_costs

)

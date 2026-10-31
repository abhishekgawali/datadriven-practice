

select 
  
  ink.device_type as device_type,
  ink.user_count as user_count 
from 
  (
SELECT 
  dv.device_type as device_type,
  COUNT(distinct us.user_id) as user_count,
  RANK() OVER(order by COUNT(distinct us.user_id) desc) as rnk

from 
  
  user_sessions  as us
JOIN
  devices as dv 
on
  us.device_id= dv.device_id
GROUP BY 1
) as ink 
where ink.rnk =1

select 
  svc_name, 
  min(uptime)
from 
  svc_health 
group by 1 order by 2 
limit 10

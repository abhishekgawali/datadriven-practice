select 
  svc_name,
  min_uptime
from (
select 
  svc_name, 
  min(uptime) as min_uptime,
  dense_rank() over(order by uptime) as rnk
from 
  svc_health 
group by 1 order by 2 
) as x
where  x.rnk <=10

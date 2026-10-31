
select 
user_id,
COUNT(1) as total_views
from 
page_views 

where 
  
  cast(viewed_at as date) >=CAST('2026-11-29' as date) and cast(viewed_at as date) <=cast('2026-12-28' as date)

group by user_id order by total_views desc

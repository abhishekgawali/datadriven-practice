with date_error as (
select 
  
  Cast(first_at as Date) as err_day,
  count(1) as err_count
from 
  err_tracks
group by 1 
)

select 
  err_day,
  err_count,
  lag(err_count) over(order by err_day),
 err_count-lag(err_count) over(order by err_day)

from date_error

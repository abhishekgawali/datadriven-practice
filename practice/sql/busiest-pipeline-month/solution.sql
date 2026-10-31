
select
 Month(cast(start_at as date)) as month,
count(1)
from data_pipes
where 
  start_at is not null
group by 1 
order by 2 desc limit 1

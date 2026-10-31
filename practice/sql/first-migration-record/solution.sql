
select
  migr_id,
  version,
  status,
  applied,
  `rollback`,
  dur_ms,
  author,
  db_name

from 
  migrations
where 
  migr_id =(

select
  
  min(migr_id)
from 
  migrations
)

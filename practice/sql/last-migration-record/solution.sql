select
  *
from 
  migrations

where
  migr_id =(

select 
  
  max(migr_id) 
from
  migrations
)

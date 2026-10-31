
select
  
  msg_id,
  topic,
  part_key,
  payload,
  produced,
  consumer 

from 
  stream_msgs
where topic= 'user-events'


UNION ALL


select
  
  msg_id,
  topic,
  part_key,
  payload,
  produced,
  consumer
from 
  stream_msgs
where topic= 'user-events'

order by 1 


select 
  CONCAT(svc_name ,':' ,version , ' (deploy #' ,log_id,')') as full_identifier,
  dur_secs
from 
  deploy_logs 
where dur_Secs in(

SELECT
  
  MAX(dur_secs)

from 
  deploy_logs
)

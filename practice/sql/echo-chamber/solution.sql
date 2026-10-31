
select ac1.call_id as call_id_1 , 
ac2.call_id as call_id_2,
ac1.method,
ac1.status
from api_calls as ac1
INNER JOIN 
  api_calls ac2 

on 
  
  ac1.method=ac2.method
and
ac1.status=ac2.status

where
  ac1.call_id <ac2.call_id

order by 4 desc 
limit 20

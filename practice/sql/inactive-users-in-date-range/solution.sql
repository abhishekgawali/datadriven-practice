select 
 u.username
from 
  users u 
left join
  user_sessions us
on
  u.user_id=us.user_id

AND CAST (us.session_start as DATE) >='2026-06-01' 
AND 
 CAST (us.session_start as DATE) <'2026-07-02'  
 
 where us.user_id is null
 order by 1 

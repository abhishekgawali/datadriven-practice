select user_id,
count(1) 
from 
user_sessions
group by 1 
having count(1) >
(select avg(ct) from (select count(1) as ct from 
user_sessions group by user_id ) as t) 
order by 2 desc


select 
  
 Distinct exp1.user_id as user_id1,
  exp2.user_id as  user_id2
from 
  experiments as exp1
INNER JOIN 
  experiments as exp2
on
  exp1.exp_name=exp2.exp_name
  AND
  exp1.variant !=exp2.variant
  AND
  exp1.platform = exp2.platform
  where
  exp1.user_id <exp2.user_id
order by 1,2

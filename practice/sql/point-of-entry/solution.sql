
with sort_event as (select 
  
  user_id,
  event_type,
  ROW_NUMBER() 
   over (
   partition by user_id 
   order by event_timestamp) as rn 
from 
  
  event_data
)
,
first_view as (
select 
  
  user_id 

from 
sort_event

where event_type='page_view'
and rn=1

)

select 
  fv.user_id , count(se.event_id)  as purchase_count
from first_view as fv 
left join 
  event_data as se 

on
  fv.user_id=se.user_id 
and se.event_type='purchase'
group by fv.user_id order by purchase_count desc , fv.user_id
  








-- WITH first_events AS (
--   SELECT
--     user_id,
--     event_type,
--     ROW_NUMBER() OVER (
--       PARTITION BY user_id
--       ORDER BY event_timestamp
--     ) AS rn
--   FROM event_data
-- ),
-- viewer_cohort AS (
--   SELECT
--     user_id
--   FROM first_events
--   WHERE rn = 1
--   AND event_type = 'page_view'
-- )
-- SELECT
--   vc.user_id,
--   COUNT(e.event_id) AS purchase_count
-- FROM viewer_cohort AS vc
-- LEFT JOIN event_data AS e
--   ON vc.user_id = e.user_id
--   AND e.event_type = 'purchase'
-- GROUP BY vc.user_id
-- ORDER BY purchase_count DESC, vc.user_id

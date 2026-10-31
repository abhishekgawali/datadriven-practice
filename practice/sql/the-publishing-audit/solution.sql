select 
  content_id,
  title,
  content_type,
  duration_seconds,
  creator_id,
  publish_date

from 
  content_items

where
  date_format(cast(publish_date as date),'%Y')='2026'

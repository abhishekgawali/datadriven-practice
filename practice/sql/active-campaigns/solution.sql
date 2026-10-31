
select ad_campaign,
count(impression_id) impressions,
sum(revenue) total_revenue,
round(avg(clicked),3)*100 as ctr
from 
  ad_impressions
group by 1 order by 4 desc

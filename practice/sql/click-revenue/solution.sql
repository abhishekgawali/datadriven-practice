
select 
ad_campaign,
sum(revenue) as click_revenue
from ad_impressions
where clicked =1

group by ad_campaign 
having click_revenue >5.0

order by 2 desc

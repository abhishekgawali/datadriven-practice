
with weekly as(
select date(built_at,'weekday 0','-6 days') as weekday,
status
from
ci_builds 
where built_at between '2026-01-01' and '2026-12-31'
and status in (
'success','failed','canceled'
)
)

select weekday,
sum(case when status='success' then 1 else 0 end)  as succes_count,
sum(case when status='failed' then 1 else 0 end)  as failed_count,
sum(case when status='canceled' then 1 else 0 end)  as canceled_count

 from weekly

group by 1 
order by 1

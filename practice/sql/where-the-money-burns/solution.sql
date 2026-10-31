select svc_name, avg(amount) from 
cloud_costs 
group by 1 

having avg(amount) >(select avg(amount) from cloud_costs)

order by 2 desc

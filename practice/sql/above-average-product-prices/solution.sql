


select product_id , min(total_amount) from transactions 

group by 1 
having min(total_amount) >
(select avg(amt) from (select min(total_amount) as amt from 
transactions group by product_id) )
order by 2 desc

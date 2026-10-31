

SELECT 
  
  p.product_name,
  SUM(t.total_amount),
  DENSE_RANK() OVER(order by sum(t.total_amount) desc)
FROM 
  products p 

LEFT JOIN
  transactions t 
on p.product_id =t.product_id
group by 1
order by  2 desc limit 10

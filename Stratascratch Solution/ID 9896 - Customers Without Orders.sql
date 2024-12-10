-- Difficulty Mode: Medium       Platform: MySQL           

-- Link: https://platform.stratascratch.com/coding/9896-customers-without-orders?tabname=question

select Distinct c.first_name
from customers c
left join orders o
on c.id = o.cust_id
where cust_id is NULL
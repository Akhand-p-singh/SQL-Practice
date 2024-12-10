--Difficulty Mode:  Medium              Platform: MySQL   

-- Link: https://platform.stratascratch.com/coding/9915-highest-cost-orders?tabname=question

select c.first_name , sum(total_order_cost) total , o.order_date
from customers c
join orders o
on c.id = o. cust_id
where o.order_date between '2019-02-01' and '2019-05-01'
group by c.first_name, o.order_date
order by total desc
limit 1
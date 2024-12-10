/*  Difficulty Mode: Medium        Platform: MySQL   

Link: https://platform.stratascratch.com/coding/9782-customer-revenue-in-march?code_type=3 */ 

select cust_id, Sum(total_order_cost) as total
from orders
where Month(order_date) = 3
group by cust_id
order by total desc
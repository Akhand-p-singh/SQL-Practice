-- Difficulty Mode: Easy       Platform: MySQL   

-- Link: https://platform.stratascratch.com/coding/2127-sales-revenue?tabname=question

select sum(order_total) total_revenue
from amazon_sales
where order_date like '%2021'
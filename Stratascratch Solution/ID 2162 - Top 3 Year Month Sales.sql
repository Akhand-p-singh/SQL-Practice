/*  ID 2162 - Top 3 Year Month Sales

Difficulty Mode: Medium      Platform: PostgreSQL          

Link: https://platform.stratascratch.com/coding/2162-top-3-year-month-sales?code_type=1 */


SELECT to_char(order_date, 'YYYY-MM') as sales, sum(order_value) as total_sales
from fct_customer_sales
group by sales
order by total_sales desc
limit 3
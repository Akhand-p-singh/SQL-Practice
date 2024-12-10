-- 1. ID 2138  - Top 3 Restaurants of 2022

-- Difficulty Mode: Medium       Platform: MySQL   

-- Remark: Used of RANK function. When you want top 3 but row no 3 and 4 have same value.

-- Link: https://platform.stratascratch.com/coding/2138-top-3-restaurants-of-2022?code_type=3

WITH CTE AS
(
select restaurant_id,  sum(sales_amount) as sales_amount,
RANK() OVER(order by  sum(sales_amount) desc) as rnk
from delivery_orders do
join order_value_dd ov
on do.delivery_id = ov.delivery_id
WHERE date_format( order_placed_time, "%Y") = 2022
group by  restaurant_id
)
SELECT  restaurant_id, sales_amount
from CTE
WHERE rnk <= 3
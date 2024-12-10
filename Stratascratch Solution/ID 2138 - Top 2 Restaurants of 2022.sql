/* ID 2138 - Top 2 Restaurants of 2022 

Difficulty Mode: Medium      Platform: PostgreSQL          

Link: https://platform.stratascratch.com/coding/2138-top-3-restaurants-of-2022?code_type=1 */


with cte as (
select restaurant_id, sum(sales_amount) sales,
Dense_rank() over(order by sum(sales_amount) desc ) rnk
from order_value
join delivery_orders
on order_value.delivery_id = delivery_orders.delivery_id
where actual_delivery_time is not null  and extract(year from order_placed_time) = 2022
group by restaurant_id
order by sales desc
)
SELECT restaurant_id, sales
from cte
where rnk <3
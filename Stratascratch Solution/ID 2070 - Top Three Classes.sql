/* ID 2070 - Top Three Classes

Difficulty Mode: Medium      Platform: PostgreSQL          

Link: https://platform.stratascratch.com/coding/2070-top-three-classes?code_type=1 */


with cte as (
select product_class, sum(units_sold), Dense_Rank() over(order by  count(units_sold) desc ) rnk
from online_products 
join online_orders  
on online_products.product_id = online_orders.product_id
group by product_class 
)
select product_class 
from ct
where rnk <= 3
limit 3
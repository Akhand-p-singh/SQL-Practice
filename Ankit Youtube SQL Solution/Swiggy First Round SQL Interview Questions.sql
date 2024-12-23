-- Link : https://www.youtube.com/watch?v=u8AKf4qvqhU&t=470s


-- Find out Delivery Partner wise delayed orders count(delay means - the order which took more than predicted time to deliver the order).
-- Write a SQL query to calculate the number of delayed orders for each delivery partner. An order is considered delayed if the actual delivery
-- time exceeds the predicted delivery time.

with cte as (
Select  del_partner, predicted_time, Datediff(Minute, order_time ,  deliver_time ) del_time
from swiggy_orders 
where Datediff(Minute, order_time ,  deliver_time ) > predicted_time )

Select del_partner, COUNT(*) total_time_order_delay
from cte
group by del_partner



-- On which date did the 3rd highest sale of product 4 take place in terms of value (sale: qty sold; Value: qty sold * price of product)?

with  cte as (
select order_date, sum(order_value) order_total
from sales_data
where product_id = 4
group by order_date ),

cte2 as (
Select order_date, DENSE_RANK() over( order by order_total desc) rnk
from cte)

select order_date
from cte2
where rnk =2
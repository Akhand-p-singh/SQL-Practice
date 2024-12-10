-- output - order_date, new_customer_count, repeat_customer_count
select * from customer_orders

with first_visit as (
select customer_id , MIN(order_date) as first_time_order
from customer_orders
group by customer_id ),


cte2 as (
select co.*, fv.first_time_order,
CASE when order_date = first_time_order then 1 else 0 end first_visit_flag,
			CASE when order_date != first_time_order then 1 else 0 end  repeat_visit_flag
from customer_orders co 
inner join first_visit  fv
on co.customer_id = fv.customer_id 
 )

select order_date, SUM(first_visit_flag) as no_of_new_customers, SUM(repeat_visit_flag) as no_of_repeat_customer
from cte2
group by order_date
-- Source: https://www.youtube.com/watch?v=o76mh0bSHxs
-- Find moving average of 3 months
-- output Month, Monthly_sales, moving_avg_sales 

Select * from customers1
select * from orders

with cte as (
SELECT FORMAT(order_date, 'yyyy-MM') AS YearMonth, sum(amount) sales
--,AVG(sum(amount)) over(partition by FORMAT(order_date, 'yyyy-MM') 
FROM orders
group by FORMAT(order_date, 'yyyy-MM') 
)

Select Yearmonth, sales,
AVG(sales) OVER (ORDER BY Yearmonth ROWS BETWEEN 2 preceding and current row) moving_avg

from cte
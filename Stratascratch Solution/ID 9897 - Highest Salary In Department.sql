/*  Difficulty Mode: Medium       Platform: MySQL   

Link: https://platform.stratascratch.com/coding/9897-highest-salary-in-department?code_type=3 */

With cte as (
select department, first_name,salary, Row_number() over(Partition by department order by salary desc) rnk
from employee
)
Select department, first_name,salary
from cte
where rnk = 1
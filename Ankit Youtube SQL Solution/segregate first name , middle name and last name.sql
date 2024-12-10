-- select * from customers


-- remove space then find no of spaces
-- find 1st space position then 2nd space position
-- now, 

with cte as (
Select *, LEN(customer_name) - len(REPLACE(customer_name,' ', '')) as no_of_spaces,
CHARINDEX(' ', customer_name) as first_space_position,
CHARINDEX(' ', customer_name, CHARINDEX(' ', customer_name) + 1) as second_space_position
from customers )

select *, Case when no_of_spaces = 0 then customer_name 
else LEFT(customer_name, CHARINDEX(' ', customer_name) - 1) end as first_name,

case when no_of_spaces <= 1 then null
else  SUBSTRING(customer_name, first_space_position + 1, second_space_position - first_space_position - 1) end as middle_name,

case when no_of_spaces = 0 then null else REVERSE(LEFT(REVERSE(customer_name), CHARINDEX(' ', REVERSE(customer_name)) - 1)) end AS last_name

from cte
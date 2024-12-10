/* ID 10008 - Sum Of Numbers

Difficulty Mode: Medium      Platform: PostgreSQL          

Link: https://platform.stratascratch.com/coding/10008-sum-of-numbers?code_type=1 */


select sum(number)
from transportation_numbers
where index < 5

union all

select sum(number)
from transportation_numbers
where index > 5
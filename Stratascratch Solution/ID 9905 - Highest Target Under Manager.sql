-- Difficulty Mode: Medium       Platform: MySQL          

-- Link: https://platform.stratascratch.com/coding/9905-highest-target-under-manager?code_type=3

WITH Ranking AS
( select first_name, target, Dense_rank() over(order by target desc) as rnk
from salesforce_employees
where manager_id = 13
order by target desc
)
SELECT first_name, target
from Ranking
where rnk = 1
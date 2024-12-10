-- Difficulty Mode: Medium       Platform: MySQL          

-- Link: https://platform.stratascratch.com/coding/9904-highest-target?code_type=3

With ranking as
( select first_name, target, bonus, Dense_rank() over(order by target desc) as rnk
from employee
group by first_name
order by target desc
)
SELECT first_name, target, bonus
from ranking
where rnk = 1
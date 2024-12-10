--Difficulty Mode: Medium       Platform: PostgreSQL        

-- Link: https://platform.stratascratch.com/coding/10064-highest-energy-consumption?code_type=1

WITH enery_cons
As
(
SELECT * from fb_eu_energy
UNION
SELECT * from fb_asia_energy
UNION
SELECT * from fb_na_energy
),
total_cons2
AS
(
SELECT date, sum( consumption) as total_consumption, RANK() OVER(order by sum(consumption) desc) as rnk
from enery_cons
group by date
)
SELECT date, total_consumption
from total_cons2
where rnk = 1
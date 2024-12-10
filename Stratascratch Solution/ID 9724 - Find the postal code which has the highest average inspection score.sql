-- Difficulty Mode: Medium       Platform: MySQL          

-- Link: https://platform.stratascratch.com/coding/9724-find-the-postal-code-which-has-the-highest-average-inspection-score?code_type=3

WITH RANKING AS 
( SELECT business_postal_code, avg(inspection_score) as score, 
DENSE_RANK() OVER(Order by avg(inspection_score) desc ) as rnk
from sf_restaurant_health_violations
group by business_postal_code
)
SELECT business_postal_code, score
from RANKING 
where rnk = 1
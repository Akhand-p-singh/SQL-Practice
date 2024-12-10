-- Difficulty Mode: Easy       Platform: MySQL

-- Link: https://platform.stratascratch.com/coding/2142-third-heaviest-package?tabname=question

SELECT shipment_id, weight
from
     (
SELECT shipment_id, sum(weight) as weight, dense_rank() Over( order by sum(weight) desc ) as rnk
from amazon_shipment
group by shipment_id
) d
where rnk = 3
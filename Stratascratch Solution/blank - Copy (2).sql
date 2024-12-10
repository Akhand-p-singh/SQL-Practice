-- 1. ID 10043  - Median Price Of Wines

-- Difficulty Mode: hard       Platform: PostgreSQl   

-- Link: https://platform.stratascratch.com/coding/10043-median-price-of-wines?code_type=1

select distinct variety as variety, percentile_cont(0.5) within group(order by price) as median_price

from (
select  variety, price
from winemag_p1
union all 
select  variety, price
from winemag_p2 ) c
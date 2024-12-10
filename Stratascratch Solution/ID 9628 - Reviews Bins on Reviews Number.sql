-- Difficulty Mode: Medium       Platform: MySQL          

-- Link: https://platform.stratascratch.com/coding/9628-reviews-bins-on-reviews-number?code_type=3

WITH CAT AS
(
select
sum(number_of_reviews),
price,
CASE WHEN sum(number_of_reviews) = 0 then 'NO'
WHEN sum(number_of_reviews) between 1 and 5  then 'FEW'
WHEN sum(number_of_reviews) between 6 and 15  then 'SOME'
WHEN sum(number_of_reviews) between 14 and 40  then 'MANY'
WHEN sum(number_of_reviews) > 40  then 'A LOT'
END AS category
from airbnb_search_details
group by id
)
SELECT category, price
from CAT
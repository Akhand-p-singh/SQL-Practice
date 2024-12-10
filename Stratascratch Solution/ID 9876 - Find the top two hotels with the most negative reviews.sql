/* ID 9876 - Find the top two hotels with the most negative reviews

Difficulty Mode: Medium      Platform: PostgreSQL        

Link: https://platform.stratascratch.com/coding/9876-find-the-top-ten-hotels-with-the-most-negative-reviews-in-summer-june-aug?code_type=1 */


select hotel_name,  count(negative_review) total_negative_review
from hotel_reviews
where negative_review != 'No Negative'
group by hotel_name
order by total_negative_review desc
limit 2
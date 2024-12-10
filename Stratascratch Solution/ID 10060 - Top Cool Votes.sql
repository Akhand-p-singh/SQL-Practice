-- Difficulty Mode:  Medium              Platform: MySQL   

-- Link: https://platform.stratascratch.com/coding/10060-top-cool-votes?tabname=question

select business_name, review_text,  sum(cool)
from yelp_reviews
group by business_name
order by sum(cool) desc
limit 2
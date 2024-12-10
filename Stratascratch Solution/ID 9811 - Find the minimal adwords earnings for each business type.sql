/* ID 9811 - Find the minimal adwords earnings for each business type

Difficulty Mode: Medium      Platform: PostgreSQL        

Link: https://platform.stratascratch.com/coding/9811-find-the-minimal-adwords-earnings-for-each-business-type?code_type=1 */ 


select business_type, min(adwords_earnings)
from google_adwords_earnings
group by business_type
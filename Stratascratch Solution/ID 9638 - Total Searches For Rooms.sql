/* ID 9638 - Total Searches For Rooms

Difficulty Mode: Medium      Platform: PostgreSQL        

Link: https://platform.stratascratch.com/coding/9638-total-searches-for-rooms?code_type=1 */


select city,
sum(case when room_type = 'Entire home/apt' then 1 else 0 end) as apartment,
sum(case when room_type = 'Private room' then 1 else 0 end) as private,
sum(case when room_type = 'Shared room' then 1 else 0 end) as shared
from airbnb_search_details
group by city
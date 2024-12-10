/* Difficulty Mode:  Medium       **Platform: MySQL   

Link:  https://platform.stratascratch.com/coding/2061-users-with-many-searches?tabname=question */

With top_user AS
(
SELECT user_id, count(search_id) as searches
FROM fb_searches
where date_format(date, '%Y-%m') = '2021-08'
group by user_id
having searches > 5
)
Select count(user_id)
from top_user
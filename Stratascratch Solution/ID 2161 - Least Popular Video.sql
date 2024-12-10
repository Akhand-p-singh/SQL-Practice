/* ID 2161 - Least Popular Video

Difficulty Mode:  Medium      Platform: PostgreSQL          

Link: https://platform.stratascratch.com/coding/2161-least-popular-video?code_type=1 */

with cte as (
select video_id, count(distinct user_id), dense_rank() over(order by count(distinct user_id) ) rnk
from videos_watched
group by video_id
)
Select video_id
from cte
where rnk = 1
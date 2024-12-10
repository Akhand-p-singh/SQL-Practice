/* Difficulty Mode:  Medium       **Platform: PostgreeSQL  

Link: https://platform.stratascratch.com/coding/2065-time-from-10th-runner?code_type=1 */


With chris_net_time as ( select net_time 
from marathon_male
where person_name = 'Chris Doe' ),

top_10 as (
SELECT Distinct net_time from 
(
select *, Dense_Rank() over(order by net_time ) rnk
from marathon_male ) f
where rnk = 10
)

Select abs(chris_net_time.net_time - top_10.net_time) diff
from top_10
cross join chris_net_time

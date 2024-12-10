with cte as (select *, 
		LAG(event_time, 1, event_time) over(partition by userid order by event_time) as prv_time,
		abs(DATEDIFF(MINUTE, event_time, LAG(event_time, 1, event_time) over(partition by userid order by event_time))) time_diff,
	case   when ABS(DATEDIFF(MINUTE, LAG(event_time, 1, event_time) over(partition by userid order by event_time), event_time)) <=30
		then 0 
		else 1
		end as flag
from events
)
, cte2 as (
select *, sum(flag) over(partition by userid order by event_time) grp
from cte )

select userid, (grp + 1) as session_id, MIN(event_time)as start_time, MAX(event_time) end_time, COUNT(*) as events, DATEDIFF(minute, MIN(event_time) , MAX(event_time)) time_diff
from cte2
group by userid, grp
order by userid, grp






select * from events
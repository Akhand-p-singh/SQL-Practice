-- write a sql to find out callers whose first and last call was to the same person on a given day
select * from phonelog


WITH cte AS (SELECT Callerid, Recipientid, CAST(Datecalled AS DATE) as Datecalled
FROM phonelog),
cte2 as (
select *, 
		first_value(recipientid) OVER(PARTITION BY Datecalled ORDER BY Datecalled) first_call,
		last_value(recipientid) OVER(PARTITION BY Datecalled ORDER BY Datecalled) last_call
from cte
)
select callerid, datecalled, max(first_call) AS Recipientid
from cte2
where first_call = last_call 
group by callerid, datecalled


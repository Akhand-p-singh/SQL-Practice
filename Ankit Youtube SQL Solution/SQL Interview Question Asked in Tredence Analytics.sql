-- Find free consecutive seats

with cte as (
SELECT * , ROW_Number() over(order by seat_id asc ) number, seat_id - ROW_Number() over(order by seat_id asc ) as grp
from cinema
where free = 1
)

select seat_id from (
select *, COUNT(*) over(partition by grp) cnt
from cte ) S
where cnt >1

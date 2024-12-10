--  ID 2136  - Customer Tracking

-- Difficulty Mode: Hard       Platform: PostgreSQL   

-- Link:  https://platform.stratascratch.com/coding/2136-customer-tracking?code_type=1


with time_session as (
select cust_id,state, timestamp as start_time, lag(timestamp, -1) over(partition by cust_id order by timestamp) end_time
from cust_tracking
),

time_diff as (
select *, ( cast(end_time as time) -  cast(start_time as time) )/3600 as hrs
from time_session )

select cust_id, sum(hrs)
from time_diff
where state = 1
group by cust_id
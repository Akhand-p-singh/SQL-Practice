/* ID 2026 - Bottom 2 Companies By Mobile Usage

Difficulty Mode: Medium      Platform: PostgreSQL        

Link: https://platform.stratascratch.com/coding/2026-bottom-2-companies-by-mobile-usage?code_type=1 */


With rnk as ( 
select customer_id , count(event_id) cnt , dense_rank() over(order by count(event_id) ) cont
from fact_events
where client_id = 'mobile'
group by customer_id
)

Select customer_id, cnt as events
from rnk 
where cont <=2
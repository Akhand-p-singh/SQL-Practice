
/* https://datalemur.com/questions/off-topic-maps-ugc 

Dificulty: Medium
 
*/


With cte 
as 
(
SELECT place_category, count(mur.content_id) total, rank() over(order by count(mur.content_id) desc) rnk
from place_info pi
join maps_ugc_review mur
on pi.place_id = mur.place_id
where lower(content_tag) = 'off-topic'
group by place_category
order by total DESC
)
Select place_category
from cte 
where rnk = 1

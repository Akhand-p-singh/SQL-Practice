select * from city_distance



select distance,source,destination from (
select *, rank() over(partition by distance order by source desc ) as rnk from city_distance ) a 
where rnk = 1
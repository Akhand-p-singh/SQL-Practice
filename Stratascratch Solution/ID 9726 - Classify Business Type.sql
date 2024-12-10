/*  Difficulty Mode: Medium       Platform: MySQL   

Link: https://platform.stratascratch.com/coding/9726-classify-business-type?code_type=3 */

select
distinct business_name,
case
when business_name like '%restaurant%' then 'restaurant'
when business_name like '%cafe%' then 'cafe'
when business_name like '%café%' then 'cafe'
when business_name like '%coffee%' then 'cafe'
when business_name like '%School%' then 'school'
else 'other'
end as classification
from sf_restaurant_health_violations
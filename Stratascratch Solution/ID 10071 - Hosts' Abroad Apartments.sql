/* ID 10071 - Hosts' Abroad Apartments

**Difficulty Mode:** Medium      **Platform:** PostgreSQL        

Link: https://platform.stratascratch.com/coding/10071-hosts-abroad-apartments?code_type=1 */

Select count( distinct aa.host_id)
from airbnb_hosts ah
join airbnb_apartments aa
on ah.host_id = aa.host_id
where ah.nationality != aa.country
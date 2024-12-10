/* ID 10051 - **Find the number of open businesses**

**Difficulty Mode:** Easy      **Platform:** PostgreSQL        

Link: https://platform.stratascratch.com/coding/10051-find-the-number-of-open-businesses?code_type=1 */

select count(*)
from yelp_business
where is_open = 1
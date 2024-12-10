/* ID 9927 - Libraries With Highest Checkouts

Difficulty Mode: Medium      Platform: PostgreSQL        

Link: https://platform.stratascratch.com/coding/9927-libraries-with-highest-checkouts/solutions?code_type=1 */


SELECT 
    year_patron_registered, 
    home_library_definition, 
    max(total_checkouts)  max_total_checkouts
from library_usage
where 
    circulation_active_month = 'April' AND 
    year_patron_registered = 2015 AND 
    age_range = '65 to 74 years'
GROUP BY 
    year_patron_registered, home_library_definition
ORDER BY
    max_total_checkouts DESC
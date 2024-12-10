/* Difficulty Mode: Medium       Platform: MySQL   

Link: https://platform.stratascratch.com/coding/2116-shipped-by-speedy-express?code_type=3 */ 

SELECT Count(order_id)
from shopify_orders  so
join shopify_carriers  sc
on so.carrier_id = sc.id
where sc.name = "Speedy Express"
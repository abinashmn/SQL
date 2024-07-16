select product_id,
		sales,
		rating
from public.pet_supplies
where animal in ('Cat','Dog')
	and repeat_purchase = 1
--The data is ordered by Sales descending because it'll be easier for the viewer to recognise the popular products immediately. 
order by sales desc

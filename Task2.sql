select animal,
		repeat_purchase,
		round(avg(sales)) avg_sales,
		round(min(sales)) min_sales,
		round(max(sales)) max_sales
from public.pet_supplies
group by animal,repeat_purchase
order by animal,repeat_purchase

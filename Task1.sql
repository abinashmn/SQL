--Creating a CTE with said changes for reusability
with pet_supp as(
select product_id,
		replace(category,'-','Unknown') as category,
		animal,
--The values of Size column are not uniform in terms of upper case. Hence using initcap()
		initcap(size),
--Price column does not have nulls but this word instead.
		case when price='unlisted' then 0 else price::numeric end as price,
		sales,
		case when rating is null then 0 else rating end as rating,
		repeat_purchase
from public.pet_supplies)

select *
from pet_supp;

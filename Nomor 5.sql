select *
from Orders
where 
	(purchase_amount < 100) or 
	(order_date < '2022-08-25' and customer_id > 2001)
;



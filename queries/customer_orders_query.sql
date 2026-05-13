select *,
       row_number() over(partition by order_number, order_total,order_date order by order_date) as row_num
from customer_orders_table
where order_number is null 
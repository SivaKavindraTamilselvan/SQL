use ecommerce;

drop procedure if exists GetSales;

drop function if exists calculateDiscount;

DELIMITER $$

create procedure GetSales(
in start_date date,
in end_date date
)
begin
select sum(p.Price) as total_sales
from orders o
join product p
on p.product_id = o.product_id
where o.created_at between start_date and end_date;
end $$


create function calculateDiscount(salary decimal(10,2))
returns decimal(10,2)
deterministic
begin
declare discount decimal(10,2);
if (salary>=20000) then 
set discount = salary * 0.20;
elseif (salary>=10000) then
set discount = salary * 0.10;
else
set discount = 0;
end if;
return discount;
end $$;

DELIMITER ;

select * from orders;

call GetSales('2026-04-01',CURDATE());

select price,calculateDiscount(price) as discounted_price from product;
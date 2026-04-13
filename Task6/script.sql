use ecommerce;

show tables;

select * from orders;

update orders
set created_at = DATE_SUB(CURDATE(),INTERVAL 60 DAY)
where order_id=1;

select * from orders 
where created_at > DATE_SUB(CURDATE(),INTERVAL 30 DAY);

select order_id,product_id,customer_id, DATE_FORMAT(created_at,'%Y %M %D') from orders 
where created_at > DATE_SUB(CURDATE(),INTERVAL 30 DAY);

select order_id,product_id,customer_id, DATE_FORMAT(created_at,'%D/%m/%Y') from orders 
where created_at > DATE_SUB(CURDATE(),INTERVAL 30 DAY);
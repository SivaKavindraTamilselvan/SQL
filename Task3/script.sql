use ecommerce;

select * from product;

select count(*) as total_products from product;

select sum(Price) as total_cost from product; 

select count(*) as no_of_employees, Department from Employees group by Department;

select count(*) as no_of_employees, Department from Employees group by Department having no_of_employees>2;
use ecommerce;

show tables;

alter table employees
add salary int;

select * from employees;

update employees
set salary=50000
where Employee_ID=1 or Employee_ID=5;

update employees
set salary=65000
where Employee_ID=2 or Employee_ID=4;

update employees
set salary=105000
where Employee_ID=3 or Employee_ID=8;

update employees
set salary=10500
where Employee_ID=6 or Employee_ID=7;

update employees
set salary=75500
where Employee_ID=10 or Employee_ID=9;

update employees
set salary=85500
where Employee_ID=12;

select * from employees where salary>(select avg(salary) from employees);

select Employee_Name,salary from employees e
where salary>(select avg(salary) from employees where Department=e.Department);

select Employee_Name,salary,Department,(select avg(salary)from employees where Department=e.Department) as avg_salary from employees e
where salary>(select avg(salary) from employees where Department=e.Department);

select avg(salary),Department from employees
group by Department;
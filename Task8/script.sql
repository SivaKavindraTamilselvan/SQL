use ecommerce;

select avg(salary),Department from employees
group by Department;

select *,(select avg(salary) from employees group by Department having department = e.department) as avg_salary from employees e
where e.salary>(select avg(salary) from employees
group by Department having department = e.department);

select *,(select avg(salary) from employees where department = e.department) as avg_salary from employees e
where e.salary>(select avg(salary) from employees
group by Department having department = e.department);

with avg_salary_by_department as (
select avg(salary) as salary ,Department from employees
group by Department)
select * from avg_salary_by_department;

with avg_salary_by_department as (
select avg(salary) as salary ,Department from employees
group by Department)
select * from employees e
join avg_salary_by_department a
on e.department = a.department
where e.salary>a.salary;

alter table employees
add levels int;

update employees
set levels = case
when salary>=80000 then 1
when salary>=50000 then 2
when salary>=3000 then 3
when salary>=10000 then 4
else 5
end
where Employee_ID >0;

select * from employees;

alter table employees
drop column levels;

alter table employees
add Manager_ID int;

SET SQL_SAFE_UPDATES = 0;

update employees
set Manager_ID = 3
where Department = "Sales";

update employees
set Manager_ID = 7
where Department = "Technical";

update employees
set Manager_ID = 2
where Department = "Support";

update employees
set Manager_ID = 5
where Department = "Management";

update employees
set Manager_ID = 5
where Manager_ID is null;

update employees
set Manager_ID = null
where Employee_ID=5;

with recursive emp_tree as(
select Employee_ID,Employee_Name,Manager_ID,1 as levels
from employees where Manager_ID is null
union all
select e.Employee_ID,e.Employee_Name,e.Manager_ID,et.levels + 1
from employees e join emp_tree et
on e.Manager_ID = et.Employee_ID)
select * from emp_tree order by levels;

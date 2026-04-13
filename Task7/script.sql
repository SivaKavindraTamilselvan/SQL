use ecommerce;

select * from employees;

select Employee_ID,Employee_Name,salary from employees order by salary DESC;

select Employee_ID,Employee_Name,salary,ROW_NUMBER() OVER(order by salary desc)as row_num from employees;

select Employee_ID,Employee_Name,salary,RANK() OVER(order by salary desc)as row_num from employees;

select Employee_ID,Employee_Name,salary,DENSE_RANK() OVER(order by salary desc)as row_num from employees;

select * from(
select Employee_ID,Employee_Name,salary,DENSE_RANK() OVER(order by salary desc)as row_num from employees)
as subquery where row_num<=3;

select Employee_ID,Employee_Name,salary,Department,ROW_NUMBER() OVER(
partition by Department
order by salary desc 
)as row_num from employees;

select Employee_ID,Employee_Name,salary,Department,LEAD(salary) OVER(
order by salary desc 
)as after_salary from employees;

select Employee_ID,Employee_Name,salary,Department,LAG(salary) OVER(
order by salary desc 
)as previous_salary from employees;

select Employee_ID,Employee_Name,salary,Department,salary-LEAD(salary) OVER(
order by salary desc 
)as salary_difference from employees;

select Employee_ID,Employee_Name,salary,Department,salary-LEAD(salary) OVER(
partition by Department
order by salary desc 
)as salary_difference from employees;

select Employee_ID,Employee_Name,salary,Department,salary- 
IFNULL(LEAD(salary) OVER(
partition by Department
order by salary desc),0)as salary_difference from employees;
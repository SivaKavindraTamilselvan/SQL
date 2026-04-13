use ecommerce;
show tables;

create table Employees(
Employee_ID int primary key auto_increment,
Employee_Name varchar(100) not null,
Degree varchar(100),
Department varchar(100) not null,
City varchar(100),
Phone_Number varchar(100) not null,
Address text);

insert into Employees(Employee_Name,Degree,Department,City,Phone_Number,Address) values
("Siva Kavindra","BE","Sales","Erode","9442378188","83A/1,Vinayagar Kovil Street 1,Ganga Nagar,Moolapalayam"),
("Kavindra","BE","Technical","Erode","9489698188","Thangam Nagar,Erode"),
("Siva","MBA","Management","Coimbatore","9443498188","Hopes College");

select * from Employees;

select * from Product;

select * from Employees where Department = 'Sales';

INSERT INTO Employees 
(Employee_Name, Degree, Department, City, Phone_Number, Address) 
VALUES
('Arun', 'B.Tech', 'Technical', 'Chennai', '9876543210', 'Anna Nagar, Chennai'),
('Priya', 'MBA', 'HR', 'Bangalore', '9123456780', 'Bangalore'),
('Rahul', 'B.Com', 'Finance', 'Hyderabad', '9012345678', 'Hyderabad'),
('Meena', 'MCA', 'IT', 'Madurai', '9898765432', 'Madurai'),
('Vignesh', 'Diploma', 'Production', 'Salem', '9789012345', 'Salem'),
('Anita Joseph', 'MBA', 'Marketing', 'Kochi', '9345678901', 'Kochi'),
('Karthik Raj', 'BE', 'Technical', 'Trichy', '9654321870', 'Srirangam, Trichy'),
('Sneha', 'B.Sc', 'Support', 'Vijayawada', '9567890123', 'Vijayawada'),
('Manoj', 'MBA', 'Sales', 'Delhi', '9871203456', 'Delhi'),
('Divya', 'M.Tech', 'Sales', 'Pune', '9988776655', 'Pune');

select * from Employees where Department='Sales' order by Employee_Name;

select * from Employees where (Department='Sales' or Department="Support") and (City="Erode" or City="Delhi") order by Employee_Name;
create database Ecommerce;
use Ecommerce;

show databases;

create table Product(
Product_ID int primary key auto_increment,
Product_Name varchar(100) unique,
Product_Description text not null,
Price decimal(10,2) not null,
Quantity int default 0,
Product_Maker varchar(100) not null,
Created_At timestamp default current_timestamp
);

insert into Product(Product_Name,Product_Description,Price,Quantity,Product_Maker) values
("Iphone 15","Apple smartphone with A16 chip",80000.00,10,"Apple"),
("Samsung Galaxy S23","Flagship Android phone",70000.00,15,"Samsung"),
("Nike Running Shoe","Comfortable sports shoes",5000.00,3,"Nike"),
("HP Victus Gamming Laptop","Gamming Laptop",70500.00,2,"HP");

select * from Product;
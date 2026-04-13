use ecommerce;
show tables;
create table Customer(
customer_id int primary key auto_increment,
customer_name varchar(100),
city varchar(100),
address text,
phone_number varchar(10) unique,
email varchar(100) unique
);
insert into Customer(customer_name,city,address,phone_number,email) values
("siva","erode","ganga nagar,moolapalyam","9442378188","sivakavindra@gmail.com"),
("kavindra","erode","thindal","9489698188","kavindra@gmail.com");

select * from Customer;

create table Orders(
order_id int primary key auto_increment,
product_id int,
customer_id int,
created_at timestamp default current_timestamp,
foreign key (product_id) references Product(Product_id));

alter table Orders add foreign key(customer_id) references Customer(customer_id);

insert into Orders(product_id,customer_id) values
(1,1),
(2,1),
(3,2);

select * from Orders;

SELECT * FROM Customer c LEFT JOIN Orders o ON o.customer_id = c.customer_id;
create database google;
use google;

create table user_demographics(
User_id int primary key,
Age int,
Gender varchar(50)
);

create table product_sales(
Product_id int primary key,
product_name varchar(50),
category varchar(50),
Quantity_sold int
);

Create table Customer_feedback(
user_id int,
Feedback_id int primary key,
product_id int,
foreign key(user_id) references user_demographics(user_id),
foreign key (Product_id) references product_sales(Product_id)
);

create table Inventory_levels(
product_id int,
feedback_id int,
Inventory_id int primary key,
product_name int,
Stock_name varchar (50),
foreign key (Product_id) references product_sales(Product_id),
foreign key (Feedback_id) references Customer_feedback(Feedback_id)
);

create table marketing_campaigns(
Campaign_id int primary key,
Inventory_id int,
Product_id int,
Feedback_id int,
foreign key (Product_id) references product_sales(Product_id),
foreign key (Feedback_id) references Customer_feedback(Feedback_id),
foreign key (Inventory_id) references Inventory_levels(Inventory_id)
);

create table web_analytics(
page_views int primary key,
user_id int,
product_id int,
Feedback_id int,
Inventory_id int,
foreign key(user_id) references user_demographics(user_id),
foreign key (Product_id) references product_sales(Product_id),
foreign key (Feedback_id) references Customer_feedback(Feedback_id),
foreign key (Inventory_id) references Inventory_levels(Inventory_id)
);



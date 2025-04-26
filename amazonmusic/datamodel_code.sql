create database music;
create schema amazon;

--Fact Table

create or replace table Orders(
order_id int primary key,
order_date date,
order_amount decimal(20,4),
order_mode string,
customer_id int,
booking_id int,
author_id int,
reviewer_id int,
foreign key (customer_id) references customers(customer_id),
foreign key (booking_id) references bookings(booking_id),
foreign key (author_id) references authors(author_id),
foreign key (customer_id) references reviews(reviewer_id)
);

--Dimension Tables

create or replace table bookings(
booking_id int primary key,
book_name string,
price decimal(20,4)
);

create or replace table authors(
author_id int primary key,
author_name string
);

create or replace table customers(
customer_id int primary key,
customer_name string,
customer_place string
);

create or replace table reviews(
reviewer_id int primary key,
ratings int,
reviews string
);


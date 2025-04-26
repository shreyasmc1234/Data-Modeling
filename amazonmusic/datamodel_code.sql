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
foreign key (reviewer_id) references reviews(reviewer_id)
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














-- Insert Data into customers table
INSERT INTO customers (customer_id, customer_name, customer_place) VALUES
(1, 'Winston', 'New York'),
(2, 'Sally', 'California'),
(3, 'Jonathan', 'Texas'),
(4, 'Anna', 'Florida'),
(5, 'David', 'Nevada');

-- Insert Data into bookings table
INSERT INTO bookings (booking_id, book_name, price) VALUES
(1, 'The Silent Sea', 15.99),
(2, 'Breaking Dawn', 10.99),
(3, 'The Great Gatsby', 12.49),
(4, '1984', 9.99),
(5, 'To Kill a Mockingbird', 8.99);

-- Insert Data into authors table
INSERT INTO authors (author_id, author_name) VALUES
(1, 'Arthur Clarke'),
(2, 'Stephenie Meyer'),
(3, 'F. Scott Fitzgerald'),
(4, 'George Orwell'),
(5, 'Harper Lee');

-- Insert Data into reviews table
INSERT INTO reviews (reviewer_id, ratings, reviews) VALUES
(1, 5, 'Amazing book, a must-read for science fiction fans!'),
(2, 4, 'Great storyline, but the ending felt a bit rushed.'),
(3, 5, 'Absolutely timeless. A true classic.'),
(4, 3, 'Some parts were hard to follow, but overall good.'),
(5, 5, 'A masterpiece, I will never forget this book.');

-- Insert Data into orders table
INSERT INTO orders (order_id, order_date, order_amount, order_mode, customer_id, booking_id, author_id, reviewer_id) VALUES
(1, '2025-04-01', 15.99, 'Online', 1, 1, 1, 1),
(2, '2025-04-02', 10.99, 'In-Store', 2, 2, 2, 2),
(3, '2025-04-03', 12.49, 'Online', 3, 3, 3, 3),
(4, '2025-04-04', 9.99, 'Online', 4, 4, 4, 4),
(5, '2025-04-05', 8.99, 'In-Store', 5, 5, 5, 5);

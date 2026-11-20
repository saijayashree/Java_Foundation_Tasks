create table products (
    productid int primary key,
    productname varchar(50),
    category varchar(50),
    price int,
    quantity int,
    brand varchar(50),
    city varchar(50),
    status varchar(20)
);

insert into products values
(1, 'Laptop', 'Electronics', 55000, 10, 'HP', 'Delhi', 'Available'),
(2, 'Mouse', 'Accessories', 500, 50, 'Dell', 'Delhi', 'Available'),
(3, 'Keyboard', 'Accessories', 1200, 30, 'HP', 'Noida', 'Available'),
(4, 'Monitor', 'Electronics', 12000, 15, 'Dell', 'Noida', 'Available'),
(5, 'Mobile', 'Electronics', 25000, 20, 'Samsung', 'Delhi', 'Available'),
(6, 'Headphones', 'Accessories', 2000, 40, 'Sony', 'Gurgaon', 'Available'),
(7, 'Tablet', 'Electronics', 30000, 12, 'Samsung', 'Noida', 'Available'),
(8, 'Printer', 'Electronics', 15000, 8, 'HP', 'Gurgaon', 'Available'),
(9, 'USB Cable', 'Accessories', 300, 100, 'Dell', 'Delhi', 'Available'),
(10, 'Smart Watch', 'Electronics', 8000, 25, 'Samsung', 'Noida', 'Available');
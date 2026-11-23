
use telecomdb;

create table subscribers(
    sub_id int primary key,
    sub_name varchar(50),
    balance decimal(10,2),
    plan varchar(20),
    expiry_date date,
    subscriber_type varchar(20)
);

insert into subscribers values
(1,'amit',40,'monthly','2026-12-15','prepaid'),
(2,'riya',120,'monthly','2026-12-20','prepaid'),
(3,'rahul',30,'yearly','2026-11-30','prepaid'),
(4,'priya',200,'monthly','2026-12-10','postpaid');

create table recharge_history(
    id int auto_increment primary key,
    sub_id int,
    amount decimal(10,2)
);

create table notifications(
    sub_id int,
    message varchar(100)
);
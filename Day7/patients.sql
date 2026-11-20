create table patients (
    patientid int primary key,
    patientname varchar(50),
    age int,
    gender varchar(10),
    city varchar(50),
    disease varchar(50),
    billamount decimal(10,2)
);

create table doctors (
    doctorid int primary key,
    doctorname varchar(50),
    specialization varchar(50),
    salary decimal(10,2),
    city varchar(50)
);

create table treatments (
    treatmentid int primary key,
    patientid int,
    doctorid int,
    treatmentname varchar(50),
    treatmentcost decimal(10,2),
    treatmentdate date
);
insert into patients values
(1,'Amit',25,'Male','Delhi','Fever',5000),
(2,'Neha',30,'Female','Mumbai','Diabetes',12000),
(3,'Rahul',45,'Male','Delhi','Heart Disease',30000),
(4,'Priya',35,'Female','Chennai','Cancer',50000),
(5,'Karan',28,'Male','Mumbai','Fever',7000),
(6,'Sneha',40,'Female','Delhi','Asthma',15000),
(7,'Ravi',50,'Male','Pune','Diabetes',18000),
(8,'Pooja',32,'Female','Chennai','Heart Disease',25000);

insert into doctors values
(101,'Dr Sharma','Cardiology',90000,'Delhi'),
(102,'Dr Mehta','Neurology',80000,'Mumbai'),
(103,'Dr Kumar','Oncology',120000,'Delhi'),
(104,'Dr Singh','General',60000,'Pune'),
(105,'Dr Reddy','Cardiology',95000,'Chennai'),
(106,'Dr Verma','General',55000,'Mumbai');

insert into treatments values
(1,1,104,'Fever Treatment',3000,'2026-01-10'),
(2,2,106,'Diabetes Checkup',4000,'2026-02-15'),
(3,3,101,'Heart Surgery',20000,'2026-03-20'),
(4,4,103,'Cancer Therapy',35000,'2026-04-12'),
(5,5,104,'Fever Treatment',2500,'2026-05-10'),
(6,6,102,'Asthma Treatment',7000,'2026-06-18'),
(7,7,106,'Diabetes Checkup',5000,'2026-07-14'),
(8,8,105,'Heart Surgery',18000,'2026-08-22');
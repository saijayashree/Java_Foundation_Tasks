CREATE DATABASE hexaware;
USE hexaware;

CREATE TABLE student
(
    RollNo INT,
    Name VARCHAR(20),
    Fee INT
);

DESC student;

ALTER TABLE student ADD subject INT;

ALTER TABLE student MODIFY subject INT;

ALTER TABLE student DROP COLUMN subject;

ALTER TABLE student
RENAME COLUMN fee TO student_fee;
DESC student;
CREATE TABLE college
(
    regno INT PRIMARY KEY,
    Name VARCHAR(20) NOT NULL,
    mark INT CHECK (mark > 50),
    adharcard INT UNIQUE,
    city VARCHAR(20) DEFAULT 'Chennai'
);
ALTER TABLE college
RENAME COLUMN balance TO mark;

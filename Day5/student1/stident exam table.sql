CREATE TABLE Student_Exam
(
    Exam_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50) NOT NULL,
    Marks INT CHECK (Marks BETWEEN 0 AND 100),
    Result VARCHAR(20) DEFAULT 'Pending'
);
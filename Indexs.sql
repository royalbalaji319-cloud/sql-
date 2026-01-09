CREATE DATABASE CollegeDB;
USE CollegeDB;



CREATE TABLE Students (
    student_id INT PRIMARY KEY,   -- Unique ID (automatic index)
    name VARCHAR(50),
    branch VARCHAR(20),
    marks INT
);

INSERT INTO Students VALUES
(1, 'Ravi', 'CSE', 85),
(2, 'Sita', 'ECE', 90),
(3, 'Kiran', 'CSE', 78),
(4, 'Anu', 'MECH', 88),
(5, 'Rahul', 'CSE', 92);

SELECT * FROM students WHERE branch = 'CSE';

CREATE INDEX idx_branch
ON Students(branch);

CREATE INDEX idx_branch_marks
ON Students(branch, marks);

CREATE UNIQUE INDEX idx_unique_name
ON Students(name);

SHOW INDEX FROM Students;
DROP INDEX idx_branch ON Students;




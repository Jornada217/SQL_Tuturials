CREATE TABLE student (
	student_id INT AUTO_INCREMENT,
    name VARCHAR(20) ,
    major VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);

DESCRIBE student;
DROP TABLE student;
ALTER TABLE student ADD gpa DECIMAL(3, 2);
ALTER TABLE student DROP COLUMN gpa;
SELECT * FROM student;

INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Kate', 'Sociology');
INSERT INTO student(name, major) VALUES('Claire', 'Chemistry');
INSERT INTO student(name, major) VALUES('Mike', 'Computer Science');
INSERT INTO student(name, major) VALUES('Joao', 'IDBE');
INSERT INTO student(name, major) VALUES('Paulo', 'IDBE');
INSERT INTO student(name, major) VALUES('Gomes', 'IDBE');
INSERT INTO student(name, major) VALUES('Joao', 'IDBEE');
INSERT INTO student(name, major) VALUES('Paulo', 'IDBEE');

UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';

UPDATE student
SET major = 'Comp Sci'
WHERE student_id = 4;

UPDATE student
SET major = 'Biochemestry'
WHERE major = 'Bio' OR major = 'Chemistry'; 

UPDATE student
SET name = 'Tom', major = 'undecided'
WHERE student_id = 1;

DELETE FROM student
WHERE student_id = 7;

DELETE FROM student
WHERE name = 'Joao' AND major = 'IDBEE';

SELECT student.name, student.major
FROM student
ORDER BY student_id DESC;

SELECT student.name, student.major
FROM student
ORDER BY major, student_id;

SELECT student.student_id, student.major
FROM student
ORDER BY name DESC
LIMIT 2;

-- FILTERING
SELECT student.name, student.major
FROM student
WHERE major <> 'IDBE' OR major = 'IDBEE';

-- <, >, <=, >=, =, <>, AND, OR
SELECT *
FROM student
WHERE student_id >=3 AND name <> 'Joao';

SELECT *
FROM student
WHERE name IN ('Claire', 'Mike', 'Paulo') AND student_id <= 10;
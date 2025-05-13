show databases;
use project1;
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15),
    university_roll_number VARCHAR(20) UNIQUE NOT NULL
);
select * from students;
INSERT INTO students (name, phone_number, university_roll_number)
VALUES 
('ACD', '1111100000', 'UR001'),
('ABC', '91234567805566', 'UR002'),
('BCD', '998877665555', 'UR003'),
('ADB', '9012345674458', 'UR004'),
('ADC', '889977665555', 'UR005');

select * from students;


CREATE TABLE student_grades (
    grade_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    semester INT,
    grade VARCHAR(5),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

INSERT INTO student_grades (student_id, semester, grade)
VALUES 
(1, 1, 'A'),
(1, 2, 'B'),
(2, 1, 'O'),
(2, 2, 'A'),
(3, 1, 'B'),
(3, 2, 'B'),
(4, 1, 'A'),
(4, 2, 'E'),
(5, 1, 'E'),
(5, 2, 'B');

select * from student_grades;

SELECT 
    s.student_id,
    s.name,
    s.phone_number,
    s.university_roll_number,
    g.semester,
    g.grade
FROM 
    students s
JOIN 
    student_grades g ON s.student_id = g.student_id
ORDER BY 
    s.student_id, g.semester;

show tables;


-- Junction tables

-- create a table
CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  gender CHAR(1) NOT NULL
);

CREATE TABLE courses (
    id INTEGER PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE enrollment (
    id INTEGER PRIMARY KEY,
    student_id INTEGER NOT NULL,
    course_id INTEGER NOT NULL
);

-- insert some values
INSERT INTO students VALUES (1, 'Ryan', 'M');
INSERT INTO students VALUES (2, 'Joanna', 'F');
INSERT INTO students VALUES (3, 'Sam', 'M');

INSERT INTO courses VALUES (1, 'Maths');
INSERT INTO courses VALUES (2, 'Science');
INSERT INTO courses VALUES (3, 'Physics');

INSERT INTO enrollment VALUES (1, 1, 1);
INSERT INTO enrollment VALUES (2, 1, 2);
INSERT INTO enrollment VALUES (3, 2, 2);
INSERT INTO enrollment VALUES (4, 3, 1);
INSERT INTO enrollment VALUES (5, 3, 3);

-- fetch some values
-- SELECT * FROM students;
-- SELECT * FROM courses;
-- SELECT * FROM enrollment;

SELECT e.id, s.name student_name, c.name course_name
FROM enrollment e
LEFT JOIN courses c
    ON e.course_id = c.id
LEFT JOIN students s
    ON e.student_id = s.id
WHERE s.gender = 'F'
;
-- for 8a
SELECT course.course_id, course.title, 
       A.ID, A.name
FROM (SELECT * FROM section NATURAL JOIN teaches NATURAL JOIN 
    instructor) as A, course
WHERE A.course_id = course.course_id AND
      A.dept_name = 'Comp. Sci.' AND 
      A.year = '2009' AND 
      course.dept_name = 'Civil'
ORDER BY A.name ASC;

-- for 8b
INSERT INTO course 
    VALUES('CS-333', 'Advanced Database Systems', 'Comp. Sci.', 6);
INSERT INTO prereq VALUES('CS-333', 'CS-303');
SELECT *
FROM course NATURAL JOIN prereq;

-- for 8c
SELECT *
FROM department NATURAL JOIN instructor
WHERE department.budget > 900000;
UPDATE instructor SET salary = salary + salary*0.1 
WHERE dept_name IN (SELECT dept_name
                    FROM department NATURAL JOIN instructor
                    WHERE department.budget > 900000);
SELECT *
FROM department NATURAL JOIN instructor
WHERE department.budget > 900000;

-- for 8d
SELECT * 
FROM  (SELECT course.course_id, course.title
      FROM course NATURAL JOIN section
      WHERE dept_name = 'Comp. Sci.' AND 
            semester = 'Fall' AND 
            year = '2007') as CSE_courses NATURAL JOIN
      (SELECT course_id, COUNT(ID) as `Number of students`
      FROM takes
      GROUP BY course_id
      HAVING COUNT(ID) > 15) as courses_15
ORDER BY CSE_courses.course_id ASC;

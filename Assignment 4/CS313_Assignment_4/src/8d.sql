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
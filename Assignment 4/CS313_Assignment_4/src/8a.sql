SELECT course.course_id, course.title, 
       A.ID, A.name
FROM (SELECT * FROM section NATURAL JOIN teaches NATURAL JOIN 
    instructor) as A, course
WHERE A.course_id = course.course_id AND
      A.dept_name = 'Comp. Sci.' AND 
      A.year = '2009' AND 
      course.dept_name = 'Civil'
ORDER BY A.name ASC;
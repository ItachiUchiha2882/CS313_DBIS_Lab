SELECT student.*, d.building, d.budget, t.course_id, t.sec_id, t.semester,
    t.year, t.grade, a.s_ID, a.i_ID, i.name, i.dept_name, i.salary 
FROM student, department AS d, takes AS t, advisor AS a, instructor AS i 
WHERE student.dept_name=d.dept_name AND student.ID=t.ID AND
    student.ID=a.s_ID AND a.i_ID=i.ID AND student.ID='12345';
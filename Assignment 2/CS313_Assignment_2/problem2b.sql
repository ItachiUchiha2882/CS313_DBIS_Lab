SELECT *
FROM student, department AS d, takes AS t, advisor AS a, instructor AS i
WHERE student.dept_name=d.dept_name AND student.ID=t.ID AND
student.ID=a.s_ID AND a.i_ID=i.ID AND student.ID='12345';
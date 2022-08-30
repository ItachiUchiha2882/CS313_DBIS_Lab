SELECT s.ID, s.name, s.dept_name, d.building
FROM student AS s, department AS d
WHERE s.dept_name=d.dept_name AND s.dept_name='Comp. Sci.' AND
    d.building='Taylor';
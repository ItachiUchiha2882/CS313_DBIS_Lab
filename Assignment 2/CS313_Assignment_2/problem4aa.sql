SELECT DISTINCT A.ID, A.name, A.dept_name, sec.building
FROM(
  SELECT *
  FROM student AS s, takes AS t
  WHERE s.ID = t.ID ) AS A NATURAL JOIN section AS sec
WHERE sec.building = 'Taylor' AND A.dept_name = 'Comp. Sci.';
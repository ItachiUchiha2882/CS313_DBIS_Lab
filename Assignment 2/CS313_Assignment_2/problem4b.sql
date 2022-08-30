SELECT DISTINCT A_table.ID,A_table.name
FROM(SELECT s.*, t.* 
	  FROM student AS s, takes AS t
    WHERE s.ID=t.ID AND t.grade='A') as A_table,
    (SELECT s.*, t.* 
	  FROM student AS s, takes AS t
    WHERE s.ID=t.ID AND t.grade='C') AS C_table
WHERE  A_table.ID=C_table.ID;
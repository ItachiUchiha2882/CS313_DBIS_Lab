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
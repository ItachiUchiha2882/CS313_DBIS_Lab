INSERT INTO course 
    VALUES('CS-333', 'Advanced Database Systems', 'Comp. Sci.', 6);
INSERT INTO prereq 
    VALUES('CS-333', 'CS-303');
SELECT *
FROM course NATURAL JOIN prereq;
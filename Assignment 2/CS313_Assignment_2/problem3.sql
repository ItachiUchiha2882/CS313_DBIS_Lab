INSERT INTO student
	VALUES('00002', 'Sourabh', 'Comp. Sci.', 125);
INSERT INTO course
	VALUES('CS-301', 'Computer Architecture', 'Comp. Sci.', 6);
INSERT INTO instructor
	VALUES('10001', 'Rajshekhar K', 'Comp. Sci.', 70000);
INSERT INTO teaches
	VALUES('10001', 'CS-301', '2', 'Spring', 2020);
INSERT INTO prereq
	VALUES('CS-301', 'CS-101');
INSERT INTO section
	VALUES('CS-301', '2', 'Spring', 2020, 'Watson', '120', 'B');
INSERT INTO classroom
	VALUES('Newton', '150', 100);
INSERT INTO department
	VALUES('MMAE', 'Newton', 95000);
INSERT INTO takes
	VALUES('00002', 'CS-301', '2', 'Spring', 2020, 'A');
INSERT INTO advisor
	VALUES('00002', '10001');
INSERT INTO time_slot
	VALUES('B', 'M', 8, 30, 9, 30);

SELECT * FROM student;
SELECT * FROM course;
SELECT * FROM instructor;
SELECT * FROM teaches;
SELECT * FROM prereq;
SELECT * FROM section;
SELECT * FROM classroom;
SELECT * FROM department;
SELECT * FROM takes;
SELECT * FROM advisor;
SELECT * FROM time_slot;
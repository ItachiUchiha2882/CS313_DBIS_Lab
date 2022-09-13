-- problem 1
CREATE USER 'universityDB0004'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON university.* TO 'universityDB0004'@'localhost';

-- problem 2
CREATE DATABASE university;

-- problem 3
USE university;
SELECT DATABASE();

-- problem 4
source /Users/apple/Desktop/5th sem/CS313 DBIS lab/assigns/assign4/DDL.sql;
show tables;

-- problem 5
source /Users/apple/Desktop/5th sem/CS313 DBIS lab/assigns/assign4/InsertValues.sql

-- problem 6
SELECT table_name, column_name, data_type
FROM information_schema.columns
WHERE table_name = 'student' || table_name = 'advisor' || table_name = 'classroom' || table_name = 'course' || table_name = 'department' || table_name = 'instructor' || table_name = 'prereq' || table_name = 'section' || table_name = 'takes' || table_name = 'teaches' || table_name = 'time_slot';
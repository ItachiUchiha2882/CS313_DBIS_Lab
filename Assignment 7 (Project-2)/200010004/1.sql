-- Active: 1664967234262@@127.0.0.1@3306@hospital_db
-- creating database
CREATE DATABASE hospital_db;
SHOW DATABASES;
USE hospital_db;
SELECT DATABASE(); -- to see selected database.
-- creating tables
-- patient
CREATE TABLE patient(
  patient_id VARCHAR(8),
  first_name VARCHAR(50), 
	last_name VARCHAR(50),
  gender VARCHAR(10),
	birth_date DATE,
	height INT,
	weight INT,
	PRIMARY KEY (patient_id)
);
-- DROP TABLE patient;
-- DESCRIBE patient;

-- address
CREATE TABLE address(
  patient_id VARCHAR(8), 
	street VARCHAR(20),
	city VARCHAR(20),
  state VARCHAR(20),
	pincode VARCHAR(10),
	PRIMARY KEY (patient_id),
	FOREIGN KEY (patient_id) REFERENCES patient(patient_id)
);
-- DROP TABLE address;
-- DESCRIBE address;

-- allergies
CREATE TABLE allergies(
  patient_id VARCHAR(8), 
	allergies1 VARCHAR(20),
	allergies2 VARCHAR(20),
	allergies3 VARCHAR(20),
	allergies4 VARCHAR(20),
	allergies5 VARCHAR(20),
	PRIMARY KEY (patient_id),
	FOREIGN KEY (patient_id) REFERENCES patient(patient_id)
);
-- DROP TABLE allergies;
-- DESCRIBE allergies;

-- doctor
CREATE TABLE doctor(
  doctor_id	VARCHAR(8), 
	first_name VARCHAR(50), 
	last_name	VARCHAR(50),
	dept_name	VARCHAR(20),
	speciality VARCHAR(30),
	salary INT,
	PRIMARY KEY (doctor_id, first_name),
  FOREIGN KEY (dept_name) REFERENCES dept(dept_name)
);
-- DROP TABLE doctor;
-- DESCRIBE doctor;

-- ALTER TABLE doctor
-- MODIFY COLUMN speciality VARCHAR(30); 

-- ALTER TABLE doctor
-- DROP PRIMARY KEY;
-- ALTER TABLE doctor
-- ADD PRIMARY KEY(doctor_id, first_name);

-- staff
CREATE TABLE staff(
  staff_id VARCHAR(8), 
	first_name VARCHAR(50), 
	last_name	VARCHAR(50),
	dept_name	VARCHAR(20),
	salary INT,
	PRIMARY KEY (staff_id), 
  FOREIGN KEY (dept_name) REFERENCES dept(dept_name)
);
-- DROP TABLE staff;
-- DESCRIBE staff;

-- dept
CREATE TABLE dept(
	dept_name	VARCHAR(20), 
	hod	VARCHAR(20),
	loc	VARCHAR(20),
	budget INT,
	PRIMARY KEY (dept_name)
);
-- DROP TABLE dept;
-- DESCRIBE dept;

-- appointment
CREATE TABLE appointment(
	appointment_id VARCHAR(8), 
	patient_id VARCHAR(8), 
	doctor_id	VARCHAR(8), 
	a_date VARCHAR(10) NOT NULL,
	diagnosis VARCHAR(50),
  PRIMARY KEY (appointment_id),
	FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
	FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id)	
	);
-- DROP TABLE appointment;
-- DESCRIBE appointment;

-- adminpass
CREATE TABLE adminpass(
	admin_id VARCHAR(20), 
	pass VARCHAR(20),
	PRIMARY KEY (admin_id)
);
-- DROP TABLE adminpass;
-- DESCRIBE adminpass;

-- docpass
CREATE TABLE docpass(
	doc_id VARCHAR(8), 
	pass VARCHAR(50),
	PRIMARY KEY (doc_id, pass),
	FOREIGN KEY (doc_id) REFERENCES doctor(doctor_id),
	FOREIGN KEY (pass) REFERENCES doctor(doctor_id)
);
-- DROP TABLE docpass;
-- DESCRIBE docpass;

-- patpass
CREATE TABLE patpass(
	pat_id VARCHAR(20), 
	pass VARCHAR(20),
	PRIMARY KEY (pat_id, pass),
	FOREIGN KEY (pat_id) REFERENCES patient(patient_id),
	FOREIGN KEY (pass) REFERENCES patient(patient_id)
);
-- DROP TABLE patpass;
-- DESCRIBE patpass;
--------------------------------------------------------------------------
-- inserting values
-- adminpass(admin_id, pass)
INSERT INTO adminpass VALUES ('10101', 'test');
INSERT INTO adminpass VALUES ('20202', 'password');
INSERT INTO adminpass VALUES ('30303', 'testtest');
-- docpass
-- INSERT INTO docpass VALUES ('10000', '10000');
-- INSERT INTO docpass VALUES ('10001', '10001');
-- INSERT INTO docpass VALUES ('10002', '10002');
-- patpass
-- INSERT INTO patpass VALUES ('20001', '20001');
-- INSERT INTO patpass VALUES ('20002', '20002');
-- dept(dept_name, hod, loc, budget)
INSERT INTO dept VALUES ('Brain', 'Dr.Brain', '1F', 90000);
INSERT INTO dept VALUES ('Heart', 'Dr.Heart', '2F', 95000);
INSERT INTO dept VALUES ('Kidney', 'Dr.Kidney', '3F', 80000);
INSERT INTO dept VALUES ('Liver', 'Dr.Liver', '1F', 70000);
INSERT INTO dept VALUES ('Lungs', 'Dr.Lungs', '2F', 90000);
INSERT INTO dept VALUES ('Stomach', 'Dr.Stomach', '3F', 85000);
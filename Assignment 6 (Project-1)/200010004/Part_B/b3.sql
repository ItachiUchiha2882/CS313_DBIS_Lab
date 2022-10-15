-- inserting data into tables
-- book table
INSERT INTO book 
    VALUES('10001', 'Concepts of Physics', 'Educational', 'H.C.Verma');
INSERT INTO book 
    VALUES('10002', 'Harry Potter: Deathly Hallows', 'Fantasy', 
           'J.K.Rowling');
INSERT INTO book 
    VALUES('10003', 'Atomic Habits', 'Self-Help', 'James Clear');
INSERT INTO book 
    VALUES('10004', 'Ikigai', 'Self-Help', 'FM & HC');
INSERT INTO book 
    VALUES('10005', 'Rich Dad Poor Dad', 'Finance', 'RK & SL');
INSERT INTO book 
    VALUES('10006', 'Security Analysis', 'Finance', 'BG & DD');

-- student table
INSERT INTO student VALUES('20001', 'Eren', 'MMAE', 2020, 'Summer');
INSERT INTO student VALUES('20002', 'Mikasa', 'CSE', 2021, 'Winter');
INSERT INTO student VALUES('20003', 'Armin', 'EE', 2022, 'Spring');
INSERT INTO student VALUES('20004', 'Reiner', 'EE', 2020, 'Fall');
INSERT INTO student VALUES('20005', 'Levi', 'CSE', 2021, 'Summer');
INSERT INTO student VALUES('20006', 'Erwin', 'MMAE', 2022, 'Winter');

-- issue table
INSERT INTO issue VALUES ('20001', '10003', '2020-08-28', '2020-09-18');
INSERT INTO issue VALUES ('20001', '10004', '2022-09-07', '2022-09-27');
INSERT INTO issue VALUES ('20002', '10002', '2021-05-02', '2021-05-22');
INSERT INTO issue VALUES ('20002', '10001', '2022-05-02', '2022-05-22');
INSERT INTO issue VALUES ('20003', '10005', '2022-06-12', '2022-06-30');
INSERT INTO issue VALUES ('20003', '10006', '2021-08-28', '2021-09-18');
INSERT INTO issue VALUES ('20004', '10003', '2021-10-06', '2021-10-26');
INSERT INTO issue VALUES ('20004', '10004', '2020-12-07', '2020-12-27');
INSERT INTO issue VALUES ('20005', '10001', '2020-11-28', '2020-12-18');
INSERT INTO issue VALUES ('20006', '10006', '2022-07-13', '2022-08-03');
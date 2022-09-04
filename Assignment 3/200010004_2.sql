USE lab3;
-- problem 3
-- table before insertions
SELECT * FROM part;
SELECT * FROM supplier;
SELECT * FROM shipment;

-- inserting new data 
INSERT INTO part VALUES ('00002', 'Seat', 'Red', 3);
INSERT INTO part VALUES ('00003', 'Battery', 'White', 1);
INSERT INTO supplier VALUES ('10002', 'Watson', 'New York', 'New York Bank');
-- INSERT INTO supplier VALUES ('10003', 'Smith', 'Mumbai', 'Mumbai Bank');
-- INSERT INTO supplier VALUES ('10004', 'John', 'Paris', 'Paris Bank');
-- INSERT INTO supplier VALUES ('10005', 'Clark', 'London', 'London Bank');
-- INSERT INTO supplier VALUES ('10006', 'Adam', 'New Delhi', 'New Delhi Bank');
-- INSERT INTO supplier VALUES ('10007', 'Jones', 'Dubai', 'Dubai Bank');
-- INSERT INTO supplier VALUES ('10008', 'David', 'Moscow', 'Moscow Bank');
INSERT INTO shipment VALUES ('20002', '00001', '10001', '2022-08-28', 15, 1000);
INSERT INTO shipment VALUES ('20003', '00001', '10001', '2021-09-07', 15, 1000);
INSERT INTO shipment VALUES ('20004', '00001', '10001', '2021-01-06', 15, 1000);
INSERT INTO shipment VALUES ('20005', '00002', '10001', '2020-07-13', 22, 3000);
INSERT INTO shipment VALUES ('20006', '00002', '10002', '2022-06-04', 22, 3000);
INSERT INTO shipment VALUES ('20007', '00002', '10001', '2022-05-02', 22, 3000);
INSERT INTO shipment VALUES ('20008', '00002', '10002', '2021-11-28', 22, 3000);
INSERT INTO shipment VALUES ('20009', '00003', '10001', '2021-12-07', 18, 2500);
INSERT INTO shipment VALUES ('20010', '00003', '10001', '2020-10-28', 18, 2500);
INSERT INTO shipment VALUES ('20011', '00003', '10002', '2020-02-02', 18, 2500);
INSERT INTO shipment VALUES ('20012', '00003', '10002', '2022-03-26', 18, 2500);

-- table after insertions
SELECT * FROM part;
SELECT * FROM supplier;
SELECT * FROM shipment;
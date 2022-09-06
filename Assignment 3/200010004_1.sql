-- question 1
CREATE USER 'lab3'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON lab3.* TO 'lab3'@'localhost';
CREATE DATABASE lab3;

-- question 2
USE lab3;
CREATE TABLE part(
  part_no VARCHAR(5),
  part_name VARCHAR(20),
  color VARCHAR(20),
  weight numeric(5,3),
  PRIMARY KEY (part_no)
);
CREATE TABLE supplier(
  supplier_no VARCHAR(5),
  sup_name VARCHAR(20),
  city VARCHAR(20),
  bank VARCHAR(20),
  PRIMARY KEY (supplier_no)
);
CREATE TABLE shipment(
  shipment_no VARCHAR(5),
  part_no VARCHAR(5),
  supplier_no VARCHAR(5),
  date DATE,
  quantity numeric(3,0),
  price numeric(7,2),
  PRIMARY KEY (shipment_no),
  FOREIGN KEY (part_no) REFERENCES part(part_no)
    ON DELETE SET NULL,
  FOREIGN KEY (supplier_no) REFERENCES supplier(supplier_no)
    ON DELETE SET NULL
);
-- question 3
INSERT INTO part VALUES ('00001', 'Wheel', 'Black', 1.5);
INSERT INTO supplier VALUES ('10001', 'Robert', 'Tokyo', 'Tokyo Bank');
INSERT INTO shipment VALUES ('20001', '00001', '10001', '2020-05-22', 15, 1000);

-- question 5
-- part a
SELECT DISTINCT supplier.sup_name
FROM part NATURAL JOIN supplier NATURAL JOIN shipment
WHERE part.color='Red';
-- part b
SELECT supplier.sup_name,SUM(shipment.price*shipment.quantity) as payment
FROM shipment NATURAL JOIN supplier
GROUP BY sup_name;
-- part c
SELECT supplier.sup_name
FROM part NATURAL JOIN supplier NATURAL JOIN shipment
GROUP BY supplier.sup_name
HAVING count(distinct part.part_name)=(SELECT count(distinct part.part_name) FROM part);
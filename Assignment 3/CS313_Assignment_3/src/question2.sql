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
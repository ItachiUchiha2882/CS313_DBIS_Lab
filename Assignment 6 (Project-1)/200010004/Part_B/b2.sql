-- creating tables
USE Library;

-- book(book_id, title,category,author);
CREATE TABLE book(
  book_id VARCHAR(5),
  title VARCHAR(40),
  category VARCHAR(20),
  author VARCHAR(20),
  PRIMARY KEY (book_id)
);

-- student(student_id,name,dept_name,year,semester);
CREATE TABLE student(
  student_id VARCHAR(5),
  name VARCHAR(20),
  dept_name VARCHAR(20),
  year numeric(4,0),
  semester VARCHAR(6) CHECK 
      (semester IN ('Fall', 'Winter', 'Spring', 'Summer')),
  PRIMARY KEY (student_id)
);

-- issue(student_id,book_id,issue_date,return_date);
CREATE TABLE issue(
  student_id VARCHAR(5),
  book_id VARCHAR(5),
  issue_date DATE,
  return_date DATE,
  PRIMARY KEY (student_id, book_id, issue_date),
  FOREIGN KEY (student_id) REFERENCES student(student_id) 
      ON DELETE CASCADE,
  FOREIGN KEY (book_id) REFERENCES book(book_id) 
      ON DELETE CASCADE
);
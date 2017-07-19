DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;


CREATE TABLE houses (
  id SERIAL8 PRIMARY KEY,
  house_name VARCHAR(255),
  logo_url VARCHAR(255)
);

CREATE TABLE students (
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255),
  second_name VARCHAR(255),
  house_id INT8 REFERENCES houses(id),
  age INT4
);

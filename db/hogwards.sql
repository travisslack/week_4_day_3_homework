DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;

CREATE TABLE students (
id serial8 PRIMARY KEY,
first_name VARCHAR(255),
second_name VARCHAR(255),
house VARCHAR(255),
age INT4
);

CREATE TABLE houses (
id serial4 PRIMARY KEY,
house_name VARCHAR(255),
logo_url VARCHAR(255)
);



# How to make/insert a table in a schema

USE annika_lee;

CREATE TABLE students (age INT, height FLOAT, city VARCHAR (255)); #column name w/ data type

SHOW TABLES;

DROP TABLE students; #drops specific table

DESCRIBE TABLE students;

SELECT *
FROM annika_lee.students; #to show specific data from schema

INSERT INTO students (age, height, city) VALUES ('20', '5.5', 'Minneapolis');



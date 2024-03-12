-- Create a new database named 'new'
CREATE DATABASE new;
-- Switch to the 'new' database
USE new;
-- Show available databases
SHOW DATABASES;
-- Create a table 'emp' with columns: id, name, address, and set id as the primary key
CREATE TABLE emp (
    id INT,
    -- Define an integer column for employee ID
    name VARCHAR(20),
    -- Define a variable character column for employee name
    address VARCHAR(30),
    -- Define a variable character column for employee address
    PRIMARY KEY (id) -- Set 'id' as the primary key for the 'emp' table
);
-- Insert data into the 'emp' table
INSERT INTO emp (id, name, address)
VALUES (1, 'john', 'london');
INSERT INTO emp (id, name, address)
VALUES (2, 'emma', 'new york');
INSERT INTO emp (id, name, address)
VALUES (3, 'alex', 'paris');
INSERT INTO emp (id, name, address)
VALUES (4, 'john', 'sydney');
INSERT INTO emp (id, name, address)
VALUES (5, 'lisa', 'japan');
INSERT INTO emp (id, name, address)
VALUES (6, 'michael', 'tokyo'),
    (7, 'olivia', 'rome'),
    (8, 'ryan', 'berlin');
-- Select all records from 'emp'
SELECT *
FROM emp;
-- Select records where name is 'emma'
SELECT *
FROM emp
WHERE name = 'emma';
-- Select records where name is 'emma' and address is 'new york'
SELECT *
FROM emp
WHERE name = 'emma'
    AND address = 'new york';
-- Select records where address is 'japan' or 'new york'
SELECT *
FROM emp
WHERE address = 'japan'
    OR address = 'new york';
-- Select records where name is not 'emma'
SELECT *
FROM emp
WHERE NOT name = 'emma';
-- Insert new records into 'emp'
INSERT INTO emp (id, name, address)
VALUES (9, 'thor', 'midguard');
INSERT INTO emp (id, name, address)
VALUES (10, 'loki', 'berlin');
-- Select all records from 'emp'
SELECT *
FROM emp;
-- Order records by name, address, and id
SELECT *
FROM emp
ORDER BY name;
SELECT *
FROM emp
ORDER BY address;
SELECT *
FROM emp
ORDER BY id;
-- Order records by id in ascending and descending order
SELECT *
FROM emp
ORDER BY id ASC;
SELECT *
FROM emp
ORDER BY id DESC;
-- Count the number of records and names in 'emp'
SELECT COUNT(id)
FROM emp;
SELECT COUNT(name)
FROM emp;
-- Calculate the average, sum, minimum, and maximum of 'id' in 'emp'
SELECT AVG(id)
FROM emp;
SELECT SUM(id)
FROM emp;
SELECT MIN(id)
FROM emp;
SELECT MAX(id)
FROM emp;
-- Add a new column 'salary' to 'emp'
ALTER TABLE emp
ADD COLUMN salary INT;
-- Select all records from 'emp'
SELECT *
FROM emp;
-- Update 'salary' values in 'emp'
UPDATE emp
SET salary = 200000
WHERE id = 1;
UPDATE emp
SET salary = 500000
WHERE id = 2;
UPDATE emp
SET salary = 800000
WHERE id = 3;
UPDATE emp
SET salary = 300000
WHERE id = 4;
UPDATE emp
SET salary = 700000
WHERE id = 5;
UPDATE emp
SET salary = 100000
WHERE id = 6;
UPDATE emp
SET salary = 400000
WHERE id = 7;
UPDATE emp
SET salary = 900000
WHERE id = 8;
UPDATE emp
SET salary = 600000
WHERE id = 9;
-- Select count, average, sum, minimum, and maximum of 'salary' in 'emp'
SELECT COUNT(salary)
FROM emp;
SELECT AVG(salary)
FROM emp;
SELECT SUM(salary)
FROM emp;
SELECT MIN(salary)
FROM emp;
SELECT MAX(salary)
FROM emp;
-- Select the name with the maximum salary for salaries greater than 500000
SELECT name,
    MAX(salary) as max_salary
FROM emp
WHERE salary > 500000
GROUP BY name;
-- Select specific columns for records with certain IDs
SELECT name,
    salary,
    address
FROM emp
WHERE id IN (5, 4, 6, 2);
-- Select specific columns for records with salaries between 500000 and 800000
SELECT name,
    salary,
    address
FROM emp
WHERE salary BETWEEN 500000 AND 800000;
-- Rename the 'id' column as 'empid'
SELECT id AS empid
FROM emp;
-- Order records by name and show corresponding salaries
SELECT salary
FROM emp
ORDER BY name;
-- Select names where salary is not null or null
SELECT name
FROM emp
WHERE salary IS NOT NULL;
SELECT name
FROM emp
WHERE salary IS NULL;
-- Display all records from 'emp'
SELECT *
FROM emp;
-- Delete record with id = 2 from 'emp'
DELETE FROM emp
WHERE id = 2;
-- Display remaining records from 'emp'
SELECT *
FROM emp;
-- Delete record with id = 5 from 'emp'
DELETE FROM emp
WHERE id = 5;
-- Drop the 'emp' table and the 'new' database
DROP TABLE emp;
DROP DATABASE new;
-- Show available databases
SHOW DATABASES;
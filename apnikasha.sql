-- show databases ;

-- database is collection of the organize data in that the data can stored in the various fromats we can easily access the data from the database

-- the data is stored in the form of the tables in the database 

-- advantages of the database - 
-- 1. reduces redundancy
-- 2. data integrity and inconsistency
-- 3. facilitates data access
-- 4. ensures data security
-- 5. integrity and maintained 
-- 6. data independence

-- dbms - database management system : database management system is the software that is is used to manage , manipulate , organize, and access to the database 
-- ex : mysql, oracle, sql server, db2, postgresql, sqlite, mongodb, etc

-- relational data model  : 
-- 1. data is stored in the form of the tables
-- 2. tables are related to each other
-- 3. tables are related to each other by the primary key and foreign key
-- 4. tables are related to each other by the common column
-- 5. tables are related to each other by the common column

-- sql : structured query language : sql is the standard language for the relational database management system

-- terminologies of the sql :
-- 1. relation : relation is the table that contains the data in the form of the rows and columns
-- 2. tuple : tuple is the row of the table that contains the data in the form of the columns
-- 3. attribute : attribute is the column of the table that contains the data in the form of the rows
-- 4. domain : domain is the set of the values that can be assigned to the attribute
-- 5. degree : degree is the number of the columns in the table
-- 6. cardinality : cardinality is the number of the rows in the table

-- 7. null : null is the value that is used to represent the missing value
-- 8. integrity : integrity is the consistency and accuracy of the data

-- terminologies of the sql :
-- 1. view : view is the virtual table that contains the data of the one or more tables
-- 2. primary key : primary key is the unique key that is used to identify the each row of the table
-- 3. foreign key : foreign key is the key that is used to relate the two tables
-- 4. candidate key : candidate key is the key that is used to identify the each row of the table
-- 5. super key : super key is the key that is used to identify the each row of the table
-- 6. composite key : composite key is the key that is used to identify the each row of the table
-- 7. alternate key : alternate key is the key that is used to identify the each row of the table
-- 8. unique key : unique key is the key that is used to identify the each row of the table

-- sql : structured query language : sql is the standard language for the relational database management system

-- why we use the sql : 
-- 1. sql is fast
-- 2. sql is high level language
-- 3. sql is easy to learn
-- 4. sql is portable

-- types of the sql :
-- 1. ddl : data definition language : ddl is used to define the database structure this can access method and storage structure
-- ex : create, alter, drop, truncate, rename

-- 2. dml : data manipulation language : dml is used to manipulate the data in the database 
-- ex : insert, update, delete, select

-- 3. dcl : data control language : dcl is used to control the data in the database
-- ex : grant, revoke

-- 4. tcl : transaction control language : tcl is used to control the transaction in the database
-- ex : commit, rollback, savepoint

-- data types in the sql :
-- data         description
-- int          integer(-128 to 127)
-- smallint     small integer(-32768 to 32767)
-- bigint       big integer(-9223372036854775808 to 9223372036854775807)
-- float        floating point number
-- double       double precision floating point number
-- decimal      decimal number
-- char         fixed length character string
-- varchar      variable length character string
-- text         long text
-- date         date yyyy-mm-dd
-- time         time hh:mm:ss
-- datetime     date and time yyyy-mm-dd hh:mm:ss
-- timestamp    date and time yyyy-mm-dd hh:mm:ss
-- boolean      true or false

-- varchar : varchar is the variable length character string that can store the character string of the variable length 
-- syntax : varchar(size)
-- size : size is the number of the characters that can be stored in the varchar

-- varchar2 : varchar2 is the variable length character string that can store the character string of the variable length
-- syntax : varchar2(size)

-- create TABLE : create table is used to create the table in the database
-- syntax : create table table_name (column_name1 data_type, column_name2 data_type, column_name3 data_type, ....);
-- ex : create table student (id int, name varchar(100), age int);

-- insert INTO : insert into is used to insert the data into the table in the database
-- syntax : insert into table_name (column1, column2, column3, ....) values (value1, value2, value3, ....);
-- ex : insert into student (id, name, age) values (1, 'Alice', 20);
-- insert into student (id, name, age) values (2, 'Bob', 21);
-- insert into student (id, name, age) values (3, 'Charlie', 22);

-- using date :
-- insert into student (id, name, age, dob) values (4, 'David', 23, '1998-12-12');
-- insert into student (id, name, age, dob) values (5, 'Eva', 24, '1997-11-11');

-- select * FROM : select * from is used to select the data from the table in the database

-- select * from student;

-- select column1, column2, column3, .... FROM table_name;
-- select id, name, age FROM student;

-- select * from student where age > 20;

-- select * from student where age < 20;

-- select * from student where age = 20;

-- select * from student where age != 20;

-- select * from student where age >= 20;

-- select * from student where age <= 20;

-- select * from student where age between 20 and 22;

-- select * from student where age not between 20 and 22;

-- select * from student where name like 'A%';

-- select * from student where name like '%a';

-- select * from student where name like '%a%';

-- select * from student where name not like '%a%';

-- select * from student where name in ('Alice', 'Bob');

-- select * from student where name not in ('Alice', 'Bob');

-- select * from student where name is null;

-- select * from student where name is not null;

-- select * from student where age is null;

-- select * from student where age is not null;

-- select * from student where age is null and name is null;

-- ALL : all is used to select all the records from the table
-- select * from student;

-- DISTINCT : distinct is used to select the unique records from the table
-- select distinct age from student;

-- BETWEEN : between is used to select the records from the table between the range
-- select * from student where age between 20 and 22;

-- IN : in is used to select the records from the table that matches the value from the list
-- select * from student where name in ('Alice', 'Bob');

-- LIKE : like is used to select the records from the table that matches the pattern
-- select * from student where name like 'A%';

-- IS NULL : is null is used to select the records from the table that contains the null value
-- select * from student where name is null;

-- IS NOT NULL : is not null is used to select the records from the table that contains the not null value
-- select * from student where name is not null;

-- AND : and is used to select the records from the table that matches the multiple conditions

-- select * from student where age > 20 and name like 'A%';

-- OR : or is used to select the records from the table that matches the any one of the conditions

-- select * from student where age > 20 or name like 'A%';

-- NOT : not is used to select the records from the table that does not matches the condition

-- select * from student where not age > 20;

-- ORDER BY : order by is used to sort the records from the table
-- select * from student order by age;

-- select * from student order by age desc;

-- select * from student order by age asc;

-- select * from student order by age desc, name asc;

-- GROUP BY : group by is used to group the records from the table
-- select age, count(*) from student group by age;

-- select age, count(*) from student group by age having count(*) > 1;

-- select age, count(*) from student group by age having count(*) = 1;

-- select age, count(*) from student group by age having count(*) < 1;

-- select age, count(*) from student group by age having count(*) >= 1;

-- select age, count(*) from student group by age having count(*) <= 1;

-- select age, count(*) from student group by age having count(*) between 1 and 2;

-- select age, count(*) from student group by age having count(*) not between 1 and 2;

-- HAVING : having is used to filter the records from the table

-- select age, count(*) from student group by age having count(*) > 1;

-- select age, count(*) from student group by age having count(*) = 1;


-- UPDATE : update is used to update the records from the table
-- update student set name = 'Alice', age = 21 where id = 1;

-- DELETE : delete is used to delete the records from the table
-- delete from student where id = 1;

-- ALTER TABLE : alter table is used to modify the table in the database

-- alter table student add column dob date;

-- alter table student drop column dob;

-- alter table student modify column name varchar(200);

-- alter table student rename to students;

-- TRUNCATE TABLE : truncate table is used to delete all the records from the table
-- truncate table student;

-- DROP TABLE : drop table is used to delete the table from the database
-- drop table student;

-- CREATE DATABASE : create database is used to create the database in the database management system
-- create database student;

-- USE DATABASE : use database is used to use the database in the database management system

-- USE student;

-- DROP DATABASE : drop database is used to delete the database from the database management system

-- DROP DATABASE student;

-- CREATE INDEX : create index is used to create the index in the table

-- CREATE INDEX index_name ON table_name (column1, column2, column3, ....);

-- DROP INDEX : drop index is used to delete the index from the table

-- DROP INDEX index_name ON table_name;

-- CREATE VIEW : create view is used to create the view in the database

-- CREATE VIEW view_name AS SELECT column1, column2, column3, .... FROM table_name;

-- DROP VIEW : drop view is used to delete the view from the database

-- DROP VIEW view_name;

-- GRANT : grant is used to give the permission to the user in the database

-- GRANT permission ON table_name TO user_name;

-- REVOKE : revoke is used to take back the permission from the user in the database

-- REVOKE permission ON table_name FROM user_name;

-- COMMIT : commit is used to save the transaction in the database

-- COMMIT;

-- ROLLBACK : rollback is used to undo the transaction in the database

-- ROLLBACK;

-- SAVEPOINT : savepoint is used to save the transaction in the database

-- SAVEPOINT savepoint_name;

-- ROLLBACK TO : rollback to is used to undo the transaction in the database

-- ROLLBACK TO savepoint_name;

-- SET TRANSACTION : set transaction is used to set the transaction in the database

-- SET TRANSACTION;

-- SQL CONSTRAINTS : sql constraints are the rules that are used to apply on the table in the database

-- 1. not null : not null is used to apply the rule that the column cannot contain the null value
-- 2. unique : unique is used to apply the rule that the column cannot contain the duplicate value

-- 3. primary key : primary key is used to apply the rule that the column cannot contain the duplicate value and null value
-- 4. foreign key : foreign key is used to apply the rule that the column can contain the value that is present in the another table

-- 5. check : check is used to apply the rule that the column can contain the value that is present in the specified range

-- 6. default : default is used to apply the rule that the column can contain the default value if the value is not specified

-- 7. index : index is used to apply the rule that the column can contain the index value

-- CREATE TABLE student (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(100) NOT NULL,
--     age INT NOT NULL
-- );

-- CREATE TABLE student (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(100) NOT NULL UNIQUE,
--     age INT NOT NULL
-- );

-- CREATE TABLE student (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(100) NOT NULL,
--     age INT NOT NULL,
--     FOREIGN KEY (id) REFERENCES student(id)
-- );

-- CREATE TABLE student (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(100) NOT NULL,
--     age INT NOT NULL,
--     CHECK (age > 20)
-- );

-- CREATE TABLE student (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(100) NOT NULL,
--     age INT NOT NULL,
--     dob DATE DEFAULT '1998-12-12'
-- );

-- CREATE TABLE student (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(100) NOT NULL,
--     age INT NOT NULL,
--     INDEX (id)
-- );

-- CREATE TABLE student (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(100) NOT NULL,
--     age INT NOT NULL,
--     INDEX (id, name)
-- );

-- CREATE TABLE student (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(100) NOT NULL,
--     age INT NOT NULL,
--     INDEX (id, name, age)
-- );

-- DESCRIBE : describe is used to describe the table in the database

-- describe student;

-- SHOW TABLES : show tables is used to show the tables in the database

-- show tables;

-- agrregate functions in the sql :
-- 1. count() : count() is used to count the number of the records from the table

-- select count(*) from student;

-- 2. sum() : sum() is used to sum the records from the table

-- select sum(age) from student;

-- 3. avg() : avg() is used to average the records from the table

-- select avg(age) from student;

-- 4. min() : min() is used to minimum the records from the table

-- select min(age) from student;

-- 5. max() : max() is used to maximum the records from the table

-- select max(age) from student;

-- 6. group by : group by is used to group the records from the table

-- select age, count(*) from student group by age;

-- 7. having : having is used to filter the records from the table

-- select age, count(*) from student group by age having count(*) > 1;


-- 8. distinct : distinct is used to select the unique records from the table

-- select distinct age from student;

-- 9. order by : order by is used to sort the records from the table

-- select * from student order by age;

-- 10. limit : limit is used to limit the records from the table

-- select * from student limit 2;

-- 11. top : top is used to select the top records from the table

-- select top 2 * from student;

-- 12. first : first is used to select the first records from the table

-- select first 2 * from student;

-- 13. last : last is used to select the last records from the table

-- select last 2 * from student;

-- IN : in is used to select the records from the table that matches the value from the list
-- select * from student where name in ('Alice', 'Bob');

-- LIKE : like is used to select the records from the table that matches the pattern

-- select * from student where name like 'A%';

-- LIKE qurries pattern :

-- % : % is used to match the zero or more characters

-- select * from student where name like '%a%';

-- _ : _ is used to match the single character

-- select * from student where name like '_a%';

-- select * from student where name like 'A_';

-- select * from student where name like 'A__';

-- select * from student where name like 'A___';

-- a% : a% is used to match the zero or more characters that starts with the a

-- select * from student where name like 'a%';

-- %a : %a is used to match the zero or more characters that ends with the a

-- select * from student where name like '%a';

-- %a% : %a% is used to match the zero or more characters that contains the a

-- select * from student where name like '%a%';

-- IS NULL : is null is used to select the records from the table that contains the null value

-- select * from student where name is null;

-- IS NOT NULL : is not null is used to select the records from the table that contains the not null value

-- select * from student where name is not null;

-- AND : and is used to select the records from the table that matches the multiple conditions

-- select * from student where age > 20 and name like 'A%';

-- OR : or is used to select the records from the table that matches the any one of the conditions

-- select * from student where age > 20 or name like 'A%';

-- NOT : not is used to select the records from the table that does not matches the condition

-- select * from student where not age > 20;

-- sql joins : sql joins are used to combine the records from the two or more tables

-- 1. inner join : inner join is used to combine the records from the two or more tables that matches the condition

-- select * from student inner join student1 on student.id = student1.id;

-- 2. left join : left join is used to combine the records from the two or more tables that matches the condition and all the records from the left table

-- select * from student left join student1 on student.id = student1.id;

-- 3. right join : right join is used to combine the records from the two or more tables that matches the condition and all the records from the right table

-- select * from student right join student1 on student.id = student1.id;

-- 4. full join : full join is used to combine the records from the two or more tables that matches the condition and all the records from the both tables

-- select * from student full join student1 on student.id = student1.id;

-- 5. self join : self join is used to combine the records from the same table

-- select * from student s1, student s2 where s1.id = s2.id;

-- 6. cross join : cross join is used to combine the records from the two or more tables

-- select * from student cross join student1;

-- 7. natural join : natural join is used to combine the records from the two or more tables that matches the condition

-- select * from student natural join student1;

-- 8. equi join : equi join is used to combine the records from the two or more tables that matches the condition

-- select * from student, student1 where student.id = student1.id;

-- 9. non equi join : non equi join is used to combine the records from the two or more tables that does not matches the condition

-- select * from student, student1 where student.id != student1.id;


-- create database student;
-- USE student;
-- CREATE TABLE student (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(100),
--     age INT
-- );
-- INSERT INTO student (id,name, age) VALUES (1,'Alice', 20);
-- INSERT INTO student (id,name, age) VALUES (2,'Bob', 21);
-- INSERT INTO student (id,name, age) VALUES (3,'Charlie', 22);
-- SELECT * FROM student;
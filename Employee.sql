USE SHARATH_DB;
CREATE TABLE Employee
(
sno bigint primary key auto_increment,
Empname varchar(50),
Email varchar(50),
Gender varchar(10),
Salary bigint,
mobileno bigint
);
SELECT * FROM Employee;
drop table Employee;

-----------------------------------------------------------------------------------------------------------------------------------------
CREATE DATABASE JavaIsoft_DB;
USE JavaIsoft_DB;
CREATE TABLE Cars (
    carId INT AUTO_INCREMENT PRIMARY KEY,
    carName VARCHAR(100),
    brand VARCHAR(100),
    yearOfManufacture INT,
    fuelType VARCHAR(50),
    transmissionType VARCHAR(50),
    engineCapacity INT,
    price DOUBLE,
    color VARCHAR(50)
);
SELECT * FROM Cars;
drop table Cars;

-------------------------------------------------------------------------------------------------------------------------------------------------

USE JavaIsoft_DB;
CREATE TABLE PersonData 
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    bloodGroup VARCHAR(10),
    number VARCHAR(15),
    email VARCHAR(100)
);
SELECT * FROM PersonData;
drop table PersonData;

-------------------------------------------------------------------------------------------------------------------------------------------------

USE JavaIsoft_DB;
CREATE TABLE StudentDataFiles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    password VARCHAR(100),
    registered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM StudentDataFiles;
drop table StudentDataFiles;

-------------------------------------------------------------------------------------------------------------------------------------------------

USE JavaIsoft_DB;

CREATE TABLE students (
    student_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    student_age INT NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);


SELECT * FROM students;
TRUNCATE TABLE students;
drop table students;


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
    bloodGroup VARCHAR(5),
    number VARCHAR(10),
    email VARCHAR(100)
);
SELECT * FROM PersonData;
drop table PersonData;

-------------------------------------------------------------------------------------------------------------------------------------------------

USE JavaIsoft_DB;
CREATE TABLE StudentTable (
    studentId INT AUTO_INCREMENT PRIMARY KEY,
    studentName VARCHAR(255),
    age INT,
    email VARCHAR(255),
    phone VARCHAR(15),
    fee DECIMAL(10, 2)
);
SELECT * FROM StudentTable;
drop table StudentTable;

-------------------------------------------------------------------------------------------------------------------------------------------------


USE JavaIsoft_DB;
CREATE TABLE Country (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
CREATE TABLE State (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES Country(id) ON DELETE CASCADE
);
INSERT INTO Country (name) VALUES 
('India'), 
('USA'), 
('Canada'),
('UK'),
('Australia');
INSERT INTO State (name, country_id) VALUES
-- States for India
('Telangana', 1),
('Karnataka', 1),
('Andhra Pradesh', 1),
('Tamil Nadu', 1),
('Uttar Pradesh', 1),
-- States for USA
('California', 2),
('Texas', 2),
('New York', 2),
('Florida', 2),
('Illinois', 2),
-- States for Canada
('Ontario', 3),
('Quebec', 3),
('British Columbia', 3),
('Alberta', 3),
('Nova Scotia', 3),
-- States for UK
('England', 4),
('Scotland', 4),
('Wales', 4),
('Northern Ireland', 4),
('Cornwall', 4),
-- States for Australia
('New South Wales', 5),
('Queensland', 5),
('Victoria', 5),
('South Australia', 5),
('Western Australia', 5);
SELECT * FROM Country;
SELECT * FROM State;
Drop table Country;
Drop table State;

-------------------------------------------------------------------------------------------------------------------------------------------------


CREATE DATABASE StudentManagement;
USE StudentManagement;
CREATE TABLE Country (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
CREATE TABLE State (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES Country(id) ON DELETE CASCADE
);
INSERT INTO Country (name) VALUES 
('India'), 
('USA'), 
('Canada'),
('UK'),
('Australia');
INSERT INTO State (name, country_id) VALUES
-- States for India
('Telangana', 1),
('Karnataka', 1),
('Andhra Pradesh', 1),
('Tamil Nadu', 1),
('Uttar Pradesh', 1),
-- States for USA
('California', 2),
('Texas', 2),
('New York', 2),
('Florida', 2),
('Illinois', 2),
-- States for Canada
('Ontario', 3),
('Quebec', 3),
('British Columbia', 3),
('Alberta', 3),
('Nova Scotia', 3),
-- States for UK
('England', 4),
('Scotland', 4),
('Wales', 4),
('Northern Ireland', 4),
('Cornwall', 4),
-- States for Australia
('New South Wales', 5),
('Queensland', 5),
('Victoria', 5),
('South Australia', 5),
('Western Australia', 5);

-- Create Registration Table for storing user registration data
CREATE TABLE registration (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(255) NOT NULL,
    student_age INT NOT NULL,
    student_gender VARCHAR(50) NOT NULL,
    student_phone VARCHAR(15),
    student_blood_group ENUM('O+', 'O-', 'A+', 'A-', 'B+', 'B-', 'AB+', 'AB-') NOT NULL, 
    student_email VARCHAR(255) UNIQUE NOT NULL,
    student_password VARCHAR(255) NOT NULL
);
-- Create Dashboard Table for storing additional student data
CREATE TABLE dashboard (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(255),
    student_age INT,
    student_gender VARCHAR(50),
    student_dob DATE,
    student_phone VARCHAR(15),
    student_date_of_joining DATE,
    student_fee DECIMAL(10, 2),
    student_branch VARCHAR(50),
    student_country INT,
    student_state INT,
    student_address TEXT,
    FOREIGN KEY (student_country) REFERENCES Country(id),
    FOREIGN KEY (student_state) REFERENCES State(id)
);

SELECT * FROM Country;
SELECT * FROM State;
SELECT * FROM registration;
SELECT * FROM dashboard;

Drop table Country;
Drop table State;
drop table registration;
drop table dashboard;


-------------------------------------------------------------------------------------------------------------------------------------------------

USE JavaIsoft_DB;

CREATE TABLE PersonDataFile (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    PhoneNumber VARCHAR(15),
    EmailId VARCHAR(100),
    BloodGroup VARCHAR(10)
);


SELECT * FROM PersonDataFile;
Drop table PersonDataFile;


-------------------------------------------------------------------------------------------------------------------------------------------------

-- Create Table for the Person-MVCWithDatabase Project
USE JavaIsoft_DB;

CREATE TABLE persons (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    phoneNumber VARCHAR(15) NOT NULL,
    emailId VARCHAR(100) UNIQUE NOT NULL,
    bloodGroup VARCHAR(5) NOT NULL
);

SELECT * FROM persons;
Drop table persons;


-------------------------------------------------------------------------------------------------------------------------------------------------
CREATE DATABASE IF NOT EXISTS spring_mvc;

USE spring_mvc;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
  username VARCHAR(45) NOT NULL,
  password VARCHAR(45) NULL,
  firstname VARCHAR(45) NOT NULL,
  lastname VARCHAR(45) NULL,
  email VARCHAR(45) NULL,
  address VARCHAR(45) NULL,
  phone BIGINT NULL,
  PRIMARY KEY (username)
);

SELECT * FROM users;
Drop table users;

CREATE DATABASE SHARATH_DB;
USE SHARATH_DB;
CREATE TABLE PersonDetiles
(
PersonID bigint auto_increment primary key,
FName varchar (50) not null,
LName  varchar(50) not null,
Email varchar(50) not null,
PhoneNumber bigint(100) not null,
AddharCardNumber bigint (100) not null,
Age bigint(20) not null,
CityName varchar (50) not null,
DistName varchar(50) not null,
PinCode bigint(30) not null
);

SELECT * FROM PersonDetiles;

INSERT INTO PersonDetiles(FName,LName,Email,PhoneNumber,AddharCardNumber,Age,CityName,DistName,PinCode)
VALUES('SHARATH CHANDRA REDDY','BALAIAHGARI','BALAIAHGARISHARATHREDDY@GMAIL.COM',9989915690,754589652143,22,'KOTHAKOTA','WANAPARTHY',509381);

INSERT INTO PersonDetiles(FName,LName,Email,PhoneNumber,AddharCardNumber,Age,CityName,DistName,PinCode)
VALUES('Ravi','Balaiahgari','ravi@GMAIL.COM',4667891236,142472255214533,21,'PALLY','WANAPARTHY',509381);

INSERT INTO PersonDetiles(FName,LName,Email,PhoneNumber,AddharCardNumber,Age,CityName,DistName,PinCode)
VALUES('REDDY','Reddyssss','REDDY@GMAIL.COM',1452367895,31414975241599,28,'MAHABUB','DEVARAKADHRA',554281);

INSERT INTO PersonDetiles(FName,LName,Email,PhoneNumber,AddharCardNumber,Age,CityName,DistName,PinCode)
VALUES('BUNTY','BIKE','BUNTY@GMAIL.COM',4789561235,724896541654168,20,'KOTHAPET','HYDERABAD',500084);

DELETE FROM PersonDetiles WHERE PersonID=5;

TRUNCATE PersonDetiles;

SELECT FNAME FROM PersonDetiles WHERE FNAME='SHARATH CHANDRA REDDY';

SELECT * FROM PersonDetiles WHERE FNAME LIKE 'B%';
SELECT * FROM PersonDetiles WHERE LNAME LIKE '%S';
SELECT * FROM PersonDetiles WHERE FNAME LIKE '%S%';


UPDATE PersonDetiles SET FNAME='SHARATH' WHERE PersonID=1;
UPDATE PersonDetiles SET EMAIL='SHARATH@GMAIL.COM' WHERE PersonID=1;

ALTER TABLE PersonDetiles ADD HOUSECOLOUR VARCHAR(50) NOT NULL;
ALTER TABLE PersonDetiles DROP COLUMN HOUSECOLOUR;



SELECT FNAME FROM PersonDetiles;
SELECT FNAME,LNAME,EMAIL FROM PersonDetiles;
SELECT DISTINCT FNAME,LNAME FROM PersonDetiles;

SELECT * FROM PersonDetiles WHERE FNAME='BUNTY' AND pincode=500084;
SELECT * FROM PersonDetiles WHERE DistName='KOTHAKOTA' OR DistName='HYDERABAD';
SELECT * FROM PersonDetiles WHERE NOT CityName='KOTHAKOTA';

SELECT * FROM PersonDetiles ORDER BY EMAIL ASC;
SELECT * FROM PersonDetiles ORDER BY EMAIL DESC;
SELECT * FROM PersonDetiles ORDER BY CityName ASC , DistName DESC;

UPDATE PersonDetiles SET PhoneNumber=99899 WHERE PersonID=1;
UPDATE PersonDetiles SET Age=72 WHERE PersonID=1;

SELECT * FROM PersonDetiles WHERE CityName IN('KOTHAKOTA','PALLY');

DROP TABLE PersonDetiles;

SELECT * FROM PersonDetiles;

-------------------------------------------------------------------------------------------------------------------------------------------------

USE SHARATH_DB;
CREATE TABLE RegisterServletData
(
Regist_ID bigint auto_increment primary key,
FirstName varchar (50) not null,
LastName varchar (50) not null,
Email varchar(50) not null,
Phone varchar(50) not null
);
SELECT * FROM RegisterServletData;
Drop Table RegisterServletData;

-------------------------------------------------------------------------------------------------------------------------------------------------

USE SHARATH_DBorderspersonregisterservletdata;
create table Registration
 (
 fullname varchar(50) ,
 id varchar(50) ,
 mobile varchar(50),
 passwords varchar(50)
 );
SELECT * FROM Registration;

-------------------------------------------------------------------------------------------------------------------------------------------------

USE SHARATH_DB;
create table SpringExample
(
Id bigint auto_increment primary key,
Firstname varchar(50),
Lastname varchar(50)

)
select * from SpringExample;

-------------------------------------------------------------------------------------------------------------------------------------------------





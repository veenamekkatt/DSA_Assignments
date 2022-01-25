-- ## GROUP 14 ##--


-- Create database

USE DSICT;


-- Create the required Table 

CREATE TABLE employees (
Employee_ID VARCHAR(10) PRIMARY KEY,
Name VARCHAR(30) NOT NULL,
Gender VARCHAR(30) NOT NULL,
Department VARCHAR(30) NOT NULL,
Salary INT NOT NULL,
DOB DATE NOT NULL,
Date_of_joining DATE NOT NULL);
INSERT INTO employees VALUES
('CPO123','Ann Mery','F','HR',45000,'1989-10-10','2018-01-01'),
('CPO087','Felix M','M','Finance',48000,'1981-04-12','2000-12-10'),
('CPO197','Merlin','M','CEO',80000,'1990-03-01','2011-05-10'),
('CPO213','Philip','M','Retail',47000,'1991-04-01','2012-06-11'),
('CPO243','Michael','M','Retail',40000,'1992-12-01','2016-05-30'),
('CPO289','Susan','F','Retail',40000,'1991-01-01','2016-04-01'),
('CPO298','Abram','M','Relations',30000,'1994-04-17','2016-10-06'),
('CPO300','Alia','F','Relations',30000,'1995-10-17','2016-10-18'),
('CPO321','Raichal','F','Marketing',34000,'1990-10-09','2016-10-22'),
('CPO276','Thomas','M','Marketing',44000,'1983-11-19','2018-10-22')
;

-- 2. Write SQL queries to select employees from the following
-- departments
-- a. Marketing
-- b. Retail
-- c. HR

SELECT * FROM employees WHERE department LIKE '%Marketing%' or department LIKE '%HR%' or department LIKE '%Retail%'  ;

-- 3. Write SQL queries to create a table only containing female employees

SELECT * FROM employees WHERE gender = 'F';

-- 4. Write SQL queries to display the Maximum,Minimum and Average Salary

SELECT MAX(SALARY) AS [Max Salary] ,MIN(SALARY) As [Min Salary],AVG(SALARY) As [Average Salary]  FROM employees;

-- 5. Write SQL query to display the employee details based on the following conditions.
-- a. Male employees having salary greater than 40000
-- b. Female employees having salary less than 45000
-- c. Employee having salary between 30000 and 60000 and working in Marketing or Retail department.


Select * from employees where salary < 40000;

Select * from employees where gender='F' and salary>45000;
select Employee_ID, Name 
from employees where salary <45000;

SELECT Employee_ID, Name,salary,department
FROM employees
WHERE salary BETWEEN 30000 AND 60000 
AND department IN ('Marketing','Retail') ;
      
-- Select the employees from following departments:
		--Marketing
		--Retail
		--HR

SELECT * FROM employees WHERE DEPARTMENT='MARKETING';
SELECT * FROM employees WHERE DEPARTMENT='RETAIL';
SELECT * FROM employees WHERE DEPARTMENT='HR';


--Create new table with female_employees data only 

SELECT * INTO female_employees FROM  employees WHERE Gender='F'

SELECT * FROM female_employees;



--Select maximum,minimum,average salary

SELECT MAX(SALARY) AS [Maximum Salary] ,MIN(SALARY) AS [Minimum Salary],AVG(SALARY) AS [Average Salary] FROM employees;



--SQL query to display the employee details based on the following conditions.
	--a. Male employees having salary greater than 40000
	--b. Female employees having salary less than 45000
	--c. Employee having salary between 30000 and 60000 and working in Marketing or Retail department.

SELECT * FROM employees where Gender='M' and Salary > 40000;
SELECT * FROM employees where Gender='F' and Salary < 45000;
SELECT * FROM employees where (Department='Marketing' or Department='Retail') and (Salary between 30000 and 60000);
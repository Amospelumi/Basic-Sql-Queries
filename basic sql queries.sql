-- Write a query to display the names (first_name, last_name) using alias name “First Name", "Last Name"
SELECT first_name First_Name, last_name "Last Name"
from employees;


-- Write a query to get unique department ID from employee table.
select DISTINCT department_id
from employees;


-- Write a query to get all employee details from the employee table order by first name, descending.
SELECT * from employees order by FIRST_NAME DESC;


-- Write a query to get the names (first_name, last_name), salary, PF of all the employees (PF is calculated as 15% of salary).
SELECT first_name, last_name, salary, salary * 0.15 PF
from employees;


-- Write a query to get the employee ID, names (first_name, last_name), salary in ascending order of salary.
SELECT employee_id, first_name, last_name, salary
from employees order by SALARY ASC;


-- Write a query to get the total salaries payable to employees.
SELECT SUM(salary)
from employees;


-- Write a query to get the maximum and minimum salary from employees table.
select MAX(salary) Developers, MIN(salary) CallCenters
from employees;


-- Write a query to get the average salary and number of employees in the employees table.
SELECT AVG(salary) Securities, COUNT(*) "Total Number of Employees"
from employees;


-- Write a query to get the number of employees working with the company.
select COUNT(employee_id) "Total Employees"
from employees;


-- Write a query to get the number of jobs available in the employees table.
select COUNT(JOB_ID)
from employees;


-- Write a query get all first name from employees table in upper case.
select UPPER(FIRST_NAME)
from employees;


-- Write a query to get the first 3 characters of first name from employees table.
select SUBSTRING(first_name, 1,3)
from employees;

-- Write a query to calculate 171*214+625.
select 171*214+625 result;


-- Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) of all the employees from employees table. 
select CONCAT(first_name, " ",  last_name) "Employees Name" from employees;


-- Write a query to get first name from employees table after removing white spaces from both side.
select TRIM(first_name) Trimmed
from employees;


-- Write a query to get the length of the employee names (first_name, last_name) from employees table. 
select LENGTH(first_name) 'first name', LENGTH(last_name) 'last name', 
LENGTH(first_name) + LENGTH(last_name) "Total Lengths"
from employees;


-- Write a query to check if the first_name fields of the employees table contains numbers.
select * from employees
where first_name REGEXP '[0-9]';


-- Write a query to select first 10 records from a table.
select * from employees limit 10;


-- Write a query to get monthly salary (round 2 decimal places) of all employees.
select CONCAT(first_name, " ", last_name) "Employees", round(salary/12,2) "Monthly salary"
from employees;


-- Write a SQL statement to create duplicate of countries table named country_new with all structure and data.
create table if not exists pelumi_duplicate
as select * from countries;


-- Write a SQL statement to insert NULL values against region_id column for a row of countries table.
insert into pelumi_duplicate (COUNTRY_ID,COUNTRY_NAME,REGION_ID) 
values('A1','AMC',null);


-- Write a SQL statement to insert 3 rows by a single insert statement.
insert into pelumi_duplicate 
values('A2','AMO', 33),
		('A2','AMO', 33),
		('A2','AMO', 33);




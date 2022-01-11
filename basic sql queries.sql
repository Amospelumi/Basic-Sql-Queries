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

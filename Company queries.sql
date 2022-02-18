-- employee, branch, client, works_with, branch_supplier

-- Find all branches
SELECT *
FROM branch;

-- employee by salary
SELECT *
FROM employee
ORDER BY salary DESC;

-- employee by sex then name
SELECT *
FROM employee
ORDER BY sex, first_name, last_name
LIMIT 5;

-- Find the first and last names of all employees
SELECT first_name AS forename, last_name as surename
FROM employee
ORDER BY first_name ASC;

-- Find the different supplies being used
SELECT DISTINCT supply_type
FROM branch_supplier;

-- Functions
-- Find the number of employees.
SELECT COUNT(emp_id)
FROM employee;

-- Find the number of female employees born after 1970
SELECT COUNT(emp_id)
FROM employee
WHERE sex = 'F' AND birth_day >= '1971-01-01';

-- Average of all male employees salaries:
SELECT AVG(salary)
FROM employee
WHERE sex = 'M';

-- sum of all female emplyee's salaries
SELECT SUM(salary)
FROM employee
WHERE sex = 'F';

-- How many F and M employees
SELECT COUNT(sex), sex
FROM employee
GROUP BY sex;

-- Total sales of each salesman
SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY emp_id;

-- Ticket by customer
SELECT SUM(total_sales), client_id
FROM works_with
GROUP BY client_id 
ORDER BY total_sales DESC;
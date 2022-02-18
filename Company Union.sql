-- Find a list of employee and branch names
SELECT first_name AS Names
FROM employee
UNION
SELECT branch_name
FROM branch
UNION
SELECT client_name
FROM client;

-- SELECT client_name, branch_id
SELECT client_name, client.branch_id
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;

-- All money spent and earned by the company
SELECT salary
FROM employee
UNION
SELECT total_sales
FROM works_with;
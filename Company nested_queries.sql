-- Nested queries

-- Names of employees who have sold over $30k to a single customer.
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
	SELECT works_with.emp_id
	FROM works_with
	WHERE works_with.total_sales > 30000
);

-- Clients who are handled by Michael Scott branch.
SELECT client.client_name
FROM client
WHERE client.branch_id IN (
	SELECT branch.branch_id
	FROM branch
	where branch.mgr_id = 102
    );

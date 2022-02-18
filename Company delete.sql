
-- DELETE SET NULL
-- When branch table was created:
-- FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL

-- Remove Michael Scott: See what happens to branch table.
DELETE FROM employee
WHERE emp_id = 102;

SELECT * FROM branch;
SELECT * FROM employee;

-- DELETE CASCADE
-- Branch supplier table:
-- FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE

-- Delete branch 02 and see what happens with branch supplier table:
DELETE FROM branch
WHERE branch_id = 2;

SELECT * FROM branch_supplier;
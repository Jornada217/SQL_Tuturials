-- % = any # character, _ = one character

-- find any client's who are an LLC
SELECT *
FROM client
WHERE client_name LIKE '%LLC';

-- Any branch supplier in the label business
SELECT *
FROM branch_supplier 
WHERE supplier_name LIKE '% Label%';

-- Any employee born in October
SELECT *
FROM employee
WHERE birth_day LIKE '____-10%';

-- Any client who are schools
SELECT *
FROM client
WHERE client_name LIKE '%school%';
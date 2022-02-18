CREATE TABLE trigger_test (
	message VARCHAR(100)
);

-- Automate every time a record gests inserted at the empoyee table:
-- Run this at the command line client
DELIMITER $$
CREATE 
	TRIGGER mytrigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN 
		INSERT INTO trigger_test VALUES('added new employee');
	END$$
DELIMITER ;

-- TEST:
INSERT INTO employee
VALUES(109, 'Oscar', 'Martinez', '1968-02-19', 'M', 69000, 106, 3);

SELECT * FROM trigger_test;

-- EX 02: Run this at the command line client
DELIMITER $$
CREATE 
	TRIGGER mytrigger1 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN 
		INSERT INTO trigger_test VALUES(NEW.first_name);
	END$$
DELIMITER ;
-- TEST:
INSERT INTO employee
VALUES(111, 'jp', 'gOMES', '1978-02-19', 'M', 69000, 106, 3);

SELECT * FROM trigger_test;

-- EX 03: IF, ELSEIF, ELSE.
-- alter this at the command line client
DELIMITER $$
CREATE 
	TRIGGER mytrigger2 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN 
		IF NEW.sex = 'M' THEN
			INSERT INTO trigger_test VALUES('added male employee');
		ELSEIF NEW.sex = 'F' THEN
			INSERT INTO trigger_test VALUES('added female');
		ELSE
			INSERT INTO trigger_test VALUES('added other employee');
		END IF;
	END$$
DELIMITER ;

-- TEST
INSERT INTO employee
VALUES(112, 'Joe', 'Rogan', '1968-02-19', 'M', 69000, 106, 3);

SELECT * FROM trigger_test;

INSERT INTO employee
VALUES(113, 'Kate', 'Perry', '1968-02-19', 'M', 69000, 106, 3); -- oops
INSERT INTO employee
VALUES(114, 'Kate', 'Janet', '1968-02-19', 'F', 69000, 106, 3);
INSERT INTO employee
VALUES(115, 'Mike', 'Janet', '1968-02-19', 'T', 69000, 106, 3);

-- Dropping Triggers: Type at the terminal client.
DROP TRIGGER mytrigger;
DROP TRIGGER mytrigger1;
DROP TRIGGER mytrigger2;


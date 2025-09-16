/**
	Aliases are used to give a table or column a temporary name during the execution of a query.
	They're intended to make column names more readable

	Aliases are optional and are created using the AS keyword.

	The AS clause is used to relabel the output column
**/

-- for renaming output columns using AS
SELECT id AS identification
FROM
  customers;

-- not using AS since it's optional
SELECT id AS ident
FROM
  customers;


-- not using AS since it's optional
SELECT
  id AS identification,
  country
FROM
  customers;

-- for naming tables
SELECT c.id
FROM
  customers AS c;

-- for naming tables using AS
SELECT c.id
FROM
  customers AS c;

-- using the AS keyword and double quotes for creating alias with space characters
SELECT id AS "Id Number 1"
FROM
  customers;

-- only double quotes for creating alias with space characters
SELECT id AS "Id Number 2"
FROM
  customers;

-- the AS keyword is often used when two or more fields are concatenated into one.
-- using double pipe (||) to concatenate columns 
SELECT id || first_name AS id_nombre
FROM
  customers;

-- adding characters between the concatenated columns
SELECT id || '-' || first_name AS id_nombre
FROM
  customers;

-- adding characters between the concatenated columns using CONCAT function
SELECT CONCAT(id, '-', first_name) AS id_nombre
FROM
  customers;

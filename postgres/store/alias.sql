
/**
	Aliases are used to give a table or column a temporary name during the execution of a query. They're 
	intended make column names more readable.
	
	Aliases are optional and are created using the AS keyword.
	
	The AS clause is used to relabel the output column
**/

-- for naming columns using AS
SELECT 
	id AS identification
FROM 
	customers;

-- not using AS since it's optional
SELECT 
	id identification
FROM 
	customers;


-- not using AS since it's optional
SELECT 
	id ident, country
FROM 
	customers;

-- for naming tables
SELECT 
	c.id
FROM 
	customers c;

-- for naming tables using AS
SELECT 
	c.id
FROM 
	customers AS c;


-- Using the AS keyword and double quotes for creating alias that contains space characters
SELECT 
	id AS "Id Number 1"  
FROM 
	customers;

-- Only double quotes for creating alias that contains space characters
SELECT 
	id "Id Number 2"  
FROM 
	customers;

-- The AS keyword is often used when two or more fields are concatenated into one.
-- Using double pipe (||) to concatenate columns 
SELECT 
	id || first_name AS id_nombre 
FROM 
	customers;

-- adding characters between the concatenated columns
SELECT 
	id || '-' || first_name AS id_nombre 
FROM 
	customers;

-- adding characters between the concatenated columns using CONCAT function
SELECT 
	CONCAT(id, '-', first_name) AS id_nombre 
FROM 
	customers;


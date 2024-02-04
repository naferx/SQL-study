-- counts all records. Good practice to use alias
SELECT 
	COUNT(*) AS total
FROM
	customers;
	

-- counts all records, similar to COUNT(*)
SELECT
	COUNT(1) AS total
FROM
	customers;


-- counts rows only where country is not null
SELECT
	COUNT(country)
FROM
	customers;
	

-- filtering out rows with WHERE clause
SELECT
	COUNT(country) AS total_brazil1
FROM
	customers
WHERE 
	country = 'Brazil';


SELECT
	COUNT(country) AS total_brazil2
FROM
	customers
WHERE 
	LOWER(country) = 'brazil';


-- using CASE to filter rows. Similar to the previous example
SELECT 
	COUNT(CASE WHEN country = 'Brazil' THEN 1 END) AS total_brazil3
FROM
	customers;

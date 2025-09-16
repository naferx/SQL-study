-- counts all records. Good practice to use alias
SELECT COUNT(*) AS total
FROM
  customers;


-- counts all records, similar to COUNT(*)
SELECT COUNT(*) AS total
FROM
  customers;


-- counts rows only where country is not null
SELECT COUNT(country)
FROM
  customers;



/*
	Counts only the different countries
	if the column is not unique the DISTINCT clause should be used

	Checking the different

	SELECT
		DISTINCT country
	FROM
		customers;
*/
SELECT COUNT(DISTINCT country) AS total_paises
FROM
  customers;


-- filtering out rows with WHERE clause
SELECT COUNT(country) AS total_brazil1
FROM
  customers
WHERE
  country = 'Brazil';


SELECT COUNT(country) AS total_brazil2
FROM
  customers
WHERE
  LOWER(country) = 'brazil';


-- using CASE to filter rows. Similar to the previous example
SELECT
  COUNT(
    CASE WHEN country = 'Brazil' THEN 1 END
  ) AS total_brazil3
FROM
  customers;

-- aggregate function per group
SELECT
  country,
  COUNT(*) AS total_per_country
FROM
  customers
GROUP BY
  country;
/*
"country"	"total_per_country"
  null 	      1
  "Colombia"	1
  "Brazil"	  2
*/

-- Excluding nulls in the partitioning column
SELECT
  country,
  COUNT(*) AS total_per_country
FROM
  customers
WHERE
  country IS NOT NULL
GROUP BY
  country;
/*
"country"	"total_per_country"
  "Colombia"	1
  "Brazil"	  2
*/

-- ordering the results using an aggregate result
SELECT
  country,
  COUNT(*) AS total_per_country
FROM
  customers
WHERE
  country IS NOT NULL
GROUP BY
  country
ORDER BY
  total_per_country DESC;
/*
"country"	"total_per_country"
  "Brazil"	  2
  "Colombia"	1
*/

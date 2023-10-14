-- comment

SELECT 
	*
FROM 
	CUSTOMERS;


-- obtiene los diferentes paises sin repetidos
SELECT
	DISTINCT COUNTRY
FROM 
	CUSTOMERS;


-- obtiene el numero de diferentes paises
SELECT 
	COUNT(DISTINCT COUNTRY) AS TOTAL_PAISES
FROM 
	CUSTOMERS;


-- agregar por pais
SELECT 
	COUNTRY,
	COUNT(*)
FROM 
	CUSTOMERS
GROUP BY 
	COUNTRY;

-- ordernar de menor a mayor
SELECT 
	COUNTRY,
	COUNT(*)
FROM 
	CUSTOMERS
GROUP BY 
	COUNTRY
ORDER BY 
	COUNT(*) ASC;
-- comment

SELECT 
	*
FROM 
	customers;


-- obtiene los diferentes paises sin repetidos
SELECT
	DISTINCT country
FROM 
	customers;


-- obtiene el numero de diferentes paises
SELECT 
	COUNT(DISTINCT country) AS total_paises
FROM 
	customers;


-- agregar por pais
SELECT 
	country,
	COUNT(*)
FROM 
	customers
GROUP BY 
	country;

-- ordernar de menor a mayor
SELECT 
	country,
	COUNT(*)
FROM 
	customers
GROUP BY 
	country
ORDER BY 
	COUNT(*) ASC;
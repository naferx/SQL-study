/*
	SUM - Computes the sum of the non-null input values
*/
SELECT SUM(total)
FROM
  orders;


SELECT
  date,
  total
FROM
  orders
ORDER BY
  1 ASC;


SELECT
  c.first_name,
  SUM(o.total) AS total
FROM
  orders o
INNER JOIN
  customers c ON o.customer_id = c.id
GROUP BY
  c.first_name
ORDER BY
  total ASC

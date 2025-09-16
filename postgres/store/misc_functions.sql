-- writing expressions
SELECT 8760000 + 570000 AS valor;

SELECT
  id,
  first_name,
  (id + 101) / 2 AS avg
FROM
  customers;


SELECT RANDOM();

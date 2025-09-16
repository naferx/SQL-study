-- The LIMIT clause limits the maximum number of records to return
SELECT id
FROM
  customers
LIMIT 2;


-- The OFFSET clause specifies where to start selecting the records to return
SELECT id
FROM
  orders; -- 1 2 3 4

SELECT id
FROM
  orders
LIMIT 2 OFFSET 2; -- 3 4

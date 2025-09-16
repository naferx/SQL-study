/*

VALUES provides a way to generate a "constant table" that can be used in a query
without having to actually create and populate a table on-disk. The syntax is:

VALUES ( expression [, ...] ) [, ...]

*/

SELECT *
FROM
  (
    VALUES
    (1, 'one'),
    (2, 'two'),
    (3, 'three')
  ) AS temptable (id, word)
WHERE
  id > 1;


-- add a cte that is a constant table
WITH data (id, word) AS (
  VALUES
  (1, 'one'),
  (2, 'two'),
  (3, 'three')
)

SELECT *
FROM
  data
WHERE
  id > 1;

/*
   (INNER) JOIN: Returns records that have matching values in both tables

   LEFT (OUTER) JOIN: Returns all records from the left table,
    and the matched records from the right table

   RIGHT (OUTER) JOIN: Returns all records from the right table,
    and the matched records from the left table

   FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table

  The words INNER and OUTER are optional.
 */

 -- implicit inner join
SELECT
  o.id AS order_id,
  c.first_name,
  o.date
FROM
  orders AS o,
  customers AS c
WHERE
  o.customer_id = c.id;


-- explicit inner join using the JOIN clause
SELECT
  o.id AS order_id,
  c.first_name,
  o.date
FROM
  orders AS o
INNER JOIN
  customers AS c ON o.customer_id = c.id;


-- explicit inner join using the JOIN clause and changing the order of the tables
SELECT
  o.id AS order_id,
  c.first_name,
  o.date
FROM
  customers AS c
INNER JOIN orders AS o ON c.id = o.customer_id;


-- explicit inner join using the INNER JOIN clause
SELECT
  o.id AS order_id,
  c.first_name,
  o.date
FROM
  orders AS o
INNER JOIN customers AS c ON o.customer_id = c.id;


-- explicit inner join using the INNER JOIN clause and changing the order of the tables
SELECT
  o.id AS order_id,
  c.first_name,
  o.date
FROM
  customers AS c
INNER JOIN orders AS o ON c.id = o.customer_id;

/*
	The USING clause is a shorthand that allows you to take advantage of the specific situation where
	both sides of the join use the same name for the joining column(s). It takes a comma-separated
	list of the shared column names and forms a join condition that includes an equality comparison
	for each one. For example, joining T1 and T2 with USING (a, b) produces the join condition
	ON T1.a = T2.a AND T1.b = T2.b.

	SELECT
		o.id order_id, c.first_name, o.date
	FROM
		customers c
	JOIN orders o USING(<same_column_name>);
*/

SELECT
  o.id AS order_id,
  c.id AS customer_id,
  c.first_name,
  o.date
FROM
  customers AS c
INNER JOIN orders AS o ON c.customer_id = o.customer_id;


-- left outer join
SELECT
  o.id AS order_id,
  c.id AS customer_id,
  c.first_name
FROM
  customers AS c
LEFT OUTER JOIN orders AS o ON c.id = o.customer_id;

-- right outer join
SELECT
  o.id AS order_id,
  c.id AS customer_id,
  c.first_name
FROM
  orders AS o
RIGHT OUTER JOIN customers AS c ON o.customer_id = c.id;

/*
    A window function performs a calculation across a set of table rows that are somehow related to the current row.

    Perform aggregate operations on group of rows, but they produce a result for each row
*/

-- get the customer and sum of orders per customer
SELECT
  customer_id, 
  SUM(total) AS total
FROM
  orders
GROUP BY
  customer_id;
/*
* "customer_id"	"total"
* 2	49000.00
* 1	230000.00
**/


-- get the customer, total of each order and sum of all orders
SELECT 
	customer_id AS cid,
	total AS order_total,
	SUM(total) OVER () AS all_orders_total
FROM
	orders;
/*
"cid"	 "order_total"	   "all_orders_total"
  1	    56000.00	  279000.00
  1	    125000.00	  279000.00
  1	    49000.00	  279000.00
  2	    49000.00	  279000.00
*/


-- get the customer, total of each order and the sum of the orders per customer
SELECT 
	customer_id AS cid,
	total AS order_total,
	SUM(total) OVER (PARTITION BY customer_id) AS customer_orders_total
FROM
	orders;
/*
"cid"	"order_total"	   "customer_orders_total"
	1		56000.00	 230000.00
	1	  125000.00	 230000.00
	1	  49000.00	 230000.00
	2	  49000.00	 49000.00
*/

-- RANK() returns the rank of the current row, with gaps; that is, the row_number of the first row
-- in its peer group.

--
-- get the customer, total of each order and total of orders per customer, 
-- and the rank of each order based on the total in DESC order in the partition
-- 
SELECT 
	customer_id AS cid,
	total AS order_total,
	SUM(total) OVER (PARTITION BY customer_id) AS customer_orders_total,
	RANK() OVER (ORDER BY total DESC) AS rank_per_order_total
FROM
	orders;
/*
"cid"	"order_total"	"customer_orders_total"	"rank_per_order_total"
1	    125000.00	    230000.00	               1
1	    56000.00	    230000.00	               2
1	    49000.00	    230000.00	               3
2	    49000.00	    49000.00	               3
*/


--
-- get the customer, total of each order and total of orders per customer, 
-- and the rank of each order based on the total in ASC order in the partition
-- 
SELECT 
	customer_id AS cid,
	total AS order_total,
	SUM(total) OVER (PARTITION BY customer_id) AS customer_orders_total,
	RANK() OVER (ORDER BY total ASC) AS rank_per_order_total
FROM
	orders;
/*
"cid"	"order_total"	"customer_orders_total"	"rank_per_order_total"
1			49000.00			230000.00								1
1			56000.00			230000.00								3
1			125000.00			230000.00								4
2			49000.00			49000.00								1
*/


--
-- get the customer, total of each order and total of orders per customer, 
-- and the rank of each order based on the total in ASC order in the partition
-- 
SELECT 
	customer_id AS cid,
	total AS order_total,
	SUM(total) OVER (PARTITION BY customer_id) AS customer_orders_total,
	RANK() OVER (PARTITION BY customer_id ORDER BY total DESC) AS rank_per_customer_order_total
FROM
	orders;
/*
"cid"	"order_total"	"customer_orders_total"	"rank_per_customer_order_total"
1			125000.00			230000.00								1
1			56000.00			230000.00								2
1			49000.00			230000.00								3
2			49000.00			49000.00								1	
*/

/**
After a query has produced an output table (after the select list has been processed) it can optionally
be sorted. If sorting is not chosen, the rows will be returned in an unspecified order. 
The actual order in that case will depend on the scan and join plan types and the order on disk, 
but it must not be relied on. A particular output ordering can only be guaranteed if the sort step is explicitly chosen.
The ORDER BY clause specifies the sort order:

	SELECT select_list
	FROM table_expression
	ORDER BY sort_expression1 [ASC | DESC] [NULLS { FIRST | LAST }]
	[, sort_expression2 [ASC | DESC] [NULLS { FIRST |
	LAST }] ...]

**/

-- Non-deterministic order. It will depend on the scan, join plan types
-- and the order on disk.
SELECT 
	*
FROM 
	CUSTOMERS;


-- by default ASC: A -> B
SELECT 
	*
FROM 
	CUSTOMERS
ORDER BY 
	FIRST_NAME; 


-- explicitly Z -> ... -> A
SELECT
	 *
FROM 
	CUSTOMERS
ORDER BY 
	FIRST_NAME DESC;


SELECT 
	*
FROM 
	CUSTOMERS
ORDER BY 
	country ASC, id DESC;


SELECT 
	*
FROM 
	CUSTOMERS
ORDER BY 
	country ASC, id DESC NULLS LAST;

/*
 When more than one expression is specified, 
 the later values are used to sort rows that are equal according to the earlier values
 
 The NULLS FIRST and NULLS LAST options can be used to determine whether nulls appear before
 or after non-null values in the sorting ordering.
 
 By default, 
  DESC -> NULLS FIRST
  ASC  -> NULLS LAST
*/


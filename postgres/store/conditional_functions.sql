/*
  SQL-compliant conditional expressions available in PostgreSQL

COALESCE(value [, ...])
The COALESCE function returns the first of its arguments that is not null. Null is returned only if all
arguments are null. It is often used to substitute a default value for null values when data is retrieved for
display
*/
SELECT COALESCE(NULL) AS mycolumn; -- NULL
SELECT COALESCE(NULL, 2) AS mycolumn; -- 2
SELECT COALESCE(1, 2) AS mycolumn; -- 1
SELECT COALESCE(NULL, NULL) AS mycolumn; -- NULL
SELECT COALESCE(NULL, NULL, 3, 4) AS mycolumn; -- 3

/*
NULLIF(value1, value2)
The NULLIF function returns a null value if value1 equals value2; otherwise it returns value1.
This can be used to perform the inverse operation of the COALESCE
*/
SELECT NULLIF(1, 1) AS mycolumn; -- null
SELECT NULLIF(1, 2) AS mycolumn; -- 1
SELECT NULLIF(3, NULL) AS mycolumn; -- 3
SELECT NULLIF(NULL, NULL) AS mycolumn; -- NULL

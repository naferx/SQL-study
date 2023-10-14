 -- writing expressions
SELECT 
    8760000 + 570000  AS valor;
 
SELECT 
    id, 
    (id + 101) / 2 avg, 
    first_name 
FROM 
    customers;
 
 
SELECT RANDOM();


SELECT NOW(); -- returns a timestamp with time zone. ie 2023-09-12 21:26:10.01828-05
 

SELECT CURRENT_DATE; -- returns the current date (date datatype) i.e 2023-09-18
 
 
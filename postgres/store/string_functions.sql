SELECT 
	LEFT('COMPUTER', 1);
	
SELECT 
	RIGHT('COMPUTER', 2);
	
SELECT 
	UPPER('hello world');
	
SELECT 
	LOWER('DISTRIBUTED SYSTEMS');
	
SELECT 
	LENGTH('Data Science');


SELECT 
	SUBSTRING('partitioning', 2); -- artitioning

SELECT 
	SUBSTRING('partitioning' from 2); -- artitioning

SELECT 
	SUBSTRING('partitioning', 2, 4); -- arti
	
SELECT 
	SUBSTRING('partitioning' from 2 for 4); -- arti

-- similar to LEFT('partitioning', 4)
SELECT
	SUBSTRING('partitioning' for 4); -- part

SELECT
	FORMAT('Hello %s!', 'World');


SELECT
	OVERLAY('desktop interactive' PLACING 'lol' FROM 2 FOR 3);
	

-- returns the first starting index of the substring
SELECT
	POSITION('th' IN 'ethomas'); --2


SELECT
	LENGTH('   FOUR   ') AS original, --10
	LENGTH( TRIM('   FOUR   ') ) AS trimmed; -- 4


-- returns the string representation of all arguments. Omit nulls
SELECT
	CONCAT('hola ', NULL, -1, false, 45.2); --hola -1f45.2


SELECT
	INITCAP('fiRst tIMe hERE'); --First Time Here


SELECT
	REPEAT('ht ', 4); --ht ht ht ht


SELECT
	REVERSE('ford'); --dorf


SELECT
	STARTS_WITH('building', 'bu'); --true
	
SELECT
	STARTS_WITH('building', 'uil'); --false

SELECT
	ENDS_WITH('building', 'bu'); --true
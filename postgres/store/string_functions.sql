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


		
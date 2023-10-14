/**
	=		Equal
	>		Greater than
	<		Less than
	>=		Greater than or equal
	<=		Less than or equal
	<>		Not equal
	!= 		Not equal
	BETWEEN	Between a certain range
	LIKE	Search for a pattern
	IN		To specify multiple possible values for a column
	
	
	Note: <> is the standard SQL notation for “not equal”. != is an alias, which is converted to <> at
	a very early stage of parsing. Hence, it is not possible to implement != and <> operators that
	do different things.
**/

SELECT 
	*
FROM 
	customers
WHERE 
	id = 1;


-- same result using <> or !=
SELECT 
	*
FROM 
	customers
WHERE 
	id <> 2;

SELECT 
	*
FROM 
	customers
WHERE 
	id != 2;


SELECT 
	*
FROM 
	customers
WHERE 
	id > 1;

SELECT 
	*
FROM 
	customers
WHERE 
	id >= 3;


SELECT 
	*
FROM 
	customers
WHERE 
	id <= 2;


SELECT
	*
FROM 
	customers 
WHERE 
	country = 'Colombia';

/**
  For string comparison

  A < B < C < ... < Z
**/
SELECT 
	*
FROM 
	customers 
WHERE 
	country > 'Brasil';



------------------ ### BETWEEN ### ------------------

/**
	The BETWEEN predicate simplifies range tests:
	a BETWEEN x AND y
	
	is equivalent to: a >= x AND a <= y
**/
SELECT 
	*
FROM 
	customers
WHERE 
	id BETWEEN 1 AND 2;


SELECT 
	*
FROM 
	customers
WHERE 
	id >= 1 AND id <= 2;

------------------ ### END BETWEEN ### ------------------


------------------ ### LIKE ### ------------------

/**
	string LIKE pattern [ESCAPE escape-character]
	string NOT LIKE pattern [ESCAPE escape-character]

	The LIKE expression returns true if the string matches the supplied pattern.
	(As expected, the NOT LIKE expression returns false if LIKE returns true, 
	and vice versa. An equivalent expression is NOT (string LIKE pattern).)

	If pattern does not contain percent signs or underscores, then the pattern only represents the string
	itself; in that case LIKE acts like the equals operator. An underscore (_) in pattern stands for
	(matches) any single character; a percent sign (%) matches any sequence of zero or more characters.

	The percent sign %, represents zero, one, or multiple characters.
	The underscore sign _, represents one single character.
**/

-- LIKE is case sensitive
SELECT 
	*
FROM 
	customers 
WHERE 
	country LIKE 'B%';


SELECT 
	*
FROM 
	customers 
WHERE 
	country LIKE 'b%';


SELECT 
	*
FROM 
	customers 
WHERE 
	country LIKE '%b%'; 

SELECT
	 *
FROM 
	customers 
WHERE 
	country LIKE '%il';

-- Return only the 
SELECT 
	*
FROM 
	customers 
WHERE 
	country LIKE '_rasil';


SELECT 
	*
FROM 
	customers 
WHERE 
	country LIKE 'c'; -- similar to equals =


------------------ ### END LIKE ### ------------------



------------------ ### IN ### ------------------
SELECT 
	*
FROM 
	customers 
WHERE 
	country IN ('Brasil', 'Peru');


------------------ ### END IN ### ------------------

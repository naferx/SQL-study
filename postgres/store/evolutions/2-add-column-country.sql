ALTER TABLE customers ADD COLUMN country VARCHAR(50);

UPDATE
    customers 
SET 
    country = 'Brazil'
WHERE 
    id IN (2, 3);


UPDATE
    customers 
SET 
    country = 'Colombia'
WHERE 
    id = 1;
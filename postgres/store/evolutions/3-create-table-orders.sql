CREATE TABLE IF NOT EXISTS orders(
	id SERIAL PRIMARY KEY,
	date DATE NOT NULL,
	total DECIMAL(10, 2) NOT NULL,
	customer_id INTEGER REFERENCES customers(id)
);

INSERT INTO orders(date, total, customer_id) 
VALUES ('2023-09-15', 56000, 1), 
	   ('2023-09-12', 125000, 1), 
	   ('2023-09-21', 49000, 1), 
	   ('2023-09-20', 49000, 2);
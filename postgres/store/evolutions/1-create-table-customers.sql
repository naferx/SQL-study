CREATE TABLE IF NOT EXISTS customers (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL
);

INSERT INTO customers (first_name, last_name)
VALUES
('Andres', 'Suarez'),
('Sandra', 'Mercado'),
('Alberto', 'Torres');

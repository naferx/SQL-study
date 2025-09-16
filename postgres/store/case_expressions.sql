SELECT
  id,
  date,
  total,
  CASE
    WHEN total > 100000 THEN 'caro'
    WHEN total > 50000 THEN 'intermedio'
    ELSE 'barato'
  END AS label
FROM
  orders;

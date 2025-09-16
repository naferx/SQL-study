-- using CASE to filter rows. Similar to the previous example
EXPLAIN ANALYZE SELECT COUNT(CASE WHEN country = 'Brazil' THEN 1 END) AS total_brazil
FROM
  customers;

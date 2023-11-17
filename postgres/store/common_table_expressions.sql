WITH users_order AS (
    SELECT customer_id AS cid
    FROM orders
    ORDER BY date
)
SELECT *
FROM customers
WHERE id IN (SELECT cid from users_order);

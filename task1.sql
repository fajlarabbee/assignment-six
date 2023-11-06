-- Task 1:
SELECT
    cust.customer_id,
    cust.name,
    cust.email,
    cust.location,
    count(o.order_id) AS total_orders
FROM
    customers cust
    JOIN orders o ON o.customer_id = cust.customer_id
GROUP BY
    cust.customer_id
ORDER BY
    total_orders DESC;
-- Task 1:
SELECT
    cust.*,
    COUNT(o.order_id) AS total_orders
FROM
    customers cust
    LEFT JOIN orders o ON o.customer_id = cust.customer_id
GROUP BY
    cust.customer_id
ORDER BY
    total_orders DESC;
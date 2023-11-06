-- Task 4:
SELECT
    cust.name AS customer_name,
    SUM(o.total_amount) AS total_purchase_amount
FROM
    customers cust
    INNER JOIN orders o ON o.customer_id = cust.customer_id
GROUP by
    cust.customer_id
order by
    total_purchase_amount DESC
LIMIT
    5;
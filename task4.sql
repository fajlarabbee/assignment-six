-- Task 4:
SELECT
    cust.name,
    SUM(o.total_amount) as purchase_amount
FROM
    customers cust
    inner join orders o on o.customer_id = cust.customer_id
GROUP by
    cust.customer_id
order by
    purchase_amount DESC
LIMIT
    5;
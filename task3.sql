-- Task 3:
SELECT
    cat.name AS category_name,
    SUM(ord_itm.quantity * ord_itm.unit_price) AS total_revenue
FROM
    order_items ord_itm
    JOIN products p ON p.product_id = ord_itm.product_id
    JOIN categories cat ON cat.category_id = p.category_id
GROUP BY
    p.category_id
ORDER BY
    total_revenue DESC;
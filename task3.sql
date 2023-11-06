-- Task 3:
SELECT
    categories.category_id,
    categories.name,
    SUM(order_items.quantity * order_items.unit_price) AS total_revenue
FROM
    order_items
    JOIN products ON products.product_id = order_items.product_id
    JOIN categories ON categories.category_id = products.category_id
GROUP BY
    products.category_id
ORDER BY
    total_revenue DESC;
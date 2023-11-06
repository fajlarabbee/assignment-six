-- Task 3:
SELECT
    categories.category_id,
    categories.name,
    SUM(order_items.quantity * order_items.unit_price) as total_revenue
FROM
    order_items
    join products on products.product_id = order_items.product_id
    join categories on categories.category_id = products.category_id
group by
    products.category_id
order by
    total_revenue desc;
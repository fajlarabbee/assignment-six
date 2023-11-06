-- Task 3:
SELECT
    cat.category_id,
    cat.name,
    IFNULL( SUM(ord_itm.quantity * ord_itm.unit_price), 0) AS total_revenue
FROM
	categories cat
	LEFT JOIN products p ON cat.category_id = p.category_id
	LEFT JOIN order_items ord_itm ON ord_itm.product_id = p.product_id
GROUP BY
    cat.category_id
ORDER BY
    total_revenue DESC;
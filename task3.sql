-- Task 3:
SELECT
    cat.name as category_name,
    sum(o.total_amount) as total_revenue
FROM
    categories cat
    join products p on p.category_id = cat.category_id
    join order_items ord_itm on ord_itm.product_id = p.product_id
    join orders o on o.order_id = ord_itm.order_id
group by
    p.category_id
order by
    total_revenue DESC;
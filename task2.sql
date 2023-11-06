-- Task 2:
SELECT
    p.name as 'product_name',
    ord_itm.quantity,
    (ord_itm.quantity * ord_itm.unit_price) as 'total_amount'
FROM
    order_items ord_itm
    join Products p on p.product_id = ord_itm.product_id
ORDER BY
    ord_itm.order_id ASC;
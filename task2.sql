-- Task 2:
SELECT
    p.name AS product_name,
    ord_itm.quantity,
    (ord_itm.quantity * ord_itm.unit_price) AS total_amount
FROM
    order_items ord_itm
    JOIN Products p ON p.product_id = ord_itm.product_id
ORDER BY
    ord_itm.order_id ASC;
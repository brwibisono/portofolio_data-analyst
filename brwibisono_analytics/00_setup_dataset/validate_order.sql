SELECT COUNT(*) AS orders_without_items
FROM brwibisono.raw_thelook.orders o
LEFT JOIN brwibisono.raw_thelook.order_items oi USING(order_id)
WHERE oi.order_id IS NULL;

SELECT COUNT(*) AS users_without_order
FROM brwibisono.raw_thelook.users u
LEFT JOIN brwibisono.raw_thelook.orders o 
ON u.id = o.user_id
WHERE o.order_id IS NULL;

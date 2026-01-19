WITH base_funnel AS (
  SELECT
    u.id AS user_id,
    o.order_id,
    oi.order_id AS paid_order_id
  FROM brwibisono.raw_thelook.users u
  LEFT JOIN brwibisono.raw_thelook.orders o
    ON u.id = o.user_id
  LEFT JOIN brwibisono.raw_thelook.order_items oi
    ON o.order_id = oi.order_id
)

SELECT
  COUNT(DISTINCT user_id) AS total_users,
  COUNT(DISTINCT CASE WHEN order_id IS NOT NULL THEN user_id END) AS buyers,
  COUNT(DISTINCT paid_order_id) AS paid_orders,
  ROUND(
    COUNT(DISTINCT CASE WHEN order_id IS NOT NULL THEN user_id END)
    / COUNT(DISTINCT user_id),
    2
  ) AS user_to_buyer_conversion
FROM base_funnel;

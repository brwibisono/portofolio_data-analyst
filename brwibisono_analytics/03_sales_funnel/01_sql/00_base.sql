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

SELECT * FROM base_funnel;

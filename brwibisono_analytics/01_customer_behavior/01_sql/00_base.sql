WITH valid_orders AS (
  SELECT
    o.order_id,
    o.user_id,
    o.created_at,
    oi.sale_price
  FROM brwibisono.raw_thelook.orders o
  JOIN brwibisono.raw_thelook.order_items oi
    USING(order_id)
)

SELECT *
FROM valid_orders;

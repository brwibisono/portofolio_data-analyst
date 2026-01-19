WITH base_time AS (
  SELECT
    o.order_id,
    DATE(o.created_at) AS order_date,
    oi.sale_price
  FROM brwibisono.raw_thelook.orders o
  JOIN brwibisono.raw_thelook.order_items oi
    USING(order_id)
)
SELECT * FROM base_time;

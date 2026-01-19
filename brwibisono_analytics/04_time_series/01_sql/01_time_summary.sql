WITH base_time AS (
  SELECT
    o.order_id,
    DATE(o.created_at) AS order_date,
    oi.sale_price
  FROM brwibisono.raw_thelook.orders o
  JOIN brwibisono.raw_thelook.order_items oi
    USING(order_id)
)

SELECT
  FORMAT_DATE('%Y-%m', order_date) AS year_month,
  COUNT(DISTINCT order_id) AS total_orders,
  ROUND(SUM(sale_price), 2) AS total_revenue,
  ROUND(SUM(sale_price) / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM base_time
GROUP BY year_month
ORDER BY year_month;

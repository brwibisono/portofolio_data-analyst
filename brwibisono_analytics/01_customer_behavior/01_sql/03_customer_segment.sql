WITH customer_metrics AS (
  SELECT
    o.user_id,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(SUM(oi.sale_price), 2) AS total_revenue
  FROM brwibisono.raw_thelook.orders o
  JOIN brwibisono.raw_thelook.order_items oi
    USING(order_id)
  GROUP BY o.user_id
)

SELECT
  user_id,
  total_orders,
  total_revenue,
  CASE
    WHEN total_revenue >= 500 THEN 'High Value'
    WHEN total_revenue >= 200 THEN 'Medium Value'
    ELSE 'Low Value'
  END AS customer_segment
FROM customer_metrics;

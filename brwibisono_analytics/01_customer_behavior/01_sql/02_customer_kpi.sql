WITH customer_metrics AS (
  SELECT
    o.user_id,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.sale_price) AS total_revenue
  FROM brwibisono.raw_thelook.orders o
  JOIN brwibisono.raw_thelook.order_items oi
    USING(order_id)
  GROUP BY o.user_id
)

SELECT
  COUNT(*) AS total_customers,
  COUNTIF(total_orders > 1) AS repeat_customers,
  ROUND(COUNTIF(total_orders > 1) / COUNT(*), 2) AS repeat_rate,
  ROUND(AVG(total_revenue), 2) AS avg_revenue_per_customer
FROM customer_metrics;

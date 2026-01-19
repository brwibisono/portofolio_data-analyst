WITH customer_metrics AS (
  SELECT
    o.user_id,
    COUNT(DISTINCT o.order_id) AS total_orders
  FROM brwibisono.raw_thelook.orders o
  JOIN brwibisono.raw_thelook.order_items oi
    USING(order_id)
  GROUP BY o.user_id
)

SELECT
  CASE
    WHEN total_orders = 1 THEN 'One-Time Buyer'
    ELSE 'Repeat Buyer'
  END AS customer_type,
  COUNT(*) AS total_customers
FROM customer_metrics
GROUP BY customer_type;

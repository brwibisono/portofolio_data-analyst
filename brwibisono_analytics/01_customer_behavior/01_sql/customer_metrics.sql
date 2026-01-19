WITH valid_orders AS (
  SELECT
    o.order_id,
    o.user_id,
    o.created_at,
    oi.sale_price
  FROM brwibisono.raw_thelook.orders o
  JOIN brwibisono.raw_thelook.order_items oi
    USING(order_id)
),

customer_metrics AS (
  SELECT
    user_id,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sale_price), 2) AS total_revenue,
    MIN(created_at) AS first_order_date,
    MAX(created_at) AS last_order_date
  FROM valid_orders
  GROUP BY user_id
)

SELECT *
FROM customer_metrics;

WITH segmented_customer AS (
  SELECT
    o.user_id,
    SUM(oi.sale_price) AS total_revenue,
    CASE
      WHEN SUM(oi.sale_price) >= 500 THEN 'High Value'
      WHEN SUM(oi.sale_price) >= 200 THEN 'Medium Value'
      ELSE 'Low Value'
    END AS customer_segment
  FROM brwibisono.raw_thelook.orders o
  JOIN brwibisono.raw_thelook.order_items oi
    USING(order_id)
  GROUP BY o.user_id
)

SELECT
  customer_segment,
  COUNT(*) AS total_customers,
  ROUND(SUM(total_revenue), 2) AS segment_revenue
FROM segmented_customer
GROUP BY customer_segment
ORDER BY segment_revenue DESC;

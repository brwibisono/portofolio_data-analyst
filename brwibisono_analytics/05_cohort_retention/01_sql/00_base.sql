WITH customer_orders AS (
  SELECT
    o.user_id,
    DATE_TRUNC(DATE(o.created_at), MONTH) AS order_month
  FROM brwibisono.raw_thelook.orders o
  JOIN brwibisono.raw_thelook.order_items oi
    USING(order_id)
),

first_order AS (
  SELECT
    user_id,
    MIN(order_month) AS cohort_month
  FROM customer_orders
  GROUP BY user_id
)

SELECT
  co.user_id,
  fo.cohort_month,
  co.order_month,
  DATE_DIFF(co.order_month, fo.cohort_month, MONTH) AS cohort_index
FROM customer_orders co
JOIN first_order fo
  USING(user_id);

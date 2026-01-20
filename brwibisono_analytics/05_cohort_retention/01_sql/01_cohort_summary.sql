WITH order_months AS (
  SELECT
    o.user_id,
    DATE_TRUNC(DATE(o.created_at), MONTH) AS order_month
  FROM brwibisono.raw_thelook.orders o
  JOIN brwibisono.raw_thelook.order_items oi
    USING (order_id)
),

first_order AS (
  SELECT
    user_id,
    MIN(order_month) AS cohort_month
  FROM order_months
  GROUP BY user_id
),

cohort_activity AS (
  SELECT
    om.user_id,
    fo.cohort_month,
    om.order_month,
    DATE_DIFF(om.order_month, fo.cohort_month, MONTH) AS cohort_index
  FROM order_months om
  JOIN first_order fo
    USING(user_id)
)

SELECT
  cohort_month,
  cohort_index,
  COUNT(DISTINCT user_id) AS active_users
FROM cohort_activity
GROUP BY cohort_month, cohort_index
ORDER BY cohort_month, cohort_index;

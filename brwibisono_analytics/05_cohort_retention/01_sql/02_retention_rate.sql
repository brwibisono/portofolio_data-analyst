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
),

cohort_size AS (
  SELECT
    cohort_month,
    COUNT(DISTINCT user_id) AS cohort_users
  FROM cohort_activity
  WHERE cohort_index = 0
  GROUP BY cohort_month
)

SELECT
  ca.cohort_month,
  ca.cohort_index,
  ca.active_users,
  cs.cohort_users,
  ROUND(ca.active_users / cs.cohort_users, 2) AS retention_rate
FROM (
  SELECT
    cohort_month,
    cohort_index,
    COUNT(DISTINCT user_id) AS active_users
  FROM cohort_activity
  GROUP BY cohort_month, cohort_index
) ca
JOIN cohort_size cs
  USING (cohort_month)
ORDER BY ca.cohort_month, ca.cohort_index;

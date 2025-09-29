-- brwibisono project 3
-- Forecast Moving Average

WITH mxdate AS (
  SELECT 
    DATE(MAX(oi.created_at)) as last_date
  FROM brbelajardata.thelook_copy.order_items oi
),

monthly AS (
  SELECT
    DATE(DATE_TRUNC(oi.created_at, MONTH)) AS periode,
    COUNT(DISTINCT oi.order_id) AS total_order,
    ROUND(SUM(oi.sale_price), 2) AS total_revenue
  FROM brbelajardata.thelook_copy.order_items oi
  CROSS JOIN mxdate m
  WHERE DATE (oi.created_at) BETWEEN '2024-01-01' AND m.last_date
  GROUP BY DATE(DATE_TRUNC(oi.created_at, MONTH))
),

moving_avg AS (
  SELECT
    periode,
    total_revenue,
    ROUND(AVG(total_revenue) OVER (ORDER BY periode ROWS BETWEEN 2 PRECEDING AND CURRENT ROW), 2) AS avg_3bulan
  FROM monthly
)

SELECT 
  *,
  ROUND(LAST_VALUE(avg_3bulan) OVER (ORDER BY periode ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING), 2)
    AS proyeksi_bulan_depan
FROM moving_avg
ORDER BY periode ASC
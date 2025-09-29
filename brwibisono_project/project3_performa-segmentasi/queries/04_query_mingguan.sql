-- brwibisono project 3
-- Sales mingguan

WITH mxdate AS (
  SELECT
    DATE(MAX(oi.created_at)) AS last_date
  FROM brbelajardata.thelook_copy.order_items oi
),

weekly AS (
  SELECT
    DATE(DATE_TRUNC(oi.created_at, WEEK) + INTERVAL 1 DAY) AS periode,
    COUNT(DISTINCT oi.order_id) AS total_order,
    ROUND(SUM(oi.sale_price), 2) AS total_revenue
  FROM brbelajardata.thelook_copy.order_items oi
  CROSS JOIN mxdate m
  WHERE DATE (oi.created_at) BETWEEN '2024-01-01' AND m.last_date
  GROUP BY DATE(DATE_TRUNC(oi.created_at, WEEK) + INTERVAL 1 DAY)
)

SELECT * from weekly
ORDER BY periode
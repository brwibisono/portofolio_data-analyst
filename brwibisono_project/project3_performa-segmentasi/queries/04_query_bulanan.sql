-- brwibisono project 3
-- Sales bulanan

WITH mxdate AS (
  SELECT
    DATE(MAX(oi.created_at)) AS last_date
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
)

SELECT * FROM monthly
ORDER BY periode
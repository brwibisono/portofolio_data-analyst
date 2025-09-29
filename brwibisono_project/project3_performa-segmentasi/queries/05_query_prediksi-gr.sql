-- brwibisono project 3
-- Forecast Growth Rate

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

growth AS (
  SELECT
    periode,
    total_revenue,
    LAG(total_revenue) OVER (ORDER BY periode) AS revenue_bulan_sebelumnya,
    ROUND (SAFE_DIVIDE(total_revenue - LAG(total_revenue) OVER (ORDER BY periode),
                LAG(total_revenue) OVER (ORDER BY periode)) * 100 ,2) AS growth_rate
  FROM monthly
),

avg_growth AS (
  SELECT
    ROUND(AVG(growth_rate), 2) AS rata2_growth
  FROM growth
  WHERE growth_rate IS NOT NULL
)

SELECT
  (SELECT total_revenue 
  FROM monthly 
  ORDER BY periode DESC 
  LIMIT 1) AS revenue_terakhir,
  CONCAT (CAST((SELECT rata2_growth FROM avg_growth) AS STRING), '%') AS rata2_growth,
  ROUND ((SELECT total_revenue FROM monthly ORDER BY periode DESC LIMIT 1) * 
  (1 + (SELECT rata2_growth FROM avg_growth)/100), 2) AS proyeksi_bulan_depan;
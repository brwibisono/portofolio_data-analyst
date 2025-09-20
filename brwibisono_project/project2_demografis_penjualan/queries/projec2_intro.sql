-- brwibisono project 2
-- Intro


WITH max_date AS (
  SELECT
    DATE(MAX(oi.created_at)) AS last_date
  FROM brbelajardata.thelook_copy.order_items oi
)

SELECT
  COUNT(DISTINCT u.id) AS total_customer,
  ROUND(SUM(oi.sale_price), 2) AS total_sales,
  ROUND(SUM(oi.sale_price) / COUNT(DISTINCT u.id), 2) AS avg_belanja_per_customer
FROM brbelajardata.thelook_copy.users u
JOIN brbelajardata.thelook_copy.order_items oi
  ON u.id = oi.user_id
CROSS JOIN max_date m
WHERE DATE(oi.created_at) BETWEEN DATE('2024-01-01') AND m.last_date;
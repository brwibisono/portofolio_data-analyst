-- brwibisono project 3
-- Sales harian

WITH mxdate AS (
  SELECT
    DATE(MAX(oi.created_at)) AS last_date
  FROM brbelajardata.thelook_copy.order_items oi
),

daily AS (
  SELECT
  --DATE(oi.created_at) AS tanggal,
  CASE EXTRACT(DAYOFWEEK FROM DATE(oi.created_at))
    WHEN 1 THEN 'Minggu'
    WHEN 2 THEN 'Senin'
    WHEN 3 THEN 'Selasa'
    WHEN 4 THEN 'Rabu'
    WHEN 5 THEN 'Kamis'
    WHEN 6 THEN 'Jumat'
    WHEN 7 THEN 'Sabtu'
  END AS nama_hari,
  CASE EXTRACT(DAYOFWEEK FROM DATE(oi.created_at))
    WHEN 2 THEN 1
    WHEN 3 THEN 2
    WHEN 4 THEN 3
    WHEN 5 THEN 4
    WHEN 6 THEN 5
    WHEN 7 THEN 6
    WHEN 1 THEN 7
  END AS urutan_hari,
  COUNT(DISTINCT oi.order_id) AS total_order,
  ROUND(SUM(oi.sale_price), 2) AS total_revenue
FROM brbelajardata.thelook_copy.order_items oi
CROSS JOIN mxdate m
WHERE DATE (oi.created_at) BETWEEN '2024-01-01' AND m.last_date
GROUP BY nama_hari, urutan_hari
)

SELECT
  nama_hari,
  total_order,
  total_revenue
FROM daily
ORDER BY urutan_hari
-- brwibisono project week2
-- Total penjualan per bulan dan tahun

WITH monthly_order AS (
SELECT
  FORMAT_DATE('%Y', o.created_at) AS tahun,
  FORMAT_DATE('%b', o.created_at) AS bulan,
  EXTRACT(MONTH FROM o.created_at) AS bulan_angka,
  COUNT(o.order_id) AS total_order_bulan
FROM brbelajardata.thelook_copy.orders o
GROUP BY tahun, bulan, EXTRACT(MONTH FROM o.created_at)
)

SELECT
  tahun,
  bulan,
  total_order_bulan,
  SUM(total_order_bulan) OVER (PARTITION BY tahun) AS total_order_tahun
FROM monthly_order
ORDER BY tahun, bulan_angka;
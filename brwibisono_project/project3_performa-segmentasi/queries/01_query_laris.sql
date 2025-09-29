-- brwibisono project 3
-- Kategori produk terlaris

WITH mxdate AS (
  SELECT
    DATE(MAX(oi.created_at)) AS last_date
  FROM brbelajardata.thelook_copy.order_items oi
)

SELECT
  p.category AS kategori_produk,
  ROUND(SUM(oi.sale_price), 2) AS total_penjualan
FROM brbelajardata.thelook_copy.products p
JOIN brbelajardata.thelook_copy.order_items oi
  ON p.id = oi.product_id
CROSS JOIN mxdate m
WHERE oi.status = 'Complete'
  AND DATE(oi.created_at) BETWEEN '2024-01-01' AND m.last_date
GROUP BY kategori_produk
ORDER BY total_penjualan DESC
LIMIT 3;
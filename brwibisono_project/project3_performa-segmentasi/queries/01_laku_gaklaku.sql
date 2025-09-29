-- brwibisono project 3
-- Kategori produk laku dan kurang laku

WITH mxdate AS (
  SELECT
    DATE(MAX(oi.created_at)) AS last_date
  FROM brbelajardata.thelook_copy.order_items oi
),

produk_sales AS(
  SELECT 
    p.name AS nama_produk,
    ROUND(SUM(oi.sale_price),2 ) AS total_penjualan
  FROM brbelajardata.thelook_copy.products p
  JOIN brbelajardata.thelook_copy.order_items oi
    ON p.id = oi.product_id
  CROSS JOIN mxdate m
  WHERE oi.status = 'Complete'
    AND DATE(oi.created_at) BETWEEN '2024-01-01' AND m.last_date
  GROUP BY nama_produk
),

top_sales AS (
  SELECT
    nama_produk,
    total_penjualan,
    'PALING LAKU' AS posisi
  FROM produk_sales
  ORDER BY total_penjualan DESC
  LIMIT 1
),

bottom_sales AS (
  SELECT
    nama_produk,
    total_penjualan,
    'PALING KURANG LAKU' AS posisi
  FROM produk_sales
  ORDER BY total_penjualan ASC
  LIMIT 1
)

SELECT 
  * 
FROM top_sales
UNION ALL
SELECT 
  * 
FROM bottom_sales
ORDER BY total_penjualan DESC;


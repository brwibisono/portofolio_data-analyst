-- brwibisono project 2
-- Penjualan kategori tiap gender dan kontribusi ketegori


WITH max_date AS (
  SELECT
    DATE(MAX(oi.created_at)) AS last_date
  FROM brbelajardata.thelook_copy.order_items oi
)

SELECT
  CASE
    WHEN o.gender = 'F' THEN 'Perempuan'
    WHEN o.gender = 'M' THEN 'Laki-Laki'
    ELSE 'Others'
  END AS gender,
  p.category AS kategori_produk,
  ROUND(SUM(oi.sale_price), 2) AS total_sales,
  RANK() OVER (PARTITION BY o.gender ORDER BY SUM(oi.sale_price) DESC) AS rank_kategori,
  CONCAT( CAST(ROUND(100 * SUM(oi.sale_price) / SUM(SUM(oi.sale_price)) OVER (PARTITION BY o.gender), 2) AS STRING), '%' ) AS persen_kontribusi
FROM brbelajardata.thelook_copy.order_items oi
JOIN brbelajardata.thelook_copy.products p
  ON oi.product_id = p.id
JOIN brbelajardata.thelook_copy.orders o
  ON oi.order_id = o.order_id
CROSS JOIN max_date m
WHERE DATE(oi.created_at) BETWEEN DATE('2024-01-01') AND m.last_date
GROUP BY o.gender, p.category
QUALIFY rank_kategori <= 5
ORDER BY gender, rank_kategori
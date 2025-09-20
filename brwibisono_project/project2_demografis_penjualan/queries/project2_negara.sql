-- brwibisono project 2
-- Rata2 harga produk terjual ke tiap negara dan jumlah pembeli tiap negara

WITH max_date AS (
  SELECT
    DATE(MAX(oi.created_at)) AS last_date
  FROM brbelajardata.thelook_copy.order_items oi
)

SELECT
    COUNT(DISTINCT u.id) AS jumlah_cust,
    u.country AS negara_asal,
    ROUND(AVG(p.retail_price),2) AS avg_harga_ritel,
    ROUND(AVG(oi.sale_price), 2) AS avg_harga_jual,
    CONCAT(CAST(ROUND(100 * (1 - AVG(oi.sale_price)/AVG(p.retail_price)), 2) AS STRING), '%') AS avg_discount
  FROM brbelajardata.thelook_copy.order_items oi
  JOIN brbelajardata.thelook_copy.products p
    ON oi.product_id = p.id
  JOIN brbelajardata.thelook_copy.users u
    ON oi.user_id = u.id
  CROSS JOIN max_date m
  WHERE DATE(oi.created_at) BETWEEN DATE('2024-01-01') AND m.last_date
  GROUP BY negara_asal
  ORDER BY jumlah_cust DESC;
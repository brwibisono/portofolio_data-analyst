-- brwibisono project 2
-- Total penjualan per kategori usia dan kategori terlaris

WITH max_date AS (
  SELECT
    DATE(MAX(oi.created_at)) AS last_date
  FROM brbelajardata.thelook_copy.order_items oi
),

base_data AS (
  SELECT
    CASE
      WHEN u.age < 20 THEN 'Under 20'
      WHEN u.age BETWEEN 20 AND 30 THEN '20-30'
      WHEN u.age BETWEEN 31 AND 40 THEN '31-40'
      WHEN u.age BETWEEN 41 AND 50 THEN '41-50'
      WHEN u.age BETWEEN 51 AND 60 THEN '51-60'
      ELSE 'Others'
    END AS kategori_usia,
    p.category AS kategori_produk,
    COUNT(DISTINCT u.id) AS jumlah_customer,
    ROUND(SUM(oi.sale_price), 2) AS total_sales,
    ROUND(SUM(oi.sale_price)/COUNT(DISTINCT u.id), 2) AS avg_sales_per_customer
  FROM brbelajardata.thelook_copy.users u
  JOIN brbelajardata.thelook_copy.order_items oi
    ON oi.user_id = u.id
  JOIN brbelajardata.thelook_copy.products p
    ON oi.product_id = p.id
  CROSS JOIN max_date m
  WHERE DATE(oi.created_at) BETWEEN DATE('2024-01-01') AND m.last_date
  GROUP BY kategori_usia, kategori_produk
),

rank_data AS (
  SELECT
    bd.kategori_usia,
    bd.kategori_produk,
    bd.total_sales,
    RANK() OVER (
      PARTITION BY bd.kategori_usia
      ORDER BY bd.total_sales DESC
    ) AS rank_produk
  FROM base_data bd
)

SELECT *
FROM rank_data
WHERE rank_produk <= 3
ORDER BY kategori_usia, rank_produk;
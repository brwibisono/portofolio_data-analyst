-- brwibisono project 3
-- Kategori produk bundle

WITH mxdate AS (
  SELECT
    DATE(MAX(oi.created_at)) AS last_date
  FROM brbelajardata.thelook_copy.order_items oi
),

bundle AS (
  SELECT
    oi1.product_id AS produk_a_id,
    oi2.product_id AS produk_b_id,
    COUNT(*) AS order_bersama
  FROM brbelajardata.thelook_copy.order_items oi1
  JOIN brbelajardata.thelook_copy.order_items oi2
    ON oi1.order_id = oi2.order_id
  AND oi1.product_id < oi2.product_id
  CROSS JOIN mxdate m
  WHERE oi1.status = 'Complete'
    AND DATE(oi1.created_at) BETWEEN '2024-01-01' AND m.last_date
  GROUP BY produk_a_id, produk_b_id
)

SELECT
  p1.name AS produk_a,
  p2.name AS produk_b,
  order_bersama
FROM bundle b
JOIN brbelajardata.thelook_copy.products p1
  ON b.produk_a_id = p1.id
JOIN brbelajardata.thelook_copy.products p2
  ON b.produk_b_id = p2.id
ORDER BY order_bersama DESC
LIMIT 10;
-- brwibisono project week2
-- 10 produk penjualan tertinggi

SELECT
  p.name AS nama_produk,
  SUM(oi.sale_price) AS total_penjualan
FROM brbelajardata.thelook_copy.products p
JOIN brbelajardata.thelook_copy.order_items oi
  ON p.id = oi.product_id
JOIN brbelajardata.thelook_copy.orders o
  ON oi.order_id = o.order_id
WHERE o.status = 'Complete'
GROUP BY p.name
ORDER BY total_penjualan DESC
LIMIT 10;
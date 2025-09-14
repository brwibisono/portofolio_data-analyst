-- brwibisono project week2
-- Total penjualan per kategori

SELECT
  p.category,
  ROUND(SUM(oi.sale_price),2) AS total_penjualan,
  COUNT(p.id) AS total_produk_terjual
FROM brbelajardata.thelook_copy.products p
JOIN brbelajardata.thelook_copy.order_items oi
 ON p.id = oi.product_id
JOIN brbelajardata.thelook_copy.orders o
  ON oi.order_id = o.order_id
GROUP BY p.category
ORDER BY p.category

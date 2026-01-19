WITH base_product_sales AS (
  SELECT
    oi.product_id,
    oi.order_id,
    oi.sale_price
  FROM brwibisono.raw_thelook.order_items oi
)

SELECT
  p.id AS product_id,
  p.name AS product_name,
  p.category AS category,
  COUNT(DISTINCT b.order_id) AS total_orders,
  COUNT(*) AS total_quantity_sold,
  ROUND(SUM(b.sale_price), 2) AS total_revenue,
  ROUND(AVG(b.sale_price), 2) AS avg_selling_price
FROM base_product_sales b
JOIN brwibisono.raw_thelook.products p
  ON b.product_id = p.id
GROUP BY
  product_id, product_name, category;

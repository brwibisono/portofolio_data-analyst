SELECT
  product_id,
  product_name,
  category,
  total_revenue,
  total_quantity_sold
FROM brwibisono.xproject.product_metrics
ORDER BY total_revenue desc
LIMIT 20;

SELECT
  product_id,
  product_name,
  category,
  total_quantity_sold,
  total_revenue,
  avg_selling_price
FROM brwibisono.xproject.product_metrics
WHERE total_quantity_sold >= 10
ORDER BY total_revenue;

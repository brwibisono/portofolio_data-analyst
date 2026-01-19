SELECT
  product_id,
  product_name,
  category,
  total_revenue,
  total_quantity_sold,
  CASE
    WHEN total_revenue >= 6000 THEN 'Hero Product'
    WHEN total_quantity_sold >= 10 THEN 'High Volume - Low Revenue'
    ELSE 'Low Performing Product'
  END AS product_performance
FROM brwibisono.xproject.product_metrics
ORDER BY total_revenue desc;

SELECT
  product_id,
  product_name,
  category,
  total_revenue,
  ROUND(
    total_revenue / SUM(total_revenue) OVER(),
    4
  ) AS revenue_contribution_pct
FROM brwibisono.xproject.product_metrics
ORDER BY revenue_contribution_pct desc;

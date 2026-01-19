WITH base_product_sales AS (
  SELECT
    oi.product_id,
    oi.order_id,
    oi.sale_price,
    oi.created_at
  FROM brwibisono.raw_thelook.order_items oi
)

SELECT *
FROM base_product_sales;

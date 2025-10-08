WITH user_funnel AS (
  SELECT
    user_pseudo_id AS uid,
    traffic_source.source AS traffic_source,
    -- Menghitung apakah pengguna melewati langkah ini (minimal 1 event)
    MAX(CASE WHEN event_name = 'view_item' THEN 1 ELSE 0 END) AS has_view,
    MAX(CASE WHEN event_name = 'add_to_cart' THEN 1 ELSE 0 END) AS has_cart,
    MAX(CASE WHEN event_name = 'begin_checkout' THEN 1 ELSE 0 END) AS has_checkout,
    MAX(CASE WHEN event_name = 'purchase' THEN 1 ELSE 0 END) AS has_purchase
  FROM brbelajardata.google_analytics.ga4_events_7d
  GROUP BY uid, traffic_source
),
summary AS (
  SELECT
    traffic_source,
    COUNT(DISTINCT uid) AS total_users,
    SUM(has_view) AS view_users,
    SUM(has_cart) AS cart_users,
    SUM(has_checkout) AS checkout_users,
    SUM(has_purchase) AS purchase_users
  FROM user_funnel
  GROUP BY traffic_source
)
SELECT
  traffic_source,
  'Total Users' AS step_name,
  total_users AS users_count,
  100.00 AS percent_from_previous
FROM summary
UNION ALL
SELECT
  traffic_source,
  '1. View Item' AS step_name,
  view_users AS users_count,
  ROUND(view_users * 100.0 / NULLIF(total_users, 0), 2) AS percent_from_previous
FROM summary
UNION ALL
SELECT
  traffic_source,
  '2. Add to Cart' AS step_name,
  cart_users AS users_count,
  ROUND(cart_users * 100.0 / NULLIF(view_users, 0), 2) AS percent_from_previous
FROM summary
UNION ALL
SELECT
  traffic_source,
  '3. Begin Checkout' AS step_name,
  checkout_users AS users_count,
  ROUND(checkout_users * 100.0 / NULLIF(cart_users, 0), 2) AS percent_from_previous
FROM summary
UNION ALL
SELECT
  traffic_source,
  '4. Purchase' AS step_name,
  purchase_users AS users_count,
  ROUND(purchase_users * 100.0 / NULLIF(checkout_users, 0), 2) AS percent_from_previous
FROM summary
ORDER BY traffic_source, step_name;
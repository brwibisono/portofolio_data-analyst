WITH user_events AS (
  SELECT
    user_pseudo_id AS uid,
    traffic_source.source AS traffic_source,
    -- Hitung total event
    COUNTIF(event_name = 'view_item') AS cnt_view,
    COUNTIF(event_name = 'add_to_cart') AS cnt_cart,
    COUNTIF(event_name = 'purchase') AS cnt_purchase
  FROM brbelajardata.google_analytics.ga4_events_7d
  GROUP BY uid, traffic_source
),
segmen AS (
  SELECT
    uid,
    traffic_source,
    -- Urutkan CASE dari yang paling "berharga" (konversi) ke yang paling "dasar" (view)
    CASE
      WHEN cnt_purchase >= 2 THEN 'High-Value User (2+ Purchase)'
      WHEN cnt_purchase = 1 THEN 'Converted Buyer (1 Purchase)'
      WHEN cnt_cart > 0 AND cnt_purchase = 0 THEN 'Cart Abandoner'
      WHEN cnt_view > 0 AND cnt_cart = 0 AND cnt_purchase = 0 THEN 'Window Shopper'
      ELSE 'Other/Non-Engaged'
    END AS segment
  FROM user_events
)
SELECT
  traffic_source,
  segment,
  COUNT(DISTINCT uid) AS users,
  -- Hitung persentase dari total pengguna dalam traffic_source
  ROUND(COUNT(DISTINCT uid) * 100.0 / SUM(COUNT(DISTINCT uid)) OVER (PARTITION BY traffic_source), 2) AS percent
FROM segmen
GROUP BY traffic_source, segment
ORDER BY traffic_source, users DESC;

SELECT
  PARSE_DATE('%Y%m%d', event_date) AS event_date,
  user_pseudo_id AS uid,
  traffic_source.source AS traffic_source,
  COUNT(DISTINCT event_name) AS event_count
FROM brbelajardata.google_analytics.ga4_events_7d
GROUP BY event_date, uid, traffic_source
LIMIT 50;

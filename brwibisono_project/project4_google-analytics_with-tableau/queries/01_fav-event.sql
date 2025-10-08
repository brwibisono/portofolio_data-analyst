
SELECT 
  PARSE_DATE('%Y%m%d', event_date) AS event_date,
  user_pseudo_id AS uid,
  traffic_source.source AS traffic_source,
  event_name AS name,
  COUNT(*) AS value
FROM brbelajardata.google_analytics.ga4_events_7d
GROUP BY uid, traffic_source, event_name, event_date
ORDER BY value DESC
LIMIT 10;

SELECT
  PARSE_DATE('%Y%m%d', event_date) AS event_date,
  user_pseudo_id AS uid,
  traffic_source.source AS traffic_source,
FROM brbelajardata.google_analytics.ga4_events_7d
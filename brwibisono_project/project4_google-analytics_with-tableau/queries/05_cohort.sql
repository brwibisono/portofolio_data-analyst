WITH first_seen AS (
  SELECT
    user_pseudo_id AS uid,
    -- Ambil traffic_source yang terkait dengan MIN(event_date)
    ARRAY_AGG(traffic_source.source ORDER BY event_date LIMIT 1)[OFFSET(0)] AS traffic_source,
    MIN(PARSE_DATE('%Y%m%d', event_date)) AS first_date
  FROM brbelajardata.google_analytics.ga4_events_7d
  GROUP BY uid
),
cohort AS (
  SELECT
    uid,
    traffic_source,
    DATE_TRUNC(first_date, WEEK(MONDAY)) AS cohort_week
  FROM first_seen
),
activity AS (
  SELECT DISTINCT -- Gunakan DISTINCT untuk mencegah duplikasi (karena kita hanya butuh seminggu aktif)
    user_pseudo_id AS uid,
    DATE_TRUNC(PARSE_DATE('%Y%m%d', event_date), WEEK(MONDAY)) AS active_week
  FROM brbelajardata.google_analytics.ga4_events_7d
),
cohort_activity AS (
  SELECT
    c.traffic_source,
    c.cohort_week,
    a.active_week,
    -- Hitung perbedaan minggu antara active_week dan cohort_week (Offset)
    DATE_DIFF(a.active_week, c.cohort_week, WEEK(MONDAY)) AS cohort_offset,
    COUNT(DISTINCT a.uid) AS active_users
  FROM cohort c
  JOIN activity a USING (uid) -- Join hanya berdasarkan UID, karena traffic_source sudah dipegang oleh 'cohort'
  WHERE DATE_DIFF(a.active_week, c.cohort_week, WEEK(MONDAY)) >= 0 -- Hanya hitung aktivitas setelah 'first_date'
  GROUP BY 1, 2, 3, 4
),
cohort_size AS (
  SELECT
    traffic_source,
    cohort_week,
    COUNT(DISTINCT uid) AS cohort_size
  FROM cohort
  GROUP BY traffic_source, cohort_week
)
SELECT
  ca.traffic_source,
  ca.cohort_week,
  ca.active_week,
  ca.cohort_offset, -- Field baru untuk Heatmap
  cs.cohort_size,
  ROUND(ca.active_users * 100.0 / cs.cohort_size, 2) AS retention_rate_percent -- Retensi dalam persentase float
FROM cohort_activity ca
JOIN cohort_size cs USING (traffic_source, cohort_week)
ORDER BY cohort_week, cohort_offset;
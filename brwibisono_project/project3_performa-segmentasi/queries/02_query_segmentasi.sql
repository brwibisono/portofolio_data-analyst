-- brwibisono project 3
-- Total segmentasi

WITH mxdate AS (
  SELECT
    DATE(MAX(o.created_at)) AS last_date
  FROM brbelajardata.thelook_copy.orders o
  WHERE o.status = 'Complete'
),

rfm_raw AS (
  SELECT
    o.user_id AS uid,
    DATE_DIFF(m.last_date, DATE(MAX(o.created_at)), DAY) AS recency,
    COUNT(DISTINCT o.order_id) AS frequency,
    ROUND(SUM(oi.sale_price), 2) AS monetary,
    NTILE(4) OVER (ORDER BY DATE_DIFF(m.last_date, DATE(MAX(oi.created_at)), DAY) ASC) AS r_score,
    NTILE(4) OVER (ORDER BY COUNT(DISTINCT o.order_id) DESC) AS f_score,
    NTILE(4) OVER (ORDER BY SUM(oi.sale_price) DESC) AS m_score
  FROM brbelajardata.thelook_copy.orders o
  JOIN brbelajardata.thelook_copy.order_items oi
    ON o.order_id = oi.order_id
  CROSS JOIN mxdate m
  WHERE o.status ='Complete'
    AND DATE (oi.created_at) BETWEEN '2024-01-01' AND m.last_date
  GROUP BY o.user_id, m.last_date
),

segmentasi AS (
  SELECT
    r.uid,
    CASE
      WHEN r.r_score = 4 AND r.f_score = 4 AND r.m_score = 4
        THEN 'Pelanggan Loyal'
      WHEN r.r_score >= 3 AND r.f_score >= 3
        THEN 'Potensial Loyal'
      WHEN r.r_score = 1 AND r.f_score = 1
        THEN 'Pelanggan Beresiko'
      WHEN r.r_score = 4 AND r.f_score = 1
        THEN 'Pelanggan Baru'
      ELSE 'Others'
    END AS segmen_pelanggan
  FROM rfm_raw r
)

SELECT
  segmen_pelanggan,
  COUNT(*) AS total_pelanggan
FROM segmentasi
GROUP BY segmen_pelanggan
ORDER BY total_pelanggan DESC;
SELECT
  date_date,
  ROUND(SUM(ads_cost), 2) AS ads_cost,
  SUM(impression) AS impressions,
  SUM(click) AS clicks
FROM {{ ref('int_campaigns') }}
WHERE date_date IS NOT NULL
GROUP BY date_date
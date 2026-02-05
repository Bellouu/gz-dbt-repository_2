SELECT
    date_date AS date,
    ROUND(SUM(ads_cost), 2) AS ads_cost,
    SUM(impression) AS impressions,
    SUM(click) AS click
FROM {{ ref('int_campaigns') }}
GROUP BY date_date
ORDER BY date_date DESC
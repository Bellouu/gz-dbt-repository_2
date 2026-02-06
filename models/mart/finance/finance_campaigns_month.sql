SELECT
 DATE_TRUNC(date_date, MONTH) AS datemonth,
  SUM(ads_margin) AS ads_margin,
  ROUND(SUM(revenue) / NULLIF(SUM(quantity), 0), 2) AS average_basket,
  SUM(operational_margin) AS operational_margin,
  SUM(ads_cost) AS ads_cost,
  SUM(impressions) AS impression,
  SUM(clicks) AS clicks,
  SUM(quantity) AS quantity,
  SUM(revenue) AS revenue,
  SUM(purchase_cost) AS purchase_cost,
  SUM(margin) AS margin,
  SUM(shipping_fee) AS shipping_fee,
  SUM(log_cost) AS log_cost,
  SUM(ship_cost) AS ship_cost
FROM {{ ref('finance_campaigns_day') }}
GROUP BY datemonth
ORDER BY datemonth DESC


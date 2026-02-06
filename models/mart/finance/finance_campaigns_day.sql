SELECT
  date_date,
  operational_margin-ads_cost as ads_margin,
  average_basket,
  operational_margin,
  ads_cost,
  impressions,
  clicks,
  quantity,
  revenue,
  purchase_cost,
  margin,
  shipping_fee,
  log_cost,
  ship_cost
FROM {{ ref('finance_days') }}
JOIN {{ ref('finance_campaigns_day') }}
USING (date_date)
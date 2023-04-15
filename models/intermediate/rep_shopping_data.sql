{{ config(materialized='table') }}


WITH mid_cols AS (
  SELECT
    shopping.invoice_no AS in_no,
    shopping.invoice_date AS in_date,
    MAX(fx.date_fx) AS sub_fx,
  FROM {{ref('base_shopping_table')}} AS shopping
  --FROM `first-data-project-redi.raw_data.base_shopping_table` AS shopping
  LEFT OUTER JOIN {{ ref('base_fx')}} AS fx
  --LEFT OUTER JOIN `first-data-project-redi.raw_data.base_fx`AS fx
  ON fx.date_fx = shopping.invoice_date
  OR fx.date_fx = (shopping.invoice_date - 1)
  OR fx.date_fx = (shopping.invoice_date - 2)
  OR fx.date_fx = (shopping.invoice_date - 3)
  OR fx.date_fx = (shopping.invoice_date - 4)
  GROUP BY in_date,in_no
  ORDER BY in_no
)

SELECT
  *,
  ROUND(price/eur_try_rate,2) AS price_eur
FROM {{ref('base_shopping_table')}} AS shopping
--FROM `raw_data.base_shopping_table` AS shopping
LEFT JOIN mid_cols AS mid_cols
ON shopping.invoice_no = mid_cols.in_no
LEFT JOIN {{ ref('base_fx')}} AS fx
--LEFT JOIN `raw_data.base_fx` AS fx
ON mid_cols.sub_fx = fx.date_fx
{{ config(materialized='table') }}

WITH tb1 AS (
  SELECT 
    id,
    Name,
    Order_date,
    Status
  FROM {{ source('datafeed_shared_schema', 'STG_EMPLOYEES') }}
)
SELECT * FROM tb1
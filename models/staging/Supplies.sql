{{ config(materialized='incremental', incremental_strategy='Merge') }}

SELECT *
  FROM {{ source('datafeed_shared_schema', 'Supplies') }}


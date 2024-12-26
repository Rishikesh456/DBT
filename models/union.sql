{{ config(materialized='table') }}
WITH cte AS (
    SELECT 
    order_date, status 
    FROM {{source('datafeed_shared_schema','ORDERS')}})

SELECT * 
FROM cte


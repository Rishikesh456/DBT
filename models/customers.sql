{{ config (materialized='table') }}
with rishi as (
    select order_id,
    payment_method,
    amount
    from {{source('datafeed_shared_schema','CUSTOMERS')}}
)

select * from rishi 
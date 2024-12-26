{{ config(materialized='table',
  transient='false') }}

  with rishi as (
    select * from {{source('datafeed_shared_schema','CUSTOMERS')}}
  )

  select * from rishi 
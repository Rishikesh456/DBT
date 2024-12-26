{{ config(materialized="incremental",transient='false',
incremental_startegy="append",) }}

select * from {{source('datafeed_shared_schema','PAYMENTS')}} where id in (111,112,113)
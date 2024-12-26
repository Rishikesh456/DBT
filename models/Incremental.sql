{{
     config(materialized="incremental",
     incremental_startegy="append",
) }}


    select * from {{source('datafeed_shared_schema','CUSTOMERS')}} where id in (111,112,113) 


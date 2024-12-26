{{ config(materialized='view') }}

with Lenovo as 
(
    select name,course,feepaid from {{source('datafeed_shared_schema','students')}}
    union 
    select name,course,feepaid from {{source('datafeed_shared_schema','students_clone')}}
)

select * from Lenovo
{{ config(
    materialized='table') 
}}

with rishi as 
(
    select eid,
    name,
    salary,
    bonus,
    gender,
    deptid,
    doj,
    ({{caluclatebonusandsalary('salary','bonus')}}) as rishi 
    from
     {{source('datafeed_shared_schema','employee')}}
)

select * from rishi 
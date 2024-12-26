{{ config(materialized='view') }}

with rishi as 
(
    select name,
    case when course = 'AZURE' then 'SNOWFLAKE'
         else 'SNOWFLAKE' END as cyber
         FROM {{ source('datafeed_shared_schema','students') }}
 )

 select * from rishi 
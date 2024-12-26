{{ config(materialized='view') }}

WITH rishi AS (
    SELECT studentid, name, course, feepaid
    FROM {{ source('datafeed_shared_schema', 'students') }}
),
kesh AS (
    SELECT studentid, name, course, feepaid
    FROM {{ source('datafeed_shared_schema', 'students_clone') }}
)

SELECT 
    rishi.name,
    rishi.course,
    rishi.feepaid
FROM rishi
JOIN kesh 
    ON rishi.studentid = kesh.studentid

{{ config(materialized='view') }}

WITH C AS
(
select DISTINCT C_CUSTKEY,C_NAME,C_ADDRESS,C_PHONE FROM {{ source('dev', 'CUSTOMER')}}
)
select * from C
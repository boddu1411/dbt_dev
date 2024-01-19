{{ config(materialized='table') }}

WITH ORDERS AS
(
SELECT O_ORDERKEY,O_CUSTKEY,O_ORDERDATE,O_ORDERSTATUS,O_TOTALPRICE
FROM {{ source('dev', 'ORDERS')}}
WHERE o_orderpriority = '1-URGENT' and YEAR(O_ORDERDATE) = '1996' AND month(O_ORDERDATE) = '01'
)
select * from ORDERS
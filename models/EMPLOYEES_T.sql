
{{ config(materialized='table') }}

WITH EMP AS
(
SELECT * FROM RAW.EMPLOYEES
)

SELECT * FROM EMP
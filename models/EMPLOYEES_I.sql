
{{ config(materialized='incremental') }}

WITH EMP AS
(
SELECT * FROM RAW.EMPLOYEES
)

SELECT * FROM EMP
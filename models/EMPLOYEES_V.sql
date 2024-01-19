
{{ config(materialized='view') }}

WITH EMP AS
(
SELECT * FROM RAW.EMPLOYEES
)

SELECT * FROM EMP
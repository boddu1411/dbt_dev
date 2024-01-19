
with O AS 
(
SELECT * from {{ ref('O') }}
),

C AS 
(
 SELECT * from {{ ref('C') }}   
),

CO AS
(
SELECT * 
FROM O O
LEFT JOIN C C
ON  O.O_CUSTKEY = C.C_CUSTKEY
)

SELECT * FROM CO

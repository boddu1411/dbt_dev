SELECT *
from {{ ref('ORDERS') }}
WHERE MON = '10'
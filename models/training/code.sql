with codes as
(
select *
from {{ ref('countrycodes') }}
union
select *
from {{ ref('countrycodes2') }}
union 
select *
from {{ ref('countrycodes2') }}
)

select * from codes
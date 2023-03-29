select  
    O_ORDERDATE       as fecha,
    country, 
    sum(o_totalprice) as precio_total
from {{ ref('fact_ord') }}
group by O_ORDERDATE, country
order by O_ORDERDATE asc
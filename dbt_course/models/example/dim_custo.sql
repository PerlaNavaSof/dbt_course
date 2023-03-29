{{ config(materialized='table') }}

select 
    c.c_custKey     AS cust_key,
    c.c_name        AS customer_name,
    c.c_address     AS address,
    n.n_name        AS country
from {{ ref('customer') }} c
left join {{ ref('nation') }} n
on c.C_NATIONKEY = n.N_NATIONKEY
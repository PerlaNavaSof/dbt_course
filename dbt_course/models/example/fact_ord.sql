{{ config(materialized='table') }}

select *
from {{ ref('orders') }} o
left join {{ ref ('dim_custo') }} dc
on o.o_custkey = dc.cust_key
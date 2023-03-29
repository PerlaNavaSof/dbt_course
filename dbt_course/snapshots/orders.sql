{% snapshot orders %}
    {{
        config(
            target_database='DBT_COURSE',
            target_schema='snapshot',
            unique_key='o_orderKey',

            strategy='timestamp',
            updated_at='o_orderDate',
        )
    }}

    select *
    from {{ source('ssdata','orders') }}

{% endsnapshot %}
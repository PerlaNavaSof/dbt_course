{% snapshot customer %}
    {{
        config(
            target_database='DBT_COURSE',
            target_schema='snapshot',
            unique_key='c_custKey',

            strategy='check',
            check_cols=['c_name', 'c_address', 'c_nationKey', 'c_phone'],
        )
    }}

    select *
    from {{ source('ssdata', 'customer') }}

{% endsnapshot %}
{% snapshot nation %}
    {{
        config(
            target_database='DBT_COURSE',
            target_schema='snapshot',
            unique_key='n_nationKey',

            strategy='check',
            check_cols=['n_name'],
        )
    }}

    select *
    from {{ source('ssdata','nation') }}

{% endsnapshot %}
{% snapshot stores_snapshot %}

{{
    config(
        target_schema=target.schema,
        unique_key='ID',

        strategy='check'
        )
}}

SELECT *
FROM {{ source('JAFFLE_SHOP', 'raw_stores') }}

{% endsnapshot %}
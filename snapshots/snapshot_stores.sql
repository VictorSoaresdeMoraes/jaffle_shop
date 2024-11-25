{% snapshot snapshot_stores %}

{{
    config(
        target_schema=target.schema,
        unique_key='ID',

        strategy='check',
        check_cols=['TAX_RATE'],
        updated_at='ingestion_date',
        )
}}

SELECT *
FROM {{ source('JAFFLE_SHOP', 'raw_stores') }}

{% endsnapshot %}
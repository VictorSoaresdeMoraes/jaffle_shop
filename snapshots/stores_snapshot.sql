{% snapshot stores_snapshot %}

{{
    config(
        target_schema=target.schema,
        unique_key='ID',

        strategy='timestamp',
        updated_at='ingestion_date',
        check_cols=['TAX_RATE']
    )
}}

SELECT *
FROM source('JAFFLE_SHOP', 'raw_stores')

{% endsnapshot %}
{% snapshot products_snapshot %}

{{
    config(
        target_schema=target.schema,
        unique_key='SKU',

        strategy='check',
    )
}}

SELECT *
FROM {{ source('JAFFLE_SHOP', 'raw_products') }}

{% endsnapshot %}
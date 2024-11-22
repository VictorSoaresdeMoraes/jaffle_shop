WITH raw_products AS (
    SELECT * FROM {{ source('JAFFLE_SHOP', 'raw_products') }}
)
 
SELECT 
    CAST(SKU AS VARCHAR(30)) AS SKU,
    CAST(NAME AS VARCHAR(255)) AS NAME,
    CAST(TYPE AS VARCHAR(30)) AS TYPE,
    CAST(PRICE AS NUMERIC(9,2)) AS PRICE,
    CAST(DESCRIPTION AS VARCHAR(255)) AS DESCRIPTION,
    CAST(SOURCE AS VARCHAR(100)) AS SOURCE,
    GETDATE() AS UPDATE_DATE
FROM raw_products